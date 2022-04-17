<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index')->name('home')->middleware('verified');

// Routes for controllers
Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'admin']], function() {
    Route::get('/dashboard-v1/', 'Admin\DashboardController@index')->name('adminDashboard');
    Route::resource('/company-profile', 'Admin\CompanyProfileController');
    Route::resource('/system-users', 'Admin\UserController');
    Route::resource('/financial-sessions', 'Admin\CurrentSessionController');
    Route::resource('/audit-trails', 'Admin\AuditTrailController');
    Route::resource('/my-clients', 'Admin\ClientController');
});

// Routes for controllers
Route::group(['prefix' => 'client', 'middleware' => ['auth', 'client']], function() {
    Route::get('/dashboard-v2/', 'Client\DashboardController@index')->name('clientDashboard');
});
