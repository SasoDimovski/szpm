<?php

use App\Http\Controllers\AspImportController;
use App\Http\Controllers\ControllerClearCache;
use App\Http\Controllers\PublicController;
use App\Http\Middleware\SharedView\SharedViewLanguagesMiddleware;
use App\Http\Middleware\SharedView\SharedViewModuleMiddleware;
use App\Http\Middleware\SharedView\SharedViewModulesMiddleware;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Route;
use Modules\Associations\Http\Controllers\AssociationsController;
use Modules\Auth\Http\Controllers\AuthController;
use Modules\Auth\Http\Middleware\AuthMiddleware;
use Modules\Documents\Http\Controllers\DocumentsController;
use Modules\Languages\Http\Middleware\LanguageMiddleware;
use Modules\Main\Http\Controllers\MainController;
use Modules\Modules\Http\Middleware\ModulesPrivilegesMiddleware;
use Modules\Record\Http\Controllers\RecordController;
use Modules\Records\Http\Controllers\RecordsController;
use Modules\User\Http\Controllers\UserController;
use Modules\User\Http\Middleware\UserRerouteMiddleware;
use Modules\User\Http\Middleware\UserUnauthorizedMiddleware;
use Modules\Users\Http\Controllers\UsersController;

Route::get('/', function () {
    $lang = App::getLocale();
    //dd('public/'.$lang);
    return redirect('/index');
});
Route::get('/asp-import', [AspImportController::class, 'downloadSql'])->name('asp-import.download');
Route::get('/asp-import/preview', [AspImportController::class, 'preview'])->name('asp-import.preview');


///////////////////////////////////////////////////////////////////////////////////////////////////////
Route::get('/clear', [ControllerClearCache::class, 'clear']);
Route::get('/cache', [ControllerClearCache::class, 'cache']);
///////////////////////////////////////////////////////////////////////////////////////////////////////

Route::get('/index', [PublicController::class, 'index']);
Route::get('/associations', [PublicController::class, 'indexAssociations']);
Route::get('/association/{id_module}/{id_association}/{slug}', [PublicController::class, 'indexAssociation']);
Route::get('/records/{id_module}/{id_association}/{slug}', [PublicController::class, 'indexRecords']);
Route::get('/record/{id_module}/{id_association}/{id}/{slug}', [PublicController::class, 'indexRecord']);
Route::get('/static/{id_module}/{id_association}/{slug}', [PublicController::class, 'indexStatic']);
Route::get('/search', [PublicController::class, 'indexSearch']);
///////////////////////////////////////////////////////////////////////////////////////////////////////
Route::middleware([LanguageMiddleware::class])->group(function () {

    //Module AUTH
    Route::get('/admin', [AuthController::class, 'login'])->name('admin');
    Route::match(['get', 'post'],'login-post', [AuthController::class, 'loginPost']);
    Route::get('forgotten-email', [AuthController::class, 'forgottenEmail']);
    Route::post('forgotten-email-post', [AuthController::class, 'forgottenEmailPost']);
    Route::get('forgotten', [AuthController::class, 'forgotten']);
    Route::post('forgotten-post', [AuthController::class, 'forgottenPost']);
    Route::get('expired', [AuthController::class, 'expired'])->name('expired');
    Route::post('expired-post', [AuthController::class, 'expiredPost']);
    Route::get('registration', [AuthController::class, 'registration'])->name('registration');
    Route::post('registration-post', [AuthController::class, 'registrationPost']);
    Route::get('mfa-code', [AuthController::class, 'mfaCode'])->name('mfa-code');
    Route::post('mfa-code-post', [AuthController::class, 'mfaCodePost']);
    Route::get('mfa', [AuthController::class, 'mfa'])->name('mfa');
    Route::post('mfa-post', [AuthController::class, 'mfaPost']);


    Route::middleware([AuthMiddleware::class])->group(function () {

        //Module AUTH
        Route::get('logout', [AuthController::class, 'logout']);
        Route::get('browser', [RecordController::class, 'browser']);

        Route::middleware([SharedViewLanguagesMiddleware::class, SharedViewModulesMiddleware::class])->group(function () {
            Route::get('admin/{lang}/main', [MainController::class, 'index'])->name('main');

        });

        //CHECK IF USER HAVE PRIVILEGES TO MODULE
        //====================================================================================================
        Route::middleware([ModulesPrivilegesMiddleware::class])->group(function () {


            Route::middleware([SharedViewLanguagesMiddleware::class, SharedViewModulesMiddleware::class, SharedViewModuleMiddleware::class])
                ->prefix('admin/{lang}/{id_module}')
                ->group(function () {

                    //MODULE USERS
                    Route::prefix('users')
                        ->group(function () {
                            Route::get('/', [UsersController::class, 'index'])->name('users.index');
                            Route::get('edit/{id}', [UsersController::class, 'edit']);
                            Route::put('update/{id}', [UsersController::class, 'update']);
                            Route::get('create', [UsersController::class, 'create']);
                            Route::put('store', [UsersController::class, 'store']);
                            Route::get('show/{id}', [UsersController::class, 'show']);
                            Route::delete('delete/{id}', [UsersController::class, 'destroy']);
                            Route::post('send-email-reg/{id}', [UsersController::class, 'sendEmailReg']);

                            Route::get('index-records/{id}', [UsersController::class, 'indexRecords']);
                            Route::get('create-record/{year}/{id}', [UsersController::class, 'createRecord']);
                            Route::post('store-record/{id}', [UsersController::class, 'storeRecord']);
                            Route::get('edit-record/{year}/{id_record}/{id}', [UsersController::class, 'editRecord']);
                            Route::post('update-record/{id_record}/{id}', [UsersController::class, 'updateRecord']);
                            Route::get('show-record/{id_record}', [UsersController::class, 'showRecord']);
                            Route::delete('delete-record/{id_record}/{id}', [UsersController::class, 'deleteRecord']);

                            Route::post('lock-approve/{id}', [UsersController::class, 'lockApproveRecords']);
                            Route::get('get-activities/{id_project}/{id}', [UsersController::class, 'getActivities']);
                            Route::get('get-assignments/{id_project}/{id}', [UsersController::class, 'getAssignments']);

                            Route::post('add/{id_user}/{id_group}', [UsersController::class, 'addGroupToUser']);
                            Route::post('remove/{id_user}/{id_group}', [UsersController::class, 'removeGroupToUser']);
                        });

                    //MODULE USER
                    Route::prefix('user')
                        ->group(function () {
                            Route::middleware([UserRerouteMiddleware::class])->group(function () {
                                Route::get('edit')->name('edit');
                            });
                            Route::middleware([UserUnauthorizedMiddleware::class])->group(function () {
                                Route::get('edit/{id}', [UserController::class, 'edit'])->name('edit.user');
                                Route::put('update/{id}', [UserController::class, 'update']);
                            });

                        });
                    //.MODULE USER

                    //MODULE RECORDS
                    Route::prefix('records')
                        ->group(function () {
                            Route::get('/', [RecordsController::class, 'index'])->name('records.index');
                            Route::get('edit/{id}', [RecordsController::class, 'edit']);
                            Route::get('create', [RecordsController::class, 'create']);
                            Route::put('store', [RecordsController::class, 'store']);
                            Route::put('update/{id}', [RecordsController::class, 'update']);
                            Route::get('show/{id}', [RecordsController::class, 'show']);
                            Route::match(['get', 'post', 'delete'],'delete/{id}', [RecordsController::class, 'delete']);

                            Route::put('store_doc/{id}', [RecordsController::class, 'storeDoc']);
                            Route::put('update_doc/{id}/{id_doc}',  [RecordsController::class, 'updateDoc']);
                            Route::get('show_doc/{id}/{id_doc}',  [RecordsController::class, 'showDoc']);
                            Route::delete('delete_doc/{id}/{id_doc}',  [RecordsController::class, 'deleteDoc']);
                        });
                    //.MODULE RECORDS

                    //MODULE DOCUMENTS
                    Route::prefix('documents')
                        ->group(function () {
                            Route::get('/', [DocumentsController::class, 'index'])->name('documents.index');
                            Route::put('store', [DocumentsController::class, 'store']);
                            Route::put('update/{id_doc}',  [DocumentsController::class, 'update']);
                            Route::get('show/{id_doc}',  [DocumentsController::class, 'show']);
                            Route::delete('delete/{id_doc}',  [DocumentsController::class, 'delete']);

                        });
                    //.MODULE DOCUMENTS

                    //MODULE PROJECTS
                    Route::prefix('associations')
                        ->group(function () {
                            Route::get('/', [AssociationsController::class, 'index'])->name('associations.index');
                            Route::get('edit/{id}', [AssociationsController::class, 'edit']);
                            Route::put('update/{id}', [AssociationsController::class, 'update']);
                            Route::get('create', [AssociationsController::class, 'create']);
                            Route::put('store', [AssociationsController::class, 'store']);
                            Route::get('show/{id}', [AssociationsController::class, 'show']);
                            Route::match(['get', 'post', 'delete'],'delete/{id}', [AssociationsController::class, 'destroy']);

                        });
                    //.MODULE PROJECTS
                });
        });
        //====================================================================================================
    });
});
