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
//默认路由
Route::get('/',function (){return redirect('/login');});
//注册页
Route::get('/register','\App\Http\Controllers\RegisterController@index');
Route::post('/register','\App\Http\Controllers\RegisterController@register');
//登录页
Route::get('/login','\App\Http\Controllers\LoginController@index')->name('login');
Route::post('/login','\App\Http\Controllers\LoginController@login');
//登录后才可进行操作的路由
Route::group(['middleware' => 'auth:web'],function(){
    //登出
    Route::get('/logout','\App\Http\Controllers\LoginController@logout');
    //个人设置页面
    Route::get('/user/me/setting','\App\Http\Controllers\UserController@setting');
    //个人设置操作
    Route::post('/user/me/setting','\App\Http\Controllers\UserController@settingStore');
    //个人中心
    Route::get('/user/{user}','\App\Http\Controllers\UserController@index');
    //关注某人
    Route::post('/user/{user}/fan','\App\Http\Controllers\UserController@fan');
    //取消关注
    Route::post('/user/{user}/unFan','\App\Http\Controllers\UserController@unFan');
    //文章列表页
    Route::get('/posts','\App\Http\Controllers\PostController@index');
    //创建文章
    Route::get('/posts/create','\App\Http\Controllers\PostController@create');
    Route::post('/posts','\App\Http\Controllers\PostController@store');
    //搜索结果
    Route::get('/posts/search','\App\Http\Controllers\PostController@search');
    //文章详情页
    Route::get('/posts/{post}','\App\Http\Controllers\PostController@show');
    //编辑文章
    Route::get('/posts/{post}/edit','\App\Http\Controllers\PostController@edit');
    Route::put('/posts/{post}','\App\Http\Controllers\PostController@update');
    //删除文章
    Route::get('/posts/{post}/delete','\App\Http\Controllers\PostController@delete');
    //上传图片
    Route::post('/posts/image/upload','\App\Http\Controllers\PostController@upload');
    //发表评论
    Route::post('/posts/{post}/comment','\App\Http\Controllers\PostController@comment');
    //赞
    Route::get('/posts/{post}/zan','\App\Http\Controllers\PostController@zan');
    //取消赞
    Route::get('/posts/{post}/unzan','\App\Http\Controllers\PostController@unzan');
});

