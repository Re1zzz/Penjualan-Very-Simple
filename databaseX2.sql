-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 06:19 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `loginin`
--

CREATE TABLE `loginin` (
  `id` varchar(4) NOT NULL,
  `password` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginin`
--

INSERT INTO `loginin` (`id`, `password`, `city`, `country`) VALUES
('1234', 'S3mbaran', 'Semarang', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_master`
--

CREATE TABLE `tb_master` (
  `kode_barang` varchar(4) NOT NULL,
  `nama_barang` varchar(10) NOT NULL,
  `harga_jual` varchar(10) NOT NULL,
  `harga_beli` varchar(10) NOT NULL,
  `satuan` varchar(5) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_master`
--

INSERT INTO `tb_master` (`kode_barang`, `nama_barang`, `harga_jual`, `harga_beli`, `satuan`, `kategori`) VALUES
('0001', 'kokok', '20000', '50000', '8', 'ga tau'),
('0002', 'ASS', '10000', '2111', '7', 'langka'),
('0003', 'kobop', '10000', '60000', '3', 'langka'),
('0987', 'kokok', '20000', '60000', '7', 'ga tau'),
('3294', 'dhfjkwbg', '123124', '124123', '23', 'ga tau');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `id` varchar(4) NOT NULL,
  `no_faktur` varchar(10) NOT NULL,
  `nama_konsumen` text NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `jumlah` varchar(5) NOT NULL,
  `harga_satuan` varchar(10) NOT NULL,
  `harga_total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`id`, `no_faktur`, `nama_konsumen`, `kode_barang`, `jumlah`, `harga_satuan`, `harga_total`) VALUES
('0009', '3366', 'Asafa', '0987', '7', '10000', '20000'),
('1234', '12132', 'deqfwrgd', '32949', '6', '352462', '141352');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_master`
--
ALTER TABLE `tb_master`
  ADD PRIMARY KEY (`kode_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
