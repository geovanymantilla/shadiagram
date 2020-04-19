<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>Principal</title>

<link rel="stylesheet" href="estilo.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-12">
			<header>
				<nav class="navbar navbar-light bg-info " >
					<a class="navbar-brand hero-image" href="index.jsp"> <img
						src="http://wised.grupounipak.com/identidad/Iconos%20por%20Area/Icono-Personal.png"
						width="30px" height="30" class="d-inline-block align-top" alt="logo">
						SHADIAGRAM
					</a>

				</nav>
		</div>
		</header>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-6">
					<br>
					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block w-100"
									src="https://mistim.com/wp-content/uploads/2017/02/mockup-instagram.jpg"
									alt="First slide" width="700px" height="400px">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100"
									src="https://images.pexels.com/photos/122383/pexels-photo-122383.jpeg?cs=srgb&dl=arboles-artilugio-instagram-iphone-122383.jpg&fm=jpg"
									alt="Second slide" width="700px" height="400px">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100"
									src="https://images.pexels.com/photos/1851415/pexels-photo-1851415.jpeg?cs=srgb&dl=amor-blanco-carta-color-1851415.jpg&fm=jpg"
									alt="Third slide" width="700px" height="400px">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>

				<div class="col-md-6 col-sm-6 col-6">
					<br>
					<h2 class="hero-image">Iniciar Sesion</h2>
					<br>
					<form action="LoginController" method="post">
						<div class="form-group">
							<label for="exampleInputEmail1">Usuario</label> <input
								name=usuario type="text" class="form-control"
								id="exampleInputEmail1" placeholder="Usuario" required/>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Contraseña</label> <input
								name=pass type="password" class="form-control"
								id="exampleInputPassword1" placeholder="Contraseña" required/>
						</div>
						<button type="submit" class="btn btn-info">Entrar </button>
					</form>
					<br>
					<p>
						<mark>Create una cuenta para acceder a los beneficios de
							ser uno de nuestros usuarios</mark>
					</p>
					<a href="Registrar.jsp" class="btn btn-info" id="crear-cuenta"><font
						color=black>Registrate </font></a>
					<!--  <button type="button" class="btn btn-success" id="crear-cuenta">
					<a href="Registrar.jsp"><font color=black>Crear Cuenta</a></font>
				</button>-->
				</div>
			</div>
			<hr>
			<br>
			<footer>
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p class="text-muted" style="color: #000;">Copyright C
								Shadiagram- 2020</p>
							</p>
						</div>
					</div>
			</footer>
</body>
</html>