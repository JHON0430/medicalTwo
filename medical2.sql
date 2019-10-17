-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2019 a las 23:29:42
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medical2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `usuario`, `pass`) VALUES
(1, 'andres', 'andres1'),
(2, 'valentinaNappi', '1234'),
(3, 'jhon', '123'),
(4, 'victor', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesionalmedico`
--

CREATE TABLE `profesionalmedico` (
  `idmedico` int(50) NOT NULL,
  `registroMedico` varchar(10) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `cedula` bigint(10) NOT NULL,
  `cecular` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registropaciente`
--

CREATE TABLE `registropaciente` (
  `idPaciente` int(100) NOT NULL,
  `tipoDocumento` varchar(30) NOT NULL,
  `documento` bigint(30) NOT NULL,
  `nombreFull` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `celular` bigint(30) NOT NULL,
  `representante` varchar(30) NOT NULL,
  `celular2` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registropaciente`
--

INSERT INTO `registropaciente` (`idPaciente`, `tipoDocumento`, `documento`, `nombreFull`, `direccion`, `celular`, `representante`, `celular2`) VALUES
(1, 'cc', 123, 'andres', 'mz 13', 316, 'caceres', 311),
(2, 'rc', 1, '1', '1', 1, '1', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesionalmedico`
--
ALTER TABLE `profesionalmedico`
  ADD PRIMARY KEY (`idmedico`);

--
-- Indices de la tabla `registropaciente`
--
ALTER TABLE `registropaciente`
  ADD PRIMARY KEY (`idPaciente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `profesionalmedico`
--
ALTER TABLE `profesionalmedico`
  MODIFY `idmedico` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registropaciente`
--
ALTER TABLE `registropaciente`
  MODIFY `idPaciente` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
