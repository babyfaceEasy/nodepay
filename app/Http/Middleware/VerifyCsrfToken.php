<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = [
        'merchant/api/*',
        'payment/form',
        'deposit/payumoney_success',
        'payment/payumoney_success',
        '/admin/dispute/change_reply_status',
        'ticket/change_reply_status',
        'request_payment/cancel',
        'deposit/ipn/perfect_money',
        // 'deposit/payeer/payment/success',
        'deposit/payeer/payment/status',
    ];
}
