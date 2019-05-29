<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Users\EmailController;
use App\Http\Helpers\Common;
use App\Models\ActivityLog;
use App\Models\DeviceLog;
use App\Models\EmailTemplate;
use App\Models\Preference;
use App\Models\Setting;
use App\Models\User;
use App\Models\UserDetail;
use App\Models\VerifyUser;
use App\Models\Wallet;
use Auth;
use Carbon\Carbon;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Session;

class LoginController extends Controller
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
        $data['title'] = 'Login';

        if (Auth::check())
        {
            return redirect('/dashboard');
        }
        $general         = Setting::where(['type' => 'general'])->get(['value', 'name'])->toArray();
        $data['setting'] = $setting = $this->helper->key_value('name', 'value', $general);

        return view('frontend.auth.login', $data);
    }

    public function authenticate(Request $request)
    {
        // dd($request->all());

        //validaiton
        if ($request->has_captcha == 'Enabled' && $request->login_via == 'email_only')
        {
            $this->validate($request, [
                'email_only' => 'required',
                'password'   => 'required',
                'g-recaptcha-response' => 'required|captcha'
            ], [
                'g-recaptcha-response.required' => 'Captcha is required.',
                'g-recaptcha-response.captcha' => 'Please enter correct captcha.',
            ]);
        }
        elseif ($request->has_captcha == 'Enabled' && $request->login_via == 'phone_only')
        {
            $this->validate($request, [
                'phone_only' => 'required',
                'password'       => 'required',
                'g-recaptcha-response' => 'required|captcha'
            ], [
                'g-recaptcha-response.required' => 'Captcha is required.',
                'g-recaptcha-response.captcha' => 'Please enter correct captcha.',
            ]);
        }
        elseif ($request->has_captcha == 'Enabled' && $request->login_via == 'email_or_phone')
        {
            $this->validate($request, [
                'email_or_phone' => 'required',
                'password'       => 'required',
                'g-recaptcha-response' => 'required|captcha'
            ], [
                'g-recaptcha-response.required' => 'Captcha is required.',
                'g-recaptcha-response.captcha' => 'Please enter correct captcha.',
            ]);
        }
        else
        {
            $this->validate($request, [
                'password' => 'required',
            ]);
        }

        if ($request->login_via == 'email_only')
        {
            $loginValue = $request->input('email_only');
        }
        elseif ($request->login_via == 'phone_only')
        {
            $loginValue = $request->input('phone_only');
        }
        else
        {
            $loginValue = $request->input('email_or_phone');
        }

        //Get Login Type
        $login_type = $this->getLoginType($loginValue);
        // dd($login_type);

        if (!is_null($login_type))
        {
            //Change request type based on user input
            $request->merge([
                $login_type => $loginValue,
            ]);

            $data = $request->only($login_type, 'password');
            if (Auth::attempt($data))
            {
                // dd(checkVerificationMailStatus());
                // dd(auth()->user()->user_detail->email_verification);

                if (checkVerificationMailStatus() == 'Enabled' && auth()->user()->user_detail->email_verification == 0)
                {
                    // dd('wrong');
                    $verifyUser          = new VerifyUser();
                    $verifyUser->user_id = auth()->user()->id;
                    $verifyUser->token   = str_random(40);
                    $verifyUser->save();

                    //mail - temp -17
                    $englishUserVerificationEmailTempInfo = EmailTemplate::where(['temp_id' => 17, 'lang' => 'en', 'type' => 'email'])->select('subject', 'body')->first();
                    $userVerificationEmailTempInfo        = EmailTemplate::where([
                        'temp_id'     => 17,
                        'language_id' => getDefaultLanguage(),
                        'type'        => 'email',
                    ])->select('subject', 'body')->first();

                    if (!empty($userVerificationEmailTempInfo->subject) && !empty($userVerificationEmailTempInfo->body))
                    {
                        // subject
                        $userVerificationEmailTempInfo_sub = $userVerificationEmailTempInfo->subject;
                        $userVerificationEmailTempInfo_msg = str_replace('{user}', auth()->user()->first_name . ' ' . auth()->user()->last_name, $userVerificationEmailTempInfo->body); //p-1 - auth()->user()->first_name . ' ' . auth()->user()->last_name
                    }
                    else
                    {
                        $userVerificationEmailTempInfo_sub = $englishUserVerificationEmailTempInfo->subject;
                        $userVerificationEmailTempInfo_msg = str_replace('{user}', auth()->user()->first_name . ' ' . auth()->user()->last_name, $englishUserVerificationEmailTempInfo->body);
                    }
                    $userVerificationEmailTempInfo_msg = str_replace('{email}', auth()->user()->email, $userVerificationEmailTempInfo_msg);                                            //p-2 - auth()->user()->email
                    $userVerificationEmailTempInfo_msg = str_replace('{verification_url}', url('user/verify', auth()->user()->verifyUser->token), $userVerificationEmailTempInfo_msg); //p-3 - auth()->user()->verifyUser->token
                    $userVerificationEmailTempInfo_msg = str_replace('{soft_name}', getCompanyName(), $userVerificationEmailTempInfo_msg);

                    if (checkAppMailEnvironment())
                    {
                        $this->email->sendEmail(auth()->user()->email, $userVerificationEmailTempInfo_sub, $userVerificationEmailTempInfo_msg);
                    }
                    return redirect('/login')->with('status', __('We sent you an activation code. Check your email and click on the link to verify.'));
                }
                else
                {
                    // $preferences = Preference::get();
                    $preferences = Preference::where('field','!=','dflt_lang')->get();
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

                    Wallet::where(['user_id' => Auth::user()->id])->update(['is_default' => 'No']);
                    $chkWallet = Wallet::where(['user_id' => Auth::user()->id, 'currency_id' => $default_currency->value])->first();

                    if (empty($chkWallet))
                    {
                        $wallet              = new Wallet();
                        $wallet->user_id     = Auth::user()->id;
                        $wallet->currency_id = $default_currency->value;

                        $wallet->balance    = 0.00;
                        $wallet->is_default = 'Yes';
                        $wallet->save();
                    }
                    else
                    {
                        $wallet              = Wallet::find($chkWallet->id);
                        $wallet->currency_id = $default_currency->value;
                        $wallet->is_default  = 'Yes';
                        $wallet->save();
                    }

                    $log                  = [];
                    $log['user_id']       = Auth::check() ? Auth::user()->id : null;
                    $log['type']          = 'User';
                    $log['ip_address']    = $request->ip();
                    $log['browser_agent'] = $request->header('user-agent');
                    $log['created_at']    = \DB::raw('CURRENT_TIMESTAMP');
                    ActivityLog::create($log);

                    //user_detail - adding last_login_at and last_login_ip
                    auth()->user()->user_detail()->update([
                        'last_login_at' => Carbon::now()->toDateTimeString(),
                        'last_login_ip' => $request->getClientIp(),
                    ]);

                    //2fa
                    $two_step_verification = Preference::where(['category' => 'preference', 'field' => 'two_step_verification'])->first(['value'])->value;
                    $checkDeviceLog        = DeviceLog::where(['user_id' => auth()->user()->id, 'browser_fingerprint' => $request->browser_fingerprint])->first(['browser_fingerprint']);

                    \Session::put('browser_fingerprint', $request->browser_fingerprint); //putting browser_fingerprint on session to restrict users accessing dashboard

                    if (auth()->user()->user_detail->two_step_verification_type != "disabled" && $two_step_verification != "disabled")
                    {
                        if (auth()->user()->user_detail->two_step_verification_type == "google_authenticator")
                        {
                            if (!auth()->user()->user_detail->two_step_verification || empty($checkDeviceLog))
                            {
                                $google2fa                             = app('pragmarx.google2fa');
                                $registration_data                     = $request->all();
                                $registration_data["google2fa_secret"] = $google2fa->generateSecretKey();

                                $request->session()->flash('registration_data', $registration_data);

                                $QR_Image = $google2fa->getQRCodeInline(
                                    config('app.name'),
                                    auth()->user()->email,
                                    $registration_data['google2fa_secret']
                                );
                                $data = [
                                    'QR_Image' => $QR_Image,
                                    'secret'   => $registration_data['google2fa_secret'],
                                ];
                                return \Redirect::route('google2fa')->with(['data' => $data]);
                            }
                            else
                            {
                                return redirect('dashboard');
                            }
                        }
                        else
                        {
                            if (!auth()->user()->user_detail->two_step_verification || empty($checkDeviceLog))
                            {
                                $this->execute2fa();
                                return redirect('2fa');
                            }
                            else
                            {
                                return redirect('dashboard');
                            }
                        }
                    }
                    else
                    {
                        return redirect('dashboard');
                    }
                }
            }
            else
            {
                $this->helper->one_time_message('danger', __('Unable to login with provided credentials!'));
                return redirect('/login');
            }
        }
        else
        {
            $this->helper->one_time_message('danger', __('Unable to login with provided credentials!'));
            return redirect('/login');
        }
    }

    //Check user input type
    public function getLoginType($loginValue)
    {
        if (filter_var($loginValue, FILTER_VALIDATE_EMAIL))
        {
            $type = 'email';
        }
        elseif (preg_match('%^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/]?(?:#|ext\.?|extension|x)[\-\.\ \\\/]?(\d+))?$%i', $loginValue))
        {
            $type = 'phone';
        }
        else
        {
            $type = null;
        }
        return $type;
    }

    public function execute2fa()
    {
        $six_digit_random_number = six_digit_random_number();

        $userDetail                             = UserDetail::where(['user_id' => auth()->user()->id])->first();
        $userDetail->two_step_verification_code = $six_digit_random_number;
        $userDetail->save();

        if (auth()->user()->user_detail->two_step_verification_type == 'phone')
        {
            //sms
            $message = $six_digit_random_number . ' is your ' . getCompanyName() . ' 2-factor authentication code. ';

            if (!empty(auth()->user()->carrierCode) && !empty(auth()->user()->phone))
            {
                if (checkAppSmsEnvironment() == true)
                {
                    if (getNexmoDetails()->is_nexmo_default == 'Yes' && getNexmoDetails()->nexmo_status == 'Active')
                    {
                        sendSMS(getNexmoDetails()->default_nexmo_phone_number, auth()->user()->carrierCode . auth()->user()->phone, $message);
                    }
                }
            }
        }
        elseif (auth()->user()->user_detail->two_step_verification_type == 'email')
        {
            //email
            if (checkAppMailEnvironment())
            {
                $twoStepVerification = EmailTemplate::where([
                    'temp_id'     => 19,
                    'language_id' => getDefaultLanguage(),
                    'type'        => 'email',
                ])->select('subject', 'body')->first();

                $englishtwoStepVerification = EmailTemplate::where(['temp_id' => 19, 'lang' => 'en', 'type' => 'email'])->select('subject', 'body')->first();

                if (!empty($twoStepVerification->subject) && !empty($twoStepVerification->body))
                {
                    $twoStepVerification_sub = $twoStepVerification->subject;
                    $twoStepVerification_msg = str_replace('{user}', auth()->user()->first_name . ' ' . auth()->user()->last_name, $twoStepVerification->body);
                }
                else
                {
                    $twoStepVerification_sub = $englishtwoStepVerification->subject;
                    $twoStepVerification_msg = str_replace('{user}', auth()->user()->first_name . ' ' . auth()->user()->last_name, $englishtwoStepVerification->body);
                }
                $twoStepVerification_msg = str_replace('{code}', $six_digit_random_number, $twoStepVerification_msg);
                $twoStepVerification_msg = str_replace('{soft_name}', getCompanyName(), $twoStepVerification_msg);
                $this->email->sendEmail(auth()->user()->email, $twoStepVerification_sub, $twoStepVerification_msg);
            }
        }
    }



    // public function logout()
    // {
    //     Artisan::call('config:clear');
    //     Artisan::call('cache:clear');
    //     Artisan::call('view:clear');

    //     \Session::flush();
    //     Auth::logout();
    //     return redirect('login');
    // }

}
