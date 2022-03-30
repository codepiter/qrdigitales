@extends('layouts.app')
@section('scripts')


	<link rel="stylesheet" type="text/css" href="{{ asset ('css/wizard/multi-form.css?v2') }}">
	
	
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>

	<script type="text/javascript" src="{{ asset ('js/wizard/multi-form.js?v2') }}"></script>

@stop

@section('content')
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
    </div>


	<div class="container-fluid mt--7">
		<div class="row">
			<div class="col-xl-12 order-xl-1">
				<div class="card bg-secondary shadow">
					<div class="card-header bg-white border-0">
						<div class="row align-items-center">
							<div class="col-8">
								<h3 class="mb-0">{{ __('Website') }}</h3>
							</div>
							<div class="col-4 text-right">
								<a href="{{ route('home') }}" class="btn btn-sm btn-primary">{{ __('Back') }}</a>
							</div>
						</div>
					</div>
					<div class="card-body">
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
								
												
											<form id="myForm" role="form" action="{{ route('webs.store') }}" method="POST" enctype="multipart/form-data">
											@csrf
							
							
													<div class="tab-content" id="main_form">
													
													
													<!--tab 1-->
														<div class="tab-pane active" role="tabpanel" id="step1">
															<h4 class="text-center">{{ __('messages.Informacion Basica asociada a su restaurante') }}</h4>
																
																<div class="row">
																
																<div class="col-xs-12 col-sm-6 col-md-6">
																	<div class="form-group" style="margin-top: 35px;">
																		<h4><strong>{{ __('messages.email') }}:</strong></h4>
																		<input class="form-control" name="correo" type="text" value="{{ old('correo') }}">
																	</div>
																</div>
																
																<div class="col-xs-12 col-sm-6 col-md-6">
																	<div class="form-group" style="margin-top: 35px;">
																		<h4><strong>{{ __('messages.schedule') }}:</strong></h4>
																	 <input class="form-control" name="horario" type="text" value="{{ old('horario') }}" placeholder="De martes a domingo de 9am  a 10 pm">
																	</div>
																</div>
																
																  <div class="col-xs-12 col-sm-6 col-md-6">
																		<div class="form-group">
																			<strong>Facebook:</strong>
																			<input type="text" maxlength="218" name="facebook" class="form-control" value="{{ old('facebook') }}" placeholder="Ingrese la url de la pagina de facebook" value="https://facebook.com/nombrerestaurant">
																		</div>
																	</div>
																	<div class="col-xs-12 col-sm-6 col-md-6">
																		<div class="form-group">
																			<strong>Instagram:</strong>
																			<input type="text" maxlength="218" name="instagram" class="form-control" value="{{ old('instagram') }}" placeholder="Ingrese la url de la pagina de instagram" value="https://instagram.com/nombrerestaurant">
																		</div>
																	</div>
																	<div class="col-xs-12 col-sm-6 col-md-6">
																		<div class="form-group">
																			<strong>Youtube:</strong>
																			<input type="text" maxlength="218" name="youtube" class="form-control" value="{{ old('youtube') }}" placeholder="Ingrese la url de su canal de youtube" value="https://yoytube.com/micanal">
																		</div>
																	</div>
																	<div class="col-xs-12 col-sm-6 col-md-6">
																		<div class="form-group">
																			<strong>Twitter:</strong>
																			<input type="text" maxlength="218" name="twitter" class="form-control" value="{{ old('twitter') }}" placeholder="Ingrese la url de la pagina de twitter" value="https://twitter.com/nombrerestaurant">
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
																		
																		<input type="text" name="addr_google" id="addr_google" class="form-control" placeholder="<iframe></iframe>" >
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

																	<img src="{{ asset('img/website') }}/slider-image1.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;     max-width: -webkit-fill-available;">

																	<input type="file" name="slider_image1" id="slider_image1" class="form-control mb-2" >

																	<input type="text" name="tit_slider_1" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Titulo para su Imagen') }}" value="{{'tit_slider_1'}}">
																	<input type="text" name="sub_tit_sli_1" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Sub-Titulo para su Imagen') }}" value="{{'sub_tit_sli_1'}}">
																	
																</div>
																
																<div class="col-lg-4 col-md-4  form-group text-center">
																	
																	
																	<img src="{{ asset('img/website') }}/slider-image2.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;     max-width: -webkit-fill-available;">
																	
																	
																	<input type="file" name="slider_image2" id="slider_image2" class="form-control mb-2" >
																	
																	<input type="text" name="tit_slider_2" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Titulo para su Imagen') }}" value="{{'tit_slider_2'}}">
																	<input type="text" name="sub_tit_sli_2" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Sub-Titulo para su Imagen') }}" value="{{'sub_tit_sli_2'}}">
																	
																</div>
																
																<div class="col-lg-4 col-md-4  form-group text-center">
																

																	<img src="{{ asset('img/website') }}/slider-image3.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;     max-width: -webkit-fill-available;">
																	
																	
																	<input type="file" name="slider_image3" id="slider_image3" class="form-control mb-2" >
																	<input type="text" name="tit_slider_3" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Titulo para su Imagen') }}" value="{{'tit_slider_3'}}">
																	<input type="text" name="sub_tit_sli_3" class="form-control mb-2" placeholder="{{ __('messages.Ingrese Sub-Titulo para su Imagen') }}" value="{{'sub_tit_sli_3'}}">
																</div>
																
																<div class="col-xs-12 col-sm-6 col-md-6">
																
																	<label><h4>{{ __('messages.La siguiente imagen ira a un costado del texto "Sobre Nosotros".') }}</h4></label>
																 
																	<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
																	
																	<img src="{{ asset('img/website') }}/about-image.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
																	
																	<input type="file" name="img_quienes" id="img_quienes" class="form-control" >
																	
																	
																	<label><h4> {{__('messages.about_us') }}:</h4></label>
																	<textarea class="form-control" name="quienes" rows="6">Una atención personalizada respetando los estándares de bioseguridad que los tiempos actuales exigen, son el primer aperitivo que acompaña nuestros deliciosos y exquisitos platos. Un restaurante especializado en nuestra comida te garantiza disfrutar de lo que mas te gusta pero también la posibilidad de degustar novedosos platillos de la comida internacional.</textarea>

																</div>
																
																<div class="col-xs-12 col-sm-6 col-md-6">
																
																	<label><h4>{{__('messages.Informacion general de los platos ofrecidos') }}</h4></label>
																 
																	<label>{{__('messages.Seleccione su imagen de 600x400') }}</label>
																	
																	<img src="{{ asset('img/website') }}/pexels-helena-lopes-693267.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
																	
																	<input type="file" name="img_cart" id="img_cart" class="form-control" >
																	
																	
																	<label><h4> {{ __('messages.our_dishes') }}:</h4></label>
																	 <textarea class="form-control" name="carta" rows="6"></textarea>

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

																	<img src="{{ asset('img/website') }}/team-image1.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
																	
																	<input type="file" name="team1" id="team1" class="form-control" >
																	
																	
																	{{ old('correo') }}
																	
																	<label>{{ __('messages.name') }}</label>
																	<input type="text" name="team_name1" class="form-control" placeholder="Nombre" value="{{old('team_name1')}}">
																	<label>{{ __('messages.Cargo') }}</label>
																	<input type="text" name="team_position1" class="form-control" placeholder="Cargo" value="{{old('team_position1')}}">
																	<label>{{ __('messages.Descripcion') }}</label>
																	<input type="text" name="team_nam1" class="form-control" placeholder="Descripción" value="{{old('team_nam1')}}">
																	<label>Facebook</label>
																	<input type="text" name="team_fac1" class="form-control" placeholder="Facebook" value="{{old('team_fac1')}}">
																	<label>Instagram</label>
																	<input type="text" name="team_inst1" class="form-control" placeholder="Instagram" value="{{old('team_inst1')}}">
																</div>
																
																<div class="col-lg-4 col-md-4 col-xs-1 form-group">
																	<label>{{ __('messages.Seleccione su imagen de 600x900') }}</label>
																	
																	<img src="{{ asset('img/website') }}/team-image2.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
																	
																	
																	<input type="file" name="team2" id="team2" class="form-control" >
																	
																	<label>{{ __('messages.name') }}</label>
																	<input type="text" name="team_name2" class="form-control" placeholder="Nombre" value="{{old('team_name2')}}">
																	<label>{{ __('messages.Cargo') }}</label>
																	<input type="text" name="team_position2" class="form-control" placeholder="Cargo" value="{{old('team_position2')}}">
																	<label>{{ __('messages.Descripcion') }}</label>
																	<input type="text" name="team_nam2" class="form-control" placeholder="Descripción" value="{{old('team_nam2')}}">
																	<label>Facebook</label>
																	<input type="text" name="team_fac2" class="form-control" placeholder="Facebook" value="{{old('team_fac2')}}">
																	<label>Instagram</label>
																	<input type="text" name="team_inst2" class="form-control" placeholder="Instagram" value="{{old('team_inst2')}}">
																</div>
																
																<div class="col-lg-4 col-md-4 col-xs-1 form-group">
																	<label>{{ __('messages.Seleccione su imagen de 600x900') }}</label>
																	
																	<img src="{{ asset('img/website') }}/team-image3.jpg" alt="" style="max-height: 150px; margin-top: 15px;margin-bottom: 15px;">
																	
																	
																	<input type="file" name="team3" id="team3" class="form-control" >
																	
																	<label>{{ __('messages.name') }}</label>
																	<input type="text" name="team_name3" class="form-control" placeholder="Nombre" value="{{old('team_name2')}}">
																	<label>{{ __('messages.Cargo') }}</label>
																	<input type="text" name="team_position3" class="form-control" placeholder="Cargo" value="{{old('team_position2')}}">
																	<label>{{ __('messages.Descripcion') }}</label>
																	<input type="text" name="team_nam3" class="form-control" placeholder="Descripción" value="{{old('team_nam3')}}">
																	<label>Facebook</label>
																	<input type="text" name="team_fac3" class="form-control" placeholder="Facebook" value="{{old('team_fac3')}}">
																	<label>Instagram</label>
																	<input type="text" name="team_inst3" class="form-control" placeholder="Instagram" value="{{old('team_inst3')}}">
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
																	
																	<input type="file" name="img_plat1" id="img_plat1" class="form-control" >
																	   
																	   <label>{{ __('messages.Titulo del plato') }}</label>
																		<input type="text" name="tit_plat1" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" >
																		<label>{{ __('messages.Precio del Plato') }}</label>
																		<input type="text" name="price1" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}">
																		<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
																		<input type="text" name="ingred1" class="form-control" placeholder="Cebolla/Queso/Papas" >
																</div>

																<div class="col-lg-4 col-md-4 col-xs-12 form-group">
																	<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
																		
																		
																		<input type="file" name="img_plat2" id="img_plat2" class="form-control" >
																		
																		<label>{{ __('messages.Titulo del plato') }}</label>
																		<input type="text" name="tit_plat2" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" >
																		 <label>{{ __('messages.Precio del Plato') }}</label>
																		<input type="text" name="price2" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}" >
																		<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
																		<input type="text" name="ingred2" class="form-control" placeholder="Cebolla/Queso/Papas" >
																	</div>
																	
																<div class="col-lg-4 col-md-4 col-xs-12 form-group">
																		<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
																		
																		<input type="file" name="img_plat3" id="img_plat3" class="form-control" >
																		
																		<label>{{ __('messages.Titulo del plato') }}</label>
																		<input type="text" name="tit_plat3" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" >
																		 <label>{{ __('messages.Precio del Plato') }}</label>
																		<input type="text" name="price3" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}" >
																		<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
																		<input type="text" name="ingred3" class="form-control" placeholder="Cebolla/Queso/Papas" >
																	</div>
																
																</div>
																
															<div class="row">
																
																<div class="col-lg-4 col-md-4 col-xs-12 form-group">
																	<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
																	
																	<input type="file" name="img_plat4" id="img_plat4" class="form-control" >
																	
																	<label>{{ __('messages.Titulo del plato') }}</label>
																	<input type="text" name="tit_plat4" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" >
																	 <label>{{ __('messages.Precio del Plato') }}</label>
																	<input type="text" name="price4" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}" >
																	<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
																	<input type="text" name="ingred4" class="form-control" placeholder="Cebolla/Queso/Papas" >
																</div>
																	
																<div class="col-lg-4 col-md-4 col-xs-12 form-group">
																	<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
																	
																	<input type="file" name="img_plat5" id="img_plat5" class="form-control" >
																   
																   <label>{{ __('messages.Titulo del plato') }}</label>
																   <input type="text" name="tit_plat5" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" >
																	 <label>{{ __('messages.Precio del Plato') }}</label>
																	<input type="text" name="price5" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}" >
																	<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
																	<input type="text" name="ingred5" class="form-control" placeholder="Cebolla/Queso/Papas" >
																</div>
																	
																<div class="col-lg-4 col-md-4 col-xs-12 form-group">
																	<label>{{ __('messages.Seleccione su imagen de 600x400') }}</label>
																	
																	<input type="file" name="img_plat6" id="img_plat6" class="form-control" >
																	
																	<label>{{ __('messages.Titulo del plato') }}</label>
																	<input type="text" name="tit_plat6" class="form-control" placeholder="{{ __('messages.Titulo del plato') }}" >
																	<label>{{ __('messages.Precio del Plato') }}</label>
																	<input type="text" name="price6" class="form-control" placeholder="{{ __('messages.Precio del Plato') }}" >
																	<p>{{ __('messages.Ingredientes/con/este/formato') }}</p>
																	<input type="text" name="ingred6" class="form-control" placeholder="Cebolla/Queso/Papas" >
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
								   
																<div class="col-lg-12 col-md-12 col-xs-1">
																	<label>{{ __('messages.Testimonio') }} 1</label>
																	<div class="row">
																		<div class="col-lg-12 col-md-12 col-xs-12 form-group">		
																			<textarea name="test1" class="form-control"  rows="3"></textarea>
																		</div>
																	</div>
																	<div class="row">
																		
																		<div class="col-lg-6 col-md-6 col-xs-12 form-group">
																			<label>{{ __('messages.name') }}</label>
																			<input type="text" name="pers_test1" class="form-control" placeholder="" >
																			
																		</div>
																		<div class="col-lg-6 col-md-6 col-xs-12 form-group">
																			<label>{{ __('messages.Cargo') }}</label>
																			<input type="text" name="cpers_test1" class="form-control" placeholder="" >
																		</div>
																	</div>
																</div>


																<div class="col-lg-12 col-md-12 col-xs-1 ">
																	<label>{{ __('messages.Testimonio') }} 2</label>
																	<div class="row">
																		<div class="col-lg-12 col-md-12 col-xs-12 form-group">		
																			<textarea name="test2" class="form-control"  rows="3"></textarea>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-lg-6 col-md-6 col-xs-12 form-group">
																		<label>{{ __('messages.name') }}</label>
																			<input type="text" name="pers_test2" class="form-control" placeholder="" >
																			
																		</div>
																		<div class="col-lg-6 col-md-6 col-xs-12 form-group">
																		<label>{{ __('messages.Cargo') }}</label>
																			<input type="text" name="cpers_test2" class="form-control" placeholder="" >
																		</div>
																	</div>
																</div>
																
																<div class="col-lg-12 col-md-12 col-xs-1">
																	<label>{{ __('messages.Testimonio') }} 3</label>
																	<div class="row">
																		<div class="col-lg-12 col-md-12 col-xs-12 form-group">		
																			<textarea name="test3" class="form-control"  rows="3"></textarea>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-lg-6 col-md-6 col-xs-12 form-group">
																			<label>{{ __('messages.name') }}</label>
																			<input type="text" name="pers_test3" class="form-control" placeholder="" >
																			
																		</div>
																		<div class="col-lg-6 col-md-6 col-xs-12 form-group">
																			<label>{{ __('messages.Cargo') }}</label>
																			<input type="text" name="cpers_test3" class="form-control" placeholder="" >
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
							



			
			
			
						
						
					</div>
				</div>
			</div>
		</div>
	</div>





@endsection