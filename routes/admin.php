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

	Route::group(['prefix'=>'transaction'], function () { 
		Route::get('', 'AdminTransactionController@index')->name('admin.transaction.index'); 
		Route::get('delete/{id}', 'AdminTransactionController@delete')->name('admin.transaction.delete'); 
	});

	Route::group(['prefix'=>'contact'], function () { 
		Route::get('', 'AdminContactController@index')->name('admin.contact.index'); 
		Route::get('delete/{id}', 'AdminContactController@delete')->name('admin.contact.delete');
	});

	Route::group(['prefix' => 'menu'], function(){
            Route::get('','AdminMenuController@index')->name('admin.menu.index');
            Route::get('create','AdminMenuController@create')->name('admin.menu.create');
            Route::post('create','AdminMenuController@store');

            Route::get('update/{id}','AdminMenuController@edit')->name('admin.menu.update');
            Route::post('update/{id}','AdminMenuController@update');

            Route::get('active/{id}','AdminMenuController@active')->name('admin.menu.active');
            Route::get('hot/{id}','AdminMenuController@hot')->name('admin.menu.hot');
            Route::get('delete/{id}','AdminMenuController@delete')->name('admin.menu.delete');
        });

	Route::group(['prefix' => 'article'], function(){
            Route::get('','AdminArticleController@index')->name('admin.article.index');
            Route::get('create','AdminArticleController@create')->name('admin.article.create');
            Route::post('create','AdminArticleController@store');

            Route::get('update/{id}','AdminArticleController@edit')->name('admin.article.update');
            Route::post('update/{id}','AdminArticleController@update');

            Route::get('active/{id}','AdminArticleController@active')->name('admin.article.active');
            Route::get('hot/{id}','AdminArticleController@hot')->name('admin.article.hot');
            Route::get('delete/{id}','AdminArticleController@delete')->name('admin.article.delete');
        });
});