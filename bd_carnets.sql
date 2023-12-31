-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-12-2023 a las 04:06:44
-- Versión del servidor: 10.5.20-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id21733048_bd_carnets`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informes`
--

CREATE TABLE `informes` (
  `id_informe` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `carrera` varchar(30) NOT NULL,
  `cuenta` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `fecha` date NOT NULL,
  `archivo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `informes`
--
ALTER TABLE `informes`
  ADD PRIMARY KEY (`id_informe`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `informes`
--
ALTER TABLE `informes`
  MODIFY `id_informe` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
