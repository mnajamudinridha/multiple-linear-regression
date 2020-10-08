-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 08, 2020 at 08:36 AM
-- Server version: 5.6.40
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multiple-linear-regression`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `email` varchar(200) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama`, `email`, `level`) VALUES
('admin', '$2y$10$nEqPR8sP9/N9ALRFNmTJIui07eGc3.Mm/1H1M7PFRbRw1dsy6vy5W', 'Mei Wulandari', 'admin@mlr.com', 'admin'),
('budi', '$2y$10$jSpEXwU1QTZtzLiy5atn6O1qF6Er8kOk3yFM5/q9b9aYaLsVQ1Dmu', 'Budi', 'budi@gmail.com', 'user'),
('yanto', '$2y$10$bg5ILpcGNbtSoqtpb8.yN.sCVsRZM0/akDDcJ19XhqnIJn8EBCT1S', 'yanto', 'yanto@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id` int(11) NOT NULL,
  `kode` varchar(200) NOT NULL,
  `kuisioner` varchar(200) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`id`, `kode`, `kuisioner`, `value`) VALUES
(52, 'P001', 'P01', 'Budi Saputra'),
(53, 'P001', 'Q01', '1'),
(54, 'P001', 'Q02', '1'),
(55, 'P001', 'Q03', '5'),
(56, 'P001', 'Q04', '5'),
(57, 'P001', 'Q05', '5'),
(58, 'P001', 'Q06', '5'),
(59, 'P001', 'Q07', '5'),
(60, 'P001', 'Q08', '3'),
(61, 'P001', 'Q09', '4'),
(62, 'P001', 'Q10', '5'),
(63, 'P001', 'Q11', '2'),
(64, 'P001', 'Q12', '4'),
(65, 'P001', 'Q13', '5'),
(66, 'P001', 'Q14', '5'),
(67, 'P001', 'Q15', '3'),
(68, 'P001', 'Y', '1'),
(69, 'P002', 'P01', 'Agus Tihadi'),
(70, 'P002', 'Q01', '4'),
(71, 'P002', 'Q02', '3'),
(72, 'P002', 'Q03', '5'),
(73, 'P002', 'Q04', '4'),
(74, 'P002', 'Q05', '5'),
(75, 'P002', 'Q06', '5'),
(76, 'P002', 'Q07', '5'),
(77, 'P002', 'Q08', '5'),
(78, 'P002', 'Q09', '4'),
(79, 'P002', 'Q10', '5'),
(80, 'P002', 'Q11', '4'),
(81, 'P002', 'Q12', '3'),
(82, 'P002', 'Q13', '4'),
(83, 'P002', 'Q14', '5'),
(84, 'P002', 'Q15', '4'),
(85, 'P002', 'Y', '1'),
(86, 'P003', 'P01', 'Mei Wulandari'),
(87, 'P003', 'Q01', '2'),
(88, 'P003', 'Q02', '5'),
(89, 'P003', 'Q03', '4'),
(90, 'P003', 'Q04', '2'),
(91, 'P003', 'Q05', '5'),
(92, 'P003', 'Q06', '4'),
(93, 'P003', 'Q07', '4'),
(94, 'P003', 'Q08', '5'),
(95, 'P003', 'Q09', '5'),
(96, 'P003', 'Q10', '4'),
(97, 'P003', 'Q11', '5'),
(98, 'P003', 'Q12', '5'),
(99, 'P003', 'Q13', '5'),
(100, 'P003', 'Q14', '5'),
(101, 'P003', 'Q15', '5'),
(102, 'P003', 'Y', '1'),
(103, 'P004', 'P01', 'Ana'),
(104, 'P004', 'Q01', '2'),
(105, 'P004', 'Q02', '2'),
(106, 'P004', 'Q03', '4'),
(107, 'P004', 'Q04', '4'),
(108, 'P004', 'Q05', '5'),
(109, 'P004', 'Q06', '3'),
(110, 'P004', 'Q07', '4'),
(111, 'P004', 'Q08', '1'),
(112, 'P004', 'Q09', '3'),
(113, 'P004', 'Q10', '4'),
(114, 'P004', 'Q11', '4'),
(115, 'P004', 'Q12', '5'),
(116, 'P004', 'Q13', '4'),
(117, 'P004', 'Q14', '4'),
(118, 'P004', 'Q15', '4'),
(119, 'P004', 'Y', '1'),
(120, 'P005', 'P01', 'Budi'),
(121, 'P005', 'Q01', '3'),
(122, 'P005', 'Q02', '2'),
(123, 'P005', 'Q03', '3'),
(124, 'P005', 'Q04', '5'),
(125, 'P005', 'Q05', '5'),
(126, 'P005', 'Q06', '4'),
(127, 'P005', 'Q07', '5'),
(128, 'P005', 'Q08', '4'),
(129, 'P005', 'Q09', '4'),
(130, 'P005', 'Q10', '5'),
(131, 'P005', 'Q11', '4'),
(132, 'P005', 'Q12', '3'),
(133, 'P005', 'Q13', '4'),
(134, 'P005', 'Q14', '2'),
(135, 'P005', 'Q15', '3'),
(136, 'P005', 'Y', '0'),
(137, 'P006', 'P01', 'Nisa'),
(138, 'P006', 'Q01', '1'),
(139, 'P006', 'Q02', '1'),
(140, 'P006', 'Q03', '3'),
(141, 'P006', 'Q04', '5'),
(142, 'P006', 'Q05', '4'),
(143, 'P006', 'Q06', '5'),
(144, 'P006', 'Q07', '4'),
(145, 'P006', 'Q08', '4'),
(146, 'P006', 'Q09', '4'),
(147, 'P006', 'Q10', '3'),
(148, 'P006', 'Q11', '5'),
(149, 'P006', 'Q12', '4'),
(150, 'P006', 'Q13', '3'),
(151, 'P006', 'Q14', '3'),
(152, 'P006', 'Q15', '3'),
(153, 'P006', 'Y', '1'),
(154, 'P007', 'P01', 'Gatot'),
(155, 'P007', 'Q01', '4'),
(156, 'P007', 'Q02', '2'),
(157, 'P007', 'Q03', '4'),
(158, 'P007', 'Q04', '4'),
(159, 'P007', 'Q05', '5'),
(160, 'P007', 'Q06', '1'),
(161, 'P007', 'Q07', '2'),
(162, 'P007', 'Q08', '3'),
(163, 'P007', 'Q09', '3'),
(164, 'P007', 'Q10', '4'),
(165, 'P007', 'Q11', '3'),
(166, 'P007', 'Q12', '5'),
(167, 'P007', 'Q13', '4'),
(168, 'P007', 'Q14', '4'),
(169, 'P007', 'Q15', '4'),
(170, 'P007', 'Y', '0'),
(171, 'P008', 'P01', 'Amrul'),
(172, 'P008', 'Q01', '2'),
(173, 'P008', 'Q02', '2'),
(174, 'P008', 'Q03', '5'),
(175, 'P008', 'Q04', '4'),
(176, 'P008', 'Q05', '5'),
(177, 'P008', 'Q06', '4'),
(178, 'P008', 'Q07', '5'),
(179, 'P008', 'Q08', '4'),
(180, 'P008', 'Q09', '1'),
(181, 'P008', 'Q10', '3'),
(182, 'P008', 'Q11', '4'),
(183, 'P008', 'Q12', '5'),
(184, 'P008', 'Q13', '2'),
(185, 'P008', 'Q14', '4'),
(186, 'P008', 'Q15', '4'),
(187, 'P008', 'Y', '0'),
(188, 'P009', 'P01', 'Agustin'),
(189, 'P009', 'Q01', '4'),
(190, 'P009', 'Q02', '4'),
(191, 'P009', 'Q03', '2'),
(192, 'P009', 'Q04', '5'),
(193, 'P009', 'Q05', '5'),
(194, 'P009', 'Q06', '5'),
(195, 'P009', 'Q07', '4'),
(196, 'P009', 'Q08', '5'),
(197, 'P009', 'Q09', '5'),
(198, 'P009', 'Q10', '3'),
(199, 'P009', 'Q11', '4'),
(200, 'P009', 'Q12', '3'),
(201, 'P009', 'Q13', '3'),
(202, 'P009', 'Q14', '3'),
(203, 'P009', 'Q15', '4'),
(204, 'P009', 'Y', '0'),
(205, 'P010', 'P01', 'Dina'),
(206, 'P010', 'Q01', '6'),
(207, 'P010', 'Q02', '1'),
(208, 'P010', 'Q03', '3'),
(209, 'P010', 'Q04', '4'),
(210, 'P010', 'Q05', '5'),
(211, 'P010', 'Q06', '4'),
(212, 'P010', 'Q07', '5'),
(213, 'P010', 'Q08', '5'),
(214, 'P010', 'Q09', '4'),
(215, 'P010', 'Q10', '5'),
(216, 'P010', 'Q11', '5'),
(217, 'P010', 'Q12', '5'),
(218, 'P010', 'Q13', '5'),
(219, 'P010', 'Q14', '3'),
(220, 'P010', 'Q15', '4'),
(221, 'P010', 'Y', '0'),
(222, 'P011', 'P01', 'Gatot Subroto'),
(223, 'P011', 'Q01', '3'),
(224, 'P011', 'Q02', '3'),
(225, 'P011', 'Q03', '5'),
(226, 'P011', 'Q04', '4'),
(227, 'P011', 'Q05', '4'),
(228, 'P011', 'Q06', '5'),
(229, 'P011', 'Q07', '4'),
(230, 'P011', 'Q08', '5'),
(231, 'P011', 'Q09', '5'),
(232, 'P011', 'Q10', '4'),
(233, 'P011', 'Q11', '5'),
(234, 'P011', 'Q12', '5'),
(235, 'P011', 'Q13', '4'),
(236, 'P011', 'Q14', '4'),
(237, 'P011', 'Q15', '3'),
(238, 'P011', 'Y', '1'),
(239, 'P012', 'P01', 'Nisa Munajat'),
(240, 'P012', 'Q01', '5'),
(241, 'P012', 'Q02', '4'),
(242, 'P012', 'Q03', '2'),
(243, 'P012', 'Q04', '3'),
(244, 'P012', 'Q05', '4'),
(245, 'P012', 'Q06', '5'),
(246, 'P012', 'Q07', '5'),
(247, 'P012', 'Q08', '4'),
(248, 'P012', 'Q09', '4'),
(249, 'P012', 'Q10', '5'),
(250, 'P012', 'Q11', '5'),
(251, 'P012', 'Q12', '2'),
(252, 'P012', 'Q13', '4'),
(253, 'P012', 'Q14', '4'),
(254, 'P012', 'Q15', '4'),
(255, 'P012', 'Y', '1'),
(256, 'P013', 'P01', 'Andriani'),
(257, 'P013', 'Q01', '1'),
(258, 'P013', 'Q02', '1'),
(259, 'P013', 'Q03', '3'),
(260, 'P013', 'Q04', '5'),
(261, 'P013', 'Q05', '4'),
(262, 'P013', 'Q06', '5'),
(263, 'P013', 'Q07', '5'),
(264, 'P013', 'Q08', '4'),
(265, 'P013', 'Q09', '4'),
(266, 'P013', 'Q10', '4'),
(267, 'P013', 'Q11', '5'),
(268, 'P013', 'Q12', '5'),
(269, 'P013', 'Q13', '4'),
(270, 'P013', 'Q14', '5'),
(271, 'P013', 'Q15', '4'),
(272, 'P013', 'Y', '1'),
(273, 'P014', 'P01', 'Miriawan'),
(274, 'P014', 'Q01', '2'),
(275, 'P014', 'Q02', '4'),
(276, 'P014', 'Q03', '4'),
(277, 'P014', 'Q04', '5'),
(278, 'P014', 'Q05', '4'),
(279, 'P014', 'Q06', '5'),
(280, 'P014', 'Q07', '5'),
(281, 'P014', 'Q08', '5'),
(282, 'P014', 'Q09', '5'),
(283, 'P014', 'Q10', '5'),
(284, 'P014', 'Q11', '5'),
(285, 'P014', 'Q12', '5'),
(286, 'P014', 'Q13', '4'),
(287, 'P014', 'Q14', '5'),
(288, 'P014', 'Q15', '5'),
(289, 'P014', 'Y', '0'),
(290, 'P015', 'P01', 'Reza'),
(291, 'P015', 'Q01', '3'),
(292, 'P015', 'Q02', '2'),
(293, 'P015', 'Q03', '4'),
(294, 'P015', 'Q04', '5'),
(295, 'P015', 'Q05', '5'),
(296, 'P015', 'Q06', '5'),
(297, 'P015', 'Q07', '4'),
(298, 'P015', 'Q08', '5'),
(299, 'P015', 'Q09', '5'),
(300, 'P015', 'Q10', '5'),
(301, 'P015', 'Q11', '4'),
(302, 'P015', 'Q12', '5'),
(303, 'P015', 'Q13', '4'),
(304, 'P015', 'Q14', '5'),
(305, 'P015', 'Q15', '5'),
(306, 'P015', 'Y', '1'),
(307, 'P016', 'P01', 'Rida'),
(308, 'P016', 'Q01', '4'),
(309, 'P016', 'Q02', '4'),
(310, 'P016', 'Q03', '4'),
(311, 'P016', 'Q04', '5'),
(312, 'P016', 'Q05', '5'),
(313, 'P016', 'Q06', '5'),
(314, 'P016', 'Q07', '5'),
(315, 'P016', 'Q08', '5'),
(316, 'P016', 'Q09', '5'),
(317, 'P016', 'Q10', '4'),
(318, 'P016', 'Q11', '5'),
(319, 'P016', 'Q12', '5'),
(320, 'P016', 'Q13', '5'),
(321, 'P016', 'Q14', '5'),
(322, 'P016', 'Q15', '5'),
(323, 'P016', 'Y', '1'),
(324, 'P017', 'P01', 'Sumarni'),
(325, 'P017', 'Q01', '4'),
(326, 'P017', 'Q02', '4'),
(327, 'P017', 'Q03', '4'),
(328, 'P017', 'Q04', '5'),
(329, 'P017', 'Q05', '5'),
(330, 'P017', 'Q06', '5'),
(331, 'P017', 'Q07', '1'),
(332, 'P017', 'Q08', '4'),
(333, 'P017', 'Q09', '5'),
(334, 'P017', 'Q10', '5'),
(335, 'P017', 'Q11', '5'),
(336, 'P017', 'Q12', '5'),
(337, 'P017', 'Q13', '3'),
(338, 'P017', 'Q14', '3'),
(339, 'P017', 'Q15', '3'),
(340, 'P017', 'Y', '0'),
(341, 'P018', 'P01', 'Arsyad'),
(342, 'P018', 'Q01', '4'),
(343, 'P018', 'Q02', '2'),
(344, 'P018', 'Q03', '5'),
(345, 'P018', 'Q04', '5'),
(346, 'P018', 'Q05', '5'),
(347, 'P018', 'Q06', '4'),
(348, 'P018', 'Q07', '3'),
(349, 'P018', 'Q08', '5'),
(350, 'P018', 'Q09', '1'),
(351, 'P018', 'Q10', '4'),
(352, 'P018', 'Q11', '5'),
(353, 'P018', 'Q12', '4'),
(354, 'P018', 'Q13', '4'),
(355, 'P018', 'Q14', '3'),
(356, 'P018', 'Q15', '4'),
(357, 'P018', 'Y', '0'),
(375, 'P019', 'P01', 'Nia'),
(376, 'P019', 'Q01', '6'),
(377, 'P019', 'Q02', '3'),
(378, 'P019', 'Q03', '5'),
(379, 'P019', 'Q04', '4'),
(380, 'P019', 'Q05', '4'),
(381, 'P019', 'Q06', '5'),
(382, 'P019', 'Q07', '5'),
(383, 'P019', 'Q08', '2'),
(384, 'P019', 'Q09', '3'),
(385, 'P019', 'Q10', '5'),
(386, 'P019', 'Q11', '4'),
(387, 'P019', 'Q12', '4'),
(388, 'P019', 'Q13', '4'),
(389, 'P019', 'Q14', '4'),
(390, 'P019', 'Q15', '4'),
(391, 'P019', 'Y', '1'),
(392, 'P020', 'P01', 'Mukhtar'),
(393, 'P020', 'Q01', '4'),
(394, 'P020', 'Q02', '2'),
(395, 'P020', 'Q03', '5'),
(396, 'P020', 'Q04', '4'),
(397, 'P020', 'Q05', '1'),
(398, 'P020', 'Q06', '2'),
(399, 'P020', 'Q07', '2'),
(400, 'P020', 'Q08', '2'),
(401, 'P020', 'Q09', '4'),
(402, 'P020', 'Q10', '3'),
(403, 'P020', 'Q11', '4'),
(404, 'P020', 'Q12', '4'),
(405, 'P020', 'Q13', '4'),
(406, 'P020', 'Q14', '2'),
(407, 'P020', 'Q15', '2'),
(408, 'P020', 'Y', '1');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `dibaca` int(10) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `dibaca`, `isi`, `tanggal`) VALUES
(1, 'Latar Belakang', 71, '<p style=\"text-align: justify;\">Persaingan yang semakin ketat dalam pengembangan smartphone atau telepon pintar membuat para produsen berkompetisi untuk mengembangkan dan meluncurkan produk yang sesuai dengan keinginan penggunanya. Dengan semakin beragamnya merk dan seri dari smartphone yang diperjual belikan oleh distributor kepada masyarakat ,memberikan keleluasaan bagi masyarakat untuk membeli smartphone yang sesuai dengan keinginannya. Merk dan seri smartphone yang semakin beragam pula menyebabkan pembeli akan semakin kristis dalam mengambil keputusan untuk memilih merk dan seri apa yang sesuai dengan keinginannya. Hal itu membuat para pembeli akan melakukan komparasi terhadap setiap merk dan seri yang dijual oleh distributor sebelum memutuskan merk dan seri mana yang paling sesuai dengan keinginanya, keleluasaan konsumen dalam memilih produk menyebabkan perubahan perilaku konsumen pada saat mengambil keputusan merk mana yang akan di beli, perubahan yang dimaksud adalah melakukan pergantian/perpindahan merk atau bisa disebut dengan istilah brand switching.</p>\r\n<p style=\"text-align: justify;\"><img src=\"source/admin/Figure-6-Reasons-for-Brand-Switching.png\" alt=\"\" width=\"100%\" /></p>\r\n<p style=\"text-align: justify;\">Brand Switching adalah perilaku perpindahan merek yang dilakukan oleh konsumen karena alasan-alasan tertentu atau dapat diartikan juga sebagai kerentanan konsumen untuk berpindah ke merek lain(Dharmesta, Swastha, 1993). Tingkat perilaku brand switching ini juga mengidentifikasikan tingkat kepuasan pelanggan terhadap merk smartphone yang digunakan sebelumnya. Sehingga perilaku ini menyebabkan para produsen harus ber inovasi dan mengembangkan produknya sesuai dengan kebutuhan pasar.&nbsp;</p>', '2020-06-22'),
(2, 'Brand Switching', 12, '<p style=\"text-align: justify;\">Penyebab perilaku brand switching ini dapat terjadi karena perubahan perilaku konsumen entah itu dari sisi konsumen (internal) atau dari pengaruh lingkungan (eksternal). Faktor internal disebabkan oleh perilaku variety seeking. Perilaku variety seeking menurut Kahn, Kalnawi, dan Morrison <strong>(1999)</strong> disebut sebagai kecenderungan individu-individu untuk mencari keberagaman dalam memilih jasa untuk mencari keberagaman dalam memilih jasa atau barang pada suatu waktu yang timbul karena beberapa alasan yang berbeda(Santoso, 2011). Sedangkan faktor eksternal bisa disebakan karena kegagalan produk (product problem), kegagalan costumer service (service problem), daya tarik pesaing atau nilai lebih yang dimiliki oleh merek pesaing dan Switching cost (Susanti, 2014). Untuk menganalisis perilaku-perilaku tersebut yang dimana menjadi pemicu brand switching, metode yang dapat digunakan adalah dengan melakukan pengumpulan data dan memproses data-data tersebut agar dapat dijadikan informasi sehingga nantinya dapat dikembangkan untuk mengambil keputusan-keputusan strategis yaitu dengan metode data mining. Data mining merupakan proses semi otomatik yang menggunakan teknik statistik, matematika, kecerdasan buatan, dan machine learning untuk mengekstraksi dan mengidentifikasi informasi pengetahuan potensial dan berguna yang bermanfaat yang tersimpan di dalam database besar (Turban et al, 2005). Dengan konsep data mining, data yang dikumpulkan dapat di identifikasi dan di analisis untuk selanjutanya akan menghasilkan knowledge atau pengetahuan baru. Untuk menghasilkan knowledge atau pengetahuan baru dari data-data yang sudah dikumpulkan pada penelitian ini maka digunakan metode regresi linear berganda. Regresi linier berganda adalah metode statistika yang digunakan untuk membentuk model hubungan antara variabel terikat (dependen) dengan satu atau lebih variabel bebas (independen). Metode regresi pada penelitian ini digunakan untuk mengetahui pengaruh terbesar dan korelasi diantara variabel-variabel dan data-data yang digunakan dari penyebab perilaku brand switching pengguna smartphone.<br />Berdasarkan penelitian sebelumnya yang dilakukan oleh Dian Melfa Susanti pada tahun 2014 dengan judul &ldquo;Analisis Faktor-Faktor Yang Mempengaruhi Brand Switching Pada Telepon Seluler Merek Nokia&rdquo; yang membahas tentang analisa terhadap faktor-faktor brand switching dimana kuesioner didistribusikan kepada mahasiswa S1 reguler Institut Pertanian Bogor (IPB) dengan jumlah responden sebanyak 100 orang. Hasil kuesioner diolah menggunakan alat analisis Structural Equation Model (SEM) dengan perangkat lunak SmartPLS versi 2.0. Hasil penelitian menunjukkan bahwa faktor penyebab brand switching telepon seluler merek Nokia pada mahasiwa secara signifikan dipengaruhi oleh variety seeking (Susanti, 2014). Kemudian pada penelitian yang dilakukan oleh Nur Nafi&rsquo;iyah pada tahun 2016 dengan judul &ldquo;Perbandingan Regresi Linear, Backpropagation Dan Fuzzy Mamdani Dalam Prediksi Harga Emas&rdquo; Tujuan dari penelitian ini untuk melihat hasil regresi linear, backpropagation dan fuzzy mamdani dalam memprediksi harga emas. Regresi linear merupakan persamaan garis dari data yang dikumpulkan. Fuzzy mamdani merupakan algoritma fuzzy yang menggunakan nilai yang crips(0-1). Hasil dari ketiga metode menunjukkan bahwa korelasi dari regresi linear sangat bagus, yaitu 0,929. Dan nilai korelasi tertinggi dari ketiga metode berasal dari metode backpropagation. Hal ini terbukti bahwa dalam memprediksi harga emas menggunakan backpropagation lebih sedikit errornya &plusmn; 0,05(Nafi&rsquo;iyah, 2016). Pada penelitian yang dilakukan oleh Muhammad Irfan Firdaus yang berjudul &ldquo;Analisis Pengaruh Harga, Kebutuhan Mencari Variasi, Dan Word Of Mouth Dalam Perilaku Brand Switching Pada Minuman Bersoda Coca-Cola Ke Big Cola&rdquo; Untuk variabel independen pada penilitian ini terdiri dari harga (X1), kebutuhan mencari variasi (X2), dan word of mouth (X3) serta variabel dependennya adalah Brand Switching (Y). Sampel berjumlah 100 responden di Kota semarang yang diambil dengan menggunakan teknik Purposive sampling. Analisa menggunakan SPSS 21.0 yang meliputi uji validitas, uji reliabilitas, uji asumsi klasik, regresi linier berganda, pengujian hipotesis melalui uji F dan uji t, dan analisis koefisien determinasi (R&sup2;). Dari analisis tersebut diperoleh bahwa harga menunjukkan koefisien regresi paling besar sehingga dapat disimpulkan bahwa variabel tersebut adalah faktor yang paling penting yang mempengaruhi brand switching pada produk minuman ringan berkarbonasi. Kemudian pada penelitian yang dilakukan oleh Siska Ernida Wati, Djakaria Sebayang, dan Rachmad Sitepu yang berjudul &ldquo;Perbandingan Metode Fuzzy Dengan Regresi Linier Berganda Dalam Peramalan Jumlah Produksi (Studi Kasus: Produksi Kelapa Sawit Di Pt. Perkebunan III (Persero) Medan Tahun 2011-2012)&rdquo; menunjukkan nilai rata-rata kesalahan relatif dari peramalan setiap metode, diperoleh nilai rata-rata kesalahan relatif metode fuzzy sebesar 0,20748 atau 20,748 % dan regresi linear berganda sebesar 0,09383 atau 9,383%. Besarnya nilai tersebut memperlihatkan bahwa nilai rata-rata kesalahan relatif regresi linier berganda lebih kecil daripada metode fuzzy. Maka untuk kasus dengan variabel input dan output dalam penelitian ini dapat disimpulkan bahwa peramalan dengan menggunakan regresi linier berganda lebih baik daripada dengan metode fuzzy (Wati, Sebayang, &amp; Sitepu, 2013).</p>', '2020-06-22'),
(3, 'Metode Penelitian', 8, '<p>Metode penelitian yang digunakan adalah metode analisis deskriptif untuk menganalisa perilaku brand switching pada pengguna smartphone. Penelitian deskriptif adalah penelitian dilakukan dengan menganalisa dan melakukan pembelajaran terhadap data statistik dengan cara menyajikan,menghimpun data dan menganalisis data menjadi informasi yang nantinya bisa diterapkan sebagai acuan untuk mengatasi permasalahan yang diteliti.</p>\r\n<p>Dalam penyusunan penelitian ini,untuk mengumpulkan data yang dibutuhkan, maka metode pengumpulan data dilakukan sebagai berikut :</p>\r\n<ol>\r\n<li>Observasi<br />Merupakan suatu metode untuk mendapatkan data dengan cara melakukan pengamatan langsung kepada objek penelitian.</li>\r\n<li>Studi Pustaka<br />Merupakan suatu metode untuk mendapatkan data dengan cara mempelajari permasalahan dari penelitian yang berhubungan dengan objek yang diteliti sesuai dengan yang bersumber dari buku-buku pedoman,jurnal dan literatur yang disusun oleh para peneliti untuk melengkapi data yang diperlukan dalam menyusun penelitian.</li>\r\n<li>Angket (kuisioner)<br />Merupakan suatu metode untuk mendapatkan data dengan cara memberikan seperangkat pertanyaan atau pernyataan tertulis kepada para responden untuk dijawab sebagai data untuk menyusun penelitian.</li>\r\n<li>Analisis Sistem<br />Analisis sistem ini merupakan penganalisaan terhadap kebutuhan dalam pembuatan sistem. Sehingga dapat diketahui kebutuhan-kebutuha apa saja yang diperlukan dalam pembuatan sistem pada penelitian ini.</li>\r\n<li>Perancangan Sistem<br />Pada bagian perancangan ini akan melakukan pemodelan terhadap sistem yang akan dibuat berdasarkan hasil analisis yang telah dilakukan sebelumnya.</li>\r\n<li>Implementasi Perangkat Lunak<br />Tahap ini akan mengimplementasikan sistem yang sudah dirancang sebelumnya.</li>\r\n<li>Pengujian dan Analisis<br />Pada tahap ini akan dilakukan pengujian terhadap implementasi yang telah<br />dikerjakan. Kemudian akan dilakukan analisis berdasarkan hasil dari pengujian.</li>\r\n<li>Kesimpulan dan Saran<br />Pada penelitian ini akan diberikan kesimpulan dari hasil penelitian yang telah dilakukan dan akan menyertakan saran yang dapat dikembangkan untuk penelitian di masa depan sehingga mendapatkan hasil yang lebih baik.</li>\r\n</ol>\r\n<p>&nbsp;</p>', '2020-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode`, `nama`) VALUES
('D1', 'Identitas'),
('D2', 'Product Problem'),
('D3', 'Service Problem'),
('D4', 'Variety Seeking'),
('D5', 'Benefit other product'),
('D6', 'Hasil Akhir');

-- --------------------------------------------------------

--
-- Table structure for table `kuisioner`
--

CREATE TABLE `kuisioner` (
  `kode` varchar(200) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `jenis` varchar(200) NOT NULL,
  `fungsi` varchar(200) NOT NULL,
  `bobot` double NOT NULL,
  `tnilai` float NOT NULL,
  `ttable` float NOT NULL,
  `fnilai` float NOT NULL,
  `ftable` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuisioner`
--

INSERT INTO `kuisioner` (`kode`, `nama`, `kategori`, `jenis`, `fungsi`, `bobot`, `tnilai`, `ttable`, `fnilai`, `ftable`) VALUES
('P01', 'Nama Lengkap Responden', 'D1', '0', '0', 0, 0, 0, 0, 0),
('Q01', 'Merk HP Respondent Sebelumnya', 'D1', '1', '2', 0.011397099156914912, 0.181023, 2.20099, 3.79497, 4.256),
('Q02', 'Pengeluaran Respondent Perbulan', 'D1', '1', '2', -0.3385938237993027, -2.92878, 2.20099, 3.79497, 4.256),
('Q03', 'Apakah tingkat kenyamanan  smartphone sekarang lebih baik dari Smartphone sebelumnya ?', 'D2', '1', '2', 0.32020513858065935, 2.31017, 2.20099, 3.79497, 4.256),
('Q04', 'Apakah Fitur Kamera dan Audio Pada  smartphone sekarang lebih baik dari Smartphone sebelumnya?', 'D2', '1', '2', -0.21904856529734262, -1.78165, 2.20099, 3.79497, 4.256),
('Q05', 'Apakah Prosessor Pada  smartphone sekarang lebih baik dari Smartphone sebelumnya ?', 'D2', '1', '2', 0.08775353761346555, 0.693478, 2.20099, 3.79497, 4.256),
('Q06', 'Apakah Grafis dan resolusi layer Pada  smartphone sekarang lebih baik dari Smartphone sebelumnya ?', 'D2', '1', '2', 0.16770922616561473, 1.19656, 2.20099, 3.79497, 4.256),
('Q07', 'Apakah manajemen RAM Pada  smartphone sekarang lebih baik dari Smartphone sebelumnya ?', 'D2', '1', '2', -0.10087143735246265, -1.05214, 2.20099, 3.79497, 4.256),
('Q08', 'Apakah Penyimpan Memori Pada  smartphone sekarang lebih baik dari Smartphone sebelumnya ?', 'D2', '1', '2', -0.3121118305832766, -3.54143, 2.20099, 3.79497, 4.256),
('Q09', 'Apakah Ketersediaan tempat servis resmi smartphone sekarang cukup tersedia ?', 'D3', '1', '2', 0.34904327793606804, 2.64035, 2.20099, 3.79497, 4.256),
('Q10', 'Apakah Pelayanan klaim garansi kerusakan resmi smartphone sekarang cukup memuaskan ?', 'D3', '1', '2', -0.3377847364981821, -2.71078, 2.20099, 3.79497, 4.256),
('Q11', 'Apakah hasil perbaikan smartphone di tempat servis resmi cukup smartphone sekarang memuaskan ?', 'D3', '1', '2', 0.34246965050128464, 1.99814, 2.20099, 3.79497, 4.256),
('Q12', 'Apakah Responden berpindah merk smartphone karena merasa bosan dengan merk sebelumnya?', 'D4', '1', '2', -0.4291272915041484, -2.89077, 2.20099, 3.79497, 4.256),
('Q13', 'Apakah Responden pindah merk smartphone karena penasaran dengan merk smartphone yang sekarang digunakan ?', 'D4', '1', '2', 0.12379095374099794, 0.925892, 2.20099, 3.79497, 4.256),
('Q14', 'Produk Hp yang sekarang memiliki harga yang lebih seimbang dengan spesifikasi yang lebih mumpuni dibandingkan merk sebelumnya?', 'D5', '1', '2', 0.256141759233948, 1.58456, 2.20099, 3.79497, 4.256),
('Q15', 'Produk HP yang sekarang memiliki gengsi yang lebih tinggi dibandingkan yang sebelumnya?', 'D5', '1', '2', 0.19807939313375514, 0.880102, 2.20099, 3.79497, 4.256),
('Y', 'Merk HP Respondent Sekarang', 'D6', '1', '1', 2.294723837535556, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `opsi`
--

CREATE TABLE `opsi` (
  `id` int(11) NOT NULL,
  `kuisioner` varchar(100) NOT NULL,
  `angka` float NOT NULL,
  `label` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opsi`
--

INSERT INTO `opsi` (`id`, `kuisioner`, `angka`, `label`) VALUES
(1, 'Q01', 1, 'Apple'),
(2, 'Q01', 2, 'Asus'),
(3, 'Q01', 3, 'Samsung'),
(4, 'Q01', 4, 'Xiaomi'),
(5, 'Q01', 5, 'Oppo'),
(6, 'Q01', 6, 'Vivo'),
(7, 'Q02', 1, 'Kurang dari Rp.1.000.000,-'),
(8, 'Q02', 2, 'Rp 1.000.000,- sampai Rp 1.500.000,-'),
(9, 'Q02', 3, 'Rp 1.500.000,- sampai Rp 2.000.000,-'),
(10, 'Q02', 4, 'Rp 2.000.000,- sampai Rp 3.000.000,-'),
(11, 'Q02', 5, 'Lebih dari Rp 3.000.000,-'),
(12, 'Q03', 5, 'Sangat Setuju'),
(13, 'Q03', 4, 'Setuju'),
(14, 'Q03', 3, 'Netral'),
(15, 'Q03', 2, 'Tidak Setuju'),
(16, 'Q03', 1, 'Sangat Tidak Setuju'),
(17, 'Q04', 5, 'Sangat Setuju'),
(18, 'Q04', 4, 'Setuju'),
(19, 'Q04', 3, 'Netral'),
(20, 'Q04', 2, 'Tidak Setuju'),
(21, 'Q04', 1, 'Sangat Tidak Setuju'),
(22, 'Q05', 5, 'Sangat Setuju'),
(23, 'Q05', 4, 'Setuju'),
(24, 'Q05', 3, 'Netral'),
(25, 'Q05', 2, 'Tidak Setuju'),
(26, 'Q05', 1, 'Sangat Tidak Setuju'),
(27, 'Q06', 5, 'Sangat Setuju'),
(28, 'Q06', 4, 'Setuju'),
(29, 'Q06', 3, 'Netral'),
(30, 'Q06', 2, 'Tidak Setuju'),
(31, 'Q06', 1, 'Sangat Tidak Setuju'),
(32, 'Q07', 5, 'Sangat Setuju'),
(33, 'Q07', 4, 'Setuju'),
(34, 'Q07', 3, 'Netral'),
(35, 'Q07', 2, 'Tidak Setuju'),
(36, 'Q07', 1, 'Sangat Tidak Setuju'),
(37, 'Q08', 5, 'Sangat Setuju'),
(38, 'Q08', 4, 'Setuju'),
(39, 'Q08', 3, 'Netral'),
(40, 'Q08', 2, 'Tidak Setuju'),
(41, 'Q08', 1, 'Sangat Tidak Setuju'),
(42, 'Q09', 5, 'Sangat Setuju'),
(43, 'Q09', 4, 'Setuju'),
(44, 'Q09', 3, 'Netral'),
(45, 'Q09', 2, 'Tidak Setuju'),
(46, 'Q09', 1, 'Sangat Tidak Setuju'),
(47, 'Q10', 5, 'Sangat Setuju'),
(48, 'Q10', 4, 'Setuju'),
(49, 'Q10', 3, 'Netral'),
(50, 'Q10', 2, 'Tidak Setuju'),
(51, 'Q10', 1, 'Sangat Tidak Setuju'),
(52, 'Q11', 5, 'Sangat Setuju'),
(53, 'Q11', 4, 'Setuju'),
(54, 'Q11', 3, 'Netral'),
(55, 'Q11', 2, 'Tidak Setuju'),
(56, 'Q11', 1, 'Sangat Tidak Setuju'),
(57, 'Q12', 5, 'Sangat Setuju'),
(58, 'Q12', 4, 'Setuju'),
(59, 'Q12', 3, 'Netral'),
(60, 'Q12', 2, 'Tidak Setuju'),
(61, 'Q12', 1, 'Sangat Tidak Setuju'),
(62, 'Q13', 5, 'Sangat Setuju'),
(63, 'Q13', 4, 'Setuju'),
(64, 'Q13', 3, 'Netral'),
(65, 'Q13', 2, 'Tidak Setuju'),
(66, 'Q13', 1, 'Sangat Tidak Setuju'),
(67, 'Q14', 5, 'Sangat Setuju'),
(68, 'Q14', 4, 'Setuju'),
(69, 'Q14', 3, 'Netral'),
(70, 'Q14', 2, 'Tidak Setuju'),
(71, 'Q14', 1, 'Sangat Tidak Setuju'),
(72, 'Q15', 5, 'Sangat Setuju'),
(73, 'Q15', 4, 'Setuju'),
(74, 'Q15', 3, 'Netral'),
(75, 'Q15', 2, 'Tidak Setuju'),
(76, 'Q15', 1, 'Sangat Tidak Setuju'),
(77, 'Y', 1, 'Sama'),
(78, 'Y', 0, 'Berganti');

-- --------------------------------------------------------

--
-- Table structure for table `x_generate`
--

CREATE TABLE `x_generate` (
  `kode` varchar(200) NOT NULL,
  `Q01` int(11) NOT NULL,
  `Q02` int(11) NOT NULL,
  `Q03` int(11) NOT NULL,
  `Q04` int(11) NOT NULL,
  `Q05` int(11) NOT NULL,
  `Q06` int(11) NOT NULL,
  `Q07` int(11) NOT NULL,
  `Q08` int(11) NOT NULL,
  `Q09` int(11) NOT NULL,
  `Q10` int(11) NOT NULL,
  `Q11` int(11) NOT NULL,
  `Q12` int(11) NOT NULL,
  `Q13` int(11) NOT NULL,
  `Q14` int(11) NOT NULL,
  `Q15` int(11) NOT NULL,
  `Y` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `x_generate`
--

INSERT INTO `x_generate` (`kode`, `Q01`, `Q02`, `Q03`, `Q04`, `Q05`, `Q06`, `Q07`, `Q08`, `Q09`, `Q10`, `Q11`, `Q12`, `Q13`, `Q14`, `Q15`, `Y`) VALUES
('P001', 1, 1, 5, 5, 5, 5, 5, 3, 4, 5, 2, 4, 5, 5, 3, 1),
('P002', 4, 3, 5, 4, 5, 5, 5, 5, 4, 5, 4, 3, 4, 5, 4, 1),
('P003', 2, 5, 4, 2, 5, 4, 4, 5, 5, 4, 5, 5, 5, 5, 5, 1),
('P004', 2, 2, 4, 4, 5, 3, 4, 1, 3, 4, 4, 5, 4, 4, 4, 1),
('P005', 3, 2, 3, 5, 5, 4, 5, 4, 4, 5, 4, 3, 4, 2, 3, 0),
('P006', 1, 1, 3, 5, 4, 5, 4, 4, 4, 3, 5, 4, 3, 3, 3, 1),
('P007', 4, 2, 4, 4, 5, 1, 2, 3, 3, 4, 3, 5, 4, 4, 4, 0),
('P008', 2, 2, 5, 4, 5, 4, 5, 4, 1, 3, 4, 5, 2, 4, 4, 0),
('P009', 4, 4, 2, 5, 5, 5, 4, 5, 5, 3, 4, 3, 3, 3, 4, 0),
('P010', 6, 1, 3, 4, 5, 4, 5, 5, 4, 5, 5, 5, 5, 3, 4, 0),
('P011', 3, 3, 5, 4, 4, 5, 4, 5, 5, 4, 5, 5, 4, 4, 3, 1),
('P012', 5, 4, 2, 3, 4, 5, 5, 4, 4, 5, 5, 2, 4, 4, 4, 1),
('P013', 1, 1, 3, 5, 4, 5, 5, 4, 4, 4, 5, 5, 4, 5, 4, 1),
('P014', 2, 4, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 0),
('P015', 3, 2, 4, 5, 5, 5, 4, 5, 5, 5, 4, 5, 4, 5, 5, 1),
('P016', 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 1),
('P017', 4, 4, 4, 5, 5, 5, 1, 4, 5, 5, 5, 5, 3, 3, 3, 0),
('P018', 4, 2, 5, 5, 5, 4, 3, 5, 1, 4, 5, 4, 4, 3, 4, 0),
('P019', 6, 3, 5, 4, 4, 5, 5, 2, 3, 5, 4, 4, 4, 4, 4, 1),
('P020', 4, 2, 5, 4, 1, 2, 2, 2, 4, 3, 4, 4, 4, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `x_sample1`
--

CREATE TABLE `x_sample1` (
  `id` int(11) NOT NULL,
  `Y` int(11) NOT NULL,
  `X1` int(11) NOT NULL,
  `X2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `x_sample1`
--

INSERT INTO `x_sample1` (`id`, `Y`, `X1`, `X2`) VALUES
(1, 6, 7, 4),
(2, 7, 9, 6),
(3, 3, 4, 6),
(4, 6, 7, 8),
(5, 5, 5, 8),
(6, 8, 9, 7),
(7, 7, 8, 5),
(8, 5, 6, 9),
(9, 5, 6, 10),
(10, 5, 6, 6),
(11, 7, 8, 12),
(12, 6, 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `x_sample2`
--

CREATE TABLE `x_sample2` (
  `id` int(11) NOT NULL,
  `Q1` int(11) NOT NULL,
  `Q2` int(11) NOT NULL,
  `Q3` int(11) NOT NULL,
  `Q4` int(11) NOT NULL,
  `Q5` int(11) NOT NULL,
  `Q6` int(11) NOT NULL,
  `Q7` int(11) NOT NULL,
  `Q8` int(11) NOT NULL,
  `Q9` int(11) NOT NULL,
  `Q10` int(11) NOT NULL,
  `Q11` int(11) NOT NULL,
  `Q12` int(11) NOT NULL,
  `Q13` int(11) NOT NULL,
  `Q14` int(11) NOT NULL,
  `Q15` int(11) NOT NULL,
  `Q16` int(11) NOT NULL,
  `Q17` int(11) NOT NULL,
  `Y` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `x_sample2`
--

INSERT INTO `x_sample2` (`id`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`, `Q6`, `Q7`, `Q8`, `Q9`, `Q10`, `Q11`, `Q12`, `Q13`, `Q14`, `Q15`, `Q16`, `Q17`, `Y`) VALUES
(1, 5, 5, 3, 4, 5, 4, 5, 5, 4, 4, 2, 1, 2, 3, 4, 4, 4, 3),
(2, 4, 4, 5, 4, 5, 4, 4, 2, 5, 4, 3, 1, 4, 4, 5, 4, 5, 4),
(3, 4, 4, 4, 3, 4, 5, 2, 3, 3, 4, 1, 1, 2, 1, 3, 4, 4, 3),
(4, 4, 4, 5, 4, 4, 5, 2, 2, 4, 4, 2, 1, 1, 3, 3, 4, 5, 3),
(5, 5, 5, 4, 4, 4, 5, 5, 4, 4, 4, 1, 5, 4, 4, 4, 4, 4, 1),
(6, 4, 4, 3, 3, 3, 5, 3, 3, 4, 4, 4, 3, 3, 3, 4, 5, 5, 3),
(7, 4, 5, 5, 5, 5, 5, 4, 4, 4, 4, 2, 3, 3, 4, 3, 5, 5, 2),
(8, 3, 4, 4, 5, 5, 4, 3, 3, 4, 4, 2, 2, 3, 2, 2, 5, 5, 4),
(9, 4, 4, 5, 5, 5, 4, 5, 4, 4, 4, 3, 3, 3, 3, 3, 5, 4, 3),
(10, 4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 2, 2, 4, 4, 4, 4, 5, 3),
(11, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 1, 4, 4, 4, 5, 5, 1),
(12, 4, 4, 5, 4, 4, 5, 4, 4, 4, 4, 2, 3, 4, 4, 3, 5, 5, 3),
(13, 5, 5, 5, 5, 5, 5, 4, 4, 4, 5, 3, 3, 4, 5, 3, 4, 4, 3),
(14, 5, 5, 5, 4, 4, 3, 4, 4, 4, 4, 2, 1, 3, 3, 2, 4, 4, 4),
(15, 4, 4, 5, 4, 4, 3, 3, 4, 4, 4, 2, 2, 2, 4, 3, 5, 5, 2),
(16, 4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 4, 2, 4, 4, 4, 4, 4, 4),
(17, 3, 4, 5, 4, 5, 3, 2, 2, 3, 5, 3, 2, 5, 5, 5, 5, 5, 3),
(18, 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4, 5, 4, 5, 4, 4),
(19, 4, 4, 5, 2, 3, 3, 4, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 4),
(20, 4, 4, 3, 3, 4, 4, 4, 4, 4, 4, 4, 2, 3, 3, 3, 4, 4, 3),
(21, 4, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 4, 5, 5, 2),
(22, 5, 5, 4, 2, 4, 4, 5, 4, 5, 4, 2, 2, 4, 2, 4, 4, 5, 3),
(23, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 2, 4, 4, 5, 5, 5),
(24, 4, 4, 4, 3, 4, 2, 3, 2, 4, 4, 2, 2, 4, 2, 4, 4, 5, 2),
(25, 4, 4, 4, 5, 2, 5, 5, 5, 4, 4, 3, 4, 4, 4, 5, 4, 5, 3),
(26, 5, 4, 3, 4, 5, 4, 4, 3, 3, 4, 5, 5, 5, 4, 5, 5, 4, 4),
(27, 5, 5, 5, 2, 4, 4, 2, 2, 4, 4, 2, 2, 5, 4, 4, 4, 4, 4),
(28, 4, 4, 5, 2, 2, 5, 2, 2, 5, 5, 1, 2, 2, 2, 5, 5, 5, 4),
(29, 3, 4, 4, 2, 3, 4, 2, 2, 4, 4, 1, 2, 2, 2, 3, 4, 4, 4),
(30, 4, 4, 4, 3, 4, 4, 3, 2, 4, 4, 2, 2, 4, 4, 4, 4, 4, 4),
(31, 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 3, 3, 3, 3, 4, 5, 5, 3),
(32, 4, 4, 5, 4, 3, 4, 5, 5, 5, 5, 4, 3, 3, 3, 4, 5, 5, 3),
(33, 4, 5, 5, 3, 4, 2, 4, 4, 5, 3, 3, 2, 4, 1, 2, 4, 5, 5),
(34, 4, 4, 5, 4, 3, 4, 2, 3, 5, 4, 1, 1, 2, 3, 4, 4, 4, 4),
(35, 4, 3, 5, 4, 4, 3, 3, 4, 4, 5, 4, 3, 2, 4, 4, 5, 5, 4),
(36, 4, 4, 4, 2, 3, 5, 2, 3, 3, 3, 4, 2, 4, 4, 4, 4, 4, 3),
(37, 4, 4, 3, 3, 4, 5, 4, 5, 4, 4, 3, 2, 3, 3, 3, 4, 5, 3),
(38, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1),
(39, 4, 4, 4, 3, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 3),
(40, 4, 3, 3, 3, 4, 5, 4, 5, 5, 5, 3, 2, 3, 2, 3, 5, 3, 2),
(41, 4, 5, 4, 3, 4, 3, 2, 3, 4, 4, 2, 1, 4, 5, 4, 4, 5, 4),
(42, 5, 4, 5, 4, 4, 5, 2, 2, 2, 2, 1, 1, 3, 2, 3, 5, 5, 5),
(43, 5, 4, 4, 3, 3, 3, 4, 5, 5, 4, 3, 3, 3, 3, 3, 5, 5, 3),
(44, 5, 4, 4, 3, 3, 3, 5, 5, 4, 4, 3, 2, 3, 2, 4, 4, 5, 4),
(45, 5, 4, 4, 1, 2, 4, 4, 4, 4, 4, 1, 1, 1, 4, 4, 5, 5, 2),
(46, 3, 4, 3, 5, 5, 5, 4, 4, 4, 4, 3, 2, 3, 4, 3, 4, 5, 2),
(47, 4, 5, 5, 2, 2, 3, 5, 4, 5, 5, 1, 1, 1, 5, 5, 5, 5, 4),
(48, 3, 4, 5, 3, 3, 3, 4, 4, 3, 3, 2, 1, 3, 4, 3, 3, 4, 4),
(49, 4, 4, 3, 3, 2, 3, 2, 2, 4, 4, 2, 2, 3, 3, 3, 4, 4, 4),
(50, 4, 4, 2, 2, 4, 4, 3, 2, 4, 4, 4, 1, 2, 1, 1, 4, 4, 5),
(51, 5, 3, 5, 5, 5, 5, 4, 5, 5, 5, 5, 3, 4, 3, 4, 5, 4, 2),
(52, 5, 5, 5, 5, 5, 5, 2, 3, 5, 4, 1, 1, 1, 4, 4, 5, 5, 3),
(53, 4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 2, 2, 1, 5, 5, 4, 4, 3),
(54, 4, 4, 4, 3, 4, 5, 2, 3, 3, 3, 1, 2, 2, 1, 3, 4, 5, 3),
(55, 4, 4, 4, 3, 4, 3, 3, 4, 4, 4, 3, 4, 2, 3, 3, 4, 4, 3),
(56, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 3, 5, 5, 2),
(57, 3, 4, 3, 4, 4, 5, 5, 5, 4, 4, 3, 4, 2, 4, 5, 4, 5, 2),
(58, 5, 5, 5, 4, 4, 5, 4, 5, 5, 5, 3, 2, 4, 4, 4, 5, 5, 3),
(59, 5, 5, 5, 2, 4, 4, 2, 2, 4, 4, 2, 2, 5, 4, 4, 4, 4, 4),
(60, 4, 4, 5, 2, 4, 3, 1, 4, 3, 4, 1, 1, 2, 4, 4, 4, 4, 4),
(61, 5, 5, 5, 4, 4, 4, 3, 3, 2, 3, 4, 3, 2, 4, 3, 4, 4, 4),
(62, 3, 4, 5, 4, 5, 4, 3, 4, 5, 5, 3, 1, 2, 4, 5, 5, 5, 3),
(63, 4, 5, 5, 4, 4, 5, 3, 2, 5, 5, 2, 2, 2, 4, 3, 5, 5, 3),
(64, 4, 4, 4, 3, 4, 5, 5, 5, 5, 5, 2, 4, 4, 4, 3, 4, 5, 3),
(65, 4, 4, 4, 4, 4, 4, 3, 3, 4, 4, 4, 3, 3, 3, 3, 5, 5, 3),
(66, 4, 3, 4, 4, 4, 5, 5, 5, 3, 3, 3, 4, 5, 4, 3, 5, 5, 2),
(67, 4, 4, 4, 3, 4, 5, 3, 3, 4, 4, 3, 3, 3, 4, 4, 5, 5, 3),
(68, 4, 4, 4, 4, 4, 4, 3, 4, 4, 4, 2, 4, 4, 4, 3, 4, 4, 3),
(69, 4, 4, 4, 3, 4, 5, 3, 3, 4, 4, 3, 3, 4, 4, 4, 3, 4, 3),
(70, 2, 4, 5, 4, 2, 1, 4, 4, 4, 4, 2, 4, 4, 4, 4, 5, 5, 4),
(71, 5, 5, 5, 5, 5, 1, 1, 1, 3, 3, 1, 1, 1, 5, 3, 3, 5, 2),
(72, 5, 5, 5, 5, 4, 2, 1, 2, 4, 4, 2, 1, 3, 4, 4, 2, 3, 3),
(73, 4, 3, 5, 4, 3, 1, 4, 3, 4, 3, 3, 2, 4, 3, 2, 5, 4, 4),
(74, 4, 4, 4, 4, 4, 5, 2, 3, 4, 4, 3, 3, 2, 4, 4, 4, 4, 2),
(75, 5, 4, 4, 2, 4, 4, 2, 3, 4, 4, 3, 2, 3, 4, 4, 4, 4, 4),
(76, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5),
(77, 5, 5, 5, 4, 5, 5, 3, 3, 4, 5, 4, 1, 2, 3, 3, 4, 5, 3),
(78, 4, 4, 5, 2, 4, 5, 3, 4, 2, 4, 2, 2, 4, 4, 4, 4, 5, 2),
(79, 5, 5, 5, 3, 4, 4, 2, 3, 4, 4, 4, 1, 3, 3, 3, 4, 5, 4),
(80, 4, 4, 4, 4, 3, 4, 4, 3, 4, 4, 3, 3, 3, 3, 3, 4, 4, 3),
(81, 5, 5, 3, 4, 5, 4, 5, 5, 4, 4, 2, 1, 2, 3, 4, 4, 4, 3),
(82, 4, 4, 4, 4, 4, 4, 2, 2, 4, 4, 2, 3, 2, 4, 4, 4, 4, 4),
(83, 5, 4, 5, 4, 4, 4, 3, 2, 4, 4, 3, 2, 3, 4, 3, 4, 4, 4),
(84, 4, 4, 4, 5, 5, 5, 4, 3, 4, 5, 3, 4, 4, 4, 3, 4, 5, 3),
(85, 4, 5, 4, 4, 3, 3, 3, 2, 4, 5, 3, 3, 5, 4, 3, 5, 4, 4),
(86, 5, 4, 3, 3, 3, 3, 2, 3, 4, 4, 4, 3, 3, 4, 3, 4, 4, 3),
(87, 4, 5, 3, 4, 4, 4, 3, 4, 4, 5, 4, 3, 3, 3, 3, 4, 4, 4),
(88, 4, 4, 5, 5, 3, 5, 3, 2, 5, 4, 3, 2, 4, 3, 3, 4, 4, 4),
(89, 4, 4, 4, 4, 4, 5, 4, 3, 4, 4, 2, 3, 4, 3, 2, 5, 4, 3),
(90, 4, 4, 3, 3, 5, 4, 3, 2, 4, 4, 2, 2, 4, 4, 4, 5, 5, 3),
(91, 4, 5, 4, 4, 3, 3, 3, 3, 3, 3, 2, 3, 3, 4, 2, 5, 4, 5),
(92, 4, 4, 5, 5, 4, 5, 3, 3, 3, 3, 3, 2, 3, 3, 3, 4, 5, 4),
(93, 5, 5, 5, 3, 5, 4, 3, 2, 4, 4, 3, 1, 3, 3, 4, 4, 4, 3),
(94, 4, 4, 4, 4, 2, 4, 4, 3, 5, 5, 3, 1, 3, 4, 3, 4, 3, 3),
(95, 4, 4, 4, 5, 3, 3, 3, 3, 3, 3, 2, 1, 4, 3, 2, 4, 5, 4),
(96, 4, 5, 5, 4, 4, 5, 2, 4, 4, 4, 3, 2, 4, 3, 3, 5, 3, 4),
(97, 5, 4, 4, 4, 5, 5, 3, 4, 3, 3, 4, 3, 4, 4, 2, 5, 5, 4),
(98, 4, 4, 4, 4, 3, 4, 3, 5, 4, 4, 1, 2, 4, 3, 4, 4, 4, 3),
(99, 4, 4, 5, 4, 4, 3, 4, 3, 4, 5, 1, 2, 4, 5, 3, 4, 4, 3),
(100, 3, 4, 4, 5, 2, 5, 2, 3, 4, 3, 1, 1, 4, 2, 3, 4, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `x_sample3`
--

CREATE TABLE `x_sample3` (
  `id` int(11) NOT NULL,
  `tekanandarah` int(11) NOT NULL,
  `ukurantubuh` float NOT NULL,
  `umur` int(11) NOT NULL,
  `merokok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `x_sample3`
--

INSERT INTO `x_sample3` (`id`, `tekanandarah`, `ukurantubuh`, `umur`, `merokok`) VALUES
(1, 135, 2.876, 45, 0),
(2, 122, 3.251, 41, 0),
(3, 130, 3.1, 49, 0),
(4, 148, 3.768, 42, 0),
(5, 146, 2.979, 54, 1),
(6, 129, 2.79, 47, 1),
(7, 162, 3.668, 60, 1),
(8, 160, 3.612, 48, 1),
(9, 144, 2.368, 44, 1),
(10, 180, 4.637, 64, 1),
(11, 166, 3.877, 59, 1),
(12, 138, 4.032, 51, 1),
(13, 152, 4.116, 64, 0),
(14, 138, 3.673, 56, 0),
(15, 140, 3.562, 54, 1),
(16, 134, 2.998, 50, 1),
(17, 145, 3.36, 49, 1),
(18, 142, 3.024, 46, 1),
(19, 135, 3.171, 57, 0),
(20, 142, 3.401, 56, 0),
(21, 150, 3.628, 56, 1),
(22, 144, 3.751, 58, 0),
(23, 137, 3.296, 53, 0),
(24, 132, 3.21, 50, 0),
(25, 149, 3.301, 54, 1),
(26, 132, 3.017, 48, 1),
(27, 120, 2.789, 43, 0),
(28, 126, 2.956, 43, 1),
(29, 161, 3.8, 63, 0),
(30, 170, 4.132, 63, 1),
(31, 152, 3.962, 62, 0),
(32, 162, 4.01, 65, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `kuisioner`
--
ALTER TABLE `kuisioner`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `opsi`
--
ALTER TABLE `opsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `x_generate`
--
ALTER TABLE `x_generate`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `x_sample1`
--
ALTER TABLE `x_sample1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `x_sample2`
--
ALTER TABLE `x_sample2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `x_sample3`
--
ALTER TABLE `x_sample3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `opsi`
--
ALTER TABLE `opsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `x_sample1`
--
ALTER TABLE `x_sample1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `x_sample2`
--
ALTER TABLE `x_sample2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `x_sample3`
--
ALTER TABLE `x_sample3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
