@extends('layouts.app')
@section('scripts')

	<script type="text/javascript" src="{{ asset ('js/website/delete.js') }}"></script>

@stop

@section('content')

<div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
</div>
	
<div class="container-fluid mt--7">
    <div class="row">
		<div class="col-lg-12 margin-tb" style="margin-top: 15px;">
			<div class="pull-left ">
				<h2 class="text-white">Web-Site</h2>
			</div>

        </div>
    </div>
   
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
	

	 <?php if (count($webs) == 0){?>
			<div class="mt-3">
                <a class="btn btn-success" style="margin-left: 25px;" href="{{ route('webs.create') }}"> Genere Página
				</a>
            </div> 
	 <?php }?>
  

   <!--modal-->
	<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="mi-modal" style="padding-top: 50px !important;">
	  <div class="modal-dialog modal-md">
		<div class="modal-content">
		  <div class="modal-header">
			
			<h4 class="modal-title" id="myModalLabel">Eliminar Página</h4>
		  </div>
		  <div class="modal-body">
		  ¿Está seguro que desea eliminar su página definitivamente?
		 
		  <input type="hidden" class="form-control" id="id_item">
		  
		 </div>
		  <div class="modal-footer">
			<button type="button" class="btn btn-primary" id="modal-btn-si">Aceptar</button>
			<button type="button" class="btn btn-primary" id="modal-btn-no">Cancelar</button>
		  </div>
		</div>
	  </div>
	</div>
<!--fin modal-->

   
    <table class="table table-bordered" style="background: #fff; margin-top: 80px; ">
       
		@php
		
		if (count($webs) == 1) {
		@endphp
		  <thead class="table-active" style="color: black;background-color: #fff !important;">
			<tr class="table-active" >
				<td style="width:10%;">Logo</th>
				<td style="">Pagina</th>
				<td style="width:50%; text-align:center;">Acciones</th>
			</tr>
		  </thead>
		
	   
	  
	  
        @foreach ($webs as $item)
		<tr>

		
		
		<!--
@isset($i)
<td>{{ ++$i }}</td>
@endisset-->

			<td> 
			@if ($item->restaurante->logo)
				<img class="img-fluid" src="{{ 'uploads/restorants/'.$item->restaurante->logo.'_thumbnail.jpg' }}">
					    
			@else
				 <img style="width: 100px;" src="{{ config('global.site_logo') }}" />
			@endif
			</td>

			<td style="vertical-align: middle">{{ $item->restaurante->subdomain }}</td>
            
			<td style="text-align:center; vertical-align: middle">
                    

					<a class="btn btn-outline-info" href="{{ $item->pathb() }}" title="Ver Mi Web-Site Online" target="_blank"><img src="{{URL::asset('/img/web.png')}}" alt="Ver" height="22" width="auto" height="20" ></a>
					
					
					
                    <a class="btn btn-outline-primary" href="{{ route('webs.edit',$item->id) }}" title="Editar Platos y Forma del Web-Site"><img src="{{URL::asset('/img/edit.png')}}" alt="Edit" height="22" width="auto" height="20"></a>
					
			
                    <button type="button" class="btn btn-outline-danger remov-item" data-id="{{ $item->id }}"><img src="{{URL::asset('/img/delete.png')}}" alt="Supr" height="22" width="auto"></button>
                
            </td>
        </tr>
        @endforeach
    </table>
	
	@php
	
	}else{
	
	@endphp
		<div style="padding:2em; margin-top: 2em; background:#dcd9d9">
			<h2 >Aún no cuenta con una Página web creada<h2>
		</div>
	@php		
		}
		  
		@endphp
		
		
		{{--!! $webs->links() !!--}}
	</div>

@endsection