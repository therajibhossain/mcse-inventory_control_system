<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;

class providers_table_seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $created_at = Carbon::now();
        DB::table('providers')->insert([
            ['name' => 'Flora Limited', 'email' => 'FloraLimited@yopmail.com', 'phone' => '8801716807985', 'created_at' => $created_at, 'updated_at' => $created_at],
            ['name' => 'Grameenphone Ltd.', 'email' => 'GrameenphoneLtd@yopmail.com', 'phone' => '8801711080179', 'created_at' => $created_at, 'updated_at' => $created_at],
            ['name' => 'ARA Technologies LTD.', 'email' => 'ARATechnologiesLTD@yopmail.com', 'phone' => '01678004444', 'created_at' => $created_at, 'updated_at' => $created_at],
            ['name' => 'Global Brand Pvt. LTD', 'email' => 'GlobalBrandPvt.LTD@yopmail.com', 'phone' => '01973257918', 'created_at' => $created_at, 'updated_at' => $created_at],
            ['name' => 'Eshana Jute', 'email' => 'EshanaJute@yopmail.com', 'phone' => '01773423151', 'created_at' => $created_at, 'updated_at' => $created_at],            
        ]);
    }
}