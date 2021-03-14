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

Auth::routes();

Route::get('api/reset/password/success',function(){ return view('api.forgot_password_success_response'); })->name('api.rest.password.success');

Route::get('/', 'HomeController@index')->name('home');
Route::get('/home', 'HomeController@index')->name('home');

/**
 * Membership Plan
 */
Route::get('/mebership/plans', 'MembershipPlanController@index')->name('index.membership');
Route::get('/create/membership/plan', 'MembershipPlanController@create')->name('create.membership');
Route::post('/store/membership/plan', 'MembershipPlanController@store')->name('store.membership');
Route::get('/edit/membership/plan/{id}', 'MembershipPlanController@edit')->name('edit.membership');
Route::put('/update/membership/plan/{id}', 'MembershipPlanController@update')->name('update.membership');
Route::delete('/delete/membership/plan', 'MembershipPlanController@destroy')->name('destroy.membership');
Route::get('/export/membership/plan', 'MembershipPlanController@export')->name('export.membership');

Route::get('/profile', 'HomeController@profile')->name('profile');
Route::put('/update/profile', 'HomeController@updateProfile')->name('update.profile');
Route::put('/change/password', 'HomeController@changePassword')->name('change.password');

Route::get('/marchants', 'HomeController@marchants')->name('marchants');
Route::get('/marchant/details/{id}', 'HomeController@marchantDetails')->name('marchant.details');
Route::get('marchants/export/', 'HomeController@exportMarchants')->name('export.marchants');

Route::get('/members', 'HomeController@members')->name('members');
Route::get('/member/details/{id}', 'HomeController@memberDetails')->name('member.details');
Route::get('members/export/', 'HomeController@exportMembers')->name('export.members');

Route::delete('/delete/account', 'HomeController@deleteAccount')->name('delete.account');
Route::put('/active/account', 'HomeController@activeAccount')->name('active.account');
Route::put('/deactive/account', 'HomeController@deactiveAccount')->name('deactive.account');

/**
 *  Food Route's
 */
Route::get('get/foods', 'FoodController@index')->name('index.food');
Route::get('create/food', 'FoodController@create')->name('create.food');
Route::post('store/food', 'FoodController@store')->name('store.food');
Route::get('show/food/{id}', 'FoodController@show')->name('show.food');
Route::put('update/food/{id}', 'FoodController@update')->name('update.food');
Route::delete('delete/food', 'FoodController@destroy')->name('delete.food');

/**
 *  Artical Route's
 */
Route::get('facts', 'ArticalController@index')->name('index.artical');
Route::get('create/fact', 'ArticalController@create')->name('create.artical');
Route::post('store/fact', 'ArticalController@store')->name('store.artical');
Route::get('show/fact/{id?}', 'ArticalController@show')->name('show.artical');
Route::put('update/fact/{id}', 'ArticalController@update')->name('update.artical');
Route::delete('delete/fact', 'ArticalController@destroy')->name('delete.artical');


/**
 * User Route's
 */
Route::get('get/users', 'UserController@index')->name('index.user');
Route::get('show/user/{id}', 'UserController@show')->name('show.user');
Route::put('update/user/{id}', 'UserController@update')->name('update.user');
Route::get('export/user', 'UserController@export')->name('export.user');
Route::put('active/user', 'UserController@activeAccount')->name('active.user');
Route::delete('delete/user', 'UserController@destroy')->name('delete.user');
Route::put('/deactive/user', 'UserController@deactiveAccount')->name('deactive.user');