<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\RedirectController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\TimclosingController;
use App\Http\Controllers\TimwebController;
use App\Http\Controllers\TimprogramController;
use App\Http\Controllers\TimseoController;
use App\Http\Controllers\TimpelunasanController;
use App\Http\Controllers\DatatimController;
use App\Http\Controllers\DatacustController;
use App\Http\Controllers\DataroleController;

//  jika user belum login
Route::group(['middleware' => 'guest'], function() {
    Route::get('/', [AuthController::class, 'login'])->name('login');
    Route::post('/', [AuthController::class, 'dologin']);

});

// untuk semua role
Route::group(['middleware' => ['auth', 'checkrole:1,2,3,4,5,6']], function() {
    Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
    Route::get('/redirect', [RedirectController::class, 'cek']);
});


// untuk superadmin - 1
Route::group(['middleware' => ['auth', 'checkrole:1']], function() {
    Route::get('/admin/dashboard', [AdminController::class, 'index'])->name('admin.index');
    Route::resource('/admin/datatim', DatatimController::class);
    //Route::get('/admin/datatim/json', [\App\Http\Controllers\DatatimController::class, 'data'])->name('datatim.data');
    //DATA TIM EXADO
    Route::get('/admin/datatim', [DatatimController::class, 'index'])->name('datatim.index');
    Route::get('/admin/datatim/create', [DatatimController::class, 'create'])->name('datatim.create');
    Route::post('/admin/datatim/edit', [DatatimController::class, 'edit'])->name('datatim.edit');
    Route::post('/admin/datatim/storeEdit', [DatatimController::class, 'storeEdit'])->name('datatim.storeEdit');
    Route::post('/admin/datatim/store', [DatatimController::class, 'store'])->name('datatim.store');
    Route::post('/admin/datatim/delete', [DatatimController::class, 'destroy'])->name('datatim.destroy');
    //DATA CUSTOMER
    Route::get('/admin/datacust', [DatacustController::class, 'index'])->name('datacust.index');
    Route::get('/admin/datacust/create', [DatacustController::class, 'create'])->name('datacust.create');
    Route::post('/admin/datacust/edit', [DatacustController::class, 'edit'])->name('datacust.edit');
    Route::post('/admin/datacust/store', [DatacustController::class, 'store'])->name('datacust.store');
    Route::post('/admin/datacust/storeEdit', [DatacustController::class, 'storeEdit'])->name('datacust.storeEdit');
    Route::post('/admin/datacust/storeUpdate', [DatacustController::class, 'storeUpdate'])->name('datacust.storeUpdate');
    Route::post('/admin/datacust/delete', [DatacustController::class, 'destroy'])->name('datacust.destroy');
    Route::post('/admin/datacust/export', [DatacustController::class, 'export'])->name('datacust.export');
    //DATA ROLE
    Route::get('/admin/datarole', [DataroleController::class, 'index'])->name('datarole.index');
    Route::post('/admin/datarole/store', [DataroleController::class, 'store'])->name('datarole.store');
    Route::post('/admin/datarole/edit', [DataroleController::class, 'edit'])->name('datarole.edit');
    Route::post('/admin/datarole/storeEdit', [DataroleController::class, 'storeEdit'])->name('datarole.storeEdit');
    Route::post('/admin/datarole/delete', [DataroleController::class, 'destroy'])->name('datarole.destroy');
});

// untuk timclosing - 2
Route::group(['middleware' => ['auth', 'checkrole:2']], function() {
    Route::get('/timclosing', [TimclosingController::class, 'index']);
});

// untuk timweb- 3
Route::group(['middleware' => ['auth', 'checkrole:3']], function() {
    Route::get('/timweb', [TimwebController::class, 'index']);
});

// untuk timprogram - 4
Route::group(['middleware' => ['auth', 'checkrole:4']], function() {
    Route::get('/timprogram', [TimprogramController::class, 'index']);
});

// untuk timseo - 5
Route::group(['middleware' => ['auth', 'checkrole:5']], function() {
    Route::get('/timseo/dashboard', [TimseoController::class, 'index']);
    Route::get('/timseo/datacust', [DatacustController::class, 'timseo'])->name('timseo.datacust');
});

// untuk timpelunasan - 6
Route::group(['middleware' => ['auth', 'checkrole:6']], function() {
    Route::get('/timpelunasan', [TimpelunasanController::class, 'index']);
});