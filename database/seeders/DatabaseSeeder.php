<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Role;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        Role::create([
            'id' => '1',
            'roles_kode' => 'su',
            'roles_name' => 'Super Admin'
        ]);

        Role::create([
            'id' => '2',
            'roles_kode' => 'cls',
            'roles_name' => 'Tim Closing'
        ]);

        Role::create([
            'id' => '3',
            'roles_kode' => 'web',
            'roles_name' => 'Tim Web'
        ]);

        Role::create([
            'id' => '4',
            'roles_kode' => 'prg',
            'roles_name' => 'Tim Program'
        ]);

        Role::create([
            'id' => '5',
            'roles_kode' => 'seo',
            'roles_name' => 'Tim SEO'
        ]);
        
        Role::create([
            'id' => '6',
            'roles_kode' => 'pls',
            'roles_name' => 'Tim Pelunasan'
        ]);

        User::factory(10)->create();

    }
}