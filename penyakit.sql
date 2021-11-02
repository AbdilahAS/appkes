-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2018 at 03:44 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penyakit_jerukmanis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_user` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_user`, `username`, `password`, `nama`, `phone`, `email`) VALUES
(1, 'admin', 'admin', 'Mailizar', '+6281947472218', 'mailizar22@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(3) NOT NULL,
  `kode_gejala` varchar(10) NOT NULL,
  `nama_gejala` text NOT NULL,
  `bobot` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`, `bobot`) VALUES
(1, 'G1', 'LESI PADA MULUT KELAMIN', 1),
(2, 'G2', 'TIDAK TERASA SAKIT', 1),
(4, 'G4', 'NYERI PERSENDIAN', 1),
(5, 'G5', 'SAKIT KEPALA', 1),
(6, 'G6', 'KELUAR KOTORAN / CAIRAN PADA KELAMIN', 1),
(7, 'G7', 'KELUAR KOTORAN PUTIH', 1),
(8, 'G8', 'TESTIS MEMBENKAK', 1),
(9, 'G9', 'SAKIT SAAT BAK (Buang Air Kecil)', 3),
(10, 'G10', 'TERASA SAKIT', 3),
(12, 'G12', 'DEMAM', 3),
(14, 'G14', 'PENDARAHAN SAAT BERHUBUNGAN SEKS', 3);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_konsultasi`
--

CREATE TABLE `hasil_konsultasi` (
  `id_konsultasi` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `konsultasi` int(10) NOT NULL,
  `id_gejala` int(3) NOT NULL,
  `bobot` int(3) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_konsultasi`
--

INSERT INTO `hasil_konsultasi` (`id_konsultasi`, `id_user`, `konsultasi`, `id_gejala`, `bobot`, `waktu`) VALUES
(67, 8, 5, 7, 1, '2016-01-05 06:38:55'),
(66, 8, 5, 2, 1, '2016-01-05 06:38:55'),
(65, 8, 5, 1, 1, '2016-01-05 06:38:55'),
(64, 8, 4, 14, 3, '2016-01-05 06:36:09'),
(63, 8, 4, 7, 1, '2016-01-05 06:36:09'),
(62, 8, 4, 2, 1, '2016-01-05 06:36:09'),
(61, 8, 4, 1, 1, '2016-01-05 06:36:09'),
(74, 8, 7, 5, 1, '2016-01-05 06:42:07'),
(73, 8, 7, 3, 1, '2016-01-05 06:42:07'),
(72, 8, 6, 14, 3, '2016-01-05 06:41:44'),
(71, 8, 6, 7, 1, '2016-01-05 06:41:44'),
(70, 8, 6, 2, 1, '2016-01-05 06:41:44'),
(69, 8, 6, 1, 1, '2016-01-05 06:41:44'),
(68, 8, 5, 14, 3, '2016-01-05 06:38:55'),
(60, 8, 3, 14, 3, '2016-01-05 06:35:06'),
(59, 8, 3, 11, 3, '2016-01-05 06:35:06'),
(58, 8, 3, 7, 1, '2016-01-05 06:35:06'),
(57, 8, 3, 4, 1, '2016-01-05 06:35:06'),
(56, 8, 3, 3, 1, '2016-01-05 06:35:06'),
(55, 8, 3, 2, 1, '2016-01-05 06:35:06'),
(54, 8, 3, 1, 1, '2016-01-05 06:35:06'),
(53, 7, 2, 8, 1, '2015-12-28 07:32:37'),
(52, 7, 2, 5, 1, '2015-12-28 07:32:37'),
(51, 7, 2, 3, 1, '2015-12-28 07:32:37'),
(50, 7, 2, 1, 1, '2015-12-28 07:32:37'),
(49, 7, 1, 10, 3, '2015-12-28 07:31:09'),
(48, 7, 1, 6, 1, '2015-12-28 07:31:09'),
(47, 7, 1, 5, 1, '2015-12-28 07:31:09'),
(46, 7, 1, 2, 1, '2015-12-28 07:31:09'),
(75, 8, 7, 6, 1, '2016-01-05 06:42:07'),
(76, 9, 8, 1, 1, '2016-01-06 07:10:22'),
(77, 9, 8, 2, 1, '2016-01-06 07:10:22'),
(78, 9, 8, 4, 1, '2016-01-06 07:10:22'),
(79, 9, 8, 5, 1, '2016-01-06 07:10:22'),
(80, 9, 9, 7, 1, '2016-01-06 07:11:42'),
(81, 9, 9, 8, 1, '2016-01-06 07:11:42'),
(82, 9, 9, 9, 3, '2016-01-06 07:11:42'),
(83, 9, 9, 10, 3, '2016-01-06 07:11:42'),
(84, 9, 10, 7, 1, '2016-01-06 07:12:36'),
(85, 9, 10, 8, 1, '2016-01-06 07:12:36'),
(86, 9, 10, 9, 3, '2016-01-06 07:12:36'),
(87, 9, 10, 10, 3, '2016-01-06 07:12:36'),
(88, 9, 11, 8, 1, '2016-01-06 07:14:41'),
(89, 9, 11, 9, 3, '2016-01-06 07:14:41'),
(90, 9, 11, 10, 3, '2016-01-06 07:14:41'),
(91, 9, 11, 12, 3, '2016-01-06 07:14:41'),
(92, 9, 12, 8, 1, '2016-01-06 07:15:37'),
(93, 9, 12, 9, 3, '2016-01-06 07:15:37'),
(94, 9, 12, 10, 3, '2016-01-06 07:15:37'),
(95, 9, 12, 12, 3, '2016-01-06 07:15:37'),
(96, 9, 13, 8, 1, '2016-01-06 07:18:08'),
(97, 9, 13, 9, 3, '2016-01-06 07:18:08'),
(98, 9, 13, 12, 3, '2016-01-06 07:18:08'),
(99, 9, 13, 14, 3, '2016-01-06 07:18:08'),
(100, 9, 14, 8, 1, '2016-01-06 07:19:31'),
(101, 9, 14, 9, 3, '2016-01-06 07:19:31'),
(102, 9, 14, 12, 3, '2016-01-06 07:19:31'),
(103, 9, 14, 14, 3, '2016-01-06 07:19:31'),
(104, 9, 15, 8, 1, '2016-01-06 07:21:04'),
(105, 9, 15, 9, 3, '2016-01-06 07:21:04'),
(106, 9, 15, 12, 3, '2016-01-06 07:21:04'),
(107, 9, 16, 1, 1, '2016-01-06 07:21:37'),
(108, 9, 16, 2, 1, '2016-01-06 07:21:37'),
(109, 9, 16, 4, 1, '2016-01-06 07:21:37'),
(110, 9, 16, 5, 1, '2016-01-06 07:21:37'),
(111, 9, 17, 7, 1, '2016-01-06 07:22:02'),
(112, 9, 17, 8, 1, '2016-01-06 07:22:02'),
(113, 9, 17, 9, 3, '2016-01-06 07:22:02'),
(114, 9, 17, 10, 3, '2016-01-06 07:22:02'),
(115, 12, 18, 5, 1, '2018-04-25 10:40:20'),
(116, 12, 18, 6, 1, '2018-04-25 10:40:20'),
(117, 12, 18, 7, 1, '2018-04-25 10:40:20'),
(118, 13, 19, 5, 1, '2018-04-25 10:52:02'),
(119, 13, 19, 6, 1, '2018-04-25 10:52:02'),
(120, 13, 19, 7, 1, '2018-04-25 10:52:02'),
(121, 14, 20, 5, 1, '2018-04-25 11:03:56'),
(122, 14, 20, 7, 1, '2018-04-25 11:03:56'),
(123, 14, 20, 8, 1, '2018-04-25 11:03:56'),
(124, 15, 21, 2, 1, '2018-04-25 12:26:39'),
(125, 15, 21, 5, 1, '2018-04-25 12:26:39'),
(126, 15, 21, 7, 1, '2018-04-25 12:26:39'),
(127, 16, 22, 1, 1, '2018-04-25 12:34:21'),
(128, 16, 22, 5, 1, '2018-04-25 12:34:21'),
(129, 16, 22, 7, 1, '2018-04-25 12:34:21'),
(130, 16, 22, 8, 1, '2018-04-25 12:34:21'),
(131, 17, 23, 1, 1, '2018-04-25 12:39:05'),
(132, 17, 23, 2, 1, '2018-04-25 12:39:05'),
(133, 17, 23, 4, 1, '2018-04-25 12:39:05'),
(134, 17, 24, 6, 1, '2018-04-25 12:39:21'),
(135, 17, 24, 8, 1, '2018-04-25 12:39:21'),
(136, 17, 24, 12, 3, '2018-04-25 12:39:21'),
(137, 17, 24, 14, 3, '2018-04-25 12:39:21'),
(138, 17, 25, 6, 1, '2018-04-25 12:47:17'),
(139, 17, 25, 7, 1, '2018-04-25 12:47:17'),
(140, 17, 25, 9, 3, '2018-04-25 12:47:17'),
(141, 17, 26, 1, 1, '2018-04-25 12:48:30'),
(142, 17, 26, 2, 1, '2018-04-25 12:48:30'),
(143, 17, 26, 4, 1, '2018-04-25 12:48:30'),
(144, 17, 27, 6, 1, '2018-04-25 12:59:12'),
(145, 17, 27, 7, 1, '2018-04-25 12:59:12'),
(146, 17, 27, 8, 1, '2018-04-25 12:59:12'),
(147, 17, 28, 8, 1, '2018-04-25 13:02:07'),
(148, 17, 28, 10, 3, '2018-04-25 13:02:07'),
(149, 17, 28, 12, 3, '2018-04-25 13:02:07'),
(150, 17, 28, 14, 3, '2018-04-25 13:02:07'),
(151, 18, 29, 1, 1, '2018-04-25 13:12:04'),
(152, 18, 29, 4, 1, '2018-04-25 13:12:04'),
(153, 18, 29, 6, 1, '2018-04-25 13:12:04'),
(154, 19, 30, 1, 1, '2018-04-25 13:31:49'),
(155, 19, 30, 2, 1, '2018-04-25 13:31:49'),
(156, 19, 30, 4, 1, '2018-04-25 13:31:49'),
(157, 19, 30, 5, 1, '2018-04-25 13:31:49'),
(158, 20, 31, 2, 1, '2018-04-25 13:38:06'),
(159, 20, 31, 4, 1, '2018-04-25 13:38:06'),
(160, 20, 31, 5, 1, '2018-04-25 13:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(10) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `tgl` date NOT NULL,
  `ket` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `judul`, `isi`, `tgl`, `ket`) VALUES
(7, 'Jeruk Manis', '<div align=\"justify\">Jeruk adalah semua anggota tumbuhan berbunga dari suku Rutaceae Citrus suku jeruk-jerukan. Anggota dengan buah berdaging berbentuk pohon dengan rasa asam segar, meskipun banyak anggotanya yang memiliki rasa manis. Rasa asam sitrat berasal dari kandungan asam yang terkandung dalam semua anggotanya.\r\nSelain untuk makanan pencuci mulut jeruk merupakan buah yang menjadi sumber utama vitamin C dalam jenis buah-buahan. Jeruk juga merupakan buah yang laris dalam kalangan masyarakat di semua kelas baik kelas bawah maupun kelas atas karena jeruk juga mempunyai nilai ekonomi dan nilai bisnis yang tinggi.\r\n<br><br>\r\nSistem pakar adalah sistem yang berusaha mengadopsi pengetahuan manusia ke komputer yang dirancang untuk memodelkan kemampuan menyelesaikan masalah seperti layaknya seorang pakar. Dengan sistem pakar ini, orang awam pun dapat menyelesaikan masalahnya atau hanya sekedar mencari suatu informasi berkualitas yang sebenarnya hanya dapat diperoleh dengan bantuan para ahli di bidangnya. Sistem pakar ini juga akan dapat membantu aktivitas para pakar sebagai asisten yang berpengalaman dan mempunyai asisten yang berpengalaman dan mempunyai pengetahuan yang dibutuhkan. Dalam penyusunannya, sistem pakar mengkombinasikan kaidah-kaidah penarikan kesimpulan (inference rules) dengan basis pengetahuan tertentu yang diberikan oleh satu atau lebih pakar dalam bidang tertentu. Kombinasi dari kedua hal tersebut disimpan dalam komputer, yang selanjutnya digunakan dalam proses pengambilan keputusan untuk penyelesaian masalah tertentu.</div>', '2015-12-12', 'Show');

-- --------------------------------------------------------

--
-- Table structure for table `keterangan`
--

CREATE TABLE `keterangan` (
  `id_keterangan` int(10) NOT NULL,
  `id_konsultasi` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nilai` double NOT NULL,
  `kode_penyakit` varchar(3) NOT NULL,
  `tgl_konsultasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keterangan`
--

INSERT INTO `keterangan` (`id_keterangan`, `id_konsultasi`, `nama`, `nilai`, `kode_penyakit`, `tgl_konsultasi`) VALUES
(17, 1, 'yaya', 0.19047619047619, 'P03', '2015-12-28 07:31:11'),
(18, 3, 'Ferri Achmad', 0.19047619047619, 'P03', '2016-01-05 06:35:08'),
(19, 4, 'Ferri Achmad', 0.17647058823529, 'P04', '2016-01-05 06:36:11'),
(20, 5, 'Ferri Achmad', 0.20689655172414, 'P01', '2016-01-05 06:38:57'),
(21, 6, 'Ferri Achmad', 0.20689655172414, 'P01', '2016-01-05 06:41:46'),
(22, 7, 'Ferri Achmad', 0.10344827586207, 'P01', '2016-01-05 06:42:08'),
(23, 8, 'yaya', 0.13793103448276, 'P01', '2016-01-06 07:10:24'),
(24, 9, 'yaya', 0.28571428571429, 'P03', '2016-01-06 07:11:44'),
(25, 10, 'yaya', 0.4, 'P02', '2016-01-06 07:12:38'),
(26, 11, 'yaya', 0.35, 'P02', '2016-01-06 07:14:43'),
(27, 12, 'yaya', 0.47619047619048, 'P03', '2016-01-06 07:15:39'),
(28, 13, 'yaya', 0.35294117647059, 'P04', '2016-01-06 07:18:10'),
(29, 14, 'yaya', 0.47619047619048, 'P03', '2016-01-06 07:19:33'),
(30, 15, 'yaya', 0.41176470588235, 'P04', '2016-01-06 07:21:06'),
(31, 16, 'yaya', 0.13793103448276, 'P01', '2016-01-06 07:21:38'),
(32, 17, 'yaya', 0.4, 'P02', '2016-01-06 07:22:03'),
(33, 18, 'ssss', 0.10344827586207, 'P01', '2018-04-25 10:51:10'),
(34, 19, 'Rizal', 0.10344827586207, 'P01', '2018-04-25 10:52:04'),
(35, 20, 'Kito', 0.1, 'P02', '2018-04-25 11:04:42'),
(36, 21, 'kito', 0.10344827586207, 'P01', '2018-04-25 12:26:40'),
(37, 22, 'bjkhaxhbkjb', 0.10344827586207, 'P01', '2018-04-25 12:34:23'),
(39, 23, 'scakknkjnac', 0.10344827586207, 'P01', '2018-04-25 12:39:08'),
(40, 24, 'scakknkjnac', 0.33333333333333, 'P03', '2018-04-25 12:39:22'),
(41, 25, 'scakknkjnac', 0.2, 'P02', '2018-04-25 12:47:19'),
(42, 26, 'scakknkjnac', 0.10344827586207, 'P01', '2018-04-25 12:48:32'),
(46, 27, 'scakknkjnac', 0.1, 'P02', '2018-04-25 12:59:14'),
(48, 28, 'scakknkjnac', 0.47619047619048, 'P03', '2018-04-25 13:02:09'),
(51, 29, 'ghgh', 0.10344827586207, 'P01', '2018-04-25 13:12:05'),
(52, 30, 'hjgjhgvhj', 0.13793103448276, 'P01', '2018-04-25 13:31:51'),
(53, 31, 'reza', 0.10344827586207, 'P01', '2018-04-25 13:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` varchar(10) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `ket` text NOT NULL,
  `Penatalaksanaan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `ket`, `Penatalaksanaan`) VALUES
('P01', 'Sifilis', '', '<input type=checkbox name=c2 checked> \r\nKaji TTV (TD,N,RR)<br>\r\n\r\n<input type=checkbox name=c2 checked> \r\nTes Darah <br>\r\n\r\n<input type=checkbox name=c2 checked> \r\nPantau Pola Eliminasi <br>\r\n\r\n<input type=checkbox name=c2 checked> \r\nMemberikan Pendidikan Kepada Pasien & Keluarganya<br>\r\n\r\n\r\n\r\n'),
('P02', 'Gonore', '', '<input type=checkbox name=c2 checked> \r\nKaji TTV (TD,N,RR)<br>\r\n\r\n<input type=checkbox name=c2 checked> \r\nKaji Intensitas, Karakteristik, Frekuensi Nyeri <br>\r\n\r\n<input type=checkbox name=c2 checked> \r\nPantau Intake Cairan <br>\r\n\r\n<input type=checkbox name=c2 checked> \r\nPantau Intake Nutrisi<br>\r\n\r\n<input type=checkbox name=c2 checked> \r\nMemberikan Pendidikan Kepada Pasien & Keluarganya<br>\r\n\r\n\r\n\r\n\r\n'),
('P03', 'Chlamydia', '', '<input type=checkbox name=c2 checked> \r\nKaji TTV (TD,N,RR)<br>\r\n\r\n<input type=checkbox name=c2 checked> \r\nKaji Intensitas Nyeri <br>\r\n\r\n<input type=checkbox name=c2 checked> \r\nBerikan Analgetik <br>\r\n\r\n<input type=checkbox name=c2 checked> \r\nMemberikan Pendidikan Kepada Pasien & Keluarganya<br>\r\n\r\n\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit_gejala`
--

CREATE TABLE `penyakit_gejala` (
  `id_pg` int(3) NOT NULL,
  `kode_penyakit` varchar(10) NOT NULL,
  `id_gejala` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit_gejala`
--

INSERT INTO `penyakit_gejala` (`id_pg`, `kode_penyakit`, `id_gejala`) VALUES
(116, 'P01', 14),
(115, 'P01', 7),
(114, 'P01', 6),
(132, 'P04', 12),
(131, 'P04', 9),
(130, 'P04', 8),
(129, 'P03', 14),
(128, 'P03', 12),
(127, 'P03', 10),
(126, 'P03', 9),
(125, 'P03', 8),
(119, 'P02', 9),
(118, 'P02', 8),
(117, 'P02', 7),
(113, 'P01', 5),
(112, 'P01', 4),
(111, 'P01', 3),
(110, 'P01', 2),
(109, 'P01', 1),
(120, 'P02', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `tgl_konsultasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `jk`, `alamat`, `nohp`, `tgl_konsultasi`) VALUES
(1, 'sdsd', '21', '', '', '2015-12-11 11:07:57'),
(2, 'Ferri Achmad', '22', '', '', '2015-12-13 04:48:19'),
(3, 'wawan', '22', '', '', '2015-12-13 04:51:27'),
(4, 'Ferri Achmad', 'Laki-Laki', 'Padang', '082170214495', '2015-12-27 14:25:51'),
(5, 'yya', 'Laki-Laki', 'Padang', '082170214495', '2015-12-27 15:06:13'),
(6, 'yayaa', 'Laki-Laki', 'Padang', '082170214495', '2015-12-27 15:14:05'),
(7, 'yaya', 'Perempuan', 'Padang', '082170214495', '2015-12-28 07:31:00'),
(8, 'Ferri Achmad', 'Laki-Laki', 'padnag', '082177006653', '2016-01-05 06:34:24'),
(9, 'yaya', 'Perempuan', 'Padang', '081993448855', '2016-01-06 07:06:53'),
(10, 'sss', 'Laki-Laki', 'wwww', '09765373863', '2018-04-25 10:36:28'),
(11, 'aaa', 'Laki-Laki', 'aaa', '09765373863', '2018-04-25 10:37:07'),
(12, 'ssss', 'Laki-Laki', 'sss', '09765373863', '2018-04-25 10:37:36'),
(13, 'Rizal', 'Laki-Laki', 'Ps Rebo', '09765373863', '2018-04-25 10:51:54'),
(14, 'Kito', 'Laki-Laki', 'KALISARI', '09765373863', '2018-04-25 11:02:31'),
(15, 'kito', 'Laki-Laki', 'KALISARI', '09765373863', '2018-04-25 12:17:12'),
(16, 'bjkhaxhbkjb', 'Laki-Laki', 'ww', '65879867645', '2018-04-25 12:34:11'),
(17, 'scakknkjnac', 'Laki-Laki', 'ww', '65879867645', '2018-04-25 12:38:57'),
(18, 'ghgh', 'Laki-Laki', 'KALISARI', '65879867645', '2018-04-25 13:11:54'),
(19, 'hjgjhgvhj', 'Laki-Laki', 'hhkblkhb', '46547654', '2018-04-25 13:31:37'),
(20, 'reza', 'Laki-Laki', 'kramat jati', '5458606986779', '2018-04-25 13:37:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`),
  ADD UNIQUE KEY `kode_gejala` (`kode_gejala`);

--
-- Indexes for table `hasil_konsultasi`
--
ALTER TABLE `hasil_konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `keterangan`
--
ALTER TABLE `keterangan`
  ADD PRIMARY KEY (`id_keterangan`),
  ADD UNIQUE KEY `id_konsultasi` (`id_konsultasi`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `penyakit_gejala`
--
ALTER TABLE `penyakit_gejala`
  ADD PRIMARY KEY (`id_pg`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `hasil_konsultasi`
--
ALTER TABLE `hasil_konsultasi`
  MODIFY `id_konsultasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `keterangan`
--
ALTER TABLE `keterangan`
  MODIFY `id_keterangan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `penyakit_gejala`
--
ALTER TABLE `penyakit_gejala`
  MODIFY `id_pg` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
