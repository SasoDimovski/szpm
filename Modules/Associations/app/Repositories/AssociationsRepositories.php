<?php

namespace Modules\Associations\Repositories;


use App\Models\Conductors;
use App\Models\Endpoints;
use App\Models\GroundWires;
use App\Models\InsulatorChain;
use App\Models\Associations;
use App\Models\Users;
use App\Models\Voltages;
use App\Models\WindPressure;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Modules\Associations\Dto\AssociationsDto;

class AssociationsRepositories
{
    public function getAllAssociations($params): \Illuminate\Pagination\LengthAwarePaginator

    {
        $query = Associations::query()
            ->where('associations.deleted', 0);

        // LIKE filters
        $likeFilters = ['id', 'name'];
        foreach ($likeFilters as $field) {
            if (!empty($params[$field])) {
                $query->where("associations.$field", 'like', '%' . $params[$field] . '%');
            }
        }

        // ACTIVE / DEACTIVATED filter
        $active = !empty($params['active']);
        $deactivated = !empty($params['deactivated']);

        if ($active && !$deactivated) {
            $query->where('active', 1);
        } elseif (!$active && $deactivated) {
            $query->where('active', 0);
        }

        // Sort handling
        $sortField = $params['order'] ?? 'id';
        $sortDirection = $params['sort'] ?? 'DESC';

        // Pagination
        $listing = $params['listing'] ?? config('associations.pagination');
        if ($listing === 'a') {
            $listing = $query->count();
        }

        return $query->paginate($listing);
    }

    public function storeAssociation($associationsDto)
    {
        $association= Associations::create([
            'name' => $associationsDto->name,
            'phone' => $associationsDto->phone,
            'link' => $associationsDto->link,
            'created_by' => Auth::id(),
            'updated_by' => Auth::id(),
            'active' => $associationsDto->active,
            'deleted' => 0,
        ]);
        return $association;

    }

    public function updateAssociation($id, AssociationsDto $data)
    {
        $association = Associations::where('id', '=', $id)->first();

        if($association) {
            $association->name = $data->name;
            $association->phone = $data->phone;
            $association->link = $data->link;
            $association->updated_by = Auth::id();
            $association->active = $data->active;

            if ($association->save()) {
                return $association;
            }
        }
        return null;
    }
    public function deleteAssociation($id)
    {
        $return = $this->getAssociationById($id);
        if(!$return) {
            return null;
        }
        $return =Associations::where('id', '=', $id)->delete();
        if(!$return) {
            return null;
//          $users->deleted = 1;
//          return $users->save();
        }
        return $return;
    }







    public function getAssociationById($id)
    {
        $return = Associations::where('id', '=', $id)
       ->first();
        if ($return) {
            return $return;
        }
        return null;
    }
    public function getUserById($id)
    {
        $return= Users::where('id', '=', $id)->first();
        if ($return){
            return $return;
        }
        return null;
    }


}
