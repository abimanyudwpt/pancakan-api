-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 05:01 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipa`
--

-- --------------------------------------------------------

--
-- Table structure for table `banjar_adats`
--

CREATE TABLE `banjar_adats` (
  `id_banjar_adat` bigint(20) UNSIGNED NOT NULL,
  `nama_banjar_adat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banjar_adats`
--

INSERT INTO `banjar_adats` (`id_banjar_adat`, `nama_banjar_adat`, `created_at`, `updated_at`) VALUES
(1, 'Banjar Pakraman Binginbanjah', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(2, 'Banjar Pakraman Labuhan Aji', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(3, 'Banjar Pakraman Tengah', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(4, 'Banjar Pakraman Pegayaman', '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `dadyas`
--

CREATE TABLE `dadyas` (
  `id_ddy` bigint(20) UNSIGNED NOT NULL,
  `nm_kt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_ddy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dadyas`
--

INSERT INTO `dadyas` (`id_ddy`, `nm_kt`, `nm_ddy`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Kadek Arjana', '1', '1', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(2, 'Made Wijana', '2', '1', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(3, 'Made Ardana', '3', '1', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(4, 'Ketut Rejeng', '4', '1', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(5, 'Made Gelgel', '4', '1', '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `dedosans`
--

CREATE TABLE `dedosans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nominal_dedosan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dedosans`
--

INSERT INTO `dedosans` (`id`, `nominal_dedosan`, `created_at`, `updated_at`) VALUES
(1, 25000, '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id_detail` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` year(4) NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `irnws`
--

CREATE TABLE `irnws` (
  `id_irnw` bigint(20) UNSIGNED NOT NULL,
  `nik_krama` bigint(20) UNSIGNED NOT NULL,
  `status_krama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_iuran` int(11) NOT NULL,
  `status_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembayaran` int(11) DEFAULT NULL,
  `periode` year(4) NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `irnws`
--

INSERT INTO `irnws` (`id_irnw`, `nik_krama`, `status_krama`, `jumlah_iuran`, `status_pembayaran`, `pembayaran`, `periode`, `bukti_pembayaran`, `jenis`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 20000, 'Belum Bayar', NULL, 2022, NULL, 'urunan', '2022-08-28 00:48:29', '2022-08-28 00:48:29'),
(2, 2, '2', 30000, 'Belum Bayar', NULL, 2022, NULL, 'urunan', '2022-08-28 00:48:29', '2022-08-28 00:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatans`
--

INSERT INTO `jabatans` (`id`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Krama', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(2, 'Pecalang', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(3, 'Linmas', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(4, 'Mangku Dadia', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(5, 'Mangku Desa', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(6, 'Juru Arah', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(7, 'Ketua Tempekan', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(8, 'Prajuru Desa Adat', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(9, 'Prajuru Desa Dinas', '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_prajurus`
--

CREATE TABLE `jabatan_prajurus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jabatan_prajuru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatan_prajurus`
--

INSERT INTO `jabatan_prajurus` (`id`, `jabatan_prajuru`, `created_at`, `updated_at`) VALUES
(1, 'Bendesa Adat', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(2, 'Petajuh', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(3, 'Penyarikan', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(4, 'Petengen', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(5, 'Staf Administrasi', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(6, 'Kelian Tempekan', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(7, 'Kelian Banjar Adat', '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kegiatans`
--

CREATE TABLE `jenis_kegiatans` (
  `id_kgtn` bigint(20) UNSIGNED NOT NULL,
  `nama_kgtn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamins`
--

CREATE TABLE `jenis_kelamins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_kelamins`
--

INSERT INTO `jenis_kelamins` (`id`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, 'Laki - Laki', '2022-08-28 00:48:29', '2022-08-28 00:48:29'),
(2, 'Perempuan', '2022-08-28 00:48:29', '2022-08-28 00:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pekerjaans`
--

CREATE TABLE `jenis_pekerjaans` (
  `id_pekerjaan` int(11) NOT NULL,
  `nama_pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_pekerjaans`
--

INSERT INTO `jenis_pekerjaans` (`id_pekerjaan`, `nama_pekerjaan`, `created_at`, `updated_at`) VALUES
(1, 'Belum Bekerja', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(2, 'Buruh', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(3, 'Nelayan', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(4, 'Pengusaha', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(5, 'Pegawai Swasta', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(6, 'Pegawai Negeri', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(7, 'Lainnya', '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pendidikans`
--

CREATE TABLE `jenis_pendidikans` (
  `id_pendidikan` int(11) NOT NULL,
  `nama_pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_pendidikans`
--

INSERT INTO `jenis_pendidikans` (`id_pendidikan`, `nama_pendidikan`, `created_at`, `updated_at`) VALUES
(1, 'SD/Sederajat', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(2, 'SMP/Sederajat', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(3, 'SMA/Sederajat', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(4, 'D1', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(5, 'D2', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(6, 'D3', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(7, 'D4', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(8, 'S1', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(9, 'S2', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(10, 'S3', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(11, 'Lainnya...', '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id_kegiatan` bigint(20) UNSIGNED NOT NULL,
  `nm_kgtn` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmpt` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peserta` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id_kegiatan`, `nm_kgtn`, `tmpt`, `tgl`, `jam`, `interval`, `peserta`, `created_at`, `updated_at`) VALUES
(1, 'Pembersihan A', 'Temukus', '2022-12-02', '19.00', 'Interstelar', 'Semua', '2022-08-28 00:48:30', '2022-09-14 20:23:07'),
(5, 'Pembersihan B', 'Pura C', '2022-06-22', '16.00', 'Interval', 'Semua', '2022-08-31 23:22:08', '2022-09-14 20:22:50'),
(12, 'Pembersihan C', 'Pura A', '2022-06-22', '16.00', 'Interval', 'Semua', '2022-09-14 20:14:45', '2022-09-14 20:22:44'),
(17, 'tes1', 'tes', '2022-09-16', '21.00', 'tes', 'tes', '2022-09-15 23:05:20', '2022-09-15 23:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `keterangans`
--

CREATE TABLE `keterangans` (
  `id_keterangan` int(11) NOT NULL,
  `nama_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keterangans`
--

INSERT INTO `keterangans` (`id_keterangan`, `nama_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Kawin', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(2, 'Belum Kawin', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(3, 'Cerai Mati', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(4, 'Cerai Hidup', '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `kramas`
--

CREATE TABLE `kramas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_kk` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nm` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmpt` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `stts_dlm_klrg` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jbt` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bnjr_adt` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmpkn` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stts` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pndd` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkrjn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktrgn` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nm_ddy` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nm_kt_ddy` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kramas`
--

INSERT INTO `kramas` (`id`, `nik`, `level`, `no_kk`, `nm`, `tmpt`, `tgl`, `stts_dlm_klrg`, `jbt`, `bnjr_adt`, `tmpkn`, `stts`, `pndd`, `pkrjn`, `jk`, `ktrgn`, `ft`, `nm_ddy`, `nm_kt_ddy`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '5108040801770003', 'krama', '5108041612090011', 'Nyoman Suardika', 'Temukus', '1977-01-08', '1', '1', '2', '3', '1', '6', '2', '1', '1', NULL, '1', '2', '$2y$10$W9e4AcEA5QnE8ySXOaIUYOgymT4s5eF5gW4cHRwd8Oh095PVV7c3C', NULL, '2022-08-28 00:48:29', '2022-08-28 00:48:29'),
(2, '5108046212770001', 'krama', '5108041612090011', 'Luh Suhartini', 'Bubunan', '1977-12-22', '2', '1', '2', '3', '1', '6', '2', '1', '1', NULL, '1', '2', '$2y$10$KN1i598bCZl0.cG/0.zcT.zYQmouBGC2HdKNQDH1eC0JkdrUwRRgy', NULL, '2022-08-28 00:48:29', '2022-08-28 00:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_21_064806_create_kramas_table', 1),
(6, '2022_05_07_031933_create_jenis_kelamins_table', 1),
(7, '2022_05_07_063520_create_jabatans_table', 1),
(8, '2022_05_07_063747_create_status_keluargas_table', 1),
(9, '2022_05_07_063841_create_statuses_table', 1),
(10, '2022_05_10_031812_create_presensis_table', 1),
(11, '2022_05_10_051552_create_rekapabsns_table', 1),
(12, '2022_05_10_054403_create_kegiatans_table', 1),
(13, '2022_05_10_082228_create_banjar_adats_table', 1),
(14, '2022_05_10_082306_create_irnws_table', 1),
(15, '2022_05_10_082444_create_tempekans_table', 1),
(16, '2022_05_11_103540_create_jenis_kegiatans_table', 1),
(17, '2022_05_12_035238_create_dadyas_table', 1),
(18, '2022_05_12_095013_create_nmddies_table', 1),
(19, '2022_05_18_041332_create_jenis_pendidikans_table', 1),
(20, '2022_05_18_043808_create_jenis_pekerjaans_table', 1),
(21, '2022_05_18_080353_create_keterangans_table', 1),
(22, '2022_05_23_061435_create_prajuru_adats_table', 1),
(23, '2022_05_23_112655_create_jabatan_prajurus_table', 1),
(24, '2022_06_15_010241_create_rekap_absens_table', 1),
(25, '2022_06_23_082014_create_transaksis_table', 1),
(26, '2022_06_23_111751_create_details_table', 1),
(27, '2022_07_10_105224_create_dedosans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nmddies`
--

CREATE TABLE `nmddies` (
  `id_ddys` int(11) NOT NULL,
  `nm_ktd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nmddies`
--

INSERT INTO `nmddies` (`id_ddys`, `nm_ktd`, `created_at`, `updated_at`) VALUES
(1, 'Bhujangga Waisnawa', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(2, 'Arya Tegeh Kori', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(3, 'Arya Belog', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(4, 'Pasek Gegel', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(5, 'Tangkas Kori Agung', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(6, 'Tangkas Kepaon', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(7, 'Pasek Ngukuhin', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(8, 'Arya Tembau', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(9, 'Satrya Dalem Sagening', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(10, 'Arya Batulepang', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(11, 'Satrya Taman Bali', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(12, 'Arya Kubon Tubuh', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(13, 'Arya Djelantik', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(14, 'Arya Keloping', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(15, 'Pasek Kukuh', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(16, 'Pasek Gegel Guliang', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(17, 'Alang Kajeng', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(18, 'Dalem Kubakal', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(19, 'Pasek Gelgel Kacangan', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(20, 'Pasek Gelgel Sibang', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(21, 'Pasek Huluning Bedahulu', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(22, 'Pasek Gelgel Guling', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(23, 'Arya Lanang Dauh', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(24, 'Tangkas Kori Agung', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(25, 'Arya Wang Bang Pinatih', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(26, 'Bhujangga Waisnawa Gadung', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(27, 'Ki Tutuan', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(28, 'Pasek Toh Jiwa', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(29, 'Pasek Badahulu Beduran', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(30, 'Bendesa Mas', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(31, 'Arya Batan Nyuh', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(32, 'Arya Sentong', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(33, 'Arya Wang Bang Pinatih', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(34, 'Pasek Pegatepan', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(35, 'Kemenuh', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(36, 'Pasek', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(37, 'Lainnya', '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\PrajuruAdat', 1, 'token_auth', 'e12d1a02aa2fe40a22652949f5d56903ce34707e45f97f98b6bcaed42b71771d', '[\"*\"]', NULL, '2022-09-15 23:59:36', '2022-09-15 23:59:36'),
(8, 'App\\Models\\PrajuruAdat', 1, 'y', '2cd6ee0a05f6c6b6b6aef73b7375bdc2794cfea08bab04bd9bc972fc710ef874', '[\"*\"]', '2022-09-16 00:28:48', '2022-09-16 00:27:38', '2022-09-16 00:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `prajuru_adats`
--

CREATE TABLE `prajuru_adats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banjar_adat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempekan_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tangal_lahir` date NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prajuru_adats`
--

INSERT INTO `prajuru_adats` (`id`, `nik`, `level`, `nama_pegawai`, `jk`, `jabatan`, `banjar_adat`, `tempekan_id`, `tempat`, `tangal_lahir`, `foto`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '5308061301010002', 'prajuru', 'Kadek Candra Ulihantari', '1', '5', '1', '1', 'Singaraja', '2022-05-06', NULL, '$2y$10$hUkt6xUslRirTgGMjDVUE.DSLxRAmtjliyqRumP14KIsyJn5VPVQe', NULL, '2022-08-28 00:48:29', '2022-08-28 00:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `presensis`
--

CREATE TABLE `presensis` (
  `id_presensi` bigint(20) UNSIGNED NOT NULL,
  `krama_id` bigint(20) UNSIGNED NOT NULL,
  `id_kegiatan` bigint(20) UNSIGNED DEFAULT NULL,
  `tgl_absen` date DEFAULT NULL,
  `kehadiran` enum('hadir','izin','alpa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `presensis`
--

INSERT INTO `presensis` (`id_presensi`, `krama_id`, `id_kegiatan`, `tgl_absen`, `kehadiran`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-12-28', 'alpa', '2022-08-28 00:50:58', '2022-08-28 00:50:58'),
(2, 1, 1, '2018-12-28', 'hadir', '2022-09-04 06:51:30', '2022-09-04 06:51:30'),
(3, 1, 1, '2018-12-28', 'izin', '2022-09-04 07:04:46', '2022-09-04 07:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `rekapabsns`
--

CREATE TABLE `rekapabsns` (
  `nik` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jmlh_h` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jmlh_th` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bln` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thn` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rekap_absens`
--

CREATE TABLE `rekap_absens` (
  `id_rekap` bigint(20) UNSIGNED NOT NULL,
  `krama_id` int(11) NOT NULL,
  `hadir` int(11) NOT NULL,
  `izin` int(11) NOT NULL,
  `tidak_hadir` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `status_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` year(4) NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekap_absens`
--

INSERT INTO `rekap_absens` (`id_rekap`, `krama_id`, `hadir`, `izin`, `tidak_hadir`, `nominal`, `status_pembayaran`, `periode`, `jenis`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 1, 25000, 'Belum Bayar', 2022, 'denda', '2022-08-28 00:51:06', '2022-08-28 00:51:06'),
(2, 1, 0, 0, 1, 25000, 'Belum Bayar', 2022, 'denda', '2022-09-02 19:58:33', '2022-09-02 19:58:33'),
(3, 1, 1, 0, 1, 25000, 'Belum Bayar', 2022, 'denda', '2022-09-04 06:51:36', '2022-09-04 06:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_krama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urunan` int(11) NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status_krama`, `urunan`, `jenis`, `created_at`, `updated_at`) VALUES
(1, 'Negak', 20000, 'urunan', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(2, 'Ngampel', 30000, 'urunan', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(3, 'Nyada', 0, 'urunan', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(4, 'Yowana', 0, 'urunan', '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `status_keluargas`
--

CREATE TABLE `status_keluargas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_dalam_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_keluargas`
--

INSERT INTO `status_keluargas` (`id`, `status_dalam_keluarga`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Keluarga', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(2, 'Istri', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(3, 'Anak', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(4, 'Orang Tua', '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(5, 'Famili Lain', '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `tempekans`
--

CREATE TABLE `tempekans` (
  `id_tempekan` bigint(20) UNSIGNED NOT NULL,
  `nama_tempekan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banjar_adat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tempekans`
--

INSERT INTO `tempekans` (`id_tempekan`, `nama_tempekan`, `banjar_adat_id`, `created_at`, `updated_at`) VALUES
(1, 'Tempekan Celuk', 1, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(2, 'Tempekan Pura Cepung', 1, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(3, 'Tempekan Yeh Kuning', 1, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(4, 'Tempekan Mesigit', 1, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(5, 'Tempekan Kelod', 2, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(6, 'Tempekan Tengah', 2, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(7, 'Tempekan Kauh', 2, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(8, 'Tempekan Pengerangan', 3, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(9, 'Tempekan Tengah', 3, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(10, 'Tempekan Menginih', 3, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(11, 'Tempekan Kangin', 3, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(12, 'Tempekan Berawah', 4, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(13, 'Tempekan Lengkeng', 4, '2022-08-28 00:48:30', '2022-08-28 00:48:30'),
(14, 'Tempekan Pura Batulas', 4, '2022-08-28 00:48:30', '2022-08-28 00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kwitansi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_prajuru` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banjar_adats`
--
ALTER TABLE `banjar_adats`
  ADD PRIMARY KEY (`id_banjar_adat`);

--
-- Indexes for table `dadyas`
--
ALTER TABLE `dadyas`
  ADD PRIMARY KEY (`id_ddy`);

--
-- Indexes for table `dedosans`
--
ALTER TABLE `dedosans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `irnws`
--
ALTER TABLE `irnws`
  ADD PRIMARY KEY (`id_irnw`);

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan_prajurus`
--
ALTER TABLE `jabatan_prajurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_kegiatans`
--
ALTER TABLE `jenis_kegiatans`
  ADD PRIMARY KEY (`id_kgtn`);

--
-- Indexes for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `kramas`
--
ALTER TABLE `kramas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prajuru_adats`
--
ALTER TABLE `prajuru_adats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presensis`
--
ALTER TABLE `presensis`
  ADD PRIMARY KEY (`id_presensi`);

--
-- Indexes for table `rekap_absens`
--
ALTER TABLE `rekap_absens`
  ADD PRIMARY KEY (`id_rekap`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_keluargas`
--
ALTER TABLE `status_keluargas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempekans`
--
ALTER TABLE `tempekans`
  ADD PRIMARY KEY (`id_tempekan`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banjar_adats`
--
ALTER TABLE `banjar_adats`
  MODIFY `id_banjar_adat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dadyas`
--
ALTER TABLE `dadyas`
  MODIFY `id_ddy` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dedosans`
--
ALTER TABLE `dedosans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id_detail` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `irnws`
--
ALTER TABLE `irnws`
  MODIFY `id_irnw` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jabatan_prajurus`
--
ALTER TABLE `jabatan_prajurus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jenis_kegiatans`
--
ALTER TABLE `jenis_kegiatans`
  MODIFY `id_kgtn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id_kegiatan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kramas`
--
ALTER TABLE `kramas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prajuru_adats`
--
ALTER TABLE `prajuru_adats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `presensis`
--
ALTER TABLE `presensis`
  MODIFY `id_presensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rekap_absens`
--
ALTER TABLE `rekap_absens`
  MODIFY `id_rekap` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status_keluargas`
--
ALTER TABLE `status_keluargas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tempekans`
--
ALTER TABLE `tempekans`
  MODIFY `id_tempekan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
