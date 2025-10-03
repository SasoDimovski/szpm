<?php

namespace Modules\Records\Repositories;

use App\Models\Associations;
use App\Models\Documents;
use App\Models\Records;
use App\Models\Users;
use Illuminate\Support\Facades\Auth;
use Modules\Records\Dto\RecordsDto;
use Illuminate\Support\Facades\Storage;

class RecordsRepositories
{
    public function getAllRecords($id_module, $params)
    {
        $query = Records::where('deleted', 0)
            ->where('id_module', $id_module)
            ->select([
                'id',
                'title',
                'slug',
                'id_association',
                'active',
            ])

            ->with(['association:id,name']);

        // Филтрирање според параметри
        $filterableFields = ['id', 'title'];
        foreach ($filterableFields as $field) {
            if (isset($params[$field])) {
                $query->where($field, 'like', '%' . $params[$field] . '%');
            }
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
        $listing = $params['listing'] ?? config('records.pagination');
        if ($listing === 'a') {
            $listing = $query->count();
        }
        // Сортирање
        $sort = $params['sort'] ?? 'DESC';
        $order = $params['order'] ?? 'id';
        $query->orderBy($order, $sort);

        return $query->paginate($listing);
    }
    public function getAllAssociations(): ?\Illuminate\Database\Eloquent\Collection
    {
        $return = Associations::where('deleted', 0)->get();
        if ($return->isEmpty()) {
            return null;
        }
        return $return;
    }
    public function getRecordById($id)
    {
        return Records::with(['association:id,name'])->find($id);
    }
    public function getRecordByIdUser($id_user)
    {
        $record = Records::where('id_user', '=', $id_user)->first();
        if($record) {
            return $record;
        }
        return null;
    }

    public function storeRecord(RecordsDto $recordDto, $picture_name)
    {
//            $active = (isset($data['active'])) ? 1  : 0;

        $user= Records::create([
            'id_user_logged' => Auth::id(),
            'id_user' => Auth::id(),
            'id_module' => $recordDto->id_module,
            'id_association' => $recordDto->id_association,
            'title' => $recordDto->title,
            'slug' => $this->slugConvertor($recordDto->title),
            'subtitle' => $recordDto->subtitle,
            'intro' => $recordDto->intro,
            'text' => $recordDto->text,
            'picture' => $picture_name,
            'cover' => $recordDto->cover,
            'main' => $recordDto->main,
            'active' => $recordDto->active,
            'created_by' => Auth::id(),
            'updated_by' => Auth::id(),
        ]);

        return $user;

    }
    public function updateRecord($id, RecordsDto $data, $picture_name)
    {
        $record = Records::where('id', '=', $id)->first();
        if($record) {
            $record->id_user_logged = $data->id_user_logged;
            $record->id_user = $data->id_user;
            //$record->id_module = $data->id_module;
            $record->id_association = $data->id_association;
            $record->title = $data->title;
            $record->slug = $this->slugConvertor($data->title);
            $record->subtitle = $data->subtitle;
            $record->intro = $data->intro;
            $record->text = $data->text;
            $record->picture = $picture_name;
            $record->cover = $data->cover;
            $record->main = $data->main;
            $record->active = $data->active;
            if ($record->save()) {
                return $record;
            }
        }
        return null;
    }

    public function delete($id)
    {
        $record = $this->getRecordById($id);
        if($record) {

            Records::where('id', '=', $id)->delete();
            if (Storage::disk('publish')->exists('records/' .$id )) {
                Storage::disk('publish')->delete('records/' .$id );
            }

            return $record;
//          $users->deleted = 1;
//          return $users->save();
        }
        return null;
    }

    public function storeDocument($file, $type, $path, $size, $data)
    {
        $active = (isset($data['active_doc'])) ? 1  : 0;
        $public= (isset($data['public_doc'])) ? 1  : 0;
        $document= Documents::create([
            'id_user_logged' => $data['id_user_doc'],
            'id_module' => $data['id_module_doc'],
            'id_record' => $data['id_record_doc'],
            'name' => $data['name_doc'],
            'comment' => $data['comment_doc'],
            'active' => $active,
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

    public function updateDocument($id_doc, $file, $type, $size, $path, $data)
    {
        $document = Documents::where('id', '=', $id_doc)->first();
        $active = (isset($data['active_doc'])) ? 1  : 0;
        $public= (isset($data['public_doc'])) ? 1  : 0;
        if($document) {
            $document->id_user_logged = $data['id_user_doc'];
            $document->name = $data['name_doc'];
            $document->comment = $data['comment_doc'];
            $document->active = $active;
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

    public function deleteDocument($id)
    {
        $document = $this->getDocumentById($id);
        if($document) {
            Documents::where('id', '=', $id)->delete();
            return $document;
        }
        return null;
    }
    public function slugConvertor($string): string
    {
        $tr = array(
            "A" => "a", "B" => "b", "C" => "v", "D" => "d", "E" => "e", "F" => "f", "G" => "g", "H" => "h",
            "I" => "i", "J" => "j", "K" => "k", "L" => "l", "M" => "m", "N" => "n", "O" => "o", "P" => "p",
            "Q" => "q", "R" => "r", "S" => "s", "T" => "t", "U" => "u", "V" => "v", "W" => "w", "X" => "x",
            "Y" => "y", "Z" => "z", "&#39;" => "", "А" => "a", "Б" => "b", "В" => "v", "Г" => "g", "Д" => "d",
            "Е" => "e", "Ж" => "zh", "З" => "z", "И" => "i",
            "Й" => "j", "К" => "k", "Л" => "l", "М" => "m", "Н" => "n",
            "О" => "o", "П" => "p", "Р" => "r", "С" => "s", "Т" => "t",
            "У" => "u", "Ф" => "f", "Х" => "kh", "Ц" => "c", "Ч" => "ch",
            "Ш" => "sh", "Щ" => "sch", "Ъ" => "", "Ы" => "y", "Ь" => "",
            "Э" => "e", "Ю" => "yu", "Я" => "ya", "а" => "a", "б" => "b",
            "в" => "v", "г" => "g", "д" => "d", "е" => "e", "ё" => "yo",
            "ж" => "zh", "з" => "z", "и" => "i", "й" => "j", "к" => "k",
            "л" => "l", "м" => "m", "н" => "n", "о" => "o", "п" => "p",
            "р" => "r", "с" => "s", "т" => "t", "у" => "u", "ф" => "f",
            "х" => "kh", "ц" => "c", "ч" => "ch", "ш" => "sh", "щ" => "sch",
            "ъ" => "", "ы" => "y", "ь" => "", "э" => "e", "ю" => "yu",
            "я" => "ya", " " => "-", "." => "", "," => "", "/" => "-",
            ":" => "", ";" => "", "—" => "", "–" => "-", "„" => "", "“" => "",
            "љ" => "lj", "њ" => "nj", "ѕ" => "dz", "ѓ" => "gj", "ќ" => "kj", "ј" => "j",
            "Љ" => "lj", "Њ" => "nj", "Ѕ" => "dz", "Ѓ" => "gj", "Ќ" => "kj", "Ј" => "j",
            "/" => "", "%" => "", "`" => "",
            "'" => "", "(" => "", ")" => "",
            "ѐ" => "e", "Ѐ" => "E", "!" => "", "ѝ" => "i", "Ѝ" => "i", '"' => "",
            'Џ' => "dzh", 'џ' => "dzh", '’' => "", "&" => "", '+' => "", "=" => "", "_" => "", "ë" => "e", "ç" => "c"
        );
        $string=strtr($string,$tr);
//            $string = strtolower(trim($string));
//            $string = preg_replace('/[^a-z0-9-]/', '-', $string);
//            $string = preg_replace('/-+/', "-", $string);
        return $string;
    }
}
