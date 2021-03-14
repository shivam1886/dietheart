<?php

/**
 * Auth Route's
 */
 Route::post('/login', 'AuthController@login');
 Route::post('/social/login', 'AuthController@socialLogin');
 Route::post('/signup', 'AuthController@signup');
 Route::get('/get/profile', 'AuthController@getProfile');
 Route::post('/update/profile', 'AuthController@updateProfile');
 Route::post('/change/password', 'AuthController@changePassword');
 Route::post('/forgot/password', 'AuthController@forgotPassword');

 /**
  * Home Route's
  */
  Route::get('/get/foods', 'HomeController@getFoods');
  Route::get('/get/food/details', 'HomeController@getFoodDetails');
  Route::post('/add/to/diet', 'HomeController@addToDiet');
  Route::post('/remove/from/diet', 'HomeController@removeFromDiet');
  Route::get('/get/reports', 'HomeController@getReports');
  Route::get('/get/articals', 'HomeController@getArticals');
  Route::get('/get/artical/detail', 'HomeController@getArticalDetail');



 



