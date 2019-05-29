<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Users\EmailController;
use App\Http\Helpers\Common;
use App\Models\Merchant;
use App\Models\MerchantGroup;
use App\Models\MerchantPayment;
use App\Models\User;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Image;
use Validator;

class MerchantController extends Controller
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
        $data['menu']          = 'merchant';
        $data['sub_menu']      = 'merchant';
        $data['content_title'] = 'Merchant';
        $data['icon']          = 'user';
        $data['list']          = $merchants          = Merchant::with('appInfo')->where(['user_id' => Auth::user()->id])->orderBy('id', 'desc')->paginate(10);
        // dd($merchants);

        return view('user_dashboard.Merchant.list', $data);
    }

    public function add()
    {
        $data['menu']     = 'merchant';
        $data['sub_menu'] = 'merchant';

        // $data['uuid'] = unique_code();
        return view('user_dashboard.Merchant.add', $data);
    }

    public function store(Request $request)
    {
        $rules = array(
            'business_name' => 'required|unique_merchant_business_name',
            'site_url'      => 'required|url',
            'type'          => 'required',
            'note'          => 'required',
            'logo'          => 'mimes:png,jpg,jpeg,gif,bmp',
        );

        $fieldNames = array(
            'business_name' => 'Business Name',
            'site_url'      => 'Site url',
            'type'          => 'Type',
            'note'          => 'Note',
            'logo'          => 'The file must be an image (png, jpg, jpeg, gif,bmp)',
        );

        $validator = Validator::make($request->all(), $rules);
        $validator->setAttributeNames($fieldNames);

        if ($validator->fails())
        {
            return back()->withErrors($validator)->withInput();
        }
        else
        {
            DB::beginTransaction();
            $filename = null;
            $picture  = $request->logo;

            if (isset($picture))
            {
                $dir = public_path("/user_dashboard/merchant/");
                $ext = $picture->getClientOriginalExtension();
                // dd($ext);
                $filename = time() . '.' . $ext;

                if ($ext == 'png' || $ext == 'jpg' || $ext == 'jpeg' || $ext == 'gif' || $ext == 'bmp')
                {
                    $img = Image::make($picture->getRealPath());
                    $img->fit(100, 100, function ($constraint)
                    {
                        $constraint->aspectRatio();
                    })->save($dir . '/' . $filename);
                    $img->fit(70, 70, function ($constraint)
                    {
                        $constraint->aspectRatio();
                    })->save($dir . '/thumb/' . $filename);
                }
                else
                {
                    $this->helper->one_time_message('error', 'Invalid Image Format!');
                }
            }

            $merchantGroup = MerchantGroup::where(['is_default' => 'Yes'])->select('id', 'fee')->first();

            $Merchant          = new Merchant();
            $Merchant->user_id = Auth::user()->id;

            $Merchant->merchant_group_id = isset($merchantGroup) ? $merchantGroup->id : null;

            $Merchant->business_name = $request->business_name;
            $Merchant->site_url      = $request->site_url;

            $uuid                    = unique_code();
            $Merchant->merchant_uuid = $uuid;

            $Merchant->type = $request->type;
            $Merchant->note = $request->note;
            $Merchant->logo = $filename;

            $Merchant->fee = isset($merchantGroup) ? $merchantGroup->fee : 0.00;

            // dd($Merchant);
            $Merchant->save();

            if (strtolower($request->type) == 'express')
            {
                try {
                    $Merchant->appInfo()->create([
                        'client_id'     => str_random(30),
                        'client_secret' => str_random(100),
                    ]);
                }
                catch (\Exception $ex)
                {
                    // try {
                    //     $Merchant->appInfo()->create([
                    //         'client_id'     => str_random(30),
                    //         'client_secret' => str_random(100),
                    //     ]);
                    // }
                    // catch (\Exception $ex)
                    // {
                    //     DB::rollBack();
                    //     $this->helper->one_time_message('error', __('Client id must be unique. Please try again!'));
                    //     return back();
                    // }
                    DB::rollBack();
                    $this->helper->one_time_message('error', __('Client id must be unique. Please try again!'));
                    return back();
                }
            }
            DB::commit();
            $this->helper->one_time_message('success', __('Merchant Created Successfully!'));
            return redirect('merchants');
        }
    }

    public function edit($id)
    {
        $data['menu']          = 'merchant';
        $data['sub_menu']      = 'merchant';
        $data['content_title'] = 'Merchant';
        $data['icon']          = 'user';
        $data['merchant']      = $merchant      = Merchant::find($id);

        if (!isset($merchant) || $merchant->user_id != Auth::user()->id)
        {
            abort(404);
        }
        return view('user_dashboard.Merchant.edit', $data);
    }

    public function update(Request $request)
    {
        $rules = array(
            // 'business_name'       => 'required|unique_merchant_business_name' . $request->id,
            'business_name' => 'required|unique:merchants,business_name,' . $request->id,
            'site_url'      => 'required|url',
            'note'          => 'required',
            'logo'          => 'mimes:png,jpg,jpeg,gif,bmp',
        );

        $fieldNames = array(
            'business_name' => 'Business Name',
            'site_url'      => 'Site url',
            'note'          => 'Note',
            'logo'          => 'The file must be an image (png, jpg, jpeg, gif,bmp)',
        );

        $validator = Validator::make($request->all(), $rules);
        $validator->setAttributeNames($fieldNames);

        if ($validator->fails())
        {
            return back()->withErrors($validator)->withInput();
        }
        else
        {
            $picture  = $request->logo;
            $filename = null;
            if (isset($picture))
            {
                $dir      = public_path("/user_dashboard/merchant/");
                $ext      = $picture->getClientOriginalExtension();
                $filename = time() . '.' . $ext;

                if ($ext == 'png' || $ext == 'jpg' || $ext == 'jpeg' || $ext == 'gif' || $ext == 'bmp')
                {
                    $img = Image::make($picture->getRealPath());
                    $img->save($dir . '/' . $filename);
                    $img->fit(100, 100, function ($constraint)
                    {
                        $constraint->aspectRatio();
                    })->save($dir . '/thumb/' . $filename);

                }
                else
                {
                    $this->helper->one_time_message('error', 'Invalid Image Format!');
                }
            }

            $Merchant                = Merchant::find($request->id);
            $Merchant->business_name = $request->business_name;
            $Merchant->site_url      = $request->site_url;
            $Merchant->note          = $request->note;
            if ($filename != null)
            {
                $Merchant->logo = $filename;
            }
            $Merchant->save();
            $this->helper->one_time_message('success', __('Merchant Updated Successfully!'));
            return redirect('merchants');
        }
    }

    public function detail($id)
    {
        $data['menu']          = 'merchant';
        $data['sub_menu']      = 'merchant';
        $data['content_title'] = 'Merchant';
        $data['icon']          = 'user';
        $data['merchant']      = $merchant      = Merchant::find($id);

        if (!isset($merchant) || $merchant->user_id != Auth::user()->id)
        {
            abort(404);
        }

        return view('user_dashboard.Merchant.detail', $data);
    }

    public function payments()
    {
        $data['menu']              = 'merchant_payment';
        $data['sub_menu']          = 'merchant_payment';
        $data['content_title']     = 'Merchant payments';
        $data['icon']              = 'user';
        $merchant                  = Merchant::where('user_id', Auth::user()->id)->pluck('id')->toArray();
        $data['merchant_payments'] = MerchantPayment::whereIn('merchant_id', $merchant)->orderBy('id', 'desc')->paginate(15);
        return view('user_dashboard.Merchant.payments', $data);
    }
}
