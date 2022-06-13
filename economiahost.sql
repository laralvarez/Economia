-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-06-2022 a las 20:01:52
-- Versión del servidor: 10.5.12-MariaDB
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
-- Base de datos: `id19095293_economiaempresarial`
--
CREATE DATABASE IF NOT EXISTS `id19095293_economiaempresarial` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id19095293_economiaempresarial`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque`
--

CREATE TABLE `bloque` (
  `id_bloque` int(11) NOT NULL,
  `cod_bloque` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_bloque` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `bloque`
--

INSERT INTO `bloque` (`id_bloque`, `cod_bloque`, `nombre_bloque`, `id_grupo`) VALUES
(1, '0', 'Sin Clasificacion', 3),
(2, '1', 'Corriente', 1),
(3, '2', 'No Corriente', 1),
(4, '3', 'Ordinario Positivo', 4),
(5, '4', 'Ordinario Negativo', 4),
(6, '5', 'Ordinario', 4),
(7, '6', 'Extraordinario', 4),
(8, '7', 'Corriente', 2),
(9, '8', 'No Corriente', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `id_cuenta` int(11) NOT NULL,
  `cod_cuenta` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_cuenta` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `id_rubro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`id_cuenta`, `cod_cuenta`, `nombre_cuenta`, `id_rubro`) VALUES
(1, '001', 'Proveedores', 16),
(2, '002', 'Documentos a Pagar', 16),
(3, '003', 'Intereses no devengados de Documentos a Pagar', 16),
(4, '004', 'Componente Financiero Implicito de Proveedores', 16),
(5, '005', 'Acreedores Varios', 16),
(6, '006', 'Gastos a Pagar', 16),
(7, '001', 'Adelanto en c/c', 17),
(8, '002', 'Prestamos a Pagar', 17),
(9, '003', 'Prenda a Pagar', 17),
(10, '004', 'Acreedores Prendarios', 17),
(11, '005', 'Hipoteca a Pagar', 17),
(12, '006', 'Acreedores Hipotecarios', 17),
(13, '001', 'Honorarios a Pagar', 18),
(14, '002', 'Sueldos a Pagar', 18),
(15, '003', 'Cargas Sociales a Pagar	', 18),
(16, '004', 'ART a Pagar	', 18),
(17, '005', 'Sindicato a Pagar', 18),
(18, '001', 'Impuestos a Pagar', 19),
(19, '002', 'IVA debito fiscal', 19),
(20, '003', 'IVA a pagar', 19),
(21, '004', 'Retencion de Impuesto a las Ganancias', 19),
(22, '005', 'Retencion de IVA', 19),
(23, '001', 'Anticipo de Clientes', 20),
(24, '001', 'Dividendos a Pagar', 21),
(25, '001', 'Socio \"xx\" Cuenta Particular', 22),
(26, '001', 'Alquileres Cobrados por Adelantado', 22),
(27, '001', 'Prevision para Despidos', 23),
(28, '002', 'Prevision para Juicios Pendientes', 23),
(29, '003', 'Prevision para Service y Garantia', 23),
(30, '001', 'Proveedores', 24),
(31, '002', 'Documentos a Pagar', 24),
(32, '003', 'Intereses no Devengados de Documentos a Pagar', 24),
(33, '004', 'Componente Financiero Implicito de Proveedores', 24),
(34, '005', 'Acreedores Varios', 24),
(35, '006', 'Gastos a Pagar', 24),
(36, '007', 'Socio \"xx\" Cuenta Particular', 24),
(37, '008', 'Alquileres Cobrados por Adelantado', 24),
(38, '001', 'Prevision para Despidos', 25),
(39, '002', 'Prevision para Juicios Pendientes', 25),
(40, '003', 'Prevision para Service y Garantia', 25),
(139, '001', 'Caja', 1),
(140, '002', 'Banco \"xx\" c/c', 1),
(141, '003', 'Valores a Depositar', 1),
(142, '004', 'Moneda Extranjera', 1),
(143, '005', 'Banco \"xx\" Caja de Ahorro', 1),
(144, '006', 'Fondo Fijo', 1),
(145, '001', 'Banco \"xx\" Plazo Fijo', 2),
(146, '002', 'Titulos Publicos', 2),
(147, '003', 'Acciones por Cotizacion', 2),
(148, '004', 'Prestamos a Cobrar a Corto Plazo', 2),
(149, '005', 'Moneda Extranjera', 2),
(150, '006', 'Prevision por Desvalorizacion de Titulos y Acciones', 2),
(151, '007', 'Prevision por Desvalorizacion de Moneda Extranjera', 2),
(152, '001', 'Deudores por Ventas', 3),
(153, '002', 'Deudores Morosos', 3),
(154, '003', 'Deudores en Gestion Judicial', 3),
(155, '004', 'Documento a Cobrar', 3),
(156, '005', 'Intereses no Devengados de Documentos a Cobrar', 3),
(157, '006', 'Domponente Financiero Implicito de Deudores por Ventas', 3),
(158, '007', 'Documentos a Cobrar Endosados', 3),
(159, '008', 'Documentos a Cobrar Descontados', 3),
(160, '009', 'Prevision por Deudores Incobrables', 3),
(161, '001', 'Deudores varios', 4),
(162, '002', 'Anticipo de Sueldo', 4),
(163, '003', 'Anticipo de Gastos', 4),
(164, '004', 'Seguros Pagados por Adelantado', 4),
(165, '005', 'Intereses a Cobrar', 4),
(166, '006', 'IVA credito Fiscal', 4),
(167, '007', 'Accionistas', 4),
(168, '008', 'Socio \"xx\" Cuenta Aporte', 4),
(169, '009', 'Deposito en Garantia', 4),
(170, '010', 'Valores Diferidos a Depositar', 4),
(171, '011', 'Hipotecas a Cobrar', 4),
(172, '001', 'Mercaderias', 5),
(173, '002', 'Mercaderias Entregadas en Consignacion', 5),
(174, '003', 'Mercaderias en Transito	', 5),
(175, '004', 'Anticipo a Proveedores', 5),
(176, '005', 'Materias Primas', 5),
(177, '006', 'Productos en Proceso', 5),
(178, '007', 'Productos Terminados', 5),
(179, '008', 'Prevision por Desvalorizacion de Moneda', 5),
(180, '001', 'Bienes de Uso Desafectados', 6),
(181, '001', 'Deudores por Ventas', 7),
(182, '002', 'Deudores Morosos', 7),
(183, '003', 'Deudores en Gestion Judicial', 7),
(184, '004', 'Documento a Cobrar', 7),
(185, '005', 'Intereses No Devengados de Documentos a Cobrar', 7),
(186, '006', 'Componente Financiero Implicito de Deudores por Ventas', 7),
(187, '007', 'Documentos a Cobrar Endosados', 7),
(188, '008', 'Documentos a Cobrar Descontados', 7),
(189, '009', 'Prevision por Deudores Incobrables', 7),
(190, '001', 'Deudores Varios', 8),
(191, '002', 'Anticipo de Sueldo', 8),
(192, '003', 'Anticipo de Gastos', 8),
(193, '004', 'Seguros Pagados por Adelantado', 8),
(194, '005', 'Intereses a Cobrar', 8),
(195, '006', 'IVA Credito Fiscal', 8),
(196, '007', 'Accionistas', 8),
(197, '008', 'Socio \"xx\" Cuenta Aporte', 8),
(198, '009', 'Deposito en Garantia', 8),
(199, '010', 'Valores Diferidos a Depositar', 8),
(200, '011', 'Hipotecas a Cobrar', 8),
(201, '001', 'Mercaderias', 9),
(202, '002', 'Mercaderias Entregadas en Consignacion', 9),
(203, '003', 'Mercaderias en Transito', 9),
(204, '004', 'Anticipo a Proveedores', 9),
(205, '005', 'Materias Primas', 9),
(206, '006', 'Productos en Proceso', 9),
(207, '007', 'Productos Terminados', 9),
(208, '008', 'Prevision por Desvalorizacion de Moneda', 9),
(209, '001', 'Participacion Permanente en Sociedades', 10),
(210, '001', 'Inmueble para Renta', 11),
(211, '002', 'Amortizacion Acumulada de Inmueble para Renta', 11),
(212, '003', 'Titulos Publicos', 11),
(213, '004', 'Debentures', 11),
(214, '005', 'Prestamos a cobrar a largo plazo', 11),
(215, '001', 'Inmuebles', 12),
(216, '002', 'Muebles y Utiles', 12),
(217, '003', 'Rodados', 12),
(218, '004', 'Instalaciones', 12),
(219, '005', 'Equipos de Computacion', 12),
(220, '006', 'Herramientas', 12),
(221, '007', 'Maquinarias', 12),
(222, '008', 'Terrenos', 12),
(223, '009', 'Amortizacion Acumulada de Cada Bien en Particular', 12),
(224, '010', 'Anticipo a Acreedores', 12),
(225, '001', 'Marca de Fabrica', 13),
(226, '002', 'Patente de Invencion', 13),
(227, '003', 'Concesiones', 13),
(228, '004', 'Derecho de Autor', 13),
(229, '005', 'Derecho de Edicion', 13),
(230, '006', 'Licencia de Fabricacion', 13),
(231, '007', 'Franquicias', 13),
(232, '008', 'Gastos de Organización', 13),
(233, '009', 'Gastos de Investigacion y Desarrollo', 13),
(234, '010', 'Formulas', 13),
(235, '011', 'Amortizacion Acumulada de Cada Bien en Particular', 13),
(236, '001', 'Llave de Negocio', 15),
(237, '001', 'Capital Suscripto', 56),
(238, '002', 'Acciones en Circulacion', 56),
(239, '003', 'Ajuste de Capital', 56),
(240, '004', 'Primas de Emision', 56),
(241, '005', 'Aportes Irrevocables', 56),
(242, '006', 'Dividendos en Acciones', 56),
(243, '001', 'Reserva Legal', 57),
(244, '002', 'Reserva Facultativa', 57),
(245, '003', 'Reserva Estatutaria', 57),
(246, '004', 'Reserva para Renovacion de Equipos', 57),
(247, '005', 'Resultados no Asignados', 57),
(248, '006', 'Resultado del Ejercicio', 57),
(249, '001', 'Ventas', 42),
(250, '001', 'Costo de Mercaderias Vendidas (CMV)', 43),
(251, '001', 'Amortizacion de Rodados', 44),
(252, '002', 'Gastos de Publicidad', 44),
(253, '003', 'Sueldos(de vendedores)', 44),
(254, '004', 'Cargas Sociales(de vendedores)', 44),
(255, '005', 'Alquileres Cedidos', 44),
(256, '006', 'Fletes', 44),
(257, '007', 'Deudores Incobrables', 44),
(258, '008', 'Seguros', 44),
(259, '009', 'Amortizacion de Inmuebles(afectados al sector comercial)', 44),
(260, '001', 'Sueldos(de administracion)', 45),
(261, '002', 'Cargas sociales(de administracion)', 45),
(262, '003', 'Alquileres Cedidos', 45),
(263, '004', 'Seguros', 45),
(264, '005', 'Gastos de Librería', 45),
(265, '006', 'Gastos Bancarios', 45),
(266, '007', 'Amortizacion de Muebles y Utiles', 45),
(267, '008', 'Amortizacion de Inmuebles(afectado al sector adminsitrativo)', 45),
(268, '001', 'Combustible', 46),
(269, '001', 'Impuesto a las Ganancias', 47),
(270, '001', 'Ingreso Tenencia', 48),
(271, '002', 'Perdida Tenencia', 48),
(272, '001', 'Acciones', 49),
(273, '001', 'Intereses Ganados', 51),
(274, '002', 'Intereses Cedidos', 51),
(275, '003', 'Diferencia de Cambio Positiva', 51),
(276, '004', 'Diferencia de Cambio Negativa', 51),
(277, '001', 'Sobrantes (mercaderia)', 52),
(278, '002', 'Faltantes (mercaderia)', 52),
(279, '001', 'Robo', 55),
(280, '002', 'Incendio', 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id_grupo` int(11) NOT NULL,
  `cod_grupo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_grupo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id_grupo`, `cod_grupo`, `nombre_grupo`) VALUES
(1, '1', 'Activo'),
(2, '2', 'Pasivo'),
(3, '3', 'Patrimonio Neto'),
(4, '4', 'Resultados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubro`
--

CREATE TABLE `rubro` (
  `id_rubro` int(11) NOT NULL,
  `cod_rubro` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_rubro` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `id_bloque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rubro`
--

INSERT INTO `rubro` (`id_rubro`, `cod_rubro`, `nombre_rubro`, `id_bloque`) VALUES
(1, '01', 'Caja y Bancos', 2),
(2, '02', 'Inversiones Temporarias', 2),
(3, '03', 'Creditos por Ventas', 2),
(4, '04', 'Otros Creditos', 2),
(5, '05', 'Bienes de Cambio', 2),
(6, '06', 'Otros Activos', 2),
(7, '01', 'Creditos por Ventas', 3),
(8, '02', 'Otros Creditos', 3),
(9, '03', 'Bienes de Cambio', 3),
(10, '04', 'Participacion Permanente en Sociedades', 3),
(11, '05', 'Otras Inversiones', 3),
(12, '06', 'Bienes de Uso', 3),
(13, '07', 'Activos Intangibles', 3),
(14, '08', 'Otros Activos', 3),
(15, '09', 'Llave de Negocio', 3),
(16, '01', 'Deudas Comerciales', 8),
(17, '02', 'Prestamos', 8),
(18, '03', 'Remuneraciones y Cargas Sociales', 8),
(19, '04', 'Cargas Fiscales', 8),
(20, '05', 'Anticipo de Clientes', 8),
(21, '06', 'Dividendos a Pagar', 8),
(22, '07', 'Otras Deudas', 8),
(23, '08', 'Previsiones', 8),
(24, '01', 'Deudas', 9),
(25, '02', 'Previsiones', 9),
(42, '01', 'Ventas', 4),
(43, '01', 'Costos de los Bienes Vendidos y Servicios Prestados', 5),
(44, '02', 'Gastos Comerciales', 5),
(45, '03', 'Gastos Administrativos', 5),
(46, '04', 'Otros Gastos', 5),
(47, '05', 'Impuesto a las Ganancias', 5),
(48, '01', 'Resultado de Evaluacion de Bienes de Cambio a VNR', 6),
(49, '02', 'Resultado de Inversiones en Entes Relacionados', 6),
(50, '03', 'Resultados de Otras Inversiones', 6),
(51, '04', 'Resultados Financieros por Tenencia', 6),
(52, '05', 'Otros Ingresos o Egresos', 6),
(53, '06', 'Depreciacion de la Llave de Negocio', 6),
(54, '07', 'Participacion Minoritaria sobre Resultados', 6),
(55, '01', 'Resultados Extraordinarios', 7),
(56, '01', 'Aportes de los Propietarios', 1),
(57, '02', 'Resultados Acumulados', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bloque`
--
ALTER TABLE `bloque`
  ADD PRIMARY KEY (`id_bloque`),
  ADD KEY `idGrupoI` (`id_grupo`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`id_cuenta`),
  ADD KEY `idRubroI` (`id_rubro`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id_grupo`);

--
-- Indices de la tabla `rubro`
--
ALTER TABLE `rubro`
  ADD PRIMARY KEY (`id_rubro`),
  ADD KEY `idBloqueI` (`id_bloque`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bloque`
--
ALTER TABLE `bloque`
  MODIFY `id_bloque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `id_cuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rubro`
--
ALTER TABLE `rubro`
  MODIFY `id_rubro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bloque`
--
ALTER TABLE `bloque`
  ADD CONSTRAINT `bloque_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`);

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`id_rubro`) REFERENCES `rubro` (`id_rubro`);

--
-- Filtros para la tabla `rubro`
--
ALTER TABLE `rubro`
  ADD CONSTRAINT `rubro_ibfk_1` FOREIGN KEY (`id_bloque`) REFERENCES `bloque` (`id_bloque`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
