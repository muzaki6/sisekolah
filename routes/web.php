<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\KelasController;
use App\Http\Controllers\ManajemenGuruMapelController;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\SiswaController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\MapelController;
use App\Http\Controllers\NilaiController;

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

Auth::routes();

Route::group(['middleware' => ['auth']], function () {
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('pegawais', PegawaiController::class);
    Route::resource('mapels', MapelController::class);
    Route::resource('kelass', KelasController::class);
    Route::resource('nilais', NilaiController::class);
    Route::resource('m_guru_mapels', ManajemenGuruMapelController::class);
});

Route::middleware('auth')->group(function () {
    Route::get('/home', [HomeController::class, 'index'])->name('home');
    Route::resource('siswa', SiswaController::class);

    // Route::prefix('siswa')->group(function () {
    //     Route::get('/', [SiswaController::class, 'index'])->name('siswa.index');
    //     Route::get('/create', [SiswaController::class, 'create'])->name('siswa.create');
    //     // Untuk insert data menggunakan post
    //     Route::post('/store', [SiswaController::class, 'store'])->name('siswa.store');
    //     Route::get('/edit/{id}', [SiswaController::class, 'edit'])->name('siswa.edit');
    //     // Untuk update data menggunakan put atau patch
    //     Route::put('/{id}', [SiswaController::class, 'update'])->name('siswa.update');
    //     // Untuk hapus data menggunakan delete
    //     Route::delete('/{id}', [SiswaController::class, 'destroy'])->name('siswa.delete');
    //     Route::get('/all', [SiswaController::class, 'getAllCategory'])->name('siswa.all');
    // });


});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
