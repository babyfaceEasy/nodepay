<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Users\EmailController;
use App\Http\Helpers\Common;
use App\Models\Country;
use App\Models\EmailTemplate;
use App\Models\Permission;
use App\Models\PermissionRole;
use App\Models\RequestPayment;
use App\Models\Role;
use App\Models\RoleUser;
use App\Models\Setting;
use App\Models\Transaction;
use App\Models\Transfer;
use App\Models\User;
use App\Models\UserDetail;
use App\Models\VerifyUser;
use App\Models\Wallet;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Validator;

class RegisterController extends Controller
{
    protected $helper;
    protected $email;

    public function __construct()
    {
        $this->helper = new Common();
        $this->email  = new EmailController();
    }

    public function create()
    {
        $data['title'] = 'Register';

        if (Auth::check())
        {
            return redirect('/dashboard');
        }

        $data['checkMerchantRole'] = $checkMerchantRole = Role::where(['customer_type' => 'merchant'])->first();
        // dd($checkMerchantRole);

        return view('frontend.auth.register', $data);
    }

    public function store(Request $request)
    {
        if ($_POST)
        {

            // dd($request->all());

            $rules = array(
                'first_name'            => 'required',
                'last_name'             => 'required',
                'email'                 => 'required|email|unique:users,email',
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
                // dd($request->type);

                $users = new User();

                $users->type = $request->type; //new

                $users->first_name = $request->first_name;
                $users->last_name  = $request->last_name;
                $users->email      = $request->email;

                $formattedPhone = str_replace('+' . $request->carrierCode, "", $request->formattedPhone);
                if (!empty($request->phone))
                {
                    $users->phone          = preg_replace("/[\s-]+/", "", $formattedPhone);
                    $users->defaultCountry = $request->defaultCountry;
                    $users->carrierCode    = $request->carrierCode;
                }
                else
                {
                    $users->phone          = null;
                    $users->defaultCountry = null;
                    $users->carrierCode    = null;
                }
                $users->password = Hash::make($request->password);

                //new
                if ($request->type == 'user')
                {
                    $role = Role::select('id')->where(['customer_type' => 'user', 'user_type' => 'User', 'is_default' => 'Yes'])->first();
                }
                else
                {
                    // $role = Role::select('id')->where(['name' => 'Merchant Regular', 'user_type' => 'User'])->first();
                    $role = Role::select('id')->where(['customer_type' => 'merchant', 'user_type' => 'User'])->first();
                    if (!empty($role))
                    {
                        $checkPermission = Permission::where(['user_type' => 'User'])->get(['id']); //checkPermission
                        if (!empty($checkPermission))
                        {
                            foreach ($checkPermission as $cp)
                            {
                                $checkPermissionRole = PermissionRole::where(['permission_id' => $cp->id, 'role_id' => $role->id]); //checkPermissionRole
                                if (!empty($checkPermissionRole))
                                {
                                    PermissionRole::firstOrCreate(['permission_id' => $cp->id, 'role_id' => $role->id]);
                                }
                            }
                        }
                    }
                }
                $users->role_id = $role->id;
                $users->save();

                RoleUser::insert(['user_id' => $users->id, 'role_id' => $role->id, 'user_type' => 'User']); // Assigning user type and role to new user

                $UserDetail          = new UserDetail();
                $UserDetail->user_id = $users->id;
                $randomCountry       = Country::first(['id']);
                $timezone            = Setting::where('name', 'default_timezone')->first();
                if (!empty($randomCountry))
                {
                    $UserDetail->country_id = $randomCountry->id;
                }
                $UserDetail->timezone = $timezone->value;
                $UserDetail->save();

                $default_currency = Setting::where('name', 'default_currency')->first(['value']); // default_currency

                // Wallet creation
                $wallet              = new Wallet();
                $wallet->user_id     = $users->id;
                $wallet->currency_id = $default_currency->value;
                $wallet->balance     = 0.00;
                $wallet->is_default  = 'Yes';
                $wallet->save();

                /**
                 * Entry for unknown transfer
                 */
                $unknownTransferTransaction = Transaction::where(['email' => $users->email, 'user_type' => 'unregistered'])
                    ->whereIn('transaction_type_id', [Transferred, Received])
                    ->select('transaction_reference_id', 'email')->get();

                if ($unknownTransferTransaction)
                {
                    foreach ($unknownTransferTransaction as $key => $value)
                    {
                        $transfer = Transfer::where([
                            'receiver_id' => null,
                            'id'          => $value->transaction_reference_id,
                            'email'       => $value->email,
                        ])->select('amount', 'currency_id')->first();

                        if (isset($transfer))
                        {
                            $transferInstance              = Transfer::find($value->transaction_reference_id);
                            $transferInstance->receiver_id = $users->id;
                            $transferInstance->status      = 'Success';
                            $transferInstance->save();

                            Transaction::where([
                                'transaction_reference_id' => $value->transaction_reference_id,
                                'transaction_type_id'      => Transferred,
                            ])->update([
                                'end_user_id' => $users->id,
                                'user_type'   => 'registered',
                                'status'      => 'Success',
                            ]);

                            Transaction::where([
                                'transaction_reference_id' => $value->transaction_reference_id,
                                'transaction_type_id'      => Received,
                            ])->update([
                                'user_id'   => $users->id,
                                'user_type' => 'registered',
                                'status'    => 'Success',
                            ]);

                            $unknownTransferWallet = Wallet::where(['user_id' => $users->id, 'currency_id' => $transfer->currency_id])->first();

                            if (empty($unknownTransferWallet))
                            {
                                $wallet              = new Wallet();
                                $wallet->user_id     = $users->id;
                                $wallet->currency_id = $transfer->currency_id;

                                if ($wallet->currency_id == $default_currency->value)
                                {
                                    $wallet->is_default = 'Yes';
                                }
                                else
                                {
                                    $wallet->is_default = 'No';
                                }
                                $wallet->balance = $transfer->amount;
                                $wallet->save();
                            }
                            else
                            {
                                $wallet              = Wallet::find($unknownTransferWallet->id);
                                $wallet->user_id     = $users->id;
                                $wallet->currency_id = $transfer->currency_id;
                                $wallet->balance     = $unknownTransferWallet->balance + $transfer->amount;
                                $wallet->save();
                            }
                        }
                    }
                }

                /**
                 * Entry for unknown request payment
                 */
                $unknownRequestTransaction = Transaction::where(['email' => $users->email, 'user_type' => 'unregistered'])
                    ->whereIn('transaction_type_id', [Request_From, Request_To])
                    ->select('transaction_reference_id', 'email')->get();

                if ($unknownRequestTransaction)
                {
                    foreach ($unknownRequestTransaction as $key => $value)
                    {
                        $request_payment = RequestPayment::where([
                            'receiver_id' => null,
                            'id'          => $value->transaction_reference_id,
                            'email'       => $value->email,
                        ])->select('currency_id')->first();

                        if (isset($request_payment))
                        {
                            $request_paymentInstance              = RequestPayment::find($value->transaction_reference_id);
                            $request_paymentInstance->receiver_id = $users->id;
                            $request_paymentInstance->save();

                            Transaction::where([
                                'transaction_reference_id' => $value->transaction_reference_id,
                                'transaction_type_id'      => Request_From,
                            ])->update([
                                'end_user_id' => $users->id,
                                'user_type'   => 'registered',
                            ]);

                            Transaction::where([
                                'transaction_reference_id' => $value->transaction_reference_id,
                                'transaction_type_id'      => Request_To,
                            ])->update([
                                'user_id'   => $users->id,
                                'user_type' => 'registered',
                            ]);

                            $unknownRequestWallet = Wallet::where(['user_id' => $users->id, 'currency_id' => $request_payment->currency_id])->first();

                            if (empty($unknownRequestWallet))
                            {
                                $wallet              = new Wallet();
                                $wallet->user_id     = $users->id;
                                $wallet->currency_id = $request_payment->currency_id;

                                if ($wallet->currency_id == $default_currency->value)
                                {
                                    $wallet->is_default = 'Yes';
                                }
                                else
                                {
                                    $wallet->is_default = 'No';
                                }
                                $wallet->balance = 0.00;
                                $wallet->save();
                            }
                            else
                            {
                                $wallet              = Wallet::find($unknownRequestWallet->id);
                                $wallet->user_id     = $users->id;
                                $wallet->currency_id = $request_payment->currency_id;
                                if ($wallet->currency_id == $default_currency->value)
                                {
                                    $wallet->is_default = 'Yes';
                                }
                                else
                                {
                                    $wallet->is_default = 'No';
                                }
                                $wallet->save();
                            }
                        }
                    }
                }

                //email_verification
                if (!$users->user_detail->email_verification)
                {
                    if (checkVerificationMailStatus() == "Enabled")
                    {
                        $verifyUser          = new VerifyUser();
                        $verifyUser->user_id = $users->id;
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
                            $userVerificationEmailTempInfo_msg = str_replace('{user}', $users->first_name . ' ' . $users->last_name, $userVerificationEmailTempInfo->body); //p-1 - $users->first_name . ' ' . $users->last_name
                        }
                        else
                        {
                            $userVerificationEmailTempInfo_sub = $englishUserVerificationEmailTempInfo->subject;
                            $userVerificationEmailTempInfo_msg = str_replace('{user}', $users->first_name . ' ' . $users->last_name, $englishUserVerificationEmailTempInfo->body);
                        }
                        $userVerificationEmailTempInfo_msg = str_replace('{email}', $users->email, $userVerificationEmailTempInfo_msg);                                            //p-2 - $users->email
                        $userVerificationEmailTempInfo_msg = str_replace('{verification_url}', url('user/verify', $users->verifyUser->token), $userVerificationEmailTempInfo_msg); //p-3 - $users->verifyUser->token
                        $userVerificationEmailTempInfo_msg = str_replace('{soft_name}', getCompanyName(), $userVerificationEmailTempInfo_msg);

                        if (checkAppMailEnvironment())
                        {
                            $this->email->sendEmail($users->email, $userVerificationEmailTempInfo_sub, $userVerificationEmailTempInfo_msg);
                        }
                        return redirect('/login')->with('status', __('We sent you an activation code. Check your email and click on the link to verify.'));
                    }
                    else
                    {
                        $this->helper->one_time_message('success', __('Registration Successful!'));
                        return redirect('/login');
                    }
                }
                else
                {
                    $this->helper->one_time_message('success', __('Registration Successful!'));
                    return redirect('/login');
                }
            }
        }
        $this->helper->one_time_message('success', __('Registration Successful!'));
        return redirect('/login');
    }

    public function verifyUser($token)
    {
        $verifyUser = VerifyUser::where('token', $token)->first();
        if (isset($verifyUser))
        {
            if (!$verifyUser->user->user_detail->email_verification)
            {
                $verifyUser->user->user_detail->email_verification = 1;
                $verifyUser->user->user_detail->save();
                $status = __("Your account is verified. You can now login.");
            }
            else
            {
                $status = __("Your account is already verified. You can now login.");
            }
        }
        else
        {
            return redirect('/login')->with('warning', __("Sorry your email cannot be identified."));
        }
        return redirect('/login')->with('status', $status);
    }

    public function checkUserRegistrationEmail(Request $request)
    {
        $email = User::where(['email' => $request->email])->exists();
        if ($email)
        {
            $data['status'] = true;
            $data['fail']   = __('The email has already been taken!');
        }
        else
        {
            $data['status']  = false;
            $data['success'] = "Email Available!";
        }
        return json_encode($data);
    }

    public function registerDuplicatePhoneNumberCheck(Request $request)
    {
        if (isset($request->carrierCode))
        {
            $user = User::where(['phone' => $request->phone, 'carrierCode' => $request->carrierCode])->first(['phone', 'carrierCode']);
        }
        else
        {
            $user = User::where(['phone' => $request->phone])->first(['phone', 'carrierCode']);
        }

        if (!empty($user->phone) && !empty($user->carrierCode))
        {
            $data['status'] = true;
            $data['fail']   = __("The phone number has already been taken!");
        }
        else
        {
            $data['status']  = false;
            $data['success'] = __("The phone number is Available!");
        }
        return json_encode($data);
    }
}
