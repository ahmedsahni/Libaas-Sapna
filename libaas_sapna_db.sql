-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2026 at 12:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libaas_sapna_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add product size', 8, 'add_productsize'),
(30, 'Can change product size', 8, 'change_productsize'),
(31, 'Can delete product size', 8, 'delete_productsize'),
(32, 'Can view product size', 8, 'view_productsize'),
(33, 'Can add product image', 9, 'add_productimage'),
(34, 'Can change product image', 9, 'change_productimage'),
(35, 'Can delete product image', 9, 'delete_productimage'),
(36, 'Can view product image', 9, 'view_productimage'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order item', 12, 'add_orderitem'),
(46, 'Can change order item', 12, 'change_orderitem'),
(47, 'Can delete order item', 12, 'delete_orderitem'),
(48, 'Can view order item', 12, 'view_orderitem'),
(49, 'Can add payment transaction', 13, 'add_paymenttransaction'),
(50, 'Can change payment transaction', 13, 'change_paymenttransaction'),
(51, 'Can delete payment transaction', 13, 'delete_paymenttransaction'),
(52, 'Can view payment transaction', 13, 'view_paymenttransaction'),
(53, 'Can add sales analytics', 14, 'add_salesanalytics'),
(54, 'Can change sales analytics', 14, 'change_salesanalytics'),
(55, 'Can delete sales analytics', 14, 'delete_salesanalytics'),
(56, 'Can view sales analytics', 14, 'view_salesanalytics'),
(57, 'Can add stock alert', 15, 'add_stockalert'),
(58, 'Can change stock alert', 15, 'change_stockalert'),
(59, 'Can delete stock alert', 15, 'delete_stockalert'),
(60, 'Can view stock alert', 15, 'view_stockalert'),
(61, 'Can add recommendation', 16, 'add_recommendation'),
(62, 'Can change recommendation', 16, 'change_recommendation'),
(63, 'Can delete recommendation', 16, 'delete_recommendation'),
(64, 'Can view recommendation', 16, 'view_recommendation'),
(65, 'Can add review', 17, 'add_review'),
(66, 'Can change review', 17, 'change_review'),
(67, 'Can delete review', 17, 'delete_review'),
(68, 'Can view review', 17, 'view_review'),
(69, 'Can add wishlist', 18, 'add_wishlist'),
(70, 'Can change wishlist', 18, 'change_wishlist'),
(71, 'Can delete wishlist', 18, 'delete_wishlist'),
(72, 'Can view wishlist', 18, 'view_wishlist');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(20) DEFAULT NULL,
  `added_at` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'accounts', 'user'),
(1, 'admin', 'logentry'),
(15, 'alerts', 'stockalert'),
(14, 'analytics', 'salesanalytics'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(10, 'cart', 'cart'),
(4, 'contenttypes', 'contenttype'),
(11, 'orders', 'order'),
(12, 'orders', 'orderitem'),
(13, 'payments', 'paymenttransaction'),
(7, 'products', 'product'),
(9, 'products', 'productimage'),
(8, 'products', 'productsize'),
(18, 'products', 'wishlist'),
(16, 'recommendations', 'recommendation'),
(17, 'reviews', 'review'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-12-09 07:00:36.181679'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-12-09 07:00:36.288839'),
(3, 'auth', '0001_initial', '2025-12-09 07:00:36.639005'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-12-09 07:00:36.723024'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-12-09 07:00:36.737336'),
(6, 'auth', '0004_alter_user_username_opts', '2025-12-09 07:00:36.749461'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-12-09 07:00:36.762915'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-12-09 07:00:36.770008'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-12-09 07:00:36.782496'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-12-09 07:00:36.793255'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-12-09 07:00:36.806892'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-12-09 07:00:36.835512'),
(13, 'auth', '0011_update_proxy_permissions', '2025-12-09 07:00:36.850210'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-12-09 07:00:36.862655'),
(15, 'accounts', '0001_initial', '2025-12-09 07:00:37.233343'),
(16, 'accounts', '0002_user_email_verified_user_google_id_and_more', '2025-12-09 07:00:37.515445'),
(17, 'admin', '0001_initial', '2025-12-09 07:00:37.712586'),
(18, 'admin', '0002_logentry_remove_auto_add', '2025-12-09 07:00:37.735140'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2025-12-09 07:00:37.752252'),
(20, 'products', '0001_initial', '2025-12-09 07:00:38.081481'),
(21, 'alerts', '0001_initial', '2025-12-09 07:00:38.244729'),
(22, 'orders', '0001_initial', '2025-12-09 07:00:38.647666'),
(23, 'analytics', '0001_initial', '2025-12-09 07:00:38.935857'),
(24, 'cart', '0001_initial', '2025-12-09 07:00:39.187341'),
(25, 'payments', '0001_initial', '2025-12-09 07:00:39.350069'),
(26, 'products', '0002_add_image_field', '2025-12-09 07:00:39.412656'),
(27, 'recommendations', '0001_initial', '2025-12-09 07:00:39.658111'),
(28, 'reviews', '0001_initial', '2025-12-09 07:00:39.960685'),
(29, 'sessions', '0001_initial', '2025-12-09 07:00:40.016149'),
(30, 'products', '0003_wishlist', '2025-12-09 07:45:50.820103'),
(31, 'orders', '0002_order_transaction_id_alter_order_payment_method', '2026-04-28 20:27:48.992500'),
(32, 'alerts', '0002_stockalert_size', '2026-05-04 08:20:38.730488'),
(33, 'orders', '0003_alter_order_payment_method', '2026-05-04 08:20:38.800602'),
(34, 'accounts', '0003_user_phone_verified', '2026-05-07 06:35:06.572818');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `shipping_address` longtext NOT NULL,
  `shipping_city` varchar(100) NOT NULL,
  `shipping_phone` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `total_amount`, `payment_method`, `payment_status`, `order_status`, `shipping_address`, `shipping_city`, `shipping_phone`, `customer_id`, `transaction_id`) VALUES
(6, '2026-04-28 21:41:14.737385', 3800.00, 'cod', 'pending', 'pending_payment', 'v2hkve1d', 'qwjr', 'wqugr', 2, ''),
(7, '2026-04-29 13:39:26.212775', 9000.00, 'cod', 'pending', 'paid', 'sadsds', 'dsadsd', '23233434', 2, ''),
(8, '2026-04-29 13:52:47.423852', 3800.00, 'cod', 'pending', 'pending_payment', 'ersdfd', 'dfdf', '234332423423', 2, ''),
(11, '2026-05-04 08:23:49.705430', 4200.00, 'card', 'paid', 'paid', '7C/Z NST Sargodha, Punjab', 'Sargodha', '03214858418', 5, ''),
(13, '2026-05-07 07:01:38.076866', 3800.00, 'card', 'paid', 'paid', '7C/Z NST Sargodha, Punjab', 'Sargodha', '03214858418', 5, ''),
(14, '2026-05-07 07:30:55.325505', 4200.00, 'card', 'paid', 'paid', '7C/Z NST Sargodha, Punjab', 'Sargodha', '03214858418', 5, ''),
(15, '2026-05-07 08:13:44.436621', 2700.00, 'cod', 'pending', 'pending_payment', '7C/Z NST Sargodha, Punjab', 'Sargodha', '03214858418', 5, ''),
(16, '2026-05-07 08:22:55.290476', 2700.00, 'cod', 'pending', 'processing', '7C/Z NST Sargodha, Punjab', 'Sargodha', '+923214858418', 5, ''),
(17, '2026-05-07 08:29:57.456049', 5000.00, 'easypaisa', 'pending', 'processing', '7C/Z NST Sargodha, Punjab', 'Sargodha', '03214858418', 5, 'hdshjs9229'),
(18, '2026-05-07 09:47:45.217224', 6000.00, 'cod', 'pending', 'processing', '7C/Z NST Sargodha, Punjab', 'Sargodha', '03368850514', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` varchar(20) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `quantity`, `price`, `size`, `order_id`, `product_id`) VALUES
(13, 1, 3800.00, NULL, 6, 105),
(14, 2, 4500.00, 'S', 7, 77),
(15, 1, 3800.00, 'L', 8, 105),
(20, 1, 3800.00, 'M', 13, 105),
(21, 1, 4200.00, 'M', 14, 104),
(22, 1, 2700.00, 'M', 15, 98),
(23, 1, 2700.00, 'L', 16, 98),
(24, 1, 5000.00, NULL, 17, 95),
(25, 1, 6000.00, 'M', 18, 103);

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `payment_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `payment_date` datetime(6) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `name_urdu` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `category` varchar(20) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `fabric` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `low_stock_threshold` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `sku`, `name`, `name_urdu`, `description`, `category`, `subcategory`, `gender`, `fabric`, `color`, `price`, `discount`, `stock_qty`, `low_stock_threshold`, `is_active`, `created_at`, `updated_at`) VALUES
(59, 'DUP-001', 'Teal Chiffon Dupatta', 'ٹیل شفون دوپٹہ', 'Elegant teal chiffon dupatta with a soft drape and lightweight feel. Perfect for pairing with both casual and formal outfits.', 'dupatta', '', 'female', 'Chiffon', 'Teal', 950.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.654309', '2026-04-28 21:26:35.103610'),
(60, 'DUP-002', 'Spectra Yellow Silk Dupatta', 'سپیکٹرا پیلا ریشمی دوپٹہ', 'Vibrant spectra yellow silk dupatta that adds a pop of color to any ensemble. Luxuriously soft with a subtle sheen.', 'dupatta', '', 'female', 'Silk', 'Spectra Yellow', 1200.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.664319', '2026-04-28 21:26:35.109036'),
(61, 'DUP-003', 'Burnt Orange Cotton Dupatta', 'برنٹ اورنج کاٹن دوپٹہ', 'Rich burnt orange cotton dupatta ideal for everyday wear. Breathable and comfortable with a beautiful color tone.', 'dupatta', '', 'female', 'Cotton', 'Burnt Orange', 850.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.678421', '2026-04-28 21:26:35.112916'),
(62, 'DUP-004', 'Mauve Pink Chiffon Dupatta', 'گلابی شفون دوپٹہ', 'Delicate mauve pink chiffon dupatta with a graceful flow. Perfect for adding a feminine touch to your outfit.', 'dupatta', '', 'female', 'Chiffon', 'Mauve Pink', 1100.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.683984', '2026-04-28 21:26:35.115640'),
(63, 'DUP-005', 'Black Organza Dupatta', 'کالا آرگنزا دوپٹہ', 'Classic black organza dupatta with a sophisticated look. Versatile enough for both formal and semi-formal occasions.', 'dupatta', '', 'female', 'Organza', 'Black', 1450.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.693195', '2026-04-28 21:26:35.118446'),
(64, 'DUP-006', 'Asmani Blue Embroidered Dupatta', 'آسمانی نیلا کڑھائی دوپٹہ', 'Stunning asmani blue embroidered chiffon dupatta featuring intricate needlework. A statement accessory for special occasions.', 'dupatta', '', 'female', 'Chiffon', 'Asmani Blue', 1600.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.705651', '2026-04-28 21:26:35.122334'),
(65, 'RTW-001', 'Solid Crosshatch Shirt - Yellow', 'ٹھوس کراس ہیچ قمیض - پیلی', 'Solid crosshatch straight shirt in vibrant yellow. A versatile wardrobe essential with a modern fit.', 'stitched', 'Straight Shirt', 'female', 'Cross Hatch', 'Yellow', 3200.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.719065', '2026-04-28 21:26:35.127257'),
(66, 'RTW-002', 'Solid Crosshatch Shirt - Maroon', 'ٹھوس کراس ہیچ قمیض - مرون', 'Solid crosshatch straight shirt in deep maroon. Perfect for both casual and semi-formal styling.', 'stitched', 'Straight Shirt', 'female', 'Cross Hatch', 'Maroon', 3400.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.744287', '2026-04-28 21:26:35.131109'),
(67, 'RTW-003', 'Solid Crosshatch Drop Shoulder - Pink', 'ٹھوس کراس ہیچ ڈراپ شولڈر - گلابی', 'Solid crosshatch drop shoulder shirt in soft pink. A contemporary silhouette with relaxed elegance.', 'stitched', 'Drop Shoulder', 'female', 'Cross Hatch', 'Pink', 3500.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.764046', '2026-04-28 21:26:35.134253'),
(68, 'RTW-004', 'Solid Crosshatch Drop Shoulder - Dark Blue', 'ٹھوس کراس ہیچ ڈراپ شولڈر - گہرا نیلا', 'Solid crosshatch drop shoulder shirt in rich dark blue. Effortlessly chic with a relaxed fit.', 'stitched', 'Drop Shoulder', 'female', 'Cross Hatch', 'Dark Blue', 3600.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.793634', '2026-04-28 21:26:35.137639'),
(69, 'RTW-005', 'Printed Cotton Satin Shirt - Brown', 'پرنٹڈ کاٹن ساٹن قمیض - بھورا', 'Printed cotton satin straight shirt in warm brown. Features a luxurious satin finish with elegant print detailing.', 'stitched', 'Straight Shirt', 'female', 'Cotton Satin', 'Brown', 4200.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.821470', '2026-04-28 21:26:35.140450'),
(70, 'RTW-006', 'Printed Lawn Shirt - Coral', 'پرنٹڈ لان قمیض - کورل', 'Printed lawn straight shirt in coral. Lightweight and breathable with beautiful print patterns.', 'stitched', 'Straight Shirt', 'female', 'Lawn', 'Coral', 3800.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.849115', '2026-04-28 21:26:35.144434'),
(71, 'RTW-007', 'Printed Lawn Shirt - Pink', 'پرنٹڈ لان قمیض - گلابی', 'Printed lawn straight shirt in pink. Fresh and vibrant with charming print details.', 'stitched', 'Straight Shirt', 'female', 'Lawn', 'Pink', 3900.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.883783', '2026-04-28 21:26:35.148778'),
(72, 'RTW-008', 'Solid Crosshatch Shirt - Purple', 'ٹھوس کراس ہیچ قمیض - جامنی', 'Solid crosshatch straight shirt in regal purple. A bold color choice for the fashion-forward.', 'stitched', 'Straight Shirt', 'female', 'Cross Hatch', 'Purple', 3300.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.920589', '2026-04-28 21:26:35.151900'),
(73, 'RTW-009', 'Solid Crosshatch Shirt - Navy Blue', 'ٹھوس کراس ہیچ قمیض - نیوی نیلا', 'Solid crosshatch straight shirt in classic navy blue. A timeless piece for any occasion.', 'stitched', 'Straight Shirt', 'female', 'Cross Hatch', 'Dark Blue', 3200.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.951755', '2026-04-28 21:26:35.153463'),
(74, 'RTW-010', 'Printed Lawn Shirt - Green', 'پرنٹڈ لان قمیض - سبز', 'Printed lawn straight shirt in refreshing green. Perfect for a breezy summer look.', 'stitched', 'Straight Shirt', 'female', 'Lawn', 'Green', 3800.00, 0.00, 25, 5, 1, '2026-04-28 21:26:32.983548', '2026-04-28 21:26:35.160505'),
(75, 'RTW-011', 'Solid Lawn Shirt - Mustard Yellow', 'ٹھوس لان قمیض - سرسوں پیلا', 'Solid lawn straight shirt in warm mustard yellow. A rich and sophisticated color for seasonal styling.', 'stitched', 'Straight Shirt', 'female', 'Lawn', 'Mustard Yellow', 3600.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.014615', '2026-04-28 21:26:35.164680'),
(76, 'RTW-012', 'Printed Lawn Shirt - Lime Yellow', 'پرنٹڈ لان قمیض - لائم پیلا', 'Printed lawn straight shirt in bold lime yellow. A fresh and modern addition to your wardrobe.', 'stitched', 'Straight Shirt', 'female', 'Lawn', 'Lime Yellow', 4000.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.046022', '2026-04-28 21:26:35.167891'),
(77, 'MEN-001', 'Classic Shalwar Kameez - White', 'کلاسک شلوار قمیض - سفید', 'Premium white cotton shalwar kameez with a classic cut. A wardrobe staple for everyday wear and formal occasions.', 'stitched', 'Shalwar Kameez', 'male', 'Cotton', 'White', 4500.00, 0.00, 23, 5, 1, '2026-04-28 21:26:33.080068', '2026-04-29 13:39:26.217663'),
(78, 'MEN-002', 'Classic Shalwar Kameez - Off White', 'کلاسک شلوار قمیض - آف وائٹ', 'Elegant off-white cotton shalwar kameez with refined tailoring. Perfect for both casual and formal settings.', 'stitched', 'Shalwar Kameez', 'male', 'Cotton', 'Off White', 4500.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.103776', '2026-04-28 21:26:35.174700'),
(79, 'MEN-003', 'Classic Shalwar Kameez - Light Grey', 'کلاسک شلوار قمیض - ہلکا سلیٹی', 'Sophisticated light grey cotton blend shalwar kameez. A modern take on traditional menswear with premium finishing.', 'stitched', 'Shalwar Kameez', 'male', 'Cotton Blend', 'Light Grey', 4800.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.129410', '2026-04-28 21:26:35.179539'),
(80, 'MEN-004', 'Classic Shalwar Kameez - Beige', 'کلاسک شلوار قمیض - بیج', 'Premium beige wash & wear shalwar kameez with impeccable tailoring. Low maintenance fabric with a polished look.', 'stitched', 'Shalwar Kameez', 'male', 'Wash & Wear', 'Beige', 5000.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.155212', '2026-04-28 21:26:35.183302'),
(81, 'UNS-001', '3 Piece Embroidered Lawn Suit - Sage Green', '3 پیس کڑھائی لان سوٹ - سیج گرین', 'Make a statement with our three-piece embroidered sage green ensemble featuring a lawn shirt paired with a voile dupatta and cotton trousers.', 'unstitched', '', 'female', 'Lawn', 'Sage Green', 4200.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.181331', '2026-04-28 21:26:35.187606'),
(82, 'UNS-002', '3 Piece Embroidered Lawn Suit - Blue', '3 پیس کڑھائی لان سوٹ - نیلا', 'Make a statement with our three-piece embroidered blue ensemble featuring a lawn shirt paired with a voile dupatta and cotton trousers.', 'unstitched', '', 'female', 'Lawn', 'Blue', 4500.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.203693', '2026-04-28 21:26:35.190781'),
(83, 'UNS-003', '2 Piece Embroidered Lawn Suit - Teal Blue', '2 پیس کڑھائی لان سوٹ - ٹیل نیلا', 'Make a statement with our two-piece embroidered teal blue and off-white ensemble featuring a lawn shirt paired with a voile dupatta.', 'unstitched', '', 'female', 'Lawn', 'Teal Blue', 3200.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.225671', '2026-04-28 21:26:35.195763'),
(84, 'UNS-004', '2 Piece Embroidered Lawn Suit - Light Yellow', '2 پیس کڑھائی لان سوٹ - ہلکا پیلا', 'Make a statement with our two-piece embroidered light yellow ensemble featuring a lawn shirt paired with a multicoloured voile dupatta.', 'unstitched', '', 'female', 'Lawn', 'Light Yellow', 3000.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.252229', '2026-04-28 21:26:35.199143'),
(85, 'UNS-005', '3 Piece Embroidered Silk Suit - Black', '3 پیس کڑھائی سلک سوٹ - کالا', 'Make a statement with our three-piece embroidered black ensemble featuring a blended grip silk shirt paired with a blended tissue dupatta and viscose raw silk trousers.', 'unstitched', '', 'female', 'Blended Grip Silk', 'Black', 5000.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.267347', '2026-04-28 21:26:35.203010'),
(86, 'UNS-006', '3 Piece Embroidered Raw Silk Suit - Mustard', '3 پیس کڑھائی خام ریشم سوٹ - سرسوں', 'Make a statement with our three-piece embroidered mustard ensemble featuring a raw silk shirt paired with viscose raw silk trousers and a blended chiffon dupatta.', 'unstitched', '', 'female', 'Raw Silk', 'Mustard', 4800.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.285931', '2026-04-28 21:26:35.206858'),
(87, 'UNS-007', '3 Piece Embroidered Lawn Suit - Pistachio', '3 پیس کڑھائی لان سوٹ - پستہ', 'Perfect your style with our three-piece embroidered light pistachio ensemble featuring a lawn shirt paired with cotton trousers and a blended karandi dupatta.', 'unstitched', '', 'female', 'Lawn', 'Light Pistachio', 4200.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.308234', '2026-04-28 21:26:35.211460'),
(88, 'UNS-008', '3 Piece Embroidered Lawn Suit - Mustard', '3 پیس کڑھائی لان سوٹ - سرسوں', 'Make a statement with our three-piece embroidered mustard ensemble featuring a lawn shirt paired with a voile dupatta and cotton trousers.', 'unstitched', '', 'female', 'Lawn', 'Mustard', 4000.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.330502', '2026-04-28 21:26:35.215267'),
(89, 'UNS-009', '3 Piece Embroidered Raw Silk Suit - Brown', '3 پیس کڑھائی خام ریشم سوٹ - بھورا', 'Make a sophisticated statement with our three-piece embroidered brown ensemble featuring a viscose raw silk shirt and trousers paired with a blended net dupatta.', 'unstitched', '', 'female', 'Viscose Raw Silk', 'Brown', 4900.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.373523', '2026-04-28 21:26:35.219526'),
(90, 'UNS-010', '3 Piece Embroidered Dobby Suit - Purple', '3 پیس کڑھائی ڈوبی سوٹ - جامنی', 'Make a statement with our three-piece embroidered purple ensemble featuring a dobby shirt paired with a blended organza dupatta and cotton trousers.', 'unstitched', '', 'female', 'Dobby', 'Purple', 4500.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.397471', '2026-04-28 21:26:35.222356'),
(91, 'UNS-011', '3 Piece Printed Lawn Suit - Purple & White', '3 پیس پرنٹڈ لان سوٹ - جامنی اور سفید', 'Make a statement with our three-piece printed purple and off white ensemble featuring a lawn shirt paired with a voile dupatta and cotton trousers.', 'unstitched', '', 'female', 'Lawn', 'Purple', 3500.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.414548', '2026-04-28 21:26:35.227732'),
(92, 'UNS-012', '3 Piece Embroidered Lawn Suit - Light Sage', '3 پیس کڑھائی لان سوٹ - ہلکا سیج', 'Make a statement with our three-piece embroidered light sage green ensemble featuring a lawn shirt paired with a voile dupatta and cotton trousers.', 'unstitched', '', 'female', 'Lawn', 'Light Sage Green', 4200.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.432552', '2026-04-28 21:26:35.231748'),
(93, 'UNS-013', 'Printed Lawn 3 Piece Suit - Floral', 'پرنٹڈ لان 3 پیس سوٹ - پھول دار', 'Elegant printed lawn 3-piece suit featuring a printed lawn dupatta, printed lawn shirt, and dyed trouser. A beautiful floral ensemble.', 'unstitched', '', 'female', 'Lawn', 'Multi', 3800.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.450006', '2026-04-28 21:26:35.236729'),
(94, 'UNS-014', 'Printed Khaddar 3 Piece Suit - Classic', 'پرنٹڈ کھدر 3 پیس سوٹ - کلاسک', 'Premium printed khaddar 3-piece suit with a printed khaddar dupatta, printed khaddar shirt, and dyed trouser. Warm and stylish.', 'unstitched', '', 'female', 'Khaddar', 'Multi', 4600.00, 0.00, 25, 5, 1, '2026-04-28 21:26:33.470384', '2026-04-28 21:26:35.240534'),
(95, 'UNS-015', 'Jacquard 3 Piece Suit - Elegant', 'جیکارڈ 3 پیس سوٹ - خوبصورت', 'Luxurious jacquard 3-piece suit featuring a jacquard dupatta, jacquard shirt, and dyed trouser. Premium fabric with intricate weaving.', 'unstitched', '', 'female', 'Jacquard', 'Multi', 5000.00, 0.00, 24, 5, 1, '2026-04-28 21:26:33.497094', '2026-05-07 08:29:57.459048'),
(96, 'ABY-001', 'Basic Chiffon Hijab - Chocolate Brown', 'بنیادی شفون حجاب - چاکلیٹ بھورا', 'Basic hijab in soft and breathable chiffon fabric. Perfect for everyday wear with a comfortable drape.', 'accessories', 'Abaya & Hijab', 'female', 'Chiffon', 'Chocolate Brown', 2500.00, 0.00, 30, 9, 1, '2026-04-28 21:26:33.521775', '2026-04-28 21:40:17.464447'),
(97, 'ABY-002', 'Basic Chiffon Hijab - Light Blue', 'بنیادی شفون حجاب - ہلکا نیلا', 'Basic hijab in soft and breathable chiffon fabric. A serene light blue for everyday elegance.', 'accessories', 'Abaya & Hijab', 'female', 'Chiffon', 'Light Blue', 2500.00, 0.00, 30, 9, 1, '2026-04-28 21:26:33.543171', '2026-04-28 21:40:17.453985'),
(98, 'ABY-003', 'Basic Chiffon Hijab - Brown', 'بنیادی شفون حجاب - بھورا', 'Basic hijab in soft and breathable chiffon fabric. Warm brown tone for a classic look.', 'accessories', 'Abaya & Hijab', 'female', 'Chiffon', 'Brown', 2700.00, 0.00, 28, 9, 1, '2026-04-28 21:26:33.559340', '2026-04-28 21:40:17.444290'),
(99, 'ABY-004', 'Premium Chiffon Hijab - White', 'پریمیم شفون حجاب - سفید', 'Premium white chiffon hijab in soft and breathable fabric. Elegant and versatile for any occasion.', 'accessories', 'Abaya & Hijab', 'female', 'Chiffon', 'White', 3000.00, 0.00, 30, 9, 1, '2026-04-28 21:26:33.577798', '2026-04-28 21:40:17.433612'),
(100, 'ABY-005', 'Basic Chiffon Hijab - Navy', 'بنیادی شفون حجاب - نیوی', 'Basic hijab in soft and breathable chiffon fabric. Deep navy for a sophisticated look.', 'accessories', 'Abaya & Hijab', 'female', 'Chiffon', 'Navy', 2800.00, 0.00, 30, 9, 1, '2026-04-28 21:26:33.590828', '2026-04-28 21:40:17.423086'),
(101, 'ABY-006', 'Embroidered Abaya - Black', 'کڑھائی عبایا - کالا', 'Elegant black embroidered abaya in premium nida fabric. Features intricate embroidery detailing for a luxurious look.', 'accessories', 'Abaya & Hijab', 'female', 'Nida', 'Black', 5500.00, 0.00, 30, 9, 1, '2026-04-28 21:26:33.637428', '2026-04-28 21:40:17.415695'),
(102, 'ABY-007', 'Classic Abaya - Dark Brown', 'کلاسک عبایا - گہرا بھورا', 'Classic dark brown abaya in flowing nida fabric. A timeless design with refined finishing.', 'accessories', 'Abaya & Hijab', 'female', 'Nida', 'Dark Brown', 4800.00, 0.00, 30, 9, 1, '2026-04-28 21:26:33.688280', '2026-04-28 21:40:17.406927'),
(103, 'ABY-008', 'Designer Abaya - Maroon', 'ڈیزائنر عبایا - مرون', 'Designer maroon abaya in luxurious crepe fabric. A statement piece with contemporary design elements.', 'accessories', 'Abaya & Hijab', 'female', 'Crepe', 'Maroon', 6000.00, 0.00, 29, 9, 1, '2026-04-28 21:26:33.712305', '2026-04-28 21:40:17.397439'),
(104, 'ABY-009', 'Everyday Abaya - Grey', 'روزمرہ عبایا - سلیٹی', 'Comfortable grey everyday abaya in lightweight nida fabric. Perfect for daily wear with a modern silhouette.', 'accessories', 'Abaya & Hijab', 'female', 'Nida', 'Grey', 4200.00, 0.00, 28, 9, 1, '2026-04-28 21:26:33.734243', '2026-04-28 21:40:17.388780'),
(105, 'ABY-010', 'Casual Abaya - Olive', 'کیژول عبایا - زیتونی', 'Stylish olive casual abaya in premium nida fabric. A versatile piece with a relaxed fit.', 'accessories', 'Abaya & Hijab', 'female', 'Nida', 'Olive', 3800.00, 0.00, 29, 9, 1, '2026-04-28 21:26:33.768935', '2026-04-29 13:52:47.427462');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `image_id` int(11) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `display_order` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`image_id`, `image_url`, `is_primary`, `display_order`, `product_id`, `image`) VALUES
(25, '', 1, 0, 59, 'products/DUP_1_1.webp'),
(26, '', 0, 1, 59, 'products/DUP_1_2.webp'),
(27, '', 1, 0, 60, 'products/DUP_2_1.webp'),
(28, '', 0, 1, 60, 'products/DUP_2_2.webp'),
(29, '', 0, 2, 60, 'products/DUP_2_3.webp'),
(30, '', 1, 0, 61, 'products/DUP_3_1.jpg'),
(31, '', 1, 0, 62, 'products/DUP_4_1.webp'),
(32, '', 0, 1, 62, 'products/DUP_4_2.webp'),
(33, '', 1, 0, 63, 'products/DUP_5_1.webp'),
(34, '', 0, 1, 63, 'products/DUP_5_2.webp'),
(35, '', 0, 2, 63, 'products/DUP_5_3.webp'),
(36, '', 1, 0, 64, 'products/DUP_6_1.webp'),
(37, '', 0, 1, 64, 'products/DUP_6_2.webp'),
(38, '', 0, 2, 64, 'products/DUP_6_3.webp'),
(39, '', 1, 0, 65, 'products/RTW_1_1.png'),
(40, '', 0, 1, 65, 'products/RTW_1_2.png'),
(41, '', 0, 2, 65, 'products/RTW_1_3.png'),
(42, '', 0, 3, 65, 'products/RTW_1_4.png'),
(43, '', 1, 0, 66, 'products/RTW_2_1.png'),
(44, '', 0, 1, 66, 'products/RTW_2_2.png'),
(45, '', 0, 2, 66, 'products/RTW_2_3.png'),
(46, '', 0, 3, 66, 'products/RTW_2_4.png'),
(47, '', 1, 0, 67, 'products/RTW_3_1.png'),
(48, '', 0, 1, 67, 'products/RTW_3_2.png'),
(49, '', 0, 2, 67, 'products/RTW_3_3.png'),
(50, '', 0, 3, 67, 'products/RTW_3_4.png'),
(51, '', 0, 4, 67, 'products/RTW_3_5.png'),
(52, '', 1, 0, 68, 'products/RTW_4_1.png'),
(53, '', 0, 1, 68, 'products/RTW_4_2.png'),
(54, '', 0, 2, 68, 'products/RTW_4_3.png'),
(55, '', 0, 3, 68, 'products/RTW_4_4.png'),
(56, '', 0, 4, 68, 'products/RTW_4_5.png'),
(57, '', 1, 0, 69, 'products/RTW_5_1.png'),
(58, '', 0, 1, 69, 'products/RTW_5_2.png'),
(59, '', 0, 2, 69, 'products/RTW_5_3.png'),
(60, '', 1, 0, 70, 'products/RTW_6_1.png'),
(61, '', 0, 1, 70, 'products/RTW_6_2.png'),
(62, '', 0, 2, 70, 'products/RTW_6_3.png'),
(63, '', 0, 3, 70, 'products/RTW_6_4.png'),
(64, '', 0, 4, 70, 'products/RTW_6_5.png'),
(65, '', 1, 0, 71, 'products/RTW_7_1.png'),
(66, '', 0, 1, 71, 'products/RTW_7_2.png'),
(67, '', 0, 2, 71, 'products/RTW_7_3.png'),
(68, '', 0, 3, 71, 'products/RTW_7_4.png'),
(69, '', 0, 4, 71, 'products/RTW_7_5.png'),
(70, '', 0, 5, 71, 'products/RTW_7_6.png'),
(71, '', 1, 0, 72, 'products/RTW_8_1.png'),
(72, '', 0, 1, 72, 'products/RTW_8_2.png'),
(73, '', 0, 2, 72, 'products/RTW_8_3.png'),
(74, '', 0, 3, 72, 'products/RTW_8_4.png'),
(75, '', 1, 0, 73, 'products/RTW_9_1.png'),
(76, '', 0, 1, 73, 'products/RTW_9_2.png'),
(77, '', 0, 2, 73, 'products/RTW_9_3.png'),
(78, '', 0, 3, 73, 'products/RTW_9_4.png'),
(79, '', 0, 4, 73, 'products/RTW_9_5.png'),
(80, '', 1, 0, 74, 'products/RTW_10_1.png'),
(81, '', 0, 1, 74, 'products/RTW_10_2.png'),
(82, '', 0, 2, 74, 'products/RTW_10_3.png'),
(83, '', 0, 3, 74, 'products/RTW_10_4.png'),
(84, '', 0, 4, 74, 'products/RTW_10_5.png'),
(85, '', 1, 0, 75, 'products/RTW_11_1.png'),
(86, '', 0, 1, 75, 'products/RTW_11_2.png'),
(87, '', 0, 2, 75, 'products/RTW_11_3.png'),
(88, '', 0, 3, 75, 'products/RTW_11_4.png'),
(89, '', 0, 4, 75, 'products/RTW_11_5.png'),
(90, '', 1, 0, 76, 'products/RTW_12_1.png'),
(91, '', 0, 1, 76, 'products/RTW_12_2.png'),
(92, '', 0, 2, 76, 'products/RTW_12_3.png'),
(93, '', 0, 3, 76, 'products/RTW_12_4.png'),
(94, '', 0, 4, 76, 'products/RTW_12_5.png'),
(95, '', 0, 5, 76, 'products/RTW_12_6.png'),
(96, '', 1, 0, 77, 'products/MEN_1_1.png'),
(97, '', 0, 1, 77, 'products/MEN_1_2.png'),
(98, '', 0, 2, 77, 'products/MEN_1_3.png'),
(99, '', 0, 3, 77, 'products/MEN_1_4.png'),
(100, '', 1, 0, 78, 'products/MEN_2_1.png'),
(101, '', 0, 1, 78, 'products/MEN_2_2.png'),
(102, '', 0, 2, 78, 'products/MEN_2_3.png'),
(103, '', 0, 3, 78, 'products/MEN_2_4.png'),
(104, '', 1, 0, 79, 'products/MEN_3_1.png'),
(105, '', 0, 1, 79, 'products/MEN_3_2.png'),
(106, '', 0, 2, 79, 'products/MEN_3_3.png'),
(107, '', 0, 3, 79, 'products/MEN_3_4.png'),
(108, '', 1, 0, 80, 'products/MEN_4_1.png'),
(109, '', 0, 1, 80, 'products/MEN_4_2.png'),
(110, '', 0, 2, 80, 'products/MEN_4_3.png'),
(111, '', 0, 3, 80, 'products/MEN_4_4.png'),
(112, '', 1, 0, 81, 'products/UNS_1_1.png'),
(113, '', 0, 1, 81, 'products/UNS_1_2.png'),
(114, '', 0, 2, 81, 'products/UNS_1_3.png'),
(115, '', 0, 3, 81, 'products/UNS_1_4.png'),
(116, '', 0, 4, 81, 'products/UNS_1_5.png'),
(117, '', 1, 0, 82, 'products/UNS_2_1.png'),
(118, '', 0, 1, 82, 'products/UNS_2_2.png'),
(119, '', 0, 2, 82, 'products/UNS_2_3.png'),
(120, '', 0, 3, 82, 'products/UNS_2_4.png'),
(121, '', 0, 4, 82, 'products/UNS_2_5.png'),
(122, '', 0, 5, 82, 'products/UNS_2_6.png'),
(123, '', 1, 0, 83, 'products/UNS_3_1.png'),
(124, '', 0, 1, 83, 'products/UNS_3_2.png'),
(125, '', 0, 2, 83, 'products/UNS_3_3.png'),
(126, '', 0, 3, 83, 'products/UNS_3_4.png'),
(127, '', 0, 4, 83, 'products/UNS_3_5.png'),
(128, '', 0, 5, 83, 'products/UNS_3_6.png'),
(129, '', 1, 0, 84, 'products/UNS_4_1.png'),
(130, '', 0, 1, 84, 'products/UNS_4_2.png'),
(131, '', 0, 2, 84, 'products/UNS_4_3.png'),
(132, '', 0, 3, 84, 'products/UNS_4_4.png'),
(133, '', 1, 0, 85, 'products/UNS_5_1.png'),
(134, '', 0, 1, 85, 'products/UNS_5_2.png'),
(135, '', 0, 2, 85, 'products/UNS_5_3.png'),
(136, '', 0, 3, 85, 'products/UNS_5_4.png'),
(137, '', 1, 0, 86, 'products/UNS_6_1.png'),
(138, '', 0, 1, 86, 'products/UNS_6_2.png'),
(139, '', 0, 2, 86, 'products/UNS_6_3.png'),
(140, '', 0, 3, 86, 'products/UNS_6_4.png'),
(141, '', 0, 4, 86, 'products/UNS_6_5.png'),
(142, '', 1, 0, 87, 'products/UNS_7_1.png'),
(143, '', 0, 1, 87, 'products/UNS_7_2.png'),
(144, '', 0, 2, 87, 'products/UNS_7_3.png'),
(145, '', 0, 3, 87, 'products/UNS_7_4.png'),
(146, '', 0, 4, 87, 'products/UNS_7_5.png'),
(147, '', 1, 0, 88, 'products/UNS_8_1.webp'),
(148, '', 0, 1, 88, 'products/UNS_8_2.webp'),
(149, '', 0, 2, 88, 'products/UNS_8_3.webp'),
(150, '', 0, 3, 88, 'products/UNS_8_4.webp'),
(151, '', 0, 4, 88, 'products/UNS_8_5.webp'),
(152, '', 0, 5, 88, 'products/UNS_8_6.png'),
(153, '', 0, 6, 88, 'products/UNS_8_7.png'),
(154, '', 0, 7, 88, 'products/UNS_8_8.png'),
(155, '', 0, 8, 88, 'products/UNS_8_9.png'),
(156, '', 0, 9, 88, 'products/UNS_8_10.png'),
(157, '', 1, 0, 89, 'products/UNS_9_1.png'),
(158, '', 0, 1, 89, 'products/UNS_9_2.png'),
(159, '', 0, 2, 89, 'products/UNS_9_3.png'),
(160, '', 0, 3, 89, 'products/UNS_9_4.png'),
(161, '', 0, 4, 89, 'products/UNS_9_5.png'),
(162, '', 1, 0, 90, 'products/UNS_10_1.png'),
(163, '', 0, 1, 90, 'products/UNS_10_2.png'),
(164, '', 0, 2, 90, 'products/UNS_10_3.png'),
(165, '', 0, 3, 90, 'products/UNS_10_4.png'),
(166, '', 1, 0, 91, 'products/UNS_11_1.png'),
(167, '', 0, 1, 91, 'products/UNS_11_2.png'),
(168, '', 0, 2, 91, 'products/UNS_11_3.png'),
(169, '', 0, 3, 91, 'products/UNS_11_4.png'),
(170, '', 1, 0, 92, 'products/UNS_12_1.png'),
(171, '', 0, 1, 92, 'products/UNS_12_2.png'),
(172, '', 0, 2, 92, 'products/UNS_12_3.png'),
(173, '', 0, 3, 92, 'products/UNS_12_4.png'),
(174, '', 1, 0, 93, 'products/UNS_13_1.webp'),
(175, '', 0, 1, 93, 'products/UNS_13_2.webp'),
(176, '', 0, 2, 93, 'products/UNS_13_3.webp'),
(177, '', 0, 3, 93, 'products/UNS_13_4.webp'),
(178, '', 0, 4, 93, 'products/UNS_13_5.webp'),
(179, '', 1, 0, 94, 'products/UNS_14_1.webp'),
(180, '', 0, 1, 94, 'products/UNS_14_2.webp'),
(181, '', 0, 2, 94, 'products/UNS_14_3.webp'),
(182, '', 0, 3, 94, 'products/UNS_14_4.webp'),
(183, '', 0, 4, 94, 'products/UNS_14_5.webp'),
(184, '', 0, 5, 94, 'products/UNS_14_6.webp'),
(185, '', 1, 0, 95, 'products/UNS_15_1.webp'),
(186, '', 0, 1, 95, 'products/UNS_15_2.webp'),
(187, '', 0, 2, 95, 'products/UNS_15_3.webp'),
(188, '', 0, 3, 95, 'products/UNS_15_4.webp'),
(189, '', 0, 4, 95, 'products/UNS_15_5.webp'),
(190, '', 0, 5, 95, 'products/UNS_15_6.webp'),
(191, '', 1, 0, 96, 'products/ABY_1_1.png'),
(192, '', 0, 1, 96, 'products/ABY_1_2.png'),
(193, '', 0, 2, 96, 'products/ABY_1_3.png'),
(194, '', 1, 0, 97, 'products/ABY_2_1.png'),
(195, '', 0, 1, 97, 'products/ABY_2_2.png'),
(196, '', 0, 2, 97, 'products/ABY_2_3.png'),
(197, '', 0, 3, 97, 'products/ABY_2_4.png'),
(198, '', 1, 0, 98, 'products/ABY_3_1.png'),
(199, '', 0, 1, 98, 'products/ABY_3_2.png'),
(200, '', 0, 2, 98, 'products/ABY_3_3.png'),
(201, '', 0, 3, 98, 'products/ABY_3_4.png'),
(202, '', 1, 0, 99, 'products/ABY_4_1.png'),
(203, '', 0, 1, 99, 'products/ABY_4_2.png'),
(204, '', 0, 2, 99, 'products/ABY_4_3.png'),
(205, '', 1, 0, 100, 'products/ABY_5_1.png'),
(206, '', 0, 1, 100, 'products/ABY_5_2.png'),
(207, '', 0, 2, 100, 'products/ABY_5_3.png'),
(208, '', 0, 3, 100, 'products/ABY_5_4.png'),
(209, '', 1, 0, 101, 'products/ABY_6_1.png'),
(210, '', 0, 1, 101, 'products/ABY_6_2.png'),
(211, '', 0, 2, 101, 'products/ABY_6_3.png'),
(212, '', 0, 3, 101, 'products/ABY_6_4.png'),
(213, '', 1, 0, 102, 'products/ABY_7_1.png'),
(214, '', 0, 1, 102, 'products/ABY_7_2.png'),
(215, '', 0, 2, 102, 'products/ABY_7_3.png'),
(216, '', 0, 3, 102, 'products/ABY_7_4.png'),
(217, '', 1, 0, 103, 'products/ABY_8_1.png'),
(218, '', 0, 1, 103, 'products/ABY_8_2.png'),
(219, '', 0, 2, 103, 'products/ABY_8_3.png'),
(220, '', 0, 3, 103, 'products/ABY_8_4.png'),
(221, '', 1, 0, 104, 'products/ABY_9_1.png'),
(222, '', 0, 1, 104, 'products/ABY_9_2.png'),
(223, '', 0, 2, 104, 'products/ABY_9_3.png'),
(224, '', 0, 3, 104, 'products/ABY_9_4.png'),
(225, '', 1, 0, 105, 'products/ABY_10_1.png'),
(226, '', 0, 1, 105, 'products/ABY_10_2.png'),
(227, '', 0, 2, 105, 'products/ABY_10_3.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `size_id` int(11) NOT NULL,
  `size` varchar(20) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`size_id`, `size`, `stock_qty`, `product_id`) VALUES
(136, 'XS', 5, 65),
(137, 'S', 5, 65),
(138, 'M', 5, 65),
(139, 'L', 5, 65),
(140, 'XL', 5, 65),
(141, 'XS', 5, 66),
(142, 'S', 5, 66),
(143, 'M', 5, 66),
(144, 'L', 5, 66),
(145, 'XL', 5, 66),
(146, 'XS', 5, 67),
(147, 'S', 5, 67),
(148, 'M', 5, 67),
(149, 'L', 5, 67),
(150, 'XL', 5, 67),
(151, 'XS', 5, 68),
(152, 'S', 5, 68),
(153, 'M', 5, 68),
(154, 'L', 5, 68),
(155, 'XL', 5, 68),
(156, 'XS', 5, 69),
(157, 'S', 5, 69),
(158, 'M', 5, 69),
(159, 'L', 5, 69),
(160, 'XL', 5, 69),
(161, 'XS', 5, 70),
(162, 'S', 5, 70),
(163, 'M', 5, 70),
(164, 'L', 5, 70),
(165, 'XL', 5, 70),
(166, 'XS', 5, 71),
(167, 'S', 5, 71),
(168, 'M', 5, 71),
(169, 'L', 5, 71),
(170, 'XL', 5, 71),
(171, 'XS', 5, 72),
(172, 'S', 5, 72),
(173, 'M', 5, 72),
(174, 'L', 5, 72),
(175, 'XL', 5, 72),
(176, 'XS', 5, 73),
(177, 'S', 5, 73),
(178, 'M', 5, 73),
(179, 'L', 5, 73),
(180, 'XL', 5, 73),
(181, 'XS', 5, 74),
(182, 'S', 5, 74),
(183, 'M', 5, 74),
(184, 'L', 5, 74),
(185, 'XL', 5, 74),
(186, 'XS', 5, 75),
(187, 'S', 5, 75),
(188, 'M', 5, 75),
(189, 'L', 5, 75),
(190, 'XL', 5, 75),
(191, 'XS', 5, 76),
(192, 'S', 5, 76),
(193, 'M', 5, 76),
(194, 'L', 5, 76),
(195, 'XL', 5, 76),
(196, 'S', 5, 77),
(197, 'M', 5, 77),
(198, 'L', 5, 77),
(199, 'XL', 5, 77),
(200, 'XXL', 5, 77),
(201, 'S', 5, 78),
(202, 'M', 5, 78),
(203, 'L', 5, 78),
(204, 'XL', 5, 78),
(205, 'XXL', 5, 78),
(206, 'S', 5, 79),
(207, 'M', 5, 79),
(208, 'L', 5, 79),
(209, 'XL', 5, 79),
(210, 'XXL', 5, 79),
(211, 'S', 5, 80),
(212, 'M', 5, 80),
(213, 'L', 5, 80),
(214, 'XL', 5, 80),
(215, 'XXL', 5, 80),
(216, 'S', 10, 105),
(217, 'M', 9, 105),
(218, 'L', 10, 105),
(219, 'S', 9, 104),
(220, 'M', 9, 104),
(221, 'L', 10, 104),
(222, 'S', 10, 103),
(223, 'M', 9, 103),
(224, 'L', 10, 103),
(225, 'S', 10, 102),
(226, 'M', 10, 102),
(227, 'L', 10, 102),
(228, 'S', 10, 101),
(229, 'M', 10, 101),
(230, 'L', 10, 101),
(231, 'S', 10, 100),
(232, 'M', 10, 100),
(233, 'L', 10, 100),
(234, 'S', 10, 99),
(235, 'M', 10, 99),
(236, 'L', 10, 99),
(237, 'S', 10, 98),
(238, 'M', 9, 98),
(239, 'L', 9, 98),
(240, 'S', 10, 97),
(241, 'M', 10, 97),
(242, 'L', 10, 97),
(243, 'S', 10, 96),
(244, 'M', 10, 96),
(245, 'L', 10, 96);

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `recommendation_id` int(11) NOT NULL,
  `score` decimal(5,2) NOT NULL,
  `generated_at` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `review_date` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_analytics`
--

CREATE TABLE `sales_analytics` (
  `analytics_id` int(11) NOT NULL,
  `quantity_sold` int(11) NOT NULL,
  `revenue` decimal(10,2) NOT NULL,
  `sale_date` date NOT NULL,
  `sale_timestamp` datetime(6) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_analytics`
--

INSERT INTO `sales_analytics` (`analytics_id`, `quantity_sold`, `revenue`, `sale_date`, `sale_timestamp`, `order_id`, `product_id`) VALUES
(13, 1, 3800.00, '2026-04-28', '2026-04-28 21:41:14.747754', 6, 105),
(14, 2, 9000.00, '2026-04-29', '2026-04-29 13:39:26.229699', 7, 77),
(15, 1, 3800.00, '2026-04-29', '2026-04-29 13:52:47.442756', 8, 105),
(16, 1, 4200.00, '2026-05-04', '2026-05-04 08:24:10.871078', 11, 104),
(17, 1, 3800.00, '2026-05-07', '2026-05-07 07:02:00.192689', 13, 105),
(18, 1, 4200.00, '2026-05-07', '2026-05-07 07:31:17.688032', 14, 104),
(19, 1, 2700.00, '2026-05-07', '2026-05-07 08:14:06.871915', 15, 98),
(20, 1, 2700.00, '2026-05-07', '2026-05-07 08:23:17.228755', 16, 98),
(21, 1, 5000.00, '2026-05-07', '2026-05-07 08:29:57.473982', 17, 95),
(22, 1, 6000.00, '2026-05-07', '2026-05-07 09:48:08.723149', 18, 103);

-- --------------------------------------------------------

--
-- Table structure for table `stock_alerts`
--

CREATE TABLE `stock_alerts` (
  `alert_id` int(11) NOT NULL,
  `alert_type` varchar(20) NOT NULL,
  `message` longtext NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_alerts`
--

INSERT INTO `stock_alerts` (`alert_id`, `alert_type`, `message`, `is_read`, `created_at`, `product_id`, `size`) VALUES
(2, 'low', '⚠ Low stock alert: Everyday Abaya - Grey (Size: S) has only 9 items left.', 0, '2026-05-04 08:23:49.717803', 104, 'S'),
(4, 'low', '⚠ Low stock alert: Casual Abaya - Olive (Size: M) has only 9 items left.', 0, '2026-05-07 07:01:38.094831', 105, 'M'),
(5, 'low', '⚠ Low stock alert: Everyday Abaya - Grey (Size: M) has only 9 items left.', 0, '2026-05-07 07:30:55.353100', 104, 'M'),
(6, 'low', '⚠ Low stock alert: Basic Chiffon Hijab - Brown (Size: M) has only 9 items left.', 0, '2026-05-07 08:13:44.460997', 98, 'M'),
(7, 'low', '⚠ Low stock alert: Basic Chiffon Hijab - Brown (Size: L) has only 9 items left.', 0, '2026-05-07 08:22:55.300491', 98, 'L'),
(8, 'low', '⚠ Low stock alert: Designer Abaya - Maroon (Size: M) has only 9 items left.', 0, '2026-05-07 09:47:45.247300', 103, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `email_verified` tinyint(1) NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `verification_code` varchar(6) DEFAULT NULL,
  `verification_code_expiry` datetime(6) DEFAULT NULL,
  `phone_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`password`, `last_login`, `is_superuser`, `user_id`, `name`, `email`, `phone`, `role`, `is_active`, `is_staff`, `created_at`, `updated_at`, `email_verified`, `google_id`, `verification_code`, `verification_code_expiry`, `phone_verified`) VALUES
('pbkdf2_sha256$600000$DlvMIWNlOurvyBBiaClLgl$VdQ6YLR5qVCjWavX4YzvOQ/Cphv+K7nJN4g/pzyrLMw=', NULL, 1, 1, 'MESUM', 'admin@libaassapna.com', NULL, 'admin', 1, 1, '2025-12-09 07:02:31.461332', '2025-12-09 07:02:31.461332', 1, NULL, NULL, NULL, 0),
('pbkdf2_sha256$600000$p1uZIKiXyH8GD4QKqeDETc$e4DhjuKWM0N4/uIHRqu/z25wayiNPXuoNQJ7aJkAjVg=', NULL, 0, 2, 'Khubaib Yousuf', 'khubaibhanif17@gmail.com', '03445560895', 'customer', 1, 0, '2025-12-09 07:03:52.250111', '2025-12-09 09:13:55.343415', 1, '100161063937581095218', NULL, NULL, 0),
('pbkdf2_sha256$600000$hfYlV7LI2pvxO8twsWGZgs$7j2MQgMgTrNA+CjaNZLbHHVyihaKmhvtBYrcJDRrlwA=', NULL, 0, 3, 'Khubaib Yousuf', 'm.mesum1800.com.com@gmail.com', '03445560895', 'customer', 1, 0, '2025-12-09 09:13:27.755049', '2025-12-09 09:13:27.766217', 0, NULL, '9842D3', '2025-12-09 09:28:27.766217', 0),
('pbkdf2_sha256$600000$u5gjU35IMveTsrYzFM6F9y$oHbMxqrRhBKycITOadebmUEt+PbrsakJE7gs/v03v1k=', NULL, 0, 4, 'Khubaib Yousuf', 'wduid@gmail.com.com', '03445560895', 'customer', 1, 0, '2025-12-11 06:22:40.452908', '2025-12-11 06:22:40.461904', 0, NULL, '5FB6C0', '2025-12-11 06:37:40.461904', 0),
('!CEQpUFoqBacOz8GdH9Z1u9tk9GjP6VgpFjRAKeBU', NULL, 0, 5, 'Ahmed Sahni', 'ahmedsahni71@gmail.com', '+923368850514', 'customer', 1, 0, '2026-05-03 13:47:00.000156', '2026-05-07 09:47:12.169981', 0, '117766742892472631333', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_permissions`
--

CREATE TABLE `users_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `wishlist_id` int(11) NOT NULL,
  `added_at` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`wishlist_id`, `added_at`, `product_id`, `user_id`) VALUES
(2, '2026-04-29 13:40:55.575318', 105, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD UNIQUE KEY `cart_user_id_product_id_size_4650d148_uniq` (`user_id`,`product_id`,`size`),
  ADD KEY `cart_product_id_508e72da_fk_products_product_id` (`product_id`),
  ADD KEY `cart_user_id_9b8b23_idx` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_custome_6c3a7f_idx` (`customer_id`),
  ADD KEY `orders_order_s_0d3802_idx` (`order_status`),
  ADD KEY `orders_order_d_6e39a9_idx` (`order_date`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_items_order_i_26ad88_idx` (`order_id`),
  ADD KEY `order_items_product_a53db1_idx` (`product_id`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_tra_order_i_54c79b_idx` (`order_id`),
  ADD KEY `payment_tra_transac_4a22d3_idx` (`transaction_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `products_categor_fce6e6_idx` (`category`),
  ADD KEY `products_gender_949839_idx` (`gender`),
  ADD KEY `products_color_e898d3_idx` (`color`),
  ADD KEY `products_fabric_048797_idx` (`fabric`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_images_product_id_28ebf5f0_fk_products_product_id` (`product_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`size_id`),
  ADD UNIQUE KEY `product_sizes_product_id_size_27236b6f_uniq` (`product_id`,`size`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`recommendation_id`),
  ADD KEY `recommendations_product_id_ac1e953d_fk_products_product_id` (`product_id`),
  ADD KEY `recommendat_custome_be59ce_idx` (`customer_id`),
  ADD KEY `recommendat_score_11d775_idx` (`score`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD UNIQUE KEY `reviews_customer_id_product_id_6d3c1480_uniq` (`customer_id`,`product_id`),
  ADD KEY `reviews_product_3516b2_idx` (`product_id`),
  ADD KEY `reviews_custome_a5b696_idx` (`customer_id`);

--
-- Indexes for table `sales_analytics`
--
ALTER TABLE `sales_analytics`
  ADD PRIMARY KEY (`analytics_id`),
  ADD KEY `sales_analytics_order_id_5c7c92f6_fk_orders_order_id` (`order_id`),
  ADD KEY `sales_analy_product_82c514_idx` (`product_id`),
  ADD KEY `sales_analy_sale_da_2be818_idx` (`sale_date`),
  ADD KEY `sales_analy_sale_ti_c8c9e2_idx` (`sale_timestamp`);

--
-- Indexes for table `stock_alerts`
--
ALTER TABLE `stock_alerts`
  ADD PRIMARY KEY (`alert_id`),
  ADD KEY `stock_alert_product_6816f8_idx` (`product_id`),
  ADD KEY `stock_alert_is_read_af0dfb_idx` (`is_read`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `google_id` (`google_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_groups_user_id_group_id_fc7788e8_uniq` (`user_id`,`group_id`),
  ADD KEY `users_groups_group_id_2f3517aa_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_permissions_user_id_permission_id_3b86cbdf_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD UNIQUE KEY `wishlists_user_id_product_id_a766f057_uniq` (`user_id`,`product_id`),
  ADD KEY `wishlists_product_id_6f2a0dee_fk_products_product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `recommendation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_analytics`
--
ALTER TABLE `sales_analytics`
  MODIFY `analytics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `stock_alerts`
--
ALTER TABLE `stock_alerts`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_product_id_508e72da_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `cart_user_id_1361a739_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_b7016332_fk_users_user_id` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_412ad78b_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_product_id_dd557d5a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD CONSTRAINT `payment_transactions_order_id_bdd20c7f_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_28ebf5f0_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_sizes_product_id_2be7dd32_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_customer_id_e40e17e5_fk_users_user_id` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `recommendations_product_id_ac1e953d_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_customer_id_a074204f_fk_users_user_id` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `reviews_product_id_d4b78cfe_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `sales_analytics`
--
ALTER TABLE `sales_analytics`
  ADD CONSTRAINT `sales_analytics_order_id_5c7c92f6_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `sales_analytics_product_id_b3767692_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `stock_alerts`
--
ALTER TABLE `stock_alerts`
  ADD CONSTRAINT `stock_alerts_product_id_81560a73_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_group_id_2f3517aa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_groups_user_id_f500bee5_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  ADD CONSTRAINT `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_permissions_user_id_92473840_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_6f2a0dee_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `wishlists_user_id_6280b16e_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
