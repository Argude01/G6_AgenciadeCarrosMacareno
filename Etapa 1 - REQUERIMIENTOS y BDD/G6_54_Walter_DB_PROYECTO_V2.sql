-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2021 a las 18:22:16
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
-- Base de datos: `db_ventas_autos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_autos`
--

CREATE TABLE `tbl_autos` (
  `ID_AUTO` int(11) NOT NULL,
  `MARCA` varchar(50) NOT NULL,
  `MODELO` varchar(50) NOT NULL,
  `COLOR` varchar(50) NOT NULL,
  `AÑO` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_autos`
--

INSERT INTO `tbl_autos` (`ID_AUTO`, `MARCA`, `MODELO`, `COLOR`, `AÑO`) VALUES
(1, 'NISSAN', 'NAVARA', 'NARANZA', 2021),
(2, 'TOYOTA', 'COROLLA', 'ROJO', 2020),
(3, 'ISUZU', 'D-MAX', 'PLATEADO', 2020),
(4, 'VOLKSWAGEN', 'ARTEON', 'AZUL', 2021),
(5, 'VOLKSWAGEN ', 'AMAROK', 'NEGRO', 2020),
(6, 'FORD', 'ECOSPORT', 'DORADO', 2019),
(7, 'NISSAN', 'FRONTIER', 'ROJO', 2017),
(8, 'FORD', 'GALAXI', 'AZUL', 2020),
(9, 'TOYOTA', 'ACURIS', 'ROJO VINO', 2021),
(10, 'NISSAN', 'JUKE', 'AMARILLO', 2021);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `N DE IDENTIDAD` varchar(100) NOT NULL,
  `RTN` varchar(100) NOT NULL,
  `TELEFONO` varchar(50) NOT NULL,
  `ID_DIRECCION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`ID_CLIENTE`, `NOMBRE`, `APELLIDO`, `N DE IDENTIDAD`, `RTN`, `TELEFONO`, `ID_DIRECCION`) VALUES
(1, 'WALTER', 'CRUZ', '0307-1980-00133', '03071980001338', '32658795', 2),
(2, 'CARLOS', 'FERNANDEZ', '0309-2021-00117', '030720210001198', '32897548', 2),
(3, 'JOSE', 'IZAGUIRRE', '0307-1997-00125', '03071997001256', '32458725', 10),
(4, 'CARLOS ', 'PERDOMO', '0307-2000-01235', '03072000012359', '98567841', 5),
(5, 'KEVIN', 'SORTO', '0307-1999-00255', '03071999002551', '35412511', 2),
(6, 'BENITO', 'GALEAS', '0307-1998-00332', '03071998003324', '96782545', 9),
(7, 'PEDRO ', 'SORTO', '0305-1993-00426', '0351993004265', '99568745', 6),
(8, 'CARLOS', 'PORTILLO', '0307-1989-01237', '03071989012374', '98564572', 8),
(9, 'MICHELLE', 'BENITES', '0307-1989-02413', '03071989024135', '98217568', 5),
(10, 'BRYAN', 'CRUZ', '0307-1999-03649', '03071999036497', '97546821', 6);

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
(3, 'BARRIO EL CENTRO'),
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
  `ARTICULOS` varchar(200) NOT NULL,
  `PRECIO UNITARIO` varchar(50) NOT NULL,
  `ISV` varchar(50) NOT NULL,
  `TOTAL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_facturas`
--

INSERT INTO `tbl_facturas` (`ID_FACTURA`, `FECHA`, `ID_DIRECCION`, `ARTICULOS`, `PRECIO UNITARIO`, `ISV`, `TOTAL`) VALUES
(1, '2021-05-04', 2, 'NISSAN, NAVARA', '', '15%', ''),
(2, '2021-05-21', 2, 'TOYOTA, CORLLA', '', '15%', ''),
(3, '2021-05-08', 10, 'ISUZU, D-MAX', '', '15%', ''),
(4, '2021-05-02', 5, 'VOLKSWAGEN, ARTEON', '', '15%', ''),
(5, '2021-05-16', 2, 'VOLKSWAGEN, AMAROK', '', '15%', ''),
(6, '2021-05-20', 9, 'FORD, ECOSPORT', '', '15%', ''),
(7, '2021-05-29', 6, 'NISSAN, FRONTIER', '', '15%', ''),
(8, '2021-05-28', 8, 'FORD, GALAXI', '', '15%', ''),
(9, '2021-05-30', 5, 'TOYOTA, ACURIS', '', '15%', ''),
(10, '2021-05-31', 6, 'NISSAN, JUKE', '', '15%', '');

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
(10, 'bryancruz45@gmail.com', 'cruz4527', 22);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_autos`
--
ALTER TABLE `tbl_autos`
  ADD PRIMARY KEY (`ID_AUTO`);

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
  MODIFY `ID_AUTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_direcciones`
--
ALTER TABLE `tbl_direcciones`
  MODIFY `ID_DIRECCION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  MODIFY `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_registros`
--
ALTER TABLE `tbl_registros`
  MODIFY `ID_REGISTRO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

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
