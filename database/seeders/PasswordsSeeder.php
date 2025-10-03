<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class PasswordsSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('passwords')->insert([
            [
                'id_user'    => 1,
                'password'   => Hash::make('password'),
                'active'     => 1,   // по default е 1, но експлицитно е ок
                'deleted'    => 0,   // по default е 0
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id_user'    => 2,
                'password'   => Hash::make('username'),
                'active'     => 1,
                'deleted'    => 0,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
