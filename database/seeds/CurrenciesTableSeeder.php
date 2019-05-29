<?php

use App\Models\Currency;
use Illuminate\Database\Seeder;

class CurrenciesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Currency::truncate();
        Currency::insert([
            [
                'name'          => 'US Dollar',
                'symbol'        => '$',
                'code'          => 'USD',

                'hundreds_name' => 'one thousand',
                'rate'          => '0.05',
                'logo'          => '1530362317.jpg',
                'exchange_from' => 'local',
                'default'       => '1',

                'status'        => 'Active',
            ],
            [
                'name'          => 'Pound Sterling',
                'symbol'        => '£',
                'code'          => 'GBP',

                'hundreds_name' => 'one thousand',
                'rate'          => '0.75',
                'logo'          => '1525873787.jpg',
                'exchange_from' => 'api',
                'default'       => '0',

                'status'        => 'Active',
            ],
            [
                'name'          => 'Europe',
                'symbol'        => '€',
                'code'          => 'EUR',

                'hundreds_name' => 'one thousand',
                'rate'          => '0.85',
                'logo'          => '1529923387.jpg',
                'exchange_from' => 'local',
                'default'       => '0',

                'status'        => 'Active',
            ],
            [
                'name'          => 'Czech Republic Koruna',
                'code'          => 'CZK',
                'symbol'        => 'Kč',

                'hundreds_name' => 'one thousand',
                'rate'          => '78',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',

                'status'        => 'Active',
            ],

            [
                'name'          => 'Hong Kong Dollar',
                'code'          => 'HKD',
                'symbol'        => 'HK$',

                'hundreds_name' => 'one thousand',
                'rate'          => '12',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',

                'status'        => 'Active',
            ],
            [
                'name'          => 'Hungarian Forint',
                'code'          => 'HUF',
                'symbol'        => 'Ft',

                'hundreds_name' => 'one thousand',
                'rate'          => '1',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
            [
                'name'          => 'Indonesian Rupiah',
                'code'          => 'IDR',
                'symbol'        => 'Rp',
                'hundreds_name' => 'one thousand',
                'rate'          => '3',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
            [

                'name'          => 'Israeli New Sheqel',
                'code'          => 'ILS',
                'symbol'        => '₪',
                'hundreds_name' => 'one thousand',
                'rate'          => '3.54',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
            [
                'name'          => 'Japanese Yen',
                'code'          => 'JPY',
                'symbol'        => '¥',
                'hundreds_name' => 'one thousand',
                'rate'          => '2',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
            [
                'name'          => 'South Korean Won',
                'code'          => 'KRW',
                'symbol'        => '₩',

                'hundreds_name' => 'one thousand',
                'rate'          => '20',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',

            ],
            [
                'name'          => 'Norwegian Krone',
                'code'          => 'NOK',
                'symbol'        => 'kr',

                'hundreds_name' => 'one thousand',
                'rate'          => '8.13',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
            [
                'name'          => 'New Zealand Dollar',
                'code'          => 'NZD',
                'symbol'        => '$',

                'hundreds_name' => 'one thousand',
                'rate'          => '10',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
            [
                'name'          => 'Polish Zloty',
                'code'          => 'PLN',
                'symbol'        => 'zł',
                'hundreds_name' => 'one thousand',
                'rate'          => '1',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
            [
                'name'          => 'Russian Ruble',
                'code'          => 'RUB',
                'symbol'        => 'p',
                'hundreds_name' => 'one thousand',
                'rate'          => '57.58',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],

            [
                'name'          => 'Bangladeshi Taka',
                'code'          => 'BDT',
                'symbol'        => '৳',
                'hundreds_name' => 'one thousand',
                'rate'          => '84.21',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
            [
                'name'          => 'Indian Rupy',
                'code'          => 'INR',
                'symbol'        => '₹',
                'hundreds_name' => 'one thousand',
                'rate'          => '68.59',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
            [
                'name'          => 'Thai Baht',
                'code'          => 'THB',
                'symbol'        => '฿',
                'hundreds_name' => 'one thousand',
                'rate'          => '33.13',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
            [
                'name'          => 'Turkish Lira',
                'code'          => 'TRY',
                'symbol'        => '₺',
                'hundreds_name' => 'one thousand',
                'rate'          => '4.71',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
            [
                'name'          => 'New Taiwan Dollar',
                'code'          => 'TWD',
                'symbol'        => 'NT$',
                'hundreds_name' => 'one thousand',
                'rate'          => '30.52',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],

            [
                'name'          => 'Guinean franc',
                'symbol'        => 'FG',
                'code'          => 'GNF',
                'hundreds_name' => 'one thousand',
                'rate'          => '9017.40',
                'logo'          => null,
                'exchange_from' => 'local',
                'default'       => '0',
                'status'        => 'Active',
            ],
        ]);
    }
}
