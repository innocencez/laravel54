<?php
Route::group(['prefix'=>'admin'],function (){
    //后台登录
    Route::get('/login','\App\Admin\Controllers\LoginController@index');
    //登录操作
    Route::post('/login','\App\Admin\Controllers\LoginController@login');
    //登出操作
    Route::get('/logout','\App\Admin\Controllers\LoginController@logout');
    //登录后才可操作的路由
    Route::group(['middleware'=>'auth:admin'],function (){
        //后台首页
        Route::get('/home','\App\Admin\Controllers\HomeController@index');
        //用户列表页
        Route::get('/users','\App\Admin\Controllers\UserController@index');
        //添加用户
        Route::get('/users/create','\App\Admin\Controllers\UserController@create');
        Route::post('/users/store','\App\Admin\Controllers\UserController@store');
        //文章列表
        Route::get('/posts','\App\Admin\Controllers\PostController@index');
        //审核文章
        Route::post('/posts/{post}/status','\App\Admin\Controllers\PostController@status');
    });
});