-- phpMyAdmin SQL Dump
-- version 3.4.4
-- http://www.phpmyadmin.net
--
-- Servidor: mysql.webcindario.com
-- Tiempo de generación: 27-07-2017 a las 04:46:53
-- Versión del servidor: 5.6.35
-- Versión de PHP: 5.6.30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `autoscaam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Autos`
--

CREATE TABLE IF NOT EXISTS `Autos` (
  `Id_Auto` varchar(30) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Color` varchar(10) NOT NULL,
  `Numero_Puertas` int(1) NOT NULL,
  `Transmision` varchar(10) NOT NULL,
  `Conbustible` varchar(10) NOT NULL,
  `Ubicacion` varchar(30) NOT NULL,
  `Id_Sucursal` varchar(30) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  `Comentario` varchar(30) NOT NULL,
  PRIMARY KEY (`Id_Auto`),
  KEY `Id_Sucursal` (`Id_Sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clientes`
--

CREATE TABLE IF NOT EXISTS `Clientes` (
  `Id_Cliente` varchar(30) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Id_Sucursal` varchar(30) NOT NULL,
  `Id_Auto` varchar(30) NOT NULL,
  `Contraseña` varchar(10) NOT NULL,
  PRIMARY KEY (`Id_Cliente`),
  KEY `Id_Sucursal` (`Id_Sucursal`),
  KEY `Id_Auto` (`Id_Auto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleados`
--

CREATE TABLE IF NOT EXISTS `Empleados` (
  `Id_Empleado` varchar(30) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Id_Sucursal` varchar(30) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Contraseña` varchar(10) NOT NULL,
  PRIMARY KEY (`Id_Empleado`),
  KEY `Id_Sucursal` (`Id_Sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Empleados`
--

INSERT INTO `Empleados` (`Id_Empleado`, `Nombre`, `Id_Sucursal`, `Tipo`, `Contraseña`) VALUES
('1', ' DinaCorp Gerente', '0', 'Gerente', '1234'),
('2', 'Fernanda', '0', 'Secretaria', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Sucursales`
--

CREATE TABLE IF NOT EXISTS `Sucursales` (
  `Id_Sucursal` varchar(30) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  `Ubicacion` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`Id_Sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Sucursales`
--

INSERT INTO `Sucursales` (`Id_Sucursal`, `Tipo`, `Ubicacion`, `Nombre`) VALUES
('0', 'Fabrica', 'Pachuca', ' DinaCorp');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Autos`
--
ALTER TABLE `Autos`
  ADD CONSTRAINT `Autos_ibfk_1` FOREIGN KEY (`Id_Sucursal`) REFERENCES `Sucursales` (`Id_Sucursal`);

--
-- Filtros para la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD CONSTRAINT `Clientes_ibfk_1` FOREIGN KEY (`Id_Sucursal`) REFERENCES `Sucursales` (`Id_Sucursal`),
  ADD CONSTRAINT `Clientes_ibfk_2` FOREIGN KEY (`Id_Auto`) REFERENCES `Autos` (`Id_Auto`);

--
-- Filtros para la tabla `Empleados`
--
ALTER TABLE `Empleados`
  ADD CONSTRAINT `Empleados_ibfk_1` FOREIGN KEY (`Id_Sucursal`) REFERENCES `Sucursales` (`Id_Sucursal`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
