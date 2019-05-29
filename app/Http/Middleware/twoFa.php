<?php

namespace App\Http\Middleware;

use App\Http\Controllers\Users\EmailController;
use App\Models\EmailTemplate;
use App\Models\UserDetail;
use Closure;

class twoFa
{
    protected $email;
    public function __construct(EmailController $email)
    {
        $this->email = $email;
    }

    public function handle($request, Closure $next)
    {
        if (twoStepVerification() != "disabled" && auth()->user()->user_detail->two_step_verification_type != "disabled")
        {
            if (!\Session::has('2fa'))
            {
                if (auth()->user()->user_detail->two_step_verification_type == "google_authenticator")
                {
                    if (!auth()->user()->user_detail->two_step_verification || empty(getBrowserFingerprint(auth()->user()->id, \Session::get('browser_fingerprint'))))
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
                            'secret' => $registration_data['google2fa_secret'],
                        ];
                        return \Redirect::route('google2fa')->with(['data' => $data]);
                    }
                }
                else
                {
                    if (empty(getBrowserFingerprint(auth()->user()->id, \Session::get('browser_fingerprint'))))
                    {
                        $this->executeTwoFa();
                        return redirect('2fa');
                    }
                }
            }
        }
        return $next($request);
    }

    public function executeTwoFa()
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
        # code...
    }
}
