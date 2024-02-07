-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2024 at 03:36 AM
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
-- Database: `project_cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `beverages`
--

CREATE TABLE `beverages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `published` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beverages`
--

INSERT INTO `beverages` (`id`, `title`, `content`, `price`, `published`, `special`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Ice americano', 'one or two shots of espresso, varying ratios of water and ice.', '11$', 'yes', 'no', '1706407644.png', 1, '2024-01-28 00:07:24', '2024-01-28 00:07:24'),
(3, 'Hot americano', 'one or two shoots of expresso, water', '10$', 'yes', 'no', '1706409850.png', 2, '2024-01-28 00:44:10', '2024-01-28 00:44:10'),
(4, 'iced cappuccino', 'An coffee drink with espresso, milk, ice, and an optional sweetener.', '15$', 'yes', 'no', '1706753178.png', 1, '2024-02-01 00:06:18', '2024-02-01 00:06:18'),
(5, 'iced latte', 'a drink with espresso, milk, and an optional sweetener. The milk is often frothed to simulate the steamed milk in a standard', '14$', 'yes', 'no', '1706753399.png', 1, '2024-02-01 00:09:59', '2024-02-01 00:09:59'),
(6, 'iced mocha', 'coffee drink made with espresso, milk and chocolate, served over ice', '18$', 'yes', 'no', '1706753775.png', 1, '2024-02-01 00:16:15', '2024-02-01 00:16:15'),
(7, 'hot cappuccino', 'an espresso drink with steamed milk, milk foam, and espresso.', '13.50$', 'yes', 'no', '1706753989.png', 2, '2024-02-01 00:19:49', '2024-02-01 00:19:49'),
(8, 'hot latte', 'a coffee drink with espresso, steamed milk, and a layer of foam on top.', '12.50', 'yes', 'no', '1706754388.png', 2, '2024-02-01 00:26:28', '2024-02-01 00:26:28'),
(9, 'hot mocha', 'coffee and chocolate lovers alike, combines the two under a layer of creamy foamed milk. Skim milk foams', '20$', 'yes', 'no', '1706754759.jpg', 2, '2024-02-01 00:32:39', '2024-02-01 00:32:39'),
(10, 'orange juice', 'orange and ice.', '12$', 'yes', 'no', '1706754932.png', 3, '2024-02-01 00:35:32', '2024-02-05 22:36:26'),
(11, 'strawberry smoothie', 'milk, sugar, and strawberry.', '15$', 'yes', 'no', '1706755247.png', 3, '2024-02-01 00:40:47', '2024-02-01 00:40:47'),
(12, 'lemon and mint juice', 'lemon, mint, water and ice', '11$', 'yes', 'no', '1706755442.png', 3, '2024-02-01 00:44:02', '2024-02-01 00:44:02'),
(13, 'croissant', 'a fresh croissant can be served by cheese (optional)', '9$', 'yes', 'yes', '1706756456.jpg', 5, '2024-02-01 01:00:56', '2024-02-01 01:00:56'),
(14, 'mini burgers', 'beef, lettuce, tomato, and cheese', '35$', 'yes', 'yes', '1706756653.jpg', 5, '2024-02-01 01:04:13', '2024-02-01 01:04:13'),
(15, 'grill chicken', 'chicken, butter and vegetables', '40$', 'yes', 'yes', '1706756805.jpg', 5, '2024-02-01 01:06:45', '2024-02-01 01:06:45'),
(16, 'strawberry mojito', 'ice, soda, and a chosen flavor', '16$', 'yes', 'yes', '1706756959.jpg', 3, '2024-02-01 01:09:19', '2024-02-07 00:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Iced Coffee', '2024-01-26 04:00:08', '2024-01-26 04:00:08'),
(2, 'Hot Coffee', '2024-01-26 04:00:46', '2024-01-26 04:00:46'),
(3, 'Fresh Juice', '2024-01-26 04:01:06', '2024-01-30 22:37:28'),
(5, 'food', '2024-01-24 00:50:11', '2024-02-07 00:05:29');

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(4, 'jana', 'jana@gmail.com', 'hello , the food is so delicious.', '2024-01-30 02:36:04', '2024-01-30 02:36:04'),
(5, 'khaild', 'khalid@gmail.com', 'i love the view', '2024-01-30 02:37:53', '2024-01-30 02:37:53'),
(12, 'gamal', 'gamal@gmail.com', 'great view', '2024-02-01 01:27:52', '2024-02-01 01:27:52'),
(14, 'rowan', 'rowan@gmail.com', 'good service', '2024-02-01 22:15:02', '2024-02-01 22:15:02'),
(15, 'ahmed', 'ahmed@gmail.com', 'thank you for this invitation', '2024-02-01 22:25:36', '2024-02-01 22:25:36'),
(19, 'reem', 'reem@gmail.com', 'beautiful place', '2024-02-02 01:06:37', '2024-02-02 01:06:37'),
(21, 'ola', 'ola@gmail.com', 'I love it', '2024-02-02 02:24:48', '2024-02-02 02:24:48'),
(22, 'ola', 'ola@gmail.com', 'i love it', '2024-02-02 02:29:35', '2024-02-02 02:29:35'),
(23, 'sara', 'sara@gmail.com', 'great', '2024-02-02 02:29:58', '2024-02-02 02:29:58'),
(24, 'ramy', 'ramy@gmail.com', 'thank you', '2024-02-02 02:36:44', '2024-02-02 02:36:44'),
(26, 'talia', 'talia@gmail.com', 'I want to make a reservation for 20 people for my birthday.', '2024-02-05 22:13:57', '2024-02-05 22:13:57'),
(27, 'gamila', 'gamila@gmail.com', 'i love the place.', '2024-02-05 22:15:40', '2024-02-05 22:15:40'),
(28, 'gamal', 'gamal@gmail.com', 'the chicken meal is very delicious.', '2024-02-05 22:17:54', '2024-02-05 22:17:54'),
(31, 'lolo', 'lolo@gmail.com', 'great place', '2024-02-05 22:46:53', '2024-02-05 22:46:53'),
(32, 'khaild', 'khalid@gmail.com', 'good', '2024-02-05 22:47:30', '2024-02-05 22:47:30');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_01_25_025838_add_column_to__user', 1),
(7, '2024_01_25_045201_add_column_to__user', 2),
(8, '2024_01_26_050253_create_categories_table', 3),
(9, '2024_01_27_023306_create_beverages_table', 4),
(11, '2024_01_30_021637_create_messages_table', 5),
(12, '2024_02_02_012920_create_notifications_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('09b5e59c-541c-4dc3-a17a-49b03a9b218c', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"khaild\",\"message\":\"good\",\"msg_id\":32}', '2024-02-05 22:50:14', '2024-02-05 22:47:30', '2024-02-05 22:50:14'),
('118ba428-9af5-4d9a-b6f2-7bb7420de389', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"khaild\",\"message\":\"good\",\"msg_id\":32}', '2024-02-05 22:50:14', '2024-02-05 22:47:30', '2024-02-05 22:50:14'),
('131bf8eb-fd7d-4717-8951-2f77fbccc093', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"ola\",\"message\":\"i love it\",\"msg_id\":22}', '2024-02-02 02:36:59', '2024-02-02 02:29:36', '2024-02-02 02:36:59'),
('1f679061-7adf-4cdb-b74a-2d359e776129', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"gamila\",\"message\":\"i love the place.\",\"msg_id\":27}', '2024-02-05 22:36:43', '2024-02-05 22:15:41', '2024-02-05 22:36:43'),
('216619c9-d651-4634-9711-d256a0fddbf0', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"ola\",\"message\":\"I love it\",\"msg_id\":21}', NULL, '2024-02-02 02:24:48', '2024-02-02 02:24:48'),
('23ccaa89-b718-451e-99b5-36510ff742d8', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"reem\",\"message\":\"beautiful place\",\"msg_id\":19}', '2024-02-02 02:22:06', '2024-02-02 01:06:37', '2024-02-02 02:22:06'),
('257f13a2-76ad-464d-a5d6-b580d6c0a7d2', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"reem\",\"message\":\"beautiful place\",\"msg_id\":19}', NULL, '2024-02-02 01:06:38', '2024-02-02 01:06:38'),
('26a51c75-aa49-45ce-8b4a-6affb6fb0e19', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"lolo\",\"message\":\"great place\",\"msg_id\":31}', NULL, '2024-02-05 22:46:53', '2024-02-05 22:46:53'),
('3473f990-3a2c-47c2-bda3-6a9dccabd3f1', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"gamila\",\"message\":\"i love the place.\",\"msg_id\":27}', NULL, '2024-02-05 22:15:41', '2024-02-05 22:15:41'),
('3708102b-5c0e-45c7-85a9-32eb293d7e24', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"lolo\",\"message\":\"love the place\",\"msg_id\":25}', '2024-02-05 22:36:43', '2024-02-05 20:50:28', '2024-02-05 22:36:43'),
('3e159100-ade4-4e7c-a399-1a0bf5b6ffc7', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"talia\",\"message\":\"I want to make a reservation for 20 people for my birthday.\",\"msg_id\":26}', '2024-02-05 22:56:10', '2024-02-05 22:13:58', '2024-02-05 22:56:10'),
('45b6f00d-c6ee-4c80-89a8-5c3662c9b766', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"gamal\",\"message\":\"the chicken meal is very delicious.\",\"msg_id\":28}', '2024-02-05 22:36:43', '2024-02-05 22:17:55', '2024-02-05 22:36:43'),
('4cd829c5-5fcd-4ca2-96e6-234d4d140f2b', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"ramy\",\"message\":\"thank you\",\"msg_id\":24}', NULL, '2024-02-02 02:36:44', '2024-02-02 02:36:44'),
('763b45d6-69b4-47aa-855a-8088ec5d6a72', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"talia\",\"message\":\"good job\",\"msg_id\":20}', '2024-02-05 22:56:04', '2024-02-02 02:24:18', '2024-02-05 22:56:04'),
('783addfe-f252-43cc-92ff-d9464e5d036b', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"khaild\",\"message\":\"good\",\"msg_id\":32}', '2024-02-05 22:50:14', '2024-02-05 22:47:30', '2024-02-05 22:50:14'),
('7bb37821-5851-4761-90a9-2318b223d706', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"gamal\",\"message\":\"The iced coffee is very delicious.\",\"msg_id\":30}', '2024-02-05 22:41:04', '2024-02-05 22:40:45', '2024-02-05 22:41:04'),
('81af8a57-89d8-4df2-8348-f7617c7c67e3', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"ola\",\"message\":\"i love it\",\"msg_id\":22}', NULL, '2024-02-02 02:29:36', '2024-02-02 02:29:36'),
('8c4c516e-4e56-492f-8845-b2efe6cf5a3a', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"sara\",\"message\":\"great\",\"msg_id\":23}', '2024-02-02 02:35:51', '2024-02-02 02:29:58', '2024-02-02 02:35:51'),
('98188a93-244c-4fff-aae6-b56a49da9bcd', 'App\\Notifications\\sentMail', 'App\\Models\\User', 4, '{\"name\":\"reem\",\"message\":\"beautiful place\",\"msg_id\":19}', NULL, '2024-02-02 01:06:38', '2024-02-02 01:06:38'),
('995fb5e9-0cf6-40f1-843c-4f6b99e0cd92', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"talia\",\"message\":\"good job\",\"msg_id\":20}', '2024-02-05 22:56:04', '2024-02-02 02:24:18', '2024-02-05 22:56:04'),
('a0d71091-b5bc-4877-aa37-2bb0f62760f6', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"lolo\",\"message\":\"love the place\",\"msg_id\":25}', NULL, '2024-02-05 20:50:28', '2024-02-05 20:50:28'),
('a4f66998-5ef8-4ac6-96f2-36d4f95bb6f3', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"talia\",\"message\":\"good job\",\"msg_id\":20}', '2024-02-05 22:56:04', '2024-02-02 02:24:18', '2024-02-05 22:56:04'),
('ada259af-a509-4d92-9f1f-0a292e4b29a0', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"gamal\",\"message\":\"the chicken meal is very delicious.\",\"msg_id\":28}', NULL, '2024-02-05 22:17:55', '2024-02-05 22:17:55'),
('ae0ecda8-aced-441f-8289-db74c9047330', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"ramy\",\"message\":\"thank you\",\"msg_id\":24}', NULL, '2024-02-02 02:36:44', '2024-02-02 02:36:44'),
('b44afde3-79e5-4e74-95d9-b10d9a6ee854', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"ola\",\"message\":\"i love it\",\"msg_id\":22}', NULL, '2024-02-02 02:29:36', '2024-02-02 02:29:36'),
('b4e0bfbb-a510-42aa-80b8-54d61e516f07', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"ola\",\"message\":\"I love it\",\"msg_id\":21}', '2024-02-02 02:25:12', '2024-02-02 02:24:48', '2024-02-02 02:25:12'),
('bd5c9c78-a386-4929-8e82-02621e80a4a3', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"talia\",\"message\":\"I want to make a reservation for 20 people for my birthday.\",\"msg_id\":26}', '2024-02-05 22:56:10', '2024-02-05 22:13:57', '2024-02-05 22:56:10'),
('c1de3a59-0d08-47e9-9179-482dc84d4d9f', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"sara\",\"message\":\"great\",\"msg_id\":23}', '2024-02-02 02:35:51', '2024-02-02 02:29:59', '2024-02-02 02:35:51'),
('c39c40cd-f268-4b7b-b732-304041917363', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"ramy\",\"message\":\"thank you\",\"msg_id\":24}', '2024-02-02 02:36:59', '2024-02-02 02:36:44', '2024-02-02 02:36:59'),
('c72d4870-6f37-414d-9f17-8d897bb3f1be', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"gamila\",\"message\":\"i love the place.\",\"msg_id\":27}', NULL, '2024-02-05 22:15:41', '2024-02-05 22:15:41'),
('ca248b37-1677-4f93-9a3b-853794695245', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"lolo\",\"message\":\"great place\",\"msg_id\":31}', '2024-02-05 22:50:46', '2024-02-05 22:46:53', '2024-02-05 22:50:46'),
('cc9ada34-a4e4-4942-ae88-6ff3948d5dd5', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"ola\",\"message\":\"I love it\",\"msg_id\":21}', NULL, '2024-02-02 02:24:48', '2024-02-02 02:24:48'),
('cd6b4fb4-e8e7-42d2-9fe5-4b6f678219ef', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"gamal\",\"message\":\"The iced coffee is very delicious.\",\"msg_id\":30}', '2024-02-05 22:41:04', '2024-02-05 22:40:45', '2024-02-05 22:41:04'),
('d1430cf8-f0cc-411e-8d36-11e387a035ca', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"gamal\",\"message\":\"The iced coffee is very delicious.\",\"msg_id\":29}', NULL, '2024-02-05 22:40:44', '2024-02-05 22:40:44'),
('d3cff43a-e32e-4cee-92c7-7194c3cc6ac5', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"lolo\",\"message\":\"great place\",\"msg_id\":31}', NULL, '2024-02-05 22:46:53', '2024-02-05 22:46:53'),
('d4a2f66c-3b9d-49d0-a809-b0c25112d589', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"gamal\",\"message\":\"the chicken meal is very delicious.\",\"msg_id\":28}', NULL, '2024-02-05 22:17:55', '2024-02-05 22:17:55'),
('d8571d39-91a5-4c07-84b2-d35cb607999d', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"gamal\",\"message\":\"The iced coffee is very delicious.\",\"msg_id\":29}', '2024-02-05 22:40:53', '2024-02-05 22:40:44', '2024-02-05 22:40:53'),
('e345ebf2-9961-4100-821e-480e3c4eddb9', 'App\\Notifications\\sentMail', 'App\\Models\\User', 1, '{\"name\":\"gamal\",\"message\":\"The iced coffee is very delicious.\",\"msg_id\":30}', '2024-02-05 22:41:04', '2024-02-05 22:40:45', '2024-02-05 22:41:04'),
('ea42a1cb-220e-4b91-9f5f-ed1a033b29e8', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"sara\",\"message\":\"great\",\"msg_id\":23}', '2024-02-02 02:35:51', '2024-02-02 02:29:59', '2024-02-02 02:35:51'),
('ee773cd1-5127-418a-9a49-1fee28fb74e1', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"gamal\",\"message\":\"The iced coffee is very delicious.\",\"msg_id\":29}', NULL, '2024-02-05 22:40:44', '2024-02-05 22:40:44'),
('ee8cee4a-edad-4379-a4b4-01b5aa56875e', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"lolo\",\"message\":\"love the place\",\"msg_id\":25}', NULL, '2024-02-05 20:50:28', '2024-02-05 20:50:28'),
('fbffeb05-8b8c-46d6-9b6b-83647c990a58', 'App\\Notifications\\sentMail', 'App\\Models\\User', 21, '{\"name\":\"talia\",\"message\":\"I want to make a reservation for 20 people for my birthday.\",\"msg_id\":26}', '2024-02-05 22:56:10', '2024-02-05 22:13:58', '2024-02-05 22:56:10'),
('fefe353f-6a8a-4762-b16c-eb5e339ecda3', 'App\\Notifications\\sentMail', 'App\\Models\\User', 25, '{\"name\":\"reem\",\"message\":\"beautiful place\",\"msg_id\":19}', NULL, '2024-02-02 01:06:38', '2024-02-02 01:06:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_name`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `active`) VALUES
(1, 'mariam hossam', 'mariam@gmail.com', 'mariam27', '2024-01-25 01:09:14', '$2y$12$9DFklQl8OTPvxvjWKyi/i.7AVwTfbqKOXhRjaKC3LQ.sQIzUNm1ru', 'admin', NULL, '2024-01-25 01:09:05', '2024-01-31 02:20:31', 'yes'),
(2, 'ahmed khalid', 'ahmedkh@gmail.com', 'ahmed33', '2024-01-25 01:10:54', '$2y$12$4AVPhwbtD4XVEGnaajUFJubOcP3ZHk310LI7pezaNQNfH88geu1lu', 'user', NULL, '2024-01-25 01:10:40', '2024-02-05 22:20:50', 'yes'),
(3, 'soha omer', 'soha@gmail.com', 'soha11', '2024-01-25 01:12:46', '$2y$12$LhaS/IUD4nlL.YsW0L6aaeniYdSxEErXsztlHBs9GgqRL8eZkAmhK', 'user', NULL, '2024-01-25 01:12:38', '2024-01-26 02:23:03', 'no'),
(21, 'hady ahmed', 'hady@gmail.com', 'hany22', '2024-02-01 21:53:07', '$2y$12$ZFXcuftX4Fo3eEVu1twj5.RMfLRaIKj5g12HTUZx6v2esZHpdSKCa', 'admin', NULL, '2024-02-01 21:53:01', '2024-02-01 21:53:07', 'yes'),
(24, 'kholaud mohamed', 'kholaud@gmail.com', 'kholaud23', '2024-02-01 22:00:19', '$2y$12$m41eK9UYJUiBlsaBIW4.v.NUqOpQaDp5UVW7O1sp87fRFT9C7yWhO', 'user', NULL, '2024-02-01 22:00:09', '2024-02-01 22:00:19', 'yes'),
(25, 'sara ahmed', 'sara@gmail.com', 'sara11', '2024-02-01 22:03:17', '$2y$12$pFvaIZXgB/L7OLqXdSBZ1Oa50SERu6p5WAc3d/NALGZIyNMluaJCq', 'admin', NULL, '2024-02-01 22:03:10', '2024-02-01 22:03:17', 'yes'),
(29, 'nour samy', 'nour@gmail.com', 'nour23', '2024-02-05 22:23:42', '$2y$12$bYxHpxJLlVg9dqOpS3uKlu.G5Crsv9956uxa/0xieh5h8JSrAir/.', 'user', NULL, '2024-02-05 22:23:26', '2024-02-05 22:23:42', 'yes'),
(31, 'menna hossam', 'menna@gmail.com', 'menna14', '2024-02-05 23:05:58', '$2y$12$5gvc/yLP0U72VPf47oAdtO2rXuYELqgq9IL3PIRzbtp2eXUB4HtMC', 'user', NULL, '2024-02-05 23:05:43', '2024-02-05 23:05:58', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beverages_category_id_foreign` (`category_id`);

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beverages`
--
ALTER TABLE `beverages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beverages`
--
ALTER TABLE `beverages`
  ADD CONSTRAINT `beverages_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
