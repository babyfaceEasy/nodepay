<?php
namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Meta;
use App\Models\Pages;
use Illuminate\Support\Facades\Input;

class ContentController extends Controller
{
    public function __construct()
    {

    }
    protected $data = [];

    public function pageDetail($url)
    {
        $data['menu'] = 'deposit';

        if ($url == 'send-money')
        {

            $data['pageInfo']  = 'Request Money';
            $data['exception'] = Meta::where('url', $url)->first();
            $data['menu']      = 'send-money';
            return view('frontend.pages.send-money', $data);

        }
        elseif ($url == 'request-money')
        {

            $data['pageInfo']  = 'Request Money';
            $data['exception'] = Meta::where('url', $url)->first();
            $data['menu']      = 'request-money';
            return view('frontend.pages.request-money', $data);

        }
        elseif ($url == 'developer')
        {
            $data['pageInfo']  = 'Developer';
            $data['exception'] = Meta::where('url', $url)->first();
            $data['menu']      = 'Developer';
            $type              = Input::get('type');
            if ($type == 'express')
            {
                return view('frontend.pages.express', $data);
            }
            else
            {
                return view('frontend.pages.standard', $data);
            }
        }
        else
        {
            $info = Pages::where(['url' => $url])->first();

            if (empty($info))
            {
                abort(404);
            }
            $data['pageInfo']  = $info;
            $data['exception'] = Meta::where('url', $url)->first();
            $data['menu']      = $url;
            return view('frontend.pages.detail', $data);
        }
    }

    public function downloadPackage()
    {
        return response()->download(\Storage::disk('local')->path('php-sdk.zip'));
    }
}
