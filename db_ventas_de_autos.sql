-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2021 a las 15:38:25
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ventas_de_autos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_autos`
--

CREATE TABLE `tbl_autos` (
  `ID_AUTO` int(11) NOT NULL,
  `MODELO` varchar(50) NOT NULL,
  `PRECIO` double NOT NULL,
  `COLOR` varchar(50) NOT NULL,
  `AÑO` int(60) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_autos`
--

INSERT INTO `tbl_autos` (`ID_AUTO`, `MODELO`, `PRECIO`, `COLOR`, `AÑO`, `ID_CLIENTE`) VALUES
(1, 'VERSA SEDÁN', 148000, 'PLATEADO', 2014, 1),
(2, 'GASHQAI', 298000, 'AZUL', 2015, 2),
(3, 'PATROL', 148, 'PLATEADO', 2015, 3),
(4, 'ARTEON', 298, 'AZUL', 2021, 4),
(5, 'URVAN', 138000, 'BLANCO', 2016, 5),
(6, 'ECOSPORT', 170500, 'DORADO', 2019, 4),
(7, 'FRONTIER', 578000, 'ROJO', 2017, 3),
(8, 'GALAXI', 350000, 'AZUL', 2020, 2),
(9, 'ACURIS', 135, 'ROJO VINO', 2021, 4),
(10, 'JUKE', 298000, 'AMARILLO', 2021, 7),
(11, 'LEAF', 530000, 'BLANCO', 2019, 6),
(14, 'Navara', 968000, 'Naranja', 2021, 1),
(15, 'Navara', 968000, 'Naranja', 2021, 1),
(16, 'Navara', 968000, 'Rojo', 2021, 2),
(17, 'Navara', 968000, 'Gris', 2021, 2),
(18, 'Navara', 968000, 'Gris', 2021, 2),
(19, 'Galaxi', 350000, 'Naranja', 2021, 4),
(20, 'GALAXI', 350000, 'Naranja', 2021, 4),
(21, '{NISSAN ALTIMA}', 138000, 'Rojo', 2020, 6),
(22, '{NISSAN LEAF}', 143000, 'Gris', 2019, 8),
(23, '{NISSAN VERSA SEDAN}', 148000, 'Rojo', 2021, 7),
(24, '{NISSAN LEAF}', 143000, 'Rojo', 2021, 5),
(25, '{NISSNAN JUKE}', 298000, 'Gris', 2021, 4),
(26, '{NISSNAN JUKE}', 298000, 'Rojo', 2020, 6),
(27, '{NISSAN MICRA}', 647000, 'Dorado', 2019, 7),
(28, '{NISSAN MICRA}', 647952.11, 'Rojo', 2021, 5),
(29, '{NISSAN MICRA}', 647952.11, 'Rojo', 2021, 5),
(30, '{NISSAN MICRA}', 647952.11, 'Rojo', 2021, 4),
(31, '{NISSAN LEAF}', 750000, 'Dorado', 2021, 9),
(32, '{NISSAN GALAXI}', 350000, 'Azul', 2021, 10),
(33, '{NISSAN GALAXI}', 350000, 'Rojo', 2021, 5),
(34, '{NISSAN GALAXI}', 350000, 'Dorado', 2021, 8),
(35, '{NISSNAN JUKE}', 240000, 'Azul', 2021, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `IDENTIDAD` varchar(100) NOT NULL,
  `RTN` varchar(100) NOT NULL,
  `TELEFONO` varchar(50) NOT NULL,
  `ID_DIRECCION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`ID_CLIENTE`, `NOMBRE`, `APELLIDO`, `IDENTIDAD`, `RTN`, `TELEFONO`, `ID_DIRECCION`) VALUES
(1, 'WALTER', 'CRUZ', '0307-1980-00133', '03071980001338', '32658795', 2),
(2, 'CARLOS', 'FERNANDEZ', '0309-2021-00117', '030720210001198', '32897548', 2),
(3, 'JOSE', 'IZAGUIRRE', '0307-1997-00125', '03071997001256', '32458725', 10),
(4, 'CARLOS ', 'PERDOMO', '0307-2000-01235', '03072000012359', '98567841', 5),
(5, 'KEVIN', 'SORTO', '0307-1999-00255', '03071999002551', '35412511', 2),
(6, 'BENITO', 'GALEAS', '0307-1998-00332', '03071998003324', '96782545', 9),
(7, 'PEDRO ', 'SORTO', '0305-1993-00426', '0351993004265', '99568745', 6),
(8, 'CARLOS', 'PORTILLO', '0307-1989-01237', '03071989012374', '98564572', 8),
(9, 'MICHELLE', 'BENITES', '0307-1989-02413', '03071989024135', '98217568', 5),
(10, 'BRYAN', 'CRUZ', '0307-1999-03649', '03071999036497', '97546821', 6),
(11, 'BRYAN', 'CRUZ', '0307-2003-00114', '03072003001147', '87985471', 8),
(12, 'Josue', 'Garcia', '0307-2003-00198', '03072003001987', '98751421', 3),
(13, 'Milan', 'Castro', '0308-2001-00178', '03082001001784', '89541237', 3),
(15, 'Carlos', 'Castro', '0320-2001-20265', '03202001365654', '985712', 1),
(16, 'Carlos', 'Castro', '0307-2000-00125', '03072000001254', '5687457', 2),
(17, 'Walter', 'Chirinos', '0307-2003-00123', '03072003001234', '78954', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_direcciones`
--

CREATE TABLE `tbl_direcciones` (
  `ID_DIRECCION` int(11) NOT NULL,
  `DIRECCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_direcciones`
--

INSERT INTO `tbl_direcciones` (`ID_DIRECCION`, `DIRECCION`) VALUES
(1, 'BARRIO ARRIBA'),
(2, 'BARRIO EL CENTRO'),
(3, 'BARRIO ABAJO'),
(4, 'BARRIO BRISAS DE ALTAMIRA'),
(5, 'BARRIO SANTA LUCÍA'),
(6, 'BARRIO SAN RAMÓN'),
(7, 'COLONIA ESCOTO'),
(8, 'COLONIA EL SAUCE'),
(9, 'COLONIA SAN MIGUEL 1'),
(10, 'COLONIA SAN MIGUEL 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_facturas`
--

CREATE TABLE `tbl_facturas` (
  `ID_FACTURA` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_DIRECCION` int(11) NOT NULL,
  `PRECIO` varchar(50) NOT NULL,
  `ISV` varchar(50) NOT NULL,
  `TOTAL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_facturas`
--

INSERT INTO `tbl_facturas` (`ID_FACTURA`, `FECHA`, `ID_DIRECCION`, `PRECIO`, `ISV`, `TOTAL`) VALUES
(1, '2021-05-04', 2, 'L.  142,000.00', '15%', 'L. 163,300.00'),
(2, '2021-05-21', 2, 'L. 385,000.00', '15%', 'L. 442,750.00'),
(3, '2021-05-08', 10, 'L. 310,000.00', '15%', 'L. 356,500.00'),
(4, '2021-05-02', 5, 'L. 610,000.00', '15%', 'L. 701,000.00'),
(5, '2021-05-16', 2, 'L. 290,000.00', '15%', 'L. 33,500.00'),
(6, '2021-05-20', 9, '', '15%', ''),
(7, '2021-05-29', 6, '', '15%', ''),
(8, '2021-05-28', 8, '', '15%', ''),
(9, '2021-05-30', 5, '', '15%', ''),
(10, '2021-05-31', 6, '', '15%', ''),
(12, '2021-08-27', 5, '350000.0', '15%', '402500.0'),
(13, '2021-08-27', 5, '350000.0', '15%', '402500.0'),
(14, '2021-08-27', 2, '240000.0', '15%', '276000.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_modelos`
--

CREATE TABLE `tbl_modelos` (
  `ID_MODELO` int(11) NOT NULL,
  `MODELO` varchar(30) NOT NULL,
  `PRECIO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_modelos`
--

INSERT INTO `tbl_modelos` (`ID_MODELO`, `MODELO`, `PRECIO`) VALUES
(1, 'NISSAN NAVARA', '968,438.24'),
(2, 'NISSAN GALAXI', '150,000.00'),
(3, 'NISSAN VERSA SEDAN', '148,000.00'),
(4, 'NISSNAN JUKE', '298,000.00'),
(5, 'NISSAN LEAF', '8,743,025.00'),
(6, 'NISSAN MICRA', '647,952.11'),
(7, 'NISSAN X-TRAIL', '178,000.00'),
(8, 'NISSAN QASHQAI', '298,000.00'),
(9, 'NISSAN ACURIS', '135,000.00'),
(10, 'NISSAN GT-R', '2,387,476.13'),
(11, 'NISSAN 370Z', '320,000.00'),
(12, 'NISSAN ALTIMA', '138,000.00'),
(13, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registros`
--

CREATE TABLE `tbl_registros` (
  `ID_REGISTRO` int(11) NOT NULL,
  `CORREO` varchar(100) NOT NULL,
  `CLAVE` varchar(50) NOT NULL,
  `AÑOS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_registros`
--

INSERT INTO `tbl_registros` (`ID_REGISTRO`, `CORREO`, `CLAVE`, `AÑOS`) VALUES
(1, 'waltercruz@gmail.com', 'everest', 18),
(2, 'carlosfer@gmail.com', '12398/7', 50),
(3, 'joseizaguirre64gmail.com', '87d446/d4', 24),
(4, 'torresperdomo@gmail.com', 'perdomo1547', 21),
(5, 'kevinsorto64gmail.com', 'sortokevin17', 22),
(6, 'galeasbenito15@gmail.com', 'beniti1578', 23),
(7, 'pedrosorto45@gmail.com', '123879F45', 28),
(8, 'carlosportillo@gmail.com', 'portillo1236', 32),
(9, 'michellebenites15@gmail.com', 'benites/265', 32),
(10, 'bryancruz45@gmail.com', 'cruz4527', 22),
(11, 'Walter@gmail.com', 'chirinos', 18),
(12, 'Waltercruz@gmail.com', 'chirinos22', 25),
(13, 'wal69@gmail.com', 'pepinillo3', 18),
(14, 'ALECRUZ@GMAIL.COM', 'PEPINILLO', 18),
(15, 'alecruz54@gmail.com', 'azul13', 14),
(16, 'carlos123@gmail.com', '12345', 18),
(17, 'walter@gmail.com', 'pepino', 18),
(18, 'walter56@gmail.com', 'azul12', 18),
(19, 'walter@gmail.com', '25478d', 18),
(20, 'Walter54@gmail.com', 'pezcado', 18);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_autos`
--
ALTER TABLE `tbl_autos`
  ADD PRIMARY KEY (`ID_AUTO`),
  ADD KEY `FK_CLIENTES_AUTOS` (`ID_CLIENTE`);

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`ID_CLIENTE`),
  ADD KEY `FK_DIRECCIONES_CLIENTES` (`ID_DIRECCION`);

--
-- Indices de la tabla `tbl_direcciones`
--
ALTER TABLE `tbl_direcciones`
  ADD PRIMARY KEY (`ID_DIRECCION`);

--
-- Indices de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD PRIMARY KEY (`ID_FACTURA`),
  ADD KEY `FK_DIRECCIONES_FACTURAS` (`ID_DIRECCION`);

--
-- Indices de la tabla `tbl_modelos`
--
ALTER TABLE `tbl_modelos`
  ADD PRIMARY KEY (`ID_MODELO`);

--
-- Indices de la tabla `tbl_registros`
--
ALTER TABLE `tbl_registros`
  ADD PRIMARY KEY (`ID_REGISTRO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_autos`
--
ALTER TABLE `tbl_autos`
  MODIFY `ID_AUTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tbl_direcciones`
--
ALTER TABLE `tbl_direcciones`
  MODIFY `ID_DIRECCION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  MODIFY `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tbl_modelos`
--
ALTER TABLE `tbl_modelos`
  MODIFY `ID_MODELO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_registros`
--
ALTER TABLE `tbl_registros`
  MODIFY `ID_REGISTRO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_autos`
--
ALTER TABLE `tbl_autos`
  ADD CONSTRAINT `FK_CLIENTES_AUTOS` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tbl_clientes` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD CONSTRAINT `FK_DIRECCIONES_CLIENTES` FOREIGN KEY (`ID_DIRECCION`) REFERENCES `tbl_direcciones` (`ID_DIRECCION`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD CONSTRAINT `FK_DIRECCIONES_FACTURAS` FOREIGN KEY (`ID_DIRECCION`) REFERENCES `tbl_direcciones` (`ID_DIRECCION`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
