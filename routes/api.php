<?php

use App\Http\Controllers\API\AbsensiController;
use App\Http\Controllers\API\JadwalController;
use App\Http\Controllers\API\KramaController;
use App\Http\Controllers\API\LoginController;
use App\Http\Controllers\API\RekapAbsensiController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
// Route::post('login', [LoginController::class, 'login']);
// Route::group(['middleware' => 'auth:sanctum'], function () {
Route::get('Absensi', [AbsensiController::class, 'dataAbsen']);
Route::resource('Jadwal', JadwalController::class);
Route::resource('Krama', KramaController::class);
Route::get('RekapAbsensi', [RekapAbsensiController::class, 'dataRekapAbsensi']);
Route::post('Jadwal/{id_kegiatan}', [JadwalController::class, 'update']);
// Route::post('logout', [LoginController::class, 'logout']);
// });