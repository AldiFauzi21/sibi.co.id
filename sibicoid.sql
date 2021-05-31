-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 01:19 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sibicoid`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id_administrator` int(3) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `email` varchar(30) NOT NULL,
  `foto_profil` varchar(10) NOT NULL,
  `no_hp_wa` varchar(15) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kata_sandi` varchar(35) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id_administrator`, `nama_lengkap`, `email`, `foto_profil`, `no_hp_wa`, `nik`, `alamat`, `kata_sandi`, `keterangan`) VALUES
(1, 'RIZALDI SEPTIAN FAUZI', 'rizaldisfauzi@gmail.com', '1.jpg', '+62895110070118', '5271052109990002', 'JL. GN SASAK GG MEREJE I ARONG ARONG TIMUR RT/RW 002/214, DASAN AGUNG, SELAPARANG, MATARAM, NUSA TENGGARA BARAT', 'sibicoid', 'Ketua umum Yayasan Tunarungu Universitas Mataram'),
(2, 'NURAQILLA WAIDHA BINTANG GRENDIS', 'bintanggrendis2828@gmail.com', '2.jpg', '+6281529068779', '5201016812990002', 'LINGKUNGAN POHDANA, GERUNG UTARA,GERUNG, LOMBOK BARAT, NUSA TENGGARA BARAT', 'bintang123@', 'Sekretaris Umum Yayasan Tunarungu Universitas Mata'),
(3, 'NURUL NADIYATUN SHOLIHAH', 'nurulnadya15@ymail.com', '3.jpeg', '+628980196049', '5271057011980002', 'JL. HALMAHERA GG. IVB REMBIGA RT/RW 006/232, REMBIGA, SELAPARANG, MATARAM, NUSA TENGGARA BARAT', 'baskomungu123', 'Bendahara umum Yayasan Tunarungu Universitas Mata');

-- --------------------------------------------------------

--
-- Table structure for table `administrator_memasukkan`
--

CREATE TABLE `administrator_memasukkan` (
  `id_kata` int(5) NOT NULL,
  `tanggal` datetime NOT NULL,
  `id_administrator` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator_memasukkan`
--

INSERT INTO `administrator_memasukkan` (`id_kata`, `tanggal`, `id_administrator`) VALUES
(55, '2019-05-24 21:19:09', 1),
(55, '2019-06-14 07:58:00', 1),
(43, '2019-06-14 07:58:40', 1),
(41, '2019-06-14 07:58:40', 1),
(18, '2019-06-14 07:58:40', 1),
(9, '2019-06-14 07:58:40', 1),
(26, '2019-06-14 07:58:40', 1),
(1, '2019-06-14 07:58:40', 1),
(12, '2019-06-14 07:58:40', 1),
(4, '2019-06-14 07:58:40', 1),
(9, '2019-06-14 07:58:40', 1),
(44, '2019-06-15 12:27:47', 3),
(7, '2019-06-15 12:27:47', 3),
(9, '2019-06-15 12:27:47', 3),
(12, '2019-06-15 12:27:47', 3),
(1, '2019-06-15 12:27:47', 3),
(41, '2019-06-15 12:30:27', 2),
(43, '2019-06-15 12:30:27', 2),
(41, '2019-06-15 12:30:28', 2),
(43, '2019-06-15 12:30:28', 2),
(41, '2019-06-15 12:30:29', 2),
(43, '2019-06-15 12:30:29', 2),
(41, '2019-06-15 12:30:30', 2),
(43, '2019-06-15 12:30:30', 2),
(41, '2019-06-15 12:30:31', 2),
(43, '2019-06-15 12:30:31', 2),
(41, '2019-06-15 12:30:59', 2),
(50, '2019-06-15 12:30:59', 2),
(7, '2019-06-15 12:30:59', 2),
(9, '2019-06-15 12:30:59', 2),
(12, '2019-06-15 12:30:59', 2),
(1, '2019-06-15 12:30:59', 2),
(41, '2019-06-17 02:19:11', 3),
(40, '2019-06-17 02:19:11', 3),
(44, '2019-06-17 02:19:11', 3),
(41, '2019-06-17 02:19:27', 3),
(1, '2019-06-17 02:19:27', 3),
(2, '2019-06-17 02:19:27', 3),
(7, '2019-06-17 02:19:27', 3),
(8, '2019-06-17 02:19:27', 3),
(14, '2019-06-17 02:19:27', 3),
(25, '2019-06-17 02:19:27', 3),
(21, '2019-06-17 02:19:27', 3),
(18, '2019-06-17 02:19:27', 3),
(5, '2019-06-17 02:19:27', 3),
(44, '2019-06-17 02:27:24', 3),
(12, '2019-06-17 02:27:24', 3),
(15, '2019-06-17 02:27:24', 3),
(12, '2019-06-17 02:27:24', 3),
(13, '2019-06-18 07:56:55', 2),
(9, '2019-06-18 07:56:55', 2),
(1, '2019-06-18 07:56:55', 2),
(37, '2019-06-18 07:56:55', 2),
(50, '2019-06-18 07:56:55', 2),
(38, '2019-06-18 07:56:55', 2),
(44, '2019-06-18 07:56:55', 2),
(4, '2019-06-18 07:56:55', 2),
(1, '2019-06-18 07:56:55', 2),
(12, '2019-06-18 07:56:55', 2),
(1, '2019-06-18 07:56:55', 2),
(13, '2019-06-18 07:56:55', 2),
(41, '2019-06-18 08:14:05', 1),
(48, '2019-06-18 08:14:05', 1),
(42, '2019-06-18 08:14:05', 1),
(44, '2019-06-18 08:14:05', 1),
(41, '2019-06-18 08:14:33', 1),
(48, '2019-06-18 08:14:33', 1),
(42, '2019-06-18 08:14:33', 1),
(44, '2019-06-18 08:14:33', 1),
(13, '2019-06-18 08:20:19', 1),
(9, '2019-06-18 08:20:19', 1),
(1, '2019-06-18 08:20:19', 1),
(37, '2019-06-18 08:20:19', 1),
(50, '2019-06-18 08:20:19', 1),
(38, '2019-06-18 08:20:19', 1),
(44, '2019-06-18 08:20:19', 1),
(4, '2019-06-18 08:20:19', 1),
(1, '2019-06-18 08:20:19', 1),
(12, '2019-06-18 08:20:19', 1),
(1, '2019-06-18 08:20:19', 1),
(13, '2019-06-18 08:20:19', 1),
(1, '2019-06-19 12:17:49', 2),
(11, '2019-06-19 12:17:49', 2),
(21, '2019-06-19 12:17:49', 2),
(50, '2019-06-19 12:17:49', 2),
(44, '2019-06-19 12:17:49', 2),
(41, '2019-06-19 12:18:53', 2),
(50, '2019-06-19 12:18:53', 2),
(44, '2019-06-19 12:18:53', 2),
(1, '2019-06-19 12:43:55', 3),
(11, '2019-06-19 12:43:55', 3),
(21, '2019-06-19 12:43:55', 3),
(50, '2019-06-19 12:43:55', 3),
(44, '2019-06-19 12:43:55', 3),
(41, '2019-06-19 07:58:02', 2),
(44, '2019-06-19 07:58:02', 2),
(2, '2019-06-19 07:58:03', 2),
(9, '2019-06-19 07:58:03', 2),
(19, '2019-06-19 07:58:03', 2),
(1, '2019-06-19 07:58:03', 2),
(41, '2019-06-19 08:05:42', 2),
(44, '2019-06-19 08:05:42', 2),
(58, '2019-06-20 11:24:59', 2),
(57, '2019-06-20 11:26:54', 2),
(1, '2019-06-20 11:27:54', 2),
(11, '2019-06-20 11:27:55', 2),
(21, '2019-06-20 11:27:55', 2),
(50, '2019-06-20 11:27:55', 2),
(44, '2019-06-20 11:27:55', 2),
(41, '2019-06-20 11:28:07', 2),
(50, '2019-06-20 11:28:07', 2),
(44, '2019-06-20 11:28:07', 2),
(20, '2019-06-24 12:27:18', 3),
(5, '2019-06-24 12:27:18', 3),
(18, '2019-06-24 12:27:19', 3),
(9, '2019-06-24 12:27:19', 3),
(13, '2019-06-24 12:27:19', 3),
(1, '2019-06-24 12:27:19', 3),
(11, '2019-06-24 12:27:19', 3),
(1, '2019-06-24 12:27:19', 3),
(19, '2019-06-24 12:27:19', 3),
(9, '2019-06-24 12:27:19', 3),
(8, '2019-06-24 12:27:19', 3),
(39, '2019-06-24 12:27:57', 3),
(13, '2019-06-24 12:28:25', 3),
(5, '2019-06-24 12:28:25', 3),
(14, '2019-06-24 12:28:25', 3),
(3, '2019-06-24 12:28:25', 3),
(9, '2019-06-24 12:28:25', 3),
(14, '2019-06-24 12:28:25', 3),
(20, '2019-06-24 12:28:25', 3),
(1, '2019-06-24 12:28:26', 3),
(9, '2019-06-24 12:28:26', 3),
(37, '2019-06-24 12:28:49', 3),
(50, '2019-06-24 12:28:49', 3),
(38, '2019-06-24 12:28:49', 3),
(41, '2019-06-24 12:29:45', 3),
(37, '2019-06-24 12:29:45', 3),
(43, '2019-06-24 12:29:46', 3),
(38, '2019-06-24 12:29:46', 3),
(2, '2019-06-24 12:29:46', 3),
(9, '2019-06-24 12:29:46', 3),
(14, '2019-06-24 12:29:46', 3),
(20, '2019-06-24 12:29:46', 3),
(1, '2019-06-24 12:29:46', 3),
(14, '2019-06-24 12:29:46', 3),
(7, '2019-06-24 12:29:46', 3),
(3, '2019-06-24 12:29:46', 3),
(1, '2019-06-24 12:29:46', 3),
(14, '2019-06-24 12:29:46', 3),
(20, '2019-06-24 12:29:47', 3),
(9, '2019-06-24 12:29:47', 3),
(11, '2019-06-24 12:29:47', 3),
(1, '2019-07-13 08:39:45', 2),
(11, '2019-07-13 08:39:45', 2),
(21, '2019-07-13 08:39:46', 2),
(50, '2019-07-13 08:39:46', 2),
(44, '2019-07-13 08:39:46', 2),
(41, '2019-07-13 08:39:51', 2),
(50, '2019-07-13 08:39:51', 2),
(44, '2019-07-13 08:39:51', 2),
(41, '2019-07-13 08:40:09', 2),
(50, '2019-07-13 08:40:09', 2),
(44, '2019-07-13 08:40:09', 2),
(39, '2019-07-13 08:40:32', 2),
(58, '2019-07-13 08:40:48', 2),
(41, '2019-07-13 08:42:42', 2),
(50, '2019-07-13 08:42:42', 2),
(19, '2019-07-13 08:42:42', 2),
(21, '2019-07-13 08:42:42', 2),
(11, '2019-07-13 08:42:42', 2),
(1, '2019-07-13 08:42:42', 2),
(58, '2019-07-13 08:42:43', 2),
(39, '2019-07-13 08:42:43', 2),
(37, '2019-07-13 08:44:05', 2),
(50, '2019-07-13 08:44:05', 2),
(38, '2019-07-13 08:44:05', 2),
(43, '2019-09-15 12:30:14', 2),
(41, '2019-09-15 12:30:15', 2),
(2, '2019-09-15 12:30:15', 2),
(9, '2019-09-15 12:30:15', 2),
(14, '2019-09-15 12:30:15', 2),
(20, '2019-09-15 12:30:15', 2),
(1, '2019-09-15 12:30:15', 2),
(14, '2019-09-15 12:30:15', 2),
(7, '2019-09-15 12:30:15', 2),
(43, '2019-09-16 09:39:09', 2),
(41, '2019-09-16 09:39:11', 2),
(2, '2019-09-16 09:39:12', 2),
(9, '2019-09-16 09:39:13', 2),
(14, '2019-09-16 09:39:15', 2),
(20, '2019-09-16 09:39:15', 2),
(1, '2019-09-16 09:39:16', 2),
(14, '2019-09-16 09:39:16', 2),
(7, '2019-09-16 09:39:16', 2),
(39, '2019-09-16 09:40:08', 2),
(39, '2019-09-16 09:41:01', 2),
(1, '2019-09-16 09:41:07', 2),
(11, '2019-09-16 09:41:07', 2),
(21, '2019-09-16 09:41:07', 2),
(50, '2019-09-16 09:41:08', 2),
(44, '2019-09-16 09:41:08', 2),
(41, '2019-09-16 09:41:26', 2),
(50, '2019-09-16 09:41:26', 2),
(44, '2019-09-16 09:41:27', 2),
(43, '2019-09-18 11:07:11', 2),
(41, '2019-09-18 11:07:12', 2),
(9, '2019-09-18 11:07:15', 2),
(18, '2019-09-18 11:07:15', 2),
(1, '2019-09-18 11:07:16', 2),
(43, '2019-09-18 11:07:16', 2),
(41, '2019-09-18 11:07:16', 2),
(9, '2019-09-18 11:07:17', 2),
(18, '2019-09-18 11:07:17', 2),
(1, '2019-09-18 11:07:17', 2),
(41, '2019-09-19 11:51:49', 2),
(50, '2019-09-19 11:51:50', 2),
(44, '2019-09-19 11:51:50', 2),
(1, '2019-10-01 04:25:49', 1),
(11, '2019-10-01 04:25:50', 1),
(21, '2019-10-01 04:25:50', 1),
(50, '2019-10-01 04:25:50', 1),
(44, '2019-10-01 04:25:50', 1),
(1, '2019-10-01 04:30:43', 1),
(11, '2019-10-01 04:30:43', 1),
(21, '2019-10-01 04:30:43', 1),
(50, '2019-10-01 04:30:43', 1),
(44, '2019-10-01 04:30:43', 1),
(45, '2019-10-01 04:31:09', 1),
(50, '2019-10-01 04:31:09', 1),
(20, '2019-10-01 04:35:54', 1),
(5, '2019-10-01 04:35:54', 1),
(18, '2019-10-01 04:35:55', 1),
(9, '2019-10-01 04:35:55', 1),
(13, '2019-10-01 04:35:55', 1),
(1, '2019-10-01 04:35:55', 1),
(11, '2019-10-01 04:35:55', 1),
(1, '2019-10-01 04:35:55', 1),
(19, '2019-10-01 04:35:55', 1),
(9, '2019-10-01 04:35:55', 1),
(8, '2019-10-01 04:35:55', 1),
(11, '2019-10-01 04:36:56', 1),
(1, '2019-10-01 04:36:56', 1),
(19, '2019-10-01 04:36:56', 1),
(9, '2019-10-01 04:36:56', 1),
(8, '2019-10-01 04:36:56', 1),
(11, '2019-10-01 04:39:27', 1),
(1, '2019-10-01 04:39:27', 1),
(19, '2019-10-01 04:39:27', 1),
(9, '2019-10-01 04:39:27', 1),
(8, '2019-10-01 04:39:27', 1),
(11, '2019-10-01 04:39:36', 1),
(1, '2019-10-01 04:39:36', 1),
(19, '2019-10-01 04:39:36', 1),
(9, '2019-10-01 04:39:37', 1),
(8, '2019-10-01 04:39:37', 1),
(11, '2019-10-01 04:39:43', 1),
(1, '2019-10-01 04:39:43', 1),
(19, '2019-10-01 04:39:43', 1),
(9, '2019-10-01 04:39:43', 1),
(8, '2019-10-01 04:39:43', 1),
(41, '2019-10-01 04:45:14', 1),
(50, '2019-10-01 04:45:14', 1),
(44, '2019-10-01 04:45:14', 1),
(20, '2019-10-01 04:45:22', 1),
(1, '2019-10-01 04:45:22', 1),
(14, '2019-10-01 04:45:22', 1),
(7, '2019-10-01 04:45:22', 1),
(1, '2019-10-01 04:45:23', 1),
(14, '2019-10-01 04:45:23', 1),
(39, '2019-10-01 04:46:32', 1),
(58, '2019-10-01 04:47:16', 1),
(58, '2019-10-01 04:47:30', 1),
(39, '2019-10-01 04:52:04', 1),
(37, '2019-10-01 04:52:07', 1),
(50, '2019-10-01 04:52:07', 1),
(38, '2019-10-01 04:52:08', 1),
(1, '2019-10-01 06:08:12', 2),
(11, '2019-10-01 06:08:12', 2),
(21, '2019-10-01 06:08:12', 2),
(50, '2019-10-01 06:08:12', 2),
(44, '2019-10-01 06:08:12', 2),
(37, '2019-10-01 06:08:23', 2),
(50, '2019-10-01 06:08:23', 2),
(38, '2019-10-01 06:08:23', 2),
(5, '2019-10-01 06:14:14', 2),
(5, '2019-10-01 06:14:14', 2),
(11, '2019-10-01 06:14:14', 2),
(11, '2019-10-01 06:14:38', 2),
(1, '2019-10-01 06:14:38', 2),
(13, '2019-10-01 06:14:38', 2),
(16, '2019-10-01 06:14:38', 2),
(18, '2019-10-01 06:14:38', 2),
(5, '2019-10-01 06:14:38', 2),
(20, '2019-10-01 06:14:38', 2),
(23, '2019-10-01 06:14:54', 2),
(1, '2019-10-01 06:14:54', 2),
(20, '2019-10-01 06:14:54', 2),
(1, '2019-10-01 06:14:54', 2),
(19, '2019-10-01 06:14:55', 2),
(8, '2019-10-01 06:14:55', 2),
(9, '2019-10-01 06:14:55', 2),
(3, '2019-10-01 06:28:37', 2),
(3, '2019-10-01 06:30:04', 2),
(3, '2019-10-01 06:30:55', 2),
(50, '2019-10-01 06:32:51', 2),
(50, '2019-10-01 06:33:00', 2),
(41, '2019-10-01 06:33:18', 2),
(50, '2019-10-01 06:33:18', 2),
(44, '2019-10-01 06:33:18', 2),
(41, '2019-10-01 06:33:29', 2),
(50, '2019-10-01 06:33:29', 2),
(50, '2019-10-01 06:33:51', 2),
(2, '2019-10-01 06:33:51', 2),
(21, '2019-10-01 06:33:52', 2),
(1, '2019-10-01 06:33:52', 2),
(20, '2019-10-01 06:33:52', 2),
(18, '2019-10-01 06:33:52', 2),
(1, '2019-10-01 06:33:52', 2),
(19, '2019-10-01 06:33:52', 2),
(1, '2019-10-01 06:33:52', 2),
(9, '2019-10-01 06:33:52', 2),
(14, '2019-10-01 06:33:52', 2),
(4, '2019-10-01 06:33:52', 2),
(1, '2019-10-01 06:33:52', 2),
(8, '2019-10-01 06:33:52', 2),
(20, '2019-10-01 06:34:59', 2),
(5, '2019-10-01 06:34:59', 2),
(18, '2019-10-01 06:34:59', 2),
(9, '2019-10-01 06:34:59', 2),
(13, '2019-10-01 06:34:59', 2),
(1, '2019-10-01 06:34:59', 2),
(11, '2019-10-01 06:34:59', 2),
(1, '2019-10-01 06:34:59', 2),
(19, '2019-10-01 06:34:59', 2),
(9, '2019-10-01 06:35:00', 2),
(8, '2019-10-01 06:35:00', 2),
(58, '2019-10-01 06:36:02', 2),
(39, '2019-10-01 06:36:06', 2),
(20, '2019-10-01 06:36:10', 2),
(5, '2019-10-01 06:36:10', 2),
(18, '2019-10-01 06:36:10', 2),
(9, '2019-10-01 06:36:10', 2),
(13, '2019-10-01 06:36:10', 2),
(1, '2019-10-01 06:36:11', 2),
(11, '2019-10-01 06:36:11', 2),
(1, '2019-10-01 06:36:11', 2),
(19, '2019-10-01 06:36:11', 2),
(9, '2019-10-01 06:36:11', 2),
(8, '2019-10-01 06:36:11', 2),
(39, '2019-10-01 06:36:16', 2),
(58, '2019-10-01 06:36:24', 2),
(41, '2019-10-01 06:58:36', 2),
(50, '2019-10-01 06:58:36', 2),
(44, '2019-10-01 06:58:36', 2),
(13, '2019-10-01 06:59:25', 2),
(5, '2019-10-01 06:59:25', 2),
(3, '2019-10-01 06:59:26', 2),
(9, '2019-10-01 06:59:26', 2),
(14, '2019-10-01 06:59:26', 2),
(20, '2019-10-01 06:59:26', 2),
(1, '2019-10-01 06:59:26', 2),
(9, '2019-10-01 06:59:26', 2),
(50, '2019-10-01 06:59:52', 2),
(1, '2019-10-01 07:01:30', 2),
(11, '2019-10-01 07:01:30', 2),
(21, '2019-10-01 07:01:30', 2),
(50, '2019-10-01 07:01:30', 2),
(13, '2019-10-01 07:01:31', 2),
(21, '2019-10-01 07:01:31', 2),
(11, '2019-10-01 07:01:31', 2),
(1, '2019-10-01 07:01:31', 2),
(18, '2019-10-01 07:01:31', 2),
(5, '2019-10-01 07:01:31', 2),
(14, '2019-10-01 07:01:31', 2),
(1, '2019-10-01 07:01:31', 2),
(1, '2019-10-01 07:01:31', 2),
(11, '2019-10-01 07:01:31', 2),
(21, '2019-10-01 07:01:31', 2),
(50, '2019-10-01 07:01:48', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gambar_sibi`
--

CREATE TABLE `gambar_sibi` (
  `id_gambar` int(5) NOT NULL,
  `gambar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar_sibi`
--

INSERT INTO `gambar_sibi` (`id_gambar`, `gambar`) VALUES
(1, 'A.jpg'),
(2, 'B.jpg'),
(3, 'C.jpg'),
(4, 'D.jpg'),
(6, 'E.jpg'),
(7, 'F.jpg'),
(8, 'G.jpg'),
(9, 'H.jpg'),
(10, 'I.jpg'),
(11, 'J.gif'),
(12, 'K.jpg'),
(13, 'L.jpg'),
(14, 'M.jpg'),
(15, 'N.jpg'),
(16, 'O.jpg'),
(17, 'P.jpg'),
(18, 'Q.jpg'),
(19, 'R.jpg'),
(20, 'S.jpg'),
(21, 'T.jpg'),
(22, 'U.jpg'),
(23, 'V.jpg'),
(24, 'W.jpg'),
(25, 'X.jpg'),
(26, 'Y.jpg'),
(27, 'Z.gif'),
(28, '0.gif'),
(29, '1.jpg'),
(30, '2.jpg'),
(31, '3.jpg'),
(32, '4.jpg'),
(33, '5.jpg'),
(34, '6.jpg'),
(35, '7.jpg'),
(36, '8.jpg'),
(37, '9.jpg'),
(38, 'me-.gif'),
(39, '-i.gif'),
(40, 'terima_kasih.gif'),
(41, 'saya.gif'),
(42, 'sama.gif'),
(43, 'nama.gif'),
(44, 'kamu.gif'),
(45, 'bahagia.gif'),
(46, 'cinta.gif'),
(47, 'dia.gif'),
(48, 'halo.gif'),
(49, 'hore.gif');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` varchar(100) NOT NULL,
  `id_administrator` int(3) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `instansi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `judul`, `isi`, `id_administrator`, `gambar`, `tanggal`, `instansi`) VALUES
(1, 'Yayasan Tunarungu Sehjira (Sehat Jiwa Raga)', 'Yayasan Tunarungu Sehjira (Sehat Jiwa Raga).txt', 1, 'informasi/images/5d07c6047d8f4.jpeg', '2019-06-01', 'Yayasan Tunarungu Sehjira'),
(2, 'Pemutaran dan Diskusi Film Rumah Siput', 'Pemutaran dan Diskusi Film Rumah Siput.txt', 3, 'informasi/images/5d07e97ae3f63.jpeg', '2019-06-01', ' Gerkatin Kepemudaan dan Sedap Film'),
(3, 'Mobile Legends Mendukung Komunitas Tuna Rungu di Semarang!', 'Mobile Legends Mendukung Komunitas Tuna Rungu di Semarang!.txt', 2, 'informasi/images/5d07e9be468f4.jpeg', '2019-06-03', 'DLT E-Sport'),
(4, 'Melihat Meriahnya Pemilihan Duta Tuna Rungu Denpasar', 'Melihat Meriahnya Pemilihan Duta Tuna Rungu Denpasar.txt', 2, 'informasi/images/5d0855b8be184.jpeg', '2019-06-03', 'Pemerintah Kota Denpasar'),
(19, 'Gerkatin NTB Ajak Masyarakat Belajar Bahasa Isyarat', 'Gerkatin NTB Ajak Masyarakat Belajar Bahasa Isyarat.txt', 1, 'informasi/images/5d08582f09ed1.jpg', '2019-06-03', 'Gerkatin NTB'),
(20, 'Penggunaan Bahasa Isyarat di Acara Televisi Akan Diwajibkan!', 'Penggunaan Bahasa Isyarat di Acara Televisi Akan Diwajibkan!.txt', 1, 'informasi/images/5d086cba59949.jpg', '2019-06-05', 'Kementerian Komunikasi dan Informatika Republik Indonesia'),
(21, 'Dewi Sandra Belajar Bahasa Isyarat Demi Akrab dengan Anak-Anak Tuna Rungu', 'Dewi Sandra Belajar Bahasa Isyarat Demi Akrab dengan Anak-Anak Tuna Rungu.txt', 1, 'informasi/images/5d099f535da9d.jpeg', '2019-06-05', 'Detik.com'),
(26, 'Dua Jempol! Ada Penerjemah Bahasa Isyarat di Konser Eminem', 'Dua Jempol! Ada Penerjemah Bahasa Isyarat di Konser Eminem.txt', 1, 'informasi/images/5d09a2a2edd2d.jpg', '2019-06-05', 'Detik.com'),
(27, 'Manfaatkan Limbah Kain, Komunitas Tembikar Ajari Tuna Rungu Buat Kerajinan', 'Manfaatkan Limbah Kain, Komunitas Tembikar Ajari Tuna Rungu Buat Kerajinan.txt', 2, 'informasi/images/5d09a3764989c.jpg', '2019-06-09', 'Komunitas Temanggung'),
(28, 'Inspiratif, Cerita Aktivis Tuna Rungu Angkie Yudistia Saat Berhijab', 'Inspiratif, Cerita Aktivis Tuna Rungu Angkie Yudistia Saat Berhijab.txt', 3, 'informasi/images/5d09a45b22bdd.png', '2019-06-09', 'Hijablyfe'),
(29, 'Salut, Starbucks Bahasa Isyarat Kini Dibuka di China', 'Salut, Starbucks Bahasa Isyarat Kini Dibuka di China.txt', 1, 'informasi/images/5d09a4df71bcd.jpg', '2019-06-09', 'Starbukcs'),
(30, 'Ngabuburit, Pemuda Lintas Iman Belajar Bahasa Isyarat di Halaman Gereja', 'Ngabuburit, Pemuda Lintas Iman Belajar Bahasa Isyarat di Halaman Gereja.txt', 1, 'informasi/images/5d09a5da150bc.jpg', '2019-06-11', 'KOMPAS.COM'),
(31, '\"Act of Green\" Binus School, Langkah Kecil untuk Perubahan Lingkungan', '\"Act of Green\" Binus School, Langkah Kecil untuk Perubahan Lingkungan.txt', 3, 'informasi/images/5d09a6b9591af.jpeg', '2019-06-11', 'Universitas Bina Nusantara'),
(32, 'Jam Ratusan Juta Dilelang untuk Rumah Belajar Miranda', 'Jam Ratusan Juta Dilelang untuk Rumah Belajar Miranda.txt', 2, 'informasi/images/5d09a7dc85b2e.jpg', '2019-06-17', 'PT.Euro Batik Bangunan Indonesia'),
(34, 'Ada Kemeriahan Ramadhan Berbagi Taman Kartini', 'Ada Kemeriahan Ramadhan Berbagi Taman Kartini.txt', 1, 'informasi/images/5d09a91b8d53d.jpg', '2019-06-23', 'Pammbos'),
(35, 'Humanity Food Van ACT Jangkau Anak Berkebutuhan Khusus di Batulicin', 'Humanity Food Van ACT Jangkau Anak Berkebutuhan Khusus di Batulicin.txt', 1, 'informasi/images/5d09a9893dcde.jpg', '2019-06-19', 'Aksi Cepat Tanggap (ACT)'),
(36, 'Menengok Masjid El Syifa Ciganjur yang Ramah Penyandang Disabilitas ', 'Menengok Masjid El Syifa Ciganjur yang Ramah Penyandang Disabilitas .txt', 2, 'informasi/images/5d09a9fe8488b.jpg', '2019-06-19', 'Dewan Kemakmuran Masjid (DKM) El-Syifa'),
(38, 'Hebat! 3 Mahasiswa Berhasil Merealisasikan Solusi Masalah Pembelajaran SIBI.', 'Hebat! 3 Mahasiswa Berhasil Merealisasikan Solusi Masalah Pembelajaran SIBI..txt', 3, 'informasi/images/5d0f111076b91.jpg', '2019-06-23', 'Infinitive 2017');

-- --------------------------------------------------------

--
-- Table structure for table `kata`
--

CREATE TABLE `kata` (
  `id_kata` int(5) NOT NULL,
  `id_gambar` int(5) NOT NULL,
  `kata` varchar(16) NOT NULL,
  `jenis_kata` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kata`
--

INSERT INTO `kata` (`id_kata`, `id_gambar`, `kata`, `jenis_kata`) VALUES
(1, 1, 'A', 0),
(2, 2, 'B', 0),
(3, 3, 'C', 0),
(4, 4, 'D', 0),
(5, 6, 'E', 0),
(6, 7, 'F', 0),
(7, 8, 'G', 0),
(8, 9, 'H', 0),
(9, 10, 'I', 0),
(10, 11, 'J', 0),
(11, 12, 'K', 0),
(12, 13, 'L', 0),
(13, 14, 'M', 0),
(14, 15, 'N', 0),
(15, 16, 'O', 0),
(16, 17, 'P', 0),
(17, 18, 'Q', 0),
(18, 19, 'R', 0),
(19, 20, 'S', 0),
(20, 21, 'T', 0),
(21, 22, 'U', 0),
(22, 23, 'V', 0),
(23, 24, 'W', 0),
(24, 25, 'X', 0),
(25, 26, 'Y', 0),
(26, 27, 'Z', 0),
(27, 28, '0', 0),
(28, 29, '1', 0),
(29, 30, '2', 0),
(30, 31, '3', 0),
(31, 32, '4', 0),
(32, 33, '5', 0),
(33, 34, '6', 0),
(34, 35, '7', 0),
(35, 36, '8', 0),
(36, 37, '9', 0),
(37, 38, 'me-', 2),
(38, 39, '-i', 3),
(39, 40, 'terima kasih', 4),
(40, 40, 'makasi', 4),
(41, 41, 'saya', 1),
(42, 42, 'sama', 1),
(43, 43, 'nama', 1),
(44, 44, 'kamu', 1),
(45, 44, 'kau', 1),
(46, 44, 'engkau', 1),
(47, 44, 'dikau', 1),
(48, 45, 'bahagia', 1),
(49, 45, 'gembira', 1),
(50, 46, 'cinta', 1),
(51, 47, 'dia', 1),
(52, 47, 'ia', 1),
(53, 47, 'beliau', 1),
(54, 48, 'halo', 1),
(55, 48, 'assalamualaikum', 4),
(56, 48, 'assalamu`alaikum', 4),
(57, 49, 'hore', 4),
(58, 49, 'tepuk tangan', 4),
(59, 28, 'nol', 0),
(60, 29, 'satu', 0),
(61, 30, 'dua', 0),
(62, 31, 'tiga', 0),
(63, 32, 'empat', 0),
(64, 33, 'lima', 0),
(65, 34, 'enam', 0),
(66, 35, 'tujuh', 0),
(67, 36, 'delapan', 0),
(68, 37, 'sembilan', 0),
(69, 28, 'puluh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `membaca`
--

CREATE TABLE `membaca` (
  `id_pengguna` int(7) NOT NULL,
  `tanggal` datetime NOT NULL,
  `id_informasi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membaca`
--

INSERT INTO `membaca` (`id_pengguna`, `tanggal`, `id_informasi`) VALUES
(6, '2019-06-18 01:42:15', 3),
(1, '2019-06-19 12:45:45', 36),
(2, '2019-06-23 01:42:06', 38),
(2, '2019-06-23 01:42:21', 28),
(2, '2019-06-23 01:42:28', 34),
(2, '2019-06-23 01:42:51', 29),
(2, '2019-06-24 04:59:07', 38);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(7) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_hp_wa` varchar(15) NOT NULL,
  `kata_sandi` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `email`, `alamat`, `no_hp_wa`, `kata_sandi`) VALUES
(1, 'NURUL NADIYATUN SHOLIHAH', 'nurulnadiya19@gmail.com', 'JL. HALMAHERA GG. IVB REMBIGA RT/RW 006/232, REMBIGA, SELAPARANG, MATARAM, NUSA TENGGARA BARAT', '+628980196049', 'baskomungu123'),
(2, 'NURAQILLA WAIDHA BINTANG GRENDIS', 'bintangjelek@gmail.com', 'Jalan Imam Bonjol No.9, Gg.Arjuna, Lombok Barat, MATARAM, NUSA TENGGARA BARAT', '+6281529068779', 'bintang123@'),
(4, 'SIBICOID', 'sibicoid@gmail.com', 'JL. PEMUDA, DASAN AGUNG BARU, SELAPARANG, MATARAM, NUSA TENGGARA BARAT', '0895110070118', 'sibi.co.id2019'),
(5, 'PUTU AYU DESI ANGGARA SANTI', 'asdesi14@gmail.com', 'JL. DIPONEGORO KRAMAT NUNGGAL, MATARAM, NUSA TENGGARA BARAT', '+6282342293727', 'terserah'),
(6, 'RIZALDI SEPTIAN FAUZI', 'rizaldisuper@yahoo.co.id', 'JL. GN SASAK GG MEREJE I ARONG ARONG TIMUR RT/RW 002/214, DASAN AGUNG, SELAPARANG, MATARAM, NUSA TENGGARA BARAT', '+62895110070118', 'sibicoid'),
(7, 'ABDUSYSYAKIR WAJDI', 'wajdisyakir79@gmail.com', 'JL. PERSIL  KM. 3 TANAK BEAK, LOMBOK TENGAH, NUSA TENGGARA BARAT', '081917679670', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_memasukkan`
--

CREATE TABLE `pengguna_memasukkan` (
  `id_kata` int(5) NOT NULL,
  `tanggal` datetime NOT NULL,
  `id_pengguna` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna_memasukkan`
--

INSERT INTO `pengguna_memasukkan` (`id_kata`, `tanggal`, `id_pengguna`) VALUES
(51, '2019-05-24 09:21:19', 1),
(41, '2019-06-17 12:33:54', 5),
(49, '2019-06-17 12:33:54', 5),
(13, '2019-06-17 12:33:54', 5),
(1, '2019-06-17 12:33:54', 5),
(11, '2019-06-17 12:33:54', 5),
(1, '2019-06-17 12:33:54', 5),
(14, '2019-06-17 12:33:54', 5),
(41, '2019-06-17 02:22:51', 5),
(7, '2019-06-17 02:22:51', 5),
(9, '2019-06-17 02:22:51', 5),
(12, '2019-06-17 02:22:51', 5),
(1, '2019-06-17 02:22:51', 5),
(1, '2019-06-17 02:22:51', 5),
(12, '2019-06-17 02:22:51', 5),
(4, '2019-06-17 02:22:51', 5),
(9, '2019-06-17 02:22:51', 5),
(10, '2019-06-17 02:22:51', 5),
(5, '2019-06-17 02:22:51', 5),
(12, '2019-06-17 02:22:51', 5),
(5, '2019-06-17 02:22:51', 5),
(11, '2019-06-17 02:22:51', 5),
(19, '2019-06-17 02:25:49', 4),
(9, '2019-06-17 02:25:49', 4),
(2, '2019-06-17 02:25:49', 4),
(9, '2019-06-17 02:25:49', 4),
(19, '2019-06-17 02:26:04', 4),
(9, '2019-06-17 02:26:04', 4),
(2, '2019-06-17 02:26:04', 4),
(9, '2019-06-17 02:26:04', 4),
(1, '2019-06-17 05:15:14', 7),
(19, '2019-06-17 05:15:14', 7),
(21, '2019-06-17 05:15:14', 7),
(41, '2019-06-17 05:15:45', 7),
(50, '2019-06-17 05:15:45', 7),
(1, '2019-06-17 05:15:45', 7),
(19, '2019-06-17 05:15:45', 7),
(21, '2019-06-17 05:15:45', 7),
(20, '2019-06-24 11:39:33', 2),
(5, '2019-06-24 11:39:33', 2),
(18, '2019-06-24 11:39:34', 2),
(9, '2019-06-24 11:39:34', 2),
(13, '2019-06-24 11:39:34', 2),
(1, '2019-06-24 11:39:34', 2),
(11, '2019-06-24 11:39:34', 2),
(1, '2019-06-24 11:39:34', 2),
(19, '2019-06-24 11:39:34', 2),
(9, '2019-06-24 11:39:34', 2),
(8, '2019-06-24 11:39:34', 2),
(39, '2019-06-24 11:39:56', 2),
(37, '2019-06-24 11:41:01', 2),
(50, '2019-06-24 11:41:01', 2),
(38, '2019-06-24 11:41:01', 2),
(41, '2019-06-24 11:42:15', 2),
(37, '2019-06-24 11:42:15', 2),
(43, '2019-06-24 11:42:15', 2),
(38, '2019-06-24 11:42:15', 2),
(2, '2019-06-24 11:42:15', 2),
(9, '2019-06-24 11:42:15', 2),
(14, '2019-06-24 11:42:15', 2),
(20, '2019-06-24 11:42:16', 2),
(1, '2019-06-24 11:42:16', 2),
(14, '2019-06-24 11:42:16', 2),
(7, '2019-06-24 11:42:16', 2),
(3, '2019-06-24 11:42:16', 2),
(1, '2019-06-24 11:42:16', 2),
(14, '2019-06-24 11:42:16', 2),
(20, '2019-06-24 11:42:16', 2),
(9, '2019-06-24 11:42:16', 2),
(11, '2019-06-24 11:42:16', 2),
(20, '2019-06-24 04:27:34', 2),
(5, '2019-06-24 04:27:34', 2),
(18, '2019-06-24 04:27:34', 2),
(9, '2019-06-24 04:27:34', 2),
(13, '2019-06-24 04:27:34', 2),
(1, '2019-06-24 04:27:34', 2),
(11, '2019-06-24 04:27:34', 2),
(1, '2019-06-24 04:27:34', 2),
(19, '2019-06-24 04:27:35', 2),
(9, '2019-06-24 04:27:35', 2),
(8, '2019-06-24 04:27:35', 2),
(39, '2019-06-24 04:27:49', 2),
(58, '2019-06-24 04:28:08', 2),
(37, '2019-06-24 04:28:25', 2),
(50, '2019-06-24 04:28:25', 2),
(38, '2019-06-24 04:28:25', 2),
(13, '2019-06-24 04:28:41', 2),
(5, '2019-06-24 04:28:41', 2),
(14, '2019-06-24 04:28:41', 2),
(3, '2019-06-24 04:28:41', 2),
(9, '2019-06-24 04:28:41', 2),
(14, '2019-06-24 04:28:41', 2),
(20, '2019-06-24 04:28:41', 2),
(1, '2019-06-24 04:28:41', 2),
(9, '2019-06-24 04:28:42', 2),
(41, '2019-06-24 04:29:42', 2),
(37, '2019-06-24 04:29:42', 2),
(43, '2019-06-24 04:29:43', 2),
(38, '2019-06-24 04:29:43', 2),
(2, '2019-06-24 04:29:43', 2),
(9, '2019-06-24 04:29:43', 2),
(14, '2019-06-24 04:29:43', 2),
(20, '2019-06-24 04:29:43', 2),
(1, '2019-06-24 04:29:43', 2),
(14, '2019-06-24 04:29:43', 2),
(7, '2019-06-24 04:29:43', 2),
(3, '2019-06-24 04:29:43', 2),
(1, '2019-06-24 04:29:43', 2),
(14, '2019-06-24 04:29:44', 2),
(20, '2019-06-24 04:29:44', 2),
(9, '2019-06-24 04:29:44', 2),
(11, '2019-06-24 04:29:44', 2),
(41, '2019-06-24 04:59:42', 2),
(37, '2019-06-24 04:59:42', 2),
(3, '2019-06-24 04:59:42', 2),
(9, '2019-06-24 04:59:42', 2),
(14, '2019-06-24 04:59:42', 2),
(20, '2019-06-24 04:59:42', 2),
(1, '2019-06-24 04:59:42', 2),
(9, '2019-06-24 04:59:42', 2),
(44, '2019-06-24 04:59:42', 2),
(1, '2019-06-24 04:59:52', 2),
(11, '2019-06-24 04:59:52', 2),
(21, '2019-06-24 04:59:52', 2),
(50, '2019-06-24 04:59:52', 2),
(44, '2019-06-24 04:59:52', 2),
(41, '2019-06-24 05:00:02', 2),
(50, '2019-06-24 05:00:02', 2),
(44, '2019-06-24 05:00:02', 2),
(39, '2019-06-24 05:00:36', 2),
(43, '2019-06-24 05:01:07', 2),
(41, '2019-06-24 05:01:07', 2),
(6, '2019-06-24 05:01:07', 2),
(1, '2019-06-24 05:01:07', 2),
(10, '2019-06-24 05:01:07', 2),
(1, '2019-06-24 05:01:07', 2),
(18, '2019-06-24 05:01:07', 2),
(1, '2019-06-25 12:24:48', 2),
(11, '2019-06-25 12:24:48', 2),
(21, '2019-06-25 12:24:48', 2),
(50, '2019-06-25 12:24:48', 2),
(44, '2019-06-25 12:24:48', 2),
(41, '2019-06-25 12:24:53', 2),
(50, '2019-06-25 12:24:53', 2),
(44, '2019-06-25 12:24:53', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id_administrator`);

--
-- Indexes for table `administrator_memasukkan`
--
ALTER TABLE `administrator_memasukkan`
  ADD KEY `id_kata` (`id_kata`),
  ADD KEY `id_administrator` (`id_administrator`);

--
-- Indexes for table `gambar_sibi`
--
ALTER TABLE `gambar_sibi`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`),
  ADD KEY `id_administrator` (`id_administrator`);

--
-- Indexes for table `kata`
--
ALTER TABLE `kata`
  ADD PRIMARY KEY (`id_kata`),
  ADD KEY `id_gambar` (`id_gambar`);

--
-- Indexes for table `membaca`
--
ALTER TABLE `membaca`
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_informasi` (`id_informasi`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `pengguna_memasukkan`
--
ALTER TABLE `pengguna_memasukkan`
  ADD KEY `id_kata` (`id_kata`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id_administrator` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gambar_sibi`
--
ALTER TABLE `gambar_sibi`
  MODIFY `id_gambar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `kata`
--
ALTER TABLE `kata`
  MODIFY `id_kata` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administrator_memasukkan`
--
ALTER TABLE `administrator_memasukkan`
  ADD CONSTRAINT `fk_adm_memasukkan_admin` FOREIGN KEY (`id_administrator`) REFERENCES `administrator` (`id_administrator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_adm_memasukkan_kata` FOREIGN KEY (`id_kata`) REFERENCES `kata` (`id_kata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `informasi`
--
ALTER TABLE `informasi`
  ADD CONSTRAINT `fk_informasi_admin` FOREIGN KEY (`id_administrator`) REFERENCES `administrator` (`id_administrator`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kata`
--
ALTER TABLE `kata`
  ADD CONSTRAINT `fk_kata_gambar` FOREIGN KEY (`id_gambar`) REFERENCES `gambar_sibi` (`id_gambar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `membaca`
--
ALTER TABLE `membaca`
  ADD CONSTRAINT `fk_membaca_informasi` FOREIGN KEY (`id_informasi`) REFERENCES `informasi` (`id_informasi`),
  ADD CONSTRAINT `fk_membaca_pengguna` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengguna_memasukkan`
--
ALTER TABLE `pengguna_memasukkan`
  ADD CONSTRAINT `fk_pggn_memasukkan_kata` FOREIGN KEY (`id_kata`) REFERENCES `kata` (`id_kata`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pggn_memasukkan_pengguna` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
