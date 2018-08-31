-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 30 Agu 2018 pada 04.04
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catatan_dahlan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(50) NOT NULL,
  `penulis_berita` varchar(25) NOT NULL,
  `isi_berita` longtext NOT NULL,
  `image_berita` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `judul_berita`, `penulis_berita`, `isi_berita`, `image_berita`) VALUES
(1, 'Tak Cukup Hanya Terpesona', 'Dahlan Iskan', 'Orang awam akan bertanya: mengapa pembangkit listrik tenaga angin itu dibangun di daerah yang sudah kelebihan listrik seperti Sulsel? Mengapa tidak dibangun di Papua atau di Seram atau di Halmahera atau di Sumba atau di Flores? Yang mereka kekurangan listrik?Kenapa investor tidak sekalian mengabdi mengatasi kekurangan listrik di suatu daerah di Indonesia? Jawabnya: Anda ini siapa? Investor? Orang PLN? Atau orang pemerintah?Kalau Anda investor, pasti Anda akan pilih membangunnya di daerah yang sudah kelebihan listrik. Bahkan di daerah yang sistem kelistrikannya sudah mapan.Sejak tiga tahun lalu Sulsel sudah kelebihan listrik dan sistemnya sudah cukup andal.', 'image_berita1.jpeg'),
(2, 'Kepastian Yang Tidak Pasti', 'Dahlan Iskan', 'Kalau Anda bisa paham tulisan seri 4 ini, kecerdasan Anda pasti di atas rata-rata. Inilah bagian yang paling rumit untuk bisa ditulis dengan sederhana: sistem kelistrikan. Misalnya. Mengenai ketidakpastian berapa pembangkit listrik tenaga angin di Pabbaresseng itu bisa memproduksi listrik. Apakah 75 MW? Ataukah hanya 30 MW? Atau bahkan hanya 20 MW? Tidak  ada kepastian itu. Tergantung angin. Ini sangat-sangat menyulitkan PLN. Apalagi masih ada ketidakpastian yang lain: timingnya. Jam berapa bisa kirim listrik dalam jumlah berapa. Jam berapa naik berapa. Jam berapa turun berapa. Semua tidak pasti. Semua tergantung jam kedatangan angin. Tidak pasti jumlahnya, tidak pasti pula jam pengirimannya. Lebih sulit lagi karena ini: Sulsel dalam posisi kelebihan listrik. Padahal listrik dari Pabbaresseng ini harus dibeli dengan harga lebih mahal. Ini berarti PLN Sulsel harus mematikan beberapa pembangkit.', 'image_berita2.jpeg'),
(3, 'Tebak-Tebakan Tak Berhadiah', 'Dahlan Iskan', 'Saya lagi bertaruh dengan beberapa aktivis green energy. Tentang berapa banyak pembangkit listrik tenaga angin di bukit Pabbaresseng, kabupaten Siddereng Rappang, Sulawesi Selatan itu nanti akan menghasilkan listrik. Anda juga boleh ikut bertaruh lewat likedisway@gmail.com. Pertanyaannya: berapa persen dari kapasitasnyakah akan menghasilkan listrik? Asumsinya: kapasitas pembangkit itu 75 MW. Kalau kecepatan angin 7 meter/detik kapasitas itu akan tercapai. Yang kita sama-sama tidak tahu: data riel kecepatan angin di bukit tersebut selama 24 jam. Tentu investornya lebih tahu kecepatan angin di sana. Bagi yang tebakannya ingin lebih tepat boleh mencoba cari data ke badan meteorologi di Sidrap (Siddenreng Rappang) atau Makassar. Siapa tahu punya. Setidaknya angka kasar. Saya sendiri sudah bisa umumkan tebakan saya. Sekarang. Pembangkit itu nanti hanya akan menghasilkan listrik 25 MW. Hanya 30 persen dari kapasitas.', 'image_berita3.jpeg'),
(4, 'Berdoa Agar Tak Bersiul', 'Dahlan Iskan', 'Kalau Anda membangun pembangkit listrik tenaga uap (batubara) dengan kapasitas 100 MW, pembangkit itu benar-benar akan menghasilkan listrik 100 MW. Terus menerus. Selama 24 jam sehari. Kalau Anda membeli genset 5 MW mungkin anda akan mendapatkan listrik 4 MW saja selama 24 jam sehari. Kalau Anda membangun pembangkit listrik tenaga nuklir atau geothermal 500 MW anda akan mendapatkan listrik benar-benar 500 MW selama 24 jam sehari. Berapa MW-kah listrik yang akan dihasilkan oleh pembangkit listrik tenaga angin berkapasitas 75 MW? Seperti yang sedang dibangun investor Amerika di bukit Pabbaresseng, Sidrap, Sulsel itu? Jawabnya: belum tentu 75 MW. Juga belum tentu 60 MW. Bahkan belum tentu bisa 30 MW. Bahkan lagi, belum tentu mampu menghasilkan 20 MW.', 'image_berita4.jpeg'),
(5, 'Antara Bonek Dan Pengabdian', 'Dahlan Iskan', 'Rasanya tidak ada investor yang lebih bonek dari ini: mendirikan pembangkit listrik tenaga angin dengan investasi Rp 2 triliun di bukit Pabbaresseng, pedalaman Siddenreng Rappang, Sulawesi Selatan. Saat ini proyek tersebut hampir jadi. Tepat waktu. Sebesar 75 MW. Kira-kira 130 km dari Makassar ke arah utara. Saya harus kagum dengan proyek Pabbaresseng ini. Juga iri. Terutama kalau ingat sulitnya perjuangan anak bangsa seperti Ricky Elson di bidang tenaga angin ini. Inilah proyek green energy raksasa. Pertama sebesar itu di Indonesia. Mungkin di Asia Tenggara. Semula saya ragu proyek ini tetap jalan. Saya tidak bisa menemukan hitungan bisnisnya. Maka saya benar-benar kagum bahwa proyek ini terwujud. Kagum segala-galanya. Termasuk kagum bagaimana menghitung sisi bisnisnya.', 'image_berita5.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
