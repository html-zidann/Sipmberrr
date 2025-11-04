-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2025 at 04:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipmber`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_staff` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_staff`) VALUES
('ADM001'),
('ADM002'),
('ADM003'),
('ADM004'),
('ADM005'),
('ADM006'),
('ADM007'),
('ADM008'),
('ADM009'),
('ADM010');

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan`
--

CREATE TABLE `pelatihan` (
  `id_pelatihan` varchar(10) NOT NULL,
  `nama_pelatihan` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `status_program` enum('Belum Mulai','Berjalan','Selesai') DEFAULT 'Belum Mulai',
  `id_staff_pelatihan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelatihan`
--

INSERT INTO `pelatihan` (`id_pelatihan`, `nama_pelatihan`, `deskripsi`, `tanggal_mulai`, `tanggal_selesai`, `status_program`, `id_staff_pelatihan`) VALUES
('PL002', 'Pelatihan Kewirausahaan Mikro', '', '2025-10-15', '2025-10-18', 'Berjalan', 'STF020'),
('PL003', 'Pelatihan Tata Boga', '', '2025-10-03', '2025-10-07', 'Berjalan', 'STF018'),
('PL004', 'Pelatihan Servis Motor', '', '2025-10-04', '2025-10-08', 'Berjalan', 'STF019'),
('PL005', 'Pelatihan Desain Grafis', '', '2025-10-05', '2025-10-09', 'Berjalan', 'STF022'),
('PL006', 'Pelatihan Pembuatan Kue', '', '2025-10-06', '2025-10-10', 'Berjalan', 'STF023'),
('PL007', 'Pelatihan Pertanian Modern', '', '2025-10-07', '2025-10-11', 'Berjalan', 'STF024'),
('PL008', 'Pelatihan Barista', '', '2025-10-08', '2025-10-12', 'Berjalan', 'STF034'),
('PL009', 'Pelatihan Digital Marketing', '', '2025-10-09', '2025-10-13', 'Berjalan', 'STF026'),
('PL010', 'Pelatihan Pembuatan Sabun', '', '2025-10-10', '2025-10-14', 'Berjalan', 'STF027'),
('PL011', 'Pelatihan Komputer Dasar', '', '2025-10-11', '2025-10-15', 'Berjalan', 'STF012'),
('PL012', 'Pelatihan Akuntansi UMKM', '', '2025-10-12', '2025-10-16', 'Berjalan', 'STF013'),
('PL013', 'Pelatihan Bahasa Inggris', '', '2025-10-13', '2025-10-17', 'Berjalan', 'STF014'),
('PL014', 'Pelatihan Fotografi Dasar', '', '2025-10-14', '2025-10-18', 'Berjalan', 'STF015'),
('PL015', 'Pelatihan Pengelasan Logam', '', '2025-10-15', '2025-10-19', 'Berjalan', 'STF040');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `nik` char(16) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `penghasilan` decimal(12,2) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT curdate(),
  `password` varchar(100) DEFAULT NULL,
  `status_verifikasi` enum('Menunggu','Diterima','Ditolak') DEFAULT 'Menunggu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendaftar`
--

INSERT INTO `pendaftar` (`nik`, `nama`, `alamat`, `pekerjaan`, `penghasilan`, `email`, `no_hp`, `tanggal_daftar`, `password`, `status_verifikasi`) VALUES
('3201010000000001', 'Ahmad Fauzi', 'Jl. Melati No.1', 'Karyawan', 3500000.00, 'ahmad1@email.com', '08123456001', '2025-10-21', 'pwd001', 'Ditolak'),
('3201010000000003', 'Budi Santoso', 'Jl. Melati No.3', 'Pedagang', 3000000.00, 'budi3@email.com', '08123456003', '2025-10-21', 'pwd003', 'Diterima'),
('3201010000000004', 'Rina Lestari', 'Jl. Melati No.4', 'Guru', 4000000.00, 'rina4@email.com', '08123456004', '2025-10-21', 'pwd004', 'Diterima'),
('3201010000000005', 'Agus Pratama', 'Jl. Melati No.5', 'Karyawan', 3600000.00, 'agus5@email.com', '08123456005', '2025-10-21', 'pwd005', 'Diterima'),
('3201010000000006', 'Dewi Anggraini', 'Jl. Melati No.6', 'Mahasiswa', 0.00, 'dewi6@email.com', '08123456006', '2025-10-21', 'pwd006', 'Diterima'),
('3201010000000007', 'Fajar Hidayat', 'Jl. Melati No.7', 'Karyawan', 999.00, 'fajar7@email.com', '08123456007', '2025-10-21', 'pwd007', 'Diterima'),
('3201010000000008', 'Lina Marlina', 'Jl. Melati No.8', 'Pedagang', 2800000.00, 'lina8@email.com', '08123456008', '2025-10-21', 'pwd008', 'Diterima'),
('3201010000000009', 'Rizky Maulana', 'Jl. Melati No.9', 'Guru', 4000000.00, 'rizky9@email.com', '08123456009', '2025-10-21', 'pwd009', 'Diterima'),
('3201010000000010', 'Tika Permata', 'Jl. Melati No.10', 'Ibu Rumah Tangga', 2200000.00, 'tika10@email.com', '08123456010', '2025-10-21', 'pwd010', 'Diterima'),
('3201010000000011', 'Andi Wijaya', 'Jl. Mawar No.11', 'Karyawan', 3000000.00, 'andi11@email.com', '08123456011', '2025-10-21', 'pwd011', 'Diterima'),
('3201010000000012', 'Rian Setiawan', 'Jl. Mawar No.12', 'Pedagang', 2700000.00, 'rian12@email.com', '08123456012', '2025-10-21', 'pwd012', 'Diterima'),
('3201010000000013', 'Dina Kartika', 'Jl. Mawar No.13', 'Mahasiswa', 0.00, 'dina13@email.com', '08123456013', '2025-10-21', 'pwd013', 'Diterima'),
('3201010000000014', 'Hendra Saputra', 'Jl. Mawar No.14', 'Karyawan', 3100000.00, 'hendra14@email.com', '08123456014', '2025-10-21', 'pwd014', 'Diterima'),
('3201010000000015', 'Nina Rahma', 'Jl. Mawar No.15', 'Ibu Rumah Tangga', 2300000.00, 'nina15@email.com', '08123456015', '2025-10-21', 'pwd015', 'Diterima'),
('3201010000000016', 'Fikri Maulana', 'Jl. Mawar No.16', 'Karyawan', 3400000.00, 'fikri16@email.com', '08123456016', '2025-10-21', 'pwd016', 'Diterima'),
('3201010000000017', 'Maya Sari', 'Jl. Mawar No.17', 'Mahasiswa', 0.00, 'maya17@email.com', '08123456017', '2025-10-21', 'pwd017', 'Diterima'),
('3201010000000018', 'Rudy Santoso', 'Jl. Mawar No.18', 'Pedagang', 2900000.00, 'rudy18@email.com', '08123456018', '2025-10-21', 'pwd018', 'Diterima'),
('3201010000000019', 'Lina Oktaviani', 'Jl. Mawar No.19', 'Guru', 3800000.00, 'lina19@email.com', '08123456019', '2025-10-21', 'pwd019', 'Diterima'),
('3201010000000020', 'Dedi Prasetyo', 'Jl. Mawar No.20', 'Karyawan', 3600000.00, 'dedi20@email.com', '08123456020', '2025-10-21', 'pwd020', 'Diterima'),
('3201010000000021', 'Tia Amalia', 'Jl. Mawar No.21', 'Ibu Rumah Tangga', 2400000.00, 'tia21@email.com', '08123456021', '2025-10-21', 'pwd021', 'Diterima'),
('3201010000000022', 'Bayu Kurniawan', 'Jl. Mawar No.22', 'Karyawan', 3300000.00, 'bayu22@email.com', '08123456022', '2025-10-21', 'pwd022', 'Diterima'),
('3201010000000023', 'Rosa Melinda', 'Jl. Mawar No.23', 'Mahasiswa', 0.00, 'rosa23@email.com', '08123456023', '2025-10-21', 'pwd023', 'Diterima'),
('3201010000000024', 'Vino Pratama', 'Jl. Mawar No.24', 'Pedagang', 2800000.00, 'vino24@email.com', '08123456024', '2025-10-21', 'pwd024', 'Diterima'),
('3201010000000025', 'Lina Kartini', 'Jl. Mawar No.25', 'Guru', 3900000.00, 'lina25@email.com', '08123456025', '2025-10-21', 'pwd025', 'Diterima'),
('3201010000000026', 'Eko Wibowo', 'Jl. Mawar No.26', 'Karyawan', 3500000.00, 'eko26@email.com', '08123456026', '2025-10-21', 'pwd026', 'Diterima'),
('3201010000000027', 'Sari Lestari', 'Jl. Mawar No.27', 'Mahasiswa', 0.00, 'sari27@email.com', '08123456027', '2025-10-21', 'pwd027', 'Diterima'),
('3201010000000028', 'Rifki Hidayat', 'Jl. Mawar No.28', 'Pedagang', 3000000.00, 'rifki28@email.com', '08123456028', '2025-10-21', 'pwd028', 'Diterima'),
('3201010000000029', 'Diana Puspita', 'Jl. Mawar No.29', 'Ibu Rumah Tangga', 2200000.00, 'diana29@email.com', '08123456029', '2025-10-21', 'pwd029', 'Diterima'),
('3201010000000030', 'Fajar Pratama', 'Jl. Mawar No.30', 'Karyawan', 3400000.00, 'fajar30@email.com', '08123456030', '2025-10-21', 'pwd030', 'Diterima'),
('3201010000000031', 'Rina Marlina', 'Jl. Mawar No.31', 'Guru', 4000000.00, 'rina31@email.com', '08123456031', '2025-10-21', 'pwd031', 'Diterima'),
('3201010000000032', 'Hadi Santoso', 'Jl. Mawar No.32', 'Karyawan', 3200000.00, 'hadi32@email.com', '08123456032', '2025-10-21', 'pwd032', 'Ditolak'),
('3201010000000033', 'Tika Rahma', 'Jl. Mawar No.33', 'Mahasiswa', 0.00, 'tika33@email.com', '08123456033', '2025-10-21', 'pwd033', 'Ditolak'),
('3201010000000034', 'Yudha Prasetyo', 'Jl. Mawar No.34', 'Karyawan', 3500000.00, 'yudha34@email.com', '08123456034', '2025-10-21', 'pwd034', 'Ditolak'),
('3201010000000035', 'Dewi Anggraini2', 'Jl. Mawar No.35', 'Ibu Rumah Tangga', 2200000.00, 'dewi35@email.com', '08123456035', '2025-10-21', 'pwd035', 'Ditolak'),
('3201010000000036', 'Rina Sari', 'Jl. Mawar No.36', 'Pedagang', 2800000.00, 'rina36@email.com', '08123456036', '2025-10-21', 'pwd036', 'Ditolak'),
('3201010000000037', 'Bima Hendra', 'Jl. Mawar No.37', 'Karyawan', 3400000.00, 'bima37@email.com', '08123456037', '2025-10-21', 'pwd037', 'Diterima'),
('3201010000000038', 'Putri Melinda', 'Jl. Mawar No.38', 'Mahasiswa', 0.00, 'putri38@email.com', '08123456038', '2025-10-21', 'pwd038', 'Diterima'),
('3201010000000039', 'Yoga Pratama', 'Jl. Mawar No.39', 'Karyawan', 3500000.00, 'yoga39@email.com', '08123456039', '2025-10-21', 'pwd039', 'Ditolak'),
('3201010000000040', 'Nina Lestari', 'Jl. Mawar No.40', 'Ibu Rumah Tangga', 2300000.00, 'nina40@email.com', '08123456040', '2025-10-21', 'pwd040', 'Ditolak'),
('3201010000000041', 'Deni Saputra', 'Jl. Mawar No.41', 'Pedagang', 2700000.00, 'deni41@email.com', '08123456041', '2025-10-21', 'pwd041', 'Ditolak'),
('3201010000000042', 'Toni Kurniawan', 'Jl. Mawar No.42', 'Karyawan', 3300000.00, 'toni42@email.com', '08123456042', '2025-10-21', 'pwd042', 'Diterima'),
('3201010000000043', 'Dewi Puspita', 'Jl. Mawar No.43', 'Mahasiswa', 0.00, 'dewi43@email.com', '08123456043', '2025-10-21', 'pwd043', 'Diterima'),
('3201010000000044', 'Hendra Wijaya', 'Jl. Mawar No.44', 'Pedagang', 2900000.00, 'hendra44@email.com', '08123456044', '2025-10-21', 'pwd044', 'Ditolak'),
('3201010000000045', 'Rina Putri', 'Jl. Mawar No.45', 'Guru', 3800000.00, 'rina45@email.com', '08123456045', '2025-10-21', 'pwd045', 'Diterima'),
('3201010000000046', 'Agus Santoso', 'Jl. Mawar No.46', 'Karyawan', 3500000.00, 'agus46@email.com', '08123456046', '2025-10-21', 'pwd046', 'Ditolak'),
('3201010000000047', 'Maya Anggraini', 'Jl. Mawar No.47', 'Mahasiswa', 0.00, 'maya47@email.com', '08123456047', '2025-10-21', 'pwd047', 'Diterima'),
('3201010000000048', 'Rifki Pratama', 'Jl. Mawar No.48', 'Pedagang', 2800000.00, 'rifki48@email.com', '08123456048', '2025-10-21', 'pwd048', 'Menunggu'),
('3201010000000049', 'Diana Marlina', 'Jl. Mawar No.49', 'Ibu Rumah Tangga', 2200000.00, 'diana49@email.com', '08123456049', '2025-10-21', 'pwd049', 'Ditolak'),
('3201010000000050', 'Fajar Hidayat2', 'Jl. Mawar No.50', 'Karyawan', 3400000.00, 'fajar50@email.com', '08123456050', '2025-10-21', 'pwd050', 'Ditolak'),
('3201010000000051', 'Rina Kartini', 'Jl. Mawar No.51', 'Guru', 4000000.00, 'rina51@email.com', '08123456051', '2025-10-21', 'pwd051', 'Menunggu'),
('3201010000000052', 'Hadi Prasetyo', 'Jl. Mawar No.52', 'Karyawan', 3200000.00, 'hadi52@email.com', '08123456052', '2025-10-21', 'pwd052', 'Menunggu'),
('3201010000000053', 'Tika Marlina', 'Jl. Mawar No.53', 'Mahasiswa', 0.00, 'tika53@email.com', '08123456053', '2025-10-21', 'pwd053', 'Menunggu'),
('3201010000000054', 'Yudha Wijaya', 'Jl. Mawar No.54', 'Karyawan', 3500000.00, 'yudha54@email.com', '08123456054', '2025-10-21', 'pwd054', 'Menunggu'),
('3201010000000055', 'Dewi Sari', 'Jl. Mawar No.55', 'Ibu Rumah Tangga', 2300000.00, 'dewi55@email.com', '08123456055', '2025-10-21', 'pwd055', 'Menunggu'),
('3201010000000056', 'Rina Hidayat', 'Jl. Mawar No.56', 'Pedagang', 2800000.00, 'rina56@email.com', '08123456056', '2025-10-21', 'pwd056', 'Menunggu'),
('3201010000000057', 'Bima Santoso', 'Jl. Mawar No.57', 'Karyawan', 3400000.00, 'bima57@email.com', '08123456057', '2025-10-21', 'pwd057', 'Menunggu'),
('3201010000000058', 'Putri Anggraini', 'Jl. Mawar No.58', 'Mahasiswa', 0.00, 'putri58@email.com', '08123456058', '2025-10-21', 'pwd058', 'Ditolak'),
('3201010000000059', 'Yoga Wijaya', 'Jl. Mawar No.59', 'Karyawan', 3500000.00, 'yoga59@email.com', '08123456059', '2025-10-21', 'pwd059', 'Ditolak'),
('3201010000000060', 'Nina Prasetyo', 'Jl. Mawar No.60', 'Ibu Rumah Tangga', 2300000.00, 'nina60@email.com', '08123456060', '2025-10-21', 'pwd060', 'Ditolak'),
('3201010000000061', 'Fahmi Ramadhan', 'Jl. Melati No.61, Jakarta', 'Karyawan Swasta', 4500000.00, 'fahmi.ramadhan@email.com', '08123456061', '2025-10-21', 'pass061', 'Diterima'),
('3201010000000062', 'Sari Dewi', 'Jl. Kenanga No.62, Bandung', 'Wiraswasta', 5000000.00, 'sari.dewi@email.com', '08123456062', '2025-10-21', 'pass062', 'Diterima'),
('3201010000000063', 'Andika Putra', 'Jl. Mawar No.63, Surabaya', 'Freelancer', 3500000.00, 'andika.putra@email.com', '08123456063', '2025-10-21', 'pass063', 'Diterima'),
('3201010000000064', 'Intan Permata', 'Jl. Melur No.64, Medan', 'Guru', 4000000.00, 'intan.permata@email.com', '08123456064', '2025-10-21', 'pass064', 'Diterima'),
('3201010000000065', 'Rizal Akbar', 'Jl. Dahlia No.65, Yogyakarta', 'Karyawan Swasta', 4200000.00, 'rizal.akbar@email.com', '08123456065', '2025-10-21', 'pass065', 'Diterima'),
('3201010000000066', 'Nadia Lestari', 'Jl. Cempaka No.66, Semarang', 'Ibu Rumah Tangga', 0.00, 'nadia.lestari@email.com', '08123456066', '2025-10-21', 'pass066', 'Diterima'),
('3201010000000067', 'Dimas Santoso', 'Jl. Kenanga No.67, Jakarta', 'Wiraswasta', 5500000.00, 'dimas.santoso@email.com', '08123456067', '2025-10-21', 'pass067', 'Diterima'),
('3201010000000068', 'Maya Putri', 'Jl. Anggrek No.68, Bandung', 'Mahasiswa', 1500000.00, 'maya.putri@email.com', '08123456068', '2025-10-21', 'pass068', 'Diterima'),
('3201010000000069', 'Fajar Hidayat', 'Jl. Melati No.69, Surabaya', 'Karyawan Swasta', 4700000.00, 'fajar.hidayat2@email.com', '08123456069', '2025-10-21', 'pass069', 'Diterima'),
('3201010000000070', 'Rina Marlina', 'Jl. Mawar No.70, Medan', 'Guru', 4300000.00, 'rina.marlina3@email.com', '08123456070', '2025-10-21', 'pass070', 'Diterima'),
('3201010000000071', 'Bayu Kurniawan', 'Jl. Cendana No.71, Yogyakarta', 'Wiraswasta', 5200000.00, 'bayu.kurniawan2@email.com', '08123456071', '2025-10-21', 'pass071', 'Diterima'),
('3201010000000072', 'Putri Melinda', 'Jl. Cemara No.72, Semarang', 'Mahasiswa', 2000000.00, 'putri.melinda2@email.com', '08123456072', '2025-10-21', 'pass072', 'Diterima'),
('3201010000000073', 'Hadi Santoso', 'Jl. Kenanga No.73, Jakarta', 'Karyawan Swasta', 4800000.00, 'hadi.santoso2@email.com', '08123456073', '2025-10-21', 'pass073', 'Diterima'),
('3201010000000074', 'Tika Rahma', 'Jl. Melati No.74, Bandung', 'Wiraswasta', 5100000.00, 'tika.rahma3@email.com', '08123456074', '2025-10-21', 'pass074', 'Diterima'),
('3201010000000075', 'Yoga Pratama', 'Jl. Dahlia No.75, Surabaya', 'Freelancer', 3600000.00, 'yoga.pratama2@email.com', '08123456075', '2025-10-21', 'pass075', 'Diterima'),
('3201010000000076', 'Dewi Anggraini', 'Jl. Anggrek No.76, Medan', 'Ibu Rumah Tangga', 0.00, 'dewi.anggraini3@email.com', '08123456076', '2025-10-21', 'pass076', 'Diterima'),
('3201010000000077', 'Rifki Hidayat', 'Jl. Melur No.77, Yogyakarta', 'Karyawan Swasta', 4600000.00, 'rifki.hidayat2@email.com', '08123456077', '2025-10-21', 'pass077', 'Diterima'),
('3201010000000078', 'Nina Lestari', 'Jl. Cempaka No.78, Semarang', 'Mahasiswa', 1800000.00, 'nina.lestari3@email.com', '08123456078', '2025-10-21', 'pass078', 'Diterima'),
('3201010000000079', 'Diana Puspita', 'Jl. Melati No.79, Jakarta', 'Guru', 4200000.00, 'diana.puspita2@email.com', '08123456079', '2025-10-21', 'pass079', 'Diterima'),
('3201010000000080', 'Fikri Maulana', 'Jl. Mawar No.80, Bandung', 'Wiraswasta', 5000000.00, 'fikri.maulana2@email.com', '08123456080', '2025-10-21', 'pass080', 'Diterima'),
('6409123123123', 'Zidan Daffa Ramadhan', 'JLN.itu', 'barista', 10000000.00, 'dane@gmail.com', '089699220322', '2025-10-31', 'daneganteng1', 'Diterima');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` varchar(10) NOT NULL,
  `progress` varchar(50) DEFAULT NULL,
  `nik` char(16) DEFAULT NULL,
  `id_pelatihan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id_peserta`, `progress`, `nik`, `id_pelatihan`) VALUES
('PSC001', '100%', '3201010000000001', NULL),
('PSC003', '75%', '3201010000000003', 'PL003'),
('PSC004', '100%', '3201010000000004', 'PL002'),
('PSC005', '100%', '3201010000000005', 'PL005'),
('PSC006', '100%', '3201010000000006', 'PL002'),
('PSC007', '0%', '3201010000000007', 'PL002'),
('PSC008', '10%', '3201010000000008', 'PL008'),
('PSC009', '30%', '3201010000000009', 'PL009'),
('PSC010', '100%', '3201010000000010', 'PL010'),
('PSC011', '70%', '3201010000000011', 'PL011'),
('PSC012', '65%', '3201010000000012', 'PL012'),
('PSC013', '25%', '3201010000000013', 'PL013'),
('PSC014', '15%', '3201010000000014', 'PL014'),
('PSC015', '0%', '3201010000000015', 'PL003'),
('PSC016', '85%', '3201010000000016', NULL),
('PSC017', '90%', '3201010000000017', 'PL002'),
('PSC018', '10%', '3201010000000018', 'PL003'),
('PSC019', '30%', '3201010000000019', 'PL004'),
('PSC020', '0%', '3201010000000020', 'PL004'),
('PSC021', '80%', '3201010000000021', 'PL006'),
('PSC022', '60%', '3201010000000022', 'PL007'),
('PSC023', '25%', '3201010000000023', 'PL008'),
('PSC024', '15%', '3201010000000024', 'PL009'),
('PSC025', '20%', '3201010000000025', 'PL010'),
('PSC026', '0%', '3201010000000026', 'PL011'),
('PSC027', '0%', '3201010000000027', 'PL012'),
('PSC028', '5%', '3201010000000028', 'PL013'),
('PSC029', '0%', '3201010000000029', 'PL014'),
('PSC030', '10%', '3201010000000030', 'PL015'),
('PSC031', '50%', '3201010000000031', NULL),
('PSC032', '40%', '3201010000000032', 'PL002'),
('PSC033', '30%', '3201010000000033', 'PL003'),
('PSC034', '60%', '3201010000000034', 'PL004'),
('PSC035', '70%', '3201010000000035', 'PL005'),
('PSC036', '20%', '3201010000000036', 'PL006'),
('PSC037', '10%', '3201010000000037', 'PL007'),
('PSC038', '30%', '3201010000000038', 'PL008'),
('PSC039', '0%', '3201010000000039', 'PL009'),
('PSC040', '50%', '3201010000000040', 'PL010'),
('PSC041', '25%', '3201010000000061', NULL),
('PSC042', '40%', '3201010000000062', 'PL002'),
('PSC043', '35%', '3201010000000063', 'PL003'),
('PSC044', '60%', '3201010000000064', 'PL004'),
('PSC045', '100%', '3201010000000065', 'PL005'),
('PSC046', '90%', '3201010000000066', 'PL006'),
('PSC047', '50%', '3201010000000067', 'PL007'),
('PSC048', '30%', '3201010000000068', 'PL008'),
('PSC049', '10%', '3201010000000069', 'PL009'),
('PSC050', '0%', '3201010000000070', 'PL010'),
('PSC051', '60%', '3201010000000071', 'PL011'),
('PSC052', '70%', '3201010000000072', 'PL012'),
('PSC053', '80%', '3201010000000073', 'PL013'),
('PSC054', '50%', '3201010000000074', 'PL014'),
('PSC055', '0%', '3201010000000075', 'PL008'),
('PSC056', '20%', '3201010000000076', NULL),
('PSC057', '10%', '3201010000000077', 'PL002'),
('PSC058', '35%', '3201010000000078', 'PL003'),
('PSC059', '40%', '3201010000000079', 'PL004'),
('PSC060', '0%', '3201010000000080', 'PL005'),
('PSC061', '0%', '3201010000000043', NULL),
('PSC062', '10%', '3201010000000045', NULL),
('PSC063', '0%', '3201010000000047', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sertifikat`
--

CREATE TABLE `sertifikat` (
  `nomor_sertifikat` varchar(20) NOT NULL,
  `skor_pelatihan` decimal(5,2) NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `id_peserta` varchar(10) DEFAULT NULL,
  `id_pelatihan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sertifikat`
--

INSERT INTO `sertifikat` (`nomor_sertifikat`, `skor_pelatihan`, `tanggal_terbit`, `id_peserta`, `id_pelatihan`) VALUES
('CERT-PSC05', 100.00, '2025-11-04', 'PSC055', NULL),
('SRT001', 85.00, '2025-10-21', 'PSC001', NULL),
('SRT005', 92.00, '2025-10-21', 'PSC005', NULL),
('SRT006', 0.00, '2025-11-04', 'PSC004', 'PL004'),
('SRT010', 90.00, '2025-10-21', 'PSC010', NULL),
('SRT015', 95.00, '2025-10-21', 'PSC015', NULL),
('SRT020', 91.50, '2025-10-21', 'PSC020', NULL),
('SRT045', 89.00, '2025-10-21', 'PSC045', NULL),
('SRT055', 93.00, '2025-10-21', 'PSC055', NULL),
('SRT056', 0.00, '2025-11-04', 'PSC055', 'PL003'),
('SRT1762269614164', 100.00, '2025-11-04', 'PSC004', 'PL004'),
('SRT1762270198978', 100.00, '2025-11-04', 'PSC004', 'PL002'),
('SRT1762270265304', 0.00, '2025-11-04', 'PSC006', 'PL006'),
('SRT1762270303555', 100.00, '2025-11-04', 'PSC006', 'PL006'),
('SRT1762270358794', 0.00, '2025-11-04', 'PSC006', 'PL002'),
('SRT1762270582969', 0.00, '2025-11-04', 'PSC007', 'PL007'),
('SRT1762271146129', 85.00, '2025-11-04', 'PSC015', 'PL009'),
('SRTPSC05', 100.00, '2025-11-04', 'PSC055', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `jenis_staff` enum('Staff Pelatihan','Admin') DEFAULT 'Staff Pelatihan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `nama`, `email`, `no_hp`, `password`, `jenis_staff`) VALUES
('ADM001', 'Ahmad Fauzi', 'ahmad.fauzi@email.com', '08123456001', 'pass001', 'Admin'),
('ADM002', 'Siti Nurhaliza', 'siti.nurhaliza@email.com', '08123456002', 'pass002', 'Admin'),
('ADM003', 'Budi Santoso', 'budi.santoso@email.com', '08123456003', 'pass003', 'Admin'),
('ADM004', 'Rina Lestari', 'rina.lestari@email.com', '08123456004', 'pass004', 'Admin'),
('ADM005', 'Agus Pratama', 'agus.pratama@email.com', '08123456005', 'pass005', 'Admin'),
('ADM006', 'Dewi Anggraini', 'dewi.anggraini@email.com', '08123456006', 'pass006', 'Admin'),
('ADM007', 'Fajar Hidayat', 'fajar.hidayat@email.com', '08123456007', 'pass007', 'Admin'),
('ADM008', 'Lina Marlina', 'lina.marlina@email.com', '08123456008', 'pass008', 'Admin'),
('ADM009', 'Rizky Maulana', 'rizky.maulana@email.com', '08123456009', 'pass009', 'Admin'),
('ADM010', 'Tika Permata', 'tika.permata@email.com', '08123456010', 'pass010', 'Admin'),
('ADM100', 'Alif Rahmat', 'alifrahmat@email.com', '081234560123', 'pass100', 'Staff Pelatihan'),
('STF011', 'Andi Wijaya', 'andi.wijaya@email.com', '08123456011', 'pass011', 'Staff Pelatihan'),
('STF012', 'Rian Setiawan', 'rian.setiawan@email.com', '08123456012', 'pass012', 'Staff Pelatihan'),
('STF013', 'Dina Kartika', 'dina.kartika@email.com', '08123456013', 'pass013', 'Staff Pelatihan'),
('STF014', 'Hendra Saputra', 'hendra.saputra@email.com', '08123456014', 'pass014', 'Staff Pelatihan'),
('STF015', 'Nina Rahma', 'nina.rahma@email.com', '08123456015', 'pass015', 'Staff Pelatihan'),
('STF016', 'Fikri Maulana', 'fikri.maulana@email.com', '08123456016', 'pass016', 'Staff Pelatihan'),
('STF017', 'Maya Sari', 'maya.sari@email.com', '08123456017', 'pass017', 'Staff Pelatihan'),
('STF018', 'Rudy Santoso', 'rudy.santoso@email.com', '08123456018', 'pass018', 'Staff Pelatihan'),
('STF019', 'Lina Oktaviani', 'lina.oktaviani@email.com', '08123456019', 'pass019', 'Staff Pelatihan'),
('STF020', 'Dedi Prasetyo', 'dedi.prasetyo@email.com', '08123456020', 'pass020', 'Staff Pelatihan'),
('STF021', 'Tia Amalia', 'tia.amalia@email.com', '08123456021', 'pass021', 'Staff Pelatihan'),
('STF022', 'Bayu Kurniawan', 'bayu.kurniawan@email.com', '08123456022', 'pass022', 'Staff Pelatihan'),
('STF023', 'Rosa Melinda', 'rosa.melinda@email.com', '08123456023', 'pass023', 'Staff Pelatihan'),
('STF024', 'Vino Pratama', 'vino.pratama@email.com', '08123456024', 'pass024', 'Staff Pelatihan'),
('STF025', 'Lina Kartini', 'lina.kartini@email.com', '08123456025', 'pass025', 'Staff Pelatihan'),
('STF026', 'Eko Wibowo', 'eko.wibowo@email.com', '08123456026', 'pass026', 'Staff Pelatihan'),
('STF027', 'Sari Lestari', 'sari.lestari@email.com', '08123456027', 'pass027', 'Staff Pelatihan'),
('STF028', 'Rifki Hidayat', 'rifki.hidayat@email.com', '08123456028', 'pass028', 'Staff Pelatihan'),
('STF029', 'Diana Puspita', 'diana.puspita@email.com', '08123456029', 'pass029', 'Staff Pelatihan'),
('STF030', 'Fajar Pratama', 'fajar.pratama@email.com', '08123456030', 'pass030', 'Staff Pelatihan'),
('STF031', 'Rina Marlina', 'rina.marlina2@email.com', '08123456031', 'pass031', 'Staff Pelatihan'),
('STF032', 'Hadi Santoso', 'hadi.santoso@email.com', '08123456032', 'pass032', 'Staff Pelatihan'),
('STF033', 'Tika Rahma', 'tika.rahma2@email.com', '08123456033', 'pass033', 'Staff Pelatihan'),
('STF034', 'Yudha Prasetyo', 'yudha.prasetyo@email.com', '08123456034', 'pass034', 'Staff Pelatihan'),
('STF035', 'Dewi Anggraini2', 'dewi.anggraini2@email.com', '08123456035', 'pass035', 'Staff Pelatihan'),
('STF036', 'Rina Sari', 'rina.sari@email.com', '08123456036', 'pass036', 'Staff Pelatihan'),
('STF037', 'Bima Hendra', 'bima.hendra@email.com', '08123456037', 'pass037', 'Staff Pelatihan'),
('STF038', 'Putri Melinda', 'putri.melinda@email.com', '08123456038', 'pass038', 'Staff Pelatihan'),
('STF039', 'Yoga Pratama', 'yoga.pratama@email.com', '08123456039', 'pass039', 'Staff Pelatihan'),
('STF040', 'Nina Lestari', 'nina.lestari2@email.com', '08123456040', 'pass040', 'Staff Pelatihan');

-- --------------------------------------------------------

--
-- Table structure for table `staff_pelatihan`
--

CREATE TABLE `staff_pelatihan` (
  `id_staff` varchar(10) NOT NULL,
  `peran_pelatihan` varchar(100) NOT NULL,
  `status_penugasan` enum('Aktif','Nonaktif') DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_pelatihan`
--

INSERT INTO `staff_pelatihan` (`id_staff`, `peran_pelatihan`, `status_penugasan`) VALUES
('STF011', 'Pelatihan Menjahit Dasar', 'Aktif'),
('STF012', 'Pelatihan Menjahit Dasar', 'Aktif'),
('STF013', 'Pelatihan Kewirausahaan Mikro', 'Aktif'),
('STF014', 'Pelatihan Kewirausahaan Mikro', 'Aktif'),
('STF015', 'Pelatihan Tata Boga', 'Aktif'),
('STF016', 'Pelatihan Tata Boga', 'Aktif'),
('STF017', 'Pelatihan Servis Motor', 'Aktif'),
('STF018', 'Pelatihan Servis Motor', 'Aktif'),
('STF019', 'Pelatihan Desain Grafis', 'Aktif'),
('STF020', 'Pelatihan Desain Grafis', 'Aktif'),
('STF021', 'Pelatihan Pembuatan Kue', 'Aktif'),
('STF022', 'Pelatihan Pembuatan Kue', 'Aktif'),
('STF023', 'Pelatihan Pertanian Modern', 'Aktif'),
('STF024', 'Pelatihan Pertanian Modern', 'Aktif'),
('STF025', 'Pelatihan Barista', 'Aktif'),
('STF026', 'Pelatihan Barista', 'Aktif'),
('STF027', 'Pelatihan Digital Marketing', 'Aktif'),
('STF028', 'Pelatihan Digital Marketing', 'Aktif'),
('STF029', 'Pelatihan Pembuatan Sabun', 'Aktif'),
('STF030', 'Pelatihan Pembuatan Sabun', 'Aktif'),
('STF031', 'Pelatihan Komputer Dasar', 'Aktif'),
('STF032', 'Pelatihan Komputer Dasar', 'Aktif'),
('STF033', 'Pelatihan Akuntansi UMKM', 'Aktif'),
('STF034', 'Pelatihan Akuntansi UMKM', 'Aktif'),
('STF035', 'Pelatihan Bahasa Inggris', 'Aktif'),
('STF036', 'Pelatihan Bahasa Inggris', 'Aktif'),
('STF037', 'Pelatihan Fotografi Dasar', 'Aktif'),
('STF038', 'Pelatihan Fotografi Dasar', 'Aktif'),
('STF039', 'Pelatihan Pengelasan Logam', 'Aktif'),
('STF040', 'Pelatihan Pengelasan Logam', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD PRIMARY KEY (`id_pelatihan`),
  ADD KEY `fk_pengelola_pelatihan` (`id_staff_pelatihan`);

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`),
  ADD KEY `fk_peserta_pendaftar` (`nik`),
  ADD KEY `fk_peserta_pelatihan` (`id_pelatihan`);

--
-- Indexes for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD PRIMARY KEY (`nomor_sertifikat`),
  ADD KEY `fk_sertifikat_peserta` (`id_peserta`),
  ADD KEY `fk_sertifikat_pelatihan` (`id_pelatihan`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `staff_pelatihan`
--
ALTER TABLE `staff_pelatihan`
  ADD PRIMARY KEY (`id_staff`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD CONSTRAINT `fk_pengelola_pelatihan` FOREIGN KEY (`id_staff_pelatihan`) REFERENCES `staff_pelatihan` (`id_staff`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `fk_peserta_pelatihan` FOREIGN KEY (`id_pelatihan`) REFERENCES `pelatihan` (`id_pelatihan`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_peserta_pendaftar` FOREIGN KEY (`nik`) REFERENCES `pendaftar` (`nik`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD CONSTRAINT `fk_sertifikat_pelatihan` FOREIGN KEY (`id_pelatihan`) REFERENCES `pelatihan` (`id_pelatihan`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sertifikat_peserta` FOREIGN KEY (`id_peserta`) REFERENCES `peserta` (`id_peserta`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `staff_pelatihan`
--
ALTER TABLE `staff_pelatihan`
  ADD CONSTRAINT `staff_pelatihan_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
