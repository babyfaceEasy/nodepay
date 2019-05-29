# CoinPayment

CoinPayment is a laravel module for handle transaction from [**CoinPayment**](https://www.coinpayments.net/index.php?ref=3dc0c5875304cc5cc1d98782c2741cb5) like a create transaction, history transaction, etc.
![Example](https://github.com/hexters/CoinPayment/blob/master/example.png?raw=true)
## Requirement
- Laravel ^5.6
- PHP >= ^7.1
- GuzzleHttp
- Nesbot/Carbon
## Installation
You can install the package via composer:
```
$ composer require hexters/coinpayment
```
Publishing vendor
```
$ php artisan vendor:publish --tag=coinpayment-publish
```
First you should add trait class on ```User``` model and use this trait ```Hexters\CoinPayment\Entities\CoinPaymentuserRelation``` check the example below:

```
    <?php
        namespace App;

        use Illuminate\Notifications\Notifiable;
        use Illuminate\Foundation\Auth\User as Authenticatable;
        use Hexters\CoinPayment\Entities\CoinPaymentuserRelation;

        class User extends Authenticatable {
            use Notifiable, CoinPaymentuserRelation;
            ...
```

Install CoinPayment configuration
```
$ php artisan coinpayment:install
```

Setting schedule for checking transaction succesed in your file ```app > console > kernel```. example:
```
...
    protected function schedule(Schedule $schedule) {
        // If IPN is enable set the schedule for ->daily()
        // And if IPN is disable set schedule for ->everyMinute()
         $schedule->command('coinpayment:transaction-check')
            ->daily();

    }
...
```
visit the [Documentation Schedule](https://laravel.com/docs/5.6/scheduling)

Install the table transaction
```
$ php artisan migrate
```
Installation finish.
## Getting Started
Create Button transaction. Example placed on your controller
```
use CoinPayment; // use outside the class
...
    /*
    *   @required true
    */
    $trx['amountTotal'] = 50; // USD
    $trx['note'] = 'Note for your transaction';

    /*
    *   @required true
    *   @example first item
    */
    $trx['items'][0] = [
        'descriptionItem' => 'Product one',
        'priceItem' => 10, // USD
        'qtyItem' => 2,
        'subtotalItem' => 20 // USD
    ];

    /*
    *   @example secound item
    */
    $trx['items'][1] = [
        'descriptionItem' => 'Product two',
        'priceItem' => 10, // USD
        'qtyItem' => 3,
        'subtotalItem' => 30 // USD
    ];

    /*
    *   if you want to remember your data at a later date, you can add the parameter below
    */
    $trx['payload'] = [
        // your cusotm array here
        'foo' => [
            'foo' => 'bar'
        ]
    ];

    $link_transaction = CoinPayment::url_payload($trx);
    ...
    /*
    *   On your balde
    *   <a href="{{ $link_transaction }}" target="_blank">Pay Now</a>
    */
...
```

Please except the route from csrf proccess, get the file ```app > Http > Middleware > VerifyCsrfToken.php```
```
    ...
    protected $except = [
        ...
        '/coinpayment/ipn'
        ...
    ];
    ...
```
Open file `app > Jobs > coinPaymentCallbackProccedJob.php` for handle transaction proccess

And Open `app > Jobs > IPNHandlerCoinPaymentJob.php` for handle IPN proccess


## Route Access
|Route Name|Route URL|Method|Description|
|---|---|:---:|---|
|`coinpayment.transaction.histories`|`/transactions/histories`|GET|Route for access transaction histories|
