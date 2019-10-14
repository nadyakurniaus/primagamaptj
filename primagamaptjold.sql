-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2018 at 07:19 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `primagamaptj`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
`kode_jadwal` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `jenjang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `kode_kelas` char(6) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `kuota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kode_kelas`, `nama_kelas`, `kuota`) VALUES
('KL0001', 'UGM', '20'),
('KL0002', 'UI', '20'),
('KL0003', 'UNPAD', '15'),
('KL0004', 'ITB', '15'),
('KL0005', 'IPB', '10');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
`no_pembayaran` int(11) NOT NULL,
  `id_siswa` char(6) NOT NULL,
  `biaya_pendaftaran` varchar(100) NOT NULL,
  `biaya_bimbingan` varchar(100) NOT NULL,
  `total_bayar` varchar(100) NOT NULL,
  `tipe_pembayaran` varchar(100) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `waktu_jatuhtempo` date NOT NULL,
  `jumlah_bayar` varchar(100) NOT NULL,
  `sisa_bayar` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`no_pembayaran`, `id_siswa`, `biaya_pendaftaran`, `biaya_bimbingan`, `total_bayar`, `tipe_pembayaran`, `tanggal_bayar`, `waktu_jatuhtempo`, `jumlah_bayar`, `sisa_bayar`) VALUES
(23, 'PG0001', '150000', '3300000', '3450000', 'Lunas', '2018-10-03', '0000-00-00', '3450000', '0'),
(24, 'PG0002', '400000', '3000000', '3400000', 'Lunas', '2018-10-03', '2018-11-03', '3400000', '0'),
(25, 'PG0003', '', '', '', '', '0000-00-00', '0000-00-00', '', ''),
(26, 'PG0004', '', '', '', '', '0000-00-00', '0000-00-00', '', ''),
(27, 'PG0005', '', '', '', '', '0000-00-00', '0000-00-00', '', ''),
(28, 'PG0006', '', '', '', '', '0000-00-00', '0000-00-00', '', ''),
(29, 'PG0003', '123878', '127381738', '127505622', 'Angsuran', '2018-10-03', '2018-10-03', '3450000', '124055622');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
`no_pendaftaran` int(11) NOT NULL,
  `id_siswa` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` char(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telepon_siswa` varchar(12) NOT NULL,
  `jk` varchar(5) NOT NULL,
  `jenjang` varchar(255) NOT NULL,
  `asal_sekolah` varchar(255) NOT NULL,
  `jadwal` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_ortu` varchar(255) NOT NULL,
  `telepon_ortu` varchar(12) NOT NULL,
  `user_id` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `alamat`, `telepon_siswa`, `jk`, `jenjang`, `asal_sekolah`, `jadwal`, `tanggal_lahir`, `nama_ortu`, `telepon_ortu`, `user_id`) VALUES
('PG0001', 'Sandrina Zia Mecca', 'Perumnas Teluk Jambe Karawang', '085782113111', 'P', '3 SD', 'SDN Sukaluyu 4', 'Senin Kamis', '2007-03-09', 'Eka Sanjaya', '085782113112', ''),
('PG0002', 'Vero Kurniawan', 'Perumnas Bumi Teluk Jambe Blok B 145', '081219801510', 'L', '11 SMA IPA', 'SMAN 5 Karawang', 'Selasa - Kamis', '2003-05-11', 'Vendi Roni', '081287517044', ''),
('PG0003', 'aldi yori aditya', 'bandung', '081219801511', 'L', '12 SMA IPS', 'smkn 11 bandung', 'Senin Kamis', '2017-09-02', 'Dena', '081287517044', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` char(6) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `role` varchar(25) NOT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `role`, `status`) VALUES
('US0001', 'hening241', 'hening123', 'Hening Utamawati', 'Kepala Cabang', 1),
('US0002', 'ayuretno24', 'ayu123', 'Ayu Retno', 'Admin', 1),
('US0003', 'dadang', 'dadang', 'dadang', 'Admin', 1),
('US0006', 'aldiyoria', 'aldi', 'aldi yori aditya', 'Siswa', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
 ADD PRIMARY KEY (`kode_jadwal`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`kode_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
 ADD PRIMARY KEY (`no_pembayaran`), ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
 ADD PRIMARY KEY (`no_pendaftaran`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
MODIFY `kode_jadwal` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
MODIFY `no_pembayaran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
MODIFY `no_pendaftaran` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
