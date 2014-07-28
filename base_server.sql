-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-07-2014 a las 06:59:40
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `base_server`
--
CREATE DATABASE IF NOT EXISTS `base_server` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `base_server`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('073e6ac740731c2259513a0d05dcad7b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406527977, ''),
('0a1a4e05bf9b380f6f434e4e617648f2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406527712, ''),
('0c22fd3e266b0c47e4592ba61052793c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406529910, 'a:1:{s:14:"sesion_usuario";a:3:{s:9:"is_logged";b:1;s:5:"email";s:19:"josey_8@hotmail.com";s:9:"seslimite";i:1406529814;}}'),
('4164b711331d996fae95336a5ad1501b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406528810, ''),
('641672bab864d5cbe61ef537a8c782c3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406530624, ''),
('6cc085a3752ee7132e051ad8dfcb970b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406528813, ''),
('723ddab485ecb9dc4c39dd309b328dad', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406529091, ''),
('9df9ef6e83d8fcbbca23d97d642fa7c3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406529059, ''),
('a9e6f455a072864d386bdce659dbf048', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406528574, ''),
('d5c51d6b11906feaab18d9fd9b4b4219', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406528737, ''),
('e5e4f7e5d96890684c900c4ddde9b75c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406528027, ''),
('e9d52f394de2c965dcacbddb03b1655f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406528774, ''),
('e9e7281154d23c4956ad85608ed77e45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406528807, ''),
('ecdff608053345430f6b4ee63896f67c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 1406528301, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `correo` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`correo`, `password`, `usuario`) VALUES
('josey_8@hotmail.com', '6dcb04e9943bb4a3947a9c7f30e068', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
