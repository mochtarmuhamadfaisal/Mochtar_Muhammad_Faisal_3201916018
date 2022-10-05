-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2022 at 08:45 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `melati`
--

-- --------------------------------------------------------

--
-- Table structure for table `diskusis`
--

CREATE TABLE `diskusis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` bigint(20) UNSIGNED DEFAULT NULL,
  `pertanyaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diskusis`
--

INSERT INTO `diskusis` (`id`, `id_user`, `id_kategori`, `pertanyaan`, `created_at`, `updated_at`) VALUES
(13, 17, 2, 'apa itu statefull widget?', '2022-09-16 07:42:25', '2022-09-16 07:42:25'),
(19, 18, 3, 'Bisa kah primary key lebih dari 1 dalam sebuat tabel database?', '2022-09-16 08:15:58', '2022-09-16 08:15:58'),
(20, 17, 3, 'Type data enum untuk apa ya?', '2022-09-16 08:22:22', '2022-09-16 08:22:22'),
(21, 9, 2, 'Apakah bahasa pemrograman javascript bisa membuat aplikasi mobile', '2022-09-16 08:24:04', '2022-09-16 08:24:04'),
(22, 17, 11, 'Framework untuk tampilan webiste apa ya?', '2022-09-16 08:28:01', '2022-09-16 08:28:01'),
(23, 9, 3, 'Untuk database dengan field nama type datanya apa?', '2022-09-16 08:30:27', '2022-09-16 08:30:27'),
(24, 18, 2, 'Apa itu flutter?', '2022-09-17 00:49:47', '2022-09-17 00:49:47'),
(25, 9, 3, 'Bagaimana membuat database pada localhost', '2022-09-17 06:27:56', '2022-09-17 06:27:56');

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
-- Table structure for table `jawaban_diskusis`
--

CREATE TABLE `jawaban_diskusis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_diskusi` bigint(20) UNSIGNED NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawaban_diskusis`
--

INSERT INTO `jawaban_diskusis` (`id`, `id_user`, `id_diskusi`, `jawaban`, `created_at`, `updated_at`) VALUES
(24, 9, 13, 'adadada', '2022-09-16 07:48:10', '2022-09-16 07:48:10'),
(25, 9, 13, 'dad', '2022-09-16 08:22:57', '2022-09-16 08:22:57'),
(28, 17, 25, 'instal dulu Xampp, lalu buka di php my adminnya', '2022-09-29 20:06:40', '2022-09-29 20:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliahs`
--

CREATE TABLE `matakuliahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_matakuliah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_grupdiskusi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_diskusi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matakuliahs`
--

INSERT INTO `matakuliahs` (`id`, `nama_matakuliah`, `link_grupdiskusi`, `password_diskusi`, `created_at`, `updated_at`) VALUES
(2, 'Pemrograman Mobile', NULL, NULL, '2022-08-10 08:56:33', '2022-08-24 19:41:03'),
(3, 'Basis data', NULL, NULL, '2022-08-10 08:57:37', '2022-08-10 13:43:24'),
(4, 'Grafika Komputer', NULL, NULL, '2022-08-11 22:38:40', '2022-08-11 22:43:33'),
(5, 'Jaringan Komputer', NULL, NULL, '2022-08-16 23:11:53', '2022-08-16 23:11:53'),
(7, 'Matematika', NULL, NULL, '2022-08-18 20:14:08', '2022-08-18 20:14:08'),
(9, 'Pengolahan Citra Digital', NULL, NULL, '2022-08-18 21:11:22', '2022-08-18 21:11:22'),
(11, 'Pemrograman Web', NULL, NULL, '2022-09-02 20:34:10', '2022-09-02 20:34:10'),
(12, 'Pemrogaman Terapan', NULL, NULL, '2022-09-17 06:15:23', '2022-09-17 06:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `materis`
--

CREATE TABLE `materis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_matakuliah` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `semester` int(11) NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_video` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_video` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_modul` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_soal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_soal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materis`
--

INSERT INTO `materis` (`id`, `id_matakuliah`, `id_user`, `semester`, `kelas`, `link_video`, `judul_video`, `deskripsi_video`, `upload_modul`, `upload_soal`, `password_soal`, `created_at`, `updated_at`) VALUES
(4, 7, 2, 2, 'A', 'https://www.youtube.com/embed/YRju9CZFW2Y', '01. Matematika Itu Ilmu yang Menyenangkan', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32</p>\r\n\r\n<p>not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32</p>', 'Jobsheet 5.2.pdf', 'Jobsheet 2.pdf', '12345678', '2022-08-12 17:33:13', '2022-08-18 20:16:49'),
(10, 2, 4, 4, 'A', 'https://www.youtube.com/embed/sEbL9bXKI1g', '01. Pengenalan Flutter', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'Modul 1 - Hello Flutter.pdf', 'Modul 2 - Stateful Widgets.pdf', '12345678', '2022-08-18 20:12:29', '2022-08-18 20:12:29'),
(13, 9, 6, 6, 'A', 'https://www.youtube.com/embed/k4tX00-5Q8E', '01. Pendahuluan Matlab', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'Bahan Materi UTS PCD.pdf', 'Bahan Materi UTS PCD.pdf', '12345678', '2022-08-18 21:14:09', '2022-08-18 21:14:09');

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
(1, '2014_10_12_000001_create_role_table', 1),
(2, '2014_10_12_000002_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_07_31_143222_create_permission_tables', 1),
(7, '2022_08_02_095337_create_matakuliahs_table', 1),
(8, '2022_08_09_181756_create_materis_table', 1),
(9, '2022_08_09_181757_create_materis_table', 2),
(10, '2022_08_09_181758_create_materis_table', 3),
(11, '2022_08_02_095338_create_matakuliahs_table', 4),
(12, '2022_08_10_150611_add_tambah_kolom_table', 5),
(13, '2022_08_09_181759_create_materis_table', 6),
(14, '2022_08_09_181760_create_materis_table', 7),
(15, '2022_08_12_160659_create_showcases_table', 8),
(16, '2022_08_13_001251_add_tambah_kolom_materi_table', 9),
(17, '2022_08_14_074726_create_diskusis_table', 10),
(18, '2022_08_14_080551_create_jawaban_diskusis_table', 10),
(19, '2022_09_16_142846_add_id_kategori_table', 11);

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

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-08-09 20:25:14', '2022-08-09 20:25:14'),
(2, 'dosen', '2022-08-09 20:25:14', '2022-08-09 20:25:14'),
(3, 'mahasiswa', '2022-08-09 20:25:14', '2022-08-09 20:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `showcases`
--

CREATE TABLE `showcases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_matakuliah` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `judul_project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_project` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `showcases`
--

INSERT INTO `showcases` (`id`, `id_matakuliah`, `id_user`, `judul_project`, `deskripsi_project`, `foto`, `created_at`, `updated_at`) VALUES
(12, 2, 17, 'Aplikasi pemesanan tiket bioskop berbasis mobile', '<p>Aplikasi ini merupakan aplikasi pemesanan tiket biskop secara online agar memudahkan user untuk memesan film yang akan di tonton dan tidak harus ke tempat bioskop terlebih dahulu karena dapat mengunakan aplikasi ini</p>', 'ig story.png', '2022-08-26 11:00:40', '2022-08-26 11:08:31'),
(13, 11, 9, 'Website Akulakuuuu', '<p>Website aku laku adalah website untuk menjual peralatan apa pun, mulai dari properti, elektronik dan lain lainnn</p>', 'Presentasi.png', '2022-08-29 15:13:32', '2022-09-18 01:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `nama`, `jenis_kelamin`, `foto`, `role_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, '19830717200812100', 'Ramlii, S.T., M.T.', 'Laki-laki', 'Pak Ramli.PNG', 2, NULL, NULL, '$2y$10$uxQPRCEzL1VTm7CRNVe/zu15OKQVZKn8hyHnk5Zj6yNNSJ2a4opQe', NULL, '2022-08-09 20:25:14', '2022-08-26 11:41:08'),
(3, '12345678', 'Faisal Admin TI', 'Laki-laki', 'Group 22 (1).png', 1, NULL, NULL, '$2y$10$gCbdL9vZpJw7XqvJneg.2eBThWHr42D4vH.3kxWMuV1u8vGP.Vrli', NULL, '2022-08-09 20:25:14', '2022-08-26 11:37:05'),
(4, '198512282015041002', 'Fitri Wibowo, S.ST., M.T.', 'Laki-laki', 'Pak fitri wibowo.PNG', 2, NULL, NULL, '$2y$10$aZFqTzqV.5L83eb7vofQ9.gaocmyG/RAVw0X/jFIeECfijxLZZBnu', NULL, '2022-08-09 20:34:50', '2022-08-24 11:08:15'),
(6, '878644678655641', 'Tri Bowo Atmojo, S.T., M.Cs.', 'Laki-laki', 'Pak Tri bowo.PNG', 2, NULL, NULL, '$2y$10$CfYnkql/E34vp4vrhKOn/Oz96s0cMCT5vTaVoslbCFGdGLqXiDKu6', NULL, '2022-08-11 22:38:00', '2022-08-24 11:01:53'),
(9, '3201916018', 'Mochtar Muhammad Faisal', 'Laki-laki', 'gue.jpg', 3, NULL, NULL, '$2y$10$9AcR.THThwVeSsIc8IbRDuNnqfuri5xvMWuzUI47kvRs9mub4LBbS', NULL, '2022-08-16 23:14:27', '2022-09-17 07:31:15'),
(11, '0987654321', 'admin 2', 'Laki-laki', NULL, 1, NULL, NULL, '0987654321', NULL, NULL, NULL),
(15, '198307172008121005', 'Suheri, S.T., M.Cs.', 'Laki-laki', NULL, 2, NULL, NULL, '$2y$10$U/ef08oJVX1RwGv7nv5/QejMQXMniQ5h4zqACn2bnOrsXJDcjd4pu', NULL, '2022-08-24 12:12:56', '2022-08-24 12:14:39'),
(17, '3201916010', 'Messii', 'Perempuan', 'images.jpg', 3, NULL, NULL, '$2y$10$K218HhLIz9V7V0mUHf0E9OFxuqwpTN6WPePkqp3rI70r6yM/y0/HS', NULL, '2022-08-26 08:54:09', '2022-08-26 11:25:19'),
(18, '3201916011', 'Ronaldo', 'Laki-laki', 'channels4_profile.jpg', 3, NULL, NULL, '$2y$10$A2kfB27shfnDAE5HdYoVEu2Fd.0Wc3k35i1SeyJNDuM8dapf3hGQG', NULL, '2022-08-29 08:51:41', '2022-08-29 08:53:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diskusis`
--
ALTER TABLE `diskusis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diskusis_id_user_foreign` (`id_user`),
  ADD KEY `diskusis_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jawaban_diskusis`
--
ALTER TABLE `jawaban_diskusis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jawaban_diskusis_id_user_foreign` (`id_user`),
  ADD KEY `jawaban_diskusis_id_diskusi_foreign` (`id_diskusi`);

--
-- Indexes for table `matakuliahs`
--
ALTER TABLE `matakuliahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materis`
--
ALTER TABLE `materis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materis_id_matakuliah_foreign` (`id_matakuliah`),
  ADD KEY `materis_id_user_foreign` (`id_user`);

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
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `showcases`
--
ALTER TABLE `showcases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showcases_id_matakuliah_foreign` (`id_matakuliah`),
  ADD KEY `showcases_id_user_foreign` (`id_user`);

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
-- AUTO_INCREMENT for table `diskusis`
--
ALTER TABLE `diskusis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban_diskusis`
--
ALTER TABLE `jawaban_diskusis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `matakuliahs`
--
ALTER TABLE `matakuliahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `materis`
--
ALTER TABLE `materis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `showcases`
--
ALTER TABLE `showcases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diskusis`
--
ALTER TABLE `diskusis`
  ADD CONSTRAINT `diskusis_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `matakuliahs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diskusis_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jawaban_diskusis`
--
ALTER TABLE `jawaban_diskusis`
  ADD CONSTRAINT `jawaban_diskusis_id_diskusi_foreign` FOREIGN KEY (`id_diskusi`) REFERENCES `diskusis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jawaban_diskusis_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `materis`
--
ALTER TABLE `materis`
  ADD CONSTRAINT `materis_id_matakuliah_foreign` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliahs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materis_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `showcases`
--
ALTER TABLE `showcases`
  ADD CONSTRAINT `showcases_id_matakuliah_foreign` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliahs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `showcases_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
