-- phpMyAdmin SQL Dump
-- version 3.4.4
-- http://www.phpmyadmin.net
--
-- Servidor: mysql.webcindario.com
-- Tiempo de generación: 27-07-2017 a las 03:22:09
-- Versión del servidor: 5.6.35
-- Versión de PHP: 5.6.30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ligasoccercaam`
--
CREATE DATABASE `ligasoccercaam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ligasoccercaam`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arbitro`
--

CREATE TABLE IF NOT EXISTS `arbitro` (
  `IDArbitro` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Contraseña` varchar(30) NOT NULL,
  `Encargado` tinyint(1) NOT NULL,
  PRIMARY KEY (`IDArbitro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `arbitro`
--

INSERT INTO `arbitro` (`IDArbitro`, `Nombre`, `Contraseña`, `Encargado`) VALUES
(1, 'Cesar', '123', 1),
(2, 'Arbitro 1', '123', 0),
(3, 'Arbitro 2', '123', 0),
(4, 'Arbitro 3', '123', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancha`
--

CREATE TABLE IF NOT EXISTS `cancha` (
  `IDCancha` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `IDEquipo` int(11) NOT NULL,
  `Lugar` varchar(50) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  PRIMARY KEY (`IDCancha`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `cancha`
--

INSERT INTO `cancha` (`IDCancha`, `Nombre`, `IDEquipo`, `Lugar`, `Foto`) VALUES
(1, 'cancha 1', 1, 'tula', ''),
(2, 'cancha 2', 2, 'cua', ''),
(3, 'cancha 3', 3, 'santiago', ''),
(4, 'cancha 4', 4, 'huasca', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepartido`
--

CREATE TABLE IF NOT EXISTS `detallepartido` (
  `IDPartido` int(11) NOT NULL,
  `Ganador` varchar(30) NOT NULL,
  `Perdedor` varchar(30) NOT NULL,
  `GolesGanador` int(11) NOT NULL,
  `GolesPerdedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detallepartido`
--

INSERT INTO `detallepartido` (`IDPartido`, `Ganador`, `Perdedor`, `GolesGanador`, `GolesPerdedor`) VALUES
(1, 'Equipo 2', 'Equipo 2', 2, 1),
(4, 'Equipo 3', 'Equipo 3', 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE IF NOT EXISTS `equipos` (
  `IDEquipo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `IDCancha` int(11) NOT NULL,
  `Escudo` varchar(255) NOT NULL,
  PRIMARY KEY (`IDEquipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`IDEquipo`, `Nombre`, `IDCancha`, `Escudo`) VALUES
(1, 'Equipo 1', 1, ''),
(2, 'Equipo 2', 2, ''),
(3, 'Equipo 3', 3, ''),
(4, 'Equipo 4', 4, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `goles`
--

CREATE TABLE IF NOT EXISTS `goles` (
  `IDJuguador` int(11) NOT NULL,
  `IDPartido` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE IF NOT EXISTS `jugadores` (
  `IDJugador` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `IDEquipo` int(11) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Roll` varchar(30) NOT NULL,
  PRIMARY KEY (`IDJugador`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`IDJugador`, `Nombre`, `IDEquipo`, `Edad`, `Roll`) VALUES
(2, 'Jugador 1', 1, 21, 'Arquero'),
(3, 'Jugador 2', 1, 22, 'Defensa'),
(4, 'Jugador 3', 2, 23, 'Arquero'),
(5, 'Jugador 4', 2, 23, 'Lateral'),
(6, 'Jugador 5', 2, 21, 'Centrocampista'),
(7, 'Jugador 6', 3, 25, 'Delantero'),
(8, 'Jugador 7', 3, 24, 'Centrocampista'),
(9, 'Jugador 8', 4, 20, 'Arquero'),
(10, 'Jugador 9', 4, 23, 'Lateral'),
(11, 'Jugador 10', 4, 23, 'Defensa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE IF NOT EXISTS `partidos` (
  `IDPartido` int(11) NOT NULL AUTO_INCREMENT,
  `IDArbitro` int(11) NOT NULL,
  `IDCancha` int(11) NOT NULL,
  `IDEquipoLocal` int(11) NOT NULL,
  `IDEquipoVisitante` int(11) NOT NULL,
  `Estado` varchar(15) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  PRIMARY KEY (`IDPartido`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`IDPartido`, `IDArbitro`, `IDCancha`, `IDEquipoLocal`, `IDEquipoVisitante`, `Estado`, `Fecha`, `Hora`) VALUES
(1, 2, 1, 1, 2, 'Jugado', '2001-01-01', '01:00:00'),
(2, 3, 1, 1, 3, 'Pendiente', '2001-01-01', '02:00:00'),
(3, 4, 1, 1, 4, 'Pendiente', '2001-01-01', '03:00:00'),
(4, 2, 2, 2, 3, 'Jugado', '2002-01-01', '04:00:00'),
(5, 3, 1, 1, 4, 'Pendiente', '2002-01-01', '08:00:00'),
(6, 2, 3, 3, 4, 'Pendiente', '2002-01-01', '10:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
