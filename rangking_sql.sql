-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 04:42 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rangking_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `ID_NILAI` int(11) NOT NULL,
  `ID_SISWA` int(11) NOT NULL,
  `ID_PELAJARAN` int(11) NOT NULL,
  `NILAI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`ID_NILAI`, `ID_SISWA`, `ID_PELAJARAN`, `NILAI`) VALUES
(1, 1, 1, 74),
(2, 1, 2, 84),
(3, 1, 3, 78),
(4, 2, 1, 85),
(5, 2, 2, 97),
(6, 2, 3, 93),
(7, 3, 1, 76),
(8, 3, 2, 95),
(9, 3, 3, 93),
(10, 4, 1, 83),
(11, 4, 2, 93),
(12, 4, 3, 81);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelajaran`
--

CREATE TABLE `tbl_pelajaran` (
  `ID_PELAJARAN` int(11) NOT NULL,
  `NAMA_PELAJARAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pelajaran`
--

INSERT INTO `tbl_pelajaran` (`ID_PELAJARAN`, `NAMA_PELAJARAN`) VALUES
(1, 'Matematika'),
(2, 'Bahasa Indonesia'),
(3, 'Bahasa inggris');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `ID_SISWA` int(11) NOT NULL,
  `NAMA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`ID_SISWA`, `NAMA`) VALUES
(1, 'Ahmad'),
(2, 'Juniadi'),
(3, 'Dita'),
(4, 'Putri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`ID_NILAI`),
  ADD KEY `id_siswa` (`ID_SISWA`,`ID_PELAJARAN`),
  ADD KEY `ID_PELAJARAN` (`ID_PELAJARAN`);

--
-- Indexes for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  ADD PRIMARY KEY (`ID_PELAJARAN`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`ID_SISWA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `ID_NILAI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  MODIFY `ID_PELAJARAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `ID_SISWA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD CONSTRAINT `tbl_nilai_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `tbl_siswa` (`ID_SISWA`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_nilai_ibfk_2` FOREIGN KEY (`id_pelajaran`) REFERENCES `tbl_pelajaran` (`id_pelajaran`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_nilai_ibfk_3` FOREIGN KEY (`ID_PELAJARAN`) REFERENCES `tbl_pelajaran` (`id_pelajaran`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_nilai_ibfk_4` FOREIGN KEY (`ID_SISWA`) REFERENCES `tbl_siswa` (`id_siswa`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
