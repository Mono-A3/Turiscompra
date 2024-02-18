-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-11-2022 a las 23:11:43
-- Versión del servidor: 10.5.16-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id19707971_tienda_virtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `imagen`, `estado`) VALUES
(1, 'VERDURAS', 'assets/images/categorias/20221018212545.jpg', 1),
(2, 'FRUTAS', 'assets/images/categorias/20221021102606.jpg', 1),
(3, 'GRANOS', 'assets/images/categorias/20221021102448.jpg', 1),
(4, 'CARNES', 'assets/images/categorias/20221021102554.jpg', 1),
(5, 'PRODUCTOS LÁCTEOS', 'assets/images/categorias/20221021102041.jpg', 1),
(8, 'TURISMO', 'assets/images/categorias/20221021102322.jpg', 1),
(9, 'TUBÉRCULOS', 'assets/images/categorias/20221021114446.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `clave` varchar(150) NOT NULL,
  `perfil` varchar(100) NOT NULL DEFAULT 'default.png',
  `token` varchar(160) DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `correo`, `clave`, `perfil`, `token`, `verify`) VALUES
(1, 'Andres Stiven', 'aaraqueamaya397+2@gmail.com', '$2y$10$MbWcsdbB3892fLiDhywCXupnx6eOE9duVK8EX9e0Ue77K3dZh26CG', 'default.png', NULL, 1),
(2, 'dsfs', 'dsfsd', '$2y$10$wZvOHDSo3hlKcCamwk3aT.n1R46Fn0CwZhUUwY.NM76DnYcgHVEJS', 'default.png', '37e0c86903875b5673b5cd4b03fe8082', 0),
(3, 'william moreno', 'wiliam15', '$2y$10$zLdVcYdjXrLj1L3kZXUykuDR4jUHq.ssA2GnJLio7vQ0jzmd/.alK', 'default.png', '8c35b2d1bb744411171deabbd015c60a', 0),
(4, 'Andres Araque', 'aaraqueamaya397@gmail.com', '$2y$10$vQxfFHzxwhsmeNvJdnhKbe9XLpC/SfZbzNAPPbCrfmD3M4zOldfMK', 'default.png', 'ee3696e0b157c209910665f0969552f8', 0),
(5, 'Andres Araque', 'aaraqueamaya397+3@gmail.com', '$2y$10$NqPiBv1zLSB7DSyupWzoOO/8cua98isjjxXAMHXcyYZAwQA00OQmW', 'default.png', '1d903482804001f13f8638609f8ab1b9', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(80) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  `email` varchar(80) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `email_user` varchar(80) NOT NULL,
  `proceso` enum('1','2','3') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `estado`, `id_categoria`) VALUES
(1, 'Zanahoria', '<p>Venta de zanahoria en la ciudad de Sogamoso&nbsp;</p>', 1900.00, 1, 'assets/images/productos/20221018212721.jpg', 1, 1),
(2, 'Habichuela', '<p>Venta de habichuela en iza Boyacá</p>', 2100.00, 1, 'assets/images/productos/20221018213309.jpg', 1, 1),
(3, 'Fresa', '<p>Venta de fresas en bolsa A $ 2000</p><p>Valor lb $ 1400 A GRANEL</p>', 2000.00, 1, 'assets/images/productos/20221018220424.jpg', 1, 2),
(5, 'Mandarina', '<p>Docena de mandarina a $ 5000</p>', 5000.00, 1, 'assets/images/productos/20221018221236.jpg', 1, 2),
(7, 'PARQUE CENTRAL LABRANZA GRANDE', '<p>LABRANZA GRANDE BOYACÁ</p>', 1.00, 1, 'assets/images/productos/20221021111930.jpg', 1, 8),
(8, 'PARQUE CENTRAL PAYA', '<p>PAYA BOYACÁ</p>', 1.00, 1, 'assets/images/productos/20221021112034.jpg', 1, 8),
(9, 'LAGUNA DE TOTA', '<p>AQUITANIA BOYACÁ</p>', 1.00, 1, 'assets/images/productos/20221021112232.jpg', 1, 8),
(10, 'TOQUILLA', '<p>TOQUILLA BOYACÁ</p>', 1.00, 1, 'assets/images/productos/20221021112329.jpg', 1, 8),
(11, 'PAZ DEL RIO', '<p>PAZ DEL RIO</p>', 1.00, 1, 'assets/images/productos/20221021112439.jpg', 1, 8),
(12, 'PARQUE CENTRAL DE PESCA', '<p>PESCA BOYACÁ</p>', 1.00, 1, 'assets/images/productos/20221021112604.jpg', 1, 8),
(13, 'Papa Pastusa', '<p>Producto de excelente calidad, cultivado en Sogamoso&nbsp;</p>', 1800.00, 1, 'assets/images/productos/20221021122251.jpg', 1, 9),
(14, 'Trucha Arcoiris', '<p>Trucha criada y traída de la Laguna de Tota directamente</p>', 20000.00, 1, 'assets/images/productos/20221021122606.jpg', 1, 4),
(15, 'Leche ', '<p>Leche fresca y deliciosa, obtenida de finca ganadera ubicada en Iza</p>', 2000.00, 1, 'assets/images/productos/20221021122934.jpg', 1, 5),
(16, 'Fríjol Verde', '<p>Fríjol de excelente calidad, obtenido de cultivo ubicado en Sogamoso</p>', 2000.00, 1, 'assets/images/productos/20221021123332.jpg', 1, 3),
(17, 'Carne de Cerdo', '<p>Carne de excelente calidad, traída directamente de finca ubicada en Sogamoso</p>', 12000.00, 1, 'assets/images/productos/20221021124003.jpg', 1, 4),
(18, 'Carne de Vaca', '<p>Carne de excelente calidad, traída directamente de finca ubicada en Toquilla</p>', 12000.00, 1, 'assets/images/productos/20221021124257.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `correo`, `clave`, `perfil`, `estado`) VALUES
(4, 'Diana ', 'Chaparro Chaparro ', 'natalychaparro332@gmail.com', '$2y$10$L3gg1BAqXwTrnC9MHciPY.bWGIe.voLHlLtXarnrwt6O.Q7z8Ndxa', NULL, 1),
(5, 'Andres Stiven', 'Araque Amaya', 'aaraqueamaya397@gmail.com', '$2y$10$FFk28kUMBxNR3IFkPxZdQeN0qwJnQ/x20Bm3C3e609K954lUd1REm', NULL, 1),
(6, 'Ginna Daniela', 'Plazas Gutiérrez', 'ginaplazasgutierrez@gmail.com', '$2y$10$EWDb2.0pX6DEGZ/oBXdPEu/kBQeX7drieijhnmJ9omHQuha7/Aku2', NULL, 1),
(7, 'Yarith Marcela', 'Bernal Sanchez', 'marcelabernalsanchez8@gmail.com', '$2y$10$aEw2/1vBrBAgHWFky9ehLO0KQB18JLHKhnQnntxnVbrzhcjf5gLqG', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
