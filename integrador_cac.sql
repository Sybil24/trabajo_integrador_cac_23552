-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 12-11-2023 a las 02:54:29
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL DEFAULT '',
  `mail` varchar(150) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `fecha_alta` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Juan', 'Gomez', 'juan@gmail.com', 'JavaScript', '2023-11-11 22:49:12'),
(2, 'Juan', 'Gomez', 'juan@gmail.com', 'JavaScript', '2023-11-11 22:52:04'),
(3, 'Ana', 'Pérez', 'ana@gmail.com', 'React', '2023-11-11 22:52:04'),
(4, 'Carlos', 'López', 'carlos@gmail.com', 'Node.js', '2023-11-11 22:52:04'),
(5, 'María', 'Rodríguez', 'maria@gmail.com', 'Vue.js', '2023-11-11 22:52:04'),
(6, 'Pedro', 'Martínez', 'pedro@gmail.com', 'Angular', '2023-11-11 22:52:04'),
(7, 'Laura', 'Fernández', 'laura@gmail.com', 'HTML5', '2023-11-11 22:52:04'),
(8, 'Miguel', 'García', 'miguel@gmail.com', 'CSS3', '2023-11-11 22:52:04'),
(9, 'Sofía', 'Hernández', 'sofia@gmail.com', 'TypeScript', '2023-11-11 22:52:04'),
(10, 'Diego', 'Sánchez', 'diego@gmail.com', 'jQuery', '2023-11-11 22:52:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_orador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
