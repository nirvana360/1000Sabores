-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 21, 2016 at 05:11 PM
-- Server version: 5.5.49
-- PHP Version: 5.3.10-1ubuntu3.22

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `cod_cat` int(4) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `presentacion`
--

CREATE TABLE IF NOT EXISTS `presentacion` (
  `cod_nombre` int(4) NOT NULL,
  `nom_presentacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `codigo` int(4) NOT NULL,
  `categoria` text NOT NULL,
  `producto` text NOT NULL,
  `presentacion` text NOT NULL,
  `unidad_medida` text NOT NULL,
  `precio_venta` int(4) NOT NULL,
  `stock_id` int(4) NOT NULL,
  PRIMARY KEY (`precio_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `cod_prov` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `direccion` int(11) NOT NULL,
  `telefono` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `cod_stock` int(4) NOT NULL,
  `stock_min` int(4) NOT NULL,
  `stock_max` int(4) NOT NULL,
  PRIMARY KEY (`cod_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `cod_ventas` int(4) NOT NULL,
  `cod_detalle` int(4) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`cod_ventas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
