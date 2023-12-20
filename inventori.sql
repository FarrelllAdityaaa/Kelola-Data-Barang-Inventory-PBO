-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2023 pada 12.23
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun_admin`
--

CREATE TABLE `akun_admin` (
  `username` varchar(6) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akun_admin`
--

INSERT INTO `akun_admin` (`username`, `password`) VALUES
('farrel', '12332112'),
('Udinnn', '321321');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun_karyawan`
--

CREATE TABLE `akun_karyawan` (
  `npk` varchar(10) NOT NULL,
  `divisi` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akun_karyawan`
--

INSERT INTO `akun_karyawan` (`npk`, `divisi`, `nama`, `password`) VALUES
('123123123', 'AMB Charging', 'BikaKabi', '32132132'),
('123456789', 'Casting', 'farrel', '123321'),
('31231231', 'Drying', 'farrerea', '1232123'),
('kwjdkajkdj', 'MCB Charging', 'Tttototoo', '6767676');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `kodebarang` varchar(5) NOT NULL,
  `namabarang` varchar(10) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`kodebarang`, `namabarang`, `jumlah`, `keterangan`) VALUES
('B1k0', 'Buku ', 5, 'Buku Sinar Dunia, 150 halaman, ukuran 20x30'),
('r2o2k', 'Rokok', 20, 'Rokok Sempurna Child, 1 pck berisi 20 batang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_pengambilan`
--

CREATE TABLE `riwayat_pengambilan` (
  `kodebarang` varchar(5) NOT NULL,
  `namabarang` varchar(10) NOT NULL,
  `npk` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jumlahambil` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun_admin`
--
ALTER TABLE `akun_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `akun_karyawan`
--
ALTER TABLE `akun_karyawan`
  ADD PRIMARY KEY (`npk`);

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`kodebarang`);

--
-- Indeks untuk tabel `riwayat_pengambilan`
--
ALTER TABLE `riwayat_pengambilan`
  ADD KEY `kodebarang` (`kodebarang`),
  ADD KEY `npk` (`npk`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `riwayat_pengambilan`
--
ALTER TABLE `riwayat_pengambilan`
  ADD CONSTRAINT `riwayat_pengambilan_ibfk_1` FOREIGN KEY (`kodebarang`) REFERENCES `data_barang` (`kodebarang`),
  ADD CONSTRAINT `riwayat_pengambilan_ibfk_2` FOREIGN KEY (`npk`) REFERENCES `akun_karyawan` (`npk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
