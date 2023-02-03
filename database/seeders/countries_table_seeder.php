<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;

class countries_table_seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('countries')->insert([
            ['name' => 'Bangladesh'],
            ['name' => 'India'],
            ['name' => 'Pakistan'],
        ]);
        Artisan::call('storage:link');

    }
}