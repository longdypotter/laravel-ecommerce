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
Route::resource('/','LandingPageController');
Route::resource('/product','ProductController');
Route::resource('/shop','ShopController');
Route::get('/shop/show/{product}','ShopController@show')->name('shop.show');

Route::get('/cart','CartController@index')->name('cart.index');
Route::post('/cart','CartController@store')->name('cart.store');
Route::post('/cart/{product}','CartController@update')->name('cart.update');

Route::delete('/cart/destroy/{id}','CartController@destroy')->name('cart.destroy');
Route::post('/cart/switchToSaveForLater/{product}','CartController@switchtosaveforlater')->name('cart.switchtosaveforlater');

Route::delete('/saveForLater/{product}','SaveForLaterController@destroy')->name('saveforlater.destroy');
Route::post('/saveForLater/switchToSaveForLater/{product}','SaveForLaterController@switchtocart')->name('saveforlater.switchtocart');

Route::get('/checkout','CheckoutController@index')->name('checkout.index')->middleware('auth');
Route::post('/checkout','CheckoutController@store')->name('checkout.store');

Route::get('/guestcheckout','CheckoutController@index')->name('guestcheckout.index');

Route::get('/thankyou','ConfirmationController@index')->name('confirmation.index');


Route::post('/coupon','CouponController@store')->name('coupon.store');
Route::delete('/coupon','CouponController@destroy')->name('coupon.destroy');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
