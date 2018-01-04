-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2018 pada 16.09
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_dw_rumah_sakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_tabel_asuransi`
--

CREATE TABLE IF NOT EXISTS `dim_tabel_asuransi` (
  `id_dim_tabel_asuransi` int(11) NOT NULL AUTO_INCREMENT,
  `dim_tabel_asuransi_nama` varchar(45) DEFAULT NULL,
  `dim_tabel_asuransi_harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_dim_tabel_asuransi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `dim_tabel_asuransi`
--

INSERT INTO `dim_tabel_asuransi` (`id_dim_tabel_asuransi`, `dim_tabel_asuransi_nama`, `dim_tabel_asuransi_harga`) VALUES
(1, 'BPJS', 50000),
(2, 'ALIENCE', 100000),
(3, 'AXA MANDIRI', 250000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_tabel_kamar`
--

CREATE TABLE IF NOT EXISTS `dim_tabel_kamar` (
  `id_dim_tabel_kamar` int(11) NOT NULL AUTO_INCREMENT,
  `dim_tabel_kamar_nama` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_dim_tabel_kamar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `dim_tabel_kamar`
--

INSERT INTO `dim_tabel_kamar` (`id_dim_tabel_kamar`, `dim_tabel_kamar_nama`) VALUES
(1, 'Anggrek'),
(2, 'Seroja'),
(3, 'Melati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_tabel_klinik`
--

CREATE TABLE IF NOT EXISTS `dim_tabel_klinik` (
  `id_dim_tabel_klinik` int(11) NOT NULL AUTO_INCREMENT,
  `dim_tabel_klinik_nama` varchar(45) DEFAULT NULL,
  `id_dim_tabel_kamar` int(11) NOT NULL,
  PRIMARY KEY (`id_dim_tabel_klinik`,`id_dim_tabel_kamar`),
  KEY `fk_dim_tabel_klinik_dim_tabel_kamar_idx` (`id_dim_tabel_kamar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `dim_tabel_klinik`
--

INSERT INTO `dim_tabel_klinik` (`id_dim_tabel_klinik`, `dim_tabel_klinik_nama`, `id_dim_tabel_kamar`) VALUES
(1, 'Pelita Ibu', 1),
(2, 'Nyoman', 2),
(3, 'Monovalensi', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_tabel_pasien`
--

CREATE TABLE IF NOT EXISTS `dim_tabel_pasien` (
  `id_dim_tabel_pasien` int(11) NOT NULL AUTO_INCREMENT,
  `dim_tabel_pasien_nama` varchar(45) DEFAULT NULL,
  `dim_tabel_pasien_jk` enum('L','P') DEFAULT NULL,
  PRIMARY KEY (`id_dim_tabel_pasien`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `dim_tabel_pasien`
--

INSERT INTO `dim_tabel_pasien` (`id_dim_tabel_pasien`, `dim_tabel_pasien_nama`, `dim_tabel_pasien_jk`) VALUES
(1, 'Ahmad', 'L'),
(2, 'Nani', 'P'),
(3, 'Agus', 'L'),
(4, 'Nita', 'P'),
(5, 'Zaid', 'L'),
(6, 'Pita', 'P'),
(7, 'Sam', 'L'),
(8, 'Rika', 'P'),
(9, 'Melan', 'P'),
(10, 'Bunga', 'P'),
(11, 'Kikin', 'L'),
(12, 'Bradi', 'L'),
(13, 'Nona', 'P'),
(14, 'Nanda', 'P'),
(15, 'Juan', 'L'),
(16, 'Kisin', 'L'),
(17, 'Fachrin', 'L'),
(18, 'Angga', 'L'),
(19, 'Mutia', 'P'),
(20, 'Dinal', 'L'),
(21, 'Anggi', 'P'),
(22, 'Dicky', 'L'),
(23, 'Wandy', 'L'),
(24, 'Ibrahim', 'L'),
(25, 'Mona', 'P'),
(26, 'Dita', 'P'),
(27, 'Didit', 'L'),
(28, 'Didi', 'L'),
(29, 'Alex', 'L'),
(30, 'Rahul', 'L'),
(31, 'Ali', 'L'),
(32, 'Bimo', 'L'),
(33, 'Nana', 'P'),
(34, 'Natsya', 'P'),
(35, 'Cinta', 'P'),
(36, 'Yayang', 'P'),
(37, 'Romi', 'L'),
(38, 'Aco', 'L'),
(39, 'Emil', 'P'),
(40, 'Okta', 'P'),
(41, 'Mashita', 'P'),
(42, 'Boy', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_tabel_penyakit`
--

CREATE TABLE IF NOT EXISTS `dim_tabel_penyakit` (
  `id_dim_tabel_penyakit` int(11) NOT NULL AUTO_INCREMENT,
  `dim_tabel_penyakit_nama` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_dim_tabel_penyakit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `dim_tabel_penyakit`
--

INSERT INTO `dim_tabel_penyakit` (`id_dim_tabel_penyakit`, `dim_tabel_penyakit_nama`) VALUES
(1, 'HIV/AIDS'),
(2, 'DBD'),
(3, 'TBC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_tabel_rawat`
--

CREATE TABLE IF NOT EXISTS `dim_tabel_rawat` (
  `id_dim_tabel_rawat` int(11) NOT NULL AUTO_INCREMENT,
  `dim_tabel_rawat_jenis` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_dim_tabel_rawat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `dim_tabel_rawat`
--

INSERT INTO `dim_tabel_rawat` (`id_dim_tabel_rawat`, `dim_tabel_rawat_jenis`) VALUES
(1, 'Inap'),
(2, 'Jalan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_tabel_waktu`
--

CREATE TABLE IF NOT EXISTS `dim_tabel_waktu` (
  `id_dim_tabel_waktu` int(11) NOT NULL AUTO_INCREMENT,
  `dim_tabel_waktu_waktu` date DEFAULT NULL,
  PRIMARY KEY (`id_dim_tabel_waktu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `dim_tabel_waktu`
--

INSERT INTO `dim_tabel_waktu` (`id_dim_tabel_waktu`, `dim_tabel_waktu_waktu`) VALUES
(1, '2017-11-01'),
(2, '2016-12-01'),
(3, '2017-12-13'),
(4, '2017-06-12'),
(5, '2017-03-22'),
(6, '2016-01-13'),
(7, '2016-08-16'),
(8, '2015-01-01'),
(9, '2015-03-07'),
(10, '2015-06-19'),
(11, '2015-02-28'),
(12, '2015-04-11'),
(13, '2016-03-20'),
(14, '2016-01-21'),
(15, '2016-05-05'),
(16, '2016-03-17'),
(17, '2016-10-20'),
(18, '2016-11-28'),
(19, '2016-01-17'),
(20, '2016-09-25'),
(21, '2016-07-18'),
(22, '2016-03-09'),
(23, '2017-01-10'),
(24, '2017-09-16'),
(25, '2017-05-29'),
(26, '2017-12-21'),
(27, '2017-02-26'),
(28, '2017-06-16'),
(29, '2017-10-11'),
(30, '2017-09-16'),
(31, '2017-11-13'),
(32, '2017-09-21'),
(33, '2015-01-29'),
(34, '2015-11-10'),
(35, '2015-02-03'),
(36, '2015-04-24'),
(37, '2015-07-16'),
(38, '2015-03-13'),
(39, '2015-02-12'),
(40, '2015-12-30'),
(41, '2015-08-10'),
(42, '2015-06-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakta_tabel_rumah_sakit`
--

CREATE TABLE IF NOT EXISTS `fakta_tabel_rumah_sakit` (
  `id_fakta_tabel_rumah_sakit` int(11) NOT NULL AUTO_INCREMENT,
  `id_dim_tabel_pasien` int(11) NOT NULL,
  `id_dim_tabel_penyakit` int(11) NOT NULL,
  `id_dim_tabel_rawat` int(11) NOT NULL,
  `id_dim_tabel_klinik` int(11) NOT NULL,
  `id_dim_tabel_asuransi` int(11) NOT NULL,
  `id_dim_tabel_waktu` int(11) NOT NULL,
  `fakta_tabel_rumah_sakit_lama` int(11) DEFAULT NULL,
  `fakta_tabel_rumah_sakit_biaya` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_fakta_tabel_rumah_sakit`,`id_dim_tabel_pasien`,`id_dim_tabel_penyakit`,`id_dim_tabel_rawat`,`id_dim_tabel_klinik`,`id_dim_tabel_asuransi`,`id_dim_tabel_waktu`),
  KEY `fk_fakta_tabel_rumah_sakit_dim_tabel_pasien1_idx` (`id_dim_tabel_pasien`),
  KEY `fk_fakta_tabel_rumah_sakit_dim_tabel_penyakit1_idx` (`id_dim_tabel_penyakit`),
  KEY `fk_fakta_tabel_rumah_sakit_dim_tabel_waktu1_idx` (`id_dim_tabel_waktu`),
  KEY `fk_fakta_tabel_rumah_sakit_dim_tabel_rawat1_idx` (`id_dim_tabel_rawat`),
  KEY `fk_fakta_tabel_rumah_sakit_dim_tabel_klinik1_idx` (`id_dim_tabel_klinik`),
  KEY `fk_fakta_tabel_rumah_sakit_dim_tabel_asuransi1_idx` (`id_dim_tabel_asuransi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `fakta_tabel_rumah_sakit`
--

INSERT INTO `fakta_tabel_rumah_sakit` (`id_fakta_tabel_rumah_sakit`, `id_dim_tabel_pasien`, `id_dim_tabel_penyakit`, `id_dim_tabel_rawat`, `id_dim_tabel_klinik`, `id_dim_tabel_asuransi`, `id_dim_tabel_waktu`, `fakta_tabel_rumah_sakit_lama`, `fakta_tabel_rumah_sakit_biaya`) VALUES
(1, 1, 1, 2, 1, 1, 1, NULL, NULL),
(2, 2, 2, 1, 2, 2, 2, NULL, NULL),
(3, 3, 1, 1, 3, 3, 3, NULL, NULL),
(4, 4, 2, 1, 1, 2, 4, NULL, NULL),
(5, 5, 3, 2, 2, 2, 5, NULL, NULL),
(6, 6, 2, 2, 2, 1, 6, NULL, NULL),
(7, 7, 1, 1, 3, 3, 7, NULL, NULL),
(8, 8, 2, 2, 1, 3, 8, NULL, NULL),
(9, 9, 2, 1, 2, 3, 9, NULL, NULL),
(10, 10, 3, 2, 2, 1, 10, NULL, NULL),
(11, 11, 3, 1, 3, 2, 11, NULL, NULL),
(12, 12, 1, 1, 2, 1, 12, NULL, NULL),
(13, 13, 2, 1, 2, 3, 13, NULL, NULL),
(14, 14, 2, 1, 2, 2, 14, NULL, NULL),
(15, 15, 2, 2, 3, 1, 15, NULL, NULL),
(16, 16, 3, 1, 2, 2, 16, NULL, NULL),
(17, 17, 2, 2, 1, 3, 17, NULL, NULL),
(18, 18, 2, 1, 1, 3, 18, NULL, NULL),
(19, 19, 3, 1, 2, 3, 19, NULL, NULL),
(20, 20, 1, 2, 3, 2, 20, NULL, NULL),
(21, 21, 2, 2, 2, 3, 21, NULL, NULL),
(22, 22, 1, 2, 1, 3, 22, NULL, NULL),
(23, 23, 2, 1, 3, 1, 23, NULL, NULL),
(24, 24, 2, 1, 2, 3, 24, NULL, NULL),
(25, 25, 2, 2, 3, 1, 25, NULL, NULL),
(26, 26, 2, 1, 2, 3, 26, NULL, NULL),
(27, 27, 3, 2, 3, 2, 27, NULL, NULL),
(28, 28, 1, 1, 3, 2, 28, NULL, NULL),
(29, 29, 3, 2, 2, 1, 29, NULL, NULL),
(30, 30, 1, 2, 3, 1, 30, NULL, NULL),
(31, 31, 2, 1, 3, 2, 31, NULL, NULL),
(32, 32, 2, 1, 3, 2, 32, NULL, NULL),
(33, 33, 2, 1, 2, 3, 33, NULL, NULL),
(34, 34, 1, 2, 3, 1, 34, NULL, NULL),
(35, 35, 1, 2, 2, 1, 35, NULL, NULL),
(36, 36, 1, 1, 2, 2, 36, NULL, NULL),
(37, 37, 2, 2, 3, 1, 37, NULL, NULL),
(38, 38, 3, 1, 3, 2, 38, NULL, NULL),
(39, 39, 2, 1, 3, 2, 39, NULL, NULL),
(40, 40, 2, 1, 3, 1, 40, NULL, NULL),
(41, 41, 2, 1, 3, 2, 41, NULL, NULL),
(42, 42, 1, 2, 3, 2, 42, NULL, NULL);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dim_tabel_klinik`
--
ALTER TABLE `dim_tabel_klinik`
  ADD CONSTRAINT `fk_dim_tabel_klinik_dim_tabel_kamar` FOREIGN KEY (`id_dim_tabel_kamar`) REFERENCES `dim_tabel_kamar` (`id_dim_tabel_kamar`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `fakta_tabel_rumah_sakit`
--
ALTER TABLE `fakta_tabel_rumah_sakit`
  ADD CONSTRAINT `fk_fakta_tabel_rumah_sakit_dim_tabel_asuransi1` FOREIGN KEY (`id_dim_tabel_asuransi`) REFERENCES `dim_tabel_asuransi` (`id_dim_tabel_asuransi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_tabel_rumah_sakit_dim_tabel_klinik1` FOREIGN KEY (`id_dim_tabel_klinik`) REFERENCES `dim_tabel_klinik` (`id_dim_tabel_klinik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_tabel_rumah_sakit_dim_tabel_pasien1` FOREIGN KEY (`id_dim_tabel_pasien`) REFERENCES `dim_tabel_pasien` (`id_dim_tabel_pasien`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_tabel_rumah_sakit_dim_tabel_penyakit1` FOREIGN KEY (`id_dim_tabel_penyakit`) REFERENCES `dim_tabel_penyakit` (`id_dim_tabel_penyakit`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_tabel_rumah_sakit_dim_tabel_rawat1` FOREIGN KEY (`id_dim_tabel_rawat`) REFERENCES `dim_tabel_rawat` (`id_dim_tabel_rawat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_tabel_rumah_sakit_dim_tabel_waktu1` FOREIGN KEY (`id_dim_tabel_waktu`) REFERENCES `dim_tabel_waktu` (`id_dim_tabel_waktu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
