<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Users extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'surname',
        'id_country',
        'address',
        'phone',
        'picture',
        'email',
        'email_verified_at',
        'username',
        'password',
        'password_reset_hash',
        'password_reset_type',
        'password_reset_hash_date',
        'verification_code',
        'verification_code_expire',
        'id_expiration_time',
        'user_type',
        'active',
        'deleted',
        'created_at',
        'updated_at',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
   //     'password',
    //    'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
        ];
    }
    public function documents(): \Illuminate\Database\Eloquent\Relations\HasMany
    {
        return $this->hasMany(Documents::class, 'id_record');
    }

    public function country(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(Countries::class, 'id_country');
    }

    public function expirationTime(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(ExpirationTime::class, 'id_expiration_time');
    }

    public function modules(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Modules::class, 'modules_users', 'user_id', 'module_id'); // дефинирање однос еден на многу
    }
    public function groups(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Groups::class, 'groups_users', 'user_id', 'group_id'); // дефинирање однос еден на многу
    }
    // Users може да ја има во повеќе записи (Records)
    public function records(): \Illuminate\Database\Eloquent\Relations\hasMany
    {
        return $this->hasMany(Records::class, 'insertedby','id');
    }
    public function lastPassword(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(Passwords::class, 'id_user')->latestOfMany();
    }

}
