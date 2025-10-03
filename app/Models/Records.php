<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Records extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'id_user',
        'id_user_logged',
        'id_module',
        'id_association',
        'title',
        'slug',
        'subtitle',
        'intro',
        'text',
        'picture',
        'main',
        'cover',
        'active',
        'deleted',
        'created_at',
        'updated_at'

    ];
    public function children(): \Illuminate\Database\Eloquent\Relations\HasMany
    {
        return $this->hasMany(Documents::class, 'id_record', 'id')->orderBy('created_at', 'DESC');
    }

    public function user(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(Users::class, 'id_user');
    }
    public function association(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(Associations::class, 'id_association');
    }
    public function module(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(Modules::class, 'id_module');
    }
    public function lastDocument(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(Documents::class, 'id_record')->latest('id'); // ќе земе последен по created_at или id
    }
}
