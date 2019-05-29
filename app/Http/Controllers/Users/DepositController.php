<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use App\Http\Helpers\Common;
use App\Models\Currency;
use App\Models\CurrencyPaymentMethod;
use App\Models\Deposit;
use App\Models\FeesLimit;
use App\Models\PaymentMethod;
use App\Models\Setting;
use App\Models\Transaction;
use App\Models\User;
use App\Models\Wallet;
use Auth;
use CoinPayment;
use DB;
use Hexters\CoinPayment\Entities\cointpayment_log_trx;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Omnipay\Omnipay;
use PayPal\Api\Amount;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\PaymentExecution;
use PayPal\Api\RedirectUrls;
use PayPal\Auth\OAuthTokenCredential;
use PayPal\Exception\PayPalConnectionException;
use PayPal\Rest\ApiContext;
use Session;
use Validator;

class DepositController extends Controller
{

    protected $helper;

    public function __construct()
    {
        $this->helper = new Common();
    }

    public function create(Request $request)
    {
        //set the session for validate the action
        setActionSession();

        $data['menu']          = 'deposit';
        $data['content_title'] = 'Deposit';
        $data['icon']          = 'university';

        $data['active_currency']    = $activeCurrency    = Currency::where(['status' => 'Active'])->select('*')->get();
        $feesLimitCurrency          = FeesLimit::where(['transaction_type_id' => Deposit, 'has_transaction' => 'Yes'])->get();
        $data['activeCurrencyList'] = $this->currencyList($activeCurrency, $feesLimitCurrency);
        $data['walletList']         = $activeCurrency;

        if (!empty($request->all()))
        {
            $data['active_currency'] = $activeCurrency = Currency::where(['status' => 'Active'])->select('*')->get();
            // dd($activeCurrency);

            $feesLimitCurrency          = FeesLimit::where(['transaction_type_id' => Deposit, 'has_transaction' => 'Yes'])->get();
            $data['activeCurrencyList'] = $this->currencyList($activeCurrency, $feesLimitCurrency);
            $data['walletList']         = $activeCurrency;
            $data['payment_met']        = PaymentMethod::where(['status' => 'Active'])->get();

            $amount      = $request->amount;
            $currency_id = $request->currency_id;
            $user_id     = Auth::user()->id;

            $wallets               = Wallet::where(['currency_id' => $currency_id, 'user_id' => $user_id])->first();
            $feesDetails           = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $currency_id])->first(['min_limit', 'max_limit']);
            $currency              = Currency::where(['id' => $currency_id])->first();
            $request['currSymbol'] = $currency->symbol;
            $data['payMtd']        = $payMtd        = PaymentMethod::where(['id' => $request->payment_method])->first();
            // dd($payMtd);

            $request['payment_name'] = $payMtd->name . '.' . 'jpg';
            $request['totalAmount']  = $request['amount'] + $request['fee'];
            session(['transInfo' => $request->all()]);
            $data['transInfo']           = $transInfo           = $request->all();
            $data['transInfo']['wallet'] = $request->currency_id;
            Session::put('payment_method_id', $request->payment_method);
            Session::put('wallet_currency_id', $request->currency_id);

            //Code for Amount Limit starts here
            if (@$feesDetails->max_limit == null)
            {
                if ((@$amount < @$feesDetails->min_limit))
                {
                    $data['error'] = __('Minimum amount ') . $feesDetails->min_limit;
                    return view('user_dashboard.deposit.create', $data);
                }
            }
            else
            {
                if ((@$amount < @$feesDetails->min_limit) || (@$amount > @$feesDetails->max_limit))
                {
                    $data['error'] = __('Minimum amount ') . $feesDetails->min_limit . __(' and Maximum amount ') . $feesDetails->max_limit;
                    return view('user_dashboard.deposit.create', $data);
                }
            }

            // if ($payMtd->name == 'Bank')
            // {
            //     $banks                  = Bank::where(['currency_id' => $currency_id])->get();
            //     $currencyPaymentMethods = CurrencyPaymentMethod::where('currency_id', $request->currency_id)->where('activated_for', 'like', "%deposit%")->where('method_data', 'like', "%bank_id%")->get();
            //     $data['banks'] = $bankList = $this->bankList($banks, $currencyPaymentMethods);
            //     return view('user_dashboard.deposit.bank_confirmation', $data);
            // }
            // else
            // {
            //     return view('user_dashboard.deposit.confirmation', $data);
            // }
            //dd($data);
            return view('user_dashboard.deposit.confirmation', $data);
        }
        $data['payment_met']                 = PaymentMethod::where(['status' => 'Active'])->get();
        $data['transInfo']['payment_method'] = $data['payment_met'][0]->id;
        $data['transInfo']['wallet']         = $data['walletList'][0]->id;
        return view('user_dashboard.deposit.create', $data);
    }

    // public function bankList($banks, $currencyPaymentMethods)
    // {
    //     $selectedBanks = [];
    //     $i             = 0;
    //     foreach ($banks as $bank)
    //     {
    //         foreach ($currencyPaymentMethods as $cpm)
    //         {
    //             if ($bank->id == json_decode($cpm->method_data)->bank_id)
    //             {
    //                 $selectedBanks[$i]['id']             = $bank->id;
    //                 $selectedBanks[$i]['bank_name']      = $bank->bank_name;
    //                 $selectedBanks[$i]['is_default']     = $bank->is_default;
    //                 $selectedBanks[$i]['account_name']   = $bank->account_name;
    //                 $selectedBanks[$i]['account_number'] = $bank->account_number;
    //                 $selectedBanks[$i]['bank_name']      = $bank->bank_name;
    //                 $i++;
    //             }
    //         }
    //     }
    //     return $selectedBanks;
    // }

    // public function getBankDetailOnChange(Request $request)
    // {
    //     // dd($request->all());

    //     $bank = Bank::where(['id' => $request->bank])->first(['account_name', 'account_number', 'bank_name']);
    //     if ($bank)
    //     {
    //         $data['status'] = true;
    //         $data['bank']   = $bank;
    //     }
    //     else
    //     {
    //         $data['status'] = false;
    //         $data['bank']   = "Bank Not FOund!";
    //     }
    //     return $data;
    //     exit();
    // }

    //Code for Amount Limit Check
    public function amountLimitCheck(Request $request)
    {
        $amount      = $request->amount;
        $user_id     = Auth::user()->id;
        $wallets     = Wallet::where(['currency_id' => $request->currency_id, 'user_id' => $user_id])->first();
        $feesDetails = FeesLimit::where(['transaction_type_id' => $request->transaction_type_id, 'currency_id' => $request->currency_id])->first();

        if (@$feesDetails->max_limit == null)
        {
            if ((@$amount < @$feesDetails->min_limit))
            {
                $success['message'] = __('Minimum amount ') . $feesDetails->min_limit;
                $success['status']  = '401';
            }
            else
            {
                $success['status'] = 200;
            }
        }
        else
        {
            if ((@$amount < @$feesDetails->min_limit) || (@$amount > @$feesDetails->max_limit))
            {
                $success['message'] = __('Minimum amount ') . $feesDetails->min_limit . __(' and Maximum amount ') . $feesDetails->max_limit;
                $success['status']  = '401';
            }
            else
            {
                $success['status'] = 200;
            }
        }
        //Code for Amount Limit ends here

        //Code for Fees Limit Starts here
        if (empty($feesDetails))
        {
            $feesPercentage            = 0;
            $feesFixed                 = 0;
            $totalFess                 = $feesPercentage + $feesFixed;
            $totalAmount               = $amount + $totalFess;
            $success['feesPercentage'] = round($feesPercentage, 2);
            $success['feesFixed']      = $feesFixed;

            $success['totalFees']     = $totalFess;
            $success['totalFeesHtml'] = formatNumber($totalFess);

            $success['totalAmount'] = $totalAmount;
            $success['pFees']       = round($feesPercentage, 2);
            $success['fFees']       = $feesFixed;
            $success['min']         = 0;
            $success['max']         = 0;
            $success['balance']     = 0;
            //$success['status']         = 200;
        }
        else
        {
            $feesPercentage            = $amount * ($feesDetails->charge_percentage / 100);
            $feesFixed                 = $feesDetails->charge_fixed;
            $totalFess                 = round($feesPercentage, 2) + $feesFixed;
            $totalAmount               = $amount + $totalFess;
            $success['feesPercentage'] = round($feesPercentage, 2);
            $success['feesFixed']      = $feesFixed;

            $success['totalFees']     = $totalFess;
            $success['totalFeesHtml'] = formatNumber($totalFess);

            $success['totalAmount'] = round($totalAmount, 2);
            $success['pFees']       = $feesDetails->charge_percentage;
            $success['fFees']       = $feesDetails->charge_fixed;
            $success['min']         = $feesDetails->min_limit;
            $success['max']         = $feesDetails->max_limit;
            $success['balance']     = @$wallets->balance ? @$wallets->balance : 0;
            //$success['status']         = 200;
        }

        $currency_method = CurrencyPaymentMethod::where('currency_id', $request->currency_id)->where('activated_for', 'like', "%deposit%")->get();

        // dd($currency_method);
        $arr = [];
        if ($currency_method)
        {
            foreach ($currency_method as $methods)
            {
                $arr[$methods->method_id] = $methods->method->name;
            }
        }
        $success['methods'] = $arr;
        //Code for Fees Limit Ends here
        return response()->json(['success' => $success]);
    }

    public function postajax(Request $request)
    {
        $data['status'] = 0;
        $fees           = DB::table('fees')->where(['payment_method_id' => $request->id, 'transaction_type' => $request->type])->first();
        if (!empty($fees))
        {
            $data['status'] = 1;
            $data['fees']   = $fees;
        }
        return json_encode($data);
    }

    public function selectMethod($id)
    {
        $data['content_title'] = 'Deposit';
        $data['icon']          = 'university';

        $data['method'] = $id;
        $list           = PaymentMethod::pluck('id')->toArray();

        if (!in_array($id, $list))
        {
            return back();
        }
        $currencyId       = Session::get('default_currency');
        $data['currency'] = Currency::find($currencyId);

        return view('user_dashboard.deposit.setAmount', $data);
    }

    public function store(Request $request)
    {

        // dd($request->all());

        //to check action whether action is valid or not
        actionSessionCheck();

        $userid = Auth::user()->id;

        $rules = array(
            'amount' => 'required|numeric',
        );
        $fieldNames = array(
            'amount' => 'Amount',
        );

        $validator = Validator::make($request->all(), $rules);
        $validator->setAttributeNames($fieldNames);

        if ($validator->fails())
        {
            return back()->withErrors($validator)->withInput();
        }
        else
        {
            $methodId = $request->method;
            $amount   = $request->amount;

            $PaymentMethod = PaymentMethod::find($methodId);
            $method        = ucfirst(strtolower($PaymentMethod->name));
            // dd($method);

            $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => session('wallet_currency_id'), 'method_id' => $methodId])->where('activated_for', 'like', "%deposit%")->first();
            $methodData            = json_decode($currencyPaymentMethod->method_data);

            if (empty($methodData))
            {
                $this->helper->one_time_message('error', __('Payment gateway credentials not found!'));
                return back();
            }

            $amount = number_format($request['amount'], 2, '.', '');
            Session::put('method', $method);
            Session::put('payment_method_id', $methodId);
            Session::put('amount', $amount);
            Session::save();

            $currencyId = session('wallet_currency_id');
            $currency   = Currency::find($currencyId);
            if ($method == 'Paypal')
            {
                if ($currency)
                {
                    $currencyCode = $currency->code;
                }
                else
                {
                    $currencyCode = "USD";
                }

                //paypal setup is a custom function to setup paypal api credentials
                $apiContext = $this->paypalSetup($methodData->client_id, $methodData->client_secret, $methodData->mode);
                $payer      = new Payer();
                $payer->setPaymentMethod('paypal');

                $amount = new Amount();
                $amount->setTotal(round($request->amount, 3));
                $amount->setCurrency($currencyCode);

                $transaction = new \PayPal\Api\Transaction();
                $transaction->setAmount($amount);

                $redirectUrls = new RedirectUrls();
                $redirectUrls->setReturnUrl(url("deposit/payment_success"))
                    ->setCancelUrl(url("deposit/payment_cancel"));

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
                    $this->helper->one_time_message('error', __('Please check your payment method credentials!'));
                    Log::error($ex->getData());
                }
            }
            else if ($method == 'Stripe')
            {
                $publishable = $methodData->publishable_key;
                Session::put('publishable', $publishable);
                return redirect('deposit/stripe_payment');
            }
            else if ($method == 'Skrill')
            {
                return redirect('deposit/skrill_payment');
            }
            else if ($method == '2checkout')
            {
                $transInfo             = Session::get('transInfo');
                $currencyId            = $transInfo['currency_id'];
                $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currencyId, 'method_id' => $methodId])->where('activated_for', 'like', "%deposit%")->first();
                $methodData            = json_decode($currencyPaymentMethod->method_data);
                $seller_id             = $methodData->seller_id;
                Session::put('seller_id', $seller_id);
                Session::put('wallet_currency_id', $currencyId);
                return redirect('deposit/checkout_payment');
            }
            else if ($method == 'Payumoney')
            {
                $transInfo             = Session::get('transInfo');
                $currencyId            = $transInfo['currency_id'];
                $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currencyId, 'method_id' => $methodId])->where('activated_for', 'like', "%deposit%")->first();
                $methodData            = json_decode($currencyPaymentMethod->method_data);
                Session::put('mode', $methodData->mode);
                Session::put('key', $methodData->key);
                Session::put('salt', $methodData->salt);
                return redirect('deposit/payumoney_payment');
            }
            else if ($method == 'Coinpayments')
            {
                $trx['amountTotal'] = $amount;
                $trx['payload']     = [
                    'type'     => 'deposit',
                    'currency' => $currency->code,
                ];
                changeEnvironmentVariable('coinpayment_currency', $currency->code);
                session(['coinpayment_currency' => $currency->code]);
                $link_transaction = CoinPayment::url_payload($trx);
                Session::put('link_transaction', $link_transaction);
                return redirect($link_transaction);
            }
            elseif ($method == 'Perfectmoney')
            {
                $transInfo = Session::get('transInfo');

                dd($transInfo);

                $currencyId            = $transInfo['currency_id'];
                $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currencyId, 'method_id' => $methodId])->where('activated_for', 'like', "%deposit%")->first();
                $methodData            = json_decode($currencyPaymentMethod->method_data);
                Session::put('payee_account', $methodData->account_id);
                Session::put('alter_password', $methodData->alter_password);
                Session::put('method_id', $methodId);
                Session::put('currency_id', $currencyId);
                Session::put('user_id', Auth::user()->id);
                Session::put('payee_name', Session::get('company_name'));
                Session::put('payment_amount', $transInfo['totalAmount']);
                Session::put('amount', $transInfo['amount']);
                Session::put('payment_units', $currency->code);

                return redirect('deposit/perfect_money_payment');
            }
            // else if ($method == 'Bank')
            // {
            //     $currencyId            = $transInfo['currency_id'];
            // $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currencyId, 'method_id' => $methodId])->where('activated_for', 'like', "%deposit%")->first();
            //     $methodData = json_decode($currencyPaymentMethod->method_data);
            //     Session::put('bankInfo', $request->all());
            //     return redirect('deposit/bank-payment');
            // }
            else if ($method == 'Payeer')
            {
                $transInfo             = Session::get('transInfo');
                $currencyId            = $transInfo['currency_id'];
                $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currencyId, 'method_id' => $methodId])->where('activated_for', 'like', "%deposit%")->first(['method_data']);
                $payeer                = json_decode($currencyPaymentMethod->method_data);
                Session::put('payeer_merchant_id', $payeer->merchant_id);
                Session::put('payeer_secret_key', $payeer->secret_key);
                Session::put('payeer_encryption_key', $payeer->encryption_key);
                return redirect('deposit/payeer/payment');
            }
            else
            {
                $this->helper->one_time_message('error', __('Please check your payment method!'));
            }
            return back();
        }
    }

    public function perfectMoneyPayment()
    {
        actionSessionCheck();
        $data['menu']           = 'deposit';
        $data['payee_account']  = Session::get('payee_account');
        $data['payee_name']     = Session::get('payee_name');

        // $data['payment_amount'] = Session::get('payment_amount');
        // $data['amount']         = Session::get('amount');

        $data['payment_amount'] = "0.01";
        $data['amount']         = "0.01";

        $data['payment_units']  = Session::get('payment_units');
        $data['method_id']      = Session::get('method_id');
        $data['currency_id']    = Session::get('currency_id');
        $data['user_id']        = Session::get('user_id');
        clearActionSession();
        return view('user_dashboard.deposit.perfect_money', $data);
    }

    public function perfectMoneyIpnCheck()
    {
        $methodid          = $_POST['methodid'];
        $currencyid        = $_POST['currencyid'];
        $userid            = $_POST['userid'];
        $amountwithoutfees = $_POST['amountwithoutfees'];

        $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currencyid, 'method_id' => $methodid])->where('activated_for', 'like', "%deposit%")->first();
        $methodData            = json_decode($currencyPaymentMethod->method_data);
        $alternate             = strtoupper(md5($methodData->alter_password));

        $hash_string =
            $_POST['PAYMENT_ID'] . ':' . $_POST['PAYEE_ACCOUNT'] . ':' .
            $_POST['PAYMENT_AMOUNT'] . ':' . $_POST['PAYMENT_UNITS'] . ':' .
            $_POST['PAYMENT_BATCH_NUM'] . ':' .
            $_POST['PAYER_ACCOUNT'] . ':' . $alternate . ':' .
            $_POST['TIMESTAMPGMT'];

        $hash = strtoupper(md5($hash_string));
        if ($hash == $_POST['V2_HASH'])
        {
            $wallet = Wallet::where(['currency_id' => $currencyid, 'user_id' => $userid])->first();
            if (empty($wallet))
            {
                $wallet              = new Wallet();
                $wallet->user_id     = $userid;
                $wallet->currency_id = $currencyid;
                $wallet->balance     = 0;
                $wallet->is_default  = 'No';
                $wallet->save();

            }
            $currencyId = isset($wallet->currency_id) ? $wallet->currency_id : $wallet->currency_id;

            $feeInfo = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $currencyId])->first();
            $uuid    = unique_code();

            $deposit                    = new Deposit();
            $deposit->uuid              = $uuid;
            $deposit->charge_percentage = @$feeInfo->charge_percentage ? ((formatNumber($amountwithoutfees)) * (@$feeInfo->charge_percentage / 100)) : 0;
            $deposit->charge_fixed      = @$feeInfo->charge_fixed ? @$feeInfo->charge_fixed : 0;
            $p_calc                     = ((formatNumber($amountwithoutfees)) * (@$feeInfo->charge_percentage) / 100);

            $sessionAmount     = $_POST['PAYMENT_AMOUNT'];
            $amount            = formatNumber($sessionAmount);
            $payment_method_id = $methodid;

            $deposit->amount            = $present_amount            = ($amount - ($p_calc + (@$feeInfo->charge_fixed)));
            $deposit->status            = 'Success';
            $deposit->user_id           = $userid;
            $deposit->currency_id       = $currencyId;
            $deposit->payment_method_id = $payment_method_id;
            $deposit->save();

            $total_fees = (formatNumber($amountwithoutfees) * (@$feeInfo->charge_percentage / 100) + (@$feeInfo->charge_fixed));

            $subtotal = ($amount - $total_fees);

            $transaction                           = new Transaction();
            $transaction->user_id                  = $userid;
            $transaction->currency_id              = $currencyId;
            $transaction->payment_method_id        = $payment_method_id;
            $transaction->transaction_reference_id = $deposit->id;
            $transaction->transaction_type_id      = Deposit;
            $transaction->uuid                     = $uuid;
            $transaction->subtotal                 = $present_amount;
            $transaction->percentage               = @$feeInfo->charge_percentage ? @$feeInfo->charge_percentage : 0;
            $transaction->charge_percentage        = $deposit->charge_percentage;
            $transaction->charge_fixed             = $deposit->charge_fixed;
            $transaction->total                    = formatNumber($amountwithoutfees) + $total_fees;
            $transaction->status                   = 'Success';
            $transaction->save();

            $wallet          = Wallet::where(['user_id' => $userid, 'currency_id' => $currencyId])->first();
            $wallet->balance = ($wallet->balance + $present_amount);
            $wallet->save();
        }
        else
        {
            \Log::channel('perfectMoney')->error(serialize($_POST));
        }
    }

    public function perfectMoneySuccess(Request $request)
    {
        $this->helper->one_time_message('success', __('Your payment was successfull'));
        return redirect('deposit');
    }

    public function perfectMoneyFail()
    {

        clearActionSession();
        $this->helper->one_time_message('error', __('You have cancelled your payment'));
        return redirect('deposit');
    }

    public function payeerPayement()
    {
        $data['menu'] = 'deposit';
        $amount    = Session::get('amount');
        $transInfo = Session::get('transInfo');
        $currency  = Currency::where(['id' => $transInfo['currency_id']])->first(['code']);

        $payeer_merchant_id = Session::get('payeer_merchant_id');
        $data['m_shop']     = $m_shop     = $payeer_merchant_id;

        $data['m_orderid'] = $m_orderid = six_digit_random_number();

        $data['m_amount']  = $m_amount  = formatNumber($amount);
        // $data['m_amount'] = $m_amount = "0.01"; // for test purpose

        $data['m_curr'] = $m_curr = $currency->code;


        $data['form_currency_code'] = $form_currency_code = $currency->code;

        $data['m_desc'] = $m_desc = base64_encode('Deposit');

        $payeer_secret_key = Session::get('payeer_secret_key');
        $m_key             = $payeer_secret_key;

        $arHash = array(
            $m_shop,
            $m_orderid,
            $m_amount,
            $m_curr,
            $m_desc,
        );

        //for php 7
        $arParams = array(
            'success_url' => 'https://paysanity.net/deposit/payeer/payment/success',
            'fail_url' => 'https://paysanity.net/deposit/payeer/payment/fail',
            'status_url' => 'https://paysanity.net/deposit/payeer/payment/status',
            'reference'   => array(
                'email' => auth()->user()->email,
                'name'  => auth()->user()->first_name . ' ' . auth()->user()->last_name,
            ),
            'submerchant' => 'paysanity.net', //added
        );
        $cipher   = 'AES-256-CBC';

        $merchantEncryptionKey = Session::get('payeer_encryption_key');
        $key = md5($merchantEncryptionKey . $m_orderid); //key from (payeer.com->merchant settings->Key for encryption additional parameters)

        // $ivlen    = openssl_cipher_iv_length($cipher);
        // $iv       = openssl_random_pseudo_bytes($ivlen);
        // $m_params = urlencode(base64_encode(openssl_encrypt(json_encode($arParams), $cipher, $key, OPENSSL_RAW_DATA, $iv))); // iv is needed - it is the cipher initialization vector

        $m_params = @urlencode(base64_encode(openssl_encrypt(json_encode($arParams), $cipher, $key, OPENSSL_RAW_DATA))); // this throws error if '@' symbol is not used

        $arHash[] = $data['m_params'] = $m_params; //this is correct

        $arHash[] = $m_key;

        $data['sign'] = strtoupper(hash('sha256', implode(":", $arHash)));

        return view('user_dashboard.deposit.payeer', $data);
    }

    public function payeerPayementSuccess(Request $request)
    {
        // dd($request->all());

        // if (!in_array($_SERVER['REMOTE_ADDR'], array('185.71.65.92', '185.71.65.189', '149.202.17.210')))
        // {
        //     return;
        // }

        if (isset($request['m_operation_id']) && isset($request['m_sign']))
        {
            // dd($request->all());
            $payeer_secret_key = Session::get('payeer_secret_key');

            $m_key  = $payeer_secret_key;
            $arHash = array(
                $request['m_operation_id'],
                $request['m_operation_ps'],
                $request['m_operation_date'],
                $request['m_operation_pay_date'],
                $request['m_shop'],
                $request['m_orderid'],
                $request['m_amount'],
                $request['m_curr'],
                $request['m_desc'],
                $request['m_status'],
            );

            //additional parameters
            if (isset($request['m_params']))
            {
                $arHash[] = $request['m_params'];
            }

            $arHash[]  = $m_key;
            $sign_hash = strtoupper(hash('sha256', implode(':', $arHash)));

            if ($request['m_sign'] == $sign_hash && $request['m_status'] == 'success')
            {
                actionSessionCheck();

                $sessionValue = session('transInfo');
                // dd($sessionValue);

                $user_id = Auth::user()->id;
                $wallet  = Wallet::where(['currency_id' => $sessionValue['currency_id'], 'user_id' => $user_id])->first();
                if (empty($wallet))
                {
                    $wallet              = new Wallet();
                    $wallet->user_id     = $user_id;
                    $wallet->currency_id = $sessionValue['currency_id'];
                    $wallet->balance     = 0;

                    if ($wallet->currency_id == Session::get('default_currency'))
                    {
                        $wallet->is_default = 'Yes';
                    }
                    else
                    {
                        $wallet->is_default = 'No';
                    }
                    $wallet->save();
                }
                $currencyId = isset($wallet->currency_id) ? $wallet->currency_id : $wallet->currency_id;

                $feeInfo = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $currencyId])->first();
                $uuid    = unique_code();

                $deposit                    = new Deposit();
                $deposit->uuid              = $uuid;
                $deposit->charge_percentage = @$feeInfo->charge_percentage ? ((formatNumber($sessionValue['amount'])) * (@$feeInfo->charge_percentage / 100)) : 0;
                $deposit->charge_fixed      = @$feeInfo->charge_fixed ? @$feeInfo->charge_fixed : 0;
                $p_calc                     = ((formatNumber($sessionValue['amount'])) * (@$feeInfo->charge_percentage) / 100);

                $sessionAmount     = Session::get('amount');
                $amount            = formatNumber($sessionAmount);
                $payment_method_id = $sessionValue['payment_method'];

                $deposit->amount            = $present_amount            = ($amount - ($p_calc + (@$feeInfo->charge_fixed)));
                $deposit->status            = 'Success';
                $deposit->user_id           = Auth::user()->id;
                $deposit->currency_id       = $currencyId;
                $deposit->payment_method_id = $payment_method_id;
                $deposit->save();

                $total_fees = (formatNumber($sessionValue['amount']) * (@$feeInfo->charge_percentage / 100) + (@$feeInfo->charge_fixed));

                $subtotal = ($amount - $total_fees);

                $transaction                           = new Transaction();
                $transaction->user_id                  = Auth::user()->id;
                $transaction->currency_id              = $currencyId;
                $transaction->payment_method_id        = $payment_method_id;
                $transaction->transaction_reference_id = $deposit->id;
                $transaction->transaction_type_id      = Deposit;
                $transaction->uuid                     = $uuid;
                $transaction->subtotal                 = $present_amount;
                $transaction->percentage               = @$feeInfo->charge_percentage ? @$feeInfo->charge_percentage : 0;
                $transaction->charge_percentage        = $deposit->charge_percentage;
                $transaction->charge_fixed             = $deposit->charge_fixed;
                $transaction->total                    = formatNumber($sessionValue['amount']) + $total_fees;
                $transaction->status                   = 'Success';
                $transaction->save();

                $wallet          = Wallet::where(['user_id' => Auth::user()->id, 'currency_id' => $currencyId])->first();
                $wallet->balance = ($wallet->balance + $present_amount);
                $wallet->save();

                $data['transaction'] = $transaction;
                clearActionSession();

                return view('user_dashboard.deposit.success', $data);
                // echo $request['m_orderid'] . '|success';
                // exit;
            }
            else
            {
                // echo $request['m_orderid'] . '|error';
                $this->helper->one_time_message('error', __('Please try again later!'));
                return back();
            }
        }
    }

    public function payeerPayementFail()
    {
        $this->helper->one_time_message('success', __('Your payment failed!'));
        return redirect('deposit');
    }

    // public function bankPaymentSuccess(Request $request)
    // {
    //     // dd($request->all());
    //     actionSessionCheck();

    //     $sessionValue = session('transInfo');
    //     // dd($sessionValue);

    //     $chkWallet = Wallet::where(['user_id' => auth()->user()->id, 'currency_id' => $sessionValue['currency_id']])->first();
    //     //Check Wallet exists or not; if not, create it
    //     if (empty($chkWallet))
    //     {
    //         $wallet              = new Wallet();
    //         $wallet->user_id     = auth()->user()->id;
    //         $wallet->currency_id = $sessionValue['currency_id'];
    //         $wallet->balance     = 0;
    //         $wallet->is_default  = 'No';
    //         $wallet->save();
    //     }

    //     // File Entries
    //     if ($request->hasFile('attached_file'))
    //     {
    //         $fileName     = $request->file('attached_file');
    //         $originalName = $fileName->getClientOriginalName();
    //         $uniqueName   = strtolower(time() . '.' . $fileName->getClientOriginalExtension());
    //         $file_extn    = strtolower($fileName->getClientOriginalExtension());
    //         $path         = 'uploads/files/bank_attached_files';
    //         $uploadPath   = public_path($path);
    //         $fileName->move($uploadPath, $uniqueName);
    //         $file               = new File();
    //         $file->user_id      = auth()->user()->id;
    //         $file->filename     = $uniqueName;
    //         $file->originalname = $originalName;
    //         $file->type         = $file_extn;
    //         $file->save();
    //     }

    //     $amount  = Session::get('amount');
    //     $uuid    = unique_code();
    //     $feeInfo = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $sessionValue['currency_id']])->first(['charge_percentage', 'charge_fixed']);

    //     //Deposit Entries
    //     $deposit                    = new Deposit();
    //     $deposit->user_id           = auth()->user()->id;
    //     $deposit->currency_id       = $sessionValue['currency_id'];
    //     $deposit->payment_method_id = $sessionValue['payment_method'];
    //     $deposit->bank_id           = $request->bank;
    //     $deposit->file_id           = $file->id;
    //     $deposit->uuid              = $uuid;
    //     $deposit->charge_percentage = @$feeInfo->charge_percentage ? (($sessionValue['amount']) * (@$feeInfo->charge_percentage / 100)) : 0;
    //     $deposit->charge_fixed      = @$feeInfo->charge_fixed ? @$feeInfo->charge_fixed : 0;
    //     $deposit->amount            = $sessionValue['amount'];
    //     $deposit->status            = 'Pending'; //in bank deposit, status will be pending
    //     $deposit->save();

    //     // Transaction Entries
    //     $transaction                           = new Transaction();
    //     $transaction->user_id                  = auth()->user()->id;
    //     $transaction->currency_id              = $sessionValue['currency_id'];
    //     $transaction->payment_method_id        = $sessionValue['payment_method'];
    //     $transaction->bank_id                  = $request->bank;
    //     $transaction->file_id                  = $file->id;
    //     $transaction->uuid                     = $uuid;
    //     $transaction->transaction_reference_id = $deposit->id;
    //     $transaction->transaction_type_id      = Deposit;
    //     $transaction->subtotal                 = $deposit->amount;
    //     $transaction->percentage               = @$feeInfo->charge_percentage ? @$feeInfo->charge_percentage : 0;
    //     $transaction->charge_percentage        = $deposit->charge_percentage;
    //     $transaction->charge_fixed             = $deposit->charge_fixed;
    //     $transaction->total                    = $sessionValue['amount'] + $deposit->charge_percentage + $deposit->charge_fixed;
    //     $transaction->status                   = 'Pending'; //in bank deposit, status will be pending
    //     $transaction->save();

    //     //For print
    //     $data['transaction'] = $transaction;

    //     //clearing session
    //     clearActionSession();

    //     return view('user_dashboard.deposit.success', $data);
    // }

    public function payumoneyPayment()
    {
        $data['menu']      = 'deposit';
        $data['amount']    = Session::get('amount');
        $data['mode']      = Session::get('mode');
        $data['key']       = Session::get('key');
        $data['salt']      = Session::get('salt');
        $data['email']     = Auth::user()->email;
        $data['txnid']     = unique_code();
        $data['firstname'] = Auth::user()->first_name;

        return view('user_dashboard.deposit.payumoney', $data);
    }

    public function payumoneyPaymentSuccess()
    {
        //$currency = Currency::where(['code' => 'INR'])->first();
        actionSessionCheck();
        $sessionValue = session('transInfo');
        $uid          = auth()->user()->id;
        $wallets      = Wallet::where(['currency_id' => $sessionValue['currency_id'], 'user_id' => $uid])->first();
        $currencyId   = $wallets->currency_id;
        $currency     = Currency::find($currencyId);
        $amount       = Session::get('amount');

        $chkWallet = Wallet::where(['user_id' => $uid, 'currency_id' => $currency->id])->first();

        if (empty($chkWallet))
        {
            $wallet              = new Wallet();
            $wallet->user_id     = $uid;
            $wallet->currency_id = $currency->id;
            $wallet->balance     = 0;
            $wallet->is_default  = 'No';
            $wallet->save();
        }

        if ($_POST['status'] == 'success')
        {
            $feeInfo = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $wallets->currency_id])->first();

            $uuid                        = unique_code();
            $deposits                    = new Deposit();
            $deposits->uuid              = $uuid;
            $deposits->charge_percentage = @$feeInfo->charge_percentage ? (($sessionValue['amount']) * (@$feeInfo->charge_percentage / 100)) : 0;
            $deposits->charge_fixed      = @$feeInfo->charge_fixed ? @$feeInfo->charge_fixed : 0;

            $p_calc                      = (($sessionValue['amount']) * (@$feeInfo->charge_percentage) / 100);
            $deposits->amount            = $present_amount            = ($amount - ($p_calc + (@$feeInfo->charge_fixed)));
            $deposits->status            = 'Success';
            $deposits->user_id           = Auth::user()->id;
            $deposits->currency_id       = $currency->id;
            $deposits->payment_method_id = Session::get('payment_method_id');
            $deposits->save();

            $total_fees = (($sessionValue['amount']) * (@$feeInfo->charge_percentage / 100) + (@$feeInfo->charge_fixed));

            $subtotal = ($amount - $total_fees);

            $transaction                           = new Transaction();
            $transaction->user_id                  = Auth::user()->id;
            $transaction->currency_id              = $currency->id;
            $transaction->payment_method_id        = Session::get('payment_method_id');
            $transaction->transaction_reference_id = $deposits->id;
            $transaction->transaction_type_id      = Deposit;
            $transaction->uuid                     = $uuid;
            $transaction->subtotal                 = $present_amount;

            $transaction->percentage = @$feeInfo->charge_percentage ? @$feeInfo->charge_percentage : 0;

            $transaction->charge_percentage = $deposits->charge_percentage;
            $transaction->charge_fixed      = $deposits->charge_fixed;

            $transaction->total  = $sessionValue['amount'] + $total_fees;
            $transaction->status = 'Success';
            $transaction->save();

            $wallet = Wallet::where(['user_id' => Auth::user()->id, 'currency_id' => $currency->id])
                ->first();

            $wallet->balance = ($wallet->balance + $present_amount);
            $wallet->save();

            $data['transaction'] = $transaction;
            clearActionSession();
            return view('user_dashboard.deposit.success', $data);
        }
    }

    public function payumoneyPaymentFail()
    {
        clearActionSession();
        $this->helper->one_time_message('error', __('Deposit unsuccessfull'));
        return redirect('deposit');
    }

    public function stripePayment()
    {
        $data['menu'] = 'deposit';

        $data['amount']            = Session::get('amount');
        $data['payment_method_id'] = $method_id = Session::get('payment_method_id');
        $data['content_title']     = 'Deposit';
        $data['icon']              = 'university';
        $sessionValue              = session('transInfo');
        $currencyId                = $sessionValue['currency_id'];
        $currencyPaymentMethod     = CurrencyPaymentMethod::where(['currency_id' => $currencyId, 'method_id' => $method_id])->where('activated_for', 'like', "%deposit%")->first();
        $methodData                = json_decode($currencyPaymentMethod->method_data);
        $data['publishable']       = $methodData->publishable_key;
        return view('user_dashboard.deposit.stripe', $data);
    }

    public function stripePaymentStore(Request $request)
    {
        actionSessionCheck();
        $validation = Validator::make($request->all(), [
            'stripeToken' => 'required',
        ]);

        if ($validation->fails())
        {
            return redirect()->back()->withErrors($validation->errors());
        }

        $payment_method_id = Session::get('payment_method_id');

        $sessionValue = session('transInfo');
        $user_id      = Auth::user()->id;
        $wallets      = Wallet::where(['currency_id' => $sessionValue['currency_id'], 'user_id' => $user_id])->first();
        //d($sessionValue['amount'], 1);
        if (empty($wallets))
        {
            $wallet              = new Wallet();
            $wallet->user_id     = $user_id;
            $wallet->currency_id = $sessionValue['currency_id'];
            $wallet->balance     = 0;

            if ($wallet->currency_id == Session::get('default_currency'))
            {
                $wallet->is_default = 'Yes';
            }
            else
            {
                $wallet->is_default = 'No';
            }
            $wallet->save();
        }
        $currencyId = isset($wallets->currency_id) ? $wallets->currency_id : $wallet->currency_id;

        $currency = Currency::find($currencyId);
        if ($_POST)
        {
            if (isset($request->stripeToken))
            {
                $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currencyId, 'method_id' => $payment_method_id])->where('activated_for', 'like', "%deposit%")->first();
                $methodData            = json_decode($currencyPaymentMethod->method_data);
                $amount                = (float) Session::get('amount');
                $stripe                = Setting::where(['type' => 'Stripe', 'name' => 'secret'])->first();
                $gateway               = Omnipay::create('Stripe');
                $gateway->setApiKey($methodData->secret_key);
                $response = $gateway->purchase([
                    'amount'   => $amount,
                    'currency' => $currency->code,
                    'token'    => $request->stripeToken,
                ])->send();
                //d($response,1);
                if ($response->isSuccessful())
                {
                    //d($amount,1);
                    $token                       = $response->getTransactionReference();
                    $feeInfo                     = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $currencyId])->first();
                    $uuid                        = unique_code();
                    $deposits                    = new Deposit();
                    $deposits->uuid              = $uuid;
                    $deposits->charge_percentage = @$feeInfo->charge_percentage ? (($sessionValue['amount']) * (@$feeInfo->charge_percentage / 100)) : 0;
                    $deposits->charge_fixed      = @$feeInfo->charge_fixed ? @$feeInfo->charge_fixed : 0;
                    $p_calc                      = (($sessionValue['amount']) * (@$feeInfo->charge_percentage) / 100);
                    $deposits->amount            = $present_amount            = ($amount - ($p_calc + (@$feeInfo->charge_fixed)));
                    $deposits->status            = 'Success';
                    $deposits->user_id           = Auth::user()->id;
                    $deposits->currency_id       = $currencyId;
                    $deposits->payment_method_id = $payment_method_id;
                    $deposits->save();
                    $total_fees = ($sessionValue['amount'] * (@$feeInfo->charge_percentage / 100) + (@$feeInfo->charge_fixed));
                    $subtotal   = ($amount - $total_fees);

                    $transaction                           = new Transaction();
                    $transaction->user_id                  = Auth::user()->id;
                    $transaction->currency_id              = $currencyId;
                    $transaction->payment_method_id        = $payment_method_id;
                    $transaction->transaction_reference_id = $deposits->id;
                    $transaction->transaction_type_id      = Deposit;
                    $transaction->uuid                     = $uuid;
                    $transaction->subtotal                 = $present_amount;
                    $transaction->percentage               = @$feeInfo->charge_percentage ? @$feeInfo->charge_percentage : 0;
                    $transaction->charge_percentage        = @$feeInfo->charge_percentage ? (($sessionValue['amount']) * (@$feeInfo->charge_percentage / 100)) : 0;
                    $transaction->charge_fixed             = @$feeInfo->charge_fixed ? @$feeInfo->charge_fixed : 0;
                    $transaction->total                    = $sessionValue['amount'] + $total_fees;
                    $transaction->status                   = 'Success';
                    $transaction->save();

                    $wallet = Wallet::where(['user_id' => Auth::user()->id, 'currency_id' => $currencyId])->first();

                    $wallet->balance = ($wallet->balance + $present_amount);
                    $wallet->save();
                    $data['transaction'] = $transaction;
                    clearActionSession();
                    return view('user_dashboard.deposit.success', $data);
                }
                else
                {
                    $message = $response->getMessage();
                    //d($message,1);
                    $this->helper->one_time_message('error', $message);
                    return back();
                }
            }
            else
            {
                $this->helper->one_time_message('error', __('Please try again later!'));
                return back();
            }
        }
    }

    public function paypalPaymentSuccess(Request $request)
    {
        actionSessionCheck();
        $method            = Session::get('method');
        $amount            = Session::get('amount');
        $payment_method_id = Session::get('payment_method_id');

        $sessionValue = session('transInfo');
        $user_id      = Auth::user()->id;
        $wallets      = Wallet::where(['currency_id' => $sessionValue['currency_id'], 'user_id' => $user_id])->first();
        //d($sessionValue['amount'], 1);
        if (empty($wallets))
        {
            $wallet              = new Wallet();
            $wallet->user_id     = $user_id;
            $wallet->currency_id = $sessionValue['currency_id'];
            $wallet->balance     = 0;

            if ($wallet->currency_id == Session::get('default_currency'))
            {
                $wallet->is_default = 'Yes';
            }
            else
            {
                $wallet->is_default = 'No';
            }
            $wallet->save();
        }
        $currencyId = isset($wallets->currency_id) ? $wallets->currency_id : $wallet->currency_id;

        $currency = Currency::find($currencyId);

        if ($currency)
        {
            $currencyCode = $currency->code;
        }
        else
        {
            $currencyCode = "USD";
        }

        if (isset($request->paymentId) && $request->paymentId != null)
        {
            $currencyPaymentMethod = CurrencyPaymentMethod::where(['currency_id' => $currencyId, 'method_id' => $payment_method_id])->where('activated_for', 'like', "%deposit%")->first();
            $methodData            = json_decode($currencyPaymentMethod->method_data);
            $apiContext            = $this->paypalSetup($methodData->client_id, $methodData->client_secret, $methodData->mode);

            $paymentId = $request->paymentId;
            $payment   = Payment::get($paymentId, $apiContext);

            $execution = new PaymentExecution();
            $execution->setPayerId($request->PayerID);
            $transaction = new \PayPal\Api\Transaction();
            $amountO     = new Amount();

            $amountO->setCurrency($currencyCode);
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
        }
        else
        {
            Log::error("User Cancel the transaction");
            $this->helper->one_time_message('fail', __('User Cancelled the transaction!'));
            return redirect('deposit');
        }

        $feeInfo                     = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $currencyId])->first();
        $uuid                        = unique_code();
        $deposits                    = new Deposit();
        $deposits->uuid              = $uuid;
        $deposits->charge_percentage = @$feeInfo->charge_percentage ? (($sessionValue['amount']) * (@$feeInfo->charge_percentage / 100)) : 0;
        $deposits->charge_fixed      = @$feeInfo->charge_fixed ? @$feeInfo->charge_fixed : 0;

        $p_calc = (($sessionValue['amount']) * (@$feeInfo->charge_percentage) / 100);

        $deposits->status            = 'Success';
        $deposits->user_id           = Auth::user()->id;
        $deposits->currency_id       = $currencyId;
        $deposits->payment_method_id = $payment_method_id;
        $deposits->amount            = $present_amount            = ($amount - ($p_calc + (@$feeInfo->charge_fixed)));
        $deposits->save();

        $transaction                           = new Transaction();
        $transaction->user_id                  = Auth::user()->id;
        $transaction->currency_id              = $currencyId;
        $transaction->payment_method_id        = $payment_method_id;
        $transaction->transaction_reference_id = $deposits->id;
        $transaction->transaction_type_id      = Deposit;
        $transaction->uuid                     = $uuid;
        $transaction->subtotal                 = $present_amount;
        $transaction->percentage               = @$feeInfo->charge_percentage ? @$feeInfo->charge_percentage : 0;
        $transaction->charge_percentage        = $deposits->charge_percentage;
        $transaction->charge_fixed             = $deposits->charge_fixed;
        $total_fees                            = $deposits->charge_percentage + $deposits->charge_fixed;
        $transaction->total                    = $sessionValue['amount'] + $total_fees;
        $transaction->status                   = 'Success';
        $transaction->save();

        $wallet          = Wallet::where(['user_id' => Auth::user()->id, 'currency_id' => $currencyId])->first();
        $wallet->balance = ($wallet->balance + $present_amount);
        $wallet->save();
        $data['transaction'] = $transaction;
        clearActionSession();
        return view('user_dashboard.deposit.success', $data);
    }

    public function paymentCancel()
    {
        clearActionSession();
        $this->helper->one_time_message('error', __('You have cancelled your payment'));
        return back();
    }

    /**
     * @param  String  $clientID
     * @param  String  $secret
     * @param  String  $mode
     * @return mixed
     */
    public function paypalSetup()
    {
        // $clientID   = "AXxJWNphTMdyaHZmHv58qH3wFt0bai9j_t_a8R6T7EkC1GbT7-0AvgsULqFz4cqW44H1adjfwjWMdLmk";//static
        // $secret     = "EJKgSAHOwbiEaLSC-tLDD2tFWQ6Wvx5yawYdEoI7k-FAAEQJAkYNnyxhHzLd3Pm-_r192GpuEcNfWT80";//static
        // $apicontext = new ApiContext(new OAuthTokenCredential($clientID, $secret));

        // $apicontext->setConfig([
        //     'mode' => 'sandbox', //static
        // ]);
        //-----------------------------------------------------------------

        // $method = Session::get('method');

        // $credentials = Setting::where(['type' => 'PayPal'])->get();
        // $clientID = $credentials[0]->value;
        // $secret = $credentials[1]->value;

        $numarr = func_num_args();
        if ($numarr > 0)
        {
            $clientID   = func_get_arg(0);
            $secret     = func_get_arg(1);
            $mode       = func_get_arg(2);
            $apicontext = new ApiContext(new OAuthTokenCredential($clientID, $secret));
            $apicontext->setConfig([
                'mode' => $mode,
            ]);
        }
        else
        {
            $credentials = Setting::where(['type' => 'PayPal'])->get();
            $clientID    = $credentials[0]->value;
            $secret      = $credentials[1]->value;
            $apicontext  = new ApiContext(new OAuthTokenCredential($clientID, $secret));
            $apicontext->setConfig([
                'mode' => $credentials[3]->value,
            ]);
        }

        return $apicontext;
    }

    /**
     * @param $gateway
     */
    public function setup($gateway = 'PayPal_Express')
    {
        $method = Session::get('method');

        // Get PayPal credentials from payment_gateway table
        $credentials = Setting::where(['type' => $method])->get();

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

    public function skrillPayment()
    {
        $data['menu']              = 'deposit';
        $data['amount']            = Session::get('amount');
        $data['payment_method_id'] = Session::get('payment_method_id');
        return view('user_dashboard.deposit.skrill', $data);
    }

    public function checkoutPayment()
    {
        $data['menu']              = 'deposit';
        $data['amount']            = Session::get('amount');
        $data['payment_method_id'] = Session::get('payment_method_id');
        $data['seller_id']         = Session::get('seller_id');
        $currencyId                = Session::get('wallet_currency_id');
        $data['currency']          = Currency::find($currencyId);
        return view('user_dashboard.deposit.2checkout', $data);
    }

    /**
     * @param Request $request
     */
    public function checkoutPaymentStore(Request $request)
    {

        actionSessionCheck();
        $payment_method_id = Session::get('payment_method_id');
        $sessionValue      = session('transInfo');
        $user_id           = Auth::user()->id;
        $wallets           = Wallet::where(['currency_id' => $sessionValue['currency_id'], 'user_id' => $user_id])->first();
        //d($sessionValue['amount'], 1);
        if (empty($wallets))
        {
            $wallet              = new Wallet();
            $wallet->user_id     = $user_id;
            $wallet->currency_id = $sessionValue['currency_id'];
            $wallet->balance     = 0;

            if ($wallet->currency_id == Session::get('default_currency'))
            {
                $wallet->is_default = 'Yes';
            }
            else
            {
                $wallet->is_default = 'No';
            }
            $wallet->save();
        }
        $currencyId = isset($wallets->currency_id) ? $wallets->currency_id : $wallet->currency_id;

        $currency = Currency::find($currencyId);

        if ($request->all())
        {

            $amount = (float) Session::get('amount');

            $feeInfo                     = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $currencyId])->first();
            $uuid                        = unique_code();
            $deposits                    = new Deposit();
            $deposits->uuid              = $uuid;
            $deposits->charge_percentage = @$feeInfo->charge_percentage ? (($sessionValue['amount']) * (@$feeInfo->charge_percentage / 100)) : 0;
            $deposits->charge_fixed      = @$feeInfo->charge_fixed ? @$feeInfo->charge_fixed : 0;
            $p_calc                      = (($sessionValue['amount']) * (@$feeInfo->charge_percentage) / 100);
            $deposits->amount            = $present_amount            = ($amount - ($p_calc + (@$feeInfo->charge_fixed)));
            $deposits->status            = 'Success';
            $deposits->user_id           = Auth::user()->id;
            $deposits->currency_id       = $currencyId;
            $deposits->payment_method_id = $payment_method_id;
            $deposits->save();

            $total_fees = ($sessionValue['amount'] * (@$feeInfo->charge_percentage / 100) + (@$feeInfo->charge_fixed));

            $subtotal = ($amount - $total_fees);

            $transaction                           = new Transaction();
            $transaction->user_id                  = Auth::user()->id;
            $transaction->currency_id              = $currencyId;
            $transaction->payment_method_id        = $payment_method_id;
            $transaction->transaction_reference_id = $deposits->id;
            $transaction->transaction_type_id      = Deposit;
            $transaction->uuid                     = $uuid;
            $transaction->subtotal                 = $present_amount;
            $transaction->percentage               = @$feeInfo->charge_percentage ? @$feeInfo->charge_percentage : 0;
            $transaction->charge_percentage        = $deposits->charge_percentage;
            $transaction->charge_fixed             = $deposits->charge_fixed;
            $transaction->total                    = $sessionValue['amount'] + $total_fees;
            $transaction->status                   = 'Success';
            $transaction->save();

            $wallet = Wallet::where(['user_id' => Auth::user()->id, 'currency_id' => $currencyId])
                ->first();

            $wallet->balance = ($wallet->balance + $present_amount);
            $wallet->save();
            $data['transaction'] = $transaction;
            clearActionSession();
            return view('user_dashboard.deposit.success', $data);
        }
        else
        {

            $this->helper->one_time_message('error', __('Please try again later!'));
            return back();
        }
    }

    //for cron job of deposit
    public function coinpaymentsCheckStatus()
    {
        $coinLog = cointpayment_log_trx::where('status', 0)->get();
        foreach ($coinLog as $data)
        {
            $obj = json_decode($data->payload);
            if (isset($obj->type) && $obj->type == "deposit" && isset($obj->deposit_id))
            {

                $payment = CoinPayment::api_call('get_tx_info', [
                    'txid' => $data->payment_id,
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

                        $deposit         = Deposit::find($obj->deposit_id);
                        $deposit->status = "Success";
                        $deposit->save();

                        $trans         = Transaction::where("transaction_reference_id", $deposit->id)->where('type', 'Deposit')->first();
                        $trans->status = "Success";
                        $trans->save();

                        $wallet          = Wallet::where(['user_id' => $deposit->user_id, 'currency_id' => $deposit->currency_id])->first();
                        $wallet->balance = ($wallet->balance + $deposit->amount);
                        $wallet->save();
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
                    }
                }
            }
        }
    }

    public function currencyList($activeCurrency, $feesLimitCurrency)
    {
        $selectedCurrency = [];
        $i                = 0;
        foreach ($activeCurrency as $aCurrency)
        {
            foreach ($feesLimitCurrency as $flCurrency)
            {
                if ($aCurrency->id == $flCurrency->currency_id && $aCurrency->status == 'Active' && $flCurrency->has_transaction == 'Yes')
                {
                    $selectedCurrency[$i]['id']           = $aCurrency->id;
                    $selectedCurrency[$i]['name']         = $aCurrency->name;
                    $selectedCurrency[$i]['symbol']       = $aCurrency->symbol;
                    $selectedCurrency[$i]['code']         = $aCurrency->code;
                    $selectedCurrency[$i]['hundreds_one'] = $aCurrency->hundreds_one;
                    $selectedCurrency[$i]['rate']         = $aCurrency->rate;
                    $selectedCurrency[$i]['logo']         = $aCurrency->logo;
                    $selectedCurrency[$i]['status']       = $aCurrency->status;
                    $selectedCurrency[$i]['default']      = $aCurrency->default;
                    $i++;
                }
            }
        }

        return $selectedCurrency;
    }

    public function depositPrintPdf($trans_id)
    {
        $data['companyInfo'] = Setting::where(['type' => 'general', 'name' => 'logo'])->first();

        $data['transactionDetails'] = Transaction::where(['id' => $trans_id])->first();

        $mpdf = new \Mpdf\Mpdf(['tempDir' => __DIR__ . '/tmp']);
        $mpdf = new \Mpdf\Mpdf([
            'mode'        => 'utf-8',
            'format'      => 'A3',
            'orientation' => 'P',
        ]);
        $mpdf->autoScriptToLang         = true;
        $mpdf->autoLangToFont           = true;
        $mpdf->allow_charset_conversion = false;
        $mpdf->SetJS('this.print();');
        $mpdf->WriteHTML(view('user_dashboard.deposit.depositPaymentPdf', $data));
        $mpdf->Output('sendMoney_' . time() . '.pdf', 'I'); //
    }

}
