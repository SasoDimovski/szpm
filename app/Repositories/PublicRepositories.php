<?php

namespace App\Repositories;

use App\Models\Associations;
use App\Models\Documents;
use App\Models\Modules;
use App\Models\Records;
use Illuminate\Support\Facades\Auth;
use Modules\Records\Dto\RecordsDto;
use Illuminate\Support\Facades\Storage;

class PublicRepositories
{
    private $publicRepositories;

    public function getAllAssociations($params): \Illuminate\Database\Eloquent\Collection

    {
        return Associations::query()
            ->where('deleted', 0)
            ->where('active', 1)
            ->orderBy('name')   // по име по дифолт, менувај по потреба
            ->get();
    }


    public function getRecordsByIdModuleIdAssociation($id_module, $id_association, $params)
    {
        $query = Records::where('deleted', 0)
            ->where('id_module', $id_module)
            ->where('id_association', $id_association)
            ->where('active', 1)
            ->select([
                'id',
                'title',
                'slug',
                'subtitle',
                'intro',
                'text',
                'picture',
                'id_module',
                'id_association',
                'created_at',
                'active',
            ])

            ->with(['association:id,name']);

        // Филтрирање според параметри
        if (!empty($params['search'])) {
            $search = trim($params['search']);

            $query->where(function($q) use ($search) {
                $q->where('title', 'like', "%{$search}%")
                    ->orWhere('subtitle', 'like', "%{$search}%")
                    ->orWhere('intro', 'like', "%{$search}%")
                    ->orWhere('text', 'like', "%{$search}%");
            });
        }

        if (isset($params['id_association'])) {
            $query->where('id_association', '=', $params['id_association']);
        }


        $active=isset($params['active'])?1:0;
        $deactivated=isset($params['deactivated'])?1:0;

        if ($active==1 && $deactivated==0) {
            $query->where('active', 1);
        }
        if ($active==0 && $deactivated==1) {
            $query->where('active', 0);
        }


        // Pagination
        $listing = $params['listing'] ?? config('config.news_pagination');
        if ($listing === 'a') {
            $listing = $query->count();
        }
        // Сортирање
        $sort = $params['sort'] ?? 'DESC';
        $order = $params['order'] ?? 'id';
        $query->orderBy($order, $sort);

        return $query->paginate($listing);
    }
    public function getRecordsSearch($params)
    {

        $query = Records::where('deleted', 0)
            ->where('active', 1)
            ->whereNotIn('id_module', [20, 21, 22, 23, 24])
            ->select([
                'id',
                'title',
                'slug',
                'subtitle',
                'intro',
                'text',
                'picture',
                'id_module',
                'id_association',
                'created_at',
                'active',
            ])
            ->with(['association:id,name']);

        // Филтрирање според параметри
        if (!empty($params['search'])) {
            $search = trim($params['search']);

            $query->where(function($q) use ($search) {
                $q->where('title', 'like', "%{$search}%")
                    ->orWhere('subtitle', 'like', "%{$search}%")
                    ->orWhere('intro', 'like', "%{$search}%")
                    ->orWhere('text', 'like', "%{$search}%");
            });
        }

        // Pagination
        $listing = $params['listing'] ?? config('config.news_pagination');
        if ($listing === 'a') {
            $listing = $query->count();
        }
        // Сортирање
        $sort = $params['sort'] ?? 'DESC';
        $order = $params['order'] ?? 'id';
        $query->orderBy($order, $sort);

        return $query->paginate($listing);
    }
    public function getRecordsByIdModuleIdAssociationBilten($id_module, $id_association, $params = [])
    {
        return Records::where('deleted', 0)
            ->where('active', 1)
            ->where('id_module', $id_module)
            ->where('id_association', $id_association)
            ->select([
                'id','title','slug','subtitle','intro','picture',
                'id_module','id_association','created_at','active',
            ])
            ->with([
                'association:id,name',
                'module:id,title',
                'lastDocument:id,id_record,name,file',
            ])
            ->orderByDesc('created_at')
            ->take(2)
            ->get();
    }

    public function getRecordById($id)
    {
        return Records::with(['association:id,name', 'module:id,title'])->find($id);
    }



    public function getRecordByIdModuleIdAssociation($id_module, $id_association, $params)
    {
        return Records::with([
            'association:id,name',
            'module:id,title',
            'lastDocument:id,id_record,name,file' // избери ги полињата што ти требаат
        ])
            ->where('id_module', $id_module)
            ->where('id_association', $id_association)
            ->orderBy('created_at', 'desc')
            ->first();
    }
    public function getDocumentByIdRecord($id_record)
    {
        $document = Documents:: where('id_record', '=', $id_record)
           -> where('active', '=', 1)
            ->orderby('documents.id', 'DESC')
            ->get();

        if ($document) {
            return $document;
        }
        return null;
    }


    public function getDocumentByIdRecordIdModule($id_record, $id_module)
    {
        $document = Documents:: where('id_record', '=', $id_record)
            ->where('id_module', '=', $id_module)
            ->orderby('documents.id', 'DESC')
            ->get();

        if ($document) {
            return $document;
        }
        return null;
    }
    public function getDocumentById($id_doc)
    {
        $document = Documents:: where('id', '=', $id_doc)->first();
        if ($document) {
            return $document;
        }
        return null;
    }
    public function getModuleTitle($id)
    {
        return Modules:: where('id', '=', $id)->first();

    }

}
