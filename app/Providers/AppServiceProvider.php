<?php

namespace App\Providers;

use App\Models\Kategori;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        view()->composer(
            'frontend.layout',
            function ($view) {
                $view->with('kategori', Kategori::all());
            }
        );

        Paginator::useBootstrapFive();
    }
}
