<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta charset="utf-8">
<title>Perfil Amigo</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet" href="iconos.css">
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
<style type="text/css">
.oculto {
	display: none;
}
</style>
</head>
<body>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/shadiagram" user="root" />

	<sql:query var="publicacions">
  	select * from publicacion where usuarioPublicacion = "<%=request.getParameter("usuario")%>"
  </sql:query>

	<sql:query var="mostrar">
  	select * from amistad where usuario ="<c:out
			value="${usuario.usuario}"></c:out>" and amistad = "<%=request.getParameter("usuario")%>"
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
				</nav>
			</header>
		</div>
	</div>
	<!-- Division para la foto del usuario  -->
	<div class="container">
		<div class="row">
			<div class="col-md-5 col-sm-5 col-5">
				<br>
				<!-- foto perfil amigo -->
				<img src="fotos/<%=request.getParameter("img-perfil")%>" alt="..."
					class="imgRedonda">
			</div>
			<div class="col-md-7 col-sm-7 col-7">
				<br>
				<h3>Informacion del perfil</h3>
				<form action="" method="post" class="oculto" id="dejarSeguir">
					<input style="display: none"
						value="<%=request.getParameter("usuario")%>"></input>
					<button class="btn btn-danger alinearBoton" type="submit"
						name="amigos">
						Dejar de Seguir <i class="fas fa-user-times"></i>
					</button>
				</form>

				<c:forEach var="row" items="${mostrar.rows}">

					<c:choose>
						<c:when test="${row}!=null">
    			 Dejar de seguir
 				 </c:when>
					</c:choose>

				</c:forEach>
				<form action="AñadirAmigo" method="post" class="" id="seguir">
					<input style="display: none"
						value="<%=request.getParameter("usuario")%>" name="amigo"></input>

					<button class="btn btn-info alinearBoton" type="submit"
						name="amigos">
						Seguir <i class="fas fa-user-plus"></i>
					</button>
				</form>
				<br>
				<h6><%=request.getParameter("usuario")%></h6>
				<h6 class="alinear">Publicaciones</h6>
				<h6 class="alinear" data-toggle="modal"
					data-target="#exampleModalCenter">
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
									<div class="col md-8 col-sm-8 col-8">
										<img
											src="https://media.licdn.com/dms/image/C4D03AQEHycGfZ5Gnhg/profile-displayphoto-shrink_200_200/0?e=1560988800&v=beta&t=qSQ96ji81Kxhbq-hdBRUVFhwLH-4Qr09jJ4iYqDgfnw"
											alt="..." class="imgModal">
										<h6 class="alinearModal">Carlos rene angarita</h6>
									</div>
									<form>
										<div class=" col md-4 col-sm-4 col-4">
											<button type="submit" name="button"
												class="btn btn-info alinearBoton" id="amigos">Seguir</button>
										</div>
									</form>
								</div>

								<div class="row">
									<!-- esta foto tiene que ser dinamica -->
									<div class="col md-8 col-sm-8 col-8">
										<img
											src="https://docentes.ufps.edu.co/public/imagenes/8c464e8a0ce2c754d619f35db2189403947c02bc2763019c1e40d237fef31abf.JPEG"
											alt="..." class="imgModal">
										<h6 class="alinearModal">Marco Antonio Adarme</h6>
									</div>
									<div class=" col md-4 col-sm-4 col-4">
										<button type="button" name="button"
											class="btn btn-ligth alinearBoton">Siguiendo</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- modal para ver los usuarios seguidos -->
				<h6 class="alinear" data-toggle="modal"
					data-target="#exampleModalCenter1">
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
									<div class="col md-8 col-sm-8 col-8">
										<img
											src="https://media.licdn.com/dms/image/C4D03AQEHycGfZ5Gnhg/profile-displayphoto-shrink_200_200/0?e=1560988800&v=beta&t=qSQ96ji81Kxhbq-hdBRUVFhwLH-4Qr09jJ4iYqDgfnw"
											alt="..." class="imgModal">
										<h6 class="alinearModal">Carlos rene angarita</h6>
									</div>
									<div class=" col md-4 col-sm-4 col-4">
										<button type="button" name="button"
											class="btn btn-ligth alinearBoton">Siguiendo</button>
									</div>
								</div>

								<div class="row">
									<!-- esta foto tiene que ser dinamica -->
									<div class="col md-8 col-sm-8 col-8">
										<img
											src="https://docentes.ufps.edu.co/public/imagenes/8c464e8a0ce2c754d619f35db2189403947c02bc2763019c1e40d237fef31abf.JPEG"
											alt="..." class="imgModal">
										<h6 class="alinearModal">Marco Antonio Adarme</h6>
									</div>
									<div class=" col md-4 col-sm-4 col-4">
										<button type="button" name="button"
											class="btn btn-ligth alinearBoton">Siguiendo</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-sm-5 col-5">
					<br>
					<ul class="list-group list-group-horizontal">
						<li class="list-group-item list-group-item-info">Publicaciones</li>
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
							<!-- ${publicaciones.idPublicacion}">-->

							<img src="fotos/${publicaciones.nombre_imagen}"
								class="card-img-top" width="238px" height="238px">
							<div class="card-body">
								<p class="card-text">${publicaciones.descripcion}</p>
								<a href="#" class="btn btn-danger"><i class="far fa-heart"></i></a>
								<a href="#" class="btn btn-info"><i class="far fa-comment"></i></a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>


		<script type="text/javascript">
			$("#dejarSeguir").click(function(event) {
				$("#seguir").removeClass("oculto");
				$("#dejarSeguir").addClass("oculto");
			});

			$("#seguir").click(function(event) {
				$("#dejarSeguir").removeClass("oculto");
				$("#seguir").addClass("oculto");
			});
		</script>
</body>
</html>
