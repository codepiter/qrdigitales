@extends('layouts.website')

@section('scripts')

	 <!-- Styles -->
    <link href="{{ asset('css/website/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/website/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/website/animate.css') }}" rel="stylesheet">
    <link href="{{ asset('css/website/owl.carousel.css') }}" rel="stylesheet">
    <link href="{{ asset('css/website/owl.theme.default.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/website/magnific-popup.css') }}" rel="stylesheet">
    <link href="{{ asset('css/website/template-style.css') }}" rel="stylesheet">

		<script>
      let map;

      function initMap() {
		  var lati= parseFloat($('#lat').val());

		  var lngi= parseFloat($('#lng').val());
   
        map = new google.maps.Map(document.getElementById("map"), {
          center: { lat: lati, lng: lngi },
          zoom: 12,
        });
      }
    </script>
	
	 <!-- jquery -->
    <script src="{{ asset('js/website/jquery.js') }}" defer></script>
    <!-- Otros -->
	<script src="{{ asset('js/website/bootstrap.min.js') }}" defer></script>
    <script src="{{ asset('js/website/jquery.stellar.min.js') }}" defer></script>
    <script src="{{ asset('js/website/wow.min.js') }}" defer></script>
    <script src="{{ asset('js/website/owl.carousel.min.js') }}" defer></script>
    <script src="{{ asset('js/website/jquery.magnific-popup.min.js') }}" defer></script>
    <script src="{{ asset('js/website/smoothscroll.js') }}" defer></script>
    <script src="{{ asset('js/website/custom.js') }}" defer></script>
	

	

@stop


@section('main')


<div class="container-fluid">


<input type="hidden" id="lat" value="{{$restorant->lat}}">
<input type="hidden" id="lng" value="{{$restorant->lng}}">

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>


     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="index.html" class="navbar-brand">{{ $restorant->name }}</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-nav-first">
                         <li><a href="#home" class="smoothScroll">{{ __('messages.home') }}</a></li>
                         <li><a href="#about" class="smoothScroll">{{ __('messages.About') }}</a></li>
                         <li><a href="#team" class="smoothScroll">{{ __('messages.Team') }}</a></li>
                         <li><a href="#menu" class="smoothScroll">{{ __('messages.Menu') }}</a></li>
                         <li><a href="#contact" class="smoothScroll">{{ __('messages.Contact') }}</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="tel:+{{ $restorant->phone }}">{{ __('messages.Llamanos!') }}</a></li>
                         <a href="/restaurant/{{ $restorant->subdomain }}" class="section-btn" target="_blank">{{ __('messages.Menu Online') }}</a>
                    </ul>
               </div>

          </div>
     </section>


     <!-- HOME -->
     <section id="home" class="slider" data-stellar-background-ratio="0.5">
          <div class="row">

                    <div class="owl-carousel owl-theme">
                         @if($web->slider_image1)
							<div class="item item-first" style="background-image:url('{{ asset('uploads/webs'). '/'.$web->slider_image1}}');">
						 @else
							<div class="item item-first">
						 @endif 
							  <div class="caption">
                                   <div class="container">
                                        <div class="col-md-8 col-sm-12">
                                            
											
											@if($web->tit_slider_1)
											<h3>{{$web->tit_slider_1}}</h3>
											@else
											<h3>Eatery Cafe &amp; Restaurant</h3>
											@endif
											
											@if($web->sub_tit_sli_1)
											<h1>{{$web->sub_tit_sli_1}}</h1>
											@else
                                             <h1>Our mission is to provide an unforgettable experience</h1>
                                            @endif
											
											
											<!-- <a href="#team" class="section-btn btn btn-default smoothScroll">Meet our Team</a>-->
											
					
                                        </div>
                                   </div>
                              </div>
                         </div>
                        @if($web->slider_image2)
							<div class="item item-second" style="background-image:url('{{ asset('uploads/webs'). '/'.$web->slider_image2}}');">
                         @else
							<div class="item item-second">
						@endif
                              <div class="caption">
                                   <div class="container">
                                        <div class="col-md-8 col-sm-12">

											
											@if($web->tit_slider_2)
											<h3>{{$web->tit_slider_2}}</h3>
											@else
											<h3>Your Perfect Breakfast</h3>
											@endif
											
											@if($web->sub_tit_sli_2)
											<h1>{{$web->sub_tit_sli_2}}</h1>
											@else
                                            <h1>The best dinning quality can be here too!</h1>
                                            @endif

											<!-- <a href="#menu" class="section-btn btn btn-default smoothScroll">Discover menu</a>-->
                                        </div>
                                   </div>
                              </div>
                         </div>

							@if($web->slider_image3)
								<div class="item item-third" style="background-image:url('{{ asset('uploads/websf'). '/'.$web->slider_image3}}');">
							 @else
								<div class="item item-third">
							@endif
                              <div class="caption">
                                   <div class="container">
                                        <div class="col-md-8 col-sm-12">
                                            
                                            @if($web->tit_slider_3)
											<h3>{{$web->tit_slider_3}}</h3>
											@else
											<h3>New Restaurant in Town</h3>
											@endif
											
											@if($web->sub_tit_sli_3)
											<h1>{{$web->sub_tit_sli_3}}</h1>
											@else
                                            <h1>Enjoy our special menus every Sunday and Friday</h1>
                                            @endif
 
											<!-- <a href="#contact" class="section-btn btn btn-default smoothScroll">Reservation</a>-->
                                        </div>
                                   </div>
                              </div>
                         </div>
                    </div>

          </div>
     </section>




     <!-- ABOUT -->
     <section id="about" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-6 col-sm-12">
                         <div class="about-info">
                              <div class="section-title wow fadeInUp" data-wow-delay="0.2s">
                                   <h4>{{ __('messages.Read our story') }}</h4>
                                   <h2>{{ __('messages.About') }}</h2>
                              </div>

                              <div class="wow fadeInUp" data-wow-delay="0.4s">
                                  
								  <h4> {{ $web->quienes }} </h4>
								  
                              </div>
                         </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                         <div class="wow fadeInUp about-image" data-wow-delay="0.6s">
                              
							  
							  	@if($web->img_quienes)
								<img src="{{ asset( 'uploads/webs').'/'.$web->img_quienes}}" alt="" class="img-responsive">
								@else
								 <img src="{{ asset('img/website/about.png') }}" class="img-responsive" alt="">
								@endif
							 
							  
							  
							  
                         </div>
                    </div>
                    
               </div>
          </div>
     </section>
	 
	 

     <!-- TEAM -->
     <section id="team" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                              <h2>{{ __('messages.Meet our team') }}</h2>
                              <h4>{{ __('messages.They are nice and friendly') }}</h4>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <div class="team-thumb wow fadeInUp" data-wow-delay="0.2s">
                             
                             
                             @if($web->team1)
							  <img src="{{ asset( 'uploads/webs').'/'.$web->team1}}" class="img-responsive" alt="">
							  @else
							 <img src="{{ asset('/img/website/team1.jpg') }}" class="img-responsive" alt="">
							 @endif
							  
                                   <div class="team-hover">
                                        <div class="team-item">
                                             <h4>{{$web->team_nam1}}</h4> 
                                             <ul class="social-icon">
                                                  <li><a href="{{$web->team_inst1}}" class="fa fa-instagram"></a></li>
                                                  <li><a href="{{$web->team_fac1}}" class="fa fa-facebook"></a></li>
                                             </ul>
                                        </div>
                                   </div>
                         </div>
                         <div class="team-info">
                              
							  @if($web->team_name1)
							  <h3>{{$web->team_name1}}</h3>
                              @else
							  <h3>Sandra Castle</h3>
							  @endif
							  
							  @if($web->team_position1)
							  <p>{{$web->team_position1}}</p>
                              @else
							   <p>Kitchen Officer</p>
							   @endif
						 
						 
						 
						 </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <div class="team-thumb wow fadeInUp" data-wow-delay="0.4s">
                              
							  
							  @if($web->team2)
							  <img src="{{ asset( 'uploads/webs').'/'.$web->team2}}" class="img-responsive" alt="">
							  @else
                              <img src="{{ asset('/img/website/team2.jpg') }}" class="img-responsive" alt="">
							  @endif
							  
							  
							  
							  
							  
                                   <div class="team-hover">
                                        <div class="team-item">
                                             <h4>{{$web->team_nam2}}</h4>
                                             <ul class="social-icon">
                                                  <li><a href="{{$web->team_inst2}}" class="fa fa-instagram"></a></li>
                                                  <li><a href="{{$web->team_fac2}}" class="fa fa-facebook"></a></li>
                                             </ul>
                                        </div>
                                   </div>
                         </div>
                         <div class="team-info">
                               @if($web->team_name2)
							  <h3>{{$web->team_name2}}</h3>
                              @else
							  <h3>New Catherine</h3>
							  @endif
							  
							  @if($web->team_position2)
							  <p>{{$web->team_position2}}</p>
                              @else
							  <p>Kitchen Officer</p>
							   @endif
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <div class="team-thumb wow fadeInUp" data-wow-delay="0.6s">
                              
							  
							  
							  @if($web->team3)
							  <img src="{{ asset( 'uploads/webs').'/'.$web->team3}}" class="img-responsive" alt="">
							  @else
							 <img src="{{ asset('img/website/team3.jpg') }}" class="img-responsive" alt="">
							  @endif
							  
							  
							  
                                   <div class="team-hover">
                                        <div class="team-item">
                                             <h4>{{$web->team_nam3}}</h4>
                                             <ul class="social-icon">
                                                  <li><a href="{{$web->team_inst3}}" class="fa fa-instagram"></a></li>
                                                  <li><a href="{{$web->team_fac3}}" class="fa fa-facebook"></a></li>
                                             </ul>
                                        </div>
                                   </div>
                         </div>
                         <div class="team-info">
                              @if($web->team_name3)
							  <h3>{{$web->team_name3}}</h3>
                              @else
							   <h3>Isabella Grace</h3>
							  @endif
							  
							  @if($web->team_position3)
							  <p>{{$web->team_position3}}</p>
                              @else
							  <p>Pizza Specialist</p>
							   @endif
                         </div>
                    </div>
                    
               </div>
          </div>
     </section>





 <!-- Nuestros platos -->
     <section id="about" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-6 col-sm-12">
                         <div class="wow fadeInUp about-image" data-wow-delay="0.6s">
                              
							  	@if($web->img_cart)
								<img src="{{ asset( 'uploads/webs').'/'.$web->img_cart}}" alt="" class="img-responsive">
								@else
								 <img src="{{ asset('img/website/collageplat.png') }}" class="img-responsive" alt="">
								@endif

                         </div>
                    </div>
                    
                    <div class="col-md-6 col-sm-12">
                         <div class="about-info">
                              <div class="section-title wow fadeInUp" data-wow-delay="0.2s">
                                   <h4>{{ __('messages.Variedad de platos') }}</h4>
                                   <h2>{{ __('messages.Nuestros Platillos') }}</h2>
                              </div>

                              <div class="wow fadeInUp" data-wow-delay="0.4s">
                                  
								  <h4> {{ $web->carta }} </h4>
								  
                              </div>
                         </div>
                    </div>
               </div>
          </div>
     </section>
	 


     <!-- MENU-->
     <section id="menu" data-stellar-background-ratio="0.5" style="background: white;">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                              <h2>{{ __('messages.Nuestro Menu') }}</h2>
                            <!--  <h4>Tea Time &amp; Dining</h4> -->
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <!-- MENU THUMB -->
                         <div class="menu-thumb">
							 
							 
							 
							 @if($web->img_plat1)
							 <a href="{{ asset('uploads/webs').'/'.$web->img_plat1 }}" class="image-popup" title="{{$web->tit_plat1}}">
								   <img src="{{ asset('uploads/webs').'/'.$web->img_plat1 }}" class="img-responsive" alt="">
                              @else
								   <a href="{{ asset('img/website/menu1.jpg') }}" class="image-popup" title="{{$web->tit_plat1}}">
								   <img src="{{ asset('img/website/menu1.jpg') }}" class="img-responsive" alt="">
							 @endif
								   
								   
								   
								   <div class="menu-info">
                                        <div class="menu-item">
  
											 @if($web->tit_plat1)
											 <h3>{{$web->tit_plat1}}</h3>
                                             @else
											   <h3>American Breakfast</h3>
											 @endif

											 @if($web->ingred1)
											 <p>{{$web->ingred1}}</p>
                                             @else
										       <p>Tomato / Eggs / Sausage</p>
										     @endif

										
										</div>
                                        <div class="menu-price">
                                             
											 @if($web->price1)
											 <span>{{$web->price1}}</span>
											 @else
											 <span>$25</span>
											 @endif
											 
											 
                                        </div>
                                   </div>
                              </a>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <!-- MENU THUMB -->
                         <div class="menu-thumb">
                               @if($web->img_plat2)
							  <a href="{{ asset('uploads/webs').'/'.$web->img_plat2 }}" class="image-popup" title="{{$web->tit_plat2}}">
								   <img src="{{ asset('uploads/webs').'/'.$web->img_plat2 }}" class="img-responsive" alt="">
                               @else
							 <a href="{{ asset('img/website/menu2.jpg') }}" class="image-popup" title="{{$web->tit_plat2}}">
								   <img src="{{ asset('img/website/menu2.jpg') }}" class="img-responsive" alt="">
								@endif
                                   <div class="menu-info">
                                        <div class="menu-item">
                                              @if($web->tit_plat2)
											 <h3>{{$web->tit_plat2}}</h3>
                                             @else
											   <h3>Self-made Salad</h3>
											 @endif

											 @if($web->ingred2)
											 <p>{{$web->ingred2}}</p>
                                             @else
										      <p>Green / Fruits / Healthy</p>
										     @endif
                                        </div>
                                        <div class="menu-price">
                                              @if($web->price2)
											 <span>{{$web->price2}}</span>
											 @else
											 <span>$18</span>
											 @endif
                                        </div>
                                   </div>
                              </a>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <!-- MENU THUMB -->
                         <div class="menu-thumb">
                            @if($web->img_plat3)
							 <a href="{{ asset('uploads/webs').'/'.$web->img_plat3 }}" class="image-popup" title="{{$web->tit_plat3}}">
								   <img src="{{ asset('uploads/webs').'/'.$web->img_plat3 }}" class="img-responsive" alt="">
							@else
							 <a href="{{ asset('img/website/menu3.jpg') }}" class="image-popup" title="{{$web->tit_plat3}}">
								   <img src="{{ asset('img/website/menu3.jpg') }}" class="img-responsive" alt="">
							@endif

                                   <div class="menu-info">
                                        <div class="menu-item">
                                              @if($web->tit_plat3)
											 <h3>{{$web->tit_plat3}}</h3>
                                             @else
											   <h3>Chinese Noodle</h3>
											 @endif

											 @if($web->ingred3)
											 <p>{{$web->ingred3}}</p>
                                             @else
										     <p>Pepper / Chicken / Vegetables</p>
										     @endif
                                        </div>
                                        <div class="menu-price">
                                             @if($web->price3)
											 <span>{{$web->price3}}</span>
											 @else
											 <span>$34</span>
											 @endif
                                        </div>
                                   </div>
                              </a>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <!-- MENU THUMB -->
                         <div class="menu-thumb">
                              
							   @if($web->img_plat4)
							 <a href="{{ asset('uploads/webs').'/'.$web->img_plat4 }}" class="image-popup" title="{{$web->tit_plat4}}">
								   <img src="{{ asset('uploads/webs').'/'.$web->img_plat4 }}" class="img-responsive" alt="">
							  @else
							  <a href="{{ asset('img/website/menu4.jpg') }}" title="{{$web->tit_plat4}}">
								  <img src="{{ asset('img/website/menu4.jpg') }}" class="img-responsive" alt="">
								@endif
                                   <div class="menu-info">
                                        <div class="menu-item">
                                             @if($web->tit_plat4)
											 <h3>{{$web->tit_plat4}}</h3>
                                             @else
											  <h3>Rice Soup</h3>
											 @endif

											 @if($web->ingred4)
											 <p>{{$web->ingred4}}</p>
                                             @else
										     <p>Green / Chicken</p>
										     @endif
                                        </div>
                                        <div class="menu-price">
                                            @if($web->price4)
											 <span>{{$web->price4}}</span>
											 @else
											 <span>$28</span>
											 @endif
                                        </div>
                                   </div>
                              </a>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <!-- MENU THUMB -->
                         <div class="menu-thumb">
                              
							   @if($web->img_plat5)
							 <a href="{{ asset('uploads/webs').'/'.$web->img_plat5 }}" class="image-popup" title="{{$web->tit_plat5}}">
								   <img src="{{ asset('uploads/webs').'/'.$web->img_plat5 }}" class="img-responsive" alt="">
							   @else
							  <a href="{{ asset('img/website/menu5.jpg') }}" class="image-popup" title="{{$web->tit_plat5}}">
								  <img src="{{ asset('img/website/menu5.jpg') }}" class="img-responsive" alt="">
								@endif



                                   <div class="menu-info">
                                        <div class="menu-item">
                                             @if($web->tit_plat5)
											 <h3>{{$web->tit_plat5}}</h3>
                                             @else
											 <h3>Deli Burger</h3>
											 @endif

											 @if($web->ingred5)
											 <p>{{$web->ingred5}}</p>
                                             @else
										     <p>Beef / Fried Potatoes</p>
										     @endif
                                        </div>
                                        <div class="menu-price">
                                             @if($web->price4)
											 <span>{{$web->price5}}</span>
											 @else
											 <span>$46</span>
											 @endif
                                        </div>
                                   </div>
                              </a>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <!-- MENU THUMB -->
                         <div class="menu-thumb">
                                @if($web->img_plat6)
							   <a href="{{ asset('uploads/webs').'/'.$web->img_plat6 }}" class="image-popup" title="{{$web->tit_plat6}}">
								   <img src="{{ asset('uploads/webs').'/'.$web->img_plat6 }}" class="img-responsive" alt="">
							  @else
							  <a href="{{ asset('img/website/menu6.jpg') }}" class="image-popup" title="{{$web->tit_plat6}}">
								   <img src="{{ asset('img/website/menu6.jpg') }}" class="img-responsive" alt="">
								@endif

                                   <div class="menu-info">
                                        <div class="menu-item">
                                              @if($web->tit_plat6)
											 <h3>{{$web->tit_plat6}}</h3>
                                             @else
											 <h3>Big Flat Fried</h3>
											 @endif

											 @if($web->ingred6)
											 <p>{{$web->ingred6}}</p>
                                             @else
										     <p>Pepper / Crispy</p>
										     @endif
                                        </div>
                                        <div class="menu-price">
                                            @if($web->price6)
											 <span>{{$web->price6}}</span>
											 @else
											 <span>$30</span>
											 @endif
                                        </div>
                                   </div>
                              </a>
                         </div>
                    </div>


               </div>
          </div>
     </section>


     <!-- TESTIMONIAL -->
     <section id="testimonial" style="background: url('/img/website/testimonialbg.jpg')" data-stellar-background-ratio="0.5">
          <div class="overlay"></div>
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                              <h2>{{ __('messages.Testimonials') }}</h2>
                         </div>
                    </div>  

                    <div class="col-md-offset-2 col-md-8 col-sm-12">
                         <div class="owl-carousel owl-theme">
                              <div class="item">
                                   
								   
								   @if($web->test1)
								   <p>{{$web->test1}}</p>
								   @else
								   <p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Maecenas faucibus mollis interdum ullamcorper nulla non.</p>
								   @endif
								   
								@if($web->pers_test1)
								   <div class="tst-author">
								    <h4>{{$web->pers_test1}}</h4>
										@if($web->cpers_test1)
										<span>{{$web->cpers_test1}}</span>
								         @endif
								  </div>
								   @else
                                        <div class="tst-author">
                                             <h4>Digital Carlson</h4>
                                             <span>Pharetra quam sit amet</span>
                                        </div>
                                @endif
							  
							  </div>

                    
							     <div class="item">
							  @if($web->test2)
								   <p>{{$web->test2}}</p>
								   @else
								   <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed vestibulum orci quam.</p>
								   @endif
								   
								@if($web->pers_test2)
								   <div class="tst-author">
								    <h4>{{$web->pers_test2}}</h4>
										@if($web->cpers_test2)
										<span>{{$web->cpers_test2}}</span>
								         @endif
								  </div>
								   @else
                                        <div class="tst-author">
                                              <h4>Johnny Stephen</h4>
                                             <span>Magna nisi porta ligula</span>
                                        </div>
                                @endif
							      </div>



                             
							  
							  <div class="item">
							  @if($web->test3)
								   <p>{{$web->test3}}</p>
								   @else
								   <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed vestibulum orci quam.</p>
								   @endif
								   
								@if($web->pers_test3)
								   <div class="tst-author">
								    <h4>{{$web->pers_test3}}</h4>
										@if($web->cpers_test3)
										<span>{{$web->cpers_test3}}</span>
								         @endif
								  </div>
								   @else
                                        <div class="tst-author">
                                              <h4>Jessie White</h4>
                                             <span>Vitae lacinia augue urna quis</span>
                                        </div>
                                @endif
							      </div>
							  
							  

                         </div>
                    </div>

               </div>
          </div>
     </section>  


     <!-- CONTACT -->
     <section id="contact" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">
	<!-- How to change your own map point
            1. Go to Google Maps
            2. Click on your location point
            3. Click "Share" and choose "Embed map" tab
            4. Copy only URL and paste it within the src="" field below
	-->
                 
				 
				 @if($web->addr_google)
						<div class="wow fadeInUp col-md-6 col-sm-12" data-wow-delay="0.4s">
							<div id="google-map">
							{!! $web->addr_google !!}
							</div>
						</div>
						@else
						<div class="wow fadeInUp col-md-6 col-sm-12" data-wow-delay="0.4s">
							 <div id="google-map">
								 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6044.524249696123!2d-73.99926410620881!3d40.7562591403632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259b328e3d521%3A0xa1fc15fb05fc11cc!2sClyde%20Frazier%E2%80%99s%20Wine%20and%20Dine!5e0!3m2!1ses!2sve!4v1615392583009!5m2!1ses!2sve" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

							 </div>
						</div> 
					@endif
		
                    <div class="col-md-6 col-sm-12">

                         <div class="col-md-12 col-sm-12">
                              <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                                   <h2>{{ __('messages.Contactanos') }}</h2>
                              </div>
                         </div>
						 @if ($message = Session::get('success'))
							<div class="alert alert-success">
								<p>{{ $message }}</p>
							</div>
						@endif
                         <!-- CONTACT FORM -->
                         <form action="{{ route('sendemail') }}" method="post" class="wow fadeInUp" id="contact-form" role="form" data-wow-delay="0.8s">
                             @csrf
                              
                              
                              <!-- IF MAIL NOT SENT -->
                              <h6 class="text-danger">E-mail must be valid and message must be longer than 1 character.</h6>

                              <div class="col-md-6 col-sm-6">
                                   <input type="text" class="form-control" id="cf-name" name="name" placeholder="{{ __('messages.Full Name') }}">
                              </div>

                              <div class="col-md-6 col-sm-6">
                                   <input type="email" class="form-control" id="cf-email" name="email" placeholder="Email">
                              </div>
							  
							  
							  <div>
							   <input type="hidden" class="form-control" name="correo2" value="{{$web->correo}}" >
							  </div>

                              <div class="col-md-12 col-sm-12">
                                   <input type="text" class="form-control" id="cf-subject" name="subject" placeholder="{{ __('messages.Subject') }}">
                                   
							

                                   <textarea class="form-control" rows="6" id="cf-message" name="message" placeholder="{{ __('messages.Write your message') }}"></textarea>

                                   <button type="submit" class="form-control" id="cf-submit" name="submit">{{ __('messages.Send') }}</button>
                              </div>
                         </form>
                    </div>

               </div>
          </div>
     </section>          


     <!-- FOOTER -->
     <footer id="footer" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-3 col-sm-8">
                         <div class="footer-info">
                              <div class="section-title">
                                   <h2 class="wow fadeInUp" data-wow-delay="0.2s">{{ __('messages.Find us') }}</h2>
                              </div>
                              <address class="wow fadeInUp" data-wow-delay="0.4s">
                                   <p> {{ $restorant->address }}</p>
                              </address>
                         </div>
                    </div>

                    <div class="col-md-3 col-sm-8">
                         <div class="footer-info">
                              <div class="section-title">
                                   <h2 class="wow fadeInUp" data-wow-delay="0.2s">{{ __('messages.Reservation') }}</h2>
                              </div>
                              <address class="wow fadeInUp" data-wow-delay="0.4s">
                                   <p><a href="tel:+{{ $restorant->phone }}"> {{$restorant->phone}} </a></p>
                                   <p><a href="mailto:{{$web->correo}}">{{$web->correo}}</a></p>
                                   
                              </address>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-8">
                         <div class="footer-info footer-open-hour">
                              <div class="section-title">
                                   <h2 class="wow fadeInUp" data-wow-delay="0.2s">{{ __('messages.Horario') }}</h2>
                              </div>
                              
							 
							@if($web->horario)
	                    <div class="wow fadeInUp" data-wow-delay="0.4s"> 
						 <p>Horario: {{ $web->horario }}</p>
						</div>
							   @else
							   <div class="wow fadeInUp" data-wow-delay="0.4s">
                                   <p>Monday: Closed</p>
                                   <div>
                                        <strong>Tuesday to Friday</strong>
                                        <p>7:00 AM - 9:00 PM</p>
                                   </div>
                                   <div>
                                        <strong>Saturday - Sunday</strong>
                                        <p>11:00 AM - 10:00 PM</p>
                                   </div>
                               </div>
							  @endif
							  
							  
							  
							  
							  
                         </div>
                    </div>

                    <div class="col-md-2 col-sm-4" style="text-align:center">
                         <ul class="wow fadeInUp social-icon" data-wow-delay="0.4s">
                              <li><a href="{{ $web->facebook }}" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                              <li><a href="{{ $web->twitter }}" class="fa fa-twitter"></a></li>
                              <li><a href="{{ $web->instagram }}" class="fa fa-instagram"></a></li>
                              <li><a href="{{ $web->youtube }}" class="fa fa-youtube"></a></li>
                         </ul>

                         <div class="wow fadeInUp copyright-text" data-wow-delay="0.8s"> 
                              <p><br>Copyright &copy; 2021 <br>The Menu QR</p>
                              
                         </div>
                    </div>
                    
               </div>
          </div>
     </footer>


</div>



@endsection