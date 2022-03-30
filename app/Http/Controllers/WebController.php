<?php

namespace App\Http\Controllers;

use App\Models\Web;
use App\Restorant;
// use App\Models\TabbedMenu;
use App\Models\Commentary;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Image;
use Auth;
use View;

use App\Mail\ContactanosMailable;
use Illuminate\Support\Facades\Mail;

class WebController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   public function index()
    {
		
        $id = auth()->id();
		$is_admin = auth()->user()->is_admin;
       $restorant = Restorant::where('user_id', '=', $id)->first();
		
//echo $restorant;die;

		if($restorant){
		$ac = $restorant->id;
        $webs = Web::where('company_id', '=', $ac)->get();


		if ($is_admin == 1){
         $webs = Web::latest()->simplePaginate(5);
        return view('webs.index',compact('webs'))
            ->with('i', (request()->input('web', 1) - 1) * 5);
		}
else{
        return view('webs.index',compact('webs'));
}
    }
     }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         return view('webs.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
			$id_user= Auth::user()->id;
			
			$restorant = Restorant::where('user_id', $id_user)->first();
				$company_id =$restorant->id;
				$slug =$restorant->subdomain;
			
			
			/*********************************************************************************************//*********************************************************************************************/
		if ($request->file('img_cab')== null) {

			if($request->get('img_cab-pre') != ""){
				$pre=$request->get('img_cab-pre');

				$img_cab= "uploads/webs/".$pre;
			}else{
				$img_cab="";
			}
		}else{

			$fond = Image::make($request->file('img_cab')->getRealPath());
			$fond->orientate();

			$file_name1 = "img_cab" . time() . "." . $request->file('img_cab')->extension();
			$fond->save(public_path('/uploads/webs/logos/' . $file_name1));
			//$fond->save(public_path('/app/public/uploads/' . $file_name1));

			$img_cab= $datosPersonals['img_cab']= "uploads/".$file_name1;
		}
		/*********************************************************************************/
		/*
		if ($request->file('img_logo')== null) {

			if($request->get('img_logo-pre') != ""){
				$pre=$request->get('img_logo-pre');

				$img_logo= "uploads/webs/".$pre;
			}else{
				$img_logo="";
			}
		}else{

			$fond = Image::make($request->file('img_logo')->getRealPath());
			$fond->orientate();

			$file_img_logo = "img_logo" . time() . "." . $request->file('img_logo')->extension();
			$fond->save(public_path('/uploads/webs/logos/' . $file_img_logo));
			//$fond->save(public_path('/app/public/uploads/' . $file_name1));

			$img_logo= $datosPersonals['img_logo']= "".$file_img_logo; //nombre con que se guarda en la base de datos.
			
		}*/
		/*******************************************************************************/
		if ($request->file('cat1')== null) {

			if($request->get('cat1-pre') != ""){
				$pre=$request->get('cat1-pre');

				$cat1= "uploads/webs/".$pre;
			}else{
				$cat1="";
			}
		}else{

			$categ1 = Image::make($request->file('cat1')->getRealPath());
			$categ1->orientate();

			$file_cat1 = "cat1" . time() . "." . $request->file('cat1')->extension();
			
			$categ1->save(public_path('/uploads/webs/logos/' . $file_cat1));
			//$categ1->save(public_path('/app/public/uploads/' . $file_cat1));

			$cat1= $datosPersonals['cat1']= "".$file_cat1;//nombre con que se guarda en la base de datos.
		}
		/*********************************************************************************************/
		if ($request->file('cat2')== null) {

			if($request->get('cat2-pre') != ""){
				$pre=$request->get('cat2-pre');

				$cat2= "uploads/webs/".$pre;
			}else{
				$cat2="";
			}
		}else{

			$categ2 = Image::make($request->file('cat2')->getRealPath());
			$categ2->orientate();

			$file_cat2 = "cat2" . time() . "." . $request->file('cat2')->extension();
			
			$categ2->save(public_path('/uploads/webs/logos/' . $file_cat2));
			//$categ2->save(public_path('/app/public/uploads/' . $file_cat2));

			$cat2= $datosPersonals['cat2']= "".$file_cat2;//nombre con que se guarda en la base de datos.
		}
		/*********************************************************************************************/
		if ($request->file('cat3')== null) {

			if($request->get('cat3-pre') != ""){
				$pre=$request->get('cat3-pre');

				$cat3= "uploads/webs/".$pre;
			}else{
				$cat3="";
			}
		}else{

			$categ3 = Image::make($request->file('cat3')->getRealPath());
			$categ3->orientate();

			$file_cat3 = "cat3" . time() . "." . $request->file('cat3')->extension();
		
			$categ3->save(public_path('/uploads/webs/logos/' . $file_cat3));
			//$categ3->save(public_path('/app/public/uploads/' . $file_cat3));

			$cat3= $datosPersonals['cat3']= "".$file_cat3;//nombre con que se guarda en la base de datos.
		}
		/*********************************************************************************************/
		if ($request->file('cat4')== null) {

			if($request->get('cat4-pre') != ""){
				$pre=$request->get('cat4-pre');

				$cat4= "uploads/webs/".$pre;
			}else{
				$cat4="";
			}
		}else{

			$categ4 = Image::make($request->file('cat4')->getRealPath());
			$categ4->orientate();

			$file_cat4 = "cat4" . time() . "." . $request->file('cat4')->extension();
			
			$categ4->save(public_path('/uploads/webs/logos/' . $file_cat4));
			//$categ4->save(public_path('/app/public/uploads/' . $file_cat4));

			$cat4= $datosPersonals['cat4']= "".$file_cat4;//nombre con que se guarda en la base de datos.
		}
		/*********************************************************************************************/
		if ($request->file('img_quienes')== null) {

			if($request->get('img_quienes-pre') != ""){
				$pre=$request->get('img_quienes-pre');
				
				$img_quienes= "uploads/webs/".$pre;
			}else{
				$img_quienes="";
			}
		}else{
		
			$fond = Image::make($request->file('img_quienes')->getRealPath());
			$fond->orientate();
		
			$file_name2 = "img_quienes" . time() . "." . $request->file('img_quienes')->extension();
		
			$fond->save(public_path('/uploads/webs/logos/' . $file_name2));
			//$fond->save(public_path('/app/public/uploads/' . $file_name2));
			
			$img_quienes= $datosPersonals['img_quienes']= "".$file_name2;//nombre con que se guarda en la base de datos.
		}
		/*********************************************************************************************/

		$webs = Web::create([
				 'company_id' => $company_id,
				 'slug' => $slug,
				 'img_cab' => $img_cab,
				 
				 //'img_logo' => $img_logo,
				 
				 'cat1' => $cat1,
				 'cat2' => $cat2,
				 'cat3' => $cat3,
				 'cat4' => $cat4,
				 
				 'facebook' => $request->get('facebook'),
				 'instagram' => $request->get('instagram'),
				 'youtube' => $request->get('youtube'),
				 'twitter' => $request->get('twitter'),
				 
				 'img_quienes' => $img_quienes,
				 'correo' => $request->get('correo'),
				 'quienes' => $request->get('quienes'),
				 'horario' => $request->get('horario'),
				 'carta' => $request->get('carta'),
        ]);
		
		return redirect('webs')->with('success', 'Su registro se ha realizado Satisfactoriamente!');
		
		
    }
	
	//public function sendemail(){
	public function sendEmail(Request $request){
		// $correo = new ContactanosMailable;
		// $correo = new ContactanosMailable($request->all());
		$correo2 = $request->get('correo2');
		/*'name' = $request->get('name');
		'subject' = $request->get('subject');
		'message' = $request->get('message');*/
		$mailData =$request->all();
        $correo = new ContactanosMailable($mailData);
		Mail::to($correo2)->send($correo);
		 return redirect()->back()->with('success','Mensaje enviado');

	}





    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Web $web)
    {
		
		//echo"hola pola";die;
		//echo $web;die;
		
		
		
		$restorant = Restorant::where('id', $web->company_id)->first();
		//$ratings = Rating::all();
		//$ratings = Commentary::where('company_id', $restorant->id)->where('status_id', 3)->get();

		  //return view ('webs.show', compact('restorant','web','tabbed_menus', 'ratings'));
		  return view ('webs.show', compact('restorant','web'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    //public function edit($id)
    public function edit(Web $web)
    {
        return view('webs.edit',compact('web'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Web $web)
    {
       	/***************************************************************/
		if ($request->file('img_quienes')== null) {
	 
				if($request->get('img_quienes-pre') != ""){
				$pre=$request->get('img_quienes-pre');
				
				$img_quienes= "".$pre;
			}else{
				 $img_quienes=$web->img_quienes;
			}
				}else{
				
						$fond = Image::make($request->file('img_quienes')->getRealPath());
						$fond->orientate();
					
						$file_nameq = "img_quienes" . time() . "." . $request->file('img_quienes')->extension();
						//$fond->save(storage_path('/app/public/uploads/webs/' . $file_nameq));
						$fond->save(public_path('/uploads/webs/' . $file_nameq));// aqui es hacia donde va
						
						
						
						
						
						
						$img_quienes="uploads/".$file_nameq;
				}	
		/***************************************************************/
		if ($request->file('img_cab')== null) {
	 
				if($request->get('img_cab-pre') != ""){
				$pre=$request->get('img_cab-pre');
				
				$img_cab= "".$pre;
			}else{
				 $img_cab=$web->img_cab;
			}
		}else{
				
				$fond = Image::make($request->file('img_cab')->getRealPath());
				$fond->orientate();
			
				$file_namec = "img_cab" . time() . "." . $request->file('img_cab')->extension();

				//$fond->save(storage_path('/app/public/uploads/' . $file_namec));
				$fond->save(public_path('/uploads/webs/logos/' . $file_namec));
				$img_cab="uploads/".$file_namec;
		}	
		/***************************************************************/

		/***************************************************************/
		if ($request->file('cat1')== null) {
	 
				if($request->get('cat1-pre') != ""){
				$pre=$request->get('cat1-pre');
				
				$cat1= "".$pre;
			}else{
				 $cat1=$web->cat1;
			}
				}else{
				
						$fond = Image::make($request->file('cat1')->getRealPath());
						$fond->orientate();
					
						$file_name1 = "cat1" . time() . "." . $request->file('cat1')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $file_name2));
						//$fond->save(storage_path('/app/public/uploads/' . $file_name1));
						$fond->save(public_path('/uploads/webs/logos/' . $file_name1));
						$cat1= $var_fij['cat1']= "".$file_name1;
				}
		/***************************************************************/
		if ($request->file('cat2')== null) {
	 
				if($request->get('cat2-pre') != ""){
				$pre=$request->get('cat2-pre');
				
				$cat2= "".$pre;
			}else{
				 $cat2=$web->cat1;
			}
				}else{
				
						$fond = Image::make($request->file('cat2')->getRealPath());
						$fond->orientate();
					
						$file_name2 = "cat2" . time() . "." . $request->file('cat2')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $file_name2));
						//$fond->save(storage_path('/app/public/uploads/' . $file_name2));
						$fond->save(public_path('/uploads/webs/' . $file_name2));
						$cat2= $var_fij['cat2']= "".$file_name2;
				}
		/***************************************************************/
		if ($request->file('cat3')== null) {
	 
				if($request->get('cat3-pre') != ""){
				$pre=$request->get('cat3-pre');
				$cat3= "".$pre;
			}else{
				 $cat3=$web->cat3;
			}
				}else{
						$fond = Image::make($request->file('cat3')->getRealPath());
						$fond->orientate();
						$file_name3 = "cat3" . time() . "." . $request->file('cat3')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $file_name2));
						//$fond->save(storage_path('/app/public/uploads/' . $file_name3));
						$fond->save(public_path('/uploads/webs/' . $file_name3));
						$cat3= $var_fij['cat3']= "".$file_name3;
				}
		/***************************************************************/
		if ($request->file('cat4')== null) {
	 
				if($request->get('cat4-pre') != ""){
				$pre=$request->get('cat4-pre');
				$cat4= "".$pre;
			}else{
				 $cat4=$web->cat4;
			}
				}else{
						$fond = Image::make($request->file('cat4')->getRealPath());
						$fond->orientate();
						$file_name4 = "cat4" . time() . "." . $request->file('cat4')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $file_name2));
						//$fond->save(storage_path('/app/public/uploads/' . $file_name4));
						$fond->save(public_path('/uploads/webs/' . $file_name4));
						$cat4= $var_fij['cat4']= "".$file_name4;
				}
		/**************************************************************1*/
		if ($request->file('img_plat1')== null) {
	 
				if($request->get('img_plat1') != ""){
				$pre=$request->get('img_plat1');
				$img_plat1= "".$pre;
			}else{
				 $img_plat1=$web->img_plat1;
			}
				}else{
						$fond = Image::make($request->file('img_plat1')->getRealPath());
						$fond->orientate();
						$plat1 = "img_plat1" . time() . "." . $request->file('img_plat1')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $plat1));
						//$fond->save(storage_path('/app/public/uploads/' . $plat1));
						$fond->save(public_path('/uploads/webs/' . $plat1));
						$img_plat1= $var_fij['img_plat1']= "".$plat1;
				}
		/**************************************************************2*/
		if ($request->file('img_plat2')== null) {
	 
				if($request->get('img_plat2') != ""){
				$pre=$request->get('img_plat2');
				$img_plat2= "".$pre;
			}else{
				 $img_plat2=$web->img_plat2;
			}
				}else{
						$fond = Image::make($request->file('img_plat2')->getRealPath());
						$fond->orientate();
						$plat2 = "img_plat2" . time() . "." . $request->file('img_plat2')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $plat2));
						//$fond->save(storage_path('/app/public/uploads/' . $plat2));
						$fond->save(public_path('/uploads/webs/' . $plat2));
						$img_plat2= $var_fij['img_plat2']= "".$plat2;
				}
		/**************************************************************3*/
		if ($request->file('img_plat3')== null) {
	 
				if($request->get('img_plat3') != ""){
				$pre=$request->get('img_plat3');
				$img_plat3= "".$pre;
			}else{
				 $img_plat3=$web->img_plat3;
			}
				}else{
						$fond = Image::make($request->file('img_plat3')->getRealPath());
						$fond->orientate();
						$plat3 = "img_plat3" . time() . "." . $request->file('img_plat3')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $plat3));
						//$fond->save(storage_path('/app/public/uploads/' . $plat3));
						$fond->save(public_path('/uploads/webs/' . $plat3));
						$img_plat3= $var_fij['img_plat3']= "".$plat3;
				}
		/**************************************************************4*/
		if ($request->file('img_plat4')== null) {
	 
				if($request->get('img_plat4') != ""){
				$pre=$request->get('img_plat4');
				$img_plat4= "".$pre;
			}else{
				 $img_plat4=$web->img_plat4;
			}
				}else{
						$fond = Image::make($request->file('img_plat4')->getRealPath());
						$fond->orientate();
						$plat4 = "img_plat4" . time() . "." . $request->file('img_plat4')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $plat4));
						//$fond->save(storage_path('/app/public/uploads/' . $plat4));
						$fond->save(public_path('/uploads/webs/' . $plat4));
						$img_plat4= $var_fij['img_plat4']= "".$plat4;
				}
		/**************************************************************5*/
		if ($request->file('img_plat5')== null) {
	 
				if($request->get('img_plat5') != ""){
				$pre=$request->get('img_plat5');
				$img_plat5= "".$pre;
			}else{
				 $img_plat5=$web->img_plat5;
			}
				}else{
						$fond = Image::make($request->file('img_plat5')->getRealPath());
						$fond->orientate();
						$plat5 = "img_plat5" . time() . "." . $request->file('img_plat5')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $plat5));
						//$fond->save(storage_path('/app/public/uploads/' . $plat5));
						$fond->save(public_path('/uploads/webs/' . $plat5));
						$img_plat5= $var_fij['img_plat5']= "".$plat5;
				}
		/**************************************************************6*/
		if ($request->file('img_plat6')== null) {
	 
				if($request->get('img_plat6') != ""){
				$pre=$request->get('img_plat6');
				$img_plat6= "".$pre;
			}else{
				 $img_plat6=$web->img_plat6;
			}
				}else{
						$fond = Image::make($request->file('img_plat6')->getRealPath());
						$fond->orientate();
						$plat6 = "img_plat6" . time() . "." . $request->file('img_plat6')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $plat6));
						//$fond->save(storage_path('/app/public/uploads/' . $plat6));
						$fond->save(public_path('/uploads/webs/' . $plat6));
						$img_plat6= $var_fij['img_plat6']= "".$plat6;
				}

		/**************************************************************7*/
		if ($request->file('slider_image1')== null) {
	 
				if($request->get('slider_image1') != ""){
				$pre=$request->get('slider_image1');
				$slider_image1= "".$pre;
			}else{
				 $slider_image1=$web->slider_image1;
			}
				}else{
						$fond = Image::make($request->file('slider_image1')->getRealPath());
						$fond->orientate();
						$add1 = "slider_image1" . time() . "." . $request->file('slider_image1')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $add1));
						//$fond->save(storage_path('/app/public/uploads/' . $add1));
						$fond->save(public_path('/uploads/webs/' . $add1));
						$slider_image1= $var_fij['slider_image1']= "".$add1;
				}
		/**************************************************************8*/
		if ($request->file('slider_image2')== null) {
	 
				if($request->get('slider_image2') != ""){
				$pre=$request->get('slider_image2');
				$slider_image2= "".$pre;
			}else{
				 $slider_image2=$web->slider_image2;
			}
				}else{
						$fond = Image::make($request->file('slider_image2')->getRealPath());
						$fond->orientate();
						$add2 = "slider_image2" . time() . "." . $request->file('slider_image2')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $add3));
						//$fond->save(storage_path('/app/public/uploads/' . $add3));
						$fond->save(public_path('/uploads/webs/' . $add2));
						$slider_image2= $var_fij['slider_image2']= "".$add2;
				}
		/**************************************************************9*/
		if ($request->file('slider_image3')== null) {
	 
				if($request->get('slider_image3') != ""){
				$pre=$request->get('slider_image3');
				$slider_image3= "".$pre;
			}else{
				 $slider_image3=$web->slider_image3;
			}
				}else{
						$fond = Image::make($request->file('slider_image3')->getRealPath());
						$fond->orientate();
						$add3 = "slider_image3" . time() . "." . $request->file('slider_image3')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $add3));
						//$fond->save(storage_path('/app/public/uploads/' . $add3));
						$fond->save(public_path('/uploads/webs/' . $add3));
						$slider_image3= $var_fij['slider_image3']= "".$add3;
				}
		/**************************************************************10*/
		if ($request->file('img_quienes')== null) {
	 
				if($request->get('img_quienes') != ""){
				$pre=$request->get('img_quienes');
				$img_quienes= "".$pre;
			}else{
				 $img_quienes=$web->img_quienes;
			}
				}else{
						$fond = Image::make($request->file('img_quienes')->getRealPath());
						$fond->orientate();
						$add4 = "img_quienes" . time() . "." . $request->file('img_quienes')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $add4));
						//$fond->save(storage_path('/app/public/uploads/' . $add4));
						$fond->save(public_path('/uploads/webs/' . $add4));
						$img_quienes= $var_fij['img_quienes']= "".$add4;
				}
		/**************************************************************11*/
		if ($request->file('team1')== null) {
	 
				if($request->get('team1') != ""){
				$pre=$request->get('team1');
				$team1= "".$pre;
			}else{
				 $team1=$web->team1;
			}
				}else{
						$fond = Image::make($request->file('team1')->getRealPath());
						$fond->orientate();
						$add5 = "team1" . time() . "." . $request->file('team1')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $add5));
						//$fond->save(storage_path('/app/public/uploads/' . $add5));
						$fond->save(public_path('/uploads/webs/' . $add5));
						$team1= $var_fij['team1']= "".$add5;
				}
		/**************************************************************12*/
		if ($request->file('team2')== null) {
	 
				if($request->get('team2') != ""){
				$pre=$request->get('team2');
				$team2= "".$pre;
			}else{
				 $team2=$web->team2;
			}
				}else{
						$fond = Image::make($request->file('team2')->getRealPath());
						$fond->orientate();
						$add6 = "team2" . time() . "." . $request->file('team2')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $add6));
						//$fond->save(storage_path('/app/public/uploads/' . $add6));
						$fond->save(public_path('/uploads/webs/' . $add6));
						$team2= $var_fij['team2']= "".$add6;
				}
		/**************************************************************13*/
		if ($request->file('team3')== null) {
	 
				if($request->get('team3') != ""){
				$pre=$request->get('team3');
				$team3= "".$pre;
			}else{
				 $team3=$web->team3;
			}
				}else{
						$fond = Image::make($request->file('team3')->getRealPath());
						$fond->orientate();
						$precio1 = "team3" . time() . "." . $request->file('team3')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $precio1));
						//$fond->save(storage_path('/app/public/uploads/' . $precio1));
						$fond->save(public_path('/uploads/webs/' . $precio1));
						$team3= $var_fij['team3']= "".$precio1;
				}
		/**************************************************************14*/
		if ($request->file('img_hor')== null) {
	 
				if($request->get('img_hor') != ""){
				$pre=$request->get('img_hor');
				$img_hor= "".$pre;
			}else{
				 $img_hor=$web->img_hor;
			}
				}else{
						$fond = Image::make($request->file('img_hor')->getRealPath());
						$fond->orientate();
						$precio2 = "img_hor" . time() . "." . $request->file('img_hor')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $precio2));
						//$fond->save(storage_path('/app/public/uploads/' . $precio2));
						$fond->save(public_path('/uploads/webs/' . $precio2));
						$img_hor= $var_fij['img_hor']= "".$precio2;
				}

		/**************************************************************18*/

		if ($request->file('img_cart')== null) {
	 
				if($request->get('img_cart') != ""){
				$pre=$request->get('img_cart');
				$img_cart= "".$pre;
			}else{
				 $img_cart=$web->img_cart;
			}
				}else{
						$fond = Image::make($request->file('img_cart')->getRealPath());
						$fond->orientate();
						$imgn_cart = "img_cart" . time() . "." . $request->file('img_cart')->extension();
						//$fond->save(storage_path("app\public\uploads\\" . $imgn_cart));
						//$fond->save(storage_path('/app/public/uploads/' . $imgn_cart));
						$fond->save(public_path('/uploads/webs/' . $imgn_cart));
						$img_cart= $var_fij['img_cart']= "".$imgn_cart;
				}
		/***************************************************************/

		$web->update([
				 
				 'cat1' => $cat1,
				 'cat2' => $cat2,
				 'cat3' => $cat3,
				 'cat4' => $cat4,
				 
				 /*platos*/
				 'img_plat1' => $img_plat1,
				 'img_plat2' => $img_plat2,
				 'img_plat3' => $img_plat3,
				 'img_plat4' => $img_plat4,
				 'img_plat5' => $img_plat5,
				 'img_plat6' => $img_plat6,
				 
				 /*slider*/
				 'slider_image1' => $slider_image1,
				 'slider_image2' => $slider_image2,
				 'slider_image3' => $slider_image3,
				 
				 /*quienes somos*/
				 'img_quienes' => $img_quienes,
				 
				 /*team fotos*/
				 'team1' => $team1,
				 'team2' => $team2,
				 'team3' => $team3,
				 
				 /*hora*/
				 'img_hor' => $img_hor,
				 
				 'img_cart' => $img_cart,

				 'tit_slider_1' => $request->get('tit_slider_1'),
				 'tit_slider_2' => $request->get('tit_slider_2'),
				 'tit_slider_3' => $request->get('tit_slider_3'),
				
				 'sub_tit_sli_1' => $request->get('sub_tit_sli_1'),
				 'sub_tit_sli_2' => $request->get('sub_tit_sli_2'),
				 'sub_tit_sli_3' => $request->get('sub_tit_sli_3'),

				 'tit_plat1' => $request->get('tit_plat1'),
				 'tit_plat2' => $request->get('tit_plat2'),
				 'tit_plat3' => $request->get('tit_plat3'),
				 'tit_plat4' => $request->get('tit_plat4'),
				 'tit_plat5' => $request->get('tit_plat5'),
				 'tit_plat6' => $request->get('tit_plat6'),
				 
				 'price1' => $request->get('price1'),
				 'price2' => $request->get('price2'),
				 'price3' => $request->get('price3'),
				 'price4' => $request->get('price4'),
				 'price5' => $request->get('price5'),
				 'price6' => $request->get('price6'),
				 
				 'ingred1' => $request->get('ingred1'),
				 'ingred2' => $request->get('ingred2'),
				 'ingred3' => $request->get('ingred3'),
				 'ingred4' => $request->get('ingred4'),
				 'ingred5' => $request->get('ingred5'),
				 'ingred6' => $request->get('ingred6'),
				 
				 
		
		          /*Team texto*/
		         'team_nam1' => $request->get('team_nam1'),
		         'team_nam2' => $request->get('team_nam2'),
		         'team_nam3' => $request->get('team_nam3'),
		         
				 'team_fac1' => $request->get('team_fac1'),
				 'team_fac2' => $request->get('team_fac2'),
				 'team_fac3' => $request->get('team_fac3'),
				 
				 'team_inst1' => $request->get('team_inst1'),
				 'team_inst2' => $request->get('team_inst2'),
				 'team_inst3' => $request->get('team_inst3'),
				 
				 /*Team nombre y cargo*/
				 'team_name1' => $request->get('team_name1'),
				 'team_name2' => $request->get('team_name2'),
				 'team_name3' => $request->get('team_name3'),
				 
				 'team_position1' => $request->get('team_position1'),
				 'team_position2' => $request->get('team_position2'),
				 'team_position3' => $request->get('team_position3'),
				 

 
				 'quienes' => $request->get('quienes'),
				 'horario' => $request->get('horario'),
				 'carta' => $request->get('carta'),
				 'correo' => $request->get('correo'),
				 'img_cab' => $img_cab,
				
				// 'img_logo' => $img_logo,
				 'img_quienes' => $img_quienes,
				 
				 
				 //testimonios
				 
					'test1'=> $request->get('test1'),
					'test2'=> $request->get('test2'),
					'test3'=> $request->get('test3'),
					
					'pers_test1'=> $request->get('pers_test1'),
					'pers_test2'=> $request->get('pers_test2'),
					'pers_test3'=> $request->get('pers_test3'),
					
					'cpers_test1'=> $request->get('cpers_test1'),
					'cpers_test2'=> $request->get('cpers_test2'),
					'cpers_test3'=> $request->get('cpers_test3'),
				 
				 
				 'addr_google' => $request->get('addr_google'),
				 'facebook' => $request->get('facebook'),
				 'instagram' => $request->get('instagram'),
				 'youtube' => $request->get('youtube'),
				 'twitter' => $request->get('twitter'),
				        ]);

			return redirect('webs')->with('success', 'Su registro se ha actualizado Satisfactoriamente!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       
		Web::destroy($id);
		$msg = "eliminado";
		return response()->json($msg);
    }
}
