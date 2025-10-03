<?php

use Illuminate\Support\Facades\Route;
use Modules\Associations\Http\Controllers\AssociationsController;

Route::middleware(['auth:sanctum'])->prefix('v1')->group(function () {
    Route::apiResource('associations', AssociationsController::class)->names('associations');
});
