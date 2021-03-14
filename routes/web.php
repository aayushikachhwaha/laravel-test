<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes(['verify' => true]);
Route::get('/verifyemail/{token}', 'Auth\RegisterController@verify');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::group(['middleware' => ['auth']], function() {
    Route::resource('users', UserController::class);
    Route::get('blog/create',[App\Http\Controllers\BlogController::class, 'createBlog']);
    Route::post('blog/create',[App\Http\Controllers\BlogController::class, 'saveBlog']);
    Route::get('blog/index',[App\Http\Controllers\BlogController::class, 'showAllBlogs'])->name('blogs.index');
});