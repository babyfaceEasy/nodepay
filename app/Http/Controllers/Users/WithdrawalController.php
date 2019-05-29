<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Users\EmailController;
use App\Http\Helpers\Common;
use App\Models\Country;
use App\Models\Currency;
use App\Models\FeesLimit;
use App\Models\PaymentMethod;
use App\Models\PayoutSetting;
use App\Models\Setting;
use App\Models\Transaction;
use App\Models\User;
use App\Models\Wallet;
use App\Models\Withdrawal;
use App\Models\WithdrawalDetail;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Omnipay\Omnipay;
use Session;
use Validator;

class WithdrawalController extends Controller
{
    protected $helper;
    protected $email;

    public function __construct()
    {
        $this->helper  = new Common();
        $this->omnipay = new Omnipay();
        $this->email   = new EmailController();
    }

    public function withdrawalCreate(Request $request)
    {
        setActionSession();

        $data['menu'] = 'withdrawal';

        if (!$_POST)
        {
            $currencyId       = Session::get('default_currency');
            $data['currency'] = Currency::find($currencyId);

            $data['active_currency'] = Currency::where(['status' => 'Active', 'default' => 1])->select('code', 'id')->first();

            $data['payment_methods'] = auth()->user()->payoutSettings;

            $data['wallets'] = $wallets = auth()->user()->wallets()->whereHas('active_currency', function ($q)
            {
                $q->whereHas('fees_limit', function ($query)
                {
                    $query->where('has_transaction', 'Yes')->where('transaction_type_id', Withdrawal);
                });
            })->get();
            return view('user_dashboard.withdrawal.create', $data);
        }
        else
        {
            $rules = array(
                'amount'            => 'required|numeric|check_wallet_balance',
                'payout_setting_id' => 'required',
                'currency_id'       => 'required',
            );
            $fieldNames = array(
                'amount'            => 'Amount',
                'payout_setting_id' => 'Payment method',
                'currency_id'       => 'Currency',
            );

            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames);

            if ($validator->fails())
            {
                return back()->withErrors($validator)->withInput();
            }
            else
            {
                $wallet = Wallet::find($request->wallet_id);
                if ($wallet)
                {
                    $data['transInfo']['currSymbol'] = $wallet->currency->symbol;
                    $data['transInfo']['amount']     = $request->amount;

                    $feesInfo = FeesLimit::where(['transaction_type_id' => Withdrawal, 'currency_id' => $wallet->currency_id])->first();

                    $fee = (($request->amount * $feesInfo->charge_percentage) / 100) + $feesInfo->charge_fixed;

                    $data['transInfo']['fee']            = $fee;
                    $data['transInfo']['totalAmount']    = $request->amount + $fee;
                    $data['transInfo']['payout_setting'] = $payout_setting = PayoutSetting::find($request->payout_setting_id);
                    // dd($payout_setting->paymentMethod->name);

                    //saving in sessions
                    Session::put('payout_setting_id', $request->payout_setting_id);
                    Session::put('currency_id', $request->currency_id);
                    Session::put('totalAmount', $request->amount + $fee);
                    Session::put('amount', $request->amount);
                    Session::put('payment_method_info', $request->payment_method_info);

                    return view('user_dashboard.withdrawal.confirmation', $data);
                }
            }
        }
    }

    public function withdrawalConfirmation()
    {
        actionSessionCheck();

        $uid                 = Auth::user()->id;
        $uuid                = unique_code();
        $payout_setting_id   = Session::get('payout_setting_id');
        $currency_id         = Session::get('currency_id');
        $totalAmount         = Session::get('totalAmount');
        $amount              = Session::get('amount');
        $payment_method_info = Session::get('payment_method_info');

        Session::forget('payout_setting_id');
        Session::forget('currency_id');
        Session::forget('totalAmount');
        Session::forget('amount');
        Session::forget('payment_method_info');

        try {
            DB::beginTransaction();

            // $payment_method = PayoutSetting::find($payout_setting_id)->paymentMethod;

            $payout_setting = PayoutSetting::find($payout_setting_id);

            $walletIns          = Wallet::where(['user_id' => $uid, 'currency_id' => $currency_id])->first();
            $walletIns->balance = ($walletIns->balance - $totalAmount);
            $walletIns->save();

            $feeInfo       = FeesLimit::where(['transaction_type_id' => Withdrawal, 'currency_id' => $walletIns->currency_id])->first();
            $feePercentage = ($amount * $feeInfo->charge_percentage) / 100;

            $withdrawal                    = new Withdrawal();
            $withdrawal->user_id           = $uid;
            $withdrawal->currency_id       = $walletIns->currency_id;
            $withdrawal->payment_method_id = $payout_setting->paymentMethod->id;

            $withdrawal->uuid = $uuid;

            $withdrawal->charge_percentage   = $feePercentage;
            $withdrawal->charge_fixed        = $feeInfo->charge_fixed;
            $withdrawal->subtotal            = $amount - ($withdrawal->charge_percentage + $withdrawal->charge_fixed);
            $withdrawal->amount              = $amount;
            $withdrawal->payment_method_info = $payment_method_info;

            $withdrawal->status = 'Pending';
            $withdrawal->save();

            //added on august 29,2018
            $withdrawalDetail                = new WithdrawalDetail();
            $withdrawalDetail->withdrawal_id = $withdrawal->id;
            $withdrawalDetail->type          = $payout_setting->type;
            $withdrawalDetail->email         = $payout_setting->email;

            if ($withdrawal->payment_method->name == "Bank")
            {
                // dd('p');
                $withdrawalDetail->account_name        = $payout_setting->account_name;
                $withdrawalDetail->account_number      = $payout_setting->account_number;
                $withdrawalDetail->bank_branch_name    = $payout_setting->bank_branch_name;
                $withdrawalDetail->bank_branch_city    = $payout_setting->bank_branch_city;
                $withdrawalDetail->bank_branch_address = $payout_setting->bank_branch_address;
                $withdrawalDetail->country             = $payout_setting->country;
                $withdrawalDetail->swift_code          = $payout_setting->swift_code;
                $withdrawalDetail->bank_name           = $payout_setting->bank_name;
            }
            $withdrawalDetail->save();


            $transaction                           = new Transaction();
            $transaction->user_id                  = $uid;
            $transaction->currency_id              = $walletIns->currency_id;
            $transaction->uuid                     = $uuid;
            $transaction->transaction_reference_id = $withdrawal->id;
            $transaction->transaction_type_id      = Withdrawal;
            $transaction->subtotal                 = $withdrawal->amount;
            $transaction->percentage               = $feeInfo->charge_percentage;
            $transaction->charge_percentage        = $feePercentage;
            $transaction->charge_fixed             = $feeInfo->charge_fixed;
            $transaction->total                    = '-' . ($transaction->subtotal + $transaction->charge_percentage + $transaction->charge_fixed);
            $transaction->status                   = 'Pending';
            $transaction->payment_method_id        = $payout_setting->paymentMethod->id;
            $transaction->save();

            DB::commit();
            $data['currency_code'] = Currency::find($currency_id)->symbol;
            // $data['totalAmount']   = $transaction->subtotal + $transaction->charge_percentage + $transaction->charge_fixed;
            $data['amount'] = $transaction->subtotal;

            $data['transaction'] = $transaction;
            clearActionSession();
            return view('user_dashboard.withdrawal.success', $data);
        }
        catch (\Exception $e)
        {
            DB::rollBack();
            clearActionSession();
            $this->helper->one_time_message('error', $e->getMessage());
            return redirect('payouts');
        }
    }

    //Code for withdrawal Amount Limit Check
    public function withdrawalAmountLimitCheck(Request $request)
    {
        $amount = $request->amount;

        $user_id = Auth::user()->id;

        $wallets = Wallet::where(['currency_id' => $request->currency_id, 'user_id' => $user_id])->first();

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

            $success['totalFees'] = ($totalFess);
            $success['totalHtml'] = formatNumber($totalFess);

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

            $success['totalFees'] = round($totalFess, 2);
            $success['totalHtml'] = formatNumber($totalFess);

            $success['totalAmount'] = round($totalAmount, 2);
            $success['pFees']       = $feesDetails->charge_percentage;
            $success['fFees']       = $feesDetails->charge_fixed;
            $success['min']         = $feesDetails->min_limit;
            $success['max']         = $feesDetails->max_limit;
            $success['balance']     = @$wallets->balance ? @$wallets->balance : 0;
            //$success['status']         = 200;
        }
        return response()->json(['success' => $success]);
    }

    public function withdrawalPrintPdf($trans_id)
    {
        // dd('doing');

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
        $mpdf->WriteHTML(view('user_dashboard.withdrawal.withdrawalPaymentPdf', $data));
        $mpdf->Output('sendMoney_' . time() . '.pdf', 'I'); //
    }

    public function payouts()
    {
        setActionSession();
        $data['menu']    = 'payout';
        $data['payouts'] = Withdrawal::where(['user_id' => Auth::user()->id])->orderBy('withdrawals.created_at', 'desc')->paginate(10);
        return view('user_dashboard.withdrawal.payouts', $data);
    }

    public function payoutSetting()
    {
        $data['menu']           = 'payout';
        $data['payoutSettings'] = auth()->user()->payoutSettings()->paginate(10);
        $data['countries']      = Country::all();
         // $data['paymentMethods'] = PaymentMethod::all();

        $data['paymentMethods'] = PaymentMethod::whereNotIn('name', ['Mts', 'Stripe', '2Checkout', 'PayUMoney', 'Coinpayments'])->get(); //mod by parvez


        return view('user_dashboard.withdrawal.payoutSetting', $data);
    }

    public function payoutSettingStore(Request $request)
    {

        $rules = array(
            'type'                => 'required',
            'email'               => 'nullable|email',
        );
        $fieldNames = array(
            'type'         => 'Type',
            'email'        => 'Email', 
        );

        $validator = Validator::make($request->all(), $rules);
        $validator->setAttributeNames($fieldNames);

        if ($validator->fails())
        {
            return back()->withErrors($validator)->withInput();
        }
        else
        {

            $type                   = $request->type;
            $payoutSetting          = new PayoutSetting();
            $payoutSetting->type    = $type;
            $payoutSetting->user_id = Auth::user()->id;
            if ($type == 6)
            {
                $payoutSetting->account_name        = $request->account_name;
                $payoutSetting->account_number      = $request->account_number;
                $payoutSetting->swift_code          = $request->swift_code;
                $payoutSetting->bank_name           = $request->bank_name;
                $payoutSetting->bank_branch_name    = $request->branch_name;
                $payoutSetting->bank_branch_city    = $request->branch_city;
                $payoutSetting->bank_branch_address = $request->branch_address;
                $payoutSetting->country             = $request->country;
            }elseif ($type == 8) {
                $payoutSetting->account_number      = $request->payeer_account_no;
            }elseif ($type == 9) {
                $payoutSetting->account_number      = $request->perfect_money_account_no;
            }
            else
            {
                $payoutSetting->email = $request->email;
            }
            $payoutSetting->save();

            $this->helper->one_time_message('success', __('Payout Setting Created Successfully!'));
            return back();
        }
    }

    public function payoutSettingUpdate(Request $request)
    {
        $id      = $request->setting_id;
        $setting = PayoutSetting::find($id);
        if (!$setting)
        {
            $this->helper->one_time_message('error', __('Payout Setting not found !'));
            return back();
        }
        if ($setting->type == 6)
        {
            $setting->account_name        = $request->account_name;
            $setting->account_number      = $request->account_number;
            $setting->bank_branch_name    = $request->bank_name;
            $setting->bank_branch_city    = $request->branch_city;
            $setting->bank_branch_address = $request->branch_address;
            $setting->country             = $request->country;
            $setting->swift_code          = $request->swift_code;
            $setting->bank_name           = $request->bank_name;
        }elseif ($setting->type == 8) {
            $setting->account_number      = $request->payeer_account_no;
        }elseif ($setting->type == 9) {
            $setting->account_number      = $request->perfect_money_account_no;
        }
        else
        {
            $setting->email = $request->email;
        }
        $setting->save();

        $this->helper->one_time_message('success', __('Payout Setting Updated Successfully!'));
        return back();
    }

    public function payoutSettingDestroy(Request $request)
    {
        $id = $request->id;
        //used auth to verify payout of auth user
        $payout = auth()->user()->payoutSettings->where('id', $id)->first();
        $payout->delete();

        $this->helper->one_time_message('success', __('Payout Setting Deleted Successfully!'));
        return back();
    }

    // public function withdrawalStore(Request $request)
    // {
    //     actionSessionCheck();
    //     $uid = Auth::user()->id;

    //     $uuid = unique_code();

    //     try {
    //         DB::beginTransaction();

    //         // $payment_method = PayoutSetting::find($request->payout_setting_id)->paymentMethod;

    //         $payout_setting = PayoutSetting::find($payout_setting_id);

    //         $walletIns          = Wallet::where(['user_id' => $uid, 'currency_id' => $request->currency_id])->first();
    //         $walletIns->balance = ($walletIns->balance - $request->amount);
    //         $walletIns->save();

    //         $feeInfo       = FeesLimit::where(['transaction_type_id' => Withdrawal, 'currency_id' => $walletIns->currency_id])->first();
    //         $feePercentage = ($request->amount * $feeInfo->charge_percentage) / 100;

    //         $withdrawal                    = new Withdrawal();
    //         $withdrawal->user_id           = $uid;
    //         $withdrawal->currency_id       = $walletIns->currency_id;
    //         $withdrawal->payment_method_id = $payout_setting->paymentMethod->id;

    //         $withdrawal->uuid = $uuid;

    //         $withdrawal->charge_percentage   = $feePercentage;
    //         $withdrawal->charge_fixed        = $feeInfo->charge_fixed;
    //         $withdrawal->subtotal            = $request->amount - ($withdrawal->charge_percentage + $withdrawal->charge_fixed);
    //         $withdrawal->amount              = $request->amount;
    //         $withdrawal->payment_method_info = $request->payment_method_info;

    //         $withdrawal->status = 'Pending';
    //         $withdrawal->save();

    //         //added on august 29,2018
    //         $withdrawalDetail                      = new WithdrawalDetail();
    //         $withdrawalDetail->withdrawal_id       = $withdrawal->id;
    //         $withdrawalDetail->type                = $payout_setting->type;
    //         $withdrawalDetail->email               = $payout_setting->email;
    //         $withdrawalDetail->account_name        = $payout_setting->account_name;
    //         $withdrawalDetail->account_number      = $payout_setting->account_number;
    //         $withdrawalDetail->bank_branch_name    = $payout_setting->bank_branch_name;
    //         $withdrawalDetail->bank_branch_city    = $payout_setting->bank_branch_city;
    //         $withdrawalDetail->bank_branch_address = $payout_setting->bank_branch_address;
    //         $withdrawalDetail->country             = $payout_setting->country;
    //         $withdrawalDetail->swift_code          = $payout_setting->swift_code;
    //         $withdrawalDetail->bank_name           = $payout_setting->bank_name;
    //         $withdrawalDetail->save();

    //         $transaction                           = new Transaction();
    //         $transaction->user_id                  = $uid;
    //         $transaction->currency_id              = $walletIns->currency_id;
    //         $transaction->uuid                     = $uuid;
    //         $transaction->transaction_reference_id = $withdrawal->id;
    //         $transaction->transaction_type_id      = Withdrawal;
    //         $transaction->subtotal                 = $withdrawal->amount;
    //         $transaction->percentage               = $feeInfo->charge_percentage;
    //         $transaction->charge_percentage        = $feePercentage;
    //         $transaction->charge_fixed             = $feeInfo->charge_fixed;
    //         $transaction->total                    = '-' . ($transaction->subtotal + $transaction->charge_percentage + $transaction->charge_fixed);
    //         $transaction->status                   = 'Pending';
    //         $transaction->payment_method_id        = $payout_setting->paymentMethod->id;
    //         $transaction->save();

    //         DB::commit();
    //         clearActionSession();
    //         $this->helper->one_time_message('success', __('Withdrawal Created Successfully!'));
    //         return redirect('payouts');
    //     }
    //     catch (\Exception $e)
    //     {
    //         DB::rollBack();
    //         clearActionSession();
    //         $this->helper->one_time_message('error', $e->getMessage());
    //         return redirect('payouts');
    //     }
    // }
}
