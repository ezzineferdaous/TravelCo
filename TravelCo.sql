-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2024 at 10:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TravelCo`
--

-- --------------------------------------------------------

--
-- Table structure for table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `utilisateur_id` bigint(20) UNSIGNED NOT NULL,
  `vole_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `date_comm` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commentaires`
--

INSERT INTO `commentaires` (`id`, `utilisateur_id`, `vole_id`, `message`, `date_comm`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 'This is a test comment', '2024-09-19', '2024-09-19 19:26:01', '2024-09-19 19:26:01'),
(2, 2, 5, 'This is a test comment', '2024-09-19', '2024-09-19 19:26:51', '2024-09-19 19:26:51'),
(3, 1, 5, 'This is a test comment', '2024-09-19', '2024-09-19 19:26:58', '2024-09-19 19:26:58'),
(4, 9, 4, 'amazing city \"Paris\" i love it ,it so calm and romantic', '2024-09-22', '2024-09-22 11:52:05', '2024-09-22 11:52:05'),
(5, 9, 4, 'amazing city \"Paris\" i love it ,it so calm and romantic', '2024-09-22', '2024-09-22 11:54:09', '2024-09-22 11:54:09'),
(6, 9, 9, 'amazing test', '2024-09-22', '2024-09-22 11:55:02', '2024-09-22 11:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(2, 'canda', '2024-09-17 14:52:39', '2024-09-17 14:52:39'),
(4, 'France', '2024-09-17 14:53:08', '2024-09-17 14:53:08'),
(5, 'USA', '2024-09-17 14:53:17', '2024-09-17 14:53:17'),
(6, 'China', '2024-09-17 15:30:01', '2024-09-17 15:30:01'),
(7, 'Morocco', '2024-09-17 15:31:56', '2024-09-17 15:31:56');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_09_05_200017_create_roles_table', 1),
(3, '2024_09_16_165107_create_destinations_table', 1),
(4, '2024_09_16_185157_create_utilisateurs_table', 1),
(5, '2024_09_17_161213_image_url', 2),
(6, '2024_09_17_162401_remove_image_url_from_destinations', 3),
(7, '2024_09_17_163322_create_voles_table', 4),
(8, '2024_09_17_192401_add_image_to_voles_table', 5),
(9, '2024_09_19_190637_create_reserves_table', 6),
(10, '2024_09_19_200909_create_commentaires_table', 7);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\UtilisateurModel', 10, 'auth_token', 'adcb3dfdb7d52fe625ae96458fe31f2bebad2fe9b407900b9f8df6e6c86a6de0', '[\"*\"]', NULL, NULL, '2024-09-21 18:51:09', '2024-09-21 18:51:09'),
(2, 'App\\Models\\UtilisateurModel', 9, 'authToken', '754f7de1601334725576fc33866cb29bc45a59ac0006ae910959d41f8359a36c', '[\"*\"]', NULL, NULL, '2024-09-21 18:58:25', '2024-09-21 18:58:25'),
(3, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'db3945d161cb6a67fdb4ba683ce1f0cb1aefb0396ac663cf10ad1055c82262bb', '[\"*\"]', NULL, NULL, '2024-09-21 19:24:42', '2024-09-21 19:24:42'),
(4, 'App\\Models\\UtilisateurModel', 9, 'authToken', '39615e425c73ea21028406a67bc58aa71ab617e6ed662b6e41b05eac7e0b88ce', '[\"*\"]', NULL, NULL, '2024-09-21 19:25:07', '2024-09-21 19:25:07'),
(5, 'App\\Models\\UtilisateurModel', 9, 'authToken', '1388c1dbcbb5d6e729a2ea8b9cc52537a8e7c84a1b13d6122b35614093925ea2', '[\"*\"]', NULL, NULL, '2024-09-21 19:25:15', '2024-09-21 19:25:15'),
(6, 'App\\Models\\UtilisateurModel', 9, 'authToken', '1898223da5d6497f6c777dafb59c4c3d772d59bfc35db625dcb29da245129f0e', '[\"*\"]', NULL, NULL, '2024-09-21 19:25:27', '2024-09-21 19:25:27'),
(7, 'App\\Models\\UtilisateurModel', 11, 'auth_token', 'd65363bff96904c6c1c826354c165b4a1df7aad59901ffb35d0054c60e904f18', '[\"*\"]', NULL, NULL, '2024-09-21 19:27:42', '2024-09-21 19:27:42'),
(8, 'App\\Models\\UtilisateurModel', 9, 'authToken', '5e2ca07d8511474a9a47f2fa85c4afeafdb4f59a8df47a099466e32e92c821c3', '[\"*\"]', NULL, NULL, '2024-09-21 19:28:55', '2024-09-21 19:28:55'),
(9, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'f36b165537160c12a2109711020e8b52bf2e60beedbd16ad7ed0300f6e6ea313', '[\"*\"]', NULL, NULL, '2024-09-21 19:30:17', '2024-09-21 19:30:17'),
(10, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'ec894be85ac271e457b2d3950541377190dfc1f054623e822a1eb2d2b7625931', '[\"*\"]', NULL, NULL, '2024-09-21 19:32:41', '2024-09-21 19:32:41'),
(11, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'f1bd389f293ab4eb44a73cce390260af16b786aab095dddfc56635ec66e3e5b5', '[\"*\"]', NULL, NULL, '2024-09-21 19:37:09', '2024-09-21 19:37:09'),
(12, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'ff72bdb8aac3b483f20716748cd0e897e5b5d6fed5311f2319a4c2913716a7c2', '[\"*\"]', NULL, NULL, '2024-09-21 19:38:53', '2024-09-21 19:38:53'),
(13, 'App\\Models\\UtilisateurModel', 11, 'authToken', 'bcbea46a58ec5ea8807aeee9da072fc2ecd0697958892c8f9bf6b6872f214a43', '[\"*\"]', NULL, NULL, '2024-09-21 19:49:40', '2024-09-21 19:49:40'),
(14, 'App\\Models\\UtilisateurModel', 11, 'authToken', '7e034f34018119121ce57c5aea905092b67c507201a130748ff1d2ca4d760844', '[\"*\"]', NULL, NULL, '2024-09-21 19:50:40', '2024-09-21 19:50:40'),
(15, 'App\\Models\\UtilisateurModel', 9, 'authToken', '6857b65d349d6dd10a3d4c7632076297e587ff032b3bfe8c8bf681dde45c164b', '[\"*\"]', NULL, NULL, '2024-09-21 19:51:41', '2024-09-21 19:51:41'),
(16, 'App\\Models\\UtilisateurModel', 9, 'authToken', '7c93c3be17bfb029a60f44a5f7d360938f21c72997b32f777606169a6a6b1348', '[\"*\"]', NULL, NULL, '2024-09-21 19:52:38', '2024-09-21 19:52:38'),
(17, 'App\\Models\\UtilisateurModel', 9, 'authToken', '5b4addae0f24b1ad03679e0b267140e597a29f552b055c9b75674cc125d9ac32', '[\"*\"]', NULL, NULL, '2024-09-21 19:54:58', '2024-09-21 19:54:58'),
(18, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'ef4f938c92eb9f0aa0c9551c44697f977c34b8f4f8ca64ccc4413314c4f19d01', '[\"*\"]', NULL, NULL, '2024-09-21 19:56:58', '2024-09-21 19:56:58'),
(19, 'App\\Models\\UtilisateurModel', 9, 'authToken', '5cf6541edab42e344c6b70da29a6bf24fa0840ae22c9e90d6c64499495d3947c', '[\"*\"]', NULL, NULL, '2024-09-21 20:00:56', '2024-09-21 20:00:56'),
(20, 'App\\Models\\UtilisateurModel', 9, 'authToken', '59c5feaaa87e4fee6482f089dafce192794935f7d86aefee179905f4da4279be', '[\"*\"]', NULL, NULL, '2024-09-21 20:02:48', '2024-09-21 20:02:48'),
(21, 'App\\Models\\UtilisateurModel', 9, 'authToken', '7a91dbb33aa42519a9acd7d57f2978dc74ccb0acd1d52773687bf27e8988a551', '[\"*\"]', NULL, NULL, '2024-09-21 20:05:12', '2024-09-21 20:05:12'),
(22, 'App\\Models\\UtilisateurModel', 9, 'authToken', '78fd4768941b6f0124bd6ad04a02d6f08e320612467366b9049840e2d1da4f6c', '[\"*\"]', NULL, NULL, '2024-09-21 20:06:54', '2024-09-21 20:06:54'),
(23, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'd3445f834406d185efc5c0346a006765787e9be1f390059a021816b4db5af3bc', '[\"*\"]', NULL, NULL, '2024-09-21 20:09:14', '2024-09-21 20:09:14'),
(24, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'db4ef16802488aa2a763ad6bcda6e005af6195503fd88bddf020a0b449667c05', '[\"*\"]', NULL, NULL, '2024-09-21 20:09:36', '2024-09-21 20:09:36'),
(25, 'App\\Models\\UtilisateurModel', 9, 'authToken', '2c7ef94f1cbb3bbfaff5c5e216ee418992e7c316cd1d4391307e7d88e512cd5a', '[\"*\"]', NULL, NULL, '2024-09-21 20:10:17', '2024-09-21 20:10:17'),
(26, 'App\\Models\\UtilisateurModel', 9, 'authToken', '0e5755dd1f0400c325f45bc0dfea5142f37c9f655b79a224dad0b953de1292e2', '[\"*\"]', NULL, NULL, '2024-09-22 10:49:56', '2024-09-22 10:49:56'),
(27, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'c9dc0366a9969e7d8d32a414d41b9a32d69a200f9640a37a9db90288a45f0cd5', '[\"*\"]', NULL, NULL, '2024-09-22 10:54:16', '2024-09-22 10:54:16'),
(28, 'App\\Models\\UtilisateurModel', 9, 'authToken', '51f3822f38dbdf42f4b148134c2e4ba0ddd300b62ee901fe411e5ab549b1058e', '[\"*\"]', NULL, NULL, '2024-09-22 10:55:35', '2024-09-22 10:55:35'),
(29, 'App\\Models\\UtilisateurModel', 9, 'authToken', '842539017d183af6b28e07790942860d8de4976c105539bf1fbd5ebb8d6bcfc6', '[\"*\"]', NULL, NULL, '2024-09-22 11:23:16', '2024-09-22 11:23:16'),
(30, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'd756a7efe9ac8145f72323b4e64ee1a6a26f279d865bc0860769fea2ca987e4c', '[\"*\"]', NULL, NULL, '2024-09-22 11:27:09', '2024-09-22 11:27:09'),
(31, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'ff5efb03b3baeddf9c6db368cbb8ce464c9fbff7d2703ae364088d795534de8c', '[\"*\"]', NULL, NULL, '2024-09-22 11:31:15', '2024-09-22 11:31:15'),
(32, 'App\\Models\\UtilisateurModel', 9, 'authToken', '12bbdaf698aec61f5c0bd5e21509c81edb68df3714419dc1a81a84110dc15773', '[\"*\"]', NULL, NULL, '2024-09-22 11:50:52', '2024-09-22 11:50:52'),
(33, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'f1f349687bd03383054e40d760fac0170944839fe9b9b8477e9939dd6eddbf9c', '[\"*\"]', NULL, NULL, '2024-09-22 12:03:17', '2024-09-22 12:03:17'),
(34, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'b4de3b5b3eddb5bd6f1d96994aac7b786bf20e29dd2982f5b55f9ffc81d674f1', '[\"*\"]', NULL, NULL, '2024-09-22 13:16:14', '2024-09-22 13:16:14'),
(35, 'App\\Models\\UtilisateurModel', 1, 'authToken', '59fd3cc47953c97e59a99859f078c3df3d00702637b1d1721675f9159550765d', '[\"*\"]', NULL, NULL, '2024-09-22 13:20:57', '2024-09-22 13:20:57'),
(36, 'App\\Models\\UtilisateurModel', 1, 'authToken', '14038ace99d512e52130d42437dcfd2e5498671847e0d15486526aeffe2d596b', '[\"*\"]', NULL, NULL, '2024-09-24 18:35:30', '2024-09-24 18:35:30'),
(37, 'App\\Models\\UtilisateurModel', 9, 'authToken', '3e5efe61346c478e60f8df7d2068d564dd5d0b6efaf1b3ebaa3fd7277467220b', '[\"*\"]', NULL, NULL, '2024-09-25 19:10:07', '2024-09-25 19:10:07'),
(38, 'App\\Models\\UtilisateurModel', 1, 'authToken', 'e6c5a8614e3a756c61a56b705be2be79731dfd6b51390ab339e76b8b61f5320c', '[\"*\"]', NULL, NULL, '2024-09-25 19:11:03', '2024-09-25 19:11:03'),
(39, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'd216bcf73a62e8d1c9f8e53940cc7fe700e90a400e30ca259a684ac07ac0fce9', '[\"*\"]', NULL, NULL, '2024-09-25 20:01:49', '2024-09-25 20:01:49'),
(40, 'App\\Models\\UtilisateurModel', 1, 'authToken', 'e53004bf0e13332609d295a1183bbfc67cfc386657b089f11d7d9a6bd15afa4a', '[\"*\"]', NULL, NULL, '2024-09-26 18:55:04', '2024-09-26 18:55:04'),
(41, 'App\\Models\\UtilisateurModel', 9, 'authToken', 'f3b150e4cff20589b44c34646ac0c5834a25e4eed80378b87281603d7eb7fe38', '[\"*\"]', NULL, NULL, '2024-09-26 19:04:16', '2024-09-26 19:04:16'),
(42, 'App\\Models\\UtilisateurModel', 9, 'authToken', '2c3fcd67159e52d88d0de4cf8a4d8690859811d9742d76e4f309a3aaf1298249', '[\"*\"]', NULL, NULL, '2024-09-26 20:26:50', '2024-09-26 20:26:50'),
(43, 'App\\Models\\UtilisateurModel', 1, 'authToken', '08ac4ec242c85f6affc577310058341af47d4e66bedb1877a6e0f05c675bbea0', '[\"*\"]', NULL, NULL, '2024-09-26 20:36:22', '2024-09-26 20:36:22'),
(44, 'App\\Models\\UtilisateurModel', 11, 'authToken', '8c00d0b622a6b5ce591ad8672fd475a19c89a3d2d41032e66f2abf7ff7dd6b1b', '[\"*\"]', NULL, NULL, '2024-09-26 20:37:54', '2024-09-26 20:37:54'),
(45, 'App\\Models\\UtilisateurModel', 11, 'authToken', '4bfc8f6d2911e22b774650ef3df4471fecbd1439c47b1f24c0eeed5921baf311', '[\"*\"]', NULL, NULL, '2024-09-26 20:46:15', '2024-09-26 20:46:15'),
(46, 'App\\Models\\UtilisateurModel', 11, 'authToken', '578f1404d90746a25165f6e2eabe432aa152144ef678ef6d3987b4f9518d26e4', '[\"*\"]', NULL, NULL, '2024-09-26 21:06:06', '2024-09-26 21:06:06'),
(47, 'App\\Models\\UtilisateurModel', 11, 'authToken', 'd7376e24e9bbb09dcfc668ee5137e5b55c33bff1a8bba3fcdfd81f1d3ebbd4de', '[\"*\"]', NULL, NULL, '2024-09-26 21:10:19', '2024-09-26 21:10:19'),
(48, 'App\\Models\\UtilisateurModel', 9, 'authToken', '793fbac6c9b1a27e68d6af557d219cc46b5dd3032bce697d1b6f0a46b389a494', '[\"*\"]', NULL, NULL, '2024-09-26 21:12:38', '2024-09-26 21:12:38'),
(49, 'App\\Models\\UtilisateurModel', 9, 'authToken', '93c7ed6f961594d8e3daa849e28f7d76868fb6ee85cf84d93d1648e642b05cc0', '[\"*\"]', NULL, NULL, '2024-09-27 17:59:40', '2024-09-27 17:59:40'),
(50, 'App\\Models\\UtilisateurModel', 11, 'authToken', '01842b3c6a0d203c6efc865a81e94e82925408e011dbd6e9dc37de1c92c31466', '[\"*\"]', NULL, NULL, '2024-09-27 18:18:04', '2024-09-27 18:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `reserves`
--

CREATE TABLE `reserves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `utilisateur_id` bigint(20) UNSIGNED NOT NULL,
  `vole_id` bigint(20) UNSIGNED NOT NULL,
  `Date_res` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reserves`
--

INSERT INTO `reserves` (`id`, `utilisateur_id`, `vole_id`, `Date_res`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '2024-09-15', '2024-09-19 18:44:44', '2024-09-19 18:44:44'),
(2, 7, 8, '2024-09-15', '2024-09-19 18:45:22', '2024-09-19 18:45:22'),
(3, 1, 8, '2024-02-10', '2024-09-19 18:45:52', '2024-09-19 18:45:52'),
(4, 6, 4, '2024-09-25', '2024-09-22 11:18:17', '2024-09-22 11:18:17'),
(5, 9, 5, '2024-09-22', '2024-09-22 11:18:38', '2024-09-22 11:18:38'),
(6, 9, 4, '2024-09-22', '2024-09-22 11:31:27', '2024-09-22 11:31:27'),
(7, 9, 10, '2024-09-26', '2024-09-26 18:49:54', '2024-09-26 18:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-09-16 18:06:38', '2024-09-16 18:06:38'),
(2, 'client', '2024-09-16 18:06:42', '2024-09-16 18:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `email`, `tel`, `date_naissance`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'ikram', 'be', 'ikrambe@gmail.com', '0622960059', '2003-01-01', '$2y$10$ZphWKX9EWljMwXAG.O2gIugVh9rTOrgJdKbglGEYJoDmMhaO5UhNG', 1, '2024-09-16 18:07:37', '2024-09-22 13:20:37'),
(2, 'fer', 'ezzin', 'ezzin@gmail.com', '0612345678', '2007-10-16', '1234', 2, '2024-09-16 18:58:12', '2024-09-16 18:58:12'),
(3, 'TEST', 'TTTT', 'Test@gmail.com', '0623456789', '2024-09-12', '12345', 1, '2024-09-16 18:59:47', '2024-09-16 18:59:47'),
(4, 'testTTT', 'test', 'ttttt@gmail.com', '0623456789', '2024-09-04', '1234', 2, '2024-09-16 19:04:18', '2024-09-16 20:00:27'),
(6, 'TTest', 'TTTTTTTes', 'TTTTTTTest@gmail.com', '063456789', '2024-09-26', '12346', 2, '2024-09-16 19:55:13', '2024-09-17 13:14:33'),
(7, 'ahmed aff', 'ahmed', 'ahmed@gmail.com', '063456789', '2024-09-26', '12346', 1, '2024-09-17 12:28:44', '2024-09-17 13:14:42'),
(9, 'Ali', 'Alalaoui 2', 'ali@gmail.com', '06230947823', '2012-02-01', '$2y$10$J3QjSzyzcfclOicyoIIDy.oFOCKgKUbQlndIPxvFidtdXZCVc5rwS', 2, '2024-09-21 18:38:50', '2024-09-27 18:06:54'),
(10, 'Ahmad', 'TAZI', 'tazi@gmail.com', '06230947823', '2024-08-28', '$2y$10$BW4vH./Bnjb2Z50OhHI.VeelBxT853aUTIc3Tnc/470nQ11a2nhS.', 2, '2024-09-21 18:51:09', '2024-09-21 18:51:09'),
(11, 'ahmed', 'Aff', 'hmed@gmail.com', '06230947855', '2024-09-18', '$2y$10$rvQ8j8KYa0oSdWjQaPz2KOFav8BHv6Flooh7nps0fE9/dYAWzYYf.', 2, '2024-09-21 19:27:42', '2024-09-26 21:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `voles`
--

CREATE TABLE `voles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ville` varchar(255) NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `du` date NOT NULL,
  `au` date NOT NULL,
  `prix` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voles`
--

INSERT INTO `voles` (`id`, `ville`, `destination_id`, `description`, `du`, `au`, `prix`, `created_at`, `updated_at`, `image`) VALUES
(4, 'Paris', 4, 'Paris, France\'s capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine', '2024-05-01', '2024-05-17', '8000', '2024-09-17 18:41:08', '2024-09-17 18:41:08', '1726602068.jpeg'),
(5, 'New York', 5, 'New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers', '2024-07-03', '2024-07-31', '12000', '2024-09-17 18:50:37', '2024-09-17 18:50:37', '1726602637.jpeg'),
(8, 'Casablanca', 7, 'Casablanca is a port city and commercial hub in western Morocco, fronting the Atlantic Ocean. The city\'s French colonial legacy is seen in its downtown Mauresque architecture, a blend of Moorish style and European art deco.', '2024-07-17', '2024-07-31', '6500', '2024-09-18 18:13:32', '2024-09-18 18:13:32', '1726686812.jpeg'),
(9, 'Test15', 2, 'AZERTYUFGHJ45678VB', '2024-09-12', '2024-10-05', '123486', '2024-09-18 18:19:39', '2024-09-22 14:03:29', '1726687179.png'),
(10, 'Wuhan', 6, 'Wuhan, the sprawling capital of Central China’s Hubei province, is a commercial center divided by the Yangtze and Han rivers. The city contains many lakes and parks, including expansive, picturesque East Lake.', '2025-03-28', '2025-06-21', '40000', '2024-09-18 19:23:08', '2024-09-22 14:33:35', '1726690988.jpeg'),
(11, 'Test1', 4, 'Description of the place', '2024-05-01', '2024-05-17', '12345678', '2024-09-18 19:48:13', '2024-09-20 19:46:05', '1726692493.jpg'),
(19, 'Lyon', 4, 'Lyon, the capital city in France’s Auvergne-Rhône-Alpes region, sits at the junction of the Rhône and Saône rivers. Its center reflects 2,000 years of history from the Roman Amphithéâtre des Trois Gaules', '2024-08-29', '2024-09-21', '12345678', '2024-09-21 13:59:33', '2024-09-21 14:47:37', '1726930773.jpg'),
(20, 'ZERTYUI', 5, 'E34DFGHJJ', '2024-08-27', '2024-09-19', '87653456', '2024-09-21 14:01:11', '2024-09-21 14:01:11', '1726930871.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentaires_utilisateur_id_foreign` (`utilisateur_id`),
  ADD KEY `commentaires_vole_id_foreign` (`vole_id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `destinations_nom_unique` (`nom`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reserves`
--
ALTER TABLE `reserves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reserves_utilisateur_id_foreign` (`utilisateur_id`),
  ADD KEY `reserves_vole_id_foreign` (`vole_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_nom_unique` (`nom`);

--
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `utilisateurs_email_unique` (`email`),
  ADD KEY `utilisateurs_role_id_foreign` (`role_id`);

--
-- Indexes for table `voles`
--
ALTER TABLE `voles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voles_destination_id_foreign` (`destination_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reserves`
--
ALTER TABLE `reserves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `voles`
--
ALTER TABLE `voles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_utilisateur_id_foreign` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commentaires_vole_id_foreign` FOREIGN KEY (`vole_id`) REFERENCES `voles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reserves`
--
ALTER TABLE `reserves`
  ADD CONSTRAINT `reserves_utilisateur_id_foreign` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserves_vole_id_foreign` FOREIGN KEY (`vole_id`) REFERENCES `voles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `utilisateurs_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `voles`
--
ALTER TABLE `voles`
  ADD CONSTRAINT `voles_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
