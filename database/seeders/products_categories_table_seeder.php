<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;

class products_categories_table_seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('product_categories')->insert([
            ['name' => 'Audio and Video Collaboration', 'created_at'=> Carbon::now(), 'updated_at'=> Carbon::now()],
            ['name' => 'Accessories', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['name' => 'Data Center', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['name' => 'Wireless', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['name' => 'Switch', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
        ]);
    }
}