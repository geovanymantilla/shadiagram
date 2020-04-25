<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Inicio</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet" href="estilo.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/shadiagram" user="root" />

	<sql:query var="publicaciones">
  		select * from publicacion INNER JOIN amistad on publicacion.usuarioPublicacion = amistad.amistad and amistad.usuario=
  		"<c:out value="${usuario.usuario}"></c:out>"
 	</sql:query>



	<div class="row">
		<div class="col-md-12 col-sm-12 col-12">
			<header>
				<nav class="navbar navbar-light navegador">
					<a class="navbar-brand" href="inicio.jsp"> <img
						src="fotos/logo.svg"
						width="30" height="30" class="d-inline-block align-top" alt="">
						REDSOCIAL
					</a>
					<form class="form-inline" method="post"
						action="BuscarUsuarioController">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Buscar" aria-label="Search" size="80px"
							name="usuario">
						<button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Buscar</button>
					</form>
					<div class="btn-group dropleft">
						<button type="button" class="btn btn-secondary dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="fas fa-user"></i><a href="Perfil.html"></a>
						</button>
						<form action="DestruirSesionController" method="post">
							<div class="dropdown-menu">
								<button class="btn btn-link">
									<a href="Perfil.jsp">Ver Perfil <i class="fas fa-eye"></i></a>
								</button>
								<button class="btn btn-link" type="submit">
									Cerrar Sesion<i class="fas fa-power-off"></i>
								</button>
						</form>
					</div>
				</nav>
			</header>

			<c:forEach var="publicacion" items="${publicaciones.rows}">

				<sql:query var="usuarios">
  							select * from usuarios where usuario = "${publicacion.usuarioPublicacion}"
  						</sql:query>
				<sql:query var="comentarios">
  		select * from comentario where id_publicacionC = "${publicacion.id_publicacion}"
  	</sql:query>

				<c:forEach var="usuario" items="${usuarios.rows}">
					<div class="container-fluid bg-light">
						<br>
						<div class="row" style="text-align: center;">
							<div style="margin-left: 20%">
								<br>
								<div class="col-md-12 col-sm-12 col-12">
									<div class="card-header" align="left"
										style="width: 750px; margin-bottom: 80px">
										<a
											href="PerfilAmigo.jsp?usuario=${publicacion.usuarioPublicacion}&img-perfil=${usuario.imagen_perfil}">
											<img  src="fotos/${usuario.imagen_perfil}"
											style="font-weight: bold;" class="imgPerfilInicio">
											${publicacion.usuarioPublicacion }
										</a>
										<p></p>
										<img src="fotos/${publicacion.nombre_imagen }"
											class="card-img-top" alt="...">
										<div class="card-body">
											<p>
												<span style="font-weight: bold;">${publicacion.usuarioPublicacion}</span>
												${publicacion.descripcion }
											</p>
										</div>
										<form action="ReaccionController" method="post">
											<input style="display: none" name="idPublicacion"
												value="${publicacion.id_publicacion}">
											<button class="btn btn-danger" onclick="myFunction()"
												type="submit">
												<i class="far fa-heart"></i>
											</button>

											<a class="btn btn-info" data-toggle="collapse"
												href="#collapseExample" role="button" aria-expanded="false"
												aria-controls="collapseExample"><i
												class="far fa-comment"> </i></a>
										</form>
										<p style="font-weight: bold;"
											id="a${publicacion.id_publicacion}">0 Me gusta</p>
										<div class="collapse" id="collapseExample">
											<div class="card card-body">
												<div>
													<form action="ComentarioInicioController" method="post">
														<input type="text" id="comentario" class="form-control"
															placeholder="comentario" aria-label="fa-comment"
															aria-describedby="button-addon2" size="50px"
															name="comentario"> <input style="display: none"
															name="id" value="${publicacion.id_publicacion}">
														<br>
														<button class="btn btn-outline-primary" id="button-addon2"
															data-toggle="collapse" href="#collapseExample"
															role="button" aria-expanded="false"
															aria-controls="collapseExample" type="submit">Comentar</button>
													</form>
												</div>
											</div>
										</div>
										<div class="card-footer" id="scroll1">
											<c:forEach var="comentario" items="${comentarios.rows}">
												<ul class="list-group list-group-flush">
													<li class="list-group-item"><b id="letra">${comentario.usuarioC}</b>
														<p>${comentario.comentario}</p></li>
												</ul>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:forEach>

			<footer>
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p class="text-muted" style="color: #000;">Copyright C
								Shadiagram- 2020</p>
						</div>
					</div>
				</div>
			</footer>

			<script>
				var a = 0;
				function myFunction() {
					a++;
					document.getElementById("a${publicacion.id_publicacion}").textContent = a
							+ " me gusta";
				}
			</script>
</body>
</html>
