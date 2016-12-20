-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2016 at 04:09 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_user`, `nama`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `foto_barang` varchar(100) NOT NULL,
  `jenis_barang` enum('-','Fashion Pria','Fashion Wanita','Fashion Lain') NOT NULL,
  `size` enum('0','S','M','L','XL','XXL','All size') NOT NULL,
  `harga_barang` varchar(100) NOT NULL,
  `deskripsi_barang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `foto_barang`, `jenis_barang`, `size`, `harga_barang`, `deskripsi_barang`) VALUES
(55, 'Baju Hem', 'pakaian-pria-002.jpg', 'Fashion Pria', 'L', '100000', 'Baju Hem Murah'),
(56, 'Kemeja 1', 'fasion.jpg', 'Fashion Pria', 'M', '150000', 'Kemeja Pria Murah Meriah\r\n'),
(57, 'Fashion Wanita', 'wanita.jpg', 'Fashion Wanita', 'L', '200000', 'Fashion Wanita Murah'),
(58, 'Celana Jeans Wanita', 'Desain-Celana-Kodok-Panjang-Jeans-Cewek-Modis-2015.jpg', 'Fashion Wanita', 'M', '250000', 'Jeans Cantik'),
(59, 'Fashion Anak', 'grosir-baju-bayi-2140.jpg', 'Fashion Lain', 'S', '50000', 'Baju anak usia Balita');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id_post` int(11) NOT NULL,
  `foto_profil` varchar(100) NOT NULL,
  `judul_post` varchar(100) NOT NULL,
  `isi_post` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id_post`, `foto_profil`, `judul_post`, `isi_post`) VALUES
(8, 'pakaian-pria-002.jpg', 'Baju Hem', ' Kemeja adalah sebuah baju yang biasanya dikenakan oleh kaum pria. Pada umumnya kemeja menutipi bagian lengan, dada, bahu, berkerah, dan menutupi tubuh sampai bagian perut.Kemeja biasanya dibuat menurut selera orang yang mengenakannya, kadang kemeja bisa dibuat berlengan panjang maupun berlengan pendek. Biasanya kemeja terbuat dari bahan katun, linen maupun yang lainnya. Kerah dalam kemeja biasanya diberi kancing depan.\r\n              Dalam bahasa Portugis, kemeja sering disebut camisa. Nama lain dari kemeja adalah kamisa yang diambil dari bahasa Portugis. Yang hampir sama dengan kemeja sering kita sebut dengan istilah Blus untuk kemeja wanita yang diambil dari bahasa Perancis dan Hem dari bahasa Belanda.');

-- --------------------------------------------------------

--
-- Table structure for table `data_pembeli`
--

CREATE TABLE `data_pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `size` enum('-','S','M','L','XL','XXL') NOT NULL,
  `harga` varchar(100) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `email_pembeli` varchar(100) NOT NULL,
  `tlp_pembeli` varchar(20) NOT NULL,
  `alamat_pembeli` text NOT NULL,
  `pos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komen` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `nama_pengomentar` varchar(100) NOT NULL,
  `isi_komen` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komen`, `id_post`, `nama_pengomentar`, `isi_komen`, `waktu`) VALUES
(18, 5, 'rian', 'artikel yang bagus', '2016-01-10 16:51:53'),
(19, 5, 'andi', 'ini juga bagus', '2016-01-10 16:55:17'),
(20, 7, 'Nurul', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2016-01-10 16:55:32'),
(21, 7, 'deni', 'artikelnya bermanfaat', '2016-01-10 16:56:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `data_pembeli`
--
ALTER TABLE `data_pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komen`),
  ADD KEY `id_induk` (`id_post`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `data_pembeli`
--
ALTER TABLE `data_pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
