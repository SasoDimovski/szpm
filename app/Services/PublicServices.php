<?php

namespace App\Services;

use App\Repositories\PublicRepositories;
use App\Services\Responses\ResponseError;
use App\Services\Responses\ResponseSuccess;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\ImageManager;
use Modules\Records\Dto\RecordsDto;


readonly class PublicServices
{
    protected ?string $classPath;

    public function __construct(private PublicRepositories $publicRepositories)
    {
        $this->classPath = __DIR__ . '/' . class_basename(__CLASS__) . '.php';
    }

    public function indexAssociations($params): array
    {
        $associations= $this->publicRepositories->getAllAssociations($params);
        $news= $this->publicRepositories->getRecordsByIdModuleIdAssociation(8,57,$params);
        $vesnik= $this->publicRepositories->getRecordByIdModuleIdAssociation(24,57,$params);
        $koha= $this->publicRepositories->getRecordByIdModuleIdAssociation(22,57,$params);
        $bilteni= $this->publicRepositories->getRecordsByIdModuleIdAssociationBilten(21,57,$params);
        return ['data' => [
            'associations' => $associations,
            'news' => $news,
            'vesnik' => $vesnik,
            'koha' => $koha,
            'bilteni' => $bilteni,
        ]];
    }

    public function indexAssociation($id_module,$id_association,$params): array
    {
       $record= $this->publicRepositories->getRecordByIdModuleIdAssociation($id_module,$id_association,$params);
       if($record){$documents = $this->publicRepositories->getDocumentByIdRecord($record->id);}else{$documents=[];}

        $associations= $this->publicRepositories->getAllAssociations($params);
        $news= $this->publicRepositories->getRecordsByIdModuleIdAssociation(8,57,$params);
        $vesnik= $this->publicRepositories->getRecordByIdModuleIdAssociation(24,57,$params);
        $koha= $this->publicRepositories->getRecordByIdModuleIdAssociation(22,57,$params);
        $bilteni= $this->publicRepositories->getRecordsByIdModuleIdAssociationBilten(21,57,$params);

        return ['data' => [
            'record' => $record,
            'documents' => $documents,
            'associations' => $associations,
            'news' => $news,
            'vesnik' => $vesnik,
            'koha' => $koha,
            'bilteni' => $bilteni,
        ]];
    }
    public function indexStatic($id_module,$id_association,$params): array
    {
        $record= $this->publicRepositories->getRecordByIdModuleIdAssociation($id_module,$id_association,$params);
        if($record){$documents = $this->publicRepositories->getDocumentByIdRecord($record->id);}else{$documents=[];}

        $associations= $this->publicRepositories->getAllAssociations($params);
        $news= $this->publicRepositories->getRecordsByIdModuleIdAssociation(8,57,$params);
        $vesnik= $this->publicRepositories->getRecordByIdModuleIdAssociation(24,57,$params);
        $koha= $this->publicRepositories->getRecordByIdModuleIdAssociation(22,57,$params);
        $bilteni= $this->publicRepositories->getRecordsByIdModuleIdAssociationBilten(21,57,$params);
        return ['data' => [
            'record' => $record,
            'documents' => $documents,
            'associations' => $associations,
            'news' => $news,
            'vesnik' => $vesnik,
            'koha' => $koha,
            'bilteni' => $bilteni,
        ]];
    }
    public function indexRecords($id_module,$id_association,$params): array
    {
        $module= $this->publicRepositories->getModuleTitle($id_module)->title;
        $records= $this->publicRepositories->getRecordsByIdModuleIdAssociation($id_module,$id_association,$params);
        $associations= $this->publicRepositories->getAllAssociations($params);
        $news= $this->publicRepositories->getRecordsByIdModuleIdAssociation(8,57,$params);
        $vesnik= $this->publicRepositories->getRecordByIdModuleIdAssociation(24,57,$params);
        $koha= $this->publicRepositories->getRecordByIdModuleIdAssociation(22,57,$params);
        $bilteni= $this->publicRepositories->getRecordsByIdModuleIdAssociationBilten(21,57,$params);

        return ['data' => [
            'module' => $module,
            'records' => $records,
            'associations' => $associations,
            'news' => $news,
            'vesnik' => $vesnik,
            'koha' => $koha,
            'bilteni' => $bilteni,

        ]];
    }
    public function indexRecord($id_module,$id_association,$id,$params): array
    {
        $record= $this->publicRepositories->getRecordById($id);
        if($record){$documents = $this->publicRepositories->getDocumentByIdRecord($record->id);}else{$documents=[];}

        $associations= $this->publicRepositories->getAllAssociations($params);
        $news= $this->publicRepositories->getRecordsByIdModuleIdAssociation(8,57,$params);
        $vesnik= $this->publicRepositories->getRecordByIdModuleIdAssociation(24,57,$params);
        $koha= $this->publicRepositories->getRecordByIdModuleIdAssociation(22,57,$params);
        $bilteni= $this->publicRepositories->getRecordsByIdModuleIdAssociationBilten(21,57,$params);
        return ['data' => [
            'record' => $record,
            'documents' => $documents,
            'associations' => $associations,
            'news' => $news,
            'vesnik' => $vesnik,
            'koha' => $koha,
            'bilteni' => $bilteni,
        ]];
    }
    public function indexSearch($params): array
    {
        $params1=null;
        $records= $this->publicRepositories->getRecordsSearch($params);
        $associations= $this->publicRepositories->getAllAssociations($params1);
        $news= $this->publicRepositories->getRecordsByIdModuleIdAssociation(8,57,$params1);
        $vesnik= $this->publicRepositories->getRecordByIdModuleIdAssociation(24,57,$params1);
        $koha= $this->publicRepositories->getRecordByIdModuleIdAssociation(22,57,$params1);
        $bilteni= $this->publicRepositories->getRecordsByIdModuleIdAssociationBilten(21,57,$params1);

        return ['data' => [
            'records' => $records,
            'associations' => $associations,
            'news' => $news,
            'vesnik' => $vesnik,
            'koha' => $koha,
            'bilteni' => $bilteni,

        ]];
    }
    public function index($params): array
    {

        $records= $this->publicRepositories->getRecordsByIdModuleIdAssociation(8,57,$params);
        $associations= $this->publicRepositories->getAllAssociations($params);
        $news= $this->publicRepositories->getRecordsByIdModuleIdAssociation(8,57,$params);
        $vesnik= $this->publicRepositories->getRecordByIdModuleIdAssociation(24,57,$params);
        $koha= $this->publicRepositories->getRecordByIdModuleIdAssociation(22,57,$params);
        $bilteni= $this->publicRepositories->getRecordsByIdModuleIdAssociationBilten(21,57,$params);

        return ['data' => [
            'records' => $records,
            'associations' => $associations,
            'news' => $news,
            'vesnik' => $vesnik,
            'koha' => $koha,
            'bilteni' => $bilteni,

        ]];
    }


}
