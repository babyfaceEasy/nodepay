<?php

namespace App\Http\Middleware;

use App;
use Closure;
use Session;

class Locale
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure                 $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        if (env('APP_INSTALL'))
        {
            if (!session('dflt_lang'))
            {
                $pre = App\Models\Setting::where(['name' => 'default_language'])->first();
                $cu  = App\Models\Language::find($pre->value);
                session(['dflt_lang' => $cu->short_name]);
            }
        }

        if (Session::get('dflt_lang'))
        {
            App::setLocale(Session::get('dflt_lang'));
        }
        else
        {
            if (env('APP_INSTALL'))
            {
                $lang = getLanguageDefault();
                App::setLocale($lang->short_name);
                Session::put('dflt_lang', $lang->short_name);
            }
            // App::setLocale('en');
        }
        return $next($request);
    }
}
