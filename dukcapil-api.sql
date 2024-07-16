-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2024 at 05:56 PM
-- Server version: 10.11.8-MariaDB-log
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dukcapil-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_penduduks`
--

CREATE TABLE `data_penduduks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `pendidikan` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `golongan_darah` enum('A','B','AB','O') NOT NULL,
  `status_perkawinan` enum('Kawin','Belum Kawin','Cerai Hidup','Cerai Mati') NOT NULL,
  `tanggal_perkawinan` date DEFAULT NULL,
  `status_dalam_keluarga` varchar(255) NOT NULL,
  `kewarganegaraan` varchar(255) NOT NULL,
  `no_paspor` varchar(255) DEFAULT NULL,
  `no_kitap` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_penduduks`
--

INSERT INTO `data_penduduks` (`id`, `nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `rt`, `rw`, `kelurahan`, `kecamatan`, `kabupaten`, `agama`, `pendidikan`, `pekerjaan`, `golongan_darah`, `status_perkawinan`, `tanggal_perkawinan`, `status_dalam_keluarga`, `kewarganegaraan`, `no_paspor`, `no_kitap`, `nama_ayah`, `nama_ibu`, `created_at`, `updated_at`) VALUES
(1, '3216139433401250', 'Hilda Hidayanto', 'Purwakarta', '2008-09-21', 'P', 'Dusun Krajan', '013', '018', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:50', '2024-07-16 10:43:50'),
(2, '3216134560546023', 'Zizi Laksita', 'Purwakarta', '2009-09-08', 'P', 'Dusun Krajan', '008', '002', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(3, '3216139544404776', 'Febi Laksita', 'Karawang', '2008-01-16', 'P', 'Dusun Sukamanah', '008', '020', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(4, '3216138080464999', 'Wirda Damanik', 'Purwakarta', '2010-11-28', 'P', 'Dusun Sukamanah', '002', '020', 'Kamojing', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(5, '3216136861705076', 'Usyi Hidayanto', 'Karawang', '2010-09-04', 'P', 'Dusun Sukamanah', '014', '010', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(6, '3216135185132374', 'Hafshah Zulaika', 'Purwakarta', '2010-09-27', 'P', 'Dusun Sukamanah', '002', '017', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(7, '3216135088293861', 'Maida Hassanah', 'Karawang', '2008-04-15', 'P', 'Dusun Karajan Timur', '014', '015', 'Kamojing', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(8, '3216138274647158', 'Sarah Oktaviani', 'Karawang', '2010-08-12', 'P', 'Dusun Karajan Barat', '011', '008', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(9, '3216130281510865', 'Victoria Mandasari', 'Bekasi', '2010-09-25', 'P', 'Dusun Karajan Timur', '010', '019', 'Kalihurip', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(10, '3216130978134539', 'Belinda Dabukke', 'Subang', '2010-10-06', 'P', 'Dusun Karajan Barat', '008', '015', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(11, '3216137180820377', 'Pia Halimah', 'Karawang', '2009-09-26', 'P', 'Dusun Krajan', '004', '008', 'Kamojing', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(12, '3216134290689416', 'Elma Siregar', 'Subang', '2010-04-15', 'P', 'Dusun Kalihurp', '001', '016', 'Kamojing', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(13, '3216134201936180', 'Unjani Wacana', 'Karawang', '2008-06-30', 'P', 'Dusun Karajan Barat', '003', '001', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(14, '3216131327645425', 'Ratih Rahmawati', 'Karawang', '2009-07-12', 'P', 'Dusun Sukamanah', '014', '011', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(15, '3216135690318989', 'Nilam Susanti', 'Bekasi', '2008-12-27', 'P', 'Dusun Karajan Timur', '008', '005', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(16, '3216139898515241', 'Keisha Budiyanto', 'Purwakarta', '2008-07-13', 'P', 'Dusun Karajan Timur', '017', '013', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(17, '3216139959610923', 'Paramita Lailasari', 'Subang', '2010-03-16', 'P', 'Dusun Sukamanah', '006', '002', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(18, '3216136362162027', 'Kartika Mardhiyah', 'Bekasi', '2009-12-26', 'P', 'Dusun Krajan', '004', '010', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(19, '3216130412114085', 'Dian Hakim', 'Karawang', '2009-03-25', 'P', 'Dusun Sukajadi', '006', '013', 'Kamojing', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(20, '3216132787119925', 'Sabrina Wacana', 'Bekasi', '2010-01-19', 'P', 'Dusun Krajan', '018', '004', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(21, '3216130385431529', 'Tantri Manullang', 'Subang', '2008-07-29', 'P', 'Dusun Karajan Timur', '019', '015', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(22, '3216139234860512', 'Clara Prasetyo', 'Karawang', '2010-12-17', 'P', 'Dusun Kalihurp', '019', '011', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(23, '3216136642700563', 'Ciaobella Laksmiwati', 'Subang', '2009-11-25', 'P', 'Dusun Kalihurp', '010', '013', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(24, '3216132079147467', 'Zizi Nashiruddin', 'Karawang', '2010-04-17', 'P', 'Dusun Sukamanah', '003', '006', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(25, '3216138134095706', 'Hasna Utami', 'Bekasi', '2010-10-11', 'P', 'Dusun Kalihurp', '003', '010', 'Kamojing', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(26, '3216130065796367', 'Anastasia Wibisono', 'Bekasi', '2008-07-25', 'P', 'Dusun Sukamanah', '006', '020', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(27, '3216135862072552', 'Endah Natsir', 'Karawang', '2008-01-25', 'P', 'Dusun Karajan Barat', '013', '019', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(28, '3216135722266451', 'Dewi Saefullah', 'Purwakarta', '2008-03-29', 'P', 'Dusun Karajan Timur', '005', '017', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(29, '3216132486654132', 'Zamira Astuti', 'Bekasi', '2009-06-06', 'P', 'Dusun Sukamanah', '008', '013', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(30, '3216135120480548', 'Latika Winarsih', 'Karawang', '2010-11-23', 'P', 'Dusun Krajan', '003', '003', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(31, '3216137676610748', 'Tania Zulaika', 'Purwakarta', '2010-01-11', 'P', 'Dusun Karajan Barat', '019', '018', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(32, '3216138639381698', 'Vanesa Rahayu', 'Bekasi', '2010-10-20', 'P', 'Dusun Karajan Barat', '014', '019', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(33, '3216132293241102', 'Yance Astuti', 'Purwakarta', '2009-08-13', 'P', 'Dusun Krajan', '001', '015', 'Kalihurip', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(34, '3216130841743110', 'Halima Hidayanto', 'Subang', '2010-12-11', 'P', 'Dusun Karajan Barat', '006', '008', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(35, '3216132834490085', 'Yessi Halim', 'Subang', '2008-04-13', 'P', 'Dusun Krajan', '011', '012', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(36, '3216133855161402', 'Puspa Zulaika', 'Purwakarta', '2008-03-03', 'P', 'Dusun Karajan Barat', '002', '006', 'Kalihurip', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(37, '3216138562592216', 'Elvina Irawan', 'Karawang', '2009-03-22', 'P', 'Dusun Sukajadi', '004', '020', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(38, '3216136178588027', 'Gina Damanik', 'Subang', '2008-11-24', 'P', 'Dusun Karajan Timur', '015', '010', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(39, '3216131426053540', 'Winda Rahmawati', 'Karawang', '2009-05-13', 'P', 'Dusun Karajan Barat', '004', '001', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(40, '3216134256147590', 'Pia Anggraini', 'Purwakarta', '2009-04-14', 'P', 'Dusun Kalihurp', '010', '017', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(41, '3216130948569735', 'Tania Halimah', 'Purwakarta', '2008-04-06', 'P', 'Dusun Sukamanah', '002', '010', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(42, '3216139304525026', 'Silvia Simanjuntak', 'Bekasi', '2010-05-30', 'P', 'Dusun Kalihurp', '011', '019', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(43, '3216130959102221', 'Jane Hariyah', 'Subang', '2010-11-09', 'P', 'Dusun Sukajadi', '015', '007', 'Kalihurip', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(44, '3216130842358030', 'Tantri Nashiruddin', 'Bekasi', '2009-08-28', 'P', 'Dusun Karajan Timur', '001', '009', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(45, '3216137264833537', 'Olivia Pertiwi', 'Bekasi', '2008-10-29', 'P', 'Dusun Kalihurp', '005', '015', 'Kalihurip', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(46, '3216133683270743', 'Ami Wulandari', 'Purwakarta', '2009-12-20', 'P', 'Dusun Krajan', '009', '013', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(47, '3216137419495788', 'Patricia Nuraini', 'Karawang', '2009-01-05', 'P', 'Dusun Sukajadi', '020', '006', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(48, '3216132028347412', 'Ajeng Rahimah', 'Purwakarta', '2008-02-04', 'P', 'Dusun Sukajadi', '020', '003', 'Kalihurip', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(49, '3216135180917453', 'Zizi Uwais', 'Karawang', '2009-09-10', 'P', 'Dusun Krajan', '016', '014', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(50, '3216134202211340', 'Jane Siregar', 'Karawang', '2008-02-22', 'P', 'Dusun Karajan Timur', '005', '020', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(51, '3216136154411030', 'Kamaria Megantara', 'Purwakarta', '2010-06-06', 'P', 'Dusun Karajan Timur', '018', '001', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(52, '3216135556769443', 'Juli Kuswandari', 'Purwakarta', '2009-11-10', 'P', 'Dusun Karajan Timur', '012', '001', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(53, '3216135977242964', 'Ana Santoso', 'Subang', '2008-02-03', 'P', 'Dusun Sukamanah', '002', '006', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(54, '3216136705745641', 'Lintang Puspita', 'Karawang', '2010-07-25', 'P', 'Dusun Krajan', '006', '003', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(55, '3216135624609021', 'Talia Napitupulu', 'Purwakarta', '2009-01-18', 'P', 'Dusun Krajan', '017', '020', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(56, '3216139769278230', 'Pia Pradipta', 'Subang', '2010-12-15', 'P', 'Dusun Sukajadi', '002', '001', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(57, '3216135863842541', 'Kamila Nababan', 'Bekasi', '2009-12-19', 'P', 'Dusun Kalihurp', '004', '018', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(58, '3216133289085216', 'Jasmin Pradipta', 'Subang', '2010-08-26', 'P', 'Dusun Karajan Timur', '019', '016', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(59, '3216137564449530', 'Iriana Yuniar', 'Subang', '2010-04-23', 'P', 'Dusun Karajan Barat', '012', '020', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(60, '3216130637521651', 'Mutia Maulana', 'Subang', '2010-07-22', 'P', 'Dusun Kalihurp', '005', '019', 'Kamojing', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(61, '3216136081325622', 'Ratna Suryatmi', 'Purwakarta', '2010-05-24', 'P', 'Dusun Sukamanah', '014', '020', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(62, '3216139674800185', 'Titi Lestari', 'Bekasi', '2010-10-01', 'P', 'Dusun Karajan Timur', '011', '012', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(63, '3216138677755153', 'Laras Gunawan', 'Subang', '2008-06-10', 'P', 'Dusun Kalihurp', '004', '016', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(64, '3216138450215933', 'Vera Simanjuntak', 'Subang', '2009-12-12', 'P', 'Dusun Sukamanah', '011', '008', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(65, '3216136700972143', 'Yulia Hartati', 'Karawang', '2008-04-18', 'P', 'Dusun Sukamanah', '010', '003', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(66, '3216136510671601', 'Latika Hassanah', 'Karawang', '2008-08-25', 'P', 'Dusun Karajan Barat', '002', '006', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(67, '3216137743035608', 'Kani Haryanti', 'Karawang', '2009-01-17', 'P', 'Dusun Krajan', '012', '020', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(68, '3216133733487498', 'Michelle Saragih', 'Bekasi', '2008-09-30', 'P', 'Dusun Sukamanah', '007', '019', 'Kamojing', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(69, '3216137439204385', 'Jane Prabowo', 'Bekasi', '2008-12-27', 'P', 'Dusun Sukajadi', '003', '002', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(70, '3216134987242631', 'Zulfa Wibowo', 'Purwakarta', '2009-09-03', 'P', 'Dusun Sukajadi', '016', '020', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(71, '3216138341956567', 'Betania Novitasari', 'Bekasi', '2009-02-13', 'P', 'Dusun Sukajadi', '012', '018', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(72, '3216138023364000', 'Ani Halimah', 'Bekasi', '2009-12-22', 'P', 'Dusun Karajan Timur', '006', '003', 'Kamojing', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(73, '3216131112080842', 'Sarah Hassanah', 'Bekasi', '2009-04-19', 'P', 'Dusun Krajan', '006', '020', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(74, '3216137657387915', 'Anastasia Ramadan', 'Subang', '2009-01-23', 'P', 'Dusun Karajan Barat', '002', '002', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(75, '3216139448564558', 'Anastasia Mulyani', 'Karawang', '2009-02-09', 'P', 'Dusun Krajan', '012', '007', 'Kalihurip', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(76, '3216137833116607', 'Nova Pranowo', 'Karawang', '2008-07-03', 'P', 'Dusun Sukamanah', '011', '016', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(77, '3216137347738738', 'Ayu Yuniar', 'Subang', '2008-08-22', 'P', 'Dusun Karajan Timur', '014', '016', 'Kamojing', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(78, '3216132901987579', 'Salsabila Wahyudin', 'Purwakarta', '2010-06-14', 'P', 'Dusun Krajan', '007', '011', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(79, '3216131453787472', 'Gilda Mayasari', 'Karawang', '2010-11-18', 'P', 'Dusun Karajan Timur', '012', '005', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(80, '3216134415056071', 'Lalita Maulana', 'Subang', '2009-05-10', 'P', 'Dusun Krajan', '013', '004', 'Kamojing', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(81, '3216139287409753', 'Betania Pradana', 'Bekasi', '2009-12-16', 'P', 'Dusun Karajan Timur', '003', '014', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(82, '3216136963085516', 'Rini Iswahyudi', 'Karawang', '2009-09-02', 'P', 'Dusun Sukamanah', '014', '020', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(83, '3216134380181302', 'Rahmi Nurdiyanti', 'Subang', '2010-10-01', 'P', 'Dusun Karajan Timur', '016', '007', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(84, '3216138585286397', 'Restu Kusmawati', 'Karawang', '2009-08-29', 'P', 'Dusun Kalihurp', '010', '016', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(85, '3216138615684855', 'Humaira Laksita', 'Karawang', '2010-05-01', 'P', 'Dusun Sukamanah', '002', '020', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(86, '3216139146545337', 'Putri Utami', 'Subang', '2008-10-05', 'P', 'Dusun Sukajadi', '003', '008', 'Kalihurip', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(87, '3216130835797705', 'Sarah Prasetyo', 'Bekasi', '2009-06-16', 'P', 'Dusun Krajan', '008', '013', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(88, '3216138821539734', 'Winda Haryanto', 'Subang', '2009-07-26', 'P', 'Dusun Kalihurp', '001', '016', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(89, '3216130098696792', 'Lalita Mangunsong', 'Karawang', '2008-03-17', 'P', 'Dusun Sukamanah', '014', '001', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(90, '3216134656696075', 'Victoria Mandasari', 'Purwakarta', '2009-10-26', 'P', 'Dusun Karajan Timur', '003', '005', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(91, '3216139440010819', 'Iriana Prabowo', 'Karawang', '2008-02-20', 'P', 'Dusun Krajan', '015', '009', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(92, '3216139569452248', 'Ophelia Widiastuti', 'Purwakarta', '2009-04-10', 'P', 'Dusun Karajan Timur', '020', '004', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(93, '3216133836570849', 'Nilam Simanjuntak', 'Subang', '2009-04-22', 'P', 'Dusun Kalihurp', '012', '015', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(94, '3216136535893592', 'Maria Prasasta', 'Purwakarta', '2009-10-10', 'P', 'Dusun Krajan', '011', '007', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(95, '3216132174286010', 'Cornelia Prastuti', 'Purwakarta', '2008-08-30', 'P', 'Dusun Sukajadi', '015', '006', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(96, '3216139764235764', 'Jasmin Riyanti', 'Purwakarta', '2008-01-18', 'P', 'Dusun Karajan Barat', '002', '012', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(97, '3216139157378189', 'Sadina Hutasoit', 'Karawang', '2010-10-08', 'P', 'Dusun Kalihurp', '008', '002', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(98, '3216133617916076', 'Indah Prasasta', 'Bekasi', '2010-11-14', 'P', 'Dusun Sukamanah', '007', '015', 'Kalihurip', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(99, '3216133090166291', 'Carla Laksmiwati', 'Purwakarta', '2008-05-10', 'P', 'Dusun Karajan Barat', '010', '018', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(100, '3216134095404054', 'Ami Hutagalung', 'Purwakarta', '2008-09-03', 'P', 'Dusun Sukajadi', '014', '003', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:51', '2024-07-16 10:43:51'),
(101, '3216138357219054', 'Elon Winarsih', 'Karawang', '2008-02-22', 'L', 'Dusun Sukamanah', '013', '010', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(102, '3216134974737702', 'Bagya Mulyani', 'Purwakarta', '2010-03-26', 'L', 'Dusun Krajan', '016', '013', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(103, '3216131386587793', 'Harjaya Hidayanto', 'Subang', '2008-11-12', 'L', 'Dusun Karajan Barat', '001', '008', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(104, '3216139217037415', 'Rusman Hutagalung', 'Karawang', '2008-05-30', 'L', 'Dusun Karajan Barat', '013', '005', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(105, '3216138651739597', 'Jarwi Uyainah', 'Karawang', '2010-09-01', 'L', 'Dusun Krajan', '008', '005', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(106, '3216133346380379', 'Rafi Dabukke', 'Subang', '2008-08-18', 'L', 'Dusun Sukajadi', '019', '018', 'Kalihurip', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(107, '3216137475926283', 'Jasmani Wulandari', 'Subang', '2008-08-12', 'L', 'Dusun Karajan Timur', '014', '009', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(108, '3216138811421136', 'Tedi Pratama', 'Subang', '2009-08-10', 'L', 'Dusun Sukamanah', '018', '010', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(109, '3216136421985326', 'Emas Salahudin', 'Purwakarta', '2010-12-21', 'L', 'Dusun Karajan Timur', '015', '002', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(110, '3216132428246895', 'Gambira Habibi', 'Purwakarta', '2010-03-11', 'L', 'Dusun Sukamanah', '011', '004', 'Kalihurip', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(111, '3216134119064159', 'Dagel Wibowo', 'Subang', '2010-09-27', 'L', 'Dusun Kalihurp', '001', '011', 'Kamojing', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(112, '3216131394720156', 'Hardi Wasita', 'Purwakarta', '2008-02-14', 'L', 'Dusun Karajan Timur', '008', '014', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(113, '3216135741041491', 'Sakti Purwanti', 'Subang', '2009-12-25', 'L', 'Dusun Sukamanah', '003', '004', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(114, '3216131536165791', 'Gandi Narpati', 'Karawang', '2008-02-17', 'L', 'Dusun Sukamanah', '011', '007', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(115, '3216139277900099', 'Daliono Narpati', 'Subang', '2010-01-19', 'L', 'Dusun Krajan', '007', '004', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(116, '3216132719383053', 'Karman Mustofa', 'Bekasi', '2009-07-23', 'L', 'Dusun Kalihurp', '009', '013', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(117, '3216137361149296', 'Artanto Nugroho', 'Karawang', '2009-06-23', 'L', 'Dusun Kalihurp', '009', '011', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(118, '3216131421666465', 'Ilyas Wahyuni', 'Subang', '2010-07-01', 'L', 'Dusun Sukamanah', '015', '014', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(119, '3216135142228923', 'Ganep Pradana', 'Subang', '2010-07-07', 'L', 'Dusun Sukamanah', '007', '018', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(120, '3216137981640374', 'Aslijan Mustofa', 'Subang', '2009-08-19', 'L', 'Dusun Karajan Barat', '015', '012', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(121, '3216133981315431', 'Luis Wastuti', 'Purwakarta', '2008-08-16', 'L', 'Dusun Sukamanah', '018', '020', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(122, '3216135818792719', 'Artanto Halimah', 'Karawang', '2010-03-12', 'L', 'Dusun Sukamanah', '015', '007', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(123, '3216131102716450', 'Hartana Firmansyah', 'Subang', '2009-04-04', 'L', 'Dusun Sukamanah', '001', '020', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(124, '3216138441104372', 'Sakti Mangunsong', 'Purwakarta', '2008-10-22', 'L', 'Dusun Sukajadi', '001', '005', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(125, '3216136903155103', 'Wage Widodo', 'Karawang', '2009-11-11', 'L', 'Dusun Kalihurp', '008', '009', 'Kalihurip', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(126, '3216131394355987', 'Rangga Mahendra', 'Bekasi', '2010-02-17', 'L', 'Dusun Kalihurp', '016', '017', 'Kamojing', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(127, '3216138781335500', 'Cager Budiyanto', 'Bekasi', '2008-03-09', 'L', 'Dusun Karajan Timur', '010', '005', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(128, '3216134495739696', 'Cengkir Laksmiwati', 'Bekasi', '2010-05-22', 'L', 'Dusun Sukajadi', '008', '006', 'Kalihurip', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(129, '3216130945074563', 'Cahyanto Firmansyah', 'Purwakarta', '2008-06-21', 'L', 'Dusun Karajan Timur', '014', '017', 'Kalihurip', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(130, '3216135837998832', 'Ismail Nurdiyanti', 'Bekasi', '2009-03-28', 'L', 'Dusun Sukajadi', '011', '013', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(131, '3216136988388745', 'Heryanto Setiawan', 'Purwakarta', '2010-04-28', 'L', 'Dusun Karajan Timur', '003', '008', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(132, '3216131829603576', 'Cakrabirawa Siregar', 'Subang', '2008-10-02', 'L', 'Dusun Sukajadi', '016', '017', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(133, '3216132398121856', 'Jaeman Farida', 'Subang', '2010-05-16', 'L', 'Dusun Karajan Timur', '011', '013', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(134, '3216137357347876', 'Akarsana Tarihoran', 'Karawang', '2010-03-16', 'L', 'Dusun Karajan Barat', '002', '010', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(135, '3216131127977418', 'Kanda Rahimah', 'Bekasi', '2009-10-14', 'L', 'Dusun Sukamanah', '007', '001', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(136, '3216134068510379', 'Kunthara Hasanah', 'Karawang', '2009-10-04', 'L', 'Dusun Sukajadi', '011', '010', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(137, '3216135391608291', 'Daruna Puspasari', 'Subang', '2008-03-26', 'L', 'Dusun Krajan', '012', '011', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(138, '3216136819446063', 'Mursinin Permata', 'Subang', '2009-07-28', 'L', 'Dusun Sukajadi', '008', '019', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(139, '3216131722753654', 'Slamet Anggraini', 'Subang', '2008-05-26', 'L', 'Dusun Karajan Timur', '002', '013', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(140, '3216130556873192', 'Hasta Sudiati', 'Purwakarta', '2009-12-18', 'L', 'Dusun Krajan', '011', '013', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(141, '3216139303003919', 'Gandi Puspasari', 'Subang', '2010-08-17', 'L', 'Dusun Sukajadi', '013', '010', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(142, '3216132343967700', 'Agus Firgantoro', 'Purwakarta', '2010-07-05', 'L', 'Dusun Sukajadi', '015', '006', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(143, '3216130908442728', 'Vero Tarihoran', 'Subang', '2009-05-07', 'L', 'Dusun Kalihurp', '003', '012', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(144, '3216138359363738', 'Paiman Astuti', 'Subang', '2008-03-09', 'L', 'Dusun Krajan', '007', '002', 'Kalihurip', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(145, '3216139737068765', 'Paiman Siregar', 'Subang', '2010-07-08', 'L', 'Dusun Sukajadi', '019', '005', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(146, '3216134624537046', 'Saka Pradipta', 'Bekasi', '2010-01-31', 'L', 'Dusun Sukamanah', '008', '019', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(147, '3216135084484603', 'Satya Kuswoyo', 'Purwakarta', '2009-03-25', 'L', 'Dusun Sukajadi', '014', '011', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(148, '3216136500457006', 'Jarwa Budiyanto', 'Bekasi', '2008-08-28', 'L', 'Dusun Sukajadi', '019', '011', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(149, '3216133147834267', 'Among Agustina', 'Bekasi', '2009-08-19', 'L', 'Dusun Karajan Barat', '008', '006', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(150, '3216130469787646', 'Luwar Pertiwi', 'Bekasi', '2009-07-24', 'L', 'Dusun Sukajadi', '001', '007', 'Kalihurip', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(151, '3216130252999358', 'Lulut Mulyani', 'Bekasi', '2008-04-01', 'L', 'Dusun Krajan', '007', '014', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(152, '3216136954889926', 'Aris Rajata', 'Purwakarta', '2008-05-26', 'L', 'Dusun Kalihurp', '008', '011', 'Kamojing', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(153, '3216139365672593', 'Panji Rahayu', 'Bekasi', '2009-12-27', 'L', 'Dusun Kalihurp', '005', '019', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(154, '3216131371529484', 'Luis Marbun', 'Subang', '2008-02-14', 'L', 'Dusun Sukajadi', '012', '001', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(155, '3216136214993364', 'Mulya Aryani', 'Purwakarta', '2009-05-14', 'L', 'Dusun Kalihurp', '011', '018', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(156, '3216138226178062', 'Purwa Laksmiwati', 'Karawang', '2009-07-29', 'L', 'Dusun Karajan Timur', '020', '002', 'Kamojing', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(157, '3216135684680865', 'Jefri Hakim', 'Subang', '2008-06-23', 'L', 'Dusun Krajan', '020', '014', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(158, '3216130307186854', 'Gamblang Ramadan', 'Bekasi', '2008-08-06', 'L', 'Dusun Kalihurp', '013', '010', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(159, '3216137149288405', 'Emil Simbolon', 'Bekasi', '2008-08-28', 'L', 'Dusun Kalihurp', '003', '003', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(160, '3216135827238873', 'Mahesa Laksita', 'Bekasi', '2008-10-15', 'L', 'Dusun Sukamanah', '001', '011', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(161, '3216130533879729', 'Aditya Januar', 'Purwakarta', '2009-08-11', 'L', 'Dusun Sukamanah', '002', '009', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(162, '3216136692153560', 'Mujur Wibisono', 'Bekasi', '2008-07-18', 'L', 'Dusun Karajan Barat', '016', '014', 'Kamojing', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(163, '3216130328199493', 'Hadi Wastuti', 'Karawang', '2010-03-02', 'L', 'Dusun Sukamanah', '016', '009', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(164, '3216137244871048', 'Bahuwirya Manullang', 'Subang', '2008-09-11', 'L', 'Dusun Karajan Barat', '005', '006', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(165, '3216138792294354', 'Jinawi Rahimah', 'Subang', '2010-06-06', 'L', 'Dusun Kalihurp', '020', '012', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(166, '3216135483879807', 'Lega Yuliarti', 'Purwakarta', '2009-12-27', 'L', 'Dusun Sukajadi', '011', '015', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(167, '3216133776847772', 'Perkasa Purnawati', 'Bekasi', '2008-09-19', 'L', 'Dusun Krajan', '002', '003', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(168, '3216133165972801', 'Jarwa Lestari', 'Bekasi', '2008-02-23', 'L', 'Dusun Karajan Barat', '008', '012', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(169, '3216131775766046', 'Dacin Mandala', 'Karawang', '2008-07-04', 'L', 'Dusun Kalihurp', '013', '001', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(170, '3216139823664911', 'Salman Yulianti', 'Karawang', '2010-09-17', 'L', 'Dusun Karajan Timur', '006', '009', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(171, '3216139525603921', 'Akarsana Prabowo', 'Purwakarta', '2008-02-21', 'L', 'Dusun Karajan Barat', '001', '020', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(172, '3216137976326745', 'Cakrabuana Haryanti', 'Subang', '2009-08-14', 'L', 'Dusun Karajan Timur', '015', '012', 'Kalihurip', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(173, '3216139340475703', 'Yoga Prastuti', 'Karawang', '2010-10-12', 'L', 'Dusun Karajan Barat', '009', '012', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59');
INSERT INTO `data_penduduks` (`id`, `nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `rt`, `rw`, `kelurahan`, `kecamatan`, `kabupaten`, `agama`, `pendidikan`, `pekerjaan`, `golongan_darah`, `status_perkawinan`, `tanggal_perkawinan`, `status_dalam_keluarga`, `kewarganegaraan`, `no_paspor`, `no_kitap`, `nama_ayah`, `nama_ibu`, `created_at`, `updated_at`) VALUES
(174, '3216134336556505', 'Marsudi Pertiwi', 'Bekasi', '2008-11-17', 'L', 'Dusun Kalihurp', '020', '017', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(175, '3216131996108379', 'Dimaz Wasita', 'Bekasi', '2008-10-28', 'L', 'Dusun Sukamanah', '005', '020', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(176, '3216131751786516', 'Kamal Haryanti', 'Subang', '2010-10-02', 'L', 'Dusun Sukamanah', '013', '005', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(177, '3216138894675840', 'Kacung Pradipta', 'Purwakarta', '2010-10-24', 'L', 'Dusun Sukajadi', '013', '002', 'Kamojing', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(178, '3216134993228399', 'Tugiman Winarsih', 'Bekasi', '2008-10-16', 'L', 'Dusun Sukamanah', '010', '019', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(179, '3216138585565651', 'Dacin Mustofa', 'Bekasi', '2010-11-06', 'L', 'Dusun Karajan Timur', '020', '013', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(180, '3216134747275852', 'Dono Fujiati', 'Subang', '2010-10-09', 'L', 'Dusun Karajan Timur', '012', '015', 'Kalihurip', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(181, '3216130488796954', 'Jaswadi Nuraini', 'Purwakarta', '2010-09-30', 'L', 'Dusun Sukajadi', '019', '020', 'Dawuan Timur', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(182, '3216133887107218', 'Nalar Nurdiyanti', 'Purwakarta', '2009-10-26', 'L', 'Dusun Sukamanah', '007', '016', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(183, '3216134180857668', 'Cahyanto Nasyidah', 'Purwakarta', '2008-11-25', 'L', 'Dusun Karajan Barat', '009', '010', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(184, '3216135507546739', 'Nyana Hariyah', 'Purwakarta', '2009-12-29', 'L', 'Dusun Sukajadi', '006', '018', 'Kalihurip', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(185, '3216134446353548', 'Asirwada Hasanah', 'Bekasi', '2010-05-18', 'L', 'Dusun Sukamanah', '008', '007', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(186, '3216136388762793', 'Jaswadi Susanti', 'Karawang', '2010-12-03', 'L', 'Dusun Karajan Barat', '018', '004', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(187, '3216134604295929', 'Eman Puspita', 'Purwakarta', '2008-05-23', 'L', 'Dusun Krajan', '003', '010', 'Cikampek Kota', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(188, '3216132114555655', 'Waluyo Aryani', 'Subang', '2008-06-10', 'L', 'Dusun Krajan', '020', '010', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(189, '3216134382628484', 'Naradi Kusmawati', 'Purwakarta', '2009-12-15', 'L', 'Dusun Sukajadi', '016', '003', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(190, '3216133880825763', 'Martaka Putra', 'Karawang', '2010-02-14', 'L', 'Dusun Karajan Barat', '010', '015', 'Kalihurip', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(191, '3216130710304950', 'Kariman Purnawati', 'Karawang', '2010-10-10', 'L', 'Dusun Kalihurp', '020', '012', 'Kamojing', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(192, '3216136301017785', 'Luwar Suartini', 'Bekasi', '2008-02-12', 'L', 'Dusun Kalihurp', '016', '012', 'Cikampek Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(193, '3216137295793893', 'Karya Rahayu', 'Bekasi', '2009-01-21', 'L', 'Dusun Karajan Barat', '002', '003', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(194, '3216139937986451', 'Gantar Ramadan', 'Subang', '2010-04-01', 'L', 'Dusun Sukamanah', '012', '019', 'Dawuan Tengah', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(195, '3216137626883107', 'Limar Mangunsong', 'Bekasi', '2009-12-13', 'L', 'Dusun Sukamanah', '018', '018', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'B', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(196, '3216131916327213', 'Mursinin Handayani', 'Karawang', '2008-08-25', 'L', 'Dusun Sukajadi', '014', '001', 'Cikampek Pusaka', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(197, '3216135670311472', 'Ega Rahmawati', 'Bekasi', '2009-10-17', 'L', 'Dusun Sukamanah', '019', '008', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'A', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(198, '3216139244744758', 'Rendy Wijayanti', 'Karawang', '2008-01-28', 'L', 'Dusun Kalihurp', '015', '014', 'Dawuan Barat', 'Cikampek', 'Karawang', 'Islam', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(199, '3216133424028967', 'Jais Safitri', 'Karawang', '2009-11-01', 'L', 'Dusun Karajan Barat', '003', '010', 'Cikampek Timur', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'AB', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59'),
(200, '3216132244245977', 'Pangestu Maulana', 'Karawang', '2010-02-04', 'L', 'Dusun Kalihurp', '018', '018', 'Cikampek Selatan', 'Cikampek', 'Karawang', 'Kristen', 'SMP', 'Pelajar', 'O', 'Belum Kawin', NULL, 'Anak', 'WNI', NULL, NULL, NULL, NULL, '2024-07-16 10:43:59', '2024-07-16 10:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_07_061057_create_personal_access_tokens_table', 1),
(5, '2024_07_11_142904_create_data_penduduks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Operator', 'operator', '$2y$12$hQp1ehlyN0hCVhQNu3Lp2OvfvXdBcpz/h5s2gxbLW2Yytec.u.xT2', '2024-07-16 10:49:36', '2024-07-16 10:49:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `data_penduduks`
--
ALTER TABLE `data_penduduks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_penduduks_nik_unique` (`nik`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_penduduks`
--
ALTER TABLE `data_penduduks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
