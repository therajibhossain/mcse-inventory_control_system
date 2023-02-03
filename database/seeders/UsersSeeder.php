<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert
        ([
            ['name' => 'Admin', 'email' => 'admin@yopmail.com', 'email_verified_at' => Carbon::now(), 'created_at'=>Carbon::now(), 'is_admin'=>'1', 'password' => Hash::make('admin@yopmail.com')],
            ['name' => 'Staff', 'email' => 'staff@yopmail.com', 'email_verified_at' => Carbon::now(), 'created_at'=>Carbon::now(), 'is_admin'=>'0', 'password' => Hash::make('staff@yopmail.com')]
        ]);
//        \Artisan::call('key:generate');
//        \Artisan::call('storage:link');
//        \Artisan::call('optimize:clear');
    }
}