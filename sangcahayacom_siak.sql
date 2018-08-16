-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 11, 2018 at 03:59 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sangcahayacom_siak`
--

-- --------------------------------------------------------

--
-- Table structure for table `ekskul`
--

CREATE TABLE `ekskul` (
  `id` varchar(30) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ekskul`
--

INSERT INTO `ekskul` (`id`, `nama`) VALUES
('1ZrAXIEHs6Fg7iJ', 'KIR'),
('6s0M7vh3BFzcwR8', 'Karate'),
('BVqGvakOLJ8dprx', 'Palasfi'),
('ExnHYFT0jJvdcD7', 'Rohis Putra'),
('Lyi1CuZA5nJUWYp', 'Tahfidz'),
('ODU7IBQAPNafwi2', 'PMR'),
('Qd9FebtVB3PfaN7', 'Rohis Putri'),
('s6UCSPi8qocIE2g', 'Paskibra'),
('sc8ibUnvHBkw1de', 'Drumband'),
('x9bW8Ifqzae2yZY', 'Pramuka');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` varchar(15) NOT NULL,
  `NIP` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttl` varchar(225) NOT NULL,
  `jabatan` varchar(120) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `warganegara` varchar(20) NOT NULL,
  `nope` varchar(15) NOT NULL,
  `alamat` varchar(2000) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `NIP`, `nama`, `ttl`, `jabatan`, `jk`, `agama`, `warganegara`, `nope`, `alamat`, `photo`) VALUES
('tY08Ad19vV7F4s2', '7036737643110003 ', 'Syarifuddin, S.Kom ', 'Bekasi  29-09-1989', 'Guru', 'L', 'Islam', 'Indonesia', '087888732766', 'Kp Pabuaran Rt 05 /04   Jatiranggon Jatisampurna  Bekasi\r\n', 'photo24.jpg'),
('uEKV7q8lGvyQFbh', '7138759661300080 ', 'Renny Dimyati, S.Pd ', 'Jakarta  06-08-1981', 'Guru', 'L', 'Islam', 'Indonesia', '081281157706', 'Kp Pabuaran Rt 01/04 Jatiranggon Jatisampurna  Bekasi\r\n', 'photo31.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_pelajaran`
--

CREATE TABLE `jadwal_pelajaran` (
  `id` varchar(15) NOT NULL,
  `id_kelas` varchar(20) NOT NULL,
  `kode_mapel` varchar(20) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam_awal` int(2) NOT NULL,
  `menit_awal` int(2) NOT NULL,
  `jam_akhir` int(2) NOT NULL,
  `menit_akhir` int(2) NOT NULL,
  `nip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` varchar(15) NOT NULL,
  `kode_mapel` varchar(25) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `kode_mapel`, `nama_mapel`) VALUES
('3CnKvQiDqNMgmf4', 'L  ', 'Seni Budaya    '),
('aukNAYWB4soPMRZ', 'A    ', 'Al-qur\'an Hadits  '),
('bXGhUT1J7WOnipL', 'P   ', 'Prakarya   '),
('CMcFp7qSrNz3aHW', 'E  ', 'Pendidikan Kewarganegaraan    '),
('DzTmncX87VGwZ5u', 'D  ', 'Sejarah Kebudayaan Islam    '),
('EmoayftWxQrvkVT', 'J   ', 'Ilmu Pengetahuan Alam   '),
('HRoQZ9u3hOId5xj', 'O    ', 'B B Q  '),
('JiKZ9UHasycmF2x', 'C    ', 'Fiqih  '),
('kiEeNghvIdpM6AF', 'B  ', 'Aqidah Akhlak    '),
('kMdS6QfYmncEHqR', 'H   ', 'Bahasa Inggris   '),
('lITpn0FZs3m5VCc', 'I  ', 'Matematika    '),
('r0SlOqLxWAKVBZw', 'K    ', 'Ilmu Pengetahuan Sosial   '),
('RsMpqWJIZtYgjno', 'G  ', 'Bahasa Arab    '),
('U92XGx7s3VjmThH', 'N    ', 'TIK  '),
('ULAozCt29FQx3q8', 'M   ', 'PJOK   '),
('Z3CxvRNtyJqWTrI', 'F  ', 'Bahasa Indonesia    ');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_ekskul`
--

CREATE TABLE `nilai_ekskul` (
  `id` int(5) NOT NULL,
  `nik_siswa` varchar(15) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nilai` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_ekskul`
--

INSERT INTO `nilai_ekskul` (`id`, `nik_siswa`, `nama`, `nilai`) VALUES
(1, '1122', 'zjkdmnsY2EZPAp0', 'A'),
(2, '11', 'cYyGf7aRUNL2gJb', 'A'),
(3, '0101', 'jWZY0CuVP2nhiRIqUHeM6AgFm', 'A'),
(4, '121232750069160', '6s0M7vh3BFzcwR8', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_siswa`
--

CREATE TABLE `nilai_siswa` (
  `id` varchar(15) NOT NULL,
  `nik_siswa` varchar(20) NOT NULL,
  `id_kelas` varchar(25) NOT NULL,
  `kode_mapel` varchar(20) NOT NULL,
  `semester` enum('Ganjil','Genap') NOT NULL,
  `thn_ajaran` varchar(10) NOT NULL,
  `tugas` decimal(10,0) NOT NULL,
  `uts` decimal(10,0) NOT NULL,
  `uas` decimal(10,0) NOT NULL,
  `rata` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ruang_kelas`
--

CREATE TABLE `ruang_kelas` (
  `id` varchar(20) NOT NULL,
  `nama_ruangan` varchar(6) NOT NULL,
  `jumlah_siswa` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang_kelas`
--

INSERT INTO `ruang_kelas` (`id`, `nama_ruangan`, `jumlah_siswa`) VALUES
('h2JUTqd47i', 'VII', 44),
('Lswq5eabBA', 'VII C', 42),
('pJMvHAFSE6', 'VII F', 44),
('RgL4tJex8h', 'VII E', 41),
('Z8nJgh9eDV', 'VII A', 44),
('ZsbY1vDRNy', 'VII D', 42);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` varchar(15) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `id_kelas` varchar(25) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `nama` varchar(50) NOT NULL,
  `thn_ajaran` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `ttl` varchar(225) NOT NULL,
  `nope` varchar(13) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nik`, `id_kelas`, `jk`, `nama`, `thn_ajaran`, `alamat`, `ttl`, `nope`, `photo`) VALUES
('zjLRueMqW7trfZc', '121232750069160230 ', 'RgL4tJex8h', 'L', 'SAKA WIJAYA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  08-06-2004', '', 'user61.png'),
('ZnkY6VPldWb3jtf', '121232750069160083 ', 'Z8nJgh9eDV', 'P', 'EVA SOPHIYANTI', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  07-08-2017', '', 'photo48.jpg'),
('ZYMAisuwdr604hl', '121232750069160021 ', 'Lswq5eabBA', 'L', 'ALBIAN RAMADHAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  09-11-2003', '', 'images40.png');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_has_kelas`
--

CREATE TABLE `siswa_has_kelas` (
  `id` varchar(15) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `id_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa_has_kelas`
--

INSERT INTO `siswa_has_kelas` (`id`, `nik`, `id_kelas`) VALUES
('zjLRueMqW7trfZc', '121232750069160230 ', 'RgL4tJex8h'),
('ZnkY6VPldWb3jtf', '121232750069160083 ', 'Z8nJgh9eDV'),
('ZYMAisuwdr604hl', '121232750069160021 ', 'Lswq5eabBA');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(15) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nik`, `nama`, `username`, `password`, `level`) VALUES
('1', '1', 'Admin', 'sangcahayacom', 'asasas', 'admin'),
('2', '7036737643110003', 'guru', 'guru', 'sangcahayacom', 'guru'),
('3', '121232750069160230', 'siswa', 'siswa', 'sangcahayacom', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id` varchar(15) NOT NULL,
  `NIP` varchar(25) NOT NULL,
  `id_kelas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id`, `NIP`, `id_kelas`) VALUES
('eXnsQ0WdEPapD27', '1325254', '8yGkA2lJ5K'),
('RXy7haLdNqSJ2oQ', '898989', '2xhtDcGP8y'),
('XiG9tgpDvoPTAeU', '123', 'EHZmTUaRBv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ekskul`
--
ALTER TABLE `ekskul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `NIP` (`NIP`);

--
-- Indexes for table `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_kode_mapel_mapel` (`kode_mapel`),
  ADD KEY `jadwal_kelas_kelas` (`id_kelas`),
  ADD KEY `jadwal_nip_guru` (`nip`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_mapel` (`kode_mapel`);

--
-- Indexes for table `nilai_ekskul`
--
ALTER TABLE `nilai_ekskul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik_siswa` (`nik_siswa`),
  ADD KEY `kode_mapel` (`kode_mapel`);

--
-- Indexes for table `ruang_kelas`
--
ALTER TABLE `ruang_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `siswa_has_kelas`
--
ALTER TABLE `siswa_has_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nilai_ekskul`
--
ALTER TABLE `nilai_ekskul`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD CONSTRAINT `jadwal_kelas_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `ruang_kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_kode_mapel_mapel` FOREIGN KEY (`kode_mapel`) REFERENCES `mapel` (`kode_mapel`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_nip_guru` FOREIGN KEY (`nip`) REFERENCES `guru` (`NIP`) ON DELETE CASCADE;

--
-- Constraints for table `siswa_has_kelas`
--
ALTER TABLE `siswa_has_kelas`
  ADD CONSTRAINT `id_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `ruang_kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nik` FOREIGN KEY (`nik`) REFERENCES `siswa` (`nik`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
