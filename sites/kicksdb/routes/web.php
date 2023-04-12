<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\KickController;
use App\Http\Controllers\StartController;
use App\Http\Controllers\Admin\BrandController as AdminBrandController;
use App\Http\Controllers\Admin\CollabrandController  as AdminCollabrandController;
use App\Http\Controllers\Admin\DesignerController as AdminDesignerController;
use App\Http\Controllers\Admin\KickController as AdminKickController;
use App\Http\Controllers\Admin\KmodelController as AdminKmodelController;
use App\Http\Controllers\Admin\PersonController as AdminPersonController;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

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

// dd(KickController::class);

// Auth::routes([
//     'reset' => 'false',
//     'confirm' => 'false',
//     'verify' => 'false',
// ]);

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::get('/', [StartController::class, 'show'])->name('start');

Route::group([
    'namespace' => 'App\Http\Controllers',
], function() {
    Route::resource('kicks', KickController::class)->parameters(['kicks' => 'slug']);
});

Route::group([
    // 'middleware' => 'auth',
    'namespace' => 'App\Http\Controllers\Admin',
    'prefix' => 'admin',
], function() {
    Route::resource('kicks', AdminKickController::class);
    Route::resource('brands', AdminBrandController::class);
    Route::resource('collabrands', AdminCollabrandController::class);
    Route::resource('designers', AdminDesignerController::class);
    Route::resource('kmodels', AdminKmodelController::class);
    Route::resource('people', AdminPersonController::class);
});



// Route::get('/', App\Http\Controllers\IndexController::class)->name('catalog')->middleware('auth');

// Route::get('/kicks/{whole_title}', [KickController::class, 'show'])->name('kick');
