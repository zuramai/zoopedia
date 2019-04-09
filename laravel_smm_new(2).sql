-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 09:33 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_smm_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `type`, `description`, `user_agent`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, 'Order', 'Melakukan pemesanan sosial media sebesar Rp 2950', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-13 20:16:42', '2019-03-13 20:16:42'),
(2, 1, 'Order', 'Melakukan pemesanan sosial media sebesar Rp 2950', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-13 20:17:12', '2019-03-13 20:17:12'),
(3, 1, 'Logout', 'Melakukan logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-13 20:27:14', '2019-03-13 20:27:14'),
(4, 1, 'Logout', 'Melakukan logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-13 20:59:47', '2019-03-13 20:59:47'),
(5, 1, 'Login', 'Melakukan login pada tanggal 14 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-13 20:59:52', '2019-03-13 20:59:52'),
(6, 1, 'Login', 'Melakukan login pada tanggal 14 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '127.0.0.1', '2019-03-14 00:01:51', '2019-03-14 00:01:51'),
(7, 1, 'Login', 'Melakukan login pada tanggal 14 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-14 06:20:08', '2019-03-14 06:20:08'),
(8, 1, 'Login', 'Melakukan login pada tanggal 15 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-14 19:22:54', '2019-03-14 19:22:54'),
(9, 1, 'Login', 'Melakukan login pada tanggal 15 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-15 06:25:12', '2019-03-15 06:25:12'),
(10, 1, 'Login', 'Melakukan login pada tanggal 16 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-16 04:34:34', '2019-03-16 04:34:34'),
(11, 1, 'Login', 'Melakukan login pada tanggal 17 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 00:25:59', '2019-03-17 00:25:59'),
(12, 1, 'Order', 'Melakukan pemesanan Telkomsel 1000 seharga 1500', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 01:29:51', '2019-03-17 01:29:51'),
(13, 1, 'Order', 'Melakukan pemesanan Telkomsel 1000 seharga 1500', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 01:32:49', '2019-03-17 01:32:49'),
(14, 1, 'Order', 'Melakukan pemesanan Telkomsel 1000 seharga 1500', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 01:33:49', '2019-03-17 01:33:49'),
(15, 1, 'Deposit', 'Membuat permintaan deposit sebesar Rp 123213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 04:41:22', '2019-03-17 04:41:22'),
(16, 1, 'Deposit', 'Membuat permintaan deposit sebesar Rp 123213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 04:41:36', '2019-03-17 04:41:36'),
(17, 1, 'Deposit', 'Membuat permintaan deposit sebesar Rp 123213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 04:41:46', '2019-03-17 04:41:46'),
(18, 1, 'Deposit', 'Membuat permintaan deposit sebesar Rp 100000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 04:42:50', '2019-03-17 04:42:50'),
(19, 1, 'Deposit', 'Membuat permintaan deposit sebesar Rp 100000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 04:45:54', '2019-03-17 04:45:54'),
(20, 1, 'Login', 'Melakukan login pada tanggal 17 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 07:09:35', '2019-03-17 07:09:35'),
(21, 1, 'Login', 'Melakukan login pada tanggal 18 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 21:06:19', '2019-03-17 21:06:19'),
(22, 1, 'Add User', 'Pendaftaran Admin dengan email admin@gmail.com seharga Rp 50,000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-17 23:45:22', '2019-03-17 23:45:22'),
(23, 1, 'Login', 'Melakukan login pada tanggal 18 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-18 05:45:08', '2019-03-18 05:45:08'),
(24, 1, 'Login', 'Melakukan login pada tanggal 19 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-18 21:56:52', '2019-03-18 21:56:52'),
(25, 1, 'Add Voucher', 'Pembuatan kode voucher bernilai Rp 10,000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-18 23:13:58', '2019-03-18 23:13:58'),
(26, 1, 'Add Voucher', 'Pembuatan kode voucher bernilai Rp 200,000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-18 23:15:08', '2019-03-18 23:15:08'),
(27, 1, 'Add Voucher', 'Pembuatan kode voucher bernilai Rp 0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 00:22:42', '2019-03-19 00:22:42'),
(28, 1, 'Add Voucher', 'Pembuatan kode voucher bernilai Rp 0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 00:22:55', '2019-03-19 00:22:55'),
(29, 1, 'Add Voucher', 'Pembuatan kode voucher bernilai Rp 0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 00:23:38', '2019-03-19 00:23:38'),
(30, 1, 'Add Voucher', 'Pembuatan kode voucher bernilai Rp 0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 00:24:08', '2019-03-19 00:24:08'),
(31, 1, 'Logout', 'Melakukan logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 01:08:53', '2019-03-19 01:08:53'),
(32, 1, 'Login', 'Melakukan login pada tanggal 19 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 01:33:56', '2019-03-19 01:33:56'),
(33, 1, 'Logout', 'Melakukan logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 01:40:13', '2019-03-19 01:40:13'),
(34, 1, 'Login', 'Melakukan login pada tanggal 19 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 02:38:14', '2019-03-19 02:38:14'),
(35, 1, 'Order', 'Melakukan pemesanan Telkomsel S2 1000 seharga 2000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 03:01:44', '2019-03-19 03:01:44'),
(36, 1, 'Logout', 'Melakukan logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 04:39:18', '2019-03-19 04:39:18'),
(37, 1, 'Login', 'Melakukan login pada tanggal 19 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 04:41:07', '2019-03-19 04:41:07'),
(38, 1, 'Add User', 'Pendaftaran Reseller dengan email asdasd@gmail.com seharga Rp 50,000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 06:17:28', '2019-03-19 06:17:28'),
(39, 1, 'Login', 'Melakukan login pada tanggal 20 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-19 19:39:33', '2019-03-19 19:39:33'),
(40, 1, 'Login', 'Melakukan login pada tanggal 20 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-20 07:19:12', '2019-03-20 07:19:12'),
(41, 1, 'Login', 'Melakukan login pada tanggal 20 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-20 16:10:16', '2019-03-20 16:10:16'),
(42, 1, 'Login', 'Melakukan login pada tanggal 20 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-20 16:19:08', '2019-03-20 16:19:08'),
(43, 1, 'Logout', 'Melakukan logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-20 18:54:53', '2019-03-20 18:54:53'),
(44, 1, 'Login', 'Melakukan login pada tanggal 21 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-20 22:54:30', '2019-03-20 22:54:30'),
(45, 1, 'Login', 'Melakukan login pada tanggal 21 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-20 22:55:16', '2019-03-20 22:55:16'),
(46, 1, 'Login', 'Melakukan login pada tanggal 22 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-22 07:23:38', '2019-03-22 07:23:38'),
(47, 1, 'Login', 'Melakukan login pada tanggal 30 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '127.0.0.1', '2019-03-29 22:44:06', '2019-03-29 22:44:06'),
(48, 1, 'Login', 'Melakukan login pada tanggal 30 March 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-03-30 08:11:58', '2019-03-30 08:11:58'),
(49, 1, 'Login', 'Melakukan login pada tanggal 01 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-03-31 17:12:03', '2019-03-31 17:12:03'),
(50, 1, 'Login', 'Melakukan login pada tanggal 01 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-01 02:43:05', '2019-04-01 02:43:05'),
(51, 1, 'Login', 'Melakukan login pada tanggal 01 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-01 05:56:31', '2019-04-01 05:56:31'),
(52, 1, 'Login', 'Melakukan login pada tanggal 02 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-01 19:26:51', '2019-04-01 19:26:51'),
(53, 1, 'Ticket', 'Pembuatan tiket baru dengan id 1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-01 20:20:44', '2019-04-01 20:20:44'),
(54, 1, 'Ticket', 'Pembuatan tiket baru dengan id 2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-01 20:20:54', '2019-04-01 20:20:54'),
(55, 1, 'Ticket', 'Pembuatan tiket baru dengan id 3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-01 21:09:51', '2019-04-01 21:09:51'),
(56, 1, 'Logout', 'Melakukan logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-01 21:29:39', '2019-04-01 21:29:39'),
(57, 9, 'Login', 'Melakukan login pada tanggal 02 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-01 21:29:50', '2019-04-01 21:29:50'),
(58, 9, 'Ticket', 'Membalas tiket Ahmad Saugi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-01 23:21:41', '2019-04-01 23:21:41'),
(59, 9, 'Logout', 'Melakukan logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-01 23:37:22', '2019-04-01 23:37:22'),
(60, 1, 'Login', 'Melakukan login pada tanggal 02 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-01 23:37:33', '2019-04-01 23:37:33'),
(61, 1, 'Ticket', 'Membalas tiket Ahmad Saugi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-02 00:23:17', '2019-04-02 00:23:17'),
(62, 1, 'Logout', 'Melakukan logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-02 02:45:48', '2019-04-02 02:45:48'),
(63, 1, 'Login', 'Melakukan login pada tanggal 04 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-03 19:37:59', '2019-04-03 19:37:59'),
(64, 1, 'Login', 'Melakukan login pada tanggal 05 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-04 20:02:09', '2019-04-04 20:02:09'),
(65, 1, 'Login', 'Melakukan login pada tanggal 05 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-04 23:36:12', '2019-04-04 23:36:12'),
(66, 1, 'Login', 'Melakukan login pada tanggal 06 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-06 02:39:15', '2019-04-06 02:39:15'),
(67, 1, 'Login', 'Melakukan login pada tanggal 06 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-06 05:00:02', '2019-04-06 05:00:02'),
(68, 1, 'Order', 'Melakukan pemesanan sosial media sebesar Rp 1500', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-06 06:16:15', '2019-04-06 06:16:15'),
(69, 1, 'Deposit', 'Membuat permintaan deposit sebesar Rp 100000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-06 07:12:44', '2019-04-06 07:12:44'),
(70, 1, 'Deposit', 'Membuat permintaan deposit sebesar Rp 100828', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-06 07:20:20', '2019-04-06 07:20:20'),
(71, 1, 'Deposit', 'Membuat permintaan deposit sebesar Rp 100162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-06 07:21:16', '2019-04-06 07:21:16'),
(72, 1, 'Login', 'Melakukan login pada tanggal 07 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-06 21:41:45', '2019-04-06 21:41:45'),
(73, 1, 'Login', 'Melakukan login pada tanggal 07 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-07 08:49:16', '2019-04-07 08:49:16'),
(74, 1, 'Login', 'Melakukan login pada tanggal 09 April 2019', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '127.0.0.1', '2019-04-08 23:57:09', '2019-04-08 23:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `balance_histories`
--

CREATE TABLE `balance_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balance_histories`
--

INSERT INTO `balance_histories` (`id`, `user_id`, `action`, `desc`, `created_at`, `updated_at`) VALUES
(1, 6, 'Refund', 'Saldo dikembalikan sebesar Rp 9000 untuk order id 6', '2019-03-13 19:56:11', '2019-03-13 19:56:11'),
(2, 6, 'Refund', 'Saldo dikembalikan sebesar Rp 9000 untuk order id 6', '2019-03-13 19:56:45', '2019-03-13 19:56:45'),
(3, 1, 'Cut Balance', 'Melakukan pemesanan sosial media sebesar Rp 2950', '2019-03-13 20:16:42', '2019-03-13 20:16:42'),
(4, 1, 'Cut Balance', 'Melakukan pemesanan sosial media sebesar Rp 2950', '2019-03-13 20:17:11', '2019-03-13 20:17:11'),
(5, 1, 'Cut Balance', 'Melakukan pemesanan Telkomsel 1000 seharga 1500', '2019-03-17 01:29:51', '2019-03-17 01:29:51'),
(6, 1, 'Cut Balance', 'Melakukan pemesanan Telkomsel 1000 seharga 1500', '2019-03-17 01:32:49', '2019-03-17 01:32:49'),
(7, 1, 'Cut Balance', 'Melakukan pemesanan Telkomsel 1000 seharga 1500', '2019-03-17 01:33:49', '2019-03-17 01:33:49'),
(8, 1, 'Add Balance', 'Saldo ditambahkan sebesar Rp 100000', '2019-03-17 09:21:48', '2019-03-17 09:21:48'),
(9, 1, 'Cut Balance', 'Pendaftaran Admin dengan email admin@gmail.com seharga Rp 50,000', '2019-03-17 23:45:22', '2019-03-17 23:45:22'),
(10, 1, 'Cut Balance', 'Pembuatan kode voucher bernilai Rp 10,000', '2019-03-18 23:13:58', '2019-03-18 23:13:58'),
(11, 1, 'Cut Balance', 'Pembuatan kode voucher bernilai Rp 200,000', '2019-03-18 23:15:08', '2019-03-18 23:15:08'),
(12, 1, 'Cut Balance', 'Pembuatan kode voucher bernilai Rp 0', '2019-03-19 00:22:42', '2019-03-19 00:22:42'),
(13, 1, 'Cut Balance', 'Pembuatan kode voucher bernilai Rp 0', '2019-03-19 00:22:55', '2019-03-19 00:22:55'),
(14, 1, 'Cut Balance', 'Pembuatan kode voucher bernilai Rp 0', '2019-03-19 00:23:38', '2019-03-19 00:23:38'),
(15, 1, 'Cut Balance', 'Pembuatan kode voucher bernilai Rp 0', '2019-03-19 00:24:08', '2019-03-19 00:24:08'),
(16, 1, 'Cut Balance', 'Melakukan pemesanan Telkomsel S2 1000 seharga 2000', '2019-03-19 03:01:44', '2019-03-19 03:01:44'),
(17, 1, 'Add Balance', 'Saldo ditambahkan sebesar Rp 100000', '2019-03-19 06:05:03', '2019-03-19 06:05:03'),
(18, 1, 'Cut Balance', 'Pendaftaran Reseller dengan email asdasd@gmail.com seharga Rp 50,000', '2019-03-19 06:17:27', '2019-03-19 06:17:27'),
(19, 4, 'Refund', 'Saldo dikembalikan sebesar Rp 2000 untuk order id 4', '2019-04-04 20:56:32', '2019-04-04 20:56:32'),
(20, 3, 'Refund', 'Saldo dikembalikan sebesar Rp 1500 untuk order id 3', '2019-04-04 20:57:25', '2019-04-04 20:57:25'),
(21, 1, 'Cut Balance', 'Melakukan pemesanan sosial media sebesar Rp 1500', '2019-04-06 06:16:15', '2019-04-06 06:16:15'),
(22, 12, 'Refund', 'Saldo dikembalikan sebesar Rp 1500 untuk order id 12', '2019-04-06 07:09:59', '2019-04-06 07:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `sender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `get_balance` int(11) NOT NULL,
  `method` int(10) UNSIGNED NOT NULL,
  `status` enum('Pending','Success','Error','Canceled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `quantity`, `sender`, `get_balance`, `method`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 100000, '12312030', 100000, 4, 'Success', '2019-03-17 04:42:50', '2019-03-19 20:06:07'),
(5, 1, 100000, '21412312', 100000, 4, 'Pending', '2019-04-06 07:12:44', '2019-04-06 07:12:44'),
(6, 1, 100828, '120391230', 100828, 4, 'Pending', '2019-04-06 07:20:20', '2019-04-06 07:20:20'),
(7, 1, 100162, '120391230', 100162, 4, 'Pending', '2019-04-06 07:21:16', '2019-04-06 07:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_methods`
--

CREATE TABLE `deposit_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('MANUAL','AUTO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` float NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposit_methods`
--

INSERT INTO `deposit_methods` (`id`, `type`, `name`, `rate`, `data`, `created_at`, `updated_at`, `note`, `status`) VALUES
(2, 'AUTO', 'OVO 2', 0.9, '081380353611', '2019-03-14 23:39:19', '2019-04-02 01:09:01', '', 'Active'),
(4, 'AUTO', 'BANK BCA', 1, '1290011202799 A/N AHMAD SAUGIs', '2019-03-17 03:43:37', '2019-04-07 08:53:09', '', 'Active'),
(5, 'AUTO', 'aaa@aaa.com', 0, '', '2019-04-02 00:57:43', '2019-04-02 00:57:43', '', 'Active'),
(6, 'AUTO', 'BANK M', 1, '', '2019-04-02 01:03:11', '2019-04-02 01:03:11', '', 'Active'),
(7, 'AUTO', 'asdfda', 1, 'zxc', '2019-04-07 08:51:31', '2019-04-07 08:51:31', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `invitation_codes`
--

CREATE TABLE `invitation_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remains` int(11) NOT NULL,
  `status` enum('Redeemed','Open') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invitation_codes`
--

INSERT INTO `invitation_codes` (`id`, `code`, `remains`, `status`, `created_at`, `updated_at`) VALUES
(4, 'ZoopediaCode', 8, 'Open', '2019-03-13 02:42:09', '2019-03-20 18:55:10'),
(5, 'ihPtbsZbuu', 1, 'Open', '2019-03-15 01:02:14', '2019-03-15 01:02:14'),
(6, 'dAdBoEZEEJ', 1, 'Open', '2019-03-15 01:02:20', '2019-03-15 01:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(13, '2019_01_15_040819_create_table_providers', 2),
(18, '2014_10_12_100000_create_password_resets_table', 3),
(19, '2019_01_14_040819_create_table_providers', 3),
(20, '2019_01_14_040914_create_table_services_cats', 3),
(21, '2019_01_15_040834_create_table_services', 3),
(22, '2019_01_15_040853_create_table_services_pulsa', 4),
(23, '2019_02_15_040451_balance_history', 4),
(24, '2019_02_15_040628_create_table_deposits', 4),
(25, '2019_02_15_040710_create_table_news', 4),
(26, '2019_02_15_040726_create_table_orders', 4),
(27, '2019_02_15_040738_create_table_orders_pulsa', 5),
(28, '2019_02_15_040937_create_table_tickets', 5),
(29, '2019_02_21_191101_create_deposit_method', 6),
(30, '2019_02_21_191833_update_deposit_method', 7),
(31, '2019_03_07_055443_activities', 8),
(32, '2019_03_08_023248_create_oprator_table', 9),
(33, '2019_03_13_085721_create_invitation_code', 10),
(34, '2019_03_15_035559_modify_oprator', 11),
(35, '2019_03_15_063031_update_methods', 12),
(36, '2019_03_18_125033_create_staff', 13),
(37, '2019_03_19_054825_create_vouchers', 14),
(38, '2019_04_02_035546_create_ticket_content', 15);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Service','Info','Maintenance','Update') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `type`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Maaf gan', 'Maintenance', 'Mohon maaf lahir dan batin', '2019-03-14 02:31:16', '2019-03-19 06:06:56'),
(3, 'as', 'Update', 'cxc', '2019-03-14 02:37:35', '2019-03-14 02:37:35'),
(4, 'Informasi Terbaru', 'Info', 'Jangan', '2019-03-19 20:44:48', '2019-03-19 20:44:48'),
(5, 'Layanan baru', 'Service', 'Instagram Likes Rp 0', '2019-03-19 20:45:08', '2019-03-19 20:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `poid` bigint(20) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_count` int(11) NOT NULL,
  `remains` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `status` enum('Success','Pending','Processing','Error','Partial') COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_from` enum('WEB','API') COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `poid`, `user_id`, `service_id`, `target`, `quantity`, `start_count`, `remains`, `price`, `status`, `place_from`, `notes`, `refund`, `created_at`, `updated_at`) VALUES
(12, 5478517, 1, 1769, 'test', '50', 0, '0', 1500, 'Error', 'WEB', '-', 1, '2019-04-06 06:16:15', '2019-04-06 07:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pulsas`
--

CREATE TABLE `orders_pulsas` (
  `id` int(10) UNSIGNED NOT NULL,
  `oid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Success','Error','Pending') COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_from` enum('WEB','API') COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_pulsas`
--

INSERT INTO `orders_pulsas` (`id`, `oid`, `poid`, `user_id`, `service_id`, `price`, `data`, `sn`, `status`, `place_from`, `refund`, `created_at`, `updated_at`) VALUES
(1, '98700', '98700', 1, 4, 1500, '081380353611', '', 'Pending', 'WEB', 0, '2019-03-17 01:29:50', '2019-03-17 01:29:50'),
(2, '93105', '93105', 1, 4, 1500, '081380353611', '', 'Pending', 'WEB', 0, '2019-03-17 01:32:48', '2019-03-17 01:32:48'),
(3, '15439', '15439', 1, 179, 1500, '081380353611', 'Your IP 125.166.92.144 Not Allowed', 'Error', 'WEB', 1, '2019-03-17 01:33:49', '2019-04-06 06:10:42'),
(4, '8264579', '8264579', 1, 5, 2000, '081380353611', 'Your IP 180.243.225.216 Not Allowed', 'Error', 'WEB', 1, '2019-03-19 03:01:44', '2019-04-04 20:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ahmadsaugigis@gmail.com', '$2y$10$P7DXtw2nrHfxQxK/dyNjYulL.7xp0ZZ7kngguscaYdXHp1z/XCFKi', '2019-03-19 01:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('PULSA','SOSMED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `name`, `api_key`, `link`, `type`, `created_at`, `updated_at`) VALUES
(2, 'ZP1', 'PlmzvYFKpfpwLdsGSDwW', 'https://www.zoopedia.site/api.php', 'SOSMED', '2019-02-18 16:45:35', '2019-03-19 06:15:18'),
(3, 'PORTALPULSA', 'dea373107d9cbaa88e10d67ac6dba65a', 'https://portalpulsa.com/api/connect/', 'PULSA', '2019-03-16 06:54:34', '2019-03-16 06:54:34'),
(4, 'OCEANH2H', 'axHq4lUtaJuMR7mk7y2u', 'https://api.oceanh2h.com/pulsa/order', 'PULSA', '2019-03-17 01:25:32', '2019-03-17 01:25:32'),
(5, 'IRV', 'a5fe54-032bf1-8e7340-4d5499-e34b65', 'https://api.irvankede-smm.co.id/order', 'SOSMED', '2019-03-31 17:30:44', '2019-03-31 17:34:43'),
(6, 'JAP', '85bbc512fb2c739666585d72fe13d56e', 'https://justanotherpanel.com/api/v2', 'SOSMED', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_oper` int(11) NOT NULL,
  `keuntungan` int(11) NOT NULL,
  `type` enum('Basic','Custom Comment','Comment Likes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` int(11) NOT NULL,
  `provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `category_id`, `note`, `min`, `max`, `price`, `price_oper`, `keuntungan`, `type`, `status`, `pid`, `provider_id`, `created_at`, `updated_at`) VALUES
(1311, 'Instagram Followers IRV  1', 89, 'irv 1 new', 100, 5000, 6150, 6150, 0, 'Basic', 'Active', 2, 5, '2019-04-06 05:08:45', '2019-04-06 05:08:45'),
(1312, 'Instagram Followers IRV 3 [REAL]', 89, '⚡️ SUPER INSTANT ⚡️ Instagram Followers[45K] [REAL] [NO REFUND - NO REFILL]', 200, 10000, 6800, 6800, 0, 'Basic', 'Active', 4, 5, '2019-04-06 05:08:45', '2019-04-06 05:08:45'),
(1313, 'Instagram Views IRV 1 [999K] [REAL - INSTANT]', 90, '[*Link Only], REAL Online, Super FAST', 100, 999000, 699, 699, 0, 'Basic', 'Active', 12, 5, '2019-04-06 05:08:45', '2019-04-06 05:08:45'),
(1314, 'Instagram Auto View', 91, 'USERNAME ONLY (Normal Speed)', 20, 1000000, 2000, 2000, 0, 'Basic', 'Active', 17, 5, '2019-04-06 05:08:45', '2019-04-06 05:08:45'),
(1315, ' Youtube Shares', 92, '(INSTANT - 1500 / Day Speed)', 500, 150000, 35000, 35000, 0, 'Basic', 'Active', 27, 5, '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(1316, 'SoundCloud Followers R1', 93, '[FAST]', 20, 1000000, 34000, 34000, 0, 'Basic', 'Active', 38, 5, '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(1317, ' SoundCloud Plays', 93, '(SUPER FAST) (S1) [MULTIPLE OF 100] 	Quantity = MULTIPLE OF 100 ONLY !', 20, 10000000, 1500, 1500, 0, 'Basic', 'Active', 40, 5, '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(1318, 'Pinterest Followers', 94, '(UNLIMITED) [INSTANT]', 20, 1000000000, 42000, 42000, 0, 'Basic', 'Active', 42, 5, '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(1319, 'Pinterest RePins', 94, '(UNLIMITED) [INSTANT]', 20, 1000000, 42000, 42000, 0, 'Basic', 'Active', 44, 5, '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(1320, 'Instagram Likes IRV 4 [.50K] [REAL - INSTANT]', 95, '[50K] [REAL - INSTANT]', 20, 50000, 3000, 3000, 0, 'Basic', 'Active', 54, 5, '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(1321, ' Telegram Channel Members', 96, 'MAX 25K', 100, 25000, 105000, 105000, 0, 'Basic', 'Active', 107, 5, '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(1322, 'Telegram Post Views', 96, '[ Last 5 post ]', 100, 5000, 69000, 69000, 0, 'Basic', 'Active', 108, 5, '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(1323, 'Google Followers', 97, 'USERNAME OR LINK', 100, 7000, 112000, 112000, 0, 'Basic', 'Active', 116, 5, '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(1324, 'Google Website +1', 97, 'LINK', 50, 5000, 260000, 260000, 0, 'Basic', 'Active', 117, 5, '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(1325, 'Google Post +1', 97, 'LINK', 20, 2000, 125000, 125000, 0, 'Basic', 'Active', 118, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1326, 'Google Reshares', 97, 'Google Reshares', 20, 2000, 135000, 135000, 0, 'Basic', 'Active', 119, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1327, '80 Auto Likes + Views - 7 Days', 98, ' 	Please Enter Your IG Username Only !', 1, 1, 35000000, 35000000, 0, 'Basic', 'Active', 120, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1328, ' 	150 Auto Likes + Views - 7 Days', 98, 'USERNAME ', 1, 1, 70000000, 70000000, 0, 'Basic', 'Active', 121, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1329, ' 	1500 Auto Likes + Views - 7 Days', 98, 'USERNAME', 1, 1, 314000000, 314000000, 0, 'Basic', 'Active', 124, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1330, ' 	80 Auto Likes + Views - 30 Days', 98, 'USERNAME', 1, 1, 140000000, 140000000, 0, 'Basic', 'Active', 125, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1331, 'Instagram Views  [300k Per Day]', 90, '[300k Per Day] - [INSTANT] - [Super FAST]', 100, 999000, 1900, 1900, 0, 'Basic', 'Active', 128, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1332, 'Instagram Followers ARAB - IRAN - INSTANT NON DROP', 99, '[20K] [ARAB - IRAN - INSTANT] [NON DROP - 30 DAYS REFILL]', 50, 20000, 35000, 35000, 0, 'Basic', 'Active', 170, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1333, 'Instagram Story Views UNLIMITED (USERNAME ONLY) (S1)', 100, 'Instagram Story Views UNLIMITED (USERNAME ONLY) (S1)', 50, 10000000, 5500, 5500, 0, 'Basic', 'Active', 176, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1334, 'Instagram Story Views [20k] (USERNAME ONLY) (S2)', 100, 'Instagram Story Views [20k] (USERNAME ONLY) (S2)', 100, 20000, 9500, 9500, 0, 'Basic', 'Active', 177, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1335, 'Instagram Impressions [20k] [INSTANT] (S1)', 100, 'Instagram Impressions [20k] [INSTANT] (S1)', 500, 20000, 1000, 1000, 0, 'Basic', 'Active', 178, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1336, 'Instagram Saves [UNLIMITED] [20k/Day - INSTANT]', 100, 'Instagram Saves [UNLIMITED] [20k/Day - INSTANT]', 20, 30000, 4600, 4600, 0, 'Basic', 'Active', 179, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1337, 'Instagram Likes [70K] [BRAZIL - INSTANT]', 95, 'Instagram Likes [70K] [BRAZIL - INSTANT]', 20, 70000, 5000, 5000, 0, 'Basic', 'Active', 183, 5, '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(1338, 'Instagram Likes [35K] [RUSSIA - INSTANT - HQ]', 95, 'Instagram Likes [35K] [RUSSIA - INSTANT - HQ]', 20, 35000, 5000, 5000, 0, 'Basic', 'Active', 186, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1339, 'Instagram Likes [3k] [JAPAN - HQ - INSTANT]', 95, 'Instagram Likes [3k] [JAPAN - HQ - INSTANT]', 20, 3000, 5000, 5000, 0, 'Basic', 'Active', 187, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1340, 'Instagram Auto Likes (USA - MAX 30K)', 91, '	Instagram Auto Likes (USA - MAX 30K)', 20, 30000, 6000, 6000, 0, 'Basic', 'Active', 197, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1341, 'Instagram Auto Likes (CHINA - MAX 30K)', 91, 'Instagram Auto Likes (CHINA - MAX 30K)', 10, 30000, 7000, 7000, 0, 'Basic', 'Active', 201, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1342, 'Instagram Auto Likes + Impressions (30k Max)', 91, 'Instagram Auto Likes + Impressions (30k Max)', 50, 30000, 6000, 6000, 0, 'Basic', 'Active', 202, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1343, '	Instagram Auto Views (Fast Speed)', 91, '	Instagram Auto Views (Fast Speed)', 100, 60000, 3000, 3000, 0, 'Basic', 'Active', 204, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1344, '	Instagram Auto Impressions (MAX UNLIMITED)', 91, '	Instagram Auto Impressions (MAX UNLIMITED)', 20, 1000000, 47000, 47000, 0, 'Basic', 'Active', 207, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1345, 'Facebook Live Stream Views [30 Mins Watch]', 101, 'Facebook Live Stream Views [30 Mins Watch]', 100, 1000, 320000, 320000, 0, 'Basic', 'Active', 236, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1346, 'Twitter Views (INSTANT)', 102, 'Twitter Views (INSTANT)', 100, 1000000, 24000, 24000, 0, 'Basic', 'Active', 266, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1347, 'Twitter Impressions (INSTANT)', 102, 'Twitter Impressions (INSTANT)', 100, 1000000, 24000, 24000, 0, 'Basic', 'Active', 267, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1348, 'Instagram Likes + Impressions [30K] [REAL - INSTANT]', 95, 'Instagram Likes + Impressions [30K] [REAL - INSTANT]', 100, 30000, 4400, 4400, 0, 'Basic', 'Active', 279, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1349, '80 Auto Likes + Views - 7 Days', 103, '80 Auto Likes + Views - 7 Days', 1, 1, 35000000, 35000000, 0, 'Basic', 'Active', 280, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1350, '150 Auto Likes + Views - 7 Days', 103, '150 Auto Likes + Views - 7 Days', 1, 1, 69500000, 69500000, 0, 'Basic', 'Active', 281, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1351, '300 Auto Likes + Views - 7 Days', 103, 'Please Enter Your IG Username Only !', 1, 1, 103000000, 103000000, 0, 'Basic', 'Active', 282, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1352, '1500 Auto Likes + Views - 7 Days', 103, 'Please Enter Your IG Username Only !', 1, 1, 308000000, 308000000, 0, 'Basic', 'Active', 284, 5, '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(1353, '	80 Auto Likes + Views - 30 Days', 103, 'USERNAME ONLY', 1, 1, 128000000, 128000000, 0, 'Basic', 'Active', 285, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1354, '150 Auto Likes + Views - 30 Days', 103, 'USERNAME ONLY', 1, 1, 223000000, 223000000, 0, 'Basic', 'Active', 286, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1355, '300 Auto Likes + Views - 30 Days', 103, 'USERNAME ONLY', 1, 1, 308000000, 308000000, 0, 'Basic', 'Active', 287, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1356, 'MURAH HOT FAST INTAGRAM SERVER VIP 2  [10k]', 89, '- 0 - 2h start- No Refill - No refund', 100, 10000, 4800, 4800, 0, 'Basic', 'Active', 301, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1357, 'NEW CHEAP Instagram Views [800K] [REAL]', 90, 'NEW CHEAP Instagram Views [800K] [REAL]', 50, 800000, 450, 450, 0, 'Basic', 'Active', 346, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1358, 'Instagram Views [30K] [REAL] CHEAP', 90, 'Real Views!\r\nMin 10\r\nMax 30K\r\nInstant Start !\r\nSpeed 30K / Day !', 10, 30000, 270, 270, 0, 'Basic', 'Active', 355, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1359, 'Instagram Followers IKP2 MAX 5K - INSTANT 5 MIN START', 89, '( Very Less Drop )', 100, 5000, 7000, 7000, 0, 'Basic', 'Active', 361, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1360, 'Instagram Followers IKP MAX 11K - 1 MİN START', 89, '(Minimum Drop)', 100, 11000, 12600, 12600, 0, 'Basic', 'Active', 362, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1361, 'Instagram Followers IKP 3 - [ Min 200 - Max 30K ] INSTNT', 89, '1-24 jam', 100, 30000, 6900, 6900, 0, 'Basic', 'Active', 372, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1362, 'İnstagram Followers IKP 7 (Fast) (30 Days Refill ) | (MIN 1000 - Max - 10k)', 99, '(Fast) (15 Days Refill ) | (MIN 300 - Max - 10k)', 1000, 10000, 22500, 22500, 0, 'Basic', 'Active', 376, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1363, 'İnstagram Followers IKP 8 Real & Active (Fast) (Max - 25k) (30 days refill)', 99, 'Real & Active (Fast) (Max - 25k) (30 days refill)', 100, 25000, 26000, 26000, 0, 'Basic', 'Active', 377, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1364, 'İnstagram Followers IKP 9 30 DAYS REFILL', 99, 'Real Refill (30 Days Maximum) 0-1 start Followers', 100, 10000, 22500, 22500, 0, 'Basic', 'Active', 378, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1365, 'Instagram Followers IKP 10 MAX 10K||5 MENIT START', 89, 'Waktu Mulai 5 menit sampai 6 jam Drop Followers  tidak terlalu banyak kita Privat DB', 100, 10000, 6500, 6500, 0, 'Basic', 'Active', 379, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1366, 'Instagram Followers IKP 11 FASTSERVICE', 89, 'FAST ERVICE', 500, 50000, 12100, 12100, 0, 'Basic', 'Active', 411, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1367, 'Instagram Followers IKP 13  ( 0-6 hours Start ) Min 500 -MAX 5K', 89, '( 0-6 hours Start ) Min 500 -MAX 5K', 500, 5000, 7000, 7000, 0, 'Basic', 'Active', 413, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1368, 'Instagram Views Cheapest In Market Murahnya Gila [MAX10K]', 90, '( Cheapest in the Market )', 50, 10000, 97, 97, 0, 'Basic', 'Active', 448, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1369, 'Instagram Followers VVIIPP 3 [3K]', 89, 'Complete In 6-12 Hour, Partial / Cancel issues', 100, 3000, 4000, 4000, 0, 'Basic', 'Active', 462, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1370, 'Instagram Followers VVIIPP 7 INSTAN', 89, 'FAST DELIVERY NO REFILL NO REFUND', 100, 4000, 6100, 6100, 0, 'Basic', 'Active', 475, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1371, 'Instagram Followers VVIIPP 12 Max 20K - [ Super FAST ] - No Partial', 89, '[ Super FAST ] - No Partial no refund no refill -   - No Refill / No Refund - 6 Hour Start - Superfast Speed - Minimum 100', 200, 10000, 5000, 5000, 0, 'Basic', 'Active', 491, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1372, 'Instagram Impressions [1M]', 91, 'Real Instant Delivery! Minimum 100', 100, 1000000, 2100, 2100, 0, 'Basic', 'Active', 526, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1373, 'Instagram Story Views [30K]', 100, 'No Refill / No Refund 0-1 Hour Start! 10K/Day Minimum 50', 100, 30000, 5299, 5299, 0, 'Basic', 'Active', 527, 5, '2019-04-06 05:08:49', '2019-04-06 05:08:49'),
(1374, 'Instagram Last Story S1 - Only Username - No Refund', 100, 'Instagram Last Story - Only Username - No Refund', 500, 10000, 2650, 2650, 0, 'Basic', 'Active', 554, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1375, 'Instagram Followers [10K] [INSTANT DELIVERY VERY LESS DROP', 89, 'No Refill / No Refund 0-1 Hour Start! Super Instant Delivery Minimum 100 Maximum = 10k Daily !', 100, 10000, 6300, 6300, 0, 'Basic', 'Active', 560, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1376, 'Instagram Followers [4K] [NO REFUND NO REFILL]', 89, '0-1 JAM START NO REFUND NO REFILL', 100, 4000, 4000, 4000, 0, 'Basic', 'Active', 561, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1377, 'Instagram Followers [20K] - INSTANT 5 MIN START ( Very Less Drop )', 89, 'no refund no refill', 100, 5000, 8900, 8900, 0, 'Basic', 'Active', 573, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1378, 'Instagram Followers REFILL ISNTANT {30 Days Refill- 2 hour Start] MAX 10k', 99, '{30 Days Refill- 2 hour Start] MAX 10k', 100, 10000, 23000, 23000, 0, 'Basic', 'Active', 587, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1379, 'Instagram Followers MAX 30K Instant Porses', 89, 'NO REFILL NO REFUND', 100, 10000, 9000, 9000, 0, 'Basic', 'Active', 601, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1380, 'Instagram Views Cheapest In Market ( Min 50 Max 10M )', 90, 'START 0-6 JAM', 50, 100000000, 50, 50, 0, 'Basic', 'Active', 613, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1381, 'Instagram TV Likes - Instant Start', 104, 'INSTANT', 500, 3000, 1900, 1900, 0, 'Basic', 'Active', 621, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1382, 'Instagram TV Views [ULTRA FAST] ( Min 100 | Max 1 Million )', 104, 'IGTV Random Comments ! Full TV Video Link Needed ! INSTANT Start ! Min = 100! Example URL- https://www.instagram.com/tv/BkSp-6VF5fg/', 100, 100000000, 265, 265, 0, 'Basic', 'Active', 625, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1383, 'IGTV Random Comments [1M]', 104, 'IGTV Random Comments ! Full TV Video Link Needed ! INSTANT Start ! Min = 10!', 10, 10000000, 32000, 32000, 0, 'Basic', 'Active', 631, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1384, 'IGTV Random Emoji Comments [1M]', 104, 'IGTV Random Emoji Comments ! Full TV Video Link Needed ! INSTANT Start ! Min = 10! ♛ Instagram Auto Likes', 10, 10000000, 32000, 32000, 0, 'Basic', 'Active', 632, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1385, 'Instagram Followers Max 5K - Refill 15 days', 99, 'INSTANT', 100, 5000, 18000, 18000, 0, 'Basic', 'Active', 634, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1386, 'Instagram Views [300K] [SUPER FAST]', 90, 'INSTANT START ! VERY FAST ! 300K / Hour !', 100, 300000, 60, 60, 0, 'Basic', 'Active', 650, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1387, 'Instagram Views [3M] [SUPER FAST]', 90, '300k to 500k Per Hour ! Very Fast ! Instant !', 100, 30000000, 75, 75, 0, 'Basic', 'Active', 651, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1388, 'Instagram Views + Impressions [FAST] [1M]', 90, 'INSTANT 300K to 500K / Hour Speed ! FAST !', 100, 100000000, 100, 100, 0, 'Basic', 'Active', 652, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1389, 'Instagram Views + Impressions [TRENDING HITS] [1M]', 90, 'INSTANT', 100, 10000000, 150, 150, 0, 'Basic', 'Active', 653, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1390, 'Instagram Followers IK-2  ( Max - 10k ) ( SUPERFAST, NO REFILL ) INSTANT', 89, 'Super fast real followers. Data is renewed everyday. You can send followers even you used the max 10K for your profile.', 100, 10000, 6500, 6500, 0, 'Basic', 'Active', 667, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1391, 'Instagram Followers Super Fast [Max 15k]', 89, 'Ultra Fast and Less Drop No Refill / No Refund 0-1 Hour Start! Super Instant Delivery Minimum 150', 100, 6000, 3600, 3600, 0, 'Basic', 'Active', 680, 5, '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(1392, 'Instagram Followers [ Superfast ] [ Real ] [ Max 5k ] INSTANT', 89, 'NO REFIL NO REFINDD', 100, 5000, 4800, 4800, 0, 'Basic', 'Active', 687, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1393, 'Instagram Followers (BEST IN MARKET) {MAX 80K) 30 Days Refil', 99, '30 days refill', 100, 80000, 14850, 14850, 0, 'Basic', 'Active', 688, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1394, 'Instagram Views [1M] FAST MURAH', 90, 'Instant Start 200k / hour speed Lifetime non drop guarantee 50 Minimum order 100,00,000 Maximum ord', 50, 100000000, 23, 23, 0, 'Basic', 'Active', 690, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1395, 'Instagram Followers 5K SuperFast Hanya di IRV', 89, 'NO REFIL NO REFUND', 100, 5000, 3150, 3150, 0, 'Basic', 'Active', 695, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1396, 'Instagram Followers (30 Days Refill ) MAX 30K TOMBOL REFILL', 99, 'daily speed 7-10K Refill - Within 24-48 hours Drop - 5% Drop', 100, 30000, 13200, 13200, 0, 'Basic', 'Active', 697, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1397, 'Instagram Followers - 30 Days Refill [ Min 100 - Max 10k ] [ SUPER FAST]', 99, '- Instant - Speed 5k/Day - 30 days refill', 100, 10000, 15000, 15000, 0, 'Basic', 'Active', 698, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1398, 'Instagram Followers Max 10K - 1 Mint START [Less Drop]', 89, 'NO REFIL NO REFINDD', 100, 10000, 5400, 5400, 0, 'Basic', 'Active', 699, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1399, 'Instagram TV Views- Cheapest In Market [1M] 10K/DAY', 104, 'Instagram TV Views- Cheapest In Market [1M] 10K/DAY', 100, 100000000, 140, 140, 0, 'Basic', 'Active', 709, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1400, 'Instagram Followers KDRT 3 ( Max - 6k ) ( NO REFILL ) INSTANT', 89, ' 	INSTANT-6HRS\r\nReal Followers\r\n6,000 Per day\r\nMin 100\r\nMax 6,000', 100, 6000, 4200, 4200, 0, 'Basic', 'Active', 713, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1401, 'Instagram Followers KDRT 4 [ Superfast ] [ Real ] [ Max 10k ] INSTANT-4hrs', 89, '  INSTANT-4HRS\\\\\\\\r\\\\\\\\nReal Followers\\\\\\\\r\\\\\\\\n10,000 Per day\\\\\\\\r\\\\\\\\nMin 100\\\\\\\\r\\\\\\\\nMax 10,000', 100, 10000, 4500, 4500, 0, 'Basic', 'Active', 714, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1402, 'Instagram Followers KDRT 5 ( Max - 10k ) ( SUPERFAST, NO REFILL ) INSTANT', 89, ' 	Super fast real followers. Data is renewed everyday. You can send followers even you used the max 10K for your profile.', 100, 10000, 6800, 6800, 0, 'Basic', 'Active', 715, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1403, 'Instagram Custom Comments Indonesia', 105, 'Instant, Komentar perbaris', 5, 1000, 8000, 8000, 0, 'Basic', 'Active', 749, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1404, 'VIew Story Indonesia', 100, 'INPUT USERNAME FAST ', 100, 2001, 6000, 6000, 0, 'Basic', 'Active', 750, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1405, 'Instagram Followers KW 1 MAX 15K INSTANT', 89, 'NO REFILL NO REFUND ', 100, 15000, 4300, 4300, 0, 'Basic', 'Active', 763, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1406, 'Instagram Followers [45K] [INSTANT] PERDAY 500-2K', 89, 'NO REFILL NO REFUND ', 100, 45000, 6150, 6150, 0, 'Basic', 'Active', 764, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1407, 'Instagram Views [400K] [SLOW]', 90, 'SLOW !!!', 100, 400000, 36, 36, 0, 'Basic', 'Active', 766, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1408, 'INSTAGRAM FOLLOWERS MAX 6K - INSTANT START [Recommended]', 89, 'INSTAGRAM FOLLOWERS MAX 6K - INSTANT START [Recommended]', 100, 6000, 4750, 4750, 0, 'Basic', 'Active', 768, 5, '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(1409, 'Website Traffic [1M] ', 106, ' 	No Adfly / Linkshrink / Etc...\\r\\nYou Can Use Goo.gl To See The Traffic\\r\\n12 Hours Start!\\r\\n10K/Day\\r\\nMinimum 1000 ', 1000, 100000000, 2400, 2400, 0, 'Basic', 'Active', 776, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1410, 'Website Traffic [10M] [WW]', 106, ' 	Instant Start !\\r\\n0 to 1 Hour !\\r\\nDaily Speed = 5k-10k\\r\\n100% Real People !!\\r\\nGoogle Analytics Supported\\r\\nAdSense Safe\\r\\nMin = 100', 100, 100000000, 9200, 9200, 0, 'Basic', 'Active', 777, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1411, 'Website Traffic From Facebook [10M] [WW]', 106, ' 	Traffic From Facebook !\\r\\nInstant Start !\\r\\n0 to 1 Hour !\\r\\nDaily Speed = 5k-10k\\r\\n100% Real People !!\\r\\nGoogle Analytics Supported\\r\\nAdSense Safe\\r\\nMin = 100', 100, 1000000000, 9200, 9200, 0, 'Basic', 'Active', 778, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1412, 'Website Traffic From Instagram [10M] [WW] ', 106, ' 	Traffic From Instagram !\\r\\nInstant Start !\\r\\n0 to 1 Hour !\\r\\nDaily Speed = 5k-10k\\r\\n100% Real People !!\\r\\nGoogle Analytics Supported\\r\\nAdSense Safe\\r\\nMin = 100', 100, 1000000000, 9200, 9200, 0, 'Basic', 'Active', 779, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1413, 'Instagram Followers MAX 50K 10-15K/DAY ', 89, 'Daily Speed 10-15k\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\nStart 0-1 Hour', 100, 50000, 4400, 4400, 0, 'Basic', 'Active', 786, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1414, 'Comment Live Indonesia', 107, 'input username \\r\\nsaat live baru input', 5, 700, 8900, 8900, 0, 'Basic', 'Active', 801, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1415, 'Like Live Indonesia', 107, 'SUBMIT SSAAT LIVE , INPUT USERNAMEE', 5, 700, 9000, 9000, 0, 'Basic', 'Active', 802, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1416, 'Instagram Cheapest Story Views - All story', 100, 'new ', 500, 10000, 180, 180, 0, 'Basic', 'Active', 833, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1417, 'Instagram Views {Speed 100K - Instant Start}', 90, 'instant', 1000, 100000000, 46, 46, 0, 'Basic', 'Active', 859, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1418, 'Instagram - Live Video Likes ( INSTANT )', 107, '  Instagram - Live Video Likes ( INSTANT )', 200, 100000, 8900, 8900, 0, 'Basic', 'Active', 860, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1419, '  Instagram - Live Video Custom Comments ( INSTANT )', 107, '  Instagram - Live Video Custom Comments ( INSTANT )', 5, 400, 180000, 180000, 0, 'Basic', 'Active', 861, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1420, 'Instagram Likes + Impressions [50K] REAL ', 108, ' Instagram Likes + Impressions ', 50, 50000, 2800, 2800, 0, 'Basic', 'Active', 862, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1421, 'Instagram Impressions [1M] REAL', 108, 'Instagram Impressions [1M] ', 100, 10000000, 1300, 1300, 0, 'Basic', 'Active', 863, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1422, 'Instagram Impressions [100K] ', 108, ' 	Instagram Impressions [100K] ', 10, 1000000, 3550, 3550, 0, 'Basic', 'Active', 864, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1423, 'Facebook Video Views (10K-20K) Instant Start', 101, 'Facebook Video Views (10K-20K) Instant Start', 1000, 100000000, 3850, 3850, 0, 'Basic', 'Active', 865, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1424, ' 	Instagram - TV Random Comments [ Instant ]', 104, ' 	INSTANT SUPERFAST\\r\\nReal Users\\r\\nMinimum 5\\r\\nExample URL- https://www.instagram.com/tv/BkSp-6VF5AB/', 10, 1000000, 35150, 35150, 0, 'Basic', 'Active', 871, 5, '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(1425, 'Instagram - TV Random Emoji [ Instant ]', 104, ' 	INSTANT SUPERFAST\\r\\nReal Users\\r\\nMinimum 5\\r\\nExample URL- https://www.instagram.com/tv/BkSp-6VF5AB/', 10, 1000000000, 35150, 35150, 0, 'Basic', 'Active', 872, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1426, 'Instagram TV Custom MALE Comments [ Instant-1HRS ]', 104, ' 	Instagram TV Custom MALE Comments [ Instant-1HRS ]', 20, 100, 317500, 317500, 0, 'Basic', 'Active', 873, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1427, 'Instagram TV Random MALE Comments [ Instant-1HRS ]', 104, 'Instagram TV Random MALE Comments [ Instant-1HRS ]', 10, 100, 255500, 255500, 0, 'Basic', 'Active', 874, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1428, 'Instagram TV Random FEMALE Comments [ Instant-1HRS ]', 104, 'Instagram TV Random FEMALE Comments [ Instant-1HRS ]', 10, 150, 255500, 255500, 0, 'Basic', 'Active', 875, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1429, ' 	Instagram TV Custom FEMALE Comments [ Instant-1HRS ]', 104, ' 	Instagram TV Custom FEMALE Comments [ Instant-1HRS ]', 20, 150, 317500, 317500, 0, 'Basic', 'Active', 876, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1430, 'Instagram - TV Likes S2 [ Instant ]', 104, '  	Instagram - TV Likes S2 [ Instant ]', 400, 2500, 4450, 4450, 0, 'Basic', 'Active', 877, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1431, 'Instagram Story Views [15K] [ALL POSTS]', 100, 'Instant Start\\\\r\\\\n30k / Day Speed !\\\\r\\\\nMin 100', 100, 15000, 170, 170, 0, 'Basic', 'Active', 878, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1432, 'Instagram Story Views ALL story', 100, 'ALL STORIES !\\\\r\\\\nUSERNAME ONLY !\\\\r\\\\nINSTANT START !\\\\r\\\\nFAST DELIVERY !\\\\r\\\\nMin = 100\\\\r\\\\nMax = 15k', 100, 15000, 3300, 3300, 0, 'Basic', 'Active', 879, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1433, 'Instagram Impressions [10M] [EXPLORE - HOME - LOCATION - PROFILE] ', 100, '  Impressions showing from ALL in the statistics (Explore, Home, Location ,Etc..)!\\\\r\\\\nInstant Start!\\\\r\\\\nFast Delivery!\\\\r\\\\nMinimum 100\\\\r\\\\nMaximum 10M', 100, 2147483647, 1350, 1350, 0, 'Basic', 'Active', 880, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1434, 'Instagram Story Views [MALE] [30K] ', 100, '  Username Only\\\\\\\\r\\\\\\\\nViews from MALE users\\\\\\\\r\\\\\\\\n0-1 Hour Start!\\\\\\\\r\\\\\\\\n50K/Day\\\\\\\\r\\\\\\\\nMinimum 20', 20, 30000, 6900, 6900, 0, 'Basic', 'Active', 881, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1435, 'Instagram Story Views [FEMALE] [30K] ', 100, '  Username Only\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nViews from FEMALE users\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n0-1 Hour Start!\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n50K/Day\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nMinimum 20', 20, 30000, 6900, 6900, 0, 'Basic', 'Active', 882, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1436, 'İnstagram Saves 15K', 100, 'Put Photo Link', 100, 15000, 185, 185, 0, 'Basic', 'Active', 886, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1437, 'Instagram TV Views {6M} ', 104, 'Instagram TV Views {6M} ', 1000, 600000000, 900, 900, 0, 'Basic', 'Active', 893, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1438, ' 	Instagram TV Views {2M}', 104, ' 	Instagram TV Views {2M}', 2000, 2147483647, 800, 800, 0, 'Basic', 'Active', 894, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1439, 'Instagram Followers - [ 15 Days Refill ] [ 5k/day ]', 99, 'Instagram Followers - [ 15 Days Refill ] [ 5k/day ]', 300, 5000, 6400, 6400, 0, 'Basic', 'Active', 896, 5, '2019-04-06 05:08:53', '2019-04-06 05:08:53'),
(1440, 'Instagram Followers Max [100K] - INSTANT ALWAYS', 89, 'FAST\\\\r\\\\nNO REFILL NO REFUND ', 100, 100000, 11700, 11700, 0, 'Basic', 'Active', 897, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1441, 'Inatagram Followers Max 80K- Instant Start', 89, 'NO REFILL NO REFUND', 200, 80000, 7250, 7250, 0, 'Basic', 'Active', 899, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1442, 'Youtube - Likes [ Ultrafast ] [ Max 400k ] SUPER INSTANT NO REFIILL NO REFUND ', 92, 'NO REFILLL NO REFUND 25,000-100,000 Per day\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\nMinimum 10z', 100, 400000, 130000, 130000, 0, 'Basic', 'Active', 902, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1443, 'Twitter Video Views [ 100k/day ] INSTANT', 102, 'INPUT LINK', 100, 2147483647, 22600, 22600, 0, 'Basic', 'Active', 903, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1444, 'Twitter Live Views [ 500 Max ] [ 15 Mins Time View ] INSTANT 2 ', 102, 'Twitter Live Views [ 500 Max ] [ 15 Mins Time View ] INSTANT', 20, 500, 109000, 109000, 0, 'Basic', 'Active', 904, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1445, 'Twitter Impression [ 100k/day ] INTANT FAST', 102, 'Twitter Impression [ 100k/day ] INTANT FAST', 100, 2147483647, 22600, 22600, 0, 'Basic', 'Active', 905, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1446, 'Twitter Retweets [ HQ ] [ Worldwide ] [ No Refill ] INSTANT', 109, 'Twitter Retweets -[ HQ ] [ Worldwide ] [ No Refill ] INSTANT', 10, 200000, 145000, 145000, 0, 'Basic', 'Active', 910, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1447, 'Twitter Poll Votes [100M] !', 110, 'Link Example: www....com?vote=ButtonNumber\\r\\n0-1 Hour Start!\\r\\n1K - 5K/Day\\r\\nMinimum 100', 100, 1000000000, 54300, 54300, 0, 'Basic', 'Active', 911, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1448, 'Twitter Poll Votes [10M] !', 110, 'Link Example: www....com?vote=ButtonNumber\\r\\n0-1 Hour Start!\\r\\n100K/Day\\r\\nMinimum 100', 100, 2147483647, 14600, 14600, 0, 'Basic', 'Active', 912, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1449, 'Twitter Followers [5K] [MIX] [7 DAYS REFILL]', 111, 'Username Only\\r\\nMixed Quality\\r\\n7 Days AUTO Refill !\\r\\n0-1 Hour Start!\\r\\n1K -5K/Day\\r\\nMinimum 20', 20, 5000, 72000, 72000, 0, 'Basic', 'Active', 930, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1450, 'Instagram Views MAX 2K  Rp 5', 90, 'Instagram Views Rp 5', 500, 2000, 5, 5, 0, 'Basic', 'Active', 936, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1451, 'Instagram Followers Wanita [5K] 80-90% FOLLOWERS WANITA', 89, '  80-90?MALE\\\\\\\\r\\\\\\\\nNO REFILL NO REFUND\\\\\\\\r\\\\\\\\n0-2 HOUR START', 350, 5000, 5400, 5400, 0, 'Basic', 'Active', 942, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1452, 'SoundCloud Likes [1M] ', 93, ' 	Real\\r\\n0-1 Hour Start!\\r\\n1K - 10K/Day\\r\\nMinimum 20', 20, 10000000, 29500, 29500, 0, 'Basic', 'Active', 945, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1453, 'Pinterest RePins [10M] ,', 94, ' 	Real\\r\\n0-1 Hour Start!\\r\\n1K - 10K/Day\\r\\nMinimum 20', 20, 2147483647, 45200, 45200, 0, 'Basic', 'Active', 946, 5, '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(1454, ' 	Youtube - Custom Comments [ WITHOUT PROFILE PICTURE ] INSTANT', 92, ' 	- Instant Start (7/24)\\r\\n- You will receive 1 comment each 160 seconds.\\r\\n- Minimum 5 and Maximum 2.000\\r\\n- Accounts don\\\'t have profile photos.', 5, 2000, 232000, 232000, 0, 'Basic', 'Active', 952, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1455, 'Instagram - Story Views [MALE] [ Max - 30k ] INSTANT', 100, ' 	Username Only\\r\\nViews from MALE users\\r\\n0-1 Hour Start!\\r\\n50K/Day\\r\\nMinimum 20', 20, 30000, 4550, 4550, 0, 'Basic', 'Active', 953, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1456, 'Instagram - Story Views [LAST STORY ONLY] [ Max - 30k ] INSTANT', 100, '  Views On The Last Story Posted Only!\\\\r\\\\nUsername Only\\\\r\\\\n0-1 Hour Start!\\\\r\\\\nUltra Fast!\\\\r\\\\nMinimum 20', 20, 30000, 2200, 2200, 0, 'Basic', 'Active', 955, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1457, 'Instagram - Highlights Views [ Max - 20k ] INSTANT', 100, '  Get Instagram Highlights Views on ALL your HIGHLIGHTS!\\\\r\\\\nAdd Username Only!\\\\r\\\\nMin 20, Max 20k ', 20, 20000, 34400, 34400, 0, 'Basic', 'Active', 956, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1458, 'Instagram Auto Views + Impressions [10M] [EXPLORE - HOME - LOCATION - PROFILE] ', 100, 'Its good for ranking!\\\\r\\\\nMin 100\\\\r\\\\nMaximum 1 million!', 100, 1000000, 1750, 1750, 0, 'Basic', 'Active', 957, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1459, 'Instagram - Story Views [ Superfast ] INSTANT', 100, 'INSTANT START\\\\r\\\\nRELIABLE SERVICE\\\\r\\\\nFOR ALL STORY\\\\r\\\\n50K/DAY\\\\r\\\\nMIN 100, MAX 100K', 100, 100000, 250, 250, 0, 'Basic', 'Active', 958, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1460, 'Instagram Likes [10K] [USA] ', 112, 'Real USA Likes\\r\\nInstant Start!\\r\\n10K/Day\\r\\nMinimum 20', 20, 10000, 1700, 1700, 0, 'Basic', 'Active', 965, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1461, 'Instagram Likes [50K] [RUSSIA] ', 112, 'Real\\r\\nInstant Start!\\r\\n15K - 30K/Day\\r\\nMinimum 50', 50, 50000, 1100, 1100, 0, 'Basic', 'Active', 966, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1462, 'Instagram Live Video Views [10K]', 107, '  Username Only\\\\\\\\r\\\\\\\\nNo Refill / No Refund\\\\\\\\r\\\\\\\\nViews On Live Video\\\\\\\\r\\\\\\\\nFast Delivery\\\\\\\\r\\\\\\\\nMinimum 200\\\\\\\\r\\\\\\\\nIF you ask for Refund, You need to send a screenshot\\\\\\\\r\\\\\\\\nas a proof with the # of views and Time in the screenshot !', 25, 100000, 70500, 70500, 0, 'Basic', 'Active', 988, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1463, 'Instagram Live Video Views [3K] [ALWAYS WORKING] ', 107, 'IG Live Video Views\\r\\nHQ Accounts\\r\\nALWAYS WORKING SERVICE\\r\\nMin = 20\\r\\nMax = 3K', 10, 3000, 97000, 97000, 0, 'Basic', 'Active', 989, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1464, 'Instagram Likes Komentar [BACA NOTE] [2K] REAL INDONESIA', 113, 'Like dahulu komentar yang ditargetkan, isi input Target dengan username yang membuat komentar, isi input Link Post dengan link post target. ,, \\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nProses 1-10 menit ', 10, 2000, 2250, 2250, 0, 'Basic', 'Active', 990, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1465, 'Instagram Followers [40K] [NO PARTIAL] [SUPER INSTANT] ', 89, '- Quality = SUPER HIGH !\\r\\n- Start Time = SUPER INSTANT !\\r\\n- Speed = Up to 40k Per Day !\\r\\n- Refill = No Refill / Refund !\\r\\n- Min = 50 !\\r\\n- Max = 40K !\\r\\n- Specs = NO PARTIAL - ALWAYS WORKING !', 50, 40000, 9700, 9700, 0, 'Basic', 'Active', 995, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1466, 'Instagram Followers [10K] [RECOMMENDED] [SUPER INSTANT]', 89, 'SUPER INSTANT COMPLETION\\r\\nTOP SELLING\\r\\nUsername Only\\r\\nHQ\\r\\nNo Refill / No Refund\\r\\nMinimum 100', 100, 10000, 5300, 5300, 0, 'Basic', 'Active', 1001, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1467, 'Instagram Random Comments - Min 5 | Max 5k  Custom ', 105, ' 	Start 1-5 minutes\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nReal Quality\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nBest Price in Market', 5, 5000, 4500, 4500, 0, 'Basic', 'Active', 1008, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1468, 'Instagram RANDOM Female Comments [ Min : 5 | Max 1K ]', 105, 'Instagram RANDOM Female Comments [ Min : 5 | Max 1K ]', 5, 1000, 10700, 10700, 0, 'Basic', 'Active', 1011, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1469, ' Youtube - Likes [ NON DROP ] [ 100K/DAY ] [ Start 1-6hrs ]', 92, '  Real NON DROP Likes\\\\r\\\\nLife Time Guaranteed\\\\r\\\\nStart 1-6hrs.\\\\r\\\\n100k per day\\\\r\\\\nMin 100\\\\r\\\\nMax 100k', 100, 1000000, 355000, 355000, 0, 'Basic', 'Active', 1015, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1470, 'Penambah Comment Live Indonesia [MAX 700]', 107, 'PASTIKAN USERNAME SEDANG LIVE YA \\r\\n', 5, 700, 12000, 12000, 0, 'Basic', 'Active', 1020, 5, '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(1471, 'Instagram Followers [50K] [REFILL 30 DAYS ] [WORKING]', 99, '30 Days Refill\\r\\nInstant Start\\r\\nRefill Button\\r\\nCancel Button\\r\\nMin = 100\\r\\nMax = 50K Per Order = 150K Per Account !', 100, 50000, 25500, 25500, 0, 'Basic', 'Active', 1021, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1472, 'Facebook Video Views | Speed 300k - 500k ( Instant Start )', 101, '0-2h start\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n20-30K speed\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nLife time guarantee', 100, 1000000000, 2300, 2300, 0, 'Basic', 'Active', 1023, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1473, 'Instagram Views + Impressions [FROM PROFILE]', 90, 'INPUT USERNAME ', 20, 50000000, 150, 150, 0, 'Basic', 'Active', 1024, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1474, ' 	Instagram Views + Impressions [FROM HOME PAGE]', 90, ' 	Instagram Views + Impressions [FROM HOME PAGE]', 50, 10000000, 150, 150, 0, 'Basic', 'Active', 1026, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1475, ' 	Instagram Views + Impressions [FROM LOCATION]', 90, ' 	Instagram Views + Impressions [FROM LOCATION]', 50, 2147483647, 150, 150, 0, 'Basic', 'Active', 1027, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1476, 'Instagram Followers Super Fast ( Max 15k )', 89, ' 	Ultra Fast and Less Drop\\\\r\\\\nNo Refill / No Refund\\\\r\\\\n0-1 Hour Start!\\\\r\\\\nSuper Instant Delivery\\\\r\\\\nMinimum 150 ', 100, 15000, 5300, 5300, 0, 'Basic', 'Active', 1035, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1477, 'Instagram Followers [10K] [REFILL 30DAYS] [RECOMMENDED] SUPER FAST', 99, '  Exclusive Service!\\\\r\\\\nRefill (30 Days Maximum)\\\\r\\\\nSUPER INSTANT START !\\\\r\\\\nHigh Speed Delivery!\\\\r\\\\nMax = 10K\\\\r\\\\nSuper High Quality!\\\\r\\\\nRefill Button !\\\\r\\\\nMinimum 100', 100, 10000, 18100, 18100, 0, 'Basic', 'Active', 1047, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1478, 'Instagram Followers [40K] [REAL] [REFIL 30DAYS] ', 99, ' 	HQ Accounts\\r\\nRefill (30 Days Maximum) + Refill Button\\r\\nCancel Button\\r\\nInstant Start !\\r\\nHigh Speed !\\r\\nMinimum 100', 100, 40000, 28200, 28200, 0, 'Basic', 'Active', 1048, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1479, 'Instagram Views - 200K/Day Cheap Max [500K]', 114, 'Instagram Views - 200K/Day', 1000, 500000, 9, 9, 0, 'Basic', 'Active', 1054, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1480, 'Instagram Followers - [ No refill No refund ] [ Max 10K ] SUPER FAST NO PARTIAL', 89, 'JIKA OVERLOAD AKAN PARTIAL ', 100, 10000, 5000, 5000, 0, 'Basic', 'Active', 1062, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1481, 'Instagram Followers [20K] [REFILL 30DAYS]  [INSTANT]', 99, ' 	- HQ Accounts !\\r\\n- Instant Start !\\r\\n- 30 Days Refill + Refill Button !\\r\\n- Cancel Button !\\r\\n- Up to 40K Per Day !\\r\\n- Min = 100 ', 100, 20000, 23200, 23200, 0, 'Basic', 'Active', 1066, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1482, 'Youtube Likes ( Super Fast ) [ Min 10 : Max 10k ] INSTANT', 92, ' 	NO GUARANTEE EVEN IF DROP NEXT DAY', 10, 10000, 136000, 136000, 0, 'Basic', 'Active', 1067, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1483, 'Youtube Likes 200K Base [NO REFILL NO REFUND ] ', 92, '  Speed 15k-20k A day\\\\r\\\\nNO GUARANTEE EVEN IF DROP NEXT DAY', 10, 200000, 125000, 125000, 0, 'Basic', 'Active', 1068, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1484, 'Instagram Followers 2-5% Drop [ Max - 15k ] [ NO REFILL NO REFUND]', 89, '  0-2 H start { Service has 2-5% Drop as of now } ', 250, 15000, 3050, 3050, 0, 'Basic', 'Active', 1071, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1485, 'Instagram Followers Max 15 K - Instant - 1 Hour fast ', 89, 'Instagram Followers Max 15 K - Instant - 1 Hour { Recommended}', 100, 15000, 7300, 7300, 0, 'Basic', 'Active', 1072, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1486, 'Instagram Followers (Fast) (15 Days Refill ) | (MIN 300 - Max - 10k)', 99, 'Instagram Followers (Fast) (15 Days Refill ) | (MIN 300 - Max - 10k)', 1000, 10000, 23400, 23400, 0, 'Basic', 'Active', 1073, 5, '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(1487, 'Instagram Followers ASIA NEW [25K] INSTANT', 89, '  INSTANT START (0-2 Hours)\\\\\\\\r\\\\\\\\n30-40% INDIAN USERS CAMPURAN', 100, 25000, 8900, 8900, 0, 'Basic', 'Active', 1074, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1488, 'Instagram Followers 80K - INSTANT ALWAYS', 89, 'IG FOLLOWERS 80K - INSTANT ALWAYS', 100, 80000, 9150, 9150, 0, 'Basic', 'Active', 1075, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1489, 'Instagram Followers MAX 5K - INSTANT 5 MIN START ( Very Less Drop )', 89, 'Instagram Followers MAX 5K - INSTANT 5 MIN START ( Very Less Drop )', 100, 5000, 9700, 9700, 0, 'Basic', 'Active', 1076, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1490, 'Instagram Followers MAX 7K - 1 MİN START (Minimum Drop)', 89, 'INSTAGRAM FOLLOWERS MAX 7K - 1 MİN START (Minimum Drop)', 100, 7000, 16000, 16000, 0, 'Basic', 'Active', 1077, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1491, 'Instagram Followers [MAX50K] 30 DAYS REFILL INSTANT', 99, ' 	Instant start\\r\\n5 Days Auto Refill\\r\\n30 Days Refill Button\\r\\nRecommended Service', 100, 50000, 25000, 25000, 0, 'Basic', 'Active', 1078, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1492, 'Instagram Followers [Refill- 30 Days ] [MAX 40K]', 99, 'Instagram Followers (Refill- 30 Days ) Refill Button Enabled 140', 50, 40000, 25900, 25900, 0, 'Basic', 'Active', 1079, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1493, 'Instagram Followers MAX 8K [No refill Norefund] INSTANT', 89, 'INSTANT', 400, 8000, 3100, 3100, 0, 'Basic', 'Active', 1080, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1494, 'Instagram Followers [20K] [REAL] [RRFILL 30DAYS] ', 99, 'Real\\r\\nSUPER INSTANT !\\r\\nMin = 50\\r\\nMax = 20K\\r\\nSUPER FAST !\\r\\n30 Days Refill !', 50, 20000, 21500, 21500, 0, 'Basic', 'Active', 1082, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1495, 'Instagram Followers [50K] [BEST IN THE MARKET] [AUTO REFILL30DAYS]', 99, 'BEST IN THE MARKET !\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nSUPER INSTANT !\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nAUTO REFILL 5 DAYS !\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nREFILL 30 DAYS !\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nREFILL BUTTON !\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n50K Per Day Speed !\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nMin = 50\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nMax = 50k', 50, 50000, 21900, 21900, 0, 'Basic', 'Active', 1083, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1496, 'Instagram Views Real Indonesia [10K]', 90, 'REAL INDONESIA', 100, 10000, 500, 500, 0, 'Basic', 'Active', 1087, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1497, 'Instagram Followers - 20 Days Refill - Very Fast', 99, 'Refill Policy - 24-48 Hours', 100, 10000, 13000, 13000, 0, 'Basic', 'Active', 1093, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1498, ' Instagram Followers [10K] [REFILL 30DAYS] [EXCLUSIVE] ', 99, 'REFILL 30 DAYS ', 100, 10000, 15200, 15200, 0, 'Basic', 'Active', 1096, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1499, 'Instagram Follower- Max 1K - ULTRAFAST (0-6h) - 1H START', 114, '- Max 1K - ULTRA(0-6h) - 1H START', 500, 1000, 1750, 1750, 0, 'Basic', 'Active', 1098, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1500, 'Instagram Followers [30K] [12HOUR - 10K/DAYS - REFILL 21DAYS] ', 99, ' 	Quality: HQ\\r\\nStart: 1 Hour\\r\\nSpeed: 10K Per Day\\r\\nRefill: 21 Days\\r\\nMinimum: 100\\r\\nMaximum: 20000\\r\\nSpecification:\\r\\nMaximum Refill if drop is 50%\\r\\nTIDAK MENJAMIN AWET TELAH MASA DURASI REILL HABIS \\r\\nHARGA = KUALITAS', 100, 30000, 6500, 6500, 0, 'Basic', 'Active', 1100, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1501, 'Instagram Followers [Max80K]  Instant [Norefil Norefund]', 89, 'Norefill Norefund', 200, 80000, 7200, 7200, 0, 'Basic', 'Active', 1104, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1502, 'Instagram Followers NO PARTIAL MAX 60K SUPER INSTANT', 89, '0 to 5 Min Start Time\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nLess Drop\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nRecommended Service\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n50K Base | No Partial Issue', 100, 50000, 8050, 8050, 0, 'Basic', 'Active', 1105, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1503, 'PROMO !!! INSTAGRAM VIEWS GRATIS RP 0 MAX1K', 90, 'gratis', 100, 1000, 0, 0, 0, 'Basic', 'Active', 1112, 5, '2019-04-06 05:08:57', '2019-04-06 05:08:57'),
(1504, 'Instagram Followers - 10K - Instant Start ( Recommend ) S2', 89, '  Instant -3 hours start\\\\r\\\\n\\\\r\\\\nDo not raise ticket within 12 hours of placing the order.\\\\r\\\\n\\\\r\\\\nCheap service can partial sometimes- order with another service if you face same issue.', 100, 10000, 4200, 4200, 0, 'Basic', 'Active', 1120, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1505, 'Instagram Followers -  {Max 6k } {7 days refill } [ SLOW NO COMPLAINT ]', 99, 'KADANG LEBIH DARI 2-3 HARI YA PROSESNYA 7 Days refill\\\\\\\\r\\\\\\\\nRefill start time 0-24Hours\\\\\\\\r\\\\\\\\nSpeed 6k Day\\\\\\\\r\\\\\\\\nRefill Button enabled', 300, 6000, 2600, 2600, 0, 'Basic', 'Active', 1126, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1506, 'Instagram Followers { Max 10k , 10 Days refill } ', 99, '  10 Days refill\\r\\nRefill start time 0-24Hours\\r\\nSpeed 7k Day\\r\\nRefill Button enabled', 300, 10000, 3900, 3900, 0, 'Basic', 'Active', 1127, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1507, 'Instagram Followers { Max 13k , 15 Days refill }', 99, '  15 Days refill\\r\\nRefill start time 0-24Hours\\r\\nSpeed 8k Day\\r\\nRefill Button enabled', 100, 13000, 5400, 5400, 0, 'Basic', 'Active', 1128, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1508, 'Instagram Followers ( Max 80k ) Fresh Real User ( Instant Start )', 89, '  Fresh Real User ( Instant Start )\\\\\\\\r\\\\\\\\nNo Refill No refund\\\\\\\\r\\\\\\\\nHighest base', 100, 80000, 10500, 10500, 0, 'Basic', 'Active', 1129, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1509, 'Instagram TV LIKE INDONESIA [ BACA NOTE ] ', 104, 'https://www.instagram.com/tv/BpYNP8SA0G2/ PASTIKAN URL [tv] diganti jdi [p] contoh https://www.instagram.com/p/BpYNP8SA0G2/', 100, 700, 1600, 1600, 0, 'Basic', 'Active', 1131, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1510, 'Instagram TV Views INDONESIA [ BACA NOTE ] ', 104, 'https://www.instagram.com/tv/BpYNP8SA0G2/ PASTIKAN URL [tv] diganti jdi [p] contoh https://www.instagram.com/p/BpYNP8SA0G2/', 10, 10000, 1550, 1550, 0, 'Basic', 'Active', 1132, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1511, 'Instagram TV KOMEN INDONESIA [BACA NOTE]', 104, 'https://www.instagram.com/tv/BpYNP8SA0G2/ PASTIKAN URL [tv] diganti jdi [p] contoh https://www.instagram.com/p/BpYNP8SA0G2/', 5, 1000, 9200, 9200, 0, 'Basic', 'Active', 1133, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1512, 'Instagram Likes [70K] [SUPER FAST] [REAL] ', 95, 'Best Service In The Market\\r\\nReal\\r\\nInstant Start!\\r\\nVERY FAST !\\r\\nMinimum 100', 100, 70000, 3400, 3400, 0, 'Basic', 'Active', 1139, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1513, 'Instagram Likes [5K] [NATURAL PATTERN] ', 95, '  IG Likes Real Accounts\\\\r\\\\nInstant Start\\\\r\\\\n5k Can Take up to 60 Minutes to Complete\\\\r\\\\nMin = 20', 20, 5000, 1200, 1200, 0, 'Basic', 'Active', 1141, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1514, 'Instagram Followers [50K] [REAL] SLOW PROSES BUT LESS DROP !!', 89, 'BACA NTE SEBELUM ORDER \\r\\nNO COMPLAINT \\r\\nJIAKA ORDER SUBMIT BESAR PROSES BISA MENAJADI LEGBIH DARI 4 HARI !!!\\r\\nUsername Only\\r\\nSOMETIMES SLOW but LESS Drops !\\r\\nNo Refill / No Refund\\r\\n0-1 Hour Start!\\r\\n500 to 2K Per Day Speed !\\r\\nMinimum 100', 100, 50000, 6200, 6200, 0, 'Basic', 'Active', 1147, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1515, 'Instagram Followers [45K] [NO PARTIAL] [SUPER INSTANT] ', 89, '  - Quality = SUPER HIGH !\\\\\\\\r\\\\\\\\n- Start Time = SUPER INSTANT !\\\\\\\\r\\\\\\\\n- Speed = Up to 45k Per Day !\\\\\\\\r\\\\\\\\n- Refill = No Refill / Refund !\\\\\\\\r\\\\\\\\n- Min = 100 !\\\\\\\\r\\\\\\\\n- Max = 45K !\\\\\\\\r\\\\\\\\n- Specs = NO PARTIAL - ALWAYS WORKING !', 100, 45000, 6900, 6900, 0, 'Basic', 'Active', 1148, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1516, 'Instagram Followers [10K] [REAL] [SUPER SPEED]', 89, '  No Refill / No Refund\\r\\nApprox. 10% Drop bahkan lebih!\\r\\n0-1 Hour Start!\\r\\nSuper Instant Delivery\\r\\nMinimum 100', 100, 10000, 8900, 8900, 0, 'Basic', 'Active', 1151, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1517, 'Instagram - Followers ~ Max 20k - No refill', 89, '~ High Quality\\r\\n~ No Refill\\r\\n~ Max 20k\\r\\n~ Instant to 6 hrs start\\r\\nGuarantee: NO Guarantee\\r\\nRefund: No refund ', 500, 20000, 2850, 2850, 0, 'Basic', 'Active', 1166, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1518, 'Instagram Real Followers (0-6H) Max 10K- 70-90% are real users', 89, 'No refill no refunf', 100, 10000, 2500, 2500, 0, 'Basic', 'Active', 1167, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1519, 'BEST- Instagram Likes - [ ULTRAFAST ] [ Max - 5k ] [ Start 10 sec - 5mins ]', 95, 'ULTRAFAST\\\\\\\\r\\\\\\\\nMIN 20\\\\\\\\r\\\\\\\\nMAX 5K', 20, 5000, 730, 730, 0, 'Basic', 'Active', 1171, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1520, 'Tiktok - Likes [ HQ ] [ Min 100, Max 1000 ] 1-6HRS', 115, '  - MINIMUM 100\\\\\\\\r\\\\\\\\n- MAXIMUM 1,000\\\\\\\\r\\\\\\\\n- START TIME - 1-6 HOURS\\\\\\\\r\\\\\\\\n- SPEED - 1,000/day\\\\\\\\r\\\\\\\\n- LIFE TIME GUARANTEE\\\\\\\\r\\\\\\\\n- NON DROP', 100, 1000, 187000, 187000, 0, 'Basic', 'Active', 1178, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1521, '  Tiktok - Likes [ HQ ] [ Min 5k, Max 100k ] 1-6HRS', 115, '  - MINIMUM 100\\\\r\\\\n- MAXIMUM 1,000\\\\r\\\\n- START TIME - 1-6 HOURS\\\\r\\\\n- SPEED - 50,000/day\\\\r\\\\n- LIFE TIME GUARANTEE\\\\r\\\\n- NON DROP', 5000, 10000, 120000, 120000, 0, 'Basic', 'Active', 1180, 5, '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(1522, 'Instagram Likes IK [10K] INSTANT', 95, 'INTAST', 100, 10000, 2700, 2700, 0, 'Basic', 'Active', 1186, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1523, 'Instagram Likes IK 2 ( Super instant ) 4K', 95, 'INSTN', 100, 4000, 2850, 2850, 0, 'Basic', 'Active', 1187, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59');
INSERT INTO `services` (`id`, `name`, `category_id`, `note`, `min`, `max`, `price`, `price_oper`, `keuntungan`, `type`, `status`, `pid`, `provider_id`, `created_at`, `updated_at`) VALUES
(1524, 'Instagram Likes IK 3 SUPER FAST [10K] REKOMENDASI', 95, 'INSTANT', 50, 10000, 1850, 1850, 0, 'Basic', 'Active', 1188, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1525, ' SUPER INSTANT Instagram Likes [9K] [INSTANT] [MIN 100]', 95, 'instnt', 20, 9000, 3500, 3500, 0, 'Basic', 'Active', 1190, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1526, 'Instagram Likes [40K] [HQ - Super FAST]', 95, 'Instagram Likes [40K] [HQ - Super FAST]', 20, 40000, 2650, 2650, 0, 'Basic', 'Active', 1192, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1527, 'Instagram Likes - [ IK 4 ] [ Max 35k ] INSTANT ', 95, 'INSTANT', 25, 35000, 2500, 2500, 0, 'Basic', 'Active', 1193, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1528, 'Instagram Likes - [ IK 5 ] [ Max 50k ] INSTANT (Recommended )', 95, 'INSTANT ', 25, 50000, 2100, 2100, 0, 'Basic', 'Active', 1194, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1529, 'Instagram Likes ( Min 20 - Max 12k ) Super Fast', 95, 'Instagram Likes ( Min 20 - Max 12k ) Super Fast', 20, 12000, 1300, 1300, 0, 'Basic', 'Active', 1195, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1530, 'Instagram Likes - [ IK 6 ] [ Superfast ] [ Max -7k ] INSTANT', 95, 'INSTSHT ', 50, 7000, 740, 740, 0, 'Basic', 'Active', 1196, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1531, 'Instagram Likes ( USA)', 112, 'USA', 50, 15000, 5200, 5200, 0, 'Basic', 'Active', 1197, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1532, 'Instagram Likes UK [Max 15k] [Instant', 112, 'Instagram Likes UK [Max 15k] [Instant', 20, 15000, 1450, 1450, 0, 'Basic', 'Active', 1198, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1533, 'Brazilian Instagram REAL Likes- Instant Max 15K', 112, 'Brazilian Instagram REAL Likes- Instant Max 15K', 50, 15000, 2000, 2000, 0, 'Basic', 'Active', 1200, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1534, 'Instagram Likes [50K] [ASIA - 1H ]', 112, 'Quality: Asia\\\\r\\\\nStart Time: 1 Hour\\\\r\\\\nSpeed per Day: 10k\\\\r\\\\nMin/Max: 50/50,000\\\\r\\\\nRefill Available: 30 days', 50, 50000, 5150, 5150, 0, 'Basic', 'Active', 1201, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1535, '  Instagram Likes [5K] [CHINA - 1H ]', 112, '  Quality: China\\\\r\\\\nStart Time: 1 Hour\\\\r\\\\nSpeed per Day: 5k\\\\r\\\\nMin/Max: 20/5,000\\\\r\\\\nRefill Available: None', 20, 5000, 1400, 1400, 0, 'Basic', 'Active', 1202, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1536, '  Instagram Likes [3K] [KOREA - 6H]', 112, '  Quality: Korea\\\\r\\\\nStart Time: 6 Hours\\\\r\\\\nSpeed per Day: 3k\\\\r\\\\nMin/Max: 20/3,000', 20, 3000, 5200, 5200, 0, 'Basic', 'Active', 1203, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1537, 'Instagram Likes [5K] [THAILAND - 1H]', 112, 'Quality: Thai\\r\\nStart Time: 1 Hour\\r\\nSpeed per Day: 5k\\r\\nMin/Max: 20/5,000', 20, 5000, 2200, 2200, 0, 'Basic', 'Active', 1204, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1538, 'Instagram Likes [5K] [TAIWAN - 1H]', 112, '  Instagram Likes [5K] [TAIWAN - 1H', 20, 5000, 3250, 3250, 0, 'Basic', 'Active', 1205, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1539, 'Instagram Likes [3K] [VIETNAM - 1H ]', 112, '  Quality: Vietnamese\\r\\nStart Time: 1 Hour\\r\\nSpeed per Day: 3k\\r\\nMin/Max: 20/3,000', 20, 3000, 2200, 2200, 0, 'Basic', 'Active', 1206, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1540, 'Instagram Followers 12K - 1 Mint Start - No Refill 5%-15% Drop [Highly Recommended]', 89, 'SUPER FAST DROP ITU RAMDOM KADANG DALAM SEBUAH KASUS DROPNYA CEPET DAN LAYANAN INI JIKA DROP TIDAK ADA REFUND !', 100, 12000, 6500, 6500, 0, 'Basic', 'Active', 1207, 5, '2019-04-06 05:08:59', '2019-04-06 05:08:59'),
(1541, 'Instagram - Likes ~ 5 Likes Per Minute ~ INSTANT', 116, 'Instagram - Likes ~ 5 Likes Per Minute ~ INSTANT', 50, 50000, 1400, 1400, 0, 'Basic', 'Active', 1208, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1542, 'Instagram - Likes ~ 10 Likes Per Minute ~ INSTANT ', 116, 'Instagram - Likes ~ 10 Likes Per Minute ~ INSTANT  ', 50, 50000, 1400, 1400, 0, 'Basic', 'Active', 1209, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1543, 'Instagram - Likes ~ 20 Likes Per Minute ~ INSTANT', 116, 'Instagram - Likes ~ 20 Likes Per Minute ~ INSTANT', 50, 50000, 1400, 1400, 0, 'Basic', 'Active', 1210, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1544, '  Instagram - Likes ~ 50 Likes Per Minute ~ INSTANT', 116, '  Instagram - Likes ~ 50 Likes Per Minute ~ INSTANT', 50, 50000, 1400, 1400, 0, 'Basic', 'Active', 1211, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1545, '  Instagram - Likes ~ 75 Likes Per Minute ~ INSTANT', 116, '  Instagram - Likes ~ 75 Likes Per Minute ~ INSTANT', 50, 50000, 1400, 1400, 0, 'Basic', 'Active', 1212, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1546, 'Instagram - Likes ~ 100 Likes Per Minute ~ INSTANT', 116, 'Instagram - Likes ~ 100 Likes Per Minute ~ INSTANT', 50, 5000, 1400, 1400, 0, 'Basic', 'Active', 1213, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1547, 'Instagram Followers 1 Per minute{Auto Refill-20Days}', 116, '  20 days Refill\\r\\nCancel and Refill Button Enabled.', 100, 100000, 49500, 49500, 0, 'Basic', 'Active', 1214, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1548, 'Instagram Followers 2 Per minute{Auto Refill-20Days}', 116, 'Instagram Followers 2 Per minute{Auto Refill-20Days}', 10, 100000, 49500, 49500, 0, 'Basic', 'Active', 1215, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1549, 'Instagram Followers 3 Per minute{Auto Refill-20Days}', 116, 'Instagram Followers 3 Per minute{Auto Refill-20Days}', 10, 100000, 49500, 49500, 0, 'Basic', 'Active', 1216, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1550, '  Instagram Followers 4 Per minute{Auto Refill-20Days}', 116, '  Instagram Followers 4 Per minute{Auto Refill-20Days}', 10, 100000, 49500, 49500, 0, 'Basic', 'Active', 1217, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1551, '  Instagram Followers 5 Per minute{Auto Refill-20Days}', 116, '  Instagram Followers 5 Per minute{Auto Refill-20Days}', 10, 100000, 49500, 49500, 0, 'Basic', 'Active', 1218, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1552, 'Instagram Indian Followers 50-80% - No refill', 117, 'Instagram Indian Followers 50-80% - No refill', 100, 15000, 6400, 6400, 0, 'Basic', 'Active', 1219, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1553, 'Instagram Followers Indian Max 10K { Start 2H - No refill }', 117, 'Instagram Followers Indian Max 10K { Start 2H - No refill }', 200, 10000, 17000, 17000, 0, 'Basic', 'Active', 1220, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1554, 'Instagram Followers [15K] [BRAZIL] [REFILL20 DAYS] ', 117, '  IG BRAZIL Real Accounts\\r\\nAuto Refill (5 Days Maximum)\\r\\nRefill 20 Days + Refill Button\\r\\n0-1 Hour Start!\\r\\nUp to 15K/Day\\r\\nMinimum 25\\r\\nMaximum 15k Per Order !', 25, 15000, 38100, 38100, 0, 'Basic', 'Active', 1221, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1555, 'Instagram Followers [20K] [BRAZIL] [BEST IN THE MARKET #1] [REFILL 20DAYS]', 117, 'IG BRAZIL Real Accounts\\r\\nRefill 20 Days + Refill Button\\r\\n0-1 Hour Start!\\r\\nUp to 10K/Day\\r\\nMinimum 100\\r\\nMaximum 10k Per Order !', 100, 20000, 49200, 49200, 0, 'Basic', 'Active', 1222, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1556, 'Instagram Followers [10K] [TURKISH] ', 117, 'Instagram Followers [10K] [TURKISH] ', 200, 10000, 8550, 8550, 0, 'Basic', 'Active', 1223, 5, '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(1557, 'Instagram Followers [35K] [RUSSIAN] ', 117, '  Full Link\\r\\nNo Refill / No Refund\\r\\n0-1 Hour Start!\\r\\n3K - 5K/Day\\r\\nMinimum 100', 100, 35000, 17000, 17000, 0, 'Basic', 'Active', 1224, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1558, 'Instagram Followers [3K] [ARAB]  [NONDROP]', 117, 'Username Only\\r\\nReal\\r\\nمتابعين خليجيين\\r\\n0-6 Hours Start!\\r\\nNon Drop\\r\\n3K/Day\\r\\nMinimum 100\\r\\nMaximum 3K', 100, 3000, 30500, 30500, 0, 'Basic', 'Active', 1225, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1559, 'Instagram Followers [50K] [PERSIAN] [REFILL 30 DAYS]', 117, 'Real Iran Persian Account\\r\\n1 to 4K Per Day Speed!\\r\\nWorks on Private Account !\\r\\n30 Days Refill Guaranteed !\\r\\nNo Refill If Your Old Followers Dropped !\\r\\nMin: 100\\r\\nMax: 50K\\r\\nMax Per Order: 20K\\r\\n1-6 Hours to start', 100, 50000, 30500, 30500, 0, 'Basic', 'Active', 1226, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1560, 'Instagram Followers [25K] [SOUTH AMERICAN] [REFILL 20DAYS] [EXCLUSIVE]', 117, '  IG South Americans Real Accounts\\r\\nAuto Refill (5 Days Maximum)\\r\\nRefill 20 Days + Refill Button\\r\\n0-1 Hour Start!\\r\\nUp to 15K/Day\\r\\nMinimum 25\\r\\nMaximum 15k Per Order !', 25, 25000, 46650, 46650, 0, 'Basic', 'Active', 1227, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1561, 'Instagram Views [55K] [USA] ', 90, 'Real\\r\\nInstant Start!\\r\\n20K - 30K/Day\\r\\nMinimum 100', 100, 55000, 3500, 3500, 0, 'Basic', 'Active', 1229, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1562, 'Instagram Views + Impressions [50K] [USA] ', 90, 'Instagram Views + Impressions [50K] [USA] ', 100, 50000, 4300, 4300, 0, 'Basic', 'Active', 1235, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1563, 'Instagram FEMALE Followers [10K] ', 89, 'FEMALE IG Followers\\\\r\\\\nReal Accs\\\\r\\\\nMin = 500\\\\r\\\\nMax = 10K', 500, 10000, 5600, 5600, 0, 'Basic', 'Active', 1236, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1564, 'Instagram Followers [20K] [LESS PARTIAL] ', 89, 'Username Only\\\\r\\\\nLESS PARTIAL PROBLEM\\\\r\\\\nMinimum 500', 500, 20000, 7850, 7850, 0, 'Basic', 'Active', 1237, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1565, 'Instagram Followers [45K] [REAL] [INSTANT]', 89, '  No Refill / No Refund\\\\\\\\r\\\\\\\\n0-1 Hour Start!\\\\\\\\r\\\\\\\\nSuper Instant Delivery\\\\\\\\r\\\\\\\\nMinimum 250\\\\\\\\r\\\\\\\\nMaximum = 10k Per Order - 25K Per Account !', 250, 10000, 4500, 4500, 0, 'Basic', 'Active', 1238, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1566, 'Website Traffic Human - Max 100k', 106, 'Website Traffic Human - Max 100k', 100, 100000, 5200, 5200, 0, 'Basic', 'Active', 1241, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1567, 'Instagram Auto Views [500K] ', 118, 'Instagram Auto Views [500K] ', 100, 1000000, 150, 150, 0, 'Basic', 'Active', 1245, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1568, 'Instagram Auto Likes ( Max 15k )', 98, 'Instagram Auto Likes ( Max 15k )', 50, 1500, 500, 500, 0, 'Basic', 'Active', 1247, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1569, 'Instagram {Auto} Likes MAX 100K', 98, 'INPUT USERNAME ', 100, 1000000, 345, 345, 0, 'Basic', 'Active', 1248, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1570, 'Instagram Reach [Free Impression - A Lot of] INDONESIA', 100, '  Instagram Reach [ FREE Impression - A Lot of]', 100, 4000, 1800, 1800, 0, 'Basic', 'Active', 1251, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1571, 'Instagram Vote (Yes / Agree [Green Color] [INDONESIA]', 100, 'Instagram Vote (Yes / Agree [Green Color] [INDONESIA]', 5, 5000, 3300, 3300, 0, 'Basic', 'Active', 1252, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1572, 'Instagram Vote [No / Disagree/ Red Color] [INDONESIA]', 100, 'INPUT USERNAME ', 5, 5000, 3300, 3300, 0, 'Basic', 'Active', 1253, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1573, 'Instagram Vote [Random Votes] [INDONESIA] ', 100, 'INPUT USERNAME ', 5, 5000, 3300, 3300, 0, 'Basic', 'Active', 1254, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1574, '  Instagram Story View [Last Story] [MAX 5K] [INDONESIA]', 100, 'LAST STORY ', 10, 5000, 2700, 2700, 0, 'Basic', 'Active', 1255, 5, '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(1575, 'Instagram Story View [Full Story - All Story] [5K] [INDONESIA] ', 100, 'FULL STORY ', 10, 5000, 7500, 7500, 0, 'Basic', 'Active', 1256, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1576, '  Instagram Video Views [INDONESIA] [MAX4K]', 90, 'LINK YA ', 10, 4000, 7500, 7500, 0, 'Basic', 'Active', 1257, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1577, 'Instagram Likes + Video Views [INDONESIA] [VIDIO LINK] [MAX4K]', 90, 'UNTUK VIDIO ', 10, 4000, 12000, 12000, 0, 'Basic', 'Active', 1258, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1578, 'Linkedin Followers [5K]', 119, 'Full Link\\\\r\\\\nReal\\\\r\\\\n0-12 Hours Start!\\\\r\\\\n300/Day\\\\r\\\\nMinimum 100', 100, 5000, 152000, 152000, 0, 'Basic', 'Active', 1259, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1579, 'Instagram Likes [5K] [REAL] FAST Speed', 95, 'FAST Speed', 500, 5000, 520, 520, 0, 'Basic', 'Active', 1261, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1580, 'Facebook Post Shares [100K] ', 120, '  Lifetime Guarantee\\r\\nWorks with Pages and Profiles\\r\\n0-12 Hour Start!\\r\\nUp to 50K /Day Speed\\r\\nMinimum 100', 100, 100000, 17800, 17800, 0, 'Basic', 'Active', 1265, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1581, 'Telegram Channnel Members [100K] ', 96, '  For Channels !\\r\\nNo Refill / Refund !\\r\\nUp to 5K Per Day !\\r\\nUp to 12 Hours Start!\\r\\nMin = 100', 100, 100000, 58900, 58900, 0, 'Basic', 'Active', 1266, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1582, 'Twitter Followers [MAX2K] NOREFILL NO REFUND ', 111, '  No refill - No refund\\\\r\\\\n\\\\r\\\\nInstant -30 minutes start', 100, 2000, 40000, 40000, 0, 'Basic', 'Active', 1269, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1583, 'Tiktok - Followers [ HQ ] [ Min 10, Max 100 ] INSTANT', 115, '  - MINIMUM 10\\\\r\\\\n- MAXIMUM 100\\\\r\\\\n- START TIME - INSTANT\\\\r\\\\n- SPEED - 1,000/day\\\\r\\\\n- LIFE TIME GUARANTEE\\\\r\\\\n- NON DROP', 10, 100, 199000, 199000, 0, 'Basic', 'Active', 1271, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1584, 'Tiktok - Followers [ HQ ] [ Min 100, Max 1k ] INSTANT', 115, '  - MINIMUM 10\\r\\n- MAXIMUM 100\\r\\n- START TIME - INSTANT\\r\\n- SPEED - 1000/day\\r\\n- LIFE TIME GUARANTEE\\r\\n- NON DROP', 100, 1000, 167000, 167000, 0, 'Basic', 'Active', 1272, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1585, 'Tiktok - Followers [ HQ ] [ Min 1k, Max 5k ] INSTANT', 115, '- MINIMUM 1000\\\\r\\\\n- MAXIMUM 5,000\\\\r\\\\n- START TIME - INSTANT\\\\r\\\\n- SPEED - 5,000/day\\\\r\\\\n- LIFE TIME GUARANTEE\\\\r\\\\n- NON DROP', 1000, 5000, 133000, 133000, 0, 'Basic', 'Active', 1273, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1586, 'Tiktok - Followers [ HQ ] [ Min 5k, Max 100k ] INSTANT', 115, '  - MINIMUM 5000\\\\r\\\\n- MAXIMUM 100,000\\\\r\\\\n- START TIME - INSTANT\\\\r\\\\n- SPEED - 20,000/day\\\\r\\\\n- LIFE TIME GUARANTEE\\\\r\\\\n- NON DROP', 5000, 100000, 116000, 116000, 0, 'Basic', 'Active', 1274, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1587, 'Instagram Followers [30K] [REAL] [INSTANT]', 89, 'No Refill / No Refund\\r\\n0-1 Hour Start!\\r\\nSuper Instant Delivery\\r\\nMinimum 100\\r\\nMaximum = 5k Per Order = 30K Per Account !', 100, 5000, 3400, 3400, 0, 'Basic', 'Active', 1278, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1588, 'Instagram Followers MAX 13K - Always Fast', 89, '  No refill/ No refund\\\\r\\\\n\\\\r\\\\nSpeed - 10k a day\\\\r\\\\n\\\\r\\\\nInstant - 1hour start - no partial issues', 100, 13000, 4250, 4250, 0, 'Basic', 'Active', 1279, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1589, 'Instagram Followers - [ Max - 100k ] [ FASTEST ] [ NO REFILL ] INSTANT', 89, '  High Quality\\\\r\\\\nStart time - ALMOST INSTANT\\\\r\\\\nNo Refill/ No refund\\\\r\\\\nSpeed 20k-50k/day', 500, 100000, 6000, 6000, 0, 'Basic', 'Active', 1289, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1590, 'Tiktok - Followers [ No refill ] [ 100k/day ] [ Max - 100k ] SUPER INSTANT', 115, '  SUPER INSTANT\\r\\nNO REFILL/ NO REFUND\\r\\n100k/day\\r\\nMin 100, Max 100k', 100, 100000, 100100, 100100, 0, 'Basic', 'Active', 1294, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1591, 'Instagram Followers Indonesia NEW 2 [6K] INSTANT  !!! AUTO LUCKY REFILL 30 DAY', 121, 'INATANT', 10, 6000, 9000, 9000, 0, 'Basic', 'Active', 1307, 5, '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(1592, 'Instagram Followers Indonesia Laki-Laki NEW 2 [2K] [INSTANT]', 121, 'INSTANT', 50, 1500, 9000, 9000, 0, 'Basic', 'Active', 1310, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1593, 'Instagram Followers Indonesia Perempuan NEW 2 [1.5K] [INSTANT]', 121, 'INSTAN', 50, 1500, 9000, 9000, 0, 'Basic', 'Active', 1312, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1594, 'Instagram Followers Indonesia IRV Aktip [12K] [BONUS++] [INSTAN] NEW AUTO LUCKY REFILL 30 DAY', 121, 'PERINPUT 12K', 50, 4000, 8500, 8500, 0, 'Basic', 'Active', 1344, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1595, 'Instagram Followers Indonesia Hitungan Detik [6K] NEW', 121, 'INSTANT', 50, 4000, 9000, 9000, 0, 'Basic', 'Active', 1345, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1596, 'Youtube Live Stream Views [MONETIZABLE] [REAL] ', 122, '  • Avg Concurrent 400-1000 will stay for 1-2 hours\\r\\n• MONETIZABLE\\r\\n• 100% Real Human YouTube Viewers!\\r\\n• INSTANT START\\r\\n• Windows Desktop Watch Page Views\\r\\n• 100% Unique Traffic\\r\\n• NON-DROP Lifetime Guarantee\\r\\n• Possible User Engagements\\r\\n• Social Referrer (Twitter)\\r\\n• World-Wide Views Added in a NON-STOP Natural Pattern\\r\\n• Incremental Speed Based on Order Size\\r\\n• Must be Unrestricted & Open for ALL countries\\r\\n• Over-Delivery Guaranteed', 5000, 5000, 30750, 30750, 0, 'Basic', 'Active', 1346, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1597, 'Youtube Premiere Waiting Views [+ Likes] [REAL] ', 122, ' • Avg Concurrent Waiting Viewers 2000-5000+* will stay for 1 hour+\\\\r\\\\n• INSTANT START\\\\r\\\\n• 100% Real Human YouTube Viewers!\\\\r\\\\n• User Interactions Included\\\\r\\\\n• include LIKES\\\\r\\\\n• Windows Desktop Watch Page\\\\r\\\\n• 100% Unique Traffic\\\\r\\\\n• Social Referrers\\\\r\\\\n• World-Wide Viewers\\\\r\\\\n• Must be Unrestricted & Open for ALL countries\\\\r\\\\n• Over-Delivery Guaranteed\\\\r\\\\n• When Video Is Live, Waiting Views will become Live Views', 5000, 5000, 20200, 20200, 0, 'Basic', 'Active', 1347, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1598, 'Instagram Followers Indonesia DB ++ [6K] NEW AUTO LUCKY REFILL 30 DAYS', 121, 'INSTANT PER INPUT 4K DAN AKAN MENINGKAT ', 100, 4000, 8800, 8800, 0, 'Basic', 'Active', 1349, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1599, 'Instagram Followwers No refill Norefund - SPECIAL IRV - [10K]', 89, '  No Refill - Service Instant -1 Hour', 200, 10000, 3900, 3900, 0, 'Basic', 'Active', 1354, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1600, 'Instagram Followers [Auto Refill Max 200K] 30 DAYS REFILL', 99, 'Refill and cancel button available\\r\\n30 Days refill\\r\\nSpeed 50k/Day', 5, 200000, 22750, 22750, 0, 'Basic', 'Active', 1355, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1601, 'Youtube - Views [ 10k -30K/ day ] [ Life Time Guaranteed ] INSTANT ', 123, 'Youtube - Views [ 10k -30K/ day ] [ Life Time Guaranteed ] INSTANT ????', 100, 1000000, 20750, 20750, 0, 'Basic', 'Active', 1358, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1602, 'Youtube Subscribers- MAX 1k- 30 Days Refill', 124, '1000  30 days refill\\\\\\\\r\\\\\\\\nspeed 50-100 Per day\\\\\\\\r\\\\\\\\n\\\\\\\\r\\\\\\\\nStarts instant', 100, 1000000, 227500, 227500, 0, 'Basic', 'Active', 1359, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1603, 'Facebook Video Views (10K-20K) Instant Start 2', 101, 'Facebook Video Views (10K-20K) Instant Start', 100, 100000, 2150, 2150, 0, 'Basic', 'Active', 1360, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1604, 'Twitter Followers ( Min 25 | Max 2500 ) ( No Refill )', 111, 'Twitter Followers ( Min 25 | Max 2500 ) ( No Refill )', 25, 2500, 51600, 51600, 0, 'Basic', 'Active', 1361, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1605, 'Instagram Follower Service ( Min 500 | MAX 10K ) ( Instant Start)', 89, '  Starts - In seconds\\\\\\\\r\\\\\\\\n\\\\\\\\r\\\\\\\\nSpeed 10k in 15-20 minutes', 500, 10000, 5700, 5700, 0, 'Basic', 'Active', 1362, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1606, 'Instagram Follower Service 2 (MAX 200K) Speed 10-20k/Day', 89, '  Start 1 hour\\\\\\\\r\\\\\\\\nSpeed 10-20-30k/Day\\\\\\\\r\\\\\\\\n\\\\\\\\r\\\\\\\\nNo refill No refund', 500, 200000, 4500, 4500, 0, 'Basic', 'Active', 1363, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1607, 'Instagram Likes Indonesia [3k] NEW DB ', 113, 'INSTANT !!', 50, 3000, 3000, 3000, 0, 'Basic', 'Active', 1365, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1608, 'Instagram Likes Indonesia [4K] [NEW DB ]', 113, 'INSTANT SERVER BERSIFAT SMENTARA', 50, 4000, 3200, 3200, 0, 'Basic', 'Active', 1366, 5, '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(1609, 'Instagram Followers [200K] [EXCLUSIVE] [WW REAL] [AUTO REFILL30 DAYS] ', 99, '- 30 Days Refill\\\\r\\\\n- Up to 6 Hours Start !\\\\r\\\\n- 10K - 20K / Day Speed !\\\\r\\\\n- Min = 100\\\\r\\\\n- Max = 200K Per Order\\\\r\\\\n- Refill button enabled!', 100, 200000, 18100, 18100, 0, 'Basic', 'Active', 1376, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1610, 'Instagram Followers - [ Max - 5k ] [ Username Only ] [ No refill, No Partial ] SUPER INSTANT', 89, '  INSTANT START\\r\\nUSERNAME ONLY\\r\\nFASTEST SERVICE', 100, 5000, 5000, 5000, 0, 'Basic', 'Active', 1377, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1611, ' Instagram Followers - [ Max - 150k ] [ NO PARTIAL ] [ NO REFILL ] SUPER INSTANT NAIK', 89, '  SUPER INSTANT\\r\\nHIGH QUALITY\\r\\nNO REFILL\\r\\nSPEED - UPTO 20k/DAY\\r\\nMIN - 50\\r\\nMAX - 150k', 50, 150000, 16600, 16600, 0, 'Basic', 'Active', 1378, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1612, 'Instagram Likes New SUPER FAST [1K] INSTANT NO PARTIAL', 113, 'SUPER FAST', 50, 1000, 1500, 1500, 0, 'Basic', 'Active', 1379, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1613, 'Instagram Followers [150K] [REFILL 30 DAYS ] ', 99, 'REFILL 30 DAYS \\r\\n  30 days refill\\r\\n50k/Day\\r\\nCancel - refill button enabled', 100, 150000, 21400, 21400, 0, 'Basic', 'Active', 1381, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1614, 'Instagram Followers [150K] [BEST IN THE MARKET #1] [REAL] [AUTO REFILL 30]DAYS', 99, 'BEST IN THE MARKET !\\\\r\\\\nSUPER INSTANT !\\\\r\\\\nAUTO REFILL 5 DAYS !\\\\r\\\\nREFILL 30 DAYS !\\\\r\\\\nREFILL BUTTON !\\\\r\\\\n70K Per Day Speed !\\\\r\\\\nMin = 50\\\\r\\\\nMax = 100k', 50, 100000, 21200, 21200, 0, 'Basic', 'Active', 1386, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1615, 'Youtube - Views [ 20k-30k/day ] [ No Refill ] INSTANT', 123, '  80-100% retention\\\\r\\\\nInstant Start\\\\r\\\\nNo refill / No refund', 500, 10000000, 11100, 11100, 0, 'Basic', 'Active', 1400, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1616, 'Instagram Followers [100K] [NO PARTIAL] [INSTANT] ', 89, '\\\\r\\\\n- Quality = HIGH !\\\\r\\\\n- Start Time = Instant to 1 Hour !\\\\r\\\\n- Speed = 30K+ / Day !\\\\r\\\\n- Refill = No Refill / Refund !\\\\r\\\\n- Min = 5 !\\\\r\\\\n- Max = 100K !\\\\r\\\\n- Specs = NO PARTIAL ! - 20% Drop Rate\\\\r\\\\n', 5, 100000, 13750, 13750, 0, 'Basic', 'Active', 1402, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1617, 'Instagram Followers [100K] [AUTO REFILL 30DAYS] ', 99, 'INSTANT TO 1 HOUR!\\\\r\\\\nAUTO REFILL 5 DAYS !\\\\r\\\\nREFILL 30 DAYS !\\\\r\\\\nREFILL BUTTON !\\\\r\\\\n30K+ Per Day Speed !\\\\r\\\\nMin = 5\\\\r\\\\nMax = 100K', 5, 100000, 24000, 24000, 0, 'Basic', 'Active', 1403, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1618, 'Instagram Followers [40K] [REFILL 30DAYS] [RUSSIAN] INPUT LINK', 99, '\\\\r\\\\nFull Link\\\\r\\\\nRefill 30 Days\\\\r\\\\n0-3 Hours Start!\\\\r\\\\n2K - 3K/Day\\\\r\\\\nMinimum 100\\\\r\\\\n', 100, 40000, 17000, 17000, 0, 'Basic', 'Active', 1404, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1619, 'Instagram Followers - Instant [300K] [30 days Refill] [Recommended]', 99, 'Auto Refill\\\\\\\\r\\\\\\\\nInstant Start Refill', 100, 300000, 21000, 21000, 0, 'Basic', 'Active', 1407, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1620, 'Tik Tok Likes - Video link only- MAX 50K - NO REFILL NO REFUND', 115, 'No refill / NO refund', 50, 50000, 79000, 79000, 0, 'Basic', 'Active', 1410, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1621, 'TIK TOK FOLLOWERS - MIN 100 - MAX 100K - 30 days refill', 115, '  Add username', 10, 100000, 79000, 79000, 0, 'Basic', 'Active', 1411, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1622, '  Facebook - Post/Photo Likes [ HQ ] [ Life Time Guaranteed ] [ Max - 5k ] 0-12HRS', 120, '  0-12 hour start time\\r\\n5000/day speed\\r\\nLifetime non drop guarantee\\r\\n100 Minimum order\\r\\n5,000 Maximum order', 100, 5000, 83000, 83000, 0, 'Basic', 'Active', 1412, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1623, '  Facebook - Followers [ Max - 20k ] [ 1k-2k/day ] [ 30 Days Refill ] 0-12HRS', 125, '  For Facebook Profiles\\r\\nReal\\r\\n30 Days refill\\r\\n0-12hrs Start\\r\\nMinimum 100', 100, 5000, 22300, 22300, 0, 'Basic', 'Active', 1413, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1624, '  Facebook - Friends Request On Personal Profile[ Start - 1-6hrs ]', 125, '  0-12hrs start time\\r\\n1000-2000/day speed\\r\\nHQ Quality', 100, 5000, 31000, 31000, 0, 'Basic', 'Active', 1414, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1625, 'Tiktok - Followers [ Life Time Guaranteed ] [ Max - 150k ] INSTANT', 115, 'Tiktok - Followers [ Life Time Guaranteed ] [ Max - 150k ] INSTANT', 10, 200000, 66000, 66000, 0, 'Basic', 'Active', 1415, 5, '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(1626, 'Tiktok - Likes/Hearts [ Life Time Guaranteed ] [ Max - 150k ] INPUT LINK', 115, '  we are only accepted LINK', 10, 120000, 66000, 66000, 0, 'Basic', 'Active', 1416, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1627, 'Tiktok - Live Video Views [ Max - 10k ] INSTANT', 115, '  Max 10K !\\r\\n30 Second Start!\\r\\nThroughout the broadcast, viewers remain in the channel.', 10, 10000, 134000, 134000, 0, 'Basic', 'Active', 1417, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1628, 'Facebook Post Likes [10K] ', 120, 'Real Accounts\\r\\nMin = 100\\r\\nMax = 10k\\r\\n0 to 6 Hours Start', 100, 10000, 8600, 8600, 0, 'Basic', 'Active', 1420, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1629, 'Facebook Emoji Post Likes [RANDOM] [10K] ', 120, 'Real Accounts\\r\\nSlow Speed\\r\\nMin = 100\\r\\nMax = 10k\\r\\n0 to 6 Hours Start\\r\\nRandom Emoticons\\r\\n20% Love - 20% Sad - 20% Haha - 20% Angry - 20% Normal Likes', 100, 10000, 9500, 9500, 0, 'Basic', 'Active', 1421, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1630, 'Instagram Likes Indonesia [2K] SUPER FAST NEW DB ', 113, 'ISNTANT', 5, 2000, 1700, 1700, 0, 'Basic', 'Active', 1428, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1631, ' Instagram Followers - [ EXCLUSIVE ] [ Max - 500k ] [ AUTO REFILL 30DAYS ] INSTANT-10mins', 99, '  INSTANT START\\\\r\\\\nAUTO REFILL 30 DAYS\\\\r\\\\nREAL USERS\\\\r\\\\n20,000-40,000/day', 50, 500000, 27800, 27800, 0, 'Basic', 'Active', 1430, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1632, 'Instagram Followers [350K] [NO PARTIAL] [SUPER INSTANT]', 89, '\\r\\n- Quality = SUPER HIGH !\\r\\n- Start Time = SUPER INSTANT !\\r\\n- Speed = Up to 50k Per Day !\\r\\n- Refill = No Refill / Refund !\\r\\n- Min = 50 !\\r\\n- Max = 350K !\\r\\n- Specs = NO PARTIAL - ALWAYS WORKING !\\r\\n', 50, 350000, 16500, 16500, 0, 'Basic', 'Active', 1431, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1633, 'Instagram Male Likes New DB 10K ', 95, 'INSTANT', 50, 5000, 3200, 3200, 0, 'Basic', 'Active', 1432, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1634, 'Instagram Female New Db 20K', 95, 'ISNTNT', 50, 20000, 3300, 3300, 0, 'Basic', 'Active', 1433, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1635, 'Instagram REAL Likes [ FEMALE ] [Min 20 | 25K MAX]', 95, 'ISNTANT', 50, 25000, 3200, 3200, 0, 'Basic', 'Active', 1434, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1636, 'Instagram REAL Likes [ Male ] [ Min 20 | 12k MAX]', 95, 'INSTANT', 5, 12000, 3300, 3300, 0, 'Basic', 'Active', 1435, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1637, 'Instagram Likes - [ S ] [ Max 30k ] INSTANT )', 95, '  Instagram Likes - [ S1 ] [ Max 30k ] INSTANT )', 100, 5000, 950, 950, 0, 'Basic', 'Active', 1438, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1638, 'Instagram LIKES - INSTANT 2k - ULTRAFAST - SUPERFAST', 95, 'NSTANT 2k - ULTRAFAST', 20, 2000, 950, 950, 0, 'Basic', 'Active', 1440, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1639, 'Instagram Followers [200K] [Best and Recommended] [REFILL 30DAYS] (Auto Refil )', 99, '  100k/Day\\r\\nRefill time - 30 days\\r\\nRefill/Cancel button', 50, 20000, 23000, 23000, 0, 'Basic', 'Active', 1441, 5, '2019-04-06 05:09:05', '2019-04-06 05:09:05'),
(1640, 'Instagram Likes [10K] [EMERGENCY]', 95, 'Real\\\\r\\\\nFAST Speed/SLOW KETIKA UPDATE\\\\r\\\\nTIDAK ADA KOMPLEN\\\\r\\\\nMinimum 50\\\\r\\\\n', 50, 10000, 500, 500, 0, 'Basic', 'Active', 1443, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1641, 'Instagram Followers [100K] [No refill ] 50K/ DAYS INSTANT', 89, 'Start- Instant\\\\r\\\\nSpeed - 50k-100k/day\\\\r\\\\nNo refill IG followers', 5, 100000, 12200, 12200, 0, 'Basic', 'Active', 1444, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1642, 'Instagram Followers - Max 200K - 30 Days Auto Refill - Best Service - Real User', 99, '  30 days auto refill\\\\r\\\\nBest service\\\\r\\\\nSpeed 100K/Day', 50, 200000, 21850, 21850, 0, 'Basic', 'Active', 1446, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1643, 'Instagram Followers  150K - Cheapest and Biggest Base { Speed 30k/Day}', 89, '  - Quality = HIGH !\\r\\n- Start Time = INSTANT !\\r\\n- Speed = Up to 50k Per Day !\\r\\n- Refill = No Refill / Refund !\\r\\n- Min = 500 !\\r\\n- Max = 100K !\\r\\n- Specs = No Partial Issues !', 500, 2000000, 4500, 4500, 0, 'Basic', 'Active', 1447, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1644, 'Instagram Views [250K] ', 90, '- Usually Instant\\r\\n- Cheapest in The Market !\\r\\n- Good Speed\\r\\n- Min = 100\\r\\n- Max = 250K per Order !', 100, 2500000, 20, 20, 0, 'Basic', 'Active', 1450, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1645, 'Instagram Likes [3K] [CHEAPEST]', 95, '- Cheapest in the market\\r\\n- Not Stable IG Likes\\r\\n- SLOW but CHEAP\\r\\n- Up to 6 Hours Start\\r\\n- Good Speed\\r\\n- Min = 100\\r\\n- Max = 2.5k', 50, 3000, 340, 340, 0, 'Basic', 'Active', 1451, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1646, 'Instagram Likes [5K] [SLOW] [NO COMPLAINT BUT SLOW ]', 95, '- Not Stable IG Likes\\r\\n- Slow but CHEAP\\r\\n- Up to 4 Hours Start\\r\\n- Good Speed\\r\\n- Min = 50\\r\\n- Max = 5k', 50, 5000, 420, 420, 0, 'Basic', 'Active', 1452, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1647, 'Instagram Likes - [ INSTANT ] [ Superfast ] [ Max -4k ] INSTANT', 95, 'ISNTANT SUPER FAST', 200, 5000, 500, 500, 0, 'Basic', 'Active', 1453, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1648, 'Instagram Likes - [ INSTANT ] [ Superfast ] [ Max 5K ] INSTANT', 95, 'SUPER FAST', 50, 4000, 680, 680, 0, 'Basic', 'Active', 1454, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1649, '  Youtube Subscribers [100K] [REFILL 30DAYS] ', 124, '\\r\\n- Real USA Users\\r\\n- 30 Days Refill Guaranteed\\r\\n- Up to 6 Hours Start (Usually Instant)\\r\\n- Up to 50 Subscribers Per Day (Natural Pattern)\\r\\n- Min = 5\\r\\n- Max = 1.5k Per Order - 100K Per Channel\\r\\n', 5, 1500, 202500, 202500, 0, 'Basic', 'Active', 1456, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1650, 'Youtube USA Subscribers [50K] [REFILL 30DAYS]  NEW ', 124, ' Real USA Users\\r\\n- 30 Days Refill Guaranteed\\r\\n- Up to 6 Hours Start (Usually Instant)\\r\\n- Up to 50 Subscribers Per Day (Natural Pattern)\\r\\n- Min = 5\\r\\n- Max = 1.5k Per Order - 50K Per Channel', 5, 1500, 202500, 202500, 0, 'Basic', 'Active', 1457, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1651, 'Youtube Views [15K] [REFILL 30DAYS] [ADS]', 123, '- Speed = Up to 1k/day Speed\\r\\n- Source = Advertising\\r\\n- Refill = 30 Days\\r\\n- Retention = 1\\\'\\r\\n- Start = Up to 4 Hours\\r\\n- Min = 1000', 1000, 15000, 16850, 16850, 0, 'Basic', 'Active', 1458, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1652, 'Instagram Photo Impression + Location + Explore +Home+Profile', 126, 'Instagram Photo Impression + Location + Explore +Home+Profile', 100, 100000, 930, 930, 0, 'Basic', 'Active', 1459, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1653, '  Instagram Video Reach [300K]', 126, '  Instagram Video Reach', 100, 300000, 10000, 10000, 0, 'Basic', 'Active', 1460, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1654, 'Instagram Photo Reach [300K]', 126, 'Instagram Photo Reach', 100, 300000, 11150, 11150, 0, 'Basic', 'Active', 1461, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1655, '  Instagram Highlight Views [20K]', 126, '  Instagram Highlight Views', 20, 20000, 35500, 35500, 0, 'Basic', 'Active', 1462, 5, '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(1656, 'Instagram Followers SUPER INSTANT - Fastest In market - 1 MENIT SELESAI', 89, '  NO REFILL NO REFUND Start 0-10 mints\\\\\\\\r\\\\\\\\nSpeed - 5000/hour', 100, 5000, 5100, 5100, 0, 'Basic', 'Active', 1463, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1657, 'Youtube likes 1k day [30 days refill] instant - 1 hrs', 92, '0-3 hrs\\r\\n30 Days Refill\\r\\nWroking well ', 10, 100000, 59500, 59500, 0, 'Basic', 'Active', 1464, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1658, 'Youtube likes 12 days refil [INSTANT START] ', 92, '  Likes can be over-delivered!\\r\\nReal\\r\\n10 Days AUTO REFILL\\r\\n25,000-100,000 Per day\\r\\nMinimum 10\\r\\n\\r\\nNote: Likes can be drops anytime we cannot refund only refill, Use at your own risk.', 10, 400000, 71000, 71000, 0, 'Basic', 'Active', 1465, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1659, ' Instagram views (cheapest in world)  MAX [UNLIMETED]', 114, 'TERMURAH DI DUNIA ', 100, 10000000, 10, 10, 0, 'Basic', 'Active', 1466, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1660, 'Instagram followers Max 10K INSTANT - 1hrs Cheap', 114, 'INSTANT START\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nNO-REFILL', 100, 10000, 2500, 2500, 0, 'Basic', 'Active', 1467, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1661, 'Instagram Followers - [ Max - 200k [ NO PARTIAL ] [ NO REFILL ] SUPER INSTANT', 114, 'SUPER INSTANT\\r\\nHIGH QUALITY\\r\\nNO REFILL\\r\\nSPEED - UPTO 20k/DAY\\r\\nMIN - 50\\r\\nMAX - 150k', 50, 200000, 15400, 15400, 0, 'Basic', 'Active', 1469, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1662, ' Instagram Followers max 300k less drops [50k - 60k day] ', 114, 'NO REFILL NO REFUND \\r\\n0-1 Hr - 60k Per Day', 1000, 300000, 15000, 15000, 0, 'Basic', 'Active', 1470, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1663, 'Instagram Followers max 10k [No Refill Guaranteed]', 114, 'Max 10k\\r\\nMin 500\\r\\nInstant Delivery ', 500, 100000, 3550, 3550, 0, 'Basic', 'Active', 1471, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1664, ' Instagram Followers [0-12 hours] NO Refil working [20K]', 114, '  Instant to 12 Hours Start ', 500, 20000, 3500, 3500, 0, 'Basic', 'Active', 1472, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1665, 'Instagram Followers Max 200k instant Start no refil ', 114, 'Instant Start\\r\\nMax 200K\\r\\nHQ \\r\\nPER ORDER MAX 70K', 500, 70000, 8450, 8450, 0, 'Basic', 'Active', 1473, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1666, ' Instagram Asian Followers less drops HQ instant [40K]', 114, '  Instant - Best Quality - Less Drop\\r\\nindian,asian,indonesia', 100, 40000, 11800, 11800, 0, 'Basic', 'Active', 1474, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1667, 'Instagram Likes [10K] [REAL] [S1] [BEST]', 114, '  Instant to 5 min start', 50, 10000, 450, 450, 0, 'Basic', 'Active', 1475, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1668, 'Instagram Followers Max 6k [instant Start]', 114, 'no refill no refund ', 100, 5000, 2370, 2370, 0, 'Basic', 'Active', 1476, 5, '2019-04-06 05:09:07', '2019-04-06 05:09:07'),
(1669, 'HQ less drop Instagram Followers Max - 10k [ No Refil ] Instant - 30 sec 20-50% extra ', 114, '  Best Service!\\r\\nINSTANT\\r\\nNO REFILL\\r\\nHQ FOLLOWERS\\r\\nMIN 100', 100, 10000, 5500, 5500, 0, 'Basic', 'Active', 1477, 5, '2019-04-06 05:09:08', '2019-04-06 05:09:08'),
(1670, 'Instagram Likes Indonesia [1,5K] New Murah', 113, 'SUPER FAST', 100, 1500, 550, 550, 0, 'Basic', 'Active', 1478, 5, '2019-04-06 05:09:08', '2019-04-06 05:09:08'),
(1671, 'Youtube Views Non Drop Views [10k-25k / day] [0-6 Hours Non Drop] ', 123, '10k per day speed ', 1000, 10000000, 20500, 20500, 0, 'Basic', 'Active', 1479, 5, '2019-04-06 05:09:08', '2019-04-06 05:09:08'),
(1672, 'Tik tok likes Cheapest in market  instant 1 hrs start ', 115, 'Instant Start high speed likes\\r\\nWw', 50, 150000, 46200, 46200, 0, 'Basic', 'Active', 1481, 5, '2019-04-06 05:09:08', '2019-04-06 05:09:08'),
(1673, 'Tik tok followers [Cheapest in market] [Instant - 1 hrs] ', 115, 'tik tok followers [Cheapest in market] [Instant - 1 hrs] ', 50, 150000, 46200, 46200, 0, 'Basic', 'Active', 1482, 5, '2019-04-06 05:09:08', '2019-04-06 05:09:08'),
(1674, 'Instagram followers Instant - 15 Mints [ 7 days Refill ]  max 13k ', 99, '  Min 300', 300, 13000, 4900, 4900, 0, 'Basic', 'Active', 1483, 5, '2019-04-06 05:09:08', '2019-04-06 05:09:08'),
(1675, 'Instagram follows [No refill] 0-6 hrs [max 10k] [CHEAP]', 114, 'Min 100\\\\\\\\r\\\\\\\\nMax 10k\\\\\\\\r\\\\\\\\nMedium quality ', 100, 10000, 2250, 2250, 0, 'Basic', 'Active', 1486, 5, '2019-04-06 05:09:08', '2019-04-06 05:09:08'),
(1676, 'Instagram Followers -[ Max - 5k ] [Cheapest- LQ} [NO COMPLAINT]', 114, 'NO REFILL   0-12 hours finish\\\\r\\\\nworking good\\\\r\\\\nno refill\\\\r\\\\nno partial issue as of now', 100, 5000, 1500, 1500, 0, 'Basic', 'Active', 1487, 5, '2019-04-06 05:09:08', '2019-04-06 05:09:08'),
(1677, 'Instagram Followers [30K] [6 JAM START- 4K/DAYS - REFILL 30 DAYS] BACA NOTE DULU', 99, 'TETAP DROP 5% \\r\\nJIKA DROP DI ATAS 10', 200, 30000, 7000, 7000, 0, 'Basic', 'Active', 1488, 5, '2019-04-06 05:09:09', '2019-04-06 05:09:09'),
(1678, 'Instagram Followers [250K] [INSATN - 25K/DAYS]', 114, 'NO REFILL NO REFUDN ', 100, 200000, 5900, 5900, 0, 'Basic', 'Active', 1489, 5, '2019-04-06 05:09:09', '2019-04-06 05:09:09'),
(1679, 'Instagram Likes MAX 3K CHEAP SLOW PROSES GOOD MARKET', 114, '- Cheapest in the market\\r\\n- Not Stable IG Likes\\r\\n- SLOW but CHEAP\\r\\n- Up to 6 Hours Start\\r\\n- Good Speed\\r\\n- Min = 100\\r\\n- Max = 2.5k', 100, 3000, 300, 300, 0, 'Basic', 'Active', 1490, 5, '2019-04-06 05:09:09', '2019-04-06 05:09:09'),
(1680, 'Instagram Likes Indonesia INSTANT MURAH FAST MAX 1K', 113, 'INSTANT TIDAK ADA MANUAL GROUP', 50, 1000, 600, 600, 0, 'Basic', 'Active', 1494, 5, '2019-04-06 05:09:09', '2019-04-06 05:09:09'),
(1681, 'Instagram Followers Indonesia HARD SPEED [6K] INSTANT', 121, 'INSTANT', 50, 6000, 12000, 12000, 0, 'Basic', 'Active', 1495, 5, '2019-04-06 05:09:09', '2019-04-06 05:09:09'),
(1682, 'Instagram Followers [500K] Refill 30 Days - Exclusive - 200K/Day', 99, 'Refill - 30 days\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nSpeed - 150-250K/Day', 100, 500000, 18500, 18500, 0, 'Basic', 'Active', 1496, 5, '2019-04-06 05:09:09', '2019-04-06 05:09:09'),
(1683, 'Instagram Followers [ Max 10k ] [ 0-18 START] [ Less drops ]', 114, 'Instant - 12 hrs\\r\\nCancel / partial problem ', 500, 10000, 2000, 2000, 0, 'Basic', 'Active', 1497, 5, '2019-04-06 05:09:09', '2019-04-06 05:09:09'),
(1684, 'Instagram Followers - CHEAP - No REFILL - ALWAYS INSTANT - MAX 10K', 114, 'INSTANT NO REFILL ', 100, 10000, 4000, 4000, 0, 'Basic', 'Active', 1498, 5, '2019-04-06 05:09:09', '2019-04-06 05:09:09'),
(1685, 'Instagram Followers - Fastest In market - 1 mint finish [10K]', 89, 'INSTANT', 100, 10000, 5100, 5100, 0, 'Basic', 'Active', 1499, 5, '2019-04-06 05:09:10', '2019-04-06 05:09:10'),
(1686, 'Tik Tok - Followers - Add Profile Link - Lifetime Guaranteed', 115, '  - Add Profile URL\\r\\n- CHEAPEST IN THE MARKET\\r\\n- NON DROP\\r\\n- LIFETIME REFILL GUARANTEE\\r\\n- START TIME 1-2 MINUTES\\r\\n- SPEED 30.000/DAY\\r\\n- MINIMUM 100\\r\\n- MAXIMUM 120,000', 50, 350000, 50300, 50300, 0, 'Basic', 'Active', 1501, 5, '2019-04-06 05:09:10', '2019-04-06 05:09:10'),
(1687, 'Tik Tok - Likes ~ Add VIDEO Link - Lifetime Guaranteed', 115, '  - Add Video URL only\\r\\n- CHEAPEST IN THE MARKET\\r\\n- NON DROP\\r\\n- LIFETIME REFILL GUARANTEE\\r\\n- START TIME 1-2 MINUTES\\r\\n- SPEED 30.000/DAY\\r\\n- MINIMUM 100\\r\\n- MAXIMUM 150,000', 50, 50000, 50300, 50300, 0, 'Basic', 'Active', 1502, 5, '2019-04-06 05:09:10', '2019-04-06 05:09:10'),
(1688, 'Instagram - followers [ Real and Active ] [ Max 200k ] [ INSTANT ] [ 30 day\\\'s Auto Refill ]', 99, 'Instant Start \\r\\nIndian 90% orders start under 5 mint\\r\\nOthers 0-1 Hours ', 100, 200000, 16000, 16000, 0, 'Basic', 'Active', 1503, 5, '2019-04-06 05:09:10', '2019-04-06 05:09:10'),
(1689, 'Instagram - followers [ Max 20k ] [ instant - Start ] [ 15 days Refill ] ', 99, '- Quality = Normal !\\r\\n- Start Time = Up to 4 Hours !\\r\\n- Speed = 1k - 8k Per Day !\\r\\n- Refill = 15 Days !\\r\\n- Min = 100 !\\r\\n- Max = 15K !\\r\\n- Specs = Refill Starts after 24 to 48 Hours from request !', 100, 20000, 5500, 5500, 0, 'Basic', 'Active', 1504, 5, '2019-04-06 05:09:10', '2019-04-06 05:09:10'),
(1690, 'Instagram Followers [ Max 7k - 7 day\\\'s Refil ] [ 0-24 hours ]', 99, '  - IG Followers Medium Quality\\r\\n- Refill = 7 Days Refill Refill Button\\r\\n- Start = Up to 24 Hours\\r\\n- Speed = Up to 7k Per Day\\r\\n- Min = 200', 100, 7000, 3500, 3500, 0, 'Basic', 'Active', 1505, 5, '2019-04-06 05:09:10', '2019-04-06 05:09:10'),
(1691, '  Instagram Followers [700K] REFILL 30DAYS - 300K/DAYS INTANT FAST ', 99, 'Refill - 30 days\\\\r\\\\nSpeed - 150-300K/Day', 100, 70000, 19100, 19100, 0, 'Basic', 'Active', 1506, 5, '2019-04-06 05:09:11', '2019-04-06 05:09:11'),
(1692, 'Instagram Likes {10K} { Real } { Instant }', 95, 'INTANT', 100, 10000, 490, 490, 0, 'Basic', 'Active', 1507, 5, '2019-04-06 05:09:11', '2019-04-06 05:09:11'),
(1693, '  Facebook Post Likes [10K] INSTANT', 120, 'ISNTANT', 200, 10000, 15700, 15700, 0, 'Basic', 'Active', 1508, 5, '2019-04-06 05:09:11', '2019-04-06 05:09:11'),
(1694, 'Youtube Comments Likes ( Min: 10 ) ( upvote )', 92, 'youtube Comments Likes ( Min: 10 ) ( upvote )', 10, 20000, 87400, 87400, 0, 'Basic', 'Active', 1510, 5, '2019-04-06 05:09:11', '2019-04-06 05:09:11'),
(1695, 'Youtube Comments Dislikes ( Min: 10 ) ( Downvote )', 92, 'Youtube Comments Dislikes ( Min: 10 ) ( Downvote )', 10, 20000, 87400, 87400, 0, 'Basic', 'Active', 1511, 5, '2019-04-06 05:09:11', '2019-04-06 05:09:11'),
(1696, 'Youtube Likes [10 days auto refill] [Max 400K]', 92, 'Real\\r\\n10 Days AUTO REFILL\\r\\n25,000-100,000 Per day\\r\\nMinimum 10\\r\\n\\r\\nNote: Likes can be drops anytime we cannot refund only refill, Use at your own risk.\\r\\nThanks', 100, 400000, 69500, 69500, 0, 'Basic', 'Active', 1512, 5, '2019-04-06 05:09:11', '2019-04-06 05:09:11'),
(1697, 'Instagram Followers Less Partial Cheap [2K]', 114, '  0-24 hour start time\\r\\ncheap and less partial', 100, 2000, 1250, 1250, 0, 'Basic', 'Active', 1516, 5, '2019-04-06 05:09:11', '2019-04-06 05:09:11'),
(1698, 'Instagram Followers [700K] [SUPER FAST] [AUTO REFILL 30 DAYS ]', 99, '\\\\r\\\\nFASTEST IN THE MARKET !\\\\r\\\\nSUPER INSTANT !\\\\r\\\\nAUTO REFILL 30 DAYS !\\\\r\\\\nREFILL 30 DAYS !\\\\r\\\\nREFILL BUTTON !\\\\r\\\\n200K Per Day Speed !\\\\r\\\\nMin = 10\\\\r\\\\nMax = 700k', 10, 700000, 26350, 26350, 0, 'Basic', 'Active', 1517, 5, '2019-04-06 05:09:11', '2019-04-06 05:09:11'),
(1699, 'Instagram Followers Norefill no refund [2.5K] CHEAP', 114, 'INPUT USERNAME ', 200, 2500, 1100, 1100, 0, 'Basic', 'Active', 1519, 5, '2019-04-06 05:09:11', '2019-04-06 05:09:11'),
(1700, 'Instagram Followers - 250K - No Partial - Instant', 89, '  Speed 100k/Day\\r\\nNo Partial No Refill\\r\\nHigh Quality Followers', 50, 250000, 16000, 16000, 0, 'Basic', 'Active', 1520, 5, '2019-04-06 05:09:12', '2019-04-06 05:09:12'),
(1701, 'Instagram Followers [240k] [ no refill no refund ] NO PARTIAL ', 89, 'Speed 100k/Day\\r\\nNo Partial No Refill\\r\\nHigh Quality Followers', 50, 250000, 16000, 16000, 0, 'Basic', 'Active', 1521, 5, '2019-04-06 05:09:12', '2019-04-06 05:09:12'),
(1702, 'Instagram - followers [ Minimum drop ] [ 100k ] [ INSTANT start ] REFILLL 30 DAYS ', 99, 'START 12 JAM , JGN KIRIM TIKT JIKA LMBAT\\\\\\\\r\\\\\\\\nLMBAT MAUK KARENA LESS DROP \\\\\\\\r\\\\\\\\n', 500, 100000, 11500, 11500, 0, 'Basic', 'Active', 1522, 5, '2019-04-06 05:09:12', '2019-04-06 05:09:12'),
(1703, 'Instagram Followers [ Max 50K ] [ 30 days refilli ] [ instant start ]', 99, 'Refil time Max 48 hrs\\r\\nMax 50K\\r\\nInstant working ', 300, 50000, 10000, 10000, 0, 'Basic', 'Active', 1523, 5, '2019-04-06 05:09:12', '2019-04-06 05:09:12'),
(1704, 'Instagram Followers [ Max 45k - instant start ] [ 20 days Refill]', 99, '\\r\\nWorking instant\\r\\nRise ticket for Refil ', 100, 45000, 8200, 8200, 0, 'Basic', 'Active', 1524, 5, '2019-04-06 05:09:12', '2019-04-06 05:09:12'),
(1705, '  Instagram Followers [3K] [HALILINTAR FAST] NO REFILL NO REFUND ', 89, '- Quality = HIGH !\\r\\n- Start Time = INSTANT !\\r\\n- Speed = Fastest speed you can imagine!\\r\\n- Refill = No Refill / Refund !\\r\\n- Min = 100 !\\r\\n- Max = 3K !\\r\\n- Specs = No Partial Issues !', 100, 3000, 3200, 3200, 0, 'Basic', 'Active', 1527, 5, '2019-04-06 05:09:12', '2019-04-06 05:09:12'),
(1706, 'Instagram Followers [5K] [SLOW] [NO COMAPLINT]', 114, '12-24 JAM BARU MASUK INGET AJNGAN KOMPLEN KALO LAMA\\r\\n- Cheapest in the market\\r\\n- Cheap but Not Consistent !\\r\\n- Up to 24 Hours Start !\\r\\n- Fast Completion Once Started !\\r\\n- Minimum = 100 !\\r\\n- Maximum = 5K !\\r\\n', 100, 5000, 1200, 1200, 0, 'Basic', 'Active', 1528, 5, '2019-04-06 05:09:12', '2019-04-06 05:09:12'),
(1707, 'Instagram Followers [3K] [SLOW] [ NO COMPLAINT ]', 114, 'SLOW YA 1 HARI BARU KE PROSES INGET JANGAN COMPLAINT KALO LAMBAT\\r\\n- Cheap but Not Consistent !\\r\\n- Up to 24 Hours Start !\\r\\n- Fast Completion Once Started !\\r\\n- Minimum = 300 !\\r\\n- Maximum = 3K !\\r\\n', 100, 3000, 1460, 1460, 0, 'Basic', 'Active', 1529, 5, '2019-04-06 05:09:12', '2019-04-06 05:09:12'),
(1708, '  Instagram Followers [10K] [SLOW] [ NO COMPLAINT ]', 114, '1 HARI BARU MULAI UP  TIDAK ADA COMPLAINT JIKA PROSES LEBIH DARI 2-3 HARI \\r\\n- Less Drops !\\r\\n- Cheap but Not Consistent !\\r\\n- Up to 24 Hours Start !\\r\\n- Fast Completion Once Started !\\r\\n- Minimum = 100 !\\r\\n- Maximum = 10K !', 100, 10000, 2250, 2250, 0, 'Basic', 'Active', 1530, 5, '2019-04-06 05:09:12', '2019-04-06 05:09:12'),
(1709, '  Instagram Profile Visits / Views [20K]', 126, '\\r\\n- Insert PROFILE Link\\r\\n- Instant Start\\r\\n- Profile Visits HQ\\r\\n- Min = 1000\\r\\n', 100, 20000, 5650, 5650, 0, 'Basic', 'Active', 1531, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13'),
(1710, 'Instagram Followers Laundry SALE MURAH [ NO COMPLAINT ]', 114, 'NO REIFLL \\\\r\\\\nSLOW KALO LAMA NO COMAPLINT', 100, 2000, 450, 450, 0, 'Basic', 'Active', 1532, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13'),
(1711, 'Instagram Followers - ( Real ) [ Max - 10k ] [ No Refill] INSTANT ', 114, 'Max 10k ', 100, 10000, 3700, 3700, 0, 'Basic', 'Active', 1535, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13'),
(1712, 'Instagram - followers [ Real users ] [ Max 25k ] [ 0-1 mins ] [ Best - 20 days Refill ] ', 99, 'Instant - 20 Days Refill - Refill Button Enabel', 250, 25000, 8500, 8500, 0, 'Basic', 'Active', 1536, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13'),
(1713, 'Instagram Followers [ Max 25k ] [ 0-5 mins ] No RefiLL', 89, '  Max 25k\\r\\nNo refill ', 100, 25000, 4350, 4350, 0, 'Basic', 'Active', 1537, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13'),
(1714, 'Instagram Likes [ Instant - 1 hour Start ] [Cheapest In Market ] [MAX 10K ]', 114, 'instant - 1 hour start\\r\\nno partial\\r\\ncheapest likes in market', 100, 10000, 305, 305, 0, 'Basic', 'Active', 1538, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13'),
(1715, 'Instagram Followers SUPER FAST Max [20K] CHEAP ', 114, 'No refill/ No refund\\r\\n\\r\\nSpeed - 20k a day\\r\\n\\r\\nInstant - 1hour start - no partial issues', 100, 20000, 4300, 4300, 0, 'Basic', 'Active', 1539, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13'),
(1716, '  Twitter Followers MIn 50 Max 30K { 7 days Refill ]', 111, '  7 days refill\\r\\nBot plus real accounts\\r\\nSpeed is usally 1k-3k a day', 50, 30000, 81000, 81000, 0, 'Basic', 'Active', 1541, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13'),
(1717, ' Youtube - Views  [ Less Drops ] [ 50k-100k/day ] [30 DAYS REFILL ] ', 123, '30 DAYS REFILL Always instant\\r\\nPerfect views\\r\\nLess drops ', 100, 100000000, 18600, 18600, 0, 'Basic', 'Active', 1542, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13'),
(1718, 'Instagram - Views [ Max - 500K ] INSTANT START ', 114, 'INTANT', 100, 500000, 26, 26, 0, 'Basic', 'Active', 1544, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13'),
(1719, 'Instagram Views Impressions [ MAX- 1M ] [ TRENDING HITS ] INSTANT', 114, 'Impressions of the views will spread to Insights as follows to make it look natural:\\r\\n-100% of the order amount as Impressions\\r\\n-20% of the order amount send as Profile Visits\\r\\n-60% of the order amount as Discover\\r\\n-25% of the order amount as Profile\\r\\n-10% of order amount as Home\\r\\n-10% of order amount as Other', 100, 10000000, 80, 80, 0, 'Basic', 'Active', 1545, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13');
INSERT INTO `services` (`id`, `name`, `category_id`, `note`, `min`, `max`, `price`, `price_oper`, `keuntungan`, `type`, `status`, `pid`, `provider_id`, `created_at`, `updated_at`) VALUES
(1720, 'Instagram Impressions  [250K] [ALWAYS WORKING]', 100, '  - Real IG Impressions Profile Visits\\r\\n- Instant Start\\r\\n- Fast Speed\\r\\n- 100% Of Quantity adds as Impressions (Randomly)\\r\\n- 20% Of Quantity adds as Profile Visits\\r\\n- Min = 100\\r\\n- Max = 250K', 100, 250000, 850, 850, 0, 'Basic', 'Active', 1546, 5, '2019-04-06 05:09:13', '2019-04-06 05:09:13'),
(1721, ' Instagram followers [ Max 10k ] [ No Refil - Fastest ] [ INSTANT - 10 sec] 20%-50% EXTRA', 89, '  Fastest & Cheapest In the market\\r\\nNo Refill/ No Refund\\r\\nAlways Instant\\r\\nMin 100, Max 10k\\r\\n20 50% extra', 100, 10000, 4900, 4900, 0, 'Basic', 'Active', 1547, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1722, 'Instagram - followers [10K] [ Cheapest IN THE MARKET ] [ No Refill ] INSTANT START ', 114, '  Instant start\\r\\nMax 5k per order and 10k per link\\r\\nHq Mixed Indian profile ', 250, 5000, 1650, 1650, 0, 'Basic', 'Active', 1548, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1723, ' Instagram Followers [ Max 25k ] [ INSTANT - 30 Mins ] No Refil ', 89, '  Max 25k\\r\\nNo refill ', 100, 25000, 4200, 4200, 0, 'Basic', 'Active', 1549, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1724, 'Instagram Followers [ No Refill ] [ Max 5k ] [ INSTANT - 30 MINS ] CHEAP', 114, '- Usually Instant start\\r\\n- quilty = mediam ', 100, 5000, 2500, 2500, 0, 'Basic', 'Active', 1550, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1725, '  Instagram Views SUPER FAST  [1 Million Per Jam]', 114, '1 Million Per hour\\r\\nFastest Views', 500, 200000000, 14, 14, 0, 'Basic', 'Active', 1553, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1726, 'Youtube Views { Lifetime Guarantee } [ Very Slow ] NO COMPLAINT JIKA SLOW', 123, 'LAYANAN INI SLOW NI COMPLAINT\\r\\nLife Time Guaranteed\\r\\nComes usually 2 times more order (after completion views continue to go)\\r\\nMonetized views\\r\\nStart 0-72 hours (usually in the first 24 hours)!\\r\\nSpeed 50-300 / day (speed at any time can return to 5-100)\\r\\n10-250 seconds - Retention\\r\\nRefill Button Enabled!\\r\\n', 1000, 5000, 7500, 7500, 0, 'Basic', 'Active', 1555, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1727, 'Tik Tok Followers - Min 100 Max 50K 90 DAYS REFILL', 115, 'Speed 20/K day\\r\\nLink only\\r\\n90 Days refill', 100, 50000, 37000, 37000, 0, 'Basic', 'Active', 1556, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1728, '  Tik Tok Likes [250K] [REFILL 30 DAYS ]', 115, '- Quality = HIGH !\\r\\n- Start Time = Instant (Can take up to 24 hours sometimes)\\r\\n- Speed = SUPER FAST\\r\\n- Refill = 30 Days\\r\\n- Min = 50 !\\r\\n- Max = 250K !', 50, 250000, 48000, 48000, 0, 'Basic', 'Active', 1557, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1729, '  Instagram Viral (Views + Save + Reach - Free Impression)', 100, 'INPUT LINK POST ', 10, 4000, 5000, 5000, 0, 'Basic', 'Active', 1560, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1730, 'Instagram Followers [ Max 700K ]  AUTO 30 days refiill-[ FASTEST IN THE MARKET ]', 99, 'Max 700k\\r\\nFastest in the market\\r\\n200k a day\\r\\nAUTO REFILL 30 DAYS ', 50, 700000, 20000, 20000, 0, 'Basic', 'Active', 1561, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1731, 'Instagram Followers - [ FASTEST service] [ 30 DAYS REFILL ] [ Max - 20k ] INSTANT', 99, 'Real followers\\r\\nMax 20k\\r\\nMostly Indian or Asian\\r\\nCheapest ', 100, 25000, 10500, 10500, 0, 'Basic', 'Active', 1562, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1732, 'Instagram Followers - [ Max - 10k ] [ No Refill ] SUPER INSTANT !', 89, 'Instagram Followers - [ Max - 10k ] [ No Refill ] SUPER INSTANT  INSTANT PER INPUT 5K', 100, 5000, 4350, 4350, 0, 'Basic', 'Active', 1563, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1733, 'Instagram Followers MAX 15K - 5k/Day - No Partial Cheap', 114, '  No refill No refund\\r\\nCheap server\\r\\nNo partial\\r\\n0-1 hour start\\r\\n5k-10k/day', 100, 15000, 2398, 2398, 0, 'Basic', 'Active', 1565, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1734, '  Youtube Likes [5K] [REFILL 10 DAYS] ', 92, '\\r\\n- Up to 12 Hours Start\\r\\n- Youtube Video with At Least 1 Like\\r\\n- Up to 50 Per Day Speed\\r\\n- Refill = 10 Days + Refill Button\\r\\n- Min = 5\\r\\n', 5, 5000, 80000, 80000, 0, 'Basic', 'Active', 1566, 5, '2019-04-06 05:09:14', '2019-04-06 05:09:14'),
(1735, 'Youtube DisLikes [3K] [REFILL 10DAYS]', 92, '\\r\\n- Up to 12 Hours Start\\r\\n- Youtube Video with At Least 1 Like\\r\\n- Up to 50 Per Day Speed\\r\\n- Refill = 10 Days + Refill Button\\r\\n- Min = 5\\r\\n', 5, 3000, 80000, 80000, 0, 'Basic', 'Active', 1567, 5, '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(1736, '  Instagram Followers [50K] [REFILL 30 DAYS ] [INSTANT]', 99, 'Exclusive REAL Service!\\r\\nRefill (30 Days Maximum)\\r\\nSUPER INSTANT START !\\r\\nHigh Speed Delivery!\\r\\nMax = 20K\\r\\nSuper High Quality!\\r\\nRefill Button !\\r\\nMinimum 100', 100, 50000, 7200, 7200, 0, 'Basic', 'Active', 1568, 5, '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(1737, 'Instagram Followers [30K] [REAL] [INSTANT] FAST', 89, '\\r\\nNo Refill / No Refund\\r\\n0-1 Hour Start!\\r\\nSuper Instant Delivery\\r\\nMinimum 100\\r\\nMaximum = 5k Per Order = 30K Per Account', 100, 5000, 4900, 4900, 0, 'Basic', 'Active', 1569, 5, '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(1738, 'Instagram likes 10K INSTANT CHEAP', 95, 'INSTANT', 100, 10000, 400, 400, 0, 'Basic', 'Active', 1572, 5, '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(1739, 'Instagram Likes [10K] CHEAP IN MARKET', 95, '0-6 Hour start', 100, 10000, 240, 240, 0, 'Basic', 'Active', 1573, 5, '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(1740, 'Facebook Page likes [ 7 days Refil ] [ 0~24 hrs ] 500 - 1k day ', 120, '  0 to 24 hrs\\r\\n7 days Refil\\r\\nBest and Cheapest ', 99, 15000, 48000, 48000, 0, 'Basic', 'Active', 1574, 5, '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(1741, 'Facebook Page Likes - [WORLDWIDE] [UNLIMITED] [REAL]', 127, 'Facebook Page Likes - [WORLDWIDE] [UNLIMITED] [REAL]', 100, 999999, 325000, 325000, 0, 'Basic', 'Active', 1575, 5, '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(1742, 'Instagram Likes [ Superfast - instant - high quality ] [ Max - 10k ] INSTANT - 5 Mins ', 95, 'Max 10k\\r\\nInstant start\\r\\nHigh quality ', 100, 10000, 410, 410, 0, 'Basic', 'Active', 1576, 5, '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(1743, 'Instagram Followers [ Cheapest ] [ Max 5k - No Refil ] [ INSTANT - 1 hrs ] ', 114, ' [ Username Only]   ONLY-USERNAME\\r\\n1MIN DELIVERY\\r\\nMAX 5K', 100, 5000, 2100, 2100, 0, 'Basic', 'Active', 1578, 5, '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(1744, 'Instagram Followers - Max 200k - No refill - 30-40k/Day', 114, '  Instant Start - 10 Minutes start', 500, 200000, 4900, 4900, 0, 'Basic', 'Active', 1580, 5, '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(1745, 'Instagram Likes [2.5K] - EXCLUSIVE - CHEAPEST', 114, '  Instant Start\\\\\\\\r\\\\\\\\nDaily Speed 100K', 100, 2500, 125, 125, 0, 'Basic', 'Active', 1581, 5, '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(1746, 'nstagram Followers [350K] [REAL] [REFILL 30DAYS] ', 99, '- Real Accounts\\r\\n- Up to 3 hours Start\\r\\n- Up to 100K Per Day Speed\\r\\n- 30 Days Refill + Refill Button\\r\\n- Min = 100\\r\\n- Max = 350K', 100, 350000, 18600, 18600, 0, 'Basic', 'Active', 1582, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1747, 'İnstagram Story Views Max 100K', 100, '  Put User Name Only', 100, 100000, 110, 110, 0, 'Basic', 'Active', 1583, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1748, 'Instagram Followers Max [20K] [ LESSDROP]', 89, '5-15% drop\\r\\nSpeed 10k/Day\\r\\nStart Instant', 100, 20000, 2700, 2700, 0, 'Basic', 'Active', 1584, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1749, '  TIK TOK - Video Likes - 30 days guarantee', 115, '  speed 50k/day\\r\\nstarts in 1-2 mint\\r\\nstatus updation is bit late', 50, 250000, 6000, 6000, 0, 'Basic', 'Active', 1585, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1750, '  Instagram Followers - Exclusive - Max 10K - Best Seller', 114, '  Start- 0-10 Minutes\\r\\nNo Refill - No refund\\r\\nBest Service In market', 100, 10000, 5000, 5000, 0, 'Basic', 'Active', 1586, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1751, 'nstagram Likes - (Max 2.5k) ( Real Users) (SUPER FAST)', 95, 'nstagram Likes - (Max 2.5k) ( Real Users) (SUPER FAST)', 100, 2500, 520, 520, 0, 'Basic', 'Active', 1587, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1752, 'Instagram - followers [ Max 300k ] [ No Refill - SUPERFAST 100k day ] INSTANT - 15 Mins ', 89, '  Instant\\r\\n200k per day speed', 500, 300000, 5000, 5000, 0, 'Basic', 'Active', 1588, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1753, 'Instagram Followers [ Max 200k - No Partial - No Refil ] recommend ', 89, '  Instant to 15 mins\\r\\nWorking on all profile ', 1000, 200000, 5000, 5000, 0, 'Basic', 'Active', 1589, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1754, 'INSTAGRAM FOLLOWERS MAX 100K [ Fresh-User ] No Refil - FASTEST - INSTANT', 89, 'Instant-start\\r\\nMax 80k\\r\\n30k per day speed', 200, 100000, 4000, 4000, 0, 'Basic', 'Active', 1590, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1755, 'Instagram - likes [ Max 10k ] [ INSTANT - 10 Mins ] [ CHEAPEST ]', 95, 'Ig likes cheep ', 100, 10000, 190, 190, 0, 'Basic', 'Active', 1591, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1756, 'Instagram Views [ Max - 250K ] [ INSTANT START ]', 90, 'Max 250k\\r\\nInstant working ', 100, 250000, 14, 14, 0, 'Basic', 'Active', 1592, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1757, 'Instagram - Views [ 3 M / minute ] [ INSTANT START ] [ Cheapest IN THE MARKET ] ', 90, 'instant', 250, 2147483647, 5, 5, 0, 'Basic', 'Active', 1593, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1758, 'TikTok LIKES [NON DROP] [MAX 50K] [WORKING 100%] INSTANT START', 115, '  INSTANT START\\r\\nSPEED UPTO 50K PER DAY\\r\\nNON DROP GUARANTEE\\r\\nMIN 50 MAX 5K\\r\\n\\r\\nLINK of video only ', 50, 50000, 5850, 5850, 0, 'Basic', 'Active', 1594, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1759, 'Instagram Likes [10K] [ Instant - 1 hour Start ] [Cheapest In Market ]', 95, 'instant - 1 hour start\\\\r\\\\nno partial\\\\r\\\\ncheapest likes in market', 100, 10000, 300, 300, 0, 'Basic', 'Active', 1597, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1760, 'Instagram Followers [ Max 300k ] [ 50k/day ] [ REFILL 30DAYS ] INSTANT - 3 hrs ', 99, '  0-6 hrs\\r\\nMax 250k\\r\\nRECOMMENDED\\r\\nHigh quality profile', 100, 300000, 15500, 15500, 0, 'Basic', 'Active', 1604, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1761, ' Instagram Followers [ Max 150k ] [ AUTO REFILL 30DAYS ] [ INSTANT START ] ', 99, '  Max 100k\\r\\nInstant - very fast\\r\\n- 30 days auto refill\\r\\nQuality - medium ', 100, 150000, 14600, 14600, 0, 'Basic', 'Active', 1605, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1762, 'Instagram likes [ Exclusive ] [ASIAN] [ Real ] [ Max 100k ]', 95, 'INDIAN INDONESIA WORLDWIDE Instant start\\r\\nMax 100\\r\\nReal and HQ', 50, 50000, 2000, 2000, 0, 'Basic', 'Active', 1607, 5, '2019-04-06 05:09:16', '2019-04-06 05:09:16'),
(1763, 'Instagram Followers [Cheap] - [ Max 5k ] [ No Refil ] INSTANT ', 114, '  No Refil\\r\\nInstant start\\r\\nMax 5k\\r\\nWorking good ', 150, 5000, 1300, 1300, 0, 'Basic', 'Active', 1608, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1764, 'Instagram Followers - [ Max 20k ] [ FASTEST - 1 Mint complete ] [ No Refil ] INSTANT ', 114, '  Max 20k\\r\\n1 mint complete\\r\\n20k day\\r\\nHigh speed ', 200, 20000, 2700, 2700, 0, 'Basic', 'Active', 1609, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1765, ' Instagram Followers [ Max 900K ] [ REAL ] [ AUTO REFILL 30 DAYS] SUPER INSTANT', 99, 'SUPER FAST\\r\\nAUTO REFILL 30 DAYS\\r\\nREFILL BUTTON ENABLED\\r\\nCANCEL BUTTON ENABLED\\r\\n200K PER DAY', 30, 900000, 23800, 23800, 0, 'Basic', 'Active', 1610, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1766, 'Instagram Followers Indonesia Super Instant [1K] DB FRESH [AUTO LUCKY REFILL 30 DAYS]', 121, 'INSANT ORDER VIA API 35K Fitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\r\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan.\\\\r\\\\n', 100, 1000, 35000, 35000, 0, 'Basic', 'Active', 1611, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1767, 'Instagram Likes -[ Superfast ] [ Real ] [ Max -5k ] SUPER INSTANT ', 95, '[ Superfast ] [ Real ] [ Max -5k ] SUPER INSTANT ', 50, 5000, 840, 840, 0, 'Basic', 'Active', 1612, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1768, 'Facebook Page likes [ REFILL 30DAYS ] [ 0-12 hrs ] [ 500 Day ] ', 127, '- 0-6 Hours\\r\\n- 30 Days Refill\\r\\n- 500 Per Day Speed', 100, 10000, 185000, 185000, 0, 'Basic', 'Active', 1613, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1769, '  Instagram Likes [5K] [EMERGENCY] [SUPER INSTANT] [2]', 95, '  Instagram Likes [5K] [EMERGENCY] [SUPER INSTANT]', 50, 5000, 1500, 1500, 0, 'Basic', 'Active', 1615, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1770, 'Instagram Followers Aktif Indonesia Pria[USERNAME] [2K] [INSTANT] [SPECIAL] ', 121, 'INSTANT', 100, 1000, 5000, 5000, 0, 'Basic', 'Active', 1619, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1771, 'Instagram Followers Aktif Indonesia Wanita [USERNAME] [1K] [INSTANT] [SPECIAL]', 121, 'INSTANT', 100, 1000, 5000, 5000, 0, 'Basic', 'Active', 1620, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1772, 'Instagram Followes Indonesia SUPER INSTANT[12K] AUTO LUCKY REFILL 30 DAYS SPEED', 121, 'INSTANT INPUT 6K 2 KALI', 100, 8000, 5000, 5000, 0, 'Basic', 'Active', 1621, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1773, 'Instagram Followers Indonesia [ 15K] [NEW] INSTANT', 121, 'SUPER FAST NO REFILL PER INPUT 11K', 50, 12000, 9000, 9000, 0, 'Basic', 'Active', 1622, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1774, 'Followers Aktif Indonesia [6K] [AUTO REFILL 7DAYS] ', 121, 'Auto Refill 7 Hari JIKA FOLLOWERS BERKURANG AKAN AUTO REFILL SELAMA 7 HARI INI BUKAN LUCKY REFILL YANG RANDOM TAPI BENERAN REFILL DAN BERGARANSI \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\nSOLUSI ANDA UNTUK MENJUAL FOLLOWERS INDONESIA BERGARANSI', 50, 6000, 15000, 15000, 0, 'Basic', 'Active', 1623, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1775, 'Instagram Followers Aktip Lampung [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K', 50, 1000, 30000, 30000, 0, 'Basic', 'Active', 1624, 5, '2019-04-06 05:09:17', '2019-04-06 05:09:17'),
(1776, 'Instagram Followers Aktip Surabaya [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\\\r\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\r\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesana.Per Input 1K', 5, 1000, 30000, 30000, 0, 'Basic', 'Active', 1625, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1777, 'Instagram Followers Aktip SERANG [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [4K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\\\r\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\r\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 100, 4000, 30000, 30000, 0, 'Basic', 'Active', 1626, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1778, 'Instagram Followers Aktip CILEGON [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K]', 128, 'AUTO LUCKY REFILL 30 DAY\\r\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\r\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 5, 1000, 30000, 30000, 0, 'Basic', 'Active', 1627, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1779, 'Instagram Followers Aktip Jambi [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [5K]', 128, 'AUTO LUCKY REFILL 30 DAY\\\\r\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\r\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. ', 5, 5000, 30000, 30000, 0, 'Basic', 'Active', 1628, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1780, 'Instagram Followers Aktip Maluku [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT] ', 128, 'AUTO LUCKY REFILL 30 DAY\\r\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\r\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 5, 1000, 30000, 30000, 0, 'Basic', 'Active', 1629, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1781, 'Instagram Followers Aktip Nusa Tenggara Barat [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K]', 128, 'AUTO LUCKY REFILL 30 DAY\\r\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\r\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K \\r\\n', 50, 1000, 30000, 30000, 0, 'Basic', 'Active', 1630, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1782, 'Instagram Followers Aktip BANJAR [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT] ', 128, 'AUTO LUCKY REFILL 30 DAY\\\\r\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\r\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 5, 1000, 30000, 30000, 0, 'Basic', 'Active', 1631, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1783, 'Instagram Followers Aktip ACEH [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT] ', 128, 'AUTO LUCKY REFILL 30 DAY\\\\r\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\r\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 50, 1000, 15000, 15000, 0, 'Basic', 'Active', 1632, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1784, 'Instagram Followers Aktip BALI [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\r\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\r\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 5, 1000, 30000, 30000, 0, 'Basic', 'Active', 1633, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1785, 'Instagram Followers Aktip BANDUNG [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\r\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\r\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 50, 1000, 30000, 30000, 0, 'Basic', 'Active', 1634, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1786, 'Instagram Followers Aktip TANGERANG [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\r\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\r\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 50, 1000, 30000, 30000, 0, 'Basic', 'Active', 1635, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1787, 'Instagram Followers Aktip BOGOR [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\r\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\r\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 50, 1000, 30000, 30000, 0, 'Basic', 'Active', 1636, 5, '2019-04-06 05:09:18', '2019-04-06 05:09:18'),
(1788, 'Instagram Followers Aktip CIMAHI [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\\\r\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\r\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 50, 1000, 30000, 30000, 0, 'Basic', 'Active', 1637, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1789, 'Instagram Followers Aktip CIREBON [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\r\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\r\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 50, 1000, 30000, 30000, 0, 'Basic', 'Active', 1638, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1790, 'Instagram Followers Aktip JAKARTA [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [3K]', 128, 'AUTO LUCKY REFILL 30 DAY\\\\\\\\r\\\\\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\\\\\r\\\\\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K \\\\\\\\r\\\\\\\\n', 50, 3000, 30000, 30000, 0, 'Basic', 'Active', 1639, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1791, 'Instagram Followers Aktip KALIMANTAN [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\r\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\r\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 50, 1000, 30000, 30000, 0, 'Basic', 'Active', 1640, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1792, 'Instagram Followers Aktip MAGELANG [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\r\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\r\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 50, 1000, 30000, 30000, 0, 'Basic', 'Active', 1641, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1793, 'Instagram Followers Aktip MAKASAR [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\\\\\\\r\\\\\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\\\\\r\\\\\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 5, 1000, 30000, 30000, 0, 'Basic', 'Active', 1642, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1794, 'Instagram Followers Aktip PALEMBANG [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\\\\\\\r\\\\\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\\\\\r\\\\\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 5, 1000, 30000, 30000, 0, 'Basic', 'Active', 1643, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1795, 'Instagram Followers Aktip PURBALINGGA [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, '\\\\\\\\r\\\\\\\\nAUTO LUCKY REFILL 30 DAY\\\\\\\\r\\\\\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\\\\\r\\\\\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 5, 1000, 30000, 30000, 0, 'Basic', 'Active', 1644, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1796, 'Instagram Followers Aktip SEMARANG [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K] [INSTANT]', 128, 'AUTO LUCKY REFILL 30 DAY\\\\r\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\r\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 5, 1000, 30000, 30000, 0, 'Basic', 'Active', 1645, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1797, 'Instagram Followers Aktip SOLO [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K]', 128, '\\\\\\\\r\\\\\\\\nAUTO LUCKY REFILL 30 DAY\\\\\\\\r\\\\\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\\\\\r\\\\\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 5, 1000, 30000, 30000, 0, 'Basic', 'Active', 1646, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1798, 'Instagram Followers Aktip SUKABUMI [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K]', 128, 'AUTO LUCKY REFILL 30 DAY\\\\r\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\r\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 50, 1000, 30000, 30000, 0, 'Basic', 'Active', 1647, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1799, 'Instagram Followers Aktip SULAWESI [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K]', 128, '\\\\r\\\\nAUTO LUCKY REFILL 30 DAY\\\\r\\\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\\\r\\\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 5, 1000, 30000, 30000, 0, 'Basic', 'Active', 1648, 5, '2019-04-06 05:09:19', '2019-04-06 05:09:19'),
(1800, 'Instagram Followers Aktip PURWOKERTO [ORDER VIA API 25K ] ]AUTO LUCKY REFILL] [2K]', 128, 'AUTO LUCKY REFILL 30 DAY\\r\\nFitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatis!\\r\\nSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 1K ', 50, 1000, 30000, 30000, 0, 'Basic', 'Active', 1649, 5, '2019-04-06 05:09:20', '2019-04-06 05:09:20'),
(1801, 'Instagram Followes Indonesia SUPER INSTANT [3K] GOOD', 121, 'INSTANT per input 1K bosku Fast 1-5 Menit beres', 50, 3000, 9000, 9000, 0, 'Basic', 'Active', 1651, 5, '2019-04-06 05:09:20', '2019-04-06 05:09:20'),
(1802, 'Instagram Followers Indonesia [11K] [INSTANT] [AUTO LUCKY REFILL 30 DAY] NEW', 121, 'AUTO LUCKY REFILL 30 DAY Fitur auto lucky refill 30 day: sistem akan memilih secara acak 1440 akun yang beruntung setiap harinya untuk direfill secara otomatisnSemua akun otomatis akan mengikuti fitur auto lucky refill selama 30 hari, terhitung sejak tanggal pemesanan. Per Input 5K', 100, 11000, 10000, 10000, 0, 'Basic', 'Active', 1652, 5, '2019-04-06 05:09:20', '2019-04-06 05:09:20'),
(1803, 'Instagram Followers - [ Min 100 | Max 2000 ] Murah no refill no refund', 114, 'jika stuck lebih 1 hari no complaint \\r\\ninstant jika tidak overload', 100, 2000, 610, 610, 0, 'Basic', 'Active', 1653, 5, '2019-04-06 05:09:20', '2019-04-06 05:09:20'),
(1804, 'Instagram Followers HQ - ( Max 10k - 95% Profile Followers )', 89, '  90-95% Followers Have Profile Photo\\r\\n10-20% Followers Put Story Every Day\\r\\nBest Quality in Market in Lowest rate', 100, 10000, 2350, 2350, 0, 'Basic', 'Active', 1654, 5, '2019-04-06 05:09:20', '2019-04-06 05:09:20'),
(1805, ' Instagram Followers [ Very less Drop ] [ Max 250k ] [ Real ] [ 50k/day ] [ REFILL30DAYS ] INSTANT', 99, '  0-6 hrs\\r\\nMax 250k\\r\\nRECOMMENDED\\r\\nHigh quality profile', 100, 250000, 15500, 15500, 0, 'Basic', 'Active', 1655, 5, '2019-04-06 05:09:20', '2019-04-06 05:09:20'),
(1806, ' Instagram - Followers [ Max 100k ] [ AUTO REFILL 30 HARI ] [ INSTANT START ] ', 99, '  Max 100k\\r\\nInstant - very fast\\r\\n- 30 days auto refill\\r\\nQuality - medium ', 100, 100000, 14650, 14650, 0, 'Basic', 'Active', 1656, 5, '2019-04-06 05:09:20', '2019-04-06 05:09:20'),
(1807, 'Instagram Followers [AUTO REFILL]  [ Max 20k ] [ SUPER INSTANT ] [ 30 Days Refil ] ', 99, '  - Max 20k\\r\\n- 20k followers per hour\\r\\n- Fastest service with instant start\\r\\n- Auto Refill enabled', 100, 20000, 14500, 14500, 0, 'Basic', 'Active', 1657, 5, '2019-04-06 05:09:20', '2019-04-06 05:09:20'),
(1808, ' Instagram Followers- [ Max - 250k ] [ Fastest ] [ NO REFILL ] INSTANT', 89, ' [ Fastest ] [ NO REFILL ] INSTANT', 100, 250000, 6000, 6000, 0, 'Basic', 'Active', 1658, 5, '2019-04-06 05:09:20', '2019-04-06 05:09:20'),
(1809, 'Instagram Likes [Super Fast} {Real} {Max 10k} - 1mint finish', 95, '  Instagram Likes [Super Fast} {Real} {Max 10k} - 1mint finish', 50, 10000, 1750, 1750, 0, 'Basic', 'Active', 1659, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1810, 'Instagram Fast Instant Likes Min 50 MAX 10K { Exclusive,Recommended,Fastest }', 95, '  Instagram Fast Instant Likes Min 50 MAX 5K { Exclusive,Recommended,Fastest }', 50, 10000, 1750, 1750, 0, 'Basic', 'Active', 1660, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1811, 'Instagram Likes [10K ] [Real] [ 10k in 5 minutes] [Always Instant] [ Recommended]', 95, '  Real and active user\\r\\nHIGH SPEED\\r\\nRECOMMENDED\\r\\n10k in 5 minutes', 50, 10000, 2000, 2000, 0, 'Basic', 'Active', 1661, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1812, 'Instagram Likes - Fastest - 5k Max - 1 Mint start S3', 95, 'Instagram Likes - Fastest - 5k Max - 1 Mint start S3', 50, 5000, 2000, 2000, 0, 'Basic', 'Active', 1662, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1813, 'Instagram likes  EMERGENCY - [ FAST ]  [ Max 10k ] [ Real ] INSTANT ', 95, 'Likes Impression\\\\r\\\\n50 min', 100, 10000, 1050, 1050, 0, 'Basic', 'Active', 1663, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1814, 'Instagram Likes -  [ Superfast ] [ Max -1k ] [Emergency]', 95, 'real instant', 100, 1000, 2900, 2900, 0, 'Basic', 'Active', 1664, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1815, '  Youtube Subscribers [100K] [REFILL 365 DAYS] ', 124, '- Real Users\\r\\n- 1 YEAR Refill Guaranteed\\r\\n- Up to 6 Hours Start (Usually Instant)\\r\\n- 100 - 500 Subscribers Per Day\\r\\n- Min = 100\\r\\n- Max = 1k Per Order - 100K Per Channel', 100, 1000, 155000, 155000, 0, 'Basic', 'Active', 1665, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1816, 'Instagram Likes Aktif Indonesia NEW SUPER FAST [2.5K]', 113, 'INSTANT', 50, 2500, 2800, 2800, 0, 'Basic', 'Active', 1666, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1817, 'Instagram Likes [5K] [REAL] [EMERGENCY]', 95, 'Real\\r\\nInstant Delivery!\\r\\nMinimum 50', 100, 5000, 2150, 2150, 0, 'Basic', 'Active', 1668, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1818, 'Facebook Post Likes [5K] INSTANT', 120, '  No Refill\\r\\nSpeed - Instant - start 1 mint', 100, 5000, 850, 850, 0, 'Basic', 'Active', 1669, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1819, 'Instagram Likes [7K] [CHEAPEST IN MARKET]', 95, '\\r\\n- Slow but CHEAP\\r\\n- Up to 4 Hours Start (usually Instant)\\r\\n- Good Speed\\r\\n', 100, 5000, 410, 410, 0, 'Basic', 'Active', 1670, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1820, 'Instagram Followers [50K] [CHEAPEST HQ]  [REAL] [AUTO REFILL 30DAYS] ', 99, 'INASTANT', 100, 50000, 13500, 13500, 0, 'Basic', 'Active', 1671, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1821, 'Facebook Page Likes [5K] [AUTO REFILL 30DAYS] [EXCLUSIVE] ', 127, 'INSTANT', 100, 5000, 145000, 145000, 0, 'Basic', 'Active', 1672, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1822, 'Tik Tok Likes [250K] [REFILL 25DAYS] ', 115, ' Quality = Good !\\r\\n- Start Time = Instant (Can take up to 24 hours sometimes)\\r\\n- Speed = SUPER FAST\\r\\n- Refill = 25 Days\\r\\n- Min = 50 !\\r\\n- Max = 250K !', 500, 250000, 4700, 4700, 0, 'Basic', 'Active', 1673, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1823, 'Tik Tok Followers [250K] [REFILL 25DAYS]', 115, '- Quality = Good !\\r\\n- Start Time = Instant (Can take up to 24 hours sometimes)\\r\\n- Speed = SUPER FAST\\r\\n- Refill = 25 Days\\r\\n- Min = 50 !\\r\\n- Max = 250K !', 50, 250000, 21400, 21400, 0, 'Basic', 'Active', 1674, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1824, 'Instagram Likes Indonesia [8K] [FRESS DB ]', 113, 'Instant , Perinput 4K database 8K aktip cuma di irvankede', 50, 4000, 3200, 3200, 0, 'Basic', 'Active', 1675, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1825, 'Instagram Likes Indonesia Instant [2K] FAST', 113, 'INSTANT', 10, 2000, 3500, 3500, 0, 'Basic', 'Active', 1676, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1826, 'Followers  Aktip Indonesia [9K] MEDUIM SPEED ', 121, 'MASUK NYA 0-6 JAM TTERGANTUNG ANTRIAN BOSKU ', 100, 8000, 5000, 5000, 0, 'Basic', 'Active', 1677, 5, '2019-04-06 05:09:21', '2019-04-06 05:09:21'),
(1827, 'Layanan Test', 121, 'TEST AJA YA', 100, 3000, 2500, 2500, 0, 'Basic', 'Not Active', 1679, 5, '2019-04-06 05:09:22', '2019-04-06 21:43:23'),
(1828, 'Custom', 105, 'asd', 100, 10000, 100, 100, 100, 'Custom Comment', 'Active', 100, 2, '2019-04-09 01:04:09', '2019-04-09 01:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `services_pulsas`
--

CREATE TABLE `services_pulsas` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oprator_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `status` enum('Active','Not Active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services_pulsas`
--

INSERT INTO `services_pulsas` (`id`, `code`, `name`, `oprator_id`, `category_id`, `price`, `status`, `provider_id`, `created_at`, `updated_at`) VALUES
(3, 'AX5', 'AXIS 5000', 2, 73, 5600, 'Active', 3, '2019-03-16 06:55:07', '2019-03-30 10:14:13'),
(4, 'T1', 'THREE 1000', 332, 86, 1268, 'Active', 3, '2019-03-17 00:55:42', '2019-03-30 10:14:24'),
(5, '538', 'Telkomsel S2 1000', 3, 71, 2000, 'Active', 4, '2019-03-17 01:28:08', '2019-03-17 01:28:08'),
(6, 'AX10', 'AXIS 10000', 2, 73, 10700, 'Active', 3, '2019-03-30 10:14:13', '2019-03-30 10:14:13'),
(7, 'AX25', 'AXIS 25000', 2, 73, 24900, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(8, 'AX30', 'AXIS 30000', 2, 73, 29900, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(9, 'AX50', 'AXIS 50000', 2, 73, 49525, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(10, 'AX100', 'AXIS 100000', 2, 73, 98850, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(11, 'AX15', 'AXIS 15000', 2, 73, 15025, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(12, 'AIGO1', 'VOUCHER AIGO 1GB 30Hr', 299, 73, 13350, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(13, 'AIGO2', 'VOUCHER AIGO 2GB 30Hr', 299, 73, 23400, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(14, 'AIGO3', 'VOUCHER AIGO 3GB 30Hr', 299, 73, 28850, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(15, 'AIGO5', 'VOUCHER AIGO 5GB 30Hr', 299, 73, 43550, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(16, 'AIGO8', 'VOUCHER AIGO 8GB 30Hr', 299, 73, 59250, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(17, 'AIM2', 'VOUCHER AIGO MINI 2GB 7Hr', 300, 73, 15950, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(18, 'AIM3', 'VOUCHER AIGO MINI 3GB 15Hr', 300, 73, 20500, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(19, 'AIM5', 'VOUCHER AIGO MINI 5GB 15Hr', 300, 73, 33150, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(20, 'AIM1', 'VOUCHER AIGO MINI 1GB 5Hr', 300, 73, 8750, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(21, 'AXD300', 'BRONET 300MB 7Hr', 301, 73, 7225, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(22, 'AXD1', 'BRONET 1GB 30Hr', 301, 73, 18500, 'Active', 3, '2019-03-30 10:14:14', '2019-03-30 10:14:14'),
(23, 'AXD2', 'BRONET 2GB 30Hr', 301, 73, 27450, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(24, 'AXD3', 'BRONET 3GB 30Hr', 301, 73, 36850, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(25, 'AXD5', 'BRONET 5GB 30Hr', 301, 73, 54900, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(26, 'AXD8', 'BRONET 8GB 30Hr', 301, 73, 76650, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(27, 'BO25', 'PULSA BOLT 25000', 302, 74, 24850, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(28, 'BO50', 'PULSA BOLT 50000', 302, 74, 49350, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(29, 'BO100', 'PULSA BOLT 100000', 302, 74, 97675, 'Not Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(30, 'BO150', 'PULSA BOLT 150000', 302, 74, 146275, 'Not Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(31, 'BO200', 'PULSA BOLT 200000', 302, 74, 194900, 'Not Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(32, 'BO29', 'BOLT Kuota 1.5GB 30Hri', 303, 74, 28650, 'Not Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(33, 'BO49', 'BOLT Kuota 3GB 30Hri', 303, 74, 48050, 'Not Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(34, 'BO99', 'BOLT Kuota 8GB 30Hri', 303, 74, 96600, 'Not Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(35, 'BO149', 'BOLT Kuota 13GB 30Hri', 303, 74, 145075, 'Not Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(36, 'BO199', 'BOLT Kuota 17GB 30Hri', 303, 74, 193600, 'Not Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(37, 'GJ20', 'SALDO GOJEK 20K', 304, 75, 21000, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(38, 'GJ25', 'SALDO GOJEK 25K', 304, 75, 26000, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(39, 'GJ50', 'SALDO GOJEK 50K', 304, 75, 51000, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(40, 'GJ100', 'SALDO GOJEK 100K', 304, 75, 101325, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(41, 'GJ150', 'SALDO GOJEK 150K', 304, 75, 151000, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(42, 'GJ200', 'SALDO GOJEK 200K', 304, 75, 201000, 'Active', 3, '2019-03-30 10:14:15', '2019-03-30 10:14:15'),
(43, 'GJ250', 'SALDO GOJEK 250K', 304, 75, 251775, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(44, 'GJ5', 'SALDO GOJEK 5K', 304, 75, 6275, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(45, 'GJ10', 'SALDO GOJEK 10K', 304, 75, 11000, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(46, 'GJD20', 'SALDO GOJEK DRIVER 20K', 305, 76, 21425, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(47, 'GJD50', 'SALDO GOJEK DRIVER 50K', 305, 76, 51425, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(48, 'GJD75', 'SALDO GOJEK DRIVER 75K', 305, 76, 76425, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(49, 'GJD100', 'SALDO GOJEK DRIVER 100K', 305, 76, 101425, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(50, 'GJD150', 'SALDO GOJEK DRIVER 150K', 305, 76, 151425, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(51, 'GJD200', 'SALDO GOJEK DRIVER 200K', 305, 76, 201425, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(52, 'GP20', 'Google Play ID 20rb', 306, 77, 23425, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(53, 'GP50', 'Google Play ID 50rb', 306, 77, 58075, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(54, 'GP100', 'Google Play ID 100rb', 306, 77, 115500, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(55, 'GP150', 'Google Play ID 150rb', 306, 77, 171500, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(56, 'GP300', 'Google Play ID 300rb', 306, 77, 339500, 'Active', 3, '2019-03-30 10:14:16', '2019-03-30 10:14:16'),
(57, 'GP500', 'Google Play ID 500rb', 306, 77, 564500, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(58, 'GB10', 'SALDO GRAB 10K', 307, 78, 10875, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(59, 'GB20', 'SALDO GRAB 20K', 307, 78, 20875, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(60, 'GB25', 'SALDO GRAB 25K', 307, 78, 25875, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(61, 'GB40', 'SALDO GRAB 40K', 307, 78, 40875, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(62, 'GB50', 'SALDO GRAB 50K', 307, 78, 50875, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(63, 'GB100', 'SALDO GRAB 100K', 307, 78, 100875, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(64, 'GB150', 'SALDO GRAB 150K', 307, 78, 150875, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(65, 'GB200', 'SALDO GRAB 200K', 307, 78, 200875, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(66, 'GB300', 'SALDO GRAB 300K', 307, 78, 300875, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(67, 'GB500', 'SALDO GRAB 500K', 307, 78, 500875, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(68, 'I5', 'INDOSAT 5000', 308, 79, 6050, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(69, 'I10', 'INDOSAT 10000', 308, 79, 11050, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(70, 'I25', 'INDOSAT 25000', 308, 79, 24750, 'Active', 3, '2019-03-30 10:14:17', '2019-03-30 10:14:17'),
(71, 'I50', 'INDOSAT 50000', 308, 79, 48975, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(72, 'I100', 'INDOSAT 100000', 308, 79, 96975, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(73, 'I20', 'INDOSAT 20000', 308, 79, 20035, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(74, 'I30', 'INDOSAT 30000', 308, 79, 29900, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(75, 'IDB20', '20GB+10GB(01-06)+5GB 4G, 60Hr', 309, 79, 86200, 'Not Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(76, 'IDB9', '9GB+16GB(01-06)+5GB 4G, 60Hr', 309, 79, 60000, 'Not Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(77, 'IDB3', '3GB+18GB(01-06)+4GB 4G, 30Hr', 309, 79, 43850, 'Not Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(78, 'IDX2', 'EXTRA 2GB', 310, 79, 37250, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(79, 'IDX4', 'EXTRA 4GB', 310, 79, 52975, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(80, 'IDX6', 'EXTRA 6GB', 310, 79, 70975, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(81, 'IFC1', 'Freedom M, 2+3GB 4G, 30hr', 311, 79, 55275, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(82, 'IFC3', 'Freedom L, 4+8GB 4G, 30hr', 311, 79, 82600, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(83, 'IFC5', 'Freedom XL, 8+12GB 4G, 30hr', 311, 79, 116575, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(84, 'IFC10', 'Freedom XXL, 12+25GB 4G, 30hr', 311, 79, 143400, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(85, 'IDJ1', 'Haji Unlimited Internet 20 Hari', 312, 79, 353075, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(86, 'IDJ2', 'Haji Komplit Internet Nelpon & Sms 20 Hari', 312, 79, 451175, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(87, 'IDJ3', 'Haji Unlimited Internet 40 Hari', 312, 79, 549275, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(88, 'IDJ4', 'Haji Komplit Internet Nelpon & Sms 40 Hari', 312, 79, 637225, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(89, 'IDM1', 'MINI 1GB+500MB Lokal+1GB Malam+500MB Apps 30Hr', 313, 79, 14400, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(90, 'IDM2', 'MINI 2GB+500MB Lokal+3.5GB Malam+500MB Apps 30Hr', 313, 79, 32325, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(91, 'IDN1', 'KUOTA 1GB 30hr', 314, 79, 16975, 'Active', 3, '2019-03-30 10:14:18', '2019-03-30 10:14:18'),
(92, 'IDN2', 'KUOTA 2GB 30hr', 314, 79, 32650, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(93, 'IDN3', 'KUOTA 3GB + SMS Sesama 30hr', 314, 79, 45750, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(94, 'IDN10', 'KUOTA 10GB + SMS&Telp Sesama 30hr', 314, 79, 80975, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(95, 'IDN7', 'KUOTA 7GB + SMS Sesama 30hr', 314, 79, 63675, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(96, 'IDN15', 'KUOTA 15GB + SMS&Telp Sesama 30hr', 314, 79, 107975, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(97, 'IDN99', 'KUOTA Unlimited + SMS&Telp Sesama 30hr', 314, 79, 143950, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(98, 'I5S', '300 SMS sesama Isat + 100 SMS operator lain', 315, 79, 6325, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(99, 'I10S', '600 SMS sesama Isat + 200 SMS operator lain', 315, 79, 11900, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(100, 'I25S', '2000 SMS sesama Isat + 500 SMS operator lain', 315, 79, 28100, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(101, 'IT1', 'Telepon Sesama Isat 1000 menit, 1Hr', 316, 79, 2775, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(102, 'IT2', 'Telepon Sesama ISAT Unlimited + 50menit ALL, 7Hr', 316, 79, 14625, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(103, 'IT3', 'Telepon Sesama ISAT Unlimited, 30Hr', 316, 79, 24820, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(104, 'IT4', 'Telepon Sesama ISAT Unlimited + 250menit ALL, 30Hr', 316, 79, 49025, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(105, 'IT12', 'Telepon Sesama ISAT Unlimited + 30menit ALL, 7Hr', 316, 79, 12900, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(106, 'IT25', 'Telepon Sesama ISAT Unlimited + 60menit ALL, 30Hr', 316, 79, 25750, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(107, 'ITR5', 'INDOSAT TRANSFER PULSA 5000', 317, 79, 5850, 'Not Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(108, 'ITR10', 'INDOSAT TRANSFER PULSA 10000', 317, 79, 10645, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(109, 'ITR25', 'INDOSAT TRANSFER PULSA 25000', 317, 79, 23750, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(110, 'ITR50', 'INDOSAT TRANSFER PULSA 50000', 317, 79, 47300, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(111, 'ITR100', 'INDOSAT TRANSFER PULSA 100000', 317, 79, 95500, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(112, 'ITR15', 'INDOSAT TRANSFER PULSA 15000', 317, 79, 15425, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(113, 'ITR20', 'INDOSAT TRANSFER PULSA 20000', 317, 79, 19925, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(114, 'ITR30', 'INDOSAT TRANSFER PULSA 30000', 317, 79, 29725, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(115, 'IDH1', 'KUOTA 1GB 1hr', 318, 79, 2225, 'Active', 3, '2019-03-30 10:14:19', '2019-03-30 10:14:19'),
(116, 'IDH3', 'KUOTA 1GB 3hr', 318, 79, 3625, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(117, 'IDH7', 'KUOTA 1GB 7hr', 318, 79, 8000, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(118, 'IDH15', 'KUOTA 1GB 15hr', 318, 79, 11000, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(119, 'ITN10', 'iTunes Gift Card $10', 319, 80, 145550, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(120, 'ITN15', 'iTunes Gift Card $15', 319, 80, 195550, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(121, 'ITN25', 'iTunes Gift Card $25', 319, 80, 325550, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(122, 'ITN50', 'iTunes Gift Card $50', 319, 80, 655550, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(123, 'ITN100', 'iTunes Gift Card $100', 319, 80, 1375550, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(124, 'OV50', 'ORANGE TV 50.000', 320, 81, 46550, 'Not Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(125, 'OV80', 'ORANGE TV 80.000', 320, 81, 74150, 'Not Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(126, 'OV100', 'ORANGE TV 100.000', 320, 81, 92550, 'Not Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(127, 'OV150', 'ORANGE TV 150.000', 320, 81, 138550, 'Not Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(128, 'OV300', 'ORANGE TV 300.000', 320, 81, 276550, 'Not Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(129, 'OV1000', 'ORANGE TV 1.000.000', 320, 81, 920550, 'Not Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(130, 'VO10', 'SALDO OVO 10000', 321, 82, 11100, 'Not Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(131, 'VO25', 'SALDO OVO 25000', 321, 82, 26050, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(132, 'VO50', 'SALDO OVO 50000', 321, 82, 50950, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(133, 'VO100', 'SALDO OVO 100000', 321, 82, 100950, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(134, 'VO200', 'SALDO OVO 200000', 321, 82, 201350, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(135, 'VO300', 'SALDO OVO 300000', 321, 82, 301350, 'Active', 3, '2019-03-30 10:14:20', '2019-03-30 10:14:20'),
(136, 'VO400', 'SALDO OVO 400000', 321, 82, 401350, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(137, 'VO500', 'SALDO OVO 500000', 321, 82, 501350, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(138, 'VO600', 'SALDO OVO 600000', 321, 82, 606350, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(139, 'VO700', 'SALDO OVO 700000', 321, 82, 706350, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(140, 'VO800', 'SALDO OVO 800000', 321, 82, 806350, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(141, 'VO900', 'SALDO OVO 900000', 321, 82, 906350, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(142, 'VO1000', 'SALDO OVO 1000000', 321, 82, 1006350, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(143, 'SM5', 'SMARTFREN 5000', 322, 83, 5075, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(144, 'SM10', 'SMARTFREN 10000', 322, 83, 10025, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(145, 'SM20', 'SMARTFREN 20000', 322, 83, 19875, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(146, 'SM25', 'SMARTFREN 25000', 322, 83, 24825, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(147, 'SM30', 'SMARTFREN 30000', 322, 83, 29775, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(148, 'SM50', 'SMARTFREN 50000', 322, 83, 48975, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(149, 'SM100', 'SMARTFREN 100000', 322, 83, 98900, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(150, 'SM60', 'SMARTFREN 60000', 322, 83, 59200, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(151, 'SM150', 'SMARTFREN 150000', 322, 83, 148900, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(152, 'SM200', 'SMARTFREN 200000', 322, 83, 198900, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(153, 'SM300', 'SMARTFREN 300000', 322, 83, 298900, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(154, 'SM75', 'SMARTFREN 75000', 322, 83, 74875, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(155, 'SMV20', 'SMARTFREN VOLUME 2GB + 2GB Malam 7Hr', 323, 83, 19350, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(156, 'SMV30', 'SMARTFREN VOLUME 4GB + 4GB Malam 14Hr', 323, 83, 28500, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(157, 'SMV60', 'SMARTFREN VOLUME 8GB + 8GB Malam 30Hr', 323, 83, 54400, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(158, 'SMV100', 'SMARTFREN VOLUME 15GB + 15GB Malam 30Hr', 323, 83, 90100, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(159, 'SMV150', 'SMARTFREN VOLUME 22.5GB + 22.5GB Malam 30Hr', 323, 83, 143100, 'Active', 3, '2019-03-30 10:14:21', '2019-03-30 10:14:21'),
(160, 'SMV200', 'SMARTFREN VOLUME 30GB + 30GB Malam 30Hr', 323, 83, 190700, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(161, 'SMV10', 'SMARTFREN VOLUME 1.25GB + 1.75GB Malam 7Hr', 323, 83, 10325, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(162, 'SMD50', 'SMARTFREN KUOTA 1.75GB 30hr', 324, 83, 50725, 'Not Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(163, 'SMD60', 'SMARTFREN KUOTA 2GB+12GB MDS 30hr', 324, 83, 60650, 'Not Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(164, 'SMD100', 'SMARTFREN KUOTA 5GB+12GB MDS 30hr', 324, 83, 100550, 'Not Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(165, 'SMD20', 'SMARTFREN KUOTA 300MB 7hr', 324, 83, 12850, 'Not Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(166, 'SMD30', 'SMARTFREN KUOTA 650MB 7hr', 324, 83, 25800, 'Not Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(167, 'WIFI1', 'WIFI ID-1Hari', 325, 84, 4575, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(168, 'WIFI7', 'WIFI ID-7Hari', 325, 84, 18325, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(169, 'WIFI30', 'WIFI ID-30Hari', 325, 84, 43525, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(170, 'S5', 'TELKOMSEL 5000', 3, 85, 5395, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(171, 'S10', 'TELKOMSEL 10000', 3, 85, 10295, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(172, 'S20', 'TELKOMSEL 20000', 3, 85, 20095, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(173, 'S25', 'TELKOMSEL 25000', 3, 85, 24875, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(174, 'S50', 'TELKOMSEL 50000', 3, 85, 49525, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(175, 'S100', 'TELKOMSEL 100000', 3, 85, 97475, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(176, 'S200', 'TELKOMSEL 200000', 3, 85, 198000, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(177, 'S150', 'TELKOMSEL 150000', 3, 85, 148435, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(178, 'S300', 'TELKOMSEL 300000', 3, 85, 294975, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(179, 'S1', 'TELKOMSEL 1000', 3, 85, 1900, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(180, 'STG5', '20MB-40MB 7hr', 326, 85, 5600, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(181, 'STG10', '50MB-110MB 7hr', 326, 85, 10325, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(182, 'STG20', '200MB-420MB 7hr', 326, 85, 15500, 'Active', 3, '2019-03-30 10:14:22', '2019-03-30 10:14:22'),
(183, 'STG50', '800MB-1.5GB (+2GB VideoMax) 30hr', 326, 85, 48975, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(184, 'STG100', '2.5GB-4.5GB (+2GB VideoMax) 30hr', 326, 85, 96495, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(185, 'STG25', '270MB-750MB 30hr', 326, 85, 24725, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(186, 'SDA1', 'AS 1GB + 2GB VIDEOMAX 30Hr', 327, 85, 42625, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(187, 'SDA2', 'AS 2GB + 2GB VideoMax + (100Menit & 100SMS) 30Hr', 327, 85, 67250, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(188, 'SDA3', 'AS 3GB + 2GB VideoMax 30Hr', 327, 85, 61799, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(189, 'SDA8', 'AS 8GB + 2GB VideoMax 30Hr', 327, 85, 89050, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(190, 'SDA15', 'AS 15GB + 2GB VideoMax 30Hr', 327, 85, 116425, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(191, 'SDA30', 'AS 30GB + 2GB VideoMax 30Hr', 327, 85, 178775, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(192, 'SDA17', 'AS 1GB 7Hr', 327, 85, 30500, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(193, 'SDA27', 'AS 2GB 7Hr', 327, 85, 37650, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(194, 'SDB3', 'BULK 4.5GB + 2GB VideoMax 30hr', 328, 85, 64000, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(195, 'SDB8', 'BULK 8GB + 2GB VideoMax 30hr', 328, 85, 84900, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(196, 'SDB12', 'BULK 12GB + 2GB VideoMax 30hr', 328, 85, 101950, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(197, 'SDB25', 'BULK 25GB + 2GB VideoMax 30hr', 328, 85, 164550, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(198, 'SDB35', 'BULK 50GB + 2GB VideoMax 30hr', 328, 85, 194000, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(199, 'SDB1', 'BULK 2GB + 2GB VideoMax 30hr', 328, 85, 38850, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(200, 'SS1', '200 SMS ke semua 1 hari', 329, 85, 1149, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(201, 'SS5', '1000 SMS ke semua 5 hari', 329, 85, 4997, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(202, 'ST5', 'Telepon Sesama Tsel 85menit + ALL 15menit (1Hr)', 330, 85, 5675, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(203, 'ST10', 'Telepon Sesama Tsel 170menit + ALL 30menit (3Hr)', 330, 85, 10650, 'Active', 3, '2019-03-30 10:14:23', '2019-03-30 10:14:23'),
(204, 'ST20', 'Telepon Sesama Tsel 350menit + ALL 50menit (7Hr)', 330, 85, 20375, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(205, 'ST50', 'Telepon Sesama Tsel 1000menit + ALL 100menit (30Hr)', 330, 85, 56400, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(206, 'ST100', 'Telepon Sesama Tsel 2250menit + ALL 250menit (30Hr)', 330, 85, 99675, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(207, 'ST8', 'Telepon Sesama Tsel 185menit + ALL 15menit (1Hr)', 330, 85, 8500, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(208, 'ST15', 'Telepon Sesama Tsel 370menit + ALL 30menit (3Hr)', 330, 85, 14500, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(209, 'ST26', 'Telepon Sesama Tsel 550menit + ALL 50menit (7Hr)', 330, 85, 25350, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(210, 'ST70', 'Telepon Sesama Tsel 2000menit + ALL 100menit (30Hr)', 330, 85, 70000, 'Not Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(211, 'ST120', 'Telepon Sesama Tsel 6250menit + ALL 250menit (30Hr)', 330, 85, 120250, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(212, 'STR10', 'TSEL TRANSFER PULSA 10000', 331, 85, 11300, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(213, 'STR20', 'TSEL TRANSFER PULSA 20000', 331, 85, 21000, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(214, 'STR25', 'TSEL TRANSFER PULSA 25000', 331, 85, 25745, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(215, 'STR50', 'TSEL TRANSFER PULSA 50000', 331, 85, 49380, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(216, 'STR100', 'TSEL TRANSFER PULSA 100000', 331, 85, 97600, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(217, 'STR5', 'TSEL TRANSFER PULSA 5000', 331, 85, 6650, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(218, 'T2', 'THREE 2000', 332, 86, 2281, 'Active', 3, '2019-03-30 10:14:24', '2019-03-30 10:14:24'),
(219, 'T3', 'THREE 3000', 332, 86, 3274, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(220, 'T4', 'THREE 4000', 332, 86, 4461, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(221, 'T5', 'THREE 5000', 332, 86, 5365, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(222, 'T6', 'THREE 6000', 332, 86, 6563, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(223, 'T7', 'THREE 7000', 332, 86, 7546, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(224, 'T8', 'THREE 8000', 332, 86, 8528, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(225, 'T9', 'THREE 9000', 332, 86, 9511, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(226, 'T10', 'THREE 10000', 332, 86, 10284, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(227, 'T20', 'THREE 20000', 332, 86, 19715, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(228, 'T30', 'THREE 30000', 332, 86, 29695, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(229, 'T40', 'THREE 40000', 332, 86, 39625, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(230, 'T50', 'THREE 50000', 332, 86, 49225, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(231, 'T75', 'THREE 75000', 332, 86, 74038, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(232, 'T100', 'THREE 100000', 332, 86, 97975, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(233, 'T150', 'THREE 150000', 332, 86, 147550, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(234, 'T25', 'THREE 25000', 332, 86, 24640, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(235, 'TD5', 'KUOTA 5 GB 30hr', 333, 86, 68150, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(236, 'TD8', 'KUOTA 8 GB 30hr', 333, 86, 101775, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(237, 'TD1', 'KUOTA 1 GB 30hr', 333, 86, 20675, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(238, 'TD2', 'KUOTA 2 GB 30hr', 333, 86, 33000, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(239, 'TD3', 'KUOTA 3 GB 30hr', 333, 86, 47750, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(240, 'TD4', 'KUOTA 4 GB 30hr', 333, 86, 50575, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(241, 'TD6', 'KUOTA 6 GB 30hr', 333, 86, 76150, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(242, 'TD10', 'KUOTA 10 GB 30hr', 333, 86, 123275, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(243, 'TBM1', 'BM 500MB + 500MB Malam 30Hr', 334, 86, 16600, 'Active', 3, '2019-03-30 10:14:25', '2019-03-30 10:14:25'),
(244, 'TBM3', 'BM 1GB + 500MB Malam 30Hr', 334, 86, 26600, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(245, 'TDC6', 'CINTA 6GB 90Hr + 3GB 4G + 19GB Weekend + 20GB Malam 30Hr', 335, 86, 75600, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(246, 'TDC10', 'CINTA 10GB 90Hr + 5GB 4G + 30GB Weekend + 20GB Malam 30Hr', 335, 86, 102900, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(247, 'TGM2', 'GETMORE 2GB 60Hr', 336, 86, 30750, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(248, 'TGM3', 'GETMORE 3GB 60Hr', 336, 86, 38700, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(249, 'TGM5', 'GETMORE 5GB 60Hr', 336, 86, 53900, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(250, 'TDR20', 'REGULER 20MB', 337, 86, 3225, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(251, 'TDR80', 'REGULER 80MB', 337, 86, 6075, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(252, 'TDR30', 'REGULER 300MB', 337, 86, 10825, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(253, 'TDR12', 'REGULER 1.25GB', 337, 86, 33575, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(254, 'TDR65', 'REGULER 650MB', 337, 86, 21075, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(255, 'TDR42', 'REGULER 4.25GB', 337, 86, 81975, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(256, 'TB2', '2GB 30 HARI + EKSTRA KUOTA', 338, 86, 33875, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(257, 'TB5', '5GB 30 HARI + EKSTRA 10GB', 338, 86, 68750, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(258, 'TB6', '6GB 30 HARI + EKSTRA KUOTA', 338, 86, 76625, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(259, 'TB10', '10GB 30 HARI + EKSTRA KUOTA', 338, 86, 121025, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(260, 'TT5', 'Telepon 20menit 7Hr All Operator', 339, 86, 5325, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(261, 'TT15', 'Telepon 60menit 30Hr All Operator', 339, 86, 15725, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(262, 'TT30', 'Telepon 150menit 30Hr All Operator', 339, 86, 30975, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(263, 'TTR5', 'TRI TRANSFER PULSA 5k + Masa Aktif', 340, 86, 5425, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(264, 'TTR10', 'TRI TRANSFER PULSA 10k + Masa Aktif', 340, 86, 10320, 'Not Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(265, 'TTR20', 'TRI TRANSFER PULSA 20k + Masa Aktif', 340, 86, 19875, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(266, 'TTR25', 'TRI TRANSFER PULSA 25k + Masa Aktif', 340, 86, 24950, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(267, 'TTR30', 'TRI TRANSFER PULSA 30k + Masa Aktif', 340, 86, 29850, 'Active', 3, '2019-03-30 10:14:26', '2019-03-30 10:14:26'),
(268, 'TTR50', 'TRI TRANSFER PULSA 50k + Masa Aktif', 340, 86, 49450, 'Active', 3, '2019-03-30 10:14:27', '2019-03-30 10:14:27'),
(269, 'TTR100', 'TRI TRANSFER PULSA 100k + Masa Aktif', 340, 86, 98350, 'Active', 3, '2019-03-30 10:14:27', '2019-03-30 10:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `services_pulsa_operators`
--

CREATE TABLE `services_pulsa_operators` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services_pulsa_operators`
--

INSERT INTO `services_pulsa_operators` (`id`, `name`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Saldo Gopay', '2019-03-14 21:15:10', '2019-03-14 21:29:06', 70),
(2, 'Axis', '2019-03-15 00:13:32', '2019-03-30 09:59:51', 73),
(3, 'Telkomsel', '2019-03-17 00:55:08', '2019-03-30 09:59:54', 85),
(4, 'Lainnya', '2019-03-30 00:29:18', '2019-03-30 00:29:18', 72),
(299, 'AXIS AIGO (AKTIVASI *838*KODE#)', '2019-03-30 09:59:51', '2019-03-30 09:59:51', 73),
(300, 'AXIS AIGO MINI (AKTIVASI *838*KODE#)', '2019-03-30 09:59:51', '2019-03-30 09:59:51', 73),
(301, 'AXIS DATA BRONET', '2019-03-30 09:59:51', '2019-03-30 09:59:51', 73),
(302, 'BOLT', '2019-03-30 09:59:51', '2019-03-30 09:59:51', 74),
(303, 'BOLT KUOTA', '2019-03-30 09:59:51', '2019-03-30 09:59:51', 74),
(304, 'GOJEK', '2019-03-30 09:59:52', '2019-03-30 09:59:52', 75),
(305, 'GOJEK DRIVER', '2019-03-30 09:59:52', '2019-03-30 09:59:52', 76),
(306, 'GOOGLE PLAY ID', '2019-03-30 09:59:52', '2019-03-30 09:59:52', 77),
(307, 'GRAB', '2019-03-30 09:59:52', '2019-03-30 09:59:52', 78),
(308, 'INDOSAT', '2019-03-30 09:59:52', '2019-03-30 09:59:52', 79),
(309, 'INDOSAT BOMBER', '2019-03-30 09:59:52', '2019-03-30 09:59:52', 79),
(310, 'INDOSAT DATA EXTRA', '2019-03-30 09:59:52', '2019-03-30 09:59:52', 79),
(311, 'INDOSAT DATA FREEDOM', '2019-03-30 09:59:52', '2019-03-30 09:59:52', 79),
(312, 'INDOSAT DATA HAJI', '2019-03-30 09:59:52', '2019-03-30 09:59:52', 79),
(313, 'INDOSAT DATA MINI', '2019-03-30 09:59:52', '2019-03-30 09:59:52', 79),
(314, 'INDOSAT DATA REGULER', '2019-03-30 09:59:52', '2019-03-30 09:59:52', 79),
(315, 'INDOSAT SMS', '2019-03-30 09:59:53', '2019-03-30 09:59:53', 79),
(316, 'INDOSAT TELEPON', '2019-03-30 09:59:53', '2019-03-30 09:59:53', 79),
(317, 'INDOSAT TRANSFER PULSA', '2019-03-30 09:59:53', '2019-03-30 09:59:53', 79),
(318, 'INDOSAT YELLOW', '2019-03-30 09:59:53', '2019-03-30 09:59:53', 79),
(319, 'iTunes Gift Card', '2019-03-30 09:59:53', '2019-03-30 09:59:53', 80),
(320, 'ORANGE TV', '2019-03-30 09:59:53', '2019-03-30 09:59:53', 81),
(321, 'OVO', '2019-03-30 09:59:53', '2019-03-30 09:59:53', 82),
(322, 'SMARTFREN', '2019-03-30 09:59:53', '2019-03-30 09:59:53', 83),
(323, 'SMARTFREN DATA VOLUME', '2019-03-30 09:59:54', '2019-03-30 09:59:54', 83),
(324, 'SMARTFREN INTERNET', '2019-03-30 09:59:54', '2019-03-30 09:59:54', 83),
(325, 'SPEEDY (@WIFI ID)', '2019-03-30 09:59:54', '2019-03-30 09:59:54', 84),
(326, 'TELKOMSEL DATA', '2019-03-30 09:59:54', '2019-03-30 09:59:54', 85),
(327, 'TELKOMSEL DATA AS', '2019-03-30 09:59:54', '2019-03-30 09:59:54', 85),
(328, 'TELKOMSEL DATA BULK', '2019-03-30 09:59:54', '2019-03-30 09:59:54', 85),
(329, 'TELKOMSEL SMS', '2019-03-30 09:59:54', '2019-03-30 09:59:54', 85),
(330, 'TELKOMSEL TELEPON', '2019-03-30 09:59:54', '2019-03-30 09:59:54', 85),
(331, 'TELKOMSEL TRANSFER PULSA', '2019-03-30 09:59:55', '2019-03-30 09:59:55', 85),
(332, 'TRI', '2019-03-30 09:59:55', '2019-03-30 09:59:55', 86),
(333, 'TRI DATA', '2019-03-30 09:59:55', '2019-03-30 09:59:55', 86),
(334, 'TRI DATA BM', '2019-03-30 09:59:55', '2019-03-30 09:59:55', 86),
(335, 'TRI DATA CINTA', '2019-03-30 09:59:55', '2019-03-30 09:59:55', 86),
(336, 'TRI DATA GETMORE', '2019-03-30 09:59:55', '2019-03-30 09:59:55', 86),
(337, 'TRI DATA REGULER', '2019-03-30 09:59:55', '2019-03-30 09:59:55', 86),
(338, 'TRI KUOTA BULANAN', '2019-03-30 09:59:55', '2019-03-30 09:59:55', 86),
(339, 'TRI TELEPON', '2019-03-30 09:59:55', '2019-03-30 09:59:55', 86),
(340, 'TRI TRANSFER PULSA', '2019-03-30 09:59:55', '2019-03-30 09:59:55', 86);

-- --------------------------------------------------------

--
-- Table structure for table `service_cats`
--

CREATE TABLE `service_cats` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('SOSMED','PULSA') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_cats`
--

INSERT INTO `service_cats` (`id`, `name`, `type`, `status`, `created_at`, `updated_at`) VALUES
(70, 'E-Money', 'PULSA', 'Active', '2019-03-14 20:41:30', '2019-03-14 20:43:00'),
(71, 'Pulsa All Operator', 'PULSA', 'Active', '2019-03-15 00:13:24', '2019-03-15 00:13:24'),
(72, 'Lainnya', 'PULSA', 'Active', '2019-03-30 00:29:06', '2019-03-30 00:29:06'),
(73, 'AXIS', 'PULSA', 'Active', '2019-03-30 09:56:55', '2019-03-30 09:56:55'),
(74, 'BOLT', 'PULSA', 'Active', '2019-03-30 09:57:20', '2019-03-30 09:57:20'),
(75, 'GOJEK', 'PULSA', 'Active', '2019-03-30 09:57:20', '2019-03-30 09:57:20'),
(76, 'GOJEK DRIVER', 'PULSA', 'Active', '2019-03-30 09:57:21', '2019-03-30 09:57:21'),
(77, 'GOOGLE PLAY', 'PULSA', 'Active', '2019-03-30 09:57:22', '2019-03-30 09:57:22'),
(78, 'GRAB', 'PULSA', 'Active', '2019-03-30 09:57:22', '2019-03-30 09:57:22'),
(79, 'INDOSAT', 'PULSA', 'Active', '2019-03-30 09:57:23', '2019-03-30 09:57:23'),
(80, 'iTunes Gift Card', 'PULSA', 'Active', '2019-03-30 09:57:25', '2019-03-30 09:57:25'),
(81, 'ORANGE TV', 'PULSA', 'Active', '2019-03-30 09:57:25', '2019-03-30 09:57:25'),
(82, 'OVO', 'PULSA', 'Active', '2019-03-30 09:57:26', '2019-03-30 09:57:26'),
(83, 'SMARTFREN', 'PULSA', 'Active', '2019-03-30 09:57:26', '2019-03-30 09:57:26'),
(84, 'SPEEDY', 'PULSA', 'Active', '2019-03-30 09:57:28', '2019-03-30 09:57:28'),
(85, 'TELKOMSEL', 'PULSA', 'Active', '2019-03-30 09:57:28', '2019-03-30 09:57:28'),
(86, 'TRI', 'PULSA', 'Active', '2019-03-30 09:57:31', '2019-03-30 09:57:31'),
(88, 'Lainnya', 'SOSMED', 'Not Active', '2019-04-06 02:52:29', '2019-04-06 21:49:52'),
(89, 'Instagram Followers No Refill/Not Guaranteed', 'SOSMED', 'Active', '2019-04-06 05:07:50', '2019-04-06 05:07:50'),
(90, 'Instagram Views', 'SOSMED', 'Active', '2019-04-06 05:08:45', '2019-04-06 05:08:45'),
(91, 'Instagram Auto Comments / Impressions / Saves', 'SOSMED', 'Active', '2019-04-06 05:08:45', '2019-04-06 05:08:45'),
(92, 'Youtube Likes / Comments /', 'SOSMED', 'Active', '2019-04-06 05:08:45', '2019-04-06 05:08:45'),
(93, 'SoundCloud', 'SOSMED', 'Active', '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(94, 'Pinterest', 'SOSMED', 'Active', '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(95, 'Instagram Likes', 'SOSMED', 'Active', '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(96, 'Telegram', 'SOSMED', 'Active', '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(97, 'Google', 'SOSMED', 'Active', '2019-04-06 05:08:46', '2019-04-06 05:08:46'),
(98, 'Instagram Auto Likes', 'SOSMED', 'Active', '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(99, 'Instagram Followers [Refill] [Guaranteed] [NonDrop]', 'SOSMED', 'Active', '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(100, 'Instagram Story / Impressions / Saves /  Reach', 'SOSMED', 'Active', '2019-04-06 05:08:47', '2019-04-06 05:08:47'),
(101, 'Facebook Video Views / Live Stream', 'SOSMED', 'Active', '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(102, 'Twitter Views / Impressions / Live / Comments', 'SOSMED', 'Active', '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(103, 'Instagram Auto Likes - 7 Days Subscription', 'SOSMED', 'Active', '2019-04-06 05:08:48', '2019-04-06 05:08:48'),
(104, 'Instagram TV', 'SOSMED', 'Active', '2019-04-06 05:08:50', '2019-04-06 05:08:50'),
(105, 'Instagram Comments', 'SOSMED', 'Active', '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(106, 'Website Traffic', 'SOSMED', 'Active', '2019-04-06 05:08:51', '2019-04-06 05:08:51'),
(107, 'Instagram Live Video', 'SOSMED', 'Active', '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(108, 'Instagram Likes / Likes + Impressions', 'SOSMED', 'Active', '2019-04-06 05:08:52', '2019-04-06 05:08:52'),
(109, 'Twitter Retweets', 'SOSMED', 'Active', '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(110, 'Twitter Poll Votes', 'SOSMED', 'Active', '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(111, 'Twitter Followers', 'SOSMED', 'Active', '2019-04-06 05:08:54', '2019-04-06 05:08:54'),
(112, 'Instagram Likes [Targeted Negara]', 'SOSMED', 'Active', '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(113, 'Instagram Likes Indonesia', 'SOSMED', 'Active', '2019-04-06 05:08:55', '2019-04-06 05:08:55'),
(114, 'A PROMOTION (Cheap Services)', 'SOSMED', 'Active', '2019-04-06 05:08:56', '2019-04-06 05:08:56'),
(115, 'TIKTOK', 'SOSMED', 'Active', '2019-04-06 05:08:58', '2019-04-06 05:08:58'),
(116, 'Instagram Likes/Followers Per Minute', 'SOSMED', 'Active', '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(117, 'Instagram Followers [Negara]', 'SOSMED', 'Active', '2019-04-06 05:09:00', '2019-04-06 05:09:00'),
(118, 'Instagram Auto Views', 'SOSMED', 'Active', '2019-04-06 05:09:01', '2019-04-06 05:09:01'),
(119, 'Linkedin', 'SOSMED', 'Active', '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(120, 'Facebook Post Likes / Comments / Shares / Events', 'SOSMED', 'Active', '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(121, 'Instagram Followers Indonesia', 'SOSMED', 'Active', '2019-04-06 05:09:02', '2019-04-06 05:09:02'),
(122, 'Youtube Live Stream', 'SOSMED', 'Active', '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(123, 'Youtube Views', 'SOSMED', 'Active', '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(124, 'Youtube Subscribers ', 'SOSMED', 'Active', '2019-04-06 05:09:03', '2019-04-06 05:09:03'),
(125, 'Facebook Followers / Friends / Group Members', 'SOSMED', 'Active', '2019-04-06 05:09:04', '2019-04-06 05:09:04'),
(126, ' Instagram Highlights / Profile Visits / Reach', 'SOSMED', 'Active', '2019-04-06 05:09:06', '2019-04-06 05:09:06'),
(127, 'Facebook Page Likes', 'SOSMED', 'Active', '2019-04-06 05:09:15', '2019-04-06 05:09:15'),
(128, 'Instagram Followers Indonesia Kota/Daerah/Regional', 'SOSMED', 'Active', '2019-04-06 05:09:17', '2019-04-06 05:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `phone`, `level`, `email`, `facebook_name`, `facebook_url`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'Ahmad Saugiz', '081380353611', 'Developer', 'ahmadsaugigis@gmail.com', 'Ahmad Saugi', 'https://www.facebook.com/ahmadsaugi.gis', '20190318145913-geo.png', '2019-03-18 07:36:08', '2019-03-18 07:59:13'),
(2, 'Fajar Momogi', '089509772682', 'Developer', 'fajarkon@gmail.com', 'Fajar Momogi', 'https://web.facebook.com/MBL404', '20190319052747-48355293_736618773378549_2559864529198514176_n.jpg', '2019-03-18 22:27:47', '2019-03-18 22:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('Open','Responded','Closed','User reply') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Ahmad Saugi', 9, 'Responded', '2019-04-01 21:09:50', '2019-04-02 00:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_contents`
--

CREATE TABLE `ticket_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_contents`
--

INSERT INTO `ticket_contents` (`id`, `user_id`, `ticket_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 9, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ', '2019-04-01 21:09:50', '2019-04-01 21:09:50'),
(2, 1, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ', '2019-04-01 21:09:50', '2019-04-01 21:09:50'),
(3, 9, 3, '<p>Mampod<br></p>', '2019-04-01 23:21:41', '2019-04-01 23:21:41'),
(4, 1, 3, 'Lo asw<br>', '2019-04-02 00:23:17', '2019-04-02 00:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` double NOT NULL,
  `level` enum('Member','Agen','Reseller','Admin','Developer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Not Active','Active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `api_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `uplink` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `balance`, `level`, `status`, `email_verified_at`, `api_key`, `photo`, `uplink`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmad Saugi', 'ahmadsaugigis@gmail.com', '$2y$10$u/1NgkgedN5TfZowrRBLp.XM70vC5NPcnOmu4R0Hu.wyDDF4v/yGC', -1500, 'Developer', 'Active', NULL, 'awahn7QfauEpWx3vgQ6ceq0p86mtE869IJiMhdXl', '20190314041514-ajNzXOp_700b.jpg', '0', 'rEIW0r7FC8Q0UaJ53ogJBE9PQ8avSPCFxTKuaRRNnP9AuqAJeoh0BG57P8Uu', '2019-02-16 05:10:24', '2019-04-06 06:16:15'),
(3, 'ahmadsaugicf@gmail.com', 'ahmadsaugicf@gmail.com', '$2y$10$Q/fyBFy75taeXiGLVlacbObpdKdGLpqCxNkK.rHph6J4PLujFgh1G', 12611, 'Member', 'Active', NULL, 'BBPlt', 'default.png', '0', NULL, '2019-02-20 19:00:42', '2019-04-04 20:57:25'),
(4, 'testlagi', 'test@gmail.com', '$2y$10$Tah3SGj63BDD6QiaplwWmeu6bnxeuKZwDawznLWQyKhMiMuOU2juy', 2000, 'Member', 'Active', NULL, '$2y$10$vXwt.h5WsSZU34sWrBkI8eaYCsgvIG4gFXDkf2y8HA01ZBU.9Qw3e', 'default.png', '0', NULL, '2019-02-20 19:10:10', '2019-04-04 20:56:32'),
(5, 'asdz asdzxd', 'ahmadsaugigis2@gmail.com', '$2y$10$ea.WWYE1PmtJKOnsYQdPZuowfEbatjY0UscFboHGsNPYEQ.PxhdIW', 0, 'Member', 'Active', NULL, '$2y$10$0j/tV/eZNX.LtfbHvExul.AvXAjOJpU8wvTZ5tUXBFRlN.fd3Bkri', 'default.png', '0', 'Dpl778V7p9Npz8KKKhMf7k3ExN2CkAxVjjgdwsQtlL73p6gjup2vvN0tNx55', '2019-03-13 02:44:40', '2019-03-13 02:44:40'),
(6, 'amjdb askdjabs', 'azxc@gmail.com', '$2y$10$wmF3GBzLg2o6M6BfVuevEOk0sWsJUyLC8pOq9yTGtKqX9LGIg8cEK', 27000, 'Member', 'Active', NULL, '$2y$10$EoiAsx8RxyaUu7mCaExaK./8cxObmr7MVolXMZaGiXvwXs.aanc1C', 'default.png', '0', 'QdElFj2y5CAB6n8s3G8P3vSozexhKOONmKCWDw7Aht9JhmdBrh7nBTJ2xfDU', '2019-03-13 02:55:52', '2019-03-13 19:56:45'),
(7, 'kode konto', 'kontol@gmail.com', '$2y$10$e00Z/JpTmiD2qROKyTdPsOnK65znI3f3GBXK8zLa1PSUkcbDAYnou', 0, 'Member', 'Active', NULL, '$2y$10$/FDpp7Z.aTq5VFWTbytEceTFJ1IlapcrOP2RBZ1/4c/Nf1bjZaLQq', 'default.png', '0', 'B9JN4NHwiO8XEKKXsn0q1TdEc1GSTLVqIRWTrIW6YDlJnbOEz74DKiIIF4fa', '2019-03-13 02:57:26', '2019-03-13 02:57:26'),
(8, 'testlagi testlagi', 'asd@asd.com', '$2y$10$KwMa2NPJ64O8FMem6eN/gOyVpnvL6ixOE17vdWm0Ke3msHyVIWPhy', 0, 'Member', 'Active', NULL, 'mexip81TAPsHxrW0ngdYj485B92EfH65IeidSq5w', 'default.png', '0', NULL, '2019-03-13 02:58:42', '2019-03-13 03:02:43'),
(9, 'Agen', 'agen@gmail.com', '$2y$10$SjkrDPNql53mVaEnm2twrOh0aPones6mc7FRFETlN97Gs08tcosjq', 10000, 'Agen', 'Active', NULL, '$2y$10$eQTRFRd97EzCgREk0WVzjeeatGYQJ9Z.IxFWBIvSz0pUDrw9UHFaK', 'default.png', 'ahmadsaugigis@gmail.com', 'WVnk3beZo18NqF85TZZTUtUjusQouaVmrZEeWAduH1JacwWObVZkdQkIYcWV', '2019-03-17 23:39:20', '2019-03-17 23:39:20'),
(10, 'Reseller', 'reseller@gmail.com', '$2y$10$jEp5IDRI0lx7jj9FK9ejyOV4fWLPffl0f5gUy36K412MeHVtJIydO', 50000, 'Reseller', 'Active', NULL, '$2y$10$7EOxBBjWdyC6vBfTx6k6G.G.SUvrSl6z0PqvhmV6LZRmTkZg6Efme', 'default.png', 'ahmadsaugigis@gmail.com', NULL, '2019-03-17 23:44:40', '2019-03-17 23:44:40'),
(11, 'Admin', 'admin@gmail.com', '$2y$10$snFGezlV9OGiolTS7L/xyuzyVCR1WeBVcX.D/wJjjgzA2/0VXiGai', 50000, 'Admin', 'Active', NULL, '$2y$10$kouM.XdkxKgfw.gJryR0z.bWZKai6n8IC1c5yaMab8BNSO6i6zOP.', 'default.png', 'ahmadsaugigis@gmail.com', NULL, '2019-03-17 23:45:21', '2019-03-17 23:45:21'),
(12, 'asdasd', 'asdasd@gmail.com', '$2y$10$ChM1iclBgsM12BgPSkuyZ.uu2b1XrmDlrvs6PoLr7/KvMWjB3KLLa', 51500, 'Reseller', 'Active', NULL, '$2y$10$5rqs4k.EdbeWAptLPWc..OuskeLvNVPZmWPWmH1sP2GY.b4lR4bhS', 'default.png', 'ahmadsaugigis@gmail.com', NULL, '2019-03-19 06:17:27', '2019-04-06 07:09:59'),
(13, 'zxcasd zxcasd', 'zxc@gmail.com', '$2y$10$8M7fO4FnsTAH0ewlVupnXOiRGFUNIbxtQAfQz2BVOLYdRvBLYX7L2', 0, 'Member', 'Active', NULL, '$2y$10$jEo93iP.a/f1Ik7/53QOo.BGolFfcyTd15mRtYNQ5TVKkre0veej6', 'default.png', 'Server', NULL, '2019-03-20 18:55:11', '2019-03-20 18:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Available','Used') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `status`, `quantity`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'wx0HXq5qnC', 'Available', 10000.00, 1, '2019-03-18 23:06:17', '2019-03-18 23:06:17'),
(3, 'PAzAefWX6D', 'Available', 10000.00, 1, '2019-03-18 23:07:43', '2019-03-18 23:07:43'),
(4, 'halo', 'Used', 100000.00, 1, '2019-03-18 23:08:36', '2019-03-19 00:22:42'),
(5, '8C1HzqaR2A', 'Available', 10000.00, 1, '2019-03-18 23:13:58', '2019-03-18 23:13:58'),
(6, 'MSNm3rexhL', 'Available', 200000.00, 1, '2019-03-18 23:15:07', '2019-03-18 23:15:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `balance_histories`
--
ALTER TABLE `balance_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `balance_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_user_id_foreign` (`user_id`),
  ADD KEY `method` (`method`);

--
-- Indexes for table `deposit_methods`
--
ALTER TABLE `deposit_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invitation_codes`
--
ALTER TABLE `invitation_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_service_id_foreign` (`service_id`);

--
-- Indexes for table `orders_pulsas`
--
ALTER TABLE `orders_pulsas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_pulsa_user_id_foreign` (`user_id`),
  ADD KEY `orders_pulsa_service_id_foreign` (`service_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_category_id_foreign` (`category_id`),
  ADD KEY `services_provider_id_foreign` (`provider_id`);

--
-- Indexes for table `services_pulsas`
--
ALTER TABLE `services_pulsas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_pulsas_provider_id_foreign` (`provider_id`),
  ADD KEY `oprator_id` (`oprator_id`),
  ADD KEY `services_pulsas_category_id_foreign` (`category_id`);

--
-- Indexes for table `services_pulsa_operators`
--
ALTER TABLE `services_pulsa_operators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_pulsa_operators_category_id_foreign` (`category_id`);

--
-- Indexes for table `service_cats`
--
ALTER TABLE `service_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `ticket_contents`
--
ALTER TABLE `ticket_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_contents_user_id_foreign` (`user_id`),
  ADD KEY `ticket_contents_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vouchers_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `balance_histories`
--
ALTER TABLE `balance_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deposit_methods`
--
ALTER TABLE `deposit_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invitation_codes`
--
ALTER TABLE `invitation_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders_pulsas`
--
ALTER TABLE `orders_pulsas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1829;

--
-- AUTO_INCREMENT for table `services_pulsas`
--
ALTER TABLE `services_pulsas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `services_pulsa_operators`
--
ALTER TABLE `services_pulsa_operators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `service_cats`
--
ALTER TABLE `service_cats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket_contents`
--
ALTER TABLE `ticket_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `balance_histories`
--
ALTER TABLE `balance_histories`
  ADD CONSTRAINT `balance_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_ibfk_1` FOREIGN KEY (`method`) REFERENCES `deposit_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders_pulsas`
--
ALTER TABLE `orders_pulsas`
  ADD CONSTRAINT `orders_pulsa_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services_pulsas` (`id`),
  ADD CONSTRAINT `orders_pulsa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `service_cats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services_pulsas`
--
ALTER TABLE `services_pulsas`
  ADD CONSTRAINT `services_pulsas_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `service_cats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_pulsas_ibfk_1` FOREIGN KEY (`oprator_id`) REFERENCES `services_pulsa_operators` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_pulsas_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`);

--
-- Constraints for table `services_pulsa_operators`
--
ALTER TABLE `services_pulsa_operators`
  ADD CONSTRAINT `services_pulsa_operators_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `service_cats` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_contents`
--
ALTER TABLE `ticket_contents`
  ADD CONSTRAINT `ticket_contents_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_contents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD CONSTRAINT `vouchers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
