-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 06, 2020 at 03:11 AM
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
(68, 'P001', 'Y', '4'),
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
(102, 'P003', 'Y', '1');

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
(2, 'Brand Switching', 5, '<p style=\"text-align: justify;\">Penyebab perilaku brand switching ini dapat terjadi karena perubahan perilaku konsumen entah itu dari sisi konsumen (internal) atau dari pengaruh lingkungan (eksternal). Faktor internal disebabkan oleh perilaku variety seeking. Perilaku variety seeking menurut Kahn, Kalnawi, dan Morrison (1999) disebut sebagai kecenderungan individu-individu untuk mencari keberagaman dalam memilih jasa untuk mencari keberagaman dalam memilih jasa atau barang pada suatu waktu yang timbul karena beberapa alasan yang berbeda(Santoso, 2011). Sedangkan faktor eksternal bisa disebakan karena kegagalan produk (product problem), kegagalan costumer service (service problem), daya tarik pesaing atau nilai lebih yang dimiliki oleh merek pesaing dan Switching cost (Susanti, 2014). Untuk menganalisis perilaku-perilaku tersebut yang dimana menjadi pemicu brand switching, metode yang dapat digunakan adalah dengan melakukan pengumpulan data dan memproses data-data tersebut agar dapat dijadikan informasi sehingga nantinya dapat dikembangkan untuk mengambil keputusan-keputusan strategis yaitu dengan metode data mining. Data mining merupakan proses semi otomatik yang menggunakan teknik statistik, matematika, kecerdasan buatan, dan machine learning untuk mengekstraksi dan mengidentifikasi informasi pengetahuan potensial dan berguna yang bermanfaat yang tersimpan di dalam database besar (Turban et al, 2005). Dengan konsep data mining, data yang dikumpulkan dapat di identifikasi dan di analisis untuk selanjutanya akan menghasilkan knowledge atau pengetahuan baru. Untuk menghasilkan knowledge atau pengetahuan baru dari data-data yang sudah dikumpulkan pada penelitian ini maka digunakan metode regresi linear berganda. Regresi linier berganda adalah metode statistika yang digunakan untuk membentuk model hubungan antara variabel terikat (dependen) dengan satu atau lebih variabel bebas (independen). Metode regresi pada penelitian ini digunakan untuk mengetahui pengaruh terbesar dan korelasi diantara variabel-variabel dan data-data yang digunakan dari penyebab perilaku brand switching pengguna smartphone.<br />Berdasarkan penelitian sebelumnya yang dilakukan oleh Dian Melfa Susanti pada tahun 2014 dengan judul &ldquo;Analisis Faktor-Faktor Yang Mempengaruhi Brand Switching Pada Telepon Seluler Merek Nokia&rdquo; yang membahas tentang analisa terhadap faktor-faktor brand switching dimana kuesioner didistribusikan kepada mahasiswa S1 reguler Institut Pertanian Bogor (IPB) dengan jumlah responden sebanyak 100 orang. Hasil kuesioner diolah menggunakan alat analisis Structural Equation Model (SEM) dengan perangkat lunak SmartPLS versi 2.0. Hasil penelitian menunjukkan bahwa faktor penyebab brand switching telepon seluler merek Nokia pada mahasiwa secara signifikan dipengaruhi oleh variety seeking (Susanti, 2014). Kemudian pada penelitian yang dilakukan oleh Nur Nafi&rsquo;iyah pada tahun 2016 dengan judul &ldquo;Perbandingan Regresi Linear, Backpropagation Dan Fuzzy Mamdani Dalam Prediksi Harga Emas&rdquo; Tujuan dari penelitian ini untuk melihat hasil regresi linear, backpropagation dan fuzzy mamdani dalam memprediksi harga emas. Regresi linear merupakan persamaan garis dari data yang dikumpulkan. Fuzzy mamdani merupakan algoritma fuzzy yang menggunakan nilai yang crips(0-1). Hasil dari ketiga metode menunjukkan bahwa korelasi dari regresi linear sangat bagus, yaitu 0,929. Dan nilai korelasi tertinggi dari ketiga metode berasal dari metode backpropagation. Hal ini terbukti bahwa dalam memprediksi harga emas menggunakan backpropagation lebih sedikit errornya &plusmn; 0,05(Nafi&rsquo;iyah, 2016). Pada penelitian yang dilakukan oleh Muhammad Irfan Firdaus yang berjudul &ldquo;Analisis Pengaruh Harga, Kebutuhan Mencari Variasi, Dan Word Of Mouth Dalam Perilaku Brand Switching Pada Minuman Bersoda Coca-Cola Ke Big Cola&rdquo; Untuk variabel independen pada penilitian ini terdiri dari harga (X1), kebutuhan mencari variasi (X2), dan word of mouth (X3) serta variabel dependennya adalah Brand Switching (Y). Sampel berjumlah 100 responden di Kota semarang yang diambil dengan menggunakan teknik Purposive sampling. Analisa menggunakan SPSS 21.0 yang meliputi uji validitas, uji reliabilitas, uji asumsi klasik, regresi linier berganda, pengujian hipotesis melalui uji F dan uji t, dan analisis koefisien determinasi (R&sup2;). Dari analisis tersebut diperoleh bahwa harga menunjukkan koefisien regresi paling besar sehingga dapat disimpulkan bahwa variabel tersebut adalah faktor yang paling penting yang mempengaruhi brand switching pada produk minuman ringan berkarbonasi. Kemudian pada penelitian yang dilakukan oleh Siska Ernida Wati, Djakaria Sebayang, dan Rachmad Sitepu yang berjudul &ldquo;Perbandingan Metode Fuzzy Dengan Regresi Linier Berganda Dalam Peramalan Jumlah Produksi (Studi Kasus: Produksi Kelapa Sawit Di Pt. Perkebunan III (Persero) Medan Tahun 2011-2012)&rdquo; menunjukkan nilai rata-rata kesalahan relatif dari peramalan setiap metode, diperoleh nilai rata-rata kesalahan relatif metode fuzzy sebesar 0,20748 atau 20,748 % dan regresi linear berganda sebesar 0,09383 atau 9,383%. Besarnya nilai tersebut memperlihatkan bahwa nilai rata-rata kesalahan relatif regresi linier berganda lebih kecil daripada metode fuzzy. Maka untuk kasus dengan variabel input dan output dalam penelitian ini dapat disimpulkan bahwa peramalan dengan menggunakan regresi linier berganda lebih baik daripada dengan metode fuzzy (Wati, Sebayang, &amp; Sitepu, 2013).</p>', '2020-06-22'),
(3, 'Metode Penelitian', 4, '<p>Metode penelitian yang digunakan adalah metode analisis deskriptif untuk menganalisa perilaku brand switching pada pengguna smartphone. Penelitian deskriptif adalah penelitian dilakukan dengan menganalisa dan melakukan pembelajaran terhadap data statistik dengan cara menyajikan,menghimpun data dan menganalisis data menjadi informasi yang nantinya bisa diterapkan sebagai acuan untuk mengatasi permasalahan yang diteliti.</p>\r\n<p>Dalam penyusunan penelitian ini,untuk mengumpulkan data yang dibutuhkan, maka metode pengumpulan data dilakukan sebagai berikut :</p>\r\n<ol>\r\n<li>Observasi<br />Merupakan suatu metode untuk mendapatkan data dengan cara melakukan pengamatan langsung kepada objek penelitian.</li>\r\n<li>Studi Pustaka<br />Merupakan suatu metode untuk mendapatkan data dengan cara mempelajari permasalahan dari penelitian yang berhubungan dengan objek yang diteliti sesuai dengan yang bersumber dari buku-buku pedoman,jurnal dan literatur yang disusun oleh para peneliti untuk melengkapi data yang diperlukan dalam menyusun penelitian.</li>\r\n<li>Angket (kuisioner)<br />Merupakan suatu metode untuk mendapatkan data dengan cara memberikan seperangkat pertanyaan atau pernyataan tertulis kepada para responden untuk dijawab sebagai data untuk menyusun penelitian.</li>\r\n<li>Analisis Sistem<br />Analisis sistem ini merupakan penganalisaan terhadap kebutuhan dalam pembuatan sistem. Sehingga dapat diketahui kebutuhan-kebutuha apa saja yang diperlukan dalam pembuatan sistem pada penelitian ini.</li>\r\n<li>Perancangan Sistem<br />Pada bagian perancangan ini akan melakukan pemodelan terhadap sistem yang akan dibuat berdasarkan hasil analisis yang telah dilakukan sebelumnya.</li>\r\n<li>Implementasi Perangkat Lunak<br />Tahap ini akan mengimplementasikan sistem yang sudah dirancang sebelumnya.</li>\r\n<li>Pengujian dan Analisis<br />Pada tahap ini akan dilakukan pengujian terhadap implementasi yang telah<br />dikerjakan. Kemudian akan dilakukan analisis berdasarkan hasil dari pengujian.</li>\r\n<li>Kesimpulan dan Saran<br />Pada penelitian ini akan diberikan kesimpulan dari hasil penelitian yang telah dilakukan dan akan menyertakan saran yang dapat dikembangkan untuk penelitian di masa depan sehingga mendapatkan hasil yang lebih baik.</li>\r\n</ol>\r\n<p>&nbsp;</p>', '2020-06-22');

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
  `bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuisioner`
--

INSERT INTO `kuisioner` (`kode`, `nama`, `kategori`, `jenis`, `fungsi`, `bobot`) VALUES
('P01', 'Nama Lengkap Responden', 'D1', '0', '0', 0),
('Q01', 'Merk HP Respondent Sebelumnya', 'D1', '1', '2', -0.06807240549879277),
('Q02', 'Pengeluaran Respondent Perbulan', 'D1', '1', '2', 0.3470109955272981),
('Q03', 'Apakah tingkat kenyamanan  smartphone sekarang lebih baik dari Smartphone sebelumnya ?', 'D2', '1', '2', 0.26162979652141616),
('Q04', 'Apakah Fitur Kamera dan Audio Pada  smartphone sekarang lebih baik dari Smartphone sebelumnya?', 'D2', '1', '2', -0.060038881508270664),
('Q05', 'Apakah Prosessor Pada  smartphone sekarang lebih baik dari Smartphone sebelumnya ?', 'D2', '1', '2', -0.11054568613268308),
('Q06', 'Apakah Grafis dan resolusi layer Pada  smartphone sekarang lebih baik dari Smartphone sebelumnya ?', 'D2', '1', '2', -0.0466603240535835),
('Q07', 'Apakah manajemen RAM Pada  smartphone sekarang lebih baik dari Smartphone sebelumnya ?', 'D2', '1', '2', -0.0305937810101993),
('Q08', 'Apakah Penyimpan Memori Pada  smartphone sekarang lebih baik dari Smartphone sebelumnya ?', 'D2', '1', '2', -0.1637859448115902),
('Q09', 'Apakah Ketersediaan tempat servis resmi smartphone sekarang cukup tersedia ?', 'D3', '1', '2', 0.16791831904150603),
('Q10', 'Apakah Pelayanan klaim garansi kerusakan resmi smartphone sekarang cukup memuaskan ?', 'D3', '1', '2', -0.16039320160927656),
('Q11', 'Apakah hasil perbaikan smartphone di tempat servis resmi cukup smartphone sekarang memuaskan ?', 'D3', '1', '2', 0.18298350260889215),
('Q12', 'Apakah Responden berpindah merk smartphone karena merasa bosan dengan merk sebelumnya?', 'D4', '1', '2', -0.05676132566038504),
('Q13', 'Apakah Responden pindah merk smartphone karena penasaran dengan merk smartphone yang sekarang digunakan ?', 'D4', '1', '2', 0.09688413236813212),
('Q14', 'Produk Hp yang sekarang memiliki harga yang lebih seimbang dengan spesifikasi yang lebih mumpuni dibandingkan merk sebelumnya?', 'D5', '1', '2', -0.07088767086249223),
('Q15', 'Produk HP yang sekarang memiliki gengsi yang lebih tinggi dibandingkan yang sebelumnya?', 'D5', '1', '2', -0.08458728065801685),
('Y', 'Merk HP Respondent Sekarang', 'D6', '1', '1', 2.294723837535556);

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
(77, 'Y', 1, 'Apple'),
(78, 'Y', 2, 'Asus'),
(79, 'Y', 3, 'Samsung'),
(80, 'Y', 4, 'Xiaomi'),
(81, 'Y', 5, 'Oppo'),
(82, 'Y', 6, 'Vivo');

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
('1', 5, 5, 3, 4, 5, 4, 5, 5, 4, 4, 2, 1, 2, 3, 4, 3),
('10', 4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 2, 2, 4, 4, 4, 3),
('100', 3, 4, 4, 5, 2, 5, 2, 3, 4, 3, 1, 1, 4, 2, 3, 3),
('11', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 1, 4, 4, 4, 1),
('12', 4, 4, 5, 4, 4, 5, 4, 4, 4, 4, 2, 3, 4, 4, 3, 3),
('13', 5, 5, 5, 5, 5, 5, 4, 4, 4, 5, 3, 3, 4, 5, 3, 3),
('14', 5, 5, 5, 4, 4, 3, 4, 4, 4, 4, 2, 1, 3, 3, 2, 4),
('15', 4, 4, 5, 4, 4, 3, 3, 4, 4, 4, 2, 2, 2, 4, 3, 2),
('16', 4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 4, 2, 4, 4, 4, 4),
('17', 3, 4, 5, 4, 5, 3, 2, 2, 3, 5, 3, 2, 5, 5, 5, 3),
('18', 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4, 5, 4, 4),
('19', 4, 4, 5, 2, 3, 3, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4),
('2', 4, 4, 5, 4, 5, 4, 4, 2, 5, 4, 3, 1, 4, 4, 5, 4),
('20', 4, 4, 3, 3, 4, 4, 4, 4, 4, 4, 4, 2, 3, 3, 3, 3),
('21', 4, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 4, 2),
('22', 5, 5, 4, 2, 4, 4, 5, 4, 5, 4, 2, 2, 4, 2, 4, 3),
('23', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 2, 4, 4, 5),
('24', 4, 4, 4, 3, 4, 2, 3, 2, 4, 4, 2, 2, 4, 2, 4, 2),
('25', 4, 4, 4, 5, 2, 5, 5, 5, 4, 4, 3, 4, 4, 4, 5, 3),
('26', 5, 4, 3, 4, 5, 4, 4, 3, 3, 4, 5, 5, 5, 4, 5, 4),
('27', 5, 5, 5, 2, 4, 4, 2, 2, 4, 4, 2, 2, 5, 4, 4, 4),
('28', 4, 4, 5, 2, 2, 5, 2, 2, 5, 5, 1, 2, 2, 2, 5, 4),
('29', 3, 4, 4, 2, 3, 4, 2, 2, 4, 4, 1, 2, 2, 2, 3, 4),
('3', 4, 4, 4, 3, 4, 5, 2, 3, 3, 4, 1, 1, 2, 1, 3, 3),
('30', 4, 4, 4, 3, 4, 4, 3, 2, 4, 4, 2, 2, 4, 4, 4, 4),
('31', 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 3, 3, 3, 3, 4, 3),
('32', 4, 4, 5, 4, 3, 4, 5, 5, 5, 5, 4, 3, 3, 3, 4, 3),
('33', 4, 5, 5, 3, 4, 2, 4, 4, 5, 3, 3, 2, 4, 1, 2, 5),
('34', 4, 4, 5, 4, 3, 4, 2, 3, 5, 4, 1, 1, 2, 3, 4, 4),
('35', 4, 3, 5, 4, 4, 3, 3, 4, 4, 5, 4, 3, 2, 4, 4, 4),
('36', 4, 4, 4, 2, 3, 5, 2, 3, 3, 3, 4, 2, 4, 4, 4, 3),
('37', 4, 4, 3, 3, 4, 5, 4, 5, 4, 4, 3, 2, 3, 3, 3, 3),
('38', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1),
('39', 4, 4, 4, 3, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 4, 3),
('4', 4, 4, 5, 4, 4, 5, 2, 2, 4, 4, 2, 1, 1, 3, 3, 3),
('40', 4, 3, 3, 3, 4, 5, 4, 5, 5, 5, 3, 2, 3, 2, 3, 2),
('41', 4, 5, 4, 3, 4, 3, 2, 3, 4, 4, 2, 1, 4, 5, 4, 4),
('42', 5, 4, 5, 4, 4, 5, 2, 2, 2, 2, 1, 1, 3, 2, 3, 5),
('43', 5, 4, 4, 3, 3, 3, 4, 5, 5, 4, 3, 3, 3, 3, 3, 3),
('44', 5, 4, 4, 3, 3, 3, 5, 5, 4, 4, 3, 2, 3, 2, 4, 4),
('45', 5, 4, 4, 1, 2, 4, 4, 4, 4, 4, 1, 1, 1, 4, 4, 2),
('46', 3, 4, 3, 5, 5, 5, 4, 4, 4, 4, 3, 2, 3, 4, 3, 2),
('47', 4, 5, 5, 2, 2, 3, 5, 4, 5, 5, 1, 1, 1, 5, 5, 4),
('48', 3, 4, 5, 3, 3, 3, 4, 4, 3, 3, 2, 1, 3, 4, 3, 4),
('49', 4, 4, 3, 3, 2, 3, 2, 2, 4, 4, 2, 2, 3, 3, 3, 4),
('5', 5, 5, 4, 4, 4, 5, 5, 4, 4, 4, 1, 5, 4, 4, 4, 1),
('50', 4, 4, 2, 2, 4, 4, 3, 2, 4, 4, 4, 1, 2, 1, 1, 5),
('51', 5, 3, 5, 5, 5, 5, 4, 5, 5, 5, 5, 3, 4, 3, 4, 2),
('52', 5, 5, 5, 5, 5, 5, 2, 3, 5, 4, 1, 1, 1, 4, 4, 3),
('53', 4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 2, 2, 1, 5, 5, 3),
('54', 4, 4, 4, 3, 4, 5, 2, 3, 3, 3, 1, 2, 2, 1, 3, 3),
('55', 4, 4, 4, 3, 4, 3, 3, 4, 4, 4, 3, 4, 2, 3, 3, 3),
('56', 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 3, 2),
('57', 3, 4, 3, 4, 4, 5, 5, 5, 4, 4, 3, 4, 2, 4, 5, 2),
('58', 5, 5, 5, 4, 4, 5, 4, 5, 5, 5, 3, 2, 4, 4, 4, 3),
('59', 5, 5, 5, 2, 4, 4, 2, 2, 4, 4, 2, 2, 5, 4, 4, 4),
('6', 4, 4, 3, 3, 3, 5, 3, 3, 4, 4, 4, 3, 3, 3, 4, 3),
('60', 4, 4, 5, 2, 4, 3, 1, 4, 3, 4, 1, 1, 2, 4, 4, 4),
('61', 5, 5, 5, 4, 4, 4, 3, 3, 2, 3, 4, 3, 2, 4, 3, 4),
('62', 3, 4, 5, 4, 5, 4, 3, 4, 5, 5, 3, 1, 2, 4, 5, 3),
('63', 4, 5, 5, 4, 4, 5, 3, 2, 5, 5, 2, 2, 2, 4, 3, 3),
('64', 4, 4, 4, 3, 4, 5, 5, 5, 5, 5, 2, 4, 4, 4, 3, 3),
('65', 4, 4, 4, 4, 4, 4, 3, 3, 4, 4, 4, 3, 3, 3, 3, 3),
('66', 4, 3, 4, 4, 4, 5, 5, 5, 3, 3, 3, 4, 5, 4, 3, 2),
('67', 4, 4, 4, 3, 4, 5, 3, 3, 4, 4, 3, 3, 3, 4, 4, 3),
('68', 4, 4, 4, 4, 4, 4, 3, 4, 4, 4, 2, 4, 4, 4, 3, 3),
('69', 4, 4, 4, 3, 4, 5, 3, 3, 4, 4, 3, 3, 4, 4, 4, 3),
('7', 4, 5, 5, 5, 5, 5, 4, 4, 4, 4, 2, 3, 3, 4, 3, 2),
('70', 2, 4, 5, 4, 2, 1, 4, 4, 4, 4, 2, 4, 4, 4, 4, 4),
('71', 5, 5, 5, 5, 5, 1, 1, 1, 3, 3, 1, 1, 1, 5, 3, 2),
('72', 5, 5, 5, 5, 4, 2, 1, 2, 4, 4, 2, 1, 3, 4, 4, 3),
('73', 4, 3, 5, 4, 3, 1, 4, 3, 4, 3, 3, 2, 4, 3, 2, 4),
('74', 4, 4, 4, 4, 4, 5, 2, 3, 4, 4, 3, 3, 2, 4, 4, 2),
('75', 5, 4, 4, 2, 4, 4, 2, 3, 4, 4, 3, 2, 3, 4, 4, 4),
('76', 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5),
('77', 5, 5, 5, 4, 5, 5, 3, 3, 4, 5, 4, 1, 2, 3, 3, 3),
('78', 4, 4, 5, 2, 4, 5, 3, 4, 2, 4, 2, 2, 4, 4, 4, 2),
('79', 5, 5, 5, 3, 4, 4, 2, 3, 4, 4, 4, 1, 3, 3, 3, 4),
('8', 3, 4, 4, 5, 5, 4, 3, 3, 4, 4, 2, 2, 3, 2, 2, 4),
('80', 4, 4, 4, 4, 3, 4, 4, 3, 4, 4, 3, 3, 3, 3, 3, 3),
('81', 5, 5, 3, 4, 5, 4, 5, 5, 4, 4, 2, 1, 2, 3, 4, 3),
('82', 4, 4, 4, 4, 4, 4, 2, 2, 4, 4, 2, 3, 2, 4, 4, 4),
('83', 5, 4, 5, 4, 4, 4, 3, 2, 4, 4, 3, 2, 3, 4, 3, 4),
('84', 4, 4, 4, 5, 5, 5, 4, 3, 4, 5, 3, 4, 4, 4, 3, 3),
('85', 4, 5, 4, 4, 3, 3, 3, 2, 4, 5, 3, 3, 5, 4, 3, 4),
('86', 5, 4, 3, 3, 3, 3, 2, 3, 4, 4, 4, 3, 3, 4, 3, 3),
('87', 4, 5, 3, 4, 4, 4, 3, 4, 4, 5, 4, 3, 3, 3, 3, 4),
('88', 4, 4, 5, 5, 3, 5, 3, 2, 5, 4, 3, 2, 4, 3, 3, 4),
('89', 4, 4, 4, 4, 4, 5, 4, 3, 4, 4, 2, 3, 4, 3, 2, 3),
('9', 4, 4, 5, 5, 5, 4, 5, 4, 4, 4, 3, 3, 3, 3, 3, 3),
('90', 4, 4, 3, 3, 5, 4, 3, 2, 4, 4, 2, 2, 4, 4, 4, 3),
('91', 4, 5, 4, 4, 3, 3, 3, 3, 3, 3, 2, 3, 3, 4, 2, 5),
('92', 4, 4, 5, 5, 4, 5, 3, 3, 3, 3, 3, 2, 3, 3, 3, 4),
('93', 5, 5, 5, 3, 5, 4, 3, 2, 4, 4, 3, 1, 3, 3, 4, 3),
('94', 4, 4, 4, 4, 2, 4, 4, 3, 5, 5, 3, 1, 3, 4, 3, 3),
('95', 4, 4, 4, 5, 3, 3, 3, 3, 3, 3, 2, 1, 4, 3, 2, 4),
('96', 4, 5, 5, 4, 4, 5, 2, 4, 4, 4, 3, 2, 4, 3, 3, 4),
('97', 5, 4, 4, 4, 5, 5, 3, 4, 3, 3, 4, 3, 4, 4, 2, 4),
('98', 4, 4, 4, 4, 3, 4, 3, 5, 4, 4, 1, 2, 4, 3, 4, 3),
('99', 4, 4, 5, 4, 4, 3, 4, 3, 4, 5, 1, 2, 4, 5, 3, 3),
('id', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('P001', 1, 1, 5, 5, 5, 5, 5, 3, 4, 5, 2, 4, 5, 5, 3, 4),
('P002', 4, 3, 5, 4, 5, 5, 5, 5, 4, 5, 4, 3, 4, 5, 4, 1);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `opsi`
--
ALTER TABLE `opsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
