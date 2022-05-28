-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 02:25 PM
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
-- Database: `db_angkot`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

CREATE TABLE `alamat` (
  `id_alamat` int(11) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `koordinat` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alamat`
--

INSERT INTO `alamat` (`id_alamat`, `alamat`, `koordinat`, `kategori`, `id_user`) VALUES
(1, 'Semampir, Banjarnegara', NULL, 'Rumah', 1),
(2, 'Gang Cempaka, Gerlong', NULL, 'Kost', 1),
(3, 'UPI', NULL, 'Kampus', 1),
(10, 'world', '', 'hello', 1);

-- --------------------------------------------------------

--
-- Table structure for table `halte`
--

CREATE TABLE `halte` (
  `id_halte` int(11) NOT NULL,
  `halte` varchar(255) DEFAULT NULL,
  `koordinat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jalur_rute`
--

CREATE TABLE `jalur_rute` (
  `id_trayek` int(11) DEFAULT NULL,
  `id_halte` int(11) DEFAULT NULL,
  `urutan_jalur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rute_angkot`
--

CREATE TABLE `rute_angkot` (
  `id_rute` int(11) NOT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `warna` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jam_opr_awal` time DEFAULT NULL,
  `jam_opr_akhir` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rute_angkot`
--

INSERT INTO `rute_angkot` (`id_rute`, `jurusan`, `kode`, `warna`, `gambar`, `harga`, `jam_opr_awal`, `jam_opr_akhir`) VALUES
(1, 'Abdul Muis (Kebon Kalapa) - Cicaheum (via Binong)', '01A', 'pink', NULL, 50, '00:00:01', '24:00:00'),
(2, 'Abdul Muis (Kebon Kalapa) - Cicaheum (via Aceh)', '01B', 'nila', NULL, 50, '24:00:00', '00:00:01'),
(3, 'Abdul Muis (Kebon Kalapa) - Dago', '02', 'jingga', NULL, 50, '00:00:01', '24:00:00'),
(4, 'Abdul Muis (Kebon Kalapa) - Ledeng', '03', 'merah', NULL, 50, '24:00:00', '00:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `trayek`
--

CREATE TABLE `trayek` (
  `id_trayek` int(11) NOT NULL,
  `trayek` varchar(255) DEFAULT NULL,
  `id_rute` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `tgl_lahir`, `username`, `password`, `no_telp`) VALUES
(1, 'Apri Anggara Yudha', 'anggarayudha585@upi.edu', NULL, 'Anggara', 'anggara123', '089665623908');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`id_alamat`),
  ADD KEY `alamat` (`id_user`);

--
-- Indexes for table `halte`
--
ALTER TABLE `halte`
  ADD PRIMARY KEY (`id_halte`);

--
-- Indexes for table `jalur_rute`
--
ALTER TABLE `jalur_rute`
  ADD KEY `jalur_rute` (`id_trayek`),
  ADD KEY `jalur_rutee` (`id_halte`);

--
-- Indexes for table `rute_angkot`
--
ALTER TABLE `rute_angkot`
  ADD PRIMARY KEY (`id_rute`);

--
-- Indexes for table `trayek`
--
ALTER TABLE `trayek`
  ADD PRIMARY KEY (`id_trayek`),
  ADD KEY `trayek` (`id_rute`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alamat`
--
ALTER TABLE `alamat`
  MODIFY `id_alamat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `halte`
--
ALTER TABLE `halte`
  MODIFY `id_halte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rute_angkot`
--
ALTER TABLE `rute_angkot`
  MODIFY `id_rute` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trayek`
--
ALTER TABLE `trayek`
  MODIFY `id_trayek` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alamat`
--
ALTER TABLE `alamat`
  ADD CONSTRAINT `alamat` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `jalur_rute`
--
ALTER TABLE `jalur_rute`
  ADD CONSTRAINT `jalur_rute` FOREIGN KEY (`id_trayek`) REFERENCES `trayek` (`id_trayek`),
  ADD CONSTRAINT `jalur_rutee` FOREIGN KEY (`id_halte`) REFERENCES `halte` (`id_halte`);

--
-- Constraints for table `trayek`
--
ALTER TABLE `trayek`
  ADD CONSTRAINT `trayek` FOREIGN KEY (`id_rute`) REFERENCES `rute_angkot` (`id_rute`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
