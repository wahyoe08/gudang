-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2017 at 11:09 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gpsdata`
--
CREATE DATABASE IF NOT EXISTS `gpsdata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gpsdata`;

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE IF NOT EXISTS `barang_keluar` (
  `id_keluar` int(20) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `no_po` varchar(20) NOT NULL,
  `part_number` varchar(30) NOT NULL,
  `jumlah_order` varchar(15) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `sisa` int(3) NOT NULL,
  `hasil` int(3) NOT NULL,
  `total_harga` int(11) NOT NULL,
  PRIMARY KEY (`id_keluar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_keluar`, `tgl`, `no_po`, `part_number`, `jumlah_order`, `jumlah`, `sisa`, `hasil`, `total_harga`) VALUES
(35, '2017-08-31', '', 'M-RMA-NMT-0006-0', '0', '8', 0, 0, 0),
(36, '2017-08-02', '', 'M-RMA-NMT-0014-0', '0', '2', 0, 0, 0),
(37, '2017-08-02', '', 'M-RMA-NMT-0013-0', '0', '60', 0, 0, 0),
(38, '2017-08-09', '1234/RMA/PO/X/17', 'M-RMA-NMT-0001-0', '0', '80', 0, 0, 0),
(39, '2017-08-10', '', 'M-RMA-NMT-0001-0', '0', '50', 0, 0, 0),
(40, '2017-08-10', '', 'M-RMA-NMT-0001-0', '0', '50', 0, 0, 0),
(41, '2017-08-10', '', 'M-RMA-NMT-0001-0', '0', '50', 0, 0, 0),
(42, '2017-08-10', '8765/RMA/VIII/BOB/17', 'M-RMA-NMT-0002-0', '0', '10', 0, 0, 0),
(43, '2017-08-15', '1234/RMA/BOB/X/17', 'M-RMA-NMT-0001-0', '0', '10', 0, 0, 0),
(44, '2017-08-15', '1111/RMA/BOB/VIII/17', 'M-RMA-NMT-0001-0', '0', '10', 0, 0, 0),
(45, '2017-08-15', '1111/RMA/BOB/VIII/17', 'M-RMA-NMT-0001-0', '0', '30', 0, 0, 0),
(46, '2017-08-15', '1234/RMA/BOB/X/17', 'M-RMA-NMT-0001-0', '100', '90', 10, 0, 0),
(47, '2017-08-15', '1234/RMA/BOB/X/17', 'M-RMA-NMT-0001-0', '60', '60', 0, 0, 0),
(48, '2017-08-16', '', 'M-RMA-NMT-0007-0', '100', '40', 100, 0, 0),
(49, '1970-01-01', '', 'M-RMA-NMT-0001-0', '100', '50', 100, 0, 0),
(50, '1970-01-01', '', 'M-RMA-NMT-0003-0', '', '60', 460, 0, 0),
(51, '1970-01-01', '', 'M-RMA-NMT-0003-0', '', '60', 460, 0, 0),
(52, '2017-08-21', '1234/RMA/BOB/X/17', 'M-RMA-NMT-0001-0', 'Bagus', '40', 0, 0, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE IF NOT EXISTS `barang_masuk` (
  `id_masuk` int(20) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `no_po` varchar(20) NOT NULL,
  `part_number` varchar(30) NOT NULL,
  `jumlah_order` varchar(15) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `sisa` int(3) NOT NULL,
  `hasil` int(3) NOT NULL,
  `total_harga` int(11) NOT NULL,
  PRIMARY KEY (`id_masuk`),
  KEY `tgl` (`tgl`),
  KEY `tgl_2` (`tgl`),
  KEY `tgl_3` (`tgl`),
  KEY `tgl_4` (`tgl`),
  KEY `no_po` (`no_po`),
  KEY `part_number` (`part_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=139 ;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_masuk`, `tgl`, `no_po`, `part_number`, `jumlah_order`, `jumlah`, `sisa`, `hasil`, `total_harga`) VALUES
(11, '2017-07-28', '', 'M-RMA-NMT-0001-0', '0', '100', 0, 0, 0),
(12, '2017-07-28', '', 'M-RMA-NMT-0001-0', '0', '100', 0, 0, 0),
(13, '2017-07-28', '', 'M-RMA-NMT-0002-0', '0', '100', 0, 0, 0),
(14, '2017-07-28', '', 'M-RMA-NMT-0003-0', '0', '100', 0, 0, 0),
(15, '2017-07-30', '', 'M-RMA-NMT-0004-0', '0', '100', 0, 0, 0),
(16, '2017-07-31', '', 'M-RMA-NMT-0001-0', '0', '50', 0, 0, 0),
(17, '2017-07-31', '', 'M-RMA-NMT-0004-0', '0', '100', 0, 0, 0),
(18, '2017-07-31', '', 'M-RMA-NMT-0005-0', '0', '100', 0, 0, 0),
(19, '2017-07-24', '', 'M-RMA-NMT-0006-0', '0', '100', 0, 0, 0),
(20, '2017-07-31', '', 'M-RMA-NMT-0005-0', '0', '200', 0, 0, 0),
(21, '2017-08-01', '', 'M-RMA-NMT-0001-0', '0', '100', 0, 0, 0),
(22, '2017-08-01', '', 'M-RMA-NMT-0002-0', '0', '100', 0, 0, 0),
(23, '2017-08-02', '', 'M-RMA-NMT-0003-0', '0', '100', 0, 0, 0),
(24, '2017-08-02', '', 'M-RMA-NMT-0004-0', '0', '100', 0, 0, 0),
(25, '2017-08-02', '', 'M-RMA-NMT-0002-0', '0', '1', 0, 0, 0),
(26, '2017-08-02', '', 'M-RMA-NMT-0014-0', '0', '100', 0, 0, 0),
(27, '2017-08-02', '', 'M-RMA-NMT-0013-0', '0', '100', 0, 0, 0),
(28, '2017-08-02', '', 'M-RMA-NMT-0013-0', '0', '50', 0, 0, 0),
(29, '2017-08-07', '', 'M-RMA-NMT-0015-0', '0', '200', 0, 0, 0),
(30, '2017-08-08', '', 'M-RMA-NMT-0001-0', '0', '100', 0, 0, 0),
(31, '2017-08-09', '1111/RMA/PO/VIII/17', 'M-RMA-NMT-0007-0', '0', '50', 0, 0, 0),
(32, '2017-08-11', '2222/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', '0', '10', 0, 0, 0),
(33, '2017-08-11', '2222/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', '0', '10', 0, 0, 0),
(34, '2017-08-11', '2222/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', '0', '10', 0, 0, 0),
(35, '2017-08-11', '2222/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', '0', '10', 0, 0, 0),
(36, '2017-08-11', '2222/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', '0', '10', 0, 0, 0),
(37, '2017-08-11', '2222/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', '0', '10', 0, 0, 0),
(38, '2017-08-11', '6666/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', '0', '50', 0, 0, 0),
(39, '2017-08-12', '7777/RMA/PO/VIII/17', 'M-RMA-NMT-0007-0', '0', '90', 0, 0, 0),
(41, '1970-01-01', '', '', '0', '10', 0, 0, 0),
(42, '1970-01-01', '', '', '0', '50', 0, 0, 0),
(43, '1970-01-01', '', '', '100', '50', 0, 0, 0),
(44, '1970-01-01', '', '', '100', '50', 0, 0, 0),
(45, '1970-01-01', '', '', '100', '50', 0, 0, 0),
(46, '1970-01-01', '', '', '100', '50', 0, 0, 0),
(47, '1970-01-01', '', '', '100', '50', 0, 0, 0),
(48, '1970-01-01', '', '', '100', '50', 0, 0, 0),
(49, '1970-01-01', '', '', '100', '50', 0, 0, 0),
(50, '1970-01-01', '', '', '100', '50', 0, 0, 0),
(51, '1970-01-01', '', '', '100', '20', 80, 0, 0),
(52, '2017-08-14', '2222/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', '100', '10', 90, 0, 0),
(53, '2017-08-14', '2222/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', '100', '10', 90, 0, 0),
(54, '2017-08-14', '6666/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', '200', '20', 180, 0, 0),
(55, '2017-08-15', '2222/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', '300', '300', 0, 0, 0),
(56, '2017-08-15', '1234/RMA/PO/X/17', 'M-RMA-NMT-0003-0', '250', '250', 0, 0, 0),
(57, '1970-01-01', '', '', '0', '', 0, 0, 0),
(58, '2017-08-16', '', 'M-RMA-NMT-0131-0', '235', '235', 0, 0, 0),
(59, '2017-08-16', '', 'M-RMA-NMT-0132-0', '196', '196', 0, 0, 0),
(60, '2017-08-16', '', 'M-RMA-NMT-0005-0', '100', '10', 90, 0, 0),
(62, '1970-01-01', '', 'M-RMA-NMT-0001-0', '', '50', 0, 300, 0),
(63, '2017-08-16', '2222/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', 'Udin', '50', 0, 350, 0),
(64, '2017-08-21', '1234/RMA/PO/X/17', 'M-RMA-NMT-0003-0', 'Agus', '50', 0, 390, 0),
(65, '2017-08-21', '2222/RMA/PO/VIII/17', 'M-RMA-NMT-0001-0', 'Bagus', '90', 0, 440, 90000),
(66, '2017-08-22', '', 'M-RMA-NMT-0130-0', '', ' 146 ', 0, 146, 0),
(67, '2017-08-22', '', 'M-RMA-NMT-0253-0', '', '7', 0, 7, 0),
(68, '1970-01-01', '', 'M-RMA-NMT-0254-0', '', '38', 0, 38, 0),
(69, '1970-01-01', '', 'M-RMA-NMT-0255-0', '', '21', 0, 21, 0),
(70, '1970-01-01', '', 'M-RMA-MET-0256-0', '', '5', 0, 5, 0),
(71, '1970-01-01', '', 'M-RMA-NMT-0257-0', '', '97', 0, 97, 0),
(72, '1970-01-01', '', 'M-RMA-NMT-0137-0', '', '13', 0, 13, 0),
(73, '1970-01-01', '', 'M-RMA-NMT-0136-0', '', '4', 0, 4, 0),
(74, '1970-01-01', '', 'M-RMA-Y9B-0258-0', '', '2', 0, 2, 0),
(75, '1970-01-01', '', 'M-RMA-NMT-0242-0', '', '91', 0, 91, 0),
(76, '1970-01-01', '', 'M-RMA-300-0249-0', '', '39', 0, 39, 0),
(77, '1970-01-01', '', 'M-RMA-CJM-0247-0', '', '2', 0, 2, 0),
(78, '1970-01-01', '', 'M-RMA-Y9B-0241-0', '', '5', 0, 5, 0),
(79, '1970-01-01', '', 'M-RMA-NMT-0259-0', '', '7', 0, 7, 0),
(80, '1970-01-01', '', 'M-RMA-Y9B-0244-0', '', '1', 0, 1, 0),
(81, '1970-01-01', '', 'M-RMA-Y9B-0261-0', '', '1600', 0, 1600, 0),
(82, '1970-01-01', '', 'M-RMA-Y9B-0264-0', '', '61', 0, 61, 0),
(83, '1970-01-01', '', 'M-RMA-Y9B-0265-0', '', '4', 0, 4, 0),
(84, '1970-01-01', '', 'M-RMA-Y9B-0245-0', '', '2375', 0, 2375, 0),
(86, '1970-01-01', '', 'M-RMA-NMT-0266-0', '', '11348', 0, 11348, 0),
(87, '1970-01-01', '', 'M-RMA-NMT-0267-0', '', '1609', 0, 1609, 0),
(88, '1970-01-01', '', 'M-RMA-NMT-0064-0', '', '12', 0, 12, 0),
(89, '1970-01-01', '', 'M-RMA-NMT-0062-0', '', '12', 0, 12, 0),
(90, '1970-01-01', '', 'M-RMA-NMT-0270-0', '', '21', 0, 21, 0),
(91, '1970-01-01', '', 'M-RMA-NMT-0065-0', '', '12', 0, 12, 0),
(92, '1970-01-01', '', 'M-RMA-NMT-0052-0', '', '24', 0, 24, 0),
(93, '1970-01-01', '', 'M-RMA-NMT-0061-0', '', '1', 0, 1, 0),
(94, '1970-01-01', '', 'M-RMA-NMT-0058-0', '', '8', 0, 8, 0),
(95, '1970-01-01', '', 'M-RMA-NMT-0060-0', '', '31', 0, 31, 0),
(96, '1970-01-01', '', 'M-RMA-NMT-0059-0', '', '3', 0, 3, 0),
(97, '1970-01-01', '', 'M-RMA-NMT-0271-0', '', '8592', 0, 8592, 0),
(98, '1970-01-01', '', 'M-RMA-NMT-0057-0', '', '7', 0, 7, 0),
(99, '1970-01-01', '', 'M-RMA-NMT-0056-0', '', '129', 0, 129, 0),
(100, '1970-01-01', '', 'M-RMA-NMT-0053-0', '', '34', 0, 34, 0),
(101, '1970-01-01', '', 'M-RMA-NMT-0055-0', '', '29', 0, 29, 0),
(102, '1970-01-01', '', 'M-RMA-NMT-0282-0', '', '75', 0, 75, 0),
(103, '1970-01-01', '', 'M-RMA-NMT-0283-0', '', '21', 0, 21, 0),
(104, '1970-01-01', '', 'M-RMA-NMT-0284-0', '', '45', 0, 45, 0),
(105, '1970-01-01', '', 'M-RMA-NMT-0285-0', '', '5', 0, 5, 0),
(106, '1970-01-01', '', 'M-RMA-NMT-0054-0', '', '237', 0, 237, 0),
(107, '1970-01-01', '', 'M-RMA-NMT-0287-0', '', '74', 0, 74, 0),
(108, '1970-01-01', '', 'M-RMA-NMT-0288-0', '', '57', 0, 57, 0),
(109, '1970-01-01', '', 'M-RMA-NMT-0074-0', '', '375', 0, 375, 0),
(110, '1970-01-01', '', 'M-RMA-NMT-0289-0', '', '45', 0, 45, 0),
(111, '1970-01-01', '', 'M-RMA-NMT-0073-0', '', '13', 0, 13, 0),
(112, '1970-01-01', '', 'M-RMA-NMT-0290-0', '', '23', 0, 23, 0),
(113, '1970-01-01', '', 'M-RMA-NMT-0291-0', '', '54', 0, 54, 0),
(114, '1970-01-01', '', 'M-RMA-NMT-0147-0', '', '329', 0, 329, 0),
(115, '1970-01-01', '', 'M-RMA-NMT-0148-0', '', '329', 0, 329, 0),
(116, '1970-01-01', '', 'M-RMA-NMT-0149-0', '', '393', 0, 393, 0),
(117, '1970-01-01', '', 'M-RMA-NMT-0150-0', '', '393', 0, 393, 0),
(118, '1970-01-01', '', 'M-RMA-NMT-0151-0', '', '393', 0, 393, 0),
(119, '1970-01-01', '', 'M-RMA-NMT-0097-0', '', '52000', 0, 52000, 0),
(120, '1970-01-01', '', 'M-RMA-NMT-0098-0', '', '39400', 0, 39400, 0),
(121, '1970-01-01', '', 'M-RMA-NMT-0099-0', '', '50000', 0, 50000, 0),
(122, '1970-01-01', '', 'M-RMA-NMT-0293-0', '', '12400', 0, 12400, 0),
(123, '1970-01-01', '', 'M-RMA-NMT-0294-0', '', '8700', 0, 8700, 0),
(124, '1970-01-01', '', 'M-RMA-NMT-0295-0', '', '10481', 0, 10481, 0),
(125, '1970-01-01', '', 'M-RMA-NMT-0296-0', '', '12000', 0, 12000, 0),
(126, '1970-01-01', '', 'M-RMA-NMT-0298-0', '', '2250', 0, 2250, 0),
(127, '1970-01-01', '', 'M-RMA-NMT-0297-0', '', '3350', 0, 3350, 0),
(128, '1970-01-01', '', 'M-RMA-NMT-0299-0', '', '350', 0, 350, 0),
(129, '1970-01-01', '', 'M-RMA-NMT-0300-0', '', '50', 0, 50, 0),
(130, '1970-01-01', '', 'M-RMA-NMT-0080-0', '', '1174', 0, 1174, 0),
(131, '1970-01-01', '', 'M-RMA-NMT-0302-0', '', '20', 0, 20, 0),
(132, '1970-01-01', '', 'M-RMA-NMT-0304-0', '', '40', 0, 40, 0),
(133, '1970-01-01', '', 'M-RMA-NMT-0305-0', '', '360', 0, 360, 0),
(134, '1970-01-01', '', 'M-RMA-NMT-0230-0', '', '280', 0, 280, 0),
(135, '1970-01-01', '', 'M-RMA-NMT-0306-0', '', '60', 0, 60, 0),
(136, '1970-01-01', '', 'M-RMA-NMT-0308-0', '', '60', 0, 60, 0),
(137, '1970-01-01', '', 'M-RMA-NMT-0094-0', '', '7200', 0, 7200, 0),
(138, '1970-01-01', '', 'M-RMA-NMT-0095-0', '', '8000', 0, 8000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE IF NOT EXISTS `data_barang` (
  `part_number` varchar(16) NOT NULL,
  `part_name` varchar(40) NOT NULL,
  `harga` int(11) NOT NULL,
  `Min` int(4) NOT NULL,
  `Max` int(4) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `supplier` varchar(20) NOT NULL,
  PRIMARY KEY (`part_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`part_number`, `part_name`, `harga`, `Min`, `Max`, `satuan`, `supplier`) VALUES
('M-RMA-300-0249-0', 'DOOR 290 0.25X110X50 GY', 0, 0, 0, 'METER', 'PT. APM ARMADA AUTOP'),
('M-RMA-CJM-0247-0', 'DOOR 291 0.25X100X50 GY CJM', 0, 0, 0, 'METER', 'PT. APM ARMADA AUTOP'),
('M-RMA-MET-0256-0', 'Isi Steples 1002,5', 0, 0, 0, 'PCS', 'CV. Citra Baru Mandi'),
('M-RMA-MET-0262-0', 'PLAT PRTC 018', 0, 0, 0, 'PCS', 'PT. APM ARMADA AUTOP'),
('M-RMA-NMT-0001-0', 'FLOOR CARPET 115 A F', 2000, 100, 300, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0002-0', 'FLOOR CARPET 115 A R', 2000, 100, 300, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0003-0', 'FLOOR CARPET 61J-BR.0 @10 pcs', 3000, 100, 300, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0004-0', 'FLOOR CARPET 61J-CR.0', 1000, 100, 300, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0005-0', 'FLOOR CARPET 61J-BR.6 @10 pcs', 0, 100, 300, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0006-0', 'FLOOR CARPET 61J-AF.0 @10 pcs', 0, 0, 0, 'SHEET', 'PT. HERCULON CARPET'),
('M-RMA-NMT-0007-0', 'FLOOR CARPET 61J-CR1.1', 0, 0, 0, 'SHEET', 'PT. HERCULON CARPET'),
('M-RMA-NMT-0008-0', 'FLOOR CARPET YL-8 AB (LUGGAGE) @ 20pcs', 0, 0, 0, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0009-0', 'FLOOR CARPET YL-8 BR(FLOOR) @ 10pcs', 0, 0, 0, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0010-0', 'FLOOR CARPET YL-8 AFR(FRONT) @ 10pcs', 0, 0, 0, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0011-0', 'FLOOR CARPET D-40D AF @ 10pcs', 0, 0, 0, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0012-0', 'Tiara Grade', 0, 0, 0, 'ROLL', 'PT. MULTIWARNA'),
('M-RMA-NMT-0013-0', 'Tiara Black', 0, 0, 0, 'ROLL', 'PT. MULTIWARNA'),
('M-RMA-NMT-0014-0', 'PVC Sheet', 0, 0, 0, 'ROLL', 'PT. Kreasi Abadi'),
('M-RMA-NMT-0015-0', 'GW 52', 0, 100, 300, 'ROLL', 'PT. HILON'),
('M-RMA-NMT-0016-0', 'GW 25', 0, 0, 0, 'ROLL', 'PT. HILON'),
('M-RMA-NMT-0017-0', 'GW 96', 0, 0, 0, 'ROLL', 'PT. HILON'),
('M-RMA-NMT-0018-0', 'GW 54', 0, 0, 0, 'ROLL', 'PT. HILON'),
('M-RMA-NMT-0019-0', 'GWPS 10MM/1200 GSM', 0, 0, 0, 'ROLL', 'PT. Kreasi Abadi'),
('M-RMA-NMT-0020-0', 'HDP GREY T 30/600', 0, 0, 0, 'SHEET', 'PT. Eterna Gelora Pu'),
('M-RMA-NMT-0021-0', 'HDP GREY T 50/2000', 0, 100, 300, 'SHEET', 'PT. Eterna Gelora Pu'),
('M-RMA-NMT-0052-0', 'DOUBLE TAPE 8370s 25x 50m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0053-0', 'DOUBLE TAPE 8370s 50x 50m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0054-0', 'DOUBLE TAPE 9007', 0, 0, 0, 'ROLL', 'PT. GRADE'),
('M-RMA-NMT-0055-0', 'DOUBLE TAPE 8370s 30 x 50m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0056-0', 'DOUBLE TAPE 8370s 40 x 50m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0057-0', 'DOUBLE TAPE 9075 I 300mm x 50m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0058-0', 'DOUBLE TAPE 9075 I 1020mm x 50m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0059-0', 'DOUBLE TAPE 9075 I 340mm x 50m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0060-0', 'DOUBLE TAPE 9075 I 360 x 50m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0061-0', 'DOUBLE TAPE 9075 I 25mm x 50m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0062-0', 'DOUBLE TAPE 9075 I 75mm x 50m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0064-0', 'DT 8370 Liner Biru 150mm x 50m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0065-0', 'Double Tape 468 9 cm x 55 m', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0073-0', 'HDP White 20 MM 700', 0, 0, 0, 'ROLL', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0074-0', 'HDP White 1200 gr', 0, 0, 0, 'SHEET', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0080-0', 'IMPRABOARD 1160 X 640', 0, 0, 0, 'SHEET', 'PT. Kreasi Dasatama'),
('M-RMA-NMT-0094-0', 'PLATE LUGGAGE BOX FLAP NO.1', 0, 0, 0, 'PCS', 'PT. NACO TEKNOLOGI'),
('M-RMA-NMT-0095-0', 'PLATE LUGGAGE BOX FLAP NO.2', 0, 0, 0, 'PCS', 'PT. NACO TEKNOLOGI'),
('M-RMA-NMT-0097-0', 'RIVET LUBANG No. 1 L : 9.5', 0, 0, 0, 'PCS', 'PT. Ginsa Inti Prata'),
('M-RMA-NMT-0098-0', 'RIVET LUBANG No. 1 L : 11.5', 0, 0, 0, 'PCS', 'PT. Ginsa Inti Prata'),
('M-RMA-NMT-0099-0', 'RING PLATE Washer D 1:3,5 mm D2:8mm T : ', 0, 0, 0, 'PCS', 'PT. Ginsa Inti Prata'),
('M-RMA-NMT-0129-0', 'MAGIC TAPE MALE AL UK 20 MM X 20M', 0, 0, 0, 'ROLL', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0130-0', 'MAGIC TAPE FEMALE AL UK 20 MM X 20M', 0, 0, 0, 'ROLL', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0131-0', 'MAGIC TAPE MALE AL UK 25 MM X 20M', 0, 0, 0, 'ROLL', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0132-0', 'MAGIC TAPE FEMALE BL UK 25 MMX 20M', 0, 0, 0, 'ROLL', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0134-0', 'MAGIC TAPE FEMALE BL 16 MM X 20M', 0, 0, 0, 'ROLL', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0136-0', 'ISI STRAPLES 1006J', 0, 0, 0, 'PCS', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0137-0', 'ISI STRAPLES 1003 J', 0, 0, 0, 'PCS', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0147-0', 'Trim Roof Headlining Roof Apv No.1', 0, 0, 0, 'PCS', 'PT. Garuda Mas Tangk'),
('M-RMA-NMT-0148-0', 'Trim Roof Headlining Roof Apv No.2', 0, 0, 0, 'PCS', 'PT. Garuda Mas Tangk'),
('M-RMA-NMT-0149-0', 'Trim Roof Headlining Roof Apv No.3', 0, 0, 0, 'PCS', 'PT. Garuda Mas Tangk'),
('M-RMA-NMT-0150-0', 'Trim Roof Headlining Roof Apv No.4', 0, 0, 0, 'PCS', 'PT. Garuda Mas Tangk'),
('M-RMA-NMT-0151-0', 'Trim Roof Headlining Roof Apv No.5', 0, 0, 0, 'PCS', 'PT. Garuda Mas Tangk'),
('M-RMA-NMT-0230-0', 'HDPE Flat Sheet Colour Black 2.30x1200x1', 0, 0, 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0231-0', 'HDPE Flat Sheet Colour Black 1.5x1050x13', 0, 0, 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0242-0', ' Door 420.A 0.25x100x50GY ', 0, 0, 0, 'METER', 'PT. APM ARMADA AUTOP'),
('M-RMA-NMT-0243-0', ' TR.010.04.0.04x125x500m ', 0, 0, 0, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0253-0', 'BENANG SEWING GREY  656', 0, 0, 0, 'CONE', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0254-0', 'BENANG SEWING ABU2   246', 0, 0, 0, 'CONE', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0255-0', 'Benang Sewing Beige', 0, 0, 0, 'CONE', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0257-0', ' Benang sewing hitam ', 0, 0, 0, 'CONE', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0259-0', 'PVC KBCC', 0, 0, 0, 'ROLL', 'PT. APM ARMADA AUTOP'),
('M-RMA-NMT-0260-0', 'KARDUS PAKING [ SPARE PART ] SUZUKI', 0, 0, 0, 'ROLL', 'PT. APM ARMADA AUTOP'),
('M-RMA-NMT-0263-0', 'PLASTIK PACKING 50 X110  0.7', 0, 0, 0, 'KG', 'PT. APM ARMADA AUTOP'),
('M-RMA-NMT-0266-0', 'FU FOAM : 140 x 80 x 3', 0, 0, 0, 'PCS', 'PT. AMSTRONG'),
('M-RMA-NMT-0267-0', 'FU FOAM ;  140 X 130 X 6', 0, 0, 0, 'PCS', 'PT. AMSTRONG'),
('M-RMA-NMT-0268-0', 'FU FOAM 170 X 70 X 3', 0, 0, 0, 'PCS', 'PT. AMSTRONG'),
('M-RMA-NMT-0268-1', 'NITO TAPE COKLAT 15 mm x 50', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0269-0', 'AUXILIARY TAPE MERAH', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0270-0', 'DT 601 CENTURI 15 X 50', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0271-0', ' Felt 1mm x 20 x 40 ', 0, 0, 0, 'PCS', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0272-0', ' DT 9007 1.050 mm x 50 m ', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0282-0', 'DT C11L4 20MM X 50M', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0283-0', ' DT CENTURY 60 x 50 m foam ', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0284-0', ' DT NITTO 501 L 20MMX50 HEADLENING ', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0285-0', ' DT NITTO 512 L 30MMX50MM ', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0286-0', ' DT C11L4  8 x 50 m ', 0, 0, 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0287-0', ' HDP Grey T. 50/1200Gsm ', 0, 0, 0, 'PCS', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0288-0', ' HDP Grey T. 30/600Gsm ', 0, 0, 0, 'PCS', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0289-0', ' HDP Grey T10 400Gsm (L-2m x P-30m) ', 0, 0, 0, 'METER', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0290-0', 'HDP White T10 500Gsm (L-2m x P-30m)', 0, 0, 0, 'ROLL', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0291-0', 'HDP Grey T6 450Gsm (L-2m x P-30m)', 0, 0, 0, 'ROLL', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0292-0', ' Die Cutt Rebounded T=28 mm, 30 mm x 30 ', 0, 0, 0, 'PCS', 'PT. Graha Medika Est'),
('M-RMA-NMT-0293-0', ' Die Cutt Rebounded T=20 mm, 30 mm x 20 ', 0, 0, 0, 'PCS', 'PT. Graha Medika Est'),
('M-RMA-NMT-0294-0', ' Die Cutt Rebounded T=20 mm, 50 mm x 40 ', 0, 0, 0, 'PCS', 'PT. Graha Medika Est'),
('M-RMA-NMT-0295-0', ' Die Cutt Rebounded T=10 mm, 20 mm x 20 ', 0, 0, 0, 'PCS', 'PT. Graha Medika Est'),
('M-RMA-NMT-0296-0', ' Chusion 10 X 40 X 50 ', 0, 0, 0, 'PCS', 'PT. Tekarindo'),
('M-RMA-NMT-0297-0', ' Chusion 100 X 40 X 30 140 A ', 0, 0, 0, 'PCS', 'PT. Tekarindo'),
('M-RMA-NMT-0298-0', ' Chusion 80 X 40 X 35 140 A ', 0, 0, 0, 'PCS', 'PT. Tekarindo'),
('M-RMA-NMT-0299-0', 'Impraboard 3mm 605 X 1133 Cover Room', 0, 0, 0, 'SHEET', 'PT. Kreasi Dasatama'),
('M-RMA-NMT-0300-0', 'Impraboard 3mm x 1500 mm x 1250mm', 0, 0, 0, 'SHEET', 'PT. Kreasi Dasatama'),
('M-RMA-NMT-0301-0', 'PP DARK GREY 6 GL 1.0 X 1050', 0, 0, 0, 'ROLL', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0302-0', ' HDPE Flat Sheet Black  2,5 x 1150 x 125', 0, 0, 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0303-0', ' HDPE MARLEX 5202 1.8 X 1100 X 1050 MM ', 0, 0, 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0304-0', ' HDPE FLAT SHEET BLACK 1.8 X 1050 X 11OO', 0, 0, 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0305-0', ' HDPE Flat Sheet Black  2,0 x 1200 x 160', 0, 0, 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0306-0', ' HDPE Flat Sheet Black 2,5 x 950 x 1250 ', 0, 0, 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0308-0', ' HDPE Flat Sheet Black 2,5 x 950 x 1450 ', 0, 0, 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-Y9B-0241-0', ' TR.010.0.0.10x137x300A ', 0, 0, 0, 'METER', 'PT. APM ARMADA AUTOP'),
('M-RMA-Y9B-0244-0', ' Kain Exp 944D-8A ', 0, 0, 0, 'METER', 'PT. APM ARMADA AUTOP'),
('M-RMA-Y9B-0245-0', ' Cartoon Sheet ', 0, 0, 0, 'PCS', 'PT. Mandiri Jasatama'),
('M-RMA-Y9B-0258-0', 'DOOR 970', 0, 0, 0, 'METER', 'PT. APM ARMADA AUTOP'),
('M-RMA-Y9B-0261-0', 'CUTF FDT', 0, 0, 0, 'PCS', 'PT. APM ARMADA AUTOP'),
('M-RMA-Y9B-0264-0', 'DOOR B 10 / 1040 N', 0, 0, 0, 'ROLL', 'PT. APM ARMADA AUTOP'),
('M-RMA-Y9B-0265-0', 'DOOR IVORY [ 990 ]', 0, 0, 0, 'ROLL', 'PT. APM ARMADA AUTOP');

-- --------------------------------------------------------

--
-- Table structure for table `data_perencanaan`
--

CREATE TABLE IF NOT EXISTS `data_perencanaan` (
  `id_rencana` int(10) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `part_number` varchar(20) NOT NULL,
  `rata` varchar(20) NOT NULL,
  `lead` varchar(20) NOT NULL,
  `safety` varchar(20) NOT NULL,
  `tersedia` varchar(20) NOT NULL,
  `foi` varchar(20) NOT NULL,
  `order` varchar(20) NOT NULL,
  PRIMARY KEY (`id_rencana`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `data_persediaan`
--

CREATE TABLE IF NOT EXISTS `data_persediaan` (
  `part_number` varchar(40) NOT NULL,
  `stok_awal` varchar(10) NOT NULL DEFAULT '0',
  `masuk` varchar(10) NOT NULL DEFAULT '0',
  `keluar` varchar(10) NOT NULL DEFAULT '0',
  `stok_akhir` varchar(10) NOT NULL DEFAULT '0',
  `rata_keluar` varchar(10) NOT NULL DEFAULT '0',
  `safety_stok` varchar(10) NOT NULL DEFAULT '0',
  `stok_tersedia` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`part_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_persediaan`
--

INSERT INTO `data_persediaan` (`part_number`, `stok_awal`, `masuk`, `keluar`, `stok_akhir`, `rata_keluar`, `safety_stok`, `stok_tersedia`) VALUES
('', '10', '10', '0', '0', '0', '0', '10'),
('M-RMA-300-0249-0', '39', '39', '0', '0', '0', '0', '39'),
('M-RMA-CJM-0247-0', '2', '2', '0', '0', '0', '0', '2'),
('M-RMA-MET-0256-0', '5', '5', '0', '0', '0', '0', '5'),
('M-RMA-NMT-0001-0', '100', '920', '520', '0', '0', '0', '400'),
('M-RMA-NMT-0002-0', '100', '100', '10', '0', '0', '0', '90'),
('M-RMA-NMT-0003-0', '100', '690', '120', '0', '0', '0', '390'),
('M-RMA-NMT-0004-0', '100', '500', '349', '0', '0', '0', '151'),
('M-RMA-NMT-0005-0', '100', '120', '12', '0', '0', '0', '108'),
('M-RMA-NMT-0006-0', '100', '100', '10', '0', '0', '0', '90'),
('M-RMA-NMT-0007-0', '50', '140', '40', '0', '0', '0', '100'),
('M-RMA-NMT-0010-0', '10', '10', '0', '0', '0', '0', '10'),
('M-RMA-NMT-0013-0', '100', '150', '60', '0', '0', '0', '90'),
('M-RMA-NMT-0014-0', '100', '98', '2', '0', '0', '0', '96'),
('M-RMA-NMT-0015-0', '200', '200', '0', '0', '0', '0', '200'),
('M-RMA-NMT-0052-0', '24', '24', '0', '0', '0', '0', '24'),
('M-RMA-NMT-0053-0', '34', '34', '0', '0', '0', '0', '34'),
('M-RMA-NMT-0054-0', '237', '237', '0', '0', '0', '0', '237'),
('M-RMA-NMT-0055-0', '29', '29', '0', '0', '0', '0', '29'),
('M-RMA-NMT-0056-0', '129', '129', '0', '0', '0', '0', '129'),
('M-RMA-NMT-0057-0', '7', '7', '0', '0', '0', '0', '7'),
('M-RMA-NMT-0058-0', '8', '8', '0', '0', '0', '0', '8'),
('M-RMA-NMT-0059-0', '3', '3', '0', '0', '0', '0', '3'),
('M-RMA-NMT-0060-0', '31', '31', '0', '0', '0', '0', '31'),
('M-RMA-NMT-0061-0', '1', '1', '0', '0', '0', '0', '1'),
('M-RMA-NMT-0062-0', '12', '12', '0', '0', '0', '0', '12'),
('M-RMA-NMT-0064-0', '12', '12', '0', '0', '0', '0', '12'),
('M-RMA-NMT-0065-0', '12', '12', '0', '0', '0', '0', '12'),
('M-RMA-NMT-0073-0', '13', '13', '0', '0', '0', '0', '13'),
('M-RMA-NMT-0074-0', '375', '375', '0', '0', '0', '0', '375'),
('M-RMA-NMT-0080-0', '1174', '1174', '0', '0', '0', '0', '1174'),
('M-RMA-NMT-0094-0', '7200', '7200', '0', '0', '0', '0', '7200'),
('M-RMA-NMT-0095-0', '8000', '8000', '0', '0', '0', '0', '8000'),
('M-RMA-NMT-0097-0', '52000', '52000', '0', '0', '0', '0', '52000'),
('M-RMA-NMT-0098-0', '39400', '39400', '0', '0', '0', '0', '39400'),
('M-RMA-NMT-0099-0', '50000', '50000', '0', '0', '0', '0', '50000'),
('M-RMA-NMT-0130-0', ' 146 ', ' 146 ', '0', '0', '0', '0', ' 146 '),
('M-RMA-NMT-0131-0', '235', '235', '0', '0', '0', '0', '235'),
('M-RMA-NMT-0132-0', '196', '196', '0', '0', '0', '0', '196'),
('M-RMA-NMT-0136-0', '4', '4', '0', '0', '0', '0', '4'),
('M-RMA-NMT-0137-0', '13', '13', '0', '0', '0', '0', '13'),
('M-RMA-NMT-0147-0', '329', '329', '0', '0', '0', '0', '329'),
('M-RMA-NMT-0148-0', '329', '329', '0', '0', '0', '0', '329'),
('M-RMA-NMT-0149-0', '393', '393', '0', '0', '0', '0', '393'),
('M-RMA-NMT-0150-0', '393', '393', '0', '0', '0', '0', '393'),
('M-RMA-NMT-0151-0', '393', '393', '0', '0', '0', '0', '393'),
('M-RMA-NMT-0230-0', '280', '280', '0', '0', '0', '0', '280'),
('M-RMA-NMT-0242-0', '91', '91', '0', '0', '0', '0', '91'),
('M-RMA-NMT-0253-0', '7', '7', '0', '0', '0', '0', '7'),
('M-RMA-NMT-0254-0', '38', '38', '0', '0', '0', '0', '38'),
('M-RMA-NMT-0255-0', '21', '21', '0', '0', '0', '0', '21'),
('M-RMA-NMT-0257-0', '97', '97', '0', '0', '0', '0', '97'),
('M-RMA-NMT-0259-0', '7', '7', '0', '0', '0', '0', '7'),
('M-RMA-NMT-0266-0', '11348', '11348', '0', '0', '0', '0', '11348'),
('M-RMA-NMT-0267-0', '1609', '1609', '0', '0', '0', '0', '1609'),
('M-RMA-NMT-0270-0', '21', '21', '0', '0', '0', '0', '21'),
('M-RMA-NMT-0271-0', '8592', '8592', '0', '0', '0', '0', '8592'),
('M-RMA-NMT-0282-0', '75', '75', '0', '0', '0', '0', '75'),
('M-RMA-NMT-0283-0', '21', '21', '0', '0', '0', '0', '21'),
('M-RMA-NMT-0284-0', '45', '45', '0', '0', '0', '0', '45'),
('M-RMA-NMT-0285-0', '5', '5', '0', '0', '0', '0', '5'),
('M-RMA-NMT-0287-0', '74', '74', '0', '0', '0', '0', '74'),
('M-RMA-NMT-0288-0', '57', '57', '0', '0', '0', '0', '57'),
('M-RMA-NMT-0289-0', '45', '45', '0', '0', '0', '0', '45'),
('M-RMA-NMT-0290-0', '23', '23', '0', '0', '0', '0', '23'),
('M-RMA-NMT-0291-0', '54', '54', '0', '0', '0', '0', '54'),
('M-RMA-NMT-0293-0', '12400', '12400', '0', '0', '0', '0', '12400'),
('M-RMA-NMT-0294-0', '8700', '8700', '0', '0', '0', '0', '8700'),
('M-RMA-NMT-0295-0', '10481', '10481', '0', '0', '0', '0', '10481'),
('M-RMA-NMT-0296-0', '12000', '12000', '0', '0', '0', '0', '12000'),
('M-RMA-NMT-0297-0', '3350', '3350', '0', '0', '0', '0', '3350'),
('M-RMA-NMT-0298-0', '2250', '2250', '0', '0', '0', '0', '2250'),
('M-RMA-NMT-0299-0', '350', '350', '0', '0', '0', '0', '350'),
('M-RMA-NMT-0300-0', '50', '50', '0', '0', '0', '0', '50'),
('M-RMA-NMT-0302-0', '20', '20', '0', '0', '0', '0', '20'),
('M-RMA-NMT-0304-0', '40', '40', '0', '0', '0', '0', '40'),
('M-RMA-NMT-0305-0', '360', '360', '0', '0', '0', '0', '360'),
('M-RMA-NMT-0306-0', '60', '60', '0', '0', '0', '0', '60'),
('M-RMA-NMT-0308-0', '60', '60', '0', '0', '0', '0', '60'),
('M-RMA-Y9B-0241-0', '5', '5', '0', '0', '0', '0', '5'),
('M-RMA-Y9B-0244-0', '1', '1', '0', '0', '0', '0', '1'),
('M-RMA-Y9B-0245-0', '2375', '2375', '0', '0', '0', '0', '2375'),
('M-RMA-Y9B-0258-0', '2', '2', '0', '0', '0', '0', '2'),
('M-RMA-Y9B-0261-0', '1600', '1600', '0', '0', '0', '0', '1600'),
('M-RMA-Y9B-0264-0', '61', '61', '0', '0', '0', '0', '61'),
('M-RMA-Y9B-0265-0', '4', '4', '0', '0', '0', '0', '4');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `login_hash` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`username`, `password`, `login_hash`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'administrator'),
('asniwati', '202cb962ac59075b964b07152d234b70', 'gudang'),
('astri', '202cb962ac59075b964b07152d234b70', 'sekretaris'),
('edwin', '202cb962ac59075b964b07152d234b70', 'pimpinan'),
('g', 'b2f5ff47436671b6e533d8dc3614845d', 'gudang'),
('gudang', '202446dd1d6028084426867365b0c7a1', 'gudang'),
('p', '83878c91171338902e0fe0fb97a8c47a', 'pimpinan'),
('pimpinan', '90973652b88fe07d05a4304f0a945de8', 'pimpinan'),
('s', '03c7c0ace395d80182db07ae2c30f034', 'sekretaris'),
('sekretaris', 'ce1023b227de5c34b98c470cda4699bb', 'sekretaris');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
