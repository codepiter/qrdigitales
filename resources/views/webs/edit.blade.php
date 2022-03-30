@extends('layouts.app')
@section('scripts')

	<link rel="stylesheet" type="text/css" href="{{ asset ('css/wizard/multi-form.css?v2') }}">
	
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>

	<script type="text/javascript" src="{{ asset ('js/wizard/multi-form.js?v2') }}"></script>

@stop

@section('content')
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
    </div>

<div class="content-main" id="banner" style="padding: 15px;">
	   
	@if ($errors->any())
		<div class="alert alert-danger">
			<strong>Whoops!</strong> {{ __('messages.There were some problems with your input.') }}<br><br>
			<ul>
				@foreach ($errors->all() as $error)
					<li>{{ $error }}</li>
				@endforeach
			</ul>
		</div>
	@endif
	   

	<div class="row">
		<div class="col-lg-12 margin-tb">
			<div class="pull-right text-right">
				<button class="btn-payment" onclick="goBack()"> {{ __('messages.back') }}</button>
			</div>
		</div>
	</div>









	
	
	<section class="pb-8 bg-white my-6">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-10">
                    <div class="wizard">
                        <div class="wizard-inner">
                            <div class="connecting-line"></div>
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active">
                                    <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" aria-expanded="true"><span class="round-tab">1 </span> </a>
                                </li>
                                <li role="presentation" class="disabled" >
                                    <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" aria-expanded="false"><span class="round-tab">2</span> </a>
                                </li>
                                <li role="presentation" class="disabled">
                                    <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab"><span class="round-tab">3</span> </a>
                                </li>
								<li role="presentation" class="disabled">
                                    <a href="#step4" data-toggle="tab" aria-controls="step4" role="tab"><span class="round-tab">4</span> </a>
                                </li>
                                <li role="presentation" class="disabled">
                                    <a href="#step5" data-toggle="tab" aria-controls="step5" role="tab"><span class="round-tab">5</span> </a>
                                </li>
                            </ul>
                        </div>
        
                        
					
					<form id="myForm" action="{{ route('webs.update',$web->id) }}" method="POST" enctype="multipart/form-data">

						@csrf
						@method('PUT')
						{{ method_field('PATCH') }}
	
	
                            <div class="tab-content" id="main_form">
							
							
							<!--tab 1-->
                                <div class="tab-pane active" role="tabpanel" id="step1">
                                    <h4 class="text-center">{{ __('messages.Informacion Basica asociada a su restaurante') }}</h4>
										
										<div class="row">
										
										<div class="col-xs-12 col-sm-6 col-md-6">
											<div class="form-group" style="margin-top: 35px;">
												<h4><strong>{{ __('messages.email') }}:</strong></h4>
												<input class="form-control" name="correo" type="text" value="{{$web->correo}}">
											</div>
										</div>
										
										<div class="col-xs-12 col-sm-6 col-md-6">
											<div class="form-group" style="margin-top: 35px;">
												<h4><strong>{{ __('messages.schedule') }}:</strong></h4>
											 <input class="form-control" name="horario" type="text" value="{{$web->horario}}" placeholder="De martes a domingo de 9am  a 10 pm">
											</div>
										</div>
										
										  <div class="col-xs-12 col-sm-6 col-md-6">
												<div class="form-group">
													<strong>Facebook:</strong>
													<input type="text" maxlength="218" name="facebook" class="form-control" value="{{$web->facebook}}" placeholder="Ingrese la url de la pagina de facebook" value="https://facebook.com/nombrerestaurant">
												</div>
											</div>
											<div class="col-xs-12 col-sm-6 col-md-6">
												<div class="form-group">
													<strong>Instagram:</strong>
													<input type="text" maxlength="218" name="instagram" class="form-control" value="{{$web->instagram}}" placeholder="Ingrese la url de la pagina de instagram" value="https://instagram.com/nombrerestaurant">
												</div>
											</div>
											<div class="col-xs-12 col-sm-6 col-md-6">
												<div class="form-group">
													<strong>Youtube:</strong>
													<input type="text" maxlength="218" name="youtube" class="form-control" value="{{$web->youtube}}" placeholder="Ingrese la url de su canal de youtube" value="https://yoytube.com/micanal">
												</div>
											</div>
											<div class="col-xs-12 col-sm-6 col-md-6">
												<div class="form-group">
													<strong>Twitter:</strong>
													<input type="text" maxlength="218" name="twitter" class="form-control" value="{{$web->twitter}}" placeholder="Ingrese la url de la pagina de twitter" value="https://twitter.com/nombrerestaurant">
												</div>
											</div>
											
											<div class="col-lg-12 col-md-12 col-xs-12 form-group">
												<label>{{ __('messages.Seleccione Su direccion en Google Maps') }}</label>
												
											
												<img src="{{ asset('img/website') }}/mapa.png" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
												
												
												<ul class="float-center" style="list-style-type: none">
												 <li>{{ __('messages.Paso1') }}</li>
												 <li>{{ __('messages.Paso2') }}</li>
												 <li>{{ __('messages.Paso3') }}</li>
												 <li>{{ __('messages.Paso4') }}</li>
												</ul>
												
												<input type="text" name="addr_google" id="addr_google" class="form-control" placeholder="<iframe></iframe>" value="{{$web->addr_google}}">
											</div>
								
											
											</div>
                                    <ul class="list-inline pull-right">
									 <li><button type="button" class="default-btn next-step">{{ __('messages.next') }} </button></li>
									  <li><button type="submit" class="default-btn finish">{{ __('messages.save') }}</button></li>
					
									</ul>
                                </div>
								
								
						
								
								<!--tab 2-->
								
								
                                <div class="tab-pane" role="tabpanel" id="step2">
                                    <h4 class="text-center">{{ __('messages.Seleccione imagenes de 1920x1280 para el Slider Superior') }}</h4>
                                    <div class="row">
										<div class="col-lg-4 col-md-4  form-group text-center">
											@if($web->slider_image1)
												<img src="{{ asset( 'uploads/webs').'/'.$web->slider_image1}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px; max-width: -webkit-fill-available;">
											@else
												<img src="{{ asset('img/website') }}/slider-image1.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px; max-width: -webkit-fill-available;">
											@endif
											<input type="file" name="slider_image1" id="slider_image1" class="form-control mb-2" >
											<input type="text" name="tit_slider_1" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Titulo para su Imagen') }}" value="{{$web->tit_slider_1}}">
											<input type="text" name="sub_tit_sli_1" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Sub-Titulo para su Imagen') }}" value="{{$web->sub_tit_sli_1}}">
											

											
										</div>
										
										<div class="col-lg-4 col-md-4  form-group text-center">
											
											
											@if($web->slider_image2)
												<img src="{{ asset( 'uploads/webs').'/'.$web->slider_image2}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px; max-width: -webkit-fill-available;">
											@else
												<img src="{{ asset('img/website') }}/slider-image2.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px; max-width: -webkit-fill-available;">
											@endif
											
											<input type="file" name="slider_image2" id="slider_image2" class="form-control mb-2" >
											
											<input type="text" name="tit_slider_2" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Titulo para su Imagen') }}" value="{{$web->tit_slider_2}}">
											<input type="text" name="sub_tit_sli_2" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Sub-Titulo para su Imagen') }}" value="{{$web->sub_tit_sli_2}}">
															
										</div>
										
										<div class="col-lg-4 col-md-4  form-group text-center">
										
											@if($web->slider_image3)
												<img src="{{ asset( 'uploads/webs').'/'.$web->slider_image3}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px; max-width: -webkit-fill-available;">
											@else
												<img src="{{ asset('img/website') }}/slider-image3.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px; max-width: -webkit-fill-available;">
											@endif
											
											<input type="file" name="slider_image3" id="slider_image3" class="form-control mb-2" >
											<input type="text" name="tit_slider_3" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Titulo para su Imagen') }}" value="{{$web->tit_slider_3}}">
											<input type="text" name="sub_tit_sli_3" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Sub-Titulo para su Imagen') }}" value="{{$web->sub_tit_sli_3}}">
											
										</div>
										
										<div class="col-xs-12 col-sm-6 col-md-6">
										
											<label><h4>{{ __('messages.La siguiente imagen ira a un costado del texto "Sobre Nosotros".') }}</h4></label>
										 
											<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
											
											@if($web->img_quienes)
												<img src="{{ asset( 'uploads/webs').'/'.$web->img_quienes}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@else
												<img src="{{ asset('img/website') }}/about-image.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@endif
											<input type="file" name="img_quienes" id="img_quienes" class="form-control" >
											
											
											<label><h4> {{__('messages.about_us') }}:</h4></label>
											<textarea class="form-control" name="quienes" rows="6">{{ $web->quienes }}</textarea>

										</div>
										
										<div class="col-xs-12 col-sm-6 col-md-6">
										
											<label><h4>{{__('messages.Informacion general de los platos ofrecidos') }}</h4></label>
										 
											<label>{{__('messages.Seleccione su imagen de 600x400') }}</label>
											
											@if($web->img_cart)
												<img src="{{ asset( 'uploads/webs').'/'.$web->img_cart}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@else
												<img src="{{ asset('img/website') }}/pexels-helena-lopes-693267.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@endif
											
											<input type="file" name="img_cart" id="img_cart" class="form-control" >
											
											
											<label><h4> {{ __('messages.our_dishes') }}:</h4></label>
											 <textarea class="form-control" name="carta" rows="6">{{ $web->carta }}</textarea>

										</div>
										
									                          
									</div>
                                    
                                    
                                    <ul class="list-inline pull-right">
                                        <li><button type="button" class="default-btn prev-step">{{ __('messages.previous') }}</button></li>
                                        <li><button type="button" class="default-btn next-step skip-btn">{{ __('messages.next') }}</button></li>
                                        <li><button type="submit" class="default-btn finish">{{ __('messages.save') }}</button></li>
                                    </ul>
                                </div>
                                
								
								
								
								
								<!--tab 3-->
								<div class="tab-pane" role="tabpanel" id="step3">
                                    <h4 class="text-center">{{ __('messages.Imagenes correspondientes a su equipo de trabajo o cocineros') }}</h4>
                                     <div class="row">
                                    
									
										<div class="col-lg-4 col-md-4 col-xs-1 form-group">
											<label>{{ __('messages.Seleccione su imagen de 600x900') }}</label>

											@if($web->team1)
												<img src="{{ asset( 'uploads/webs').'/'.$web->team1}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@else
												<img src="{{ asset('img/website') }}/team-image1.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@endif
											<input type="file" name="team1" id="team1" class="form-control" >
											
											
											<label>{{ __('messages.name') }}</label>
											<input type="text" name="team_name1" class="form-control" placeholder="{{ __('messages.name') }}" value="{{$web->team_name1}}">
											<label>{{ __('messages.Cargo') }}</label>
											<input type="text" name="team_position1" class="form-control" placeholder="{{ __('messages.Cargo') }}" value="{{$web->team_position1}}">
											<label>{{ __('messages.Descripcion') }}</label>
											<input type="text" name="team_nam1" class="form-control" placeholder="{{ __('messages.Descripcion') }}" value="{{$web->team_nam1}}">
											<label>Facebook</label>
											<input type="text" name="team_fac1" class="form-control" placeholder="Facebook" value="{{$web->team_fac1}}">
											<label>Instagram</label>
											<input type="text" name="team_inst1" class="form-control" placeholder="Instagram" value="{{$web->team_inst1}}">
										</div>
										
										<div class="col-lg-4 col-md-4 col-xs-1 form-group">
											<label>{{ __('messages.Seleccione su imagen de 600x900') }}</label>
											
											@if($web->team2)
												<img src="{{ asset( 'uploads/webs').'/'.$web->team2}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@else
												<img src="{{ asset('img/website') }}/team-image2.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@endif
											
											<input type="file" name="team2" id="team2" class="form-control" >
											
											<label>{{ __('messages.name') }}</label>
											<input type="text" name="team_name2" class="form-control" placeholder="{{ __('messages.name') }}" value="{{$web->team_name2}}">
											<label>{{ __('messages.Cargo') }}</label>
											<input type="text" name="team_position2" class="form-control" placeholder="{{ __('messages.Cargo') }}" value="{{$web->team_position2}}">
											<label>{{ __('messages.Descripcion') }}</label>
											<input type="text" name="team_nam2" class="form-control" placeholder="{{ __('messages.Descripcion') }}" value="{{$web->team_nam2}}">
											<label>Facebook</label>
											<input type="text" name="team_fac2" class="form-control" placeholder="Facebook" value="{{$web->team_fac2}}">
											<label>Instagram</label>
											<input type="text" name="team_inst2" class="form-control" placeholder="Instagram" value="{{$web->team_inst2}}">
											
										</div>
										
										<div class="col-lg-4 col-md-4 col-xs-1 form-group">
											<label>{{ __('messages.Seleccione su imagen de 600x900') }}</label>
											
											@if($web->team3)
												<img src="{{ asset( 'uploads/webs').'/'.$web->team3}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@else
												<img src="{{ asset('img/website') }}/team-image3.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@endif
											
											<input type="file" name="team3" id="team3" class="form-control" >
											
											<label>{{ __('messages.name') }}</label>
											<input type="text" name="team_name3" class="form-control" placeholder="{{ __('messages.name') }}" value="{{$web->team_name2}}">
											<label></label>
											<input type="text" name="team_position3" class="form-control" placeholder="{{ __('messages.Cargo') }}" value="{{$web->team_position2}}">
											<label>{{ __('messages.Descripcion') }}</label>
											<input type="text" name="team_nam3" class="form-control" placeholder="{{ __('messages.Descripcion') }}" value="{{$web->team_nam3}}">
											<label>Facebook</label>
											<input type="text" name="team_fac3" class="form-control" placeholder="Facebook" value="{{$web->team_fac3}}">
											<label>Instagram</label>
											<input type="text" name="team_inst3" class="form-control" placeholder="Instagram" value="{{$web->team_inst3}}">
							
										</div>
						
									
                                       </div>
                                     <ul class="list-inline pull-right">
                                        <li><button type="button" class="default-btn prev-step">{{ __('messages.previous') }}</button></li>
                                        <li><button type="button" class="default-btn next-step skip-btn">{{ __('messages.next') }}</button></li>
                                        <li><button type="submit" class="default-btn finish">{{ __('messages.save') }}</button></li>
                                    </ul>
									
								 </div>	
										
								<!--tab 4-->
								<div class="tab-pane" role="tabpanel" id="step4">
                                    <h4 class="text-center">{{ __('messages.Sesion correspondiente a los platos de sus menus.') }}</h4>
                                     <div class="row">
                                    
										<div class="col-lg-4 col-md-4 col-xs-12 form-group">
											<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>	
											
											@if($web->img_plat1)
												<img src="{{ asset( 'uploads/webs').'/'.$web->img_plat1}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@else
												<img src="{{ asset('img/website') }}/menu-image1.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@endif

											<input type="file" name="img_plat1" id="img_plat1" class="form-control" >
										   
											<label>{{ __('messages.Titulo del plato') }}</label>
											<input type="text" name="tit_plat1" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" value="{{$web->tit_plat1}}">
											<label>{{ __('messages.Precio del Plato') }}</label>
											<input type="text" name="price1" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}" value="{{$web->price1}}">
											<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
											<input type="text" name="ingred1" class="form-control" placeholder="Cebolla/Queso/Papas" value="{{$web->ingred1}}">
											
										</div>

										<div class="col-lg-4 col-md-4 col-xs-12 form-group">
											<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
												
												@if($web->img_plat2)
												<img src="{{ asset( 'uploads/webs').'/'.$web->img_plat2}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
												@else
												<img src="{{ asset('img/website') }}/menu-image2.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
												@endif
												<input type="file" name="img_plat2" id="img_plat2" class="form-control" >
												
												<label>{{ __('messages.Titulo del plato') }}</label>
												<input type="text" name="tit_plat2" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" value="{{$web->tit_plat2}}">
												 <label>{{ __('messages.Precio del Plato') }}</label>
												<input type="text" name="price2" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}" value="{{$web->price2}}">
												<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
												<input type="text" name="ingred2" class="form-control" placeholder="Cebolla/Queso/Papas" value="{{$web->ingred2}}">
												
											</div>
											
										<div class="col-lg-4 col-md-4 col-xs-12 form-group">
											<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
											
											@if($web->img_plat3)
												<img src="{{ asset( 'uploads/webs').'/'.$web->img_plat3}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@else
												<img src="{{ asset('img/website') }}/menu-image3.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@endif
											<input type="file" name="img_plat3" id="img_plat3" class="form-control" >
											
											<label>{{ __('messages.Titulo del plato') }}</label>
											<input type="text" name="tit_plat3" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" value="{{$web->tit_plat3}}">
											 <label>{{ __('messages.Precio del Plato') }}</label>
											<input type="text" name="price3" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}" value="{{$web->price3}}">
											<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
											<input type="text" name="ingred3" class="form-control" placeholder="Cebolla/Queso/Papas" value="{{$web->ingred3}}">
										</div>
										
									</div>
										
									<div class="row">
										
										<div class="col-lg-4 col-md-4 col-xs-12 form-group">
											<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
											
											@if($web->img_plat4)
												<img src="{{ asset( 'uploads/webs').'/'.$web->img_plat4}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@else
												<img src="{{ asset('img/website') }}/menu-image4.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@endif
											<input type="file" name="img_plat4" id="img_plat4" class="form-control" >
											
											<label>{{ __('messages.Titulo del plato') }}</label>
											<input type="text" name="tit_plat4" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" value="{{$web->tit_plat4}}">
											 <label>{{ __('messages.Precio del Plato') }}</label>
											<input type="text" name="price4" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}" value="{{$web->price4}}">
											<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
											<input type="text" name="ingred4" class="form-control" placeholder="Cebolla/Queso/Papas" value="{{$web->ingred4}}">
										</div>
											
										<div class="col-lg-4 col-md-4 col-xs-12 form-group">
											<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
											
											@if($web->img_plat5)
											<img src="{{ asset( 'uploads/webs').'/'.$web->img_plat5}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@else
											<img src="{{ asset('img/website') }}/menu-image5.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@endif
											<input type="file" name="img_plat5" id="img_plat5" class="form-control" >
										   
										   <label>{{ __('messages.Titulo del plato') }}</label>
										   <input type="text" name="tit_plat5" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" value="{{$web->tit_plat5}}">
											 <label>{{ __('messages.Precio del Plato') }}</label>
											<input type="text" name="price5" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}" value="{{$web->price5}}">
											<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
											<input type="text" name="ingred5" class="form-control" placeholder="Cebolla/Queso/Papas" value="{{$web->ingred5}}">
										</div>
											
										<div class="col-lg-4 col-md-4 col-xs-12 form-group">
											<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
											
											@if($web->img_plat6)
												<img src="{{ asset( 'uploads/webs').'/'.$web->img_plat6}}" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
											@else
												<img src="{{ asset('img/website') }}/menu-image6.jpg" alt="" style="max-height: 150px; 	margin-top: 15px;margin-bottom: 15px;">
											@endif
											 
											<input type="file" name="img_plat6" id="img_plat6" class="form-control" >
											
											<label>{{ __('messages.Titulo del plato') }}</label>
											<input type="text" name="tit_plat6" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" value="{{$web->tit_plat6}}">
											<label>{{ __('messages.Precio del Plato') }}</label>
											<input type="text" name="price6" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}" value="{{$web->price6}}">
											<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
											<input type="text" name="ingred6" class="form-control" placeholder="Cebolla/Queso/Papas" value="{{$web->tit_plat6}}">
							
										</div>
						
                                       </div>
                                     <ul class="list-inline pull-right">
                                        <li><button type="button" class="default-btn prev-step">{{ __('messages.previous') }}</button></li>
                                        <li><button type="button" class="default-btn next-step skip-btn">{{ __('messages.next') }}</button></li>
                                        <li><button type="submit" class="default-btn next-step">{{ __('messages.save') }}</button></li>
                                    </ul>
									
								 </div>	
										
								<!--tab 5-->
								<div class="tab-pane" role="tabpanel" id="step5">
                                    <h4 class="text-center">{{ __('messages.Testimonials') }}</h4>
                                     <div class="row">
           
										<div class="col-lg-12 col-md-12 col-xs-12">
											<label>{{ __('messages.Testimonio') }} 1</label>
											<div class="row">
												<div class="col-lg-12 col-md-12 col-xs-12 form-group">		
													<textarea name="test1" class="form-control"  rows="3">{{$web->test1}}</textarea>
												</div>
											</div>
											<div class="row">
												
												<div class="col-lg-6 col-md-6 col-xs-12 form-group">
													<label>{{ __('messages.name') }}</label>
													<input type="text" name="pers_test1" class="form-control" placeholder="" value="{{$web->pers_test1}}">
													
												</div>
												<div class="col-lg-6 col-md-6 col-xs-12 form-group">
													<label>{{ __('messages.Cargo') }}</label>
													<input type="text" name="cpers_test1" class="form-control" placeholder="" value="{{$web->cpers_test1}}">
												</div>
											</div>
										</div>


										<div class="col-lg-12 col-md-12 col-xs-12">
											<label>{{ __('messages.Testimonio') }} 2</label>
											<div class="row">
												<div class="col-lg-12 col-md-12 col-xs-12 form-group">		
													<textarea name="test2" class="form-control"  rows="3">{{$web->test2}}</textarea>
												</div>
											</div>
											<div class="row">
												<div class="col-lg-6 col-md-6 col-xs-12 form-group">
												<label>{{ __('messages.name') }}</label>
													<input type="text" name="pers_test2" class="form-control" placeholder="" value="{{$web->pers_test2}}">
													
												</div>
												<div class="col-lg-6 col-md-6 col-xs-12 form-group">
												<label>{{ __('messages.Cargo') }}</label>
													<input type="text" name="cpers_test2" class="form-control" placeholder="" value="{{$web->cpers_test2}}">
												</div>
											</div>
										</div>
										
										<div class="col-lg-12 col-md-12 col-xs-1">
											<label>{{ __('messages.Testimonio') }} 3</label>
											<div class="row">
												<div class="col-lg-12 col-md-12 col-xs-12 form-group">		
													<textarea name="test3" class="form-control"  rows="3">{{$web->test3}}</textarea>
												</div>
											</div>
											<div class="row">
												<div class="col-lg-6 col-md-6 col-xs-12 form-group">
													<label>{{ __('messages.name') }}</label>
													<input type="text" name="pers_test3" class="form-control" placeholder="" value="{{$web->pers_test3}}">
													
												</div>
												<div class="col-lg-6 col-md-6 col-xs-12 form-group">
													<label>{{ __('messages.Cargo') }}</label>
													<input type="text" name="cpers_test3" class="form-control" placeholder="" value="{{$web->cpers_test3}}">
												</div>
											</div>
										</div>
	
									
                                     </div>
                                     <ul class="list-inline pull-right">
                                        <li><button type="button" class="default-btn prev-step">{{ __('messages.previous') }}</button></li>
                                        <li><button type="submit" class="default-btn finish">{{ __('messages.save') }}</button></li>
                                    </ul>
									
									
									
                                </div>
                              
                                <div class="clearfix"></div>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
	



</div><!--banner-->
@endsection