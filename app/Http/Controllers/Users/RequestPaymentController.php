<?php

namespace App\Http\Controllers\Users;

use App;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Users\EmailController;
use App\Http\Helpers\Common;
use App\Models\Currency;
use App\Models\EmailTemplate;
use App\Models\Fee;
use App\Models\FeesLimit;
use App\Models\RequestPayment;
use App\Models\Setting;
use App\Models\Transaction;
use App\Models\User;
use App\Models\Wallet;
use Auth;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Session;
use Validator;

class RequestPaymentController extends Controller
{
    protected $helper;
    protected $email;

    public function __construct()
    {
        $this->helper = new Common();
        $this->email  = new EmailController();
    }

    public function index()
    {

        $data['menu']          = 'request_payment';
        $data['content_title'] = 'Request Payment';
        $data['icon']          = 'money';
        $data['transfer_fee']  = $transfer_fee  = Fee::where(['transaction_type' => 'Transfer'])->select('charge_percentage', 'charge_fixed')->first();
        $data['list']          = DB::table('request_payments')
            ->where([
                'request_payments.status' => 'Pending',
                'user_id'                 => Auth::user()->id,
            ])
            ->orWhere(function ($key)
        {
                $key->where([
                    'request_payments.status' => 'Pending',
                    'receiver_id'             => Auth::user()->id,
                ]);
            })
            ->leftJoin('users as sender', 'sender.id', '=', 'request_payments.user_id')
            ->leftJoin('users as receiver', 'receiver.id', '=', 'request_payments.receiver_id')
            ->leftJoin('currencies', 'currencies.id', '=', 'request_payments.currency_id')
            ->select('request_payments.*',
                'sender.first_name as sender_first_name',
                'sender.last_name as sender_last_name',
                'receiver.first_name as receiver_first_name',
                'receiver.last_name as receiver_last_name',
                'currencies.code')
            ->orderBy('id', 'desc')
            ->get()
            ->toArray();

        $data['listComplets'] = DB::table('request_payments')
            ->whereIn('request_payments.status', ['Success', 'Blocked'])
            ->where(['request_payments.user_id' => Auth::user()->id])
            ->orWhere(function ($key)
        {
                $key->where(['request_payments.receiver_id' => Auth::user()->id])
                    ->whereIn('request_payments.status', ['Success', 'Blocked']);
            })
            ->leftJoin('users as sender', 'sender.id', '=', 'request_payments.user_id')
            ->leftJoin('users as receiver', 'receiver.id', '=', 'request_payments.receiver_id')
            ->leftJoin('currencies', 'currencies.id', '=', 'request_payments.currency_id')
            ->select('request_payments.*', 'sender.first_name as sender_first_name', 'sender.last_name as sender_last_name', 'receiver.first_name as receiver_first_name', 'receiver.last_name as receiver_last_name', 'currencies.code')
            ->orderBy('id', 'desc')
            ->take(10)
            ->get()
            ->toArray();

        return view('user_dashboard.requestPayment.list', $data);
    }

    public function add()
    {
        //set the session for validating the action
        setActionSession();

        $data['menu']          = 'send_receive';
        $data['submenu']       = 'receive';
        $data['content_title'] = 'Request Payment';

        $activeCurrency       = Currency::where(['status' => 'Active'])->get();
        $feesLimitCurrency    = FeesLimit::where(['transaction_type_id' => Request_To, 'has_transaction' => 'Yes'])->get();
        $data['currencyList'] = $this->currencyList($activeCurrency, $feesLimitCurrency);

        $data['transInfo']['currency_id'] = $activeCurrency[0]->id;
        // $data['transInfo']['currency_id'] = $data['currencies'][0]->id;
        return view('user_dashboard.requestPayment.add', $data);
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

    public function store(Request $request)
    {
        $uid                   = Auth::user()->id;
        $data['menu']          = 'send_receive';
        $data['submenu']       = 'receive';
        $data['currencies']    = Currency::where(['status' => 'Active'])->get();
        $data['content_title'] = 'Request Payment';
        $rules                 = array(
            'amount' => 'required',
            'email'  => 'required|email',
            'note'   => 'required',
        );
        $fieldNames = array(
            'amount' => 'Amount',
            'email'  => 'Email',
            'note'   => 'Note',
        );
        $validator = Validator::make($request->all(), $rules);
        $validator->setAttributeNames($fieldNames);
        if ($validator->fails())
        {
            return back()->withErrors($validator)->withInput();
        }
        else
        {
            $userInfo              = User::where(['email' => $request->email])->first();
            $currency              = Currency::find($request->currency_id);
            $request['currSymbol'] = $currency->symbol;
            session(['transInfo' => $request->all()]);
            $data['transInfo'] = $request->all();
            // dd($request->all());

            // Reject sending request payment to thyself
            if ($request->has('email'))
            {
                if ($request->email == Auth::user()->email)
                {
                    $data['error'] = __('You Cannot Request Money To Yourself!');
                    return view('user_dashboard.requestPayment.add', $data);
                }
            }
            return view('user_dashboard.requestPayment.confirmation', $data);
        }
    }

    public function requestMoneyConfirm()
    {
        actionSessionCheck();

        $uid               = Auth::user()->id;
        $sessionValue      = Session::get('transInfo');
        $data['transInfo'] = $sessionValue;
        $userInfo          = User::where(['email' => $sessionValue['email']])->first();
        $currency          = Currency::find($sessionValue['currency_id']);
        $senderName        = Auth::user()->first_name . ' ' . Auth::user()->last_name;

        $receiverName  = isset($userInfo) ? $userInfo->first_name . ' ' . $userInfo->last_name : '';
        $receiverPhone = isset($userInfo) ? $userInfo->phone : '';

        $uuid = unique_code();

        $RequestPayment              = new RequestPayment();
        $RequestPayment->user_id     = $uid;
        $RequestPayment->receiver_id = isset($userInfo) ? $userInfo->id : null;
        $RequestPayment->email       = $sessionValue['email'];
        $RequestPayment->currency_id = $sessionValue['currency_id'];
        $RequestPayment->amount      = $sessionValue['amount'];
        $RequestPayment->note        = $sessionValue['note'];
        $RequestPayment->uuid        = $uuid;
        $RequestPayment->status      = "Pending";
        $RequestPayment->save();

        // Created pending transaction for Request Created
        $transaction                           = new Transaction();
        $transaction->user_id                  = Auth::user()->id;
        $transaction->currency_id              = $sessionValue['currency_id'];
        $transaction->uuid                     = $uuid;
        $transaction->transaction_reference_id = $RequestPayment->id;
        $transaction->transaction_type_id      = Request_From;
        $transaction->subtotal                 = $sessionValue['amount'];
        $transaction->charge_percentage        = 0;
        $transaction->charge_fixed             = 0;
        $transaction->total                    = $sessionValue['amount'];
        $transaction->note                     = $RequestPayment->note;
        if (!empty($userInfo))
        {
            $transaction->end_user_id = $userInfo->id;
            $transaction->user_type   = 'registered';
        }
        else
        {
            $transaction->email     = $sessionValue['email'];
            $transaction->user_type = 'unregistered';
        }
        $transaction->status = 'Pending';
        $transaction->save();

        // Created pending transaction for Request To
        $transactionRequestTo                           = new Transaction();
        $transactionRequestTo->user_id                  = isset($userInfo) ? $userInfo->id : null;
        $transactionRequestTo->end_user_id              = Auth::user()->id;
        $transactionRequestTo->currency_id              = $sessionValue['currency_id'];
        $transactionRequestTo->uuid                     = $uuid;
        $transactionRequestTo->transaction_reference_id = $RequestPayment->id;
        $transactionRequestTo->transaction_type_id      = Request_To;
        $transactionRequestTo->subtotal                 = $sessionValue['amount'];
        $transactionRequestTo->charge_percentage        = 0;
        $transactionRequestTo->charge_fixed             = 0;
        $transactionRequestTo->total                    = '-' . $sessionValue['amount'];
        $transactionRequestTo->note                     = $RequestPayment->note;

        if (!empty($userInfo))
        {
            $transactionRequestTo->user_type = 'registered';
        }
        else
        {
            $transactionRequestTo->email     = $sessionValue['email'];
            $transactionRequestTo->user_type = 'unregistered';
        }
        $transactionRequestTo->status = 'Pending';
        $transactionRequestTo->save();

        // $createWallet = Wallet::where(['user_id' => Auth::user()->id, 'currency_id' => $sessionValue['currency_id']])->first();

        if (isset($userInfo))
        {
            /**
             * Mail when request created
             */
            $englishSenderLanginfo = EmailTemplate::where(['temp_id' => 4, 'lang' => 'en', 'type' => 'email'])->select('subject', 'body')->first();

            $req_create_temp = EmailTemplate::where([
                'temp_id'     => 4,
                'language_id' => Session::get('default_language'),
                'type'        => 'email',
            ])->select('subject', 'body')->first();

            if (!empty($req_create_temp->subject) && !empty($req_create_temp->body))
            {
                $req_create_sub = $req_create_temp->subject;
                $req_create_msg = str_replace('{acceptor}', $receiverName, $req_create_temp->body);
            }
            else
            {
                $req_create_sub = $englishSenderLanginfo->subject;
                $req_create_msg = str_replace('{acceptor}', $receiverName, $englishSenderLanginfo->body);
            }
            $req_create_msg = str_replace('{amount}', moneyFormat($RequestPayment->currency->symbol, formatNumber($sessionValue['amount'])), $req_create_msg);
            $req_create_msg = str_replace('{uuid}', $uuid, $req_create_msg);
            $req_create_msg = str_replace('{created_at}', Carbon::now()->toDateString(), $req_create_msg);
            $req_create_msg = str_replace('{note}', $sessionValue['note'], $req_create_msg);
            $req_create_msg = str_replace('{purpose}', $sessionValue['purpose'], $req_create_msg);
            $req_create_msg = str_replace('{soft_name}', Session::get('name'), $req_create_msg);

            if (checkAppMailEnvironment())
            {
                $this->email->sendEmail($sessionValue['email'], $req_create_sub, $req_create_msg);
            }

            /**
             * SMS
             */
            $enRpSmsTempInfo = EmailTemplate::where(['temp_id' => 4, 'lang' => 'en', 'type' => 'sms'])->select('subject', 'body')->first();

            $reqSmsTempInfo = EmailTemplate::where(['temp_id' => 4, 'language_id' => Session::get('default_language'), 'type' => 'sms'])->select('subject', 'body')->first();

            if (!empty($reqSmsTempInfo->subject) && !empty($reqSmsTempInfo->body))
            {
                $reqSmsTempInfo_sub = $reqSmsTempInfo->subject;
                $reqSmsTempInfo_msg = str_replace('{acceptor}', $receiverName, $reqSmsTempInfo->body);
            }
            else
            {
                $reqSmsTempInfo_sub = $enRpSmsTempInfo->subject;
                $reqSmsTempInfo_msg = str_replace('{acceptor}', $receiverName, $enRpSmsTempInfo->body);
            }
            $reqSmsTempInfo_msg = str_replace('{amount}', moneyFormat($RequestPayment->currency->symbol, formatNumber($sessionValue['amount'])), $reqSmsTempInfo_msg);
            $reqSmsTempInfo_msg = str_replace('{creator}', $RequestPayment->user->first_name . ' ' . $RequestPayment->user->last_name, $reqSmsTempInfo_msg);

            if (!empty($userInfo->carrierCode) && !empty($userInfo->phone))
            {
                if (checkAppSmsEnvironment())
                {
                    if (getNexmoDetails()->is_nexmo_default == 'Yes' && getNexmoDetails()->nexmo_status == 'Active')
                    {
                        sendSMS(getNexmoDetails()->default_nexmo_phone_number, $userInfo->carrierCode . $userInfo->phone, $reqSmsTempInfo_msg);
                    }
                }
            }
        }
        else
        {
            /**
             * Mail to unregistered user when request created
             */
            $email_explode                 = explode("@", trim($sessionValue['email']));
            $unregisteredUserNameFromEmail = $email_explode[0];

            $profileName = Session::get('name');
            $subject     = 'Notice of Request Creation!';
            $message     = 'Hi ' . $unregisteredUserNameFromEmail . ',<br><br>';
            $message .= 'You have got ' . moneyFormat($RequestPayment->currency->symbol, formatNumber($sessionValue['amount'])) . ' payment request from ' . Auth::user()->email . '.<br>';
            $message .= 'To accept the request, please register on : ' . url('/register') . ' with current email.<br><br>';
            $message .= 'Regards,<br>';
            $message .= $profileName;

            if (checkAppMailEnvironment())
            {
                $this->email->sendEmail($sessionValue['email'], $subject, $message);
            }
        }
        $data['transInfo']             = $sessionValue;
        $data['transInfo']['trans_id'] = $transaction->id;
        $data['userInfo']              = $userInfo;
        $data['receiverName']          = $receiverName;
        $data['content_title']         = 'Money Request';

        clearActionSession();
        return view('user_dashboard.requestPayment.success', $data);
    }

    public function cancel(Request $request)
    {
        // dd($request->type);
        // if ($request->type == Request_From)
        // {
            $id = $request->id;

            $TransactionA         = Transaction::find($id);
            $TransactionA->status = "Blocked";
            $TransactionA->save();

            // $TransactionB         = Transaction::where(['transaction_reference_id' => $TransactionA->transaction_reference_id, 'transaction_type_id' => Request_To])->first();

            $transaction_type_id = $TransactionA->transaction_type_id == Request_To ? Request_From : Request_To;

            $TransactionB = Transaction::where([
                'transaction_reference_id' => $TransactionA->transaction_reference_id,
                'transaction_type_id'      => $transaction_type_id])->first();
            $TransactionB->status = "Blocked";
            $TransactionB->save();

        // }
        // elseif ($request->type == Request_To)
        // {
        //     $id = $request->id;

        //     $TransactionA         = Transaction::find($id);
        //     $TransactionA->status = "Blocked";
        //     $TransactionA->save();

        //     $TransactionB         = Transaction::where(['transaction_reference_id' => $TransactionA->transaction_reference_id, 'transaction_type_id' => Request_From])->first();
        //     $TransactionB->status = "Blocked";
        //     $TransactionB->save();
        // }

        $RequestPayment         = RequestPayment::find($TransactionA->transaction_reference_id);
        $RequestPayment->status = "Blocked";
        $RequestPayment->save();

        // Mail to request creator when a request is cancelled (both sides)
        $appName = Session::get('name');
        $subject = 'Cancellation of Request Payment';
        $message = 'Hi ' . $RequestPayment->user->first_name . ' ' . $RequestPayment->user->last_name . '<br><br>';

        $message .= 'You request payment #' . $RequestPayment->uuid . ' of ' . moneyFormat($RequestPayment->currency->symbol, formatNumber($RequestPayment->amount)) . ' has been cancelled by ' . $RequestPayment->receiver->first_name . ' ' . $RequestPayment->receiver->last_name . '.';

        $message .= '<br><br>';
        $message .= 'If you have any questions, please feel free to reply to this mail';
        $message .= '<br><br>';
        $message .= 'Regards,';
        $message .= '<br>';
        $message .= $appName;
        if (checkAppMailEnvironment())
        {
            $this->email->sendEmail($RequestPayment->user->email, $subject, $message);
        }
        $data['status'] = 'Cancelled';
        return json_encode($data);
    }

    public function cancelfrom(Request $request)
    {
        // dd($request->type);
        if ($request->type == Request_From)
        {
            $id = $request->id;

            $TransactionA         = Transaction::find($id);
            $TransactionA->status = "Blocked";
            $TransactionA->save();

            $TransactionB         = Transaction::where(['transaction_reference_id' => $TransactionA->transaction_reference_id, 'transaction_type_id' => Request_To])->first();
            $TransactionB->status = "Blocked";
            $TransactionB->save();

        }
        elseif ($request->type == Request_To)
        {
            $id = $request->id;

            $TransactionA         = Transaction::find($id);
            $TransactionA->status = "Blocked";
            $TransactionA->save();

            $TransactionB         = Transaction::where(['transaction_reference_id' => $TransactionA->transaction_reference_id, 'transaction_type_id' => Request_From])->first();
            $TransactionB->status = "Blocked";
            $TransactionB->save();
        }

        $RequestPayment         = RequestPayment::find($TransactionA->transaction_reference_id);
        $RequestPayment->status = "Blocked";
        $RequestPayment->save();

        $data['status'] = 'Cancelled';
        return json_encode($data);
    }

    public function detail($id)
    {
        $data['menu']          = 'request_payment';
        $data['content_title'] = 'Request Payment';
        $data['icon']          = 'money';

        $data['requestPayment'] = DB::table('request_payments')
            ->where(['request_payments.id' => $id])
            ->leftJoin('users as sender', 'sender.id', '=', 'request_payments.user_id')
            ->leftJoin('users as receiver', 'receiver.id', '=', 'request_payments.receiver_id')
            ->leftJoin('currencies', 'currencies.id', '=', 'request_payments.currency_id')
            ->select('request_payments.*', 'sender.first_name as sender_first_name', 'sender.last_name as sender_last_name', 'receiver.first_name as receiver_first_name', 'receiver.last_name as receiver_last_name', 'currencies.code', 'currencies.symbol')
            ->first();
        return view('user_dashboard.requestPayment.detail', $data);
    }

    public function edit($id)
    {
        // dd('edit');
        $data['menu']           = 'request_payment';
        $data['content_title']  = 'Request Payment';
        $data['icon']           = 'money';
        $data['requestPayment'] = $requestPayment = RequestPayment::find($id);
        // dd($requestPayment);

        $data['currencies'] = Currency::where(['status' => 'Active'])->get();
        return view('user_dashboard.requestPayment.edit', $data);
    }

    public function update(Request $request)
    {
        $rules = array(
            'amount'  => 'required',
            // 'invoice_no' => 'required',
            'email'   => 'required|email',
            'purpose' => 'required',
            'note'    => 'required',
        );
        $fieldNames = array(
            'amount'  => 'Amount',
            // 'invoice_no' => 'Invoice No',
            'email'   => 'Email',
            'purpose' => 'Purpose',
            'note'    => 'Note',
        );

        $validator = Validator::make($request->all(), $rules);
        $validator->setAttributeNames($fieldNames);

        if ($validator->fails())
        {
            return back()->withErrors($validator)->withInput();
        }
        else
        {
            $RequestPayment             = RequestPayment::find($request->id);
            $RequestPayment->amount     = $request->amount;
            $RequestPayment->invoice_no = $request->invoice_no;
            $RequestPayment->purpose    = $request->purpose;
            $RequestPayment->note       = $request->note;
            $RequestPayment->save();

            //Custom name from email
            $email_explode                     = explode("@", trim($RequestPayment->email));
            $unregisteredacceptorNameFromEmail = $email_explode[0];
            //

            // Mail when request Updated
            $en_req_edit_temp = EmailTemplate::where(['temp_id' => 4, 'lang' => 'en', 'type' => 'email'])->select('subject', 'body')->first();

            $req_edit_temp = EmailTemplate::where([
                'temp_id'     => 4,
                'language_id' => Session::get('default_language'),
                'type'        => 'email',
            ])->select('subject', 'body')->first();

            if (!empty($req_edit_temp->subject) && !empty($req_edit_temp->body))
            {
                $req_edit_sub = $req_edit_temp->subject;
                $req_edit_msg = str_replace('{acceptor}', isset($RequestPayment->receiver) ? $RequestPayment->receiver->first_name . ' ' . $RequestPayment->receiver->last_name : $unregisteredacceptorNameFromEmail, $req_edit_temp->body);
            }
            else
            {
                $req_edit_sub = $en_req_edit_temp->subject;
                $req_edit_msg = str_replace('{acceptor}', isset($RequestPayment->receiver) ? $RequestPayment->receiver->first_name . ' ' . $RequestPayment->receiver->last_name : $unregisteredacceptorNameFromEmail, $en_req_edit_temp->body);
            }
            $req_edit_msg = str_replace('{symbol}', $RequestPayment->currency->symbol, $req_edit_msg);
            $req_edit_msg = str_replace('{amount}', moneyFormat($RequestPayment->currency->symbol, formatNumber($RequestPayment->amount)), $req_edit_msg);
            $req_edit_msg = str_replace('{uuid}', $RequestPayment->uuid, $req_edit_msg);
            $req_edit_msg = str_replace('{created_at}', date('Y-m-d'), $req_edit_msg);
            $req_edit_msg = str_replace('{purpose}', $RequestPayment->purpose, $req_edit_msg);
            $req_edit_msg = str_replace('{note}', $RequestPayment->note, $req_edit_msg);
            $req_edit_msg = str_replace('{soft_name}', Session::get('name'), $req_edit_msg);

            if (checkAppMailEnvironment())
            {
                $this->email->sendEmail($RequestPayment->email, $req_edit_sub, $req_edit_msg);
            }

            /**
             * SMS
             */
            $enRpSmsTempInfo = EmailTemplate::where(['temp_id' => 4, 'lang' => 'en', 'type' => 'sms'])->select('subject', 'body')->first();

            $reqSmsTempInfo = EmailTemplate::where(['temp_id' => 4, 'language_id' => Session::get('default_language'), 'type' => 'sms'])->select('subject', 'body')->first();

            if (!empty($reqSmsTempInfo->subject) && !empty($reqSmsTempInfo->body))
            {
                $reqSmsTempInfo_sub = $reqSmsTempInfo->subject;
                $reqSmsTempInfo_msg = str_replace('{acceptor}', isset($RequestPayment->receiver) ? $RequestPayment->receiver->first_name . ' ' . $RequestPayment->receiver->last_name : $unregisteredacceptorNameFromEmail, $reqSmsTempInfo->body);
            }
            else
            {
                $reqSmsTempInfo_sub = $enRpSmsTempInfo->subject;
                $reqSmsTempInfo_msg = str_replace('{acceptor}', isset($RequestPayment->receiver) ? $RequestPayment->receiver->first_name . ' ' . $RequestPayment->receiver->last_name : $unregisteredacceptorNameFromEmail, $enRpSmsTempInfo->body);
            }
            $reqSmsTempInfo_msg = str_replace('{amount}', moneyFormat($RequestPayment->currency->symbol, formatNumber($RequestPayment->amount)), $reqSmsTempInfo_msg);
            $reqSmsTempInfo_msg = str_replace('{creator}', $RequestPayment->user->first_name . ' ' . $RequestPayment->user->last_name, $reqSmsTempInfo_msg);

            if (!empty($RequestPayment->receiver->carrierCode) && !empty($RequestPayment->receiver->phone))
            {
                if (checkAppSmsEnvironment())
                {
                    if (getNexmoDetails()->is_nexmo_default == 'Yes' && getNexmoDetails()->nexmo_status == 'Active')
                    {
                        sendSMS(getNexmoDetails()->default_nexmo_phone_number, $RequestPayment->receiver->carrierCode . $RequestPayment->receiver->phone, $reqSmsTempInfo_msg);
                    }
                }
            }
            $this->helper->one_time_message('success', __('Request Payment Updated Successfully!'));
            return redirect('request_payments');
        }
    }

    public function requestAccept($id)
    {
        //set the session for validating the action
        setActionSession();

        $data['menu']           = 'request_payment';
        $data['content_title']  = 'Request Payment';
        $data['icon']           = 'money';
        $data['requestPayment'] = $requestPayment = RequestPayment::find($id);

        $data['transfer_fee'] = $transfer_fee = FeesLimit::where(['transaction_type_id' => Request_To, 'currency_id' => $requestPayment->currency_id])->first();

        // $wallet = auth()->user()->wallets()->where('currency_id', $requestPayment->currency_id)->get();
        // if ($wallet->isEmpty())
        // {
        //     $this->helper->one_time_message('error', __('You do not have the requested currency !'));
        // }

        return view('user_dashboard.requestPayment.accept', $data);
    }

    public function feeRequestPayment(Request $request)
    {
        $fees = Fee::where(['transaction_type' => $request->type])->first();

        $data['status'] = 0;
        if (!empty($fees))
        {
            $data['status'] = 1;
            $data['fees']   = $fees;
        }
        return json_encode($data);
    }

    public function requestPaymentEmailValidate(Request $request)
    {
        if ($request->email == Auth::user()->email)
        {
            $data['status'] = 1;
            $data['fail']   = __("You Cannot Request Money To Yourself!");
        }
        else
        {
            $data['status']  = 0;
            $data['success'] = "Email Available!";
        }
        return json_encode($data);
    }

    public function requestAccepted(Request $request)
    {
        if ($_POST)
        {
            $wallet = auth()->user()->wallets()->where('currency_id', $request->currency_id)->get();

            if ($wallet->isEmpty())
            {
                $this->helper->one_time_message('error', __('You do not have the requested currency !'));
                return redirect()->back();
            }
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
                $data['requestPayment'] = RequestPayment::find($request->id);
                $data['transfer_fee']   = FeesLimit::where(['transaction_type_id' => Request_To, 'currency_id' => $request->currency_id])->first();
                $amount                 = $request->amount;
                $currency_id            = $request->currency_id;
                $user_id                = Auth::user()->id;
                $wallets                = Wallet::where(['currency_id' => $currency_id, 'user_id' => $user_id])->first();
                $feesDetails            = FeesLimit::where(['transaction_type_id' => Request_To, 'currency_id' => $currency_id])->first();
                $currency               = Currency::where(['id' => $currency_id])->first();
                $request['currSymbol']  = $currency->symbol;
                $request['totalAmount'] = $request['amount'] + $request['fee'];
                session(['transInfo' => $request->all()]);
                $data['transInfo'] = $request->all();

                //User Wallet Balance Check starts here
                if ((@$wallets->balance) < (@$request->amount + ($request->amount * $feesDetails->charge_percentage / 100) + $feesDetails->charge_fixed))
                {
                    $data['error'] = __("You don't have sufficient balance!");
                    return view('user_dashboard.requestPayment.accept', $data);
                }
                //User Wallet Balance Check ends here

                //Code for Amount Limit starts here
                if (@$feesDetails->max_limit == null)
                {
                    if ((@$amount < @$feesDetails->min_limit))
                    {
                        $data['error'] = __('Minimum amount ') . $feesDetails->min_limit;
                        return view('user_dashboard.requestPayment.accept', $data);
                    }
                }
                else
                {
                    if ((@$amount < @$feesDetails->min_limit) || (@$amount > @$feesDetails->max_limit))
                    {
                        $data['error'] = __('Minimum amount ') . $feesDetails->min_limit . __(' and Maximum amount ') . $feesDetails->max_limit;
                        return view('user_dashboard.requestPayment.accept', $data);
                    }
                }
                //Code for Amount Limit ends here
            }
            return view('user_dashboard.requestPayment.acceptconfirmation', $data);
        }
    }

    public function requestAcceptedConfirm()
    {
        actionSessionCheck();

        $uid                           = Auth::user()->id;
        $sessionValue                  = session('transInfo');
        $userInfo                      = User::where(['email' => $sessionValue['email']])->first();
        $receiverName                  = isset($userInfo) ? $userInfo->first_name . ' ' . $userInfo->last_name : '';
        $RequestPayment                = RequestPayment::find($sessionValue['id']);
        $RequestPayment->accept_amount = $sessionValue['amount'];
        $RequestPayment->status        = "Success";
        $RequestPayment->save();

        //Update Request Creator Wallet
        $RequestSenderWallet = Wallet::where(['user_id' => $RequestPayment->user_id, 'currency_id' => $sessionValue['currency_id']])->first();
        if (!empty($RequestSenderWallet))
        {
            $RequestSenderWallet->balance = ($RequestSenderWallet->balance + $sessionValue['amount']);
            $RequestSenderWallet->save();
        }
        else
        {
            $creatorWallet              = new Wallet();
            $creatorWallet->balance     = $sessionValue['amount'];
            $creatorWallet->user_id     = $RequestPayment->user_id;
            $creatorWallet->currency_id = $sessionValue['currency_id'];
            $creatorWallet->is_default  = 'No';
            $creatorWallet->save();
        }

        //Update Request Acceptor Wallet
        $RequestAcceptorWallet          = Wallet::where(['user_id' => $uid, 'currency_id' => $sessionValue['currency_id']])->first();
        $RequestAcceptorWallet->balance = ($RequestAcceptorWallet->balance - ($sessionValue['amount'] + $sessionValue['fee']));
        $RequestAcceptorWallet->save();

        //Update Request Creator Transaction Information
        $FeesLimit                        = FeesLimit::where(['currency_id' => $sessionValue['currency_id'], 'transaction_type_id' => Request_To])->first();
        $transaction_C                    = Transaction::where(['user_id' => $RequestPayment->user_id, 'currency_id' => $sessionValue['currency_id'], 'transaction_reference_id' => $RequestPayment->id, 'transaction_type_id' => Request_From])->first();
        $transaction_C->percentage        = 0;
        $transaction_C->charge_percentage = 0;
        $transaction_C->charge_fixed      = 0;
        $transaction_C->subtotal          = $sessionValue['amount'];
        $t_total                          = $transaction_C->subtotal;
        $transaction_C->total             = $t_total;
        $transaction_C->status            = 'Success';
        $transaction_C->save();

        //Update Request Acceptor Transaction Information
        $transaction_A = Transaction::where(['user_id' => $RequestPayment->receiver_id, 'currency_id' => $sessionValue['currency_id'], 'transaction_reference_id' => $RequestPayment->id, 'transaction_type_id' => Request_To])->first();

        $transaction_A->percentage        = @$FeesLimit->charge_percentage ? @$FeesLimit->charge_percentage : 0;
        $transaction_A->charge_percentage = $sessionValue['percentage_fee'];
        $transaction_A->charge_fixed      = $sessionValue['fixed_fee'];
        $transaction_A->subtotal          = $sessionValue['amount'];
        $t_total                          = $transaction_A->subtotal + ($transaction_A->charge_percentage + $transaction_A->charge_fixed);
        $transaction_A->total             = '-' . $t_total;
        $transaction_A->status            = 'Success';
        $transaction_A->save();

        /**
         * Mail when request accepted
         */
        //if other language's subject and body not set, get en sub and body for mail
        $englishSenderLanginfo = EmailTemplate::where(['temp_id' => 5, 'lang' => 'en', 'type' => 'email'])->select('subject', 'body')->first();

        $rp_accept_temp = EmailTemplate::where([
            'temp_id'     => 5,
            'language_id' => Session::get('default_language'),
            'type'        => 'email',
        ])->select('subject', 'body')->first();

        if (!empty($rp_accept_temp->subject) && !empty($rp_accept_temp->body))
        {
            $rp_acc_sub = $rp_accept_temp->subject;
            $rp_msg     = str_replace('{creator}', $RequestPayment->user->first_name . ' ' . $RequestPayment->user->last_name, $rp_accept_temp->body);
        }
        else
        {
            $rp_acc_sub = $englishSenderLanginfo->subject;
            $rp_msg     = str_replace('{creator}', $RequestPayment->user->first_name . ' ' . $RequestPayment->user->last_name, $englishSenderLanginfo->body);
        }
        $rp_msg = str_replace('{uuid}', $RequestPayment->uuid, $rp_msg);
        $rp_msg = str_replace('{acceptor}', $RequestPayment->receiver->first_name . ' ' . $RequestPayment->receiver->last_name, $rp_msg);
        $rp_msg = str_replace('{created_at}', Carbon::now()->toDateString(), $rp_msg);
        $rp_msg = str_replace('{amount}', moneyFormat($RequestPayment->currency->symbol, formatNumber($RequestPayment->amount)), $rp_msg);
        $rp_msg = str_replace('{accept_amount}', moneyFormat($RequestPayment->currency->symbol, formatNumber($RequestPayment->accept_amount)), $rp_msg);
        $rp_msg = str_replace('{currency}', $RequestPayment->currency->code, $rp_msg);
        $rp_msg = str_replace('{soft_name}', Session::get('name'), $rp_msg);

        if (checkAppMailEnvironment())
        {
            $this->email->sendEmail($RequestPayment->user->email, $rp_acc_sub, $rp_msg);
        }

        /**
         * SMS to $RequestPayment->user
         */
        $enRpAcceptSmsTempInfo = EmailTemplate::where(['temp_id' => 5, 'lang' => 'en', 'type' => 'sms'])->select('subject', 'body')->first();

        $reqPaymentAcceptSmsTempInfo = EmailTemplate::where(['temp_id' => 5, 'language_id' => Session::get('default_language'), 'type' => 'sms'])->select('subject', 'body')->first();

        if (!empty($reqPaymentAcceptSmsTempInfo->subject) && !empty($reqPaymentAcceptSmsTempInfo->body))
        {
            $reqPaymentAcceptSmsTempInfo_sub = $reqPaymentAcceptSmsTempInfo->subject;
            $reqPaymentAcceptSmsTempInfo_msg = str_replace('{creator}', $RequestPayment->user->first_name . ' ' . $RequestPayment->user->last_name, $reqPaymentAcceptSmsTempInfo->body);
        }
        else
        {
            $reqPaymentAcceptSmsTempInfo_sub = $enRpAcceptSmsTempInfo->subject;
            $reqPaymentAcceptSmsTempInfo_msg = str_replace('{creator}', $RequestPayment->user->first_name . ' ' . $RequestPayment->user->last_name, $enRpAcceptSmsTempInfo->body);
        }
        $reqPaymentAcceptSmsTempInfo_msg = str_replace('{uuid}', $RequestPayment->uuid, $reqPaymentAcceptSmsTempInfo_msg);
        $reqPaymentAcceptSmsTempInfo_msg = str_replace('{amount}', moneyFormat($RequestPayment->currency->symbol, formatNumber($RequestPayment->amount)), $reqPaymentAcceptSmsTempInfo_msg);
        $reqPaymentAcceptSmsTempInfo_msg = str_replace('{acceptor}', $RequestPayment->receiver->first_name . ' ' . $RequestPayment->receiver->last_name, $reqPaymentAcceptSmsTempInfo_msg);

        if (!empty($RequestPayment->user->carrierCode) && !empty($RequestPayment->user->phone))
        {
            if (checkAppSmsEnvironment())
            {
                if (getNexmoDetails()->is_nexmo_default == 'Yes' && getNexmoDetails()->nexmo_status == 'Active')
                {
                    sendSMS(getNexmoDetails()->default_nexmo_phone_number, $RequestPayment->user->carrierCode . $RequestPayment->user->phone, $reqPaymentAcceptSmsTempInfo_msg);
                }
            }
        }
        //
        $data['transInfo']             = $sessionValue;
        $data['requestCreator']        = $requestCreator        = $RequestPayment->user;
        $data['transInfo']['trans_id'] = $transaction_C->id;

        clearActionSession();
        return view('user_dashboard.requestPayment.acceptsuccess', $data);
    }

    public function Prev_requestAccepted(Request $request)
    {

        $uid   = Auth::user()->id;
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
            $RequestPayment                = RequestPayment::find($request->id);
            $RequestPayment->accept_amount = $request->amount;
            $RequestPayment->status        = "Success";
            $RequestPayment->save();

            // Request_From
            $RequestSenderWallet          = Wallet::where(['user_id' => $RequestPayment->user_id, 'currency_id' => $request->currency_id])->first();
            $RequestSenderWallet->balance = ($RequestSenderWallet->balance + $request->amount);
            $RequestSenderWallet->save();

            // $transaction_B                           = new Transaction();
            // $transaction_B->user_id                  = $RequestPayment->user_id;
            // $transaction_B->end_user_id              = Auth::user()->id;
            // $transaction_B->currency_id              = $request->currency_id;
            // $transaction_B->uuid                     = $RequestPayment->uuid;
            // $transaction_B->transaction_reference_id = $RequestPayment->id;
            // $transaction_B->type                     = 'Request_From';
            // $transaction_B->subtotal                 = $request->amount;
            // $transaction_B->charge_percentage        = 0;
            // $transaction_B->charge_fixed             = 0;
            // $transaction_B->total                    = $request->amount;
            // $transaction_B->status                   = 'Success';
            // $transaction_B->save();

            // Request_To
            $RequestAcceptorWallet          = Wallet::where(['user_id' => $uid, 'currency_id' => $request->currency_id])->first();
            $RequestAcceptorWallet->balance = ($RequestAcceptorWallet->balance - ($request->amount + $request->fee));
            $RequestAcceptorWallet->save();

            // $trNo                                    = unique_code();
            $transaction_A                           = new Transaction();
            $transaction_A->user_id                  = $uid;
            $transaction_A->end_user_id              = $RequestPayment->user_id;
            $transaction_A->currency_id              = $request->currency_id;
            $transaction_A->uuid                     = $RequestPayment->uuid;
            $transaction_A->transaction_reference_id = $RequestPayment->id;
            $transaction_A->transaction_type_id      = Request_To;
            $transaction_A->subtotal                 = ($request->amount - ($request->percentage_fee + $request->fixed_fee));
            $transaction_A->charge_percentage        = $request->percentage_fee;
            $transaction_A->charge_fixed             = $request->fixed_fee;

            $t_total               = $transaction_A->subtotal + ($transaction_A->charge_percentage + $transaction_A->charge_fixed);
            $transaction_A->total  = '-' . $t_total;
            $transaction_A->status = 'Success';
            $transaction_A->save();

            // Mail when request accepted
            $rp_accept_temp = EmailTemplate::where([
                'temp_id'     => 5,
                'language_id' => Session::get('default_language'),
            ])->select('subject', 'body')->first();

            $rp_acc_sub = $rp_accept_temp->subject;

            $rp_msg = str_replace('{creator}', $RequestPayment->user->first_name . ' ' . $RequestPayment->user->last_name, $rp_accept_temp->body);
            $rp_msg = str_replace('{uuid}', $RequestPayment->uuid, $rp_msg);
            $rp_msg = str_replace('{acceptor}', $RequestPayment->receiver->first_name . ' ' . $RequestPayment->receiver->last_name, $rp_msg);
            $rp_msg = str_replace('{created_at}', date('Y-m-d'), $rp_msg);
            $rp_msg = str_replace('{symbol}', $RequestPayment->currency->symbol, $rp_msg);
            $rp_msg = str_replace('{amount}', $RequestPayment->amount, $rp_msg);
            $rp_msg = str_replace('{accept_amount}', $RequestPayment->accept_amount, $rp_msg);
            $rp_msg = str_replace('{currency}', $RequestPayment->currency->code, $rp_msg);
            $rp_msg = str_replace('{soft_name}', Session::get('name'), $rp_msg);

            if (checkAppMailEnvironment())
            {
                $this->email->sendEmail($RequestPayment->user->email, $rp_acc_sub, $rp_msg);
            }

            $this->helper->one_time_message('success', 'Request Payment Accepted Successfully!');
            return redirect('request_payments');
        }
    }

    public function completed()
    {
        $data['menu']          = 'request_payment';
        $data['content_title'] = 'Request Payment';
        $data['icon']          = 'money';

        $data['listComplets'] = DB::table('request_payments')
            ->where(['request_payments.user_id' => Auth::user()->id])
            ->whereIn('request_payments.status', ['Success', 'Blocked'])
            ->orWhere(function ($key)
        {
                $key->where(['request_payments.receiver_id' => Auth::user()->id])
                    ->whereIn('request_payments.status', ['Success', 'Blocked']);
            })
            ->leftJoin('users as sender', 'sender.id', '=', 'request_payments.user_id')
            ->leftJoin('users as receiver', 'receiver.id', '=', 'request_payments.receiver_id')
            ->leftJoin('currencies', 'currencies.id', '=', 'request_payments.currency_id')
            ->select('request_payments.*', 'sender.first_name as sender_first_name', 'sender.last_name as sender_last_name', 'receiver.first_name as receiver_first_name', 'receiver.last_name as receiver_last_name', 'currencies.code')
            ->orderBy('id', 'desc')
            ->paginate(10);
        return view('user_dashboard.requestPayment.completed', $data);
    }

    //Amount Limit Check
    public function amountLimitCheck(Request $request)
    {
        $amount      = $request->amount;
        $currency_id = $request->currency_id;
        $user_id     = Auth::user()->id;
        $user_id     = Auth::user()->id;
        $wallets     = Wallet::where(['currency_id' => $currency_id, 'user_id' => $user_id])->first();
        $feesDetails = FeesLimit::where(['transaction_type_id' => $request->transaction_type_id, 'currency_id' => $currency_id])->first();

        $checkingRequestedCurrency = auth()->user()->wallets()->where('currency_id', $request->currency_id)->get();

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
            $feesPercentage            = 0;
            $feesFixed                 = 0;
            $totalFess                 = $feesPercentage + $feesFixed;
            $totalAmount               = $amount + $totalFess;
            $success['feesPercentage'] = $feesPercentage;
            $success['feesFixed']      = $feesFixed;
            $success['totalFees']      = formatNumber($totalFess);
            $success['totalAmount']    = $totalAmount;
            $success['pFees']          = $feesPercentage;
            $success['fFees']          = $feesFixed;
            $success['min']            = 0;
            $success['max']            = 0;
            $success['balance']        = 0;

            if ($checkingRequestedCurrency->isEmpty())
            {
                $success['checkingRequestedCurrency'] = 404;
            }
        }
        else
        {
            $feesPercentage            = $amount * ($feesDetails->charge_percentage / 100);
            $feesFixed                 = $feesDetails->charge_fixed;
            $totalFess                 = $feesPercentage + $feesFixed;
            $totalAmount               = $amount + $totalFess;
            $success['feesPercentage'] = $feesPercentage;
            $success['feesFixed']      = $feesFixed;
            $success['totalFees']      = $totalFess;
            $success['totalFeesHtml']  = formatNumber($totalFess);
            $success['totalAmount']    = $totalAmount;
            $success['pFees']          = $feesDetails->charge_percentage;
            $success['fFees']          = $feesDetails->charge_fixed;
            $success['min']            = $feesDetails->min_limit;
            $success['max']            = $feesDetails->max_limit;
            $success['balance']        = isset($wallets) ? $wallets->balance : 0.00;

            if ($checkingRequestedCurrency->isEmpty())
            {
                $success['checkingRequestedCurrency'] = 404;
            }
        }
        //Code for Fees Limit Ends here
        return response()->json(['success' => $success]);

    }

    /**
     * Generate pdf for print
     */
    public function printPdf($trans_id)
    {
        $data['companyInfo']        = Setting::where(['type' => 'general', 'name' => 'logo'])->first();
        $data['transactionDetails'] = Transaction::where(['id' => $trans_id])->first();
        $mpdf                       = new \Mpdf\Mpdf(['tempDir' => __DIR__ . '/tmp']);
        $mpdf                       = new \Mpdf\Mpdf([
            'mode'        => 'utf-8',
            'format'      => 'A3',
            'orientation' => 'P',
        ]);
        $mpdf->autoScriptToLang         = true;
        $mpdf->autoLangToFont           = true;
        $mpdf->allow_charset_conversion = false;
        $mpdf->SetJS('this.print();');
        $mpdf->WriteHTML(view('user_dashboard.requestPayment.requestPaymentPrintPdf', $data));
        $mpdf->Output('requestPayment_' . time() . '.pdf', 'I'); // this will output data
    }
}
