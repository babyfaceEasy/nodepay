<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Users\DepositController;
use App\Http\Helpers\Common;
use App\Models\Currency;
use App\Models\CurrencyPaymentMethod;
use App\Models\Merchant;
use App\Models\MerchantPayment;
use App\Models\PaymentMethod;
use App\Models\Preference;
use App\Models\Setting;
use App\Models\Transaction;
use App\Models\Wallet;
use CoinPayment;
use Hexters\CoinPayment\Entities\cointpayment_log_trx;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Omnipay\Omnipay;
use PayPal\Api\Amount;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\PaymentExecution;
use PayPal\Api\RedirectUrls;
use PayPal\Exception\PayPalConnectionException;

class MerchantPaymentController extends Controller
{
    protected $helper;

    public function __construct()
    {
        $this->helper = new Common();
    }

    public function index(Request $request)
    {
        $merchant_id   = $request->merchant_id;
        $merchant_uuid = $request->merchant;

        $merchant = Merchant::where(['id' => $merchant_id, 'merchant_uuid' => $merchant_uuid])->first();

        //For showing the message that merchant available or not
        $data['isMerchantAvailable'] = true;
        if (!$merchant)
        {
            $data['isMerchantAvailable'] = false;
        }

        $data['paymentInfo'] = $paymentInfo = $request->all();

        $data['currency'] = $curr = DB::table('settings')->leftJoin('currencies', 'currencies.id', '=', 'settings.value')->where(['settings.name' => 'default_currency'])->first();



        //get only the activated and existing payment methods for the default currency
        $paymoney                = PaymentMethod::where(['name' => 'Mts'])->first(['id']);
        $data['payment_methods'] = PaymentMethod::where(['status' => 'Active'])->get()->toArray();
        $cpmWithoutMts           = CurrencyPaymentMethod::where(['currency_id' => $curr->id])->where('activated_for', 'like', "%deposit%")->pluck('method_id')->toArray();
        array_push($cpmWithoutMts, $paymoney->id);
        $data['cpm'] = $cpmWithoutMts;



        //get stripe publishable key from CurrencyPaymentMethod
        $stripe                = PaymentMethod::where(['name' => 'Stripe'])->first(['id']);
        $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $curr->id, 'method_id' => $stripe->id])->where('activated_for', 'like', "%deposit%")->first(['method_data']);
        if (!empty($currencyPaymentMethod))
        {
            $data['publishable'] = json_decode($currencyPaymentMethod->method_data)->publishable_key;
        }
        return view('merchantPayment.app', $data);
    }

    public function success()
    {
        $data['amount']        = Session::get('merchant_amount');
        $data['currency_code'] = Session::get('merchant_currency_code');

        return view('merchantPayment.success', $data);
    }

    public function fail()
    {

        return view('merchantPayment.fail');
    }

    public function mtsPayment(Request $request)
    {
        $unique_code = unique_code();
        $data        = $request->only('email', 'password');

        $merchantChk = Merchant::find($request->merchant);
        // dd($merchantChk);
        if (!$merchantChk)
        {
            return redirect('payment/fail');
        }

        if (Auth::attempt($data) && $merchantChk->status == 'Approved')
        {
            $preferences = Preference::get();
            if (!empty($preferences))
            {
                foreach ($preferences as $pref)
                {
                    $pref_arr[$pref->field] = $pref->value;
                }
            }
            if (!empty($preferences))
            {
                Session::put($pref_arr);
            }

            // default_currency
            $default_currency = Setting::where('name', 'default_currency')->first();
            if (!empty($default_currency))
            {
                Session::put('default_currency', $default_currency->value);
            }

            //default_timezone
            $default_timezone = auth()->user()->user_detail->timezone;
            if (!$default_timezone)
            {
                Session::put('dflt_timezone_user', session('dflt_timezone'));
            }
            else
            {
                Session::put('dflt_timezone_user', $default_timezone);
            }

            // default_language
            $default_language = Setting::where('name', 'default_language')->first();
            if (!empty($default_language))
            {
                Session::put('default_language', $default_language->value);
            }

            // company_name
            $company_name = Setting::where('name', 'name')->first();
            if (!empty($company_name))
            {
                Session::put('name', $company_name->value);
            }

            // company_logo
            $company_logo = Setting::where(['name' => 'logo', 'type' => 'general'])->first();
            if (!empty($company_logo))
            {
                Session::put('company_logo', $company_logo->value);
            }

            $senderWallet = Wallet::where(['user_id' => Auth::user()->id, 'currency_id' => $default_currency->value])->first();

            if (isset($senderWallet->balance) && $senderWallet->balance >= $request->amount)
            {

                // Add on merchant
                $merchantPayment                    = new MerchantPayment();
                $merchantPayment->merchant_id       = $request->merchant;
                $merchantPayment->user_id           = Auth::user()->id;
                $merchantPayment->gateway_reference = $unique_code;
                $merchantPayment->currency_id       = $default_currency->value;
                $merchantPayment->payment_method_id = 1;
                $merchantPayment->uuid              = $unique_code;
                $merchantPayment->charge_percentage = ($merchantChk->fee * $request->amount) / 100;
                $merchantPayment->charge_fixed      = 0;
                $merchantPayment->total             = $request->amount;
                $merchantPayment->amount            = $request->amount - ($merchantChk->fee * $request->amount) / 100;
                $merchantPayment->status            = 'Success';
                $merchantPayment->item_name         = $request->item_name;
                $merchantPayment->order_no          = $request->order_no;

                $merchantPayment->save();

                $merchantInfo = Merchant::find($request->merchant);
                // Payment Sent
                $senderWallet->balance = ($senderWallet->balance - $request->amount);
                $senderWallet->save();

                $transaction_A                           = new Transaction();
                $transaction_A->user_id                  = Auth::user()->id;
                $transaction_A->end_user_id              = $merchantInfo->user_id;
                $transaction_A->currency_id              = $default_currency->value;
                $transaction_A->payment_method_id        = 1;
                $transaction_A->uuid                     = $unique_code;
                $transaction_A->transaction_reference_id = $merchantPayment->id;
                $transaction_A->transaction_type_id      = Payment_Sent;
                $transaction_A->subtotal                 = $request->amount;
                $transaction_A->charge_percentage        = 0;
                $transaction_A->charge_fixed             = 0;
                $transaction_A->total                    = '-' . $request->amount;
                $transaction_A->status                   = 'Success';
                $transaction_A->merchant_id              = $request->merchant;
                $transaction_A->save();

                // Payment Received

                $merchantWallet = Wallet::where(['user_id' => $merchantInfo->user_id, 'currency_id' => $default_currency->value])->first();

                $merchantWallet->balance = ($merchantWallet->balance + $request->amount);
                $merchantWallet->save();

                $transaction_B                           = new Transaction();
                $transaction_B->user_id                  = $merchantInfo->user_id;
                $transaction_B->end_user_id              = Auth::user()->id;
                $transaction_B->currency_id              = $default_currency->value;
                $transaction_B->payment_method_id        = 1;
                $transaction_B->uuid                     = $unique_code;
                $transaction_B->transaction_reference_id = $merchantPayment->id;
                $transaction_B->transaction_type_id      = Payment_Received;
                $transaction_B->subtotal                 = $request->amount - (($merchantChk->fee * $request->amount) / 100);
                $transaction_B->charge_percentage        = ($merchantChk->fee * $request->amount) / 100;
                $transaction_B->charge_fixed             = 0;
                $transaction_B->total                    = $request->amount;
                $transaction_B->status                   = 'Success';
                $transaction_B->merchant_id              = $request->merchant;
                $transaction_B->save();

                return redirect('payment/success');
            }

            return redirect('payment/fail');
        }
        else
        {
            return redirect('payment/fail');
        }
    }

    public function paypalPayment(Request $request)
    {

        $rules = array(
            'amount'   => 'required|numeric',
            'merchant' => 'required',
        );

        $validator   = Validator::make($request->all(), $rules);
        $merchantChk = Merchant::find($request->merchant);
        if (!$merchantChk)
        {
            Log::error('Merchant not found');
            return redirect('payment/fail');
        }

        if ($validator->fails() || $merchantChk->status != 'Approved')
        {
            Log::error('Validation fail');
            return redirect('payment/fail');
        }
        else
        {
            $amount        = $request->amount;
            $currency      = $request->currency;
            $merchant      = $request->merchant;
            $item_name     = $request->item_name;
            $order_no      = $request->order_no;
            $PaymentMethod = PaymentMethod::where(['name' => 'Paypal'])->first();

            $method = ucfirst($PaymentMethod->name);

            $amount = number_format($request['amount'], 2, '.', '');

            $currencyInfo = Currency::where(['code' => $currency])->first();

            if ($currencyInfo)
            {
                $currencyCode = $currencyInfo->code;
            }
            else
            {
                $currencyCode = "USD";
            }

            $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currencyInfo->id, 'method_id' => $PaymentMethod->id])->where('activated_for', 'like', "%deposit%")->first();
            $methodData            = json_decode($currencyPaymentMethod->method_data);
            if (empty($methodData))
            {
                Log::error('For currency' . $currency . ' credential not found!');
                return redirect('payment/fail');
            }

            Session::put('currency', $currencyCode);
            Session::put('currency_id', $currencyInfo->id);
            Session::put('payment_method_id', $PaymentMethod->id);
            Session::put('method', $PaymentMethod->name);
            Session::put('amount', $amount);
            Session::put('merchant', $merchant);
            Session::put('item_name', $item_name);
            Session::put('order_no', $order_no);
            Session::save();

            //paypal setup is a custom function to setup paypal api credentials
            $depo       = new DepositController();
            $apiContext = $depo->paypalSetup($methodData->client_id, $methodData->client_secret, $methodData->mode);
            $payer      = new Payer();
            $payer->setPaymentMethod('paypal');

            $pAmount = new Amount();
            $pAmount->setTotal($amount);
            $pAmount->setCurrency($currencyCode);

            $transaction = new \PayPal\Api\Transaction();
            $transaction->setAmount($pAmount);

            $redirectUrls = new RedirectUrls();
            $redirectUrls->setReturnUrl(url("payment/paypal_payment_success"))
                ->setCancelUrl(url("payment/fail"));

            $payment = new Payment();
            $payment->setIntent('sale')
                ->setPayer($payer)
                ->setTransactions(array($transaction))
                ->setRedirectUrls($redirectUrls);

            try {
                $payment->create($apiContext);
                return redirect()->to($payment->getApprovalLink());
            }
            catch (PayPalConnectionException $ex)
            {
                Log::error($ex->getData());
            }

            return redirect('payment/fail');
        }
    }

    public function paypalPaymentSuccess(Request $request)
    {
        //dd($request->all());

        $unique_code       = unique_code();
        $amount            = Session::get('amount');
        $payment_method_id = Session::get('payment_method_id');
        $merchant          = Session::get('merchant');
        $item_name         = Session::get('item_name');
        $order_no          = Session::get('order_no');
        $currencyId        = Session::get('currency_id');
        $currency          = Session::get('currency');

        if (isset($request->paymentId) && $request->paymentId != null)
        {

            $depo                  = new DepositController();
            $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currencyId, 'method_id' => $payment_method_id])->where('activated_for', 'like', "%deposit%")->first();
            $methodData            = json_decode($currencyPaymentMethod->method_data);
            if (empty($methodData))
            {
                return redirect('payment/fail');}
            $apiContext = $depo->paypalSetup($methodData->client_id, $methodData->client_secret, $methodData->mode);

            $paymentId = $request->paymentId;
            $payment   = Payment::get($paymentId, $apiContext);

            $execution = new PaymentExecution();
            $execution->setPayerId($request->PayerID);
            $transaction = new \PayPal\Api\Transaction();
            $amountO     = new Amount();

            $amountO->setCurrency($currency);
            $amountO->setTotal($amount);
            $transaction->setAmount($amountO);

            try {
                $result = $payment->execute($execution, $apiContext);
                try {
                    $payment = Payment::get($paymentId, $apiContext);
                }
                catch (\Exception $ex)
                {
                    Log::error($ex);
                }

            }
            catch (\Exception $ex)
            {
                Log::error($ex->getMessage());
            }

            $merchantInfo = Merchant::find($merchant);
            // Add on merchant
            $merchantPayment              = new MerchantPayment();
            $merchantPayment->merchant_id = $merchant;
            if (auth()->check())
            {
                $merchantPayment->user_id = auth()->user()->id;
            }
            $merchantPayment->gateway_reference = $payment->id;
            $merchantPayment->currency_id       = $currencyId;
            $merchantPayment->payment_method_id = $payment_method_id;
            $merchantPayment->uuid              = $unique_code;
            $merchantPayment->charge_percentage = (($merchantInfo->fee * $amount) / 100);
            $merchantPayment->charge_fixed      = 0;
            $merchantPayment->total             = $amount;
            $merchantPayment->amount            = $amount - (($merchantInfo->fee * $amount) / 100);
            $merchantPayment->item_name         = $item_name;
            $merchantPayment->order_no          = $order_no;
            $merchantPayment->status            = 'Success';
            $merchantPayment->save();

            // Payment Received

            $merchantWallet = Wallet::where(['user_id' => $merchantInfo->user_id, 'currency_id' => $currencyId])->first();

            $merchantWallet->balance = ($merchantWallet->balance + ($amount - (($merchantInfo->fee * $amount) / 100)));
            $merchantWallet->save();

            $transaction          = new Transaction();
            $transaction->user_id = $merchantInfo->user_id;

            if (Auth::check())
            {
                $transaction->end_user_id = Auth::user()->id;
            }

            $transaction->currency_id              = $currencyId;
            $transaction->payment_method_id        = $payment_method_id;
            $transaction->uuid                     = $unique_code;
            $transaction->transaction_reference_id = $merchantPayment->id;
            $transaction->transaction_type_id      = Payment_Received;
            $transaction->subtotal                 = $amount - (($merchantInfo->fee * $amount) / 100);
            $transaction->charge_percentage        = (($merchantInfo->fee * $amount) / 100);
            $transaction->charge_fixed             = 0;
            $transaction->total                    = $amount;
            $transaction->status                   = 'Success';
            $transaction->merchant_id              = $merchant;
            $transaction->save();

            return redirect('payment/success');
        }
    }

    public function setup($gateway = 'PayPal_Express')
    {
        $method = Session::get('method');
        // Get PayPal credentials from payment_gateway table
        $credentials = DB::table('settings')->where(['type' => $method])->get();

        // Create the instance of Omnipay
        $this->omnipay = Omnipay::create($gateway);
        $this->omnipay->setUsername($credentials[0]->value);
        $this->omnipay->setPassword($credentials[1]->value);
        $this->omnipay->setSignature($credentials[2]->value);
        $this->omnipay->setTestMode(($credentials[3]->value == 'sandbox') ? true : false);
        if ($gateway == 'PayPal_Express')
        {
            $this->omnipay->setLandingPage('Login');
        }

    }

    public function stripePayment(Request $request)
    {
        // dd($request->merchant);

        $validator = Validator::make($request->all(), [
            'stripeToken' => 'required',
            'amount'      => 'required|numeric',
            'merchant'    => 'required',
        ]);

        $merchantChk = Merchant::find($request->merchant);
        if (!$merchantChk)
        {
            Log::error('merchant not found');
            return redirect('payment/fail');
        }
        if ($validator->fails() || $merchantChk->status != 'Approved')
        {
            Log::error('validation error');
            return redirect('payment/fail');
        }

        $amount       = $request->amount;
        $currencyCode = $request->currency;
        $merchant     = $request->merchant;
        $item_name    = $request->item_name;
        $order_no     = $request->order_no;
        $unique_code  = unique_code();

        $currency              = Currency::where('code', $currencyCode)->first();
        $PaymentMethod         = PaymentMethod::where(['name' => 'Stripe'])->first();
        $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currency->id, 'method_id' => $PaymentMethod->id])->where('activated_for', 'like', "%deposit%")->first();
        $methodData            = json_decode($currencyPaymentMethod->method_data);

        if (empty($methodData))
        {
            Log::error('method data of currency' . $currencyCode . ' not found!');
            return redirect('payment/fail');
        }
        if (isset($request->stripeToken))
        {
            $amount  = (float) $amount;
            $gateway = Omnipay::create('Stripe');
            $gateway->setApiKey($methodData->secret_key);

            $response = $gateway->purchase([
                'amount'   => $amount,
                'currency' => $currency->code,
                'token'    => $request->stripeToken,
            ])->send();

            if ($response->isSuccessful())
            {
                $token                        = $response->getTransactionReference();
                $merchantPayment              = new MerchantPayment();
                $merchantPayment->merchant_id = $merchant;
                if (auth()->check())
                {
                    $merchantPayment->user_id = auth()->user()->id;
                }
                $merchantPayment->gateway_reference = $token;
                $merchantPayment->currency_id       = $currency->id;
                $merchantPayment->payment_method_id = $PaymentMethod->id;
                $merchantPayment->uuid              = $unique_code;
                $merchantPayment->amount            = $amount - (($merchantChk->fee * $amount) / 100);
                $merchantPayment->charge_percentage = ($merchantChk->fee * $amount) / 100;
                $merchantPayment->charge_fixed      = 0;
                $merchantPayment->total             = $amount;
                $merchantPayment->item_name         = $item_name;
                $merchantPayment->order_no          = $order_no;
                $merchantPayment->status            = 'Success';
                $merchantPayment->save();

                // Payment Received
                $merchantInfo = Merchant::find($merchant);

                $merchantWallet = Wallet::where(['user_id' => $merchantInfo->user_id, 'currency_id' => $currency->id])->first();

                $merchantWallet->balance = ($merchantWallet->balance + $amount);
                $merchantWallet->save();

                $transaction          = new Transaction();
                $transaction->user_id = $merchantInfo->user_id;

                if (Auth::check())
                {
                    $transaction->end_user_id = Auth::user()->id;
                }

                $transaction->currency_id              = $currency->id;
                $transaction->payment_method_id        = $PaymentMethod->id;
                $transaction->uuid                     = $unique_code;
                $transaction->transaction_reference_id = $merchantPayment->id;
                $transaction->transaction_type_id      = Payment_Received;
                $transaction->subtotal                 = $amount - (($merchantChk->fee * $amount) / 100);
                $transaction->charge_percentage        = (($merchantChk->fee * $amount) / 100);
                $transaction->charge_fixed             = 0;
                $transaction->total                    = $amount;
                $transaction->status                   = 'Success';
                $transaction->merchant_id              = $merchant;
                $transaction->save();
                Session::put('merchant_amount', $amount);
                Session::put('merchant_currency_code', $currencyCode);
                return redirect('payment/success');

            }
            else
            {
                Log::error('Gateway response problem');
                return redirect('payment/fail');
            }
        }
        else
        {
            Log::error('Stripe token not found from request');
            return redirect('payment/fail');
        }
    }

    public function twoCheckoutPayment(Request $request)
    {
        $paymentMethod         = PaymentMethod::where(['name' => '2Checkout'])->first();
        $currency              = Currency::where(['code' => $request->currency])->first();
        $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currency->id, 'method_id' => $paymentMethod->id])->where('activated_for', 'like', "%deposit%")->first();
        $methodData            = json_decode($currencyPaymentMethod->method_data);
        if (empty($methodData))
        {
            return redirect('payment/fail');
        }

        $data['amount']    = $request->amount;
        $data['seller_id'] = $methodData->seller_id;
        $data['currency']  = $request->currency;
        $data['item_name'] = $request->item_name;
        $data['mode']      = $methodData->mode;

        Session::put('amount', $request->amount);
        Session::put('merchant', $request->merchant);
        Session::put('item_name', $request->item_name);
        Session::put('order_no', $request->order_no);
        Session::put('currency', $request->currency);
        Session::save();
        return view('merchantPayment.2checkout', $data);
    }

    public function twoCheckoutPaymentSuccess(Request $request)
    {

        // d($request->all(),1);
        $paymentMethod = PaymentMethod::where(['name' => '2Checkout'])->first();
        $currency      = Currency::where(['code' => Session::get('currency')])->first();
        $unique_code   = unique_code();

        $amount       = Session::get('amount');
        $merchant     = Session::get('merchant');
        $item_name    = Session::get('item_name');
        $order_no     = Session::get('order_no');
        $merchantInfo = Merchant::find($merchant);
        if (empty($merchantInfo))
        {
            return redirect('payment/fail');
        }
        if ($request->all())
        {

            $amount = (float) $amount;

            $merchantPayment              = new MerchantPayment();
            $merchantPayment->merchant_id = $merchant;
            if (auth()->check())
            {
                $merchantPayment->user_id = auth()->user()->id;
            }
            $merchantPayment->gateway_reference = $request['key'];
            $merchantPayment->currency_id       = $currency->id;
            $merchantPayment->payment_method_id = $paymentMethod->id;
            $merchantPayment->uuid              = $unique_code;
            $merchantPayment->charge_percentage = ($merchantInfo->fee * $amount) / 100;
            $merchantPayment->charge_fixed      = 0;
            $merchantPayment->amount            = $amount - (($merchantInfo->fee * $amount) / 100);
            $merchantPayment->total             = $amount;
            $merchantPayment->item_name         = $item_name;
            $merchantPayment->order_no          = $order_no;
            $merchantPayment->status            = 'Success';
            $merchantPayment->save();

            // Payment Received

            $merchantWallet = Wallet::where(['user_id' => $merchantInfo->user_id, 'currency_id' => $currency->id])->first();

            $merchantWallet->balance = ($merchantWallet->balance + $amount - (($merchantInfo->fee * $amount) / 100));
            $merchantWallet->save();

            $transaction          = new Transaction();
            $transaction->user_id = $merchantInfo->user_id;

            if (Auth::check())
            {
                $transaction->end_user_id = Auth::user()->id;
            }

            $transaction->currency_id              = $currency->id;
            $transaction->payment_method_id        = $paymentMethod->id;
            $transaction->uuid                     = $unique_code;
            $transaction->transaction_reference_id = $merchantPayment->id;
            $transaction->transaction_type_id      = Payment_Received;
            $transaction->subtotal                 = $amount - (($merchantInfo->fee * $amount) / 100);
            $transaction->charge_percentage        = ($merchantInfo->fee * $amount) / 100;
            $transaction->charge_fixed             = 0;
            $transaction->total                    = $amount;
            $transaction->status                   = 'Success';
            $transaction->merchant_id              = $merchant;
            $transaction->save();

            return redirect('payment/success');
        }
        else
        {
            return redirect('payment/fail');
        }
    }

    public function payumoney(Request $request)
    {
        $paymentMethod = PaymentMethod::where(['name' => 'PayUmoney'])->first();
        $currency      = Currency::where(['code' => 'INR'])->first();
        /*$currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currency->id, 'method_id' => $paymentMethod->id])->where('activated_for', 'like', "%deposit%")->first();
        $methodData            = json_decode($currencyPaymentMethod->method_data);
        if (empty($methodData))
        {
        return redirect('payment/fail');
        }*/

        $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currency->id, 'method_id' => $paymentMethod->id])->where('activated_for', 'like', "%deposit%")->first();
        if (empty($currencyPaymentMethod))
        {
            return redirect('payment/fail');
        }
        $methodData = json_decode($currencyPaymentMethod->method_data);

        $data['amount'] = $request->amount;
        $data['mode']   = $methodData->mode;
        $data['key']    = $methodData->key;
        $data['salt']   = $methodData->salt;

        $data['email']     = 'shahin.techvill@gmail.com';
        $data['txnid']     = unique_code();
        $data['firstname'] = 'Shahin';

        Session::put('amount', $request->amount);
        Session::put('merchant', $request->merchant);
        Session::put('item_name', $request->item_name);
        Session::put('order_no', $request->order_no);
        Session::save();

        return view('merchantPayment.payumoney', $data);
    }

    public function payuPaymentSuccess(Request $request)
    {

        $paymentMethod = PaymentMethod::where(['name' => 'PayUmoney'])->first();
        $currency      = Currency::where(['code' => 'INR'])->first();
        $unique_code   = unique_code();

        $amount       = Session::get('amount');
        $merchant     = Session::get('merchant');
        $item_name    = Session::get('item_name');
        $order_no     = Session::get('order_no');
        $merchantInfo = Merchant::find($merchant);
        if (!$merchantInfo)
        {
            return redirect('payment/fail');
        }
        if ($request->all())
        {

            $amount = (float) $amount;

            $merchantPayment              = new MerchantPayment();
            $merchantPayment->merchant_id = $merchant;
            if (auth()->check())
            {
                $merchantPayment->user_id = auth()->user()->id;
            }
            $merchantPayment->gateway_reference = $request['key'];
            $merchantPayment->currency_id       = $currency->id;
            $merchantPayment->payment_method_id = $paymentMethod->id;
            $merchantPayment->uuid              = $unique_code;
            $merchantPayment->charge_percentage = (($merchantInfo->fee * $amount) / 100);
            $merchantPayment->charge_fixed      = 0;
            $merchantPayment->amount            = $amount - (($merchantInfo->fee * $amount) / 100);
            $merchantPayment->total             = $amount;
            $merchantPayment->item_name         = $item_name;
            $merchantPayment->order_no          = $order_no;
            $merchantPayment->status            = 'Success';
            $merchantPayment->save();

            // Payment Received

            $merchantWallet = Wallet::where(['user_id' => $merchantInfo->user_id, 'currency_id' => $currency->id])->first();

            if (empty($merchantWallet))
            {
                $wallet              = new Wallet();
                $wallet->user_id     = $merchantInfo->user_id;
                $wallet->currency_id = $currency->id;
                $wallet->balance     = 0;
                $wallet->is_default  = 'No';
                $wallet->save();
            }

            $merchantWallet->balance = ($merchantWallet->balance + $amount - (($merchantInfo->fee * $amount) / 100));
            $merchantWallet->save();

            $transaction          = new Transaction();
            $transaction->user_id = $merchantInfo->user_id;
            if (Auth::check())
            {
                $transaction->end_user_id = Auth::user()->id;
            }

            $transaction->currency_id              = $currency->id;
            $transaction->payment_method_id        = $paymentMethod->id;
            $transaction->uuid                     = $unique_code;
            $transaction->transaction_reference_id = $merchantPayment->id;
            $transaction->transaction_type_id      = Payment_Received;
            $transaction->subtotal                 = $amount - (($merchantInfo->fee * $amount) / 100);
            $transaction->charge_percentage        = (($merchantInfo->fee * $amount) / 100);
            $transaction->charge_fixed             = 0;
            $transaction->total                    = $amount;
            $transaction->status                   = 'Success';
            $transaction->merchant_id              = $merchant;
            $transaction->save();

            return redirect('payment/success');
        }
        else
        {
            return redirect('payment/fail');
        }
    }

    public function coinPayments(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'amount'   => 'required|numeric',
            'merchant' => 'required',
        ]);

        $merchantChk = Merchant::find($request->merchant);
        if (!$merchantChk)
        {
            return redirect('payment/fail');
        }
        if ($validator->fails() || $merchantChk->status != 'Approved')
        {
            return redirect('payment/fail');
        }

        $amount       = $request->amount;
        $currencyCode = $request->currency;
        $merchant     = $request->merchant;
        $item_name    = $request->item_name;
        $order_no     = $request->order_no;
        $unique_code  = unique_code();

        $currency      = Currency::where('code', $currencyCode)->first();
        $PaymentMethod = PaymentMethod::where(['name' => 'Coinpayments'])->first();

        config(['coinpayment.default_currency' => $currencyCode]);
        $trx['amountTotal'] = $amount;
        $trx['payload']     = [
            'type' => 'merchant',
            'id'   => $request->merchant,
            'currency'=>$currencyCode
        ];

        $mpInfo = [];
        $mpInfo = [
            'payment_method' => $PaymentMethod->id,
            'currency_id'    => $currency->id,
        ];
        Session::put('transInfo', $mpInfo);

        // dd($mpInfo);

        $link_transaction = CoinPayment::url_payload($trx);
        Session::put('link_transaction', $link_transaction);
        Session::put("currency_id", $currency->id);
        Session::put("currency_code", $currency->code);
        Session::put("payment_method", $PaymentMethod->id);
        Session::put("unique_code", $unique_code);
        Session::put("item_name", $item_name);
        Session::put("order_no", $order_no);
        Session::put("amount", $amount);

        return redirect($link_transaction);
    }

    public function coinPaymentsCheck()
    {
        $coinLog = cointpayment_log_trx::where('status', 0)->get();
        foreach ($coinLog as $data)
        {
            $obj = json_decode($data->payload);

            if (isset($obj->merchant_payment_id))
            {
                $merchantPayment = MerchantPayment::find($obj->merchant_payment_id);
                if ($merchantPayment->gateway_reference)
                {
                    $payment = CoinPayment::api_call('get_tx_info', [
                        'txid' => $merchantPayment->gateway_reference,
                    ]);

                    if ($payment['error'] == "ok")
                    {
                        $result = $payment['result'];
                        if ($result['status'] == 100)
                        {

                            $data->status_text     = $result['status_text'];
                            $data->status          = $result['status'];
                            $data->confirmation_at = ((INT) $result['status'] === 100) ? date('Y-m-d H:i:s', $result['time_completed']) : null;
                            $data->save();

                            $merchantPayment->status = "Success";
                            $merchantPayment->save();

                            // Payment Received
                            $merchantInfo = Merchant::find($merchantPayment->merchant_id);

                            $merchantWallet = Wallet::where(['user_id' => $merchantInfo->user_id, 'currency_id' => $merchantPayment->currency_id])->first();

                            if (empty($merchantWallet))
                            {
                                $wallet              = new Wallet();
                                $wallet->user_id     = $merchantInfo->user_id;
                                $wallet->currency_id = $merchantPayment->currency_id;
                                $wallet->balance     = 0;
                                $wallet->is_default  = 'No';
                                $wallet->save();
                            }

                            $merchantWallet->balance = ($merchantWallet->balance + $merchantPayment->amount);
                            $merchantWallet->save();

                            $transaction          = new Transaction();
                            $transaction->user_id = $merchantInfo->user_id;

                            if (Auth::check())
                            {
                                $transaction->end_user_id = Auth::user()->id;
                            }

                            $transaction->currency_id              = $merchantPayment->currency_id;
                            $transaction->payment_method_id        = $merchantPayment->payment_method_id;
                            $transaction->uuid                     = $merchantPayment->uuid;
                            $transaction->transaction_reference_id = $merchantPayment->id;
                            $transaction->transaction_type_id      = Payment_Received;
                            $transaction->subtotal                 = $merchantPayment->amount;
                            $transaction->charge_percentage        = 0;
                            $transaction->charge_percentage        = (($merchantInfo->fee * $merchantPayment->amount) / 100);
                            $transaction->charge_fixed             = 0;
                            $transaction->total                    = $transaction->charge_percentage + $merchantPayment->amount;
                            $transaction->status                   = 'Success';
                            $transaction->merchant_id              = $merchantPayment->merchant_id;
                            $transaction->save();

                        }
                        else
                        {
                            if ($result['status'] != 0)
                            {
                                $data->status_text     = $result['status_text'];
                                $data->status          = $result['status'];
                                $data->confirmation_at = ((INT) $result['status'] === 100) ? date('Y-m-d H:i:s', $result['time_completed']) : null;
                                $data->save();
                            }
                            else
                            {
                                echo "<pre>";
                                echo "Payment not complete for txid- " . $merchantPayment->gateway_reference;
                                echo "<br>";
                            }
                        }
                    }
                }
            }

        }
    }

    public function coinPaymentsFail()
    {
    }
}
