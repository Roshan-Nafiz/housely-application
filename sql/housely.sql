-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2022 at 03:18 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `housely`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_much` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `name`, `how_much`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Properties Sell', 1548, 1, '2022-12-17 20:29:21', '2022-12-17 20:29:21'),
(2, 'Award Gained', 25, 1, '2022-12-17 20:30:26', '2022-12-17 20:30:26'),
(3, 'Years Experience', 9, 1, '2022-12-17 20:30:34', '2022-12-17 20:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` text COLLATE utf8mb4_unicode_ci,
  `linkedin_link` text COLLATE utf8mb4_unicode_ci,
  `instagram_link` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `name`, `speciality`, `image`, `facebook_link`, `linkedin_link`, `instagram_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jack John', 'Designer', '1671330361.jpg', '#', '#', '#', 1, '2022-12-17 20:26:01', '2022-12-17 20:26:01'),
(2, 'Krista John', 'Developer', '1671330382.jpg', '#', '#', '#', 1, '2022-12-17 20:26:22', '2022-12-17 20:26:22'),
(3, 'Roger Jackson', 'Creator', '1671330401.jpg', '#', '#', '#', 1, '2022-12-17 20:26:41', '2022-12-17 20:26:41'),
(4, 'Johnny English', 'Designer', '1671330426.jpg', '#', '#', '#', 1, '2022-12-17 20:27:06', '2022-12-17 20:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `sub_title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Easy way to find your<br> dream property', 'A great plateform to buy your properties without any agent or commisions.', '1671329739.jpg', 1, '2022-12-17 20:15:39', '2022-12-17 20:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `house_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Amazon', '1671330249.png', 1, '2022-12-17 20:24:09', '2022-12-17 20:24:09'),
(2, 'Google', '1671330267.png', 1, '2022-12-17 20:24:27', '2022-12-17 20:24:27'),
(3, 'Lenovo', '1671330274.png', 1, '2022-12-17 20:24:34', '2022-12-17 20:24:34'),
(4, 'PayPal', '1671330283.png', 1, '2022-12-17 20:24:43', '2022-12-17 20:24:43'),
(5, 'Shopify', '1671330294.png', 1, '2022-12-17 20:24:54', '2022-12-17 20:24:54'),
(6, 'Spotify', '1671330308.png', 1, '2022-12-17 20:25:08', '2022-12-17 20:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Apartment', '1671329872.jpg', 1, '2022-12-17 20:17:52', '2022-12-17 20:17:52'),
(2, 'Houses', '1671329885.jpg', 1, '2022-12-17 20:18:05', '2022-12-17 20:18:05'),
(3, 'Home Town', '1671329894.jpg', 1, '2022-12-17 20:18:14', '2022-12-17 20:18:14'),
(4, 'Offices', '1671329903.jpg', 1, '2022-12-17 20:18:23', '2022-12-17 20:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `description`, `icon_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Comfortable', 'If the distribution of letters and \'words\' is random, the reader will not be distracted from making.', '<i class=\"mdi mdi-cards-heart\"></i>', 1, '2022-12-17 20:19:33', '2022-12-17 20:22:03'),
(2, 'Extra Security', 'If the distribution of letters and \'words\' is random, the reader will not be distracted from making.', '<i class=\"mdi mdi-shield-sun\"></i>', 1, '2022-12-17 20:20:00', '2022-12-17 20:20:00'),
(3, 'Luxury', 'If the distribution of letters and \'words\' is random, the reader will not be distracted from making.', '<i class=\"mdi mdi-star\"></i>', 1, '2022-12-17 20:20:27', '2022-12-17 20:20:27'),
(4, 'Best Price', 'If the distribution of letters and \'words\' is random, the reader will not be distracted from making.', '<i class=\"mdi mdi-currency-usd\"></i>', 1, '2022-12-17 20:20:57', '2022-12-17 20:20:57'),
(5, 'Stratagic Location', 'If the distribution of letters and \'words\' is random, the reader will not be distracted from making.', '<i class=\"mdi mdi-map-marker\"></i>', 1, '2022-12-17 20:21:16', '2022-12-17 20:21:16'),
(6, 'Efficient', 'If the distribution of letters and \'words\' is random, the reader will not be distracted from making.', '<i class=\"mdi mdi-chart-arc\"></i>', 1, '2022-12-17 20:21:40', '2022-12-17 20:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `develop_by` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `image`, `short_description`, `address`, `email`, `phone`, `develop_by`, `status`, `created_at`, `updated_at`) VALUES
(1, '1671330837.png', 'A great plateform to buy, sell and rent your properties without any agent or commisions.', 'C/54 Laxmipur Ralway, Suite 558, Rajshahi, Bangladesh', 'contact.roshannafiz@gmail.com', '+880 01862701717', 'Roshan Nafiz', 1, '2022-12-17 20:33:02', '2022-12-17 20:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `house_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_price` int NOT NULL,
  `house_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `it_feature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `house_sqf` int NOT NULL,
  `house_bed` int NOT NULL,
  `house_bath` int NOT NULL,
  `day_on_house` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `category_id`, `house_title`, `house_price`, `house_description`, `image`, `gallery_image`, `it_feature`, `house_sqf`, `house_bed`, `house_bath`, `day_on_house`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '10765 Hillshire Ave, Baton Rouge, LA 70810, USA', 1862, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671331192.jpg', '[\"91299a41773c667d2ee8cddc3f6eeb64.jpg\",\"943aa0fcda4ee2901a7de9321663b114.jpg\",\"b53477c2821c1bf0da5d40e57b870d35.jpg\",\"2990cb071c6413d6cde1512f6474506a.jpg\"]', '0', 800, 5, 3, 120, 1, '2022-12-17 20:39:52', '2022-12-17 20:39:52'),
(2, 2, '59345 STONEWALL DR, Plaquemine, LA 70764, USA', 5800, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671331254.jpg', '[\"8bdb5058376143fa358981954e7626b8.jpg\",\"e834cb114d33f729dbc9c7fb0c6bb607.jpg\",\"ba3c95c2962d3aab2f6e667932daa3c5.jpg\",\"a3bf6e4db673b6449c2f7d13ee6ec9c0.jpg\"]', '0', 700, 3, 1, 80, 1, '2022-12-17 20:40:54', '2022-12-17 20:40:54'),
(3, 3, '3723 SANDBAR DR, Addis, LA 70710, USA', 3499, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671331299.jpg', '[\"f5e647292cc4e1064968ca62bebe7e47.jpg\",\"581b41df0cd50ace849e061ef74827fc.jpg\",\"0f2c9a93eea6f38fabb3acb1c31488c6.jpg\",\"8e54d6b523b279543ac12a0f7333cd3c.jpg\"]', '1', 600, 4, 1, 100, 1, '2022-12-17 20:41:39', '2022-12-17 20:55:20'),
(4, 4, 'Lot 21 ROYAL OAK DR, Prairieville, LA 70769, USA', 4005, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671331362.jpg', '[\"02180771a9b609a26dcea07f272e141f.jpg\",\"8e2c381d4dd04f1c55093f22c59c3a08.jpg\",\"1177967c7957072da3dc1db4ceb30e7a.jpg\",\"0e64a7b00c83e3d22ce6b3acf2c582b6.jpg\"]', '0', 900, 2, 1, 150, 1, '2022-12-17 20:42:42', '2022-12-17 20:42:42'),
(5, 1, '710 BOYD DR, Unit #1102, Baton Rouge, LA 70808, USA', 2900, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671331433.jpg', '[\"d073bb8d0c47f317dd39de9c9f004e9d.jpg\",\"8e987cf1b2f1f6ffa6a43066798b4b7f.jpg\",\"d7b431b1a0cc5f032399870ff4710743.jpg\",\"a16f3a5bda35f1de87328623f0a1711f.jpg\"]', '1', 400, 2, 2, 75, 1, '2022-12-17 20:43:53', '2022-12-17 20:55:21'),
(6, 4, '5133 MCLAIN WAY, Baton Rouge, LA 70809, USA', 5400, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671331578.jpg', '[\"3f088ebeda03513be71d34d214291986.jpg\",\"ecb9fe2fbb99c31f567e9823e884dbec.jpg\",\"6bb56208f672af0dd65451f869fedfd9.jpg\",\"c0a5a65e55124eae3388586316a25f57.jpg\"]', '0', 950, 4, 2, 45, 1, '2022-12-17 20:46:18', '2022-12-17 20:46:18'),
(7, 2, '84865 Hillshire Ave, Baton Rouge, LA 70810, USA', 4285, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671331754.jpg', '[\"ff84a9f3c0d335d25413dd8dfc9b2e8f.jpg\",\"1680829293f2a8541efa2647a0290f88.jpg\",\"b9b852ac7bd1776bc5ac5ce3b41d8af7.jpg\",\"4ca9764c98c203d7bc747cbce9d9174f.jpg\"]', '1', 428, 4, 2, 250, 1, '2022-12-17 20:49:14', '2022-12-17 20:55:22'),
(8, 4, 'Lot 48 ROYAL OAK DR, Prairieville, LA 70769, USA', 7500, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671331816.jpg', '[\"418db2ea5d227a9ea8db8e5357ca2084.jpg\",\"75b9b6dc7fe44437c6e0a69fd863dbab.jpg\",\"7f367281bba91bd682d613522a67949a.jpg\",\"fe709c654eac84d5239d1a12a4f71877.jpg\"]', '1', 560, 8, 5, 140, 1, '2022-12-17 20:50:16', '2022-12-17 20:55:32'),
(9, 3, '850 BOYD DR, Unit #1102, Baton Rouge, LA 70808, USA', 6900, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671331855.jpg', '[\"99cd3843754d20ec3c5885d805db8a32.jpg\",\"b7a782741f667201b54880c925faec4b.jpg\",\"73231e53eeef362c814c8522f5257286.jpg\",\"6048ff4e8cb07aa60b6777b6f7384d52.jpg\"]', '0', 900, 4, 3, 70, 1, '2022-12-17 20:50:55', '2022-12-17 20:55:32'),
(10, 1, '4884 STONEWALL DR, Plaquemine, LA 70764, USA', 4854, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671331914.jpg', '[\"1ee942c6b182d0f041a2312947385b23.jpg\",\"393c55aea738548df743a186d15f3bef.jpg\",\"f29e2360ef277f77595dfae0aab78138.jpg\",\"42cbf4730aeac1d645324d4818104826.jpg\"]', '0', 490, 4, 2, 85, 1, '2022-12-17 20:51:54', '2022-12-17 20:51:54'),
(11, 2, '7875 SANDBAR DR, Addis, LA 70710, USA', 3000, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671331977.jpg', '[\"1c330c47cabfad26af32d6249919ecb8.jpg\",\"db9eeb7e678863649bce209842e0d164.jpg\",\"a399f7f1554f59cecb453623c1c2a196.jpg\",\"d8567273b20e64233b575a130159a15d.jpg\"]', '1', 794, 3, 2, 89, 1, '2022-12-17 20:52:57', '2022-12-17 20:55:35'),
(12, 1, '236 SANDBAR DR, Addis, LA 70710, USA', 5200, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p><p class=\"text-slate-400 mt-4\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; margin-top: 1rem !important; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', '1671332095.jpg', '[\"4c07fe24771249c343e70c32289c1192.jpg\",\"0d8080853a54f8985276b0130266a657.jpg\",\"2ea19e760aeeeeeb813a2406d0d31a25.jpg\",\"0332d694daab22e0e0eaf7a5e88433f9.jpg\"]', '1', 690, 4, 2, 170, 1, '2022-12-17 20:54:55', '2022-12-17 20:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_14_060909_create_banners_table', 1),
(6, '2022_09_27_052838_create_features_table', 1),
(7, '2022_10_02_050600_create_brands_table', 1),
(8, '2022_10_03_044900_create_categories_table', 1),
(9, '2022_10_16_054117_create_houses_table', 1),
(10, '2022_10_28_101849_create_agents_table', 1),
(11, '2022_10_29_152955_create_socials_table', 1),
(12, '2022_11_08_040059_create_works_table', 1),
(13, '2022_11_11_141613_create_footers_table', 1),
(14, '2022_11_13_042809_create_privacies_table', 1),
(15, '2022_11_13_051002_create_achievements_table', 1),
(16, '2022_11_14_045607_create_bookings_table', 1),
(17, '2022_11_15_033022_create_payments_table', 1),
(18, '2022_11_17_162549_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `house_id` int NOT NULL,
  `total_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locality` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `payment_id`, `payer_id`, `payer_email`, `amount`, `currency`, `payment_status`, `user_id`, `house_id`, `total_amount`, `first_name`, `last_name`, `email`, `phone`, `country`, `state`, `locality`, `post_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PAYID-MOPIJFQ5CE17067NK406643A', '993MWTR6ASZ9U', 'sb-i7xaq23548521@personal.example.com', 7500.00, 'USD', 'approved', 1, 8, '7500', 'MD ROSHAN SAIHAM', 'SHAKH', 'user@user.com', '+880 01862701717', 'Bangladesh', 'Rajshahi', 'Tanore', '6526', 'Approved', '2022-12-17 21:10:54', '2022-12-17 21:10:54');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

CREATE TABLE `privacies` (
  `id` bigint UNSIGNED NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacies`
--

INSERT INTO `privacies` (`id`, `overview`, `information`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">It seems that only fragments of the original text remain in the Lorem Ipsum texts used today. One may speculate that over the course of time certain letters were added or deleted at various positions within the text.</p><p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">In the 1960s, the text suddenly became known beyond the professional circle of typesetters and layout designers when it was used for Letraset sheets (adhesive letters on transparent film, popular until the 1980s) Versions of the text were subsequently included in DTP programmes such as PageMaker etc.</p><p class=\"text-slate-400\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-scroll-snap-strictness:proximity; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246 / 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.625; font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px; --tw-text-opacity:1  !important; color: rgb(148 163 184 / var(--tw-text-opacity))  !important;\">There is now an abundance of readable dummy texts. These are usually used when a text is required purely to fill a space. These alternatives to the classic Lorem Ipsum texts are often amusing and tell short, funny or nonsensical stories.</p>', '<p><span style=\"color: rgb(148, 163, 184); font-family: &quot;League Spartan&quot;, sans-serif; font-size: 17px;\">In the 1960s, the text suddenly became known beyond the professional circle of typesetters and layout designers when it was used for Letraset sheets (adhesive letters on transparent film, popular until the 1980s) Versions of the text were subsequently included in DTP programmes such as PageMaker etc.</span><br></p>', 1, '2022-12-17 20:31:13', '2022-12-17 20:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `social_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `social_name`, `icon_code`, `icon_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', '<i class=\"mdi mdi-facebook\"></i>', '#', 1, '2022-12-17 20:35:04', '2022-12-17 20:35:31'),
(2, 'Instagram', '<i class=\"mdi mdi-instagram\"></i>', '#', 1, '2022-12-17 20:35:54', '2022-12-17 20:35:54'),
(3, 'Linkedin', '<i class=\"mdi mdi-linkedin\"></i>', '#', 1, '2022-12-17 20:36:12', '2022-12-17 20:36:12'),
(4, 'Twitter', '<i class=\"mdi mdi-twitter\"></i>', '#', 1, '2022-12-17 20:36:29', '2022-12-17 20:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `address`, `date_of_birth`, `image`, `email`, `email_verified_at`, `password`, `user_type`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', '+880 01862701717', 'C/54 Laxmipur Ralway, Suite 558, Rajshahi, Bangladesh', '2003-09-29', '1671331058.jpg', 'user@user.com', NULL, '$2y$10$Zcsdq8kWn34pAJAe1vDmfuSeBKf5XM4.J5FRw7k08wto7YsskC2Km', 0, 1, NULL, '2022-12-17 20:13:52', '2022-12-17 20:37:38'),
(2, 'Admin', '+880 01862701717', 'C/54 Laxmipur Ralway, Suite 558, Rajshahi, Bangladesh', '2022-12-20', '1671331096.png', 'admin@admin.com', NULL, '$2y$10$IzVu3mq2GQahnbE1gCWgJ.d4q3dx7pNq5.driUSa9/UaQNT48Caa.', 1, 1, NULL, '2022-12-17 20:13:52', '2022-12-17 20:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `description`, `icon_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Evaluate Property', 'If the distribution of letters and \'words\' is random, the reader will not be distracted from making.', '<i class=\"uil uil-estate\"></i>', 1, '2022-12-17 20:22:48', '2022-12-17 20:22:48'),
(2, 'Meeting with Agent', 'If the distribution of letters and \'words\' is random, the reader will not be distracted from making.', '<i class=\"uil uil-bag\"></i>', 1, '2022-12-17 20:23:12', '2022-12-17 20:23:12'),
(3, 'Close the Deal', 'If the distribution of letters and \'words\' is random, the reader will not be distracted from making.', '<i class=\"uil uil-key-skeleton\"></i>', 1, '2022-12-17 20:23:35', '2022-12-17 20:23:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
