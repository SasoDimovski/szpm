<?php

namespace Modules\Records\Services;

use App\Services\Responses\ResponseError;
use App\Services\Responses\ResponseSuccess;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\ImageManager;
use Modules\Records\Dto\RecordsDto;
use Modules\Records\Repositories\RecordsRepositories;
use Modules\Users\Dto\UsersDto;
use Modules\Users\Emails\UsersRegistrationMail;


readonly class RecordsServices
{
    protected ?string $classPath;

    public function __construct(private RecordsRepositories $recordsRepositories)
    {
        $this->classPath = __DIR__ . '/' . class_basename(__CLASS__) . '.php';
    }

    public function index($id_module, $params): array
    {
        //dd($params);
        $records= $this->recordsRepositories->getAllRecords($id_module, $params);
        $associations= $this->recordsRepositories->getAllAssociations();
        return ['data' => [
            'records' => $records,
            'associations' => $associations,
        ]];
    }
    public function edit(String $lang, int $id): array
    {
        $associations= $this->recordsRepositories->getAllAssociations();
        $record = $this->recordsRepositories->getRecordById($id);
        $documents = $this->recordsRepositories->getDocumentByIdRecordIdModule($id, $record->id_module);
        return ['data' => [
            'associations' => $associations,
            'record' => $record,
            'documents' => $documents,
        ]];
    }

    public function create(): array
    {
        $associations= $this->recordsRepositories->getAllAssociations();
        //dd($associations);
        $documents=[];
        return ['data' => [
            'associations' => $associations,
            'documents' => $documents,
        ]];
    }
    public function store( RecordsDto $recordsDto): ResponseError|ResponseSuccess
    {
        //dd($recordsDto->picture);
        $picture_name = '';
        $methodName = 'store(RecordsDto $recordsDto)';
        $path = 'records/';


        //CREATE PICTURE NAME
        $picture_name = '';
        if (!empty($recordsDto->picture)) {
            $extension = strtolower($recordsDto->picture->getClientOriginalExtension());
            $picture_name = date('Ymd_His') . '_'.Str::random(3) .'.'. $extension;
        }

        // STORE RECORD
        $record = $this->recordsRepositories->storeRecord($recordsDto,$picture_name);
        if (!$record) {
            //__('users.UsersController.error_store_user')
            return new ResponseError($methodName,  $this->classPath, ['id_error'=>'1']);
        }

        // STORE PICTURE
        if ($record && !empty($recordsDto->picture)) {
            Storage::disk('publish')->makeDirectory($path . $record->id, 0777, true);
            $image = ImageManager::imagick()->read($recordsDto->picture);
            $image_tn = ImageManager::imagick()->read($recordsDto->picture);
            $width = $image->width();
            if (($width > 1200)) {
                $image->scaleDown(width: 1200);
            }
            $image_tn = $image_tn->scaleDown(width: 300);
            $image_tn->save(Storage::disk('publish')->path($path . $record->id . '/tn_' . $picture_name));
            $image->save(Storage::disk('publish')->path($path . $record->id . '/' . $picture_name));
        }


        if (!$record) {
            return new ResponseError($methodName,  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
        }
        return new ResponseSuccess($methodName,  __DIR__ . '/' . class_basename(__CLASS__) . '.php',['id'=>$record->id]);
    }
    public function update(int $id, ?String $file_name_hidden, RecordsDto $recordsDto): ResponseError|ResponseSuccess
    {
        //dd($recordsDto->picture);
        $picture_name = '';
        $path = 'records/';
        // CHECK IF RECORD EXIST ///////////////////////////////////////////////
        $isRecord = $this->recordsRepositories->getRecordById($id);
        if (!$isRecord) {
            return new ResponseError('method: getRecordById($id)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
        }

        // SAVE PICTURE ///////////////////////////////////////////////
        if (!empty($recordsDto->picture) && !empty($file_name_hidden)) {
            /*get old picture name ------------------------------------------------------------------------------------------*/
            $record = $this->recordsRepositories->getRecordById($id);
            $picture_name_old = (!empty($recordsDto->picture) ) ? $record->picture : '';
            /*end get old picture name ------------------------------------------------------------------------------------------*/
            /*create picture name ------------------------------------------------------------------------------------------*/
            $extension = strtolower($recordsDto->picture->getClientOriginalExtension());
            $picture_name = date('Ymd_His') . '_' . Str::random(8) . '.' . $extension;
            /*end create picture name ------------------------------------------------------------------------------------------*/
            Storage::disk('publish')->makeDirectory($path.$record->id, 0777, true);
            $userDirectory = $path . $record->id;
            $filesToDelete = [$picture_name_old, 'tn_'.$picture_name_old,]; // Имена на фајловите за бришење
            foreach ($filesToDelete as $file) {
                if (Storage::disk('publish')->exists($userDirectory . '/' .$file )) {
                    Storage::disk('publish')->delete($userDirectory . '/' .$file );
                }
            }
            $image = ImageManager::imagick()->read($recordsDto->picture);
            $image_tn = ImageManager::imagick()->read($recordsDto->picture);
            $width = $image->width();
            if (($width > 1200)) {
                $image->scaleDown(width: 1200);
            }
            $image_tn = $image_tn->scaleDown(width: 300);
            $image_tn->save(Storage::disk('publish')->path($path . $record->id . '/tn_' . $picture_name));
            $image->save(Storage::disk('publish')->path($path . $record->id . '/' . $picture_name));
        }
        if (empty($recordsDto->picture) && empty($file_name_hidden)) {
            $picture_name = '';
            /*get old picture name ------------------------------------------------------------------------------------------*/
            $record = $this->recordsRepositories->getRecordById($id);
            $picture_name_old = $record->picture;
            /*end get old picture name ------------------------------------------------------------------------------------------*/
            $userDirectory = $path . $record->id;
            $filesToDelete = [$picture_name_old, 'tn_'.$picture_name_old,]; // Имена на фајловите за бришење
            foreach ($filesToDelete as $file) {
                if (Storage::disk('publish')->exists($userDirectory . '/' .$file )) {
                    Storage::disk('publish')->delete($userDirectory . '/' .$file );
                }
            }
        }
        if (empty($recordsDto->picture) && !empty($file_name_hidden)) {
            $picture_name = $file_name_hidden;
        }

        // UPDATE RECORD ///////////////////////////////////////////////
        $record = $this->recordsRepositories->updateRecord($id, $recordsDto, $picture_name);
        if (!$record) {
            return new ResponseError('method: updateRecord($id, $recordsDto, $picture_name)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
        }
        return new ResponseSuccess('method: updateRecord($id, $recordsDto, $picture_name)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
    }
    public function getRecordById($id)
    {
        if($id) {
            return $this->recordsRepositories->getRecordById($id);
        }
        return null;
    }
    public function getRecordByIdUser($id_user)
    {
        if($id_user) {
            return $this->recordsRepositories->getRecordByIdUser($id_user);
        }
        return null;
    }
    public function getDocumentByIdRecordIdModule($id_record, $id_module)
    {
        if($id_record&&$id_module) {
            return $this->recordsRepositories->getDocumentByIdRecordIdModule($id_record, $id_module);
        }
        return null;
    }

    public function storeDoc($id_record, $data): ResponseError|ResponseSuccess
    {
        $file = '';
        $type = '';
        $path = '';
        $size = '';

        $path_global = 'records/';

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
            $size = number_format($fileSizeInKB, 3).' KB';
            /*-----------------------------------------------------------------------------------------------------------*/

            /*path of file ------------------------------------------------------------------------------------------*/
            $path=$path_global . $id_record . '/';
            /*-----------------------------------------------------------------------------------------------------------*/

            /*save file ------------------------------------------------------------------------------------------*/
            Storage::disk('publish')->makeDirectory($path_global.$id_record, 0777, true);
            $data['file_doc']->move(Storage::disk('publish')->path($path_global . $id_record . '/'), $file);
        }

        // UPDATE DOCUMENT ///////////////////////////////////////////////
        $documents = $this->recordsRepositories->storeDocument($file, $type, $path, $size, $data);

        if (!$documents) {
            return new ResponseError('method: updateRecord($id, $recordsDto, $picture_name)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
        }
        return new ResponseSuccess('method: updateRecord($id, $recordsDto, $picture_name)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
    }

    public function updateDoc($id_record, $id_doc, $data): ResponseError|ResponseSuccess
    {
        //dd($data['comment_doc']);
        $document=$this->recordsRepositories->getDocumentById($id_doc);

        //old parameters
        $file = $document->file;
        $type = $document->type;
        $size= $document->size;
        $path = $document->path;

        $path_global = 'records/';

        if (!empty($data['file_doc'])) {

            /*delete old file  ------------------------------------------------------------------------------------------*/
            if (Storage::disk('publish')->exists($path_global .'/'.$id_record .'/' .$file )) {
                Storage::disk('publish')->delete($path_global .'/'. $id_record.'/' .$file );
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
            $size = number_format($fileSizeInKB, 3).' KB';
            /*-----------------------------------------------------------------------------------------------------------*/

            /*path of file ------------------------------------------------------------------------------------------*/
            $path=$path_global . $id_record . '/';
            /*-----------------------------------------------------------------------------------------------------------*/

            /*store file ------------------------------------------------------------------------------------------*/
            Storage::disk('publish')->makeDirectory($path_global.$id_record, 0777, true);
            $data['file_doc']->move(Storage::disk('publish')->path($path_global . $id_record . '/'), $file);
            /*-----------------------------------------------------------------------------------------------------------*/

        }

        // UPDATE DOCUMENT ///////////////////////////////////////////////
        $documents = $this->recordsRepositories->updateDocument($id_doc, $file, $type, $size, $path, $data);
        if (!$documents) {
            return new ResponseError('method: updateDocuments($id_doc, $file, $type, $size, $path, $data)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
        }
        return new ResponseSuccess('method: updateRecord($id, $recordsDto, $picture_name)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
    }
    public function deleteDocument($id_record, $id_doc): ResponseError|ResponseSuccess
    {
        $path = 'records/';
        $file = $this->recordsRepositories->getDocumentById($id_doc)->file;
        if (Storage::disk('publish')->exists($path .'/'.$id_record .'/' .$file )) {
            Storage::disk('publish')->delete($path .'/'. $id_record.'/' .$file );
        }
        $document = $this->recordsRepositories->deleteDocument($id_doc);

        if (!$document) {
            return new ResponseError('method: recordsRepositories->deleteDocument($id_doc)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
        }
        return new ResponseSuccess('method: updateRecord($id, $recordsDto, $picture_name)',  __DIR__ . '/' . class_basename(__CLASS__) . '.php');
    }

    public function showDoc($id): array
    {
        $document= $this->recordsRepositories->getDocumentById($id);
        return ['data' => [
            'document' => $document,
        ]];

    }
    public function delete($id): ResponseSuccess|ResponseError
    {
        $methodName = 'deleteUser($id)';
        $return= $this->recordsRepositories->delete($id);
        if (!$return) {
            return new ResponseError($methodName, $this->classPath, ['id_error'=>'1']);
        }
        return new ResponseSuccess($methodName, $this->classPath,[]);
    }
}
