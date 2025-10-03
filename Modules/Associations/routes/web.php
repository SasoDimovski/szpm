<?php

use Illuminate\Support\Facades\Route;
use Modules\Associations\Http\Controllers\AssociationsController;

Route::middleware(['auth', 'verified'])->group(function () {
    Route::resource('associations', AssociationsController::class)->names('associations');
});
