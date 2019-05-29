<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Users\EmailController;
use App\Http\Helpers\Common;
use App\Models\Transaction;
use App\Models\Wallet;
use App\Models\EmailTemplate;
use App\Models\User;
use App\Models\Currency;
use App\Models\RequestPayment;
use App\Models\Unknown;
use App\Models\FeesLimit;
use App\Models\TransactionType;
use App\Models\Setting;
use App\Models\Transfer;
use App\Models\CurrencyExchange;
use App\Models\PayoutSetting;
use App\Models\PaymentMethod;
use App\Models\Withdrawal;
use Illuminate\Http\Request;
use Auth;
use Validator;
use Input;
use Session;
use Carbon\Carbon;
use App;

class TransactionController extends Controller
{
    public $successStatus      = 200;
    public $unauthorisedStatus = 401;
    public $helper;
    public $email;
    public function __construct(){
        $this->helper = new Common();
        $this->email  = new EmailController();
    }
    public function index()
    {
        if(request('user_id')){
            $type              = 'all';
            $user_id           = request('user_id');
            $transaction       = new Transaction;
            $transactions      = $transaction->getTransactionLists($type,$user_id);
            $success['status'] = $this->successStatus;
            return response()->json(['success' => $success,'transactions' => $transactions],$this->successStatus);
        }else{
            echo "In else block";exit();return false;
        }
    }

    public function getTransactionDetails()
    {
        if(request('user_id')){
            $user_id           = request('user_id');
            $tr_id             = request('tr_id');
            $transaction       = new Transaction;
            $transactions      = $transaction->getTransactionDetails($tr_id,$user_id);
            $success['status'] = $this->successStatus;
            return response()->json(['success' => $success,'transactions' => $transactions],$this->successStatus);
        }else{
            echo "In else block";exit();return false;
        }
    }

    public function getAvailableBalance()
    {
        if(request('user_id')){
            $user_id           = request('user_id');
            $wallet            = new Wallet;
            $wallets           = $wallet->getAvailableBalance($user_id);
            $success['status'] = $this->successStatus;
            return response()->json(['success' => $success,'wallets' => $wallets],$this->successStatus);
        }else{
            echo "In else block";exit();return false;
        }
    }

    //Request Money starts here

    public function requestMoneyConfirm(){
        if(request('user_id')){
            $user_id           = request('user_id');
            $email             = request('email');
            $user              = User::where('id','=',$user_id)->first();
            $emailUser         = User::where('email','=',$email)->first();
            if(@$user->email==@$emailUser->email){
                $success['status']  = $this->unauthorisedStatus;
                $success['message'] = "You Can't Request Money To Yourself!";
                return response()->json(['success' => $success],$this->successStatus);
            }else{
                if(count($emailUser)>0){
                    $success['status']     = $this->successStatus;
                    //$success['currencies'] = Currency::where(['status' => 'Active'])->get();
                    return response()->json(['success' => $success],$this->successStatus);
                }else{
                    $success['status']     = $this->successStatus;
                    //$success['currencies'] = Currency::where(['status' => 'Active'])->get();
                    return response()->json(['success' => $success],$this->successStatus);
                }
            }        
        }else{
            echo "In else block";exit();return false;
        }
    }

    public function getCurrency(){
        $user_id                         = request('user_id');
        $success['status']               = $this->successStatus;
        $walletList                      = Wallet::where(['user_id' => $user_id])->get();     
        /*Check Whether Currency is Activated in feesLimit*/
        $checkWhetherCurrencyIsActivated = FeesLimit::where(['transaction_type_id' => Transferred, 'has_transaction' => 'Yes'])->get(['currency_id', 'has_transaction']);
        $success['currencies']           = $this->walletList($walletList, $checkWhetherCurrencyIsActivated);
        return response()->json(['success' => $success],$this->successStatus);
    }


    //Request Payment Currency List
    public function getRequestCurrency(){
        $success['status']               = $this->successStatus;
        $user_id                         = request('user_id');
        $walletList                      = Currency::where(['status' => 'Active'])->get();
        //$walletList                      = Wallet::where(['user_id' => $user_id])->get();     
        /*Check Whether Currency is Activated in feesLimit*/
        $checkWhetherCurrencyIsActivated = FeesLimit::where(['transaction_type_id' => Request_To, 'has_transaction' => 'Yes'])->get(['currency_id', 'has_transaction']);
        $success['currencies']           = $this->requestWalletList($walletList, $checkWhetherCurrencyIsActivated);
        
        return response()->json(['success' => $success],$this->successStatus);
    }
    
    public function requestMoneyPay()
    {
        $uid          = request('user_id');
        $email        = request('email');
        //echo $email;exit();
        $amount       = request('amount');
        $currency_id  = request('currencyId');
        $note         = request('note');
        $receiverInfo = User::where(['email' => $email])->first();
        $senderInfo   = User::where(['id' => $uid])->first();
        $senderName   = $senderInfo->first_name . ' ' . $senderInfo->last_name;
        $receiverName = isset($receiverInfo) ? $receiverInfo->first_name . ' ' . $receiverInfo->last_name : '';
        $uuid                        = unique_code();

        //Save data to Request Payment Table
        $RequestPayment              = new RequestPayment();
        $RequestPayment->user_id     = $uid;
        $RequestPayment->receiver_id = isset($receiverInfo) ? $receiverInfo->id : null;
        $RequestPayment->email       = $email;
        $RequestPayment->currency_id = $currency_id;
        $RequestPayment->amount      = $amount;
        $RequestPayment->note        = $note;
        $RequestPayment->uuid        = $uuid;
        $RequestPayment->status      = "Pending";
        $RequestPayment->save();
        //d($sessionValue,1);
        // Created pending transaction for Request Created
        $transaction                           = new Transaction();
        $transaction->user_id                  = $uid;
        $transaction->currency_id              = $currency_id;
        $transaction->uuid                     = $uuid;
        $transaction->transaction_reference_id = $RequestPayment->id;
        $transaction->transaction_type_id      = Request_From;
        $transaction->subtotal                 = $amount;
        $transaction->charge_percentage        = 0;
        $transaction->charge_fixed             = 0;
        $transaction->total                    = $amount;
        $transaction->note                     = $note;
        if (!empty($receiverInfo))
        {
            $transaction->end_user_id = $receiverInfo->id;
            $transaction->user_type   = 'registered';
        }
        else
        {
            $transaction->email     = $email;
            $transaction->user_type = 'unregistered';
        }
        $transaction->status = 'Pending';
        // dd($transaction);
        $transaction->save();

        // Created pending transaction for Request To

        $transactionRequestTo                           = new Transaction();
        $transactionRequestTo->user_id                  = isset($receiverInfo) ? $receiverInfo->id : null;
        $transactionRequestTo->end_user_id              = $uid;
        $transactionRequestTo->currency_id              = $currency_id;
        $transactionRequestTo->uuid                     = $uuid;
        $transactionRequestTo->transaction_reference_id = $RequestPayment->id;
        $transactionRequestTo->transaction_type_id      = Request_To;
        $transactionRequestTo->subtotal                 = $amount;
        $transactionRequestTo->charge_percentage        = 0;
        $transactionRequestTo->charge_fixed             = 0;
        $transactionRequestTo->total                    = '-' . $amount;
        $transactionRequestTo->note                     = $note;

        if (!empty($receiverInfo))
        {
            $transactionRequestTo->user_type = 'registered';
        }
        else
        {
            $transactionRequestTo->email     = $email;
            $transactionRequestTo->user_type = 'unregistered';
        }
        $transactionRequestTo->status = 'Pending';
        $transactionRequestTo->save();
        $createWallet = Wallet::where(['user_id' => $uid, 'currency_id' => $currency_id])->first();

        //Setting details
        $soft_name        = Setting::where(['name'=>'name'])->first();
        $language         = Setting::where(['name' => 'default_language'])->first();
        $defualtCurrency  = Setting::where(['name' => 'default_currency'])->first();
        if (empty($createWallet))
        {
            $wallet              = new Wallet();
            $wallet->user_id     = $uid;
            $wallet->currency_id = $currency_id;
            $wallet->balance     = 0.00;

            if ($wallet->currency_id == $defualtCurrency->value)
            {
                $wallet->is_default = 'Yes';
            }
            else
            {
                $wallet->is_default = 'No';
            }
            $wallet->save();
        }

        // Mail when request created
        $req_create_temp = EmailTemplate::where([
            'temp_id'     => 4,
            'language_id' => $language->value,
        ])->select('subject', 'body')->first();
        // dd($req_create_temp);

        if (isset($receiverInfo))
        {
            $req_create_sub = $req_create_temp->subject;
            $req_create_msg = str_replace('{acceptor}', ucfirst($receiverName), $req_create_temp->body);
            $req_create_msg = str_replace('{symbol}', $RequestPayment->currency->symbol, $req_create_msg);
            $req_create_msg = str_replace('{amount}', $amount, $req_create_msg);
            $req_create_msg = str_replace('{uuid}', $uuid, $req_create_msg);
            $req_create_msg = str_replace('{created_at}', date('Y-m-d'), $req_create_msg);
            $req_create_msg = str_replace('{note}', $note, $req_create_msg);
            $req_create_msg = str_replace('{soft_name}', ucfirst($soft_name->value), $req_create_msg);
            //if (env('APP_MAIL', 'true')){
                $this->email->sendEmail($email, $req_create_sub, $req_create_msg);
            //}
        }
        else
        {
            $subject = 'Request Payment';
            $message = 'Hi ' . ucfirst($receiverName) . '<br>';
            $message .= 'You have got ' . $RequestPayment->currency->symbol .''. $amount. ' payment request from ' . $senderInfo->email . ' To pay please register on : ' . url('/') . 'with current email<br>';
            $message .= $soft_name->value;
            //if (env('APP_MAIL', 'true')){
                $this->email->sendEmail($email, $subject, $message);
            //}
        }
        $success['status'] = $this->successStatus;
        return response()->json(['success' => $success],$this->successStatus);

    }

    //Request Money Ends here


    //Send Money Starts here

    public function sendMoneyConfirm(){
        if(request('user_id')){
            $user_id           = request('user_id');
            $email             = request('email');
            $user              = User::where('id','=',$user_id)->first();
            $emailUser         = User::where('email','=',$email)->first();
            if(@$user->email==@$emailUser->email){
                $success['status']  = $this->unauthorisedStatus;
                $success['message'] = 'You Can\'t Send Money To Yourself!';
                //$success['message'] = 'Can not send money to '.$emailUser->email;
                return response()->json(['success' => $success],$this->successStatus);
            }else{
                if(count($emailUser)>0){
                    $success['status']     = $this->successStatus;
                    return response()->json(['success' => $success],$this->successStatus);
                }else{
                    $success['status']     = $this->successStatus;
                    return response()->json(['success' => $success],$this->successStatus);
                }
            }        
        }else{
            echo "In else block";exit();return false;
        }
    }
    public function getFeesDetails(){
        $amount           = request('amount');
        $trans_type       = request('trans_type');
        $currency_id      = request('currency_id');
        $currency         = Currency::find($currency_id);
        $transaction_type = TransactionType::where(['name' => $trans_type])->first();
        $feesDetails      = FeesLimit::where(['transaction_type_id' => $transaction_type->id,'currency_id' => $currency_id])->first();
        if(empty($feesDetails)){
            $feesPercentage        = 0;
            $feesFixed             = 0;
            $totalFess             = $feesPercentage+$feesFixed;
            $totalAmount           = $amount+$totalFess;
            $success['totalFees']  = number_format($totalFess,2);
            $success['totalAmount']= number_format($totalAmount,2);
            $success['status']     = $this->successStatus;
            $success['currSymbol'] = $currency->symbol;
        }else{
            $feesPercentage        = $amount*($feesDetails->charge_percentage/100);
            $feesFixed             = $feesDetails->charge_fixed;
            $totalFess             = $feesPercentage+$feesFixed;
            $totalAmount           = $amount+$totalFess; 
            $success['totalFees']  = number_format($totalFess,2);
            $success['totalAmount']= number_format($totalAmount,2);
            $success['status']     = $this->successStatus;
            $success['currSymbol'] = $currency->symbol;

        }
        return response()->json(['success' => $success],$this->successStatus);

    }
    public function amountLimitCheck(){
        $amount                   = request('amount');
        $currency_id              = request('currency_id');
        $user_id                  = request('user_id');
        $feesDetails              = FeesLimit::where(['transaction_type_id' => Transferred,'currency_id' => $currency_id])->first();
        
        //Wallet Balance Limit Check Starts here
        
        $wallets                  = Wallet::where(['currency_id' => $currency_id, 'user_id' => $user_id])->first();
        $checkAmount              = $amount+$feesDetails->charge_fixed+$feesDetails->charge_percentage;        
        if(@$wallets){
            //if((@$wallets->balance) < (@$amount)){
            if((@$checkAmount) > (@$wallets->balance) || (@$wallets->balance<0)){                    
                    $success['message']    = "Sorry, not enough funds to perform the operation!";
                    $success['status']     = '401';
                    return response()->json(['success' => $success],$this->successStatus);   
            }

        }

        //Wallet Balance Limit Check Ends here

        //Amount Limit Check Starts here
        //d($feesDetails,1);
        if(@$feesDetails){
            if(@$feesDetails->max_limit==NULL){
                if((@$amount<@$feesDetails->min_limit)){
                    $success['message']    = 'Minimum amount '.@$feesDetails->min_limit;
                    $success['status']     = '401';
                }else{
                    $success['status']     = $this->successStatus;
                }
            }else{
                if((@$amount<@$feesDetails->min_limit) || (@$amount>@$feesDetails->max_limit)){
                    $success['message']    = 'Minimum amount '.@$feesDetails->min_limit.' and Maximum amount '.@$feesDetails->max_limit;
                    $success['status']     = '401';
                }else{
                    $success['status']     = $this->successStatus;
                }
            }

            return response()->json(['success' => $success],$this->successStatus);   
        }else{
            $success['status']     = $this->successStatus; 
            return response()->json(['success' => $success],$this->successStatus);   

        }

        //Amount Limit Check Ends here
    }

    public function sendMoneyPay()
    {
            $user_id          = request('user_id');
            $email            = request('email');
            $currency_id      = request('currency_id');
            $amount           = request('amount');
            $totalFees        = request('totalFees');
            $note             = request('note');

            //Save to transfer table
            $transfer                = new Transfer();
            $transfer->sender_id     = $user_id;
            $user                    = User::where(['id' => $user_id])->first();
            $receiverInfo            = User::where(['email' => trim($email)])->first(); // fetching receiver id
            $receiverName            = isset($receiverInfo) ? $receiverInfo->first_name . ' ' . $receiverInfo->last_name : '';
            $transfer->receiver_id   = isset($receiverInfo) ? $receiverInfo->id:NULL;
            $transfer->currency_id   = $currency_id;
            $unique_code             = unique_code(); //unique_code() for Transfered, Received (transactions) and current transfer entries
            $transfer->uuid          = $unique_code;
            $transfer->fee           = $totalFees;
            $transfer->amount        = $amount;
            $transfer->note          = $note;
            $transfer->email         = $email;
            if ($transfer->receiver_id!=NULL){
                $transfer->status = 'Success';
            }else{
                $transfer->status = 'Pending';
            }
            $transfer->save();

            // If receiver id is not null in transfers table and user exists in system
            if (!empty($transfer->receiver_id) && isset($receiverInfo))
            {
                $receiver_wallet = Wallet::where([ //setting currency_id on receiver wallet
                    'user_id'     => $receiverInfo->id,
                    'currency_id' => $currency_id,
                ])->first();

                if (empty($receiver_wallet)) // //Check whether receiver has wallet or not
                {
                    $wallet              = new Wallet(); //create wallet if doesn't exist
                    $wallet->user_id     = isset($receiverInfo) ? $receiverInfo->id : null;
                    $wallet->currency_id = $currency_id;
                    $wallet->balance     = $amount;
                    $wallet->save();
                }else{
                    $wallet              = Wallet::find($receiver_wallet->id); //if receiver has wallet, update his wallet balance
                    $wallet->currency_id = $currency_id;
                    $wallet->balance     = ($receiver_wallet->balance + $amount); //adding tranferred amount to receiver's wallet balance
                    $wallet->save();
                }
            }
            
            //Updating Sender Wallet Balance
            $sender_wallet                 = Wallet::where(['user_id'     => $user_id,'currency_id' => $currency_id])->select('balance')->first();
            $total_with_fee                = $amount + $totalFees;
            $sender_current_balance        = $sender_wallet->balance - $total_with_fee;
            $sender_updated_wallet_balance = Wallet::where(['user_id'     => $user_id,'currency_id' => $currency_id])->update(['balance' => $sender_current_balance]);

            $feesDetails                   = FeesLimit::where(['transaction_type_id' => Transferred,'currency_id' => $currency_id])->first();
            
            //Sender Transaction save starts here
            $sender_t                           = new Transaction();
            $sender_t->currency_id              = $currency_id;
            $sender_t->user_id                  = $user_id;
            $sender_t->end_user_id              = isset($receiverInfo) ? $receiverInfo->id : null;
            $sender_t->uuid                     = $unique_code;
            $sender_t->transaction_reference_id = $transfer->id;
            $sender_t->transaction_type_id      = Transferred;
            $sender_t->user_type                = isset($receiverInfo) ? 'registered': 'unregistered';
            $sender_t->email                    = $email;
            $sender_t->subtotal                 = $amount;
            $sender_t->percentage               = @$feesDetails->charge_percentage?@$feesDetails->charge_percentage:0;
            $sender_t->charge_percentage        = @$feesDetails->charge_percentage?($amount)*(@$feesDetails->charge_percentage/100):0;
            $sender_t->charge_fixed             = @$feesDetails->charge_fixed?@$feesDetails->charge_fixed:0;
            $sender_t->total                    = '-' . ($total_with_fee);
            $sender_t->note                     = $note;
            $sender_t->status                   = $transfer->status;
            $sender_t->save();
            //Sender Transaction save ends here

            //Receiver Transactions Save starts here
            $receiver_t                           = new Transaction();
            $receiver_t->currency_id              = $currency_id;
            $receiver_t->user_id                  = isset($receiverInfo) ? $receiverInfo->id : null;
            $receiver_t->end_user_id              = $user_id;
            $receiver_t->uuid                     = $unique_code;
            $receiver_t->transaction_reference_id = $transfer->id;
            $receiver_t->transaction_type_id      = Received;
            $receiver_t->user_type                = isset($receiverInfo) ? 'registered' : 'unregistered';
            $receiver_t->email                    = $email;
            $receiver_t->subtotal                 = $amount;
            $receiver_t->percentage               = 0;
            $receiver_t->charge_percentage        = 0;
            $receiver_t->charge_fixed             = 0;
            $receiver_t->total                    = $amount;
            $receiver_t->note                     = $note;
            $receiver_t->status                   = $transfer->status;
            $receiver_t->save();
            //Receiver Transaction Save ends here
            //Setting details
            $soft_name = Setting::where(['name'=>'name'])->first();
            $language  = Setting::where(['name' => 'default_language'])->first();
            //echo "lll".$language;exit();
            // Mail for sender
            $sender_info = EmailTemplate::where([
                'temp_id'     => 1,
                'language_id' => $language->value,
            ])->select('subject', 'body')->first();

            $sender_subject = $sender_info->subject;
            $sender_msg     = str_replace('{sender_id}', ucfirst($transfer->sender->first_name . ' ' . $transfer->sender->last_name), $sender_info->body);
            $sender_msg     = str_replace('{symbol}', $transfer->currency->symbol, $sender_msg);
            $sender_msg     = str_replace('{amount}', $amount, $sender_msg);
            $sender_msg     = str_replace('{uuid}', $unique_code, $sender_msg);

            $sender_msg = str_replace('{receiver_id}', isset($receiverInfo) ? ucfirst($receiverInfo->first_name . ' ' . $receiverInfo->last_name) : $email, $sender_msg);

            $sender_msg = str_replace('{fee}', $totalFees, $sender_msg);
            $sender_msg = str_replace('{created_at}', Carbon::now()->toDateString(), $sender_msg);
            $sender_msg = str_replace('{soft_name}', $soft_name->value, $sender_msg);

            //if (env('APP_MAIL', 'true')){
            $this->email->sendEmail($transfer->sender->email, $sender_subject, $sender_msg);
            //}
            // Mail for receiver
            $receiver_info = EmailTemplate::where([
                'temp_id'     => 2,
                'language_id' => $language->value,
            ])->select('subject', 'body')->first();

            if (isset($receiverInfo)){
                // Mail when request created
                $receiver_subject = $receiver_info->subject;
                $receiver_msg     = str_replace('{receiver_id}', ucfirst($transfer->receiver->first_name . ' ' . $transfer->receiver->last_name), $receiver_info->body); //
                $receiver_msg     = str_replace('{symbol}', $transfer->currency->symbol, $receiver_msg);
                $receiver_msg     = str_replace('{amount}', $amount, $receiver_msg);
                $receiver_msg     = str_replace('{sender_id}', ucfirst($transfer->sender->first_name . ' ' . $transfer->sender->last_name), $receiver_msg);
                $receiver_msg     = str_replace('{uuid}', $unique_code, $receiver_msg);
                $receiver_msg     = str_replace('{created_at}', Carbon::now()->toDateString(), $receiver_msg);
                $receiver_msg     = str_replace('{soft_name}', $soft_name->value, $receiver_msg);

                //if (env('APP_MAIL', 'true')){
                $this->email->sendEmail($transfer->receiver->email, $receiver_subject, $receiver_msg);
                //}
            }else{
                $subject = 'Money Transfer';
                $message = 'Hi ' . ucfirst($receiverName) . '<br>';
                $message .= 'You have got ' . $transfer->currency->symbol . ' ' . $amount . ' money transfer from ' . $user->email . ' To receive, please register on : ' . url('/') .' '.'with current email<br>';
                $message .=  $soft_name->value;
                //if (env('APP_MAIL', 'true')){
                $this->email->sendEmail($email, $subject, $message);
                //}
            }
            $success['status'] = $this->successStatus;
            return response()->json(['success' => $success],$this->successStatus);

    }

    //Send Money Ends here


    //Exchange Money Starts here

    //Get Exchange to other currency list

    public function getExchangeToOtherCurrency(){
        $success['status']       = $this->successStatus;
        $user_id                 = request('user_id');
        $activeCurrency          = Currency::where(['status' => 'Active'])->get();
        $feesLimitCurrency       = FeesLimit::where(['transaction_type_id' => Exchange_From, 'has_transaction' => 'Yes'])->get();
        $success['currencies']   = $this->currencyList($activeCurrency, $feesLimitCurrency);
        return response()->json(['success' => $success],$this->successStatus); 
    }
    public function amountLimitCheckExchangeToOther(){
        $amount                   = request('amount');
        $user_id                  = request('user_id');
        $wallets                  = Wallet::where(['is_default' => "Yes", 'user_id' => $user_id])->first();
        $currency_id              = $wallets->currency_id;
        //echo $currency_id;
        $feesDetails              = FeesLimit::where(['transaction_type_id' => Exchange_From,'currency_id' => $currency_id])->first();
        //d($feesDetails);
        //Wallet Balance Limit Check Starts here
    
        if(@$feesDetails){
            $checkAmount          = $amount+$feesDetails->charge_fixed+$feesDetails->charge_percentage;        
        }
        //echo $checkAmount;
       // echo $wallets->balance;
        //exit();
        if(@$wallets){
            //if((@$wallets->balance) < (@$amount)){
            if((@$checkAmount) > (@$wallets->balance) || (@$wallets->balance<0)){                    
                    $success['message']    = "Sorry, not enough funds to perform the operation!";
                    $success['status']     = '401';
                    return response()->json(['success' => $success],$this->successStatus);   
            }

        }

        //Wallet Balance Limit Check Ends here

        //Amount Limit Check Starts here

        if(@$feesDetails){
            if(@$feesDetails->max_limit==NULL){
                if((@$amount<@$feesDetails->min_limit)){
                    $success['message']    = 'Minimum amount '.@$feesDetails->min_limit;
                    $success['status']     = '401';
                }else{
                    $success['status']     = $this->successStatus;
                }
            }else{
                if((@$amount<@$feesDetails->min_limit) || (@$amount>@$feesDetails->max_limit)){
                    $success['message']    = 'Minimum amount '.@$feesDetails->min_limit.' and Maximum amount '.@$feesDetails->max_limit;
                    $success['status']     = '401';
                }else{
                    $success['status']     = $this->successStatus;
                }
            }
        return response()->json(['success' => $success],$this->successStatus);   
        }else{
            //$success['status']     = $this->successStatus;
            $curr                  = Currency::find($currency_id);
            $success['message']    = 'Please check fees limit for the currency '.$curr->code;
            $success['status']     = '401';
            return response()->json(['success' => $success],$this->successStatus);   

        }
        //Amount Limit Check Ends here
    }
    //Exchange Money Ends here


    //Get Exchange to other details
    public function getExchangeToOtherDetails(){
        $user_id                   = request('user_id');
        $amount                    = request('amount');
        $currency_id               = request('currency_id');
        $desitnationCurrency       = Currency::where(['id' => $currency_id])->first();
        //echo $desitnationCurrency->exchange_from;exit();
        $default_currency          = Wallet::where(['user_id'=>$user_id,'is_default'=>'Yes'])->first();
        if($desitnationCurrency->exchange_from == "local"){
            $destinationCurrencyRate = $desitnationCurrency->rate;
        }else{
            $destinationCurrencyRate = getCurrencyRate($default_currency->currency->code, $desitnationCurrency->code);
        }
        $feesDetails               = FeesLimit::where(['transaction_type_id' => Exchange_From, 'currency_id' => $default_currency->currency_id])->first();
        $totalFess                 = ($amount*(@$feesDetails->charge_percentage/100))+(@$feesDetails->charge_fixed);
        $success['convertedAmnt']  = number_format($amount*$desitnationCurrency->rate,2);
        $success['totalAmount']    = number_format($amount+$totalFess,2);
        $success['currSymbol']     = $desitnationCurrency->symbol;
        $success['dCurrencyRate']  = number_format($destinationCurrencyRate,2);
        $success['dCurrencyCode']  = $default_currency->currency->code;
        $success['currCode']       = $desitnationCurrency->code;
        $success['totalFees']      = number_format($totalFess,2);
        $success['status']         = $this->successStatus;
        $success['cCurrencyRate']  = number_format($desitnationCurrency->rate,2);
        $success['currencySymbol'] = $default_currency->currency->symbol;
        return response()->json(['success' => $success],$this->successStatus); 
    }

    //Exchange Money To other currency Confirm
    public function exchangeMoneyToOtherCurrencyConfirm(){
        $currency_id         = request('currency_id');
        $default_currency    = Setting::where(['name'=>'default_currency'])->first();
        //d($default_currency,1);
        //echo $currency_id;exit();
        $uid                 = request('user_id');
        $amount              = request('amount');
        $totalFess           = request('totalFees');
        $feesDetails         = FeesLimit::where(['transaction_type_id' => Exchange_From, 'currency_id' => $default_currency->value])->first();
        $chkWallet           = Wallet::where(['user_id' => $uid, 'currency_id' => $currency_id])->first();
        $desitnationCurrency = Currency::find($currency_id);
        $newAmount           = ($amount * $desitnationCurrency->rate);
        //$default_currency    = Setting::where(['name'=>'default_currency'])->first();
        $dfltWallet          = Wallet::where(['user_id' => $uid, 'currency_id' => $default_currency->value])->first();
        $data['defaultCurrency'] = Currency::find($default_currency->value);
        if (empty($chkWallet))
        {
            //Create a new wallet
            $wallet              = new Wallet();
            $wallet->user_id     = $uid;
            $wallet->currency_id = $currency_id;
            $wallet->balance     = $newAmount;
            $wallet->save();
            $to_wallet           = $wallet->id;
        }
        else
        {
            //// Deduct from base wallet
            $wallet          = Wallet::find($chkWallet->id);
            $wallet->balance = ($wallet->balance + $newAmount);
            $wallet->save();
            $to_wallet       = $chkWallet->id;
        }
        $uuid = unique_code();
        ///Create CurrencyExchange
        $currencyExchange                = new CurrencyExchange();
        $currencyExchange->user_id       = $uid;
        $currencyExchange->from_wallet   = $dfltWallet->id;
        $currencyExchange->to_wallet     = $to_wallet;
        $currencyExchange->currency_id   = $currency_id;
        $currencyExchange->uuid          = $uuid;
        $currencyExchange->exchange_rate = $desitnationCurrency->rate;
        $currencyExchange->amount        = $amount;
        $currencyExchange->fee           = $totalFess;
        $currencyExchange->type          = 'Out';
        $currencyExchange->status        = 'Success';
        $currencyExchange->save();

        //// Deduct from base wallet
        $charge_percentage = @$feesDetails->charge_percentage ? ($amount)*(@$feesDetails->charge_percentage/100):0;
        $charge_fixed      = @$feesDetails->charge_fixed ? @$feesDetails->charge_fixed:0;
        $tAmnt             = $amount+$charge_percentage+$charge_fixed;
        $wallet            = Wallet::find($dfltWallet->id);
        $wallet->balance   = ($wallet->balance - $tAmnt);
        $wallet->save();

        $exchangeFrom                           = new Transaction();
        $exchangeFrom->user_id                  = $uid;
        $exchangeFrom->currency_id              = $dfltWallet->currency_id;
        $exchangeFrom->uuid                     = $uuid;
        $exchangeFrom->transaction_reference_id = $currencyExchange->id;
        $exchangeFrom->transaction_type_id      = Exchange_From;
        $exchangeFrom->subtotal                 = $amount;
        $exchangeFrom->percentage               = @$feesDetails->charge_percentage ? @$feesDetails->charge_percentage:0;
        $exchangeFrom->charge_percentage        = @$feesDetails->charge_percentage ? ($amount)*(@$feesDetails->charge_percentage/100):0;
        $exchangeFrom->charge_fixed             = @$feesDetails->charge_fixed ? @$feesDetails->charge_fixed:0;


        // $exchangeFrom->total                    = '-' . ($sessionValue['amounts']);
        $exchangeFrom->total                    = '-' . ($exchangeFrom->subtotal + $exchangeFrom->charge_percentage + $exchangeFrom->charge_fixed);
        $exchangeFrom->status                   = 'Success';
        $exchangeFrom->uuid                     = $uuid;
        $exchangeFrom->save();

        $exchangeTo                           = new Transaction();
        $exchangeTo->user_id                  = $uid;
        $exchangeTo->currency_id              = $currency_id;
        $exchangeTo->uuid                     = $uuid;
        $exchangeTo->transaction_reference_id = $currencyExchange->id;
        $exchangeTo->transaction_type_id      = Exchange_To;
        $exchangeTo->subtotal                 = $newAmount;
        $exchangeTo->percentage               = 0;
        $exchangeTo->charge_percentage        = 0;
        $exchangeTo->charge_fixed             = 0;
        $exchangeTo->total                    = $exchangeTo->subtotal;
        $exchangeTo->status                   = 'Success';
        $exchangeTo->uuid                     = $uuid;
        $exchangeTo->save();
        $success['status']                    = $this->successStatus;
        return response()->json(['success' => $success],$this->successStatus);
    }


    //Get Exchange to Base currency list

    public function getExchangeToBaseCurrency(){
        $success['status']     = $this->successStatus;
        $user_id               = request('user_id'); 
        $userCurrencyList      = array_column(Wallet::where(['user_id' => $user_id])->get()->toArray(), 'currency_id');
        $userCurrencyList      = Currency::whereIn('id', $userCurrencyList)->get();
        $feesLimitCurrency     = FeesLimit::where(['transaction_type_id' => Exchange_From, 'has_transaction' => 'Yes'])->get();
        $success['currencies'] = $this->currencyList($userCurrencyList, $feesLimitCurrency);
        return response()->json(['success' => $success],$this->successStatus); 
    }
    //Exchange Money To base Currency Amount Limit Check
    public function amountLimitCheckExchangeToBase(){
        $amount                   = request('amount');
        $currency_id              = request('currency_id');
        $user_id                  = request('user_id');
        $feesDetails              = FeesLimit::where(['transaction_type_id' => Exchange_From,'currency_id' => $currency_id])->first();
        
        //Wallet Balance Limit Check Starts here
        
        //$wallets                  = Wallet::where(['is_default' => "Yes", 'user_id' => $user_id])->first();
        $wallets  = Wallet::where(['user_id' => $user_id, 'currency_id' => $currency_id])->first();
        $checkAmount              = $amount+$feesDetails->charge_fixed+$feesDetails->charge_percentage;        
        if(@$wallets){
            //if((@$wallets->balance) < (@$amount)){
            if((@$checkAmount) > (@$wallets->balance) || (@$wallets->balance<0)){                    
                    $success['message']    = "Sorry, not enough funds to perform the operation!";
                    $success['status']     = '401';
                    return response()->json(['success' => $success],$this->successStatus);   
            }

        }

        //Wallet Balance Limit Check Ends here

        //Amount Limit Check Starts here

        if(@$feesDetails){
            if(@$feesDetails->max_limit==NULL){
                if((@$amount<@$feesDetails->min_limit)){
                    $success['message']    = 'Minimum amount '.@$feesDetails->min_limit;
                    $success['status']     = '401';
                }else{
                    $success['status']     = $this->successStatus;
                }
            }else{
                if((@$amount<@$feesDetails->min_limit) || (@$amount>@$feesDetails->max_limit)){
                    $success['message']    = 'Minimum amount '.@$feesDetails->min_limit.' and Maximum amount '.@$feesDetails->max_limit;
                    $success['status']     = '401';
                }else{
                    $success['status']     = $this->successStatus;
                }
            }
        return response()->json(['success' => $success],$this->successStatus);   
        }else{
            $success['status']     = $this->successStatus; 
            return response()->json(['success' => $success],$this->successStatus);   

        }
        //Amount Limit Check Ends here
    }

   //Exchange Money To Base Currency 
    public function getExchangeToBaseDetails(){
        $user_id                   = request('user_id');
        $amount                    = request('amount');
        $currency_id               = request('currency_id');
        $currency                  = Currency::where(['id' => $currency_id])->first();
        $default_currency          = Wallet::where(['user_id'=>$user_id,'is_default'=>'Yes'])->first();
        if($currency->exchange_from == 'local'){
            $sourceExchangeRate = $currency->rate;
        }else{
            $sourceExchangeRate = getCurrencyRate($default_currency->currency->code, $currency->code);
        }
        $feesDetails               = FeesLimit::where(['transaction_type_id' => Exchange_From, 'currency_id' => $currency_id])->first();
        $totalFess                 = (@$feesDetails->charge_percentage*$amount/100)+(@$feesDetails->charge_fixed);
        $success['convertedAmnt']  = number_format($amount/$sourceExchangeRate,2);
        $success['totalAmount']    = number_format($amount+$totalFess,2);
        $success['currSymbol']     = $default_currency->currency->code;
        $success['dCurrencyRate']  = $default_currency->currency->rate;
        $success['dCurrencyCode']  = $currency->code;
        $success['currCode']       = $default_currency->currency->code;
        $success['totalFees']      = number_format($totalFess,2);
        $success['status']         = $this->successStatus;
        $success['cCurrencyRate']  = number_format(1/$sourceExchangeRate,2);
        $success['currencySymbol'] = $currency->symbol;
        return response()->json(['success' => $success],$this->successStatus);   
    }

    //Exchange Money To Base Currency Payment Confirm

    public function exchangeToBaseCurrencyConfirm(){
        $currency_id           = request('currency_id');
        $uid                   = request('user_id');
        $amount                = request('amount');
        $totalFess             = request('totalFees');
        $feesDetails           = FeesLimit::where(['transaction_type_id' => Exchange_From, 'currency_id' => $currency_id])->first();
        $uuid                  = unique_code();
        $sourceWallet          = Wallet::where(['user_id' => $uid, 'currency_id' => $currency_id])->first();
        $destinationWallet     = Wallet::where(['user_id' => $uid, 'is_default' => 'Yes'])->first();

        //// Deduct From Source Wallet
        $charge_percentage     = @$feesDetails->charge_percentage ? ($amount)*(@$feesDetails->charge_percentage/100):0;
        $charge_fixed          = @$feesDetails->charge_fixed ? @$feesDetails->charge_fixed:0;
        $tAmnt                 = $amount+$charge_percentage+$charge_fixed;
        $walletSource          = Wallet::find($sourceWallet->id);
        $walletSource->balance = ($sourceWallet->balance - $tAmnt);
        $walletSource->save();
        $walletSourceId        = $walletSource->id;

        //// Deposit To Default Wallet
        $newAmount                  = ($amount / $sourceWallet->currency->rate);
        $walletDestination          = Wallet::find($destinationWallet->id);
        $walletDestination->balance = ($destinationWallet->balance + $newAmount);
        $walletDestination->save();
        $walletDestinationId        = $walletDestination->id;

        ///Create CurrencyExchange
        
        $currencyExchange                = new CurrencyExchange();
        $currencyExchange->from_wallet   = $sourceWallet->id;
        $currencyExchange->to_wallet     = $destinationWallet->id;
        $currencyExchange->exchange_rate = $sourceWallet->currency->rate;
        $currencyExchange->amount        = $amount;
        $currencyExchange->user_id       = $uid;
        $currencyExchange->currency_id   = $currency_id;
        $currencyExchange->type          = 'In';
        $currencyExchange->status        = 'Success';
        $currencyExchange->uuid          = $uuid;
        $currencyExchange->save();
       
       //Insert Into Transaction For Exchange From

        $exchangeFrom                           = new Transaction();
        $exchangeFrom->user_id                  = $uid;
        $exchangeFrom->currency_id              = $walletSource->currency_id;
        $exchangeFrom->uuid                     = $uuid;
        $exchangeFrom->transaction_reference_id = $currencyExchange->id;
        $exchangeFrom->transaction_type_id      = Exchange_From;
        $exchangeFrom->subtotal                 = $amount;
        $exchangeFrom->charge_percentage        = @$feesDetails->charge_percentage?($amount)*(@$feesDetails->charge_percentage/100):0;
        $exchangeFrom->charge_fixed             = @$feesDetails->charge_fixed?@$feesDetails->charge_fixed:0;
        $exchangeFrom->total                    = '-' . ($exchangeFrom->subtotal + $exchangeFrom->charge_percentage + $exchangeFrom->charge_fixed);
        $exchangeFrom->status                   = 'Success';
        $exchangeFrom->save();

        //Insert Into Transaction For Exchange To

        $exchangeTo                           = new Transaction();
        $exchangeTo->user_id                  = $uid;
        $exchangeTo->currency_id              = $destinationWallet->currency_id;
        $exchangeTo->uuid                     = $uuid;
        $exchangeTo->transaction_reference_id = $currencyExchange->id;
        $exchangeTo->transaction_type_id      = Exchange_To;
        $exchangeTo->subtotal                 = $newAmount;
        $exchangeTo->charge_percentage        = 0;
        $exchangeTo->charge_fixed             = 0;
        $exchangeTo->total                    = $exchangeTo->subtotal;
        $exchangeTo->status = 'Success';
        $exchangeTo->save();
        $success['status']                    = $this->successStatus;
        return response()->json(['success' => $success],$this->successStatus);
    }

    //Exchange Money to base currency ends here

    //Withdrawal Money Starts here
    public function getWithdrawalCurrency(){
        $success['status']     = $this->successStatus;
        $user_id               = request('user_id');
        //$activeCurrency        = Currency::where(['status' => 'Active'])->get();
        $activeCurrency        = Wallet::where(['user_id' => $user_id])->get();     
        $feesLimitCurrency     = FeesLimit::where(['transaction_type_id'=>Withdrawal,'has_transaction'=>'Yes'])->get(['currency_id','has_transaction']);
        $success['currencies'] = $this->walletList($activeCurrency,$feesLimitCurrency);
        return response()->json(['success' => $success],$this->successStatus); 
    }

    public function getWithdrawalPaymentMethod(){
        $paymentMethod = PayoutSetting::where(['user_id' => request('user_id')])->get();
        //d($paymentMethod,1);
        $pm            = [];
        for($i=0;$i<count($paymentMethod);$i++){
            $pm[$i]['id']        = $paymentMethod[$i]->id;
            $pm[$i]['user_id']   = $paymentMethod[$i]->user_id;
            $pm[$i]['bank_name'] = $paymentMethod[$i]->paymentMethod->name;
            $pm[$i]['email']     = $paymentMethod[$i]->email?$paymentMethod[$i]->email:$paymentMethod[$i]->account_name;
        }
        $success['status']       = $this->successStatus;
        $success['paymentmethod']= $pm;
        return response()->json(['success' => $success],$this->successStatus);
    }

    public function amountLimitCheckWithdraw(){
        $amount                   = request('amount');
        $currency_id              = request('currency_id');
        $user_id                  = request('user_id');
        $feesDetails              = FeesLimit::where(['transaction_type_id' => Withdrawal,'currency_id' => $currency_id])->first();
        
        //Wallet Balance Limit Check Starts here
        
        //$wallets                  = Wallet::where(['is_default' => "Yes", 'user_id' => $user_id])->first();
        $wallets     = Wallet::where(['user_id' => $user_id, 'currency_id' => $currency_id])->first();
        $checkAmount = $amount+$feesDetails->charge_fixed+$feesDetails->charge_percentage;
        //echo $checkAmount;exit();
        if(@$wallets){
            //if((@$wallets->balance) < (@$amount)){
            if((@$checkAmount) > (@$wallets->balance) || (@$wallets->balance<0)){
                    $success['message']    = "Sorry, not enough funds to perform the operation!";
                    $success['status']     = '401';
                    return response()->json(['success' => $success],$this->successStatus);   
            }

        }

        //Wallet Balance Limit Check Ends here

        //Amount Limit Check Starts here

        if(@$feesDetails){
            if(@$feesDetails->max_limit==NULL){
                if((@$amount<@$feesDetails->min_limit)){
                    $success['message']    = 'Minimum amount '.@$feesDetails->min_limit;
                    $success['status']     = '401';
                }else{
                    $success['status']     = $this->successStatus;
                }
            }else{
                if((@$amount<@$feesDetails->min_limit) || (@$amount>@$feesDetails->max_limit)){
                    $success['message']    = 'Minimum amount '.@$feesDetails->min_limit.' and Maximum amount '.@$feesDetails->max_limit;
                    $success['status']     = '401';
                }else{
                    $success['status']     = $this->successStatus;
                }
            }
        return response()->json(['success' => $success],$this->successStatus);   
        }else{
            $success['status']     = $this->successStatus; 
            return response()->json(['success' => $success],$this->successStatus);   

        }
        //Amount Limit Check Ends here  
    }
    public function getWithdrawDetails(){
        $user_id                   = request('user_id');
        $amount                    = request('amount');
        $currency_id               = request('currency_id');
        $payoutSettingId           = request('payoutSetId');
        $payoutSetting             = PayoutSetting::where(['id' => $payoutSettingId])->first();
        $payoutSetting->name       = $payoutSetting->paymentMethod->name;
        $currency                  = Currency::where(['id' => $currency_id])->first();
        $default_currency          = Wallet::where(['user_id'=>$user_id,'is_default'=>'Yes'])->first();
        $feesDetails               = FeesLimit::where(['transaction_type_id' => Withdrawal, 'currency_id' => $currency_id])->first();
        $totalFess                 = (@$feesDetails->charge_percentage*$amount/100)+(@$feesDetails->charge_fixed);
        $success['totalAmount']    = number_format($amount+$totalFess,2);
        $success['currSymbol']     = $currency->symbol;
        $success['currCode']       = $currency->code;
        $success['totalFees']      = number_format($totalFess,2);
        $success['account_name']   = $payoutSetting->account_name;
        $success['account_number'] = $payoutSetting->account_number;
        $success['type']           = $payoutSetting->name;
        $success['status']         = $this->successStatus;
        return response()->json(['success' => $success],$this->successStatus);
    }
    public function withdrawMoneyConfirm(){

            $uid                             = request('user_id');
            $uuid                            = unique_code();
            $payout_setting_id               = request('payout_setting_id');
            $currency_id                     = request('currency_id');
            $amount                          = request('amount');
            $totalAmount                     = request('amount')+request('totalFees');
            //echo $totalAmount;exit();
            $payoutSetting                   = PayoutSetting::find($payout_setting_id);
            $payment_method                  = $payoutSetting->paymentMethod;
            $payment_method_info             = $payoutSetting->email?$payoutSetting->email:$payoutSetting->paymentMethod->name;
           
            //Save to wallet

            $walletIns                       = Wallet::where(['user_id' => $uid, 'currency_id' => $currency_id])->first();
            $walletIns->balance              = ($walletIns->balance - $totalAmount);
            $walletIns->save();

            $feeInfo                         = FeesLimit::where(['transaction_type_id' => Withdrawal, 'currency_id' => $walletIns->currency_id])->first();
            $feePercentage                   = ($amount * $feeInfo->charge_percentage) / 100;

            //Save to Withdrawal

            $withdrawal                      = new Withdrawal();
            $withdrawal->user_id             = $uid;
            $withdrawal->currency_id         = $walletIns->currency_id;
            $withdrawal->payment_method_id   = $payoutSetting->type;
            $withdrawal->uuid                = $uuid;
            $withdrawal->charge_percentage   = $feePercentage;
            $withdrawal->charge_fixed        = $feeInfo->charge_fixed;
            $withdrawal->subtotal            = $amount - ($withdrawal->charge_percentage + $withdrawal->charge_fixed);
            $withdrawal->amount              = $amount;
            $withdrawal->payment_method_info = $payment_method_info;
            $withdrawal->status              = 'Pending';
            $withdrawal->save();

            //Save to Transaction
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
            $transaction->payment_method_id        = $payoutSetting->type;

            $transaction->save();

            $success['status']                    = $this->successStatus;
            return response()->json(['success' => $success],$this->successStatus);
    }
    //Withdrawal Money Ends here

    //Accept request payment starts here
    public function getAcceptRequestEmail(){
        $tr_ref_id              = request('tr_ref_id');
        $success['status']      = $this->successStatus;
        $requestPayment         = RequestPayment::where('id',$tr_ref_id)->first();
        $success['email']       = $requestPayment->email;
        $success['amount']      = $requestPayment->amount;
        $success['currency']    = $requestPayment->currency->code;
        $success['currency_id'] = $requestPayment->currency->id;
        return response()->json(['success' => $success],$this->successStatus);
     }

      public function getAcceptRequestAmountLimit(){
        //echo "ddd";exit();
        $amount                   = request('amount');
        $currency_id              = request('currency_id');
        $user_id                  = request('user_id');
        $feesDetails              = FeesLimit::where(['transaction_type_id' => Request_To,'currency_id' => $currency_id])->first();
        
        $RequestAcceptorWallet          = Wallet::where(['user_id' => $user_id, 'currency_id' => $currency_id])->first();
        //d($RequestAcceptorWallet,1);
        if($RequestAcceptorWallet==''){
            $success['status']         = '401';
            $success['message']        = "You don't have the requested currency!";
            return response()->json(['success' => $success],$this->successStatus);
        }
        //Wallet Balance Limit Check Starts here
        
        //$wallets                  = Wallet::where(['is_default' => "Yes", 'user_id' => $user_id])->first();
        $wallets     = Wallet::where(['user_id' => $user_id, 'currency_id' => $currency_id])->first();
        $checkAmount = $amount+$feesDetails->charge_fixed+$feesDetails->charge_percentage;

        if(@$wallets){
            if((@$checkAmount) > (@$wallets->balance) || (@$wallets->balance<0)){                    
                    $success['message']    = "Sorry, not enough funds to perform the operation!";
                    $success['status']     = '401';
                    return response()->json(['success' => $success],$this->successStatus);   
            }

        }

        //Wallet Balance Limit Check Ends here

        //Amount Limit Check Starts here
        if(@$feesDetails){
            if(@$feesDetails->max_limit==NULL){
                if((@$amount<@$feesDetails->min_limit)){
                    $success['message']    = 'Minimum amount '.@$feesDetails->min_limit;
                    $success['status']     = '401';
                }else{
                    $success['status']     = $this->successStatus;
                }
            }else{
                if((@$amount<@$feesDetails->min_limit) || (@$amount>@$feesDetails->max_limit)){
                    $success['message']    = 'Minimum amount '.@$feesDetails->min_limit.' and Maximum amount '.@$feesDetails->max_limit;
                    $success['status']     = '401';
                }else{
                    $success['status']     = $this->successStatus;
                }
            }
        return response()->json(['success' => $success],$this->successStatus);   
        }else{
            $success['status']     = $this->successStatus; 
            return response()->json(['success' => $success],$this->successStatus);   

        }
        //Amount Limit Check Ends here
    }

    public function getAcceptFeesDetails(){
        $user_id                   = request('user_id');
        $amount                    = request('amount');
        $currency_id               = request('currency_id');
        $currency                  = Currency::where(['id' => $currency_id])->first();
        $feesDetails               = FeesLimit::where(['transaction_type_id' => Request_To, 'currency_id' => $currency_id])->first();
        $totalFess                 = (@$feesDetails->charge_percentage*$amount/100)+(@$feesDetails->charge_fixed);
        $success['totalAmount']    = number_format($amount+$totalFess,2);
        $success['totalFees']      = number_format($totalFess,2);
        $success['currSymbol']     = $currency->symbol;
        $success['currCode']       = $currency->code;
        $success['status']         = $this->successStatus;
        return response()->json(['success' => $success],$this->successStatus);
    }

    public function requestAcceptedConfirm()
    {

        $uid                           = request('user_id');
        $amount                        = request('amount');
        $tr_ref_id                     = request('tr_ref_id');
        $totalFee                      = request('totalFees');
        $currency_id                   = request('currency_id');
        $userInfo                      = User::where(['id' => $uid])->first();
        $receiverName                  = isset($userInfo) ? $userInfo->first_name . ' ' . $userInfo->last_name : '';
        
        //Save to Request Payment Table
        $RequestPayment                = RequestPayment::find($tr_ref_id);
        $RequestPayment->accept_amount = $amount;
        $RequestPayment->status        = "Success";
        $RequestPayment->save();

        //Update Request Creator Wallet
        $RequestSenderWallet          = Wallet::where(['user_id' => $RequestPayment->user_id, 'currency_id' => $currency_id])->first();
        $RequestSenderWallet->balance = ($RequestSenderWallet->balance + $amount);
        $RequestSenderWallet->save();

        //Update Request Acceptor Wallet
        $RequestAcceptorWallet          = Wallet::where(['user_id' => $uid, 'currency_id' => $currency_id])->first();
        /*if($RequestAcceptorWallet==''){
            $success['status']         = '401';
            $success['message']        = "You don't have the requested currency!";
            return response()->json(['success' => $success],$this->successStatus);
        }else{ 
            $RequestAcceptorWallet->balance = ($RequestAcceptorWallet->balance - ($totalFee));
            $RequestAcceptorWallet->save();
        }*/
        $RequestAcceptorWallet->balance = ($RequestAcceptorWallet->balance - ($totalFee+$amount));
        $RequestAcceptorWallet->save();
        //Update Request Creator Transaction Information
        $FeesLimit                        = FeesLimit::where(['currency_id' => $currency_id, 'transaction_type_id' => Request_To])->first();
        $transaction_C                    = Transaction::where(['user_id' => $RequestPayment->user_id, 'currency_id' => $currency_id, 'transaction_reference_id' => $RequestPayment->id, 'transaction_type_id' => Request_From])->first();
        $transaction_C->percentage        = 0;
        $transaction_C->charge_percentage = 0;
        $transaction_C->charge_fixed      = 0;
        $transaction_C->subtotal          = $amount;
        $t_total                          = $transaction_C->subtotal;
        $transaction_C->total             = $t_total;
        $transaction_C->status            = 'Success';
        $transaction_C->save();

        //Update Request Acceptor Transaction Information
        $transaction_A                    = Transaction::where(['user_id' => $RequestPayment->receiver_id, 'currency_id' => $currency_id, 'transaction_reference_id' => $RequestPayment->id, 'transaction_type_id' => Request_To])->first();
        $transaction_A->percentage        = @$FeesLimit->charge_percentage ? @$FeesLimit->charge_percentage : 0;
        $transaction_A->charge_percentage = @$FeesLimit->charge_percentage ? @$FeesLimit->charge_percentage*($amount/100) : 0;
        $transaction_A->charge_fixed      = @$FeesLimit->charge_fixed ? @$FeesLimit->charge_fixed: 0;
        $transaction_A->subtotal          = $amount;
        $t_total                          = $transaction_A->subtotal + ($transaction_A->charge_percentage + $transaction_A->charge_fixed);
        $transaction_A->total             = '-' . $t_total;
        $transaction_A->status            = 'Success';
        $transaction_A->save();
        //Setting details
        $soft_name        = Setting::where(['name'=>'name'])->first();
        $language         = Setting::where(['name' => 'default_language'])->first();
        $defualtCurrency  = Setting::where(['name' => 'default_currency'])->first();

        // Mail when request accepted
        $rp_accept_temp = EmailTemplate::where([
            'temp_id'     => 5,
            'language_id' => $language->value,
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
        $rp_msg = str_replace('{soft_name}', $soft_name->value, $rp_msg);

        /*if (App::environment() != 'local')
        {
            $this->email->sendEmail($RequestPayment->user->email, $rp_acc_sub, $rp_msg);
        }*/
        if (env('APP_MAIL', 'true')){
            $this->email->sendEmail($RequestPayment->user->email, $rp_acc_sub, $rp_msg);
        }
        $success['status']         = $this->successStatus;
        return response()->json(['success' => $success],$this->successStatus);

    }

     public function requestAcceptedCancel()
    {
        $id                   = request('tr_id');
        $TransactionA         = Transaction::find($id);
        $TransactionA->status = "Blocked";
        $TransactionA->save();
        $transaction_type_id  = $TransactionA->transaction_type_id==Request_To?Request_From:Request_To;
        $TransactionB         = Transaction::where(['transaction_reference_id' => $TransactionA->transaction_reference_id, 'transaction_type_id' => $transaction_type_id])->first();
        $TransactionB->status = "Blocked";
        $TransactionB->save();

        $RequestPayment         = RequestPayment::find($TransactionA->transaction_reference_id);
        $RequestPayment->status = "Blocked";
        $RequestPayment->save();

        $receiverName = $RequestPayment->user->first_name . ' ' . $RequestPayment->user->last_name;
        
        //Setting details
        $soft_name        = Setting::where(['name'=>'name'])->first();
        $language         = Setting::where(['name' => 'default_language'])->first();
        $defualtCurrency  = Setting::where(['name' => 'default_currency'])->first();
        
        // Mail when request cancelled
        $req_cancel_info = EmailTemplate::where([
            'temp_id'     => 8,
            'language_id' => $language->value,
        ])->select('subject', 'body')->first();

        // subject
        $req_cancel_sub = str_replace('{uuid}', $RequestPayment->uuid, $req_cancel_info->subject);
        $req_cancel_sub = str_replace('{status}', isset($RequestPayment->status) ? 'Cancelled' : '', $req_cancel_sub);

        // body
        $req_cancel_msg = str_replace('{user_id/receiver_id}', $RequestPayment->user->first_name . ' ' . $RequestPayment->user->last_name, $req_cancel_info->body);
        $req_cancel_msg = str_replace('{symbol}', $RequestPayment->currency->symbol, $req_cancel_msg);
        $req_cancel_msg = str_replace('{amount}', $RequestPayment->amount, $req_cancel_msg);
        $req_cancel_msg = str_replace('{status}', isset($RequestPayment->status) ? 'Cancelled' : '', $req_cancel_msg);
        $req_cancel_msg = str_replace('{message}', '', $req_cancel_msg);
        $req_cancel_msg = str_replace('{uuid}', $RequestPayment->uuid, $req_cancel_msg);
        $req_cancel_msg = str_replace('{pending/cancel/success/refund}', 'cancelled', $req_cancel_msg);
        $req_cancel_msg = str_replace('{created_at}', date('Y-m-d'), $req_cancel_msg);
        $req_cancel_msg = str_replace('{amount/accept_amount}', $RequestPayment->amount, $req_cancel_msg);
        $req_cancel_msg = str_replace('{user_title}', '', $req_cancel_msg);
        $req_cancel_msg = str_replace('{sender/receiver}', '', $req_cancel_msg);
        $req_cancel_msg = str_replace('{soft_name}', $soft_name->value, $req_cancel_msg);

        if (env('APP_MAIL', 'true'))
        {
            $this->email->sendEmail($RequestPayment->user->email, $req_cancel_sub, $req_cancel_msg);
        }

        $success['status'] = $this->successStatus;
        return response()->json(['success' => $success],$this->successStatus);

        //return json_encode($data);
    }

    //Accept request payment ends here


    //Get Currency List for Withdrawal

    public function withdrawalCurrencyList($activeCurrency,$feesLimitCurrency){
        $selectedCurrency = [];
        $i=0;
        foreach($activeCurrency as $aCurrency){
                foreach($feesLimitCurrency as $flCurrency){
                    if($aCurrency->id==$flCurrency->currency_id && $aCurrency->status=='Active' && $flCurrency->has_transaction=='Yes'){
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


    //Get User Updated Balance
    public function currentBalance(){
        $user_id                    = request('user_id');
        $wallet                     = App\Models\Wallet::where(['user_id' => $user_id, 'is_default' => 'Yes'])->first();
        $balance_with_code          = ($wallet->currency->code) . " " . number_format((float) $wallet->balance, 2, '.', '');
        $success['current_balance'] = $balance_with_code;
        $success['status']          = $this->successStatus;
        return response()->json(['success' => $success],$this->successStatus);
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
                    $selectedWallet[$i]['id']   = $aWallet->currency_id;
                    $selectedWallet[$i]['code'] = $aWallet->currency->code;
                    $i++;
                }
            }
        }
        return $selectedWallet;
    }
    public function requestWalletList($activeWallet, $feesLimitWallet)
    {
        $selectedWallet = [];
        $i              = 0;
        foreach ($activeWallet as $aWallet)
        {
            // dd($aWallet);
            foreach ($feesLimitWallet as $flWallet)
            {
                // dd($flWallet);
                if ($aWallet->id == $flWallet->currency_id && $flWallet->has_transaction == 'Yes')
                {
                    $selectedWallet[$i]['id']   = $aWallet->id;
                    $selectedWallet[$i]['code'] = $aWallet->code;
                    $i++;
                }
            }
        }
        return $selectedWallet;
    }

    public function currencyList($activeCurrency, $feesLimitCurrency)
    {
        $selectedCurrency = [];
        $i                = 0;
        foreach ($activeCurrency as $aCurrency)
        {
            foreach ($feesLimitCurrency as $flCurrency)
            {
                if ($aCurrency->id == $flCurrency->currency_id && $aCurrency->status == 'Active' && $aCurrency->default == 0 && $flCurrency->has_transaction == 'Yes')
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


