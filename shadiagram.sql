-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2020 a las 01:00:37
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shadiagram`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amistad`
--

CREATE TABLE `amistad` (
  `usuario` varchar(30) NOT NULL,
  `amistad` varchar(30) NOT NULL,
  `id_amistad` int(11) NOT NULL,
  `fecha_solicitud` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `amistad`
--

INSERT INTO `amistad` (`usuario`, `amistad`, `id_amistad`, `fecha_solicitud`) VALUES
('juanchito123', 'traquetoide123', 1, '2020-04-18'),
('traquetoide123', 'juanchito123', 2, '2020-04-18'),
('juanito', 'juanchito123', 3, '2020-04-19'),
('CIO_jampi', 'juanchito123', 5, '2020-04-19'),
('juanchito123', 'CIO_jampi', 6, '2020-04-19'),
('juanchito123', 'traquetoide123', 7, '2020-04-19'),
('juanchito123', 'geovany', 8, '2020-04-20'),
('geovany', 'juanchito123', 9, '2020-04-20'),
('geovany', 'traquetoide123', 10, '2020-04-20'),
('geovany', 'CIO_jampi', 11, '2020-04-20'),
('juanchito123', 'traquetoide123', 12, '2020-04-21'),
('dcris', 'geovany', 13, '2020-04-21'),
('karen', 'geovany', 14, '2020-04-24'),
('karen', 'juanchito123', 15, '2020-04-24'),
('geovany', 'karen', 16, '2020-04-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id_comentario` int(10) NOT NULL,
  `fecha_comentario` date NOT NULL,
  `usuarioC` varchar(20) NOT NULL,
  `id_publicacionC` int(10) NOT NULL,
  `comentario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `fecha_comentario`, `usuarioC`, `id_publicacionC`, `comentario`) VALUES
(9, '2020-04-20', 'CIO_jampi', 21, 'hola'),
(11, '2020-04-20', 'juanchito123', 19, 'comentario a traquetoide'),
(12, '2020-04-20', 'juanchito123', 21, 'que se dice jampi'),
(13, '2020-04-20', 'juanchito123', 22, 'bello my dog'),
(14, '2020-04-20', 'traquetoide123', 22, 'blanco'),
(16, '2020-04-20', 'traquetoide123', 20, 'ok'),
(17, '2020-04-20', 'juanchito123', 27, 'hola'),
(18, '2020-04-21', 'geovany', 22, 'bonito perro'),
(19, '2020-04-21', 'geovany', 23, 'buena vista'),
(20, '2020-04-21', 'dcris', 27, 'bonita mascota'),
(21, '2020-04-24', 'karen', 28, 'buen paseo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiqueta`
--

CREATE TABLE `etiqueta` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) DEFAULT NULL COMMENT 'Almacena el identificador del usuario que etiqueto',
  `publicacion` int(11) DEFAULT NULL COMMENT 'Almacena el identificador de la publicacion donde fue etiquetado, se asume que solo puede etiquetar el usuario due?o de la publicacion',
  `fecha` date DEFAULT NULL COMMENT 'Almacena la fecha de la etiqueta',
  `mensaje` text DEFAULT NULL COMMENT 'Almacena el mensaje de la etiqueta'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la informaci?n de las etiquetas de los usuarios sobre las publicaciones';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(11) NOT NULL,
  `fechamensaje` date DEFAULT NULL,
  `envia` varchar(30) NOT NULL COMMENT 'Corresponde al identificador del usuario que envia',
  `recibe` varchar(30) NOT NULL COMMENT 'Corresponde al identificador del usuario que recibe',
  `mensaje` text DEFAULT NULL COMMENT 'Corresponde al mensaje enviado'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena los mensaje privados que son enviados a los usuarios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `id_publicacion` int(10) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha_publicacion` date NOT NULL,
  `usuarioPublicacion` varchar(20) NOT NULL,
  `nombre_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`id_publicacion`, `descripcion`, `fecha_publicacion`, `usuarioPublicacion`, `nombre_imagen`) VALUES
(19, 'foto de traquetoide', '2020-04-20', 'traquetoide123', 'paisaje.jpg'),
(20, 'foto de mamorro', '2020-04-20', 'juanchito123', 'fondo amarillo.jpg'),
(21, 'foto de jampi', '2020-04-20', 'CIO_jampi', 'digital.jpg'),
(22, 'foto perrito', '2020-04-20', 'juanchito123', 'agonia.jpg'),
(23, 'hola vida', '2020-04-19', 'juanchito123', 'night.jpg'),
(24, 'vida mia', '2020-04-19', 'juanchito123', 'city.jpg'),
(25, 'hola mundo', '2020-04-19', 'juanchito123', 'flowers.jpg'),
(26, 'hola mundox2', '2020-04-19', 'juanchito123', 'sunset.jpg'),
(27, 'hola mundo', '2020-04-20', 'geovany', 'tiger.jpg'),
(28, 'Me gusta el deporte', '2020-04-20', 'geovany', 'surf.jpg'),
(29, '', '2020-04-20', 'juanchito123', 'desert.jpg'),
(30, 'holaa', '2020-04-20', 'juanchito123', 'sunset.jpg'),
(31, 'prueba', '2020-04-21', 'geovany', 'city.jpg'),
(32, 'Lindo día', '2020-04-24', 'karen', 'desert.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reaccion`
--

CREATE TABLE `reaccion` (
  `id_reaccion` int(10) NOT NULL,
  `id_publicacion` int(10) NOT NULL,
  `usuario_reaccion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reaccion`
--

INSERT INTO `reaccion` (`id_reaccion`, `id_publicacion`, `usuario_reaccion`) VALUES
(4, 19, 'juanchito123'),
(22, 21, 'traquetoide123'),
(23, 21, 'juanchito123'),
(24, 20, 'juanito'),
(25, 19, 'juanchito123'),
(26, 19, 'juanchito123'),
(27, 20, 'geovany'),
(28, 27, 'dcris');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `fecha_registro` date NOT NULL,
  `imagen_perfil` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `nombre`, `apellidos`, `email`, `pass`, `fecha_registro`, `imagen_perfil`) VALUES
('', '', '', '', '', '2020-04-16', NULL),
('carlosreneas', 'carlos rene', 'angarito', 'carlosreneas@ufps.edu.co', '12345', '2020-04-16', NULL),
('CIO_jampi', 'jean pierre', 'gómez s', 'fjiof@gmail.com', '789456123', '2020-04-13', 'iconConduc.png'),
('dcris', 'cristian', 'tautiva', 'cristian@gmail.com', '12345', '2020-04-21', 'apple-office-internet-ipad-38544.jpg'),
('edinson', 'edinson', 'mantilla', 'edinson@gmail.com', '12345678', '2020-04-21', NULL),
('geovany', 'geovany', 'mantilla', 'geovanymantilla@gmail.com', 'prueba', '2020-04-19', 'surf.jpg'),
('juanchito123', 'Juancho', 'Fuentes', 'juanchito123@gmail.com', 'perrito123', '2020-04-15', 'apple-office-internet-ipad-38544.jpg'),
('juanito', 'Juan', 'perez', 'lolsio@gmail.com', '1234', '2020-04-11', 'descarga.png'),
('karen', 'karen', 'mendoza', 'karen@gmail.com', 'prueba', '2020-04-24', NULL),
('traquetoide123', 'Gerson', 'Gomez', 'mamorro123@gmail.com', 'plomo123', '2020-04-10', 'SR4.jpg'),
('yamile', 'yamile', 'mantilla', 'yamile@gmail.com', 'prueba', '2020-04-24', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amistad`
--
ALTER TABLE `amistad`
  ADD PRIMARY KEY (`id_amistad`),
  ADD KEY `usuario` (`usuario`),
  ADD KEY `amistad` (`amistad`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `usuario_comentario` (`usuarioC`),
  ADD KEY `comentarios_publicacion` (`id_publicacionC`);

--
-- Indices de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_etiqueta_publicacion` (`publicacion`),
  ADD KEY `FK_etiqueta_usuario` (`usuario`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mensaje_usuario` (`envia`),
  ADD KEY `FK_mensaje_usuario_02` (`recibe`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`id_publicacion`),
  ADD KEY `usuarioPublicacion` (`usuarioPublicacion`);

--
-- Indices de la tabla `reaccion`
--
ALTER TABLE `reaccion`
  ADD PRIMARY KEY (`id_reaccion`),
  ADD KEY `id_publicacion` (`id_publicacion`),
  ADD KEY `usuario_reaccion` (`usuario_reaccion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `amistad`
--
ALTER TABLE `amistad`
  MODIFY `id_amistad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id_comentario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id_publicacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `reaccion`
--
ALTER TABLE `reaccion`
  MODIFY `id_reaccion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `amistad`
--
ALTER TABLE `amistad`
  ADD CONSTRAINT `amistad_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`usuario`),
  ADD CONSTRAINT `amistad_ibfk_2` FOREIGN KEY (`amistad`) REFERENCES `usuarios` (`usuario`);

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `publicacion_comentario` FOREIGN KEY (`id_publicacionC`) REFERENCES `publicacion` (`id_publicacion`),
  ADD CONSTRAINT `usuario_comentario` FOREIGN KEY (`usuarioC`) REFERENCES `usuarios` (`usuario`);

--
-- Filtros para la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD CONSTRAINT `etiqueta_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`usuario`);

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`envia`) REFERENCES `usuarios` (`usuario`),
  ADD CONSTRAINT `mensaje_ibfk_2` FOREIGN KEY (`recibe`) REFERENCES `usuarios` (`usuario`);

--
-- Filtros para la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `usuario_publicacion` FOREIGN KEY (`usuarioPublicacion`) REFERENCES `usuarios` (`usuario`);

--
-- Filtros para la tabla `reaccion`
--
ALTER TABLE `reaccion`
  ADD CONSTRAINT `publicacion_reaccion` FOREIGN KEY (`id_publicacion`) REFERENCES `publicacion` (`id_publicacion`),
  ADD CONSTRAINT `usuario_reaccion` FOREIGN KEY (`usuario_reaccion`) REFERENCES `usuarios` (`usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
