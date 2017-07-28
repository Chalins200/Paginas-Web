-- phpMyAdmin SQL Dump
-- version 3.4.4
-- http://www.phpmyadmin.net
--
-- Servidor: mysql.webcindario.com
-- Tiempo de generación: 27-07-2017 a las 03:59:44
-- Versión del servidor: 5.6.35
-- Versión de PHP: 5.6.30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `practica1caam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleados`
--

CREATE TABLE IF NOT EXISTS `Empleados` (
  `ID` int(3) NOT NULL COMMENT 'Identificador del empleado',
  `Nombre` varchar(45) NOT NULL COMMENT 'Nombre del Empleado',
  `Apellidos` varchar(45) NOT NULL COMMENT 'Apellidos del Empleado',
  `Sucursal` varchar(45) NOT NULL COMMENT 'Sucursal en la que labora el empleado',
  `Puesto` varchar(35) NOT NULL COMMENT 'Puesto del Empleado',
  `Contraseña` varchar(15) DEFAULT NULL COMMENT 'Contraseña de acceso'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Empleados`
--

INSERT INTO `Empleados` (`ID`, `Nombre`, `Apellidos`, `Sucursal`, `Puesto`, `Contraseña`) VALUES
(1, 'cesar', 'arteaga', 'Franquicia', 'Gerente', 'cesar'),
(2, 'Adrian', 'Ortega', 'Fabrica', 'Gerente', 'adrian'),
(3, 'Edgar', 'Gomez', 'Sucursal', 'Gerente', 'edgar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Producto`
--

CREATE TABLE IF NOT EXISTS `Producto` (
  `Codigo` int(3) NOT NULL COMMENT 'Codigo del producto',
  `Descripcion` varchar(45) NOT NULL COMMENT 'Descripcion del producto',
  `Cantidad` int(3) NOT NULL COMMENT 'Cantidad de productos',
  `Precio` float(3,2) NOT NULL COMMENT 'Precio del producto'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Producto`
--

INSERT INTO `Producto` (`Codigo`, `Descripcion`, `Cantidad`, `Precio`) VALUES
(2, 'Gansito Marinela 160g', 8, 8.00),
(1, 'Barritas Marinela 125g', 8, 9.00),
(3, 'Donitas Bimbo', 7, 9.99),
(4, 'Sabritas Chetos', 6, 7.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tabla1`
--

CREATE TABLE IF NOT EXISTS `Tabla1` (
  `Nombre` varchar(45) NOT NULL COMMENT 'Nombre de la persona',
  `Edad` int(3) NOT NULL COMMENT 'Edad de la persona',
  `Color` varchar(15) NOT NULL COMMENT 'Color favorito',
  `Callenum` varchar(45) NOT NULL COMMENT 'Calle de la persona',
  `Colonia` varchar(45) NOT NULL COMMENT 'Colonia de la persona',
  `Poblacion` varchar(45) NOT NULL COMMENT 'Poblacion de la persona',
  `Estado` varchar(45) NOT NULL COMMENT 'Estado de la persona',
  `Otro` varchar(45) NOT NULL DEFAULT 'sin comentarios' COMMENT 'Comentario de la persona'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Datos de las personas y sus preferencias';

--
-- Volcado de datos para la tabla `Tabla1`
--

INSERT INTO `Tabla1` (`Nombre`, `Edad`, `Color`, `Callenum`, `Colonia`, `Poblacion`, `Estado`, `Otro`) VALUES
('Cesar', 25, 'rojo', '', '', '', '', 'hola mundo'),
('Andrea', 45, 'cafe', 'adolfo lopez 77', 'santa maria', 'cuautepec', 'hidalgo', 'mamá');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
