<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Users\EmailController;
use App\Http\Helpers\Common;
use App\Models\EmailTemplate;
use App\Models\User;
use DB;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
     */

    use SendsPasswordResetEmails;
    protected $helper, $emailController;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
        $this->helper          = new Common();
        $this->emailController = new EmailController();
    }

    public function forgetPassword(Request $request)
    {
        $methodName = $request->getMethod();
        if ($methodName == "GET")
        {
            return view('frontend.auth.forgetPassword');
        }
        else
        {
            $email = $request->email;
            $user  = User::where('email', $email)->first();
            if (!$user)
            {
                $this->helper->one_time_message('error', __('Email Address does not match!'));
                return back();
            }

            $userData['email']      = $request->email;
            $userData['token']      = $token      = base64_encode(encryptIt(rand(1000000, 9999999) . '_' . $request->email));
            $userData['created_at'] = date('Y-m-d H:i:s');

            DB::table('password_resets')->insert($userData);

            $userFullName = $user->first_name . ' ' . $user->last_name;

            $this->sendPasswordResetEmail($request->email, $token, $userFullName); //email

            // if (!empty($user->carrierCode) && !empty($user->phone))
            // {
            //     $userCarrierCode = $user->carrierCode;
            //     $userPhone = $user->phone;
            //     $this->sendPasswordResetSms($userCarrierCode, $userPhone, $token, $userFullName); //sms
            // }
            $this->helper->one_time_message('success', __('Password reset link has been sent to your email address'));
            return back();
        }
    }

    public function sendPasswordResetEmail($toEmail, $token, $userFullName)
    {
        $userPasswordResetTempInfo = EmailTemplate::where([
            'temp_id'     => 18,
            'language_id' => getDefaultLanguage(),
            'type'        => 'email',
        ])->select('subject', 'body')->first();

        $englishUserPasswordResetTempInfo = EmailTemplate::where(['temp_id' => 18, 'lang' => 'en', 'type' => 'email'])->select('subject', 'body')->first();

        if (!empty($userPasswordResetTempInfo->subject) && !empty($userPasswordResetTempInfo->body))
        {
            $userPasswordResetTempInfo_sub = $userPasswordResetTempInfo->subject;
            $userPasswordResetTempInfo_msg = str_replace('{user}', $userFullName, $userPasswordResetTempInfo->body);
        }
        else
        {
            $userPasswordResetTempInfo_sub = $englishUserPasswordResetTempInfo->subject;
            $userPasswordResetTempInfo_msg = str_replace('{user}', $userFullName, $englishUserPasswordResetTempInfo->body);
        }
        $userPasswordResetTempInfo_msg = str_replace('{email}', $toEmail, $userPasswordResetTempInfo_msg);
        $userPasswordResetTempInfo_msg = str_replace('{password_reset_url}', url('password/resets', $token), $userPasswordResetTempInfo_msg);
        $userPasswordResetTempInfo_msg = str_replace('{soft_name}', getCompanyName(), $userPasswordResetTempInfo_msg);

        $this->emailController->setupEmailConfig();

        if (checkAppMailEnvironment())
        {
            $this->emailController->sendEmail($toEmail, $userPasswordResetTempInfo_sub, $userPasswordResetTempInfo_msg);
        }
    }

    /**
     * SMS
     */
    // public function sendPasswordResetSms($userCarrierCode, $userPhone, $token, $userFullName)
    // {
    //     $userPasswordResetTempInfoSms = EmailTemplate::where(['temp_id' => 18, 'language_id' => getDefaultLanguage(), 'type' => 'sms'])->select('subject', 'body')->first();

    //     $englishUserPasswordResetTempInfoSms = EmailTemplate::where(['temp_id' => 18, 'lang' => 'en', 'type' => 'sms'])->select('subject', 'body')->first();

    //     if (!empty($userPasswordResetTempInfoSms->subject) && !empty($userPasswordResetTempInfoSms->body))
    //     {
    //         $userPasswordResetTempInfoSms_sub = $userPasswordResetTempInfoSms->subject;
    //         $userPasswordResetTempInfoSms_msg = str_replace('{user}', $userFullName, $userPasswordResetTempInfoSms->body);
    //     }
    //     else
    //     {
    //         $userPasswordResetTempInfoSms_sub = $englishUserPasswordResetTempInfoSms->subject;
    //         $userPasswordResetTempInfoSms_msg = str_replace('{user}', $userFullName, $englishUserPasswordResetTempInfoSms->body);
    //     }
    //     $userPasswordResetTempInfoSms_msg = str_replace('{password_reset_url}', url('password/resets', $token), $userPasswordResetTempInfoSms_msg);

    //     if (checkAppSmsEnvironment())
    //     {
    //         if (getNexmoDetails()->is_nexmo_default == 'Yes' && getNexmoDetails()->nexmo_status == 'Active')
    //         {
    //             sendSMS(getNexmoDetails()->default_nexmo_phone_number, $userCarrierCode.$userPhone, $userPasswordResetTempInfoSms_msg);
    //         }
    //     }
    // }

    public function verifyToken($token)
    {
        if (!$token)
        {
            $this->helper->one_time_message('error', 'Token not found!');
            return back();
        }
        $reset = DB::table('password_resets')->where('token', $token)->first();
        if ($reset)
        {
            $data['token'] = $token;
            return view('frontend.auth.setPassword', $data);
        }
        else
        {
            $this->helper->one_time_message('error', __('Token session has been destroyed. Please try to reset again.'));
            return back();
        }
    }

    public function confirmNewPassword(Request $request)
    {
        $token    = $request->token;
        $password = $request->password;
        // d($request->all(),1);
        $confirm = DB::table('password_resets')->where('token', $token)->first();

        $user           = User::where('email', $confirm->email)->first();
        $user->password = Hash::make($password);
        $user->save();

        DB::table('password_resets')->where('token', $token)->delete();

        $this->helper->one_time_message('success', __('Password changed successfully.'));
        return redirect()->to('/login');
    }
}
