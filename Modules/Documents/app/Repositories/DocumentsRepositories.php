<?php

namespace Modules\Documents\Repositories;

use App\Models\Countries;
use App\Models\Documents;
use App\Models\ExpirationTime;
use App\Models\GroupsUsers;
use App\Models\Languages;
use App\Models\ModulesUsers;
use App\Models\Passwords;
use App\Models\Records;
use App\Models\Users;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Modules\Users\Dto\UsersDto;

class DocumentsRepositories
{
    public function getAllDocuments($id_module,$params)
    {
        $query=Documents::where('deleted', '=', 0)
                    ->where('id_module', '=', $id_module)
                    ->select([
                        'id',
                        'id_user_logged',
                        'id_module',
                        'id_record',
                        'name',
                        'file',
                        'size',
                        'type',
                        'path',
                        'comment',
                        'public',
                        'active',
                        'deleted',
                    ]);

        // Филтрирање според параметри
        $filterableFields = ['id', 'name'];
        foreach ($filterableFields as $field) {
            if (isset($params[$field])) {
                $query->where($field, 'like', '%' . $params[$field] . '%');
            }
        }

        if (isset($params['type'])) {
            $query->where('type', '=', $params['type']);
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
        $listing = $params['listing'] ?? config('documents.pagination');
        if ($listing === 'a') {
            $listing = $query->count();
        }
        // Сортирање
        $sort = $params['sort'] ?? 'DESC';
        $order = $params['order'] ?? 'id';
        $query->orderBy($order, $sort);

        return $query->paginate($listing);
    }


    public function store($file, $type, $path, $size, $data)
    {
        $active = (isset($data['active_doc'])) ? 1  : 0;
        $public = (isset($data['public_doc'])) ? 1  : 0;
        $document= Documents::create([
            'id_user_logged' => $data['id_user_doc'],
            'id_module' => $data['id_module_doc'],
            'id_record' => $data['id_record_doc'],
            'name' => $data['name_doc'],
            'comment' => $data['comment_doc'],
            'active' => $active,
            'public' => $public,
            'file' => $file,
            'type' => $type,
            'path' => $path,
            'size' => $size,
        ]);
        if($document) {
            return $document;
        }
        return null;
    }
    public function updatePath($id_doc, $path)
    {
        $document = Documents::where('id', '=', $id_doc)->first();
        if($document) {
            $document->path = $path;
            if ($document->save()) {
                return $document;
            }
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

    public function delete($id)
    {
        $document = $this->getDocumentById($id);
        if($document) {
            Documents::where('id', '=', $id)->delete();
            return $document;
        }
        return null;
    }
    public function updateDocument($id_doc, $file, $type, $size, $path, $data)
    {
        $document = Documents::where('id', '=', $id_doc)->first();
        $active = (isset($data['active_doc'])) ? 1  : 0;
        $public = (isset($data['public_doc'])) ? 1  : 0;
        if($document) {
            $document->id_user_logged = $data['id_user_doc'];
            $document->name = $data['name_doc'];
            $document->comment = $data['comment_doc'];
            $document->active = $active;
            $document->public = $public;
            $document->file = $file;
            $document->type = $type;
            $document->size = $size;
            $document->path = $path;
            if ($document->save()) {
                return $document;
            }
        }
        return null;
    }

    public function getUserById($id)
    {
        $user = Users::where('id', '=', $id)->first();
        if ($user){
            return $user;
        }
        return null;
    }


    public function storeUser($usersDto, $picture_name)
    {
//            $active = (isset($data['active'])) ? 1  : 0;

      $user= Users::create([
            'id_user_logged' => $usersDto->id_user_logged,
            'name' => $usersDto->name,
            'surname' => $usersDto->surname,
            'username' => $usersDto->username,
            'email' => $usersDto->email,
            'address' => $usersDto->address,
            'phone' => $usersDto->phone,
            'picture' => $picture_name,
            'id_country' => $usersDto->id_country,
            'id_expiration_time' => $usersDto->id_expiration_time,
            'edb' => $usersDto->edb,
            'user_type' => $usersDto->user_type,
            'active' => $usersDto->active,
        ]);


        Records::create([
            'id_user' => $user->id,
            'id_module' => 11,
        ]);
        return $user;

    }
    public function updateUser($id, UsersDto $data, $picture_name)
    {
        $user = Users::where('id', '=', $id)->first();

        if($user) {
            $user->name = $data->name;
            $user->surname = $data->surname;
            $user->username = $data->username;
            $user->email = $data->email;
            $user->address = $data->address;
            $user->id_country = $data->id_country;
            $user->phone = $data->phone;
            $user->picture = $picture_name;
            $user->id_expiration_time = $data->id_expiration_time;
            $user->user_type = $data->user_type;
            $user->edb = $data->edb;

            if(isset($data->password)) {
                $user->password = Hash::make($data->password);
            }
            $user->active = $data->active;

            if ($user->save()) {
                return $user;
            }
        }
        return null;
    }

    public function storePasswordUsers($id,$password)
    {
        $user = $this->getUserById($id);
        if($user) {
            $user->password =$password;
            return $user->save();
        }
        return null;
    }
    public function storePasswordPasswords($id, $password)
    {
        if (isset($password) && isset($id)) {
            $user = $this->getUserById($id);
            if ($user) {
                $password = Passwords::create([
                    'id_user' => $id,
                    'password' => $password]);
                if ($password) {
                    return $password;
                }
                return null;
            }
            return null;
        }
        return null;
    }
    public function previousPasswords($id_user)
    {
        $previousPasswords = Passwords::where('id_user', $id_user)->pluck('password');
        if ($previousPasswords) {
            return $previousPasswords;
        }
        return null;
    }
    public function deleteUser($id)
    {
        $users = $this->getUserById($id);
        if($users) {

            Users::where('id', '=', $id)->delete();
            if (Storage::disk('publish')->exists('users/' .$id )) {
                Storage::disk('publish')->delete('users/' .$id );
            }

            return $users;
//          $users->deleted = 1;
//          return $users->save();
        }
        return null;
    }
    public function getAllCountries()
    {
        $countries = Countries::where('active', '=', '1')->get();;
        if ($countries) {
            return $countries;
        }
        return null;
    }
    public function getAllExpirationTime()
    {
        $expirationTime = ExpirationTime::where('active', '=', '1')->get();;
        if ($expirationTime) {
            return $expirationTime;
        }
        return null;
    }
    public function storeNewHash($hash,$id_user,$type, $date)
    {
        $user = $this->getUserById($id_user);
        if($user) {
            $user->password_reset_hash =$hash;
            $user->password_reset_type =$type;
            $user->password_reset_hash_date =$date;
            return $user->save();
        }
        return null;
    }
    public function storePrivileges($id_user,$user_type): null
    {
        $user = $this->getUserById($id_user);
            $user = Users::find($id_user);
            $user->modules()->detach();
            $user->groups()->detach();
        if($user_type==1) {
            $newModules = [1,11]; // IDs на новите модули
        }
        if($user_type==2) {
            $newModules = [1,2,11,12]; // IDs на новите модули
        }
            foreach ($newModules as $moduleId) {
                ModulesUsers::create([
                    'user_id' => $id_user,
                    'module_id' => $moduleId,
                    'active' => true,
                    'deleted' => false,
                ]);
        }
        return null;
    }

    public function addGroupToUser(int $userId, int $groupId): ?GroupsUsers
    {
        $exists = GroupsUsers::where('user_id', $userId)
            ->where('group_id', $groupId)
            ->exists();

        if (!$exists) {
            // Ако не постои, внеси нов запис
            return GroupsUsers::create([
                'user_id' => $userId,
                'group_id' => $groupId,
                'active' => true,       // Дополнителни полиња при креирање
                'deleted' => false,
            ]);
        }
        return null;
    }

    public function removeGroupToUser(int $userId, int $groupId): ?int
    {
        $records = GroupsUsers::where('user_id', $userId)
            ->where('group_id', $groupId)
            ->get();

        if ($records->isNotEmpty()) {
           return GroupsUsers::where('user_id', $userId)
                ->where('group_id', $groupId)
                ->delete();
        }
return null;

    }

    public function getLanguagesByLang($lang)
    {
        return Languages::where('lang', '=', $lang)->first();
    }

}
