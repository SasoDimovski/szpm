<?php

namespace Modules\Documents\Services;

use App\Models\Groups;
use App\Services\Responses\ErrorResponse;
use App\Services\Responses\ResponseError;
use App\Services\Responses\ResponseSuccess;
use App\Services\Responses\SuccessResponse;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\ImageManager;
use Modules\Documents\Dto\DocumentsDto;
use Modules\Documents\Repositories\DocumentsRepositories;


class DocumentsServices
{
    public function __construct(public DocumentsRepositories $documentsRepositories)
    {
    }

    public function index($id_module,$params): array
    {
        $documents = $this->documentsRepositories->getAllDocuments($id_module,$params);
        return ['data' => [
            'documents' => $documents,
        ]];
    }


    public function store($data): ResponseError|ResponseSuccess
    {

        $id_doc = '';
        $path_global = 'documents/';

        if (!empty($data['file_doc'])) {

            /*create file name ------------------------------------------------------------------------------------------*/
            $extension= strtolower($data['file_doc']->getClientOriginalExtension());
            $file = date('Ymd_His') . '_' . Str::random(3) . '.' . $extension;
            /*end create file name ------------------------------------------------------------------------------------------*/

            /*type of file ------------------------------------------------------------------------------------------*/
            $type =$extension;
            /*-----------------------------------------------------------------------------------------------------------*/

            /*size of file ------------------------------------------------------------------------------------------*/
            $fileSizeInBytes = $data['file_doc']->getSize(); // Во бајти

            $fileSizeInKB = $fileSizeInBytes / 1024; // Во килобајти
            $fileSizeInMB = $fileSizeInBytes / 1024 / 1024; // Во мегабајти
            //dd($fileSizeInBytes);
            if($fileSizeInMB>1) {$fileSize=$fileSizeInMB;$size_=' MB';} else {$fileSize=$fileSizeInKB;$size_=' KB';}

            $size = number_format($fileSize, 3).$size_;
            /*-----------------------------------------------------------------------------------------------------------*/

            /*path of file ------------------------------------------------------------------------------------------*/
            $path=$path_global .'/';
            /*-----------------------------------------------------------------------------------------------------------*/

            // UPDATE DOCUMENT ///////////////////////////////////////////////
            $documents = $this->documentsRepositories->store($file, $type, $path, $size, $data);
            $id_doc=$documents->id;
            /*save file ------------------------------------------------------------------------------------------*/
            Storage::disk('publish')->makeDirectory($path_global.$id_doc, 0777, true);
            $data['file_doc']->move(Storage::disk('publish')->path($path_global.$id_doc. '/'), $file);
        }

        $path=$path_global.$id_doc.'/';

        $documents = $this->documentsRepositories->updatePath($id_doc, $path);

        if (!$documents) {
            return new ResponseError('store($data)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
        }
        return new ResponseSuccess([]);
    }

    public function show($id): array
    {
        $document= $this->documentsRepositories->getDocumentById($id);
        return ['data' => [
            'document' => $document,
        ]];

    }

    public function update( $id_doc, $data): ResponseError|ResponseSuccess
    {
        //dd($data['comment_doc']);
        $document=$this->documentsRepositories->getDocumentById($id_doc);

        //old parameters
        $file = $document->file;
        $type = $document->type;
        $size= $document->size;
        $path = $document->path;

        $path_global = 'documents/';

        if (!empty($data['file_doc'])) {

            /*delete old file  ------------------------------------------------------------------------------------------*/
            if (Storage::disk('publish')->exists($path_global .'/'.$id_doc .'/' .$file )) {
                Storage::disk('publish')->delete($path_global .'/'. $id_doc.'/' .$file );
            }
            /*-----------------------------------------------------------------------------------------------------------*/

            /*create file name ------------------------------------------------------------------------------------------*/
            $extension= strtolower($data['file_doc']->getClientOriginalExtension());
            $file = date('Ymd_His') . '_' . Str::random(3) . '.' . $extension;
            /*-----------------------------------------------------------------------------------------------------------*/

            /*type of file ------------------------------------------------------------------------------------------*/
            $type =$extension;
            /*-----------------------------------------------------------------------------------------------------------*/

            /*size of file ------------------------------------------------------------------------------------------*/
            $fileSizeInBytes = $data['file_doc']->getSize(); // Во бајти
            $fileSizeInKB = $fileSizeInBytes / 1024; // Во килобајти
            $fileSizeInMB = $fileSizeInBytes / 1024 / 1024; // Во мегабајти
            if($fileSizeInMB>1) {$fileSize=$fileSizeInMB;$size_=' MB';} else {$fileSize=$fileSizeInKB;$size_=' KB';}

            $size = number_format($fileSize, 3).$size_;
            /*-----------------------------------------------------------------------------------------------------------*/

            /*path of file ------------------------------------------------------------------------------------------*/
            $path=$path_global . $id_doc . '/';
            /*-----------------------------------------------------------------------------------------------------------*/

            /*store file ------------------------------------------------------------------------------------------*/
            //Storage::disk('publish')->makeDirectory($path_global.$id_doc, 0777, true);
            $data['file_doc']->move(Storage::disk('publish')->path($path_global . $id_doc . '/'), $file);
            /*-----------------------------------------------------------------------------------------------------------*/

        }

        // UPDATE DOCUMENT ///////////////////////////////////////////////
        $documents = $this->documentsRepositories->updateDocument($id_doc, $file, $type, $size, $path, $data);
        if (!$documents) {
            return new ResponseError('method: updateDocuments($id_doc, $file, $type, $size, $path, $data)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
        }
        return new ResponseSuccess([]);
    }
    public function delete($id_doc): ResponseError|ResponseSuccess
    {
        $path = 'documents/';
        if (Storage::disk('publish')->exists($path . '/' . $id_doc)) {
            Storage::disk('publish')->deleteDirectory($path . '/' . $id_doc);
        }
        $document = $this->documentsRepositories->delete($id_doc);

        if (!$document) {
            return new ResponseError('delete($id_doc)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
        }
        return new ResponseSuccess([]);
    }


}
