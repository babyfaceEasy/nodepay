<?php
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */

// Route::group([
//     'middleware' => ['auth:api'],
// ], function ()
// {
//     Route::apiResources([
//         'transactions' => 'TransactionController',
//         'users'        => 'UserController',
//         'currencies'   => 'CurrencyController',
//     ]);
// });

/*Route::group([
'namespace'  => 'Api',
'middleware' => ['auth:api'],
], function ()
{
Route::apiResources([
// 'transactions' => 'TransactionController',
// 'users'        => 'UserController',
// 'currencies'   => 'CurrencyController',
]);

});*/

Route::post('login', 'Api\LoginController@login');
Route::get('get-user-profile', 'Api\LoginController@getUserProfile');
Route::post('update-user-profile', 'Api\LoginController@updateUserProfile');
Route::post('logout', 'Api\LoginController@logout');
Route::get('activityall', 'Api\TransactionController@index');
Route::get('transaction-details', 'Api\TransactionController@getTransactionDetails');
Route::get('available-balance', 'Api\TransactionController@getAvailableBalance');
Route::get('get-user-specific-details', 'Api\LoginController@getUserSpecificProfile');
Route::get('current-balance', 'Api\TransactionController@currentBalance');
//Route for Send Money starts here

Route::post('send-money-confirm', 'Api\TransactionController@sendMoneyConfirm');
Route::get('get-currency', 'Api\TransactionController@getCurrency');
Route::get('get-fees-details', 'Api\TransactionController@getFeesDetails');
Route::post('amount-limit-check', 'Api\TransactionController@amountLimitCheck');
Route::post('send-money-pay', 'Api\TransactionController@sendMoneyPay');

//Route for Send Money Ends here

//Route for Request Money starts here

Route::post('request-money-confirm', 'Api\TransactionController@requestMoneyConfirm');
Route::get('get-request-currency', 'Api\TransactionController@getRequestCurrency');
Route::post('request-money-pay', 'Api\TransactionController@requestMoneyPay');

//Route for Request Money Ends here

//Route for exchange money starts here
Route::get('get-exchange-to-other-currency', 'Api\TransactionController@getExchangeToOtherCurrency');
Route::post('amount-limit-check-exchange-to-other', 'Api\TransactionController@amountLimitCheckExchangeToOther');
Route::post('get-exchange-to-other-details', 'Api\TransactionController@getExchangeToOtherDetails');
Route::post('exchange-money-to-other-pay', 'Api\TransactionController@exchangeMoneyToOtherCurrencyConfirm');
Route::get('get-exchange-to-base-currency', 'Api\TransactionController@getExchangeToBaseCurrency');
Route::get('get-exchange-to-base-details', 'Api\TransactionController@getExchangeToBaseDetails');
Route::post('amount-limit-check-exchange-to-base', 'Api\TransactionController@amountLimitCheckExchangeToBase');
Route::post('exchange-money-to-base-pay', 'Api\TransactionController@exchangeToBaseCurrencyConfirm');
//Route for exchange money ends here

//Route for withdraw starts here
Route::get('get-withdraw-currency', 'Api\TransactionController@getWithdrawalCurrency');
Route::get('get-withdraw-payment-method', 'Api\TransactionController@getWithdrawalPaymentMethod');
Route::post('amount-limit-check-withdraw-money', 'Api\TransactionController@amountLimitCheckWithdraw');
Route::post('withdraw-money-pay', 'Api\TransactionController@withdrawMoneyConfirm');
Route::get('get-withdraw-details', 'Api\TransactionController@getWithdrawDetails');
//Route for withdraw ends here

//Route for accept request payment starts here
Route::get('accept-request-email', 'Api\TransactionController@getAcceptRequestEmail');
Route::post('request-accept-amount-limit-check', 'Api\TransactionController@getAcceptRequestAmountLimit');
Route::get('get-accept-fees-details', 'Api\TransactionController@getAcceptFeesDetails');
Route::post('accept-request-payment-pay', 'Api\TransactionController@requestAcceptedConfirm');
Route::post('cancel-accept-request', 'Api\TransactionController@requestAcceptedCancel');

//Route for accept request payment ends here
Route::group(['middleware' => 'auth:api'], function ()
{
    Route::post('get-details', 'Api\LoginController@getDetails');
});
