<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Web extends Model
{
    //use HasFactory;
	    protected $fillable = [
	    'company_id',
	    'slug',
		'quienes',
		'img_quienes',
		'img_cab',
		
		//'img_logo',
		
		'cat1',
		'cat2',
		'cat3',
		'cat4',
		
		'facebook',
		'instagram',
		'youtube',
		'twitter',
		
		'img_foot',
		'correo',
		'quienes',
		'horario',
		'carta',
		
		/* Platos */
		'img_plat1',
		'img_plat2',
		'img_plat3',
		'img_plat4',
		'img_plat5',
		'img_plat6',
		
		'tit_plat1',
		'tit_plat2',
		'tit_plat3',
		'tit_plat4',
		'tit_plat5',
		'tit_plat6',
		
		'ingred1',
		'ingred2',
		'ingred3',
		'ingred4',
		'ingred5',
		'ingred6',
		
		'price1',
		'price2',
		'price3',
		'price4',
		'price5',
		'price6',
		
        /* Slider */
		'slider_image1',
		'slider_image2',
		'slider_image3',
		
		'tit_slider_1',
		'tit_slider_2',
		'tit_slider_3',
		
		'sub_tit_sli_1',
		'sub_tit_sli_2',
		'sub_tit_sli_3',
		
		/* Team */
		'team_bool',
		
		'team_nam1',
		'team_nam2',
		'team_nam3',
		
		'team_inst1',
		'team_inst2',
		'team_inst3',
		
		'team_fac1',
		'team_fac2',
		'team_fac3',
		
		'team1',
		'team2',
		'team3',
		
		'team_name1',
		'team_name2',
		'team_name3',
		
		'team_position1',
		'team_position2',
		'team_position3',
		
		
		//testimonios
		'test1',
		'test2',
		'test3',
		
		'pers_test1',
		'pers_test2',
		'pers_test3',
		
	    'cpers_test1',
	    'cpers_test2',
	    'cpers_test3',
		
		
		
		'addr_google',

		
		//Nuestros Platos
		'img_cart',
		'img_hor',
		



	 	];
	
	
	public function pathb() 
	{
	  return url("/webs/{$this->slug}");
	}
	
	public function restaurante()
    {
		//return $this->belongsTo(\App\Restorant::class
      // return $this->belongsTo('App\Restorant', 'company_id');
	 
       return $this->belongsTo('\App\Restorant', 'company_id', 'id');
    }

	
}
