<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;

class products_table_seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $created_at = Carbon::now();
        DB::table('products')->insert([
            ['name' => 'Smart Display', 'product_code' => 'ADI001946', 'product_category_id' => 1, 'price' => 100, 'stock' => 10, 'weight' => 1, 'created_at' => $created_at, 'updated_at' => $created_at],
            ['name' => 'Kiosk 138 43" HD43-F ', 'product_code' => 'ADI001945', 'product_category_id' => 1, 'price' => 200, 'stock' => 10, 'weight' => 1, 'created_at' => $created_at, 'updated_at' => $created_at],
        
            ['name' => 'Accessories Power Supply 24', 'product_code' => 'AMO001059', 'product_category_id' => 2, 'price' => 300, 'stock' => 20, 'weight' => 2, 'created_at' => $created_at, 'updated_at' => $created_at],
            ['name' => 'Accessories Mobile SIM 68', 'product_code' => 'AMO001058', 'product_category_id' => 2, 'price' => 400, 'stock' => 20, 'weight' => 2, 'created_at' => $created_at, 'updated_at' => $created_at],
        
            ['name' => 'Data Center Civil 127 Cabinet', 'product_code' => 'DCI001833', 'product_category_id' => 3, 'price' => 400, 'stock' => 30, 'weight' => 3, 'created_at' => $created_at, 'updated_at' => $created_at],
            ['name' => 'Data Center Civil 127 Chair', 'product_code' => 'DCI001832', 'product_category_id' => 3, 'price' => 500, 'stock' => 30, 'weight' => 3, 'created_at' => $created_at, 'updated_at' => $created_at],
        
            ['name' => ' Station 5N', 'product_code' => 'WWI001148', 'product_category_id' => 4, 'price' => 400, 'stock' => 30, 'weight' => 3, 'created_at' => $created_at, 'updated_at' => $created_at],
            ['name' => 'R5AC Lite', 'product_code' => 'WWI001147', 'product_category_id' => 4, 'price' => 500, 'stock' => 30, 'weight' => 3, 'created_at' => $created_at, 'updated_at' => $created_at],
        
            ['name' => 'Switch Unmanaged ', 'product_code' => 'SUN000791', 'product_category_id' => 5, 'price' => 400, 'stock' => 30, 'weight' => 3, 'created_at' => $created_at, 'updated_at' => $created_at],
            ['name' => 'Switch Unmanaged 6 JFS516', 'product_code' => 'SUN000790', 'product_category_id' => 5, 'price' => 500, 'stock' => 30, 'weight' => 3, 'created_at' => $created_at, 'updated_at' => $created_at],
        ]);
    }
}