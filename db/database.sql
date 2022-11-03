-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2022 a las 13:07:11
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_orders`
use db_orders;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `A_nombre` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `A_image` varchar(150) CHARACTER SET utf8 NOT NULL,
  `A_precio` double DEFAULT NULL,
  `FA_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `A_nombre`, `A_image`, `A_precio`, `FA_code`) VALUES
(1, 'Cafe Expreso', '..\\sidebars\\img\\cafeExpreso.png', 5.3, 1),
(2, 'Cafe Americano', '..\\sidebars\\img\\cafeAmericano.png', 3.2, 1),
(3, 'Cafe Capuccino', '..\\sidebars\\img\\cafeCapuccino.jpg', 4.2, 1),
(4, 'Pincho de Tortilla', '..\\sidebars\\img\\PinchoTortilla.png', 1.5, 2),
(5, 'Pincho Champiñon', '..\\sidebars\\img\\PinchoChampinon.png', 6.3, 2),
(13, 'TAPA de VALENCIA', '../sidebars/img/Tapa.jpg', 6.9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `famarticles`
--

CREATE TABLE `famarticles` (
  `id` int(11) NOT NULL,
  `FA_nombre` varchar(80) NOT NULL,
  `FA_image` varchar(150) DEFAULT NULL,
  `FA_creation` date DEFAULT NULL,
  `FA_modify` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `famarticles`
--

INSERT INTO `famarticles` (`id`, `FA_nombre`, `FA_image`, `FA_creation`, `FA_modify`) VALUES
(1, 'caffes', '..\\sidebars\\img\\FamCafe.jpg', '2022-04-08', '2022-04-08'),
(2, 'pinchos', '..\\sidebars\\img\\FamPinchos.png', '2022-04-07', '2022-04-08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `famarticles`
--
ALTER TABLE `famarticles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `famarticles`
--
ALTER TABLE `famarticles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
