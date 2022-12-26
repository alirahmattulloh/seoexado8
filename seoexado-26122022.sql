-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 07:14 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seoexado`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_numbers`
--

CREATE TABLE `auto_numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auto_numbers`
--

INSERT INTO `auto_numbers` (`id`, `name`, `number`, `created_at`, `updated_at`) VALUES
(1, '0f0f6fd83657976e88896db671870900', 25, '2022-12-17 00:08:12', '2022-12-17 02:22:54'),
(2, '83cfd8b2a692bb551125f0ae81c97fdc', 36, '2022-12-17 02:24:20', '2022-12-25 18:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `datacusts`
--

CREATE TABLE `datacusts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timseo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timclosing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `klien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notelp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` bigint(20) NOT NULL,
  `bayar` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_offseo` date DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datacusts`
--

INSERT INTO `datacusts` (`id`, `status`, `timseo`, `timclosing`, `web`, `klien`, `notelp`, `harga`, `bayar`, `tanggal`, `tanggal_offseo`, `keterangan`, `created_at`, `updated_at`) VALUES
(3573, 'NONAKTIF', 'Siti Masiri', 'Liza', 'gentengwirosarimurah.com', 'Sutiknyo', '+62 821-3644-1115', 500000, 0, '2022-03-01', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3574, 'NONAKTIF', 'Maretta Silvia Nurari', 'Ayu', 'bengkelcentralmakmur.com', 'Ahmad Efendi', '+62 812-8008-0958', 500000, 0, '2022-04-01', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3575, 'NONAKTIF', 'Siti Masiri', 'Liza', 'nusabarongmotor.com', 'Gondo', '+62 878-5930-5739', 500000, 0, '2020-10-01', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3576, 'NONAKTIF', 'Siti Masiri', 'Zaqia', 'hyundaicihampelas.web.id', '-', '+62 812-2123-2783', 500000, 0, '2022-08-01', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3577, 'NONAKTIF', 'Devi Kumala', 'Azmi', 'klinikpengobatantradisionalspesialis.com', 'Gunawan', '+62 812-7832-2225', 500000, 0, '2022-08-01', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3578, 'NONAKTIF', 'Maretta Silvia Nurari', 'Azmi', 'ambulancebandung.web.id', 'Toni', '+62 853-1849-1084', 500000, 0, '2021-12-02', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3579, 'NONAKTIF', 'Nurul Rodiyah', 'Ayu', 'saraswatijeepadventure.com', 'Sanjaya', '+62 823-1454-5067', 500000, 0, '2022-08-02', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3580, 'NONAKTIF', 'Siti Masiri', 'Azmi', 'stamford-sinarmujur.com', 'Benny', '+62 851-0506-3574', 500000, 0, '2022-08-02', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3581, 'NONAKTIF', 'Dikky Pradianto', 'Dian', 'independenttowing.web.id', 'Fatwa', '87722748800', 500000, 0, '2022-09-02', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3582, 'NONAKTIF', 'Ade Bagus S', 'Putri', 'pengobatanvitalpakyandi.com', 'Yandi', '83179888556', 500000, 0, '2022-09-02', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3583, 'NONAKTIF', 'Ade Bagus S', 'Azmi', 'ppqpermatabangsa.com', '-', '-', 500000, 0, '2022-02-02', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3584, 'NONAKTIF', 'Moh. Khoiri Habibulloh', 'Azmi', 'satyapools.com', 'Siswanto', '82331766598', 500000, 500000, '2022-09-02', NULL, 'lunas', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3585, 'NONAKTIF', 'Azka Fairuzul M', 'Ikmah', 'finansia-multifinance.com', '-', '-', 500000, 0, '2022-09-02', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3586, 'NONAKTIF', 'Devi Kumala', 'Ayu', 'shellaautoservice.web.id', 'Pujiyatno', '-', 500000, 0, '2022-09-02', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3587, 'NONAKTIF', 'Nurliah Gamar Safitri', 'Ikmah', 'losterdanbatatempel.web.id', '-', '-', 500000, 0, '2022-09-02', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3588, 'NONAKTIF', 'Ade Bagus S', 'Ayu', 'renovasiatapbajaringan.com', '-', '+62 813-2261-9291', 500000, 0, '2022-06-03', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3589, 'NONAKTIF', 'Nurliah Gamar Safitri', 'Meta', 'pengobatanvitalkarawang.web.id', 'Gunawan', '+62 812-7832-2225', 500000, 0, '2022-08-03', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3590, 'NONAKTIF', 'Devi Kumala', 'Liza', 'pakettourkarimunjawa.com', 'Gunawan', '+62 812-1501-4131', 500000, 0, '2022-01-03', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3591, 'NONAKTIF', 'Dikky Pradianto', 'Ayu', 'carpetwasherlaundry.com', '-', '-', 500000, 0, '2022-06-03', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3592, 'NONAKTIF', 'Ade Bagus S', 'Dian', 'acfjasacucitorenair.com', 'Arnel Muis', '+62 831-6492-2570', 500000, 0, '2022-10-03', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3593, 'NONAKTIF', 'Atik Mulyani', 'Ayu', 'anasrentcar.com', '-', '-', 500000, 0, '2022-10-03', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3594, 'NONAKTIF', 'Moh. Khoiri Habibulloh', 'Ikmah', 'nirwanarentalsolo.com', '-', '+62 878-3338-3467', 500000, 0, '2022-06-04', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3595, 'NONAKTIF', 'Maulia Nursidik', 'Ayu', 'tukanglisprofilbetonmanual.web.id', '-', '+62 838-0422-0547', 500000, 0, '2022-06-04', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3596, 'NONAKTIF', 'Nurul Rodiyah', 'Azmi', 'fianinterior.com', '-', '+62 817-117-600', 500000, 0, '2022-06-04', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3597, 'NONAKTIF', 'Maretta Silvia Nurari', 'Azmi', 'kitchensetfurnituresemarang.com', 'Adi', '+62 812-2978-3655', 500000, 0, '2022-06-04', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3598, 'NONAKTIF', 'Moh. Khoiri Habibulloh', 'Eva', 'klinikpengobatanalatvitalaawawan.com', '-', '0821-9774-3875', 500000, 0, '2022-08-04', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3599, 'NONAKTIF', 'Ade Bagus S', 'Liza', 'atlanticjaya.com', '-', '-', 500000, 0, '2022-04-12', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3600, 'NONAKTIF', 'Dikky Pradianto', 'Ayu', 'elfindoflorist.com', 'Dodik', '+62 822-3060-6058', 500000, 0, '2022-02-05', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3601, 'NONAKTIF', 'Siti Masiri', 'Azmi', 'servicepompaairdanpengeboran.com', 'Leo', '+62 812-8320-4192', 500000, 0, '2022-03-05', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3602, 'NONAKTIF', 'Dikky Pradianto', 'Ikmah', 'lombokstrollholiday.com', '-', '+62 823-4183-4690', 500000, 0, '2022-07-05', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3603, 'NONAKTIF', 'Ade Bagus S', 'Rifa', 'susantolawfirm.com', 'Mukti', '+62 811-1505-245', 500000, 0, '2022-07-05', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3604, 'NONAKTIF', 'Siti Masiri', 'Ayu', 'oleholehhajikhadijah.com', '-', '8', 500000, 0, '2022-08-05', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3605, 'NONAKTIF', 'Dikky Pradianto', 'Zaqia', 'griyaijin.com', 'Dilla', '+62 852-6700-4361', 500000, 0, '2022-09-05', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3606, 'NONAKTIF', 'Sri Eka Cesaria', 'Aya', 'minyak-karo.com', '-', '-', 500000, 0, '2022-03-05', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3607, 'NONAKTIF', 'Dikky Pradianto', 'Ayu', 'floristbandungcimahi.com', '-', '-', 500000, 0, '2022-08-05', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3608, 'NONAKTIF', 'Nurul Rodiyah', 'Eva', 'rumahjaringsport.com', 'Ridwan Malik', '+62 881-2532-304', 500000, 0, '2022-10-05', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3609, 'NONAKTIF', 'Sri Eka Cesaria', 'Azmi', 'firstmediasalesresmi.com', 'Riki', '82116265396', 500000, 0, '2022-10-05', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3610, 'NONAKTIF', 'Maretta Silvia Nurari', 'Azmi', 'solahartwaterheater.id', 'Aswin', '+62 812-8007-2007', 500000, 0, '2022-08-06', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3611, 'NONAKTIF', 'Siti Masiri', 'Aya', 'tokoakiterdekat24jm.com', 'Fatoni', '+62 817-6664-290', 500000, 0, '2021-12-06', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3612, 'NONAKTIF', 'Nurliah Gamar Safitri', 'Wulan', 'cucitorenjakarta.com', 'Dwi Hartono', '+62 822-3333-3126', 500000, 0, '2022-04-06', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3613, 'NONAKTIF', 'Sri Eka Cesaria', 'Zaqia', 'rajatehnikkanopi.com', 'Yatiman', '+62 878-5009-3123', 500000, 0, '2022-06-06', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3614, 'NONAKTIF', 'Devi Kumala', 'Aya', 'rentalmobilkotapalu.com', 'Syamsul', '+62 822-8055-5669', 500000, 0, '2022-06-06', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3615, 'NONAKTIF', 'Maretta Silvia Nurari', 'Azmi', 'solahartwaterheater.id', 'Aswin', '+62 812-8007-2007', 500000, 0, '2022-08-06', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3616, 'NONAKTIF', 'Devi Kumala', 'Aya', 'klinikbekam-al-iman.com', 'Mulyadin', '+62 821-4592-2458', 500000, 0, '2022-08-06', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3617, 'NONAKTIF', 'Azka Fairuzul M', 'Liza', 'kangsandblast.web.id', 'Priangung', '+62 857-7146-6807', 500000, 0, '2022-02-07', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3618, 'NONAKTIF', 'Dikky Pradianto', 'Nurul', 'jayawijaya.org', 'Soleh', '+62 812-1309-9504', 500000, 0, '2022-04-07', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3619, 'NONAKTIF', 'Maulia Nursidik', 'Liza', 'sewascaffoldingmurah.web.id', 'Salim', '+62 821-2411-3086', 500000, 0, '2021-10-07', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3620, 'NONAKTIF', 'Maulia Nursidik', 'Rosa', 'jasabankgaransi-suretybond.com', '-', '-', 500000, 0, '2022-10-07', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3621, 'NONAKTIF', 'Azka Fairuzul M', 'Eva', 'mitsubishikotabogor.web.id', '-', '-', 500000, 0, '2022-10-07', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3622, 'NONAKTIF', 'Devi Kumala', 'Metta', 'attaysir.com', '-', '8', 500000, 0, '2022-03-08', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3623, 'NONAKTIF', 'Nurul Rodiyah', 'Putri', 'supplierjaringjabodetabek.com', 'Rudi', '-', 500000, 0, '2022-09-08', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3624, 'NONAKTIF', 'Maulia Nursidik', 'Regina', 'borpilejawatengah.com', 'Haikal', '+62 813-9024-2099', 500000, 0, '2022-09-08', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3625, 'NONAKTIF', 'Atik Mulyani', 'Azmi', 'baliunikwatersporttanjungbenoa.com', 'Dody', '85333490127', 500000, 0, '2022-09-09', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3626, 'NONAKTIF', 'Sri Eka Cesaria', 'Hasna', 'karyamitraaluminium.com', '-', '+62 812-1970-4121', 500000, 0, '2021-08-09', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3627, 'NONAKTIF', 'Maulia Nursidik', 'Isti', 'cevkardus.web.id', 'Chelsye', '+62 859-5915-2411', 500000, 0, '2022-01-09', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3628, 'NONAKTIF', 'Maulia Nursidik', 'Liza', 'sukabumihonda.com', 'Gancar', '+62 858-4696-3302', 500000, 0, '2020-06-09', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3629, 'NONAKTIF', 'Dikky Pradianto', 'Aya', 'queennaraspa.com', 'Adjie', '+62 822-4412-6363', 500000, 0, '2022-06-09', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3630, 'NONAKTIF', 'Maulia Nursidik', 'Cindy', 'hyundaisby.web.id', 'Timo', '+62 812-1320-6747', 500000, 0, '2022-04-09', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3631, 'NONAKTIF', 'Azka Fairuzul M', 'Aya', 'putrapangrango.com', 'Ade Arfan', '+62 877-1863-1244', 500000, 0, '2022-08-09', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3632, 'NONAKTIF', 'Ade Bagus S', 'Ikmah', 'rombengdisko.com', '-', '-', 500000, 0, '2022-08-09', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3633, 'NONAKTIF', 'Nurliah Gamar Safitri', 'Ikmah', 'layananservicearistonjabodetabek.web.id', '-', '+62 812-9090-1166', 500000, 0, '2022-08-09', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3634, 'NONAKTIF', 'Nurul Rodiyah', 'Iin', 'layanansewatenda.com', '-', '-', 500000, 0, '2022-08-09', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3635, 'NONAKTIF', 'Nurul Rodiyah', 'Aya', 'pengobatanalatvital-semarang.com', 'Nanang', '+62 856-0273-1350', 500000, 0, '2022-08-09', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3636, 'NONAKTIF', 'Devi Kumala', 'Aya', 'dhoytrans.com', '-', '6281320000000', 500000, 0, '2022-09-10', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3637, 'NONAKTIF', 'Nurliah Gamar Safitri', 'Azmi', 'keyzharentalmobilkupang.com', '-', '-', 500000, 0, '2022-09-10', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3638, 'NONAKTIF', 'Moh. Khoiri Habibulloh', 'Bu Yusi', 'madhavakaryaid.com', 'Fatkhi', '+62 822-3088-3207', 500000, 500000, '2020-10-10', NULL, 'Lunas', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3639, 'NONAKTIF', 'Moh. Khoiri Habibulloh', 'Iin', 'sukseswisuda.net', 'Habib', '+62 813-2741-2344', 500000, 0, '2022-03-10', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3640, 'NONAKTIF', 'Moh. Khoiri Habibulloh', 'Aya', 'artiweddingservice.com', 'Yudi', '+62 812-1478-2304', 500000, 0, '2021-12-11', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3641, 'NONAKTIF', 'Maulia Nursidik', 'Umda', 'indo-diklat.com', 'Lukman', '+62 813-8044-1433', 500000, 0, '2022-03-11', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3642, 'NONAKTIF', 'Moh. Khoiri Habibulloh', 'Ayu', 'raksarentalmobilbandung.com', 'Sany', '+62 896-8283-6248', 500000, 0, '2022-06-11', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3643, 'NONAKTIF', 'Maretta Silvia Nurari', 'Ayu', 'kamulyanflorist.com', 'Agiel', '+62 858-0033-2004', 500000, 0, '2022-06-11', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3644, 'NONAKTIF', 'Devi Kumala', 'Dian', 'rajanyataman.web.id', '-', '-', 500000, 0, '2022-10-11', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3645, 'NONAKTIF', 'Atik Mulyani', 'Ayu', 'sewaambulan24jam.com', '-', '-', 500000, 0, '2022-10-11', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3646, 'NONAKTIF', 'Moh. Khoiri Habibulloh', 'Indri', 'unggulpersada.com', '-', '-', 500000, 0, '2022-08-12', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3647, 'NONAKTIF', 'Sri Eka Cesaria', 'Aya', 'jalasrayapool.com', '-', '-', 500000, 0, '2022-08-12', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3648, 'NONAKTIF', 'Siti Masiri', 'Aya', 'dealerhonda-semarang.com', '-', '-', 500000, 0, '2022-08-12', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3649, 'NONAKTIF', 'Dikky Pradianto', 'Azmi', 'pengobatanaafikri.web.id', 'Ma\'ruf', '6283890000000', 500000, 0, '2022-08-12', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3650, 'NONAKTIF', 'Maretta Silvia Nurari', 'Ayu', 'palletkayumurah.com', 'Yunus', '+62 812-2299-9022', 500000, 0, '2022-01-12', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3651, 'NONAKTIF', 'Siti Masiri', 'Aya', 'ahlibongkarrumahjakarta.web.id', 'Saat', '+62 821-1093-7910', 500000, 0, '2022-04-12', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3652, 'NONAKTIF', 'Siti Masiri', 'Ayu', 'belitungliburanku.com', 'Roel', '+62 813-7305-9354', 500000, 0, '2022-07-12', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3653, 'NONAKTIF', 'Maulia Nursidik', 'Zaqia', 'sumberteknikac.com', '-', '-', 500000, 0, '2022-09-12', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3654, 'NONAKTIF', 'Azka Fairuzul M', 'Ayu', 'jasa-technic.com', 'Roip', '6285290000000', 500000, 0, '2022-03-21', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3655, 'NONAKTIF', 'Azka Fairuzul M', 'Azmi', 'terapivitallampung.web.id', '-', '-', 500000, 0, '2021-10-06', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3656, 'NONAKTIF', 'Ade Bagus S', 'Eva', 'mygordeninterior.web.id', '-', '-', 500000, 0, '2022-08-13', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3657, 'NONAKTIF', 'Nurul Rodiyah', 'Eva', 'grahavilla.com', 'Beni Sigit', '+62 815-4235-5369', 500000, 0, '2022-08-13', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3658, 'NONAKTIF', 'Dikky Pradianto', 'Liza', 'suretybondbankgaransi.com', 'Bustami Saputra', '+62 812-9000-0373', 500000, 0, '2021-08-13', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3659, 'NONAKTIF', 'Maulia Nursidik', 'Rofi', 'spi-bizzaindonesia.com', 'Alya Rachmawati', '6285610000000', 500000, 0, '2022-10-13', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3660, 'NONAKTIF', 'Ade Bagus S', 'Ayu', 'ptbarokahfajimjaya.com', '-', '-', 500000, 0, '2022-10-13', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3661, 'NONAKTIF', 'Devi Kumala', 'Liza', 'marmergranitjakarta.com', '-', '-', 500000, 0, '2021-10-14', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3662, 'NONAKTIF', 'Nurul Rodiyah', 'Iin', 'sewaelfhiacebandung.com', 'Ilham', '+62 896-6042-0549', 500000, 0, '2022-06-14', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3663, 'NONAKTIF', 'Sri Eka Cesaria', 'Aya', 'bpkb-gadai.com', '-', '+62 851-6273-0009', 500000, 0, '2022-07-14', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3664, 'NONAKTIF', 'Azka Fairuzul M', 'Ayu', 'bengkellastasikpro.com', '-', '-', 500000, 0, '2022-10-14', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3665, 'NONAKTIF', 'Ade Bagus S', 'Ayu', 'astramotor-honda.com', '-', '-', 500000, 0, '2022-10-14', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3666, 'NONAKTIF', 'Atik Mulyani', 'Zaqia', 'ikajayateknik.web.id', '-', '-', 500000, 0, '2022-09-15', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3667, 'NONAKTIF', 'Ade Bagus S', 'Ikmah', 'canopyprimajayasteel.com', '-', '-', 500000, 0, '2022-09-15', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3668, 'NONAKTIF', 'Devi Kumala', 'Zaqia', 'reseller.109pillow.com', 'dhafi', '6285930000000', 500000, 0, '2022-09-15', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3669, 'NONAKTIF', 'Nurliah Gamar Safitri', 'Ayu', 'mncplaymediabandung.web.id', '-', '62896134979', 500000, 0, '2022-09-15', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3670, 'NONAKTIF', 'Maretta Silvia Nurari', 'Nurul', 'semestautamapool.com', 'Darmin', '+62 877-8054-5505', 500000, 0, '2022-03-15', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3671, 'NONAKTIF', 'Nurliah Gamar Safitri', 'Zaqia', 'akbartrans.id', 'Akbar', '+62 821-2345-7297', 500000, 0, '2022-03-15', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3672, 'NONAKTIF', 'Siti Masiri', 'Mita', 'ninditatransport.com', '-', '+62 823-8454-5053', 500000, 0, '2022-03-16', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3673, 'NONAKTIF', 'Sri Eka Cesaria', 'Aya', 'acropolis-ortopedi.com', '-', '+62 822-4377-3624', 500000, 0, '2022-06-16', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3674, 'NONAKTIF', 'Dikky Pradianto', 'Zaqia', 'proformaadvisory.com', '-', '-', 500000, 0, '2022-06-16', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3675, 'NONAKTIF', 'Moh. Khoiri Habibulloh', 'Azmi', 'jasaterimabelibongkaranrumah.com', 'Purwanto', '+62 812-1829-6775', 500000, 0, '2022-02-16', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3676, 'NONAKTIF', 'Maretta Silvia Nurari', 'Azmi', 'uniqvacation.com', 'Uki', '+62 878-2335-9551', 500000, 0, '2022-07-16', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3677, 'NONAKTIF', 'Sri Eka Cesaria', 'Aya', 'bogaseniflorist.com', '-', '-', 500000, 0, '2022-08-16', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3678, 'NONAKTIF', 'Siti Masiri', 'Dian', 'baja-aluminiumjatim.web.id', 'Ali Imron', '82226559525', 500000, 0, '2022-09-17', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3679, 'NONAKTIF', 'Atik Mulyani', 'Ikmah', 'juragankardus.com', '-', '6285170000000', 500000, 0, '2022-09-17', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3680, 'NONAKTIF', 'Devi Kumala', 'Hasna', 'solahartservicecenter.web.id', '-', '-', 500000, 0, '2021-09-17', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3681, 'NONAKTIF', 'Maretta Silvia Nurari', 'Azmi', 'sahabat-bangunan.com', '-', '-', 500000, 0, '2022-02-17', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3682, 'NONAKTIF', 'Ade Bagus S', 'Liza', 'dinamikatunggal.com', '-', '-', 500000, 0, '2022-03-17', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3683, 'NONAKTIF', 'Devi Kumala', 'Ayu', 'nusapenidaleisure.com', '-', '-', 500000, 0, '2022-10-18', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3684, 'NONAKTIF', 'Sri Eka Cesaria', 'Eva', 'galenorentalkupang.com', 'Indra Lesik', '85239108179', 500000, 0, '2022-10-18', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3685, 'NONAKTIF', 'Devi Kumala', 'Azmi', 'ahligigisejabodetabekbatam.com', 'Lunas', '+62 812-8868-0343', 500000, 0, '2022-03-18', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3686, 'NONAKTIF', 'Azka Fairuzul M', 'Nurul', 'karyanusantarapool.com', 'Darmin', '+62 877-8054-5505', 500000, 0, '2022-03-18', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3687, 'NONAKTIF', 'Nurul Rodiyah', 'Ikmah', 'mitsubishitangerangkota.com', '-', '-', 500000, 0, '2022-06-18', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3688, 'NONAKTIF', 'Sri Eka Cesaria', 'Zaqia', 'masflorist.com', '-', '6281300000000', 500000, 0, '2022-07-18', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3689, 'NONAKTIF', 'Sri Eka Cesaria', 'Iin', 'goldenalmonddua.web.id', 'Nur Alimuddin', '+62 857-3175-2070', 500000, 0, '2022-07-18', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3690, 'NONAKTIF', 'Ade Bagus S', 'Liza', 'onepremiomcar.co.id', '-', '-', 500000, 0, '2022-02-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3691, 'NONAKTIF', 'Dikky Pradianto', 'Azmi', 'udsinarabadimarine.com', '-', '-', 500000, 0, '2022-08-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3692, 'NONAKTIF', 'Azka Fairuzul M', 'Eva', 'auroranata.com', '-', '-', 500000, 0, '2022-08-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3693, 'NONAKTIF', 'Maulia Nursidik', 'Ayu', 'adityapertamagypsum.web.id', '-', '-', 500000, 0, '2022-08-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3694, 'NONAKTIF', 'Moh. Khoiri Habibulloh', 'Zaqia', 'sastrajayapool.com', '-', '-', 500000, 0, '2022-08-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3695, 'NONAKTIF', 'Azka Fairuzul M', 'Ayu', 'kolamkoiku.com', '-', '-', 500000, 0, '2022-09-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3696, 'NONAKTIF', 'Ade Bagus S', 'Ayu', 'rentalmobil-palembang.com', 'Okta', '6282180000000', 500000, 0, '2022-09-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3697, 'NONAKTIF', 'Atik Mulyani', 'Azmi', 'jaskukeren.com', 'Abidin', '85817107328', 500000, 0, '2022-09-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3698, 'NONAKTIF', 'Maretta Silvia Nurari', 'Isti', 'adijayatecnik.com', '-', '-', 500000, 0, '2022-02-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3699, 'NONAKTIF', 'Sri Eka Cesaria', 'Ayu', 'goldencarmobilrentalbandung.com', '-', '-', 500000, 0, '2022-04-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3700, 'NONAKTIF', 'Siti Masiri', 'Ayu', 'Bagaramanado.com', '-', '-', 500000, 0, '2022-04-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3701, 'NONAKTIF', 'Maulia Nursidik', 'Azmi', 'bongkar-bongkar.com', '-', '+62 812-3145-2969', 500000, 0, '2022-05-19', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3702, 'NONAKTIF', 'Maretta Silvia Nurari', 'Wulan', 'rombengku.com', 'Sutrisno', '+62 881-9577-053', 500000, 0, '2022-05-20', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3703, 'NONAKTIF', 'Azka Fairuzul M', 'Bu Yusi', 'pengrajinlogam.com', '-', '-', 500000, 0, '2022-04-20', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3704, 'NONAKTIF', 'Nurliah Gamar Safitri', 'Iin', 'agputrablock22.com', 'Heri', '+62 877-8638-8595', 500000, 0, '2022-06-20', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3705, 'NONAKTIF', 'Maulia Nursidik', 'Dian', 'derekjtc24h.com', 'Hadi Nugraha', '0', 500000, 0, '2022-08-20', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3706, 'NONAKTIF', 'Siti Masiri', 'Yossy', 'udsinarjaya98.com', 'Zaini', '+62 877-9944-1710', 500000, 0, '2022-03-21', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3707, 'NONAKTIF', 'Ade Bagus S', 'Ikmah', 'propertiserunihillsbekasi.com', '-', '6281290000000', 500000, 0, '2022-05-21', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3708, 'NONAKTIF', 'Nurul Rodiyah', 'Ikmah', 'Astomas.com', 'Husen', '6285640000000', 500000, 0, '2022-05-21', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3709, 'NONAKTIF', 'Devi Kumala', 'Azmi', 'hokibalimassagedanspa.com', 'Najamudin', '87761588623', 500000, 0, '2022-09-21', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3710, 'NONAKTIF', 'Maretta Silvia Nurari', 'Ayu', 'zafirraraya.com', '-', '6285710000000', 500000, 0, '2022-03-11', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3711, 'NONAKTIF', 'Maretta Silvia Nurari', 'Ayu', 'kiarajayafilm.com', '-', '-', 500000, 0, '2022-10-21', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3712, 'NONAKTIF', 'Devi Kumala', 'Ayu', 'nasmocosemarangpusat.com', '-', '-', 500000, 0, '2022-10-21', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3713, 'NONAKTIF', 'Siti Masiri', 'Ayu', 'fahrirentcar.com', '-', '-', 500000, 0, '2022-10-21', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3714, 'NONAKTIF', 'Maretta Silvia Nurari', 'Aya', 'geosynplasindo.co.id', '-', '-', 500000, 0, '2022-09-21', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3715, 'NONAKTIF', 'Devi Kumala', 'Zaqia', 'sumberlancarteknik.web.id', '-', '-', 500000, 0, '2022-07-22', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3716, 'NONAKTIF', 'Maretta Silvia Nurari', 'Zaqia', 'ghifarirentcar1.com', 'Sutrisman', '+62 811-1956-468', 500000, 0, '2022-07-22', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3717, 'NONAKTIF', 'Ade Bagus S', 'Iin', 'terazzosementpolish.com', '-', '-', 500000, 0, '2022-08-22', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3718, 'NONAKTIF', 'Siti Masiri', 'Iin', 'skkbnspofficial.com', '-', '-', 500000, 0, '2022-09-22', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3719, 'NONAKTIF', 'Atik Mulyani', 'Zaqia', 'beningmassage.com', '-', '6282140000000', 500000, 0, '2022-09-22', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3720, 'NONAKTIF', 'Nurul Rodiyah', 'Ayu', 'bandungpowerkemasan.com', '-', '-', 500000, 0, '2022-09-22', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3721, 'NONAKTIF', 'Ade Bagus S', 'Zaqia', 'lesprivatmentaritangerang.com', 'Jonroles Hasibuan', '+62 812-1164-0401', 500000, 0, '2022-04-23', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3722, 'NONAKTIF', 'Dikky Pradianto', 'Zaqia', 'berkatmitrabsm.com', 'Adi Surahmat', '+62 812-9725-8797', 500000, 0, '2022-06-23', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3723, 'NONAKTIF', 'Maulia Nursidik', 'Hasna', 'patriasteelengineering.com', '-', '-', 500000, 0, '2022-06-23', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3724, 'NONAKTIF', 'Nurliah Gamar Safitri', 'Fitra', 'arziocleaning.com', '-', '-', 500000, 0, '2022-02-23', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3725, 'NONAKTIF', 'Moh. Khoiri Habibulloh', 'Zaqia', 'powerindoaspalpratama.com', '-', '-', 500000, 0, '2022-08-23', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3726, 'NONAKTIF', 'Siti Masiri', 'Zaqia', 'bengkellasjakarta.com', '-', '-', 500000, 0, '2022-08-23', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3727, 'NONAKTIF', 'Sri Eka Cesaria', 'Ayu', 'fixandgorepairservices.web.id', '-', '-', 500000, 0, '2022-08-23', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3728, 'NONAKTIF', 'Devi Kumala', 'Zaqia', 'dolangomobil.web.id', '-', '-', 500000, 0, '2022-08-23', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3729, 'NONAKTIF', 'Devi Kumala', 'Liza', 'nirwanakitchenset.com', '-', '+62 811-5681-214', 500000, 0, '2021-12-24', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3730, 'NONAKTIF', 'Devi Kumala', 'Azmi', 'rentalmobilhiacepadang.com', '-', '-', 500000, 0, '2022-05-24', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3731, 'NONAKTIF', 'Siti Masiri', 'Zaqia', 'nisfaflorist.web.id', '-', '-', 500000, 0, '2022-06-24', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3732, 'NONAKTIF', 'Nurliah Gamar Safitri', 'Ayu', 'alfashaclean.com', '-', '-', 500000, 0, '2022-09-24', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3733, 'NONAKTIF', 'Devi Kumala', 'Azmi', 'pastindojasaexpress.com', '-', '+62 812-6591-0717', 500000, 0, '2022-06-25', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3734, 'NONAKTIF', 'Azka Fairuzul M', 'Ayu', 'anisasofa.com', '-', '-', 500000, 0, '2022-10-25', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3735, 'NONAKTIF', 'Maretta Silvia Nurari', 'Ayu', 'golistrik.com', '-', '-', 500000, 0, '2022-10-25', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3736, 'NONAKTIF', 'Ade Bagus S', 'Ayu', 'jasaimportmurah.web.id', '-', '-', 500000, 0, '2022-10-25', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3737, 'NONAKTIF', 'Maulia Nursidik', 'Rifa', 'ayawapersadacargo.com', '-', '-', 500000, 0, '2022-08-26', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3738, 'NONAKTIF', 'Azka Fairuzul M', 'Ayu', 'jasasumurborair.web.id', '-', '-', 500000, 0, '2022-08-26', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3739, 'NONAKTIF', 'Maulia Nursidik', 'Hasna', 'sedotwcpontianakmurah.com', '-', '-', 500000, 0, '2021-10-27', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3740, 'NONAKTIF', 'Maulia Nursidik', 'Zaqia', 'bachtiartransnusantara.com', '-', '-', 500000, 0, '2022-09-27', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3741, 'NONAKTIF', 'Maretta Silvia Nurari', 'Zaqia', 'vixaflorist.com', '-', '-', 500000, 0, '2022-05-28', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3742, 'NONAKTIF', 'Dikky Pradianto', 'Ikmah', 'ar-rahmahrent.com', '-', '-', 500000, 0, '2022-05-28', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3743, 'NONAKTIF', 'Devi Kumala', 'Aya', 'pengobatanalatvitalmakerotkediri.com', 'H. Abdullah', '+62 852-3932-2300', 500000, 0, '2022-04-28', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3744, 'NONAKTIF', 'Sri Eka Cesaria', 'Ikmah', 'ajayac.web.id', '-', '-', 500000, 0, '2022-07-28', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3745, 'NONAKTIF', 'Maretta Silvia Nurari', 'Ikmah', 'bandungrubberjaya.com', 'Ahmad Saepudin', '+62 838-9739-3004', 500000, 0, '2022-07-28', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3746, 'NONAKTIF', 'Azka Fairuzul M', 'Aya', 'rayaflorist-jabodetabek.com', 'Ana', '+62 857-0010-0569', 500000, 0, '2022-05-28', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3747, 'NONAKTIF', 'Azka Fairuzul M', 'Azmi', 'sablonmurahsurabaya.web.id', 'Faisal Burhan', '85730100139', 500000, 0, '2022-07-29', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3748, 'NONAKTIF', 'Azka Fairuzul M', 'Dian', 'rafisaarthamandiri.com', 'Rafisa Artha Mandiri', '628111000000', 500000, 0, '2022-08-29', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3749, 'NONAKTIF', 'Siti Masiri', 'Azza', 'baguscuttingart.com', 'Aryo', '82113637663', 500000, 0, '2022-08-29', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3750, 'NONAKTIF', 'Sri Eka Cesaria', 'Eva', 'carwrappingfilm.web.id', 'Yongki', '89509055005', 500000, 0, '2022-08-29', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3751, 'NONAKTIF', 'Maretta Silvia Nurari', 'Ayu', 'danatunaibpkbmobilmotor.com', '-', '-', 500000, 0, '2022-08-29', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3752, 'NONAKTIF', 'Devi Kumala', 'Zaqia', 'familyservice.web.id', '-', '-', 500000, 0, '2022-08-29', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3753, 'NONAKTIF', 'Azka Fairuzul M', 'Zaqia', 'jasaimportdoortodoormurah.com', '-', '-', 500000, 0, '2022-09-29', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3754, 'NONAKTIF', 'Sri Eka Cesaria', 'Azmi', 'pasamantransgroup.com', '-', '-', 500000, 0, '2022-10-29', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3755, 'NONAKTIF', 'Devi Kumala', 'Imel', 'tracargo.web.id', 'Abdulah', '+62 889-0594-4231', 400000, 0, '2022-10-29', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3756, 'NONAKTIF', 'Dikky Pradianto', 'Eka', 'redbirdgroups.com', 'Yusuf', '+62 811-2629-917', 500000, 0, '2021-06-30', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3757, 'NONAKTIF', 'Maulia Nursidik', 'Eva', 'alatberatjabodetabek.com', 'Agus Mukti', '6281290000000', 500000, 0, '2022-08-30', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3758, 'NONAKTIF', 'Nurliah Gamar Safitri', 'Zaqia', 'jayamandirimotor-cirebon.com', '-', '-', 500000, 0, '2022-08-30', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(3759, 'NONAKTIF', 'Ade Bagus S', '-', 'danicajayamandiri.com', '-', '+62 812-3145-2969', 500000, 0, '2022-03-31', NULL, '-', '2022-12-25 20:34:49', '2022-12-25 20:34:49'),
(4085, 'AKTIF', 'Sri Eka Cesaria', 'Liza', 'fransdieselpower.com', 'Frans', '+62 812-5382-211', 500000, 500000, '2020-10-01', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4086, 'AKTIF', 'Dikky Pradianto', 'Liza', 'dnajayagroup.co.id', 'Ari', '+62 838-5795-7705', 500000, 500000, '2021-04-01', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4087, 'AKTIF', 'Maulia Nursidik', 'Eka', 'ptthemastersafetyindonesia.com', 'Firda', '+62 857-7120-6942', 500000, 500000, '2021-04-01', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4088, 'AKTIF', 'Siti Masiri', 'Hasna', 'mentarifloristjakarta.com', 'Samsul', '+62 852-1534-0362', 500000, 500000, '2021-09-01', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4089, 'AKTIF', 'Azka Fairuzul M', 'Laeli', 'batamcargo.com', 'Danang', '+62 812-8603-0383', 500000, 500000, '2021-11-01', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4090, 'AKTIF', 'Nurliah Gamar Safitri', 'Aya', 'bahanbakufriedchicken.web.id', '-', '-', 500000, 500000, '2022-12-01', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4091, 'AKTIF', 'Dikky Pradianto', 'Ikmah', 'sandraspamassage.web.id', '-', '-', 500000, 500000, '2022-12-01', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4092, 'AKTIF', 'Nurul Rodiyah', 'Wiwit', 'bintangputrautama.com', '-', '-', 500000, 500000, '2022-12-01', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4093, 'AKTIF', 'Azka Fairuzul M', 'Inaz', 'jasasumurborpurwakarta.web.id', '-', '-', 500000, 500000, '2022-12-01', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4094, 'AKTIF', 'Ade Bagus S', 'Liza', 'rafasetiawanadvertising.com', 'Slamet', '+62 823-9609-3698', 500000, 500000, '2021-12-01', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4095, 'AKTIF', 'Maulia Nursidik', 'Zaqia', 'rejekijayateknik.web.id', 'Budi', '+62 813-8031-8892', 500000, 400000, '2022-03-01', NULL, 'LUNAS (RP400.000)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4096, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Aya', 'busaperedamsuara.com', 'Igor', '+62 815-1113-3655', 500000, 500000, '2022-03-01', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4097, 'AKTIF', 'Dikky Pradianto', 'Aya', 'sewa-crane.com', 'Eko', '+62 813-3066-3342', 500000, 500000, '2022-03-01', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4098, 'AKTIF', 'Devi Kumala', 'Iin', 'tokobungamurahterdekatkarawang.web.id', 'Dicky', '+62 812-9024-6732', 500000, 500000, '2022-03-01', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4099, 'AKTIF', 'Ade Bagus S', 'Ikmah', 'borneomandirirentcar.com', '-', '-', 500000, 500000, '2022-11-02', NULL, 'TF TGL 1 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4100, 'AKTIF', 'Siti Masiri', 'Dian', 'sewahiace-elf.com', '-', '-', 500000, 500000, '2022-12-01', NULL, 'TF TGL 16 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4101, 'AKTIF', 'Sri Eka Cesaria', 'Ayu', 'deyentidung.web.id', '-', '-', 500000, 500000, '2022-12-02', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4102, 'AKTIF', 'Maretta Silvia Nurari', 'Ayu', 'hyundaipaster.com', '-', '-', 500000, 500000, '2022-12-02', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4103, 'AKTIF', 'Ade Bagus S', 'Ayu', 'daraflorist.com', '-', '-', 500000, 500000, '2022-12-02', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4104, 'AKTIF', 'Moh. Khoiri Habibulloh', 'liza', 'totalstationjakarta.com', 'abdul', '+62 857-7480-0127', 500000, 500000, '2020-07-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4105, 'AKTIF', 'Siti Masiri', 'Hasna', 'tokobungamargondadepok.com', '-', '+62 812-8271-7750', 500000, 500000, '2021-01-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4106, 'AKTIF', 'Maulia Nursidik', 'Eva', 'rencanapernikahan.com', 'Ari', '+62 821-7841-2221', 500000, 500000, '2021-02-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4107, 'AKTIF', 'Siti Masiri', 'Cindy', 'gradasiadvertisingsby.com', 'Baim', '+62 812-1698-0520', 500000, 450000, '2022-02-02', NULL, 'LUNAS (RP450.000)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4108, 'AKTIF', 'Maretta Silvia Nurari', 'Liza', 'lexzafloristjakarta.com', 'Nur', '+62 856-9207-2577', 500000, 500000, '2021-09-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4109, 'AKTIF', 'Maretta Silvia Nurari', 'Zaqia', 'mulyotronik.com', '-', '+62 816-3240-2915', 500000, 500000, '2021-09-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4110, 'AKTIF', 'Sri Eka Cesaria', 'Zaqia', 'kanayaspa.com', 'Lukman', '+62 819-3805-2555', 500000, 500000, '2021-12-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4111, 'AKTIF', 'Ade Bagus S', 'Zaqia', 'volta-indonesia.com', 'Diana', '+62 821-3611-1868', 500000, 3000000, '2022-06-02', NULL, 'BYR UTK JUNI - NOV 22 (3JT) TF', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4112, 'AKTIF', 'Azka Fairuzul M', 'Aya', 'busercab.com', '-', '+62 877-6045-7698', 500000, 500000, '2022-08-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4113, 'AKTIF', 'Ade Bagus S', 'Ikmah', 'centraladventure.co.id', 'Kholil', '+62 812-1853-2691', 500000, 500000, '2022-08-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4114, 'AKTIF', 'Nurliah Gamar Safitri', 'Ikmah', 'konsultanpajakdavetax.com', 'David', '+62 813-1911-4028', 500000, 500000, '2022-08-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4115, 'AKTIF', 'Atik Mulyani', 'Azmi', 'transholiday.id', 'Rino', '812701413', 500000, 500000, '2022-09-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4116, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Iin', 'lastangerangselatan.com', '-', '-', 500000, 500000, '2022-02-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4117, 'AKTIF', 'Nurul Rodiyah', 'Rifa', 'pemasanganrangkaatapbajaringan.com', 'Taufik Hamzah', '85809235137', 500000, 500000, '2022-09-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4118, 'AKTIF', 'Siti Masiri', 'Ikmah', 'amanagrindo.co.id', '-', '-', 500000, 1500000, '2022-09-02', NULL, 'TF TGL 9 AGT 1,5JT (SEPT - NOV)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4119, 'AKTIF', 'Maulia Nursidik', 'Ayu', 'coverageareamyrepublic.web.id', '-', '-', 500000, 500000, '2022-12-02', NULL, 'TF TGL 1 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4120, 'AKTIF', 'Maulia Nursidik', 'Iin', 'vwbsdjakartaraya.com', '-', '-', 500000, 500000, '2022-03-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4121, 'AKTIF', 'Azka Fairuzul M', 'Ikmah', 'terang-nusaabadi.com', 'Bram', '+62 821-1900-0608', 500000, 3000000, '2022-05-02', NULL, 'BYR UTK MEI-OKT 22 (3JT) TGL TF 02-05-22', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4122, 'AKTIF', 'Atik Mulyani', 'Ayu', 'qimeyrastore.com', '-', '-', 500000, 500000, '2022-11-02', NULL, 'TF TGL 28 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4123, 'AKTIF', 'Nurul Rodiyah', 'Wiwit', 'alkantarajayakonstruksi.com', '-', '-', 500000, 500000, '2022-11-02', NULL, 'TF TGL 31 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4124, 'AKTIF', 'Nurliah Gamar Safitri', 'Putri', 'believerentalmobilkupang.com', '-', '-', 500000, 500000, '2022-11-02', NULL, 'TF TGL 21 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4125, 'AKTIF', 'Azka Fairuzul M', 'Aya', 'berkahkuningantembaga.com', '-', '-', 500000, 500000, '2022-11-02', NULL, 'TF TGL 31 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4126, 'AKTIF', 'Maretta Silvia Nurari', 'Azmi', 'efendilaw.co.id', '-', '-', 500000, 500000, '2022-11-02', NULL, 'TF TGL 1 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4127, 'AKTIF', 'Atik Mulyani', 'Ayu', 'magvirajayainterior.com', '-', '-', 500000, 500000, '2022-12-03', NULL, 'TF TGL 2 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4128, 'AKTIF', 'Devi Kumala', 'Aya', 'senopatitourtravel.com', '-', '-', 500000, 500000, '2022-12-03', NULL, 'TF TGL 24 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4129, 'AKTIF', 'Dikky Pradianto', 'Friska', 'surabayacopy.com', 'Yan', '+62 812-3180-3223', 500000, 500000, '2020-12-03', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4130, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Verra', 'jayamandirigroup.com', 'Heri', '+62 815-1027-1898', 500000, 500000, '2021-03-03', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4131, 'AKTIF', 'Maretta Silvia Nurari', 'Hasna', 'fantasticpoolbali.com', 'Yanti', '+62 822-9777-2708', 500000, 500000, '2021-05-03', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4132, 'AKTIF', 'Devi Kumala', 'Liza', 'maikalandproject.com', 'Dimas', '+62 812-4223-4523', 500000, 500000, '2022-03-03', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4133, 'AKTIF', 'Maulia Nursidik', 'Eva', 'marketingsandiegohills.com', 'Tutur Zulianto', '817816661', 500000, 500000, '2022-09-03', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4134, 'AKTIF', 'Devi Kumala', 'Ayu', 'gensetpekanbaru.com', '-', '-', 500000, 500000, '2022-10-03', NULL, 'TF TGL 29 SEPT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4135, 'AKTIF', 'Maretta Silvia Nurari', 'Eva', 'ptsertifikasiqualitimanajemen.com', 'M Irmansyah', '+62 821-2388-7029', 500000, 500000, '2022-10-03', NULL, 'TF TGL 3 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4136, 'AKTIF', 'Maulia Nursidik', 'Wiwit', 'globalkarpetsejahtera.com', '-', '-', 500000, 500000, '2022-11-03', NULL, 'TF TGL 2 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4137, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Aya', 'alatangkatindustri.com', '-', '-', 500000, 500000, '2022-11-03', NULL, 'TF TGL 1 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4138, 'AKTIF', 'Devi Kumala', 'Inas', 'kitchensettbekasi.com', '-', '-', 500000, 500000, '2022-11-03', NULL, 'TF TGL 3 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4139, 'AKTIF', 'Siti Masiri', 'Iin', 'globalamaliapratama.com', '-', '-', 500000, 500000, '2022-11-03', NULL, 'TF TGL 2 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4140, 'AKTIF', 'Dikky Pradianto', 'Zaqia', 'jalanjalanpulauseributravel.com', 'Bobby', '+62 812-8355-2007', 500000, 1000000, '2020-12-04', NULL, 'LUNAS (OKTOBER-NOVEMBER)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4141, 'AKTIF', 'Devi Kumala', 'Nurul', 'gpdpowder.com', 'Ruddy', '+62 818-0502-1533', 500000, 500000, '2022-02-04', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4142, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Zaqia', 'tahfizhmutiaradarulquran.com', 'Teguh', '+62 813-1325-8248', 500000, 500000, '2022-02-04', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4143, 'AKTIF', 'Nurliah Gamar Safitri', 'Zaqia', 'magicsurfschoolbali.web.id', '-', '-', 500000, 500000, '2022-06-02', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4144, 'AKTIF', 'Siti Masiri', 'Ikmah', 'hargamobildaihatsujayapura.com', '-', '-', 500000, 500000, '2022-12-05', NULL, 'TF TGL 2 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4145, 'AKTIF', 'Nurliah Gamar Safitri', 'Azza', 'auliatranskendari.web.id', '-', '-', 500000, 500000, '2022-12-05', NULL, 'TF TGL 5 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4146, 'AKTIF', 'Dikky Pradianto', 'Azmi', 'kolamrenanggrahamelati.com', '-', '-', 500000, 500000, '2022-12-05', NULL, 'TF TGL 4 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4147, 'AKTIF', 'Sri Eka Cesaria', 'Eka', 'shineskin-mysas.com', '-', '+62 878-7479-3193', 500000, 500000, '2021-01-05', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4148, 'AKTIF', 'Maretta Silvia Nurari', 'Riani', 'multidimensi.com', 'Eka', '+62 813-4785-2350', 500000, 500000, '2021-02-05', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4149, 'AKTIF', 'Maretta Silvia Nurari', 'Liza', 'cctvmurahsidoarjo.web.id', 'Aldo', '+62 811-3616-690', 500000, 500000, '2021-07-05', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4150, 'AKTIF', 'Dikky Pradianto', 'Mita', 'fantasticpoolindo.com', 'Yanti', '+62 822-9777-2708', 500000, 500000, '2022-02-05', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4151, 'AKTIF', 'Sri Eka Cesaria', 'Iin', 'tukangrenovasitangerang.com', '-', '-', 500000, 500000, '2022-09-05', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4152, 'AKTIF', 'Atik Mulyani', 'Iin', 'besimurahberkualitas.com', '-', '-', 500000, 500000, '2022-09-05', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4153, 'AKTIF', 'Ade Bagus S', 'Zaqia', 'dekaderental.com', '-', '-', 500000, 500000, '2022-09-05', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4154, 'AKTIF', 'Azka Fairuzul M', 'Azzah', 'leamassage.web.id', 'Andin', '-', 500000, 500000, '2022-09-05', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4155, 'AKTIF', 'Siti Masiri', 'Iin', 'karangan-bunga-papan.com', '-', '-', 500000, 500000, '2022-10-05', NULL, 'TF TGL 3 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4156, 'AKTIF', 'Nurliah Gamar Safitri', 'Aya', 'plafonpvcberkualitas.com', '-', '-', 500000, 500000, '2022-10-05', NULL, 'TF TGL 26 AGT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4157, 'AKTIF', 'Dikky Pradianto', 'Aya', 'abimanyutourtravel.com', '-', '-', 500000, 500000, '2022-11-05', NULL, 'TF TGL 4 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4158, 'AKTIF', 'Sri Eka Cesaria', 'Rofi', 'cendaniepoxymandiri.com', '-', '-', 500000, 500000, '2022-11-05', NULL, 'TF TGL 3 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4159, 'AKTIF', 'Atik Mulyani', 'Azmi', 'plafonpvckalimantan.com', '-', '-', 500000, 500000, '2022-11-05', NULL, 'TF TGL 4 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4160, 'AKTIF', 'Nurliah Gamar Safitri', 'Iin', 'tokobungapapanjakarta.com', '-', '-', 500000, 500000, '2022-11-05', NULL, 'TF TGL 3 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4161, 'AKTIF', 'Ade Bagus S', 'Ayu', 'legalisasikedutaan.com', '-', '-', 500000, 500000, '2022-11-05', NULL, 'TF TGL 2 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4162, 'AKTIF', 'Dikky Pradianto', 'Liza', 'tokoramailaris.com', 'Prisiani', '+62 813-4060-6005', 500000, 500000, '2021-12-06', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4163, 'AKTIF', 'Maulia Nursidik', 'Liza', 'sbwbalirental.com', 'Putra', '+62 813-3886-7225', 500000, 500000, '2021-09-06', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4164, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Dwi', 'kristal-kacafilmmedan.com', 'Amin', '+62 813-9751-5351', 500000, 500000, '2022-04-06', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4165, 'AKTIF', 'Maretta Silvia Nurari', 'Ikmah', 'razaindonurse.com', 'Syarifudin', '+62 877-7666-7853', 500000, 500000, '2022-07-06', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4166, 'AKTIF', 'Sri Eka Cesaria', 'Azmi', 'tomomovers.com', 'Suratmo', '+62 813-1066-7360', 500000, 500000, '2022-08-06', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4167, 'AKTIF', 'Maulia Nursidik', 'Nurul', 'jasakonstruksibajaberat.com', '-', '-', 500000, 500000, '2022-06-20', NULL, 'TF TGL 6 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4168, 'AKTIF', 'Maulia Nursidik', 'Ayu', 'servicesofabandungterbaik.com', '-', '-', 500000, 500000, '2022-11-07', NULL, 'TF TGL 3 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4169, 'AKTIF', 'Azka Fairuzul M', 'Dian', 'anugrahbongkaran.com', '-', '-', 500000, 500000, '2022-11-07', NULL, 'TF TGL 7 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4170, 'AKTIF', 'Maretta Silvia Nurari', 'Azmi', 'indihome-kopegtel.web.id', '-', '-', 500000, 500000, '2022-11-07', NULL, 'TF TGL 5 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4171, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Rofi', 'jasapengeboranjawatimur.com', '-', '-', 500000, 500000, '2022-11-07', NULL, 'TF TGL 3 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4172, 'AKTIF', 'Nurul Rodiyah', 'Ayu', 'alwikanopitangerang.com', '-', '-', 500000, 500000, '2022-12-07', NULL, 'TF TGL 6 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4173, 'AKTIF', 'Sri Eka Cesaria', 'Ayu', 'gladiolfloristbandungan.com', '-', '-', 500000, 500000, '2022-12-07', NULL, 'TF TGL 3 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4174, 'AKTIF', 'Maretta Silvia Nurari', 'Rosa', 'klinikalatvitalabahyusuf.web.id', '-', '-', 500000, 500000, '2022-12-07', NULL, 'TF TGL 7 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4175, 'AKTIF', 'Maulia Nursidik', 'Aya', 'sakhaflorist.com', '-', '-', 500000, 500000, '2022-12-07', NULL, 'TF TGL 5 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4176, 'AKTIF', 'Dikky Pradianto', 'Metta', 'delia-epoxy.com', '-', '+62 857-1675-0474', 500000, 500000, '2022-01-07', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4177, 'AKTIF', 'Sri Eka Cesaria', 'Liza', 'basmanlaptops.com', 'Fitri', '+62 896-6204-5597', 500000, 500000, '2022-01-07', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4178, 'AKTIF', 'Maretta Silvia Nurari', 'Hasna', 'suryatriasgemilang.com', 'Indra', '+62 815-2882-3304', 500000, 500000, '2021-04-07', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24');
INSERT INTO `datacusts` (`id`, `status`, `timseo`, `timclosing`, `web`, `klien`, `notelp`, `harga`, `bayar`, `tanggal`, `tanggal_offseo`, `keterangan`, `created_at`, `updated_at`) VALUES
(4179, 'AKTIF', 'Sri Eka Cesaria', 'Metta', 'borepilestrauspilemurah.com', 'Arifin', '+62 878-8518-5761', 500000, 500000, '2022-04-07', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4180, 'AKTIF', 'Dikky Pradianto', 'Ikmah', 'Maulananetshop.com', '-', '-', 500000, 500000, '2022-10-07', NULL, 'TF TGL 4 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4181, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Azmi', 'cordovadesigndanbuild.com', 'Rika', '81218800909', 500000, 500000, '2022-10-07', NULL, 'TF TGL 6 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4182, 'AKTIF', 'Ade Bagus S', 'Azmi', 'satriajayamotorsulawesi.com', 'Arsan', '6285343797', 500000, 500000, '2022-10-07', NULL, 'TF TGL 5 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4183, 'AKTIF', 'Devi Kumala', 'Inas', 'nyrtea.web.id', '-', '-', 500000, 1577000, '2022-11-08', NULL, 'TGL 3 NOV TF 1.577.000 (NOV - JANUARI)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4184, 'AKTIF', 'Siti Masiri', 'Azmi', 'aqlyatransport.com', '-', '-', 500000, 500000, '2022-11-08', NULL, 'TF TGL 7 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4185, 'AKTIF', 'Dikky Pradianto', 'Iin', 'ellimitesolid.com', '-', '-', 500000, 500000, '2022-11-08', NULL, 'TF TGL 7 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4186, 'AKTIF', 'Siti Masiri', 'Indri', 'trowel-lantai.com', '-', '-', 500000, 500000, '2022-12-08', NULL, 'TF TGL 7 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4187, 'AKTIF', 'Maretta Silvia Nurari', 'Della', 'floristsekardewata.com', 'Adi', '+62 819-9931-4724', 500000, 500000, '2020-08-08', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4188, 'AKTIF', 'Sri Eka Cesaria', 'Yusi', 'Besarkacafilmmedan.com', 'Ikhsan', '+62 813-7625-9506', 500000, 500000, '2019-10-08', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4189, 'AKTIF', 'Maulia Nursidik', 'Ragil', 'mjs.co.id', 'Slamet', '+62 878-5589-3636', 500000, 500000, '2021-04-08', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4190, 'AKTIF', 'Ade Bagus S', 'Zaqia', 'arsitekmakassar.com', 'Mursyal', '+62 852-4296-0911', 500000, 500000, '2022-02-08', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4191, 'AKTIF', 'Nurliah Gamar Safitri', 'Yossy', 'pritaotojasa.web.id', 'Venti', '+62 812-2236-4118', 500000, 500000, '2022-04-08', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4192, 'AKTIF', 'Maulia Nursidik', 'Ayu', 'rajapalletkayu.com', 'Yunus', '+62 812-2299-9022', 500000, 500000, '2021-12-08', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4193, 'AKTIF', 'Siti Masiri', 'Zaqia', 'shanhaimapid.com', '-', '+62 812-6164-1586', 500000, 500000, '2022-07-08', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4194, 'AKTIF', 'Devi Kumala', 'Ikmah', 'outboundbogor.co.id', '-', '-', 500000, 500000, '2022-09-08', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4195, 'AKTIF', 'Nurliah Gamar Safitri', 'Azzah', 'plafonpvcdepokbekasi.web.id', 'Tama', '81282232208', 500000, 500000, '2022-09-08', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4196, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Ikmah', 'virtuloji.id', '-', '-', 500000, 500000, '2022-09-08', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4197, 'AKTIF', 'Ade Bagus S', 'Ikmah', 'bahagianotaris.com', '-', '-', 500000, 500000, '2022-09-09', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4198, 'AKTIF', 'Azka Fairuzul M', 'Ikmah', 'djuandamitrasinergi.com', '-', '-', 500000, 500000, '2022-09-09', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4199, 'AKTIF', 'Ade Bagus S', 'Indri', 'vikajayaalumunium.com', '-', '-', 500000, 500000, '2022-11-09', NULL, 'TF TGL 9 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4200, 'AKTIF', 'Sri Eka Cesaria', 'Iin', 'hondajakartacenter.co.id', '-', '-', 500000, 500000, '2022-11-09', NULL, 'TF TGL 8 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4201, 'AKTIF', 'Atik Mulyani', 'Ayu', 'hyundaipasteurbandung.com', '-', '-', 500000, 500000, '2022-11-09', NULL, 'TF TGL 6 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4202, 'AKTIF', 'Nurliah Gamar Safitri', 'Azmi', 'sementahanapicastable.web.id', '-', '-', 500000, 500000, '2022-11-09', NULL, 'TF TGL 9 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4203, 'AKTIF', 'Maulia Nursidik', 'Ayu', 'sahamsyarikat77.com', '-', '-', 500000, 500000, '2022-11-09', NULL, 'TF TGL 5 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4204, 'AKTIF', 'Azka Fairuzul M', 'Imel', 'Jasa-trowel.com', '-', '-', 500000, 500000, '2022-11-09', NULL, 'TF TGL 7 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4205, 'AKTIF', 'Azka Fairuzul M', 'Wiwit', 'rajapulsasolusindo.com', '-', '-', 500000, 500000, '2022-12-09', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4206, 'AKTIF', 'Ade Bagus S', 'Rofi', 'wibowotravel.com', '-', '-', 500000, 500000, '2022-12-09', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4207, 'AKTIF', 'Devi Kumala', 'Aya', 'jasaspadanpijatjogja.com', '-', '-', 500000, 500000, '2022-12-09', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4208, 'AKTIF', 'Siti Masiri', 'Eka', 'ptcitraciptamanajemen.com', 'Ummu', '+62 819-3288-5620', 500000, 500000, '2021-06-09', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4209, 'AKTIF', 'Sri Eka Cesaria', 'Hasna', 'salesdaihatsusulut.com', 'Hasbi', '+62 853-2765-0442', 500000, 6000000, '2021-12-09', NULL, 'LUNAS BYR 1 THN ( DES 21 - NOV 22 )', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4210, 'AKTIF', 'Azka Fairuzul M', 'Ayu', 'ptindotranskonstruksi.com', 'Irfan', '+62 822-2736-5716', 500000, 500000, '2022-02-09', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4211, 'AKTIF', 'Devi Kumala', 'Aya', 'agrinursery.web.id', '-', '-', 500000, 500000, '2022-11-10', NULL, 'TF TGL 26 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4212, 'AKTIF', 'Nurul Rodiyah', 'Aya', 'produksirakbesi.com', '-', '-', 500000, 500000, '2022-09-10', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4213, 'AKTIF', 'Atik Mulyani', 'Azza', 'fashaautowrapp.com', '-', '-', 500000, 500000, '2022-12-10', NULL, 'TF TGL 29 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4214, 'AKTIF', 'Nurliah Gamar Safitri', 'Ikmah', 'konveksitaspurwodadi.com', '-', '-', 500000, 500000, '2022-12-10', NULL, 'TF TGL 8 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4215, 'AKTIF', 'Dikky Pradianto', 'Dian', 'arsikon.id', '-', '-', 500000, 500000, '2022-12-10', NULL, 'TF TGL 9 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4216, 'AKTIF', 'Maretta Silvia Nurari', 'Ayu', 'celinerentcarkupang.com', '-', '-', 500000, 500000, '2022-12-10', NULL, 'TF TGL 8 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4217, 'AKTIF', 'Maulia Nursidik', 'Aya', 'rentalparepare.com', '-', '-', 500000, 500000, '2022-12-10', NULL, 'TF TGL 9 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4218, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Bu Yusi', 'konveksipermata.com', 'Wiwin', '+62 813-2528-1389', 500000, 500000, '2020-06-10', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4219, 'AKTIF', 'Devi Kumala', 'Hasna', 'muktiwijoyosofa.com', 'Tatang', '+62 813-3396-4376', 500000, 500000, '2021-11-10', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4220, 'AKTIF', 'Maretta Silvia Nurari', 'Ayu', 'nirmalarentcar.com', '-', '-', 500000, 500000, '2022-11-10', NULL, 'TF TGL 7 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4221, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Nur', 'pulsachangerid.com', '-', '-', 500000, 500000, '2022-11-10', NULL, 'TF TGL 7 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4222, 'AKTIF', 'Sri Eka Cesaria', 'Isti', 'pembuatantendasurabaya.com', '-', '-', 500000, 500000, '2022-02-11', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4223, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Eka', 'ptbimasantosa.com', 'Bima', '+62 822-4080-4040', 500000, 500000, '2020-08-11', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4224, 'AKTIF', 'Azka Fairuzul M', 'Aya', 'outboundciwidey.com', 'Irawan', '+62 813-2171-3395', 500000, 500000, '2022-02-11', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4225, 'AKTIF', 'Nurliah Gamar Safitri', 'Aya', 'papanbungamedan-online.com', '-', '+62 823-0449-8351', 500000, 500000, '2022-05-11', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4226, 'AKTIF', 'Dikky Pradianto', 'Nurul', 'rpbexpress.com', 'Yuna', '+62 811-406-555', 500000, 500000, '2022-05-11', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4227, 'AKTIF', 'Maretta Silvia Nurari', 'Ayu', 'fantasy-tour.com', '-', '-', 500000, 500000, '2022-10-11', NULL, 'TF TGL 3 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4228, 'AKTIF', 'Nurul Rodiyah', 'Iin', 'edufuntour.id', '-', '-', 500000, 500000, '2022-10-11', NULL, 'TF TGL 6 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4229, 'AKTIF', 'Siti Masiri', 'Azmi', 'jasadplogistics.com', '-', '-', 500000, 500000, '2022-11-12', NULL, 'TF TGL 10 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4230, 'AKTIF', 'Dikky Pradianto', 'Azmi', 'berkahteknik.id', '-', '-', 500000, 500000, '2022-11-12', NULL, 'TF TGL 10 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4231, 'AKTIF', 'Ade Bagus S', 'Ayu', 'sanjatifurniture.com', '-', '-', 500000, 500000, '2022-11-12', NULL, 'TF TGL 8 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4232, 'AKTIF', 'Atik Mulyani', 'Dian', 'danatunaibpkbmotormobil.com', '-', '-', 500000, 500000, '2022-11-12', NULL, 'TF TGL 12 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4233, 'AKTIF', 'Nurliah Gamar Safitri', 'Azmi', 'atsrentcarmedanindonesia.com', '-', '-', 500000, 500000, '2022-11-12', NULL, 'TF TGL 11 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4234, 'AKTIF', 'Maulia Nursidik', 'Ayu', 'hyundaibigpromo.web.id', '-', '-', 500000, 500000, '2022-11-12', NULL, 'TF TGL 9 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4235, 'AKTIF', 'Azka Fairuzul M', 'Ikmah', 'ideakonstruksi.com', '-', '-', 500000, 500000, '2022-12-12', NULL, 'TF TGL 5 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4236, 'AKTIF', 'Ade Bagus S', 'Wiwit', 'jasaimportexport.com', '-', '-', 500000, 500000, '2022-12-12', NULL, 'TF TGL 6 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4237, 'AKTIF', 'Sri Eka Cesaria', 'Azza', 'canditour.com', '-', '-', 500000, 500000, '2022-12-12', NULL, 'TF TGL 12 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4238, 'AKTIF', 'Devi Kumala', 'Wiwit', 'pengobatanalatvitall.web.id', '-', '-', 500000, 500000, '2022-12-12', NULL, 'TF TGL 11 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4239, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Ayu', 'subhanrentalmobilbanjarmasin.com', '-', '-', 500000, 500000, '2022-12-12', NULL, 'TF TGL 11 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4240, 'AKTIF', 'Devi Kumala', '-', 'cajofoods.co.id', '-', '-', 500000, 500000, '2022-08-12', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4241, 'AKTIF', 'Maretta Silvia Nurari', 'Ayu', 'alendraflorist.com', 'Yulianto', '6281250000000', 500000, 500000, '2022-08-12', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4242, 'AKTIF', 'Siti Masiri', 'Zaqia', 'bandarjayameubel.com', '-', '-', 500000, 500000, '2022-09-12', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4243, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Liza', 'rollerblindshanny.com', 'Shanny', '+62 851-0015-3955', 500000, 500000, '2021-07-12', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4244, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Devi', 'coolboxsby.com', 'Deni', '+62 822-4590-4466', 500000, 450000, '2021-03-12', NULL, 'LUNAS (450.000)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4245, 'AKTIF', 'Siti Masiri', 'Ervin', 'jasasewaforkliftbogor.web.id', 'Ahmad', '+62 852-8216-0888', 500000, 500000, '2022-01-12', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4246, 'AKTIF', 'Ade Bagus S', 'Aya', 'cargobestlog.com', 'Wasno', '+62 812-8129-2492', 500000, 500000, '2022-02-12', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4247, 'AKTIF', 'Siti Masiri', 'Liza', 'klikiriprinting.com', 'Ari', '+62 838-5795-7705', 500000, 500000, '2022-03-12', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4248, 'AKTIF', 'Siti Masiri', 'Hasna', 'atapasphalt.com', 'Ana', '+62 812-8090-1005', 500000, 500000, '2021-04-12', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4249, 'AKTIF', 'Siti Masiri', 'Dian', 'suksesmandirijaya.net', '-', '-', 500000, 500000, '2022-10-12', NULL, 'TF TGL 11 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4250, 'AKTIF', 'Sri Eka Cesaria', 'Ikmah', 'bandar-kardus.com', '-', '-', 500000, 500000, '2022-10-12', NULL, 'TF TGL 6 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4251, 'AKTIF', 'Nurliah Gamar Safitri', 'Azmi', 'lilinfairshop.com', 'Ernie', '-', 500000, 500000, '2022-10-12', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4252, 'AKTIF', 'Atik Mulyani', 'Ayu', 'pabrikbatubata.com', '-', '-', 500000, 500000, '2022-12-13', NULL, 'TF TGL 10 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4253, 'AKTIF', 'Nurul Rodiyah', 'Ayu', 'ogiiflorist.com', '-', '-', 500000, 500000, '2022-12-13', NULL, 'TF TGL 8 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4254, 'AKTIF', 'Nurliah Gamar Safitri', 'Ayu', 'ozi-jaya-battery.web.id', '-', '-', 500000, 500000, '2022-12-13', NULL, 'TF TGL 12 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4255, 'AKTIF', 'Maretta Silvia Nurari', 'Ayu', 'transportbalikpapan.com', '-', '-', 500000, 500000, '2022-12-13', NULL, 'TF TGL 8 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4256, 'AKTIF', 'Siti Masiri', 'Azmi', 'jasakontraktorjogja.web.id', '-', '-', 500000, 2750000, '2022-12-13', NULL, 'TF TGL 12 DES 2,750 (DES 22 - MEI 23)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4257, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Ayu', 'sabilahholidaystour.com', '-', '-', 500000, 500000, '2022-12-13', NULL, 'TF TGL 12 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4258, 'AKTIF', 'Maretta Silvia Nurari', '-', 'insurinadhiraya.com', 'Andi Surayya', '6281250000000', 500000, 500000, '2021-08-13', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4259, 'AKTIF', 'Dikky Pradianto', 'Hasna', 'ciptacutting.com', 'Hadi', '+62 812-8531-9641', 500000, 500000, '2021-11-13', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4260, 'AKTIF', 'Maulia Nursidik', 'Aya', 'jasakolamrenangjakarta.com', 'Tamrin', '6281510000000', 500000, 500000, '2021-11-13', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4261, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Zaqia', 'orec-gratiaagro.com', '-', '-', 500000, 450000, '2022-01-13', NULL, 'LUNAS (450.000)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4262, 'AKTIF', 'Azka Fairuzul M', 'Aya', 'indoreklame.com', 'Iqbal', '+62 811-278-488', 500000, 500000, '2022-08-13', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4263, 'AKTIF', 'Maulia Nursidik', '-', 'sertifikasismk3.id', 'Imam', '+62 878-7505-3930', 400000, 500000, '2021-08-13', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4264, 'AKTIF', 'Dikky Pradianto', 'Rosa', 'agent-bankgaransi.com', 'Darmawan', '0812-9666-5251', 500000, 500000, '2022-10-13', NULL, 'TF TGL 13 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4265, 'AKTIF', 'Azka Fairuzul M', 'Aya', 'palletplastik.co.id', '-', '-', 500000, 500000, '2022-10-13', NULL, 'TF TGL 12 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4266, 'AKTIF', 'Devi Kumala', 'Eva', 'visadunia.com', '-', '-', 500000, 500000, '2022-10-13', NULL, 'TF TGL 13 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4267, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Ayu', 'renovasidanbangunanrumahsurabaya.web.id', '-', '-', 500000, 500000, '2022-10-13', NULL, 'TF TGL 12 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4268, 'AKTIF', 'Siti Masiri', 'Aya', 'servisacsurabaya.xyz', '-', '-', 500000, 500000, '2022-11-14', NULL, 'TF TGL 3 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4269, 'AKTIF', 'Nurul Rodiyah', 'Ayu', 'cvsedotwcamanah.com', '-', '+62 815-1571-7082', 500000, 500000, '2022-05-14', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4270, 'AKTIF', 'Dikky Pradianto', 'Aya', 'murthiyuwonodental.com', 'Murthi', '+62 816-745-246', 500000, 500000, '2022-07-14', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4271, 'AKTIF', 'Ade Bagus S', 'Zaqia', 'tepipantaibali.com', 'I Wayan Juliantara', '+62 852-3872-6667', 500000, 500000, '2022-07-14', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4272, 'AKTIF', 'Azka Fairuzul M', 'Zaqia', 'oespratamaindonesia.com', 'Adi', '+62 812-5813-0005', 500000, 500000, '2022-07-14', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4273, 'AKTIF', 'Siti Masiri', 'Azmi', 'vifonplafonpvc.com', 'Linda', '81384541218', 500000, 500000, '2022-10-14', NULL, 'TF TGL 13 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4274, 'AKTIF', 'Sri Eka Cesaria', 'Azmi', 'rollerblindsolo.com', 'Linda', '81384541218', 500000, 500000, '2022-10-14', NULL, 'TF TGL 13 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4275, 'AKTIF', 'Maulia Nursidik', 'Azmi', 'onnasolo.com', 'Linda', '81384541218', 500000, 500000, '2022-10-14', NULL, 'TF TGL 13 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4276, 'AKTIF', 'Dikky Pradianto', 'Rosa', 'tigologistics.com', 'Fery', '87770035377', 500000, 500000, '2022-10-14', NULL, 'TF TGL 13 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4277, 'AKTIF', 'Ade Bagus S', 'Wiwit', 'danatunaisyariah.com', '-', '-', 500000, 500000, '2022-12-15', NULL, 'TF TGL 13 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4278, 'AKTIF', 'Devi Kumala', 'Rosa', 'sumberair-palem.com', '-', '-', 500000, 500000, '2022-12-15', NULL, 'TF TGL 14 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4279, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Putri', 'serawaigroup.com', 'Arya', '6285660000000', 500000, 500000, '2022-09-15', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4280, 'AKTIF', 'Nurul Rodiyah', 'Azmi', 'bengkellasriskijayasteel.com', '-', '-', 500000, 500000, '2022-09-15', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4281, 'AKTIF', 'Azka Fairuzul M', 'Liza', 'Tirta-semesta.com', 'Bayu', '+62 857-3103-1388', 500000, 2750000, '2022-02-15', NULL, 'BYR AGUSTUS 22 - JANUARI 23 ( 2.750.000 )', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4282, 'AKTIF', 'Ade Bagus S', 'Zaqia', 'rollingdoorpekalongan.web.id', 'Akbar', '+62 813-6309-7915', 500000, 500000, '2022-07-15', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4283, 'AKTIF', 'Azka Fairuzul M', 'Azmi', 'pengobatanalatvitalsolo.web.id', '-', '-', 500000, 500000, '2022-11-16', NULL, 'TF TGL 15 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4284, 'AKTIF', 'Maretta Silvia Nurari', 'Azmi', 'mitsubishipurijakarta.com', '-', '-', 500000, 500000, '2022-11-16', NULL, 'TF TGL 14 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4285, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Azmi', 'kelanaastaprana.com', '-', '-', 500000, 500000, '2022-11-16', NULL, 'TF TGL 14 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4286, 'AKTIF', 'Devi Kumala', 'Azmi', 'aleenatrans.co.id', '-', '-', 500000, 500000, '2022-11-16', NULL, 'TF TGL 12 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4287, 'AKTIF', 'Atik Mulyani', 'Nur', 'garansinusantara.com', '-', '-', 500000, 500000, '2022-11-16', NULL, 'TF TGL 15 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4288, 'AKTIF', 'Dikky Pradianto', 'Dian', 'francputrajaya.com', '-', '-', 500000, 500000, '2022-11-16', NULL, 'TF TGL 15 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4289, 'AKTIF', 'Dikky Pradianto', 'Azmi', 'mitsubishi-sby.id', '-', '-', 500000, 500000, '2022-12-16', NULL, 'TF TGL 15 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4290, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Azmi', 'khoswah.co.id', '-', '-', 500000, 500000, '2022-12-16', NULL, 'TF TGL 15 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4291, 'AKTIF', 'Maulia Nursidik', 'Azmi', 'ptmitragroupperkasa.com', '-', '-', 500000, 500000, '2022-12-16', NULL, 'TF TGL 15 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4292, 'AKTIF', 'Nurliah Gamar Safitri', 'Iin', 'gadaibpkbadirafinnace.com', '-', '-', 500000, 500000, '2022-12-16', NULL, 'TF TGL 14 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4293, 'AKTIF', 'Atik Mulyani', 'Azmi', 'indahfloristjakarta.com', '-', '-', 500000, 500000, '2022-12-16', NULL, 'TF TGL 15 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4294, 'AKTIF', 'Sri Eka Cesaria', 'Rofi', 'klinikbekamalfathsamarinda.web.id', '-', '-', 500000, 500000, '2022-12-16', NULL, 'TF TGL 16 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4295, 'AKTIF', 'Maretta Silvia Nurari', 'Azmi', 'jualbelimobilbekasparungbogor.com', '-', '-', 500000, 500000, '2022-12-16', NULL, 'TF TGL 16 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4296, 'AKTIF', 'Maretta Silvia Nurari', 'Hasna', 'servisinverter.com', '-', '+62 813-5777-4747', 500000, 500000, '2020-09-16', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4297, 'AKTIF', 'Siti Masiri', 'Zaqia', 'filterahu.co.id', 'Sundaya', '+62 812-9011-0788', 500000, 500000, '2020-12-16', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4298, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Liza', 'karyasumberpacking.com', 'Mulyadi', '+62 815-8539-3092', 500000, 500000, '2021-11-16', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4299, 'AKTIF', 'Nurliah Gamar Safitri', 'Azmi', 'gamasquare.co.id', '-', '+62 878-5589-3636', 500000, 500000, '2022-04-16', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4300, 'AKTIF', 'Sri Eka Cesaria', 'Zaqia', 'lanturarchitect.com', 'Endra', '+62 822-3322-3179', 500000, 400000, '2021-09-16', NULL, 'LUNAS (RP400.000)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4301, 'AKTIF', 'Sri Eka Cesaria', 'Devi', 'tukangrumahku.com', 'Aris', '+62 813-1675-1540', 500000, 500000, '2021-03-16', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4302, 'AKTIF', 'Siti Masiri', 'Azmi', 'firstmediabekasi.com', 'Zezen', '6282120000000', 500000, 500000, '2022-07-16', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4303, 'AKTIF', 'Sri Eka Cesaria', 'Ayu', 'channelpenidatour.com', 'I Wayan Suastra', '+62 813-5331-0323', 500000, 500000, '2022-07-16', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4304, 'AKTIF', 'Siti Masiri', 'Aya', 'angelrentalbandung.com', '-', '-', 500000, 500000, '2022-08-16', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4305, 'AKTIF', 'Dikky Pradianto', 'Azmi', 'tokobesianugrahindobaja.com', '-', '-', 500000, 500000, '2022-08-16', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4306, 'AKTIF', 'Nurliah Gamar Safitri', 'Ayu', 'reksafloristtangerang.com', '-', '-', 500000, 500000, '2022-08-16', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4307, 'AKTIF', 'Sri Eka Cesaria', 'Iin', 'oneday-trip.com', '-', '-', 500000, 500000, '2022-11-17', NULL, 'TF TGL 14 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4308, 'AKTIF', 'Ade Bagus S', 'Ikmah', 'evengsticker.com', '-', '-', 500000, 1000000, '2022-11-17', NULL, 'TF TGL 11 NOV TF 1JT (NOV - DES)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4309, 'AKTIF', 'Nurliah Gamar Safitri', 'Niken', 'rf-florist.com', '-', '-', 500000, 500000, '2022-11-17', NULL, 'TF TGL 16 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4310, 'AKTIF', 'Maulia Nursidik', 'Nur', 'ozonegenerator.co.id', '-', '-', 500000, 5500000, '2022-11-17', NULL, 'TF TGL 16 NOV TF 5,5JT LUNAS 12 BLN (NOV - OKT 23)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4311, 'AKTIF', 'Azka Fairuzul M', 'Azmi', 'rifalfashion.web.id', '-', '-', 500000, 500000, '2022-12-17', NULL, 'TF TGL 16 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4312, 'AKTIF', 'Devi Kumala', 'Lia', 'inkalumalumax.com', 'Jansen', '+62 815-1009-2243', 500000, 500000, '2021-09-17', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4313, 'AKTIF', 'Azka Fairuzul M', 'Azzah', 'palletplastikbandung.com', '-', '-', 500000, 500000, '2022-09-17', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4314, 'AKTIF', 'Atik Mulyani', 'Ikmah', 'tourtravelpahawang.com', '-', '-', 500000, 500000, '2022-09-17', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4315, 'AKTIF', 'Nurul Rodiyah', 'Dian', 'triaryapondasi.com', 'Sujiarto', '81384109901', 500000, 500000, '2022-09-17', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4316, 'AKTIF', 'Sri Eka Cesaria', 'Liza', 'rumahcctvsidoarjo.com', 'Aldo', '+62 811-3616-690', 500000, 500000, '2022-03-17', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4317, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Ayu', 'cbsguard.com', 'Niki', '+62 813-1506-7908', 500000, 500000, '2022-03-17', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4318, 'AKTIF', 'Devi Kumala', 'Liza', 'rentalindoscaffolding.web.id', 'Humaidi', '6287720000000', 500000, 500000, '2021-09-17', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4319, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Liza', 'Boavistarentcar.co.id', '-', '-', 500000, 500000, '2020-09-17', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4320, 'AKTIF', 'Siti Masiri', 'Ikmah', 'artopodomoro.com', '-', '-', 500000, 500000, '2022-10-18', NULL, 'TF TGL 11 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4321, 'AKTIF', 'Maulia Nursidik', 'Mita', 'sewaforkliftcrane.com', 'Imam', '+62 877-3000-0268', 500000, 500000, '2021-06-18', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4322, 'AKTIF', 'Dikky Pradianto', 'Zaqia', 'putrainsanmandiri.com', 'Yudi', '+62 821-2225-5589', 500000, 500000, '2022-01-18', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4323, 'AKTIF', 'Devi Kumala', 'Cindy', 'tukangcitramaja.com', 'Wildan', '+62 838-9074-2829', 500000, 500000, '2022-02-18', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4324, 'AKTIF', 'Maretta Silvia Nurari', 'Ikmah', 'bgardplus.com', '-', '-', 500000, 500000, '2022-06-18', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4325, 'AKTIF', 'Ade Bagus S', 'Ikmah', 'niagakontainer.com', '-', '6285170000000', 500000, 500000, '2022-08-19', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4326, 'AKTIF', 'Siti Masiri', 'Azmi', 'mastonkontraktor.com', '-', '-', 500000, 500000, '2022-11-19', NULL, 'TF TGL 17 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4327, 'AKTIF', 'Maretta Silvia Nurari', 'Aya', 'auliabajanusantara.com', '-', '-', 500000, 500000, '2022-11-19', NULL, 'TF TGL 14 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4328, 'AKTIF', 'Devi Kumala', 'Iin', 'klinikmakerotsukabumi.com', '-', '-', 500000, 500000, '2022-11-19', NULL, 'TF TGL 17 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4329, 'AKTIF', 'Dikky Pradianto', 'Aya', 'terapivitalitascisolok.web.id', '-', '-', 500000, 500000, '2022-11-19', NULL, 'TF TGL 14 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4330, 'AKTIF', 'Atik Mulyani', 'Aya', 'birawatrans.web.id', '-', '-', 500000, 500000, '2022-11-19', NULL, 'TF TGL 16 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4331, 'AKTIF', 'Nurul Rodiyah', 'Azmi', 'aismedika.com', '-', '-', 500000, 500000, '2022-12-19', NULL, 'TF TGL 17 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4332, 'AKTIF', 'Ade Bagus S', 'Ayu', 'mulyamahkota.com', '-', '-', 500000, 500000, '2022-12-19', NULL, 'TF TGL 17 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4333, 'AKTIF', 'Nurul Rodiyah', 'Azmi', 'busaspringbed.com', '-', '-', 500000, 500000, '2022-12-19', NULL, 'TF TGL 16 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4334, 'AKTIF', 'Nurliah Gamar Safitri', 'Eva', 'zahramassagejkt.com', 'Erick', '818210487', 500000, 3000000, '2022-09-19', NULL, 'TF TGL 18 SEPT 3JT ( SEPT 22 - FEB 23)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4335, 'AKTIF', 'Nurul Rodiyah', 'Ayu', 'gayaindahperkasa.com', '-', '-', 500000, 500000, '2022-08-19', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4336, 'AKTIF', 'Sri Eka Cesaria', 'Rofi', 'besitempaklasiksurabaya.com', 'Romi Gius', '82141546636', 500000, 500000, '2022-10-19', NULL, 'TF TGL 19 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4337, 'AKTIF', 'Maulia Nursidik', 'Putri', 'konveksijakartamurah.com', '-', '-', 500000, 500000, '2022-10-19', NULL, 'TF TGL 15 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4338, 'AKTIF', 'Dikky Pradianto', 'Ikmah', 'desaininterior-jogja.com', 'Pras', '81315093377', 500000, 500000, '2022-10-19', NULL, 'TF TGL 17 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4339, 'AKTIF', 'Maulia Nursidik', 'Cindy', 'berliansejahtera.co.id', 'Yusuf', '-', 500000, 500000, '2022-01-19', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4340, 'AKTIF', 'Azka Fairuzul M', 'Imel', 'dunialakban.com', '-', '-', 500000, 500000, '2022-10-19', NULL, 'TF TGL 13 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4341, 'AKTIF', 'Maulia Nursidik', 'Friska', 'trijayalasdecoration.com', '-', '-', 500000, 500000, '2020-12-19', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4342, 'AKTIF', 'Sri Eka Cesaria', 'Eka', 'petergo.id', 'Petrus', '6281210000000', 500000, 500000, '2021-07-19', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4343, 'AKTIF', 'Dikky Pradianto', 'Zaqia', 'cahayanusantarakita.com', '-', '6282260000000', 500000, 500000, '2022-05-19', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4344, 'AKTIF', 'Siti Masiri', 'Ayu', 'sinarprimamaju.com', 'Tika', '628972000000', 500000, 500000, '2021-10-20', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4345, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Liza', 'dhipaadistajusticia.web.id', 'Mario', '+62 813-8426-4417', 500000, 500000, '2022-01-20', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4346, 'AKTIF', 'Maretta Silvia Nurari', 'Regina', 'kampungarab.id', 'Muslikhin', '+62 857-4977-0920', 500000, 500000, '2022-08-20', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4347, 'AKTIF', 'Nurul Rodiyah', 'Lintang', 'certificatetoeflexpress.web.id', '-', '-', 500000, 500000, '2022-12-20', NULL, 'TF TGL 7 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4348, 'AKTIF', 'Nurul Rodiyah', 'Azza', 'lomboktours.id', '-', '-', 500000, 500000, '2022-12-20', NULL, 'TF TGL 20 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4349, 'AKTIF', 'Nurul Rodiyah', 'Azmi', 'd3pools.com', '-', '-', 500000, 500000, '2022-12-20', NULL, 'TF TGL 20 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4350, 'AKTIF', 'Dikky Pradianto', 'Meta', 'kamogroup.id', 'Dela', '+62 831-8296-1261', 500000, 500000, '2022-04-21', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4351, 'AKTIF', 'Nurliah Gamar Safitri', 'Nurul', 'jiwamudaindo.com', 'Ari', '+62 811-2604-1975', 500000, 500000, '2022-04-21', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4352, 'AKTIF', 'Sri Eka Cesaria', 'Liza', 'lifindo.com', 'Agustino', '6282330000000', 500000, 1500000, '2022-04-21', NULL, 'TF 24 SEPTEMBER (SEPTEMBER S/D NOVEMBER)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4353, 'AKTIF', 'Dikky Pradianto', 'Iin', 'kreditadirafinance.com', 'Susan', '6281290000000', 500000, 500000, '2022-07-21', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4354, 'AKTIF', 'Nurul Rodiyah', 'Iin', 'alfainterior.web.id', 'Lili', '+62 812-9781-2292', 500000, 500000, '2022-07-21', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4355, 'AKTIF', 'Atik Mulyani', 'Ayu', 'jasaimportextile.com', '-', '-', 500000, 500000, '2022-12-21', NULL, 'TF TGL 17 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4356, 'AKTIF', 'Nurul Rodiyah', 'Wiwit', 'nusapenidaholidaytours.com', '-', '-', 500000, 500000, '2022-12-21', NULL, 'TF TGL 16 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4357, 'AKTIF', 'Maulia Nursidik', 'Ikmah', 'villa-dibatu.com', '-', '-', 500000, 500000, '2022-12-21', NULL, 'TF TGL 18 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4358, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Dian', 'restocateringmakgaul.com', '-', '-', 500000, 500000, '2022-12-21', NULL, 'TF TGL 6 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4359, 'AKTIF', 'Nurul Rodiyah', 'Eva', 'toba-caldera.com', 'Syafrida Nasution', '81233334068', 500000, 1000000, '2022-09-21', NULL, 'TF TGL 21 SEPT 1JT (SEPT - OKT)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4360, 'AKTIF', 'Ade Bagus S', 'Dian', 'sedotwcmitrajayaabadi.com', 'Deni Andria', '85748444191', 500000, 500000, '2022-10-21', NULL, 'TF TGL 17 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4361, 'AKTIF', 'Devi Kumala', 'Wulan', 'suryapart.com', 'Susan Hartono', '628113000000', 500000, 1000000, '2022-01-22', NULL, 'LUNAS TF 27 SEPTEMBER ( SEPTEMBER - OKTOBER)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4362, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Liza', 'rumahitsidoarjo.com', 'Aldo', '628114000000', 500000, 500000, '2022-01-22', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4363, 'AKTIF', 'Devi Kumala', 'Aya', 'pusatbibitikanmurahkediri.com', 'Siswo Haryoko', '+62 852-1384-8353', 500000, 500000, '2022-06-22', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4364, 'AKTIF', 'Sri Eka Cesaria', 'Rifa', 'anekaforkliftindonesia.com', 'Danang', '6281330000000', 500000, 500000, '2022-07-22', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4365, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Bu Yusi', 'Bhp.co.id', 'Bob', '+62 811-2998-808', 750000, 500000, '2019-07-01', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4366, 'AKTIF', 'Azka Fairuzul M', 'Azmi', 'centralteknik-service.com', '-', '-', 500000, 500000, '2022-11-22', NULL, 'TF TGL 21 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4367, 'AKTIF', 'Nurliah Gamar Safitri', 'Azmi', 'pengobatanvitalitaspapua.web.id', '-', '-', 500000, 500000, '2022-11-22', NULL, 'TF TGL 21 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4368, 'AKTIF', 'Maulia Nursidik', 'Azmi', 'pengobatanalatvitalsumatra.web.id', '-', '-', 500000, 500000, '2022-11-22', NULL, 'TF TGL 21 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4369, 'AKTIF', 'Siti Masiri', 'Niken', 'triaadara14.com', '-', '-', 500000, 500000, '2022-11-22', NULL, 'TF TGL 21 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4370, 'AKTIF', 'Maretta Silvia Nurari', 'Azmi', 'azzahracctv.com', '-', '-', 500000, 500000, '2022-11-22', NULL, 'TF TGL 21 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4371, 'AKTIF', 'Devi Kumala', 'Dian', 'jasatroweljakarta.com', '-', '-', 500000, 500000, '2022-11-22', NULL, 'TF TGL 20 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4372, 'AKTIF', 'Devi Kumala', 'Wiwit', 'ptpinasthikaciptapersadageneralcontractor.com', '-', '-', 500000, 500000, '2022-12-22', NULL, 'TF TGL 22 DES', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4373, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Bu Yusi', 'aisyacatering.com', 'Toni', '+62 858-5222-1811', 500000, 500000, '2019-07-10', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4374, 'AKTIF', 'Nurliah Gamar Safitri', 'Azmi', 'sinarjayaflorist.com', 'Linda', '+62 812-1387-1325', 500000, 500000, '2022-02-23', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4375, 'AKTIF', 'Nurul Rodiyah', 'Aya', 'jasakebocoran.com', 'Elman', '+62 813-1124-6132', 500000, 500000, '2022-06-23', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4376, 'AKTIF', 'Nurul Rodiyah', 'Eva', 'massagespajengsri.com', '-', '6285780000000', 500000, 500000, '2022-06-23', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4377, 'AKTIF', 'Maretta Silvia Nurari', 'Liza', 'jasakonsultanperizinan.com', 'reza', '6281290000000', 500000, 500000, '2021-08-23', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4378, 'AKTIF', 'Nurliah Gamar Safitri', 'Zaqia', 'dam.co.id', '-', '-', 500000, 500000, '2022-08-23', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4379, 'AKTIF', 'Atik Mulyani', 'Azmi', 'yayasanquranpapua.com', '-', '-', 500000, 2000000, '2022-11-23', NULL, 'TF TGL 23 NOV 2JT (NOV 22 - FEB 23)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4380, 'AKTIF', 'Nurliah Gamar Safitri', 'Azmi', 'arkamultiteknik.web.id', '-', '-', 500000, 500000, '2022-11-23', NULL, 'TF TGL 22 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4381, 'AKTIF', 'Siti Masiri', 'Liza', 'sewamobildimedan.com', 'Rizaldi', '6281260000000', 500000, 500000, '2021-02-23', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4382, 'AKTIF', 'Sri Eka Cesaria', 'Zaqia', 'putrajayakursusmengemudi.com', '-', '+62 878-8526-7987', 500000, 500000, '2020-12-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4383, 'AKTIF', 'Dikky Pradianto', 'Zaqia', 'jayaabadialuminiumawin.com', '-', '-', 500000, 500000, '2021-05-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4384, 'AKTIF', 'Azka Fairuzul M', 'Liza', 'kubahsinarpusaka.com', '-', '+62 813-2304-4828', 500000, 500000, '2021-12-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4385, 'AKTIF', 'Devi Kumala', 'Iin', 'jeepwisataborobudur.com', 'Bayu', '+62 817-0555-359', 500000, 500000, '2022-01-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4386, 'AKTIF', 'Nurliah Gamar Safitri', 'Zaqia', 'serviceacsamarinda.com', '-', '-', 500000, 500000, '2022-05-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4387, 'AKTIF', 'Sri Eka Cesaria', 'Aya', 'floristsiantar.com', '-', '+62 812-9333-1579', 500000, 500000, '2022-05-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4388, 'AKTIF', 'Nurliah Gamar Safitri', 'Zaqia', 'bengkelfiberoptic.com', 'Farid', '+62 812-1035-8888', 500000, 500000, '2022-06-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4389, 'AKTIF', 'Maulia Nursidik', 'Liza', 'mahkotapremiumcar.com', 'Safiul Anam', '+62 813-5717-1590', 500000, 500000, '2021-06-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4390, 'AKTIF', 'Nurliah Gamar Safitri', 'Iin', 'kacafilmbergaransi.com', '-', '-', 500000, 500000, '2022-05-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4391, 'AKTIF', 'Nurul Rodiyah', 'Wiwit', 'tripnusapenidaisland.com', '-', '-', 500000, 500000, '2022-11-24', NULL, 'TF TGL 24 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4392, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Azmi', 'yukbelajarbahasajepang.com', '-', '-', 500000, 500000, '2022-11-24', NULL, 'TF TGL 24 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4393, 'AKTIF', 'Sri Eka Cesaria', 'Dian', 'umkacaalmunium.com', '-', '-', 500000, 500000, '2022-11-24', NULL, 'TF TGL 22 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4394, 'AKTIF', 'Dikky Pradianto', 'Azmi', 'iqualityrentcar.com', '-', '-', 500000, 500000, '2022-11-24', NULL, 'TF TGL 24 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4395, 'AKTIF', 'Maulia Nursidik', 'Ayu', 'jayamerdekascaffolding.com', '-', '-', 500000, 500000, '2022-11-24', NULL, 'TF TGL 22 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4396, 'AKTIF', 'Siti Masiri', 'Aya', 'pembeliakibekastangerang.com', '-', '-', 500000, 500000, '2022-12-24', NULL, 'TF TGL 28 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4397, 'AKTIF', 'Maretta Silvia Nurari', 'Liza', 'floristbungadepok.com', 'Nur', '+62 856-9207-2577', 500000, 500000, '2022-01-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4398, 'AKTIF', 'Sri Eka Cesaria', 'Azmi', 'amiradecor.com', 'Agam', '87876402421', 500000, 500000, '2022-09-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4399, 'AKTIF', 'Maretta Silvia Nurari', 'Rifa', 'pengrajin-tembaga-kuningan.com', 'Surawan', '81266589898', 500000, 500000, '2022-09-24', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4400, 'AKTIF', 'Devi Kumala', 'Liza', 'notarisromasukmawati.com', 'Roma', '+62 812-3000-5782', 500000, 500000, '2022-03-25', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4401, 'AKTIF', 'Siti Masiri', 'Cindy', 'bayakcargo.com', '-', '-', 500000, 450000, '2022-01-25', NULL, 'LUNAS (450RB)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4402, 'AKTIF', 'Siti Masiri', 'Zaqia', 'wulansariflorist.com', '-', '+62 812-8953-1633', 500000, 500000, '2022-04-25', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4403, 'AKTIF', 'Dikky Pradianto', 'Wulan', 'jjinteriorcollection.com', 'Audrey', '+62 813-1000-6182', 500000, 500000, '2022-04-25', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4404, 'AKTIF', 'Dikky Pradianto', 'Azmi', 'hwinganjuk.com', 'Widia Wulan Fitri', '+62 857-0613-3326', 500000, 500000, '2022-04-25', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4405, 'AKTIF', 'Maretta Silvia Nurari', 'Liza', 'enggaldadi.com', '-', '-', 500000, 500000, '2021-08-25', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4406, 'AKTIF', 'Sri Eka Cesaria', 'Aya', 'amfalahabadan.com', '-', '-', 500000, 500000, '2022-10-25', NULL, 'TF TGL 7 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4407, 'AKTIF', 'Maulia Nursidik', 'Aya', 'prabumotormercedesbenz.com', '-', '-', 500000, 500000, '2022-10-25', NULL, 'TF TGL 28 SEPT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4408, 'AKTIF', 'Siti Masiri', 'Hasna', 'serviceacbandungcimahi.com', 'Nia', '6285320000000', 500000, 500000, '2020-08-26', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4409, 'AKTIF', 'Maretta Silvia Nurari', 'Zaqia', 'meccateknik.com', 'Atikah', '+62 838-1329-8889', 500000, 500000, '2022-01-26', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4410, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Liza', 'darylinteriorcikarang.com', '-', '-', 500000, 500000, '2022-01-26', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4411, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Ayu', 'anplawyers.id', '-', '-', 500000, 5500000, '2022-08-26', NULL, 'TF TGL 22 AGT 5,5JT (AGT 22 - JULI 23)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4412, 'AKTIF', 'Azka Fairuzul M', 'Azmi', 'arifindostonekreasi.co.id', '-', '-', 500000, 500000, '2022-11-26', NULL, 'TF TGL 22 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4413, 'AKTIF', 'Maretta Silvia Nurari', 'Wiwit', 'farizrentcar.com', '-', '-', 500000, 500000, '2022-11-26', NULL, 'TF TGL 25 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4414, 'AKTIF', 'Maulia Nursidik', 'Rofi', 'lombokluxurytourntravel.com', '-', '-', 500000, 500000, '2022-11-26', NULL, 'TF TGL 25 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4415, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Dian', 'azharlandscape.com', '-', '-', 500000, 500000, '2022-11-26', NULL, 'TF TGL 26 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4416, 'AKTIF', 'Sri Eka Cesaria', 'Imel', 'bengkellaskanopimurah.com', '-', '-', 500000, 500000, '2022-11-26', NULL, 'TF TGL 26 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4417, 'AKTIF', 'Devi Kumala', 'Wiwit', 'paletplastikabijaya.com', '-', '-', 500000, 500000, '2022-11-26', NULL, 'TF TGL 24 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4418, 'AKTIF', 'Devi Kumala', 'Liza', 'rombengsurabaya.com', 'Sutrisno', '+62 881-9577-053', 500000, 500000, '2021-09-27', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4419, 'AKTIF', 'Maulia Nursidik', 'Azmi', 'aksamandiripools.com', 'Aldi', '+62 812-8148-7691', 500000, 500000, '2022-05-27', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4420, 'AKTIF', 'Sri Eka Cesaria', 'Della', 'bintangtowing.com', '-', '-', 500000, 500000, '2020-07-27', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4421, 'AKTIF', 'Sri Eka Cesaria', 'Della', 'terapipeninggibadansemarang.com', 'Ridwan', '+62 852-2537-4555', 500000, 500000, '2020-07-27', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4422, 'AKTIF', 'Devi Kumala', 'Ayu', 'harga-mitsubishibatam.com', 'Ronald Kevin', '+62 821-2615-5962', 500000, 400000, '2021-09-27', NULL, 'LUNAS(400RB)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4423, 'AKTIF', 'Dikky Pradianto', 'Ikmah', 'warkopgestun.com', '-', '-', 500000, 500000, '2022-09-27', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4424, 'AKTIF', 'Sri Eka Cesaria', 'Cindy', 'arthamandiri40.com', '-', '+62 812-3554-3999', 500000, 500000, '2022-04-28', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4425, 'AKTIF', 'Nurliah Gamar Safitri', 'Ayu', 'bengkelspesialismobilhondabandung.com', 'Alqodri Nuh', '+62 818-618-887', 500000, 450000, '2022-05-28', NULL, 'LUNAS (RP. 450.000)', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4426, 'AKTIF', 'Maulia Nursidik', 'Zaqia', 'sariglasskacapatri.com', '-', '-', 500000, 500000, '2021-12-28', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4427, 'AKTIF', 'Devi Kumala', 'Eka', 'ni-balikpapaninterior.com', '-', '-', 500000, 500000, '2021-07-28', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4428, 'AKTIF', 'Moh. Khoiri Habibulloh', 'Eka', 'palletbekas.com', '-', '-', 500000, 500000, '2020-12-28', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4429, 'AKTIF', 'Maulia Nursidik', 'Devi', 'tokogordensemarang.com', 'Toni Onna Wa', '+62 878-3225-3244', 500000, 500000, '2020-10-28', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4430, 'AKTIF', 'Atik Mulyani', 'Ayu', 'ourcitrustasik.web.id', '-', '-', 500000, 500000, '2022-11-28', NULL, 'TF TGL 23 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4431, 'AKTIF', 'Ade Bagus S', 'Ayu', 'jayarollingdoor.com', '-', '-', 500000, 500000, '2022-11-28', NULL, 'TF TGL 26 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4432, 'AKTIF', 'Maulia Nursidik', 'Regina', 'penjualbrankasbekasi.com', '-', '-', 500000, 500000, '2022-11-28', NULL, 'TF TGL 28 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4433, 'AKTIF', 'Maretta Silvia Nurari', 'Ayu', 'villahomestaycibubur.com', '-', '-', 500000, 500000, '2022-11-28', NULL, 'TF TGL 23 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4434, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Rosa', 'dmtwaterproofing.com', 'Afransyafrany', '+62 812-7371-9084', 500000, 500000, '2022-10-28', NULL, 'TF TGL 27 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4435, 'AKTIF', 'Dikky Pradianto', 'Della', 'penyalurbabysitter-art.com', '-', '-', 500000, 500000, '2020-08-29', NULL, '-', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4436, 'AKTIF', 'Maretta Silvia Nurari', 'Ikmah', 'pijatpanggilandepok.com', '-', '-', 500000, 500000, '2022-06-29', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4437, 'AKTIF', 'Maulia Nursidik', 'Liza', 'hondasukabumi.com', 'Ucok', '+62 856-7346-228', 500000, 500000, '2021-03-29', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4438, 'AKTIF', 'Maretta Silvia Nurari', 'Regina', 'emeraldakitchenset.com', 'Muhammad Rois', '6281210000000', 500000, 500000, '2022-07-29', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4439, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Zaqia', 'happyadventurebandung.com', '-', '-', 500000, 500000, '2022-09-29', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4440, 'AKTIF', 'Dikky Pradianto', 'Ayu', 'amanahkonstruksi.co.id', '-', '-', 500000, 500000, '2022-10-29', NULL, 'TF TGL 28 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4441, 'AKTIF', 'Siti Masiri', 'Ayu', 'kusen-pintu-kayu.com', 'Abdul zamil', '+62 812-1893-0077', 500000, 500000, '2022-10-29', NULL, 'TF TGL 25 OKT', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4442, 'AKTIF', 'Maulia Nursidik', '-', 'yayasanbinakaryamandiri.com', '-', '-', 500000, 500000, '2021-03-30', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4443, 'AKTIF', 'Siti Masiri', 'Zaqia', 'kspncenter.com', 'Heru', '+62 813-2513-6257', 500000, 500000, '2021-04-30', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4444, 'AKTIF', 'Moh. Khoiri Habibulloh', '-', 'solufonplafonpvc.web.id', 'Matthew', '+62 898-9384-376', 500000, 500000, '2021-03-30', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4445, 'AKTIF', 'Ade Bagus S', 'Eva', 'alamandaflorist.com', 'Alif Lam Faisal', '628112000000', 500000, 500000, '2022-06-30', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4446, 'AKTIF', 'Ade Bagus S', 'Iin', 'kampungarabpare.com', 'Muslikhin', '+62 857-4977-0920', 500000, 500000, '2021-12-30', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4447, 'AKTIF', 'Ade Bagus S', 'Ayu', 'jasalantaiolahraga.com', 'Desi Krisbiyanto', '+62 813-3367-4449', 500000, 500000, '2022-05-30', NULL, 'LUNAS', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4448, 'AKTIF', 'Moh. Khoiri Khabibulloh Ashidiq', 'Ikmah', 'jasakolamrenangmedan.com', '-', '-', 500000, 500000, '2022-11-30', NULL, 'TF TGL 22 NOV', '2022-12-25 21:45:24', '2022-12-25 21:45:24'),
(4449, 'GARANSI', 'Siti Masiri', 'Azmi', 'ptciptakaryamandiri.com', 'Taqim', '+62 831-7270-5969', 500000, 0, '2021-12-02', NULL, '-', '2022-12-25 21:54:27', '2022-12-25 21:54:27'),
(4450, 'GARANSI', 'Azka Fairuzul M', 'Ikmah', 'lampungtranzjayatravel.com', 'Yogi', '+62 823-7181-4545', 500000, 0, '2022-06-03', NULL, '-', '2022-12-25 21:54:27', '2022-12-25 21:54:27'),
(4451, 'GARANSI', 'Maulia Nursidik', 'Liza', 'jasa-derek-termurah24jam.web.id', '-', '+62 851-6302-8913', 500000, 0, '2022-03-09', NULL, '-', '2022-12-25 21:54:27', '2022-12-25 21:54:27');
INSERT INTO `datacusts` (`id`, `status`, `timseo`, `timclosing`, `web`, `klien`, `notelp`, `harga`, `bayar`, `tanggal`, `tanggal_offseo`, `keterangan`, `created_at`, `updated_at`) VALUES
(4452, 'GARANSI', 'Moh. Khoiri Habibulloh', 'Bu Yusi', 'sipajatim.com', 'Fatkhi', '+62 822-3088-3207', 500000, 500000, '2020-10-10', NULL, 'LUNAS', '2022-12-25 21:54:27', '2022-12-25 21:54:27'),
(4453, 'GARANSI', 'Sri Eka Cesaria', 'Bu Yusi', 'sumurborjatim.com', 'Fatkhi', '+62 822-3088-3207', 500000, 0, '2020-10-10', NULL, '-', '2022-12-25 21:54:27', '2022-12-25 21:54:27'),
(4454, 'GARANSI', 'Ade Bagus S', 'Liza', 'jualvacuumpump.com', 'Nuril Huda', '+62 812-9325-336', 500000, 0, '2022-02-11', NULL, '-', '2022-12-25 21:54:27', '2022-12-25 21:54:27'),
(4455, 'GARANSI', 'Devi Kumala', 'Liza', 'putritunggaltrans.web.id', 'Ade Saputra', '+62 812-8272-9273', 500000, 0, '2021-12-15', NULL, '-', '2022-12-25 21:54:27', '2022-12-25 21:54:27'),
(4456, 'GARANSI', 'Maretta Silvia Nurari', 'Eka', 'yayasansosialamanahumat.com', 'Iswanto', '+62 852-5885-9498', 500000, 0, '2020-12-16', NULL, '-', '2022-12-25 21:54:27', '2022-12-25 21:54:27'),
(4457, 'GARANSI', 'Dikky Pradianto', 'Hasna', 'bentengmandirikawatharmonika.com', 'Ilianti', '6281280000000', 500000, 0, '2021-11-22', NULL, '-', '2022-12-25 21:54:27', '2022-12-25 21:54:27');

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
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2022_12_06_020753_create_roles_table', 1),
(18, '2022_12_13_023942_create_datacusts_table', 1),
(19, '2017_08_03_055212_create_auto_numbers', 2);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(20) NOT NULL,
  `roles_kode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `roles_kode`, `roles_name`, `created_at`, `updated_at`) VALUES
(1, 'su', 'Super Admin', '2022-12-12 20:18:49', '2022-12-12 20:18:49'),
(5, 'seo', 'Tim SEO', '2022-12-12 20:18:49', '2022-12-12 20:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `users_kode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `users_kode`, `nama`, `username`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, '', 'ali rahmattulloh', 'alirahmattulloh', NULL, '$2y$10$7lOG1pdax.IdOUM6a03/nOhTfauWcIVi6Pgp9PgJH0JieWzhs8Ogy', '1', NULL, '2022-12-16 00:27:40', '2022-12-16 23:42:59'),
(32, 'ADM024', 'Moh. Khoiri Khabibulloh Ashidiq', 'habib', NULL, '$2y$10$gdQIp/.xGUmY1cH6uwfroeLTk45BGeJWBbHwXiPN8czUa0kv1pXNa', '5', NULL, '2022-12-25 18:55:19', '2022-12-25 18:55:19'),
(33, 'ADM025', 'Sri Eka Cesaria', 'cesa', NULL, '$2y$10$4hRL444IsAJhQdwaztdpmuKOmkhgl6hyfl6njcFcq7t66sENz8fvy', '5', NULL, '2022-12-25 18:55:52', '2022-12-25 18:55:52'),
(34, 'ADM026', 'Dikky Pradianto', 'dikky', NULL, '$2y$10$GFpDnHT/zyOFVUIumOfIk.ngWfAITZR11oeSyhZI7FLAku.BYwdS6', '5', NULL, '2022-12-25 18:56:11', '2022-12-25 18:56:11'),
(35, 'ADM027', 'Maretta Silvia Nurari', 'maretta', NULL, '$2y$10$G2f6UpKvKejwwVIRAXRKLeOu7qD1EJwwWl5sRmKFUMqbz8hR6jaeW', '5', NULL, '2022-12-25 18:56:45', '2022-12-25 18:56:45'),
(36, 'ADM028', 'Maulia Nursidik', 'uli', NULL, '$2y$10$vlnPWMEh0LLBl2nZj3wbce6EAoPbdF.Lm3Asv64O1/gXil9dPpMUu', '5', NULL, '2022-12-25 18:56:56', '2022-12-25 18:56:56'),
(37, 'ADM029', 'Siti Masiri', 'siti', NULL, '$2y$10$nkSKSOAhd3aJ98tMjr3XWe7Q4LDFE9iLONag6IQnWOM8oSXAbutyW', '5', NULL, '2022-12-25 18:57:07', '2022-12-25 18:57:07'),
(38, 'ADM030', 'Devi Kumala', 'devi', NULL, '$2y$10$g8KHifb7oCuIWgn9HeVcuOIFeR1ouxaJsi.JOys5VXgCJqC0jX1iS', '5', NULL, '2022-12-25 18:57:18', '2022-12-25 18:57:18'),
(39, 'ADM031', 'Ade Bagus S', 'bagus', NULL, '$2y$10$jfKA8b370ptG3bu0/EkNuemTAB2G/oIDie9/D7ARqbdepz8xzZi8u', '5', NULL, '2022-12-25 18:57:31', '2022-12-25 18:57:42'),
(40, 'ADM032', 'Azka Fairuzul M', 'azka', NULL, '$2y$10$35Fh.Iq.rZCpzADeJQS3h.m8Q9212gLTbT9.PYu/GYQGISfTokn3K', '5', NULL, '2022-12-25 18:57:58', '2022-12-25 18:57:58'),
(41, 'ADM033', 'Nurliah Gamar Safitri', 'gamar', NULL, '$2y$10$x7YkkajAow0MMbIdCGhJIu4/Ew2H7AvMzF3uE5XBdinuW3WxQV7Z2', '5', NULL, '2022-12-25 18:58:08', '2022-12-25 18:58:08'),
(42, 'ADM034', 'Nurul Rodiyah', 'nurul', NULL, '$2y$10$AKNW1ZnNRs7p9sdKPAw/B.IWofSmUD2jMpd6y53AX4ctTjHMZD57O', '5', NULL, '2022-12-25 18:58:19', '2022-12-25 18:58:19'),
(43, 'ADM035', 'Atik Mulyani', 'atik', NULL, '$2y$10$r974ZwwYTu56pHzSLkWAs.nle1k.d6QDQg4ZK9k8pW1PCP6LVeJsG', '5', NULL, '2022-12-25 18:58:31', '2022-12-25 18:58:31'),
(44, 'ADM036', 'superadmin', 'superadmin', NULL, '$2y$10$7XBNWPuxJoO1.S/8eny.sO2b4a5lXClC9PpJSPG7l02EwcRx.FiLS', '1', NULL, '2022-12-25 18:58:47', '2022-12-25 18:58:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_numbers`
--
ALTER TABLE `auto_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datacusts`
--
ALTER TABLE `datacusts`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_kode` (`roles_kode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_kode` (`users_kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_numbers`
--
ALTER TABLE `auto_numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `datacusts`
--
ALTER TABLE `datacusts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4458;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
