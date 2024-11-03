-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2024 pada 15.56
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_galeri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nama_album` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `deskripsi`, `tanggal`, `id_user`) VALUES
(1, 'Mountain', 'Gunung', '2024-10-16', 1),
(2, 'School', 'Sekolah', '2024-10-03', 1),
(10, 'Fashion', 'Pakaian', '2024-10-31', 1),
(11, 'khusus pepe', 'pepe', '2024-10-31', 2),
(12, 'cee punya', 'ceeceee', '2024-11-20', 5),
(13, 'si kami', 'calon ahli surga', '2024-11-03', 8),
(14, 'arul ganteng', 'kuyaa', '2024-11-03', 4),
(15, 'wallpaper', 'wallpaper aesthetic', '2024-11-03', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `id_album` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`id_foto`, `judul`, `deskripsi`, `tanggal`, `gambar`, `id_album`, `id_user`) VALUES
(3, 'hh starboy', 'asaiki', '2024-10-26', 'WhatsApp Image 2024-05-29 at 21.52.32_b88b4cb3.jpg', 2, 1),
(5, 'mountain', 'asas', '2024-10-08', 'welcome.jpg', 2, 1),
(7, 'gabut 2', 'P5', '2024-10-31', 'WhatsApp Image 2024-08-16 at 14.53.41_d8dc5b30.jpg', 2, 1),
(10, 'wew egii', 'derr', '2024-11-01', '365321188_1343460606547457_242829854891721138_n.jpg', 11, 2),
(12, 'cee', 'shees', '2024-11-08', 'Republic_of_Gamers_Logo_Wallpaper-removebg-preview.png', 12, 5),
(13, 'calon sarjana', 'similikitiw', '0000-00-00', 'p.jpg', 13, 8),
(16, 'gatau arul', 'arul punyaa', '2024-11-03', 'PYO.jpeg', 14, 4),
(19, 'welcome', 'wp', '2024-11-03', 'bgwelcome.jpg', 15, 1),
(20, 'wp', 'wp', '2024-11-03', 'HALODOC.jpg', 15, 1),
(21, 'SKY', 'langit dan awan', '2024-10-27', 'sky.png', 15, 1),
(22, 'animesky', 'langit anime', '2024-11-03', 'animesky.jpg', 15, 1),
(23, 'kimi no na wa', 'taki', '2024-11-03', 'knnw.webp', 15, 1),
(24, 'taki', 'wallpaper taki', '2024-11-03', 'taki.jpg', 15, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_foto` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_foto`, `id_user`, `komentar`, `tanggal`) VALUES
(1, 7, 1, 'mantap', '2024-10-31'),
(2, 7, 1, 'tes', '2024-11-03'),
(4, 10, 1, 'starboy', '2024-11-03'),
(5, 3, 8, 'kecee starboy', '2024-11-03'),
(10, 3, 4, 'qwqwq', '2024-11-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `id_like` int(11) NOT NULL,
  `id_foto` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `likefoto`
--

INSERT INTO `likefoto` (`id_like`, `id_foto`, `id_user`, `tanggal`) VALUES
(3, 5, 1, NULL),
(5, 12, 1, NULL),
(7, 3, 2, NULL),
(9, 12, 2, NULL),
(13, 7, 1, NULL),
(16, 10, 1, NULL),
(17, 3, 1, NULL),
(19, 7, 2, NULL),
(20, 10, 2, NULL),
(21, 12, 4, NULL),
(22, 3, 4, NULL),
(23, 5, 4, NULL),
(26, 13, 8, NULL),
(28, 13, 1, NULL),
(29, 13, 4, NULL),
(30, 7, 4, NULL),
(31, 10, 4, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `roles` enum('admin','user') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `nama_lengkap`, `alamat`, `roles`) VALUES
(1, 'maul', 'b5e4eae83cc3c4d7a4bf956ce0fc3016', 'maul@gmail.com', 'maul elite', 'cileunyi', 'admin'),
(2, 'pepe', '7edede46f596b580cd10469463987280', 'pepe@gmail.com', 'pepe thani', 'Wonosobo', 'user'),
(4, 'qw', '4c9d4914f727114e49e936c86aba34ec', 'qwerty@gmail.com', 'arul', 'hulahula', 'user'),
(5, 'cee', '3597bdb8b9b520b2c1cedbb8f4d8fb3c', 'cee@gmailcom', 'cee', 'Wonogiri', 'user'),
(6, 'nana', '6ebba2abeb5cb63a539ec3d67a72bbba', 'nana@gmail.com', 'nana', 'Nagapuro', 'user'),
(8, 'mOREN', '827ccb0eea8a706c4c34a16891f84e7b', 'moqrennn@gmail.com', 'moren', 'CImahi', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `id_album` (`id_album`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_foto` (`id_foto`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`id_like`),
  ADD KEY `id_foto` (`id_foto`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_foto`) REFERENCES `foto` (`id_foto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`id_foto`) REFERENCES `foto` (`id_foto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
