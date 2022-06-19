/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `db_sisekolahtiga` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_sisekolahtiga`;

CREATE TABLE IF NOT EXISTS `dnilai` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dnilai` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_nilai` varchar(50) NOT NULL DEFAULT '',
  `id_mapel` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `dnilai` DISABLE KEYS */;
INSERT INTO `dnilai` (`id`, `dnilai`, `id_siswa`, `id_nilai`, `id_mapel`, `created_at`, `updated_at`) VALUES
	(1, 76, 555, 'UAS2', 'UMUM001', '2022-06-18 10:24:17', '2022-06-19 04:15:49'),
	(2, 90, 556, 'UAS2', 'UMUM001', '2022-06-18 10:24:36', '2022-06-19 04:43:38'),
	(3, 88, 707, 'UAS2', 'UMUM004', '2022-06-18 10:25:08', '2022-06-19 04:16:15'),
	(5, 86, 557, 'UAS2', 'UMUM002', '2022-06-19 02:10:33', '2022-06-19 02:10:33'),
	(6, 95, 555, 'UAS2', 'UMUM003', '2022-06-19 03:54:55', '2022-06-19 03:54:55');
/*!40000 ALTER TABLE `dnilai` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` varchar(12) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `ruang` int(12) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` (`id_kelas`, `kelas`, `jurusan`, `ruang`, `created_at`, `updated_at`) VALUES
	('KLSXIPA1', 'X', 'IPA', 1, '2022-05-24 07:47:02', '2022-05-27 03:55:43'),
	('KLSXIPA2', 'X', 'IPA', 2, '2022-05-24 09:18:25', '2022-05-27 03:55:50'),
	('KLSXIPA3', 'X', 'IPA', 3, '2022-05-25 02:49:07', '2022-05-27 03:55:57'),
	('KLSXIPA4', 'X', 'IPA', 4, '2022-05-25 02:49:13', '2022-05-27 03:54:36');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `mapel` (
  `id_mapel` varchar(12) NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `mapel` DISABLE KEYS */;
INSERT INTO `mapel` (`id_mapel`, `mapel`, `created_at`, `updated_at`) VALUES
	('UMUM001', 'Bahasa Indonesia', '2022-05-23 08:31:06', '2022-05-23 02:32:48'),
	('UMUM002', 'Matematika', '2022-05-23 08:30:59', '2022-05-23 02:32:42'),
	('UMUM003', 'Pendidikan Agama Islam', '2022-05-31 03:52:01', '2022-05-31 03:52:01'),
	('UMUM004', 'Bahasa Inggris', '2022-05-31 03:52:13', '2022-05-31 03:52:13');
/*!40000 ALTER TABLE `mapel` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_04_12_032253_create_siswas_table', 1),
	(6, '2022_04_20_014127_create_permission_tables', 2),
	(7, '2022_06_11_173938_create_dnilai_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(2, 'App\\Models\\User', 1),
	(1, 'App\\Models\\User', 3),
	(3, 'App\\Models\\User', 4),
	(1, 'App\\Models\\User', 5),
	(1, 'App\\Models\\User', 7),
	(1, 'App\\Models\\User', 8);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `m_guru_mapel` (
  `id_guru_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(11) NOT NULL,
  `id_mapel` varchar(12) NOT NULL,
  `id_kelas` varchar(12) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_guru_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `m_guru_mapel` DISABLE KEYS */;
INSERT INTO `m_guru_mapel` (`id_guru_mapel`, `id_pegawai`, `id_mapel`, `id_kelas`, `created_at`, `updated_at`) VALUES
	(1, 2010001, 'UMUM001', 'KLSXIPA1', '2022-06-18 10:21:24', '2022-06-18 10:21:24'),
	(2, 2010002, 'UMUM002', 'KLSXIPA1', '2022-06-18 10:21:34', '2022-06-18 10:21:34'),
	(3, 2010003, 'UMUM003', 'KLSXIPA1', '2022-06-18 10:21:45', '2022-06-18 10:21:45'),
	(4, 2010004, 'UMUM004', 'KLSXIPA1', '2022-06-18 10:21:55', '2022-06-18 10:21:55');
/*!40000 ALTER TABLE `m_guru_mapel` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `m_kelas_siswa` (
  `id_kelas_siswa` int(12) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(12) NOT NULL,
  `no_induk` varchar(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kelas_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `m_kelas_siswa` DISABLE KEYS */;
INSERT INTO `m_kelas_siswa` (`id_kelas_siswa`, `id_kelas`, `no_induk`, `created_at`, `updated_at`) VALUES
	(1, 'KLSXIPA1', '3120510812', '2022-06-10 07:58:08', '2022-06-10 09:14:10'),
	(2, 'KLSXIPA2', '20221001', '2022-06-15 02:43:03', '2022-06-15 10:51:35'),
	(3, 'KLSXIPA1', '202211', '2022-06-18 10:22:22', '2022-06-18 10:22:22'),
	(4, 'KLSXIPA2', '202212', '2022-06-18 10:22:59', '2022-06-18 10:22:59'),
	(5, 'KLSXIPA1', '202221', '2022-06-18 10:23:25', '2022-06-18 10:23:25'),
	(6, 'KLSXIPA1', '202222', '2022-06-18 10:23:36', '2022-06-18 10:23:36');
/*!40000 ALTER TABLE `m_kelas_siswa` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `m_nilai_siswa` (
  `id_nilai_siswa` bigint(20) NOT NULL AUTO_INCREMENT,
  `no_induk` varchar(12) NOT NULL,
  `id_kelas` varchar(12) NOT NULL,
  `id_nilai` varchar(11) NOT NULL,
  `nilai` float NOT NULL,
  PRIMARY KEY (`id_nilai_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `m_nilai_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_nilai_siswa` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `nilai` (
  `id_nilai` varchar(11) NOT NULL,
  `nilai` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` (`id_nilai`, `nilai`, `created_at`, `updated_at`) VALUES
	('TUGAS', 'TUGAS', '2022-06-02 04:44:44', '2022-06-02 04:44:44'),
	('UAS1', 'UAS SEMESTER GANJIL', '2022-06-02 04:16:43', '2022-06-02 04:16:43'),
	('UAS2', 'UAS SEMESTER GENAP', '2022-06-02 04:16:59', '2022-06-02 04:16:59'),
	('UTS1', 'UTS SEMESTER GANJIL', '2022-06-01 13:53:33', '2022-06-01 13:53:33'),
	('UTS2', 'UTS SEMESTER GENAP', '2022-06-02 04:15:04', '2022-06-02 04:15:04');
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `id_status` int(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`),
  KEY `id_status` (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` (`id_pegawai`, `nama`, `id_status`, `created_at`, `updated_at`) VALUES
	(2010001, 'Rini Anggraini', 1, '2022-06-18 10:13:13', '2022-06-18 10:14:20'),
	(2010002, 'Susanto', 1, '2022-06-18 10:15:57', '2022-06-18 10:15:57'),
	(2010003, 'Edi Priandono', 1, '2022-06-18 10:16:25', '2022-06-18 10:16:25'),
	(2010004, 'Yusnita Ekasari', 1, '2022-06-18 10:16:46', '2022-06-18 10:16:46'),
	(2010005, 'Mita Permatasari', 2, '2022-06-18 10:17:00', '2022-06-18 10:17:04');
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'role-list', 'web', '2022-04-20 01:57:22', '2022-04-20 01:57:22'),
	(2, 'role-create', 'web', '2022-04-20 01:57:22', '2022-04-20 01:57:22'),
	(3, 'role-edit', 'web', '2022-04-20 01:57:22', '2022-04-20 01:57:22'),
	(4, 'role-delete', 'web', '2022-04-20 01:57:22', '2022-04-20 01:57:22'),
	(5, 'user-list', 'web', '2022-04-20 02:19:42', '2022-04-20 02:19:42'),
	(6, 'user-create', 'web', '2022-04-20 02:19:42', '2022-04-20 02:19:42'),
	(7, 'user-edit', 'web', '2022-04-20 02:19:42', '2022-04-20 02:19:42'),
	(8, 'user-delete', 'web', '2022-04-20 02:19:42', '2022-04-20 02:19:42'),
	(9, 'pegawai-list', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(10, 'pegawai-create', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(11, 'pegawai-edit', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(12, 'pegawai-delete', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(13, 'mapel-list', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(14, 'mapel-create', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(15, 'mapel-edit', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(16, 'mapel-delete', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(17, 'nilai-list', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(18, 'nilai-create', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(19, 'nilai-edit', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(20, 'nilai-delete', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(21, 'kelas-list', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(22, 'kelas-create', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(23, 'kelas-edit', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(24, 'kelas-delete', 'web', '2022-06-06 14:27:15', '2022-06-06 14:27:15'),
	(25, 'siswa-list', 'web', '2022-06-08 10:55:14', '2022-06-08 10:55:14'),
	(26, 'siswa-create', 'web', '2022-06-08 10:55:14', '2022-06-08 10:55:14'),
	(27, 'siswa-edit', 'web', '2022-06-08 10:55:14', '2022-06-08 10:55:14'),
	(28, 'siswa-delete', 'web', '2022-06-08 10:55:14', '2022-06-08 10:55:14'),
	(29, 'dnilai-list', 'web', '2022-06-19 10:33:48', '2022-06-19 10:33:49'),
	(30, 'dnilai-create', 'web', '2022-06-19 10:34:25', '2022-06-19 10:34:25'),
	(31, 'dnilai-edit', 'web', '2022-06-19 10:34:39', '2022-06-19 10:34:40'),
	(32, 'dnilai-delete', 'web', '2022-06-19 10:34:54', '2022-06-19 10:34:54');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `ref_status_pegawai` (
  `id_status` int(3) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `ref_status_pegawai` DISABLE KEYS */;
INSERT INTO `ref_status_pegawai` (`id_status`, `status`) VALUES
	(1, 'Guru'),
	(2, 'Tenaga Kependidikan');
/*!40000 ALTER TABLE `ref_status_pegawai` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'web', '2022-04-20 01:58:39', '2022-04-20 01:58:39'),
	(2, 'User', 'web', '2022-04-20 02:21:28', '2022-04-20 02:21:28'),
	(3, 'Siswa', 'web', '2022-04-20 02:29:12', '2022-04-20 02:29:12');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
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
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(5, 2),
	(1, 3),
	(5, 3);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `siswas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no_induk` varchar(12) NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_masuk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no_induk` (`no_induk`)
) ENGINE=InnoDB AUTO_INCREMENT=857 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `siswas` DISABLE KEYS */;
INSERT INTO `siswas` (`id`, `no_induk`, `nama`, `jenis_kelamin`, `agama`, `alamat`, `tahun_masuk`, `created_at`, `updated_at`) VALUES
	(555, '202211', 'Siswi1', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(556, '202212', 'Siswi2', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(557, '202213', 'Siswi3', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(558, '202214', 'Siswi4', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(559, '202215', 'Siswi5', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(560, '202216', 'Siswi6', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(561, '202217', 'Siswi7', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(562, '202218', 'Siswi8', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(563, '202219', 'Siswi9', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(564, '2022110', 'Siswi10', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(565, '2022111', 'Siswi11', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(566, '2022112', 'Siswi12', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(567, '2022113', 'Siswi13', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(568, '2022114', 'Siswi14', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(569, '2022115', 'Siswi15', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(570, '2022116', 'Siswi16', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(571, '2022117', 'Siswi17', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(572, '2022118', 'Siswi18', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(573, '2022119', 'Siswi19', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(574, '2022120', 'Siswi20', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(575, '2022121', 'Siswi21', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(576, '2022122', 'Siswi22', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(577, '2022123', 'Siswi23', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(578, '2022124', 'Siswi24', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(579, '2022125', 'Siswi25', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(580, '2022126', 'Siswi26', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(581, '2022127', 'Siswi27', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(582, '2022128', 'Siswi28', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(583, '2022129', 'Siswi29', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(584, '2022130', 'Siswi30', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(585, '2022131', 'Siswi31', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(586, '2022132', 'Siswi32', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(587, '2022133', 'Siswi33', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(588, '2022134', 'Siswi34', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(589, '2022135', 'Siswi35', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(590, '2022136', 'Siswi36', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(591, '2022137', 'Siswi37', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(592, '2022138', 'Siswi38', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(593, '2022139', 'Siswi39', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(594, '2022140', 'Siswi40', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(595, '2022141', 'Siswi41', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(596, '2022142', 'Siswi42', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(597, '2022143', 'Siswi43', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(598, '2022144', 'Siswi44', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(599, '2022145', 'Siswi45', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(600, '2022146', 'Siswi46', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(601, '2022147', 'Siswi47', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(602, '2022148', 'Siswi48', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(603, '2022149', 'Siswi49', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(604, '2022150', 'Siswi50', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(605, '2022151', 'Siswi51', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(606, '2022152', 'Siswi52', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(607, '2022153', 'Siswi53', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(608, '2022154', 'Siswi54', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(609, '2022155', 'Siswi55', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(610, '2022156', 'Siswi56', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(611, '2022157', 'Siswi57', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(612, '2022158', 'Siswi58', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(613, '2022159', 'Siswi59', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(614, '2022160', 'Siswi60', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(615, '2022161', 'Siswi61', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(616, '2022162', 'Siswi62', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(617, '2022163', 'Siswi63', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(618, '2022164', 'Siswi64', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(619, '2022165', 'Siswi65', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(620, '2022166', 'Siswi66', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(621, '2022167', 'Siswi67', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(622, '2022168', 'Siswi68', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(623, '2022169', 'Siswi69', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(624, '2022170', 'Siswi70', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(625, '2022171', 'Siswi71', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(626, '2022172', 'Siswi72', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(627, '2022173', 'Siswi73', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(628, '2022174', 'Siswi74', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(629, '2022175', 'Siswi75', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(630, '2022176', 'Siswi76', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(631, '2022177', 'Siswi77', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(632, '2022178', 'Siswi78', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(633, '2022179', 'Siswi79', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(634, '2022180', 'Siswi80', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(635, '2022181', 'Siswi81', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(636, '2022182', 'Siswi82', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(637, '2022183', 'Siswi83', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(638, '2022184', 'Siswi84', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(639, '2022185', 'Siswi85', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(640, '2022186', 'Siswi86', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(641, '2022187', 'Siswi87', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(642, '2022188', 'Siswi88', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(643, '2022189', 'Siswi89', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(644, '2022190', 'Siswi90', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(645, '2022191', 'Siswi91', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(646, '2022192', 'Siswi92', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(647, '2022193', 'Siswi93', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(648, '2022194', 'Siswi94', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(649, '2022195', 'Siswi95', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(650, '2022196', 'Siswi96', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(651, '2022197', 'Siswi97', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(652, '2022198', 'Siswi98', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(653, '2022199', 'Siswi99', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(654, '20221100', 'Siswi100', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(655, '20221101', 'Siswi101', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(656, '20221102', 'Siswi102', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(657, '20221103', 'Siswi103', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(658, '20221104', 'Siswi104', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(659, '20221105', 'Siswi105', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:48', '2022-06-18 10:10:48'),
	(660, '20221106', 'Siswi106', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(661, '20221107', 'Siswi107', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(662, '20221108', 'Siswi108', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(663, '20221109', 'Siswi109', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(664, '20221110', 'Siswi110', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(665, '20221111', 'Siswi111', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(666, '20221112', 'Siswi112', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(667, '20221113', 'Siswi113', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(668, '20221114', 'Siswi114', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(669, '20221115', 'Siswi115', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(670, '20221116', 'Siswi116', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(671, '20221117', 'Siswi117', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(672, '20221118', 'Siswi118', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(673, '20221119', 'Siswi119', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(674, '20221120', 'Siswi120', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(675, '20221121', 'Siswi121', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(676, '20221122', 'Siswi122', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(677, '20221123', 'Siswi123', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(678, '20221124', 'Siswi124', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(679, '20221125', 'Siswi125', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(680, '20221126', 'Siswi126', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(681, '20221127', 'Siswi127', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(682, '20221128', 'Siswi128', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(683, '20221129', 'Siswi129', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(684, '20221130', 'Siswi130', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(685, '20221131', 'Siswi131', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(686, '20221132', 'Siswi132', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(687, '20221133', 'Siswi133', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(688, '20221134', 'Siswi134', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(689, '20221135', 'Siswi135', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(690, '20221136', 'Siswi136', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(691, '20221137', 'Siswi137', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(692, '20221138', 'Siswi138', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(693, '20221139', 'Siswi139', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(694, '20221140', 'Siswi140', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(695, '20221141', 'Siswi141', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(696, '20221142', 'Siswi142', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(697, '20221143', 'Siswi143', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(698, '20221144', 'Siswi144', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(699, '20221145', 'Siswi145', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(700, '20221146', 'Siswi146', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(701, '20221147', 'Siswi147', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(702, '20221148', 'Siswi148', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(703, '20221149', 'Siswi149', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(704, '20221150', 'Siswi150', 'Perempuan', 'Islam', 'Indonesia', '2022', '2022-06-18 10:10:49', '2022-06-18 10:10:49'),
	(707, '202221', 'Siswa1', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(708, '202222', 'Siswa2', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(709, '202223', 'Siswa3', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(710, '202224', 'Siswa4', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(711, '202225', 'Siswa5', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(712, '202226', 'Siswa6', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(713, '202227', 'Siswa7', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(714, '202228', 'Siswa8', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(715, '202229', 'Siswa9', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(716, '2022210', 'Siswa10', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(717, '2022211', 'Siswa11', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(718, '2022212', 'Siswa12', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(719, '2022213', 'Siswa13', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(720, '2022214', 'Siswa14', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(721, '2022215', 'Siswa15', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(722, '2022216', 'Siswa16', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(723, '2022217', 'Siswa17', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(724, '2022218', 'Siswa18', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(725, '2022219', 'Siswa19', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(726, '2022220', 'Siswa20', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(727, '2022221', 'Siswa21', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(728, '2022222', 'Siswa22', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(729, '2022223', 'Siswa23', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(730, '2022224', 'Siswa24', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(731, '2022225', 'Siswa25', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(732, '2022226', 'Siswa26', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(733, '2022227', 'Siswa27', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(734, '2022228', 'Siswa28', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(735, '2022229', 'Siswa29', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(736, '2022230', 'Siswa30', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(737, '2022231', 'Siswa31', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(738, '2022232', 'Siswa32', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(739, '2022233', 'Siswa33', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(740, '2022234', 'Siswa34', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(741, '2022235', 'Siswa35', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(742, '2022236', 'Siswa36', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(743, '2022237', 'Siswa37', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(744, '2022238', 'Siswa38', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(745, '2022239', 'Siswa39', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(746, '2022240', 'Siswa40', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(747, '2022241', 'Siswa41', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(748, '2022242', 'Siswa42', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(749, '2022243', 'Siswa43', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(750, '2022244', 'Siswa44', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(751, '2022245', 'Siswa45', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(752, '2022246', 'Siswa46', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(753, '2022247', 'Siswa47', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(754, '2022248', 'Siswa48', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(755, '2022249', 'Siswa49', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(756, '2022250', 'Siswa50', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(757, '2022251', 'Siswa51', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(758, '2022252', 'Siswa52', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(759, '2022253', 'Siswa53', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(760, '2022254', 'Siswa54', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(761, '2022255', 'Siswa55', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(762, '2022256', 'Siswa56', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(763, '2022257', 'Siswa57', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(764, '2022258', 'Siswa58', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(765, '2022259', 'Siswa59', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(766, '2022260', 'Siswa60', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(767, '2022261', 'Siswa61', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(768, '2022262', 'Siswa62', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(769, '2022263', 'Siswa63', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(770, '2022264', 'Siswa64', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(771, '2022265', 'Siswa65', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(772, '2022266', 'Siswa66', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(773, '2022267', 'Siswa67', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(774, '2022268', 'Siswa68', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(775, '2022269', 'Siswa69', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(776, '2022270', 'Siswa70', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(777, '2022271', 'Siswa71', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(778, '2022272', 'Siswa72', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(779, '2022273', 'Siswa73', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(780, '2022274', 'Siswa74', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(781, '2022275', 'Siswa75', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(782, '2022276', 'Siswa76', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(783, '2022277', 'Siswa77', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(784, '2022278', 'Siswa78', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(785, '2022279', 'Siswa79', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(786, '2022280', 'Siswa80', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(787, '2022281', 'Siswa81', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(788, '2022282', 'Siswa82', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(789, '2022283', 'Siswa83', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(790, '2022284', 'Siswa84', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(791, '2022285', 'Siswa85', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(792, '2022286', 'Siswa86', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(793, '2022287', 'Siswa87', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(794, '2022288', 'Siswa88', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(795, '2022289', 'Siswa89', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(796, '2022290', 'Siswa90', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(797, '2022291', 'Siswa91', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(798, '2022292', 'Siswa92', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(799, '2022293', 'Siswa93', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(800, '2022294', 'Siswa94', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(801, '2022295', 'Siswa95', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(802, '2022296', 'Siswa96', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(803, '2022297', 'Siswa97', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(804, '2022298', 'Siswa98', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(805, '2022299', 'Siswa99', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(806, '20222100', 'Siswa100', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(807, '20222101', 'Siswa101', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(808, '20222102', 'Siswa102', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(809, '20222103', 'Siswa103', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(810, '20222104', 'Siswa104', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(811, '20222105', 'Siswa105', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(812, '20222106', 'Siswa106', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(813, '20222107', 'Siswa107', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(814, '20222108', 'Siswa108', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(815, '20222109', 'Siswa109', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(816, '20222110', 'Siswa110', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(817, '20222111', 'Siswa111', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(818, '20222112', 'Siswa112', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(819, '20222113', 'Siswa113', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(820, '20222114', 'Siswa114', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(821, '20222115', 'Siswa115', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(822, '20222116', 'Siswa116', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(823, '20222117', 'Siswa117', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(824, '20222118', 'Siswa118', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(825, '20222119', 'Siswa119', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(826, '20222120', 'Siswa120', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(827, '20222121', 'Siswa121', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(828, '20222122', 'Siswa122', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(829, '20222123', 'Siswa123', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(830, '20222124', 'Siswa124', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(831, '20222125', 'Siswa125', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(832, '20222126', 'Siswa126', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(833, '20222127', 'Siswa127', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(834, '20222128', 'Siswa128', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(835, '20222129', 'Siswa129', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(836, '20222130', 'Siswa130', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(837, '20222131', 'Siswa131', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(838, '20222132', 'Siswa132', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(839, '20222133', 'Siswa133', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(840, '20222134', 'Siswa134', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(841, '20222135', 'Siswa135', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(842, '20222136', 'Siswa136', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(843, '20222137', 'Siswa137', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(844, '20222138', 'Siswa138', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(845, '20222139', 'Siswa139', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(846, '20222140', 'Siswa140', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(847, '20222141', 'Siswa141', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(848, '20222142', 'Siswa142', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(849, '20222143', 'Siswa143', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(850, '20222144', 'Siswa144', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(851, '20222145', 'Siswa145', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(852, '20222146', 'Siswa146', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(853, '20222147', 'Siswa147', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(854, '20222148', 'Siswa148', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(855, '20222149', 'Siswa149', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14'),
	(856, '20222150', 'Siswa150', 'Laki-Laki', 'Islam', 'Indonesia', '2022', '2022-06-18 10:12:14', '2022-06-18 10:12:14');
/*!40000 ALTER TABLE `siswas` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Bintang', 'user111@gmail.com', NULL, '$2y$10$pA/ft8inT85nakamj1vRdONMsexcTweuE/5qLlzIEfrWgHIwgWWmm', NULL, '2022-04-20 01:38:52', '2022-04-27 03:07:53'),
	(3, 'Bintang Putra', 'superadmin@gmail.com', NULL, '$2y$10$sAA2tKfipaqhprpxDT55xu6euwnTm9mDB5Gj69ADhruuFjRnOITty', 'qm9jqkXRmkulFwrCORtCgi9dQCQFrhbkYkuG8jANw11GAjDmyEGDmb0woS6x', '2022-04-20 01:58:39', '2022-04-20 01:58:39'),
	(4, 'Siswa', 'siswa@gmail.com', NULL, '$2y$10$TSNYe0APP/fmOLSkyM58juaycab4OemxLF23uSiX.CxTFN9ZZVCfm', NULL, '2022-04-20 02:29:00', '2022-06-06 07:33:48'),
	(5, 'admin', 'admin123@gmail.com', NULL, '$2y$10$/wvk2TILm8SxxMJ0M5TarO7HmLw3oR35SzYgGeW6VUNGwTv7FLhFC', NULL, '2022-04-27 03:02:55', '2022-04-27 03:02:55'),
	(7, 'Bintang Putra', 'superadmin123@gmail.com', NULL, '$2y$10$11trde/a4n.ocTPB/CtRAurYQepaSbQXuDjdMo782Hhxe8L8zEIXu', NULL, '2022-05-09 03:27:27', '2022-05-09 03:33:45'),
	(8, 'Zaki', 'zaki@sisekolah.com', NULL, '$2y$10$R3U233BmnzpsaQEbIumE/O01l5tmB.6oq4VIOu1Zhc05aDnxEmcye', 'FoNezJI393Tb1KgRvcAHEX1S9q4zVtNW5Hojir3MELp0Fw9OI9l5KTryWrcP', '2022-06-11 09:49:11', '2022-06-11 09:49:11'),
	(9, 'Muzaki', 'muzaki@sisekolah.com', NULL, '$2y$10$pD8w5yVr2.E/s6pt9uvHreAMo34pRnoiG9nHI.sSGQNVDs.prsrd.', NULL, '2022-06-19 01:57:43', '2022-06-19 01:57:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
