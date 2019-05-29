<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FeesLimit extends Model
{
    protected $table    = 'fees_limits';
    protected $fillable = [
        'currency_id',
        'transaction_type_id',
        'charge_percentage',
        'charge_fixed',
        'min_limit',
        'max_limit',
        'has_transaction',
    ];

    public function currency()
    {
        return $this->belongsTo(Currency::class, 'currency_id');
    }

    public function transaction_type()
    {
        return $this->belongsTo(TransactionType::class, 'transaction_type_id');
    }
}
