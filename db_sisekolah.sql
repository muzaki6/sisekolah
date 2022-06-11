-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2022 pada 04.46
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisekolah2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(12) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `ruang` int(12) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `jurusan`, `ruang`, `created_at`, `updated_at`) VALUES
('KLSXIPA1', 'X', 'IPA', 1, '2022-05-24 00:47:02', '2022-05-26 20:55:43'),
('KLSXIPA2', 'X', 'IPA', 2, '2022-05-24 02:18:25', '2022-05-26 20:55:50'),
('KLSXIPA3', 'X', 'IPA', 3, '2022-05-24 19:49:07', '2022-05-26 20:55:57'),
('KLSXIPA4', 'X', 'IPA', 4, '2022-05-24 19:49:13', '2022-05-26 20:54:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` varchar(12) NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `mapel`, `created_at`, `updated_at`) VALUES
('UMUM001', 'Bahasa Indonesia', '2022-05-23 01:31:06', '2022-05-22 19:32:48'),
('UMUM002', 'Matematika', '2022-05-23 01:30:59', '2022-05-22 19:32:42'),
('UMUM003', 'Pendidikan Agama Islam', '2022-05-30 20:52:01', '2022-05-30 20:52:01'),
('UMUM004', 'Bahasa Inggris', '2022-05-30 20:52:13', '2022-05-30 20:52:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_12_032253_create_siswas_table', 1),
(6, '2022_04_20_014127_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_guru_mapel`
--

CREATE TABLE `m_guru_mapel` (
  `id_guru_mapel` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_mapel` varchar(12) NOT NULL,
  `id_kelas` varchar(12) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_guru_mapel`
--

INSERT INTO `m_guru_mapel` (`id_guru_mapel`, `id_pegawai`, `id_mapel`, `id_kelas`, `created_at`, `updated_at`) VALUES
(1, 1110, 'UMUM001', 'KLSXIPA4', '2022-06-08 15:12:17', '2022-06-09 19:42:08'),
(3, 1110, 'UMUM001', 'KLSXIPA4', '2022-06-09 19:41:03', '2022-06-09 19:41:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kelas_siswa`
--

CREATE TABLE `m_kelas_siswa` (
  `id_kelas_siswa` int(12) NOT NULL,
  `id_kelas` varchar(12) NOT NULL,
  `no_induk` varchar(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_kelas_siswa`
--

INSERT INTO `m_kelas_siswa` (`id_kelas_siswa`, `id_kelas`, `no_induk`, `created_at`, `updated_at`) VALUES
(1, 'KLSXIPA1', '3120510812', '2022-06-10 00:58:08', '2022-06-10 02:14:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_nilai_siswa`
--

CREATE TABLE `m_nilai_siswa` (
  `id_nilai_siswa` bigint(20) NOT NULL,
  `no_induk` varchar(12) NOT NULL,
  `id_kelas` varchar(12) NOT NULL,
  `id_nilai` varchar(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` varchar(11) NOT NULL,
  `nilai` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nilai`, `created_at`, `updated_at`) VALUES
('TUGAS', 'TUGAS', '2022-06-01 21:44:44', '2022-06-01 21:44:44'),
('UAS1', 'UAS SEMESTER GANJIL', '2022-06-01 21:16:43', '2022-06-01 21:16:43'),
('UAS2', 'UAS SEMESTER GENAP', '2022-06-01 21:16:59', '2022-06-01 21:16:59'),
('UTS1', 'UTS SEMESTER GANJIL', '2022-06-01 06:53:33', '2022-06-01 06:53:33'),
('UTS2', 'UTS SEMESTER GENAP', '2022-06-01 21:15:04', '2022-06-01 21:15:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `id_status` int(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `id_status`, `created_at`, `updated_at`) VALUES
(1110, 'Bagus Dwi Bahono', 1, '2022-05-12 01:37:42', '2022-05-13 00:12:51'),
(1111, 'Sri Ayu Dewi Pratiwi', 2, '2022-05-12 01:37:42', '2022-05-13 00:15:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2022-04-19 18:57:22', '2022-04-19 18:57:22'),
(2, 'role-create', 'web', '2022-04-19 18:57:22', '2022-04-19 18:57:22'),
(3, 'role-edit', 'web', '2022-04-19 18:57:22', '2022-04-19 18:57:22'),
(4, 'role-delete', 'web', '2022-04-19 18:57:22', '2022-04-19 18:57:22'),
(5, 'user-list', 'web', '2022-04-19 19:19:42', '2022-04-19 19:19:42'),
(6, 'user-create', 'web', '2022-04-19 19:19:42', '2022-04-19 19:19:42'),
(7, 'user-edit', 'web', '2022-04-19 19:19:42', '2022-04-19 19:19:42'),
(8, 'user-delete', 'web', '2022-04-19 19:19:42', '2022-04-19 19:19:42'),
(9, 'pegawai-list', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(10, 'pegawai-create', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(11, 'pegawai-edit', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(12, 'pegawai-delete', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(13, 'mapel-list', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(14, 'mapel-create', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(15, 'mapel-edit', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(16, 'mapel-delete', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(17, 'nilai-list', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(18, 'nilai-create', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(19, 'nilai-edit', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(20, 'nilai-delete', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(21, 'kelas-list', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(22, 'kelas-create', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(23, 'kelas-edit', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(24, 'kelas-delete', 'web', '2022-06-06 07:27:15', '2022-06-06 07:27:15'),
(25, 'siswa-list', 'web', '2022-06-08 03:55:14', '2022-06-08 03:55:14'),
(26, 'siswa-create', 'web', '2022-06-08 03:55:14', '2022-06-08 03:55:14'),
(27, 'siswa-edit', 'web', '2022-06-08 03:55:14', '2022-06-08 03:55:14'),
(28, 'siswa-delete', 'web', '2022-06-08 03:55:14', '2022-06-08 03:55:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `ref_status_pegawai`
--

CREATE TABLE `ref_status_pegawai` (
  `id_status` int(3) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ref_status_pegawai`
--

INSERT INTO `ref_status_pegawai` (`id_status`, `status`) VALUES
(1, 'Guru'),
(2, 'Tenaga Kependidikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-04-19 18:58:39', '2022-04-19 18:58:39'),
(2, 'User', 'web', '2022-04-19 19:21:28', '2022-04-19 19:21:28'),
(3, 'Siswa', 'web', '2022-04-19 19:29:12', '2022-04-19 19:29:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_induk` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`id`, `no_induk`, `nama`, `jenis_kelamin`, `agama`, `alamat`, `tahun_masuk`, `created_at`, `updated_at`) VALUES
(1, '3120510812', 'Bintang Harfa', 'Laki-laki', 'Islam', 'Banjarejo', '2022', '2022-05-09 02:03:01', '2022-06-05 20:40:30'),
(2, '3120510813', 'bintang putra', 'Laki-laki', 'Islam', 'JL. SERMA MAUN NO88 RT 12 RW 02', '2022', '2022-06-05 19:20:44', '2022-06-05 19:20:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bintang', 'user111@gmail.com', NULL, '$2y$10$pA/ft8inT85nakamj1vRdONMsexcTweuE/5qLlzIEfrWgHIwgWWmm', NULL, '2022-04-19 18:38:52', '2022-04-26 20:07:53'),
(3, 'Bintang Putra', 'superadmin@gmail.com', NULL, '$2y$10$sAA2tKfipaqhprpxDT55xu6euwnTm9mDB5Gj69ADhruuFjRnOITty', '2wiLfHqanRnBOdLjJpGJ3f3DRLW9jDN2BbZxwwPaew2OkYyTP4xjUxO0yhj4', '2022-04-19 18:58:39', '2022-04-19 18:58:39'),
(4, 'Siswa', 'siswa@gmail.com', NULL, '$2y$10$TSNYe0APP/fmOLSkyM58juaycab4OemxLF23uSiX.CxTFN9ZZVCfm', NULL, '2022-04-19 19:29:00', '2022-06-06 00:33:48'),
(5, 'admin', 'admin123@gmail.com', NULL, '$2y$10$/wvk2TILm8SxxMJ0M5TarO7HmLw3oR35SzYgGeW6VUNGwTv7FLhFC', NULL, '2022-04-26 20:02:55', '2022-04-26 20:02:55'),
(7, 'Bintang Putra', 'superadmin123@gmail.com', NULL, '$2y$10$11trde/a4n.ocTPB/CtRAurYQepaSbQXuDjdMo782Hhxe8L8zEIXu', NULL, '2022-05-08 20:27:27', '2022-05-08 20:33:45');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `m_guru_mapel`
--
ALTER TABLE `m_guru_mapel`
  ADD PRIMARY KEY (`id_guru_mapel`);

--
-- Indeks untuk tabel `m_kelas_siswa`
--
ALTER TABLE `m_kelas_siswa`
  ADD PRIMARY KEY (`id_kelas_siswa`);

--
-- Indeks untuk tabel `m_nilai_siswa`
--
ALTER TABLE `m_nilai_siswa`
  ADD PRIMARY KEY (`id_nilai_siswa`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_status` (`id_status`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `ref_status_pegawai`
--
ALTER TABLE `ref_status_pegawai`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_induk` (`no_induk`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `m_guru_mapel`
--
ALTER TABLE `m_guru_mapel`
  MODIFY `id_guru_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `m_kelas_siswa`
--
ALTER TABLE `m_kelas_siswa`
  MODIFY `id_kelas_siswa` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `m_nilai_siswa`
--
ALTER TABLE `m_nilai_siswa`
  MODIFY `id_nilai_siswa` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
