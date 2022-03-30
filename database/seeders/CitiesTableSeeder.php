<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CitiesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
	
        $cities = [
            ['name'=>'Bronx', 'alias'=>'bx', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Brooklyn', 'alias'=>'br', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Queens', 'alias'=>'qe', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Manhattn', 'alias'=>'mh', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Richmond', 'alias'=>'ri', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Buffalo', 'alias'=>'bf', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Rochester', 'alias'=>'rh','image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Yonkers', 'alias'=>'yo', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Syracuse', 'alias'=>'sy', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Albany', 'alias'=>'al', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'New Rochelle', 'alias'=>'nr', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Mount Vernon', 'alias'=>'mv','image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Schenectady', 'alias'=>'sc', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Utica', 'alias'=>'ut', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'White Plains', 'alias'=>'wp', 'image'=>public_path().'/default/city_icon.png'],
            ['name'=>'Niagara Falls', 'alias'=>'nf','image'=>public_path().'/default/city_icon.png'],
        ];

        foreach ($cities as $key => $city) {
            DB::table('cities')->insert([
                'name'=>$city['name'],
                'alias'=>$city['alias'],
                'created_at' => now(),
                'updated_at' => now(),
                'image'=>$city['image'],
                'header_title'=>'Food Delivery from<br /><strong>'.$city['name'].'</strong>’s Best Restaurants',
                'header_subtitle'=>'The meals you love, delivered with care',
            ]);
        }
    }
}
