<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Perfil</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="estilo.css">
<link rel="stylesheet" href="estilo-jairo.css">
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

	<sql:query var="publicacions">
  	select * from publicacion where usuarioPublicacion = "<c:out
			value="${usuario.usuario}"></c:out>"
  </sql:query>


	<div class="row">
		<div class="col-md-12 col-sm-12 col-12">
			<header>
				<nav class="navbar navbar-light bg-info">
					<a class="navbar-brand" href="Inicio.jsp"> <img
						src="http://wised.grupounipak.com/identidad/Iconos%20por%20Area/Icono-Personal.png"
						width="30" height="30" class="d-inline-block align-top" alt="">
						SHADIAGRAM
					</a>
					<form class="form-inline" action="BuscarUsuarioController"
						method="post">
						<input class="form-control mr-sm-2" type="search" name="usuario"
							placeholder="Buscar" aria-label="Search" size="80px">
						<button type="submit" class="btn btn-secondary">
							<i class="fas fa-search"></i>Buscar
						</button>
					</form>

					<div class="btn-group dropleft">
						<button type="button" class="btn btn-secondary dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="fas fa-user"></i>
						</button>
						<form action="DestruirSesionController" method="post">
							<div class="dropdown-menu">
								<button class="btn btn-link" type="submit">
									Cerrar Sesion<i class="fas fa-power-off"></i>
								</button>
							</div>
						</form>
					</div>
				</nav>
			</header>
		</div>
		<!-- Division para la foto del usuario  -->
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-sm-5 col-5">
					<br>
					<!-- foto dinamica -->

					<img src="fotos/${usuario.imagenPerfil}" class="imgRedonda">
				</div>
				<div class="col md-2 col-sm-2 col-2">
					<br>
					<button type="button" name="button" class="btn btn-info">
						<i class="fas fa-user-edit"></i><a href="Editar.jsp"><font
							color=black>Editar Perfil</font></a>
					</button>
				</div>
				<div class="col-md-5 col-sm-5 col-5">
					<br>
					<h3>Informacion del perfil</h3>
					<br>
					<h6>
						<c:out value="${usuario.usuario}"></c:out>
					</h6>
					<h6 class="alinear">
						<p>
							<br>
						</p>
						Publicaciones
					</h6>
					<h6 class="alinear" data-toggle="modal" style="cursor: pointer"
						data-target="#exampleModalCenter">
						<p>${usuario.amistads2.size()}</p>
						<a><font color="#0066ff">Seguidores</font></a>
					</h6>
					<!-- Modal para mostrar seguidores -->
					<div class="modal fade" id="exampleModalCenter" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalCenterTitle"
						aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalCenterTitle">Seguidores</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<!-- estas divisiones tienen que ser dinamicas -->
									<div class="row">
										<!-- esta foto tiene que ser dinamica -->
										<c:forEach var="seguidores" items="${usuario.amistads2}">
											<div class="col md-12 col-sm-12 col-12">
												<img src="fotos/${seguidores.usuario1.imagenPerfil}"
													alt="..." class="imgModal">
												<h6 class="alinearModal">
													<c:out value="${seguidores.usuario1.usuario}"></c:out>
												</h6>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- modal para ver los usuarios seguidos -->

					<h6 class="alinear" data-toggle="modal" style="cursor: pointer"
						data-target="#exampleModalCenter1">
						<p>${usuario.amistads1.size()}</p>
						<a><font color="#0066ff">Siguiendo</font></a>
					</h6>
					<div class="modal fade" id="exampleModalCenter1" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalCenterTitle"
						aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalCenterTitle">Seguidos</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<!-- estas divisiones tienen que ser dinamicas -->
									<div class="row">
										<!-- esta foto tiene que ser dinamica -->
										<c:forEach var="siguiendo" items="${usuario.amistads1}">
											<div class="col md-12 col-sm-12 col-12">
												<img src="fotos/${siguiendo.usuario2.imagenPerfil}"
													alt="..." class="imgModal">
												<h6 class="alinearModal">
													<c:out value="${siguiendo.usuario2.usuario}"></c:out>
												</h6>
											</div>
											<br>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="container">
					<div class="row" align="center">
						<div class="col-md-12 col-sm-12 col-12">
							<form name="formulario" method="post"
								enctype="multipart/form-data" action="SubirFoto">
								<br> <input type="text" class="form-control"
									id="exampleInputText1" aria-describedby="TextHelp"
									placeholder="Escriba aqui su descripción ..."
									name="descripcion" style="WIDTH: 400px"> <br> <input
									type="file" onchange="cargarArchivo(this)" name="archivo"
									accept="image/*" /> <input type="hidden" name="nombre"
									value="" />
							</form>
							<iframe name="null" style="display: none;"></iframe>
						</div>
					</div>
				</div>

				<div class="container">
					<div class="row">
						<div class="col-md-5 col-sm-5 col-5">
							<br>
							<ul class="list-group list-group-horizontal">
								<li class="list-group-item list-group-item-info">Publicaciones
									<i class="fas fa-camera-retro"></i>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Aca estan todas las fotos subidas por el usuario -->
				<div class="container">
					<br>
					<div class="row">
						<br>
						<c:forEach var="publicaciones" items="${publicacions.rows}">
							<div class="col-md-3 col-sm-6 col-6">
								<div class="card" style="width: 15rem;">

									<img src="fotos/${publicaciones.nombre_imagen}"
										class="card-img-top" width="238px" height="238px" alt="..."
										data-toggle="modal"
										data-target="#a${publicaciones.id_publicacion}">
									<div class="card-body">
										<p class="card-text">${publicaciones.descripcion}</p>
										<a href="#" class="btn btn-danger"><i class="far fa-heart"></i></a>
										<a href="#" class="btn btn-info"><i class="far fa-comment"></i></a>
									</div>
								</div>
							</div>
							<div class="modal fade" id="a${publicaciones.id_publicacion}"
								tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content" style="white-space: 600px"
										style="widows: 800px">
										<div class="modal-header">
											<div>
												<img src="fotos/${usuario.imagenPerfil}" class="imgModal"
													width="60px" alt="...">
											</div>
											<p>
												<c:out value=" ${usuario.usuario}"></c:out>
											</p>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>

										<div class="modal-body">

											<div class="card mb-10" style="max-width: 940px;">
												<div class="row no-gutters">
													<sql:query var="publica">
  															select * from publicacion where id_publicacion = "<c:out
															value="${publicaciones.id_publicacion}"></c:out>"
  													</sql:query>
													<sql:query var="comentarios">
  													select * from comentario where id_publicacionC = "<c:out
															value="${publicaciones.id_publicacion}"></c:out>"
  													</sql:query>

													<c:forEach var="publi" items="${publica.rows}">
														<div class="col-md-7">
															<img src="fotos/${publi.nombre_imagen}"
																style="object-fit: cover;" height="90%" width="90%"
																class="card-img" alt="..."> <br>
															<p class="card-text">${publicaciones.descripcion}</p>
														</div>
														<div class="col-md-5">
															<div class="card-body" id="scroll">
																<c:forEach var="comentario" items="${comentarios.rows}">
																	<ul class="list-group list-group-flush">
																		<li class="list-group-item"><b id="letra">${comentario.usuarioC}</b>

																			<p>${comentario.comentario}</p></li>
																	</ul>
																</c:forEach>
															</div>
															<footer id="foter">
																<form action="ComentarioPublicacionController"
																	method="post">
																	<input type="text" id="comentario" class="form-control"
																		placeholder="comentario" aria-label="fa-comment"
																		aria-describedby="button-addon2" size="50px"
																		name="comentario"> <input
																		style="display: none"
																		value="${publicaciones.id_publicacion}" name="id"></input>
																	<div class="input-group-append">
																		<a href="#" class="btn btn-danger" id="boton"><i
																			class="far fa-heart"></i></a> <a href="#"
																			class="btn btn-info" id="boton"><i
																			class="far fa-comment"></i></a>
																		<button class="btn btn-outline-secondary"
																			type="submit" id="button-addon2">enviar</button>
																	</div>
																</form>

															</footer>

														</div>
													</c:forEach>
												</div>
											</div>


										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<script type="text/javascript" src="subir.js"></script>
</body>
</html>
