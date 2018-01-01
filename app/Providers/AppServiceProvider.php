<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //mb4string 767/4=191.xxx
        Schema::defaultStringLength(191);
        //专题侧边栏试图合成器
        View::composer('layout.sideBar', function ($view) {
            $topics = \App\Topic::all();
            $view->with('topics', $topics);
        });
    }
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
