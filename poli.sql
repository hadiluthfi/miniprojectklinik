-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2020 at 03:32 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poli`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_periksa`
--

CREATE TABLE `detail_periksa` (
  `id_detail_periksa` int(11) NOT NULL,
  `id_periksa` int(11) NOT NULL,
  `id_tindakan` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_periksa`
--

INSERT INTO `detail_periksa` (`id_detail_periksa`, `id_periksa`, `id_tindakan`, `id_pasien`, `status`) VALUES
(27, 4, 14, 1, 1),
(28, 4, 15, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(20) NOT NULL,
  `kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Umum'),
(2, 'Kebidanan dan Kandungan'),
(3, 'Bedah'),
(4, 'Penyakit Dalam'),
(5, 'Saraf'),
(6, 'Kulit dan Kelamin'),
(7, 'Jantung');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `no_telp` int(12) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `no_telp`, `jenis_kelamin`, `alamat`, `username`, `password`) VALUES
(1, 'Hadi Luthfi', 274240982, 'L', '<p>Jl Kelapa no 31</p>\r\n', 'hadi', '4f2ab1ba30c16ebc136a26e38dae4ca3'),
(7, 'Rahmat', 2147483647, 'l', '', 'rahmat', '8a83d381ef2a3a06738ded2c503e104f');

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `id_periksa` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `tgl_periksa` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periksa`
--

INSERT INTO `periksa` (`id_periksa`, `id_pasien`, `tgl_periksa`) VALUES
(4, 1, '2020-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `id_poli` int(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `waktu` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`id_poli`, `nama`, `waktu`) VALUES
(1, 'Penyakit dalam', 20),
(2, 'Bedah Umum', 30),
(3, 'Anak', 35),
(4, 'Kebidanan dan Kandungan', 20),
(5, 'Saraf', 25),
(6, 'Gigi', 30),
(7, 'THT dan Alergi', 25),
(8, 'Konsultasi Psikologi', 30),
(9, 'Kulit dan Kelamin', 25),
(10, 'Umum', 15),
(11, 'Kulit Kelamin', 20),
(12, 'Kesehatan Jiwa', 30),
(13, 'Jantung', 25);

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `id_tindakan` int(20) NOT NULL,
  `id_kategori` int(20) NOT NULL,
  `id_poli` int(20) NOT NULL,
  `tindakan` varchar(200) NOT NULL,
  `waktu` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tindakan`
--

INSERT INTO `tindakan` (`id_tindakan`, `id_kategori`, `id_poli`, `tindakan`, `waktu`) VALUES
(1, 5, 5, 'Injeksi Dokter Spesialis', 25),
(2, 5, 5, 'Injeksi Dokter Sub Spesialis', 30),
(3, 6, 9, 'Bedah Kimia', 25),
(4, 6, 9, 'Bedah Listrik', 25),
(5, 6, 9, 'insisi/ Enuklasi Kista', 30),
(14, 1, 10, 'Periksa Tensi', 10),
(15, 1, 10, 'Periksa Detak Jantung', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_periksa`
--
ALTER TABLE `detail_periksa`
  ADD PRIMARY KEY (`id_detail_periksa`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id_periksa`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`id_tindakan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_periksa`
--
ALTER TABLE `detail_periksa`
  MODIFY `id_detail_periksa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id_periksa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `poli`
--
ALTER TABLE `poli`
  MODIFY `id_poli` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tindakan`
--
ALTER TABLE `tindakan`
  MODIFY `id_tindakan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
