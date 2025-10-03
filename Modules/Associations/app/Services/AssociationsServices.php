<?php

namespace Modules\Associations\Services;

use App\Services\Responses\ResponseError;
use App\Services\Responses\ResponseSuccess;
use Modules\Associations\Dto\AssociationsDto;
use Modules\Associations\Repositories\AssociationsRepositories;


class AssociationsServices
{
    protected ?string $classPath;
    public function __construct(public AssociationsRepositories $associationsRepositories)
    {
        $this->classPath = __DIR__ . '/' . class_basename(__CLASS__) . '.php';
    }

    public function index($params): array
    {
        $associations= $this->associationsRepositories->getAllAssociations($params);

//dd($voltages);
        return ['data' => [
            'associations' => $associations,
        ]];
    }

    public function create()
    {

        return ['data' => []];
    }

    public function store(AssociationsDto $associationsDto): ResponseError|ResponseSuccess
    {
        // STORE PROJECT
        $association = $this->associationsRepositories->storeAssociation($associationsDto);

        if (!$association) {
            return new ResponseError('method: storeAssociations($associationsDto)',  $this->classPath,[]);
        }


        return new ResponseSuccess('','',['id'=>$association->id]);
    }

    public function show($id): array
    {
        $association = $this->associationsRepositories->getAssociationsById($id);
        $activitiesAss = $this->associationsRepositories->getActivitiesAssignment($id);
        $assignments = $this->associationsRepositories->getAssignmentByIdAssociations($id);

        $insertedby = $association->insertedby ;
        $updatedby = $association->updatedby;

        $updatedby = $this->associationsRepositories->getUserById($updatedby);
        $insertedby = $this->associationsRepositories->getUserById($insertedby);

        $insertedby = $insertedby->username ?? __('associations.AssociationsServices.no_existing_user');
        $updatedby = $updatedby->username  ?? __('associations.AssociationsServices.no_existing_user');

        return ['data' => [
            'association' => $association,
            'activitiesAss' => $activitiesAss,
            'updatedby_' => $updatedby,
            'insertedby_' => $insertedby,
            'assignments' => $assignments,
        ]];

    }

    public function edit( int $id): array
    {
        $association = $this->associationsRepositories->getAssociationById($id);

        return ['data' => [
            'association' => $association,

            ]];
    }

    public function update(AssociationsDto $associationsDto): ResponseSuccess|ResponseError
    {
        $id = $associationsDto->id;

        // CHECK IF PROJECT EXIST ///////////////////////////////////////////////
        $association = $this->associationsRepositories->getAssociationById($id);
        if (!$association) {
            return new ResponseError('method: getAssociationsById($id)',  $this->classPath, ['message_error'=>__('associations.AssociationsServices.error_no_existing_associations')]);
        }

        // UPDATE PROJECT
        $association = $this->associationsRepositories->updateAssociation($id, $associationsDto);
        if (!$association) {
            return new ResponseError('$id, $associationsDto',  $this->classPath,['message_error'=>__('error_update_association')]);
        }

        return new ResponseSuccess('update($activities, AssociationsDto $associationsDto)',$this->classPath,[]);
    }

    public function deleteAssociations($id): ResponseSuccess|ResponseError
    {
        $return= $this->associationsRepositories->deleteAssociation($id);
        if (!$return) {
            return new ResponseError('method: deleteAssociations($id)',  $this->classPath,[]);
        }
        return new ResponseSuccess('','',[]);
    }

    public function showAssignment($id): array
    {

        $assignments= $this->associationsRepositories->getAssignmentById($id);

        $insertedby = $assignments->insertedby ;
        $updatedby = $assignments->updatedby;

        $updatedby = $this->associationsRepositories->getUserById($updatedby);
        $insertedby = $this->associationsRepositories->getUserById($insertedby);

        $insertedby = $insertedby->username ?? __('associations.AssociationsServices.no_existing_user');
        $updatedby = $updatedby->username  ?? __('associations.AssociationsServices.no_existing_user');

        $assignment = $this->associationsRepositories->getAssignmentById($id);
        return ['data' => [
            'assignment' => $assignment,
            'updatedby_' => $updatedby,
            'insertedby_' => $insertedby,
        ]];

    }
    public function editAssignment( int $id): array
{
    $assignments= $this->associationsRepositories->getAssignmentById($id);

    $insertedby = $assignments->insertedby ;
    $updatedby = $assignments->updatedby;

    $updatedby = $this->associationsRepositories->getUserById($updatedby);
    $insertedby = $this->associationsRepositories->getUserById($insertedby);

    $insertedby = $insertedby->username ?? __('associations.AssociationsServices.no_existing_user');
    $updatedby = $updatedby->username  ?? __('associations.AssociationsServices.no_existing_user');

    $assignment = $this->associationsRepositories->getAssignmentById($id);
    return ['data' => [
        'assignment' => $assignment,
        'updatedby_' => $updatedby,
        'insertedby_' => $insertedby,
    ]];
}
public function updateAssignment(AssociationsAssignmentsDto $assignmentsDto): ResponseSuccess|ResponseError
{
    $id = $assignmentsDto->id;

    // CHECK IF ASSIGNMENTS EXIST ///////////////////////////////////////////////
    $assignment = $this->associationsRepositories->getAssignmentById($id);

    if (!$assignment) {
        return new ResponseError('method: getAssignmentById($id)',  $this->classPath,[]);
    }

    // UPDATE ASSIGNMENTS
    $assignment = $this->associationsRepositories->updateAssignment($id, $assignmentsDto);
    if (!$assignment) {
        return new ResponseError('method: updateAssignment($id, $assignmentsDto)',  $this->classPath,[]);
    }
    return new ResponseSuccess('','',[]);
}
public function storeAssignment(AssociationsAssignmentsDto $assignmentsDto,$id): ResponseError|ResponseSuccess
{
    // STORE ASSIGNMENT
    $assignment = $this->associationsRepositories->storeAssignment($assignmentsDto,$id);

    if (!$assignment) {
        return new ResponseError('method: storeAssociations($assignmentsDto)',  $this->classPath,[]);
    }
    return new ResponseSuccess('','',['id'=>$assignment->id]);
}
    public function deleteAssignment($id): ResponseSuccess|ResponseError

    {
        $return= $this->associationsRepositories->checkIfAssignmentExistInRecords($id);
        //dd($return);
        if ($return) {
            return new ResponseError('checkIfAssignmentExistInRecords($id)', $this->classPath, ['error_message' => __('associations.AssociationsServices.error_delete_assignments')]);
        }

        $return= $this->associationsRepositories->deleteAssignment($id);
        if (!$return) {
            return new ResponseError('method: deleteAssignment($id)',  $this->classPath,[]);
        }
        return new ResponseSuccess('','',[]);
    }
}
