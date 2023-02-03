<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class payment_mothods_table_seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('payment_methods')->insert([
            ['name' => 'aamra-2015678 (DBBL)', 'description'=>'Mirpur Circle-10, Dhaka-1216' ,'created_at'=>Carbon::now(), 'updated_at'=>Carbon::now()],
            ['name' => 'aamra-50156986 (IBBL)', 'description'=>'Mirpur Circle-10, Dhaka-1216' ,'created_at'=>Carbon::now(), 'updated_at'=>Carbon::now()],
            ['name' => 'Petty Cash', 'description'=>'Cash in hand' ,'created_at'=>Carbon::now(), 'updated_at'=>Carbon::now()],
        ]);
    }
}