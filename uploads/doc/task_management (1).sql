-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2022 pada 17.49
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_management`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL DEFAULT current_timestamp(),
  `finish_date` date NOT NULL,
  `status` enum('New','On progress','Finish') DEFAULT NULL,
  `doc_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tasks`
--

INSERT INTO `tasks` (`id`, `category_id`, `title`, `description`, `start_date`, `finish_date`, `status`, `doc_url`) VALUES
(1, 1, '\"Latihan Studi Kasus Pemrograman\"', '\"Pada sesi latihan ini anda diminta untuk menuliskan kode untuk memecahkan masalah berdasarkan soal di bawah ini. Bebas menggunakan bahasa pemrograman apa saja \n\nBuatlah sebuah program yang dapat menginputkan dan menampilkan data berikut\n1. Nama\n2. Tempat Lahir\n3. Usia\nsetelah itu buatlah sebuah output tambahan berupa kategori usia dengan ketentuan\njika inputan usia \n- 15-17 tahun, maka kategori usia remaja\n- 18-22 tahun, maka kategori usia dewasa\n\nMasukkan Source Code dari program yang sudah dibuat ke dalam format dokumen (.doc,pdf dsb) lalu submit pada field yang disediakan\"', '2022-10-25', '2022-10-01', 'Finish', 'Modul_FWD.pdf'),
(2, 2, '\"Latihan Pengenalan Desain Web Dasar\"', '\"Pada sesi latihan ini anda diminta untuk menuliskan kode untuk memecahkan masalah berdasarkan soal di bawah ini. Bebas menggunakan bahasa pemrograman apa saja \n\nBuatlah sebuah program yang dapat menginputkan dan menampilkan data berikut\n1. Nama\n2. Tempat Lahir\n3. Usia\nsetelah itu buatlah sebuah output tambahan berupa kategori usia dengan ketentuan\njika inputan usia \n- 15-17 tahun, maka kategori usia remaja\n- 18-22 tahun, maka kategori usia dewasa\n\nMasukkan Source Code dari program yang sudah dibuat ke dalam format dokumen (.doc,pdf dsb) lalu submit pada field yang disediakan\"', '2022-10-26', '0000-00-00', 'On progress', ''),
(4, 3, '\"Html Dasar\"', '\"Pada sesi latihan ini anda diminta untuk menuliskan kode untuk memecahkan masalah berdasarkan soal di bawah ini. Bebas menggunakan bahasa pemrograman apa saja \n\nBuatlah sebuah program yang dapat menginputkan dan menampilkan data berikut\n1. Nama\n2. Tempat Lahir\n3. Usia\nsetelah itu buatlah sebuah output tambahan berupa kategori usia dengan ketentuan\njika inputan usia \n- 15-17 tahun, maka kategori usia remaja\n- 18-22 tahun, maka kategori usia dewasa\n\nMasukkan Source Code dari program yang sudah dibuat ke dalam format dokumen (.doc,pdf dsb) lalu submit pada field yang disediakan\"', '2022-10-27', '0000-00-00', 'On progress', 'Lembar_Pengesahan.doc'),
(5, 3, 'test', 'test', '2022-10-31', '2022-11-01', 'On progress', 'Lembar_Pengesahan5.doc'),
(9, 5, 'The basics of art', 'Learn and analyze the basics in art', '2022-10-31', '0000-00-00', 'New', ''),
(10, 5, 'The basics of art', 'Learn and analyze the basics in art', '2022-10-31', '0000-00-00', 'New', ''),
(11, 1, 'ulang1', 'ulang1 des', '2022-10-31', '0000-00-00', 'Finish', 'Merancang_Arsitektur_dalam_Web_API_1.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `task_categories`
--

CREATE TABLE `task_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `task_categories`
--

INSERT INTO `task_categories` (`id`, `name`) VALUES
(1, 'pengenalan dunia pemrograman'),
(2, 'pengenalan desain web'),
(3, 'html'),
(4, 'css'),
(5, 'php'),
(6, 'mvc');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori` (`category_id`);

--
-- Indeks untuk tabel `task_categories`
--
ALTER TABLE `task_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `task_categories`
--
ALTER TABLE `task_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`category_id`) REFERENCES `task_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
