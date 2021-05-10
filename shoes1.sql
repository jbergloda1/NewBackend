-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 12:19 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoes1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `total` float NOT NULL,
  `payment` varchar(100) NOT NULL,
  `dateorder` date NOT NULL,
  `note` text NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `customer_id`, `total`, `payment`, `dateorder`, `note`, `status`, `created_at`, `updated_at`) VALUES
(41, 56, 1100000, 'Thanh toán khi nhận hàng', '2021-05-08', 'Vui lòng giao đúng sản phẩm', 1, '2021-05-08 00:42:05', '2021-05-08 00:43:26'),
(42, 57, 300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-09 18:51:20', '2021-05-09 18:51:20'),
(47, 57, 300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-09 19:30:23', '2021-05-09 19:30:23'),
(93, 57, 300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:33:37', '2021-05-10 02:33:37'),
(94, 57, 300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:34:07', '2021-05-10 02:34:07'),
(95, 57, 300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:36:45', '2021-05-10 02:36:45'),
(96, 57, 300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:36:56', '2021-05-10 02:36:56'),
(97, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:37:57', '2021-05-10 02:37:57'),
(98, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:45:43', '2021-05-10 02:45:43'),
(99, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:46:18', '2021-05-10 02:46:18'),
(100, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:48:20', '2021-05-10 02:48:20'),
(101, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:49:57', '2021-05-10 02:49:57'),
(102, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:51:49', '2021-05-10 02:51:49'),
(103, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:52:45', '2021-05-10 02:52:45'),
(104, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:56:14', '2021-05-10 02:56:14'),
(105, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 02:57:19', '2021-05-10 02:57:19'),
(106, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 03:00:11', '2021-05-10 03:00:11'),
(107, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 03:00:38', '2021-05-10 03:00:38'),
(108, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 03:03:52', '2021-05-10 03:03:52'),
(109, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 03:08:46', '2021-05-10 03:08:46'),
(110, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 03:09:15', '2021-05-10 03:09:15'),
(111, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 03:09:25', '2021-05-10 03:09:25'),
(112, 57, 1300000, 'Banking', '2021-05-10', 'Cho xac nhan banking', 1, '2021-05-10 03:14:15', '2021-05-10 03:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `bills_detail`
--

CREATE TABLE `bills_detail` (
  `id` bigint(20) NOT NULL,
  `id_bill` bigint(20) NOT NULL,
  `id_product_size_color` bigint(20) NOT NULL,
  `amount` int(10) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills_detail`
--

INSERT INTO `bills_detail` (`id`, `id_bill`, `id_product_size_color`, `amount`, `price`, `created_at`, `updated_at`) VALUES
(10, 41, 26, 7, 100000, '2021-05-08 00:42:05', '2021-05-08 00:42:05'),
(11, 41, 36, 5, 80000, '2021-05-08 00:42:05', '2021-05-08 00:42:05'),
(12, 47, 23, 10, 30000, '2021-05-09 19:30:23', '2021-05-09 19:30:23'),
(54, 93, 23, 10, 30000, '2021-05-10 02:33:37', '2021-05-10 02:33:37'),
(55, 94, 23, 10, 30000, '2021-05-10 02:34:07', '2021-05-10 02:34:07'),
(56, 95, 23, 10, 30000, '2021-05-10 02:36:45', '2021-05-10 02:36:45'),
(57, 96, 23, 10, 30000, '2021-05-10 02:36:56', '2021-05-10 02:36:56'),
(58, 97, 23, 10, 30000, '2021-05-10 02:37:58', '2021-05-10 02:37:58'),
(59, 97, 25, 10, 100000, '2021-05-10 02:37:58', '2021-05-10 02:37:58'),
(60, 98, 23, 10, 30000, '2021-05-10 02:45:43', '2021-05-10 02:45:43'),
(61, 98, 25, 10, 100000, '2021-05-10 02:45:43', '2021-05-10 02:45:43'),
(62, 99, 23, 10, 30000, '2021-05-10 02:46:18', '2021-05-10 02:46:18'),
(63, 99, 25, 10, 100000, '2021-05-10 02:46:18', '2021-05-10 02:46:18'),
(64, 100, 23, 10, 30000, '2021-05-10 02:48:20', '2021-05-10 02:48:20'),
(65, 100, 25, 10, 100000, '2021-05-10 02:48:20', '2021-05-10 02:48:20'),
(66, 101, 23, 10, 30000, '2021-05-10 02:49:57', '2021-05-10 02:49:57'),
(67, 101, 25, 10, 100000, '2021-05-10 02:49:57', '2021-05-10 02:49:57'),
(68, 102, 23, 10, 30000, '2021-05-10 02:51:49', '2021-05-10 02:51:49'),
(69, 102, 25, 10, 100000, '2021-05-10 02:51:49', '2021-05-10 02:51:49'),
(70, 103, 23, 10, 30000, '2021-05-10 02:52:45', '2021-05-10 02:52:45'),
(71, 103, 25, 10, 100000, '2021-05-10 02:52:45', '2021-05-10 02:52:45'),
(72, 104, 23, 10, 30000, '2021-05-10 02:56:15', '2021-05-10 02:56:15'),
(73, 104, 25, 10, 100000, '2021-05-10 02:56:15', '2021-05-10 02:56:15'),
(74, 105, 23, 10, 30000, '2021-05-10 02:57:19', '2021-05-10 02:57:19'),
(75, 105, 25, 10, 100000, '2021-05-10 02:57:19', '2021-05-10 02:57:19'),
(76, 106, 23, 10, 30000, '2021-05-10 03:00:11', '2021-05-10 03:00:11'),
(77, 106, 25, 10, 100000, '2021-05-10 03:00:11', '2021-05-10 03:00:11'),
(78, 107, 23, 10, 30000, '2021-05-10 03:00:38', '2021-05-10 03:00:38'),
(79, 107, 25, 10, 100000, '2021-05-10 03:00:38', '2021-05-10 03:00:38'),
(80, 108, 23, 10, 30000, '2021-05-10 03:03:52', '2021-05-10 03:03:52'),
(81, 108, 25, 10, 100000, '2021-05-10 03:03:52', '2021-05-10 03:03:52'),
(82, 109, 23, 10, 30000, '2021-05-10 03:08:46', '2021-05-10 03:08:46'),
(83, 109, 25, 10, 100000, '2021-05-10 03:08:46', '2021-05-10 03:08:46'),
(84, 110, 23, 10, 30000, '2021-05-10 03:09:15', '2021-05-10 03:09:15'),
(85, 110, 25, 10, 100000, '2021-05-10 03:09:15', '2021-05-10 03:09:15'),
(86, 112, 23, 10, 30000, '2021-05-10 03:14:15', '2021-05-10 03:14:15'),
(87, 112, 25, 10, 100000, '2021-05-10 03:14:15', '2021-05-10 03:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` int(100) NOT NULL,
  `color_id` int(100) NOT NULL,
  `size_id` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_id`, `product_id`, `color_id`, `size_id`, `quantity`, `created_at`, `updated_at`) VALUES
(10, 57, 228, 140, 125, 10, '2021-05-09 20:33:06', '2021-05-09 20:33:06'),
(11, 57, 229, 139, 126, 10, '2021-05-10 02:37:44', '2021-05-10 02:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nam', 1, '2021-03-31 02:13:23', '2021-03-31 02:13:23'),
(2, 'Nữ', 1, '2021-03-31 02:13:23', '2021-03-31 02:13:23'),
(9, 'abc', 1, '2021-04-11 20:34:20', '2021-04-11 20:34:20'),
(10, 'abcádfsadgf', 1, '2021-04-11 20:34:44', '2021-04-11 20:34:44'),
(11, 'doanhhh', 1, '2021-04-11 21:44:59', '2021-04-11 21:44:59'),
(12, 'dggggg', 1, '2021-04-11 22:46:52', '2021-04-11 22:46:52'),
(13, 'd', 1, '2021-04-11 22:59:26', '2021-04-11 22:59:26'),
(14, '0.2', 1, '2021-04-11 23:00:28', '2021-04-11 23:00:28'),
(15, 'ttt', 1, '2021-04-11 23:09:18', '2021-04-11 23:09:18'),
(16, 'Dép Nike', 1, '2021-04-11 23:45:56', '2021-04-11 23:45:56'),
(17, 'tddtt', 1, '2021-04-11 23:51:35', '2021-04-11 23:51:35'),
(18, 'Trung niên', 1, '2021-04-14 19:00:25', '2021-04-14 19:00:25'),
(19, 'Trungfd niên', 1, '2021-04-14 19:22:10', '2021-04-14 19:22:10'),
(20, 'Đoan', 1, '2021-05-04 07:25:49', '2021-05-04 07:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` bigint(20) NOT NULL,
  `color` varchar(256) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `color`, `created_at`, `updated_at`) VALUES
(139, 'Đen', '2021-04-05 23:40:34', '2021-04-05 23:40:34'),
(140, 'Xám', '2021-04-05 23:40:34', '2021-04-05 23:40:34'),
(141, 'Xanh', '2021-04-07 15:26:07', '2021-04-07 15:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(256) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `name`, `password`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(45, 'doan@gmail.com', 'Võ Phạm Tấn Đoan', '', '0337338920', 'Phú Yên', '2021-04-16 03:04:55', '2021-04-16 03:04:55'),
(52, 'admin@gmail.com', NULL, '12345678', NULL, NULL, '2021-05-07 09:22:31', '2021-05-07 09:22:31'),
(53, 'sadmin@gmail.com', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, '2021-05-07 09:23:12', '2021-05-07 09:23:12'),
(54, 'doanadmin@gmail.com', NULL, 'eyJpdiI6Im5jckd2QWRpNit2ZmVMbnFybVBBdnc9PSIsInZhbHVlIjoiZ2Q3akgzY2xITVgyamo5d3NaN1F3dz09IiwibWFjIjoiNTM1NzE0ZmE1NDNhNTJmMzE0ZGQ1ODI0YTdlOWJiNTlmNDY3NjllOWE1Y2E1YTIxODM3ZDMwYjc5YTU3ZWNhYSJ9', NULL, NULL, '2021-05-07 09:31:35', '2021-05-07 09:31:35'),
(55, 'sssdsdsdoanadmin@gmail.com', NULL, 'eyJpdiI6InFLMmNpMGlRU1I5d2lISkJzdU44SUE9PSIsInZhbHVlIjoiRXY5akhwVUtBaFd6Q0lFdDNvVXU3UT09IiwibWFjIjoiODBlOWU5NzIzMDI0MmMxMjc3NjdkZjkxZDIwY2Y3MWNjZjQ0MGNiZTdiNjFjNjg2NjBlMWUyODkyZGEyZDg2MiJ9', NULL, NULL, '2021-05-07 09:50:57', '2021-05-07 09:50:57'),
(56, 'hoainhu@gmail.com', 'Võ Phạm Tấn Đoan', 'eyJpdiI6ImQzektQOExEa2x1RStSeGdPUDBUK3c9PSIsInZhbHVlIjoiTVF3Tk14bkx2bGhMQnJkL2NNZ2htU0RwVUZ5eVc3UlhxWVBNOXpkR2d5bz0iLCJtYWMiOiIxZjcxZWU0YzNkNDUyZDY5MzU5ZmZkMzA3OTA5ZDQxNWVjNGVlZmU3YTZmZGZjOTc3M2U3MjBmNjE3Yzg5NGY2In0=', '0337338920', 'Đông Hòa, Phú Yên', '2021-05-07 10:06:28', '2021-05-08 00:20:42'),
(57, 'leezet@gmail.com', 'Doan Nguyen', 'eyJpdiI6InpaSXBVNTFZQzFvcXhvc2VFaGxka3c9PSIsInZhbHVlIjoib2FnNWVpcmlpamVGOGRraC9iRnNGNzRtNjIvN21Nbi9XclJQZEJpRHpoZz0iLCJtYWMiOiIyMDA2NTk2YzM1NWJjNjI3NzQ2YTM1M2JhNDI4YjdkOTU4Nzk4M2ZlYTUxODc3ZDE0YTQ5YTYxYmQxNjZmMjg0In0=', '0337338920', 'Quy Nhơn, Bình Định', '2021-05-09 18:36:33', '2021-05-09 18:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(100) DEFAULT NULL,
  `img` varchar(256) NOT NULL,
  `note` text NOT NULL,
  `import_price` double NOT NULL,
  `export_price` double DEFAULT NULL,
  `sale` int(100) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `amount`, `img`, `note`, `import_price`, `export_price`, `sale`, `status`, `supplier_id`, `category_id`, `created_at`, `updated_at`) VALUES
(227, 'Giày thể thao nữ', 500, '657728473.png', 'Giày nhập khẩu', 100000, 30000, 30, 1, 1, 1, '2021-04-11 19:07:57', '2021-04-11 19:07:57'),
(228, 'Giày thể thao nam', 500, '118294873.png', 'Giày nhập khẩu', 100000, 30000, 30, 1, 1, 1, '2021-04-11 19:08:25', '2021-04-11 19:08:25'),
(229, 'Dép Nike', 93, '1245428979.png', 'Dép có vai', 100000, 0, 0, 1, 1, 1, '2021-04-11 23:15:52', '2021-05-08 00:43:26'),
(230, 'Giày thể thao nữ nike', 1000, '1797230646.jpg', 'Giày thể thao nữ chất lượng cao, hàng nhập khẩu', 100000, 80000, 20, 1, 1, 2, '2021-05-04 08:21:29', '2021-05-04 08:21:29'),
(231, 'Huỳnh Thị Hoài Như', 400, '1330958637.jpg', 'Huỳnh Thị Hoài Như', 100000, 90000, 10, 1, 1, 2, '2021-05-04 08:22:03', '2021-05-04 08:43:22'),
(232, 'Giày thể thao nữ nikeffff', 1000, '23210120.jpg', 'Giày thể thao nữ chất lượng cao, hàng nhập khẩu', 100000, 80000, 20, 1, 1, 2, '2021-05-04 08:36:24', '2021-05-04 08:36:24'),
(233, 'Giày thể thao nữ nikeffffsdsdsds', 1000, '727918099.jpg', 'Giày thể thao nữ chất lượng cao, hàng nhập khẩu', 100000, 80000, 20, 1, 1, 2, '2021-05-04 08:36:36', '2021-05-04 08:36:36'),
(234, 'Giày', 992, '1239509936.jpg', 'Giày thể thao nữ chất lượng cao, hàng nhập khẩu', 100000, 80000, 20, 1, 1, 2, '2021-05-04 08:38:22', '2021-05-08 00:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_size_color`
--

CREATE TABLE `product_size_color` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `size_id` bigint(20) NOT NULL,
  `color_id` bigint(20) NOT NULL,
  `amount` int(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_size_color`
--

INSERT INTO `product_size_color` (`id`, `product_id`, `size_id`, `color_id`, `amount`, `created_at`, `updated_at`) VALUES
(21, 227, 125, 140, 250, '2021-04-11 19:07:57', '2021-04-11 19:07:57'),
(22, 227, 126, 139, 250, '2021-04-11 19:07:57', '2021-04-11 19:07:57'),
(23, 228, 125, 140, 250, '2021-04-11 19:08:25', '2021-04-11 19:08:25'),
(25, 229, 126, 139, 50, '2021-04-11 23:15:52', '2021-04-11 23:15:52'),
(26, 229, 125, 141, 43, '2021-04-11 23:15:52', '2021-05-08 00:43:26'),
(27, 230, 125, 140, 500, '2021-05-04 08:21:29', '2021-05-04 08:21:29'),
(28, 230, 126, 141, 500, '2021-05-04 08:21:29', '2021-05-04 08:21:29'),
(29, 231, 126, 139, 200, '2021-05-04 08:22:03', '2021-05-04 08:34:11'),
(30, 231, 125, 140, 200, '2021-05-04 08:22:03', '2021-05-04 08:34:11'),
(31, 232, 125, 140, 500, '2021-05-04 08:36:24', '2021-05-04 08:36:24'),
(32, 232, 126, 141, 500, '2021-05-04 08:36:24', '2021-05-04 08:36:24'),
(33, 233, 125, 140, 500, '2021-05-04 08:36:36', '2021-05-04 08:36:36'),
(34, 233, 126, 141, 500, '2021-05-04 08:36:36', '2021-05-04 08:36:36'),
(35, 234, 125, 140, 500, '2021-05-04 08:38:22', '2021-05-04 08:38:22'),
(36, 234, 126, 141, 492, '2021-05-04 08:38:22', '2021-05-08 00:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `session_users`
--

CREATE TABLE `session_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refresh_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_expried` datetime NOT NULL,
  `refresh_token_expried` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session_users`
--

INSERT INTO `session_users` (`id`, `token`, `refresh_token`, `token_expried`, `refresh_token_expried`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1hSrr4qoKNsFzXmMVfxUZMsXhg1FW90IFSZ8UXY2', 'ZCdW8KhcDun2gum2C9r9xPCFhA0jJdONg2Fk732M', '2021-05-06 10:06:47', '2022-04-01 10:06:47', 5, '2021-04-06 03:06:47', '2021-04-06 03:06:47'),
(2, 'RQ80quTuV9kSJ2fKIftDFYZYIcG24OLSr8nVQQiN', 'Gv0IJ9DFaxlf51X7ThLO9ctKL7fYOpuxG4P7t7j1', '2021-06-03 16:38:36', '2022-04-29 16:38:36', 28, '2021-05-04 09:38:36', '2021-05-04 09:38:36'),
(3, 'hmt42xjPpxQPBztGZ18hXJClNLPr2mCHFEMgrmRA', '7nZqtntfioEWjDX8UYQ3gw7kuVOOQ7EWXKUwjtaq', '2021-06-09 01:29:13', '2022-05-05 01:29:13', 29, '2021-05-09 18:29:13', '2021-05-09 18:29:13'),
(4, 'lGhdL1NJ6abO20k3j7VAZKVbNxf2LkRMhZjAX1KJ', 'y2OSm1UoTv2KE9EgJPFZPRHkdsAqiu3GL8tL6SWY', '2021-06-09 02:42:09', '2022-05-05 02:42:09', 30, '2021-05-09 19:42:09', '2021-05-09 19:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` bigint(20) NOT NULL,
  `size` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `size`, `created_at`, `updated_at`) VALUES
(125, 39, NULL, NULL),
(126, 40, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `category_id`, `name`, `address`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nike', 'USA', '1232456', 1, '2021-03-31 04:07:32', '2021-03-31 04:07:32'),
(2, 2, 'ADIDAS', 'Việt Nam', '963852741', 1, '2021-03-31 04:07:32', '2021-03-31 04:07:32'),
(12, 1, 'Đoan', 'Phú Yên', '1232456', 1, '2021-04-06 09:45:43', '2021-04-06 09:45:43'),
(18, 1, 'VO Pham Tan Doan', 'Phu Yen', '0337338920', 1, '2021-05-04 07:54:59', '2021-05-04 07:59:33'),
(19, 1, 'Zét lê', 'Quy Nhơn', '0369852147', 1, '2021-05-07 06:18:28', '2021-05-07 06:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(256) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `img` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `code`, `name`, `dateofbirth`, `phone`, `address`, `email`, `email_verified_at`, `img`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'NV001', 'Võ Phạm Tấn Đoan', '1999-02-03', '0123456789', 'Phú Yên', 'admin@gmail.com', NULL, '1158048706.jpg', '$2y$10$ThKejiPLQJDeH2OudfdtMOCFkMBlkSlCGtUa8PJQ.qXym/32LwjFe', 1, 1, NULL, '2021-04-09 01:21:48', '2021-05-04 09:15:23'),
(28, 'NV003', 'Lê Zét', '1997-05-06', '0337338920', 'Phú Yên', 'lezet@gmail.com', NULL, '1017908861.jpg', '$2y$10$lLowtt8Nd8cyIMkYrlWG..L6vvp71DGo2dbVw7SVfC8GPnowpF5Jy', 1, 1, NULL, '2021-05-04 08:53:12', '2021-05-04 09:00:00'),
(29, 'NV012', 'Phap Dinh', '1999-02-03', '0665987216', 'Song Cau - Phu Yen', 'phapdinh@gmail.com', NULL, '1065373544.jpg', '$2y$10$cv6ElXpKNmAaSeCVy4K0duXQyjM3a9fFjv0f/TI19qezAHUM/0HmO', 1, 1, NULL, '2021-05-09 18:28:45', '2021-05-09 18:28:45'),
(30, 'Admin01', 'nhat linh', '1999-02-03', '0665987216', 'Song Cau - Phu Yen', 'nhatlinh@gmail.com', NULL, '1165983334.jpg', '$2y$10$7uZh4ujYJMPWMKohZsVzcecTn3JSf.tB/N5QWghh2Y8wk0FKjePY2', 1, 1, NULL, '2021-05-09 19:41:31', '2021-05-09 19:41:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `bills_detail`
--
ALTER TABLE `bills_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bill` (`id_bill`),
  ADD KEY `id_product_size_color` (`id_product_size_color`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_size_color`
--
ALTER TABLE `product_size_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Indexes for table `session_users`
--
ALTER TABLE `session_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `bills_detail`
--
ALTER TABLE `bills_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `product_size_color`
--
ALTER TABLE `product_size_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `session_users`
--
ALTER TABLE `session_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `bills_detail`
--
ALTER TABLE `bills_detail`
  ADD CONSTRAINT `bills_detail_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id`),
  ADD CONSTRAINT `bills_detail_ibfk_3` FOREIGN KEY (`id_product_size_color`) REFERENCES `product_size_color` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `product_size_color`
--
ALTER TABLE `product_size_color`
  ADD CONSTRAINT `product_size_color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_size_color_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`),
  ADD CONSTRAINT `product_size_color_ibfk_3` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
