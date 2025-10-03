<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Associations extends Model
{
    use HasFactory;

    protected $table = "associations";
    protected $fillable = [
        'name',
        'phone',
        'link',

        'active',
        'deleted',
        'created_by',
        'updated_by',
    ];
    public function records(): \Illuminate\Database\Eloquent\Relations\hasMany
    {
        return $this->hasMany(Records::class, 'id_association','id');
    }
}
