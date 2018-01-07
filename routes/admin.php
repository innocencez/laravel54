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
    });
});