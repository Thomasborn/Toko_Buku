-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Apr 2022 pada 04.03
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobuku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `release_year` int(4) NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` decimal(4,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `book_category_id` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `book`
--

INSERT INTO `book` (`book_id`, `title`, `slug`, `release_year`, `author`, `price`, `discount`, `stock`, `cover`, `book_category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Wajah Baru89saz', 'wajah-baru89saz', 2022, 'Sonan', 40000, '0.99', 44, 'default.jpg', 1, '2022-04-14 10:30:24', '2022-04-20 10:38:44', '2022-04-20 10:38:44'),
(2, 'Thomas Edwin Suryo Prayogo', 'thomas-edwin-suryo-prayogo', 2001, 'Thomas', 107001, '0.70', 1, '1650465016_ad97c9d6f3f10e7a97b6.png', 1, '2022-04-14 10:32:21', '2022-04-20 09:30:16', '0000-00-00 00:00:00'),
(3, 'Wajah Baru8', 'wajah-baru8', 20211, 'Sonan', 40000, '0.99', 44, 'default.jpg', 1, '2022-04-14 10:32:52', '2022-04-14 10:38:10', '2022-04-14 10:38:10'),
(4, 'Wajah Baru88', 'wajah-baru88', 20011, 'Sonanss', 40000, '0.99', 44, '', 1, '2022-04-14 10:33:54', '2022-04-20 10:41:40', '2022-04-20 10:41:40'),
(5, 'Wajah Baru', 'wajah-baru', 2021, 'Sonan', 40000, '0.99', 4, '1650473965_b4d2731bc639eec18d01.jpg', 2, '2022-04-14 10:34:36', '2022-04-20 11:59:37', '0000-00-00 00:00:00'),
(6, 'Wajah Baru89sa', 'wajah-baru89sa', 2021, 'Sonans', 40000, '0.99', 44, '', 1, '2022-04-20 09:48:43', '2022-04-20 10:41:47', '2022-04-20 10:41:47'),
(7, 'Elon Musk', 'elon-musk', 20211, 'Sonan', 40000, '0.99', 44, '1650475012_b59a16fa98719820cd46.jpg', 1, '2022-04-20 10:10:13', '2022-04-20 12:16:52', '0000-00-00 00:00:00'),
(8, 'Wajah Baru89', 'wajah-baru89', 20211, 'Sonan', 40000, '0.99', 44, '1650473790_fdf4ad3f359600a5f2da.jpg', 1, '2022-04-20 11:00:40', '2022-04-20 12:33:24', '2022-04-20 12:33:24'),
(9, 'Habit', 'habit', 2021, 'James Clear', 40000, '0.99', 44, '1650476152_bcb21f2a773d1f382a37.jpg', 1, '2022-04-20 12:35:52', '2022-04-20 12:35:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_category`
--

CREATE TABLE `book_category` (
  `book_category_id` int(5) NOT NULL,
  `name_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `book_category`
--

INSERT INTO `book_category` (`book_category_id`, `name_category`) VALUES
(1, 'Buku Pelajaran'),
(2, 'Novel'),
(3, 'Komik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `no_customer` varchar(30) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `no_customer`, `gender`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Ki Anom', '1', 'L', 'Jalan janti 65', 'example@mail.com', '08523654896', '2022-04-02 00:41:25', '2022-04-02 00:41:25'),
(2, 'Dharma', '3', 'L', 'Jalan janti 65', 'example@mail.com', '08523654896', '2022-04-02 00:47:24', '2022-04-02 00:47:24'),
(3, 'Bekti', '4', 'L', 'Jalan janti 65', 'example@mail.com', '08523654896', '2022-04-02 00:47:24', '2022-04-02 00:47:24'),
(4, 'Violet Riyanti', '1809814507213673', 'L', 'Jln. Gremet No. 612, Tangerang 68974, Kalteng', 'tprasasta@gmail.co.id', '(+62) 211 3875 1993', '1974-12-04 08:25:14', '1984-08-25 13:00:52'),
(5, 'Darmanto Gandi Gunawan', '5307256801953923', 'L', 'Jln. Abang No. 877, Surakarta 96636, Sulut', 'laila.narpati@pertiwi.sch.id', '(+62) 819 3108 774', '1985-07-14 19:48:38', '1993-03-29 11:05:54'),
(6, 'Mursita Budiyanto', '1572662404117344', 'L', 'Dk. Lumban Tobing No. 454, Tegal 48166, DKI', 'pnajmudin@yahoo.com', '0977 5776 9361', '1981-08-21 12:44:17', '1999-11-06 18:10:26'),
(7, 'Bagiya Najmudin', '7203420605938094', 'L', 'Jr. Panjaitan No. 875, Palangka Raya 76220, Kaltara', 'nprasetya@sirait.web.id', '0483 4397 3187', '2007-05-05 22:52:08', '2006-12-07 02:22:50'),
(8, 'Eka Sarah Utami', '3315031208183969', 'L', 'Kpg. Flora No. 820, Kotamobagu 80143, Sulsel', 'zulfa59@gmail.com', '(+62) 748 5617 274', '2017-01-24 12:18:21', '1992-07-14 15:14:14'),
(9, 'Devi Rahmawati', '1173336106074185', 'L', 'Gg. Gatot Subroto No. 143, Yogyakarta 33542, Sulbar', 'karna.haryanto@lazuardi.web.id', '0210 8795 4866', '1974-08-09 14:11:37', '1997-02-28 17:31:44'),
(10, 'Paris Aurora Suryatmi', '3173701501014683', 'L', 'Jr. Dewi Sartika No. 874, Palangka Raya 32879, NTB', 'adriansyah.manah@mandala.com', '(+62) 22 6579 030', '2008-11-18 23:31:14', '1999-05-29 10:17:59'),
(11, 'Galih Rajata', '6301111112186303', 'L', 'Jr. Lumban Tobing No. 177, Administrasi Jakarta Selatan 58449, Bengkulu', 'hardiansyah.banawa@ardianto.sch.id', '0383 0456 655', '2021-01-19 01:50:31', '2017-07-10 23:58:25'),
(12, 'Ida Mardhiyah', '6201096010028763', 'L', 'Jln. Elang No. 754, Bau-Bau 31491, Papua', 'jelita29@laksita.or.id', '(+62) 804 8939 449', '2019-06-23 07:19:08', '1976-05-06 11:24:24'),
(13, 'Anastasia Ophelia Usada S.Pd', '1204325503054659', 'L', 'Dk. Bagonwoto  No. 248, Palopo 60310, Sumut', 'ulva.waluyo@yahoo.co.id', '(+62) 564 7838 2817', '1993-01-13 22:30:43', '1985-06-20 06:24:15'),
(14, 'Zelaya Andriani', '3510971810937378', 'L', 'Ds. B.Agam Dlm No. 643, Kupang 96641, Kaltara', 'gilda.sudiati@winarno.ac.id', '(+62) 545 8178 432', '1973-12-18 06:53:53', '1992-01-30 13:46:08'),
(15, 'Asman Manullang', '3576222401146434', 'L', 'Gg. Cikutra Timur No. 721, Gorontalo 98767, Kalbar', 'nurdiyanti.balijan@gmail.com', '(+62) 646 8136 419', '1979-11-01 08:26:05', '1995-03-19 10:33:34'),
(16, 'Limar Tarihoran', '1608496707063059', 'L', 'Jln. Flora No. 810, Jambi 17557, Malut', 'hasanah.gasti@gmail.com', '0279 0787 711', '2006-06-02 18:54:29', '1998-09-14 05:44:45'),
(17, 'Zelaya Widiastuti', '6209150508131668', 'L', 'Ki. Baung No. 379, Banjarbaru 37404, Jabar', 'novi.thamrin@yahoo.com', '(+62) 311 9426 3303', '2014-09-16 23:23:18', '2004-06-26 13:27:59'),
(18, 'Ibrahim Jarwa Hutasoit', '8208634709080878', 'L', 'Jln. Asia Afrika No. 209, Dumai 22015, Kaltara', 'violet14@mardhiyah.com', '(+62) 890 582 865', '2011-12-12 19:08:13', '2004-08-25 22:54:49'),
(19, 'Halima Citra Wijayanti S.Farm', '1312002009150466', 'L', 'Jr. Baiduri No. 509, Binjai 31942, Sumsel', 'kariman.putra@yahoo.co.id', '028 7561 6533', '1979-04-29 22:17:36', '2016-02-26 06:06:36'),
(20, 'Diah Widiastuti', '6107344704986957', 'L', 'Jln. Yap Tjwan Bing No. 552, Banda Aceh 41598, Babel', 'kezia44@susanti.tv', '0600 6352 802', '1992-07-18 16:03:22', '1988-03-06 00:03:04'),
(21, 'Patricia Lailasari', '7503330812041161', 'L', 'Dk. Cihampelas No. 533, Bandung 29448, Kalteng', 'caturangga.maryati@yahoo.com', '(+62) 501 0876 876', '2008-02-18 17:26:01', '1997-01-20 12:18:35'),
(22, 'Syahrini Elvina Yulianti', '5315315111023996', 'L', 'Ki. Bara No. 213, Palangka Raya 46991, Papua', 'kuswoyo.rini@gmail.com', '(+62) 883 993 728', '1972-02-10 02:23:40', '2016-08-17 07:33:36'),
(23, 'Juli Maryati', '3503015302072370', 'L', 'Gg. Basudewo No. 45, Gunungsitoli 22364, Kaltara', 'kasiyah93@purnawati.com', '025 0414 821', '2007-09-14 16:55:16', '1971-03-02 14:36:36'),
(24, 'Jaeman Darijan Napitupulu', '7207765308008837', 'L', 'Jr. Qrisdoren No. 415, Pangkal Pinang 89362, Pabar', 'zwastuti@yahoo.com', '(+62) 297 8584 4224', '2010-06-05 01:53:57', '1971-08-15 05:40:30'),
(25, 'Elvin Hardiansyah', '3516164808088169', 'L', 'Kpg. Bakau No. 929, Sungai Penuh 22749, Sulsel', 'mandala.eluh@budiyanto.biz', '(+62) 436 4498 1872', '2008-08-05 16:43:38', '2012-04-06 17:47:54'),
(26, 'Emin Asmuni Marpaung S.E.I', '3673255101071439', 'L', 'Ds. Fajar No. 27, Banjarbaru 18301, Sultra', 'novi55@rahayu.web.id', '(+62) 864 265 766', '2012-01-27 10:58:02', '1996-12-08 15:59:22'),
(27, 'Respati Firmansyah', '9111432603937910', 'L', 'Psr. Kali No. 358, Surabaya 94636, Sumbar', 'hasim44@gmail.com', '(+62) 22 9135 804', '2007-01-21 23:29:33', '1989-12-28 10:45:23'),
(28, 'Nasrullah Irawan', '6108832008984940', 'L', 'Psr. Bara No. 447, Malang 65966, Jateng', 'utami.gabriella@palastri.info', '(+62) 885 270 066', '1994-03-06 15:32:05', '1974-07-09 17:00:47'),
(29, 'Unjani Pudjiastuti', '7102364510990989', 'L', 'Jr. Acordion No. 71, Padangpanjang 91490, DKI', 'prastuti.kiandra@ardianto.asia', '020 7409 1926', '1982-05-08 15:43:06', '2012-07-17 03:14:15'),
(30, 'Gilang Maras Ramadan', '6110035603027748', 'L', 'Ds. Reksoninten No. 619, Pasuruan 42158, Aceh', 'nainggolan.ganep@gmail.com', '(+62) 306 6795 507', '1971-03-01 22:36:13', '1983-03-06 09:50:05'),
(31, 'Rizki Mujur Sitorus S.Pd', '9121125012097651', 'L', 'Ki. Baan No. 358, Yogyakarta 42202, DIY', 'sari29@purwanti.go.id', '(+62) 561 4234 1500', '2021-08-31 20:46:14', '1990-06-25 14:05:46'),
(32, 'Elma Palastri', '9203297007011540', 'L', 'Jr. Pasteur No. 415, Prabumulih 69651, Malut', 'sdabukke@yahoo.com', '(+62) 21 5047 7778', '2012-07-26 20:43:57', '2012-05-17 13:41:13'),
(33, 'Rahmat Suryono', '1102660510037966', 'L', 'Dk. Zamrud No. 463, Denpasar 85756, NTB', 'kayla63@yahoo.co.id', '0845 9475 439', '1973-09-23 20:06:37', '1983-03-26 12:13:46'),
(34, 'Prasetya Setiawan', '9115151408124874', 'L', 'Jr. B.Agam Dlm No. 880, Probolinggo 27860, Jambi', 'harjasa.nurdiyanti@yahoo.com', '(+62) 931 9895 474', '1970-10-16 23:04:25', '1980-11-13 05:02:41'),
(35, 'Among Sirait', '1222287105151274', 'L', 'Jln. Baya Kali Bungur No. 163, Kupang 95510, Jabar', 'tami36@nasyiah.com', '(+62) 27 2038 932', '2018-06-06 13:34:51', '1996-12-26 18:12:27'),
(36, 'Panji Purwanto Sitorus', '3328601803162991', 'L', 'Dk. Muwardi No. 842, Langsa 40526, Sumsel', 'halimah.nyoman@lailasari.web.id', '0401 9564 8734', '1977-12-15 23:56:55', '2005-08-08 12:31:41'),
(37, 'Violet Hariyah', '1202952009155763', 'L', 'Ki. Agus Salim No. 892, Pasuruan 81039, Maluku', 'umi81@yahoo.com', '(+62) 27 8386 6523', '2009-11-01 01:36:21', '1996-03-23 01:41:53'),
(38, 'Ade Queen Rahmawati S.I.Kom', '1274692808174091', 'L', 'Kpg. Tangkuban Perahu No. 163, Palopo 36575, NTB', 'zelaya.sudiati@yahoo.co.id', '0732 7438 970', '2007-06-08 07:05:40', '2021-10-17 07:35:09'),
(39, 'Sari Purnawati', '1201091302110008', 'L', 'Ki. Banal No. 866, Palopo 59426, Jatim', 'edison.padmasari@pertiwi.org', '0358 5406 6414', '1990-11-07 00:23:33', '1994-12-06 23:19:03'),
(40, 'Eva Sakura Suartini', '3210646704932761', 'L', 'Dk. Basmol Raya No. 229, Lubuklinggau 39074, Bengkulu', 'riyanti.bakianto@yahoo.co.id', '0451 2147 1684', '2009-01-04 22:25:43', '2010-03-21 06:38:31'),
(41, 'Farah Mandasari', '7202515206956971', 'L', 'Ds. Arifin No. 602, Lhokseumawe 15890, Gorontalo', 'vera26@nuraini.my.id', '(+62) 534 1028 1247', '2004-07-02 07:38:10', '2012-12-07 23:22:36'),
(42, 'Mila Hani Palastri', '6213714707203741', 'L', 'Psr. R.M. Said No. 334, Kupang 37806, Malut', 'ymandasari@iswahyudi.biz', '(+62) 723 8551 2157', '2003-09-06 01:23:07', '1986-12-17 17:17:08'),
(43, 'Bakiadi Nainggolan', '6306477105999923', 'L', 'Ds. Ciumbuleuit No. 756, Cimahi 38883, Sultra', 'elatupono@gmail.com', '0649 5140 6557', '1972-04-30 05:36:13', '1970-06-18 16:30:07'),
(44, 'Jumadi Nugroho', '3217444601060938', 'L', 'Jln. Bakau No. 797, Bima 37039, Sumsel', 'martana.sitorus@gmail.co.id', '(+62) 244 5145 6888', '2007-05-03 12:18:10', '1984-04-20 02:50:14'),
(45, 'Langgeng Nainggolan S.E.I', '1309012803195579', 'L', 'Psr. R.E. Martadinata No. 45, Sibolga 19839, Kalbar', 'widiastuti.caket@mandala.tv', '(+62) 294 9940 830', '1970-12-21 07:35:26', '1992-08-24 07:12:22'),
(46, 'Citra Halimah', '9125842005207258', 'L', 'Ds. Rajawali No. 799, Magelang 78721, Maluku', 'lalita56@pudjiastuti.org', '0563 1389 303', '1988-08-12 22:23:58', '1991-12-09 12:20:09'),
(47, 'Tira Purwanti S.Pd', '7315660409016371', 'L', 'Kpg. Sutami No. 417, Pekanbaru 38313, DIY', 'lembah09@wulandari.web.id', '(+62) 815 009 586', '1984-10-12 22:52:38', '2013-04-24 22:54:21'),
(48, 'Hamzah Adriansyah', '9125345610093638', 'L', 'Jr. Gading No. 785, Palopo 73938, Jambi', 'gina62@yahoo.co.id', '0494 2893 353', '2011-03-11 21:50:32', '2006-04-08 03:37:33'),
(49, 'Maria Siska Nuraini', '2104166611188968', 'L', 'Gg. B.Agam 1 No. 23, Tomohon 86414, Sulut', 'ppertiwi@yahoo.co.id', '0840 0604 8780', '2008-09-04 03:47:50', '1982-02-22 22:50:23'),
(50, 'Omar Tedi Firgantoro S.Sos', '9109564411170939', 'L', 'Ki. Rajawali Barat No. 528, Gorontalo 15046, NTB', 'jarwadi70@gmail.co.id', '(+62) 274 6856 621', '2020-07-10 19:20:51', '1988-07-11 02:37:34'),
(51, 'Olivia Mayasari S.T.', '8103052104031939', 'L', 'Kpg. Abdul No. 801, Kediri 55301, Pabar', 'asmuni67@gmail.com', '(+62) 614 6426 2186', '1973-07-12 07:37:51', '1990-08-18 05:54:22'),
(52, 'Cornelia Melani S.Gz', '1175255903207291', 'L', 'Jr. Cemara No. 953, Tanjung Pinang 15845, Maluku', 'jarwadi.haryanti@napitupulu.biz.id', '(+62) 21 8292 997', '1981-05-13 14:23:13', '1990-09-05 02:07:55'),
(53, 'Emin Eja Simanjuntak M.TI.', '6108714804026733', 'L', 'Psr. Baha No. 918, Jayapura 23850, Sulut', 'qpermata@gmail.com', '0901 7006 157', '1982-03-19 06:02:39', '1990-02-08 22:49:52'),
(54, 'Dagel Hakim', '7308332309950516', 'L', 'Gg. Ters. Buah Batu No. 749, Batam 39690, Kalsel', 'santoso.prabawa@rajata.or.id', '0353 9355 827', '1977-11-19 03:21:36', '2010-10-03 06:43:34'),
(55, 'Dimas Nashiruddin', '7310721005113772', 'L', 'Psr. Tambak No. 549, Bandung 87733, Jambi', 'hsinaga@pranowo.sch.id', '0368 6148 4802', '1993-04-27 08:48:24', '1972-04-05 02:01:58'),
(56, 'Taswir Natsir', '1175565203954598', 'L', 'Ds. Sunaryo No. 2, Tegal 67601, Maluku', 'dongoran.paris@wijayanti.biz', '0611 4487 5462', '1987-08-25 07:49:04', '1993-09-17 19:01:52'),
(57, 'Umaya Mulyono Tarihoran M.Kom.', '3576590409171867', 'L', 'Jr. Kiaracondong No. 95, Sawahlunto 38138, Kaltara', 'izulaika@gmail.com', '0999 1956 1793', '1984-06-29 20:33:26', '2015-09-26 11:23:42'),
(58, 'Ilsa Ida Rahayu', '1508272003226768', 'L', 'Ki. Sutarjo No. 654, Administrasi Jakarta Utara 70502, Sultra', 'twahyuni@purwanti.co.id', '(+62) 275 5654 610', '1980-07-09 15:54:47', '1998-10-20 00:14:31'),
(59, 'Kadir Sitompul S.E.', '1219665708152152', 'L', 'Ds. Bakau Griya Utama No. 605, Payakumbuh 57749, Kaltara', 'umay84@waluyo.sch.id', '(+62) 615 2408 8071', '1971-05-12 03:04:32', '1986-11-19 03:01:09'),
(60, 'Dina Suryatmi', '7207287007083408', 'L', 'Jr. Imam Bonjol No. 509, Parepare 83954, Sulteng', 'mhartati@yahoo.com', '029 1305 351', '1978-05-19 19:33:31', '1972-03-17 11:38:21'),
(61, 'Dimaz Narpati', '6302406905942981', 'L', 'Jr. Pasteur No. 720, Batam 65077, Sumbar', 'qori.yuliarti@pratiwi.biz.id', '(+62) 219 9829 918', '2015-10-02 08:34:22', '1998-10-05 05:09:36'),
(62, 'Queen Hariyah', '1221902301117784', 'L', 'Psr. Babadak No. 568, Pagar Alam 43076, Jabar', 'fkurniawan@wibisono.name', '0986 9872 326', '1982-06-10 17:36:19', '2020-02-05 22:53:03'),
(63, 'Siska Oktaviani', '3528744110954354', 'L', 'Jln. Raden Saleh No. 883, Tidore Kepulauan 37600, Banten', 'jono73@gmail.com', '(+62) 648 6937 338', '2014-07-26 01:05:16', '2008-12-24 10:34:28'),
(64, 'Putu Halim', '9128195512202997', 'L', 'Kpg. Bazuka Raya No. 476, Medan 59989, Sulsel', 'emin.hartati@gmail.com', '(+62) 929 8900 4770', '1999-08-07 12:34:27', '1979-11-12 19:38:32'),
(65, 'Siska Mayasari', '3323145801078451', 'L', 'Jln. Pattimura No. 282, Bontang 66046, DKI', 'oktaviani.faizah@yahoo.com', '(+62) 694 2817 836', '1985-09-04 03:16:31', '1973-05-08 16:32:51'),
(66, 'Sabar Marpaung', '1410703008077067', 'L', 'Kpg. Asia Afrika No. 560, Parepare 25489, Kalteng', 'andriani.yani@nugroho.ac.id', '(+62) 863 4416 7962', '1982-01-03 12:42:15', '2003-02-24 04:48:09'),
(67, 'Hairyanto Sihotang', '9116992905048468', 'L', 'Ki. Gading No. 813, Samarinda 85243, Kepri', 'mulyanto02@saputra.mil.id', '0466 5264 3432', '2010-03-16 01:21:53', '1974-09-12 21:24:20'),
(68, 'Darman Haryanto', '5105955601025116', 'L', 'Gg. Raya Ujungberung No. 863, Serang 78569, Kalsel', 'nova.handayani@siregar.my.id', '0777 9249 1756', '2007-07-29 15:14:53', '1974-08-27 16:22:57'),
(69, 'Hendri Pratama', '1903404408109924', 'L', 'Kpg. Bak Air No. 584, Kotamobagu 91286, Jateng', 'nanggraini@yahoo.com', '0948 1931 321', '2018-05-29 19:44:40', '2018-07-03 02:24:10'),
(70, 'Clara Agustina', '3571320604158309', 'L', 'Psr. Rajawali Timur No. 814, Semarang 61298, Jabar', 'daliono.safitri@aryani.org', '0531 3900 831', '2019-10-25 16:06:58', '2017-02-14 07:36:05'),
(71, 'Ibrahim Hakim S.T.', '1114862506181777', 'L', 'Jr. Soekarno Hatta No. 446, Lubuklinggau 55754, Maluku', 'paiman39@yulianti.com', '0759 8639 717', '1986-12-28 00:54:57', '1998-03-01 08:45:16'),
(72, 'Hamima Laksmiwati', '1671874409008602', 'L', 'Dk. Bak Air No. 148, Banjarmasin 97060, Sultra', 'nurul77@mulyani.net', '(+62) 500 7326 367', '1972-08-27 07:01:26', '1986-11-28 11:28:20'),
(73, 'Queen Astuti S.E.I', '2104616008185420', 'L', 'Dk. Kalimantan No. 134, Banjarmasin 74438, Bengkulu', 'hamima96@yahoo.co.id', '(+62) 959 0636 8857', '2017-01-31 01:35:09', '1984-11-03 18:35:14'),
(74, 'Lalita Nasyiah', '7502820709967717', 'L', 'Psr. Surapati No. 453, Lhokseumawe 72322, Malut', 'csiregar@puspasari.in', '(+62) 466 3024 8773', '2007-08-11 17:45:09', '1990-12-19 23:23:54'),
(75, 'Hana Endah Haryanti', '1173680802958048', 'L', 'Ki. B.Agam Dlm No. 246, Bitung 86643, Sumbar', 'ysaputra@habibi.desa.id', '(+62) 26 3752 966', '2000-05-13 13:44:13', '2009-03-26 19:58:17'),
(76, 'Cici Rahmi Anggraini', '1305121709089437', 'L', 'Jln. Lumban Tobing No. 863, Palangka Raya 77303, Sumbar', 'sihombing.prayitna@mahendra.mil.id', '(+62) 999 6821 6127', '1983-12-26 22:38:52', '1999-01-21 07:44:57'),
(77, 'Alika Yuliana Widiastuti', '1902246508948230', 'L', 'Ki. BKR No. 939, Palembang 85328, NTT', 'ryolanda@yahoo.com', '(+62) 941 5220 314', '1979-10-17 09:25:37', '1973-10-08 18:25:17'),
(78, 'Radit Putra', '3316735104130621', 'L', 'Kpg. Jambu No. 512, Lhokseumawe 61119, Papua', 'namaga.malik@hartati.biz.id', '(+62) 320 6742 642', '2002-07-16 16:09:23', '1973-03-12 06:15:38'),
(79, 'Lamar Mansur S.Kom', '1103876006147481', 'L', 'Psr. Haji No. 518, Medan 63763, Pabar', 'budiman.kamal@padmasari.org', '0274 6751 0603', '2004-08-07 19:39:46', '1983-01-18 15:55:57'),
(80, 'Caraka Maryadi', '1203221409099363', 'L', 'Ds. Moch. Ramdan No. 654, Kediri 46674, Kaltim', 'utami.jasmin@gmail.com', '(+62) 478 9185 864', '1978-05-29 00:12:19', '2010-12-14 12:00:25'),
(81, 'Asman Kusumo', '9127301305074109', 'L', 'Kpg. Untung Suropati No. 298, Semarang 85441, Kalbar', 'kadir.maheswara@gmail.com', '(+62) 860 556 211', '1973-01-11 16:28:35', '2002-10-14 21:33:29'),
(82, 'Kariman Suryono', '5313301909080277', 'L', 'Jr. Ekonomi No. 330, Kupang 21783, Papua', 'nurdiyanti.vivi@andriani.com', '(+62) 534 2854 4832', '1970-10-31 15:01:57', '2009-03-16 14:53:07'),
(83, 'Zelda Yulianti', '1408732508932893', 'L', 'Kpg. Zamrud No. 572, Yogyakarta 49079, Kaltim', 'cahyadi.wahyudin@yahoo.co.id', '0966 6382 853', '1980-07-08 16:35:08', '2011-05-15 16:17:33'),
(84, 'Gawati Prastuti', '1408256710141622', 'L', 'Jln. Reksoninten No. 308, Sawahlunto 19434, Sulteng', 'pertiwi.tiara@kuswandari.name', '(+62) 21 4437 7977', '1973-11-25 14:43:00', '2004-05-20 03:36:55'),
(85, 'Ulya Nasyidah', '6309766203127202', 'L', 'Jr. Bakhita No. 936, Administrasi Jakarta Utara 89948, Sultra', 'hendra.prastuti@gmail.co.id', '(+62) 822 5818 405', '1972-04-03 18:39:00', '1970-02-12 02:54:41'),
(86, 'Gatot Estiono Prabowo', '1174112103135467', 'L', 'Gg. Lumban Tobing No. 911, Pagar Alam 90797, Sumbar', 'rini81@yahoo.co.id', '0786 9137 6040', '2020-07-03 15:27:08', '1992-10-25 19:23:44'),
(87, 'Mulyono Napitupulu', '6401731302140845', 'L', 'Jr. Monginsidi No. 322, Tegal 26294, Kalsel', 'dsinaga@gmail.com', '0911 9634 668', '1983-11-24 03:52:03', '1975-03-13 12:02:43'),
(88, 'Lintang Rahmawati', '3526376505058335', 'L', 'Ds. Rumah Sakit No. 394, Bengkulu 38223, Pabar', 'endah.nasyidah@gmail.co.id', '(+62) 923 0040 1183', '2015-01-11 11:57:11', '1985-11-25 04:30:29'),
(89, 'Puspa Hariyah', '9114411703206937', 'L', 'Kpg. Madiun No. 591, Sukabumi 56016, Lampung', 'tyuniar@gunarto.biz.id', '(+62) 457 3663 9171', '2017-02-20 14:11:18', '1986-08-13 04:23:53'),
(90, 'Genta Laksmiwati', '3604826803009282', 'L', 'Ds. Jend. Sudirman No. 297, Langsa 15688, Sumsel', 'prasetyo68@waskita.co.id', '029 7508 9169', '2010-08-22 08:02:24', '1992-08-12 01:05:09'),
(91, 'Puti Pratiwi', '1117365711984145', 'L', 'Jr. Tubagus Ismail No. 262, Sabang 58658, Pabar', 'fnashiruddin@sudiati.co.id', '0980 2299 911', '1988-01-01 16:41:07', '1985-05-09 16:36:09'),
(92, 'Baktiadi Vino Pranowo S.T.', '5303975610070502', 'L', 'Psr. Gedebage Selatan No. 431, Bengkulu 35820, Kepri', 'nilam.nasyidah@yahoo.com', '0530 9091 2597', '1974-01-11 07:21:14', '2021-07-28 08:43:48'),
(93, 'Cayadi Utama', '7315441803103514', 'L', 'Dk. Moch. Ramdan No. 376, Batam 17318, Kaltara', 'mulyani.kartika@suryono.desa.id', '027 5512 6185', '1981-11-28 16:48:38', '1986-12-11 16:58:04'),
(94, 'Latika Mutia Yulianti S.IP', '6212906202044036', 'L', 'Dk. Labu No. 646, Dumai 43421, Babel', 'mpermata@lazuardi.ac.id', '0317 3086 293', '2001-01-12 08:32:05', '2012-12-25 12:06:56'),
(95, 'Ulya Yolanda M.M.', '1216316006050786', 'L', 'Jr. Pelajar Pejuang 45 No. 215, Pekalongan 66319, Papua', 'yance.pratiwi@saragih.mil.id', '0659 6161 3175', '2016-02-21 21:11:23', '2008-01-04 16:05:27'),
(96, 'Vinsen Waluyo', '5305976912089142', 'L', 'Jr. Adisumarmo No. 182, Bima 21527, Kalbar', 'eka.lailasari@yahoo.co.id', '(+62) 589 9192 020', '1989-07-13 20:56:36', '1975-03-17 19:00:16'),
(97, 'Dono Sitompul', '1271492310169128', 'L', 'Jr. Bah Jaya No. 601, Pontianak 24985, Kalteng', 'kanda06@gmail.com', '(+62) 746 7533 8814', '1982-11-02 07:11:14', '1978-12-08 03:57:37'),
(98, 'Setya Eka Situmorang', '7107885004112138', 'L', 'Jr. Laswi No. 966, Pekanbaru 99951, Sultra', 'nainggolan.pia@gmail.com', '(+62) 20 9525 930', '2007-05-30 00:03:39', '1974-11-13 11:12:48'),
(99, 'Safina Astuti', '3572486701116124', 'L', 'Jln. Bakaru No. 787, Sabang 13716, DKI', 'nadia.tamba@yahoo.com', '0426 8720 0760', '2018-05-02 02:33:55', '1982-02-09 07:48:32'),
(100, 'Cici Kartika Laksita', '3604125612002307', 'L', 'Dk. Wahid No. 869, Manado 55288, Jateng', 'irwan.wacana@mustofa.net', '0911 6237 974', '1978-03-28 14:55:25', '1981-08-09 10:54:18'),
(101, 'Ulva Nurul Usamah', '6311737105203257', 'L', 'Ki. Lumban Tobing No. 489, Administrasi Jakarta Pusat 53083, Sultra', 'handriani@tampubolon.name', '0376 2585 0103', '1973-02-02 17:14:05', '1978-11-14 22:31:55'),
(102, 'Asmuni Zulkarnain S.Kom', '8206284410949568', 'L', 'Ds. Rajawali Timur No. 761, Binjai 49444, DIY', 'sari00@yahoo.com', '0985 5954 694', '1998-09-09 02:27:46', '1988-12-19 07:29:35'),
(103, 'Tami Kania Purwanti', '1613964705087112', 'L', 'Psr. Rajiman No. 826, Prabumulih 64203, Jambi', 'viman74@haryanti.ac.id', '(+62) 708 9491 193', '2000-01-28 15:57:52', '1990-06-22 12:27:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `distributor`
--

CREATE TABLE `distributor` (
  `distributor_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `distributor`
--

INSERT INTO `distributor` (`distributor_id`, `name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Galiono Permadi', 'Psr. Laksamana No. 10, Kupang 49151, Kalbarsasas', 'marwata.nugroho@uyai', '(+62) 790 2171 5649', '2001-07-30 11:07:17', '2022-04-20 12:00:31'),
(2, 'Eli Pudjiastuti', 'Dk. Gatot Subroto No. 367, Banda Aceh 63573, Banten', 'wyolanda@purwanti.my', '0674 6586 7880', '2013-06-01 10:03:38', '2006-07-03 03:35:21'),
(3, 'Raisa Palastri S.H.', 'Ds. Supono No. 568, Tasikmalaya 74074, Jatim', 'snababan@gmail.co.id', '0275 1893 7854', '1982-05-17 15:53:05', '1981-06-14 14:17:14'),
(4, 'Latika Riyanti S.Gz', 'Kpg. Achmad No. 567, Pekanbaru 44923, Sumut', 'gangsa29@gunarto.biz', '(+62) 22 2711 2117', '2007-11-02 18:42:13', '2015-01-27 18:19:58'),
(5, 'Tirta Wacana', 'Ki. Ters. Jakarta No. 64, Palembang 83294, NTB', 'bambang99@wastuti.ac', '027 3247 1323', '1980-11-23 18:37:25', '2021-05-09 05:45:41'),
(6, 'Ika Wahyuni', 'Kpg. Haji No. 956, Samarinda 80394, Kepri', 'ibrahim64@prasetya.o', '(+62) 396 0204 9885', '1986-02-11 05:27:37', '2001-09-08 05:58:18'),
(7, 'Muhammad Galuh Nashiruddin S.T.', 'Psr. Gotong Royong No. 679, Batam 17437, NTB', 'cengkir.saefullah@pu', '(+62) 426 8038 246', '2000-11-02 20:32:02', '1993-11-29 02:55:03'),
(8, 'Maria Sudiati', 'Gg. BKR No. 477, Subulussalam 94480, Malut', 'tnajmudin@hastuti.na', '0281 1190 1657', '1977-03-09 21:49:02', '2016-08-18 09:39:45'),
(10, 'Violet Padmasari', 'Ki. Bak Air No. 922, Administrasi Jakarta Utara 82696, Kaltim', 'namaga.asirwada@kusw', '(+62) 802 8875 8894', '2017-02-16 02:38:37', '2006-02-10 17:36:35'),
(11, 'Elvina Wijayanti M.TI.', 'Ds. Soekarno Hatta No. 122, Administrasi Jakarta Timur 17385, Sulsel', 'lurhur.mardhiyah@nat', '(+62) 20 2517 6263', '1993-12-21 04:44:17', '1982-05-04 18:47:16'),
(12, 'Titin Pratiwi S.I.Kom', 'Jln. Baja Raya No. 833, Batu 53075, Pabar', 'ganda18@gmail.co.id', '0210 8289 542', '1991-06-05 15:05:29', '1990-08-07 13:32:00'),
(13, 'Eko Cahyo Najmudin S.H.', 'Ds. Dago No. 642, Gorontalo 49844, Papua', 'ilaksita@gmail.co.id', '(+62) 859 5835 558', '1998-08-24 13:02:47', '1994-09-07 19:03:40'),
(14, 'Gara Raditya Waluyo S.T.', 'Gg. Lada No. 520, Bau-Bau 45874, Kepri', 'swijaya@prayoga.co.i', '0424 9506 064', '2003-04-21 19:41:17', '1971-10-22 23:05:22'),
(15, 'Silvia Rahmawati M.Pd', 'Jr. Bappenas No. 106, Bitung 93166, Sulbar', 'tnapitupulu@yahoo.co', '0340 0687 2431', '1978-03-13 02:43:37', '2005-02-18 03:42:09'),
(16, 'Yance Cornelia Novitasari', 'Gg. Baik No. 224, Bekasi 94134, Sulsel', 'lembah86@yahoo.co.id', '(+62) 882 3216 8080', '1992-03-31 03:45:43', '1975-12-10 12:38:41'),
(17, 'Irfan Gambira Saptono', 'Ds. Gading No. 935, Administrasi Jakarta Timur 38310, Banten', 'suci37@yahoo.co.id', '0553 3893 7644', '1987-07-06 05:12:48', '1994-07-25 14:55:41'),
(18, 'Farah Puspita S.Pd', 'Ds. Salam No. 970, Tidore Kepulauan 77240, Pabar', 'lailasari.ifa@namaga', '(+62) 229 1576 1955', '1974-02-09 01:07:56', '1984-02-20 14:04:33'),
(19, 'Niyaga Saiful Lazuardi M.TI.', 'Gg. Bakin No. 224, Administrasi Jakarta Selatan 23339, Sumbar', 'mhartati@pranowo.id', '(+62) 865 082 834', '1986-10-26 01:07:34', '1975-08-05 04:47:14'),
(20, 'Dalima Putri Zulaika S.E.', 'Jln. Ir. H. Juanda No. 611, Depok 90731, DIY', 'jumari82@laksmiwati.', '0756 9058 6739', '2019-11-06 23:43:03', '2021-09-25 18:04:46'),
(21, 'Ratna Uyainah', 'Ds. Ir. H. Juanda No. 83, Mataram 97340, Jatim', 'cahya23@yahoo.co.id', '0985 0371 412', '2012-04-29 16:59:42', '1976-10-17 00:44:19'),
(22, 'Arsipatra Firmansyah', 'Psr. Sugiono No. 330, Solok 31330, Kaltim', 'yani69@gmail.com', '(+62) 790 5655 475', '1998-01-19 16:18:10', '2021-05-30 04:01:15'),
(23, 'Gambira Maheswara', 'Gg. Bah Jaya No. 990, Palopo 51036, Aceh', 'nasyiah.asmianto@gma', '(+62) 347 2250 210', '2019-08-17 20:21:26', '2008-08-23 08:32:22'),
(24, 'Ibrahim Januar', 'Psr. Sugiyopranoto No. 649, Langsa 21472, Kepri', 'gpranowo@gmail.co.id', '(+62) 302 9811 858', '2020-06-29 21:52:45', '1972-10-07 06:23:42'),
(25, 'Balijan Gunarto', 'Gg. Kyai Mojo No. 327, Pekanbaru 55749, Jatim', 'thidayat@gmail.com', '0834 5971 198', '1970-04-01 11:55:05', '1973-05-06 09:05:09'),
(26, 'Hasta Luluh Pratama', 'Ds. Laswi No. 944, Batu 80441, DKI', 'syahrini.zulaika@ira', '0791 5267 406', '2007-12-22 19:47:09', '2013-05-13 10:47:11'),
(27, 'Cemani Budiman S.Farm', 'Jln. Baiduri No. 284, Bandar Lampung 56953, Lampung', 'kuswoyo.putri@hakim.', '0908 8595 512', '1981-12-22 04:22:32', '2016-03-26 06:22:48'),
(28, 'Victoria Laksmiwati', 'Jln. Rajawali No. 708, Tebing Tinggi 68654, Kalsel', 'martani.yuniar@laksi', '0536 2756 5061', '1988-11-04 04:13:23', '1980-09-12 15:25:08'),
(29, 'Alika Endah Hasanah M.Pd', 'Psr. Halim No. 800, Solok 67781, Kalteng', 'hasanah.mustofa@yaho', '0394 7153 0777', '2019-01-10 05:27:17', '2010-02-07 12:08:04'),
(30, 'Gawati Nasyiah', 'Kpg. Bass No. 593, Palu 58052, Jateng', 'pradana.emil@wastuti', '0872 542 340', '1976-01-14 16:51:28', '1981-09-26 01:26:14'),
(31, 'Nova Agustina', 'Jln. Ronggowarsito No. 449, Singkawang 54678, Sulbar', 'ulya.prabowo@andrian', '0343 2456 641', '1992-02-13 01:57:42', '1996-03-14 06:48:28'),
(32, 'Jindra Balijan Uwais', 'Jr. Pelajar Pejuang 45 No. 73, Pontianak 82580, Kaltara', 'nandriani@gmail.com', '(+62) 540 5423 911', '1991-08-28 07:09:03', '1999-02-27 17:55:47'),
(33, 'Purwanto Utama S.Farm', 'Ds. Pattimura No. 777, Banjar 33912, Sulteng', 'ade.lestari@purnawat', '(+62) 245 1592 5508', '1998-02-11 19:45:05', '1993-01-23 10:15:04'),
(34, 'Rafi Hidayanto', 'Ki. Cikapayang No. 706, Surabaya 46758, DIY', 'kamal.sitompul@yahoo', '0585 7012 246', '1993-06-13 05:52:10', '1980-02-04 11:55:29'),
(35, 'Sakti Prasasta', 'Gg. Padma No. 366, Gorontalo 78705, NTB', 'bfarida@yahoo.com', '(+62) 462 6155 7195', '2006-05-14 19:06:37', '1998-08-06 06:32:17'),
(36, 'Ihsan Nainggolan', 'Ki. Merdeka No. 519, Cimahi 86463, Sulut', 'wibowo.shakila@astut', '(+62) 732 2609 3621', '2002-01-29 16:57:11', '2018-04-12 15:15:17'),
(37, 'Safina Uyainah', 'Jln. Baya Kali Bungur No. 317, Cirebon 35802, DIY', 'sagustina@wacana.co', '0866 718 884', '1991-08-28 10:57:19', '1997-02-14 08:15:02'),
(38, 'Viman Hutagalung S.Pd', 'Jln. Bawal No. 452, Dumai 92312, Babel', 'arta.wastuti@yahoo.c', '029 6551 1746', '2020-04-29 03:06:56', '1980-04-14 07:40:56'),
(39, 'Tasnim Kairav Marbun', 'Psr. Dago No. 428, Bontang 76310, DIY', 'waskita.ikin@gmail.c', '(+62) 27 7806 189', '2017-07-23 06:51:37', '2015-11-08 13:58:00'),
(40, 'Balapati Latupono S.Pt', 'Ds. Badak No. 329, Batu 98036, NTT', 'maimunah39@sirait.in', '(+62) 729 2480 074', '1999-06-04 07:27:54', '1996-12-21 17:30:19'),
(41, 'Marsito Januar S.Kom', 'Kpg. Ikan No. 762, Metro 26015, Jambi', 'siska.pertiwi@winarn', '(+62) 254 9773 796', '2010-04-07 23:16:40', '2015-12-14 06:42:05'),
(42, 'Gambira Najmudin', 'Dk. Ters. Pasir Koja No. 669, Sukabumi 55677, Kalbar', 'vdabukke@suartini.co', '(+62) 294 1466 245', '2011-01-09 17:37:51', '2003-06-21 13:00:42'),
(43, 'Cengkir Rajasa', 'Psr. Kyai Gede No. 593, Banjarbaru 27383, Bali', 'rpradana@suwarno.biz', '(+62) 800 3993 5345', '2005-01-23 11:56:06', '2009-06-06 22:59:36'),
(44, 'Bancar Ramadan', 'Ki. Merdeka No. 832, Bengkulu 48187, Kalsel', 'nurul.uwais@maryadi.', '(+62) 366 9316 045', '1982-05-16 04:37:52', '1992-05-01 10:39:12'),
(45, 'Yahya Danang Budiman', 'Psr. Abdul Rahmat No. 2, Semarang 70134, Babel', 'rudi.saragih@laksita', '0206 3931 3544', '1983-11-15 02:08:34', '2007-03-28 03:00:15'),
(46, 'Ilyas Zulkarnain', 'Dk. Halim No. 350, Palu 95242, Jabar', 'jumadi66@maryati.my.', '(+62) 995 0539 218', '1983-07-15 07:16:22', '2005-06-26 21:24:10'),
(47, 'Jamil Marpaung', 'Dk. Ujung No. 236, Banjarbaru 56090, Kaltara', 'xpurnawati@wasita.ne', '(+62) 717 6697 370', '1996-07-31 16:02:46', '1981-11-26 23:25:47'),
(48, 'Icha Diana Yulianti S.T.', 'Ki. Ujung No. 588, Yogyakarta 11435, Kalbar', 'xkusmawati@yuliarti.', '(+62) 729 9322 568', '1982-07-14 23:51:48', '1971-04-22 05:11:54'),
(49, 'Ozy Budiyanto', 'Gg. M.T. Haryono No. 316, Jayapura 43589, Aceh', 'febi69@yahoo.co.id', '(+62) 973 0817 6986', '2003-07-22 20:12:20', '1970-11-18 19:11:43'),
(50, 'Sarah Yuniar S.Kom', 'Psr. Ahmad Dahlan No. 413, Kediri 82340, Jatim', 'kania24@gmail.com', '(+62) 487 2766 5932', '1980-08-24 13:49:48', '2019-09-15 06:00:20'),
(51, 'Asmadi Mahfud Prasetyo S.Kom', 'Dk. Baiduri No. 227, Lubuklinggau 27035, Malut', 'jarwa.handayani@gmai', '(+62) 498 1434 411', '1970-09-17 00:00:41', '1992-08-09 00:31:35'),
(52, 'Elvin Sinaga', 'Jr. Raden Saleh No. 721, Tebing Tinggi 66853, Malut', 'dlestari@andriani.bi', '(+62) 362 8559 745', '2020-04-21 17:01:47', '1994-12-28 16:45:35'),
(53, 'Alambana Saefullah', 'Ki. Suryo Pranoto No. 723, Padangsidempuan 17458, Gorontalo', 'harja87@prasetyo.ac.', '(+62) 347 7801 078', '1978-09-21 14:49:52', '1997-09-05 19:21:14'),
(54, 'Warsa Damu Prabowo S.E.', 'Gg. Sudiarto No. 710, Tomohon 28971, Papua', 'lailasari.kania@pusp', '(+62) 702 9677 342', '1998-12-20 17:26:20', '1977-12-17 14:46:44'),
(55, 'Mitra Kurnia Marpaung', 'Ds. Kebangkitan Nasional No. 262, Banjarbaru 35145, Babel', 'timbul21@mangunsong.', '(+62) 336 0873 484', '2001-03-12 00:40:24', '1995-06-30 05:34:05'),
(56, 'Ratih Palastri', 'Gg. Bak Air No. 51, Administrasi Jakarta Pusat 75230, Gorontalo', 'kani39@pranowo.net', '(+62) 961 9882 602', '1976-01-18 21:48:44', '1985-05-19 18:26:44'),
(57, 'Ika Melani', 'Jr. Krakatau No. 972, Singkawang 40587, Sumbar', 'khalimah@latupono.mi', '(+62) 852 0392 939', '1978-07-16 02:04:37', '2006-05-03 16:25:48'),
(58, 'Ida Suartini', 'Kpg. Bayam No. 905, Administrasi Jakarta Selatan 91384, Kepri', 'handayani.muni@hariy', '020 6894 8705', '1994-12-08 06:42:51', '2017-10-27 08:06:12'),
(59, 'Najib Kurniawan', 'Psr. B.Agam Dlm No. 336, Ternate 12627, Sulut', 'oktaviani.slamet@sur', '0907 8264 6700', '1981-04-22 03:06:47', '1990-07-02 07:09:18'),
(60, 'Teddy Sihombing', 'Jr. Badak No. 544, Banda Aceh 85016, DIY', 'thamrin.betania@firg', '(+62) 781 7051 393', '1985-09-22 01:56:12', '1978-09-24 00:41:38'),
(61, 'Jelita Nasyidah', 'Ki. Gremet No. 139, Bandar Lampung 24716, Sumsel', 'restu74@mansur.or.id', '0860 4072 6503', '1997-11-28 04:33:09', '2006-11-20 01:57:13'),
(62, 'Mala Widiastuti', 'Jln. Batako No. 365, Pematangsiantar 25686, Babel', 'prayoga.firmansyah@w', '(+62) 788 8950 6911', '1992-01-19 12:06:28', '2014-03-12 14:50:59'),
(63, 'Devi Hariyah', 'Psr. Abdul No. 205, Tomohon 76735, Sumbar', 'bprasasta@purwanti.o', '(+62) 522 4201 505', '1980-09-11 01:05:20', '1982-10-24 22:59:09'),
(64, 'Olga Virman Waluyo S.Kom', 'Jr. Jakarta No. 544, Pasuruan 26153, NTB', 'jaya22@yahoo.co.id', '021 1990 285', '1995-06-08 02:35:04', '2011-07-30 04:44:52'),
(65, 'Nadine Prastuti S.Pt', 'Jr. Moch. Ramdan No. 322, Samarinda 85637, Sulteng', 'yulianti.aditya@najm', '(+62) 405 9438 5146', '1995-04-24 16:29:24', '1985-12-29 11:51:12'),
(66, 'Emas Kusumo', 'Jln. R.E. Martadinata No. 846, Batam 82241, Kalteng', 'asusanti@maryati.co.', '(+62) 502 3773 2715', '2013-04-10 14:34:46', '1981-08-29 03:47:39'),
(67, 'Galih Gading Permadi S.Pt', 'Jln. Flora No. 238, Langsa 77687, Jateng', 'karma.handayani@yaho', '(+62) 577 8341 807', '1975-01-16 05:06:19', '2002-11-12 13:03:56'),
(68, 'Darmaji Jailani', 'Dk. Jamika No. 1, Banjarmasin 38577, Sulut', 'wahyu.saefullah@prat', '(+62) 710 7181 592', '2010-06-02 18:22:37', '1989-05-22 13:25:22'),
(69, 'Lalita Novitasari', 'Ds. Bakaru No. 704, Solok 67106, Aceh', 'olestari@situmorang.', '026 6802 9747', '1994-10-02 12:48:25', '2003-02-20 01:58:20'),
(70, 'Damu Eko Hidayanto S.IP', 'Jln. Kali No. 876, Cimahi 62338, Babel', 'siregar.heryanto@har', '(+62) 371 9541 2005', '1997-09-10 16:46:26', '2008-09-09 01:58:01'),
(71, 'Hasna Mutia Laksmiwati', 'Ki. Orang No. 789, Palu 98735, NTT', 'estiawan47@gmail.com', '(+62) 803 7747 320', '2008-07-17 20:06:36', '1994-05-13 23:27:09'),
(72, 'Tira Ella Novitasari', 'Jr. Badak No. 984, Lubuklinggau 23762, Jambi', 'xlaksmiwati@pertiwi.', '(+62) 551 7628 7856', '2022-03-24 12:21:45', '1974-10-26 02:44:31'),
(73, 'Silvia Riyanti', 'Jln. Mulyadi No. 901, Kediri 30496, Jambi', 'lailasari.restu@yaho', '021 5747 5275', '1992-11-13 17:37:17', '2016-06-23 05:19:52'),
(74, 'Yunita Salsabila Uyainah S.I.Kom', 'Kpg. Qrisdoren No. 308, Pematangsiantar 30664, Maluku', 'isalahudin@suryono.t', '026 5440 178', '2000-02-23 19:34:57', '1994-03-10 09:49:45'),
(75, 'Jarwi Situmorang', 'Dk. Kartini No. 61, Langsa 14918, Jatim', 'almira54@ardianto.tv', '0803 141 858', '1972-08-04 11:00:10', '1995-01-12 08:58:45'),
(76, 'Ani Uyainah', 'Dk. Bara No. 915, Mojokerto 66139, Sumbar', 'wfarida@pradipta.co.', '024 0564 062', '2007-06-09 16:13:16', '2007-08-22 07:18:19'),
(77, 'Bakidin Santoso', 'Psr. Umalas No. 411, Pontianak 88290, Sulteng', 'vivi.hutagalung@yaho', '(+62) 888 2549 282', '1972-01-21 13:47:08', '1992-04-22 09:42:19'),
(78, 'Emin Wibisono', 'Ds. Baiduri No. 811, Padang 19863, Kalteng', 'fpertiwi@waskita.co.', '(+62) 552 0347 2994', '1972-11-13 01:02:38', '1982-09-19 04:09:58'),
(79, 'Ulya Widiastuti S.Ked', 'Dk. Jayawijaya No. 331, Bogor 99514, Lampung', 'yyolanda@wahyuni.mil', '(+62) 969 8134 5238', '1995-01-11 16:31:26', '2000-09-22 16:58:10'),
(80, 'Gandi Wasita', 'Gg. Gardujati No. 850, Makassar 71224, Sulsel', 'uyuliarti@novitasari', '(+62) 554 1433 4847', '2001-06-14 00:50:34', '2021-03-28 01:50:52'),
(81, 'Hari Narpati', 'Ki. Jend. A. Yani No. 997, Banjarmasin 22452, Banten', 'widodo.kacung@rahima', '0318 9714 480', '1982-07-31 06:55:18', '1988-02-21 15:03:15'),
(82, 'Humaira Andriani', 'Dk. Baranang Siang No. 116, Kotamobagu 62931, Sultra', 'maras.nuraini@gmail.', '(+62) 22 4998 691', '1995-02-07 15:32:06', '1996-02-12 08:49:52'),
(83, 'Zahra Ciaobella Nasyidah S.E.I', 'Jln. Thamrin No. 987, Balikpapan 75575, Kepri', 'yani12@yahoo.com', '(+62) 985 3108 6113', '2019-07-27 17:30:29', '1980-10-03 00:35:52'),
(84, 'Jasmani Waluyo M.M.', 'Ki. Banceng Pondok No. 933, Medan 84999, Kalsel', 'makuta60@gmail.com', '(+62) 26 3046 0361', '1981-08-28 06:35:58', '2022-01-30 04:09:48'),
(85, 'Gamblang Pratama', 'Psr. Kali No. 64, Jayapura 57930, Gorontalo', 'heru.wulandari@perma', '(+62) 842 3852 7325', '1995-03-31 11:28:51', '2020-07-10 05:50:29'),
(86, 'Latika Salwa Palastri S.Farm', 'Ki. Merdeka No. 304, Padangpanjang 27825, Sumbar', 'lidya78@zulkarnain.n', '(+62) 812 097 642', '1985-12-24 18:46:14', '2018-04-26 05:07:59'),
(87, 'Jamal Putra', 'Gg. Raden No. 705, Bandung 35964, Lampung', 'saefullah.viktor@gma', '0947 6827 574', '1976-08-06 00:54:05', '2018-08-15 16:11:52'),
(88, 'Laila Safitri M.Pd', 'Gg. Wora Wari No. 750, Samarinda 58712, Sulsel', 'vkurniawan@gmail.com', '0884 0662 8112', '1991-05-29 22:47:50', '1974-03-27 07:08:17'),
(89, 'Iriana Mardhiyah', 'Ds. Gajah No. 959, Makassar 29554, Sumbar', 'jono03@setiawan.or.i', '(+62) 527 6337 357', '2012-12-08 18:23:30', '1985-08-27 04:11:49'),
(90, 'Ivan Narpati S.IP', 'Ki. W.R. Supratman No. 525, Bekasi 87738, Pabar', 'haryanto.raisa@astut', '(+62) 844 9147 695', '1974-01-19 23:30:29', '1982-06-24 22:47:41'),
(91, 'Calista Nasyiah', 'Ds. Rajiman No. 579, Bitung 74261, Kalteng', 'vhandayani@gmail.com', '(+62) 968 9858 612', '2019-03-30 13:57:53', '1976-01-24 12:05:53'),
(92, 'Gambira Simbolon', 'Ds. Adisumarmo No. 431, Batu 15676, Lampung', 'padmasari.unggul@sih', '027 8907 842', '2013-09-30 23:43:20', '2005-03-02 22:41:14'),
(93, 'Raisa Amelia Kuswandari', 'Gg. Sudirman No. 951, Administrasi Jakarta Selatan 96285, Bengkulu', 'mpuspita@pudjiastuti', '0706 0222 3298', '1975-07-06 10:27:10', '1972-06-13 23:32:13'),
(94, 'Tri Kuswoyo', 'Jln. Kalimalang No. 632, Malang 54624, Kalbar', 'cpurnawati@gmail.com', '0430 9460 972', '1992-12-09 02:19:13', '2011-02-04 07:17:21'),
(95, 'Laras Pertiwi', 'Gg. Sadang Serang No. 230, Administrasi Jakarta Timur 84875, Pabar', 'xmandala@gmail.com', '(+62) 785 1958 080', '1999-09-27 12:46:05', '1973-08-09 21:25:21'),
(96, 'Cawisono Damanik M.Kom.', 'Jr. Agus Salim No. 598, Palu 76420, Bali', 'maman72@puspita.go.i', '0551 3380 4272', '2008-07-18 02:48:22', '1995-05-08 05:37:38'),
(97, 'Silvia Dina Lestari', 'Dk. Rajawali No. 684, Pematangsiantar 41634, Sumbar', 'saptono.icha@napitup', '(+62) 686 8738 2637', '1973-01-17 21:38:27', '2001-07-01 09:00:23'),
(98, 'Lili Mayasari', 'Ki. Wahid Hasyim No. 859, Palangka Raya 57315, Bali', 'edi.natsir@mandasari', '0456 7299 4317', '1973-04-07 11:25:12', '2013-12-29 03:29:49'),
(99, 'Fitriani Lestari S.Gz', 'Psr. Muwardi No. 769, Solok 36759, Sulbar', 'lalita.situmorang@ya', '0541 2310 3857', '1996-05-30 10:55:42', '1972-10-30 17:16:59'),
(100, 'Lala Wirda Wastuti', 'Kpg. Basoka No. 174, Sabang 40847, Papua', 'rpuspita@yahoo.com', '(+62) 953 5476 213', '2021-12-30 00:52:01', '1997-12-15 04:46:58'),
(101, 'Dagin', 'Jln Sia Ru Bago', 'thomasbtbx@gmail.com', '08912122112', '2022-04-20 12:01:51', '2022-04-20 12:01:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `majalah`
--

CREATE TABLE `majalah` (
  `majalah_id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `tahun` smallint(4) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `harga` float NOT NULL,
  `diskon` decimal(4,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `majalah_category_id` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `majalah`
--

INSERT INTO `majalah` (`majalah_id`, `judul`, `slug`, `tahun`, `penerbit`, `harga`, `diskon`, `stok`, `cover`, `majalah_category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Majalah A45', 'majalah-a45', 2022, 'Sidu', 5000, '0.20', 5, '', 3, '2022-03-15 02:45:03', '2022-03-21 13:26:20', '2022-03-21 13:26:20'),
(2, 'Majalah B5', 'majalah-b5', 2022, 'Sidusasa', 6000, '0.30', 7, '', 2, '2022-03-15 02:47:34', '2022-03-21 13:26:23', '2022-03-21 13:26:23'),
(3, 'Majalah A3', 'majalah-a3', 2022, 'Sidu', 3000, '0.20', 2, '', 1, '2022-03-14 21:02:05', '2022-03-21 12:43:28', '2022-03-21 12:43:28'),
(5, 'Majalah Baru', 'majalah-baru', 2021, 'Sinar Dunia', 67000, '3.00', 7, '', 2, '2022-03-14 21:07:13', '2022-03-21 12:43:24', '2022-03-21 12:43:24'),
(6, 'Majalah Lama Baru', 'majalah-lama-baru', 2021, 'Sinar Dunia', 67000, '3.00', 7, '', 2, '2022-03-21 12:47:55', '2022-03-21 12:48:19', '2022-03-21 12:48:19'),
(7, 'Wajah Baru', 'wajah-baru', 2021, 'Sonans', 40000, '0.99', 444, '', 3, '2022-03-21 13:26:41', '2022-03-21 21:11:35', '2022-03-21 21:11:35'),
(8, 'Summer Hidden', 'summer-hidden', 2021, 'Sonan', 40000, '0.99', 44, '1648267971_b65a8f3da2ee31aeee0d.jpg', 2, '2022-03-21 18:46:54', '2022-03-25 23:12:51', '0000-00-00 00:00:00'),
(9, 'Wajah Barus', 'wajah-barus', 2021, 'Soanasa', 40000, '0.00', 44, '1648267069_2445a34be609b57a7037.jpg', 2, '2022-03-25 22:23:28', '2022-03-28 19:17:56', '2022-03-28 19:17:56'),
(10, 'Wajah', 'wajah', 2021, 'Soana', 40000, '0.99', 44, '1648514890_647825b038e61af5b32a.jpg', 2, '2022-03-25 23:01:54', '2022-03-28 19:48:10', '0000-00-00 00:00:00'),
(11, 'Waja', 'waja', 2021, 'Soana', 40000, '0.99', 44, '1650474915_5ea247f864247ae458be.jpg', 5, '2022-03-25 23:06:29', '2022-04-20 12:47:50', '2022-04-20 12:47:50'),
(12, 'AOTsaasas', 'aotsaasas', 2021, 'Soanana', 40000, '0.99', 44, '1650474797_282b2f07f4f3e5ea33dc.png', 4, '2022-03-25 23:10:10', '2022-04-20 12:46:32', '2022-04-20 12:46:32'),
(13, 'Wajas', 'wajas', 2021, 'Soana', 40000, '0.99', 44, '1648514431_49b4e3c8aea681e35c91.jpg', 2, '2022-03-28 19:40:12', '2022-03-28 19:40:31', '0000-00-00 00:00:00'),
(14, 'wajar', 'wajar', 2021, 'Soana', 40000, '0.99', 44, '1648514499_91ad46e90ad83d75aeb3.jpg', 2, '2022-03-28 19:41:39', '2022-03-28 19:41:46', '2022-03-28 19:41:46'),
(15, 'Sirohige', 'sirohige', 2021, 'Soanan', 40000, '0.00', 44, '1648514862_17b1a1ba25cef310ecbd.jpg', 2, '2022-03-28 19:47:30', '2022-03-28 19:49:53', '2022-03-28 19:49:53'),
(16, 'Wajah Barusasaassa', 'wajah-barusasaassa', 2021, 'Soana', 40000, '0.99', 44, 'deafaul.jpg', 2, '2022-03-28 19:50:24', '2022-04-14 04:10:32', '2022-04-14 04:10:32'),
(17, 'Thomas Edwin Suryo Prayogo', 'thomas-edwin-suryo-prayogo', 2001, 'Thomas', 107001, '0.70', 1, '1650464924_6316e1d0966756d0b930.jpg', 2, '2022-04-14 04:10:23', '2022-04-20 09:28:44', '0000-00-00 00:00:00'),
(18, 'Wajah Baru89', 'wajah-baru89', 20211, 'Soana', 40000, '0.99', 44, 'default.jpg', 2, '2022-04-14 10:39:39', '2022-04-14 10:39:44', '2022-04-14 10:39:44'),
(19, 'Wajah Elon', 'wajah-elon', 2021, 'Soana', 40000, '0.99', 44, '1650476936_d7aabc556f4f616fbc08.jpg', 2, '2022-04-20 12:48:56', '2022-04-20 12:52:53', '2022-04-20 12:52:53'),
(20, 'Wajah Elons', 'wajah-elons', 2021, 'Soana', 40000, '0.00', 44, '1650477238_26d2b11f60dcf90b25cd.jpg', 2, '2022-04-20 12:53:58', '2022-04-20 12:54:02', '2022-04-20 12:54:02'),
(21, 'Elon T', 'elon-t', 2021, 'Soanasa', 40000, '0.99', 44, '1650477322_3d2a799ea28cc37c037f.jpg', 2, '2022-04-20 12:55:22', '2022-04-20 12:55:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `majalah_category`
--

CREATE TABLE `majalah_category` (
  `majalah_category_id` int(5) NOT NULL,
  `name_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `majalah_category`
--

INSERT INTO `majalah_category` (`majalah_category_id`, `name_category`) VALUES
(2, 'Dewasa'),
(3, 'Anak - anak'),
(4, 'Sosial'),
(5, 'Bisnis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-04-02-052705', 'App\\Database\\Migrations\\Customer', 'default', 'App', 1648877566, 1),
(2, '2022-04-05-001934', 'App\\Database\\Migrations\\Distributor', 'default', 'App', 1649118259, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'Johas1212', 'Jln Sia Ru Bagoa', 'thomasbtbx@gmail.com', '089121221121', '2022-04-01 13:13:02', '2022-04-20 09:35:06'),
(5, 'Ja', 'Jln Sia Ru Bagoa', 'THOMASS@gmail.com', '08912122112', '2022-04-02 01:20:03', '2022-04-20 12:00:07'),
(8, 'Johas', 'Jln Sia Ru Bago', 'ASASSA@gmail.com', '08912122112', '2022-04-02 11:27:26', '2022-04-02 11:27:26'),
(9, 'Johas', 'Jln Sia Ru Bago', 'ASASSA@gmail.com', '08912122112', '2022-04-02 11:28:35', '2022-04-02 11:28:35'),
(10, 'Johas', 'Jln Sia Ru Bago', 'ASASSA@gmail.com', '08912122112', '2022-04-02 11:28:39', '2022-04-02 11:28:39'),
(14, 'Roti', 'Jln Sia Ru Bago', 'thomasbtbx@gmail.com', '08912122112', '2022-04-20 12:01:28', '2022-04-20 12:01:28'),
(15, 'Aci', 'Jln Sia Ru Bago', 'thomasbtbx@gmail.com', '08912122112', '2022-04-20 20:26:43', '2022-04-20 20:26:43'),
(16, 'Wagyu', 'Jln Sia Ru Bago', 'thomasbtbx@gmail.com', '089121221121', '2022-04-20 20:27:47', '2022-04-20 20:27:47');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `book_category_id` (`book_category_id`);

--
-- Indeks untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`book_category_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`distributor_id`);

--
-- Indeks untuk tabel `majalah`
--
ALTER TABLE `majalah`
  ADD PRIMARY KEY (`majalah_id`);

--
-- Indeks untuk tabel `majalah_category`
--
ALTER TABLE `majalah_category`
  ADD PRIMARY KEY (`majalah_category_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `book_category`
--
ALTER TABLE `book_category`
  MODIFY `book_category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `distributor`
--
ALTER TABLE `distributor`
  MODIFY `distributor_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `majalah`
--
ALTER TABLE `majalah`
  MODIFY `majalah_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `majalah_category`
--
ALTER TABLE `majalah_category`
  MODIFY `majalah_category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`book_category_id`) REFERENCES `book_category` (`book_category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
