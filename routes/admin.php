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
        Route::group(['middleware'=>'can:system'],function (){
            //用户列表页
            Route::get('/users','\App\Admin\Controllers\UserController@index');
            //添加用户
            Route::get('/users/create','\App\Admin\Controllers\UserController@create');
            Route::post('/users/store','\App\Admin\Controllers\UserController@store');
            //用户角色管理
            Route::get('/users/{user}/role','\App\Admin\Controllers\UserController@role');
            Route::post('/users/{user}/role','\App\Admin\Controllers\UserController@storeRole');
            //角色管理
            Route::get('/roles','\App\Admin\Controllers\RoleController@index');
            Route::get('/roles/create','\App\Admin\Controllers\RoleController@create');
            Route::post('/roles/store','\App\Admin\Controllers\RoleController@store');
            //角色权限管理
            Route::get('/roles/{role}/permission','\App\Admin\Controllers\RoleController@permission');
            Route::post('/roles/{role}/permission','\App\Admin\Controllers\RoleController@storePermission');
            //权限管理
            Route::get('/permissions','\App\Admin\Controllers\PermissionController@index');
            Route::get('/permissions/create','\App\Admin\Controllers\PermissionController@create');
            Route::post('/permissions/store','\App\Admin\Controllers\PermissionController@store');
        });
        Route::group(['middleware'=>'can:post'],function (){
            //文章列表
            Route::get('/posts','\App\Admin\Controllers\PostController@index');
            //审核文章
            Route::post('/posts/{post}/status','\App\Admin\Controllers\PostController@status');
        });
        //专题管理
        Route::resource('topics','\App\Admin\Controllers\TopicController',['only'=>['index','create','store','destroy']]);
    });
});