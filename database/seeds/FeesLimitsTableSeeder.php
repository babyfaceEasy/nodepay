<?php

use App\Models\FeesLimit;
use Illuminate\Database\Seeder;

class FeesLimitsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'currency_id'         => 1,
                'transaction_type_id' => 1,
                'charge_percentage'   => 0.00,
                'charge_fixed'        => 0.00,
                'min_limit'           => 1.00,
                'max_limit'           => NULL,
                'has_transaction'      => 'Yes',
            ],
            [
                'currency_id'         => 1,
                'transaction_type_id' => 2,
                'charge_percentage'   => 0.00,
                'charge_fixed'        => 0.00,
                'min_limit'           => 1.00,
                'max_limit'           => NULL,
                'has_transaction'      => 'Yes',
            ],
            [
                'currency_id'         => 1,
                'transaction_type_id' => 3,
                'charge_percentage'   => 0.00,
                'charge_fixed'        => 0.00,
                'min_limit'           => 1.00,
                'max_limit'           => NULL,
                'has_transaction'      => 'Yes',
            ],
            [
                'currency_id'         => 1,
                'transaction_type_id' => 5,
                'charge_percentage'   => 0.00,
                'charge_fixed'        => 0.00,
                'min_limit'           => 1.00,
                'max_limit'           => NULL,
                'has_transaction'      => 'Yes',
            ],
            [
                'currency_id'         => 1,
                'transaction_type_id' => 10,
                'charge_percentage'   => 0.00,
                'charge_fixed'        => 0.00,
                'min_limit'           => 1.00,
                'max_limit'           => NULL,
                'has_transaction'      => 'Yes',
            ],
        ];
        FeesLimit::insert($data);
    }
}
