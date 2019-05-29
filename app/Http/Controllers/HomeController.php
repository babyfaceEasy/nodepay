<?php

namespace App\Http\Controllers;

use App\Http\Helpers\Common;
use App\Models\Currency;
use App\Models\PaymentMethod;
use App\Models\Transaction;
use App\Models\MerchantPayment;
use App\Models\Merchant;
use App\Models\Wallet;
use Auth;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Omnipay\Omnipay;
use Session;
use Validator;

class HomeController extends Controller
{
    protected $helper;

    public function __construct()
    {
        $this->helper = new Common();
    }

    public function index()
    {
    	$data = [];
        $data['menu'] = 'home';
        return view('frontend.home.index', $data);
    }

    public function setLocalization(Request $request){
        if(!in_array($request->lang,['ru','en','ar','fr','pt','fr','es','tr','ch'])){
            return 0;
        }
        if(!$request->ajax())
            return 0;
        if ($request->lang) {
            Session::put('dflt_lang', $request->lang);
            App::setLocale($request->lang);
            Session::put('not_default','true');
            return 1;
        } else {
            return 0;
        }
    }
}
