<?php

    Route::get('/', 'PostsController@index')->name('home');

    Route::get('/posts/create', 'PostsController@create');

    Route::post('/posts', 'PostsController@store');


   Route::get('/posts/{post}', 'PostsController@show');

   Route::post('/posts/{post}/comments', 'CommentsController@store');

   Route::get('/register', 'RegistrationController@create');
   Route::post('/register', 'RegistrationController@store');



   Route::get('/login', 'SessionsController@create');
   Route::post('/login', 'SessionsController@store');

   Route::get('/logout', 'SessionsController@destroy');


   Route::get('/index', 'CrudController@index')->name('index');
   Route::get('/create', 'CrudController@create');
   Route::post('/store', 'CrudController@store');
   Route::get('/edit/{id}', 'CrudController@edit')->name('edit');
   Route::put('/update/{id}', 'CrudController@update')->name('update');
   Route::get('/delete/{id}', 'CrudController@delete')->name('delete');