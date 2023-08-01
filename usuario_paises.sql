-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2023 a las 22:43:52
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuario_paises`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` bigint(20) NOT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `capital`, `nombre`, `deleted_at`) VALUES
(1, 'Madrid', 'España', NULL),
(2, 'París', 'Francia', NULL),
(3, 'Berlín', 'Alemania', NULL),
(4, 'Londres', 'Reino Unido', NULL),
(5, 'Lisboa', 'Portugal', NULL),
(6, 'Roma', 'Italia', NULL),
(7, 'Viena', 'Austria', NULL),
(8, 'Berna', 'Suiza', NULL),
(9, 'Praga', 'Chequia', NULL),
(10, 'Sofía', 'Bulgaria', NULL),
(11, 'Varsovia', 'Polonia', NULL),
(12, 'Belgrado', 'Serbia', NULL),
(13, 'Sarajevo', 'Bosnia', NULL),
(14, 'Zagreb', 'Croacia', NULL),
(15, 'Skopje', 'Macedonia', NULL),
(16, 'Oslo', 'Noruega', NULL),
(17, 'Estocolmo', 'Suecia', NULL),
(18, 'Atenas', 'Grecia', NULL),
(19, 'Copenhaghue', 'Dinamarca', NULL),
(20, 'Helsinki', 'Finlandia', NULL),
(21, 'Tirana', 'Albania', NULL),
(22, 'Bruselas', 'Belgica', NULL),
(23, 'Nicosia', 'Chipre', NULL),
(24, 'Bratislava', 'Eslovaquia', NULL),
(25, 'Luibliana', 'Eslovenia', NULL),
(26, 'Tallin', 'Estonia', NULL),
(27, 'Budapest', 'Hungria', NULL),
(28, 'Dublín', 'Irlanda', NULL),
(29, 'Reikiavik', 'Islandia', NULL),
(30, 'Pristina', 'Kosovo', NULL),
(31, 'Riga', 'Letonia', NULL),
(32, 'Bucarest', 'Rumanía', NULL),
(33, 'Vilna', 'Lituania', NULL),
(34, 'Luxemburgo', 'Luxemburgo', NULL),
(35, 'La Valeta', 'Malta', NULL),
(36, 'Chisnáu', 'Moldavia', NULL),
(37, 'Podgorica', 'Montenegro', NULL),
(38, 'Kiev', 'Ucrania', NULL),
(39, 'Andorra la Vella', 'Andorra', NULL),
(40, 'Mónaco', 'Mónaco', NULL),
(41, 'Amsterdam', 'Países Bajos', NULL),
(42, 'Moscú', 'Rusia', NULL),
(43, 'Minsk', 'Bielorrusia', NULL),
(44, 'Vaticano', 'Vaticano', NULL),
(45, 'San Marino', 'San Marino', NULL),
(46, 'Vaduz', 'Liechtenstein', NULL),
(47, 'Madrid', 'España', NULL),
(48, 'París', 'Francia', NULL),
(49, 'Berlín', 'Alemania', NULL),
(50, 'Londres', 'Reino Unido', NULL),
(51, 'Lisboa', 'Portugal', NULL),
(52, 'Roma', 'Italia', NULL),
(53, 'Viena', 'Austria', NULL),
(54, 'Berna', 'Suiza', NULL),
(55, 'Praga', 'Chequia', NULL),
(56, 'Sofía', 'Bulgaria', NULL),
(57, 'Varsovia', 'Polonia', NULL),
(58, 'Belgrado', 'Serbia', NULL),
(59, 'Sarajevo', 'Bosnia', NULL),
(60, 'Zagreb', 'Croacia', NULL),
(61, 'Skopje', 'Macedonia', NULL),
(62, 'Oslo', 'Noruega', NULL),
(63, 'Estocolmo', 'Suecia', NULL),
(64, 'Atenas', 'Grecia', NULL),
(65, 'Copenhaghue', 'Dinamarca', NULL),
(66, 'Helsinki', 'Finlandia', NULL),
(67, 'Tirana', 'Albania', NULL),
(68, 'Bruselas', 'Belgica', NULL),
(69, 'Nicosia', 'Chipre', NULL),
(70, 'Bratislava', 'Eslovaquia', NULL),
(71, 'Luibliana', 'Eslovenia', NULL),
(72, 'Tallin', 'Estonia', NULL),
(73, 'Budapest', 'Hungria', NULL),
(74, 'Dublín', 'Irlanda', NULL),
(75, 'Reikiavik', 'Islandia', NULL),
(76, 'Pristina', 'Kosovo', NULL),
(77, 'Riga', 'Letonia', NULL),
(78, 'Bucarest', 'Rumanía', NULL),
(79, 'Vilna', 'Lituania', NULL),
(80, 'Luxemburgo', 'Luxemburgo', NULL),
(81, 'La Valeta', 'Malta', NULL),
(82, 'Chisnáu', 'Moldavia', NULL),
(83, 'Podgorica', 'Montenegro', NULL),
(84, 'Kiev', 'Ucrania', NULL),
(85, 'Andorra la Vella', 'Andorra', NULL),
(86, 'Mónaco', 'Mónaco', NULL),
(87, 'Amsterdam', 'Países Bajos', NULL),
(88, 'Moscú', 'Rusia', NULL),
(89, 'Minsk', 'Bielorrusia', NULL),
(90, 'Vaticano', 'Vaticano', NULL),
(91, 'San Marino', 'San Marino', NULL),
(92, 'Vaduz', 'Liechtenstein', NULL),
(93, 'Madrid', 'España', NULL),
(94, 'París', 'Francia', NULL),
(95, 'Berlín', 'Alemania', NULL),
(96, 'Londres', 'Reino Unido', NULL),
(97, 'Lisboa', 'Portugal', NULL),
(98, 'Roma', 'Italia', NULL),
(99, 'Viena', 'Austria', NULL),
(100, 'Berna', 'Suiza', NULL),
(101, 'Praga', 'Chequia', NULL),
(102, 'Sofía', 'Bulgaria', NULL),
(103, 'Varsovia', 'Polonia', NULL),
(104, 'Belgrado', 'Serbia', NULL),
(105, 'Sarajevo', 'Bosnia', NULL),
(106, 'Zagreb', 'Croacia', NULL),
(107, 'Skopje', 'Macedonia', NULL),
(108, 'Oslo', 'Noruega', NULL),
(109, 'Estocolmo', 'Suecia', NULL),
(110, 'Atenas', 'Grecia', NULL),
(111, 'Copenhaghue', 'Dinamarca', NULL),
(112, 'Helsinki', 'Finlandia', NULL),
(113, 'Tirana', 'Albania', NULL),
(114, 'Bruselas', 'Belgica', NULL),
(115, 'Nicosia', 'Chipre', NULL),
(116, 'Bratislava', 'Eslovaquia', NULL),
(117, 'Luibliana', 'Eslovenia', NULL),
(118, 'Tallin', 'Estonia', NULL),
(119, 'Budapest', 'Hungria', NULL),
(120, 'Dublín', 'Irlanda', NULL),
(121, 'Reikiavik', 'Islandia', NULL),
(122, 'Pristina', 'Kosovo', NULL),
(123, 'Riga', 'Letonia', NULL),
(124, 'Bucarest', 'Rumanía', NULL),
(125, 'Vilna', 'Lituania', NULL),
(126, 'Luxemburgo', 'Luxemburgo', NULL),
(127, 'La Valeta', 'Malta', NULL),
(128, 'Chisnáu', 'Moldavia', NULL),
(129, 'Podgorica', 'Montenegro', NULL),
(130, 'Kiev', 'Ucrania', NULL),
(131, 'Andorra la Vella', 'Andorra', NULL),
(132, 'Mónaco', 'Mónaco', NULL),
(133, 'Amsterdam', 'Países Bajos', NULL),
(134, 'Moscú', 'Rusia', NULL),
(135, 'Minsk', 'Bielorrusia', NULL),
(136, 'Vaticano', 'Vaticano', NULL),
(137, 'San Marino', 'San Marino', NULL),
(138, 'Vaduz', 'Liechtenstein', NULL),
(139, 'Madrid', 'España', NULL),
(140, 'París', 'Francia', NULL),
(141, 'Berlín', 'Alemania', NULL),
(142, 'Londres', 'Reino Unido', NULL),
(143, 'Lisboa', 'Portugal', NULL),
(144, 'Roma', 'Italia', NULL),
(145, 'Viena', 'Austria', NULL),
(146, 'Berna', 'Suiza', NULL),
(147, 'Praga', 'Chequia', NULL),
(148, 'Sofía', 'Bulgaria', NULL),
(149, 'Varsovia', 'Polonia', NULL),
(150, 'Belgrado', 'Serbia', NULL),
(151, 'Sarajevo', 'Bosnia', NULL),
(152, 'Zagreb', 'Croacia', NULL),
(153, 'Skopje', 'Macedonia', NULL),
(154, 'Oslo', 'Noruega', NULL),
(155, 'Estocolmo', 'Suecia', NULL),
(156, 'Atenas', 'Grecia', NULL),
(157, 'Copenhaghue', 'Dinamarca', NULL),
(158, 'Helsinki', 'Finlandia', NULL),
(159, 'Tirana', 'Albania', NULL),
(160, 'Bruselas', 'Belgica', NULL),
(161, 'Nicosia', 'Chipre', NULL),
(162, 'Bratislava', 'Eslovaquia', NULL),
(163, 'Luibliana', 'Eslovenia', NULL),
(164, 'Tallin', 'Estonia', NULL),
(165, 'Budapest', 'Hungria', NULL),
(166, 'Dublín', 'Irlanda', NULL),
(167, 'Reikiavik', 'Islandia', NULL),
(168, 'Pristina', 'Kosovo', NULL),
(169, 'Riga', 'Letonia', NULL),
(170, 'Bucarest', 'Rumanía', NULL),
(171, 'Vilna', 'Lituania', NULL),
(172, 'Luxemburgo', 'Luxemburgo', NULL),
(173, 'La Valeta', 'Malta', NULL),
(174, 'Chisnáu', 'Moldavia', NULL),
(175, 'Podgorica', 'Montenegro', NULL),
(176, 'Kiev', 'Ucrania', NULL),
(177, 'Andorra la Vella', 'Andorra', NULL),
(178, 'Mónaco', 'Mónaco', NULL),
(179, 'Amsterdam', 'Países Bajos', NULL),
(180, 'Moscú', 'Rusia', NULL),
(181, 'Minsk', 'Bielorrusia', NULL),
(182, 'Vaticano', 'Vaticano', NULL),
(183, 'San Marino', 'San Marino', NULL),
(184, 'Vaduz', 'Liechtenstein', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
