<?php

Route::group(['prefix'=>'admin', 'namespace'=>'Admin'], function () {
    Route::get('/', 'AdminController@index')->name('admin.index');

	Route::get('login', 'AuthenticationController@getLoginForm')->name('admin.login');
	Route::post('login', 'AuthenticationController@login');
	Route::get('logout', 'AuthenticationController@logout')->name('admin.logout');

	Route::group(['prefix'=>'type'], function () {
	    Route::get('', 'TypeController@index')->name('admin.type.index');
	    Route::get('create', 'TypeController@create')->name('admin.type.create');
	    Route::post('create', 'TypeController@created');
	    Route::get('update/{id}', 'TypeController@update')->name('admin.type.update');
	    Route::post('update/{id}', 'TypeController@updated');
	    Route::get('active/{id}', 'TypeController@active')->name('admin.type.active');
	    Route::get('delete/{id}', 'TypeController@delete')->name('admin.type.delete');
	});

	Route::group(['prefix'=>'course'], function () {
	    Route::get('', 'CourseController@index')->name('admin.course.index');
	    Route::get('create', 'CourseController@create')->name('admin.course.create');
	    Route::post('create', 'CourseController@created');
	    Route::get('update/{id}', 'CourseController@update')->name('admin.course.update');
	    Route::post('update/{id}', 'CourseController@updated');
	    Route::get('active/{id}', 'CourseController@active')->name('admin.course.active');
	    Route::get('delete/{id}', 'CourseController@delete')->name('admin.course.delete');

	    Route::post('ckeditor/upload', 'CourseController@upload')->name('ckeditor.upload');
	});
});