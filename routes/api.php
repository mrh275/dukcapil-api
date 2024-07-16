<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\DataPendudukController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::post('/login', [AuthController::class, 'login']);
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/ambil-data-penduduk/{nik}', [DataPendudukController::class, 'getPenduduk']);
});
