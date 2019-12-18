-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2017 at 12:38 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gpsdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE IF NOT EXISTS `barang_keluar` (
  `id_keluar` int(20) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `part_number` int(40) NOT NULL,
  `jumlah` int(10) NOT NULL,
  PRIMARY KEY (`id_keluar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_keluar`, `tgl`, `part_number`, `jumlah`) VALUES
(1, '2012-01-16', 3, 14),
(2, '2012-02-20', 3, 14),
(3, '2012-03-30', 3, 23),
(4, '2012-04-30', 3, 20),
(5, '2012-05-30', 3, 19),
(6, '2012-06-30', 3, 20),
(7, '2012-07-31', 3, 42),
(8, '2012-08-31', 3, 14),
(9, '2012-09-30', 3, 51),
(10, '2012-10-31', 3, 22),
(11, '2012-11-30', 3, 31),
(12, '2012-12-31', 3, 31),
(13, '2017-07-28', 3, 12),
(14, '2017-07-28', 3, 30),
(15, '2017-07-28', 9, 99);

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE IF NOT EXISTS `barang_masuk` (
  `id_masuk` int(20) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `part_number` varchar(30) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  PRIMARY KEY (`id_masuk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_masuk`, `tgl`, `part_number`, `jumlah`) VALUES
(1, '2012-01-01', '3', '63'),
(2, '2012-04-01', '3', '30'),
(3, '2012-05-14', '3', '30'),
(4, '2012-07-28', '3', '10'),
(5, '2012-08-31', '3', '50'),
(6, '2012-09-13', '3', '31'),
(7, '2012-09-24', '3', '25'),
(8, '2012-10-25', '3', '45'),
(9, '2012-12-06', '3', '60'),
(10, '2017-07-28', '9', '100'),
(11, '2017-07-28', 'M-RMA-NMT-0001-0', '100'),
(12, '2017-07-28', 'M-RMA-NMT-0001-0', '100'),
(13, '2017-07-28', 'M-RMA-NMT-0002-0', '100'),
(14, '2017-07-28', 'M-RMA-NMT-0003-0', '100');

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE IF NOT EXISTS `data_barang` (
  `part_number` varchar(16) NOT NULL,
  `part_name` varchar(40) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `supplier` varchar(20) NOT NULL,
  PRIMARY KEY (`part_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`part_number`, `part_name`, `satuan`, `supplier`) VALUES
('M-RMA-NMT-0001-0', 'FLOOR CARPET 115 A F', 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0002-0', 'FLOOR CARPET 115 A R', 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0003-0', 'FLOOR CARPET 61J-BR.0 @10 pcs', 'SHEET', 'PT. HERCULON CARPET');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `data_perencanaan`
--

INSERT INTO `data_perencanaan` (`id_rencana`, `tgl`, `part_number`, `rata`, `lead`, `safety`, `tersedia`, `foi`, `order`) VALUES
(2, '2013-06-01', '3', '18', '2', '7.466481923905', '43', '0.46648192390499', '0'),
(3, '2013-03-01', '3', '14', '4', '0', '43', '13', '0');

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
('3', '63', '344', '343', '0', '0', '0', '1'),
('9', '100', '100', '99', '0', '0', '0', '1'),
('M-RMA-NMT-0001-0', '100', '100', '0', '0', '0', '0', '100'),
('M-RMA-NMT-0002-0', '100', '100', '0', '0', '0', '0', '100'),
('M-RMA-NMT-0003-0', '100', '100', '0', '0', '0', '0', '100');

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
('s', '03c7c0ace395d80182db07ae2c30f034', 'sekretaris');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
