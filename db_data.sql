-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 04:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `nama_wilayah` varchar(200) NOT NULL,
  `jumlah_positif` int(11) NOT NULL,
  `jumlah_dirawat` int(11) NOT NULL,
  `jumlah_sembuh` int(11) NOT NULL,
  `jumlah_meninggal` int(11) NOT NULL,
  `nama_operator` varchar(200) NOT NULL,
  `nim_mahasiswa` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `nama_wilayah`, `jumlah_positif`, `jumlah_dirawat`, `jumlah_sembuh`, `jumlah_meninggal`, `nama_operator`, `nim_mahasiswa`) VALUES
(1, 'Jawa Tengah', 9123912, 4122142, 215125, 62112, 'Aditya Tri Herdiansyah', 181011402436),
(2, 'Kalimantan Tengah', 124122, 5125, 1251, 5126, 'Aenun', 181011403181);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(1, 'Abdul Hafizh', 'kelompok1', 'admin'),
(2, 'Ahmad Sanudin', 'kelompok1', 'admin'),
(3, 'Ahmad Wahyudi', 'kelompok1', 'admin'),
(4, 'Ahmad Rajalli Nasution', 'kelompok1', 'admin'),
(5, 'Aldo Hasiolan Pane', 'kelompok1', 'admin'),
(6, 'Alfin Hidayatullah', 'kelompok1', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
