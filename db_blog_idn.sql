-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 27, 2021 at 01:33 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog_idn`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `gambar` text NOT NULL,
  `isi` text NOT NULL,
  `tgl_posting` varchar(50) NOT NULL,
  `author` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_artikel`
--

INSERT INTO `tb_artikel` (`id`, `judul`, `gambar`, `isi`, `tgl_posting`, `author`) VALUES
(1, 'Definisi Cloud Computing, Cara Kerja Cloud Computing, dan Jenis jenis Cloud Computing', 'https://blog.idn.id/wp-content/uploads/2021/02/Thumbnail-850x560.jpeg', 'Definisi dari Cloud Computing adalah sebuah proses pengolahan daya komputasi melalui jaringan internet yang memiliki fungsi agar dapat menjalankan program melalui komputer yang telah terkoneksi satu sama lain pada waktu yang sama.\r\n\r\nSerta memudahkan penggunanya untuk menjalankan program tanpa harus menginstall aplikasi terlebih dahulu dan memudahkan pengguna untuk mengakses data dan informasi melalui internet.\r\n\r\nTeknologi Cloud Computing ini menjadikan internet sebagai pusat server dalam mengelelola data. Sistem ini memudahkan pengguna untuk login ke internet agar mendapatkan akses untuk menjalankan program atau aplikasi tanpa harus menginstall aplikasi tersebut.\r\n\r\nKarena tidak perlu melakukan installasi pada aplikasi, maka untuk media penyimpanan data dari pengguna juga disimpan secara virtual sehingga tidak akan terbebani dengan penggunaan memori yang ada di komputer.\r\n\r\nPeritah – perintah yang digunakan oleh pengguna tadi selanjutnya akan dilanjutkan ke server aplikasi, Setelah perintah diterima oleh sever aplikasi, maka data akan diproses yang akhirnya pengguna akan menerima halaman yang telah diperbaharui sesuai dengan perintah yang telah diberikan sebelumnya. Contoh dari Cloud Computing adalah Yahoo, PDF Gmail, Google Drive.\r\n\r\nPerintah yang diberikan dalam penggunaan aplikasi tersebut akan langsung terintegrasi secara langsung dengan sistem yang ada di komputer. Pengguna hanya memerlukan jaringan internet agar dapat menjalankan aplikasi tersebut tanpa perlu melakukan instalasi.', '8 February 2021', 'Rafiyrd'),
(2, 'Introduction OSPF', 'https://blog.idn.id/wp-content/uploads/2021/02/young-man-sever-room-850x560.jpg', 'Oke, pada kali ini kita akan mengenal teori OSPF, Untuk konfigurasi OSPF mungkin di google juga sudah banyak yang share, jadi pada kali ini lebih mengarah ke teori nya.\r\n\r\nOspf atau open shortest path first , Merupakan routing protocol yang masuk ke jenis routing IGP (Interior Gateway Protocol) Yang memungkinkan pada setiap router yang berada dalam AS dapat berkomunikasi dengan yang lainnya. Konsep dari routing IGP yaitu untuk melakukan routing yang berada dalam satu AS, Jadi bukan digunakan untuk menghubungkan antar AS.\r\n\r\nOspf sendiri merupakan protocol link state dimana setiap router yang berada dalam jaringan dapat mengetahui sebuah topology nya. Selain dapat melihat topology OSPF juga dapat mempertimbangkan kecepatan bandwith yang ada pada link dalam sebuah router. Oleh karena itu ospf menggunakan algoritma djikstra dalam penentuan rute terbaiknya.', '5 February 2021', 'Admin'),
(3, 'Apa itu IPv6? Perbedaan IPv4 dan IPv6, Cara Konfigurasi IPv6 untuk Jaringan SOHO dan Enterprise', 'https://blog.idn.id/wp-content/uploads/2021/02/apa-itu-ipv6-dan-cara-konfigurasi-ipv6.jpg', 'Apa itu IPv6, apa perbedaan IPv4 dan IPv6, dan bagaimana cara konfigurasi IPv6. Internet Protocol version 6 (IPv6) adalah versi terbaru dari Internet Protocol (IP) yang direncanakan untuk menggantikan IPv4 yang sudah habis. Apa itu IP? IP adalah identitas yang digunakan untuk pengalamatan komputer di seluruh dunia (internet).\r\n\r\nIPv6 mulai dikembangkan sejak 1994 dan ditetapkan di RFC 2460 pada 1998. Kemudian kembangkan oleh Internet Engineering Task Force (IETF), lalu disempurnakan lagi pada tahun 2017 melalui RFC 8200.\r\n\r\nIPv4 memiliki panjang 32 bit (total sekitar 4 miliar alamat IP yang bisa digunakan). Sedangkan IPv6 memiliki 3,4 × 1038 alamat IP yang bisa digunakan. IPv6 juga memiliki beberapa fitur tambahan seperti, built-in security, stateless address autoconfiguration, dsb. Kamu bisa lihat perbedaan lain di modul (slide) yang saya buat.\r\n\r\nUntuk mengenal apa itu IPv6, struktur header IPv6, cara kerja neighbor discovery di IPv6, cara konfigurasi IPv6, dan hal-hal lain terkait IPv6. Saya menyarankan teman-teman sudah memahami konsep dan istilah-istilah pada IPv4 terlebih dahulu. Jika belum silakan baca artikel saya IPv4 (Internet Protocol version 4) atau belajar dari sumber referensi lain juga boleh.', '8 February 2021', 'Rizqi'),
(4, 'Dialog pada Android', 'https://blog.idn.id/wp-content/uploads/2021/02/custom-dialog-android.png', 'Pada dasarnya terdapat 3 (tiga) Custom Dialog pada Android Studio yaitu:\r\n\r\n1. Toast\r\nCustom dialog ini adalah sebuah pesan feed back kepada pengguna tentang aktivitas tertentu yang sedang ingin di lakukan oleh pengguna di sebuah aplikasi android, contoh seperti pada aplikasi MyTelkomsel ketika user berada di laman beranda kemudian menekan tombol back / kembali maka akan muncul toast di bagian bawah layar.\r\n\r\n2. Alert Dialog\r\nAlert Dialog adalah sebuah pesan konfirmasi yang akan muncul pada UI ketika si user melakukan suatu tindakan tertentu pada sebuah aplikasi android, salah satu contoh adalah ketika kita ingin menghapus data pada sebuah laman activity di aplikasi.\r\n\r\n3. Snackbar\r\nSnackbar ini sebenarnya hampir sama dengan toast akan tetapi yang membedakannya ada pada snackbar memiliki sebuah tombol aksi ketika dia muncul di laman activity.', '8 February 2021', 'Febryan'),
(5, 'Konsep Keamanan Sistem Komputer', 'https://blog.idn.id/wp-content/uploads/2021/02/11121-min-850x560.jpg', 'Konsep dasar keamanan pada sebuah komputer yang mencakup aspek lokal dan jaringan terlihat pada software keamanan yang melekat pada service seperti AppArmor, atau SELinux, yang dengan handal mengumpulkan informasi log yang relevan. hal ini sangat membantu SysAdmin untuk mengelola system tersebut. misal nya dalam hal virtualisasi.', '8 February 2021', 'Toriq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
