-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2025 at 02:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asat_10sija2`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(20) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `tentang` varchar(100) NOT NULL,
  `profesi` varchar(100) NOT NULL,
  `deskripsi_profesi` varchar(150) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `website` int(11) NOT NULL,
  `gelar` varchar(30) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `freelance` tinyint(1) NOT NULL,
  `keterangan_about` varchar(255) NOT NULL,
  `keterangan_skill` varchar(100) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `url_hero` varchar(255) NOT NULL,
  `url_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `nama_depan`, `nama_belakang`, `tentang`, `profesi`, `deskripsi_profesi`, `tgl_lahir`, `website`, `gelar`, `hp`, `email`, `kota`, `freelance`, `keterangan_about`, `keterangan_skill`, `skill`, `url_hero`, `url_foto`) VALUES
(0, 'Farid', 'Bahar Muharrom', 'Aku Menyukai Dunia Musik', 'Musisi', 'Penyanyi / Personil Band', '2008-12-29', 0, 'Class X', '+62 822-6077-18', 'faridzdays123@gmail.com', 'Bogor', 0, 'Aku cepat menangkap materi ketika fokus secara penuh', 'Dalam dunia musik aku bisa bermain guitar dan drum , dalam dunia teknologi aku bisa coding html , cs', 'HTML,100%,CSS,100%,JS,70%,PHP,40%', 'WIN_20241019_13_52_44_Pro.jpg', 'FARID BAHAR (1).JPG');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `deskripsi_kontak` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `peta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `deskripsi_kontak`, `alamat`, `peta`) VALUES
(0, '+6282260771868', 'JL.Re Sulaeman , Kp Kebon Kopi , Puspasari Rt 01/08 , Citeureup , Bogor', 'Bogor');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama_pengirim` varchar(30) NOT NULL,
  `email_pengirim` varchar(100) NOT NULL,
  `judul_pesan` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tgl_pesan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
