<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;

class clients_table_seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $created_at = Carbon::now();
        DB::table('clients')->insert([
            ['document_type' => 'C', 'document_id' => '2022005321', 'name' => '3S Software Ltd.', 'email' => '3SSoftwareLtd@yopmail.com', 'phone' => '8801822911624', 'created_at' => $created_at, 'updated_at' => $created_at],
            ['document_type' => 'C', 'document_id' => '2021002383', 'name' => '7 MARK', 'email' => '7MARK@yopmail.com', 'phone' => '8801717375219', 'created_at' => $created_at, 'updated_at' => $created_at],
            ['document_type' => 'C', 'document_id' => '2022005226', 'name' => 'A D Khan Castle', 'email' => 'ADKhanCastle@yopmail.com', 'phone' => '8801717375219', 'created_at' => $created_at, 'updated_at' => $created_at],
            ['document_type' => 'C', 'document_id' => '2008000015', 'name' => 'ACI Logistics Ltd.', 'email' => 'ACILogisticsLtd@yopmail.com', 'phone' => '8801717375219', 'created_at' => $created_at, 'updated_at' => $created_at],
            ['document_type' => 'C', 'document_id' => 'C2019006226', 'name' => 'ACS Textiles (BD) Ltd.', 'email' => 'ACSTextiles(BD)Ltd@yopmail.com', 'phone' => '8801713037448', 'created_at' => $created_at, 'updated_at' => $created_at],
        ]);
    }
}