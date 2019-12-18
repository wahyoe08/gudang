-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 04 Agu 2018 pada 09.27
-- Versi Server: 5.5.32
-- Versi PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `cdcol`
--
CREATE DATABASE IF NOT EXISTS `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Basis data: `db_mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `db_mahasiswa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_mahasiswa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `npm` varchar(30) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `npm`, `nama_mahasiswa`, `jurusan`) VALUES
(1, '432007006130038', 'hilman effendi', 'teknik informatika'),
(2, '109', 'wahyu', 'si');
--
-- Basis data: `gpsdata`
--
CREATE DATABASE IF NOT EXISTS `gpsdata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gpsdata`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data untuk tabel `barang_keluar`
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
(52, '2017-08-21', '1234/RMA/BOB/X/17', 'M-RMA-NMT-0001-0', 'Bagus', '40', 0, 0, 40000),
(53, '2018-07-28', '', 'M-RMA-NMT-0074-0', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=145 ;

--
-- Dumping data untuk tabel `barang_masuk`
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
(138, '1970-01-01', '', 'M-RMA-NMT-0095-0', '', '8000', 0, 8000, 0),
(139, '2018-07-21', '1', 'M-RMA-NMT-0001-0', 'Yadi', '12', 0, 412, 24000),
(140, '2018-07-23', '123', 'M-RMA-NMT-0020-0', 'Wahyu', '100', 0, 100, 0),
(141, '1970-01-01', '124', 'M-RMA-NMT-0021-0', 'Yuli', '100', 0, 100, 0),
(142, '2018-07-24', '125', 'M-RMA-NMT-0129-0', '', '100', 0, 100, 0),
(143, '1970-01-01', '126', 'M-RMA-NMT-0134-0', '', '100', 0, 100, 0),
(144, '1970-01-01', '90', 'M-RMA-NMT-0004-0', 'Yulia', '90', 0, 241, 90000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE IF NOT EXISTS `data_barang` (
  `part_number` varchar(16) NOT NULL,
  `part_name` varchar(40) NOT NULL,
  `harga` int(11) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `supplier` varchar(20) NOT NULL,
  PRIMARY KEY (`part_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`part_number`, `part_name`, `harga`, `satuan`, `supplier`) VALUES
('F0001', 'Hardboard', 4000, 'SHEET', 'PT. HILON'),
('M-RMA-NMT-0001-0', 'FLOOR CARPET 115 A F', 2000, 'ROLL', 'PT. HILON'),
('M-RMA-NMT-0002-0', 'FLOOR CARPET 115 A R', 2000, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0003-0', 'FLOOR CARPET 61J-BR.0 @10 pcs', 3000, 'SHEET', 'PT. Eterna Gelora Pu'),
('M-RMA-NMT-0004-0', 'FLOOR CARPET 61J-CR.0', 1000, 'SHEET', 'PT. Eterna Gelora Pu'),
('M-RMA-NMT-0020-0', 'HDP GREY T 30/600', 5000, 'SHEET', 'PT. HILON'),
('M-RMA-NMT-0021-0', 'HDP GREY T 50/2000', 3500, 'SHEET', 'PT. HILON'),
('M-RMA-NMT-0052-0', 'DOUBLE TAPE 8370s 25x 50m', 6000, 'ROLL', 'PT. Eterna Gelora Pu'),
('M-RMA-NMT-0053-0', 'DOUBLE TAPE 8370s 50x 50m', 4000, 'SHEET', 'PT. HILON'),
('M-RMA-NMT-0054-0', 'DOUBLE TAPE 9007', 3000, 'SHEET', 'PT. HILON'),
('M-RMA-NMT-0055-0', 'DOUBLE TAPE 8370s 30 x 50m', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0056-0', 'DOUBLE TAPE 8370s 40 x 50m', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0057-0', 'DOUBLE TAPE 9075 I 300mm x 50m', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0058-0', 'DOUBLE TAPE 9075 I 1020mm x 50m', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0059-0', 'DOUBLE TAPE 9075 I 340mm x 50m', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0060-0', 'DOUBLE TAPE 9075 I 360 x 50m', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0061-0', 'DOUBLE TAPE 9075 I 25mm x 50m', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0062-0', 'DOUBLE TAPE 9075 I 75mm x 50m', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0064-0', 'DT 8370 Liner Biru 150mm x 50m', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0065-0', 'Double Tape 468 9 cm x 55 m', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0074-0', 'HDP White 1200 gr', 0, 'SHEET', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0080-0', 'IMPRABOARD 1160 X 640', 0, 'SHEET', 'PT. Kreasi Dasatama'),
('M-RMA-NMT-0094-0', 'PLATE LUGGAGE BOX FLAP NO.1', 0, 'PCS', 'PT. NACO TEKNOLOGI'),
('M-RMA-NMT-0095-0', 'PLATE LUGGAGE BOX FLAP NO.2', 0, 'PCS', 'PT. NACO TEKNOLOGI'),
('M-RMA-NMT-0097-0', 'RIVET LUBANG No. 1 L : 9.5', 0, 'PCS', 'PT. Ginsa Inti Prata'),
('M-RMA-NMT-0098-0', 'RIVET LUBANG No. 1 L : 11.5', 0, 'PCS', 'PT. Ginsa Inti Prata'),
('M-RMA-NMT-0099-0', 'RING PLATE Washer D 1:3,5 mm D2:8mm T : ', 0, 'PCS', 'PT. Ginsa Inti Prata'),
('M-RMA-NMT-0129-0', 'MAGIC TAPE MALE AL UK 20 MM X 20M', 0, 'ROLL', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0130-0', 'MAGIC TAPE FEMALE AL UK 20 MM X 20M', 0, 'ROLL', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0131-0', 'MAGIC TAPE MALE AL UK 25 MM X 20M', 0, 'ROLL', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0132-0', 'MAGIC TAPE FEMALE BL UK 25 MMX 20M', 0, 'ROLL', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0134-0', 'MAGIC TAPE FEMALE BL 16 MM X 20M', 0, 'ROLL', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0136-0', 'ISI STRAPLES 1006J', 0, 'PCS', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0137-0', 'ISI STRAPLES 1003 J', 0, 'PCS', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0147-0', 'Trim Roof Headlining Roof Apv No.1', 0, 'PCS', 'PT. Garuda Mas Tangk'),
('M-RMA-NMT-0148-0', 'Trim Roof Headlining Roof Apv No.2', 0, 'PCS', 'PT. Garuda Mas Tangk'),
('M-RMA-NMT-0149-0', 'Trim Roof Headlining Roof Apv No.3', 0, 'PCS', 'PT. Garuda Mas Tangk'),
('M-RMA-NMT-0150-0', 'Trim Roof Headlining Roof Apv No.4', 0, 'PCS', 'PT. Garuda Mas Tangk'),
('M-RMA-NMT-0151-0', 'Trim Roof Headlining Roof Apv No.5', 0, 'PCS', 'PT. Garuda Mas Tangk'),
('M-RMA-NMT-0230-0', 'HDPE Flat Sheet Colour Black 2.30x1200x1', 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0231-0', 'HDPE Flat Sheet Colour Black 1.5x1050x13', 7000, 'SHEET', 'PT. HILON'),
('M-RMA-NMT-0242-0', ' Door 420.A 0.25x100x50GY ', 0, 'METER', 'PT. APM ARMADA AUTOP'),
('M-RMA-NMT-0243-0', ' TR.010.04.0.04x125x500m ', 0, 'SHEET', 'PT. MULTIWARNA'),
('M-RMA-NMT-0253-0', 'BENANG SEWING GREY  656', 0, 'CONE', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0254-0', 'BENANG SEWING ABU2   246', 0, 'CONE', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0255-0', 'Benang Sewing Beige', 0, 'CONE', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0257-0', ' Benang sewing hitam ', 0, 'CONE', 'CV. Citra Baru Mandi'),
('M-RMA-NMT-0259-0', 'PVC KBCC', 0, 'ROLL', 'PT. APM ARMADA AUTOP'),
('M-RMA-NMT-0260-0', 'KARDUS PAKING [ SPARE PART ] SUZUKI', 0, 'ROLL', 'PT. APM ARMADA AUTOP'),
('M-RMA-NMT-0263-0', 'PLASTIK PACKING 50 X110  0.7', 0, 'KG', 'PT. APM ARMADA AUTOP'),
('M-RMA-NMT-0266-0', 'FU FOAM : 140 x 80 x 3', 0, 'PCS', 'PT. AMSTRONG'),
('M-RMA-NMT-0267-0', 'FU FOAM ;  140 X 130 X 6', 0, 'PCS', 'PT. AMSTRONG'),
('M-RMA-NMT-0268-0', 'FU FOAM 170 X 70 X 3', 0, 'PCS', 'PT. AMSTRONG'),
('M-RMA-NMT-0268-1', 'NITO TAPE COKLAT 15 mm x 50', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0269-0', 'AUXILIARY TAPE MERAH', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0270-0', 'DT 601 CENTURI 15 X 50', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0271-0', ' Felt 1mm x 20 x 40 ', 0, 'PCS', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0272-0', ' DT 9007 1.050 mm x 50 m ', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0282-0', 'DT C11L4 20MM X 50M', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0283-0', ' DT CENTURY 60 x 50 m foam ', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0284-0', ' DT NITTO 501 L 20MMX50 HEADLENING ', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0285-0', ' DT NITTO 512 L 30MMX50MM ', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0286-0', ' DT C11L4  8 x 50 m ', 0, 'ROLL', 'PT. Andalira Cipta A'),
('M-RMA-NMT-0287-0', ' HDP Grey T. 50/1200Gsm ', 0, 'PCS', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0288-0', ' HDP Grey T. 30/600Gsm ', 0, 'PCS', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0289-0', ' HDP Grey T10 400Gsm (L-2m x P-30m) ', 0, 'METER', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0290-0', 'HDP White T10 500Gsm (L-2m x P-30m)', 0, 'ROLL', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0291-0', 'HDP Grey T6 450Gsm (L-2m x P-30m)', 0, 'ROLL', 'PT. Falmaco Indonesi'),
('M-RMA-NMT-0292-0', ' Die Cutt Rebounded T=28 mm, 30 mm x 30 ', 0, 'PCS', 'PT. Graha Medika Est'),
('M-RMA-NMT-0293-0', ' Die Cutt Rebounded T=20 mm, 30 mm x 20 ', 0, 'PCS', 'PT. Graha Medika Est'),
('M-RMA-NMT-0294-0', ' Die Cutt Rebounded T=20 mm, 50 mm x 40 ', 0, 'PCS', 'PT. Graha Medika Est'),
('M-RMA-NMT-0295-0', ' Die Cutt Rebounded T=10 mm, 20 mm x 20 ', 0, 'PCS', 'PT. Graha Medika Est'),
('M-RMA-NMT-0296-0', ' Chusion 10 X 40 X 50 ', 0, 'PCS', 'PT. Tekarindo'),
('M-RMA-NMT-0297-0', ' Chusion 100 X 40 X 30 140 A ', 0, 'PCS', 'PT. Tekarindo'),
('M-RMA-NMT-0298-0', ' Chusion 80 X 40 X 35 140 A ', 0, 'PCS', 'PT. Tekarindo'),
('M-RMA-NMT-0299-0', 'Impraboard 3mm 605 X 1133 Cover Room', 0, 'SHEET', 'PT. Kreasi Dasatama'),
('M-RMA-NMT-0300-0', 'Impraboard 3mm x 1500 mm x 1250mm', 0, 'SHEET', 'PT. Kreasi Dasatama'),
('M-RMA-NMT-0301-0', 'PP DARK GREY 6 GL 1.0 X 1050', 0, 'ROLL', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0302-0', ' HDPE Flat Sheet Black  2,5 x 1150 x 125', 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0303-0', ' HDPE MARLEX 5202 1.8 X 1100 X 1050 MM ', 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0304-0', ' HDPE FLAT SHEET BLACK 1.8 X 1050 X 11OO', 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0305-0', ' HDPE Flat Sheet Black  2,0 x 1200 x 160', 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0306-0', ' HDPE Flat Sheet Black 2,5 x 950 x 1250 ', 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-NMT-0308-0', ' HDPE Flat Sheet Black 2,5 x 950 x 1450 ', 0, 'SHEET', 'PT. LEO INDO KREASI'),
('M-RMA-Y9B-0241-0', ' TR.010.0.0.10x137x300A ', 0, 'METER', 'PT. APM ARMADA AUTOP'),
('M-RMA-Y9B-0244-0', ' Kain Exp 944D-8A ', 0, 'METER', 'PT. APM ARMADA AUTOP'),
('M-RMA-Y9B-0245-0', ' Cartoon Sheet ', 0, 'PCS', 'PT. Mandiri Jasatama'),
('M-RMA-Y9B-0258-0', 'DOOR 970', 0, 'METER', 'PT. APM ARMADA AUTOP'),
('M-RMA-Y9B-0261-0', 'CUTF FDT', 0, 'PCS', 'PT. APM ARMADA AUTOP'),
('M-RMA-Y9B-0264-0', 'DOOR B 10 / 1040 N', 0, 'ROLL', 'PT. APM ARMADA AUTOP'),
('M0001', 'Keys', 25000, 'ROLL', 'PT. Kreasi Dasatama'),
('MM-0001', 'Hardboard', 4000, 'SHEET', ''),
('P0001', 'DOOR 290 0.25X110X50 GY', 12, 'SHEET', 'PT. MULTIWARNA'),
('RMA-M-0001', 'Felt', 100000, 'SHEET', ''),
('RMA-M-0002', 'Hardboard', 90000, 'SHEET', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_perencanaan`
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
-- Struktur dari tabel `data_persediaan`
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
-- Dumping data untuk tabel `data_persediaan`
--

INSERT INTO `data_persediaan` (`part_number`, `stok_awal`, `masuk`, `keluar`, `stok_akhir`, `rata_keluar`, `safety_stok`, `stok_tersedia`) VALUES
('', '10', '10', '0', '0', '0', '0', '10'),
('M-RMA-300-0249-0', '39', '39', '0', '0', '0', '0', '39'),
('M-RMA-CJM-0247-0', '2', '2', '0', '0', '0', '0', '2'),
('M-RMA-MET-0256-0', '5', '5', '0', '0', '0', '0', '5'),
('M-RMA-NMT-0001-0', '100', '932', '520', '0', '0', '0', '412'),
('M-RMA-NMT-0002-0', '100', '100', '10', '0', '0', '0', '90'),
('M-RMA-NMT-0003-0', '100', '690', '120', '0', '0', '0', '390'),
('M-RMA-NMT-0004-0', '100', '590', '349', '0', '0', '0', '241'),
('M-RMA-NMT-0005-0', '100', '120', '12', '0', '0', '0', '108'),
('M-RMA-NMT-0006-0', '100', '100', '10', '0', '0', '0', '90'),
('M-RMA-NMT-0007-0', '50', '140', '40', '0', '0', '0', '100'),
('M-RMA-NMT-0010-0', '10', '10', '0', '0', '0', '0', '10'),
('M-RMA-NMT-0013-0', '100', '150', '60', '0', '0', '0', '90'),
('M-RMA-NMT-0014-0', '100', '98', '2', '0', '0', '0', '96'),
('M-RMA-NMT-0015-0', '200', '200', '0', '0', '0', '0', '200'),
('M-RMA-NMT-0020-0', '100', '100', '0', '0', '0', '0', '100'),
('M-RMA-NMT-0021-0', '100', '100', '0', '0', '0', '0', '100'),
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
('M-RMA-NMT-0129-0', '100', '100', '0', '0', '0', '0', '100'),
('M-RMA-NMT-0130-0', ' 146 ', ' 146 ', '0', '0', '0', '0', ' 146 '),
('M-RMA-NMT-0131-0', '235', '235', '0', '0', '0', '0', '235'),
('M-RMA-NMT-0132-0', '196', '196', '0', '0', '0', '0', '196'),
('M-RMA-NMT-0134-0', '100', '100', '0', '0', '0', '0', '100'),
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
-- Struktur dari tabel `data_supplier`
--

CREATE TABLE IF NOT EXISTS `data_supplier` (
  `kode_supplier` varchar(16) NOT NULL,
  `nama_supplier` varchar(40) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_supplier`
--

INSERT INTO `data_supplier` (`kode_supplier`, `nama_supplier`, `alamat`, `no_telp`) VALUES
('S0003', 'PT. HILON', 'Jalan Manggarai', '089784758493'),
('S0004', 'PT. Kreasi Dasatama', 'Jalan Jonggol', '087683778394'),
('S0005', 'PT. Tekarindo', 'Jalan Baru 1', '2147483647'),
('S0006', 'PT. Eterna Gelora Putra', 'Jalan Kramat Asem III', '089388227423'),
('S0007', 'PT. Rekadaya Kreasi Indonesia', 'Jalan Binaharapan', '087672889384'),
('S0008', 'PT. Maju', 'Bekasi', '087672819921');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `login_hash` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_login`
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
--
-- Basis data: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"gpsdata","table":"data_supplier"},{"db":"gpsdata","table":"barang_keluar"},{"db":"gpsdata","table":"barang_masuk"},{"db":"gpsdata","table":"data_barang"},{"db":"gpsdata","table":"data_perencanaan"},{"db":"gpsdata","table":"user_login"},{"db":"spk_ahp","table":"ahp_data_kriteria"},{"db":"spk_ahp","table":"ahp_data_alternatif"},{"db":"spk_ahp","table":"ahp_analisa_kriteria"},{"db":"db_mahasiswa","table":"tb_mahasiswa"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-08-04 06:57:23', '{"collation_connection":"utf8mb4_unicode_ci","lang":"id"}');
--
-- Basis data: `spk_ahp`
--
CREATE DATABASE IF NOT EXISTS `spk_ahp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spk_ahp`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahp_analisa_alternatif`
--

CREATE TABLE IF NOT EXISTS `ahp_analisa_alternatif` (
  `alternatif_pertama` varchar(2) NOT NULL,
  `nilai_analisa_alternatif` double NOT NULL,
  `hasil_analisa_alternatif` double NOT NULL,
  `alternatif_kedua` varchar(2) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  PRIMARY KEY (`alternatif_pertama`,`alternatif_kedua`,`id_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ahp_analisa_alternatif`
--

INSERT INTO `ahp_analisa_alternatif` (`alternatif_pertama`, `nilai_analisa_alternatif`, `hasil_analisa_alternatif`, `alternatif_kedua`, `id_kriteria`) VALUES
('A1', 1, 0.61179898033503, 'A1', 'C1'),
('A1', 1, 0.47058823529412, 'A1', 'C2'),
('A1', 1, 0.09375, 'A1', 'C3'),
('A1', 1, 0.087366689383339, 'A1', 'C4'),
('A1', 1, 0.073657552474568, 'A1', 'C5'),
('A1', 8, 0.79338842975207, 'A2', 'C1'),
('A1', 6, 0.34123222748815, 'A2', 'C2'),
('A1', 3, 0.22237002490505, 'A2', 'C3'),
('A1', 4, 0.39204144101719, 'A2', 'C4'),
('A1', 0.143, 0.021799888205701, 'A2', 'C5'),
('A1', 7, 0.57207718501703, 'A3', 'C1'),
('A1', 2, 0.16326530612245, 'A3', 'C2'),
('A1', 3, 0.29268292682927, 'A3', 'C3'),
('A1', 5, 0.3804347826087, 'A3', 'C4'),
('A1', 3, 0.17448954689661, 'A3', 'C5'),
('A1', 6, 0.31168831168831, 'A4', 'C1'),
('A1', 8, 0.65024774829749, 'A4', 'C2'),
('A1', 0.25, 0.043475740536781, 'A4', 'C3'),
('A1', 0.143, 0.015930780942478, 'A4', 'C4'),
('A1', 0.2, 0.043994691571449, 'A4', 'C5'),
('A1', 5, 0.25, 'A5', 'C1'),
('A1', 3, 0.26471366804906, 'A5', 'C2'),
('A1', 0.2, 0.041814760610496, 'A5', 'C3'),
('A1', 0.333, 0.064459930313589, 'A5', 'C4'),
('A1', 4, 0.27907625758739, 'A5', 'C5'),
('A2', 0.125, 0.076474872541879, 'A1', 'C1'),
('A2', 0.16666666666667, 0.078431372549021, 'A1', 'C2'),
('A2', 0.33333333333333, 0.03125, 'A1', 'C3'),
('A2', 0.25, 0.021841672345835, 'A1', 'C4'),
('A2', 6.993006993007, 0.51508777954243, 'A1', 'C5'),
('A2', 1, 0.099173553719008, 'A2', 'C1'),
('A2', 1, 0.056872037914692, 'A2', 'C2'),
('A2', 1, 0.074123341635016, 'A2', 'C3'),
('A2', 1, 0.098010360254297, 'A2', 'C4'),
('A2', 1, 0.15244677066924, 'A2', 'C5'),
('A2', 4, 0.32690124858116, 'A3', 'C1'),
('A2', 4, 0.3265306122449, 'A3', 'C2'),
('A2', 2, 0.19512195121951, 'A3', 'C3'),
('A2', 5, 0.3804347826087, 'A3', 'C4'),
('A2', 6, 0.34897909379322, 'A3', 'C5'),
('A2', 3, 0.15584415584416, 'A4', 'C1'),
('A2', 0.1, 0.0081280968537187, 'A4', 'C2'),
('A2', 0.167, 0.029041794678569, 'A4', 'C3'),
('A2', 0.5, 0.055702031267407, 'A4', 'C4'),
('A2', 0.2, 0.043994691571449, 'A4', 'C5'),
('A2', 2, 0.1, 'A5', 'C1'),
('A2', 3, 0.26471366804906, 'A5', 'C2'),
('A2', 0.333, 0.069621576416475, 'A5', 'C3'),
('A2', 0.333, 0.064459930313589, 'A5', 'C4'),
('A2', 4, 0.27907625758739, 'A5', 'C5'),
('A3', 0.14285714285714, 0.087399854333574, 'A1', 'C1'),
('A3', 0.5, 0.23529411764706, 'A1', 'C2'),
('A3', 0.33333333333333, 0.03125, 'A1', 'C3'),
('A3', 0.2, 0.017473337876668, 'A1', 'C4'),
('A3', 0.33333333333333, 0.024552517491522, 'A1', 'C5'),
('A3', 0.25, 0.024793388429752, 'A2', 'C1'),
('A3', 0.25, 0.014218009478673, 'A2', 'C2'),
('A3', 0.5, 0.037061670817508, 'A2', 'C3'),
('A3', 0.2, 0.019602072050859, 'A2', 'C4'),
('A3', 0.16666666666667, 0.025407795111541, 'A2', 'C5'),
('A3', 1, 0.081725312145289, 'A3', 'C1'),
('A3', 1, 0.081632653061224, 'A3', 'C2'),
('A3', 1, 0.097560975609756, 'A3', 'C3'),
('A3', 1, 0.076086956521739, 'A3', 'C4'),
('A3', 1, 0.058163182298869, 'A3', 'C5'),
('A3', 9, 0.46753246753247, 'A4', 'C1'),
('A3', 0.2, 0.016256193707437, 'A4', 'C2'),
('A3', 4, 0.69561184858849, 'A4', 'C3'),
('A3', 7, 0.7798284377437, 'A4', 'C4'),
('A3', 0.143, 0.031456204473586, 'A4', 'C5'),
('A3', 8, 0.4, 'A5', 'C1'),
('A3', 4, 0.35295155739875, 'A5', 'C2'),
('A3', 0.25, 0.052268450763119, 'A5', 'C3'),
('A3', 0.5, 0.096786682152536, 'A5', 'C4'),
('A3', 5, 0.34884532198423, 'A5', 'C5'),
('A4', 0.16666666666667, 0.10196649672251, 'A1', 'C1'),
('A4', 0.125, 0.058823529411765, 'A1', 'C2'),
('A4', 4, 0.375, 'A1', 'C3'),
('A4', 6.993006993007, 0.61095586981356, 'A1', 'C4'),
('A4', 5, 0.36828776237284, 'A1', 'C5'),
('A4', 0.33333333333333, 0.033057851239669, 'A2', 'C1'),
('A4', 10, 0.56872037914692, 'A2', 'C2'),
('A4', 5.9880239520958, 0.44385234511986, 'A2', 'C3'),
('A4', 2, 0.19602072050859, 'A2', 'C4'),
('A4', 5, 0.76223385334621, 'A2', 'C5'),
('A4', 0.11111111111111, 0.0090805902383654, 'A3', 'C1'),
('A4', 5, 0.40816326530612, 'A3', 'C2'),
('A4', 0.25, 0.024390243902439, 'A3', 'C3'),
('A4', 0.14285714285714, 0.010869565217391, 'A3', 'C4'),
('A4', 6.993006993007, 0.40673554055153, 'A3', 'C5'),
('A4', 1, 0.051948051948052, 'A4', 'C1'),
('A4', 1, 0.081280968537187, 'A4', 'C2'),
('A4', 1, 0.17390296214712, 'A4', 'C3'),
('A4', 1, 0.11140406253481, 'A4', 'C4'),
('A4', 1, 0.21997345785725, 'A4', 'C5'),
('A4', 4, 0.2, 'A5', 'C1'),
('A4', 0.333, 0.029383217153446, 'A5', 'C2'),
('A4', 3, 0.62722140915743, 'A5', 'C3'),
('A4', 3, 0.58072009291521, 'A5', 'C4'),
('A4', 0.333, 0.02323309844415, 'A5', 'C5'),
('A5', 0.2, 0.12235979606701, 'A1', 'C1'),
('A5', 0.33333333333333, 0.15686274509804, 'A1', 'C2'),
('A5', 5, 0.46875, 'A1', 'C3'),
('A5', 3.003003003003, 0.2623624305806, 'A1', 'C4'),
('A5', 0.25, 0.018414388118642, 'A1', 'C5'),
('A5', 0.5, 0.049586776859504, 'A2', 'C1'),
('A5', 0.33333333333333, 0.018957345971564, 'A2', 'C2'),
('A5', 3.003003003003, 0.22259261752257, 'A2', 'C3'),
('A5', 3.003003003003, 0.29432540616906, 'A2', 'C4'),
('A5', 0.25, 0.03811169266731, 'A2', 'C5'),
('A5', 0.125, 0.010215664018161, 'A3', 'C1'),
('A5', 0.25, 0.020408163265306, 'A3', 'C2'),
('A5', 4, 0.39024390243902, 'A3', 'C3'),
('A5', 2, 0.15217391304348, 'A3', 'C4'),
('A5', 0.2, 0.011632636459774, 'A3', 'C5'),
('A5', 0.25, 0.012987012987013, 'A4', 'C1'),
('A5', 3.003003003003, 0.24408699260416, 'A4', 'C2'),
('A5', 0.33333333333333, 0.05796765404904, 'A4', 'C3'),
('A5', 0.33333333333333, 0.037134687511604, 'A4', 'C4'),
('A5', 3.003003003003, 0.66058095452627, 'A4', 'C5'),
('A5', 1, 0.05, 'A5', 'C1'),
('A5', 1, 0.088237889349687, 'A5', 'C2'),
('A5', 1, 0.20907380305248, 'A5', 'C3'),
('A5', 1, 0.19357336430507, 'A5', 'C4'),
('A5', 1, 0.069769064396846, 'A5', 'C5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahp_analisa_kriteria`
--

CREATE TABLE IF NOT EXISTS `ahp_analisa_kriteria` (
  `kriteria_pertama` varchar(2) NOT NULL,
  `nilai_analisa_kriteria` double NOT NULL,
  `hasil_analisa_kriteria` double NOT NULL,
  `kriteria_kedua` varchar(2) NOT NULL,
  PRIMARY KEY (`kriteria_pertama`,`kriteria_kedua`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ahp_analisa_kriteria`
--

INSERT INTO `ahp_analisa_kriteria` (`kriteria_pertama`, `nilai_analisa_kriteria`, `hasil_analisa_kriteria`, `kriteria_kedua`) VALUES
('C1', 1, 0.49180327868853, 'C1'),
('C1', 5, 0.48373038930854, 'C2'),
('C1', 6, 0.703125, 'C3'),
('C1', 3, 0.29033194619181, 'C4'),
('C1', 3, 0.27272727272727, 'C5'),
('C2', 0.2, 0.098360655737705, 'C1'),
('C2', 1, 0.096746077861708, 'C2'),
('C2', 1, 0.1171875, 'C3'),
('C2', 0.333, 0.032226846027291, 'C4'),
('C2', 3, 0.27272727272727, 'C5'),
('C3', 0.16666666666667, 0.081967213114756, 'C1'),
('C3', 1, 0.096746077861708, 'C2'),
('C3', 1, 0.1171875, 'C3'),
('C3', 5, 0.48388657698635, 'C4'),
('C3', 3, 0.27272727272727, 'C5'),
('C4', 0.33333333333333, 0.16393442622951, 'C1'),
('C4', 3.003003003003, 0.29052876234747, 'C2'),
('C4', 0.2, 0.0234375, 'C3'),
('C4', 1, 0.096777315397271, 'C4'),
('C4', 1, 0.090909090909091, 'C5'),
('C5', 0.33333333333333, 0.16393442622951, 'C1'),
('C5', 0.33333333333333, 0.032248692620569, 'C2'),
('C5', 0.33333333333333, 0.0390625, 'C3'),
('C5', 1, 0.096777315397271, 'C4'),
('C5', 1, 0.090909090909091, 'C5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahp_data_alternatif`
--

CREATE TABLE IF NOT EXISTS `ahp_data_alternatif` (
  `id_alternatif` varchar(2) NOT NULL,
  `nama_alternatif` varchar(45) NOT NULL,
  `hasil_akhir` double NOT NULL,
  PRIMARY KEY (`id_alternatif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ahp_data_alternatif`
--

INSERT INTO `ahp_data_alternatif` (`id_alternatif`, `nama_alternatif`, `hasil_akhir`) VALUES
('A1', 'Agung Sudarsono', 0.2553122040837047),
('A2', 'Bagus Sucipto', 0.1419040613561219),
('A3', 'Rian Anjasmara', 0.1518656627511713),
('A4', 'Edi Subagjo', 0.24369444092596698),
('A5', 'Suroso', 0.2072236308830323);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahp_data_kriteria`
--

CREATE TABLE IF NOT EXISTS `ahp_data_kriteria` (
  `id_kriteria` varchar(2) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `jumlah_kriteria` double NOT NULL,
  `bobot_kriteria` double NOT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ahp_data_kriteria`
--

INSERT INTO `ahp_data_kriteria` (`id_kriteria`, `nama_kriteria`, `jumlah_kriteria`, `bobot_kriteria`) VALUES
('C1', 'Umur', 2.03333333333333, 0.44834357738322994),
('C2', 'Pendidikan', 10.33633633633633, 0.1234496704707948),
('C3', 'Pengalaman Kerja', 8.53333333333333, 0.2105029281380168),
('C4', 'Keahlian', 10.333, 0.1331174189766684),
('C5', 'Kendaraan', 11, 0.0845864050312882);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahp_jum_alt_kri`
--

CREATE TABLE IF NOT EXISTS `ahp_jum_alt_kri` (
  `id_alternatif` varchar(2) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `jumlah_alt_kri` double NOT NULL,
  `skor_alt_kri` double NOT NULL,
  `hasil_alt_kri` double NOT NULL,
  PRIMARY KEY (`id_alternatif`,`id_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ahp_jum_alt_kri`
--

INSERT INTO `ahp_jum_alt_kri` (`id_alternatif`, `id_kriteria`, `jumlah_alt_kri`, `skor_alt_kri`, `hasil_alt_kri`) VALUES
('A1', 'C1', 1.63452380952381, 0.26625380423705286, 0.13817959378478),
('A1', 'C2', 2.125, 0.26787150164855766, 0.064573463615617),
('A1', 'C3', 10.66666666666666, 0.22485389795781163, 0.031618965586194),
('A1', 'C4', 11.44600999601, 0.2156521046816235, 0.016056268665727),
('A1', 'C5', 13.576340326340329, 0.19624240121472752, 0.0048839124313867),
('A2', 'C1', 10.08333333333333, 0.15409046608802907, 0.079969403897018),
('A2', 'C2', 17.58333333333333, 0.1362559162888506, 0.032846034007881),
('A2', 'C3', 13.4910269550988, 0.11744785512253837, 0.016515522848479),
('A2', 'C4', 10.203003003003001, 0.11910833018139519, 0.008868150638001),
('A2', 'C5', 6.55966666666667, 0.14887004787166533, 0.0037049499647429),
('A3', 'C1', 12.23611111111111, 0.1661503602887341, 0.086228211302666),
('A3', 'C2', 12.25, 0.1246206029877851, 0.030041209771339),
('A3', 'C3', 10.25, 0.1439972650437816, 0.020248902106112),
('A3', 'C4', 13.14285714285714, 0.1574868231001113, 0.011725601967764),
('A3', 'C5', 17.193006993007, 0.14552645933447894, 0.0036217376032903),
('A4', 'C1', 19.25, 0.259089013343697, 0.13446123228367),
('A4', 'C2', 12.303003003002999, 0.2020014377277443, 0.048694737622848),
('A4', 'C3', 5.75033333333333, 0.24429208917361944, 0.034352364938807),
('A4', 'C4', 8.976333333333331, 0.25871758242969267, 0.019262687086552),
('A4', 'C5', 4.546003003003, 0.27819261444663335, 0.00692341899409),
('A5', 'C1', 20, 0.15441635604248843, 0.080138533279619),
('A5', 'C2', 11.333, 0.2692505413470617, 0.064905896775725),
('A5', 'C3', 4.7829999999999995, 0.26940889270224844, 0.037884291018896),
('A5', 'C4', 5.166, 0.249035159607177, 0.018541787179719),
('A5', 'C5', 14.333, 0.2311684771324953, 0.0057531226290733);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahp_nilai`
--

CREATE TABLE IF NOT EXISTS `ahp_nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `jum_nilai` double NOT NULL,
  `ket_nilai` text NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data untuk tabel `ahp_nilai`
--

INSERT INTO `ahp_nilai` (`id_nilai`, `jum_nilai`, `ket_nilai`) VALUES
(2, 9, 'Mutlak sangat penting dari'),
(3, 8, 'Mendekati mutlak dari'),
(8, 7, 'Sangat penting dari'),
(9, 6, 'Mendekati sangat penting dari'),
(10, 5, 'Lebih penting dari'),
(11, 4, 'Mendekati lebih penting dari'),
(12, 3, 'Sedikit lebih penting dari'),
(13, 2, 'Mendekati sedikit lebih penting dari'),
(14, 1, 'Sama penting dengan'),
(15, 0.5, '1 bagi mendekati sedikit lebih penting dari'),
(16, 0.333, '1 bagi sedikit lebih penting dari'),
(17, 0.25, '1 bagi mendekati lebih penting dari'),
(18, 0.2, '1 bagi lebih penting dari'),
(19, 0.167, '1 bagi mendekati sangat penting dari'),
(20, 0.143, '1 bagi sangat penting dari'),
(21, 0.125, '1 bagi mendekati mutlak dari'),
(22, 0.1, '1 bagi mutlak sangat penting dari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahp_pengguna`
--

CREATE TABLE IF NOT EXISTS `ahp_pengguna` (
  `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `ahp_pengguna`
--

INSERT INTO `ahp_pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahp_rangking`
--

CREATE TABLE IF NOT EXISTS `ahp_rangking` (
  `kriteria` varchar(2) NOT NULL,
  `skor_bobot` double NOT NULL,
  `alternatif` varchar(2) NOT NULL,
  PRIMARY KEY (`kriteria`,`alternatif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Basis data: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;
--
-- Basis data: `webauth`
--
CREATE DATABASE IF NOT EXISTS `webauth` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `webauth`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
