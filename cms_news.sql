-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 02:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-13 06:48:18', '2023-08-13 06:48:18'),
(2, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-13 06:49:45', '2023-08-13 06:49:45'),
(3, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2023-08-13 07:39:16', '2023-08-13 07:39:16'),
(17, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-13 15:26:47', '2023-08-13 15:26:47'),
(18, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-13 15:31:28', '2023-08-13 15:31:28'),
(19, 'default', 'Mengupload postingan baru', NULL, NULL, NULL, 'App\\Models\\User', 3, '[]', NULL, '2023-08-13 22:59:12', '2023-08-13 22:59:12'),
(20, 'default', 'Menghapus postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-13 23:06:51', '2023-08-13 23:06:51'),
(21, 'default', 'Mengupload postingan baru', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-13 23:23:24', '2023-08-13 23:23:24'),
(22, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-13 23:45:49', '2023-08-13 23:45:49'),
(23, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-14 00:21:28', '2023-08-14 00:21:28'),
(24, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-14 00:26:38', '2023-08-14 00:26:38'),
(25, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-14 00:27:30', '2023-08-14 00:27:30'),
(26, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-14 00:29:45', '2023-08-14 00:29:45'),
(27, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-14 00:33:04', '2023-08-14 00:33:04'),
(28, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-14 00:34:48', '2023-08-14 00:34:48'),
(29, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-14 00:36:15', '2023-08-14 00:36:15'),
(30, 'default', 'Mengubah postingan', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-14 00:37:46', '2023-08-14 00:37:46'),
(31, 'default', 'Menambah kategori baru', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2023-08-14 00:56:42', '2023-08-14 00:56:42');

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
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_09_070427_create_activity_log_table', 1),
(7, '2023_08_09_070428_add_event_column_to_activity_log_table', 1),
(8, '2023_08_09_070429_add_batch_uuid_column_to_activity_log_table', 1),
(9, '2023_08_09_070612_create_permission_tables', 1),
(10, '2023_08_10_134824_create_news_table', 1),
(11, '2023_08_11_215326_create_kategoris_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-08-11 16:03:50', '2023-08-11 16:03:50'),
(2, 'user', 'web', '2023-08-11 16:03:50', '2023-08-11 16:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'Umum', '2023-08-11 16:04:55', '2023-08-11 16:04:55'),
(2, 'Teknologi', '2023-08-11 16:05:03', '2023-08-11 16:05:03'),
(3, 'Programming', '2023-08-11 16:05:11', '2023-08-11 16:05:11'),
(4, 'Creative, Design & Multimedia', '2023-08-14 00:56:42', '2023-08-14 00:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

CREATE TABLE `tb_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `ringkasan` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_post` date NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_news`
--

INSERT INTO `tb_news` (`id`, `gambar`, `judul`, `ringkasan`, `deskripsi`, `tgl_post`, `penulis`, `kategori`, `created_at`, `updated_at`) VALUES
(1, '1691972487.jpg', 'Mengenal Apa Itu Hyperlink: Pengertian, Fungsi, Jenis dan Cara Membuatnya', '<p><em>Hyperlink adalah semacam fitur untuk menautkan atau menghubungkan antara file satu dengan file lainnya. Nah, di sini kamu akan mengetahui fungsi dan cara membuat hyperlink.</em></p>', '<p>Kamu mungkin sudah sering mendengar istilah hyperlink. Biasanya ada di dalam materi PowerPoint atau di halaman website. Pertanyaannya, apa itu hyperlink? Apa saja fungsi hyperlink sehingga penting untuk dipelajari? Simak ulasan lengkapnya di bawah ini.</p>\r\n<h2 id=\"h-0\">Apa Itu Hyperlink?</h2>\r\n<p>&nbsp;Hyperlink adalah sebuah fitur yang bertujuan untuk menghubungkan antara satu file dengan file lain. File ini bisa berupa teks, gambar atau bahkan audio dan video. Ada juga yang mengatakan bahwa hyperlink adalah akses atau cara untuk menautkan satu file dengan file lain baik secara online maupun offline.</p>\r\n<p>Oleh sebab itu, ketika hyperlink dibuat, kamu dapat dengan mudah mengeklik link tersebut dan berpindah ke file yang ditautkan. Bukan hanya file, jika pada sebuah artikel di website, link yang ada di dalam teks dapat mengarahkan ke tampilan halaman lain.</p>\r\n<p>Secara default, teks yang mengandung hyperlink akan memiliki tampilan yang berbeda. Jika hyperlink aktif, biasanya akan berwarna biru dan ada garis bawah. Ini menunjukkan bahwa link yang ditautkan ke dalam teks bisa kamu klik atau akses.</p>\r\n<p>Untuk lebih jelasnya, kamu dapat melihat teks berikut ini:</p>\r\n<p><a href=\"https://www.gamelab.id/class?utm_source=gamelab+blog&amp;utm_medium=social&amp;utm_campaign=n+semua+kelas\" target=\"_blank\" rel=\"noopener\">Kelas Online GAMELAB.ID</a></p>\r\n<p>Warna teks secara default akan menjadi biru. Itu menandakan link aktif dan dapat kamu klik. Lalu, hyperlink ini fungsinya untuk apa? Untuk menjawab pertanyaan tersebut, simak artikel ini sampai selesai ya.</p>\r\n<p><a class=\"thumbnail fancybox\" href=\"https://www.gamelab.id/uploads/modules/MARKETING/Mengenal%20Hyperlink%20-%20GAMELAB.ID%20(4).jpg?1675247076295\"><img src=\"https://www.gamelab.id/uploads/modules/MARKETING/Mengenal%20Hyperlink%20-%20GAMELAB.ID%20(4).jpg?1675247076295\" alt=\"Mengenal Hyperlink - GAMELAB.ID\" width=\"417\" height=\"219\"></a></p>\r\n<h2 id=\"h-1\">Apa Saja Fungsi Hyperlink?</h2>\r\n<p>Dari penjelasan di atas, maka fungsi hyperlink adalah memudahkan kamu sebagai pengunjung website untuk menggali lebih dalam tentang informasi yang ada di dalam website tersebut. Sehingga informasi yang kamu dapatkan akan lebih lengkap.</p>\r\n<p>Sedangkan hyperlink pada file offline seperti PowerPoint fungsinya adalah memudahkan kamu untuk menampilkan lebih banyak file. Jadi, ketika kamu presentasi, kamu tidak perlu membuka semua file yang akan terkait dengan materi presentasi.</p>\r\n<p>Kamu cukup buka file atau materi presentasi. Kemudian, cukup klik teks yang mengandung hyperlink. Teks tersebut akan langsung mengarahkan kamu ke file yang dimaksud. Sehingga kamu akan terlihat lebih profesional dan tentu saja ini lebih mudah untuk menjelaskan sesuatu.</p>\r\n<p>Secara singkat, hyperlink adalah fungsi yang berada di&nbsp;<a href=\"https://www.gamelab.id/class/5-membuat-website-menggunakan-html-dan-css?utm_source=gamelab+blog&amp;utm_medium=social&amp;utm_campaign=n+membuat+website+menggunakan+html+dan+css\" target=\"_blank\" rel=\"noopener\">HTML (Hyper Text Markup Language)</a>&nbsp;yang memberikan jalan pintas bagi pembaca. Dengan cara ini, pengunjung sebuah website akan betah berlama-lama untuk menelusuri semua informasi yang dibutuhkan.</p>\r\n<h2 id=\"h-2\">Apa Saja Jenis Hyperlink?</h2>\r\n<p>Secara umum, ada beberapa jenis hyperlink yang perlu kamu ketahui. Setidaknya, kamu perlu tahu 3 jenis hyperlink berikut ini:</p>\r\n<h3 id=\"h-3\">Absolute Address</h3>\r\n<p>Jenis hyperlink ini adalah yang paling umum. Kamu perlu menautkan alamat halaman atau dokumen beserta alamat situs pada sebuah teks. Hyperlink jenis ini harus terkoneksi ke internet agar bisa aktif dan kamu pun dapat mengaksesnya. Jenis ini dapat dengan mudah kamu temui di artikel yang ada di website.</p>\r\n<p><a class=\"thumbnail fancybox\" href=\"https://www.gamelab.id/uploads/modules/MARKETING/Mengenal%20Hyperlink%20-%20GAMELAB.ID%20(2).jpg?1675247011179\"><img src=\"https://www.gamelab.id/uploads/modules/MARKETING/Mengenal%20Hyperlink%20-%20GAMELAB.ID%20(2).jpg?1675247011179\" alt=\"Mengenal Hyperlink - GAMELAB.ID\" width=\"407\" height=\"214\"></a></p>', '2023-08-11', 'Ayu Inten Nurillah', 'Umum', NULL, '2023-08-14 00:21:27'),
(3, '1691972850.png', '9 Skills yang Harus Dimiliki Seorang Front End Developer', '<p><em>Ada 9 skill yang wajib dikuasai oleh seorang Front End Developer. Apa sajakah itu? Simak artikel ini sampai selesai ya</em></p>', '<p>Saat ini pekerjaan dalam bidang teknologi banyak diminati dan dicari oleh setiap orang. Salah satunya di bidang development atau programmer. Istilah tersebut saat ini sudah tidak asing lagi bagi orang yang terjun di dunia IT.</p>\r\n<p>Programmer atau seorang developer sendiri dibagi menjadi beberapa jenis, misalnya developer website atau developer mobile. Di antara kedua jenis tersebut terdapat posisi pekerjaan yang juga berbeda. Misalnya front end, back end, full stack developer, dan masih banyak lagi posisi yang lain disesuaikan dengan kebutuhan perusahaan.</p>\r\n<p>Di era digital saat ini, semakin banyak bisnis yang membutuhkan website atau aplikasi. Itulah mengapa pekerjaan di bidang ini sangat menjanjikan, khususnya front end developer.</p>\r\n<h2 id=\"h-0\">Apa Itu Front End Developer?</h2>\r\n<p>Pada dasarnya,&nbsp;front end&nbsp;adalah salah satu bagian dari website yang menampilkan tampilan website pada para pengguna. Dibuat dengan menggunakan&nbsp;HyperText Markup Language&nbsp;(HTML),&nbsp;Cascading Style Sheets&nbsp;(CSS), dan JavaScript. Sehingga, suatu URL bisa bekerja dan dapat menampilkan situs website.</p>\r\n<p>Berdasarkan laman&nbsp;Career Foundry,&nbsp;front end&nbsp;developer&nbsp;adalah mereka yang memiliki tanggung jawab dalam menghubungkan suatu situs website ataupun aplikasi dengan para penggunanya.</p>\r\n<p>Mereka akan membuat gambar, tombol, teks, dan juga menu serta interaksi antar setiap situs atau aplikasi dengan para pengguna. Oleh karena itu, mereka juga biasa dikenal dengan&nbsp;client-side.</p>\r\n<p>Front end&nbsp;tidak merancang desain dari suatu situs atau aplikasi dari nol. Sebab, hal tersebut sudah dikerjakan oleh&nbsp;UI designer.</p>\r\n<p>Tugas front end adalah memindahkan desain yang dibuat oleh UI designer dalam bentuk yang lebih interaktif dan enak dilihat oleh mata pengguna.</p>\r\n<h2 id=\"h-1\">Apa Saja Skill yang Harus Dimiliki Seorang Front End Developer?</h2>\r\n<p>&nbsp;</p>\r\n<h3 id=\"h-2\">1. Menguasai Bahasa Pemrograman HTML, CSS, dan JavaScript</h3>\r\n<p>HTML adalah bahasa paling dasar dan paling penting untuk seorang front end developer dalam pembangunan sebuah website. HTML (HyperText Markup Language)&nbsp;merupakan bahasa&nbsp;markup&nbsp;untuk membuat sebuah halaman website.</p>\r\n<p>Selanjutnya bahasa CSS (Cascade Style Sheet)&nbsp;merupakan bahasa pendukung dari HTML sendiri. Kita dapat menganalogikan dengan sebuah bagunan. HTML kita analogikan sebagai pondasi bangunan.&nbsp;</p>\r\n<p>Sedangkan, CSS sebagai desain dan tata letak sebuah bangunan. Jadi, dapat disimpulkan bahwa CSS berperan untuk memberikan perubahan pada style, font, layout, warna, dan lain-lain. Sehingga, HTML tampak lebih memiliki estetika dan tidak membosankan.</p>\r\n<p>Sebenarnya, jika anda ingin membuat sebuah website sederhana cukup dengan menggunakan HTML dan CSS saja. Akan tetapi, tampilan yang disajikan tidak interaktif dan cenderung membosankan.&nbsp;Supaya website lebih menarik dan cantik, biasanya web developer menggunakan JavaScript.</p>\r\n<p>JavaScript merupakan tools dasar bagi front end developer. Bahasa ini dapat mengatur berbagai tampilan seperti efek animasi,&nbsp;motion, interaksi pada button, layout, sehingga website dapat berjalan secara dinamis.</p>\r\n<h3 id=\"h-3\">2. Menguasai Framework CSS dan JavaScript</h3>\r\n<p>Framework dapat membantu kita menulis beberapa baris kode dengan hanya menggunakan satu baris kode saja atau bisa dibilang meringkas baris kode.</p>\r\n<p>Di bahasa pemrograman CSS ada banyak sekali framework, seperti Bootstrap, Foundation, Bulma, dan lain-lain. Untuk saat ini framework yang sering digunakan adalah Bootstrap.</p>\r\n<p>Sebenarnya dengan menggunakan CSS saja sudah cukup untuk membuat sebuah website. Akan tetapi, dengan adanya framework CSS maka variasi dalam tampilan yang disajikan akan semakin lebih luas dengan mempermudah penulisan kode dan dapat dimengerti oleh setiap developer.</p>\r\n<p>Sedangkan di JavaScript terdapat banyak framework dengan fungsinya masing-masing seperti: jQuery, Angular, dan Vue JS.</p>\r\n<p>Kamu bisa memilih salah satu framework yang berbeda beda tersebut karena fungsinya hampir sama. Setiap framework memliki kelemahan dan kelebihan masing-masing. Maka dari itu sangat penting untuk memilih framework yang sesuai dengan kebutuhan website yang akan dibuat.</p>\r\n<h3 id=\"h-4\">3. Menguasai Preprocessor CSS</h3>\r\n<p>Bahasa pemrograman CSS tidak bisa mendefinisikan sebuah variable, fungsi, atau operasi aritmatika. Akan tetapi dengan bantuan Preprocessor CSS, maka permasalahan tersebut dapat diatasi.</p>\r\n<p>Preprocessor CSS adalah framework yang menyediakan fitur-fitur yang tidak terdapat pada CSS. Fitur tersebut banyak mengangkat konsep-konsep pemrograman seperti operasi matematika dasar, variabel, loop, dan fungsi.</p>\r\n<p>Contoh Preprocessor CSS yaitu SASS, LESS, dan Stylus. Kamu bisa menggunakan salah satu dari ketiga framework tersebut untuk diterapkan pada web development. Saat ini SASS adalah yang banyak digunakan oleh developer di dunia.</p>\r\n<h3 id=\"h-5\">4. Penggunaan Version Control System (Git)</h3>\r\n<p>Git merupakan sebuah aplikasi pengontrol versi, bisa disebut juga sebagai VCS (Version Control System). Saat ini Git banyak digunakan oleh para developer untuk membuat sistem dan aplikasi.</p>\r\n<p>Git diciptakan oleh Linux Trovalds yang juga perintis kernel sistem operasi Linux. Git saat ini menjadi VCS yang paling besar di seluruh dunia, bersamaan dengan semakin banyaknya perusahaan besar menggunakan Git sebagai aplikasi pengontrol versinya.</p>\r\n<h3 id=\"h-6\">5. Mampu Membuat Responsive &amp; Mobile Design</h3>\r\n<p>Faktor penting dalam pengembangan website saat ini adalah responsive design. Berbagai macam perangkat dengan berbagai macam spesifikasi yang saat ini tersedia, mendorong pengembang bisa menyesuaikan tampilan website di semua perangkat pengguna. Pengembang website harus bisa memberikan tampilan responsive pada website yang dibuat.</p>\r\n<p>Bisa memahami prinsip-prinsip responsive design dan tahu bagaimana cara mengimplementasikannya saat coding merupakan salah satu kunci menjadi front end developer yang sukses.</p>\r\n<h3 id=\"h-7\">6. Melakukan Testing/Debugging</h3>\r\n<p>Proses ini dilakukan untuk mengetahui apakah kode yang ditulis sudah benar dan bisa bekerja sebagaimana mestinya. Proses ini bisa dijalankan saat melakukan penulisan kode.&nbsp;Kode akan otomatis terbaca oleh debugging.</p>\r\n<p>Apabila kode tersebut benar, maka akan muncul output&nbsp;tampilan yang dihasilkan. Jika masih terdapat&nbsp;error&nbsp;pada program maka akan muncul pesan peringatan. Dengan begitu, developer bisa mengetahui errornya dan segera memperbaiki error tersebut agar program dapat berjalan dengan semestinya.</p>\r\n<h3 id=\"h-8\">7. Memahami Browser Developer Tools</h3>\r\n<p>Website dapat diakses menggunakan browser. Sangat penting untuk memastikan website dapat diakses dengan baik melalui browser. Tampilan harus rapi, tidak acak-acakan dan semua fungsionalitas dapat berjalan dengan baik.</p>\r\n<p>Di dalam web browser modern, terdapat tools yang membantu front end developer untuk memastikan website tidak muncul masalah ketika diakses pengguna. Tool ini akan membantu kamu untuk melakukan pengecekan sampai tidak ada masalah yang muncul ketika website diakses oleh pengguna melalui browser.</p>\r\n<h3 id=\"h-9\">8. Mampu Membangun dan Mengoptimalisasi Website</h3>\r\n<p>Salah satu indikator website yang baik adalah dapat diakses dengan cepat. Website yang mempunyai akses yang lambat dan cenderung berat memberikan kesan yang kurang baik. Untuk itu, sangat perlu memastikan website dapat berjalan dengan ringan dan cepat.</p>\r\n<p>Hal yang perlu diperhatikan supaya website dapat bekerja dengan ringan dan cepat adalah memastikan baris kode efesien. Jika baris kode HTML, CSS, dan JavaScript tidak dimaksimalkan, dapat mengakibatkan performa website buruk.</p>\r\n<p>Maka dari itu, penting untuk menguasai cara mengoptimalisasi website. Kamu bisa menggunakan program seperti Grunt dan Gulp untuk membantu memaksimalkan kinerja website.</p>\r\n<h3 id=\"h-10\">9. Menguasai Command Line</h3>\r\n<p>Tidak semua tools harus menggunakan tampilan GUI (Graphical User Interface). Sesekali kamu juga diharuskan untuk memahami konsep penggunaan command line. Aplikasi dengan tampilan GUI juga memiliki keterbatasan dalam hal fungsionalitas. Sehingga, penggunaan command line sangat diperlukan agar pengerjaan produk tidak terhambat.</p>\r\n<p>Jika kamu ingin memulai karir sebagai front end developer, kamu bisa mengikuti&nbsp;<a href=\"https://www.gamelab.id/learning-paths/4\" target=\"_blank\" rel=\"noopener\">jalur belajar sebagai front end developer</a> yang sudah disediakan oleh Gamelab Indonesia.&nbsp;</p>', '2023-08-11', 'Ayu Inten Nurillah', 'Programming', NULL, '2023-08-14 00:27:30'),
(4, '1691972985.jpg', 'Mengenal 12 Fitur Laravel, Framework PHP untuk Membangun Website', '<p><em>Inilah fitur-fitur yang terdapat pada Laravel, framework PHP yang sangat populer di dunia dan berfungsi untuk membantu programer dalam pengembangan website.</em></p>', '<p>Pernahkah kamu mendengar soal Laravel? Istilah ini mungkin asing bagi awam, namun cukup familiar untuk para pengembang&nbsp;<a href=\"https://www.gamelab.id/news/2654-mengenal-10-tugas-frontend-developer-penanggung-jawab-antarmuka-website\" target=\"_blank\" rel=\"noopener\">website</a>. Artikel ini akan mengulas tentang fitur-fitur yang terdapat pada&nbsp;<em>framework</em>&nbsp;<a href=\"https://www.gamelab.id/news/682-ngulik-forum-php-indonesia-yuk\" target=\"_blank\" rel=\"noopener\">PHP</a>&nbsp;Laravel.</p>\r\n<h2 id=\"h-0\">Apa Itu Laravel?</h2>\r\n<p>Laravel adalah kerangka kerja (<a href=\"https://www.gamelab.id/news/1733-mengenal-apa-itu-framework-developer-wajib-tahu\" target=\"_blank\" rel=\"noopener\"><em>framework</em></a>) berbasis PHP yang&nbsp;<em>open-source</em>, memiliki banyak modul dasar dan berfungsi untuk mengoptimalkan pengembangan website.&nbsp;<em>Framework</em>&nbsp;ini memang dirancang untuk membantu pengembang membangun aplikasi web dengan cepat dan efisien.</p>\r\n<p>Laravel menyediakan berbagai alat dan fitur yang memudahkan pengembangan, termasuk manajemen rute, interaksi basis data, pengolahan form, keamanan, dan lain-lain. Penggunaannya juga sangat populer, termasuk di Indonesia.&nbsp;<em>Framework</em>&nbsp;ini berfokus pada bagian&nbsp;<em>end-user</em>. Developer kerap menggunakan Laravel untuk membangun proyek dari skala kecil sampai besar.</p>\r\n<p>Kehadiran Laravel telah membantu pengembangan website menjadi lebih elegan dan ekspresif. Dengan menggunakan Laravel,&nbsp;<a href=\"https://www.gamelab.id/news/2675-7-peran-penting-game-developer-di-era-digital-kreatif\" target=\"_blank\" rel=\"noopener\"><em>developer</em></a>&nbsp;dapat mengurangi waktu dan usaha yang diperlukan dalam mengembangkan aplikasi web yang kompleks dan berkualitas tinggi.</p>\r\n<p><a class=\"thumbnail fancybox\" href=\"https://www.gamelab.id/uploads/modules/12%20Fitur%20Laravel%2C%20Framework%20PHP%20untuk%20Membangun%20Website%20(1).jpg?1691487828469\"><img src=\"https://www.gamelab.id/uploads/modules/12%20Fitur%20Laravel%2C%20Framework%20PHP%20untuk%20Membangun%20Website%20(1).jpg?1691487828469\" alt=\"12 Fitur Laravel, Framework PHP untuk Membangun Website - GAMELAB.ID\" width=\"516\" height=\"271\"></a></p>\r\n<h2 id=\"h-1\">Fitur-Fitur Laravel</h2>\r\n<p><em>Framework</em>&nbsp;Laravel memiliki berbagai fitur yang kuat dan komprehensif yang membuatnya populer untuk mengembangkan aplikasi web. Berikut adalah beberapa fitur utama dari&nbsp;<em>framework</em>&nbsp;Laravel.</p>\r\n<h3 id=\"h-2\">1.&nbsp;<em>Routing</em></h3>\r\n<p>Laravel memiliki sistem<em>&nbsp;routing</em>&nbsp;yang kuat yang memungkinkan programer mendefinisikan rute URL dengan mudah. Kamu dapat menentukan rute untuk mengarahkan permintaan HTTP ke tindakan (<em>controller</em>) yang sesuai. Ini memisahkan&nbsp;<a href=\"https://www.gamelab.id/news/1181-mengenal-logika-dan-algoritma-pemrograman\" target=\"_blank\" rel=\"noopener\">logika</a>&nbsp;rute dari tindakan yang dilakukan, sehingga membuat kode lebih terstruktur dan mudah dipelihara.</p>\r\n<h3 id=\"h-3\">2.&nbsp;<em>Eloquent ORM</em></h3>\r\n<p><em>Eloquent</em>&nbsp;adalah sistem ORM (<em>Object-Relational Mapping</em>) yang terintegrasi dengan Laravel. Fitur ini memungkinkan programer untuk berinteraksi dengan basis data menggunakan&nbsp;<a href=\"https://www.gamelab.id/news/2275-tutorial-cara-export-objek-3d-dari-blender-versi-35-ke-format-fbx\" target=\"_blank\" rel=\"noopener\">objek</a>&nbsp;dan model.</p>\r\n<p><em>Eloquent</em>&nbsp;memudahkanmu melakukan operasi CRUD (<em>Create, Read, Update, Delete</em>) pada tabel basis data tanpa menulis kueri&nbsp;<a href=\"https://www.gamelab.id/news/2687-structured-query-language-sql-pengertian-jenis-jenis-dan-fungsinya\" target=\"_blank\" rel=\"noopener\">SQL</a>&nbsp;manual.&nbsp;<em>Eloquent</em>&nbsp;juga menyediakan fitur-fitur seperti relasi antar model, penyaringan (<em>filtering</em>), dan pengurutan data.</p>\r\n<h3 id=\"h-4\">3.&nbsp;<em>Blade Templating Engine</em></h3>\r\n<p>Laravel menggunakan Blade sebagai mesin templatingnya, yang memungkinkan programer untuk membuat tampilan HTML yang dinamis dengan mudah. Kamu bisa menggunakan sintaks&nbsp;<em>Blade</em>&nbsp;yang mudah dipahami untuk menghasilkan tampilan yang dinamis, serta memasukkan kondisi, perulangan, dan&nbsp;<a href=\"https://www.gamelab.id/news/1167-tutorial-color-grading-biar-konten-videomu-jadi-trending-ternyata-gampang-banget\" target=\"_blank\" rel=\"noopener\">konten</a>&nbsp;lainnya.</p>\r\n<h3 id=\"h-5\">4.&nbsp;<em>Middleware</em></h3>\r\n<p><em>Middleware</em>&nbsp;adalah lapisan perantara antara permintaan masuk dan tindakan yang dijalankan.&nbsp;<em>Middleware</em>&nbsp;dalam Laravel memungkinkan programer menjalankan kode sebelum atau sesudah tindakan, seperti otentikasi, validasi, atau manipulasi permintaan. Fitur ini mempermudah&nbsp;<a href=\"https://www.gamelab.id/news/1849-mau-berkarir-di-bidang-pengembangan-game-ini-posisi-karir-yang-bisa-kamu-pilih\" target=\"_blank\" rel=\"noopener\">pengembangan</a>&nbsp;berbagai aspek seperti keamanan dan pengolahan data sebelum tindakan dilakukan.</p>\r\n<h3 id=\"h-6\">5.&nbsp;<em>Authentication and Authorization</em></h3>\r\n<p>Laravel menyediakan sistem autentikasi bawaan yang mudah digunakan. Programer dapat mengonfigurasi autentikasi pengguna dengan hanya beberapa baris kode. Selain itu, Laravel juga mendukung otorisasi dengan cara yang terintegrasi dengan autentikasi, sehingga kamu bisa mengendalikan akses pengguna ke berbagai bagian<a href=\"https://www.gamelab.id/news/2660-ingin-jadi-komposer-ini-6-aplikasi-musik-digital-terbaik-2023\" target=\"_blank\" rel=\"noopener\">&nbsp;aplikasi</a>.</p>\r\n<h3 id=\"h-7\">6.&nbsp;<em>Artisan Command-Line Tool</em></h3>\r\n<p>Artisan adalah alat baris perintah yang kuat yang disertakan dengan Laravel. Dengan Artisan, kamu bisa melakukan berbagai tugas, seperti membuat model, kontroler, migrasi basis data, menjalankan pengujian, dan banyak lagi.</p>\r\n<h3 id=\"h-8\">7.&nbsp;<em>Migrations</em></h3>\r\n<p>Migrations dalam Laravel memungkinkan programer mengelola struktur basis data menggunakan kode. Kamu bisa membuat dan mengubah tabel serta kolom menggunakan<a href=\"https://www.gamelab.id/news/2558-tutorial-import-dan-export-file-di-coreldraw-lengkap-berbagai-format\" target=\"_blank\" rel=\"noopener\"><em>&nbsp;file</em></a>&nbsp;migrasi. Hal ini memungkinkan tim bekerja bersama dengan mudah dan menjaga konsistensi skema basis data dalam pengembangan berbagai lingkungan.</p>\r\n<h3 id=\"h-9\">8.&nbsp;<em>Validation</em></h3>\r\n<p>Laravel menyediakan sistem validasi yang kuat untuk memvalidasi data yang masuk. Aturan validasi untuk setiap input form dapat dilakukan dengan mudah.</p>\r\n<h3 id=\"h-10\">9.&nbsp;<em>Caching</em></h3>\r\n<p>Laravel memiliki sistem caching yang efisien untuk meningkatkan kinerja aplikasi. Hal ini memungkinkanmu menyimpan hasil query basis data atau hasil perhitungan ke dalam&nbsp;<em>cache</em>&nbsp;untuk menghindari pemrosesan berulang yang mahal secara komputasi.</p>\r\n<h3 id=\"h-11\">10.&nbsp;<em>E-mail Sending</em></h3>\r\n<p>Laravel menyediakan antarmuka yang mudah digunakan untuk mengirim&nbsp;<a href=\"https://www.gamelab.id/news/2343-cara-membuat-email-biasa-dan-email-lamaran-kerja-yang-benar-lengkap-dengan-contoh\" target=\"_blank\" rel=\"noopener\">email</a>. Kamu dapat mengirim email dengan berbagai&nbsp;<em>driver</em>&nbsp;seperti SMTP,&nbsp;<em>mailgun, sendmail</em>, dan lain-lain. Fitur ini sangat membantu dalam mengatur notifikasi dan komunikasi dengan pengguna.</p>\r\n<h3 id=\"h-12\">11.&nbsp;<em>Queues and Jobs</em></h3>\r\n<p>Fitur lain dari Laravel adalah queues dan jobs yang memungkinkan programer menjalankan tugas yang memerlukan waktu lama atau berat di latar belakang. Kamu bisa mengirim email, memproses&nbsp;<a href=\"https://www.gamelab.id/news/2319-12-jenis-layout-untuk-desain-grafis-dan-media-cetak-lengkap-dengan-gambar\" target=\"_blank\" rel=\"noopener\">gambar</a>, atau melakukan tugas-tugas lainnya secara asinkron.</p>\r\n<h3 id=\"h-13\">12.&nbsp;<em>Events and Listeners</em></h3>\r\n<p>Dengan fitur&nbsp;<em>events&nbsp;</em>dan<em>&nbsp;listeners</em>&nbsp;pada Laravel, kamu bisa menghubungkan berbagai bagian&nbsp;<a href=\"https://www.gamelab.id/news/2660-ingin-jadi-komposer-ini-6-aplikasi-musik-digital-terbaik-2023\" target=\"_blank\" rel=\"noopener\">aplikasi</a>&nbsp;yang memerlukan reaksi terhadap peristiwa tertentu. Sebagai contoh, kamu bisa membuat&nbsp;<em>listener</em>&nbsp;untuk merespon perubahan status pesanan dengan mengirim email konfirmasi.</p>\r\n<p><a class=\"thumbnail fancybox\" href=\"https://www.gamelab.id/uploads/modules/12%20Fitur%20Laravel%2C%20Framework%20PHP%20untuk%20Membangun%20Website%20(2).jpg?1691487798711\"><img src=\"https://www.gamelab.id/uploads/modules/12%20Fitur%20Laravel%2C%20Framework%20PHP%20untuk%20Membangun%20Website%20(2).jpg?1691487798711\" alt=\"12 Fitur Laravel, Framework PHP untuk Membangun Website - GAMELAB.ID\" width=\"753\" height=\"396\"></a></p>', '2023-08-11', 'Ratna Astuti Dewi', 'Programming', NULL, '2023-08-14 00:29:45'),
(5, '1691973184.jpg', 'Structured Query Language (SQL): Pengertian, Jenis-Jenis, dan Fungsinya', '<p><em>Yuk, berkenalan dengan Structured Query Language (SQL), bahasa kueri terstruktur yang punya peran penting dalam pengelolaan database. Artikel ini mengulas jenis-jenis SQL dan fungsi-fungsinya.</em></p>', '<p>Pernahkah kamu mendengar tentang&nbsp;<em>Structured Query Language</em>&nbsp;(SQL)? Istilah SQL mungkin sudah tak asing bagi kamu yang tertarik mempelajari&nbsp;<a href=\"https://www.gamelab.id/news/2677-bahasa-pemrograman-c-sejarah-fitur-kelebihan-dan-pengembangannya-dalam-industri\" target=\"_blank\" rel=\"noopener\">bahasa pemrograman</a>. SQL atau bahasa kueri terstruktur memiliki peran krusial dalam mengelola dan mengakses basis data relasional. Lalu, apa itu SQL dan fungsinya? Berikut penjelasannya.</p>\r\n<h2 id=\"h-0\">Apa Itu SQL</h2>\r\n<p><em>Structured Query Language</em>&nbsp;atau SQL adalah bahasa pemrograman yang digunakan untuk mengelola dan berinteraksi dengan basis data (<a href=\"https://www.gamelab.id/news/1287-apa-itu-database-komponen-jenis-dan-fungsinya\" target=\"_blank\" rel=\"noopener\"><em>database</em></a>) relasional. SQL sendiri dikembangkan pada awal tahun 1970 bulan Juni oleh Donald D. Chamberlin dan Raymond F. Boyce di IBM. Pada awalnya, SQL dikenal sebagai SEQUEL (<em>Structured English Query Language</em>). Namun, namanya sulit dieja sehingga penamaannya disingkat menjadi SQL.</p>\r\n<p>SQL menyediakan sejumlah perintah yang memungkinkan pengguna untuk melakukan berbagai operasi pada basis data, termasuk pengambilan, penyisipan, pembaruan, dan penghapusan data. Dalam lingkungan sistem manajemen basis data (DBMS), SQL adalah bahasa standar yang digunakan untuk berkomunikasi dengan basis data.</p>\r\n<h2 id=\"h-1\">Jenis-Jenis SQL</h2>\r\n<h3 id=\"h-2\">1.&nbsp;<em>Data Definition Language</em>&nbsp;(DDL)</h3>\r\n<p><em>Data Definition Language</em>&nbsp;(DDL) merupakan sub perintah&nbsp;<a href=\"https://www.gamelab.id/news/2640-15-bahasa-pemrograman-populer--pemula-wajib-tahu\" target=\"_blank\" rel=\"noopener\">bahasa</a>&nbsp;SQL yang digunakan untuk mendefinisikan struktur basis data atau kerangka&nbsp;<a href=\"https://www.gamelab.id/news/1287-apa-itu-database-komponen-jenis-dan-fungsinya\" target=\"_blank\" rel=\"noopener\"><em>database</em></a>. DDL memiliki 3 perintah penting yakni&nbsp;<em>create</em>&nbsp;yang berarti perintah membuat sejumlah kebutuhan seperti tabel, indeks, dan tampilan.</p>\r\n<p>Perintah selanjutnya yakni<em>&nbsp;alter</em>, yang merupakan perintah mengubah tabel yang telah dibuat. Lalu perintah lainnya adalah&nbsp;<em>drop</em>&nbsp;yang berarti perintah untuk menghapus&nbsp;<em>database</em>&nbsp;maupun tabel.</p>\r\n<h3 id=\"h-3\">2.&nbsp;<em>Data Manipulation Language</em>&nbsp;(DML)</h3>\r\n<p><em>Data Manipulation Language</em>&nbsp;(DML) merupakan sub perintah bahasa SQL yang dapat memanipulasi data dalam tabel yang sudah dibuat. DML memiliki empat perintah penting, yakni&nbsp;<em>insert</em>&nbsp;adalah perintah untuk memasukkan atau menyisipkan data baru dalam tabel.</p>\r\n<p>Perintah kedua dalam DML adalah&nbsp;<em>select</em>, yakni perintah yang bisa digunakan untuk mengambil dan menampilkan&nbsp;<a href=\"https://www.gamelab.id/news/2505-data-science-dan-data-scientist-pengertian-tanggung-jawab-skills-dan-kisaran-gajinya\" target=\"_blank\" rel=\"noopener\">data</a> dari satu atau lebih tabel. Kemudian perintah update, yakni untuk memperbarui atau mengubah data yang sudah ada dalam tabel. Sementara perintah terakhir adalah delete, yaitu perintah menghapus data dari tabel.</p>\r\n<h3 id=\"h-4\">3.&nbsp;<em>Data Control Language</em>&nbsp;(DCL)</h3>\r\n<p>Jenis SQL yang terakhir adalah<em>&nbsp;Data Control Language</em>&nbsp;(DCL), yakni sub bahasa SQL yang berfungsi mengatur hak akses dan izin pengguna&nbsp;<em>database</em>. Dengan kata lain, jenis ini memungkinkan melakukan pengontrolan data dan&nbsp;<em>server database</em>. DCL berisi perintah-perintah untuk memberikan atau mencabut izin akses pada tabel atau&nbsp;<a href=\"https://www.gamelab.id/news/2275-tutorial-cara-export-objek-3d-dari-blender-versi-35-ke-format-fbx\" target=\"_blank\" rel=\"noopener\">objek</a>&nbsp;basis data lainnya.</p>\r\n<p>SQL jenis ini memiliki dua perintah penting, yakni&nbsp;<em>grant</em>&nbsp;yang berarti memberi hak atau izin akses pada tabel/objek&nbsp;<em>database</em>&nbsp;lainnya dari admin kepada pengguna. Perintah kedua yakni&nbsp;<em>revoke</em>, adalah perintah mencabut hak/izin akses yang sudah diberikan kepada pengguna. Kedua perintah ini memiliki fungsi yang bertolak belakang.</p>\r\n<h2 id=\"h-5\">Fungsi SQL</h2>\r\n<p>Penjelasan mengenai jenis-jenis SQL di atas telah memberikan gambaran mengenai fungsi-fungsi SQL. SQL pada dasarnya memiliki banyak fungsi, namun secara umum, SQL difungsikan sebagai bahasa pengelolaan&nbsp;<em>database</em>&nbsp;yang dapat mengelola data-data pada database yang dipakai oleh aplikasi. SQL juga membantumu mengakses database dan melakukan&nbsp;<a href=\"https://www.gamelab.id/news/828-membuat-website-dark-mode-sederhana-menggunakan-boostrap-dan-jquery\" target=\"_blank\" rel=\"noopener\"><em>query</em></a>&nbsp;yang dibutuhkan.</p>\r\n<p>Jika dijabarkan, maka beberapa fungsi SQL yaitu:</p>\r\n<ul>\r\n<li><strong>Mengambil data (<em>select</em>)</strong>: SQL dapat mengambil data dari tabel atau basis data. Perintah&nbsp;<em>select</em>&nbsp;bisa digunakan untuk menentukan kolom-kolom mana yang ingin diambil dari tabel. Kamu juga bisa menambahkan kriteria-kriteria tertentu untuk memfilter data yang diambil.</li>\r\n<li><strong>Memasukkan data&nbsp;<em>(insert</em>)</strong>: Perintah<em>&nbsp;insert</em>&nbsp;dipakai untuk menyisipkan&nbsp;<a href=\"https://www.gamelab.id/news/1792-tutorial-menampilkan-data-api-menggunakan-flutter\" target=\"_blank\" rel=\"noopener\">data</a>&nbsp;baru ke dalam tabel.</li>\r\n<li><strong>Mengubah data&nbsp;<em>(update)</em></strong>: Fungsinya yakni untuk memperbarui data yang sudah ada dalam tabel. Pengguna dapat mengubah nilai-nilai dalam satu atau beberapa kolom.</li>\r\n<li><strong>Menghapus data<em>&nbsp;(delete)</em></strong>: Pengguna dapat menghapus seluruh baris atau hanya baris tertentu pada tabel.</li>\r\n<li><strong>Membuat tabel&nbsp;<em>(create)</em></strong>: SQL digunakan untuk membuat tabel baru dalam basis data. Pengguna dapat menentukan nama kolom, tipe data, batasan, dan aturan lainnya yang berkaitan dengan tabel.</li>\r\n<li><strong>Menghapus tabel<em>&nbsp;(drop)</em>:</strong>&nbsp;Perintah ini digunakan untuk menghapus tabel beserta seluruh<a href=\"https://www.gamelab.id/news/1782-apa-itu-data-science\" target=\"_blank\" rel=\"noopener\">&nbsp;data</a>&nbsp;dan strukturnya dari basis data.</li>\r\n<li><strong>Mengelola Indeks&nbsp;<em>(create index, drop index)</em>:</strong>&nbsp;Indeks digunakan untuk meningkatkan kinerja kueri pada basis data. Fungsi&nbsp;<em>create index</em>&nbsp;yakni membuat indeks pada satu atau beberapa kolom dalam tabel, sementara&nbsp;<em>drop index</em>&nbsp;digunakan untuk menghapus indeks yang sudah ada.</li>\r\n<li><strong>Mengelola batasan&nbsp;<em>(constraints)</em>:</strong>&nbsp;Fungsi ini memungkinkan untuk menambahkan batasan pada data dalam tabel, seperti kunci utama (<em>primary key</em>), kunci asing (<em>foreign key</em>), dan batasan unik (<em>unique</em>).</li>\r\n<li><strong>Mengelola transaksi&nbsp;<em>(transactions)</em>:</strong>&nbsp;SQL mendukung pengelolaan transaksi yang memastikan integritas data dan konsistensi basis data. Kamu bisa menggunakan perintah&nbsp;<em>commit</em>&nbsp;untuk menyimpan perubahan, dan perintah&nbsp;<em>rollback</em>&nbsp;untuk membatalkan transaksi.</li>\r\n<li><strong>Menggabungkan tabel&nbsp;<em>(join)</em>:</strong>&nbsp;Fungsi ini memungkinkan kamu untuk menggabungkan data dari dua atau lebih tabel berdasarkan kolom yang memiliki nilai yang sama.</li>\r\n<li><strong>Mengelola hak akses&nbsp;<em>(grant, revoke)</em>:</strong>&nbsp;Dengan SQL, administrator basis data bisa mengelola hak akses pengguna terhadap tabel dan data. Disinggung dalam pemaparan sebelumnya,&nbsp;<em>grant</em>&nbsp;digunakan untuk memberikan hak akses, sementara&nbsp;<em>revoke</em>&nbsp;digunakan untuk mencabut hak akses.</li>\r\n<li><strong>Mengelola data NULL (<em>NULL Handling</em>):</strong>&nbsp;SQL memiliki fitur untuk mengelola nilai NULL dalam kolom. Kamu dapat mengizinkan atau mencegah nilai NULL, serta mencari data yang mengandung nilai NULL.</li>\r\n<li>Dll</li>\r\n</ul>', '2023-08-11', 'Ratna Astuti Dewi', 'Programming', NULL, '2023-08-14 00:33:04'),
(6, '1691973288.jpg', 'Penting! 8 Cara Meningkatkan Personal Branding', '<p><em>Cara meningkatkan personal branding. Personal branding merupakan hal yang sangat penting untuk diperhatikan karena berhubungan dengan bagaimana kamu ingin dikenal oleh orang lain.</em></p>', '<p><a href=\"https://www.gamelab.id/news/1158-apa-itu-personal-branding\" target=\"_blank\" rel=\"noopener\">Personal branding</a>&nbsp;merupakan persepsi masyarakat atau orang lain terhadap dirimu, seperti bagaimana kepribadianmu, apa yang bisa kamu tawarkan secara profesional, kemampuan apa yang kamu miliki, hingga bagaimana nilai-nilai dalam dirimu menciptakan persepsi positif di mata orang lain.</p>\r\n<p>Definisi tersebut telah menunjukkan bahwa personal branding merupakan aspek yang penting untuk diperhatikan. Terlebih, di era digital seperti saat ini membangun citra adalah hal yang dilakukan oleh semua orang.</p>\r\n<p>Membangun<em>&nbsp;personal branding</em>&nbsp;akan membantumu untuk membedakan dirimu saat terlibat dengan kompetisi, memperluas jaringan, hingga membuka peluang untuk&nbsp;<a href=\"https://www.gamelab.id/news/2628-apa-itu-karir-pengertian-perencanaan-dan-tahapan-perkembangannya\" target=\"_blank\" rel=\"noopener\">karir</a>&nbsp;maupun bisnis baru.</p>\r\n<p><em>Personal branding</em>&nbsp;bisa disebut sebagai upaya memasarkan alias mempromosikan diri, upaya untuk membentuk reputasi diri. Lalu, bagaimana cara membentuk&nbsp;<em>personal branding</em>. Simak ulasannya lebih lanjut dalam artikel di bawah ini.</p>\r\n<h2 id=\"h-0\">1. Tentukan Identitas dan Nilai Diri</h2>\r\n<p>Langkah pertama dalam meningkatkan<em>&nbsp;personal&nbsp;<a href=\"https://www.gamelab.id/news/1766-apa-itu-branding-berikut-definisi-dan-perbedaannya-dengan-marketing\" target=\"_blank\" rel=\"noopener\">branding</a></em>&nbsp;adalah menentukan identitas dan nilai-nilai diri. Coba lihat dirimu sendiri dan pertimbangkan hal apa yang membuat dirimu terlihat unik dibanding dengan orang lain.</p>\r\n<p>Pertimbangkan, apa yang bisa kamu tawarkan, dan bagaimana visi serta misi yang kamu punya dalam kehidupan. Identitas dan nilai-nilai yang kamu miliki akan menentukan bagaimana citramu dikenal di lingkungan bermasyarakat.</p>\r\n<h2 id=\"h-1\">2. Kembangkan&nbsp;<em>Niche</em></h2>\r\n<p>Kamu perlu menemukan bidang di mana kamu memiliki keahlian dan minat khusus, lalu fokuskan personal<em>&nbsp;branding</em>mu di sekitar&nbsp;<em>niche</em>&nbsp;tersebut. Saat kamu memiliki keahlian pada suatu&nbsp;<a href=\"https://www.gamelab.id/news/2649-inilah-prospek-kerja-bidang-industri-kreatif-bagi-lulusan-smk\" target=\"_blank\" rel=\"noopener\">bidang</a>, orang akan cenderung lebih mengenalimu sebagai otoritas dan sumber yang kredibel di bidang itu. Memilih&nbsp;<em>niche</em>&nbsp;yang sesuai dengan passionmu akan membantu meningkatkan personal brandingmu.</p>\r\n<h2 id=\"h-2\">3. Berinvestasi dalam Pembelajaran dan Pengembangan Diri</h2>\r\n<p>Sebaik-baiknya investasi adalah ilmu. Maka teruslah berinvestasi dalam pembelajaran dan pengembangan diri. Kamu bisa mengikuti beragam kursus atau membaca buku yang sesuai dengan bidang yang kamu senangi.</p>\r\n<p>Kamu juga bisa mendengarkan&nbsp;<em>podcast</em>&nbsp;yang relevan dengan pengetahuan yang ingin kamu perluas, serta ikutlah dalam seminar atau&nbsp;<em>workshop</em>&nbsp;yang bisa meningkatkan pemahamanmu tentang&nbsp;<em>niche</em>&nbsp;yang sedang ingin kamu kembangkan. Semakin kamu paham tentang sebuah bidang, semakin orang akan mengenalmu sebagai&nbsp;<a href=\"https://www.gamelab.id/news/2655-penting-10-langkah-awal-menjadi-backend-developer-profesional\" target=\"_blank\" rel=\"noopener\">profesional</a> di&nbsp;</p>\r\n<p>bidang tersebut.</p>\r\n<p><a class=\"thumbnail fancybox\" href=\"https://www.gamelab.id/uploads/modules/Cara%20Meningkatkan%20Personal%20Branding%20(1).jpg?1691044166640\"><img src=\"https://www.gamelab.id/uploads/modules/Cara%20Meningkatkan%20Personal%20Branding%20(1).jpg?1691044166640\" alt=\"Cara Meningkatkan Personal Branding - GAMELAB.ID\" width=\"598\" height=\"314\"></a></p>\r\n<h2 id=\"h-3\">4. Ciptakan Kehadiran Online yang Kuat dan Memikat</h2>\r\n<p>Hidup di era dengan kemajuan&nbsp;<a href=\"https://www.gamelab.id/news/2392-mengenal-apa-itu-social-media-marketing-tujuan-manfaat-dan-strategi-yang-tepat\" target=\"_blank\" rel=\"noopener\">sosial media</a>&nbsp;yang pesat, kamu juga perlu menciptakan kehadiran online yang kuat dan menarik. Hal ini bisa dimulai dengan membangun profil&nbsp;<em>profesional</em>&nbsp;di&nbsp;<em>plaform online</em>, misalnya LinkedIn, Instagram, YouTube, blog, maupun&nbsp;<em>platform</em>&nbsp;lain.</p>\r\n<p>Cobalah untuk menciptakan konten-konten yang bisa mendukungmu agar dikenal sebagai sosok yang kamu inginkan. Misalnya, jika kamu ingin dikenal sebagai desainer grafis profesional, maka coba ciptakan konten-konten yang berkaitan dengan&nbsp;<em>niche</em>&nbsp;tersebut di sosial mediamu.</p>\r\n<p>Kamu bisa memposting kiat-kiat, tips, maupun informasi lainnya yang relevan dengan bidang&nbsp;<a href=\"https://www.gamelab.id/news/2664-mengenal-desain-grafis-dan-desain-multimedia-dalam-pemasaran-modern\" target=\"_blank\" rel=\"noopener\">desain grafis</a>, membagikan informasi tentang teknik-teknik&nbsp;<em>editing grafis</em>, dan sebagainya.</p>\r\n<p>Kamu juga bisa membagikan kisah sukses atau perkembangamu menjadi desainer grafis di postingan LinkedIn. Hal-hal semacam itu akan membantumu memperkuat kehadiran online, sehingga kamu bisa mencapai audiens yang lebih luas untuk mengenalkan dirimu.</p>\r\n<h2 id=\"h-4\">5. Konsistensi dan Keaslian</h2>\r\n<p>Jangan lupa untuk menjaga konsistensi dan keaslian dalam pesan dan citra yang ingin kamu tampilkan. Pastikan citra yang kamu bangun telah mencerminkan nilai-nilai dan identitas yang kamu tetapkan. Tetaplah autentik dan jangan mencoba menjadi seseorang yang bukan kamu.</p>\r\n<p>Apabila kamu menggunakan&nbsp;<a href=\"https://www.gamelab.id/news/2416-perbedaan-desain-grafis-dan-desain-multimedia-apa-saja-ya\" target=\"_blank\" rel=\"noopener\">media</a>&nbsp;sosial, akan lebih baik jika kamu memakai nama yang sama untuk seluruh media sosialmu. Lalu, cari keunikan apa yang membedakanmu dari orang lain. Jika sudah menemukannya, maka kamu harus terus menjaga keunikan itu agar melekat di dirimu.</p>\r\n<h2 id=\"h-5\">6. Perluas Koneksi</h2>\r\n<p>Berusahalah untuk terus memperluas koneksi, terutama dengan orang-orang berpengaruh atau&nbsp;<a href=\"https://www.gamelab.id/news/2092-4-alasan-canva-bisa-membantu-desain-kamu-lebih-profesional\" target=\"_blank\" rel=\"noopener\">profesional</a>&nbsp;di bidangmu. Mmebangun hubungan yang baik dengan mereka akan membantumu mendapatkan rekomendasi dan meningkatkan visibilitas serta krediblitas personal&nbsp;<em>branding</em>-mu.</p>\r\n<h2 id=\"h-6\">7. Gabung Komunitas&nbsp;<em>Online</em>&nbsp;dan&nbsp;<em>Offline</em></h2>\r\n<p>Coba libatkan dirimu dalam komunitas yang relevan dengan&nbsp;<em>niche</em>&nbsp;yang kamu fokuskan. Kamu bisa mengikuti komunitas&nbsp;<em>online</em>&nbsp;maupun&nbsp;<em>offline</em>&nbsp;dan bergabung dalam diskusi, grup, atau acara yang berkaitan dengan bidang keahlianmu. Selain meningkatkan keberadaanmu di bidang itu, hal ini juga akan membantumu membangun<a href=\"https://www.gamelab.id/news/2346-8-profesi-jurusan-teknik-komputer-dan-jaringan-tkj-bergaji-besar\" target=\"_blank\" rel=\"noopener\">&nbsp;jaringan</a>&nbsp;yang semakin luas.</p>\r\n<h2 id=\"h-7\">8. Bangun Portofolio</h2>\r\n<p>Saat mencoba membangun personal branding, kamu tidak bisa melupakan portofolio. Ciptakan&nbsp;<a href=\"https://www.gamelab.id/news/1838-5-website-gratis-untuk-memamerkan-portofolio-desain-grafis\" target=\"_blank\" rel=\"noopener\">portofolio</a>&nbsp;yang tak cuma cantik tapi juga memiliki nilai. Pelatihan-pelatihan yang sebelumnya kamu ikuti bisa menunjang portofoliomu menjadi lebih menarik.</p>\r\n<p>Terlebih jika dalam pelatihan itu kamu menciptakan sebuah proyek yang mendukung niche yang ingin kamu kembangkan. Apabila memiliki pengalaman kerja atau magang di bidang tersebut, kamu juga bisa menyertakannya di portofolio.</p>\r\n<p><a class=\"thumbnail fancybox\" href=\"https://www.gamelab.id/uploads/modules/Cara%20Meningkatkan%20Personal%20Branding%20(2).jpg?1691044131379\"><img src=\"https://www.gamelab.id/uploads/modules/Cara%20Meningkatkan%20Personal%20Branding%20(2).jpg?1691044131379\" alt=\"Cara Meningkatkan Personal Branding - GAMELAB.ID\" width=\"617\" height=\"324\"></a></p>', '2023-08-12', 'Ayu Inten Nurillah', 'Umum', NULL, '2023-08-14 00:34:48'),
(7, '1691973375.jpg', '7 Alasan Mengapa Web Developer Jadi Profesi yang Sangat Menjanjikan, Sudah Tahu?', '<p><em>Tertarik menjadi seorang web developer tapi masih ragu untuk memilihnya sebagai pilihan karier? Yuk simak 7 alasan kenapa web developer bisa jadi profesi yang sangat menjanjikan!</em></p>', '<p>Saat ini,&nbsp;<a href=\"https://www.gamelab.id/news/1417-terbilang-menjanjikan-berikut-prospek-kerja-web-developer\" target=\"_blank\" rel=\"noopener\">web developer</a>&nbsp;adalah pekerjaan yang diimpikan banyak orang mengingat peluang karier dan gaji yang menjanjikan. &nbsp;Dua faktor tersebut menjadi alasan mengapa karier sebagai web developer dipilih oleh banyak orang.</p>\r\n<p>Untuk menjadi seorang web developer, tentu memerlukan skill khusus, terutama dalam hal pemrograman. Masih kurang yakin atau bimbang untuk memilih web developer sebagai kariermu? Yuk simak 7 alasan mengapa profesi web developer sangat menjanjikan dan patut kamu pertimbangkan.</p>\r\n<h2 id=\"h-0\">Alasan Web Developer Adalah Profesi yang Sangat Menjanjikan</h2>\r\n<p><a class=\"thumbnail fancybox\" href=\"https://www.gamelab.id/uploads/modules/pexels-christina-morillo-1181675.jpg?1654231133560\"><img src=\"https://www.gamelab.id/uploads/modules/pexels-christina-morillo-1181675.jpg?1654231133560\" alt=\"\" width=\"363\" height=\"242\"></a></p>\r\n<p>Berikut beberapa alasan mengapa web developer menjadi profesi yang sangat menjanjikan.</p>\r\n<h3 id=\"h-1\">Dibutuhkan oleh Banyak Perusahaan</h3>\r\n<p>Banyak perusahaan yang membutuhkan web developer untuk bekerja di tempat mereka. Mulai dari start up hingga perusahaan besar yang sudah ada selama puluhan tahun, mereka membutuhkan web developer untuk berbagai ide dan inovasi baru agar perusahaan tetap maju dan relevan dengan perkembangan zaman.</p>\r\n<h3 id=\"h-2\">Berkontribusi Secara Langsung di Dunia Digital</h3>\r\n<p>Dengan menjadi seorang web developer, maka kamu dapat berkontribusi secara langsung di dunia digital. Dengan mengembangkan web, kamu menghasilkan sebuah karya yang dapat dilihat, dipakai, dan bermanfaat untuk semua orang.</p>\r\n<h3 id=\"h-3\">Sulit Digantikan oleh Robot</h3>\r\n<p>Seiring perkembangan zaman, tidak menutup kemungkinan banyak pekerjaan yang tergantikan oleh robot. Misal seperti operator telepon, resepsionis, tukang surat, dan lain sebagainya. Namun, profesi web developer sangat sulit untuk digantikan oleh robot.</p>\r\n<h3 id=\"h-4\">Gaji yang Besar</h3>\r\n<p>Salah satu alasan utama mengapa orang memilih profesi web developer adalah gajinya yang tinggi. Mungkin kamu bertanya-tanya, berapa sih gaji seorang web developer? Sebetulnya, gaji yang diperoleh tergantung pada kota atau lokasi bekerja, posisi yang dijabat, dan perusahaan masing-masing. Namun, rata-rata gaji seorang web developer di Indonesia berkisar mulai dari 4 juta rupiah hingga 12 juta rupiah per bulan.</p>\r\n<h3 id=\"h-5\">Bisa Membuat Website dan Aplikasi Sendiri</h3>\r\n<p>Dengan skill web development yang kamu miliki, kamu bisa membuat website atau aplikasi sendiri. Di website buatanmu sendiri, kamu dapat memamerkan portofolio, berbagi pengalaman dan hobi, atau bahkan menghasilkan uang.</p>\r\n<p>Tidak hanya itu, jika kamu punya skill web development dan memiliki bisnis untuk dikembangkan, kamu dapat membuat website-mu sendiri. Tentu nantinya akan bermanfaat untuk keperluan bisnismu. Misal, untuk beriklan.</p>\r\n<h3 id=\"h-6\">Bisa Bekerja Jarak Jauh</h3>\r\n<p>Salah satu keuntungan sebagai web developer adalah kamu mempunyai banyak kesempatan untuk bekerja jarak jauh. Asal kamu berada di lokasi dengan koneksi internet yang memadai dan skill yang mumpuni, kamu bisa bekerja dari mana saja, tak terkecuali bekerja dari rumah.</p>\r\n<p>&nbsp;Berbekal kemampuan web development yang kamu miliki, tidak menutup kemungkinan kamu dapat bekerja di perusahaan-perusahaan luar negeri yang membutuhkan web developer. Kesempatan ini juga bisa kamu dapatkan ketika kamu bekerja perusahaan di dalam negeri, tetapi perusahaan tersebut mempunyai cabang di luar negeri.</p>\r\n<h3 id=\"h-7\">Bidang IT Akan Terus Berkembang</h3>\r\n<p>Alasan lain mengapa profesi web developer sangat menjanjikan adalah karena bidang IT akan terus mengalami perkembangan. Selain itu, pekerjaan di bidang pengembangan web tidak berhenti begitu saja saat web selesai dibuat. Kamu masih mempunyai tugas untuk memperbarui sistem supaya sesuai dengan perkembangan IT.</p>\r\n<p>Itu dia 7 alasan mengapa profesi web developer sangat menjanjikan untuk ditekuni. Apakah kamu tertarik untuk berkarir sebagai&nbsp;<a href=\"https://www.gamelab.id/news/1020-permudah-pekerjaan-web-developer-dengan-10-ekstensi-google-chrome-ini\" target=\"_blank\" rel=\"noopener\">web developer</a>?</p>\r\n<p>Nah, untukmu yang ingin menjadi web developer, khususnya Full Stack Web Developer, kamu bisa mengikuti Bootcamp Intensif GRATIS di Gamelab Indonesia.</p>\r\n<p>Nah, salah satu program bootcamp rekomended yang perlu kamu ikuti adalah program Bootcamp Intensif Full Stack Web Developer dari Gamelab Indonesia. Melalui program ini, kamu bisa meraih impianmu untuk mendapatkan pekerjaan sebagai Full Stack Web Developer.</p>', '2023-08-14', 'Sandika Galih', 'Programming', NULL, '2023-08-14 00:36:15');
INSERT INTO `tb_news` (`id`, `gambar`, `judul`, `ringkasan`, `deskripsi`, `tgl_post`, `penulis`, `kategori`, `created_at`, `updated_at`) VALUES
(8, '1691973466.jpg', 'Apa Website Pertama di Dunia? Ternyata Begini Sejarahnya!', '<p><em>Ternyata awal mula adanya website adalah karena kebutuhan dari penemunya untuk mengakses informasi dari berbagai komputer. Dari lahirnya website pertama, lahirlah Yahoo, Amazon, Google, Facebook dan lainnya.</em></p>', '<p>Website adalah kumpulan halaman digital yang berisi informasi tertentu dan dapat diakses dengan memanfaatkan jaringan internet. Hingga saat ini, website yang ada di dunia berjumlah sekitar 1,98 miliar (per September 2022). Tapi, apakah kamu tahu website pertama di dunia itu seperti apa?</p>\r\n<h2 id=\"h-0\">Sejarah Website di Dunia</h2>\r\n<p><a href=\"https://www.gamelab.id/class/5-membuat-website-menggunakan-html-dan-css?utm_source=gamelab+blog&amp;utm_medium=social&amp;utm_campaign=n+membuat+website+menggunakan+html+dan+css\" target=\"_blank\" rel=\"noopener\">Website</a>&nbsp;adalah sebuah penemuan luar biasa di era digital. Dengan adanya website orang di seluruh dunia dapat berbagi dan mengakses informasi tanpa ada batasan.&nbsp;</p>\r\n<p>Nah, kumpulan halaman di dalam website sendiri berada di domain atau subdomain yang terdapat di dalam platform bernama World Wide Web atau yang dikenal dengan www.</p>\r\n<h3 id=\"h-1\">Tahap Awal Munculnya Website Pertama</h3>\r\n<p>Sejarah mencatat bahwa penemu website adalah Tim Berners-Lee bersama dengan rekannya yang ada di CERN. CERN atau Conseil Europ&eacute;en pour la Recherche Nucl&eacute;aire merupakan sebuah organisasi penelitian tentang nuklir di Eropa.&nbsp;</p>\r\n<p>Tahun 1980-an, Tim Berners-Lee yang bekerja di CERN mengalami kesulitan untuk melacak setiap proyek dan sistem komputer yang berjumlah ribuan dari para peneliti. Dari situ, dia mulai mempelajari bermacam-macam program dari setiap komputer.</p>\r\n<p>Kemudian di bulan Maret 1989, Tim Berners-Lee mengajukan sebuah proposal yang ditujukan pada manajernya di CERN. Proposal tersebut berisi tentang pembuatan sistem manajemen informasi dengan menggunakan hypertext.</p>\r\n<p>Adapun tujuannya adalah untuk memberikan kemudahan penautan dokumen walaupun menggunakan komputer yang berbeda-beda. Artinya, setiap tautan tersebut dapat diakses oleh berbagai komputer berbeda.</p>\r\n<p>Hanya saja, sistem yang dibuat tersebut harus terhubung ke jaringan internet dengan label &lsquo;Vague But Exciting&rsquo; yang berarti samar tapi menarik. Tapi, rencana Berners-Lee tidak berjalan mulus, karena proposal tersebut ditolak oleh manajernya.</p>\r\n<p>Berners-Lee tidak menyerah. Dia kemudian bekerja sama dengan seorang insinyur dari Belgia yang juga rekan kerjanya di CERN, yakni Robert Cailliau. Akhirnya, proposal tersebut diterima pada akhir tahun 1990.</p>\r\n<p>Awalnya proyek Berners terbatas pada manajemen informasi tapi kemudian dia mengembangkannya dengan membuat Jaringan Informasi dan Tambang Informasi. Inilah yang kemudian saat ini lebih dikenal dengan istilah World Wide Web (www).</p>\r\n<h3 id=\"h-2\">Tahap Pengerjaan Proyek</h3>\r\n<p>Setelah proposal diterima di akhir tahun 1990, Berners-Lee dan rekannya mulai mencari tahu banyak hal dengan menggunakan komputer buatan Steve Jobs, yakni NeXT. Hasilnya, dia dan rekannya berhasil membentuk fondasi web.</p>\r\n<p>Bukan hanya fondasi web, pria yang lahir di tahun 1955 itu juga berhasil membuat&nbsp;<a href=\"https://www.gamelab.id/class/5-membuat-website-menggunakan-html-dan-css?utm_source=gamelab+blog&amp;utm_medium=social&amp;utm_campaign=n+membuat+website+menggunakan+html+dan+css\" target=\"_blank\" rel=\"noopener\">Hypertext Markup Language (HTML)</a>&nbsp;yang berguna untuk membuat halaman web. Bahkan Berners-Lee juga membuat Hypertext Transfer Protocol (HTTP).</p>\r\n<p>HTTP adalah seperangkat aturan yang berguna untuk mentransfer data melalui web. Berners-Lee juga berhasil membuat Uniform Resource Locators (URL) atau alamat website. Alamat ini fungsinya adalah untuk menemukan halaman atau dokumen web.</p>\r\n<p>Penemuan Berners-Lee ini juga termasuk merancang browser dasar dan perangkat lunak server web. Kemudian tercatat pada tanggal 6 Agustus 1991, Tim Berners-Lee meluncurkan situs web pertama di dunia.</p>\r\n<p>Situs ini memiliki informasi seputar panduan online pertama untuk membuat, menjelaskan dan cara menggunakan website. Adapun alamat situs pertama itu adalah http://info.cern.ch/hypertext/WWW/TheProject.html. Ini semua tentu sangat penting bagi perkembangan website saat ini.&nbsp;</p>\r\n<h3 id=\"h-3\">Konflik Tim Berners-Lee dan CERN</h3>\r\n<p>Tim Berners-Lee berhasil membuat website termasuk seperangkat sistem di dalamnya. Inilah yang membuat CERN berambisi untuk mematenkan teknologi web-nya. Tapi sepertinya Berners-Lee tidak tertarik bahkan menentang hal tersebut.</p>\r\n<p>Dia memiliki keinginan agar website dapat bermanfaat dan digunakan oleh siapapun. Sehingga akan berkembang dengan cepat. Beruntungnya, keinginannya akhirnya terkabul. Sehingga website saat ini pun dapat digunakan dan diakses oleh siapa saja.</p>\r\n<p>Tahun 1993, tim dari Pusat Nasional untuk Aplikasi Superkomputer Universitas Illinois berhasil merilis browser pertama di dunia. Browser tersebut bernama Mosaic. Mosaic dapat digunakan oleh masyarakat secara umum.</p>\r\n<p>Penemuan ini akhirnya melahirkan berbagai perusahaan raksasa di dunia seperti Yahoo pada tahun 1994, Amazon di tahun 1995,&nbsp;<a href=\"https://www.gamelab.id/class/208-menguasai-google-docs-dan-sheets-untuk-menjadi-tenaga-perkantoran-umum?utm_source=gamelab+blog&amp;utm_medium=social&amp;utm_campaign=n+menguasai+google+docs+dan+sheets+untuk+menjadi+tenaga+perkantoran+umum\" target=\"_blank\" rel=\"noopener\">Google</a> di tahun 1998 hingga Facebook di tahun 2004.</p>\r\n<h3 id=\"h-4\">Akhir Karier Tim Berners-Lee di CERN</h3>\r\n<p>Tim Berners-Lee resmi keluar dari CERN pada tahun 1994. Dia lebih memilih Massachusetts Institute of Technology dan mulai mendirikan sebuah organisasi bernama World Wide Web Consortium (W3C).</p>\r\n<p>World Wide Web Consortium (W3C) adalah organisasi yang memelihara standar untuk web. Sehingga standar tersebut dapat terjaga dengan baik.</p>\r\n<p>Dengan begitu banyak karya, Tim Berners-Lee berhasil mendapatkan berbagai penghargaan. Misalnya seperti masuk kategori 100 Orang Paling Penting di Abad 20 versi Majalah Time.</p>\r\n<p>Tahun 2004, dia juga mendapatkan anugerah gelar kebangsawanan yang diberikan oleh Ratu Elizabeth II. Tentu saja, selain itu masih banyak penghargaan lainnya.</p>\r\n<p>Tim Berners-Lee, pada tahun 2009 mulai membentuk World Wide Web Foundation. Tujuannya adalah untuk memastikan website bermanfaat bagi seluruh manusia. Tujuan organisasi ini pun tercapai dengan lahirnya miliaran website bermanfaat saat ini.</p>', '2023-08-14', 'Ayu Inten Nurillah', 'Teknologi', NULL, '2023-08-14 00:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ayu Inten Nurillah', 'user1@gmail.com', NULL, '$2y$10$nJ2hPfuiZyfi0TaUtLxoiu.tfLuItZiZuK2YRPTmC3IdABxJchIQy', NULL, '2023-08-11 16:03:50', '2023-08-11 16:03:50'),
(2, 'Ratna Astuti Dewi', 'user2@gmail.com', NULL, '$2y$10$NV7ie0Q2/mebubOS7Ng1veBOwKUyreoX4d3PPaD7S3QH.Z0adG11m', NULL, '2023-08-11 16:23:46', '2023-08-11 16:23:46'),
(3, 'Sandika Galih', 'user3@gmail.com', NULL, '$2y$10$T/8AHhJH/C8bggvKFngR8eMb.b6BEDu/cOL0omF9RXsh1WfOfYBb.', NULL, '2023-08-13 22:55:04', '2023-08-13 22:55:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
