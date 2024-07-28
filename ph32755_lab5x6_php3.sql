-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 28, 2024 lúc 07:16 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ph32755_lab5x6_php3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2024_07_28_062351_create_types_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trưởng phòng', NULL, NULL),
(2, 'Nhân viên', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `dob`, `phone`, `address`, `image`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Emilio O\'Kon I', 'mitchel62@gmail.com', '1991-07-05', '+1.601.944.1485', '71711 Brendon Isle\nEast Averymouth, MS 04504-3438', '', '$2y$12$EcOv.vJ9eP6OAStvwR7cRexLbWf6aUGLvfJQAtyCfmq.lYUReeuve', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(2, 'Roel Hammes', 'lfritsch@ratke.biz', '1982-02-12', '309-534-9688', '478 Makenna Cliff Suite 665\nClemmiefurt, OK 06050', '', '$2y$12$kGowuOZp4NJfV7s6WWLsROg7B/p7z3l4tM7kha2KV8NLh3x7OQ9iO', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(3, 'Nicklaus Roberts', 'serenity.runte@hotmail.com', '1972-09-07', '1-650-532-5955', '52155 Breana Grove\nWest Matildamouth, TN 24731-7542', '', '$2y$12$yFUvGenHpxvuzVV7Tp6WfOAcOIZpPwdesIlzYTph9zucw3jHbUhj.', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(4, 'Prof. Elias Kshlerin', 'sterry@white.org', '2008-11-05', '1-947-921-1347', '12615 Mosciski Corner Apt. 816\nEast Maryseside, AZ 79090-2881', '', '$2y$12$BtAQ.SDcKQwZwQUpKe74n.wYx6mVp2bBp3QuBEirUpiyH9wqSIGK6', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(5, 'Mr. Henri Greenholt Jr.', 'kuhic.german@yahoo.com', '2010-05-04', '+1.205.496.1633', '465 Mueller Mountains\nSouth Okeyland, AK 66235', '', '$2y$12$cD7UEFpZlvWJUiAGF9X/Oequqa44ubhfOHNBoNbGI1mIVmo67J/kO', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(6, 'Coralie Koelpin', 'hokon@kunde.info', '2022-07-03', '+1.757.885.0863', '54163 Edwin Ville Apt. 222\nEast Savanna, CO 41397', '', '$2y$12$7VK1rvAeST.iq69ze03eduosUYKvqhPLrvJwnfUQ8ePaabAOx48Ya', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(7, 'Lonny Sporer', 'dibbert.sierra@gerlach.com', '1974-10-11', '551-595-8100', '8926 Bogan Summit Suite 705\nEast Melvinaland, OK 80890', '', '$2y$12$/fOO5nPinKRXarbiY6Wyt.uCQHasAbRgoaYB7EinhlJZH0W611lle', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(8, 'Abel Kuvalis', 'cyost@yahoo.com', '2021-01-02', '+1.669.872.3276', '326 Cronin Springs\nCarolynebury, MO 72335', '', '$2y$12$7PAoB.pUs9f/hq7VEylw8ulXfYtSC1zHg2b2800pOpKChUzzwt9QC', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(9, 'Karl Miller', 'king.mathias@hotmail.com', '2023-05-18', '+1 (831) 390-8659', '790 Jade Common Apt. 929\nWest Cydney, AZ 14089', '', '$2y$12$6SIY51dEEhNLix10E/sCV.znsy63XW/TXHa5azV/glTyL3Sr2jTru', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(11, 'Josefina Marks', 'connor.donnelly@yahoo.com', '2001-09-25', '+1-425-487-4566', '216 Daren Meadow\nMayerchester, DC 27317-7025', '', '$2y$12$8Y6JLjKEgB1VDjL7XAAS9.bVwIYhGpPtX/MU7G1jtEhTtCBJUHm.u', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(12, 'Louie Abbott MD', 'schoen.marley@hane.com', '1995-04-30', '+17048038203', '4719 Barrows Spring Suite 473\nWest Jeannechester, NY 32275', '', '$2y$12$/EixgZaHkDhwGpkJ0qZuPuWMzPbBFvDtVTATC/5cZdjrNCHYhQ0PK', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(13, 'Myrtice Kub', 'halle26@gmail.com', '1993-03-20', '+16233864588', '85976 Glover Trail Suite 621\nNorth Otto, MI 64859', '', '$2y$12$7.frRrlCcwpZ8o0LpBF5puQI5lLi52pxNKUzmbty65QN8RV/JnjK.', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(14, 'Prof. Lydia Daniel PhD', 'coreilly@gmail.com', '2012-08-06', '941.839.3960', '411 Weber Creek Apt. 474\nLake Constance, MS 76127-8390', '', '$2y$12$jmLQ5DXRJcGasjR45/J57urUpOhEg1Igcr1FltYXUqg4eipoh9bwW', '2024-07-27 22:41:59', '2024-07-27 22:41:59'),
(16, 'Nguyen Truong GIang', 'giangntph32755@fpt.edu.vn', '1111-11-11', '0869311893', 'Ha Noi', 'users/uNDMdEpmUsHjk6UGQukdggrLJhjRuDx4UX7CFdbl.png', '$2y$12$jkvdmPAPC7bGgMGUpAFCteC8613SU0VdpZ/nPauMnBQ6F56cqAKaa', '2024-07-28 00:02:49', '2024-07-28 00:02:49');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
