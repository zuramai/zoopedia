<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\News;
use App\Activity;
use App\User;
use Auth;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);


        view()->composer('*', function($view) {
            if(Auth::check()){
                $news = News::orderBy('id','desc')->get(); 
                $last_login = Activity::where('user_id',auth()->user()->id)->where('type','Login')->orderBy('id','desc')->first();
                config(['news'=>$news]);
                config(['last_login'=>$last_login]);
            }

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
