-- phpMyAdmin SQL Dump
-- version 3.4.4
-- http://www.phpmyadmin.net
--
-- Servidor: mysql.webcindario.com
-- Tiempo de generación: 27-07-2017 a las 04:03:24
-- Versión del servidor: 5.6.35
-- Versión de PHP: 5.6.30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `practica3caam`
--
CREATE DATABASE `practica3caam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `practica3caam`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tabla1`
--

CREATE TABLE IF NOT EXISTS `Tabla1` (
  `Nombre` varchar(45) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Clave` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Tabla1`
--

INSERT INTO `Tabla1` (`Nombre`, `Usuario`, `Clave`, `Tipo`) VALUES
('Adrian', 'adrian', '1430126', 'Gerente'),
('Cesar', 'cesar', '1234', 'Empleado'),
('Carlos', 'carlos', '4321', 'Secretario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tabla2`
--

CREATE TABLE IF NOT EXISTS `Tabla2` (
  `Persona` varchar(45) NOT NULL,
  `Calle` varchar(45) NOT NULL,
  `CP` int(5) NOT NULL,
  `Poblacion` varchar(45) NOT NULL,
  `Estado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Tabla2`
--

INSERT INTO `Tabla2` (`Persona`, `Calle`, `CP`, `Poblacion`, `Estado`) VALUES
('Nidia', 'Adolfo Lopez', 43740, 'Cuautepec', 'Hidalgo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
