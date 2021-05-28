-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2021 a las 16:50:58
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_venta_de_autos1`
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
(1, 'Honda', 'CR - V', 'Negro', 2017),
(2, 'Kia', 'Optima', 'Blanco', 2001),
(3, 'Chevrolet', 'Camaro', 'Roj', 2019),
(4, 'Ford', 'B - Max', 'Gris', 2015),
(5, 'Isuzu', 'D - Max', 'Negro', 2021),
(6, 'Volkswagen', 'Amarok', 'Negro', 2020),
(7, 'Suzuki', 'Vitara Live', 'Azul', 2020),
(8, 'Nissan', 'MURANO', 'Rojo', 2019),
(9, 'Mazda', 'Touring', 'Negro', 2015),
(10, 'Audi', 'A7 Sportback', 'Gris ', 2018);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `N DE IDENTIDAD` varchar(100) NOT NULL,
  `RTN` int(100) NOT NULL,
  `TELEFONO` varchar(50) NOT NULL,
  `ID_DIRECCION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`ID_CLIENTE`, `NOMBRE`, `APELLIDO`, `N DE IDENTIDAD`, `RTN`, `TELEFONO`, `ID_DIRECCION`) VALUES
(13, 'Juan', 'Munguia', '0301197809490', 809435895, '90127543', 6),
(14, 'Francisco', 'Mejia ', '0517199900375', 435324617, '38654562', 2),
(15, 'Carlos', 'Martinez', '0312198967467', 874783473, '89261579', 3),
(16, 'David', 'Ramos', '0601197948256', 231518689, '90656534', 1),
(17, 'Jorge', 'Perez', '0317198100254', 534534624, '31678932', 4),
(18, 'Mario', 'Juarez', '1201199527915', 849387901, '88661789', 10),
(19, 'Ana', 'Sierra', '0602199675042', 847827988, '95124321', 7),
(20, 'Daniel', 'Colindres', '0301200012731', 218382720, '81652396', 5),
(21, 'Martha', 'Bustillo', '0201200248921', 387875398, '92690034', 9),
(22, 'Cesar', 'David', '0301199876367', 139083938, '95782031', 3);

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
(3, 'BARRIO SUYAPA'),
(4, 'BARRIO BRISAS DE ALTAMIRA'),
(5, 'BARRIO ABAJO'),
(6, 'BARRIO TORONDON'),
(7, 'BARRIO SAN FRANCISCO'),
(8, 'BARRIO LOURDES'),
(9, 'SANTA LUCIA'),
(10, 'COL. TRES CAMINOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_facturas`
--

CREATE TABLE `tbl_facturas` (
  `ID_FACTURA` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_DIRECCION` int(11) NOT NULL,
  `ARTICULOS` varchar(200) NOT NULL,
  `PRECIO UNITARIO` varchar(255) NOT NULL,
  `ISV` varchar(100) NOT NULL,
  `TOTAL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_facturas`
--

INSERT INTO `tbl_facturas` (`ID_FACTURA`, `FECHA`, `ID_DIRECCION`, `ARTICULOS`, `PRECIO UNITARIO`, `ISV`, `TOTAL`) VALUES
(1, '2021-05-30', 10, 'Kia Optima', 'L. 67388', '15%', 'L. 77496'),
(2, '2021-05-02', 7, 'Nissan Murano', 'L. 855000', '15%', 'L. 983200'),
(3, '2021-05-13', 1, 'Audi A7 Sportback', 'L. 1200000', '15%', 'L. 1380000'),
(4, '2021-05-17', 4, 'Mazda Touring', 'L. 950000', '15%', 'L. 1092500'),
(5, '2021-05-08', 6, 'Isuzu D - Max', 'L. 500000', '15%', 'L. 575000'),
(6, '2021-05-01', 5, 'Chevrolet Camaro', 'L. 980000', '15%', 'L. 1127000'),
(7, '2021-05-24', 7, 'Volkswagen Amarok', 'L. 350000', '15%', 'L. 402500'),
(8, '2021-05-20', 8, 'Ford B - Max', 'L. 678000', '15%', 'L. 779700'),
(9, '2021-05-06', 3, 'Kia Optima', 'L. 67388', '15%', 'L. 77496'),
(10, '2021-04-23', 2, 'Suzuki Vitara Live', 'L. 165000', '15%', 'L. 189750');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registros`
--

CREATE TABLE `tbl_registros` (
  `ID_REGISTROS` int(50) NOT NULL,
  `CORREO` varchar(100) NOT NULL,
  `CLAVE` varchar(50) NOT NULL,
  `AÑOS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_registros`
--

INSERT INTO `tbl_registros` (`ID_REGISTROS`, `CORREO`, `CLAVE`, `AÑOS`) VALUES
(1, 'juan@gmail.com', 'cfa', 43),
(2, 'francisco@gmail.com', 'gfrew', 22),
(3, 'carlos@gmail.com', 'asjk', 32),
(4, 'david@gmail.com', 'erql', 42),
(5, 'jorge@gmail.com', 'ufga', 40),
(6, 'mario@gmail.com', 'masd', 26),
(7, 'ana@gmail.com', 'atbn', 25),
(8, 'daniel@gmail.com', 'dahg', 21),
(9, 'martha@gmail.com', 'yyuwe', 19),
(10, 'cesar@gmail.com', 'chusop', 23);

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
  ADD PRIMARY KEY (`ID_REGISTROS`);

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
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `ID_REGISTROS` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
