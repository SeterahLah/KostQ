-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 08:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kostku`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nama_album` char(50) NOT NULL,
  `slug_album` char(50) NOT NULL,
  `foto` text NOT NULL,
  `created_by` char(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `slug_album`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Percobaan', 'percobaan', 'percobaan20180411012221.jpg', 'amperakoding', '2018-04-11 06:14:08', 'amperakoding', '2021-05-17 19:57:25'),
(2, 'Percobaan ke2', 'percobaan-ke2', 'percobaan-ke220180414141810.jpg', 'amperakoding', '2018-04-11 06:20:52', 'amperakoding', '2021-05-17 19:57:25'),
(3, 'Coba Lagi', 'coba-lagi', 'coba-lagi20180414141800.jpg', 'amperakoding', '2018-04-11 06:23:01', 'amperakoding', '2021-05-17 19:57:25'),
(4, 'Lagi coba', 'lagi-coba', 'lagi-coba20180414141618.jpg', 'amperakoding', '2018-04-11 06:23:11', 'amperakoding', '2021-05-17 19:57:25'),
(5, 'Scenery', 'scenery', 'scenery20180414141646.jpg', 'amperakoding', '2018-04-14 19:16:46', 'amperakoding', '2021-05-17 19:57:28'),
(6, 'Lake House', 'lake-house', 'lake-house20180414141705.jpg', 'amperakoding', '2018-04-14 19:17:05', 'amperakoding', '2021-05-17 19:57:28'),
(7, 'House 1', 'house-1', 'house20180414141719.jpg', 'amperakoding', '2018-04-14 19:17:19', 'sianok123', '2024-05-12 19:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `atas_nama` varchar(100) NOT NULL,
  `norek` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `atas_nama`, `norek`, `logo`) VALUES
(1, 'BNI', 'Dido Khoirulrijal', '12345678', 'bni.png'),
(2, 'BRI', 'Dido Khoirulrijal', '123456678', 'bri.png'),
(3, 'Mandiri', 'Dido Khoirulrijal', '111222211111', 'mandiri.png'),
(4, 'BCA', 'Dido Khoirulrijal', '0012345678', 'bca.png'),
(5, 'Bayar ditempat', 'Dido Khoirulrijal', 'Bayar dikasir aja', '');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_desc` text NOT NULL,
  `company_address` text NOT NULL,
  `company_maps` text NOT NULL,
  `company_phone` char(30) NOT NULL,
  `company_phone2` char(30) NOT NULL,
  `company_fax` char(30) NOT NULL,
  `company_email` char(30) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL,
  `created_by` char(50) NOT NULL,
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `company_name`, `company_desc`, `company_address`, `company_maps`, `company_phone`, `company_phone2`, `company_fax`, `company_email`, `foto`, `foto_type`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 'KostQ', 'Kost? konsep marketplace yang dapat mempertemukan antara pemilik kost dengan menyewa kost dalam satu website. Dari kebutuhan masyarakat akan kost - kost-an, inilah banyak pula penyewaan kost yang menyediakan berbagai fasilitas kost. Awamnya pengetahuan masyarakat terkait informasi penyewaan kost, sehingga akhirnya membuat seseorang sulit dalam mencari kost. \"Hampir seluruh kalangan baik anak muda maupun tua memanfaatkan internet untuk kehidupan pribadi seperti mencari informasi mengenai suatu tempat, contohnya mencari tempat layanan kos. <br><br>\r\n Untuk mengatasi permasalahan yang diatas tersebut, kami akan merancang sebuah system berbasis website untuk mempermudahkan pemilik kostan dalam mengelola data kostan dari pemesanan, penyewaan, pembayaran serta laporan yang dapat dikelola dengan baik oleh pemilik dan memudahkan penyewa kostan baik mahasiswa, karyawan, maupun masyarakat umum yang akan menyewa kostan tanpa harus bersusah payah mendatangi kost ke satu kost lainnya tetapi cukup dengan membuka aplikasi melalui situs website. Dari segi waktu dan biaya lebih efisien. Pembayaran pun dapat dilakukan melalui website ini. <br> <br>\r\nTujuan dari penelitian ini adalah untuk menghasilkan suatu informasi yang cepat dan akurat dalam membantu pemesanana maupun promosi kost. \"Pemilik harus melakukan kegiatan promosi yang efektif agar minat pelanggan meningkat dan penjualan produk meningkat (yusma et al., 2021) Tahap analisis kebutuhan sistem pada perancangan sistem pencarian kost berbasis web yaitu menganalisis kebutuhan pengguna terhadap sistem. Di dalam website ini dapat berisikan tentang informasi informasi yang menyediakan suatu yang berisi kost-kostan, yang dikemas secara detail, dilengkapi dengan letak lokasi kost dan fasilitas lainnya. Untuk itu sebagai pendukung kebutuhan sistem yang dibutuhkan untuk kelancaran dari proses pencarian kost dengan menggunakan website yang kami buat.\r\n', 'Jl. Ambangah Jak..... No. 354', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16327777.649419477!2d108.84621849858628!3d-2.415291213289622!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2c4c07d7496404b7%3A0xe37b4de71badf485!2sIndonesia!5e0!3m2!1sen!2sid!4v1506312173230\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '081234567890', '081234567890', '354', 'kostq@gmail.com', 'kostq20240618064903', '.png', '2017-11-09 06:45:34', NULL, 'amperakoding', 'Dido Khoirulrijal');

-- --------------------------------------------------------

--
-- Table structure for table `diskon`
--

CREATE TABLE `diskon` (
  `id` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `diskon`
--

INSERT INTO `diskon` (`id`, `harga`) VALUES
(1, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `nama_foto` char(100) NOT NULL,
  `slug_foto` char(100) NOT NULL,
  `foto` text NOT NULL,
  `created_by` char(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(20) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id_foto`, `album_id`, `nama_foto`, `slug_foto`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 1, 'Testing Saja Cuis', 'testing-saja-cuis', 'testing-saja-cuis20180411025319.jpg', 'amperakoding', '2018-04-11 07:41:29', 'amperakoding', '2021-05-17 19:57:13'),
(2, 4, 'Foto Lagi Coba', 'foto-lagi-coba', 'foto-lagi-coba20180411024503.jpg', 'amperakoding', '2018-04-11 07:45:03', 'amperakoding', '2021-05-17 19:58:17'),
(3, 3, 'Foto Coba Lagi Saja', 'foto-coba-lagi-saja', 'foto-coba-lagi-saja20180411024712.jpg', 'amperakoding', '2018-04-11 07:47:12', 'amperakoding', '2021-05-17 19:58:17'),
(4, 1, 'Teasdasd', 'teasdasd', 'teasdasd20180414101405.png', 'amperakoding', '2018-04-14 15:13:17', 'amperakoding', '2021-05-17 19:57:13'),
(5, 3, 'Agains', 'agains', 'agains20180414101428.jpg', 'amperakoding', '2018-04-14 15:14:29', 'amperakoding', '2021-05-17 19:58:17'),
(6, 4, 'Waasd', 'waasd', 'waasd20180414101515.jpg', 'amperakoding', '2018-04-14 15:15:15', 'amperakoding', '2021-05-17 19:58:17'),
(7, 1, 'ASczxc', 'asczxc', 'asczxc20180414101545.jpg', 'amperakoding', '2018-04-14 15:15:45', 'amperakoding', '2021-05-17 19:58:17'),
(8, 1, 'ASXzc', 'asxzc', 'asxzc20180414101604.jpg', 'amperakoding', '2018-04-14 15:16:05', 'amperakoding', '2021-05-17 19:58:17'),
(9, 2, 'ASczxcacasc', 'asczxcacasc', 'asczxcacasc20180414101613.png', 'amperakoding', '2018-04-14 15:16:13', 'amperakoding', '2021-05-17 19:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `id` int(11) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `is_available` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`id`, `jam`, `is_available`) VALUES
(1, '06:00:00', 1),
(2, '07:00:00', 1),
(3, '08:00:00', 1),
(4, '09:00:00', 1),
(5, '10:00:00', 1),
(6, '11:00:00', 1),
(7, '12:00:00', 1),
(8, '13:00:00', 1),
(9, '14:00:00', 1),
(10, '15:00:00', 1),
(11, '16:00:00', 1),
(12, '17:00:00', 1),
(13, '18:00:00', 1),
(14, '19:00:00', 1),
(15, '20:00:00', 1),
(16, '21:00:00', 1),
(17, '22:00:00', 1),
(18, '23:00:00', 1),
(19, '24:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL,
  `slug_kat` varchar(20) NOT NULL,
  `created_by` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug_kat`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(4, 'Kost Pria', 'kost-pria', 'Dido Khoirulrijal', '2024-05-12 11:43:27', '', NULL),
(5, 'kost Putri', 'kost-putri', 'Dido Khoirulrijal', '2024-05-12 11:43:43', '', NULL),
(6, 'kost Campur', 'kost-campur', 'Dido Khoirulrijal', '2024-05-12 11:44:24', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama_kontak` char(50) NOT NULL,
  `nohp` char(50) NOT NULL,
  `created_by` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama_kontak`, `nohp`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(4, 'Dido Khoirulrijal', '6289516757110', 'Dido Khoirulrijal', '2024-05-21 09:05:48', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kost`
--

CREATE TABLE `kost` (
  `id_kost` int(11) NOT NULL,
  `nama_kost` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `nama_perusahaan` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `sisa_kost` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `foto` text NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` varchar(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kost`
--

INSERT INTO `kost` (`id_kost`, `nama_kost`, `harga`, `nama_perusahaan`, `no_hp`, `lokasi`, `provinsi`, `kota`, `sisa_kost`, `deskripsi`, `kategori`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(27, 'Kost Bu Wiwi', 650000, 'Cv. Kost Sejahtera', '081234567890', 'Jalan Petani, Pontianak 78112, Indonesia', NULL, NULL, '2', 'Khusu cewek Yang mau ngekost lokasi strategis aman nyaman,<br>\r\n fasilitas lengkap, kasur, kipas angin, lemari dan wc di dalam, air pdam , listrik dan wifi di tanggung bapak kost ', '5', 'kost-bu-wiwi20240601162534.gif', 'Dido Khoirulrijal', '2024-05-14 22:12:20', 'Dido Khoirulrijal', '2024-06-01 16:25:34'),
(28, 'KOST PRIA SOF', 1500000, 'PT.  Info KostQ', '6287872570130', ' Komplek.Bumi sepakat permai No.10 A, Bansir Darat, Kec. Pontianak Tenggara, Kota Pontianak, Kalimantan Barat 78124', NULL, NULL, '5', 'BULANAN,MINGGUAN,HARIAN <br>\r\n????BULANAN = 1.500.000? <br>\r\n????MINGGUAN= 500.000?<br>\r\n????HARIAN=200.000?<br>\r\n(Free Listrik, Free WiFi, Free Air, Free Biaya Kebersihan, dll)<br><br>\r\n\r\n????Lokasi Super Strategis = Komplek.Bumi sepakat permai No.10 A, Bansir Darat, Kec. Pontianak Tenggara, Kota Pontianak, Kalimantan Barat 78124<br>\r\n\r\nNo telpon : 6287872570130<br>\r\n\r\nSekeliling Banyak Sekali Kuliner, Indomaret/Alfamart, Laundry, Apotek, ATM, Counter HP, dll<br>\r\n\r\nFasilitas Super Lengkap <br>\r\nFASILITAS LENGKAP<br>\r\n•?AC<br>\r\n•?Tv Smart<br>\r\n•?Spring Bed 160 x 200<br>\r\n•?Lemari Pakaian<br>\r\n•?Meja & Kursi<br>\r\n•?KamarMandi Dalam Water Heater<br>\r\n•?Dapur Pribadi* (Mini Kitchen)<br>\r\n•?Coridor Di lengkapi CCTV*<br>\r\n•?Parkiran Luas Di lengkapi CCTV<br>\r\ndll...<br><br>\r\n\r\nJika Butuh Kendaraan, Kami Juga Menyediakan Langsung RENTAL MOBIL & MOTOR (Satu Kelolaan Dengan Kost)<br>', '4', 'kost-pria-sof20240601130156.gif', 'Dido Khoirulrijal', '2024-05-15 08:09:17', 'Dido Khoirulrijal', '2024-06-01 13:01:56'),
(29, 'GRIYA LADIES', 1000000, 'PT.  Info KostQ', '6289693948618', 'Jalan Petani, Pontianak 78112, Indonesia', NULL, NULL, '3', 'Menerima kost harian dan bulanan<br>\nKHUSUS MAHASISWI<br>\n1JT / BLN<br>\nsyarat ketentuan berlaku<br>\n\nSpesifikasi:<br>\n- lokasi strategis<br>\n- listrik voucher<br>\n- kamar 3x4 tempat tidur + bantal<br>\n- lemari pakaian meja rias<br>\n- kamar mandi dalam dgn shower dan kloset duduk<br>\n\nInfo hubungi: 089693948618<br>\nac<br>\nfree wifi<br>\nfree air pdam<br>', '5', 'griya-ladies20240515083444.gif', 'Dido Khoirulrijal', '2024-05-15 08:34:44', 'Dido Khoirulrijal', '2024-05-17 06:46:23'),
(30, '-SURYA KOST-', 800000, 'cv. kost jak', '6282153178544', 'Jl. P. Diponegoro  Gg. Proklamasi  No.46B,46C', NULL, NULL, '4', 'Khusus Putra <br>\r\n(Bisa perhari,minggu,dan bulanan) <br>\r\n\r\nFasilitas :  <br>\r\n- ac  <br>\r\n- wifi <br>\r\n- Tv <br>\r\n- wastafel dan cermin <br>\r\n- kamar mandi dalam (Sudah shower) <br>\r\n- air pdam <br>\r\n- kasur tebal (bantal 2 dan selimut tebal) <br>\r\n- lemari <br>\r\n- kursi <br>\r\n- cctv <br>\r\n\r\n\"Catatan : Listrik sendiri\" <br>\r\n\r\nAgar lebih jelas bisa datang langsung ditempat,atau hubungi <br>\r\n\r\nResepsionis <br>\r\n hub wa : 082153178544 <br>', '4', 'surya-kost20240601105942.gif', 'Dido Khoirulrijal', '2024-05-15 08:44:24', 'Dido Khoirulrijal', '2024-06-01 10:59:42'),
(31, 'Kost Rafa', 1500000, 'PT.  info KostQ', '6282194061863', 'Blok S, Jl. Sepakat II  Bansir Darat, Kec. Pontianak Tenggara, Kota Pontianak, ', NULL, NULL, '3', 'Terima Kost Putri<br>\r\n\r\nAman dan nyaman, semua dapat akses 24jam, Full furnished, kebersihan terjaga.<br>\r\n\r\nKamar full AC 1PK, Tv, Wifi lancar, Kamar mandi dalam, Kulkas, Dapur Mini dalam kamar, Parkiran Mobil/Motor luas dan aman.<br>\r\n\r\nHarga 1,500.000 perbulan<br>\r\n\r\nLokasi : Blok S, Jl. Sepakat II  Bansir Darat, Kec. Pontianak Tenggara, Kota Pontianak, Kalimantan Barat 78112<br>\r\n\r\nChat Whatsapp : 082194061863 untuk info lebih lanjut.<br>', '5', 'kost-rafa20240601112216.gif', 'Dido Khoirulrijal', '2024-05-15 08:50:59', 'Dido Khoirulrijal', '2024-06-01 11:22:16'),
(32, 'Kost Murah area Paris', 700000, 'PT.  Info KostQ', '6289674471020', ' jl. Paria2 KOMP. Permata griya no 2 A Kamar kost lantai 1.', NULL, NULL, '2', 'khusus Putra <br>\r\n\r\nKost strategis <br>\r\nAlamat : jl. Paria2 KOMP. Permata griya no 2 A<br>\r\nKamar kost lantai 1.<br>\r\n\r\nFasilitas kost:<br>\r\n- free wifi<br>\r\n- kasur + bantal dan guling <br>\r\n- lemari<br>\r\n- kipas angin<br>\r\n- ember dan gayung<br>\r\n- tongsampah Dalam kamar.<br>\r\n- dapur bersama<br>\r\n- free PDAM<br>\r\n- tempat parkir luas<br>\r\n- kamar mandi bersama ( closet jongkok 1 dan closet duduk + sower <br>\r\n\r\nGambar sesuai asli.<br>\r\nLuaskamar 2x4<br>\r\nHarga : 700.000 per bulan .<br>\r\nHub: 089674471020<br>', '4', 'kost-murah-area-paris20240601140325.gif', 'Dido Khoirulrijal', '2024-05-15 08:58:16', 'Dido Khoirulrijal', '2024-06-01 14:03:25'),
(33, 'Kost Aqila', 600000, 'PT.  Info KostQ', '6285748934896', 'Jl. Sepakat I Blk. F No.F11, Bansir Laut, Kec. Pontianak Tenggara, Kota Pontianak, Kalimantan Barat 78124', NULL, NULL, '3', '- Yang kamu dapatkan di Kos Aqila<br>\r\nSpesifikasi tipe kamar<br>\r\n- 3 x 3 meter<br>\r\n- Suadh termasuk listrik<br>\r\nFasilitas kamar<br>\r\n- Kasur<br>\r\n- Lemari<br>\r\n- Bantal<br>\r\n- Bantal Guling<br>\r\n- Belum termasuk kipas<br>\r\nFasilitas kamar mandi<br>\r\n- Kamar mandi luar<br>\r\n- Loset jongkok<br>\r\n- Gayung<br>\r\nFasilitas dapur<br>\r\n- Belum termasuk<br>\r\nPraturan kost<br>\r\n- Tamu wajib lapor<br>\r\n- Selebihnya bebas<br>', '5', 'kost-aqila20240601145856.gif', 'Dido Khoirulrijal', '2024-05-16 09:05:34', 'Dido Khoirulrijal', '2024-06-01 14:58:56'),
(34, 'KOST ASRI', 1000000, 'PT.  Info KostQ', '6285748934896', 'Islamic Village jl.zaitun 1 blok B1 No. 1 Kel. Kelapa dua -Kecamatan Kelapa dua', NULL, NULL, '5', 'Spesifikasi tipe kamar<br>\r\n- 3 x 3 meter<br>\r\n- Suadh termasuk listrik<br>\r\n- Sudah termasuk wifi<br>\r\n- Sudah termasuk air<br>\r\nFasilitas kamar<br>\r\n- Kasur<br>\r\n- Lemari<br>\r\n- Bantal<br>\r\n- Bantal Guling<br>\r\n- ac<br>\r\nFasilitas kamar mandi<br>\r\n- Kamar mandi dalam<br>\r\nFasilitas dapur<br>\r\n- Belum termasuk<br>\r\nPraturan kost<br>\r\n- Tamu wajib lapor<br>\r\n- Selebihnya bebas<br>', '4', 'kost-asri20240601151133.gif', 'Dido Khoirulrijal', '2024-05-16 09:10:53', 'Dido Khoirulrijal', '2024-06-01 15:11:33'),
(35, 'KOST Anona', 800000, 'PT.  Info KostQ', '6285748934896', 'l. Purnama 2 Gg. Nurul Hasanah No. 26A, Kota Baru, Kec. Pontianak Sel., Kota Pontianak, Kalimantan Barat 78115', NULL, NULL, '2', 'Spesifikasi tipe kamar<br>\r\n- 4x4 meter<br>\r\n- token listrik masing 2<br>\r\n- Sudah termasuk wifi<br>\r\n- Sudah termasuk air<br>\r\nFasilitas kamar<br>\r\n- Kasur<br>\r\n- Lemari<br>\r\n- Bantal<br>\r\n- Bantal Guling<br>\r\n- Kipas angin<br>\r\nFasilitas kamar mandi<br>\r\n- Kamar mandi dalam<br>\r\nFasilitas dapur<br>\r\n- Belum termasuk<br>\r\nPraturan kost<br>\r\n- Tamu wajib lapor<br>\r\n- Selebihnya bebas<br>', '5', 'kost-anona20240601150414.gif', 'Dido Khoirulrijal', '2024-05-16 09:13:30', 'Dido Khoirulrijal', '2024-06-01 15:04:14'),
(36, 'KOST Borneo', 700000, 'PT.  Info KostQ', '85748934896', 'Jl Sukses No !3 Borneo', NULL, NULL, '4', 'Spesifikasi tipe kamar<br>\r\n- 4x4 meter<br>\r\n- token listrik masing 2<br>\r\n- Sudah termasuk wifi<br>\r\n- Sudah termasuk air<br>\r\nFasilitas kamar<br>\r\n- Kasur<br>\r\n- Lemari<br>\r\n- Bantal<br>\r\n- Bantal Guling<br>\r\n- ac<br>\r\nFasilitas kamar mandi<br>\r\n- Kamar mandi dalam<br>\r\nFasilitas dapur<br>\r\n- Kulkas<br>\r\n- Mwsin cuci<br>\r\nPraturan kost<br>\r\n- Tamu wajib lapor<br>\r\n- Selebihnya bebas<br>', '4', 'kost-putra-uui20240601152416.gif', 'Dido Khoirulrijal', '2024-05-16 09:16:07', 'Dido Khoirulrijal', '2024-06-07 20:33:16'),
(37, 'KOST putri abel', 450000, 'PT.  Info KostQ', '6285748934896', 'jl tebo utara gang kramat no 07 RT 03 RW 01malang', NULL, NULL, '4', 'Spesifikasi tipe kamar<br>\r\n- 3x3 meter<br>\r\n- Sudah termasuk listrik<br>\r\n- Sudah termasuk wifi<br>\r\n- Sudah termasuk air<br>\r\nFasilitas kamar<br>\r\n- Kasur<br>\r\n- Lemari<br>\r\n- Bantal<br>\r\n- Bantal Guling<br>\r\n- -\r\nFasilitas kamar mandi<br>\r\n- Kamar mandi luar<br>\r\nFasilitas dapur<br>\r\n- Kulkas<br>\r\nPraturan kost<br>\r\n- Tamu wajib lapor<br>\r\n- Selebihnya bebas<br>', '5', 'kost-putri-abel20240601152908.gif', 'Dido Khoirulrijal', '2024-05-16 09:18:34', 'Dido Khoirulrijal', '2024-06-01 15:29:08'),
(39, 'KOST FITRIA', 900000, 'KOST FITRIA', '081345064242', 'Jl. Sepakat II Komp. Mutiara Villa Sepakat', '12', '364', '4', 'KOST FITRIA (Khusus Putri)<br>\r\nJl. Sepakat II Komp. Mutiara Villa Sepakat<br>\r\nMasih tersedia kamar kost dengan kamar mandi di dalam,<br>\r\nFasilitas:<br>\r\n1. Lokasi Strategis Dekat Dengan Untan, UMP, Polnep, Mall Ayani, RS Dan Di Tengah Kota<br>\r\n2. Kamar Mandi Dalam<br>\r\n3. Wifi<br>\r\n4. PDAM<br>\r\n5. Parkiran Luas dan Berpagar<br>\r\n6. CCTV 24 jam<br>\r\n7. Dapur Umum<br>\r\n8. Tempat Tidur, Bantal & Lemari<br>\r\n9. AC / Kipas Angin<br>\r\n10. Jemuran Baju<br>\r\n\r\nMenerima Sewa Bulanan 900K/ Bulan<br>\r\nInfo Lebih Lengkap Hubungi:<br>\r\n081345064242 ( WA)', '5', 'kost-fitria20240609082816.gif', 'Dido Khoirulrijal', '2024-06-09 08:28:16', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `provinsi_id`, `nama_kota`) VALUES
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(12, 32, 'Agam'),
(13, 23, 'Alor'),
(14, 19, 'Ambon'),
(15, 34, 'Asahan'),
(16, 24, 'Asmat'),
(17, 1, 'Badung'),
(18, 13, 'Balangan'),
(19, 15, 'Balikpapan'),
(20, 21, 'Banda Aceh'),
(21, 18, 'Bandar Lampung'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(31, 11, 'Bangkalan'),
(32, 1, 'Bangli'),
(33, 13, 'Banjar'),
(34, 9, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(37, 10, 'Banjarnegara'),
(38, 28, 'Bantaeng'),
(39, 5, 'Bantul'),
(40, 33, 'Banyuasin'),
(41, 10, 'Banyumas'),
(42, 11, 'Banyuwangi'),
(43, 13, 'Barito Kuala'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(47, 28, 'Barru'),
(48, 17, 'Batam'),
(49, 10, 'Batang'),
(50, 8, 'Batang Hari'),
(51, 11, 'Batu'),
(52, 34, 'Batu Bara'),
(53, 30, 'Bau-Bau'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(58, 23, 'Belu'),
(59, 21, 'Bener Meriah'),
(60, 26, 'Bengkalis'),
(61, 12, 'Bengkayang'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(66, 15, 'Berau'),
(67, 24, 'Biak Numfor'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(70, 34, 'Binjai'),
(71, 17, 'Bintan'),
(72, 21, 'Bireuen'),
(73, 31, 'Bitung'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(76, 10, 'Blora'),
(77, 7, 'Boalemo'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(80, 11, 'Bojonegoro'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(85, 30, 'Bombana'),
(86, 11, 'Bondowoso'),
(87, 28, 'Bone'),
(88, 7, 'Bone Bolango'),
(89, 15, 'Bontang'),
(90, 24, 'Boven Digoel'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(93, 32, 'Bukittinggi'),
(94, 1, 'Buleleng'),
(95, 28, 'Bulukumba'),
(96, 16, 'Bulungan (Bulongan)'),
(97, 8, 'Bungo'),
(98, 29, 'Buol'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(105, 10, 'Cilacap'),
(106, 3, 'Cilegon'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(110, 34, 'Dairi'),
(111, 24, 'Deiyai (Deliyai)'),
(112, 34, 'Deli Serdang'),
(113, 10, 'Demak'),
(114, 1, 'Denpasar'),
(115, 9, 'Depok'),
(116, 32, 'Dharmasraya'),
(117, 24, 'Dogiyai'),
(118, 22, 'Dompu'),
(119, 29, 'Donggala'),
(120, 26, 'Dumai'),
(121, 33, 'Empat Lawang'),
(122, 23, 'Ende'),
(123, 28, 'Enrekang'),
(124, 25, 'Fakfak'),
(125, 23, 'Flores Timur'),
(126, 9, 'Garut'),
(127, 21, 'Gayo Lues'),
(128, 1, 'Gianyar'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(132, 28, 'Gowa'),
(133, 11, 'Gresik'),
(134, 10, 'Grobogan'),
(135, 5, 'Gunung Kidul'),
(136, 14, 'Gunung Mas'),
(137, 34, 'Gunungsitoli'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(146, 34, 'Humbang Hasundutan'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(149, 9, 'Indramayu'),
(150, 24, 'Intan Jaya'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(156, 8, 'Jambi'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(160, 11, 'Jember'),
(161, 1, 'Jembrana'),
(162, 28, 'Jeneponto'),
(163, 10, 'Jepara'),
(164, 11, 'Jombang'),
(165, 25, 'Kaimana'),
(166, 26, 'Kampar'),
(167, 14, 'Kapuas'),
(168, 12, 'Kapuas Hulu'),
(169, 10, 'Karanganyar'),
(170, 1, 'Karangasem'),
(171, 9, 'Karawang'),
(172, 17, 'Karimun'),
(173, 34, 'Karo'),
(174, 14, 'Katingan'),
(175, 4, 'Kaur'),
(176, 12, 'Kayong Utara'),
(177, 10, 'Kebumen'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(180, 24, 'Keerom'),
(181, 10, 'Kendal'),
(182, 30, 'Kendari'),
(183, 4, 'Kepahiang'),
(184, 17, 'Kepulauan Anambas'),
(185, 19, 'Kepulauan Aru'),
(186, 32, 'Kepulauan Mentawai'),
(187, 26, 'Kepulauan Meranti'),
(188, 31, 'Kepulauan Sangihe'),
(189, 6, 'Kepulauan Seribu'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(191, 20, 'Kepulauan Sula'),
(192, 31, 'Kepulauan Talaud'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(194, 8, 'Kerinci'),
(195, 12, 'Ketapang'),
(196, 10, 'Klaten'),
(197, 1, 'Klungkung'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(203, 13, 'Kotabaru'),
(204, 31, 'Kotamobagu'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(207, 26, 'Kuantan Singingi'),
(208, 12, 'Kubu Raya'),
(209, 10, 'Kudus'),
(210, 5, 'Kulon Progo'),
(211, 9, 'Kuningan'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(220, 33, 'Lahat'),
(221, 14, 'Lamandau'),
(222, 11, 'Lamongan'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(228, 12, 'Landak'),
(229, 34, 'Langkat'),
(230, 21, 'Langsa'),
(231, 24, 'Lanny Jaya'),
(232, 3, 'Lebak'),
(233, 4, 'Lebong'),
(234, 23, 'Lembata'),
(235, 21, 'Lhokseumawe'),
(236, 32, 'Lima Puluh Koto/Kota'),
(237, 17, 'Lingga'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(242, 33, 'Lubuk Linggau'),
(243, 11, 'Lumajang'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(251, 11, 'Magetan'),
(252, 9, 'Majalengka'),
(253, 27, 'Majene'),
(254, 28, 'Makassar'),
(255, 11, 'Malang'),
(256, 11, 'Malang'),
(257, 16, 'Malinau'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(262, 27, 'Mamasa'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(267, 31, 'Manado'),
(268, 34, 'Mandailing Natal'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(274, 24, 'Mappi'),
(275, 28, 'Maros'),
(276, 22, 'Mataram'),
(277, 25, 'Maybrat'),
(278, 34, 'Medan'),
(279, 12, 'Melawi'),
(280, 8, 'Merangin'),
(281, 24, 'Merauke'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(284, 24, 'Mimika'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(291, 29, 'Morowali'),
(292, 33, 'Muara Enim'),
(293, 8, 'Muaro Jambi'),
(294, 4, 'Muko Muko'),
(295, 30, 'Muna'),
(296, 14, 'Murung Raya'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(299, 24, 'Nabire'),
(300, 21, 'Nagan Raya'),
(301, 23, 'Nagekeo'),
(302, 17, 'Natuna'),
(303, 24, 'Nduga'),
(304, 23, 'Ngada'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(311, 16, 'Nunukan'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(317, 11, 'Pacitan'),
(318, 32, 'Padang'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(323, 34, 'Padang Sidempuan'),
(324, 33, 'Pagar Alam'),
(325, 34, 'Pakpak Bharat'),
(326, 14, 'Palangka Raya'),
(327, 33, 'Palembang'),
(328, 28, 'Palopo'),
(329, 29, 'Palu'),
(330, 11, 'Pamekasan'),
(331, 3, 'Pandeglang'),
(332, 9, 'Pangandaran'),
(333, 28, 'Pangkajene Kepulauan'),
(334, 2, 'Pangkal Pinang'),
(335, 24, 'Paniai'),
(336, 28, 'Parepare'),
(337, 32, 'Pariaman'),
(338, 29, 'Parigi Moutong'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(341, 15, 'Paser'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(344, 10, 'Pati'),
(345, 32, 'Payakumbuh'),
(346, 25, 'Pegunungan Arfak'),
(347, 24, 'Pegunungan Bintang'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(352, 10, 'Pemalang'),
(353, 34, 'Pematang Siantar'),
(354, 15, 'Penajam Paser Utara'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(357, 32, 'Pesisir Selatan'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(360, 28, 'Pinrang'),
(361, 7, 'Pohuwato'),
(362, 27, 'Polewali Mandar'),
(363, 11, 'Ponorogo'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(366, 29, 'Poso'),
(367, 33, 'Prabumulih'),
(368, 18, 'Pringsewu'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(371, 14, 'Pulang Pisau'),
(372, 20, 'Pulau Morotai'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(375, 10, 'Purbalingga'),
(376, 9, 'Purwakarta'),
(377, 10, 'Purworejo'),
(378, 25, 'Raja Ampat'),
(379, 4, 'Rejang Lebong'),
(380, 10, 'Rembang'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(383, 23, 'Rote Ndao'),
(384, 21, 'Sabang'),
(385, 23, 'Sabu Raijua'),
(386, 10, 'Salatiga'),
(387, 15, 'Samarinda'),
(388, 12, 'Sambas'),
(389, 34, 'Samosir'),
(390, 11, 'Sampang'),
(391, 12, 'Sanggau'),
(392, 24, 'Sarmi'),
(393, 8, 'Sarolangun'),
(394, 32, 'Sawah Lunto'),
(395, 12, 'Sekadau'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(397, 4, 'Seluma'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(404, 34, 'Serdang Bedagai'),
(405, 14, 'Seruyan'),
(406, 26, 'Siak'),
(407, 34, 'Sibolga'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(409, 11, 'Sidoarjo'),
(410, 29, 'Sigi'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(412, 23, 'Sikka'),
(413, 34, 'Simalungun'),
(414, 21, 'Simeulue'),
(415, 12, 'Singkawang'),
(416, 28, 'Sinjai'),
(417, 12, 'Sintang'),
(418, 11, 'Situbondo'),
(419, 5, 'Sleman'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(423, 28, 'Soppeng'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(427, 10, 'Sragen'),
(428, 9, 'Subang'),
(429, 21, 'Subulussalam'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(432, 14, 'Sukamara'),
(433, 10, 'Sukoharjo'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(440, 9, 'Sumedang'),
(441, 11, 'Sumenep'),
(442, 8, 'Sungaipenuh'),
(443, 24, 'Supiori'),
(444, 11, 'Surabaya'),
(445, 10, 'Surakarta (Solo)'),
(446, 13, 'Tabalong'),
(447, 1, 'Tabanan'),
(448, 28, 'Takalar'),
(449, 25, 'Tambrauw'),
(450, 16, 'Tana Tidung'),
(451, 28, 'Tana Toraja'),
(452, 13, 'Tanah Bumbu'),
(453, 32, 'Tanah Datar'),
(454, 13, 'Tanah Laut'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(458, 18, 'Tanggamus'),
(459, 34, 'Tanjung Balai'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(462, 17, 'Tanjung Pinang'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(466, 13, 'Tapin'),
(467, 16, 'Tarakan'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(470, 34, 'Tebing Tinggi'),
(471, 8, 'Tebo'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(476, 10, 'Temanggung'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(481, 34, 'Toba Samosir'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(484, 24, 'Tolikara'),
(485, 31, 'Tomohon'),
(486, 28, 'Toraja Utara'),
(487, 11, 'Trenggalek'),
(488, 19, 'Tual'),
(489, 11, 'Tuban'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(492, 11, 'Tulungagung'),
(493, 28, 'Wajo'),
(494, 30, 'Wakatobi'),
(495, 24, 'Waropen'),
(496, 18, 'Way Kanan'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(501, 5, 'Yogyakarta'),
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(12, 32, 'Agam'),
(13, 23, 'Alor'),
(14, 19, 'Ambon'),
(15, 34, 'Asahan'),
(16, 24, 'Asmat'),
(17, 1, 'Badung'),
(18, 13, 'Balangan'),
(19, 15, 'Balikpapan'),
(20, 21, 'Banda Aceh'),
(21, 18, 'Bandar Lampung'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(31, 11, 'Bangkalan'),
(32, 1, 'Bangli'),
(33, 13, 'Banjar'),
(34, 9, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(37, 10, 'Banjarnegara'),
(38, 28, 'Bantaeng'),
(39, 5, 'Bantul'),
(40, 33, 'Banyuasin'),
(41, 10, 'Banyumas'),
(42, 11, 'Banyuwangi'),
(43, 13, 'Barito Kuala'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(47, 28, 'Barru'),
(48, 17, 'Batam'),
(49, 10, 'Batang'),
(50, 8, 'Batang Hari'),
(51, 11, 'Batu'),
(52, 34, 'Batu Bara'),
(53, 30, 'Bau-Bau'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(58, 23, 'Belu'),
(59, 21, 'Bener Meriah'),
(60, 26, 'Bengkalis'),
(61, 12, 'Bengkayang'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(66, 15, 'Berau'),
(67, 24, 'Biak Numfor'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(70, 34, 'Binjai'),
(71, 17, 'Bintan'),
(72, 21, 'Bireuen'),
(73, 31, 'Bitung'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(76, 10, 'Blora'),
(77, 7, 'Boalemo'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(80, 11, 'Bojonegoro'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(85, 30, 'Bombana'),
(86, 11, 'Bondowoso'),
(87, 28, 'Bone'),
(88, 7, 'Bone Bolango'),
(89, 15, 'Bontang'),
(90, 24, 'Boven Digoel'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(93, 32, 'Bukittinggi'),
(94, 1, 'Buleleng'),
(95, 28, 'Bulukumba'),
(96, 16, 'Bulungan (Bulongan)'),
(97, 8, 'Bungo'),
(98, 29, 'Buol'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(105, 10, 'Cilacap'),
(106, 3, 'Cilegon'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(110, 34, 'Dairi'),
(111, 24, 'Deiyai (Deliyai)'),
(112, 34, 'Deli Serdang'),
(113, 10, 'Demak'),
(114, 1, 'Denpasar'),
(115, 9, 'Depok'),
(116, 32, 'Dharmasraya'),
(117, 24, 'Dogiyai'),
(118, 22, 'Dompu'),
(119, 29, 'Donggala'),
(120, 26, 'Dumai'),
(121, 33, 'Empat Lawang'),
(122, 23, 'Ende'),
(123, 28, 'Enrekang'),
(124, 25, 'Fakfak'),
(125, 23, 'Flores Timur'),
(126, 9, 'Garut'),
(127, 21, 'Gayo Lues'),
(128, 1, 'Gianyar'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(132, 28, 'Gowa'),
(133, 11, 'Gresik'),
(134, 10, 'Grobogan'),
(135, 5, 'Gunung Kidul'),
(136, 14, 'Gunung Mas'),
(137, 34, 'Gunungsitoli'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(146, 34, 'Humbang Hasundutan'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(149, 9, 'Indramayu'),
(150, 24, 'Intan Jaya'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(156, 8, 'Jambi'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(160, 11, 'Jember'),
(161, 1, 'Jembrana'),
(162, 28, 'Jeneponto'),
(163, 10, 'Jepara'),
(164, 11, 'Jombang'),
(165, 25, 'Kaimana'),
(166, 26, 'Kampar'),
(167, 14, 'Kapuas'),
(168, 12, 'Kapuas Hulu'),
(169, 10, 'Karanganyar'),
(170, 1, 'Karangasem'),
(171, 9, 'Karawang'),
(172, 17, 'Karimun'),
(173, 34, 'Karo'),
(174, 14, 'Katingan'),
(175, 4, 'Kaur'),
(176, 12, 'Kayong Utara'),
(177, 10, 'Kebumen'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(180, 24, 'Keerom'),
(181, 10, 'Kendal'),
(182, 30, 'Kendari'),
(183, 4, 'Kepahiang'),
(184, 17, 'Kepulauan Anambas'),
(185, 19, 'Kepulauan Aru'),
(186, 32, 'Kepulauan Mentawai'),
(187, 26, 'Kepulauan Meranti'),
(188, 31, 'Kepulauan Sangihe'),
(189, 6, 'Kepulauan Seribu'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(191, 20, 'Kepulauan Sula'),
(192, 31, 'Kepulauan Talaud'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(194, 8, 'Kerinci'),
(195, 12, 'Ketapang'),
(196, 10, 'Klaten'),
(197, 1, 'Klungkung'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(203, 13, 'Kotabaru'),
(204, 31, 'Kotamobagu'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(207, 26, 'Kuantan Singingi'),
(208, 12, 'Kubu Raya'),
(209, 10, 'Kudus'),
(210, 5, 'Kulon Progo'),
(211, 9, 'Kuningan'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(220, 33, 'Lahat'),
(221, 14, 'Lamandau'),
(222, 11, 'Lamongan'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(228, 12, 'Landak'),
(229, 34, 'Langkat'),
(230, 21, 'Langsa'),
(231, 24, 'Lanny Jaya'),
(232, 3, 'Lebak'),
(233, 4, 'Lebong'),
(234, 23, 'Lembata'),
(235, 21, 'Lhokseumawe'),
(236, 32, 'Lima Puluh Koto/Kota'),
(237, 17, 'Lingga'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(242, 33, 'Lubuk Linggau'),
(243, 11, 'Lumajang'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(251, 11, 'Magetan'),
(252, 9, 'Majalengka'),
(253, 27, 'Majene'),
(254, 28, 'Makassar'),
(255, 11, 'Malang'),
(256, 11, 'Malang'),
(257, 16, 'Malinau'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(262, 27, 'Mamasa'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(267, 31, 'Manado'),
(268, 34, 'Mandailing Natal'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(274, 24, 'Mappi'),
(275, 28, 'Maros'),
(276, 22, 'Mataram'),
(277, 25, 'Maybrat'),
(278, 34, 'Medan'),
(279, 12, 'Melawi'),
(280, 8, 'Merangin'),
(281, 24, 'Merauke'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(284, 24, 'Mimika'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(291, 29, 'Morowali'),
(292, 33, 'Muara Enim'),
(293, 8, 'Muaro Jambi'),
(294, 4, 'Muko Muko'),
(295, 30, 'Muna'),
(296, 14, 'Murung Raya'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(299, 24, 'Nabire'),
(300, 21, 'Nagan Raya'),
(301, 23, 'Nagekeo'),
(302, 17, 'Natuna'),
(303, 24, 'Nduga'),
(304, 23, 'Ngada'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(311, 16, 'Nunukan'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(317, 11, 'Pacitan'),
(318, 32, 'Padang'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(323, 34, 'Padang Sidempuan'),
(324, 33, 'Pagar Alam'),
(325, 34, 'Pakpak Bharat'),
(326, 14, 'Palangka Raya'),
(327, 33, 'Palembang'),
(328, 28, 'Palopo'),
(329, 29, 'Palu'),
(330, 11, 'Pamekasan'),
(331, 3, 'Pandeglang'),
(332, 9, 'Pangandaran'),
(333, 28, 'Pangkajene Kepulauan'),
(334, 2, 'Pangkal Pinang'),
(335, 24, 'Paniai'),
(336, 28, 'Parepare'),
(337, 32, 'Pariaman'),
(338, 29, 'Parigi Moutong'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(341, 15, 'Paser'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(344, 10, 'Pati'),
(345, 32, 'Payakumbuh'),
(346, 25, 'Pegunungan Arfak'),
(347, 24, 'Pegunungan Bintang'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(352, 10, 'Pemalang'),
(353, 34, 'Pematang Siantar'),
(354, 15, 'Penajam Paser Utara'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(357, 32, 'Pesisir Selatan'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(360, 28, 'Pinrang'),
(361, 7, 'Pohuwato'),
(362, 27, 'Polewali Mandar'),
(363, 11, 'Ponorogo'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(366, 29, 'Poso'),
(367, 33, 'Prabumulih'),
(368, 18, 'Pringsewu'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(371, 14, 'Pulang Pisau'),
(372, 20, 'Pulau Morotai'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(375, 10, 'Purbalingga'),
(376, 9, 'Purwakarta'),
(377, 10, 'Purworejo'),
(378, 25, 'Raja Ampat'),
(379, 4, 'Rejang Lebong'),
(380, 10, 'Rembang'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(383, 23, 'Rote Ndao'),
(384, 21, 'Sabang'),
(385, 23, 'Sabu Raijua'),
(386, 10, 'Salatiga'),
(387, 15, 'Samarinda'),
(388, 12, 'Sambas'),
(389, 34, 'Samosir'),
(390, 11, 'Sampang'),
(391, 12, 'Sanggau'),
(392, 24, 'Sarmi'),
(393, 8, 'Sarolangun'),
(394, 32, 'Sawah Lunto'),
(395, 12, 'Sekadau'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(397, 4, 'Seluma'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(404, 34, 'Serdang Bedagai'),
(405, 14, 'Seruyan'),
(406, 26, 'Siak'),
(407, 34, 'Sibolga'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(409, 11, 'Sidoarjo'),
(410, 29, 'Sigi'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(412, 23, 'Sikka'),
(413, 34, 'Simalungun'),
(414, 21, 'Simeulue'),
(415, 12, 'Singkawang'),
(416, 28, 'Sinjai'),
(417, 12, 'Sintang'),
(418, 11, 'Situbondo'),
(419, 5, 'Sleman'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(423, 28, 'Soppeng'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(427, 10, 'Sragen'),
(428, 9, 'Subang'),
(429, 21, 'Subulussalam'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(432, 14, 'Sukamara'),
(433, 10, 'Sukoharjo'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(440, 9, 'Sumedang'),
(441, 11, 'Sumenep'),
(442, 8, 'Sungaipenuh'),
(443, 24, 'Supiori'),
(444, 11, 'Surabaya'),
(445, 10, 'Surakarta (Solo)'),
(446, 13, 'Tabalong'),
(447, 1, 'Tabanan'),
(448, 28, 'Takalar'),
(449, 25, 'Tambrauw'),
(450, 16, 'Tana Tidung'),
(451, 28, 'Tana Toraja'),
(452, 13, 'Tanah Bumbu'),
(453, 32, 'Tanah Datar'),
(454, 13, 'Tanah Laut'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(458, 18, 'Tanggamus'),
(459, 34, 'Tanjung Balai'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(462, 17, 'Tanjung Pinang'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(466, 13, 'Tapin'),
(467, 16, 'Tarakan'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(470, 34, 'Tebing Tinggi'),
(471, 8, 'Tebo'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(476, 10, 'Temanggung'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(481, 34, 'Toba Samosir'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(484, 24, 'Tolikara'),
(485, 31, 'Tomohon'),
(486, 28, 'Toraja Utara'),
(487, 11, 'Trenggalek'),
(488, 19, 'Tual'),
(489, 11, 'Tuban'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(492, 11, 'Tulungagung'),
(493, 28, 'Wajo'),
(494, 30, 'Wakatobi'),
(495, 24, 'Waropen'),
(496, 18, 'Way Kanan'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(501, 5, 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id_page` int(11) NOT NULL,
  `judul_page` varchar(50) NOT NULL,
  `judul_seo` varchar(50) NOT NULL,
  `isi_page` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `judul_page`, `judul_seo`, `isi_page`, `gambar`) VALUES
(1, 'Home', 'home', '', ''),
(2, 'Download', 'download', 'download', ''),
(3, 'Kontak', 'kontak', '<p style=\"text-align: center;\">&nbsp;<img src=\"http://localhost/tol/assets/images/upload/whatsapp.png\" /><br /><strong>SMS/ Call/ Whatsapp</strong></p>\r\n<p style=\"text-align: center;\">0853-6873-3631</p>\r\n<p style=\"text-align: center;\">0822-8155-1666</p>', ''),
(4, 'Profil', 'profil', '<p style=\"text-align: justify;\">Kami merupakan toko yang menyediakan berbagai macam parfum, obat-obatan herbal, baju koko, dan aksesoris muslim lainnya. Toko kami beralamat di Jl. Dr. M. Isa No.1109, Kuto Batu, Ilir Tim. II, Kota Palembang, Sumatera Selatan 30114.</p>\r\n<p style=\"text-align: justify;\">Berikut adalah foto toko kami:</p>', ''),
(5, 'Order', 'order', '<p>Anda dapat menghubungi&nbsp;kami melalui tombol order via whatsapp di masing-masing produk atau melalui customer service/ kontak yang telah disediakan di sisi kanan website ini</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `promosi`
--

CREATE TABLE `promosi` (
  `id_promosi` int(11) NOT NULL,
  `nama_promosi` varchar(100) NOT NULL,
  `slug_promosi` varchar(100) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `foto_type` char(10) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `promosi`
--

INSERT INTO `promosi` (`id_promosi`, `nama_promosi`, `slug_promosi`, `harga`, `link`, `deskripsi`, `kategori`, `foto`, `foto_type`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(8, 'tess', 'tess', '4476', '11111', '<p>fohowoefiwe</p>', 6, 'tess20240513195609', '.png', '2024-05-13 19:56:09', 'Dido Khoirulrijal', NULL, ''),
(9, 'qqqqqqqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqqq', '111111111', '111111111111111', '<p>111111111111111</p>', 4, 'qqqqqqqqqqqqqqqqqqqqqq20240513215007', '.png', '2024-05-13 21:50:07', 'Dido Khoirulrijal', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara'),
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `nama_slider` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `foto_size` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `no_urut`, `nama_slider`, `link`, `foto`, `foto_type`, `foto_size`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(11, 1, '', 'http://localhost/KostQ/home/detail_kost/34', '120240607102028', '.png', 0, '2024-06-07 10:20:28', '', '2024-06-16 17:14:04', 'Dido Khoirulrijal'),
(12, 2, '', 'https://api.whatsapp.com/send?phone=+&lt;?php echo $kontak->nohp ?&gt;&text=Hi admin', '220240607102042', '.png', 0, '2024-06-07 10:20:42', '', '2024-06-07 21:23:40', 'Dido Khoirulrijal'),
(13, 3, '', '', '320240607102052', '.png', 0, '2024-06-07 10:20:52', '', NULL, ''),
(14, 4, '', '', '420240607110404', '.png', 0, '2024-06-07 11:04:04', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id_subscriber` int(11) NOT NULL,
  `email` char(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_gambar`
--

CREATE TABLE `tb_gambar` (
  `id_gambar` int(9) NOT NULL,
  `id_kost` int(9) DEFAULT NULL,
  `ket` varchar(225) DEFAULT NULL,
  `gambar` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trans` int(11) NOT NULL,
  `id_invoice` char(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `deadline` datetime NOT NULL,
  `catatan` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_trans`, `id_invoice`, `user_id`, `subtotal`, `diskon`, `grand_total`, `deadline`, `catatan`, `status`, `created_date`, `created_time`) VALUES
(1, 'J-210517-0001', 3, 100000, 0, 100000, '2021-05-17 21:03:57', '', 2, '2021-05-17', '08:03:19'),
(2, 'J-210517-0002', 4, 260000, 50000, 210000, '2021-05-17 21:10:50', 'takada', 2, '2021-05-17', '08:09:54'),
(3, 'J-210516-0003', 3, 300000, 0, 300000, '2021-05-16 21:20:17', '', 2, '2021-05-16', '08:20:09'),
(4, 'J-210408-0001', 3, 330000, 0, 330000, '2021-04-08 21:21:53', '', 2, '2021-04-08', '08:21:35'),
(5, 'J-210408-0002', 3, 150000, 0, 150000, '2021-04-08 21:22:35', '', 2, '2021-04-08', '08:22:29'),
(6, 'J-210408-0003', 3, 300000, 0, 300000, '2021-04-08 21:23:15', '', 2, '2021-04-08', '08:23:09'),
(7, 'J-210410-0004', 3, 300000, 0, 300000, '2021-04-10 21:24:07', '', 2, '2021-04-10', '08:23:52'),
(8, 'J-210517-0003', 3, 150000, 0, 150000, '2021-05-17 21:23:05', '', 2, '2021-05-17', '08:23:01'),
(9, 'J-240510-0001', 1, 0, 0, 0, '0000-00-00 00:00:00', '', 2, '2024-05-10', '07:38:11'),
(10, 'J-240510-0002', 1, 0, 0, 0, '0000-00-00 00:00:00', '', 2, '2024-05-10', '07:42:57'),
(11, 'J-240510-0003', 5, 0, 0, 0, '0000-00-00 00:00:00', '', 2, '2024-05-10', '07:45:33'),
(12, 'J-240510-0004', 5, 0, 0, 0, '0000-00-00 00:00:00', '', 2, '2024-05-10', '09:52:37'),
(13, 'J-240511-0005', 1, 10000, 0, 10000, '2024-05-11 17:20:44', '', 1, '2024-05-11', '04:20:33'),
(14, 'J-240511-0006', 5, 100000, 0, 100000, '2024-05-11 17:22:23', '', 2, '2024-05-11', '04:22:11'),
(15, 'J-240511-0007', 1, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2024-05-11', '07:54:01'),
(16, 'J-240512-0008', 6, 0, 0, 0, '0000-00-00 00:00:00', '', 2, '2024-05-12', '06:38:31'),
(17, 'J-240514-0009', 8, 3000000, 0, 3000000, '2024-05-17 10:27:10', '', 2, '2024-05-14', '10:23:28'),
(18, 'J-240527-0010', 6, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2024-05-27', '08:49:11'),
(19, 'J-240527-0011', 8, 800000, 50000, 750000, '2024-06-06 16:51:25', '', 1, '2024-05-27', '10:08:04'),
(20, 'J-240606-0001', 8, 1000000, 50000, 950000, '2024-06-07 22:31:55', '', 1, '2024-06-06', '04:09:54'),
(21, 'J-240606-0002', 7, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2024-06-06', '04:13:01'),
(22, 'J-240607-0003', 8, 650000, 50000, 600000, '2024-06-07 23:38:52', '', 1, '2024-06-07', '10:11:37'),
(23, 'J-240607-0004', 8, 800000, 50000, 750000, '2024-06-08 00:48:37', '', 1, '2024-06-07', '11:48:23'),
(24, 'J-240609-0005', 8, 3000000, 50000, 2950000, '2024-06-10 11:33:19', '', 1, '2024-06-09', '03:06:45'),
(25, 'J-240610-0006', 8, 1800000, 50000, 1750000, '2024-06-10 11:35:11', '', 2, '2024-06-10', '10:34:21'),
(26, 'J-240610-0007', 8, 800000, 50000, 750000, '2024-06-18 06:47:37', '', 1, '2024-06-10', '10:40:42'),
(27, 'J-240618-0008', 8, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2024-06-18', '12:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transdet` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `kost_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `durasi` int(11) NOT NULL,
  `jam_selesai` time NOT NULL,
  `kode` int(9) DEFAULT NULL,
  `harga_jual` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transdet`, `trans_id`, `kost_id`, `tanggal`, `jam_mulai`, `durasi`, `jam_selesai`, `kode`, `harga_jual`, `total`, `created_at`) VALUES
(47, 17, 29, '2024-05-24', '23:00:00', 3, '26:00:00', NULL, 1000000, 3000000, '2024-05-17 09:26:34'),
(56, 19, 30, '2024-06-07', '06:00:00', 1, '07:00:00', NULL, 800000, 800000, '2024-06-06 15:48:31'),
(58, 21, 30, '0000-00-00', '00:00:00', 0, '00:00:00', NULL, 800000, 800000, '2024-06-06 16:13:01'),
(60, 20, 29, '2024-06-07', '07:00:00', 1, '08:00:00', NULL, 1000000, 1000000, '2024-06-07 21:31:34'),
(61, 22, 27, '2024-06-11', '06:00:00', 1, '07:00:00', NULL, 650000, 650000, '2024-06-07 22:11:37'),
(62, 23, 30, '2024-06-08', '22:00:00', 1, '23:00:00', 354, 800000, 800000, '2024-06-07 23:48:23'),
(69, 24, 33, '2024-06-11', '09:00:00', 5, '14:00:00', 354, 600000, 3000000, '2024-06-10 10:30:14'),
(70, 25, 33, '2024-06-11', '07:00:00', 3, '10:00:00', 354, 600000, 1800000, '2024-06-10 10:34:22'),
(73, 26, 30, '2024-06-18', '21:00:00', 1, '22:00:00', 354, 800000, 800000, '2024-06-18 05:44:34'),
(75, 27, 30, '0000-00-00', '00:00:00', 0, '00:00:00', NULL, 800000, 800000, '2024-06-18 12:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `kota` int(11) DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usertype` int(11) NOT NULL,
  `active` tinyint(3) UNSIGNED DEFAULT NULL,
  `photo` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `photo_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activation_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `forgotten_password_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `forgotten_password_time` int(10) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `provinsi`, `kota`, `address`, `usertype`, `active`, `photo`, `photo_type`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `last_login`, `created_on`, `modified`) VALUES
(1, 'Dido Khoirulrijal', 'Dido Khoirulrijal', '$2y$08$TWMdtdacqPE5yEz9n1LwFuhEVmiDTTsupl12M45tCQihzF1tu2N/6', 'dido007@gmail.com', '0812345678900', 6, 151, 'auviuheivuhe', 1, 1, 'mazmi20180205001726', '.jpg', '::1', NULL, 'c6ad242e6fd3de875568c7de5ba23af4a24137ef', 'tHafW45duPzrU3oWR0AVuO48b26088a3cd65edc4', 1621246176, NULL, 1715423219, 2147483647, '2024-05-11 17:26:59'),
(2, 'Admin', 'administrator', '$2y$08$jzu2otFhANC0790TRbKxIO5JYQc.c86m9iQaHBSElTFrBILT/Nqa2', 'administrator@gmail.com', '08124124', NULL, NULL, 'hljbkjgjyfckjh vgkuyjjjtyyuoi i uoi', 0, 1, 'admin20180424102408', '.jpeg', '::1', NULL, NULL, 'gLpEWF305ZMvkBuxCa.csOcce89dbbc95649d9bd', 1715420839, NULL, 1715420183, 1524551716, '2024-05-11 16:47:19'),
(3, 'Batistuta', 'userpelanggan', '$2y$08$TWMdtdacqPE5yEz9n1LwFuhEVmiDTTsupl12M45tCQihzF1tu2N/6', 'userpelanggan@gmail.com', '0812412414', 33, 327, 'Jl. Skdlajsdlasjkdl', 4, 1, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 1675092041, 1528634033, '2023-01-30 22:20:41'),
(4, 'User Premium', 'userpremium', '$2y$08$Wv3MA.DnwTNzBeF62o9neuSXeVdIA/bjlxOzSxtD6DtgStEBn//s.', 'userpremium@gmail.com', '0812412412', 3, 106, 'kaljdklasjdkl', 3, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1621252638, 1531807819, '2021-05-17 18:57:18'),
(5, 'derza', 'derza', '$2y$08$N7ozSVK16uSZAc25T2T9tetfaa0bs4CfjQxXexkfACBFIQJuy8v6m', 'derza123@gmail.com', '08123456789', 12, 365, 'jnnojol', 4, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1715419326, 1715345107, '2024-05-11 16:22:06'),
(6, 'Dido Khoirulrijal', 'Dido Khoirulrijal', '$2y$08$B/MGsCPU0KMqf8/Mlpo4WemHmSpiVTsEOFFRswZ5NjBlHsF9QYUqG', 'dido123@gmail.com', '081234567890', NULL, NULL, 'gahgcihwijchwhcwjcnowhw', 1, 1, 'dido-khoirulrijal20240511164052', '.jpg', '::1', NULL, NULL, NULL, NULL, NULL, 1718690689, 1715420452, '2024-06-18 13:04:49'),
(7, 'siti ', 'siti', '$2y$08$FA/xt1MSvf5YvvqxQqjRiew7UhM06Pw59.ED1sdbM8ZCWgm6AdTAW', 'siti123@gmail.com', '081234567890', NULL, NULL, 'fewfewfw', 2, 1, 'siti20240511164956', '.png', '::1', NULL, NULL, '8fl0UPiFKfQZC.iz5AFvJee7a7119b90a6e53737', 1716780361, NULL, 1717991240, 1715420996, '2024-06-10 10:47:20'),
(8, 'derza1', 'derza1', '$2y$08$vwOopGqu08brCSlKjs9i8.7FhxU6jXNiRG3UpGkpHl24wt3qS7UA2', 'derza12@gmail.com', '081234567890', 17, 48, 'y8giyhbiuhoij', 3, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1718685086, 1715656961, '2024-06-18 11:31:26'),
(9, 'teguh', 'teguh', '$2y$08$uZjAOIZbvDO0gbJTYSZNL.1rPJ5W4e9Fd2ehnUwbH3IYWE0BqEVnC', 'teguh123@gmail.com', '081234567890', NULL, NULL, 'jhckjckjcsdkjwhvldhvjjndkjjncwkjjnvkjw', 4, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1717235143, 1717197542, '2024-06-01 16:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `users_group`
--

CREATE TABLE `users_group` (
  `id_group` int(11) NOT NULL,
  `name_group` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_group`
--

INSERT INTO `users_group` (`id_group`, `name_group`) VALUES
(1, 'AdminKost'),
(2, 'Pemilik Kost'),
(3, 'Member Premium'),
(4, 'Member Biasa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indexes for table `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `foto_FK` (`album_id`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `kost`
--
ALTER TABLE `kost`
  ADD PRIMARY KEY (`id_kost`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `promosi`
--
ALTER TABLE `promosi`
  ADD PRIMARY KEY (`id_promosi`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id_subscriber`);

--
-- Indexes for table `tb_gambar`
--
ALTER TABLE `tb_gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `transaksi_FK` (`user_id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transdet`),
  ADD KEY `transaksi_detail_FK` (`kost_id`),
  ADD KEY `transaksi_detail_FK_1` (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id_group`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kost`
--
ALTER TABLE `kost`
  MODIFY `id_kost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `promosi`
--
ALTER TABLE `promosi`
  MODIFY `id_promosi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id_subscriber` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_gambar`
--
ALTER TABLE `tb_gambar`
  MODIFY `id_gambar` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transdet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_FK` FOREIGN KEY (`album_id`) REFERENCES `album` (`id_album`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_FK` FOREIGN KEY (`kost_id`) REFERENCES `kost` (`id_kost`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_detail_FK_1` FOREIGN KEY (`trans_id`) REFERENCES `transaksi` (`id_trans`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
