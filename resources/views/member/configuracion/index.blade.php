<!-- Usar plantilla main -->
@extends('member.template.main')

<!-- Editar Yield llamado title de la plantialla -->
@section('title','Configuración') 

@section('content')
	
	@section('class-panel','col-md-offset-1 col-md-10')

	@section('panel-title','Configuración')
	

	<div class="row">

		{{-- Botones --}}
		<div class="col-md-3">
			  <div class="col-md-12 no-padding" style="height:180px; margin-bottom: 2em">
				<div id="panel-imagen" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding" style="height: 100%">
				<a id="imagenThumbnail" class="thumbnail"><img id="img-imagen" src="/img/profiles/{{ $user->imagen }}" class="img-responsive img-rounded" alt="Imagen de perfil" onerror="imgError(this);">
				</div></a>
			  </div>

			  <div class=btn-group-vertical role=group aria-label="Vertical button group" style="width: 100%">
			  	<a href="#uno" class="btn btn-primary botonesPerfil" id="misDatos">Mis datos</a>
			  	<a href="#dos" class="btn btn-primary botonesPerfil" id="contraseña">Contraseña</a>
			  	<a href="#tres" class="btn btn-primary botonesPerfil" id="masInformacion">Más información</a>
			  	<a href="#cuatro" class="btn btn-primary botonesPerfil" id="imagenPerfil">Imagen de perfil</a>
			  </div>
		</div>

		{{-- {{{{{{{{{{{ Paneles }}}}}}}}}}}}}} --}}

		{{--  Panel de Mi perfil --}}

		<div class="col-md-9" >
			{{--/////////////////////// Mis datos  \\\\\\\\\\\\\\\\\\\\\--}}
			<section id="uno">
			<div class="panel panel-default panelesPerfil currentOpen" id="panel-misDatos">
				  <div class="panel-body">
				    <h2>Mis datos</h2>
				    <p>Consulta y cambia tus datos básicos.</p>
				    <hr/> 

					@include('flash::message') <!-- Para incluir en la plantilla flash -->
			    	@include('member.template.partials.errors')	<!-- Agregar errores -->

						{!! Form::open(['route' => ['member.configuracion.update', 'id' => $user->id, 'section' => 'myInformation'], 'method' => 'PUT']) !!}

						{{-- Nombre --}}
						<div class="row">
							<div class="form-group col-md-7">
							{!! Form::label('nombre','Nombre') !!}
							{!! Form::text('nombre',$user->nombre,['class' => 'form-control', 'placeholder' => 'Nombre completo', 'required' ]) !!}
							</div>
						</div>
						
						{{-- Username --}}
						<div class="row">
							<div class="form-group col-md-7">
							{!! Form::label('username','Nombre de usuario') !!}
							{!! Form::text('username',$user->username,['class' => 'form-control', 'placeholder' => 'Nombre de usuario', 'required' ]) !!}
							</div>
						</div>

						{{-- Correo --}}
						<div class="row">
						<div class="form-group col-md-7">
						{!! Form::label('email','Correo electrónico') !!}
						{!! Form::email('email',$user->email,['class' => 'form-control', 'placeholder' => 'ejemplo@gmail.com', 'required' ]) !!}
						</div>
						</div>

						{{-- Discapacidad --}}
						<div class="row">
						<div class="form-group col-md-7">
						{!! Form::label('discapacidad', 'Discapacidad') !!}
						{!! Form::select('discapacidad', ['none' => 'Ninguna','ceguera' => 'Ceguera','daltonismo' => 'Daltonismo', 'bajaVision' => 'Baja visión' , 'sordera' => 'Sordera', 'otra' => 'Otra'], $user->discapacidad,['class' => 'form-control', 'required']) !!}
						</div>
						</div>

						{{-- Pais --}}
						<div class="row">
							<div class="form-group col-md-7">
							<label for="pais">País</label>
							@include('admin.template.partials.countries')
							</div>
						</div>

						{{-- Fecha nacimiento --}}
							<div class="row">
								<div class ="form-group col-md-12">
									<div id ="fecha_nac"></div>
							    </div>
							</div>


						{{-- Tipo --}}
						<div class="row">
						<div class="form-group col-md-7">
							<label for="tipo">Tipo de usuario</label>
							<input hidden id="tipo"></input>
							
							@if ($user->type == 'admin')
								{{-- true expr --}}
								<h3 class="midsize no-margin" style="margin-bottom:10px"><span class="label label-danger" alt="administrador">Administrador</span></h3>
							@endif

							@if ($user->type == 'member')
								{{-- false expr --}}
								<h3 class="midsize no-margin" style="margin-bottom:10px"><span class="label label-primary" alt="miembro">Miembro</span></h3>
							@endif 
						</div>
						</div>
						
						{{-- Biografia --}}
						<div class="row">
							<div class="form-group col-md-8">
							{!! Form::label('biografia','Mi biografia') !!}
							{!! Form::textarea('biografia',$user->biografia,['class' => 'form-control', 'placeholder' => 'Ejemplo: Mi nombre es Juan y me gusta saber sobre los celulares.', 'pattern' => '.{1,255}','title' => 'Máximo 255 caracteres','maxlength'=>'255', 'minlength'=>'5']) !!}
							</div>
						</div>

						<hr/>
						<div class="form-group">
							{!! Form::submit('Guardar cambios', ['class' => 'btn btn-primary  pull-right']) !!}
						</div>

						{!! Form::close() !!}

				  </div>
			</div>
			</section>
			
			{{--/////////////////////// Contraseña  \\\\\\\\\\\\\\\\\\\\\--}}
			<section id="dos">
			<div class="panel panel-default panelesPerfil" id="panel-contraseña">
				  <div class="panel-body" style="height:45em">
				   <h3>Contraseña</h2>
				    <p>Edita o recupera tu contraseña .</p>
				    <hr/> 


					@include('flash::message') <!-- Para incluir en la plantilla flash -->
			    	@include('admin.template.partials.errors')	<!-- Agregar errores -->


					{!! Form::open(['route' => ['member.configuracion.update', 'id' => $user->id, 'section' => 'password'], 'method' => 'PUT']) !!}

					{{-- Contraseña actual --}}
						<div class="row">
						<div class="form-group col-md-7">
						{!! Form::label('currentPassword','Contraseña actual') !!}
						
				    
						{!! Form::password('currentPassword', ['class' => 'form-control', 'placeholder' => '***********', 'required', 'data-container'=> 'body', 'data-toggle'=> "popover", 'data-placement'=> "right", 'data-content'=>"", 'data-trigger'=> "focus", 'data-animation'=>"true",'pattern'=>'.{8,}']) !!}
						</div>
						</div>

						<p>¿Olvidaste tu contraseña?</p>
						<hr/>
					
					{{-- Contraseña nueva --}}
						<div class="row">
						<div class="form-group col-md-7">
						{!! Form::label('newPassword','Contraseña nueva') !!}
						{!! Form::password('newPassword', ['class' => 'form-control', 'placeholder' => '***********', 'required', 'data-container'=> 'body', 'data-toggle'=> "popover", 'data-placement'=> "right", 'data-content'=>"", 'data-trigger'=> "focus", 'data-animation'=>"true",'pattern'=>'.{8,}']) !!}
						</div>
						</div>

					{{-- Confirma contraseña --}}
						<div class="row">
						<div class="form-group col-md-7">
						{!! Form::label('confirmPassword','Confirma contraseña') !!}
						{!! Form::password('confirmPassword', ['class' => 'form-control', 'placeholder' => '***********', 'required','pattern'=>'.{8,}']) !!}
						</div>
						</div>
						
						<hr/>

						<div class="form-group">
							 <input id="boton-contraseña" class="btn btn-primary  pull-right" disabled type="submit" value="Guardar cambios">
						</div>
					{!! Form::close() !!}

				  </div>
			</div>
			</section>

			{{--/////////////////////// Más información  \\\\\\\\\\\\\\\\\\\\\--}}
			<section id="tres">
			<div class="panel panel-default panelesPerfil" id="panel-masInformacion">
				  <div class="panel-body">
				    <h3>Más opciones</h2>
				    <p>Encuentra más información.</p>
				    <hr/>
						
						{{-- Estado usuario --}}
						<div class="row">
							<div class="form-group col-md-7">
							@if ($user->status == "activated")
								<span for="status" style="font-weight: bold">Estado del usuario  <span id="label-status" class="btn-success btn-xs glyphicon glyphicon-ok"></span> </span>
								<p>Activado</p>
							@else
								<span for="status" style="font-weight: bold">Estado del usuario  <span class="btn-danger btn-xs glyphicon glyphicon-remove" id="label-status" ></span> </span>
								<p>Desactivado</p>
							@endif
							
							
							</div>
						</div>


						{{-- Fecha registro --}}
				     	<div class="row">
							<div class="form-group col-md-7">
							<p style="font-weight: bold">Fecha de registro:</p>
							<p>{{$user->dateCarbon}}</p>
							</div>
						</div>

						{{-- Tipo --}}
						<div class="row">
							<div class="form-group col-md-7">
							@if ($user->type == "admin")
								<span for="type" style="font-weight: bold">Tipo de usuario:  <span id="span-type"class="label label-danger" alt="administrador">Admin</span></span>
							@else
								<span for="type" style="font-weight: bold">Tipo de usuario:  <span id="span-type" class="label label-primary" alt="miembro">Miembro</span></span>
							@endif

							</div>
						</div>
						

				  </div>
			</div>
			</section>

			{{--/////////////////////// Imagen Perfil  \\\\\\\\\\\\\\\\\\\\\--}}
			<section id="cuatro">
			<div class="panel panel-default panelesPerfil" id="panel-imagenPerfil">
				  <div class="panel-body" style="height:28em">
				    <h3>Imagen de perfil</h2>
				    <p>Cambia tu imagen de perfil.</p>
				    <hr/>

				    {!! Form::open(['route' => ['member.configuracion.update', 'id' => $user->id,'section' => 'imagenPerfil'], 'method' => 'PUT','files' => true]) !!}
						
						<div class="row">
                            <div class="form-group col-md-6">
                            {!! Form::label('imagen','Selecciona una imagen') !!}
                            {!! Form::file('imagen',["onchange"=>"showMyImage(this)"]) !!}
                            </div>
                         </div>
						
						<hr/>
						<div class="form-group">
							 <input id="boton-imagen" class="btn btn-primary  pull-right" disabled type="submit" value="Cambiar imagen">
						</div>

						{!! Form::close() !!}

				  </div>
			</div>
			</section>





{{-- /////////////////////////////////////////////////////////////////////////////////// --}}


	{{-- Javascript --}}
	@section('js')
		{{-- expr --}}
		
		<script type ="text/javascript">
			$(document).ready(function(){
				$('#newPassword').popover();
				$("#panelPretederminado").show();
				$(".panelesPerfil").hide();

				$('.alert').delay(8000).slideUp(1200);
				//Cambia el país en el checkbox
				$('#pais').val('{{$user->pais}}');

				//Datetimepicker configuracion DatetimePicker
				var  $fechaOriginal = '{{$user->fecha_nac}}';
				var  $fechaEditada =  $fechaOriginal.replace('-','/');
				$("#fecha_nac").birthdayPicker({"defaultDate":$fechaEditada});  
				
				//Paneles
				var $currentItem = $('.currentOpen');
				$currentItem.fadeIn(700);
			    

				$(".botonesPerfil").click(function(){
					console.log('Aca');
					cambiaPaneles(this.id);
				});

				$("#imagenThumbnail").click(function(){
					console.log('Aca');
					cambiaPaneles('imagenPerfil');
				});

				

				{{-- Cambia los paneles --}}
				function cambiaPaneles($selector){
					console.log($selector);
					$currentItem.hide();
					$currentItem.removeClass('.currentOpen');

					$currentItem = $('#panel-'+$selector);
					$currentItem.fadeIn(700);

					$currentItem.addClass('.currentOpen');
				}


				$("#div3").width($("#div3").width() + 8);  
			});		
		</script>
		
		<script type="text/javascript">
			$('.alert').delay(8000).slideUp(1200);
		</script>
		

		{{-- Esperar a que termine de escribir --}}
		<script type="text/javascript">

			var $currentPassword = $('#currentPassword');
			var $confirmPassword = $('#confirmPassword');
			var $newPassword = $('#newPassword');
			var $validacion = false;

			var delay = (function(){
			var timer = 0;
			

			return function(callback, ms){
				clearTimeout (timer);
				timer = setTimeout(callback, ms);
				};
			})();

			$('#confirmPassword, #newPassword, #currentPassword').keyup(function() {
			delay(function(){
				verifyNew_Confirm();
				}, 1000);
			});

			function verifyNew_Confirm(){

				if (newPassword.value == confirmPassword.value) {
					console.log("Entro funcion newPassword & confirmPassword");

					var dataEnviar = {
						'id': '{{$user->id}}',
						'currentPassword':currentPassword.value,
						'_token':$('input[name="_token"]').val() 
					};

					$.ajax
						({
						dataType: 'json',
						data: dataEnviar,
						url: '{{ url('member/configuracion/validacion')}}',
						type: 'post',
						success:  function (response) {
							console.log('-> Success');
							console.log("JSON object: %O",response);
							console.log('----------------------');
							console.log('Respuesta: '+response.estado);

							if(response.estado == 'true'){
								console.log('aaaaaaaa');
								$('#boton-contraseña').prop("disabled",false);
								$("#newPassword").popover("hide");
								$("#currentPassword").popover("hide");
							}
							else{
								console.log('eeeeee');
								$('#boton-contraseña').prop("disabled",true);
								$("#currentPassword").attr("data-content","Las contraseña no es correcta.");
								$("#currentPassword").popover("show");
								$("#currentPassword").attr("data-content","");

							}
                		}
					});
					
				} else {
					$('#boton-contraseña').prop("disabled",true);
					$("#newPassword").attr("data-content","Las contraseñas no coinciden.");
			        $("#newPassword").popover("show");
			        $("#newPassword").attr("data-content","");
				}
			}
		</script>


		{{-- Vista previa de imagen --}}
		<script type="text/javascript">
		{{-- imgError --}}
		function imgError(image) {
		    image.onerror = "";
		    image.src = "/img/profiles/default.png";
		    return true; 
		  }
			
		{{-- Show my Image --}}

	      function showMyImage(fileInput){
	      	console.log('Cambiaré imagen');
	        var files = fileInput.files;
	        for (var i = 0; i < files.length; i++) {           
	            var file = files[i];
	            var imageType = /image.*/;     
	            if (!file.type.match(imageType)) {
	                continue;
	            }           
	            var img=document.getElementById("img-imagen");            
	            img.file = file;    
	            var reader = new FileReader();
	            reader.onload = (function(aImg) { 
	                return function(e) { 
	                    aImg.src = e.target.result; 
	                }; 
	            })(img);
	            reader.readAsDataURL(file);
	        } 
	          $('#panel-imagen').hide();
	          $('#panel-imagen').show(600);
	          $('#boton-imagen').prop("disabled",false);
	      }
		</script>

	@endsection

<style type="text/css">

	 .thumbnail {
        height: 100%;
        background-color: white;
    }

    .thumbnail img {
    	height: 100%
    }
</style>



@endsection

