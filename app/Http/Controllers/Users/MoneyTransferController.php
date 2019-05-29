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
use App\Models\Setting;
use App\Models\Transaction;
use App\Models\Transfer;
use App\Models\User;
use App\Models\Wallet;
use Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Session;

class MoneyTransferController extends Controller
{
    protected $helper;
    protected $email;

    public function __construct()
    {
        $this->helper = new Common();
        $this->email  = new EmailController();
    }

    public function create(Request $request)
    {
        // dd(getNexmoDetails());

        //set the session for validating the action
        setActionSession();

        if (!$_POST)
        {
            $data['menu']    = 'send_receive';
            $data['submenu'] = 'send';

            $walletList = Wallet::where(['user_id' => Auth::user()->id])->get();

            /*Check Whether Currency is Activated in feesLimit*/
            $checkWhetherCurrencyIsActivated = FeesLimit::where(['transaction_type_id' => Transferred, 'has_transaction' => 'Yes'])->get(['currency_id', 'has_transaction']);
            $data['walletList']              = $selectedWallet              = $this->walletList($walletList, $checkWhetherCurrencyIsActivated);
            /**/

            $data['transInfo']['wallet'] = $walletList[0]['id'];

            return view('user_dashboard.moneytransfer.create', $data);
        }
        else if ($_POST)
        {
            $rules = array(
                'amount'   => 'required|numeric',
                'receiver' => 'required|email',
                'note'     => 'required',
            );
            $fieldNames = array(
                'amount'   => 'Amount',
                'receiver' => 'Receiver',
                'note'     => 'Note',
            );
            $validator = Validator::make($request->all(), $rules);
            $validator->setAttributeNames($fieldNames);

            if ($validator->fails())
            {
                return back()->withErrors($validator)->withInput();
            }
            else
            {
                $data['walletList']     = Wallet::where(['user_id' => Auth::user()->id])->get();
                $amount                 = $request->amount;
                $wallet_id              = $request->wallet;
                $user_id                = Auth::user()->id;
                $wallets                = Wallet::where(['id' => $wallet_id, 'user_id' => $user_id])->first();
                $currency_id            = $wallets->currency_id;
                $feesDetails            = FeesLimit::where(['transaction_type_id' => Transferred, 'currency_id' => $currency_id])->first();
                $currency               = Currency::where(['id' => $currency_id])->first();
                $request['currency_id'] = $currency_id;
                $request['currSymbol']  = $currency->symbol;
                $request['totalAmount'] = $request['amount'] + $request['fee'];
                session(['transInfo' => $request->all()]);
                $data['transInfo'] = $request->all();

                //Email check if its you then can send money yourself
                if ($request->has('receiver'))
                {
                    if ($request->receiver == Auth::user()->email)
                    {
                        $data['error'] = __('You Cannot Send Money To Yourself!');
                        return view('user_dashboard.moneytransfer.create', $data);
                    }
                }

                //User Wallet Balance Check starts here
                //$walletBalance = Wallet::where(['user_id' => Auth::user()->id, 'currency_id' => $currency_id])->first();
                //d($walletBalance,1);
                if ((@$wallets->balance) < (@$request->amount))
                {
                    $data['error'] = __("You don't have sufficient balance!");
                    return view('user_dashboard.moneytransfer.create', $data);
                }
                //User Wallet Balance Check ends here

                //Code for Amount Limit starts here
                if (@$feesDetails->max_limit == null)
                {
                    if ((@$amount < @$feesDetails->min_limit))
                    {
                        $data['error'] = __('Minimum amount ') . $feesDetails->min_limit;
                        return view('user_dashboard.moneytransfer.create', $data);
                    }
                }
                else
                {
                    if ((@$amount < @$feesDetails->min_limit) || (@$amount > @$feesDetails->max_limit))
                    {
                        $data['error'] = __('Minimum amount ') . $feesDetails->min_limit . __(' and Maximum amount ') . $feesDetails->max_limit;
                        return view('user_dashboard.moneytransfer.create', $data);
                    }
                }
                //Code for Amount Limit ends here
            }
            return view('user_dashboard.moneytransfer.confirmation', $data);
        }
    }

    public function walletList($activeWallet, $feesLimitWallet)
    {
        $selectedWallet = [];
        $i              = 0;
        foreach ($activeWallet as $aWallet)
        {
            // dd($aWallet);
            foreach ($feesLimitWallet as $flWallet)
            {
                // dd($flWallet);
                if ($aWallet->currency_id == $flWallet->currency_id && $flWallet->has_transaction == 'Yes')
                {
                    $selectedWallet[$i]['id']            = $aWallet->id;
                    $selectedWallet[$i]['currency_id']   = $aWallet->currency_id;
                    $selectedWallet[$i]['currency_code'] = $aWallet->currency->code;
                    $i++;
                }
            }
        }
        return $selectedWallet;
    }

    public function sendMoneyConfirm(Request $request)
    {
        //initializing session
        actionSessionCheck();

        $sessionValue = Session::get('transInfo');
        $feesDetails  = FeesLimit::where(['transaction_type_id' => Transferred, 'currency_id' => $sessionValue['currency_id']])->first();

        $transfer                = new Transfer();
        $transfer->sender_id     = Auth::user()->id;
        $userInfo                = User::where(['email' => trim($sessionValue['receiver'])])->first();
        $transfer->receiver_id   = isset($userInfo) ? $userInfo->id : null;
        $receiverName            = isset($userInfo) ? $userInfo->first_name . ' ' . $userInfo->last_name : '';
        $request_wallet_currency = Wallet::find($sessionValue['wallet'])->currency->id;
        $transfer->currency_id   = $request_wallet_currency;
        $unique_code             = unique_code();
        $transfer->uuid          = $unique_code;
        $transfer->fee           = $sessionValue['fee'];
        $transfer->amount        = $sessionValue['amount'];
        $transfer->note          = $sessionValue['note'];
        $transfer->email         = $sessionValue['receiver'];

        if (isset($transfer->receiver_id))
        {
            $transfer->status = 'Success';
        }
        else
        {
            $transfer->status = 'Pending';
        }
        $transfer->save();

        if (!empty($transfer->receiver_id) && isset($userInfo))
        {
            $receiver_wallet = Wallet::where([
                'user_id'     => $userInfo->id,
                'currency_id' => $request_wallet_currency,
            ])->first();

            if (empty($receiver_wallet))
            {
                $wallet              = new Wallet();
                $wallet->user_id     = isset($userInfo) ? $userInfo->id : null;
                $wallet->currency_id = $request_wallet_currency;
                $wallet->balance     = $sessionValue['amount'];
                $wallet->save();
            }
            else
            {
                $wallet              = Wallet::find($receiver_wallet->id);
                $wallet->currency_id = $request_wallet_currency;
                $wallet->balance     = ($receiver_wallet->balance + $sessionValue['amount']);
                $wallet->save();
            }
        }

        $sender_wallet = Wallet::where([
            'id'          => $sessionValue['wallet'],
            'user_id'     => Auth::user()->id,
            'currency_id' => $request_wallet_currency,
        ])->select('balance')->first();

        $total_with_fee         = $sessionValue['amount'] + $sessionValue['fee'];
        $sender_current_balance = $sender_wallet->balance - $total_with_fee;

        $sender_updated_wallet_balance = Wallet::where([
            'id'          => $sessionValue['wallet'],
            'user_id'     => Auth::user()->id,
            'currency_id' => $request_wallet_currency,
        ])->update([
            'balance' => decimalFormat($sender_current_balance),
        ]);

        //Sender Transaction save starts here
        $sender_t                           = new Transaction();
        $sender_t->currency_id              = $request_wallet_currency;
        $sender_t->user_id                  = Auth::user()->id;
        $sender_t->end_user_id              = isset($userInfo) ? $userInfo->id : null;
        $sender_t->uuid                     = $unique_code;
        $sender_t->transaction_reference_id = $transfer->id;
        $sender_t->transaction_type_id      = Transferred;
        $sender_t->user_type                = isset($userInfo) ? 'registered' : 'unregistered';
        $sender_t->email                    = $sessionValue['receiver'];
        $sender_t->subtotal                 = $sessionValue['amount'];
        $sender_t->percentage               = @$feesDetails->charge_percentage ? @$feesDetails->charge_percentage : 0;
        $sender_t->charge_percentage        = @$feesDetails->charge_percentage ? ($sessionValue['amount']) * (@$feesDetails->charge_percentage / 100) : 0;
        $sender_t->charge_fixed             = @$feesDetails->charge_fixed ? @$feesDetails->charge_fixed : 0;
        $sender_t->total                    = '-' . ($total_with_fee);
        $sender_t->note                     = $sessionValue['note'];
        $sender_t->status                   = $transfer->status;
        $sender_t->save();
        //Sender Transaction save ends here

        //Receiver Transactions Save starts here
        $receiver_t                           = new Transaction();
        $receiver_t->currency_id              = $request_wallet_currency;
        $receiver_t->user_id                  = isset($userInfo) ? $userInfo->id : null;
        $receiver_t->end_user_id              = Auth::user()->id;
        $receiver_t->uuid                     = $unique_code;
        $receiver_t->transaction_reference_id = $transfer->id;
        $receiver_t->transaction_type_id      = Received;
        $receiver_t->user_type                = isset($userInfo) ? 'registered' : 'unregistered';
        $receiver_t->email                    = $sessionValue['receiver'];
        $receiver_t->subtotal                 = $sessionValue['amount'];
        $receiver_t->percentage               = 0;
        $receiver_t->charge_percentage        = 0;
        $receiver_t->charge_fixed             = 0;
        $receiver_t->total                    = $sessionValue['amount'];
        $receiver_t->note                     = $sessionValue['note'];
        $receiver_t->status                   = $transfer->status;
        $receiver_t->save();
        //Receiver Transaction Save ends here

        /**
         * Mail for sender
         */

            //if other language's subject and body not set, get en sub and body for mail
            $englishSenderLanginfo = EmailTemplate::where(['temp_id' => 1, 'lang' => 'en', 'type' => 'email'])->select('subject', 'body')->first();

            $sender_info = EmailTemplate::where(['temp_id' => 1, 'language_id' => Session::get('default_language'),'type' => 'email'])->select('subject', 'body')->first();
            if (!empty($sender_info->subject) && !empty($sender_info->body))
            {
                $sender_subject = $sender_info->subject;
                $sender_msg     = str_replace('{sender_id}', $transfer->sender->first_name . ' ' . $transfer->sender->last_name, $sender_info->body);
            }
            else
            {
                $sender_subject = $englishSenderLanginfo->subject;
                $sender_msg     = str_replace('{sender_id}', $transfer->sender->first_name . ' ' . $transfer->sender->last_name, $englishSenderLanginfo->body);
            }
            $sender_msg = str_replace('{amount}', moneyFormat($transfer->currency->symbol, formatNumber($sessionValue['amount'])), $sender_msg);

            $sender_msg = str_replace('{uuid}', $unique_code, $sender_msg);
            $sender_msg = str_replace('{receiver_id}', isset($userInfo) ? $userInfo->first_name . ' ' . $userInfo->last_name : $sessionValue['receiver'], $sender_msg);
            $sender_msg = str_replace('{fee}', moneyFormat($transfer->currency->symbol, formatNumber($sessionValue['percentage_fee'] + $sessionValue['fixed_fee'])), $sender_msg);
            $sender_msg = str_replace('{created_at}', Carbon::now()->toDateString(), $sender_msg);
            $sender_msg = str_replace('{soft_name}', Session::get('name'), $sender_msg);

            if (checkAppMailEnvironment())
            {
                $this->email->sendEmail($transfer->sender->email, $sender_subject, $sender_msg);
            }

        /**
         * SMS for sender
         */

            //if other language's subject and body not set, get en sub and body for mail
            $englishSenderLangSMSinfo = EmailTemplate::where(['temp_id' => 1, 'lang' => 'en', 'type' => 'sms'])->select('subject', 'body')->first();
            // dd($englishSenderLangSMSinfo);

            $senderSmsInfo = EmailTemplate::where(['temp_id' => 1, 'language_id' => Session::get('default_language'), 'type' => 'sms'])->select('subject', 'body')->first();
            if (!empty($senderSmsInfo->subject) && !empty($senderSmsInfo->body))
            {
                $sender_subject = $senderSmsInfo->subject;
                $sender_msg     = str_replace('{sender_id}', $transfer->sender->first_name . ' ' . $transfer->sender->last_name, $senderSmsInfo->body);
            }
            else
            {
                $sender_subject = $englishSenderLangSMSinfo->subject;
                $sender_msg     = str_replace('{sender_id}', $transfer->sender->first_name . ' ' . $transfer->sender->last_name, $englishSenderLangSMSinfo->body);
            }
            $sender_msg = str_replace('{amount}', moneyFormat($transfer->currency->symbol, formatNumber($sessionValue['amount'])), $sender_msg);
            $sender_msg = str_replace('{soft_name}', Session::get('name'), $sender_msg);

            if (!empty($transfer->sender->carrierCode) && !empty($transfer->sender->phone))
            {
                if (checkAppSmsEnvironment())
                {
                    if (getNexmoDetails()->is_nexmo_default == 'Yes' && getNexmoDetails()->nexmo_status == 'Active')
                    {
                        sendSMS(getNexmoDetails()->default_nexmo_phone_number, $transfer->sender->carrierCode.$transfer->sender->phone, $sender_msg);
                    }
                }
            }

        /**
         * Mail for receiver
         */

            //if other language's subject and body not set, get en sub and body for mail
            $englishLangReceiverinfo = EmailTemplate::where(['temp_id' => 2, 'lang' => 'en'])->select('subject', 'body')->first();
            $receiver_info           = EmailTemplate::where([
                'temp_id'     => 2,
                'language_id' => Session::get('default_language'),
            ])->select('subject', 'body')->first();

            if (isset($userInfo))
            {
                if (!empty($receiver_info->subject) && !empty($receiver_info->body))
                {
                    $receiver_subject = $receiver_info->subject;
                    $receiver_msg     = str_replace('{receiver_id}', $transfer->receiver->first_name . ' ' . $transfer->receiver->last_name, $receiver_info->body); //
                }
                else
                {
                    $receiver_subject = $englishLangReceiverinfo->subject;
                    $receiver_msg     = str_replace('{receiver_id}', $transfer->receiver->first_name . ' ' . $transfer->receiver->last_name, $englishLangReceiverinfo->body); //
                }
                $receiver_msg = str_replace('{amount}', moneyFormat($transfer->currency->symbol, formatNumber($sessionValue['amount'])), $receiver_msg);
                $receiver_msg = str_replace('{sender_id}', $transfer->sender->first_name . ' ' . $transfer->sender->last_name, $receiver_msg);
                $receiver_msg = str_replace('{uuid}', $unique_code, $receiver_msg);
                $receiver_msg = str_replace('{created_at}', date('Y-m-d'), $receiver_msg);
                $receiver_msg = str_replace('{soft_name}', Session::get('name'), $receiver_msg);

                if (checkAppMailEnvironment())
                {
                    $this->email->sendEmail($transfer->receiver->email, $receiver_subject, $receiver_msg);
                }
            }
            else
            {
                $email_explode                 = explode("@", trim($sessionValue['receiver']));
                $unregisteredUserNameFromEmail = $email_explode[0];

                $profileName = Session::get('name');
                $subject     = 'Notice of Transfer!';
                $message     = 'Hi ' . $unregisteredUserNameFromEmail . ',<br><br>';
                $message .= 'You have got ' . moneyFormat($transfer->currency->symbol, formatNumber($sessionValue['amount'])) . ' money transfer from ' . Auth::user()->email . '.<br>';
                $message .= 'To receive, please register on : ' . url('/register') . ' with current email.<br><br>';
                $message .= 'Regards,<br>';
                $message .= $profileName;

                if (checkAppMailEnvironment())
                {
                    $this->email->sendEmail($sessionValue['receiver'], $subject, $message);
                }
            }

        /**
         * SMS for receiver
         */

            //if other language's subject and body not set, get en sub and body for mail
            $englishLangReceiverSmsInfo = EmailTemplate::where(['temp_id' => 2, 'lang' => 'en', 'type' => 'sms'])->select('subject', 'body')->first();
            $receiverSmsInfo            = EmailTemplate::where([
                'temp_id'     => 2,
                'language_id' => Session::get('default_language'),
                'type'        => 'sms',
            ])->select('subject', 'body')->first();

            if (isset($userInfo))
            {
                if (!empty($receiverSmsInfo->subject) && !empty($receiverSmsInfo->body))
                {
                    $receiver_subject = $receiverSmsInfo->subject;
                    $receiver_msg     = str_replace('{receiver_id}', $transfer->receiver->first_name . ' ' . $transfer->receiver->last_name, $receiverSmsInfo->body); //
                }
                else
                {
                    $receiver_subject = $englishLangReceiverSmsInfo->subject;
                    $receiver_msg     = str_replace('{receiver_id}', $transfer->receiver->first_name . ' ' . $transfer->receiver->last_name, $englishLangReceiverSmsInfo->body); //
                }
                $receiver_msg = str_replace('{amount}', moneyFormat($transfer->currency->symbol, formatNumber($sessionValue['amount'])), $receiver_msg);
                $receiver_msg = str_replace('{sender_id}', $transfer->sender->first_name . ' ' . $transfer->sender->last_name, $receiver_msg);
                $receiver_msg = str_replace('{soft_name}', Session::get('name'), $receiver_msg);

                if (!empty($transfer->receiver->carrierCode) && !empty($transfer->receiver->phone))
                {
                    if (checkAppSmsEnvironment())
                    {
                        if (getNexmoDetails()->is_nexmo_default == 'Yes' && getNexmoDetails()->nexmo_status == 'Active')
                        {
                            sendSMS(getNexmoDetails()->default_nexmo_phone_number, $transfer->receiver->carrierCode.$transfer->receiver->phone, $receiver_msg);
                        }
                    }
                }

            }
            else
            {
                $email_explode                 = explode("@", trim($sessionValue['receiver']));
                $unregisteredUserNameFromEmail = $email_explode[0];

                $profileName = Session::get('name');
                $subject     = 'Notice of Transfer!';
                $message     = 'Hi ' . $unregisteredUserNameFromEmail . ',<br><br>';
                $message .= 'You have got ' . moneyFormat($transfer->currency->symbol, formatNumber($sessionValue['amount'])) . ' money transfer from ' . Auth::user()->email . '.<br>';
                $message .= 'To receive, please register on : ' . url('/register') . ' with current email.<br><br>';
                $message .= 'Regards,<br>';
                $message .= $profileName;

                if (checkAppMailEnvironment())
                {
                    $this->email->sendEmail($sessionValue['receiver'], $subject, $message);
                }
            }

        $data['menu']                  = 'send_receive';
        $data['submenu']               = 'send';
        $data['transInfo']             = $sessionValue;
        $data['transInfo']['trans_id'] = $sender_t->id;
        $data['userInfo']              = $userInfo;
        $data['receiverName']          = $receiverName;
        $data['content_title']         = 'Money Transfer';

        //clearing session
        clearActionSession();

        return view('user_dashboard.moneytransfer.success', $data);
    }

    public function transferEmailValidate(Request $request)
    {
        if ($request->receiver == Auth::user()->email)
        {
            $data['status']  = 0;
            $data['message'] = __("You Cannot Send Money To Yourself!");
        }
        else
        {
            $data['status']  = 1;
            $data['message'] = "";
        }
        return json_encode($data);
    }

    //Code for Amount Limit Check
    public function amountLimitCheck(Request $request)
    {
        $amount    = $request->amount;
        $wallet_id = $request->wallet_id;
        $user_id   = Auth::user()->id;

        $wallets = Wallet::where(['id' => $wallet_id, 'user_id' => $user_id])->first();

        $currency_id = $wallets->currency_id;
        $feesDetails = FeesLimit::where(['transaction_type_id' => $request->transaction_type_id, 'currency_id' => $currency_id])->first();
        //echo "dd";exit();
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
            $success['totalFees']      = ($totalFess);
            $success['totalFeesHtml']  = formatNumber($totalFess);
            $success['totalAmount']    = $totalAmount;
            $success['pFees']          = $feesPercentage;
            $success['fFees']          = $feesFixed;
            $success['min']            = 0;
            $success['max']            = 0;
            $success['balance']        = $wallets->balance;
            //$success['status']         = 200;
        }
        else
        {
            $feesPercentage            = $amount * ($feesDetails->charge_percentage / 100);
            $feesFixed                 = $feesDetails->charge_fixed;
            $totalFess                 = $feesPercentage + $feesFixed;
            $totalAmount               = $amount + $totalFess;
            $success['feesPercentage'] = $feesPercentage;
            $success['feesFixed']      = $feesFixed;

            $success['totalFees']     = ($totalFess);
            $success['totalFeesHtml'] = formatNumber($totalFess);

            $success['totalAmount'] = $totalAmount;
            $success['pFees']       = $feesDetails->charge_percentage;
            $success['fFees']       = $feesDetails->charge_fixed;
            $success['min']         = $feesDetails->min_limit;
            $success['max']         = $feesDetails->max_limit;
            $success['balance']     = $wallets->balance;
            //$success['status']         = 200;
        }

        //Code for Fees Limit Ends here
        return response()->json(['success' => $success]);
    }

    /**
     * Generate pdf for print
     */
    public function transferPrintPdf($trans_id)
    {
        $data['companyInfo'] = Setting::where(['type' => 'general', 'name' => 'logo'])->first();

        $data['transactionDetails'] = Transaction::where(['id' => $trans_id])->first();

        $mpdf = new \Mpdf\Mpdf(['tempDir' => __DIR__ . '/tmp']);
        $mpdf = new \Mpdf\Mpdf([
            'mode'                 => 'utf-8',
            'format'               => 'A3',
            'orientation'          => 'P',
            'shrink_tables_to_fit' => 0,
        ]);
        $mpdf->autoScriptToLang         = true;
        $mpdf->autoLangToFont           = true;
        $mpdf->allow_charset_conversion = false;
        $mpdf->SetJS('this.print();');
        $mpdf->WriteHTML(view('user_dashboard.moneytransfer.transferPaymentPdf', $data));
        $mpdf->Output('sendMoney_' . time() . '.pdf', 'I'); // this will output data
    }
}
