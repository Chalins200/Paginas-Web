-- phpMyAdmin SQL Dump
-- version 3.4.4
-- http://www.phpmyadmin.net
--
-- Servidor: mysql.webcindario.com
-- Tiempo de generación: 27-07-2017 a las 02:17:35
-- Versión del servidor: 5.6.35
-- Versión de PHP: 5.6.30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `clinicajmgo`
--
CREATE DATABASE `clinicajmgo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `clinicajmgo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Citas`
--

CREATE TABLE IF NOT EXISTS `Citas` (
  `Id_cita` int(11) NOT NULL AUTO_INCREMENT,
  `Id_paciente` int(11) NOT NULL,
  `Id_consultorio` varchar(20) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Estado` varchar(100) NOT NULL,
  `Id_doctor` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_cita`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `Citas`
--

INSERT INTO `Citas` (`Id_cita`, `Id_paciente`, `Id_consultorio`, `Fecha`, `Hora`, `Estado`, `Id_doctor`) VALUES
(1, 1, 'Consultorio1', '2016-12-06', '20:15:00', 'Atendida', 'Doc1'),
(2, 2, 'Consultorio2', '2016-12-06', '20:16:00', 'Atendida', 'Doc2'),
(3, 2, 'Consultorio1', '2016-12-06', '20:18:00', 'Atendida', 'Doc1'),
(4, 2, 'Consultorio1', '2016-12-06', '20:28:00', 'pendiente', 'Doc2'),
(5, 1, 'Consultorio2', '2016-12-06', '20:40:00', 'Pendiente', 'Doc2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Consultorio`
--

CREATE TABLE IF NOT EXISTS `Consultorio` (
  `Id_usuario` varchar(20) NOT NULL,
  `Costo` double NOT NULL,
  `Id_consultorio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Consultorio`
--

INSERT INTO `Consultorio` (`Id_usuario`, `Costo`, `Id_consultorio`) VALUES
('Doc1', 300, 'Consultorio1'),
('Doc2', 450, 'Consultorio2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DetalleCompra`
--

CREATE TABLE IF NOT EXISTS `DetalleCompra` (
  `Id_salida` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Costo` double NOT NULL,
  `Total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DetalleHabitacion`
--

CREATE TABLE IF NOT EXISTS `DetalleHabitacion` (
  `Id_habitacion` varchar(20) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Fecha_entrada` date NOT NULL,
  `Fecha_salida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DetalleRenta`
--

CREATE TABLE IF NOT EXISTS `DetalleRenta` (
  `Id_entrada` int(11) NOT NULL AUTO_INCREMENT,
  `Id_consultorio` varchar(20) NOT NULL,
  `Id_doctor` varchar(20) NOT NULL,
  `Costo` double NOT NULL,
  PRIMARY KEY (`Id_entrada`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `DetalleRenta`
--

INSERT INTO `DetalleRenta` (`Id_entrada`, `Id_consultorio`, `Id_doctor`, `Costo`) VALUES
(1, 'Consultorio1', 'Doc1', 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DetalleSalidas`
--

CREATE TABLE IF NOT EXISTS `DetalleSalidas` (
  `Id_salida` int(11) NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `Total` double NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DetalleVenta`
--

CREATE TABLE IF NOT EXISTS `DetalleVenta` (
  `Id_entrada` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Costo` double NOT NULL,
  `Total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EntradasClinica`
--

CREATE TABLE IF NOT EXISTS `EntradasClinica` (
  `Id_entrada` int(11) NOT NULL AUTO_INCREMENT,
  `Departamento` varchar(100) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`Id_entrada`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `EntradasClinica`
--

INSERT INTO `EntradasClinica` (`Id_entrada`, `Departamento`, `Fecha`, `Total`) VALUES
(1, 'Doctores', '2016-12-07', 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EntradasDoctor`
--

CREATE TABLE IF NOT EXISTS `EntradasDoctor` (
  `Id_entrada` int(11) NOT NULL AUTO_INCREMENT,
  `Detalle` varchar(100) NOT NULL,
  `Id_cita` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Id_doctor` varchar(20) NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`Id_entrada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Habitaciones`
--

CREATE TABLE IF NOT EXISTS `Habitaciones` (
  `Id_habitacion` varchar(20) NOT NULL,
  `Costo` double NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Medicamento`
--

CREATE TABLE IF NOT EXISTS `Medicamento` (
  `Id_medicamento` int(11) NOT NULL AUTO_INCREMENT,
  `Compuesto` varchar(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Marca` varchar(100) NOT NULL,
  `Precio` double NOT NULL,
  `Cantidad` int(11) NOT NULL,
  PRIMARY KEY (`Id_medicamento`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `Medicamento`
--

INSERT INTO `Medicamento` (`Id_medicamento`, `Compuesto`, `Nombre`, `Marca`, `Precio`, `Cantidad`) VALUES
(1, '', 'Mejoralito 1', 'Marca1', 100, 50),
(2, '', 'Mejoralito 2', 'Marca1', 180, 50),
(3, '', 'Mejoralito 3', 'Marca2', 180, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pacientes`
--

CREATE TABLE IF NOT EXISTS `Pacientes` (
  `Id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Peso` double NOT NULL,
  `Tipo_sangre` varchar(45) NOT NULL,
  `Estado` varchar(45) NOT NULL,
  PRIMARY KEY (`Id_paciente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `Pacientes`
--

INSERT INTO `Pacientes` (`Id_paciente`, `Nombre`, `Edad`, `Peso`, `Tipo_sangre`, `Estado`) VALUES
(1, 'Paciente 1', 20, 60, 'O+', ''),
(2, 'Paciente 2', 56, 76, 'A-', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SalidasClinica`
--

CREATE TABLE IF NOT EXISTS `SalidasClinica` (
  `Id_salida` int(11) NOT NULL AUTO_INCREMENT,
  `Departamento` varchar(100) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`Id_salida`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SalidasDoctor`
--

CREATE TABLE IF NOT EXISTS `SalidasDoctor` (
  `Id_salida` int(11) NOT NULL AUTO_INCREMENT,
  `Detalle` varchar(100) NOT NULL,
  `Fecha` date NOT NULL,
  `Id_doctor` varchar(20) NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`Id_salida`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `SalidasDoctor`
--

INSERT INTO `SalidasDoctor` (`Id_salida`, `Detalle`, `Fecha`, `Id_doctor`, `Total`) VALUES
(1, 'Renta de consultorio', '2016-12-07', 'Doc1', 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE IF NOT EXISTS `Usuarios` (
  `Id_usuario` varchar(20) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Tipo_usuario` varchar(100) NOT NULL,
  `Tipo_doctor` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`Id_usuario`, `Nombre`, `Tipo_usuario`, `Tipo_doctor`, `clave`) VALUES
('admin', 'Jose Maria', 'Admin', '', 'root'),
('Doc1', 'Doctor uno', 'Doctor', 'Cirujano', '1234'),
('Doc2', 'Doctor dos', 'Doctor', 'Psicologo', '1234');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
