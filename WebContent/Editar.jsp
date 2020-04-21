<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<link href="https://fonts.googleapis.com/css?family=Paytone+One"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Editar Perfil</title>
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css" href="estilo.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">


<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>

	<div class="row">
		<div class="col-md-12 col-sm-12 col-12">
			<header>
				<nav class="navbar navbar-light navegador">
					<a class="navbar-brand" href="Inicio.jsp"> <img
						src="fotos/logo.svg"
						width="30" height="30" class="d-inline-block align-top" alt="">
						SHADIAGRAM
					</a>
				</nav>
		</div>
	</div>
	</header>
	<br>
	<div class="container">
		<div class="row">

			<div class="col-md-4 col-sm-4 col-4">
				<br>
				<ul class="list-group">
					<li class="list-group-item"><button class="btn btn-link"
							id="EditarPerfil">Editar Perfil</button></li>
					<li class="list-group-item"><button class="btn btn-link"
							id="CambiarContraseña" data-toggle="modal" data-target="#contra">Cambiar
							contraseña</button></li>

				</ul>
			</div>

			<div class="col-md-8 col-sm-8 col-8">

				<img src="fotos/${usuario.imagenPerfil}" class="imgRedonda">

				<form name="formulario" method="post" enctype="multipart/form-data"
					action="EditarPerfilController" class="alinearAmigo">
					<br> <input type="file" onchange="editarArchivo(this)"
						name="archivo" accept="image/*" /> <input type="hidden"
						name="nombre" value="" />
					<button>Guardar</button>
				</form>
				<iframe name="null" style="display: none;"></iframe>

				<br> <br>
				<form action="CambiarEmailController" method="post" align="center">
					<div class="form-group">
						<label for="exampleInputEmail1">Cambiar Correo Electronico</label>
						<input name="email" type="email" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Correo">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Repetir correo nuevo</label> <input
							name="email2" type="text" class="form-control"
							placeholder="Repetir correo">
					</div>

					<button type="submit" class="btn btn-outline-dark">
						<a href="Editar.jsp"><font color=black>Enviar</a></font>
					</button>
					<br>
				</form>
			</div>
		</div>

	</div>
	<div class="modal fade" id="contra" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Cambiar
						Contraseña</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="CambiarContraseniaController" method="post">
					<div class="modal-body">
						<div class="form-group ">
							<label>Cambiar Contraseña</label> <input name="password"
								id="password" type="password" class="form-control"
								placeholder="Contraseña">
						</div>
						<br>
						<div class="form-group ">
							<input name="cpassword" type="password" class="form-control"
								placeholder="Repetir contraseña">
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Guardar
							Cambios</button>
				</form>
			</div>
		</div>
	</div>
	</div>

	<script type="text/javascript" src="editarFoto.js"></script>

</body>
</html>

