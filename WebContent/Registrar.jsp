<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Registrar Usuarios</title>

<link rel="stylesheet" href="iconos.css">
<link rel="stylesheet" href="estilo.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-12">
			<header>
				<nav class="navbar navbar-light bg-info">
					<a class="navbar-brand" href="index.jsp"> <img
						src="http://wised.grupounipak.com/identidad/Iconos%20por%20Area/Icono-Personal.png"
						width="30" height="30" class="d-inline-block align-top" alt="">
						SHADIAGRAM
					</a>
				</nav>
		</div>
		</header>

		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12 col-12">
					<br> <br>
					<figure>
						<img class="img-responsive"
							src="https://image.flaticon.com/icons/png/512/306/306232.png"
							width="350px" height="350px" alt="img1" id="imgRegistro">
					</figure>
				</div>

				<div class="col-md-6 col-sm-12 col-12">
					<br>
					<h2>Registrar Usuario</h2>
					<p align="right">
						<mark>
							Ya tienes cuenta <a href="index.jsp">Accede</a>
						</mark>
					</p>
					<br>
					<form action="RegistrarUsuario" method="post">
						<div class="form-group">
							<label for="exampleInputPassword1">Nombres</label> <input
								name="nombre" type="text" class="form-control"
								id="exampleInputText1" placeholder="Nombres">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Apellidos</label> <input
								name="apellido" type="text" class="form-control"
								id="exampleInputText1" placeholder="Apellidos">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Usuario</label> <input
								name="usuario" type="text" class="form-control"
								id="exampleInputText1" placeholder="Usuario">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Correo Electronico</label> <input
								name="email" type="email" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Correo">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Contraseña</label> <input
								name="pass" type="password" class="form-control"
								id="exampleInputPassword1" placeholder="Contraseña">
						</div>
						<div class="form-group form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1" name="checkbox">Acepto los terminos y
							condiciones
							<div>
								<a href="TerminosYCondiciones.jsp">Ver terminos y
									condiciones</a>
							</div>
						</div>
						<button type="submit" class="btn btn-info">Registrar</button>
					</form>
					<br>
				</div>
			</div>
		</div>
</body>
</html>
