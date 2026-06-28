<?php

use Illuminate\Support\Facades\Route;

// Halaman 1: Login
Route::get('/', function () {
    return view('login');
})->name('login');

// Halaman 2: Resep dan Menu
Route::get('/resep-menu', function () {
    return view('main');
})->name('resep.menu');

// Halaman 3: Buat Daftar Belanja
Route::get('/daftar-belanja', function () {
    return view('daftar_belanja');
})->name('daftar.belanja');

// Halaman 4: Resep Tersimpan
Route::get('/resep-tersimpan', function () {
    return view('resep_tersimpan');
})->name('resep.tersimpan');