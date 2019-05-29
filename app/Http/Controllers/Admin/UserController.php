<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\Admin\AdminsDataTable;
use App\DataTables\Admin\EachUserTransactionsDataTable;
use App\DataTables\Admin\UsersDataTable;
use App\Http\Controllers\Controller;
use App\Http\Helpers\Common;
use App\Models\ActivityLog;
use App\Models\Admin;
use App\Models\Country;
use App\Models\Currency;
use App\Models\Deposit;
use App\Models\Dispute;
use App\Models\FeesLimit;
use App\Models\PaymentMethod;
use App\Models\Role;
use App\Models\RoleUser;
use App\Models\Setting;
use App\Models\Ticket;
use App\Models\Transaction;
use App\Models\User;
use App\Models\UserDetail;
use App\Models\Wallet;
use App\Models\Withdrawal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    protected $helper;
    protected $transaction;

    public function __construct()
    {
        $this->helper      = new Common();
        $this->transaction = new Transaction();
        $this->user        = new User();
    }

    public function index(UsersDataTable $dataTable)
    {
        $data['menu']     = 'users';
        $data['sub_menu'] = 'users_list';
        return $dataTable->render('admin.users.index', $data);
    }

    public function create()
    {
        $data['menu']     = 'users';
        $data['sub_menu'] = 'users_create';

        $data['roles'] = $roles = Role::select('id', 'display_name')->where('user_type', "User")->get();
        // dd($roles);

        return view('admin.users.create', $data);
    }

    public function store(Request $request)
    {
        // dd($request->all());

        if ($_POST)
        {
            $rules = array(
                'first_name'            => 'required',
                'last_name'             => 'required',
                'email'                 => 'required|unique:users,email',
                'password'              => 'required|confirmed',
                'password_confirmation' => 'required',
            );

            $fieldNames = array(
                'first_name'            => 'First Name',
                'last_name'             => 'Last Name',
                'email'                 => 'Email',
                'password'              => 'Password',
                'password_confirmation' => 'Confirm Password',
            );
            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames);

            if ($validator->fails())
            {
                return back()->withErrors($validator)->withInput();
            }
            else
            {
                $users             = new User();
                $users->first_name = $request->first_name;
                $users->last_name  = $request->last_name;

                $formattedPhone = str_replace('+' . $request->carrierCode, "", $request->formattedPhone);
                if (!empty($request->phone))
                {
                    /*phone*/
                    $users->phone          = preg_replace("/[\s-]+/", "", $formattedPhone);
                    $users->defaultCountry = $request->defaultCountry;
                    $users->carrierCode    = $request->carrierCode;
                    /**/
                }
                else
                {
                    $users->phone          = null;
                    $users->defaultCountry = null;
                    $users->carrierCode    = null;
                }

                $users->email    = $request->email;
                $users->password = \Hash::make($request->password);
                $users->role_id  = $request->role;
                // dd($users);
                $users->save();

                $UserDetail          = new UserDetail();
                $UserDetail->user_id = $users->id;

                $randomCountry = Country::first(['id']);
                $timezone      = Setting::where('name', 'default_timezone')->first();

                if (!empty($randomCountry))
                {
                    $UserDetail->country_id = $randomCountry->id;
                }
                $UserDetail->timezone = $timezone->value;
                $UserDetail->save();

                // Assigning user_type and role id to new user
                RoleUser::insert(['user_id' => $users->id, 'role_id' => $users->role_id, 'user_type' => 'User']);

                // Wallet creation
                $active_currency = Currency::where(['default' => 1, 'status' => 'Active'])->select('id')->first();
                Wallet::firstOrCreate([
                    'user_id'     => $users->id,
                    'currency_id' => $active_currency->id,
                    'balance'     => 0.00,
                    'is_default'  => 'Yes',
                ]);
            }
        }
        $this->helper->one_time_message('success', 'User Created Successfully');
        return redirect('admin/users');
    }

    public function edit($id)
    {
        $data['menu']  = 'users';
        $data['users'] = $users = User::find($id);
        // dd($users->phone);

        $data['roles'] = $roles = Role::select('id', 'display_name')->where('user_type', "User")->get();
        return view('admin.users.edit', $data);
    }

    public function update(Request $request)
    {
        if ($_POST)
        {
            // dd($request->all());

            $rules = array(
                'first_name' => 'required',
                'last_name'  => 'required',
                'email'      => 'required|email|unique:users,email,' . $request->id,
            );

            $fieldNames = array(
                'first_name' => 'First Name',
                'last_name'  => 'Last Name',
                'email'      => 'Email',
            );
            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames);

            if ($validator->fails())
            {
                return back()->withErrors($validator)->withInput();
            }
            else
            {
                $users             = User::find($request->id);
                $users->first_name = $request->first_name;
                $users->last_name  = $request->last_name;
                $users->email      = $request->email;
                $users->role_id    = $request->role;

                $formattedPhone = ltrim($request->phone, '0');
                if (!empty($request->phone))
                {
                    /*phone*/
                    $users->phone          = preg_replace("/[\s-]+/", "", $formattedPhone);
                    $users->defaultCountry = $request->user_defaultCountry;
                    $users->carrierCode    = $request->user_carrierCode;
                    /**/
                }
                else
                {
                    $users->phone          = null;
                    $users->defaultCountry = null;
                    $users->carrierCode    = null;
                }

                if (!is_null($request->password) && !is_null($request->password_confirmation))
                {
                    $users->password = \Hash::make($request->password);
                }
                $users->save();

                RoleUser::where(['user_id' => $request->id, 'user_type' => 'User'])->update(['role_id' => $request->role]); //by tuhin
            }
        }
        $this->helper->one_time_message('success', 'User Updated Successfully');
        // return redirect('admin/users');
        return redirect('admin/users');
    }

    /* Start of Admin Depsosit */
    public function eachUserDeposit($id, Request $request)
    {
        setActionSession();

        $data['menu']  = 'users';
        $data['users'] = $users = User::find($id);

        $data['active_currency']    = $activeCurrency    = Currency::where(['status' => 'Active'])->get(['id', 'status', 'code']);
        $feesLimitCurrency          = FeesLimit::where(['transaction_type_id' => Deposit, 'has_transaction' => 'Yes'])->get(['currency_id', 'has_transaction']);
        $data['activeCurrencyList'] = $this->currencyList($activeCurrency, $feesLimitCurrency);

        $data['payment_met'] = $payment_met = PaymentMethod::where(['name' => 'Mts'])->first(['id', 'name']);
        // dd($payment_met);

        if (!empty($request->all()))
        {
            // dd($request->all());

            $currency              = Currency::where(['id' => $request->currency_id])->first(['symbol']);
            $request['currSymbol'] = $currency->symbol;

            $request['totalAmount'] = $request->amount + $request->fee;

            session(['transInfo' => $request->all()]);
            $data['transInfo'] = $transInfo = $request->all();
            // dd($transInfo);

            //check amount and limit
            $amount      = $request->amount;
            $feesDetails = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $request->currency_id, 'has_transaction' => 'Yes'])->first(['min_limit', 'max_limit']);
            if (@$feesDetails->max_limit == null)
            {
                if ((@$amount < @$feesDetails->min_limit))
                {
                    $data['error'] = __('Minimum amount ') . $feesDetails->min_limit;
                    return view('admin.users.deposit.create', $data);
                }
            }
            else
            {
                if ((@$amount < @$feesDetails->min_limit) || (@$amount > @$feesDetails->max_limit))
                {
                    $data['error'] = __('Minimum amount ') . $feesDetails->min_limit . __(' and Maximum amount ') . $feesDetails->max_limit;
                    return view('admin.users.deposit.create', $data);
                }
            }
            return view('admin.users.deposit.confirmation', $data);
        }
        return view('admin.users.deposit.create', $data);
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
                    $i++;
                }
            }
        }
        return $selectedCurrency;
    }

    public function amountFeesLimitCheck(Request $request)
    {
        $amount      = $request->amount;
        $wallets     = Wallet::where(['currency_id' => $request->currency_id, 'user_id' => $request->user_id])->first(['balance']);
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
        }

        return response()->json(['success' => $success]);
    }

    public function eachUserDepositSuccess(Request $request)
    {
        actionSessionCheck();

        $data['menu'] = 'users';

        // dd($request->all());

        $sessionValue = session('transInfo');
        // dd($sessionValue);

        $feeInfo = FeesLimit::where(['transaction_type_id' => Deposit, 'currency_id' => $sessionValue['currency_id']])->first(['charge_percentage', 'charge_fixed']);

        $uuid                       = unique_code();
        $deposit                    = new Deposit();
        $deposit->user_id           = $sessionValue['user_id'];
        $deposit->currency_id       = $sessionValue['currency_id'];
        $deposit->payment_method_id = $sessionValue['payment_method'];
        $deposit->uuid              = $uuid;
        $p_calc                     = (($sessionValue['amount']) * (@$feeInfo->charge_percentage) / 100);
        $deposit->charge_percentage = @$feeInfo->charge_percentage ? $p_calc : 0;
        $deposit->charge_fixed      = @$feeInfo->charge_fixed ? @$feeInfo->charge_fixed : 0;
        $deposit->amount            = $present_amount            = ($sessionValue['amount'] - ($p_calc + (@$feeInfo->charge_fixed)));
        $deposit->status            = 'Success';
        $deposit->save();

        $transaction                           = new Transaction();
        $transaction->user_id                  = $sessionValue['user_id'];
        $transaction->currency_id              = $sessionValue['currency_id'];
        $transaction->payment_method_id        = $sessionValue['payment_method'];
        $transaction->transaction_reference_id = $deposit->id;
        $transaction->transaction_type_id      = Deposit;
        $transaction->uuid                     = $uuid;
        $transaction->subtotal                 = $sessionValue['amount'];
        $transaction->percentage               = @$feeInfo->charge_percentage ? @$feeInfo->charge_percentage : 0;
        $transaction->charge_percentage        = $deposit->charge_percentage;
        $transaction->charge_fixed             = $deposit->charge_fixed;
        $transaction->total                    = $sessionValue['amount'] + $deposit->charge_percentage + $deposit->charge_fixed;
        $transaction->status                   = 'Success';
        $transaction->save();

        $wallet = Wallet::where(['user_id' => $sessionValue['user_id'], 'currency_id' => $sessionValue['currency_id']])->first(['id', 'balance']);
        if (empty($wallet))
        {
            $wallet              = new Wallet();
            $wallet->user_id     = $sessionValue['user_id'];
            $wallet->currency_id = $sessionValue['currency_id'];
            $wallet->balance     = $sessionValue['amount'];
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
        else
        {
            $wallet->balance = ($wallet->balance + $sessionValue['amount']);
            $wallet->save();
        }
        $data['transaction'] = $transaction;
        $data['user_id']     = $sessionValue['user_id'];
        $data['name']        = $sessionValue['fullname'];

        clearActionSession();
        return view('admin.users.deposit.success', $data);
    }

    public function eachUserdepositPrintPdf($transaction_id)
    {
        $data['companyInfo'] = Setting::where(['type' => 'general', 'name' => 'logo'])->first(['value']);

        $data['transactionDetails'] = $transactionDetails = Transaction::where(['id' => $transaction_id])
            ->first(['uuid', 'created_at', 'status', 'currency_id', 'payment_method_id', 'subtotal', 'charge_percentage', 'charge_fixed', 'total']);
        // dd($transactionDetails);

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
        $mpdf->WriteHTML(view('admin.users.deposit.depositPrintPdf', $data));
        $mpdf->Output('deposit_' . time() . '.pdf', 'I'); //
    }
    /* End of Admin Depsosit */

    /* Start of Admin Withdraw */
    public function eachUserWithdraw($id, Request $request)
    {
        setActionSession();

        $data['menu']  = 'users';
        $data['users'] = $users = User::find($id);

        // $data['active_currency']    = $activeCurrency    = Currency::where(['status' => 'Active'])->get(['id', 'status', 'code']);
        // $feesLimitCurrency          = FeesLimit::where(['transaction_type_id' => Withdrawal, 'has_transaction' => 'Yes'])->get(['currency_id', 'has_transaction']);
        // $data['activeCurrencyList'] = $this->currencyList($activeCurrency, $feesLimitCurrency);


        $data['wallets'] = $wallets = $users->wallets()->whereHas('active_currency', function ($q)
        {
            $q->whereHas('fees_limit', function ($query)
            {
                $query->where('has_transaction', 'Yes')->where('transaction_type_id', Withdrawal);
            });
        })->get();

        $data['payment_met'] = $payment_met = PaymentMethod::where(['name' => 'Mts'])->first(['id', 'name']);

        if (!empty($request->all()))
        {
            $amount                 = $request->amount;
            $currency               = Currency::where(['id' => $request->currency_id])->first(['symbol']);
            $request['currSymbol']  = $currency->symbol;
            $request['totalAmount'] = $request->amount + $request->fee;
            session(['transInfo' => $request->all()]);
            $data['transInfo'] = $transInfo = $request->all();

            //check amount and limit
            $feesDetails = FeesLimit::where(['transaction_type_id' => Withdrawal, 'currency_id' => $request->currency_id, 'has_transaction' => 'Yes'])->first();
            if (@$feesDetails->max_limit == null)
            {
                if ((@$amount < @$feesDetails->min_limit))
                {
                    $data['error'] = __('Minimum amount ') . $feesDetails->min_limit;
                    return view('admin.users.withdraw.create', $data);
                }
            }
            else
            {
                if ((@$amount < @$feesDetails->min_limit) || (@$amount > @$feesDetails->max_limit))
                {
                    $data['error'] = __('Minimum amount ') . $feesDetails->min_limit . __(' and Maximum amount ') . $feesDetails->max_limit;
                    return view('admin.users.withdraw.create', $data);
                }
            }
            return view('admin.users.withdraw.confirmation', $data);
        }
        return view('admin.users.withdraw.create', $data);
    }

    public function eachUserWithdrawSuccess(Request $request)
    {
        actionSessionCheck();

        // dd($request->all());
        $data['menu'] = 'users';
        $sessionValue = session('transInfo');
        // dd($sessionValue);

        $feeInfo                       = FeesLimit::where(['transaction_type_id' => Withdrawal, 'currency_id' => $sessionValue['currency_id']])->first();
        $uuid                          = unique_code();

        $withdrawal                    = new Withdrawal();
        $withdrawal->user_id           = $sessionValue['user_id'];
        $withdrawal->currency_id       = $sessionValue['currency_id'];
        $withdrawal->payment_method_id = $sessionValue['payment_method'];
        $withdrawal->uuid              = $uuid;
        $p_calc                        = (($sessionValue['amount']) * (@$feeInfo->charge_percentage) / 100);
        $withdrawal->charge_percentage = @$feeInfo->charge_percentage ? $p_calc : 0;
        $withdrawal->charge_fixed      = @$feeInfo->charge_fixed ? @$feeInfo->charge_fixed : 0;
        $withdrawal->subtotal          = ($sessionValue['amount'] - ($p_calc + (@$feeInfo->charge_fixed)));
        $withdrawal->amount            = $sessionValue['amount'];
        $withdrawal->status            = 'Pending';
        $withdrawal->save();

        $transaction                           = new Transaction();
        $transaction->user_id                  = $sessionValue['user_id'];
        $transaction->currency_id              = $sessionValue['currency_id'];
        $transaction->payment_method_id        = $sessionValue['payment_method'];
        $transaction->transaction_reference_id = $withdrawal->id;
        $transaction->transaction_type_id      = Withdrawal;
        $transaction->uuid                     = $uuid;
        $transaction->subtotal                 = $withdrawal->amount;
        $transaction->percentage               = @$feeInfo->charge_percentage ? @$feeInfo->charge_percentage : 0;
        $transaction->charge_percentage        = $withdrawal->charge_percentage;
        $transaction->charge_fixed             = $withdrawal->charge_fixed;
        $transaction->total                    = '-' . ($withdrawal->amount + $withdrawal->charge_percentage + $withdrawal->charge_fixed);
        $transaction->status                   = 'Pending';
        $transaction->save();

        $wallet = Wallet::where(['user_id' => $sessionValue['user_id'], 'currency_id' => $sessionValue['currency_id']])->first();
        if (!empty($wallet))
        {
            $wallet->balance = ($wallet->balance - ($withdrawal->amount + $withdrawal->charge_percentage + $withdrawal->charge_fixed));
            $wallet->save();
        }
        $data['transaction'] = $transaction;
        $data['user_id']     = $sessionValue['user_id'];
        $data['name']        = $sessionValue['fullname'];
        clearActionSession();
        return view('admin.users.withdraw.success', $data);
    }

    public function eachUserWithdrawPrintPdf($trans_id)
    {
        $data['companyInfo']        = Setting::where(['type' => 'general', 'name' => 'logo'])->first(['value']);
        $data['transactionDetails'] = $transactionDetails = Transaction::where(['id' => $trans_id])->first(['uuid', 'created_at', 'status', 'currency_id', 'payment_method_id', 'subtotal', 'charge_percentage', 'charge_fixed', 'total']);

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
        $mpdf->WriteHTML(view('admin.users.withdraw.withdrawalPrintPdf', $data));
        $mpdf->Output('payout_' . time() . '.pdf', 'I');
    }
    /* End of Admin Withdraw */

    public function eachUserTransaction($id, EachUserTransactionsDataTable $dataTable)
    {
        $data['menu']  = 'users';
        $data['users'] = $users = User::find($id);

        $data['t_status']   = $t_status   = Transaction::where(['user_id' => $id])->select('status')->groupBy('status')->get();
        $data['t_currency'] = $t_currency = Transaction::where(['user_id' => $id])->select('currency_id')->groupBy('currency_id')->get();
        $data['t_type']     = $t_type     = Transaction::where(['user_id' => $id])->select('transaction_type_id')->groupBy('transaction_type_id')->get();

        if (isset($_GET['btn']))
        {
            // dd($_GET);
            $data['status']   = $_GET['status'];
            $data['currency'] = $_GET['currency'];
            $data['type']     = $_GET['type'];

            if (empty($_GET['from']))
            {
                // dd('empty');
                $data['from'] = null;
                $data['to']   = null;
                // dd($transactions);
            }
            else
            {
                // dd('not empty');
                $data['from'] = $_GET['from'];
                $data['to']   = $_GET['to'];
            }
        }
        else
        {
            // dd('init');
            $data['from'] = null;
            $data['to']   = null;

            $data['status']   = 'all';
            $data['currency'] = 'all';
            $data['type']     = 'all';
        }
        return $dataTable->with('user_id', $id)->render('admin.users.eachusertransaction', $data); //passing $id to dataTable ass user_id
    }

    public function eachUserWallet($id)
    {
        $data['menu']    = 'users';
        $data['wallets'] = $wallets = Wallet::where(['user_id' => $id])->orderBy('id', 'desc')->get();
        $data['users']   = User::find($id);
        return view('admin.users.eachuserwallet', $data);
    }

    public function eachUserTicket($id)
    {
        $data['menu']    = 'users';
        $data['tickets'] = $tickets = Ticket::where(['user_id' => $id])->orderBy('id', 'desc')->get();
        $data['users']   = User::find($id);
        return view('admin.users.eachuserticket', $data);
    }

    public function eachUserDispute($id)
    {
        $data['menu'] = 'users';

        $data['disputes'] = $disputes = Dispute::where(['claimant_id' => $id])->orWhere(['defendant_id' => $id])->orderBy('id', 'desc')->get();

        $data['users'] = User::find($id);

        return view('admin.users.eachuserdispute', $data);
    }

    public function destroy($id)
    {
        // dd($id);
        $user = User::find($id);
        if ($user)
        {
            $user->delete();

            // Deleting Non-Relational Table Entries
            ActivityLog::where(['user_id' => $id])->delete();
            RoleUser::where(['user_id' => $id, 'user_type' => 'User'])->delete();

            $this->helper->one_time_message('success', 'User Deleted Successfully');
            return redirect('admin/users');
        }
    }

    public function postEmailCheck(Request $request)
    {

        if (isset($request->admin_id) || isset($request->user_id))
        {
            if (isset($request->type) && $request->type == "admin-email")
            {
                $req_id = $request->admin_id;
                $email  = Admin::where(['email' => $request->email])->where(function ($query) use ($req_id)
                {
                    $query->where('id', '!=', $req_id);
                })->exists();
            }
            else
            {
                $req_id = $request->user_id;
                $email  = User::where(['email' => $request->email])->where(function ($query) use ($req_id)
                {
                    $query->where('id', '!=', $req_id);
                })->exists();
            }
        }
        else
        {
            if (isset($request->type) && $request->type == "admin-email")
            {
                $email = Admin::where(['email' => $request->email])->exists();
            }
            else
            {
                $email = User::where(['email' => $request->email])->exists();
            }
        }

        if ($email)
        {
            $data['status'] = true;
            $data['fail']   = "The email has already been taken!";
        }
        else
        {
            $data['status']  = false;
            $data['success'] = "Email Available!";
        }
        return json_encode($data);
    }

    public function duplicatePhoneNumberCheck(Request $request)
    {

        $req_id = $request->id;

        if (isset($req_id))
        {
            $user = User::where(['phone' => $request->phone, 'carrierCode' => $request->carrierCode])->where(function ($query) use ($req_id)
            {
                $query->where('id', '!=', $req_id);
            })->first(['phone', 'carrierCode']);
        }
        else
        {
            // dd('no id');
            $user = User::where(['phone' => $request->phone, 'carrierCode' => $request->carrierCode])->first(['phone', 'carrierCode']);
        }

        if (!empty($user->phone) && !empty($user->carrierCode))
        {
            $data['status'] = true;
            $data['fail']   = "The phone number has already been taken!";
        }
        else
        {
            $data['status']  = false;
            $data['success'] = "The phone number is Available!";
        }
        return json_encode($data);
    }

    public function adminList(AdminsDataTable $dataTable)
    {
        $data['menu']     = 'users';
        $data['sub_menu'] = 'admin_users_list';

        return $dataTable->render('admin.users.adminList', $data);
    }

    public function adminCreate()
    {
        $data['menu']     = 'users';
        $data['sub_menu'] = 'admin_users_create';

        $data['roles'] = $roles = Role::select('id', 'display_name')->where('user_type', 'Admin')->get();
        // dd($roles);

        return view('admin.users.adminCreate', $data);
    }

    public function adminStore(Request $request)
    {

        $rules = array(
            'first_name'            => 'required',
            'last_name'             => 'required',
            'email'                 => 'required|unique:admins,email',
            'password'              => 'required|confirmed',
            'password_confirmation' => 'required',
        );

        $fieldNames = array(
            'first_name'            => 'First Name',
            'last_name'             => 'Last Name',
            'email'                 => 'Email',
            'password'              => 'Password',
            'password_confirmation' => 'Confirm Password',
        );
        $validator = Validator::make($request->all(), $rules);
        $validator->setAttributeNames($fieldNames);

        if ($validator->fails())
        {
            return back()->withErrors($validator)->withInput();
        }
        else
        {
            $admin = new Admin();

            // $email_explode     = explode("@", $request->email);
            // $admin->username   = $email_explode[0];

            $admin->first_name = $request->first_name;
            $admin->last_name  = $request->last_name;
            $admin->email      = $request->email;
            $admin->password   = Hash::make($request->password);
            $admin->role_id    = $request->role;
            $admin->save();
            RoleUser::insert(['user_id' => $admin->id, 'role_id' => $request->role, 'user_type' => 'Admin']);
        }

        //condition because same function used in installer for create admin
        if (!isset($request->from_installer))
        {
            $this->helper->one_time_message('success', 'Admin Created Successfully!');
            return redirect()->intended("admin/admin_users");
        }
    }

    public function adminEdit($id)
    {
        $data['menu']  = 'users';
        $data['admin'] = $users = Admin::find($id);
        $data['roles'] = $roles = Role::select('id', 'display_name')->where('user_type', "Admin")->get();
        return view('admin.users.adminEdit', $data);
    }

    public function adminUpdate(Request $request)
    {

        $rules = array(
            'first_name' => 'required',
            'last_name'  => 'required',
            'email'      => 'required|email|unique:admins,email,' . $request->admin_id,
        );

        $fieldNames = array(
            'first_name' => 'First Name',
            'last_name'  => 'Last Name',
            'email'      => 'Email',
        );
        $validator = Validator::make($request->all(), $rules);
        $validator->setAttributeNames($fieldNames);
        if ($validator->fails())
        {
            return back()->withErrors($validator)->withInput();
        }
        else
        {
            $admin             = Admin::find($request->admin_id);
            $admin->first_name = $request->first_name;
            $admin->last_name  = $request->last_name;
            $admin->email      = $request->email;
            $admin->role_id    = $request->role;
            $admin->save();
            RoleUser::where(['user_id' => $admin->id, 'user_type' => 'Admin'])->update(['role_id' => $request->role]);
            $this->helper->one_time_message('success', 'Admin Updated Successfully!');
            return redirect()->intended("admin/admin_users");
        }
    }

    public function adminDestroy($id)
    {
        $admin = Admin::find($id);
        if ($admin)
        {
            $admin->delete();

            // Deleting Non-Relational Table Entries
            ActivityLog::where(['user_id' => $id])->delete();
            RoleUser::where(['user_id' => $id, 'user_type' => 'Admin'])->delete();

            $this->helper->one_time_message('success', 'Admin Deleted Successfully');
            return redirect()->intended("admin/admin_users");
        }
    }

}
