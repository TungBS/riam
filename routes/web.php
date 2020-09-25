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

		Route::group(['prefix' => 'comment', 'middleware' => 'check_user_login'], function(){
        Route::post('ajax-comment','CommentsController@store')->name('ajax_post.comment');
    });

    Route::get('lien-he','ContactController@index')->name('get.contact');
    Route::post('lien-he','ContactController@store')->name('post.contact.lien_he');
    Route::get('san-pham-ban-da-xem','PageStaticController@getProductView')->name('get.static.product_view');
    Route::get('ajax/san-pham-ban-da-xem','PageStaticController@getListProductView')->name('ajax_get.product_view');
	Route::get('huong-dan-mua-hang','PageStaticController@getShoppingGuide')->name('get.static.shopping_guide');
	Route::get('chinh-sach-doi-tra','PageStaticController@getReturnPolicy')->name('get.static.return_policy');
	Route::get('cham-soc-khach-hang','PageStaticController@getCustomerCare')->name('get.static.customer_care');

	
});



include 'admin.php';