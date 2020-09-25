<?php

Route::group(['namespace'=>'Guest'], function () {
    Route::get('', 'CourseController@getCourseList')->name('get.home');
    Route::get('he-dao-tao/{slug}', 'CourseController@getCourseListByType')->name('get.course.list');
    Route::get('khoa-hoc/{slug}', 'CourseController@getCourseDetail')->name('get.course.detail');


Route::prefix('shopping')->group (function(){
	Route::get('add/{id}','ShoppingCartController@add')->name('get.shopping.add');
	Route::get('delete/{id}','ShoppingCartController@delete')->name('get.shopping.delete');
	Route::get('update/{id}','ShoppingCartController@update')->name('ajax_get.shopping.update');
	Route::get('theo-doi-don-hang','TrackOrderController@index')->name('get.track.transaction');	
	Route::post('pay','ShoppingCartController@postPay')->name('post.shopping.pay');

	}); 
});



include 'admin.php';