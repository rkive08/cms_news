<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('frontend/layout');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::resource('/news', App\Http\Controllers\NewsController::class);
Route::get('news/hapus/{id}', [App\Http\Controllers\NewsController::class, 'destroy']);

Route::get('/cetak', [App\Http\Controllers\NewsController::class, 'cetak']);

Route::resource('/kategori', App\Http\Controllers\KategoriController::class);
Route::get('kategori/hapus/{id}', [App\Http\Controllers\KategoriController::class, 'destroy']);

Route::get('/', [App\Http\Controllers\PublikController::class, 'show']);
// Route::resource('/', App\Http\Controllers\PublikController::class);
Route::get('/detail/{id}', [App\Http\Controllers\PublikController::class, 'detail']);
