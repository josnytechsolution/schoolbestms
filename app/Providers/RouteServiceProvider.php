<?php

namespace App\Providers;

use App\Client;
use App\CurrentSession;
use App\Package;
use App\Payment;
use App\Project;
use App\User;
use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * This namespace is applied to your controller routes.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'App\Http\Controllers';

    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @return void
     */
    public function boot()
    {
        //

        parent::boot();

        Route::bind('system_user', function ($slug) {
          return User::where('slug', $slug)->first();
        });

        Route::bind('financial_session', function ($slug) {
          return CurrentSession::where('slug', $slug)->first();
        });

        Route::bind('my_client', function ($slug) {
           return Client::where('slug', $slug)->first();
        });

        Route::bind('schoolbest_package', function ($slug) {
           return Package::where('slug', $slug)->first();
        });

        Route::bind('schoolbest_project', function ($slug) {
           return Project::where('slug', $slug)->first();
        });

        Route::bind('client_payment', function ($slug) {
           return Payment::where('slug', $slug)->first();
        });
    }

    /**
     * Define the routes for the application.
     *
     * @return void
     */
    public function map()
    {
        $this->mapApiRoutes();

        $this->mapWebRoutes();

        //
    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     *
     * @return void
     */
    protected function mapWebRoutes()
    {
        Route::middleware('web')
             ->namespace($this->namespace)
             ->group(base_path('routes/web.php'));
    }

    /**
     * Define the "api" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapApiRoutes()
    {
        Route::prefix('v1')
             ->middleware('api')
             ->namespace($this->namespace)
             ->group(base_path('routes/api.php'));
    }
}
