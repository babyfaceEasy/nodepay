<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use App\Http\Helpers\Common;
use App\Models\Currency;
use App\Models\CurrencyExchange;
use App\Models\FeesLimit;
use App\Models\Setting;
use App\Models\Transaction;
use App\Models\User;
use App\Models\Wallet;
use Auth;
use Illuminate\Http\Request;
use Session;
use Validator;

class ExchangeController extends Controller
{
    protected $helper;

    public function __construct()
    {
        $this->helper = new Common();
    }

    public function index()
    {

        $data['menu'] = 'exchanges';
        $data['list'] = CurrencyExchange::where(['user_id' => Auth::user()->id])
            ->join('currencies', function ($join)
        {
                $join->on('currencies.id', '=', 'currency_exchanges.currency_id');
            })
            ->select('currency_exchanges.*', 'currencies.code')
            ->orderBy('id', 'desc')
            ->paginate(10);

        $data['defaultCurrency'] = Currency::find(Session::get('default_currency'));
        $data['content_title']   = 'Exchange';
        $data['icon']            = 'money';
        return view('user_dashboard.exchange.list', $data);
    }

    public function previous_exchange()
    {
        //set the session for validating the action
        setActionSession();

        $data['menu'] = 'exchange';

        $data['currencies'] = Currency::where(['status' => 'Active'])->get();

        $data['active_currency'] = $activeCurrency = Currency::where(['status' => 'Active'])->get();
        $feesLimitCurrency       = FeesLimit::where(['transaction_type_id' => Exchange_From, 'has_transaction' => 'Yes'])->get();
        $data['currencyList']    = $this->currencyList($activeCurrency, $feesLimitCurrency);

        $userCurrencyList = array_column(Wallet::where(['user_id' => Auth::user()->id])->get()->toArray(), 'currency_id');

        $data['userCurrencyList'] = Currency::whereIn('id', $userCurrencyList)->get();

        $data['defaultCurrency'] = Currency::find(Session::get('default_currency'));

        $data['content_title']            = 'Exchange';
        $data['icon']                     = 'money';
        $data['transInfo']['currency_id'] = $data['currencies'][0]['id'];

        return view('user_dashboard.exchange.create', $data);
    }

///////////////////////////////////pm - 1.7 starts here///////////////////////////////////////////////////////////////////////////////

    //pm-1.7
    public function exchange()
    {
        setActionSession();
        $data['menu'] = 'exchange';

        $feesLimitCurrency = FeesLimit::where(['transaction_type_id' => Exchange_From, 'has_transaction' => 'Yes'])->get(['currency_id', 'has_transaction']);

        //Users Active, Has Transaction and Existing Currency Wallets/list
        $userCurrencyList                             = array_column(Wallet::where(['user_id' => Auth::user()->id])->get()->toArray(), 'currency_id');
        $data['userCurrencyList']                     = $userCurrencyList                     = Currency::whereIn('id', $userCurrencyList)->get(['id', 'code', 'status']);
        $data['activeHasTransactionUserCurrencyList'] = $activeHasTransactionUserCurrencyList = $this->activeHasTransactionUserCurrencyList($userCurrencyList, $feesLimitCurrency);
        // dd($activeHasTransactionUserCurrencyList);

        $data['defaultCurrency']          = Currency::find(Session::get('default_currency'));
        $data['content_title']            = 'Exchange';
        $data['icon']                     = 'money';
        $data['currencies']               = Currency::where(['status' => 'Active'])->get();
        $data['transInfo']['currency_id'] = $data['currencies'][0]['id'];

        return view('user_dashboard.exchange.create', $data);
    }

    //pm-1.7
    public function activeHasTransactionUserCurrencyList($userCurrencyList, $feesLimitCurrency)
    {
        $selectedCurrency = [];
        $i                = 0;
        foreach ($userCurrencyList as $aCurrency)
        {
            foreach ($feesLimitCurrency as $flCurrency)
            {
                if ($aCurrency->id == $flCurrency->currency_id && $aCurrency->status == 'Active' && $flCurrency->has_transaction == 'Yes')
                {
                    $selectedCurrency[$i]['id']   = $aCurrency->id;
                    $selectedCurrency[$i]['code'] = $aCurrency->code;
                    $i++;
                }
            }
        }
        return $selectedCurrency;
    }

    //pm-1.7
    public function amountLimitCheck(Request $request)
    {
        // dd($request->all());
        $amount      = $request->amount;
        $currency_id = $request->currency_id;
        $user_id     = Auth::user()->id;
        $wallets     = Wallet::where(['currency_id' => $request->currency_id, 'user_id' => $user_id])->first(); //added by parvez - for wallet balance check
        $feesDetails = FeesLimit::where(['transaction_type_id' => $request->transaction_type_id, 'currency_id' => $currency_id])->first();

        //Code for Amount Limit starts here
        if (@$feesDetails->max_limit == null)
        {
            if ((@$amount < @$feesDetails->min_limit))
            {
                $success['message']         = __('Minimum amount ') . $feesDetails->min_limit;
                $success['wallet_currency'] = $wallets->currency->code;
                $success['status']          = '401';
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
                $success['message']         = __('Minimum amount ') . $feesDetails->min_limit . __(' and Maximum amount ') . $feesDetails->max_limit;
                $success['wallet_currency'] = $wallets->currency->code;
                $success['status']          = '401';
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
            $curr = Currency::find($request->currency_id);
            $success['message'] = __('Please check fees limit for the currency ') . $curr->code;
            $success['status']  = '401';
        }
        else
        {
            if ($feesDetails->has_transaction == 'No')
            {
                $success['message'] = __("The default currency ({$feesDetails->currency->code}) fees limit is inactive");
                $success['status']  = '401';
            }
            else
            {
                $feesPercentage             = $amount * ($feesDetails->charge_percentage / 100);
                $feesFixed                  = $feesDetails->charge_fixed;
                $totalFess                  = $feesPercentage + $feesFixed;
                $totalAmount                = $amount + $totalFess;
                $success['feesPercentage']  = $feesPercentage;
                $success['feesFixed']       = $feesFixed;
                $success['totalFees']       = number_format($totalFess, 2, '.', '');
                $success['totalFeesHtml']   = formatNumber($totalFess);
                $success['totalAmount']     = $totalAmount;
                $success['pFees']           = $feesDetails->charge_percentage;
                $success['fFees']           = $feesDetails->charge_fixed;
                $success['balance']         = @$wallets->balance ? (@$wallets->balance) : 0; //added by parvez
                $success['wallet_currency'] = $wallets->currency->code;
            }
        }
        //Code for Fees Limit Ends here

        return response()->json([
            'success' => $success,
        ]);
    }

    //pm-1.7
    public function getActiveHasTransactionExceptUsersExistingWalletsCurrencies(Request $request)
    {
        $feesLimitCurrency = FeesLimit::where(['transaction_type_id' => Exchange_From, 'has_transaction' => 'Yes'])->get(['currency_id', 'has_transaction']);

        $activeCurrency = Currency::where('id', '!=', $request->currency_id)->where(['status' => 'Active'])->get(['id', 'code', 'status', 'rate', 'exchange_from']);
        // dd($activeCurrency);
        $currencyList = $this->currencyList($activeCurrency, $feesLimitCurrency);
        // dd($currencyList);

        if ($currencyList)
        {
            return response()->json([
                'currencies' => $currencyList,
                'status'     => true,
            ]);
        }
        else
        {
            return response()->json([
                'currencies' => null,
                'status'     => false,
            ]);
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
                    $selectedCurrency[$i]['id']   = $aCurrency->id;
                    $selectedCurrency[$i]['code'] = $aCurrency->code;

                    $wallet = Wallet::where(['currency_id' => $aCurrency->id, 'user_id' => auth()->user()->id])->first();
                    // dd($wallet);
                    if (!empty($wallet))
                    {
                        $selectedCurrency[$i]['balance'] = isset($wallet->balance) ? $wallet->balance : 0.00;
                    }
                    if ($aCurrency->exchange_from == "local")
                    {
                        $destinationCurrencyRate = $aCurrency->rate;
                    }
                    else
                    {
                        $defaultCurrency = Currency::find(Session::get('default_currency'));
                        $destinationCurrencyRate = getCurrencyRate($defaultCurrency->code, $aCurrency->code);
                    }
                    $selectedCurrency[$i]['rate'] = $destinationCurrencyRate;
                    $i++;
                }
            }
        }
        return $selectedCurrency;
    }

    public function getBalanceOfToWallet(Request $request)
    {


        $wallet = Wallet::where(['currency_id' => $request->currency_id, 'user_id' => auth()->user()->id])->first(); //added by parvez - for wallet balance check
        if (!empty($wallet))
        {
            return response()->json([
                'status'       => true,
                'balance'      => formatNumber($wallet->balance),
                'currencyCode' => $wallet->currency->code,
            ]);
        }
        else
        {
            return response()->json([
                'status'       => false,
                'balance'      => null,
                'currencyCode' => null,
            ]);
        }
    }

    //pm-1.7
    public function exchangeOfCurrency(Request $request)
    {
        if ($_POST)
        {
            // dd($request->all());
            $uid              = Auth::user()->id;
            $default_currency = session::get('default_currency');
            $rules            = ['amount' => 'required'];
            $fieldNames       = ['amount' => 'Amount'];

            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames);

            if ($validator->fails())
            {
                return back()->withErrors($validator)->withInput();
            }
            else
            {
                $data['fromCurrency'] = $fromCurrency = Currency::where(['id' => $request->from_currency_id])->first(['code','symbol']);
                // dd($fromCurrency);

                $desitnationCurrency     = Currency::where(['id' => $request->currency_id])->first();
                $data['defaultCurrency'] = $defaultCurrency = Currency::find(Session::get('default_currency'));
                if ($desitnationCurrency->exchange_from == "local")
                {
                    $destinationCurrencyRate = $desitnationCurrency->rate;
                }
                else
                {
                    $destinationCurrencyRate = getCurrencyRate($defaultCurrency->code, $desitnationCurrency->code);
                }
                Session::put('destination_exchange_rate', $destinationCurrencyRate);

                $data['transInfo']                  = $request->all();
                $data['transInfo']['finalAmount']   = $request->finalAmount;
                $data['transInfo']['defaultAmnt']   = $request->amount;
                $data['transInfo']['amount']        = $request->amount;
                $data['transInfo']['totalAmount']   = ($request->amount) + $request->fee;
                $data['transInfo']['currSymbol']    = $desitnationCurrency->symbol;
                $data['transInfo']['dCurrencyRate'] = $destinationCurrencyRate;
                $data['transInfo']['currCode']      = $desitnationCurrency->code;

                // dd($data['transInfo']);
                session(['transInfo' => $request->all()]);
                return view('user_dashboard.exchange.confirmation', $data);
            }
        }
    }

    //pm-1.7
    public function exchangeOfCurrencyConfirm()
    {
        actionSessionCheck();

        $sessionValue = session('transInfo');
        // dd($sessionValue);

        $uid       = Auth::user()->id;
        $chkWallet = Wallet::where(['user_id' => $uid, 'currency_id' => $sessionValue['currency_id']])->first();
        if (empty($chkWallet))
        {
            //Create a new wallet
            $wallet              = new Wallet();
            $wallet->user_id     = $uid;
            $wallet->currency_id = $sessionValue['currency_id'];
            $wallet->balance     = $sessionValue['finalAmount'];
            $wallet->save();
            $to_wallet = $wallet->id;
        }
        else
        {
            $wallet          = Wallet::find($chkWallet->id);
            $wallet->balance = ($wallet->balance + $sessionValue['finalAmount']);
            $wallet->save();
            $to_wallet = $chkWallet->id;
        }

        //CurrencyExchange Entry
        $uuid                      = unique_code();
        $data['fromWallet']        = $fromWallet        = Wallet::where(['user_id' => $uid, 'currency_id' => $sessionValue['from_currency_id']])->first(['id', 'currency_id']);
        $destinationCurrencyExRate = session('destination_exchange_rate');

        ///Create CurrencyExchange
        $currencyExchange                = new CurrencyExchange();
        $currencyExchange->user_id       = $uid;
        $currencyExchange->from_wallet   = $fromWallet->id;
        $currencyExchange->to_wallet     = $to_wallet;
        $currencyExchange->currency_id   = $sessionValue['currency_id'];
        $currencyExchange->uuid          = $uuid;
        $currencyExchange->exchange_rate = $destinationCurrencyExRate;
        $currencyExchange->amount        = $sessionValue['amount'];
        $currencyExchange->fee           = $sessionValue['fee'];
        $currencyExchange->type          = 'Out';
        $currencyExchange->status        = 'Success';
        $currencyExchange->save();

        $feesDetails = FeesLimit::where(['transaction_type_id' => Exchange_From, 'currency_id' => $sessionValue['from_currency_id']])->first(['charge_percentage', 'charge_fixed']);

        //// Deduct from base wallet
        $charge_percentage = @$feesDetails->charge_percentage ? ($sessionValue['amount']) * (@$feesDetails->charge_percentage / 100) : 0;
        $charge_fixed      = @$feesDetails->charge_fixed ? @$feesDetails->charge_fixed : 0;
        $tAmnt             = $sessionValue['amount'] + $charge_percentage + $charge_fixed;

        //Wallet Entry
        $wallet          = Wallet::find($fromWallet->id);
        $wallet->balance = ($wallet->balance - $tAmnt);
        $wallet->save();

        //Transaction - Exchange_From - Entry
        $exchangeFrom                           = new Transaction();
        $exchangeFrom->user_id                  = $uid;
        $exchangeFrom->currency_id              = $fromWallet->currency_id;
        $exchangeFrom->uuid                     = $uuid;
        $exchangeFrom->transaction_reference_id = $currencyExchange->id;
        $exchangeFrom->transaction_type_id      = Exchange_From;
        $exchangeFrom->subtotal                 = $sessionValue['amount'];
        $exchangeFrom->percentage               = @$feesDetails->charge_percentage ? @$feesDetails->charge_percentage : 0;
        $exchangeFrom->charge_percentage        = @$feesDetails->charge_percentage ? ($sessionValue['amount']) * (@$feesDetails->charge_percentage / 100) : 0;
        $exchangeFrom->charge_fixed             = @$feesDetails->charge_fixed ? @$feesDetails->charge_fixed : 0;
        $exchangeFrom->total                    = '-' . ($exchangeFrom->subtotal + $exchangeFrom->charge_percentage + $exchangeFrom->charge_fixed);
        $exchangeFrom->status                   = 'Success';
        $exchangeFrom->uuid                     = $uuid;
        $exchangeFrom->save();

        //Transaction - Exchange_To - Entry
        $exchangeTo                           = new Transaction();
        $exchangeTo->user_id                  = $uid;
        $exchangeTo->currency_id              = $sessionValue['currency_id'];
        $exchangeTo->uuid                     = $uuid;
        $exchangeTo->transaction_reference_id = $currencyExchange->id;
        $exchangeTo->transaction_type_id      = Exchange_To;
        $exchangeTo->subtotal                 = $sessionValue['finalAmount'];
        $exchangeTo->percentage               = 0;
        $exchangeTo->charge_percentage        = 0;
        $exchangeTo->charge_fixed             = 0;
        $exchangeTo->total                    = $exchangeTo->subtotal;
        $exchangeTo->status                   = 'Success';
        $exchangeTo->uuid                     = $uuid;
        $exchangeTo->save();

        //For success page
        $currency                           = Currency::where(['id' => $sessionValue['currency_id']])->first();
        $data['transInfo']                  = $sessionValue;
        $data['transInfo']['defaultAmnt']   = $sessionValue['amount'];
        $data['transInfo']['finalAmount']   = $sessionValue['finalAmount'];
        $data['transInfo']['currCode']      = $currency->code;
        $data['transInfo']['dCurrencyRate'] = $destinationCurrencyExRate;
        $data['transInfo']['trans_ref_id']  = $exchangeTo->transaction_reference_id;

        clearActionSession();

        return view('user_dashboard.exchange.success', $data);
    }

///////////////////////////////////pm - 1.7 ends here///////////////////////////////////////////////////////////////////////////////

    //Code for Amount Limit Check
    public function previous_amountLimitCheck(Request $request)
    {
        $amount      = $request->amount;
        $trans_type  = $request->type;
        $currency_id = $request->currency_id;
        $user_id     = Auth::user()->id;

        $wallets = Wallet::where(['currency_id' => $request->currency_id, 'user_id' => $user_id])->first(); //added by parvez - for wallet balance check

        $feesDetails = FeesLimit::where(['transaction_type_id' => $request->transaction_type_id, 'currency_id' => $currency_id])->first();
        //d($feesDetails,1);

        //Code for Amount Limit starts here
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
            /*$feesPercentage            = 0;
            $feesFixed                 = 0;
            $totalFess                 = $feesPercentage + $feesFixed;
            $totalAmount               = $amount + $totalFess;
            $success['feesPercentage'] = $feesPercentage;
            $success['feesFixed']      = $feesFixed;

            // $success['totalFees']      = number_format($totalFess, 2);
            $success['totalFees']      = number_format($totalFess, 2, '.', '');
            $success['totalFeesHtml']      = formatNumber($totalFess);

            $success['totalAmount']    = $totalAmount;
            $success['pFees']          = $feesPercentage;
            $success['fFees']          = $feesFixed;
            $success['balance']        = 0; //added by parvez*/
            //$success['status']         = 200;
            $curr = Currency::find($request->currency_id);

            $success['message'] = __('Please check fees limit for the currency ') . $curr->code;
            $success['status']  = '401';
        }
        else
        {
            // dd('here');

            if ($feesDetails->has_transaction == 'No')
            {
                $success['message'] = __("The default currency ({$feesDetails->currency->code}) fees limit is inactive");
                $success['status']  = '401';
            }
            else
            {
                $feesPercentage            = $amount * ($feesDetails->charge_percentage / 100);
                $feesFixed                 = $feesDetails->charge_fixed;
                $totalFess                 = $feesPercentage + $feesFixed;
                $totalAmount               = $amount + $totalFess;
                $success['feesPercentage'] = $feesPercentage;
                $success['feesFixed']      = $feesFixed;

                // $success['totalFees']      = number_format($totalFess, 2);
                $success['totalFees']     = number_format($totalFess, 2, '.', '');
                $success['totalFeesHtml'] = formatNumber($totalFess);

                $success['totalAmount'] = $totalAmount;
                $success['pFees']       = $feesDetails->charge_percentage;
                $success['fFees']       = $feesDetails->charge_fixed;
                $success['balance']     = @$wallets->balance ? @$wallets->balance : 0; //added by parvez
                                                                                       //$success['status']         = 200;
            }

        }
        //Code for Fees Limit Ends here

        return response()->json(['success' => $success]);
    }

    public function previous_currencyList($activeCurrency, $feesLimitCurrency)
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

    public function exchangeOfBaseCurrency(Request $request)
    {
        if ($_POST)
        {
            // dd($request->all());

            $uid              = Auth::user()->id;
            $default_currency = session::get('default_currency');

            $rules      = ['amount' => 'required'];
            $fieldNames = ['amount' => 'Amount'];

            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames);

            if ($validator->fails())
            {
                return back()->withErrors($validator)->withInput();
            }
            else
            {
                //echo 'hhh';exit();
                // $currency            = Currency::where(['id' => $request->currency_id])->first();
                // $currency_id         = $currency->id;
                // $desitnationCurrency = Currency::find($currency_id);

                $desitnationCurrency = Currency::where(['id' => $request->currency_id])->first();

                $data['defaultCurrency'] = $defaultCurrency = Currency::find(Session::get('default_currency'));
                if ($desitnationCurrency->exchange_from == "local")
                {
                    $destinationCurrencyRate = $desitnationCurrency->rate;
                }
                else
                {
                    $destinationCurrencyRate = getCurrencyRate($defaultCurrency->code, $desitnationCurrency->code);
                }

                Session::put('destination_exchange_rate', $destinationCurrencyRate);
                $feesDetails                        = FeesLimit::where(['transaction_type_id' => Exchange_From, 'currency_id' => session('default_currency')])->first();
                $data['transInfo']                  = $request->all();
                $data['transInfo']['defaultAmnt']   = $request->amount;
                $data['transInfo']['convertedAmnt'] = $request->amount * $destinationCurrencyRate;
                $data['transInfo']['amount']        = $request->amount;
                $data['transInfo']['totalAmount']   = ($request->amount) + $request->fee;
                $data['transInfo']['currSymbol']    = $desitnationCurrency->symbol;
                $data['transInfo']['dCurrencyRate'] = $destinationCurrencyRate;
                $data['transInfo']['currCode']      = $desitnationCurrency->code;
                // $data['transInfo']['currSymbol']    = $currency->symbol;
                // $data['transInfo']['currCode']      = $currency->code;

                session(['transInfo' => $request->all()]);

                $data['currencies'] = Currency::where(['status' => 'Active'])->get(); //why this needed? saw no use.

                $data['active_currency'] = $activeCurrency = Currency::where(['status' => 'Active'])->get();
                $feesLimitCurrency       = FeesLimit::where(['transaction_type_id' => Exchange_From, 'has_transaction' => 'Yes'])->get();
                $data['currencyList']    = $this->currencyList($activeCurrency, $feesLimitCurrency);

                $userCurrencyList         = array_column(Wallet::where(['user_id' => Auth::user()->id])->get()->toArray(), 'currency_id');
                $data['userCurrencyList'] = Currency::whereIn('id', $userCurrencyList)->get();

                //////////////////////////////////////////////////////////////////////
                //Code for Amount Limit starts here
                if (@$feesDetails->max_limit == null)
                {
                    if ((@$request->amount < @$feesDetails->min_limit))
                    {
                        $data['error'] = __('Minimum amount ') . $feesDetails->min_limit;
                        return view('user_dashboard.exchange.create', $data);
                    }
                }
                else
                {
                    if ((@$request->amount < @$feesDetails->min_limit) || (@$request->amount > @$feesDetails->max_limit))
                    {
                        $data['error'] = __('Minimum amount ') . $feesDetails->min_limit . __(' and Maximum amount ') . $feesDetails->max_limit;
                        return view('user_dashboard.exchange.create', $data);
                    }
                }
                //////////////////////////////////////////////////////////////////////

                //////////////////////////////////////////////////////////////////////
                //Code for Amount Limit ends here
                if (empty($feesDetails))
                {
                    $curr          = Currency::find(session('default_currency'));
                    $data['error'] = __('Please check fees limit for the currency ') . $curr->code;
                    return view('user_dashboard.exchange.create', $data);
                }

                $dfltWallet = Wallet::where(['user_id' => $uid, 'currency_id' => $default_currency])->first(['balance']);
                //Code for Balance check
                if ($request->amount > $dfltWallet->balance)
                {
                    $data['error'] = __('You do not have sufficient balance!');
                    return view('user_dashboard.exchange.create', $data);
                }
                ////////////////////////////////////////////////////////////////////////
            }
            return view('user_dashboard.exchange.confirmation', $data);
        }
    }

    public function exchangeOfBaseCurrencyConfirm()
    {
        actionSessionCheck();

        $sessionValue = session('transInfo');
        // dd($sessionValue);

        $uid       = Auth::user()->id;
        $chkWallet = Wallet::where(['user_id' => $uid, 'currency_id' => $sessionValue['currency_id']])->first();

        $destinationCurrencyExRate = session('destination_exchange_rate');
        $newAmount                 = ($sessionValue['amount'] * $destinationCurrencyExRate);

        $default_currency = session::get('default_currency');

        $dfltWallet = Wallet::where(['user_id' => $uid, 'currency_id' => $default_currency, 'is_default' => 'Yes'])->first(['id', 'currency_id']);
        // dd($dfltWallet);

        $data['defaultCurrency'] = Currency::find(Session::get('default_currency'));
        if (empty($chkWallet))
        {
            //Create a new wallet
            $wallet              = new Wallet();
            $wallet->user_id     = $uid;
            $wallet->currency_id = $sessionValue['currency_id'];
            $wallet->balance     = $newAmount;
            $wallet->save();
            $to_wallet = $wallet->id;
        }
        else
        {
            $wallet          = Wallet::find($chkWallet->id);
            $wallet->balance = ($wallet->balance + $newAmount);
            $wallet->save();
            $to_wallet = $chkWallet->id;
        }
        $uuid = unique_code();

        ///Create CurrencyExchange
        $currencyExchange                = new CurrencyExchange();
        $currencyExchange->user_id       = $uid;
        $currencyExchange->from_wallet   = $dfltWallet->id;
        $currencyExchange->to_wallet     = $to_wallet;
        $currencyExchange->currency_id   = $sessionValue['currency_id'];
        $currencyExchange->uuid          = $uuid;
        $currencyExchange->exchange_rate = $destinationCurrencyExRate;
        $currencyExchange->amount        = $sessionValue['amount'];
        $currencyExchange->fee           = $sessionValue['fee'];
        $currencyExchange->type          = 'Out';
        $currencyExchange->status        = 'Success';
        $currencyExchange->save();

        $feesDetails = FeesLimit::where(['transaction_type_id' => Exchange_From, 'currency_id' => session('default_currency')])->first(['charge_percentage', 'charge_fixed']);

        //// Deduct from base wallet
        $charge_percentage = @$feesDetails->charge_percentage ? ($sessionValue['amount']) * (@$feesDetails->charge_percentage / 100) : 0;
        $charge_fixed      = @$feesDetails->charge_fixed ? @$feesDetails->charge_fixed : 0;
        $tAmnt             = $sessionValue['amount'] + $charge_percentage + $charge_fixed;

        $wallet          = Wallet::find($dfltWallet->id);
        $wallet->balance = ($wallet->balance - $tAmnt);
        $wallet->save();

        $exchangeFrom                           = new Transaction();
        $exchangeFrom->user_id                  = $uid;
        $exchangeFrom->currency_id              = $dfltWallet->currency_id;
        $exchangeFrom->uuid                     = $uuid;
        $exchangeFrom->transaction_reference_id = $currencyExchange->id;
        $exchangeFrom->transaction_type_id      = Exchange_From;
        $exchangeFrom->subtotal                 = $sessionValue['amount'];
        $exchangeFrom->percentage               = @$feesDetails->charge_percentage ? @$feesDetails->charge_percentage : 0;
        $exchangeFrom->charge_percentage        = @$feesDetails->charge_percentage ? ($sessionValue['amount']) * (@$feesDetails->charge_percentage / 100) : 0;
        $exchangeFrom->charge_fixed             = @$feesDetails->charge_fixed ? @$feesDetails->charge_fixed : 0;

        $exchangeFrom->total  = '-' . ($exchangeFrom->subtotal + $exchangeFrom->charge_percentage + $exchangeFrom->charge_fixed);
        $exchangeFrom->status = 'Success';
        $exchangeFrom->uuid   = $uuid;
        $exchangeFrom->save();

        $exchangeTo                           = new Transaction();
        $exchangeTo->user_id                  = $uid;
        $exchangeTo->currency_id              = $sessionValue['currency_id'];
        $exchangeTo->uuid                     = $uuid;
        $exchangeTo->transaction_reference_id = $currencyExchange->id;
        $exchangeTo->transaction_type_id      = Exchange_To;

        $exchangeTo->subtotal          = $newAmount;
        $exchangeTo->percentage        = 0;
        $exchangeTo->charge_percentage = 0;
        $exchangeTo->charge_fixed      = 0;
        $exchangeTo->total             = $exchangeTo->subtotal;

        $exchangeTo->status = 'Success';
        $exchangeTo->uuid   = $uuid;
        $exchangeTo->save();
        $currency                           = Currency::where(['id' => $sessionValue['currency_id']])->first();
        $data['transInfo']                  = $sessionValue;
        $data['transInfo']['totalAmount']   = $sessionValue['amount'] + $sessionValue['fee'];
        $data['transInfo']['currSymbol']    = $currency->symbol;
        $data['transInfo']['defaultAmnt']   = $sessionValue['amount'];
        $data['transInfo']['convertedAmnt'] = $sessionValue['amount'] * $destinationCurrencyExRate;
        $data['transInfo']['amount']        = $sessionValue['amount'];
        $data['transInfo']['totalAmount']   = ($sessionValue['amount']) + $sessionValue['fee'];
        $data['transInfo']['currSymbol']    = $currency->symbol;
        $data['transInfo']['currCode']      = $currency->code;
        $data['transInfo']['dCurrencyRate'] = $destinationCurrencyExRate;
        $data['transInfo']['trans_ref_id']  = $exchangeTo->transaction_reference_id;

        clearActionSession();

        return view('user_dashboard.exchange.success', $data);
    }
    //Money Exchange (To Other Currency) ends here

    //Money Exchange (To Base Currency) starts here
    public function exchangeToBaseCurrency(Request $request)
    {
        if ($_POST)
        {
            $uid          = Auth::user()->id;
            $sourceWallet = Wallet::where(['user_id' => $uid, 'currency_id' => $request->currency_id])->first();

            $rules = array(
                'amount' => 'required|check_wallet_balance',
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
                $data['defaultCurrency'] = $defaultCurrency = Currency::find(Session::get('default_currency'));
                if ($sourceWallet->currency->exchange_from == 'local')
                {
                    $sourceExchangeRate = $sourceWallet->currency->rate;
                }
                else
                {
                    $sourceExchangeRate = getCurrencyRate($defaultCurrency->code, $sourceWallet->currency->code);
                }
                Session::put('source_exchange_rate', $sourceExchangeRate);
                $currency                           = Currency::where(['id' => $request->currency_id])->first();
                $data['transInfo']                  = $request->all();
                $data['transInfo']['defaultAmnt']   = $request->amount;
                $data['transInfo']['convertedAmnt'] = ($request->amount / $sourceExchangeRate);
                $data['transInfo']['amount']        = $request->amount;
                $data['transInfo']['totalAmount']   = ($request->amount) + $request->fee;
                $data['transInfo']['currSymbol']    = $currency->symbol;
                $data['transInfo']['dCurrencyRate'] = $sourceExchangeRate;
                $data['transInfo']['currCode']      = $currency->code;
                session(['transInfo' => $request->all()]);

                $data['currencies']      = Currency::where(['status' => 'Active'])->get();
                $data['active_currency'] = $activeCurrency = Currency::where(['status' => 'Active'])->get();

                $feesLimitCurrency    = FeesLimit::where(['transaction_type_id' => Exchange_From, 'has_transaction' => 'Yes'])->get();
                $data['currencyList'] = $this->currencyList($activeCurrency, $feesLimitCurrency);

                $userCurrencyList         = array_column(Wallet::where(['user_id' => Auth::user()->id])->get()->toArray(), 'currency_id');
                $data['userCurrencyList'] = Currency::whereIn('id', $userCurrencyList)->get();

                //Code for Amount Limit starts here
                $feesDetails = FeesLimit::where(['transaction_type_id' => Exchange_From, 'currency_id' => $request->currency_id])->first();
                if (@$feesDetails->max_limit == null)
                {
                    if ((@$request->amount < @$feesDetails->min_limit))
                    {
                        $data['error'] = __('Minimum amount ') . $feesDetails->min_limit;
                        return view('user_dashboard.exchange.create', $data);
                    }
                }
                else
                {
                    if ((@$request->amount < @$feesDetails->min_limit) || (@$request->amount > @$feesDetails->max_limit))
                    {
                        $data['error'] = __('Minimum amount ') . $feesDetails->min_limit . __(' and Maximum amount ') . $feesDetails->max_limit;
                        return view('user_dashboard.exchange.create', $data);
                    }
                }
                //Code for Amount Limit ends here
            }
            return view('user_dashboard.exchange.exchangetoconfirmation', $data);
        }
    }

    public function exchangeToBaseCurrencyConfirm()
    {
        actionSessionCheck();

        $sessionValue      = session('transInfo');
        $feesDetails       = FeesLimit::where(['transaction_type_id' => Exchange_From, 'currency_id' => $sessionValue['currency_id']])->first();
        $uuid              = unique_code();
        $uid               = Auth::user()->id;
        $sourceWallet      = Wallet::where(['user_id' => $uid, 'currency_id' => $sessionValue['currency_id']])->first();
        $destinationWallet = Wallet::where(['user_id' => $uid, 'is_default' => 'Yes'])->first();

        //// Deduct From Source Wallet
        $charge_percentage     = @$feesDetails->charge_percentage ? ($sessionValue['amount']) * (@$feesDetails->charge_percentage / 100) : 0;
        $charge_fixed          = @$feesDetails->charge_fixed ? @$feesDetails->charge_fixed : 0;
        $tAmnt                 = $sessionValue['amount'] + $charge_percentage + $charge_fixed;
        $walletSource          = Wallet::find($sourceWallet->id);
        $walletSource->balance = ($sourceWallet->balance - $tAmnt);
        $walletSource->save();

        $walletSourceId = $walletSource->id;

        //// Deposit To Default Wallet
        $source_exchange_rate = session('source_exchange_rate');
        $newAmount            = ($sessionValue['amount'] / $source_exchange_rate);

        $walletDestination          = Wallet::find($destinationWallet->id);
        $walletDestination->balance = ($destinationWallet->balance + $newAmount);
        $walletDestination->save();

        $walletDestinationId = $walletDestination->id;

        ///Create CurrencyExchange
        $currencyExchange                = new CurrencyExchange();
        $currencyExchange->user_id       = $uid;
        $currencyExchange->from_wallet   = $sourceWallet->id;
        $currencyExchange->to_wallet     = $destinationWallet->id;
        $currencyExchange->currency_id   = $sessionValue['currency_id'];
        $currencyExchange->uuid          = $uuid;
        $currencyExchange->exchange_rate = $source_exchange_rate;
        $currencyExchange->amount        = $sessionValue['amount'];
        $currencyExchange->fee           = $sessionValue['fee'];
        $currencyExchange->type          = 'In';
        $currencyExchange->status        = 'Success';
        $currencyExchange->save();

        $exchangeFrom                           = new Transaction();
        $exchangeFrom->user_id                  = $uid;
        $exchangeFrom->currency_id              = $walletSource->currency_id;
        $exchangeFrom->uuid                     = $uuid;
        $exchangeFrom->transaction_reference_id = $currencyExchange->id;
        $exchangeFrom->transaction_type_id      = Exchange_From;
        $exchangeFrom->subtotal                 = $sessionValue['amount'];
        $exchangeFrom->percentage               = @$feesDetails->charge_percentage ? @$feesDetails->charge_percentage : 0;
        $exchangeFrom->charge_percentage        = @$feesDetails->charge_percentage ? ($sessionValue['amount']) * (@$feesDetails->charge_percentage / 100) : 0;
        $exchangeFrom->charge_fixed             = @$feesDetails->charge_fixed ? @$feesDetails->charge_fixed : 0;
        $exchangeFrom->total                    = '-' . ($exchangeFrom->subtotal + $exchangeFrom->charge_percentage + $exchangeFrom->charge_fixed);
        $exchangeFrom->status                   = 'Success';
        $exchangeFrom->save();

        $exchangeTo                           = new Transaction();
        $exchangeTo->user_id                  = $uid;
        $exchangeTo->currency_id              = $destinationWallet->currency_id;
        $exchangeTo->uuid                     = $uuid;
        $exchangeTo->transaction_reference_id = $currencyExchange->id;
        $exchangeTo->transaction_type_id      = Exchange_To;
        $exchangeTo->subtotal                 = $newAmount;
        $exchangeFrom->percentage             = 0;
        $exchangeTo->charge_percentage        = 0;
        $exchangeTo->charge_fixed             = 0;
        $exchangeTo->total                    = $exchangeTo->subtotal;
        $exchangeTo->status                   = 'Success';
        $exchangeTo->save();

        $currency                           = Currency::where(['id' => $sessionValue['currency_id']])->first();
        $data['transInfo']                  = $sessionValue;
        $data['transInfo']['defaultAmnt']   = $sessionValue['amount'];
        $data['transInfo']['convertedAmnt'] = ($sessionValue['amount'] / $source_exchange_rate);
        $data['transInfo']['amount']        = $sessionValue['amount'];
        $data['transInfo']['totalAmount']   = ($sessionValue['amount']) + $sessionValue['fee'];
        $data['transInfo']['currSymbol']    = $currency->symbol;
        $data['transInfo']['dCurrencyRate'] = $source_exchange_rate;
        $data['transInfo']['currCode']      = $currency->code;
        $data['defaultCurrency']            = Currency::find(Session::get('default_currency'));
        $data['transInfo']['trans_ref_id']  = $exchangeTo->transaction_reference_id;

        clearActionSession();

        return view('user_dashboard.exchange.exchangetosuccess', $data);
    }

    public function Prev_exchangeToBaseCurrency(Request $request)
    {

        // d($request->all(), 1);
        $uid = Auth::user()->id;

        $sourceWallet = Wallet::where(['user_id' => $uid, 'currency_id' => $request->currency_id])->first();

        $destinationWallet = Wallet::where(['user_id' => $uid, 'is_default' => 'Yes'])->first();

        $rules = array(
            'amount' => 'required|check_wallet_balance',
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
            $uuid = unique_code();
            //// Deduct From Source Wallet
            $walletSource          = Wallet::find($sourceWallet->id);
            $walletSource->balance = ($sourceWallet->balance - $request->amount);
            $walletSource->save();

            $walletSourceId = $walletSource->id;

            //// Deposit To Default Wallet
            $newAmount                  = ($request->amount / $sourceWallet->currency->rate);
            $walletDestination          = Wallet::find($destinationWallet->id);
            $walletDestination->balance = ($destinationWallet->balance + $newAmount);

            $walletDestination->save();

            $walletDestinationId = $walletDestination->id;

            ///Create CurrencyExchange
            $currencyExchange                = new CurrencyExchange();
            $currencyExchange->from_wallet   = $sourceWallet->id;
            $currencyExchange->to_wallet     = $destinationWallet->id;
            $currencyExchange->exchange_rate = $sourceWallet->currency->rate;
            $currencyExchange->amount        = $request->amount;
            $currencyExchange->user_id       = $uid;
            $currencyExchange->currency_id   = $request->currency_id;
            $currencyExchange->type          = 'In';
            $currencyExchange->status        = 'Success';
            $currencyExchange->uuid          = $uuid;
            $currencyExchange->save();

            $exchangeFrom                           = new Transaction();
            $exchangeFrom->user_id                  = $uid;
            $exchangeFrom->currency_id              = $walletSource->currency_id;
            $exchangeFrom->uuid                     = $uuid;
            $exchangeFrom->transaction_reference_id = $currencyExchange->id;
            $exchangeFrom->type                     = 'Exchange_From';
            // $exchangeFrom->subtotal  = '-'.$request->amount;
            $exchangeFrom->subtotal = $request->amount;

            // $exchangeFrom->fee  = 0;
            $exchangeFrom->charge_percentage = 0;
            $exchangeFrom->charge_fixed      = 0;

            $exchangeFrom->total  = '-' . $request->amount;
            $exchangeFrom->status = 'Success';
            $exchangeFrom->save();

            $exchangeTo                           = new Transaction();
            $exchangeTo->user_id                  = $uid;
            $exchangeTo->currency_id              = $destinationWallet->currency_id;
            $exchangeTo->uuid                     = $uuid;
            $exchangeTo->transaction_reference_id = $currencyExchange->id;
            $exchangeTo->type                     = 'Exchange_To';
            $exchangeTo->subtotal                 = $newAmount;

            // $exchangeTo->fee  = 0;
            $exchangeTo->charge_percentage = 0;
            $exchangeTo->charge_fixed      = 0;

            $exchangeTo->total  = $newAmount;
            $exchangeTo->status = 'Success';
            $exchangeTo->save();

            $this->helper->one_time_message('success', 'Exchange Successfully Done!');
            return redirect('exchange');
        }
    }
    //Money Exchange (To Base Currency) starts here

    public function view($id)
    {
        $data['menu'] = 'exchanges';
        $data['info'] = $info = CurrencyExchange::where(['currency_exchanges.id' => $id])
            ->first();
        $data['content_title'] = 'Exchange';
        $data['icon']          = 'money';

        return view('user_dashboard.exchange.view', $data);
    }

    public function exchangeOfPrintPdf($trans_ref_id)
    {
        $data['companyInfo'] = Setting::where(['type' => 'general', 'name' => 'logo'])->first();

        $data['transactionDetails'] = CurrencyExchange::where(['id' => $trans_ref_id])->first();

        // $data['transactionOfexchangeOf'] = $transactionOfexchangeOf = Transaction::where(['transaction_reference_id' => $trans_ref_id])->first();
        // dd($transactionOfexchangeOf);

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
        $mpdf->WriteHTML(view('user_dashboard.exchange.exchangeOfPaymentPdf', $data));
        $mpdf->Output('sendMoney_' . time() . '.pdf', 'I'); // this will output data
    }

    public function exchangeToPrintPdf($trans_ref_id)
    {
        $data['companyInfo']        = Setting::where(['type' => 'general', 'name' => 'logo'])->first();
        $data['transactionDetails'] = $transactionDetails = CurrencyExchange::where(['id' => $trans_ref_id])->first();
        // dd($transactionDetails->transaction);

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
        $mpdf->WriteHTML(view('user_dashboard.exchange.exchangeToPaymentPdf', $data));
        $mpdf->Output('sendMoney_' . time() . '.pdf', 'I'); // this will output data
    }

    public function getWallet(Request $request)
    {
        $type            = $request->type;
        $wallets         = [];
        $defaultCurrency = Currency::find(Session::get('default_currency'));

        if ($type == 'to-base')
        {
            $userCurrencyList = array_column(Wallet::where(['user_id' => Auth::user()->id])->get()->toArray(), 'currency_id');
            $userCurrencyList = Currency::whereIn('id', $userCurrencyList)->get();

            $feesLimitCurrency                               = FeesLimit::where(['transaction_type_id' => Exchange_From, 'has_transaction' => 'Yes'])->get();
            $userWalletListAfterCheckingExistenceInFeesLimit = $this->userCurrencyList($userCurrencyList, $feesLimitCurrency);

            foreach ($userWalletListAfterCheckingExistenceInFeesLimit as $item)
            {
                if ($item['id'] != $defaultCurrency->id)
                {
                    $wallets[] = $item;
                }
            }

            // $userCurrencyList = array_column(Wallet::where(['user_id' => Auth::user()->id])->get()->toArray(), 'currency_id');
            // $userCurrencyList = Currency::whereIn('id', $userCurrencyList)->get();
            // foreach ($userCurrencyList as $item)
            // {
            //     if ($item['id'] != $defaultCurrency->id)
            //     {
            //         $wallets[] = $item;
            //     }
            // }
        }
        else
        {
            $activeCurrency    = Currency::where(['status' => 'Active'])->get();
            $feesLimitCurrency = FeesLimit::where(['transaction_type_id' => Exchange_From, 'has_transaction' => 'Yes'])->get();
            $currencyList      = $this->currencyList($activeCurrency, $feesLimitCurrency);
            foreach ($currencyList as $item)
            {
                if ($item['id'] != $defaultCurrency->id)
                {
                    $wallets[] = $item;
                }
            }
        }
        return $wallets;
    }

    public function userCurrencyList($userCurrencyList, $feesLimitCurrency)
    {
        $selectedCurrency = [];
        $i                = 0;
        foreach ($userCurrencyList as $aCurrency)
        {
            foreach ($feesLimitCurrency as $flCurrency)
            {
                if ($aCurrency->id == $flCurrency->currency_id && $flCurrency->has_transaction == 'Yes')
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

}
