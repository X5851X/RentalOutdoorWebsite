-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 06:47 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_outdoor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-03-28 23:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `tourguide` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tgl_booking` date NOT NULL,
  `bukti_bayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cek_booking`
--

CREATE TABLE `cek_booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `tgl_booking` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cek_booking`
--

INSERT INTO `cek_booking` (`kode_booking`, `id_produk`, `tgl_booking`, `status`) VALUES
('RKZIX7VG', 13, '2023-06-24', 'Menunggu Pembayaran'),
('7EJRE8EO', 13, '2023-07-08', 'Menunggu Pembayaran'),
('7O7Q9UDC', 13, '2023-07-01', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(3, 'risfan', 'risfan@gmail.com', '0819191919', 'kelompok 5', '2023-06-26 01:23:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`) VALUES
(1, 'Rental Outdoor \r\nRukan Mangga Dua Square Blok E No 39, Jl. Gn. Sahari No.1, RT.11/RW.6, Ancol, Kec. Pademangan, Jkt Utara, Daerah Khusus Ibukota Jakarta 14430', 'rentaloutdoor@rental.ac.id', '08123344555');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_barang`, `nama_barang`, `CreationDate`, `UpdationDate`) VALUES
(18, 'Tenda', '2023-06-16 07:40:52', NULL),
(19, 'Tas', '2023-06-16 07:40:57', NULL),
(20, 'Jaket', '2023-06-16 07:42:25', '2023-06-17 07:19:31'),
(21, 'Set Peralatan Masak', '2023-06-16 07:42:34', NULL),
(22, 'Sleeping Bag', '2023-06-16 07:42:49', NULL),
(23, 'Panci', '2023-06-26 01:28:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` longtext DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `no` varchar(20) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `tb` varchar(100) DEFAULT NULL,
  `tahun` int(6) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `image1` varchar(120) DEFAULT NULL,
  `image2` varchar(120) DEFAULT NULL,
  `image3` varchar(120) DEFAULT NULL,
  `image4` varchar(120) DEFAULT NULL,
  `image5` varchar(120) DEFAULT NULL,
  `PeralatanMasak` int(11) DEFAULT NULL,
  `Senter` int(11) DEFAULT NULL,
  `Bantal` int(11) DEFAULT NULL,
  `PisauLipat` int(11) DEFAULT NULL,
  `EmergencyLamp` int(11) DEFAULT NULL,
  `MejaLipat` int(11) DEFAULT NULL,
  `KursiLipat` int(11) DEFAULT NULL,
  `Matras` int(11) DEFAULT NULL,
  `Ponco` int(11) DEFAULT NULL,
  `Pluit` int(11) DEFAULT NULL,
  `PeralatanSanitasi` int(11) DEFAULT NULL,
  `Binocular` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `id_barang`, `no`, `deskripsi`, `harga`, `tb`, `tahun`, `kapasitas`, `image1`, `image2`, `image3`, `image4`, `image5`, `PeralatanMasak`, `Senter`, `Bantal`, `PisauLipat`, `EmergencyLamp`, `MejaLipat`, `KursiLipat`, `Matras`, `Ponco`, `Pluit`, `PeralatanSanitasi`, `Binocular`, `RegDate`, `UpdationDate`) VALUES
(13, 'Tunnel Aqua', 18, '2110000000121', 'Tenda tunnel adalah jenis tenda yang memiliki bentuk silinder atau tabung yang panjang dengan rangka yang memanjang dari ujung ke ujung tenda. Tenda ini biasanya memiliki satu atau lebih tiang melengkung yang membentuk lengkungan seperti terowongan (tunnel) di bagian atas tenda. Desain tenda tunnel memberikan ruang yang lebih luas di dalamnya dan memungkinkan pengguna untuk berdiri dengan nyaman di tengah tenda.', 550000, 'XL', 2019, 5, '5cc9677151c65a8a5d52fcb347880b5e.jpg', '92d98b044c2c74c13fb6e811666670b8.jpg', '949e8de47cbb45ff62bb07b10411979b.jpg', '8cc17d48651112fcbbd5147cd1e8e7b8.jpg', 'dd977bbe97392f1e118edaa4f3ded1bd.jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-16 09:46:04', '2023-06-19 13:42:47'),
(14, 'Cabin Polar', 22, '2110000000161', 'Sleeping Bag Cabin Polar Bahan Lebih Tebal cocok untuk camping, hiking, pendaki, atau berkemah dan Cocok juga digunakan para santri yang tinggal di asrama / pesantren, pengganti extra bed:-) , para relawan/korban yang tinggal di area bencana alam, buat pekerja kantoran yang suka begadang, dll.', 115000, 'XL', 2023, 1, 'sb-1.PNG', 'sb-2.PNG', 'sb-3.PNG', 'sb-4.jpg', 'sb-5.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-22 05:28:17', '2023-06-22 06:08:11'),
(15, 'Ridge Sage', 18, '2110000000122', 'Ridge Tent Single adalah tenda kemah untuk satu orang yang sengaja dirancang dengan kaki-kaki agar Anda bisa tidur dengan nyaman tanpa harus langsung beralaskan tanah, sehingga terhindar dari bebatuan, area lembab atau berlumpur, dan hewan beracun seperti ular. Tenda ini dilengkapi pintu masuk dengan mesh untuk akses mudah sekaligus sebagai sistem ventilasi udara untuk memberikan kenyamanan yang optimal saat berkemah, serta rain fly tahan air sehingga ideal sebagai pelindung Anda dalam keadaan cuaca apapun. Mudah dipasang, tenda serbaguna ini juga dapat difungsikan sebagai cot biasa. Ketika tidak dipakai, Anda bisa kembali menyimpannya di carry bag .', 650000, 'L', 2021, 1, 'a244deb8-b99f-4b9c-ba23-e489e28b6bad.jpg', 'db1d21a6-434b-4c39-8acb-80afc1f2482d.jpg', '1ea03b58-39a1-416a-ba01-2473f7948eb1.jpg', 'a6677747-cbcd-4c7e-a6a0-12a5cef1211d.jpg', '9aeadea2-1fda-4fc1-8147-3dc4146ed921.jpg', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-22 05:31:28', '2023-06-22 05:31:52'),
(16, 'Camping Bromo', 18, '2110000000123', 'Tenda Bromo cocok digunakan untuk camping maupun aktifitas outdoor lainnya, dilengkapi dengan fitur double layer dan bahan yang membuat Areingers tidak perlu khawatir menghadapi cuaca hujan. Tenda Bromo siap menemani petualangan Areingers.\r\n', 450000, 'L', 2022, 2, 'tenda-1.PNG', 'tenda-2.PNG', 'tenda-3.PNG', '0ca6ce0d-9708-470d-9bd6-884459e5a4ec.jpg', 'ba77eefd-09a9-43f1-bc62-5594273a3d69.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-22 05:35:32', '2023-06-22 06:00:41'),
(17, 'PTR ArEI', 19, '2110000000151', 'Tas Gunung / Carrier Toba 60 Liter Arei Outdoorgear dirancang untuk kegiatan Pendakian selama 3-4 hari.Dilengkapi kompartement utama dan kompartement tambahan seperti saku depan, organizer, saku samping, dan raincover.', 120000, 'L', 2023, 1, 'tas-1.PNG', 'tas-2.PNG', 'tas-3.PNG', 'tas-4.PNG', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-22 05:42:18', '2023-06-22 06:04:49'),
(18, 'Halmahera', 20, '2110000000141', 'Jaket Gunung Pria Halmahera Arei Outdoorgear terbuat dari bahan Polyester Ripstop + Single Fleece yang membuat tubuh tetap hangat. Dengan fitur water repellent dan windproof menjaga tubuh areingers dari hujan intensitas ringan dan terpaan angin. Cocok digunakan untuk kegiatan Outdoor seperti Camping dan Hiking maupun kegiatan sehari-hari. Jaket Halmahera siap menemani petualangan Areingers', 56000, 'L', 2021, 1, 'jaket-1.PNG', 'jaket-2.PNG', 'jaket-4.PNG', 'jaket-5.PNG', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-22 05:44:54', '2023-06-22 06:06:15'),
(19, 'Mini Naturehike', 21, '2110000000131', ' Cooking Set Alat Masak Nesting Camping Outdoor', 100000, 'L', 2020, 3, 'Alat Masak-1.PNG', 'Alat Masak-2.PNG', 'Alat Masak-3.PNG', 'Alat Masak-4.jpg', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-22 05:49:00', '2023-06-22 06:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																																							<div style=\"text-align: center;\"><span style=\"font-size: x-large; font-weight: bold;\">Syarat dan Ketentuan Rental Outdoor</span></div><div><br></div><div style=\"text-align: center;\">Selamat datang di Rental Outdoor! Sebelum Anda memulai petualangan luar ruangan yang tak terlupakan, kami ingin memastikan Anda memahami dan menyetujui Syarat dan Ketentuan kami. Harap baca dengan seksama:</div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Pemesanan dan Pembayaran</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">a. Pemesanan dapat dilakukan melalui website kami atau melalui layanan pelanggan kami yang ramah. Pastikan untuk memberikan informasi yang akurat dan lengkap.</div><div style=\"text-align: justify;\">b. Pembayaran penuh harus dilakukan sebelum tanggal pengambilan barang sewa. Kami menerima berbagai metode pembayaran yang aman dan nyaman.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Pengambilan dan Pengembalian Barang</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">a. Barang sewa dapat diambil di lokasi yang telah ditentukan. Pastikan untuk tiba tepat waktu agar Anda dapat mempersiapkan diri dengan baik.</div><div style=\"text-align: justify;\">b. Pengembalian barang sewa harus dilakukan sesuai dengan tanggal dan waktu yang telah disepakati. Mohon kembalikan barang dalam kondisi yang sama saat Anda menerimanya.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Penggunaan dan Perawatan Barang</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">a. Gunakan barang sewa dengan bijaksana dan sesuai dengan petunjuk penggunaan yang telah kami berikan.</div><div style=\"text-align: justify;\">b. Anda bertanggung jawab untuk menjaga dan merawat barang sewa dengan baik. Jaga kebersihan dan hindari kerusakan yang tidak perlu.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Tanggung Jawab dan Keamanan</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">a. Anda bertanggung jawab penuh atas barang sewa selama masa sewa. Pastikan untuk menggunakan barang dengan hati-hati dan sesuai dengan aktivitas yang direncanakan.</div><div style=\"text-align: justify;\">b. Kami tidak bertanggung jawab atas cedera atau kerugian yang mungkin terjadi selama penggunaan barang sewa. Pastikan untuk mengambil langkah-langkah keamanan yang diperlukan.</div><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Pembatalan dan Pengembalian Uang</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">a. Jika Anda perlu membatalkan pesanan, harap beritahu kami sesegera mungkin agar kami dapat mengatur ulang pemesanan untuk orang lain.</div><div style=\"text-align: justify;\">b. Kebijakan pembatalan dan pengembalian uang dapat ditemukan di website kami. Pastikan untuk membacanya dengan seksama.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Penggunaan Data Pribadi</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Kami menghargai privasi Anda. Data pribadi yang Anda berikan akan digunakan secara rahasia dan hanya untuk keperluan administrasi pemesanan. Kami tidak akan memberikan informasi Anda kepada pihak ketiga tanpa izin Anda.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Pembatasan Tanggung Jawab</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Kami berusaha untuk menyediakan barang sewa berkualitas tinggi. Namun, kami tidak bertanggung jawab atas kerusakan, kehilangan, atau cedera yang mungkin terjadi selama penggunaan barang sewa.</div><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Perubahan Syarat dan Ketentuan</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Syarat dan Ketentuan ini dapat berubah dari waktu ke waktu. Perubahan akan diumumkan di website kami, dan kami menyarankan Anda untuk mengunjungi halaman Syarat dan Ketentuan secara berkala.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: center;\">Terima kasih telah membaca dan memahami Syarat dan Ketentuan Rental Outdoor kami. Jika Anda memiliki pertanyaan lebih lanjut, jangan ragu untuk menghubungi tim Rental Outdoor kami. Selamat menikmati petualangan luar ruangan Anda!</div><div style=\"text-align: center;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-style: italic;\">Tim Rental Outdoor</span></div>																																																							'),
(5, 'Rekening', 'rekening', '																																												<div><br></div>																																																																		123456789 Bank BRI a/n RENTAL OUTDOOR&nbsp;<div>atau<br><div>122445556 Bank BCA a/n RENTAL OUTDOOR&nbsp;<br></div><div>atau</div><div>081123456788 via GOPAY a/n RENTAL OUTDOOR<br></div><div><br></div>																						</div>																																	'),
(0, 'tourguide', 'tourguide', '450000'),
(2, 'Privacy Policy', 'privacy', '																																	<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">Kebijakan Privasi</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami menghargai privasi Anda dan berkomitmen untuk melindungi informasi pribadi yang Anda berikan kepada kami melalui website kami. Kebijakan Privasi ini menjelaskan bagaimana kami mengumpulkan, menggunakan, dan melindungi informasi pribadi Anda. Dengan menggunakan website kami, Anda menyetujui pengumpulan dan penggunaan informasi sebagaimana dijelaskan dalam Kebijakan Privasi ini.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Pengumpulan Informasi</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami dapat mengumpulkan informasi pribadi seperti nama, alamat email, nomor telepon, dan alamat lainnya saat Anda menghubungi kami, mendaftar untuk layanan, atau berinteraksi dengan website kami.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Penggunaan Informasi</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Informasi pribadi yang Anda berikan dapat digunakan untuk:</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Memberikan layanan dan informasi yang Anda minta</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Mengirimkan pembaruan dan pemberitahuan terkait layanan kami</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Menyediakan dukungan pelanggan</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Melakukan analisis dan peningkatan website kami</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Menyusun statistik dan melakukan riset pasar</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Perlindungan Informasi</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami mengambil langkah-langkah yang wajar untuk melindungi informasi pribadi Anda dari akses yang tidak sah atau penggunaan yang tidak sah. Namun, perlu diingat bahwa tidak ada metode pengiriman atau penyimpanan data yang 100% aman. Oleh karena itu, kami tidak dapat menjamin keamanan informasi yang Anda kirimkan kepada kami.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Penyingkapan Informasi kepada Pihak Ketiga</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami tidak akan menjual, menyewakan, atau membagikan informasi pribadi Anda kepada pihak ketiga tanpa persetujuan Anda, kecuali diperlukan oleh hukum atau dalam situasi tertentu seperti pemenuhan layanan atau kerja sama dengan mitra yang kami percayai.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Tautan Eksternal</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Website kami dapat berisi tautan ke situs web eksternal. Kami tidak bertanggung jawab atas kebijakan privasi atau isi situs web eksternal tersebut. Kami mendorong Anda untuk membaca Kebijakan Privasi mereka sebelum memberikan informasi pribadi.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Perubahan Kebijakan Privasi</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami dapat memperbarui Kebijakan Privasi ini dari waktu ke waktu. Perubahan akan diberlakukan segera setelah Kebijakan Privasi yang direvisi diposting di website kami. Kami menganjurkan Anda untuk memeriksa Kebijakan Privasi ini secara berkala agar tetap mengetahui pembaruan atau perubahan.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">Kebijakan Penggunaan</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Dengan menggunakan website kami, Anda menyetujui untuk mematuhi Kebijakan Penggunaan kami. Kebijakan Penggunaan ini mengatur penggunaan website kami dan dilarang melakukan hal-hal berikut:</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Penggunaan yang Melanggar Hukum</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Anda tidak boleh menggunakan website kami untuk tujuan yang melanggar hukum atau melanggar hak-hak pihak lain.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Penyalahgunaan Website</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Anda dilarang melakukan tindakan yang dapat merusak, mengganggu, atau merusak fungsi website kami, termasuk penggunaan yang berlebihan atau mengirimkan virus atau materi berbahaya lainnya.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Konten Tidak Pantas</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Anda tidak boleh mengirimkan atau membagikan konten yang mengandung unsur pornografi, kekerasan, diskriminasi, atau materi yang melanggar etika dan norma sosial.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Hak Kekayaan Intelektual</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Anda harus menghormati hak kekayaan intelektual kami atau pihak lain yang terkait dengan konten yang ada di website kami. Anda tidak boleh menggunakan, menyalin, atau menyebarkan konten kami tanpa izin tertulis.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Privasi Pengguna Lain</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Anda harus menghormati privasi pengguna lain dan tidak mengumpulkan atau menggunakan informasi pribadi mereka tanpa izin.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Tanggung Jawab Penggunaan Sendiri</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Anda bertanggung jawab penuh atas penggunaan website kami dan konsekuensi dari penggunaan tersebut.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Perubahan Kebijakan Penggunaan</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami dapat memperbarui Kebijakan Penggunaan ini dari waktu ke waktu. Perubahan akan diberlakukan segera setelah Kebijakan Penggunaan yang direvisi diposting di website kami. Kami menganjurkan Anda untuk memeriksa Kebijakan Penggunaan ini secara berkala agar tetap mengetahui pembaruan atau perubahan.</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold; font-style: italic;\"><div>Tim Rental Outdoor</div></span></div>																																	'),
(3, 'Tentang Kami', 'aboutus', '																																	<div><div style=\"text-align: justify;\"><div style=\"text-align: start;\"><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Selamat datang di Rental Outdoor! Kami adalah tim yang berdedikasi untuk menyediakan perlengkapan dan peralatan terbaik bagi para pecinta petualangan luar ruangan. Kami memahami betapa pentingnya memiliki peralatan yang handal dan berkualitas saat menjelajahi alam bebas, dan itulah mengapa kami hadir untuk memenuhi kebutuhan Anda.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Visi kami adalah menjadi mitra terpercaya bagi Anda dalam menjalani petualangan luar ruangan yang luar biasa. Kami berkomitmen untuk memberikan pengalaman penyewaan yang mudah, aman, dan memuaskan, sehingga Anda dapat fokus pada apa yang benar-benar penting: menikmati momen di alam terbuka.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Mengapa Memilih Kami?</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Peralatan Berkualitas Tinggi: Kami hanya menyediakan peralatan terbaik dari merek-merek terpercaya. Setiap produk kami menjalani proses seleksi ketat untuk memastikan kualitas, keandalan, dan performa yang optimal.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Pilihan yang Luas: Kami menawarkan berbagai macam peralatan outdoor, mulai dari tenda, sleeping bag, tas, dan masih banyak lagi. Anda dapat memilih sesuai dengan kebutuhan dan preferensi Anda.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kemudahan Pemesanan: Kami menyediakan platform pemesanan online yang mudah digunakan. Anda dapat memilih produk, menentukan tanggal penyewaan, dan melakukan pembayaran dengan cepat dan aman.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Layanan Pelanggan yang Ramah: Tim kami siap membantu Anda dalam setiap tahap proses penyewaan. Jika Anda memiliki pertanyaan atau membutuhkan saran, jangan ragu untuk menghubungi kami. Kepuasan pelanggan adalah prioritas utama kami.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami berharap dengan menyewa peralatan outdoor dari Rental Outdoor, Anda dapat mengalami petualangan yang tak terlupakan dan menjelajahi keindahan alam dengan lebih nyaman dan aman.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Jadi, siapkan diri Anda untuk petualangan yang mendebarkan dan tinggalkan urusan peralatan pada kami. Sewa perlengkapan outdoor Anda hari ini dan bersiaplah untuk menggenggam momen luar biasa di alam terbuka!</span></div></div><div style=\"text-align: start;\"><br></div><div style=\"text-align: start;\"><br></div><div style=\"text-align: start;\"><span style=\"text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold; font-style: italic;\">Tim Rental Outdoor</span></div></div><div style=\"text-align: justify;\"><br></div></div>																																																																																								'),
(11, 'FAQs', 'faqs', '																																																																																																																									<div style=\"text-align: justify;\"><p><span style=\"font-size: medium;\"><span style=\"font-family: arial;\">Q: Bagaimana cara menyewa peralatan outdoor di Rental Outdoor?<br></span><span style=\"font-family: arial;\">A: Untuk menyewa peralatan outdoor melalui website Rental Outdoor, ikuti langkah-langkah berikut:</span></span></p><ol><li><span style=\"font-family: arial; font-size: medium;\">Kunjungi website Rental Outdoor dan buat akun pengguna baru.</span></li><li><span style=\"font-family: arial; font-size: medium;\">Telusuri kategori produk yang tersedia dan pilih peralatan yang ingin Anda sewa.</span></li><li><span style=\"font-family: arial; font-size: medium;\">Tentukan tanggal dan durasi penyewaan yang diinginkan.</span></li><li><span style=\"font-family: arial; font-size: medium;\">Tambahkan produk ke keranjang belanja dan lanjutkan ke proses checkout.</span></li><li><span style=\"font-family: arial; font-size: medium;\">Isi informasi pengiriman dan pembayaran yang diperlukan.</span></li><li><span style=\"font-family: arial; font-size: medium;\">Konfirmasikan pesanan Anda dan lakukan pembayaran.</span></li><li><span style=\"font-family: arial; font-size: medium;\">Setelah pembayaran selesai, Anda akan menerima konfirmasi penyewaan melalui email.</span></li><li><span style=\"font-family: arial; font-size: medium;\">Ambil peralatan yang Anda sewa di lokasi Rental Outdoor sesuai dengan jadwal yang telah disepakati.</span></li></ol><span style=\"font-size: medium;\"><span style=\"font-family: arial;\">Q: Apakah Rental Outdoor menyediakan pengiriman peralatan?<br></span><span style=\"font-family: arial;\">A: Saat ini, Rental Outdoor hanya menyediakan opsi pengambilan di lokasi toko. Anda dapat mengambil peralatan yang Anda sewa langsung di toko Rental Outdoor yang terdekat dengan Anda.</span></span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: arial;\"><br></span><span style=\"font-family: arial;\">Q: Apakah Rental Outdoor memberikan asuransi terhadap peralatan yang disewa?<br></span><span style=\"font-family: arial;\">A: Rental Outdoor tidak menyediakan asuransi untuk peralatan yang disewa. Jika terjadi kerusakan atau kehilangan peralatan selama masa penyewaan, penyewa bertanggung jawab untuk mengganti atau memperbaikinya sesuai dengan harga pasar.</span></span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: arial;\"><br></span><span style=\"font-family: arial;\">Q: Bagaimana jika saya ingin memperpanjang masa penyewaan peralatan?<br></span><span style=\"font-family: arial;\">A: Jika Anda ingin memperpanjang masa penyewaan peralatan, harap hubungi tim Rental Outdoor sebelum tanggal pengembalian yang telah ditetapkan. Kami akan memberikan informasi tentang ketersediaan peralatan dan biaya tambahan yang diperlukan untuk memperpanjang penyewaan.</span></span><p></p></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: arial; font-weight: bold; font-style: italic;\">Tim Rental Outdoor</span></span></div>																																																																																																																									');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` char(11) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `ktp` varchar(120) NOT NULL,
  `kk` varchar(120) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`, `ktp`, `kk`, `RegDate`, `UpdationDate`) VALUES
(12, 'Arial Dewantara', 'arial@gmail.com', '9c5d46e22ae2db1f0d838611657c14d9', '08119977445', 'jl. diponegoro', '2007202318330307092022075619id.png', '2007202318330307092022080027id.png', '2023-07-20 16:33:03', '2023-07-20 16:40:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`kode_booking`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indexes for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
