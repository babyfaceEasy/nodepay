<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Country;
use App\Models\RequestPayment;
use App\Models\User;
use App\Models\UserDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public $successStatus      = 200;
    public $unauthorisedStatus = 401;
    public function login(Request $request)
    {
        //d($request->all(),1);
        if (Auth::attempt(['email' => request('email'), 'password' => request('password')]))
        {
            $user                         = Auth::user();
            $userName                     = $user->first_name . ' ' . $user->last_name;
            $success['user_id']           = $user->id;
            $success['token']             = $user->createToken($userName)->accessToken;
            $success['status']            = $this->successStatus;
            $success['first_name']        = $user->first_name;
            $success['last_name']         = $user->last_name;
            $success['username']          = $user->username;
            $success['email']             = $user->email;
            $success['phone']             = $user->phone;
            $success['available_balance'] = current_balance();
            return response()->json(['success' => $success], $this->successStatus);
        }
        else
        {
            //d($request->all(),1);
            $success['status']  = $this->unauthorisedStatus;
            $success['message'] = "Invalid email & credentials";
            return response()->json(['success' => $success], $this->unauthorisedStatus);
        }
    }
    /*
    Header
    Accept: application/json
    Authorization: Bearer 'token'
     */
    public function details()
    {
        $user = Auth::user();
        return response()->json(['success' => $user], $this->successStatus);
    }

    //Fetch Specific User Profile Details
    public function getUserProfile()
    {
        $user_id                       = request('user_id');
        $user                          = User::where(['id' => $user_id])->first();
        $success['status']             = $this->successStatus;
        $success['user']               = $user;
        $success['user']['country_id'] = $user->user_detail->country->id;
        $success['user']['address']    = $user->user_detail->address_1;
        $success['user']['city']       = $user->user_detail->city;
        $success['user']['state']      = $user->user_detail->state;
        $success['user']['timezone']   = $user->user_detail->timezone;
        $success['country']            = Country::get();
        $success['timezones']          = phpDefaultTimeZones();
        return response()->json(['success' => $success], $this->successStatus);
    }

    //Update Specific User Profile Details
    public function updateUserProfile()
    {
        $user             = User::find(request('user_id'));
        $user->first_name = request('first_name');
        $user->last_name  = request('last_name');
        $user->email      = request('email');
        //$user->phone      = request('phone');
        $user->phrase = request('phrase');
        $user->save();
        //Update User Details Table
        $userDetail             = UserDetail::find(request('user_id'));
        $userDetail->country_id = request('country_id');
        $userDetail->address_1  = request('address');
        $userDetail->city       = request('city');
        $userDetail->state      = request('state');
        $userDetail->timezone   = request('timezone');
        $userDetail->save();
        $success['status'] = $this->successStatus;
        return response()->json(['success' => $success], $this->successStatus);
    }
    //Grab specific user profile details based on email address.
    public function getUserSpecificProfile()
    {
        if (request('type') == 'requestAccept')
        {
            $tr_ref_id         = request('tr_ref_id');
            $requestPayment    = RequestPayment::where(['id' => $tr_ref_id])->first();
            $success['status'] = $this->successStatus;
            $success['user']   = $requestPayment->user;
            return response()->json(['success' => $success], $this->successStatus);
        }
        else
        {
            $email             = request('email');
            $user              = User::where(['email' => $email])->first();
            $success['status'] = $this->successStatus;
            $success['user']   = $user;
            return response()->json(['success' => $success], $this->successStatus);
        }
    }

    public function logout()
    {
        Auth::logout();
        $success['status']  = $this->successStatus;
        $success['message'] = "You have been successfully logout!";
        return response()->json(['success' => $success], $this->successStatus);
    }
}
