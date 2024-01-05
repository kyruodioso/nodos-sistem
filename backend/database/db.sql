-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-01-2024 a las 04:34:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nodos`
--
CREATE DATABASE IF NOT EXISTS `nodos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `nodos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datadht`
--
-- Creación: 02-01-2024 a las 02:40:54
-- Última actualización: 03-01-2024 a las 02:19:58
--

CREATE TABLE `datadht` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `temperatura` float NOT NULL,
  `humedad` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Volcado de datos para la tabla `datadht`
--

INSERT INTO `datadht` (`id`, `fecha`, `temperatura`, `humedad`) VALUES
(1, '2024-01-03 02:19:16', 17.2, 45.3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datadht`
--
ALTER TABLE `datadht`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datadht`
--
ALTER TABLE `datadht`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
