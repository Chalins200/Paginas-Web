-- phpMyAdmin SQL Dump
-- version 3.4.4
-- http://www.phpmyadmin.net
--
-- Servidor: mysql.webcindario.com
-- Tiempo de generación: 27-07-2017 a las 03:04:39
-- Versión del servidor: 5.6.35
-- Versión de PHP: 5.6.30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `examparcial3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Amigo11A`
--

CREATE TABLE IF NOT EXISTS `Amigo11A` (
  `Nombre` varchar(45) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Amigo11A`
--

INSERT INTO `Amigo11A` (`Nombre`, `Estado`) VALUES
('Amigo22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Amigo11C`
--

CREATE TABLE IF NOT EXISTS `Amigo11C` (
  `id_Com` int(11) NOT NULL,
  `Texto` varchar(450) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Amigo11C`
--

INSERT INTO `Amigo11C` (`id_Com`, `Texto`, `Usuario`, `Tipo`) VALUES
(1, 'Comenta 1 a ll', 'Amigo11', 'Publicacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Amigo22A`
--

CREATE TABLE IF NOT EXISTS `Amigo22A` (
  `Nombre` varchar(45) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Amigo22A`
--

INSERT INTO `Amigo22A` (`Nombre`, `Estado`) VALUES
('Amigo11', NULL),
('Amigo33', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Amigo22C`
--

CREATE TABLE IF NOT EXISTS `Amigo22C` (
  `id_Com` int(11) NOT NULL,
  `Texto` varchar(450) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Amigo22C`
--

INSERT INTO `Amigo22C` (`id_Com`, `Texto`, `Usuario`, `Tipo`) VALUES
(1, 'Comenta 1 a 22', 'Amigo22', 'Publicacion'),
(2, 'HOLA AMIGO 22', 'Amigo11', 'Publicacion'),
(3, 'dfsd', 'Amigo11', 'Publicacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Amigo33A`
--

CREATE TABLE IF NOT EXISTS `Amigo33A` (
  `Nombre` varchar(45) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Amigo33A`
--

INSERT INTO `Amigo33A` (`Nombre`, `Estado`) VALUES
('Amigo22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Amigo33C`
--

CREATE TABLE IF NOT EXISTS `Amigo33C` (
  `id_Com` int(11) NOT NULL,
  `Texto` varchar(450) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Amigo33C`
--

INSERT INTO `Amigo33C` (`id_Com`, `Texto`, `Usuario`, `Tipo`) VALUES
(1, 'Comenta 1 a 33', 'Amigo33', 'Publicacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CesarA`
--

CREATE TABLE IF NOT EXISTS `CesarA` (
  `Nombre` varchar(45) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CesarC`
--

CREATE TABLE IF NOT EXISTS `CesarC` (
  `id_Com` int(11) NOT NULL,
  `Texto` varchar(450) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `JuanitoA`
--

CREATE TABLE IF NOT EXISTS `JuanitoA` (
  `Nombre` varchar(45) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `JuanitoC`
--

CREATE TABLE IF NOT EXISTS `JuanitoC` (
  `id_Com` int(11) NOT NULL,
  `Texto` varchar(450) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PanquesitoA`
--

CREATE TABLE IF NOT EXISTS `PanquesitoA` (
  `Nombre` varchar(45) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PanquesitoC`
--

CREATE TABLE IF NOT EXISTS `PanquesitoC` (
  `id_Com` int(11) NOT NULL,
  `Texto` varchar(450) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Solicitudes`
--

CREATE TABLE IF NOT EXISTS `Solicitudes` (
  `NombreAmigo` varchar(45) NOT NULL,
  `Solicitante` varchar(45) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Solicitudes`
--

INSERT INTO `Solicitudes` (`NombreAmigo`, `Solicitante`, `Estado`) VALUES
('Amigo11', 'Amigo22', 'Aceptado'),
('Amigo11', 'Amigo33', 'Rechazado'),
('Amigo22', 'Amigo33', 'Aceptado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE IF NOT EXISTS `Usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Edad` varchar(4) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `Usuario` varchar(15) NOT NULL,
  `Clave` varchar(15) NOT NULL,
  `foto` varchar(200) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Datos de cada usuario' AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`id_usuario`, `Nombre`, `Correo`, `Edad`, `Sexo`, `Usuario`, `Clave`, `foto`) VALUES
(1, 'Cesar', 'cesar@gmail.com', '21', 'M', 'cesar', '1234', 'images/descarga.jpg'),
(2, 'Amigo11', 'amigo11@gmail.com', '18', 'M', 'amigo11', '1234', 'images/descarga (1).jpg'),
(3, 'Amigo22', 'amigo22@gmail.com', '18', 'M', 'amigo22', '1234', 'images/descarga (2).jpg'),
(4, 'Amigo33', 'AMIGO33w@gmail.com', '18', 'M', 'amigo33', '1234', 'images/descarga (3).jpg'),
(5, 'Panquesito', 'panquesito@gmail.com', '19', 'F', 'mafe', '1234', 'images/IMG_20160403_143222.jpg'),
(6, 'Juanito', 'juanitoFlow@gmail.com', '18', 'M', 'chalin', '1234', 'images/file177.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
