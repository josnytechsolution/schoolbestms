<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/payment-callback-confirmation-url', 'Api\V1\PaymentTransactionController@processC2BRequestConfirmation');

//Bulk message delivery report url
Route::post('/message-callback-confirmation-url', 'Api\V1\MessageCallbackConfirmation@messageCallbackConfirmation');

Route::get('/client-payments', 'Api\V1\ClientQueryController@queryReceipt');