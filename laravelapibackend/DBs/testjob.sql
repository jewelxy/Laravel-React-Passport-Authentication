-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 04:14 AM
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
-- Database: `test_passport`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdby` bigint(20) DEFAULT NULL,
  `updatedby` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `description`, `image`, `createdby`, `updatedby`, `created_at`, `updated_at`) VALUES
(1, 'Liveral', 'A timeless romantic comedy of manners, following the spirited Elizabeth Bennet as she navigates', 'E:\\react\\testapp\\iamge\\6.jpg', NULL, NULL, '2024-02-25 18:46:00', '2024-02-25 20:49:18'),
(2, 'The Catcher in the Rye', 'Narrated by disillusioned teenager Holden Caulfield, this coming-of-age novel captures the angst and alienation of adolescence as Holden grapples with societal hypocrisy and searches for genuine connections in a superficial world.', '1708908452.png', NULL, NULL, '2024-02-25 18:47:32', '2024-02-25 18:47:32'),
(3, 'The grammar', 'No text', '1708915693.png', NULL, NULL, '2024-02-25 20:48:14', '2024-02-25 20:48:14');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_02_25_164231_book_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0470cfcc51419642664bb7fca66d55a3b764f2393179f92f235345c02efd987abeed9bfa08259301', 7, 1, 'example', '[]', 1, '2024-02-25 18:05:05', '2024-02-25 18:05:17', '2025-02-26 00:05:05'),
('04a259abe5e158f2c8b52f43580be61f6f434b41f4a6596dbe7fff186745d7d573ce9090e6dc97ff', 1, 1, 'example', '[]', 0, '2024-02-25 15:37:42', '2024-02-25 15:37:42', '2025-02-25 21:37:42'),
('0656f59fdd76ec0223b5b9751c28fb02a5a99aa5d8a2be1c74a763565ce6ac985ae87813c2cd5179', 2, 1, 'example', '[]', 0, '2024-02-25 15:38:30', '2024-02-25 15:38:30', '2025-02-25 21:38:30'),
('085a79424f554de9a1085179dad32232d37e76f0525e57421709ed8247ae4e7d3d071fc8e0694130', 2, 1, 'example', '[]', 1, '2024-02-25 16:07:16', '2024-02-25 16:07:22', '2025-02-25 22:07:16'),
('0a738340a400fadd213c091cec99bce6c1dd112159708d80a43cac1ec9eb6c130bfe4e6fedf020cb', 1, 1, 'example', '[]', 0, '2024-02-25 11:30:00', '2024-02-25 11:30:00', '2025-02-25 17:30:00'),
('0c46a86a1e1df69d3c74b4113158c6ba2752f3a95ae3f239b4bfd5c1dd3815f8ee3b95764dd276c7', 2, 1, 'example', '[]', 1, '2024-02-25 11:44:39', '2024-02-25 11:45:45', '2025-02-25 17:44:39'),
('1061ae0f5353959f05d021da73b5aafbb4a0ec8215a5d86b61127877e0f2558618c93bb6fb70288e', 2, 1, 'example', '[]', 0, '2024-02-25 15:41:38', '2024-02-25 15:41:38', '2025-02-25 21:41:38'),
('139c9f2b1d1729a20c51e57382d2774ea07a745b5d554c71878e66322275fa92e0c27f1ef3c059a5', 2, 1, 'example', '[]', 0, '2024-02-25 15:38:31', '2024-02-25 15:38:31', '2025-02-25 21:38:31'),
('154ec7062e8e783832e5e786e754a70128cd48dbd67bbfd45a080eacb64588b59a73bb166fdb37ed', 1, 1, 'example', '[]', 1, '2024-02-25 16:46:05', '2024-02-25 16:54:05', '2025-02-25 22:46:05'),
('15fff0e9165bbd9c904879ddb91345e6d075d5730420df52d6c7177b6069cd49e28fab9e51703e7a', 2, 1, 'example', '[]', 0, '2024-02-25 15:33:47', '2024-02-25 15:33:47', '2025-02-25 21:33:47'),
('25430dd5f272946895323c804643bb8d5590349b77b016ea4ce8e60e1ef9186e473174e2a06f4309', 2, 1, 'example', '[]', 0, '2024-02-25 16:28:21', '2024-02-25 16:28:21', '2025-02-25 22:28:21'),
('25a2820cc2e23fdec6fe42e33e4281caf2956970c7a9e0acff258945e62968b4310d01f4fffa3226', 3, 1, 'example', '[]', 1, '2024-02-25 16:11:22', '2024-02-25 16:11:32', '2025-02-25 22:11:22'),
('282f2df025482546ca7c23d5ae98b1d4cf7ce9e6c17431f04bf29dab67b2626e600ec1dd9ee4a435', 1, 1, 'example', '[]', 1, '2024-02-25 17:03:05', '2024-02-25 17:07:42', '2025-02-25 23:03:05'),
('299913108fb5e1e2fad813d13f3b8a1031a387af346835370ea15dd1f082d78d060e2764de25984e', 2, 1, 'example', '[]', 0, '2024-02-25 15:33:48', '2024-02-25 15:33:48', '2025-02-25 21:33:48'),
('2e653e5bc0efbbb123489bc015aebc189a2e79a568d9b00b4c70d139a7ce5dc4336e9d456b45a597', 3, 1, 'example', '[]', 0, '2024-02-25 15:39:54', '2024-02-25 15:39:54', '2025-02-25 21:39:54'),
('30e628d3dbdb6fc2c85f93681c7e10607a987d7d65983771338cdab78cd6c87f2e703d44fbbb8fee', 1, 1, 'example', '[]', 1, '2024-02-25 16:57:59', '2024-02-25 17:02:35', '2025-02-25 22:57:59'),
('3158de347cdd0311f33c045656a586c56c28995a05e3baa516e8e20ccfd65eb7aebbabcc588d0163', 3, 1, 'example', '[]', 0, '2024-02-25 09:34:39', '2024-02-25 09:34:39', '2025-02-25 15:34:39'),
('34761eaa7d9e8b93325cbbd3f803195ffbc2ef8267d7328ad60f29eedcc721863d446673daa84c9b', 3, 1, 'example', '[]', 0, '2024-02-25 09:42:12', '2024-02-25 09:42:12', '2025-02-25 15:42:12'),
('38484a38249603041ecc434e2512fa3cd3d30130af67547898725b460c6bf4f00a719d9cdb02c9a8', 2, 1, 'example', '[]', 1, '2024-02-25 16:19:51', '2024-02-25 16:20:17', '2025-02-25 22:19:51'),
('3a27d64ed6cac27602576836bf31b9d14de2ef620cf21a9d789f8f888f62f38c96958685be680fe7', 2, 1, 'example', '[]', 0, '2024-02-25 15:38:29', '2024-02-25 15:38:29', '2025-02-25 21:38:29'),
('3afd453b203895057ed378a79ffdc611660efdc478754574851e88b880cfa18b0eb65d94ae3cb8b5', 1, 1, 'example', '[]', 1, '2024-02-25 18:05:27', '2024-02-25 18:51:34', '2025-02-26 00:05:27'),
('4174abd119e8bcc19cad334d8b535f26b1412fed109ce0c83062b1d19af6180ac5883485b2907c4d', 2, 1, 'example', '[]', 1, '2024-02-25 20:07:23', '2024-02-25 20:19:20', '2025-02-26 02:07:23'),
('41e206da260fc78d9e8bf15552fc6a87eea42b91c28587cda0a0b3475802e3290f6efb764fb37b47', 3, 1, 'example', '[]', 0, '2024-02-25 15:56:31', '2024-02-25 15:56:31', '2025-02-25 21:56:31'),
('42c95a58ddce7fd317cad0879bb1827ed7d17a911eafc868391d5cdd2bf7477af95b3dcbdcf3a0bd', 3, 1, 'example', '[]', 0, '2024-02-25 09:53:23', '2024-02-25 09:53:23', '2025-02-25 15:53:23'),
('433f3931974701850fe0ee2aac44e307a6640ed5f56dc6af9210c156fae569ee169d19aa3c600bf0', 1, 1, 'example', '[]', 0, '2024-02-25 12:57:15', '2024-02-25 12:57:15', '2025-02-25 18:57:15'),
('471093a9a1d5e4b9e95232bc793c1bcf14bcfec7df0b5516ec48927793de5952d4fecfe2083103f7', 2, 1, 'example', '[]', 1, '2024-02-25 16:26:26', '2024-02-25 16:26:31', '2025-02-25 22:26:26'),
('474d84619d067d4a2bc58d489ecad8343e6ef15e5d15fd8b032df677bc4af54b1a70e2eb32d68087', 2, 1, 'example', '[]', 0, '2024-02-25 15:38:32', '2024-02-25 15:38:32', '2025-02-25 21:38:32'),
('47d31081882ef20fc203f13ac173f82b8a9413bafdb7c443a9c8ebcda536e20e7bd01df9b520be0e', 1, 1, 'example', '[]', 0, '2024-02-25 09:14:30', '2024-02-25 09:14:31', '2025-02-25 15:14:30'),
('4ce4967cd54185c7c0a17b3a03846b54fd0c1ef2127f4f2b7b128af69245fa0ab9eb655fbd726591', 2, 1, 'example', '[]', 0, '2024-02-25 15:34:12', '2024-02-25 15:34:12', '2025-02-25 21:34:12'),
('503ece8e3741468a4e66355e3436846c2e2f8f25fed4b66b8e65b3d73b394452aa3aa2886ac0a014', 2, 1, 'example', '[]', 0, '2024-02-25 15:33:33', '2024-02-25 15:33:33', '2025-02-25 21:33:33'),
('50803729ed1f5b8e603bcaf0ee7ff19c2d0efc58d4d4f170211de7d8023f455f37e6d2258307b738', 2, 1, 'example', '[]', 0, '2024-02-25 16:08:37', '2024-02-25 16:08:37', '2025-02-25 22:08:37'),
('516dad0bcdc3cc9d2274af7ae3fa1b379b9935b5d780edf95d33a1d4e01db08491591169a2a1b93b', 1, 1, 'example', '[]', 0, '2024-02-25 20:00:30', '2024-02-25 20:00:30', '2025-02-26 02:00:30'),
('520970b81c434b33140f88ed8380a3cfc04c465d65ccf0cc7d0d12d422591ee466adcfe3754e267d', 2, 1, 'example', '[]', 1, '2024-02-25 20:00:06', '2024-02-25 20:00:14', '2025-02-26 02:00:06'),
('54458ab578b96c3674e46ba25c858e991c2a0df4e32ad7078de537d43b2bfb50fd438b5943ffa795', 1, 1, 'example', '[]', 1, '2024-02-25 16:20:29', '2024-02-25 16:20:41', '2025-02-25 22:20:29'),
('55010730ac1714b2ff7247d809f761ecd24f07f2d2f28e629d68ad52f6df4512c0f29624732336e0', 1, 1, 'example', '[]', 0, '2024-02-25 12:07:53', '2024-02-25 12:07:53', '2025-02-25 18:07:53'),
('56110cd92b3ec362af62941761e6fc1a0bd206e2d1b2136f22f78ceb461fcef70d92c2d85a97d889', 1, 1, 'example', '[]', 1, '2024-02-25 16:11:01', '2024-02-25 16:11:07', '2025-02-25 22:11:01'),
('5a221d30f4e33f972f073d80fe9096378032e4aaf5bb18a2d55c9c07e70e74a4a163c31437cc61b6', 2, 1, 'example', '[]', 0, '2024-02-25 15:55:53', '2024-02-25 15:55:53', '2025-02-25 21:55:53'),
('5d476fd5daa7964913cc1df21d4565a818bb4ab59d0648b7823ec9dc44076f4a85c1e80906cf9563', 2, 1, 'example', '[]', 1, '2024-02-25 16:33:50', '2024-02-25 16:39:54', '2025-02-25 22:33:50'),
('6044dc72c55a5f273b3a7787847ab2bc67194b82580552bbed69ee7c3bd852ee7e1678f55f4ab5f4', 2, 1, 'example', '[]', 0, '2024-02-25 15:42:09', '2024-02-25 15:42:09', '2025-02-25 21:42:09'),
('68421ac1031d8c797f67867d54825f8c246102c0dad09e606b9e08e7af70d73ac022bec32c50553a', 2, 1, 'example', '[]', 1, '2024-02-25 16:56:30', '2024-02-25 16:56:51', '2025-02-25 22:56:30'),
('6f203a7e12f28d200533a67d81759ebda7af76c064f42ce1274065f4d15f05ffbf59db14a46799c4', 2, 1, 'example', '[]', 0, '2024-02-25 11:13:21', '2024-02-25 11:13:21', '2025-02-25 17:13:21'),
('71a3b266cb7d13d960cb1df4bb99cb6648fdf3e4ea9467d9740e7a1edf0740ba87a1e1f79ddbc445', 2, 1, 'example', '[]', 0, '2024-02-25 11:13:53', '2024-02-25 11:13:53', '2025-02-25 17:13:53'),
('71e804d6ff34f43e76d932a648b6f57e445be85d245cceec36bc7aacc09a16d95200450cc4bb0f0d', 1, 1, 'example', '[]', 0, '2024-02-25 09:13:35', '2024-02-25 09:13:35', '2025-02-25 15:13:35'),
('7847d28447361e8e052a211b3a9440a3b8bafc1642aa817819ffbac0ea1f04cb906fcb63f96490c4', 2, 1, 'example', '[]', 1, '2024-02-25 16:54:12', '2024-02-25 16:54:26', '2025-02-25 22:54:12'),
('7a3294a0c3993c0b9e61129c38632b3f97326af56a9855f9596f1daadf0bd4e78495a861a66d6633', 2, 1, 'example', '[]', 0, '2024-02-25 15:31:44', '2024-02-25 15:31:44', '2025-02-25 21:31:44'),
('7a4720fe6b22f278257eb26e2f202fe3994e3edf684d5624d2df0e75b88a5439d041b22293a74125', 1, 1, 'example', '[]', 1, '2024-02-25 16:57:04', '2024-02-25 16:57:09', '2025-02-25 22:57:04'),
('7fd74be4a89d2728755ec18dc2d1926dcd31707dea557615b06f0e9176ae30c4c7229847a55b56d9', 3, 1, 'example', '[]', 0, '2024-02-25 12:37:46', '2024-02-25 12:37:46', '2025-02-25 18:37:46'),
('842c478a1363cc799e3339ba5d4660a87adb955f7add4c3c47d2a02e84de7845b58c2bd53fc8e644', 2, 1, 'example', '[]', 0, '2024-02-25 16:17:24', '2024-02-25 16:17:24', '2025-02-25 22:17:24'),
('894f330352f75e9a80263428d99a753384323fddc981029f586e9e5ed838fb9966f91c6bf54e32ac', 4, 1, 'example', '[]', 0, '2024-02-25 12:52:55', '2024-02-25 12:52:55', '2025-02-25 18:52:55'),
('8abf06a0a1180fe5c335c4155834b270a465734ff60945dd3b1a8b690b00295b75e182e711d02c23', 2, 1, 'example', '[]', 0, '2024-02-25 15:38:34', '2024-02-25 15:38:34', '2025-02-25 21:38:34'),
('8ca9da1bc284b9d3598298ef92254c83056a8cc58c1c0c60e0e4563b7fbec32b9a1f0b885247f727', 2, 1, 'example', '[]', 0, '2024-02-25 15:38:33', '2024-02-25 15:38:33', '2025-02-25 21:38:33'),
('8efc897d912b9b240cf1a3cb2ae24dd88fb28be5539922e3593d49f4c5e110ad4c0e6b2a47aae304', 2, 1, 'example', '[]', 0, '2024-02-25 15:34:43', '2024-02-25 15:34:43', '2025-02-25 21:34:43'),
('930f7cd2224294f1341ee362058b5d0e11f9d3a8133cbf2436b8e3a57e4b9a2d13a9069631499c1b', 2, 1, 'example', '[]', 1, '2024-02-25 17:07:49', '2024-02-25 17:08:09', '2025-02-25 23:07:49'),
('93645b69237c216fb405431dc69b4b0d4b202c23f4c9ca79988adda3749d9bea0a87ba4586f6e105', 1, 1, 'example', '[]', 0, '2024-02-25 16:40:51', '2024-02-25 16:40:51', '2025-02-25 22:40:51'),
('95040684f6c64e8bf44ed1850d24aa4455870980933122ad58f9a531c3600e454af94da4c02736e5', 2, 1, 'example', '[]', 1, '2024-02-25 16:09:20', '2024-02-25 16:10:48', '2025-02-25 22:09:20'),
('987e5cc4e698b281a3e5b0274065b0559b7a1b0d96860b7f48655079823bb72aa4b080f6268ce9ff', 1, 1, 'example', '[]', 1, '2024-02-25 09:09:58', '2024-02-25 09:10:18', '2025-02-25 15:09:58'),
('9b0d2cb4ba08a98a0d01125dbfdb90413cfd02f1d50d8daf8fc8e8c192d031411d17b498f182e726', 1, 1, 'example', '[]', 0, '2024-02-25 09:09:48', '2024-02-25 09:09:48', '2025-02-25 15:09:48'),
('a811c2898119016bf196334eda50a071ccc096152b9fd88f56b9c4c77cb81dae9eb69c61d4713f0f', 2, 1, 'example', '[]', 0, '2024-02-25 15:38:34', '2024-02-25 15:38:34', '2025-02-25 21:38:34'),
('a9534587b124b48d81375f51a1208efcd69f52938203afa58eb438e7bdda813d12d8871458a6b7e4', 2, 1, 'example', '[]', 0, '2024-02-25 11:50:54', '2024-02-25 11:50:54', '2025-02-25 17:50:54'),
('ade12ba971dee1b9ef31369d5c7b6c2073ab599fd018a2573a58ef7db2f756d6803ff0051ab71f61', 1, 1, 'example', '[]', 0, '2024-02-25 09:15:00', '2024-02-25 09:15:01', '2025-02-25 15:15:00'),
('ae0a135d8094db9f13c6b222fa0b9e75067d5b9b4a601ea8e3b0bd392e8c1ed38c354130464a5601', 2, 1, 'example', '[]', 0, '2024-02-25 15:31:27', '2024-02-25 15:31:27', '2025-02-25 21:31:27'),
('af38295e02d5cecb6a652907f6430ae39c180c9f535c05722ac7ce32fae6bb260d17baf9ab78589d', 2, 1, 'example', '[]', 0, '2024-02-25 15:33:43', '2024-02-25 15:33:43', '2025-02-25 21:33:43'),
('b1a084759b66761c6840ac96b0241194c7333bbb0a04b28cd147478483862cb7c6f97b39a4395920', 3, 1, 'example', '[]', 0, '2024-02-25 15:29:51', '2024-02-25 15:29:51', '2025-02-25 21:29:51'),
('b4116ec33560216413aabcc315c13b78eee1611eb215de7b492730c79764545fa15eb12af1708aa1', 1, 1, 'example', '[]', 1, '2024-02-25 18:00:38', '2024-02-25 18:04:50', '2025-02-26 00:00:38'),
('b88b75d19d300c8815a277316e0b393904f12d66fb937fd36ca60d34d0d2b56bfe500d081618448c', 4, 1, 'example', '[]', 0, '2024-02-25 12:38:58', '2024-02-25 12:38:58', '2025-02-25 18:38:58'),
('ba972da8224a0d3ccd346655b7a2063d748860d45e3fe64ceaf5f21f54ce1b8324b9080c34260624', 2, 1, 'example', '[]', 0, '2024-02-25 15:38:33', '2024-02-25 15:38:33', '2025-02-25 21:38:33'),
('bb3166189dda22cc78106136a1b87b4ab771be5f916b82bb9ed2b09234aa9a9d77cd2ff1a4924084', 7, 1, 'example', '[]', 1, '2024-02-25 18:51:44', '2024-02-25 18:52:50', '2025-02-26 00:51:44'),
('beef38e5b7c3e45d118c2ef730d39a2a9c706d13272d4049165da3b642f8ef58295db7461dba2610', 2, 1, 'example', '[]', 1, '2024-02-25 17:02:42', '2024-02-25 17:02:57', '2025-02-25 23:02:42'),
('c52efc58662314b8190ea47015bc9e67fa52f908539a7dd39dd1fa2510ca40cf985c79a8567e1af7', 2, 1, 'example', '[]', 0, '2024-02-25 15:35:38', '2024-02-25 15:35:38', '2025-02-25 21:35:38'),
('c68bbcce3ad204f6a787c0d650a18e280eefb33a6173d4df2d31a8060f80f6912d772d04430f6a3e', 2, 1, 'example', '[]', 0, '2024-02-25 12:14:36', '2024-02-25 12:14:36', '2025-02-25 18:14:36'),
('ce611d7a72de7ab46948902db4c18d2f2580734027fb606fa9795d521d41c303e9a3970c02ab0987', 3, 1, 'example', '[]', 0, '2024-02-25 11:43:44', '2024-02-25 11:43:44', '2025-02-25 17:43:44'),
('ce69e9446437400a5375815c87febec705fd4522b609a8b0905a25c0a4d81565224538e1e43ec411', 1, 1, 'example', '[]', 0, '2024-02-25 10:01:14', '2024-02-25 10:01:14', '2025-02-25 16:01:14'),
('cec62eea27073a89698ce867cb60f306ad898f984e0592c6cdfb5a10ab0e4ddcd49100f8e50ae48a', 2, 1, 'example', '[]', 0, '2024-02-25 15:35:14', '2024-02-25 15:35:14', '2025-02-25 21:35:14'),
('cf82d5ed070c9b5bd73da4b4622b650e85a27cea3c112d70e60b6ef8633edfafaaac30acb14cbe82', 1, 1, 'example', '[]', 0, '2024-02-25 15:39:31', '2024-02-25 15:39:31', '2025-02-25 21:39:31'),
('d3e4127c63aa54e645593effc48a466d88626c14447398824215162b6a6806958a3d32a2b84145b0', 2, 1, 'example', '[]', 0, '2024-02-25 15:35:38', '2024-02-25 15:35:38', '2025-02-25 21:35:38'),
('d4aa29c8f757cc2c5926c51e3f12d48db4754b4dead35e8cee7bee0112163fc933f34a71747258b7', 2, 1, 'example', '[]', 0, '2024-02-25 11:39:25', '2024-02-25 11:39:26', '2025-02-25 17:39:25'),
('d76e340c8c94321d6a9c727ca5db0bd0e5f30dae07918ecf4ef1ec066529c5b060439894368904e0', 2, 1, 'example', '[]', 0, '2024-02-25 15:35:35', '2024-02-25 15:35:35', '2025-02-25 21:35:35'),
('d99a5f5d41b813a3efe05f2c7476045f80e03314e53eee63e78706819fb025935701f8276aeaf765', 1, 1, 'example', '[]', 1, '2024-02-25 21:04:34', '2024-02-25 21:04:59', '2025-02-26 03:04:34'),
('dac9a16c2636d166b7876c2b3b84160ee94d94b7a9fe3f0515051e409ccb8f75757f5c666c511c83', 3, 1, 'example', '[]', 1, '2024-02-25 17:08:20', '2024-02-25 17:51:12', '2025-02-25 23:08:20'),
('dcfb4daff1dd61b6b7aed3b57ae60305808913c0a56a22b98fd959abc3f10c62d3c31ae5d642371f', 3, 1, 'example', '[]', 0, '2024-02-25 09:55:35', '2024-02-25 09:55:35', '2025-02-25 15:55:35'),
('e3c78b7808ef89fae2723660bfbef63e5b207ad0223801633451f717c60ef6e5553f0f2f8a609971', 2, 1, 'example', '[]', 0, '2024-02-25 09:59:50', '2024-02-25 09:59:50', '2025-02-25 15:59:50'),
('e4c3d2195300bfe287c4435256717d571d74a5e4a3c57445d0e1bec5cc43e9269028ea7dba374272', 3, 1, 'example', '[]', 0, '2024-02-25 12:51:49', '2024-02-25 12:51:49', '2025-02-25 18:51:49'),
('e5c4990fd79c378718db297ce9d58050fca3d62f0cda376f549aef3657189fb4f171a1dfefcc32f5', 3, 1, 'example', '[]', 0, '2024-02-25 09:45:40', '2024-02-25 09:45:40', '2025-02-25 15:45:40'),
('e71da63359c0fd31cc1402185e7189dbc226f9452cdf04ff28768d596d6955d20f2c0c0cea442c36', 2, 1, 'example', '[]', 0, '2024-02-25 15:35:49', '2024-02-25 15:35:49', '2025-02-25 21:35:49'),
('e824655eb63797d3d704e0e7315dcd9190597bb67f2a7a381a8a0e28060f7e61da873d4e92a2af52', 2, 1, 'example', '[]', 1, '2024-02-25 16:11:44', '2024-02-25 16:12:14', '2025-02-25 22:11:44'),
('e83222d4fde3cdcbbca4655255d86fee6253446044a3a36e53d441af20b15641a89445c9d603c9fa', 1, 1, 'example', '[]', 1, '2024-02-25 08:46:02', '2024-02-25 09:09:36', '2025-02-25 14:46:02'),
('e9caeabbb6200d69ca829bfd9405fd7c40c6274feb2e526bc2be7068ede737335be871c68410a282', 2, 1, 'example', '[]', 1, '2024-02-25 16:22:02', '2024-02-25 16:22:09', '2025-02-25 22:22:02'),
('ee6f7fee30b7d2bc8d72127e98f97db94677ade4b4900a22310b4fb24e2ace664534cf23654e95b6', 1, 1, 'example', '[]', 0, '2024-02-25 20:48:44', '2024-02-25 20:48:44', '2025-02-26 02:48:44'),
('f24478055fcd6df6174da71bfa861e5f25b933384dbff67c66019a9ec9232fe70c14c0c37b81bad3', 2, 1, 'example', '[]', 1, '2024-02-25 21:04:15', '2024-02-25 21:04:25', '2025-02-26 03:04:15'),
('f46dde5526935097ca4080c3bbe828474b7908d21e86b1b60015e806f322b7bee0f52f3c1dde44b6', 2, 1, 'example', '[]', 0, '2024-02-25 15:38:32', '2024-02-25 15:38:32', '2025-02-25 21:38:32'),
('f934e12fa01bb297f47b6701ea4fe142c4a77bef4f2efad3f75447fe7b673b9ef96153fe0fd79d3a', 1, 1, 'example', '[]', 0, '2024-02-25 20:19:32', '2024-02-25 20:19:32', '2025-02-26 02:19:32'),
('f966b4dec8daafa7f235e1e53e229cf3bbbb635f542a374a5c90379c4ccee91db62700568de0bf7c', 2, 1, 'example', '[]', 0, '2024-02-25 15:38:27', '2024-02-25 15:38:27', '2025-02-25 21:38:27'),
('fc3f69936728a17643ffcf3c02301ff87ac20b763edab22d9e306e7c76fd90377521683949587d13', 1, 1, 'example', '[]', 1, '2024-02-25 16:26:40', '2024-02-25 16:26:44', '2025-02-25 22:26:40'),
('ff10a01e171cd2015749f147d4ad7434a605cd573143c0704804268de11bc545cec431a2325ea771', 2, 1, 'example', '[]', 0, '2024-02-25 09:28:47', '2024-02-25 09:28:47', '2025-02-25 15:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '4MVQVKSxb0tZjFq8PTYMSFULCvdzz3w6pGkwMi2R', NULL, 'http://localhost', 1, 0, 0, '2024-02-25 06:35:42', '2024-02-25 06:35:42'),
(2, NULL, 'Laravel Password Grant Client', '5QqvIoxqiT1BkjEMCciKRN63rFruMZSXwXgO8xfL', 'users', 'http://localhost', 0, 1, 0, '2024-02-25 06:35:42', '2024-02-25 06:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-02-25 06:35:42', '2024-02-25 06:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'example', '8b54d312f9ef2398e0858a229f6dbaed932a88c22929e6ba6acc88940c53e21d', '[\"*\"]', NULL, NULL, '2024-02-25 07:44:25', '2024-02-25 07:44:25'),
(2, 'App\\Models\\User', 1, 'example', 'ff504e6c014054c40f28c7f3c36f5527ddad4691db2ab0c2c3b229243c2c6b48', '[\"*\"]', NULL, NULL, '2024-02-25 08:11:20', '2024-02-25 08:11:20'),
(3, 'App\\Models\\User', 1, 'example', '1a2987d41559a9e2bfcbd9de70719d3ecc47556db9da0acdbeb713fcfe9f6251', '[\"*\"]', NULL, NULL, '2024-02-25 08:11:26', '2024-02-25 08:11:26'),
(4, 'App\\Models\\User', 1, 'example', 'c227cd415c92b61376c4c36ca05e051e212ae7d4042c780d3a3f0da1b0156e72', '[\"*\"]', NULL, NULL, '2024-02-25 08:12:04', '2024-02-25 08:12:04'),
(5, 'App\\Models\\User', 1, 'example', '64db46d7869bc9049ca832a6d14c70a820de86b3397e071172535b96e8ac4df5', '[\"*\"]', NULL, NULL, '2024-02-25 08:12:22', '2024-02-25 08:12:22'),
(6, 'App\\Models\\User', 1, 'example', '8f4b7298f5133f18092dd42ba4129fe1b1176655bbdcc8e1b30beea98a3d3b99', '[\"*\"]', NULL, NULL, '2024-02-25 08:16:59', '2024-02-25 08:16:59'),
(7, 'App\\Models\\User', 1, 'example', 'ea675df58c616d42d1b93468e2a6048f7ccff8b74d6be61e8d61f290b2ca24ba', '[\"*\"]', NULL, NULL, '2024-02-25 08:17:51', '2024-02-25 08:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(150) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'admin@gmail.com', 'admin', '2024-02-25 07:40:02', '$2y$12$cIhaubrVKQYerHjQ8NnwUOEQmX8Bn8Mo2whlPWZrTDdKp0SKTU/e2', 'YKGePg60st', '2024-02-25 07:40:03', '2024-02-25 07:40:03'),
(2, 'General User', 'user@gmail.com', 'user', '2024-02-25 09:23:11', '$2y$12$yt1PsD48LDB4oEyfR5qYpu/0GCtTWQSxinWiz2G5s3FjjhkfaRDnC', '5GmCm8fZvH', '2024-02-25 09:23:12', '2024-02-25 09:23:12'),
(3, 'Admin User', 'jewel@gmail.com', 'admin', '2024-02-25 09:33:50', '$2y$12$6HZEmkFEU9yn6CHT3J9ehuGvnz0J7uQYSZmep3hEHmKVXxOf55QMm', 'OapccOmHno', '2024-02-25 09:33:50', '2024-02-25 09:33:50'),
(5, 'Khodokar Shahir', 'shahir@gmail.com', 'user', NULL, '$2y$12$N75J90R/EHFTS/9bDcn76e0s4R3hvi7f4vMW.vcU0Hs3N/Zq8amqu', NULL, '2024-02-25 18:00:17', '2024-02-25 18:00:17'),
(6, 'Hossain Ahmed', 'hossain@gmail.com', 'user', NULL, '$2y$12$AcG0H9lg9TI.lzkZd2ITd.b.vrFVla8Pkq/owkwq9584PmIfV3osG', NULL, '2024-02-25 18:01:28', '2024-02-25 18:01:28'),
(7, 'Maruf Hasan', 'maruf@gmail.com', 'user', NULL, '$2y$12$A74pVQpMBOpmm0l3FSnzYuKjzn9p5pYpBVOgpU/qpLpsgSJw/donK', NULL, '2024-02-25 18:04:32', '2024-02-25 18:04:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
