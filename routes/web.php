<?php

use App\Http\Controllers\BeverageController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use illuminate\Support\Facades\Auth;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\MessageController;
use Illuminate\Support\Facades\Route;

use function Laravel\Prompts\search;

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

Route::get('/', [HomeController::class, 'index'])->name('backto');


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

Auth::routes(['verify' => true]);


///middleware for admin////
Route::middleware(['CheckAdmin', 'verified'])->group(function () {

///Users routes///
Route::get('/admin/users',[UserController::class,'showUsers'])->name('users');
Route::get('/admin/adduser',[UserController::class,'addUser'])->name('addUser');
Route::post('/admin/adduser',[UserController::class,'store'])->name('store');
Route::get('/admin/editUser/{id}',[UserController::class,'edit'])->name('editUser');

Route::post('/admin/updateUser/{id}',[UserController::class,'update'])->name('updateUser');
Route::delete('/admin/deleteUser',[userController::class,'destroy'])->name('deleteUser');


///Category////
Route::get('/admin/addCategory',[CategoryController::class,'create'])->name('addCategory');
Route::post('/admin/addCategory',[CategoryController::class,'store'])->name('storeCategory');
Route::get('/admin/category',[CategoryController::class,'show'])->name('categories');
Route::get('/admin/editCategory/{id}',[CategoryController::class,'edit'])->name('editCategory');
Route::post('/admin/editCategory/{id}',[CategoryController::class,'update'])->name('updateCategory');
Route::delete('/admin/deleteCategory',[CategoryController::class,'destroy'])->name('deleteCategory');
////Beverage////
Route::get('/admin/addBeverage',[BeverageController::class,'create'])->name('addBeverage');
Route::post('/admin/addBeverage',[BeverageController::class,'store'])->name('storeBeverage');
Route::get('/admin/beverages',[BeverageController::class,'show'])->name('beverages');
Route::get('/admin/editBeverage/{id}',[BeverageController::class,'edit'])->name('editBeverages');
Route::post('/admin/editBeverage/{id}',[BeverageController::class,'update'])->name('updateBeverages');
Route::delete('/admin/deleteBeverage',[BeverageController::class,'destroy'])->name('deleteBeverage');
///messages///

Route::get('/admin/messages',[MessageController::class,'list'])->name('listMessages');
Route::get('/admin/messageShow/{id}',[MessageController::class,'show'])->name('showMessage');
Route::delete('/admin/deleteMessage',[MessageController::class,'destroy'])->name('deleteMessage');

});
///messages///
Route::post('/send',[MessageController::class,'send'])->name('sendMail');
//user//
Route::get('/adminLogout',[userController::class,'adminLogout'])->name('adminLogout');
////index///
Route::get('/home', [HomeController::class, 'index'])->name('home');