<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="style.css">
	<title>login</title>
</head>
<div class="alinear">
		<img class="logo" src="fotos/logo.svg">
		<div class="card">
			<div class="head">
				<div></div>
				<a id="ingresar" class="seleccionado" href="#ingresar">Ingresar</a>
				<a id="registrar" href="#registrar">Registrar</a>
				<div></div>
			</div>
			<div class="tabs">
				<form  class="login" action="LoginController" method="post">
					<div class="inputs">
						<div class="input">
							<input placeholder="Usuario" type="text" name=usuario required="Éste es un campo necesario">
							<img src="fotos/user.svg">
						</div>
						<div class="input">
							<input placeholder="contraseña" type="password"  name=pass required="Éste es un campo necesario">
							<img src="fotos/password_lock.svg">
						</div>
						<label class="checkbox">
							<input type="checkbox">
							<span>Recordarme</span>
						</label>
					</div>
					<button>Ingresar</button>
				</form>
				<form  class="registro" action="RegistrarUsuario" method="post">
					<div class="inputs">

						<div class="input">
							<input name="nombre" placeholder="nombres" type="text">
							<img src="fotos/name.svg">
						</div>
						<div class="input">
							<input name="apellido" placeholder="apellidos" type="text">
							<img src="fotos/name.svg">
						</div>
						
						<div class="input">
							<input name="email" placeholder="Email" type="text">
							<img src="fotos/mail.svg">
						</div>
						<div class="input">
							<input  name="usuario"placeholder="Usuario" type="text">
							<img src="fotos/user.svg">
						</div>
						<div class="input">
							<input  name="pass" placeholder="contraseña" type="password">
							<img src="fotos/password_lock.svg">
						</div>
						<button class="boton">Registrarse</button>
					</div>
					
				</form>
			</div>
		</div>
	</div>
	<script src="jquery-3.3.1.min.js"></script>
	<script src="index.js"></script>
</body>
</html>