<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AppTransactionsInfo extends Model
{
    protected $fillable=['app_id','payment_method',
        'amount','currency','return_url','cancel_url','grant_id','token','expires_in'];

    public function app(){
        return $this->belongsTo(MerchantApp::class,'app_id','id');
    }
}
