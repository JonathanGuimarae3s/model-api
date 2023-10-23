<?php

use App\Http\Controllers\ClientController;
use App\Http\Controllers\InstitutionController;
use App\Http\Controllers\LessonController;
use App\Http\Controllers\SchedulingController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::get('/testpe', function () {
//     return 'teste com success';
// });





// // rotas para o client
// Route::get('/client', [ClientController::class, 'index']);
// Route::get('/client/{id}', [ClientController::class, 'show']);
// Route::put('/client/{id}', [ClientController::class, 'update']);
// Route::delete('/client/{id}', [ClientController::class, 'destroy']);
// Route::post('/client', [ClientController::class, 'store']);
// // rotas para o institution

// Route::get('/institution', [InstitutionController::class, 'index']);
// Route::get('/institution/{id}', [InstitutionController::class, 'show']);
// Route::put('/institution/{id}', [InstitutionController::class, 'update']);
// Route::delete('/institution/{id}', [InstitutionController::class, 'destroy']);
// Route::post('/institution', [InstitutionController::class, 'store']);


Route::apiResources([
    'client' => ClientController::class,
    'institution' => InstitutionController::class,
    'scheduling' => SchedulingController::class,
    'lesson' => LessonController::class

]);
