<?php

namespace App\Http\Controllers;

use App\Http\Helpers\Common;
use App\Models\AppToken;
use App\Models\AppTransactionsInfo;
use App\Models\Currency;
use App\Models\MerchantApp;
use App\Models\MerchantPayment;
use App\Models\Transaction;
use App\Models\Wallet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class MerchantApiPayment extends Controller
{
    protected $helper;

    function __construct()
    {
        $this->helper = new Common();
    }

    public function verifyClient(Request $request)
    {
        $client_id = $request->client_id;
        $client_secret = $request->client_secret;

        $app = MerchantApp::where(['client_id' => $client_id, 'client_secret' => $client_secret])->first();
        if (!$app) {
            $res = [
                'status' => 'error',
                'message' => 'Can not verify the client. Please check client Id and Client Secret',
                'data' => []
            ];
            return json_encode($res);
        }

        //will be expire in one hour
        $token = $app->accessToken()->create(['token' => str_random(26), 'expires_in' => time() + 3600]);

        $res = [
            'status' => 'success',
            'message' => 'Client Verified',
            'data' => [
                'access_token' => $token->token
            ]
        ];

        return json_encode($res);

    }

    public function storeTransactionInfo(Request $request)
    {

        $paymentMethod = $request->payer;
        $amount = $request->amount;
        $currency = $request->currency;
        $returnUrl = $request->returnUrl;
        $cancelUrl = $request->cancelUrl;

        if (!$request->hasHeader('Authorization')) {
            $res = [
                'status' => 'error',
                'message' => 'Access token is missing',
                'data' => []
            ];
            return json_encode($res);
        }

        $accessToken = $request->header('Authorization');
        $tokenType = '';
        $actualToken = '';
        if (preg_match('/\bBearer\b/', $accessToken)) {
            $tokenType = 'bearer';
            $t = explode(' ', $accessToken);
            $key = array_keys($t);
            $last = end($key);
            $actualToken = $t[$last];
        }
        $token = AppToken::where('token', $actualToken)->where('expires_in', '>=', time())->first();
        if (!$token) {
            $res = [
                'status' => 'error',
                'message' => 'Un authorize token or token has been expired',
                'data' => []
            ];
            return json_encode($res);
        }

        #region Currency Validation
        $acceptedCurrency = [];
        $wallets = $token->app->merchant->user->wallets;
        foreach ($wallets as $wallet) {
            $acceptedCurrency[] = $wallet->currency->code;
        }
        //TODO:: Accepted currency will come from database or from merchant currency


        if (!in_array($currency, $acceptedCurrency)) {
            $res = [
                'status' => 'error',
                'message' => 'Currency ' . $currency . ' is not supported by this merchant!',
                'data' => []
            ];
            return json_encode($res);
        }
        #endregion

        #region Amount Validation
        if ($amount <= 0) {
            $res = [
                'status' => 'error',
                'message' => 'Amount can not be 0 or less than 0.',
                'data' => []
            ];
            return json_encode($res);
        }
        #endregion

        if (false) {
            $res = [
                'status' => 'error',
                'message' => 'Validation error',
                'data' => []
            ];
            return json_encode($res);
        }
        $grandId = random_int(10000000, 99999999);
        $urlToken = str_random(20);
        AppTransactionsInfo::create([
            'app_id' => $token->app_id,
            'payment_method' => $paymentMethod,
            'amount' => $amount,
            'currency' => $currency,
            'return_url' => $returnUrl,
            'cancel_url' => $cancelUrl,
            'grant_id' => $grandId,
            'token' => $urlToken,
            'expires_in' => time() + (60 * 60 * 5) // url will be expired in 5 hours after generated

        ]);

        $url = url("merchant/payment?grant_id=$grandId&token=$urlToken");
        $res = [
            'status' => 'success',
            'message' => '',
            'data' => [
                'approvedUrl' => $url
            ]
        ];
        return json_encode($res);

    }

    public function generatedUrl(Request $request)
    {
        if (!auth()->check()) {
            if ($_POST) {
                $credentials = $request->only('email', 'password');
                $grant_id = $request->grant_id;
                $token = $request->token;
                if (Auth::attempt($credentials)) {
                    return redirect()->to("merchant/payment?grant_id=$grant_id&token=$token");
                } else {
                    $this->helper->one_time_message('danger', 'Unable to login with provided credentials!');
                    return redirect()->back();
                }
            } else {
                return view('merchantPayment.login');
            }
        }

        $gid = $request->grant_id;
        $token = $request->token;
        $data['transInfo'] = $transInfo = AppTransactionsInfo::where(['grant_id' => $gid, 'token' => $token, 'status' => 'pending'])->where('expires_in', '>=', time())->first();
        if (!$transInfo) {
            abort(403, 'Url has been deleted or expired.');
        }
        $availableCurrency=[];
        $wallets=auth()->user()->wallets;
        foreach ($wallets as $wallet){
            $availableCurrency[]=$wallet->currency->code;
        }
        if(!in_array($transInfo->currency,$availableCurrency)){
            $this->helper->one_time_message('danger', "You don't have the payment wallet. Please create wallet for currency '$transInfo->currency' !");
            return redirect()->to('payment/fail');
        }

        Session::put('transInfo', $transInfo);
        return view('merchantPayment.confirm', $data);

    }

    public function confirmPayment()
    {
        $transInfo = Session::get('transInfo');
        Session::forget('transInfo');
        $unique_code = unique_code();
        $amount=$transInfo->amount;
        $currency=$transInfo->currency;
        $curr=Currency::where('code',$currency)->first();
        if(!$curr){
            $this->helper->one_time_message('danger', "Currency not found!");
            return redirect()->to('payment/fail');
        }
        $senderWallet = Wallet::where(['user_id' => auth()->user()->id, 'currency_id' => $curr->id])->first();
        if($senderWallet->balance<$amount){
            $this->helper->one_time_message('danger', "Doesn't have sufficient balance!");
            return redirect()->to('payment/fail');
        }
        $senderWallet->balance=$senderWallet->balance-$amount;
        $senderWallet->save();

        // Add on merchant
        $merchantPayment = new MerchantPayment();
        $merchantPayment->merchant_id = $transInfo->app->merchant_id;
        $merchantPayment->user_id = auth()->user()->id;
        $merchantPayment->gateway_reference = $unique_code;
        $merchantPayment->currency_id = $curr->id;
        $merchantPayment->payment_method_id = 1;
        $merchantPayment->uuid = $unique_code;
        $merchantPayment->charge_percentage = 0;
        $merchantPayment->charge_fixed = 0;
        $merchantPayment->amount = $amount;
        $merchantPayment->status = 'Success';
        $merchantPayment->item_name = '';
        $merchantPayment->order_no = '';
        $merchantPayment->save();

        $transaction_A = new Transaction();
        $transaction_A->user_id = auth()->user()->id;
        $transaction_A->end_user_id = $transInfo->app->merchant->user_id;
        $transaction_A->currency_id = $curr->id;
        $transaction_A->payment_method_id = 1;
        $transaction_A->uuid = $unique_code;
        $transaction_A->transaction_reference_id = $merchantPayment->id;
        $transaction_A->transaction_type_id = Payment_Sent;
        $transaction_A->subtotal = $amount;
        $transaction_A->charge_percentage = 0;
        $transaction_A->charge_fixed = 0;
        $transaction_A->total = '-' . $amount;
        $transaction_A->status = 'Success';
        $transaction_A->merchant_id = $transInfo->app->merchant_id;
        $transaction_A->save();

        //updating merchant wallet
        $merchantWallet = Wallet::where(['user_id' => $transInfo->app->merchant->user_id, 'currency_id' => $curr->id])->first();
        $merchantWallet->balance = ($merchantWallet->balance + $amount);
        $merchantWallet->save();

        $transaction_B = new Transaction();
        $transaction_B->user_id = $transInfo->app->merchant->user_id;
        $transaction_B->end_user_id = auth()->user()->id;
        $transaction_B->currency_id = $curr->id;
        $transaction_B->payment_method_id = 1;
        $transaction_B->uuid = $unique_code;
        $transaction_B->transaction_reference_id = $merchantPayment->id;
        $transaction_B->transaction_type_id = Payment_Received;
        $transaction_B->subtotal = $amount;
        $transaction_B->charge_percentage = 0;
        $transaction_B->charge_fixed = 0;
        $transaction_B->total = $amount;
        $transaction_B->status = 'Success';
        $transaction_B->merchant_id = $transInfo->app->merchant_id;
        $transaction_B->save();
        $returnPath=$transInfo->return_url.'&transaction_id='.$unique_code;
        $transInfo->status='success';
        $transInfo->save();
        return redirect()->to($returnPath);
    }

    public function cancelPayment()
    {
        $transInfo = Session::get('transInfo');
        Session::forget('transInfo');
        $trans = AppTransactionsInfo::find($transInfo->id);
        $trans->status = 'cancel';
        $trans->save();
        return redirect()->to($trans->cancel_url);
    }
}
