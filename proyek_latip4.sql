-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2017 at 03:31 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek_latip4`
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
('0DvmAuLHnEfw3tx', '6733758660300070', 'Jannatul Ma\'wa, S.Pd.I ', 'Jakarta  13-08-1980', 'Tata Usaha', 'L', 'Islam', 'Indonesia', '081299013443', 'Kp Sawah Rt 06/02 Jatimurni Pd Melati Kota Bekasi\r\n', 'photo21.jpg'),
('65yDq0zI39UcRSF', '0143750652300083 ', 'Nur`Afifah, S.Ag ', 'Jakarta  11-06-1972', 'Tata Usaha', 'L', 'Islam', 'Indonesia', '087886687418', ' Kp Sawah Rt 06/02 Jatimurni Pd Melati Kota Bekasi\r\n', 'photo16.jpg'),
('7mxBa9bO42YElwR', '5835741644200032', 'Drs. H. WIRA ATMAJA', 'Bekasi 03-05-1963', 'Kepala Madrasah', 'L', 'Islam', 'Indonesia', '08121990210', 'Kp Cakung Rt 01/05 Jatisari Jatiasih Kota Bekasi\r\n', 'photo3.jpg'),
('9PKJZdnOGf3MBql', '7036737643110000 ', 'Larby Alhadi, S.Ei ', 'Bekasi  10-01-1989', 'Guru', 'L', 'Islam', 'Indonesia', '085718613365', 'Jln Mes AL Rt 04/05 Jatiraden Jatisampurna Bekasi\r\n', 'photo27.jpg'),
('ATHrVUn0q45fkJl', '1649753655113330', 'H. Asmawi ', 'Bekasi  26-05-1952', 'Guru', 'L', 'Islam', 'Indonesia', '085694090997', 'Kp Pedurenan Rt \'01/05 Jatiluhur Jatiasih Kota Bekasi\r\n', 'photo7.jpg'),
('bKNR0Vm6yYzWGLF', '9935756657200030 ', 'Suhartono Setiawan, S.Pd.I ', 'Bekasi  03-05-1978', 'Guru', 'L', 'Islam', 'Indonesia', '081310417924', 'Kp Cakung Rt 01/05 Jatisari Jatiasih Kota Bekasi\r\n', 'photo13.jpg'),
('BuP90i6sEpUHTzW', '9352762663200030 ', 'Edi Siswanto, S.Pd ', 'Tuban  20-10-1984', 'Guru', 'L', 'Islam', 'Indonesia', '085718206171', 'Kom Wahana Rt  /   Jatiraden Jts  Kota Bekasi\r\n', 'photo20.jpg'),
('Cne19QrB58kH3YI', '7050751653300060 ', 'Ai Laila Mustafa, S.Ag ', 'Sukabumi  18-07-1973', 'Guru', 'L', 'Islam', 'Indonesia', '081510049522', ' Kp Sawah Rt 06/02 Jatimurni Pd Melati Kota Bekasi\r\n', 'photo14.jpg'),
('DKoGai0NrMlvBVP', '0940764666200032 ', 'Sukri Ahmadi, S.Kom ', 'Bekasi  08-06-1986', 'Guru', 'L', 'Islam', 'Indonesia', '085695060046', ' Kp Cakung Rt 01/05 Jatisari Jatiasih  Kota Bekasi\r\n', 'photo22.jpg'),
('Dpyq0VGS75PLBnI', '6639736638200040 ', 'H. M. Syarbini, S.Pd.I ', 'Kuningan  07-03-1958', 'Guru', 'L', 'Islam', 'Indonesia', '081297061853', 'Pd Ranggon Rt 02/06 Jatimurni Pd Melati Kota Bekasi\r\n', 'photo6.jpg'),
('ducF3LIXsot1lmz', '3558744646300032 ', 'ARDI ROHAYADI, S.Pd.I', 'Bekasi 26-02-1966', 'Wakil Kepala Madrasah', 'L', 'Islam', 'Indonesia', '08128886501', 'Kp Pedurenan Rt 11/03 Jatiluhur Jatiasih Kota Bekasi\r\n', 'photo4.jpg'),
('fAgk9sEBcG1NHa8', '2537761661300020 ', 'Agustina Sri Rahayu ', 'Bekasi  17-08-1980', 'Tata Usaha', 'L', 'Islam', 'Indonesia', '081212796077', 'Kp Cakung Rt 03/02 Jatisari Jatiasih  Kota Bekasi\r\n', 'photo17.jpg'),
('Fv6iflL3PANM7Ht', '8436759659300003 ', 'Nasrullah, S.Pd.I ', 'Bekasi  06-08-1977', 'Guru', 'L', 'Islam', 'Indonesia', '081807349860', 'Kp Cakung Rt 04/05 Jatisari Jatiasih  Kota Bekasi\r\n', 'photo29.jpg'),
('GYfRlvNAZXV3O8q', '5044747649200070 ', 'Drs. H. Abdul Salam ', 'Bekasi  12-07-1969', 'Guru', 'L', 'Islam', 'Indonesia', '081310993592', 'Kp Pedurenan Rt \'01/04 Jatiluhur Jatiasih Kota Bekasi\r\n', 'photo9.jpg'),
('H0sdcBxW5Kl97to', '5153761663300070 ', 'Tati Sri Hartati, S.Pd ', 'Lebak  21-08-1983', 'Guru', 'L', 'Islam', 'Indonesia', '087884397821', 'Komp Mes AD Pantar Gebang Kota Bekasi\r\n', 'photo19.jpg'),
('IANUD2hXH9Zgwcx', '2038763664200043 ', 'Arba Nugroho, M.Pd ', 'Jakarta  29-03-1988', 'Guru', 'L', 'Islam', 'Indonesia', '085774907992', 'Jln Pangkalan jati Rt 06/05 Kp Makasara Jaktim\r\n', 'photo28.jpg'),
('ihU2bDJsPSOXqQT', '4444746648200040 ', 'Agus, BA ', 'Bekasi  12-11-1968', 'Guru', 'L', 'Islam', 'Indonesia', '085694957954', 'Kp Pedurenan Rt \'03/04 Jatiluhur Jatiasih Kota Bekasi\r\n', 'photo8.jpg'),
('M5xKsl7tUzoJRwN', '2439760662210072 ', 'Mimi Jamilah, S.Pd ', 'Bekasi  09-01-1990', 'Guru', 'L', 'Islam', 'Indonesia', '085777015548', 'Jln Mes AL Rt 04/05 Jatiraden Jatisampurna Bekasi\r\n', 'photo30.jpg'),
('N2bsgmv8ztYXw1i', '9057760663300010 ', 'Dede Fitria, S.Pd ', 'Bekasi  25-07-1982', 'Guru', 'L', 'Islam', 'Indonesia', '085780277208', 'Kp Pedurenan Rt 02/11 Jatiluhur Jatiasih Kota Bekasi\r\n', 'photo18.jpg'),
('nMJOoN6XgwiHdY8', '8838746649300060 ', 'Tintin mariyah, S.Ag ', 'Banyumas  26-05-1968', 'Guru', 'P', 'Islam', 'Indonesia', '085772887455', 'Kp Sawah Rt 06/02 Jatimelatii Pd Melati Kota Bekasi\r\n', 'photo11.jpg'),
('o7V0SKUgTy1rEqk', '7846759661300080 ', 'Nia Kurnayati, S.Pd  ', 'Cianjur   14-05-1981', 'Guru', 'L', 'Islam', 'Indonesia', '081285441590', 'Kp Sawah Rt 05/02 Jatimelatii Pd Melati Kota Bekasi\r\n', 'photo26.jpg'),
('OILZfbch6jCxXUJ', '1537746648300080 ', 'Ida Hamidah, S.Pd ', 'Jakarta  05-12-1968', 'Guru', 'P', 'Islam', 'Indonesia', '0811825030', 'Kp Sawah Rt 06/02 Jatimurni Pd Melati Kota Bekasi\r\n', 'photo5.jpg'),
('oivVu1xYKB2MkzC', '8945764666467382', 'Manin Hidayat ', 'Bekasi  21-11-1977', 'Guru', 'L', 'Islam', 'Indonesia', '089683969133', 'Kp Cakung Rt 03/03 Jatisari Jatiasih  Kota Bekasi\r\n', 'photo25.jpg'),
('roLwE6gHVJexQ1D', '0858730631200012 ', 'Zaenal Abidin, S.Pd.I ', 'Bekasi  23-07-1975', 'Guru', 'L', 'Islam', 'Indonesia', '088211813962', 'Kp Sawah Rt 06/05 Jatimelatii Pd Melati Kota Bekasi\r\n', 'photo23.jpg'),
('S0vlIzmX8bsVA65', '7440747649200040 ', 'Dudung Abdul Latif, S.Ag ', 'Bekasi  08-11-1969', 'Guru', 'L', 'Islam', 'Indonesia', '08121980005', 'Kp Pabuaran Rt   /   Jatiranggon Jatisampurna  Bekasi\r\n', 'photo15.jpg'),
('sy6T90ekbDdGAwK', '2033744643200000 ', 'Drs.H.Tutang Z.A.G ', 'Sukabumi  01-07-1965', 'Guru', 'L', 'Islam', 'Indonesia', '089635561281', 'Kp Sawah Rt 06/02 Jatimurni Pd Melati Kota Bekasi\r\n', 'photo10.jpg'),
('tY08Ad19vV7F4s2', '7036737643110003 ', 'Syarifuddin, S.Kom ', 'Bekasi  29-09-1989', 'Guru', 'L', 'Islam', 'Indonesia', '087888732766', 'Kp Pabuaran Rt 05 /04   Jatiranggon Jatisampurna  Bekasi\r\n', 'photo24.jpg'),
('uEKV7q8lGvyQFbh', '7138759661300080 ', 'Renny Dimyati, S.Pd ', 'Jakarta  06-08-1981', 'Guru', 'L', 'Islam', 'Indonesia', '081281157706', 'Kp Pabuaran Rt 01/04 Jatiranggon Jatisampurna  Bekasi\r\n', 'photo31.jpg'),
('uOvq2LcZ3Xe1wj5', '1649753655110040 ', 'Ta`ih Sulaiman, S.Ag ', 'Bekasi  17-02-1975', 'Guru', 'L', 'Islam', 'Indonesia', '081310400300', 'Kp Pabuaran Rt    /    Jatiranggon Jatisampurna  Bekasi\r\n', 'photo12.jpg');

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

--
-- Dumping data for table `jadwal_pelajaran`
--

INSERT INTO `jadwal_pelajaran` (`id`, `id_kelas`, `kode_mapel`, `hari`, `jam_awal`, `menit_awal`, `jam_akhir`, `menit_akhir`, `nip`) VALUES
('2kt3I5uUBJcQf78', 'RgL4tJex8h', 'I  ', 'senin', 16, 15, 17, 35, '2439760662210072 '),
('3d1DYZTnkPtEBAQ', 'Lswq5eabBA', 'I  ', 'senin', 13, 30, 14, 50, '2439760662210072 '),
('5L3uvg9InEXzbZM', 'Z8nJgh9eDV', 'C    ', 'rabu', 13, 30, 14, 15, '6639736638200040 '),
('9CkSJ3Rmt6gXucG', 'h2JUTqd47i', 'I  ', 'senin', 14, 50, 16, 15, '2439760662210072 '),
('As4dleMxNQ72W3k', 'ZsbY1vDRNy', 'K    ', 'senin', 14, 50, 16, 15, '7036737643110000 '),
('BGPqCYWyTeVLFIS', 'pJMvHAFSE6', 'A    ', 'senin', 13, 30, 14, 50, '7050751653300060 '),
('CkJnWKyb29fBtFi', 'Z8nJgh9eDV', 'K    ', 'kamis', 12, 10, 13, 30, '7036737643110000 '),
('dnOIGmwEHV8fcXu', 'Z8nJgh9eDV', 'K    ', 'selasa', 13, 30, 14, 50, '7036737643110000 '),
('fAZtyacM4VpzSPU', 'h2JUTqd47i', 'H   ', 'senin', 16, 15, 17, 35, '1537746648300080 '),
('fgpz9IrFJjGRdSY', 'ZsbY1vDRNy', 'F  ', 'senin', 13, 30, 14, 50, '7846759661300080 '),
('FQSNRqZp2wosa30', 'pJMvHAFSE6', 'H   ', 'senin', 14, 50, 16, 15, '9057760663300010 '),
('g93eEBvyQ74aHsA', 'pJMvHAFSE6', 'B  ', 'senin', 12, 10, 13, 30, '9935756657200030 '),
('iOKWGjUwQEhX3sF', 'Z8nJgh9eDV', 'I  ', 'selasa', 16, 15, 17, 35, '2439760662210072 '),
('iqeKTrJk6LNFoOd', 'RgL4tJex8h', 'B  ', 'senin', 13, 30, 14, 50, '9935756657200030 '),
('JjhKkSsriNgIOqd', 'Z8nJgh9eDV', 'G  ', 'senin', 16, 15, 17, 35, '2033744643200000 '),
('LfVa8QMBSpJb7D5', 'Z8nJgh9eDV', 'H   ', 'rabu', 16, 15, 17, 35, '1537746648300080 '),
('Mf57XDVc0TJkzBj', 'ZsbY1vDRNy', 'D  ', 'senin', 12, 10, 13, 30, '8436759659300003 '),
('nmdvTI46LWzDUwE', 'Lswq5eabBA', 'F  ', 'senin', 12, 10, 13, 30, '7846759661300080 '),
('NYGIyBLaisnxrKX', 'pJMvHAFSE6', 'J   ', 'senin', 16, 15, 17, 35, '4444746648200040 '),
('OHzQhIeJZagURM7', 'Z8nJgh9eDV', 'F  ', 'rabu', 12, 10, 13, 30, '7846759661300080 '),
('PelvbMTyhnjVkgH', 'h2JUTqd47i', 'G  ', 'senin', 12, 10, 13, 30, '2033744643200000 '),
('pk8AeYsH9TzCuXx', 'h2JUTqd47i', 'K    ', 'senin', 13, 30, 14, 50, '7036737643110000 '),
('QNAKdLzDVj4eHJi', 'ZsbY1vDRNy', 'M   ', 'senin', 16, 15, 17, 35, '5835741644200032'),
('QYu0Hn36GLaD9TI', 'RgL4tJex8h', 'J   ', 'senin', 14, 50, 16, 15, '4444746648200040 '),
('rcUlDIv2t8wodX3', 'Z8nJgh9eDV', 'B  ', 'selasa', 14, 50, 16, 15, '9935756657200030 '),
('reYMd0lXUBGIKJO', 'Z8nJgh9eDV', 'O    ', 'rabu', 14, 50, 16, 15, '7050751653300060 '),
('rY1Z37GTdJQCFPE', 'Lswq5eabBA', 'K    ', 'senin', 16, 15, 17, 35, '7036737643110000 '),
('SVdHI9cXxfLRhzb', 'Z8nJgh9eDV', 'A    ', 'senin', 12, 10, 13, 30, '7050751653300060 '),
('uYAk7z3ilqMmbho', 'Z8nJgh9eDV', 'D  ', 'senin', 13, 30, 14, 50, '8436759659300003 '),
('VoBHtWvCELr7ijY', 'Z8nJgh9eDV', 'H   ', 'senin', 14, 50, 16, 15, '1537746648300080 '),
('VxLImO963hHDNyc', 'Z8nJgh9eDV', 'F  ', 'selasa', 12, 10, 13, 30, '7846759661300080 '),
('wfOKjbNQiVWYzso', 'Z8nJgh9eDV', 'C    ', 'rabu', 13, 30, 14, 50, '6639736638200040 '),
('WLl4M1bTapBKUPF', 'RgL4tJex8h', 'K    ', 'senin', 12, 10, 13, 30, '7036737643110000 '),
('X5ZytbMPGCzkqE4', 'Lswq5eabBA', 'G  ', 'senin', 14, 50, 16, 15, '2033744643200000 ');

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
('0cYxOzigaRDWTV9', '121232750069160089 ', 'Lswq5eabBA', 'P', 'FEBRI HARIYANI LESTARI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  12-02-2003', '', 'images56.png'),
('0fJUraYuS7GBt3E', '121232750069160172 ', 'h2JUTqd47i', 'P', 'NAILLA FATINAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  08-07-2004', '', 'images15.png'),
('0hNPqTLaA9J7mus', '121232750069160201 ', 'RgL4tJex8h', 'L', 'RAIHAN FAHMI FEBRIANSYAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   14-02-2004', '', 'user59.png'),
('0ltHN1peLrPdqQh', '121232750069160113 ', 'pJMvHAFSE6', 'L', 'IMAM SAMUDRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   10-03-2004', '', 'user92.png'),
('0VyTq6xlFDkuKJi', '121232750069160167 ', 'Lswq5eabBA', 'L', 'MUHAMAD SAHRUL SAHRI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  21-06-2003', '', 'images68.png'),
('18Fzn2gyj0lKpu9', '121232750069160237 ', 'ZsbY1vDRNy', 'L', 'SATRIA EGI RAHMADANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  31-10-2004', '', 'user17.png'),
('1GkMA4Pvai7bnqQ', '121232750069160149 ', 'h2JUTqd47i', 'L', 'MUHAMAD RAFLI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  07-02-2004', '', 'images12.png'),
('1mfXStgLRAyUDnj', '121232750069160057 ', 'Lswq5eabBA', 'P', 'CHINDY MERYANNISA PUTRI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  01-07-2004', '', 'images50.png'),
('24LbI8osP1iArBE', '121232750069160007 ', 'RgL4tJex8h', 'P', 'ADHINDA DWI MEILANY ', '', '. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  08-05-2004', '', 'user25.png'),
('2gR71ns3bl56Eio', '121232750069160124 ', 'Lswq5eabBA', 'P', 'KURNIA FATMALINTANG PERTIWI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'KULONPROGO 27-07-2004', '', 'images64.png'),
('2hAyMWBDNPkj4YT', '121232750069160232 ', 'Z8nJgh9eDV', 'P', 'SALSABILA AZIS ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  29-06-2004', '', 'photo77.jpg'),
('2IpuhDgSrT835jB', '121232750069160100 ', 'Z8nJgh9eDV', 'P', 'GINA TASYA RAUDHATUL ZANNAH', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n  ', 'BEKASI  10-02-2004', '', 'photo50.jpg'),
('2LIjC8YS5dGWOvq', '121232750069160062 ', 'Z8nJgh9eDV', 'L', 'DEWA GEGER HARTONO PUTRA', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI 13/02/2004 07-08-2017', '', 'photo44.jpg'),
('2wjPI48dyarZDn6', '121232750069160153 ', 'Z8nJgh9eDV', 'L', 'MUHAMAD RYZKI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  14-05-2004', '', 'photo59.jpg'),
('2XioFA8mO9bVdzg', '121232750069160098 ', 'h2JUTqd47i', 'L', 'FITRIYAH DEWI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  07-01-2004', '', 'images3.png'),
('30lZU6Y24axejwd', '121232750069160162 ', 'pJMvHAFSE6', 'L', 'MUHAMMAD RAMADI ', '2017-2018', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  12-09-2002', '', 'user98.png'),
('31ZXzQfnkyiqaSC', '121232750069160243 ', 'ZsbY1vDRNy', 'P', 'SIFA NUR MALASARI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  10-05-2003', '', 'user19.png'),
('389ofaWuSqyIdzO', '121232750069160239 ', 'Z8nJgh9eDV', 'P', 'SEFTINA  ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  27-09-2004', '', 'photo81.jpg'),
('3iORr1ANPL2gCmD', '121232750069160225 ', 'Z8nJgh9eDV', 'P', 'ROBIATUL ADAWIYAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  12-03-2004', '', 'photo75.jpg'),
('3lHaFN6RZLnm7zy', '121232750069160258 ', 'Lswq5eabBA', 'L', 'TRI SATRIA SUDIAR ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  04-04-2004', '', 'images77.png'),
('3MXvwmt7nsWVdbU', '121232750069160191 ', 'RgL4tJex8h', 'L', 'NUZUL RAHMAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'KARAWANG   25-07-2003', '', 'user58.png'),
('4dXbHeG0SVjTEOY', '121232750069160256 ', 'Lswq5eabBA', 'P', 'SYIFA NUR MUTTAQIN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'TASIKMALAYA  22-04-2004', '', 'images76.png'),
('4fT5YFRpvlbidmK', '121232750069160088 ', 'h2JUTqd47i', 'L', 'FARHAN FADILA', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  26-12-2003', '', 'images2.png'),
('4ieU2R1lnaDHB0y', '121232750069160122 ', 'Lswq5eabBA', 'L', 'KANDRA DIANSYAH H.P.A.T.C.S.D ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  08-05-2004', '', 'images63.png'),
('4syNo9zY0khPQE5', '121232750069160248 ', 'RgL4tJex8h', 'P', 'SITI PATIMAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   24-05-2004', '', 'user65.png'),
('5F3BHMapVJhCNSl', '121232750069160128 ', 'pJMvHAFSE6', 'P', 'LUTHFI FATIMAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   07-05-2004', '', 'user93.png'),
('5krOsSlf0oC1DLg', '121232750069160177 ', 'Z8nJgh9eDV', 'P', 'NAZWA ALAISYA BALQIS ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  18-10-2004', '', 'photo67.jpg'),
('5ReMmQa3glrO2zI', '121232750069160217 ', 'h2JUTqd47i', 'P', 'RIKZMA AULIA PRATIWI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  22-06-2004', '', 'images30.png'),
('5wLskWIUR4ntBjE', '121232750069160114 ', 'RgL4tJex8h', 'P', 'INDAH OKTAVIANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   04-10-2004', '', 'user45.png'),
('6GLtSaQomJx7dWh', '121232750069160171 ', 'ZsbY1vDRNy', 'P', 'NAHDA ERISKA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  01-08-2004', '', 'user5.png'),
('6jSxcyDPloqZtfg', '121232750069160235 ', 'Z8nJgh9eDV', 'L', 'SAPUTRA RAMADAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  01-11-2003', '', 'photo78.jpg'),
('6Snb2fOeQLNgvx7', '1212327500691B60400 ', 'Z8nJgh9eDV', 'L', 'IKHSAN MAULANA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  13-10-2003', '', 'photo52.jpg'),
('7CMWmEj2X9P0iSA', '121232750069160076 ', 'Z8nJgh9eDV', 'L', 'DWI YULIANTO ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'WONOGIRI 08-07-2003', '', 'photo46.jpg'),
('7KGUJbAQ8HfkV0n', '121232750069160141 ', 'Lswq5eabBA', 'L', 'MOH. RANGGA MAULANA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'TEGAL  06-09-2004', '', 'images66.png'),
('7mJ0Qep6KNHlAcI', '121232750069160079 ', 'Lswq5eabBA', 'L', 'EKO ROGANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BREBES  01-01-2002', '', 'images52.png'),
('7PjkFMInNyHUoS6', '121232750069160244 ', 'Lswq5eabBA', 'P', 'SITI HASANAH  ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  14-12-2003', '', 'images73.png'),
('8GDf0Wh9Sc5oPdE', '121232750069160264 ', 'Z8nJgh9eDV', 'P', 'WIDYA TUN UMAROH', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BOGOR  05-06-2003', '', 'photo84.jpg'),
('8x7rtlvceUIEWmq', '121232750069160206 ', 'pJMvHAFSE6', 'L', 'RAMA FIKRI HAIKAL ', '2016-2017', 'Kranggan Wetan RT. 001/013', 'BEKASI  07-06-2004', '', 'siswa4.jpg'),
('93RAk7dpX6B8LmU', '121232750069160029 ', 'h2JUTqd47i', 'P', 'ANDINI LESTANTI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  24-08-2004', '', 'photo92.jpg'),
('9eyMq1BNFaRwQ0D', '121232750069160064 ', 'ZsbY1vDRNy', 'P', 'DEWI CAHYANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  11-06-2004', '', 'images88.png'),
('9i3HzsdTxjZYok1', '121232750069160112 ', 'ZsbY1vDRNy', 'L', 'ILHAM NURCAYA', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  20-11-2003', '', 'images92.png'),
('9jMJwTYeXFDRoi5', '121232750069160247 ', 'Lswq5eabBA', 'P', 'SITI NURHALIZA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI 31-03-2004', '', 'images74.png'),
('9NosKvWzawu1S6A', '121232750069160203 ', 'h2JUTqd47i', 'P', 'RAIHANAH SHINTA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  10-12-2003', '', 'images25.png'),
('9QcXvOwJldCH6Mx', '121232750069160199 ', 'ZsbY1vDRNy', 'L', 'RAFLY ALKASAFY ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  18-01-2004', '', 'user10.png'),
('9XclgWVNYtx7p2v', '121232750069160154 ', 'Z8nJgh9eDV', 'L', 'MUHAMMAD ADHI PRIHANTORO ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  17-01-2004', '', 'photo61.jpg'),
('Ac9GSnNLuqKib6C', '121232750069160236 ', 'Z8nJgh9eDV', 'P', 'SARAH DIAN CAHYANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  25-09-2004', '', 'photo79.jpg'),
('AhFylD7KYtmdNaP', '121232750069160014 ', 'RgL4tJex8h', 'L', 'AHMAD DIMAS APRIYADI ', '2016-2017', 'Gg. Bambu Kuning 3 No. 81', 'BLORA   23-04-2004', '', 'user28.png'),
('AKr2p1L5hjixyFw', '121232750069160111 ', 'pJMvHAFSE6', 'L', 'IHKSAN MAULANA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   13-10-2003', '', 'user91.png'),
('aLSBkEAuX6jPsNe', '121232750069160269', 'pJMvHAFSE6', 'L', 'ZACKY UBAY DILLA ', '2016-2017', 'Kp. Raden No. 69 RT. 004/007', 'BEKASI   06-05-2003', '', 'siswa14.jpg'),
('aoJc6u3QM81RqXw', '121232750069160110 I', 'Z8nJgh9eDV', 'P', 'IS DAHLIA ', '2016-2017', 'Kp. Cakung RT. 003/003\r\n', 'BEKASI  11-10-2001', '', 'photo53.jpg'),
('Aq3DhBwC57SkgH0', '121232750069160246', 'RgL4tJex8h', 'L', 'SITI NUR AISYAH', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  24-05-2004', '', 'user64.png'),
('aTAeFuxkn82byQz', '121232750069160127 ', 'h2JUTqd47i', 'P', 'LISNAWATI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'CIAMIS 29-06-2004', '', 'images6.png'),
('AtM9FlNfOiQGn6w', '121232750069160146 ', 'ZsbY1vDRNy', 'L', 'MUHAMAD FAHMI RIZAL ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  02-02-2004', '', 'user.png'),
('awCy05xtpqWFhXI', '121232750069160032  ', 'pJMvHAFSE6', 'P', 'ANIS MUTIARA', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'KARAWANG  11-11-2002', '', 'user77.png'),
('B0piS9R7yLtMaIF', '121232750069160231 ', 'pJMvHAFSE6', 'P', 'SALSA NABILA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   08-11-2003', '', 'siswa9.jpg'),
('B4kc9wfYsvGbjtT', '121232750069160003 ', 'Lswq5eabBA', 'L', 'ABDUL ZIKRI  ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  10-07-2004', '', 'images36.png'),
('BdDzSKrJV0MYvOl', '121232750069160135 ', 'RgL4tJex8h', 'L', 'MAULANA ', '2016-2017', 'Kp. Sawah RT. 006/001', 'BEKASI  04-04-2003', '', 'user51.png'),
('BMAyjwT20x6srkR', '121232750069160011 ', 'pJMvHAFSE6', 'L', 'ADITYA SAPUTRA ', '2016-2017', 'Kp. Pedurenan RT. 002/011', 'BEKASI   22-07-2003', '', 'user72.png'),
('bU5RZMagOL2WvTB', '121232750069160165 ', 'RgL4tJex8h', 'L', 'MUHAMAD RIFAYZ ', '2016-2017', 'Kp. Sawah RT. 006/001', 'BEKASI   31-03-2004', '', 'user55.png'),
('c10eAJBOpv3yW2h', '121232750069160043 ', 'RgL4tJex8h', 'L', 'ARYA RAKA RAINENDRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA   09-09-2003', '', 'user33.png'),
('CIRWr6vu4E1qfUL', '121232750069160181  ', 'pJMvHAFSE6', 'L', 'NOVAN FIRMANSYAH', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   24-07-2004', '', 'siswa.jpg'),
('cjZFxBVqDLUdmM7', '121232750069160274 ', 'pJMvHAFSE6', 'L', 'DIO ARDJI GHIFARI  ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  16-01-2004', '', 'user83.png'),
('CQOgtYspI7K8Rqk', '121232750069160233 ', 'RgL4tJex8h', 'L', 'SAMUJI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  27-09-2002', '', 'user62.png'),
('Cr8UhXZsGpSKngo', '121232750069160213  ', 'ZsbY1vDRNy', 'L', 'RIAN NUR FIRMANSYAH', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  02-08-2004', '', 'user14.png'),
('CUtnPfNgIycvSMF', '121232750069160056 ', 'Z8nJgh9eDV', 'L', 'BINTANG FAJRI PRATAMA AL-FATIH', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  06-03-2004', '', 'photo42.jpg'),
('cuUvP94HJz5yZa3', '121232750069160095 ', 'ZsbY1vDRNy', 'L', 'FIRMAN ADI PRASTYO ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'PURBALINGGA  04-05-2004', '', 'images91.png'),
('dBePOpmfJ2lXKn4', '121232750069160037 ', 'Lswq5eabBA', 'L', 'ANTARANGGA IHSAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  24-04-2004', '', 'images46.png'),
('DJ4wHWRAdMF6e38', '121232750069160136 ', 'h2JUTqd47i', 'L', 'MAULANA ARDHIAN CIPTO HANDOYO ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  02-06-2004', '', 'images9.png'),
('dP9SKJEQeVwly2k', '121232750069160151 ', 'Z8nJgh9eDV', 'L', 'MUHAMAD RIFKY HABIBI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'GARUT 13-12-2003', '', 'photo58.jpg'),
('dtvSAWIKg7YZ10y', '121232750069160104 ', 'RgL4tJex8h', 'L', 'HAUZAN AKBAR AFIF SAPUTRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  31-01-2004', '', 'user42.png'),
('dwJgBWYQ3iOsFRA', '121232750069160250 ', 'ZsbY1vDRNy', 'L', 'SYAIFULLOH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  20-03-2001', '', 'user20.png'),
('e14wkC3HU2tRAnf', '121232750069160065 ', 'h2JUTqd47i', 'P', 'DHELA NUR FATIMAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  23-10-2003', '', 'photo97.jpg'),
('ef6CsdM2buVpyBF', '121232750069160015 ', 'Lswq5eabBA', 'L', 'AHMAD RAMADANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  23-10-2003', '', 'images38.png'),
('egV3mENBwAYWsUh', '121232750069160130  ', 'ZsbY1vDRNy', 'L', 'M. EKA ADITYA PRATAMA PUTRA', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'TEGAL  04-06-2004', '', 'images97.png'),
('eiUHQ3GhXMzFE5y', '121232750069160163  ', 'Lswq5eabBA', 'L', 'MUHAMMAD RAYYAN PUTRA ASIFI', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  05-10-2004', '', 'images67.png'),
('EL3NS8OpRMyBUsA', '121232750069160044 ', 'ZsbY1vDRNy', 'L', 'ARYA SUBARI ', '2016-2017', '22/09/2005 ', 'BEKASI  07-08-2017', '', 'images86.png'),
('emZE2Sx8tHNDwPu', '121232750069160197 ', 'ZsbY1vDRNy', 'L', 'RADITIA MAULA ZAIDAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  02-06-2003', '', 'user9.png'),
('EwtpSFMY3PNZlzq', '121232750069160094 ', 'ZsbY1vDRNy', 'L', 'FIRDZA ISA AXCELDI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  16-09-2004', '', 'images90.png'),
('F0MpEKyOgzTIcuf', '121232750069160226 ', 'Z8nJgh9eDV', 'L', 'ROHADATTUL AISY AWALUDIN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'KEBUMEN  28-10-2004', '', 'photo76.jpg'),
('FD1c4MoKVk2QqCB', '121232750069160270 ', 'Z8nJgh9eDV', 'P', 'ZAFIRA SILA SAMI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  24-04-2004', '', 'photo87.jpg'),
('FeDhot8JXysf1CB', '121232750069160024 ', 'Z8nJgh9eDV', 'L', 'ALFIAN FATHUROHMAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  11-04-2004', '', 'photo39.jpg'),
('fGSejh4MQsCbo6c', '121232750069160005', 'Z8nJgh9eDV', 'P', 'ADE ANANDA AMELIA', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  27-03-2004', '', 'photo35.jpg'),
('FVdR1g5avDpwhsT', '121232750069160160 ', 'Z8nJgh9eDV', 'L', 'M. IRFAN KHALIK BEKASI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  24-09-2003', '', 'photo63.jpg'),
('g1G3pZqE0zSmYcK', '121232750069160023 ', 'RgL4tJex8h', 'L', 'ALFI PUTRA GUNAWAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'SUBANG   11-05-2004', '', 'user30.png'),
('g5t2IVUKWbJN9rY', '121232750069160025 ', 'h2JUTqd47i', 'L', 'ALFIAN NUROHMAN  ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BANDUNG  13-06-2004', '', 'photo91.jpg'),
('gabwk9OL4DctZYW', '121232750069160272 ', 'Lswq5eabBA', 'L', 'ZAIDUL KHOIR RAHMANTYO ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  24-04-2004', '', 'images78.png'),
('GaqWscZdQntRO3h', '121232750069160261 ', 'h2JUTqd47i', 'L', 'WAHYU FAHREZA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  04-06-2004', '', 'images34.png'),
('gCMIhZTX7kJjV6A', '121232750069160179 ', 'h2JUTqd47i', 'P', 'NIDA SHOHWATUL MUSLIMAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  07-06-2004', '', 'images19.png'),
('GKUBLXmCPHjOvWS', '121232750069160031 ', 'Lswq5eabBA', 'P', 'ANGGRAINI GALUH HERTANSYAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  31-07-2003', '', 'images42.png'),
('gld0fweIvNjQBrx', '121232750069160273 ', 'Lswq5eabBA', 'P', 'ZAKIYYAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  05-08-2004', '', 'images79.png'),
('gpxnAFYDZQsRfXw', '121232750069160117 ', 'Z8nJgh9eDV', 'L', 'IRSYAD VARIANSYAH ALVAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  22-12-2002', '', 'photo55.jpg'),
('GshW3knMI57jHVR', '121232750069160192 ', 'pJMvHAFSE6', 'P', 'PADIA FEBRIANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   31-01-2004', '', 'siswa2.jpg'),
('gwSiGjxqKzLDhRE', '121232750069160036 ', 'Lswq5eabBA', 'P', 'ANNIS FITIA NURHASANAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BOGOR  29-06-2004', '', 'images45.png'),
('h3GBoIDy1g5JdNw', '121232750069160070 ', 'h2JUTqd47i', 'L', 'DIMAS SETIAWAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  31-12-2003', '', 'photo99.jpg'),
('HCuJxemtyPWUqnp', '121232750069160102 ', 'RgL4tJex8h', 'P', 'HARIZA AULIA ZAHRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   21-01-2004', '', 'user41.png'),
('hgtvJmbIrkan3f8', '121232750069160135 ', 'RgL4tJex8h', 'L', 'MAULANA ', '2016-2017', 'Kp. Sawah RT. 006/001', 'BEKASI  04-04-2003', '', 'user50.png'),
('hKFdiH5tqTCYu02', '121232750069160180 ', 'h2JUTqd47i', 'L', 'NOVRI ARBI KURNIA SHANDY ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  29-11-2004', '', 'images20.png'),
('HnQcsVjkMZWq7CN', '121232750069160075 ', 'pJMvHAFSE6', 'L', 'DWI PERMANA SAPUTRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   17-06-2004', '', 'user84.png'),
('hnzlksoJRP1jYye', '121232750069160159 ', 'ZsbY1vDRNy', 'L', 'MUHAMMAD FATWA PRASETIYA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  11-05-2004', '', 'user2.png'),
('Hsbvon8O0YSD9Be', '121232750069160166 ', 'ZsbY1vDRNy', 'L', 'MUHAMMAD ROFI\'UL HUDA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'KLATEN  29-04-2004', '', 'user4.png'),
('hTXpmeQSUrVnsNJ', '121232750069160184 ', 'ZsbY1vDRNy', 'P', 'NUR AVIFAH MAHARANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  27-04-2004', '', 'user6.png'),
('hvGlqNVPQXirIpe', '121232750069160069 ', 'RgL4tJex8h', 'L', 'DIMAS PRAWIRA TAMA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   09-09-2004', '', 'user36.png'),
('hvUISGTeAoYlpmu', '121232750069160061 ', 'Z8nJgh9eDV', 'P', 'DEVI WAHYUNI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  18-01-2004', '', 'photo43.jpg'),
('I5WaNuwfXeSxlOA', '121232750069160018 ', 'Z8nJgh9eDV', 'L', 'AJI BRAHMASTA', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', ' BEKASI  20-03-2004', '', 'photo38.jpg'),
('IfrCumUcDPy29Qn', '121232750069160240 ', 'Z8nJgh9eDV', 'P', 'SELVIA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI 21-03-2004', '', 'photo82.jpg'),
('IFZKuQWyhdcE3wH', '121232750069160221 ', 'Lswq5eabBA', 'L', 'RIZKY ADRIAN RAMADHANA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA 15-11-2003', '', 'images71.png'),
('IjEKOVwJNQvA6Px', '121232750069160106 ', 'RgL4tJex8h', 'P', 'HAZZURA KHOSYATILLAH ', '2016-2017', 'Kp. Sawah No. 40 RT. 003/003', 'BEKASI  18-01-2004', '', 'user44.png'),
('iMKOkSHnzV5mWp9', '121232750069160012 ', 'ZsbY1vDRNy', 'L', 'AGIL SETYO FRIYADI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  L 7 Jl. Raya Kp. Sawah Jatimurni Pondok Melati 06-06-2004', '', 'images81.png'),
('iMuYcbIAw2ap4Dy', '121232750069160028 ', 'Lswq5eabBA', 'P', 'AMELLIA PUTRI NEMIRA ANJANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  21-11-2003', '', 'images41.png'),
('InXz6MJYs3Ppjde', '121232750069160259 ', 'h2JUTqd47i', 'P', 'VAHREZA ANANDA PUTRI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  08-10-2003', '', 'images33.png'),
('iPCmDOIxzrTV6pc', '121232750069160103 ', 'h2JUTqd47i', 'L', 'HARLAN MIFTAH N. ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  04-09-2004', '', 'images4.png'),
('IS81qEfHoCRBcnX', '121232750069160071 ', 'h2JUTqd47i', 'L', 'DIMAS SUWANDA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  24-03-2004', '', 'images1.png'),
('IW5Y0X8GMg7Ocru', '121232750069160174 ', 'Lswq5eabBA', 'P', 'NANDA LINTANG PURNAMA SARI ', '2016-2017', '. Raya Kp. Sawah Jatimurni Pondok Melati', 'SURAKARTA  25-07-2004', '', 'images69.png'),
('j0mEpbKGLnRXNHf', '121232750069160132 ', 'h2JUTqd47i', 'L', 'M. RIFKY RAMADHANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  10-08-2004', '', 'images7.png'),
('JfLTZKkE3n7NmUR', '121232750069160047 ', 'h2JUTqd47i', 'P', 'AULIA PUTRI JUWITA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  27-07-2004', '', 'photo94.jpg'),
('jNY7oZD2GE9bkBa', '121232750069160008 ', 'RgL4tJex8h', 'P', 'ADINDA APRILIA WIBOWO PUTRI ', '', '. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  26-04-2003', '', 'user26.png'),
('jqAbPoT7aKp5Udz', '121232750069160212 ', 'h2JUTqd47i', 'P', 'RHYZMA QHURSUBHY ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  14-04-2004', '', 'images26.png'),
('jqR6KgpHXUxJkW3', '121232750069160145 ', 'pJMvHAFSE6', 'L', 'MUHAMAD DERMAWAN ', '2016-2017', 'Kp. Raden RT. 007/005', 'JAKARTA   23-12-2003', '', 'user95.png'),
('JsrZgSUpoj4aAlN', '121232750069160150 ', 'RgL4tJex8h', 'L', 'MUHAMAD RIDHO ', '2016-2017', 'Kp. Bulak Tinggi RT. 002/002', 'BEKASI   08-12-2003', '', 'user53.png'),
('jyQ0cg6pIBC2RYm', '121232750069160090 ', 'Lswq5eabBA', 'L', 'FERDIE NUR HIDAYAT ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  28-11-2004', '', 'images57.png'),
('JyZfYbRpgvLqscX', '121232750069160257 ', 'ZsbY1vDRNy', 'P', 'TASYA HANIFAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  19-05-2004', '', 'user23.png'),
('k9uVd1rgMJSh5UE', '121232750069160158 ', 'ZsbY1vDRNy', 'L', 'MUHAMMAD FAJAR SIANGGIAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  01-01-2004', '', 'user1.png'),
('Ka9oypmrY0LJBhn', '121232750069160054 ', 'Lswq5eabBA', 'L', 'BAYU EKA NANDA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  18-09-2004', '', 'images49.png'),
('kbQiC6gRNJGSX8u', '121232750069160027 ', 'ZsbY1vDRNy', 'P', 'AMANDA AHLAQUL SADIYAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  19-08-2004', '', 'images83.png'),
('kcviXVdW94hopPQ', '121232750069160140', 'RgL4tJex8h', 'L', 'MOCHAMAD FADLI INSANI ', '2016-2017', 'Jl. Masjid Arrohmah RT. 005/001', 'BEKASI  30-05-2004', '', 'user52.png'),
('kwJpPTQ2MEejVfh', '121232750069160059 ', 'ZsbY1vDRNy', 'L', 'DAMAR PRATAMA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  03-06-2005', '', 'images87.png'),
('Lj62SYdlgIzAi0y', '121232750069160252 ', 'RgL4tJex8h', 'P', 'SYARIFAH SALWA ZEN AL-HADDAD ', '2016-2017', 'Kp. Sawah RT. 002/003 ', 'BEKASI  21-04-2003', '', 'user66.png'),
('Lk5SdebWt1HQNAT', '121232750069160038 ', 'RgL4tJex8h', 'L', 'ARDIYANSAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'SUKABUMI  03-11-2004', '', 'user31.png'),
('lofWzimRhkE4OM9', '121232750069160148 ', 'Z8nJgh9eDV', 'L', 'MUHAMMAD KUSDIANTO ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  01-07-2004', '', 'photo64.jpg'),
('lRN7QrMGqoeakWZ', '121232750069160168 ', 'RgL4tJex8h', 'P', 'MUTIA NUR AZZAHRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'WONOGIRI   25-09-2004', '', 'user56.png'),
('M04GaHxld3OXJcK', '121232750069160129 ', 'ZsbY1vDRNy', 'L', 'M ZAKI ZAIDAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  17-03-2004', '', 'images96.png'),
('M37miQBfG8kjAIu', '121232750069160078 ', 'pJMvHAFSE6', 'P', 'EKA KARTIKA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'CIREBON   19-03-2004', '', 'user86.png'),
('MA0yUuCWSzIv7F6', '121232750069160081 ', 'Lswq5eabBA', 'L', 'ERIK MAULANA SIDIK ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  07-06-2003', '', 'images53.png'),
('MGd0ZSqCuHp1IAf', '121232750069160002 ', 'Lswq5eabBA', 'L', 'ABDUL BASIT', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'PANDEGLANG  10-06-2004', '', 'images35.png'),
('MgIpb8dS7DhmXCV', '121232750069160190 ', 'Z8nJgh9eDV', 'P', 'NURPITA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  05-02-2004', '', 'photo71.jpg'),
('MhmVUZxvkcXCSwl', '121232750069160186 ', 'RgL4tJex8h', 'P', 'NUR INTAN TAZMAHAL ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   18-06-2004', '', 'user57.png'),
('mIdNWgzbHifk9pP', '121232750069160175 ', 'h2JUTqd47i', 'P', 'NAWAL AZUHRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  02-12-2003', '', 'images18.png'),
('MiLzebWFY47wNvu', '121232750069160001 ', 'h2JUTqd47i', 'L', 'ABDILLAH HUSIN ALFATIH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'WONOGIRI  15-02-2004', '', 'photo90.jpg'),
('MIqQpKiteYBhaZH', '121232750069160187 ', 'ZsbY1vDRNy', 'P', 'NURAINI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'KEBUMEN  17-04-2003', '', 'user7.png'),
('MO7pNFXwZrqunUH', '121232750069160093 ', 'Z8nJgh9eDV', 'P', 'FINGKAN NUR AZIZAH', '2016-2017', 'Kp. Sawah RT. 003/003\r\n', 'BEKASI 07-08-2017', '', 'photo49.jpg'),
('mpjX5aZzS8W3yB7', '121232750069160143 ', 'pJMvHAFSE6', 'L', 'MUHAMAD ALFHA RIZKY ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   14-05-2003', '', 'user94.png'),
('mXaiYMONbletSoJ', '121232750069160060 ', 'RgL4tJex8h', 'L', 'DENNY RIZKY SETIAWAN ', '2016-2017', 'Kp. Raden RT. 001/005', 'BEKASI   29-01-2004', '', 'user34.png'),
('mzeoh2XBWbKDZga', '121232750069160074 ', 'RgL4tJex8h', 'P', 'DITA WULAN PRADINA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   17-03-2004', '', 'user37.png'),
('N07MjTF8oC4GvVr', '121232750069160219 ', 'ZsbY1vDRNy', 'P', 'RISKA AMELIA PUTRI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'TASIKMALAYA  24-03-2004', '', 'user15.png'),
('N1us7nRmAk482Ow', '121232750069160022 ', 'pJMvHAFSE6', 'L', 'ALDINO DIBUGA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI 12-08-2003', '', 'user74.png'),
('n3GdBwCW0bmg82O', '121232750069160035 ', 'pJMvHAFSE6', 'P', 'ANNA KURNIAWATI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   14-05-2004', '', 'user79.png'),
('N3R5bqpU8arX7AG', '121232750069160115 ', 'ZsbY1vDRNy', 'P', 'IRENA FEBRIANTI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  04-02-2004', '', 'images93.png'),
('NCA94JBbqp2oTvD', '121232750069160125 ', 'ZsbY1vDRNy', 'L', 'KUSRAMDHANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  06-11-2003', '', 'images95.png'),
('NFi9wGpqc6bL7XV', '121232750069160045 ', 'Lswq5eabBA', 'L', 'ATRI PRASETYO  ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'SLEMAN  05-11-2003', '', 'images48.png'),
('nGqoi5V8usegwfP', '121232750069160016 ', 'ZsbY1vDRNy', 'L', 'AHMAD RIFAI DARAJAT ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BOGOR  12-04-2004', '', 'images82.png'),
('nI5rAZt9Epo2mRd', '121232750069160260 ', 'Z8nJgh9eDV', 'P', 'VALEND NUR CAHYA  ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  29-02-2004', '', 'photo83.jpg'),
('NiYbmZzpVFdK9ga', '121232750069160182 ', 'Z8nJgh9eDV', 'P', 'NOVITASARI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  09-06-2003', '', 'photo69.jpg'),
('nMesI02qouXkHTm', '121232750069160238 ', 'ZsbY1vDRNy', 'P', 'SAYYIDA A\'INI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  23-12-2003', '', 'user18.png'),
('o4P56bezFcsCWOG', '121232750069160137 ', 'h2JUTqd47i', 'P', 'MILA BIDARI HAWA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  31-12-2003', '', 'images10.png'),
('O4wjobQ2TBauxYW', '121232750069160126 ', 'RgL4tJex8h', 'P', 'LIRUPINA KHADIJAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  16-09-2002', '', 'user49.png'),
('OeGh5v2rtYSI8j4', '121232750069160133 ', 'h2JUTqd47i', 'P', 'MARISCA AULIA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BOGOR  20-01-2004', '', 'images8.png'),
('OGWyS4FMjdrIsDn', '121232750069160242 ', 'Lswq5eabBA', 'P', 'SHINTA YUNIASHARI HARIADI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  01-06-2004', '', 'images72.png'),
('ohkJ3lm5d8Ov7xP', '121232750069160228 ', 'pJMvHAFSE6', 'L', 'SABAR SUMBODRO ', '2017-2018', 'Perum. Betawi Permai Blok E4/11 RT. 002/014', 'BEKASI   22-01-2004', '', 'siswa7.jpg'),
('OibNpnHJ4ZyRQud', '121232750069160085 ', 'RgL4tJex8h', 'L', 'FAHRI ALI RAHIM ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  07-02-2004', '', 'user38.png'),
('ONpwPiv2Hq1mgzo', '121232750069160019 ', 'RgL4tJex8h', 'L', 'ALAM DWI AGPRIYANDO ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   10-08-2003', '', 'user29.png'),
('OPfTIjQGiXC0BZW', '121232750069160173 ', 'h2JUTqd47i', 'P', 'NANDA HIDAYAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  29-02-2004', '', 'images16.png'),
('OV8F2XgqyI1tRZU', '121232750069160204 ', 'ZsbY1vDRNy', 'L', 'RAMADANDI SETIAWAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  06-10-2004', '', 'user12.png'),
('P6EcOmy79GJKQlt', '121232750069160155 ', 'Z8nJgh9eDV', 'L', 'MUHAMMAD ALDIRA IRWANTO ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  09-08-2004', '', 'photo62.jpg'),
('PaF06gdC9G8qZDV', '121232750069160196 ', 'h2JUTqd47i', 'P', 'PUTRI RUBI AWALIAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  01-05-2004', '', 'images24.png'),
('PBJ5m2ncoMTUVs7', '121232750069160042 ', 'RgL4tJex8h', 'P', 'ARWAA SHOBIHAH ', '2016-2017', 'Pondok Melati RT. 002/009', 'BEKASI 21-06-2004', '', 'user32.png'),
('PDGjsnfJRBLxkhQ', '121232750069160101 ', 'pJMvHAFSE6', 'L', 'HADIANTO NUR FADHLI ', '2016-2017', 'Kp. Pabuaran Gg. Mesjid I RT. 002/001  ', 'TANGERANG   03-11-2004', '', 'user89.png'),
('pdw2EL5NqZmsonO', '121232750069160268 ', 'Z8nJgh9eDV', 'L', 'YOGI PRADANA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  28-01-2002', '', 'photo86.jpg'),
('pj5AMuDfnRE20Lq', '121232750069160055 ', 'h2JUTqd47i', 'L', 'BAYU HARDI YUDA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  10-06-2003', '', 'photo96.jpg'),
('PRMIdleFtrJb25a', '121232750069160253 ', 'RgL4tJex8h', 'L', 'SYAWAL ALIF FABIAN ', '2016-2017', 'Gg. Mesjid I No. 12 Kp. Sawah RT. 003/004', 'CIMAHI  19-10-2004', '', 'user67.png'),
('pruz7CP39NsbaQ4', '121232750069160142 ', 'Z8nJgh9eDV', 'L', 'MUAMAR ROIS ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'KARAWANG ', '25122003', 'photo56.jpg'),
('PSqLN7TB6CziojR', '121232750069160039 ', 'Z8nJgh9eDV', 'L', 'ARGA FAUZAN ALFARIZI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  01-04-2004', '', 'photo40.jpg'),
('PWb71SwrUHQ58Kp', '121232750069160198 ', 'Z8nJgh9eDV', 'L', 'RAFID AHMAD IRMANSYAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  07-01-2004', '', 'photo72.jpg'),
('Q10n9Zo2YiEz6qA', '121232750069160144 ', 'h2JUTqd47i', 'L', 'MUHAMAD BAYU SAPUTRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'TANGGERANG 06-01-2003', '', 'images11.png'),
('QdrYMnWhDFjqem7', '121232750069160072 ', 'pJMvHAFSE6', 'P', 'DINA CHAIRUNISSA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   27-08-2004', '', 'user82.png'),
('qEWDUtSaw8zVmZ1', '121232750069160245 ', 'pJMvHAFSE6', 'P', 'SITI NUR AFIFAH ', '2017-2018', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   05-01-2004', '', 'siswa10.jpg'),
('QN7Gs9dOnrf32jz', '121232750069160118 ', 'ZsbY1vDRNy', 'L', 'ISKANDAR ARIEF NULHAKIM ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'DEPOK  26-04-2004', '', 'images94.png'),
('QPqURE7dFSYjHtv', '121232750069160266 ', 'Z8nJgh9eDV', 'P', 'YEYET SITI NURJANAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'SUMEDANG  01-04-2004', '', 'photo85.jpg'),
('qS73hYod6s2FBrA', '121232750069160020 ', 'pJMvHAFSE6', 'L', 'ALBEY FAUZAN HIDAYAT ', '2016-2017', 'Kp. Raden RT. 002/002', 'JAKARTA   04-08-2003', '', 'user73.png'),
('r2LaDsqA1Qh4oiN', '121232750069160017 ', 'Lswq5eabBA', 'P', 'AISYA AULIA CAHYA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'PEKALONGAN 12-04-2004', '', 'images39.png'),
('R81weQYOiSmU2zH', '121232750069160223 ', 'ZsbY1vDRNy', 'L', 'RIZKY RAHMAD DANI', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI 20-10-2003', '', 'user16.png'),
('raxy0l4PtD87mbX', '121232750069160049 ', 'pJMvHAFSE6', 'P', 'AVILA PUTRI SHAFA ', '2016-2017', 'Jl. Setia Warga 2 No. 53  RT. 001/002 ', 'BEKASI   10-04-2004', '', 'user80.png'),
('RFGv4Xha8eP6Zwm', '121232750069160211 ', 'Z8nJgh9eDV', 'L', 'REZA JANUAR HANAFI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BOGOR  10-01-2004', '', 'photo73.jpg'),
('RJGe8NbFIHrUmk6', '121232750069160227 ', 'h2JUTqd47i', 'L', 'ROY ZAKHONIA RAMADAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  06-11-2003', '', 'images32.png'),
('RkLjASYHTcvh8ys', '121232750069160046 ', 'h2JUTqd47i', 'P', 'AULIA NURHIKMAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI 22-08-2004', '', 'photo93.jpg'),
('rNdaERCpyU2f0XB', '121232750069160194 ', 'ZsbY1vDRNy', 'P', 'PRETTY REZKYA AZAHRO ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  29-03-2004', '', 'user8.png'),
('ROE1hdxY84ZgJsI', '121232750069160178 ', 'Z8nJgh9eDV', 'P', 'NENI APRILIYANTI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'BEKASI  25-04-2004', '', 'photo68.jpg'),
('ru7x6mlOBwZnkYc', '121232750069160030 ', 'pJMvHAFSE6', 'P', 'ANGGI PRATIWI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   21-06-2004', '', 'user76.png'),
('rVHY61SAveTNZtk', '121232750069160164 ', 'RgL4tJex8h', 'L', 'MUHAMMAD RIFAL ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   10-09-2003', '', 'user54.png'),
('s5EAfC3GqmDhLc7', '121232750069160218 ', 'h2JUTqd47i', 'P', 'RINA AFRILIANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', ' 22-04-2004', '', 'images31.png'),
('SIzqnvhLyXYCJ9E', '121232750069160010 ', 'RgL4tJex8h', 'L', 'ADITYA MAHENDRA ', '', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'PATI  03-03-2004', '', 'user27.png'),
('SnDxNRj5AkZPXd4', '121232750069160255 ', 'RgL4tJex8h', 'P', 'SYIFA JALIYYA ', '2016-2017', 'Kp. Pedurenan RT. 006/003', 'BEKASI  29-05-2004', '', 'user68.png'),
('SPOTow2RqiLxKE3', '121232750069160033 ', 'h2JUTqd47i', 'P', 'ANISA WIDYA PUTRI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  04-03-2004', '', 'images44.png'),
('SYqcmbDjOzXQ4TR', '121232750069160189 ', 'h2JUTqd47i', 'P', 'NURMA WULANDARI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  14-05-2004', '', 'images21.png'),
('T4jDQ0Eq9dtWfw5', '121232750069160210 ', 'ZsbY1vDRNy', 'L', 'RENALDI ADRIAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  30-04-2003', '', 'user13.png'),
('tf83IPRTEKWy06w', '121232750069160087 ', 'RgL4tJex8h', 'L', 'FANDI PRATAMA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   25-01-2004', '', 'user39.png'),
('ti5vmYQoheN7s96', '121232750069160073 ', 'ZsbY1vDRNy', 'P', 'DITA FITRIA PRAMESTI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'SRAGEN  23-11-2003', '', 'images89.png'),
('TqHLgGalQmViDAI', '121232750069160013 ', 'Z8nJgh9eDV', 'L', 'AHMAD DANIAL FAYYADH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  20-10-2004', '', 'photo37.jpg'),
('TsMYN7kmnVg04jX', '121232750069160271 ', 'Z8nJgh9eDV', 'P', 'ZAHRA NURUL AINI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  04-01-2004', '', 'photo89.jpg'),
('TsYgxpRHetKEOuI', '121232750069160120 ', 'Lswq5eabBA', 'P', 'JENITA PUTRI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  12-01-2004', '', 'images62.png'),
('TveOhAmI1zElyjZ', '121232750069160077 ', 'pJMvHAFSE6', 'L', 'DZAQY AL FAIZ ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA   13-06-2003', '', 'user85.png'),
('Ub7yeMzgEA9m0a1', '121232750069160058', 'pJMvHAFSE6', 'P', 'CITRA ZAINI ', '2016-2017', 'Jl. Pasar Kecapi No. 11 RT. 002/003', 'BEKASI   05-10-2004', '', 'user81.png'),
('uFf3XIUNzDnciWo', '121232750069160080  ', 'pJMvHAFSE6', 'P', 'ELMA TRI RAHAYU SUPRIYATNA', '2016-2017', 'Kp. Pabuaran Gg. Mesjid I RT. 002/001 Kel. Jatimurni Kec. Pondok Melati Kota Bekasi', 'BEKASI   24-07-2004', '', 'user88.png'),
('UKDVTl6FAwocIRk', '121232750069160138 ', 'ZsbY1vDRNy', 'P', 'MIMI RUBBIATUL ADAWIYAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  09-07-2004', '', 'images99.png'),
('UkKzGa9NnHvQ2C8', '121232750069160209 ', 'pJMvHAFSE6', 'L', 'RANGGA BUDI ALIYANSYAH ', '2016-2017', 'Kp. Sawah RT. 002/002', 'BEKASI   13-06-2004', '', 'siswa6.jpg'),
('UNpG9nsvB6aFDr2', '121232750069160134 ', 'ZsbY1vDRNy', 'P', 'MARSELINA PUTRI HANDAYANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  03-03-2004', '', 'images98.png'),
('unTgxGIZXmFqvPd', '121232750069160097 ', 'Lswq5eabBA', 'P', 'FITRIA DAMAYANTI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  26-12-2002', '', 'images58.png'),
('uo2rHGN1fqiMxXR', '121232750069160185 ', 'pJMvHAFSE6', 'P', 'NUR AZIZAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BOGOR   20-05-2004', '', 'siswa1.jpg'),
('UO9seNifwT2bLqZ', '121232750069160040 ', 'ZsbY1vDRNy', 'P', 'ARNETTA BUNGA CINTA ROSA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  02-01-2004', '', 'images84.png'),
('UoakzupY5JecSMB', '121232750069160267 ', 'pJMvHAFSE6', 'L', 'YOGA INDRA SETIAWAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  16-07-2003', '', 'siswa13.jpg'),
('UwlRrti75JanOQe', '121232750069160220 R', 'Z8nJgh9eDV', 'P', ' DYAH TRIYAS HARI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA   01-12-2004', '', 'photo74.jpg'),
('UxjHZ7i6K3oLbeq', '121232750069160048 ', 'h2JUTqd47i', 'P', 'AURA KHAIRUNNISA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  20-02-2004', '', 'photo95.jpg'),
('uXlReCIorKN60Tp', '121232750069160188 ', 'Z8nJgh9eDV', 'L', 'NURDIEN PRAMA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'SUKABUMI  16-04-2003', '', 'photo70.jpg'),
('UZfQm9axJhoT2LR', '121232750069160170 ', 'pJMvHAFSE6', 'P', 'NADIN FAKHRIAH MAFAZI ', '2016-2017', 'Puri Gading Blok M6 No. 6 RT. 01/012', 'BEKASI   25-07-2004', '', 'user99.png'),
('UzTc2jx3yrFSo9K', '121232750069160139 ', 'Lswq5eabBA', 'P', 'MITA ARYANTI ', '2017-2018', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  16-04-2004', '', 'images65.png'),
('V3h82UEIjWwt0s1', '121232750069160241 ', 'RgL4tJex8h', 'P', 'SEPIA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  23-09-2003', '', 'user63.png'),
('vce5aO6Aq1DfCTz', '121232750069160401 ', 'Z8nJgh9eDV', 'P', 'NADHIFAH NAILAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  11-12-2004', '', 'photo66.jpg'),
('vEHViCPaktDX3SO', '121232750069160169 ', 'Z8nJgh9eDV', 'L', 'MUTIARA SHAHIRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'MEDAN  05-09-2004', '', 'photo65.jpg'),
('VeOzQclURWoiD4x', '121232750069160006 ', 'pJMvHAFSE6', 'P', 'ADE AYU ANDIRA ', '2016-2017', 'Kp. Sawah RT. 003/003', 'BEKASI  26-05-2004', '', 'user71.png'),
('vG3Kag5ysVZjeLF', '121232750069160116 ', 'RgL4tJex8h', 'L', 'IRSYA FADILLA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  06-02-2004', '', 'user46.png'),
('Vhm7FHks6TzWdrq', '121232750069160208 ', 'pJMvHAFSE6', 'L', 'RANGGA ADITYA ', '2016-2017', 'Kp. Sawah RT. 001/004', 'BEKASI   30-06-2004', '', 'siswa5.jpg'),
('VhZjWGreqbBz2gO', '121232750069160249 ', 'Lswq5eabBA', 'P', 'SITI SAFKA RIZQIYYAH  ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  13-12-2004', '', 'images75.png'),
('vugkebEHn8sTlBt', '121232750069160121 ', 'RgL4tJex8h', 'P', 'JULIYANTI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  02-07-2003', '', 'user48.png'),
('VzKPoxrv1ONT7XE', '121232750069160207 ', 'Lswq5eabBA', 'L', 'RAMDI SALIM ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  03-01-2004', '', 'images70.png'),
('W1gBX0pGOUq9JxT', '121232750069160009 ', 'Lswq5eabBA', 'L', 'ADITYA BIMO WIDIYANTO  ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  21-12-2003', '', 'images37.png'),
('W3c4aN5dxPfz9hK', '121232750069160265 ', 'pJMvHAFSE6', 'P', 'WIRDA AYU ASTARI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   10-12-2003', '', 'siswa12.jpg'),
('w4Oqxj9Z0WLhQls', '121232750069160084 ', 'Lswq5eabBA', 'L', 'FADHILA BAIHAQI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  04-05-2004', '', 'images55.png'),
('WdxYPM0ZiDEbmz3', '121232750069160275 ', 'pJMvHAFSE6', 'P', 'ELLY ERNAWATI  ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA   02-03-2004', '', 'user87.png'),
('WEJGdktX5csMfbQ', '121232750069160032  ', 'pJMvHAFSE6', 'P', 'ANIS MUTIARA', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'KARAWANG  11-11-2002', '', 'user78.png'),
('WFf4v0LmRx1VTNH', '121232750069160202 ', 'ZsbY1vDRNy', 'L', 'RAIHAN RAFIF SYAEFUDIN SAPUTRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  17-09-2004', '', 'user11.png'),
('wFyKxrjCvc7GYM5', '121232750069160195 ', 'pJMvHAFSE6', 'P', 'PUTRI INAYAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'SARUASO  01-02-2004', '', 'siswa3.jpg'),
('WGJvQ1SeEU2FKZd', '121232750069160229 ', 'pJMvHAFSE6', 'L', 'SAHRULLOH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  17-12-2003', '', 'siswa8.jpg'),
('wkD0nQqJLKU2sXZ', '121232750069160216 ', 'h2JUTqd47i', 'L', 'RIFQI FADHILA SULAEMAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  12-06-2004', '', 'images29.png'),
('wRngFfKT6sbNH4U', '121232750069160205 ', 'RgL4tJex8h', 'L', 'RAMA DWI PUTRA ', '2016-2017', 'Pondok Melati RT. 005/006', 'JAKARTA  09-06-2004', '', 'user60.png'),
('wTquBKJMfRUreyH', '121232750069160105', 'RgL4tJex8h', 'P', 'HAYATI MARDHIYYAH ADILA ', '2016-2017', 'xJl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA   13-09-2004', '', 'user43.png'),
('wWDIAdyBqtORp71', '121232750069160156 ', 'h2JUTqd47i', 'L', 'MUHAMMAD ASHRI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI 19-12-2003', '', 'images13.png'),
('X0J1ovkjmUeYL4s', '121232750069160026 ', 'pJMvHAFSE6', 'L', 'ALFIN ALFIAN ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BOGOR  16-09-2003', '', 'user75.png'),
('x6NOet5CTWbwKFP', '121232750069160251 ', 'ZsbY1vDRNy', 'P', 'SYALAISHA PUTRI AMANI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  14-04-2004', '', 'user21.png'),
('xcHDFTUOAaRueVf', '121232750069160067 ', 'h2JUTqd47i', 'L', 'DIMAS ADITYA PRAMUKTI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati\r\n', 'JAKARTA  17-04-2004', '', 'photo98.jpg'),
('xF10wzYWIcBmkqT', '121232750069160254 ', 'ZsbY1vDRNy', 'P', 'SYIFA AULIA PUTRI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  19-02-2004', '', 'user22.png'),
('xfDpXdLv51rSGFw', '121232750069160041 ', 'ZsbY1vDRNy', 'P', 'ARVA EQ SABRINA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'KEBUMEN  17-01-2004', '', 'images85.png'),
('xh5sOINHKRlAZJD', '121232750069160053 ', 'Z8nJgh9eDV', 'L', 'BAMBANG APRILIANTO ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  07-04-2004', '', 'photo41.jpg'),
('xh6tfAk3TjHGEYr', '121232750069160263 ', 'pJMvHAFSE6', 'L', 'WAVI ADIPUTRA ', '2016-2017', 'Kp. Sawah RT. 003/004', 'SRAGEN  24-11-2005', '', 'siswa11.jpg'),
('Xk7INHW84ixZr9h', '121232750069160214 ', 'h2JUTqd47i', 'L', 'RICCO DWI MAHENDRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  05-03-2004', '', 'images27.png'),
('xLq2rNS1FeXMw9K', '121232750069160082 ', 'Lswq5eabBA', 'P', 'ERVIANA SALVIRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  15-02-2004', '', 'images54.png'),
('XM1yqzxcHsErIvK', '121232750069160119 ', 'RgL4tJex8h', 'P', 'JANES RUHA NINGSIH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'CIREBON  29-06-2003', '', 'user47.png'),
('xs5cZn2B6LCfWqP', '121232750069160123 ', 'h2JUTqd47i', 'P', 'KEYSYA RAHHADATUL \'AISY ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  28-10-2003', '', 'images5.png'),
('xU3Nl7YBSWbsciC', '121232750069160161 ', 'h2JUTqd47i', 'L', 'MUHAMMAD JAELANI', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  08-09-2003', '', 'images14.png'),
('XU9tgsLuBcnPhbf', '121232750069160193 ', 'h2JUTqd47i', 'L', 'PRADIPTA SEPTRIAN JATI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  04-09-2003', '', 'images22.png'),
('y976NmKEVulakwI', '121232750069160004 ', 'pJMvHAFSE6', 'L', 'ADAM RIYADI ', '2016-2017', 'Kp. Pondok Ranggon RT. 001/002', 'BEKASI   05-10-2002', '', 'user70.png'),
('yg2XPnIaDRquM4t', '121232750069160099 ', 'Lswq5eabBA', 'L', 'GHOZALI AL GHIFARI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  03-04-2004', '', 'images60.png'),
('yHxqCPBQ3gLuNW1', '121232750069160109 ', 'pJMvHAFSE6', 'L', 'ICHWAN ADLI ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  14-06-2004', '', 'user90.png'),
('ymXusWlxYHw9neZ', '121232750069160066 ', 'Lswq5eabBA', 'L', 'DIMAS ADI PUTRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JOMBANG 24-05-2004', '', 'images51.png'),
('z2wuJXSCT1snNrL', '121232750069160092 ', 'RgL4tJex8h', 'L', 'FIQRI SAPUTRA', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   26-11-2003', '', 'user40.png'),
('Z5aVn6MLr8ACd2j', '121232750069160107 ', 'Lswq5eabBA', 'L', 'HENDRYAWAN CIPTA MULIA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI  01-03-2004', '', 'images61.png'),
('Z8qoFSK6lhiHtMu', '121232750069160262 ', 'ZsbY1vDRNy', 'P', 'WARSILATUT TOYYIBAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'PAMEKASAN  12-12-2003', '', 'user24.png'),
('ZdmG3BkWOJMK42E', '121232750069160147 ', 'pJMvHAFSE6', 'L', 'MUHAMAD FERDIANSYAH ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'BEKASI   20-01-2003', '', 'user97.png'),
('zIrJvQV4KH2eN9l', '121232750069160215 ', 'h2JUTqd47i', 'L', 'RIDHO ALIF PUTRA ', '2016-2017', 'Jl. Raya Kp. Sawah Jatimurni Pondok Melati', 'JAKARTA  26-05-2004', '', 'images28.png'),
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
('0cYxOzigaRDWTV9', '121232750069160089 ', 'Lswq5eabBA'),
('0fJUraYuS7GBt3E', '121232750069160172 ', 'h2JUTqd47i'),
('0hNPqTLaA9J7mus', '121232750069160201 ', 'RgL4tJex8h'),
('0ltHN1peLrPdqQh', '121232750069160113 ', 'pJMvHAFSE6'),
('0VyTq6xlFDkuKJi', '121232750069160167 ', 'Lswq5eabBA'),
('18Fzn2gyj0lKpu9', '121232750069160237 ', 'ZsbY1vDRNy'),
('1GkMA4Pvai7bnqQ', '121232750069160149 ', 'h2JUTqd47i'),
('1mfXStgLRAyUDnj', '121232750069160057 ', 'Lswq5eabBA'),
('24LbI8osP1iArBE', '121232750069160007 ', 'ZsbY1vDRNy'),
('2gR71ns3bl56Eio', '121232750069160124 ', 'Lswq5eabBA'),
('2hAyMWBDNPkj4YT', '121232750069160232 ', 'Z8nJgh9eDV'),
('2IpuhDgSrT835jB', '121232750069160100 ', 'Z8nJgh9eDV'),
('2LIjC8YS5dGWOvq', '121232750069160062 ', 'Z8nJgh9eDV'),
('2wjPI48dyarZDn6', '121232750069160153 ', 'Z8nJgh9eDV'),
('2XioFA8mO9bVdzg', '121232750069160098 ', 'h2JUTqd47i'),
('30lZU6Y24axejwd', '121232750069160162 ', 'pJMvHAFSE6'),
('31ZXzQfnkyiqaSC', '121232750069160243 ', 'ZsbY1vDRNy'),
('389ofaWuSqyIdzO', '121232750069160239 ', 'Z8nJgh9eDV'),
('3iORr1ANPL2gCmD', '121232750069160225 ', 'Z8nJgh9eDV'),
('3lHaFN6RZLnm7zy', '121232750069160258 ', 'Lswq5eabBA'),
('3MXvwmt7nsWVdbU', '121232750069160191 ', 'RgL4tJex8h'),
('4dXbHeG0SVjTEOY', '121232750069160256 ', 'Lswq5eabBA'),
('4fT5YFRpvlbidmK', '121232750069160088 ', 'h2JUTqd47i'),
('4ieU2R1lnaDHB0y', '121232750069160122 ', 'Lswq5eabBA'),
('4syNo9zY0khPQE5', '121232750069160248 ', 'RgL4tJex8h'),
('5F3BHMapVJhCNSl', '121232750069160128 ', 'pJMvHAFSE6'),
('5krOsSlf0oC1DLg', '121232750069160177 ', 'Z8nJgh9eDV'),
('5ReMmQa3glrO2zI', '121232750069160217 ', 'h2JUTqd47i'),
('5wLskWIUR4ntBjE', '121232750069160114 ', 'RgL4tJex8h'),
('6GLtSaQomJx7dWh', '121232750069160171 ', 'ZsbY1vDRNy'),
('6jSxcyDPloqZtfg', '121232750069160235 ', 'Z8nJgh9eDV'),
('6Snb2fOeQLNgvx7', '1212327500691B60400 ', 'Z8nJgh9eDV'),
('7CMWmEj2X9P0iSA', '121232750069160076 ', 'Z8nJgh9eDV'),
('7KGUJbAQ8HfkV0n', '121232750069160141 ', 'Lswq5eabBA'),
('7mJ0Qep6KNHlAcI', '121232750069160079 ', 'Lswq5eabBA'),
('7PjkFMInNyHUoS6', '121232750069160244 ', 'Lswq5eabBA'),
('8GDf0Wh9Sc5oPdE', '121232750069160264 ', 'Z8nJgh9eDV'),
('8x7rtlvceUIEWmq', '121232750069160206 ', 'pJMvHAFSE6'),
('93RAk7dpX6B8LmU', '121232750069160029 ', 'h2JUTqd47i'),
('9eyMq1BNFaRwQ0D', '121232750069160064 ', 'ZsbY1vDRNy'),
('9i3HzsdTxjZYok1', '121232750069160112 ', 'ZsbY1vDRNy'),
('9jMJwTYeXFDRoi5', '121232750069160247 ', 'Lswq5eabBA'),
('9NosKvWzawu1S6A', '121232750069160203 ', 'h2JUTqd47i'),
('9QcXvOwJldCH6Mx', '121232750069160199 ', 'ZsbY1vDRNy'),
('9XclgWVNYtx7p2v', '121232750069160154 ', 'Z8nJgh9eDV'),
('Ac9GSnNLuqKib6C', '121232750069160236 ', 'Z8nJgh9eDV'),
('AhFylD7KYtmdNaP', '121232750069160014 ', 'RgL4tJex8h'),
('AKr2p1L5hjixyFw', '121232750069160111 ', 'pJMvHAFSE6'),
('aLSBkEAuX6jPsNe', '121232750069160269', 'pJMvHAFSE6'),
('aoJc6u3QM81RqXw', '121232750069160110 I', 'Z8nJgh9eDV'),
('Aq3DhBwC57SkgH0', '121232750069160246', 'RgL4tJex8h'),
('aTAeFuxkn82byQz', '121232750069160127 ', 'h2JUTqd47i'),
('AtM9FlNfOiQGn6w', '121232750069160146 ', 'ZsbY1vDRNy'),
('awCy05xtpqWFhXI', '121232750069160032  ', 'pJMvHAFSE6'),
('B0piS9R7yLtMaIF', '121232750069160231 ', 'pJMvHAFSE6'),
('B4kc9wfYsvGbjtT', '121232750069160003 ', 'Lswq5eabBA'),
('BdDzSKrJV0MYvOl', '121232750069160135 ', 'RgL4tJex8h'),
('BMAyjwT20x6srkR', '121232750069160011 ', 'pJMvHAFSE6'),
('bU5RZMagOL2WvTB', '121232750069160165 ', 'RgL4tJex8h'),
('c10eAJBOpv3yW2h', '121232750069160043 ', 'RgL4tJex8h'),
('CIRWr6vu4E1qfUL', '121232750069160181  ', 'pJMvHAFSE6'),
('cjZFxBVqDLUdmM7', '121232750069160274 ', 'pJMvHAFSE6'),
('CQOgtYspI7K8Rqk', '121232750069160233 ', 'RgL4tJex8h'),
('Cr8UhXZsGpSKngo', '121232750069160213  ', 'ZsbY1vDRNy'),
('CUtnPfNgIycvSMF', '121232750069160056 ', 'Z8nJgh9eDV'),
('cuUvP94HJz5yZa3', '121232750069160095 ', 'ZsbY1vDRNy'),
('dBePOpmfJ2lXKn4', '121232750069160037 ', 'Lswq5eabBA'),
('DJ4wHWRAdMF6e38', '121232750069160136 ', 'h2JUTqd47i'),
('dP9SKJEQeVwly2k', '121232750069160151 ', 'Z8nJgh9eDV'),
('dtvSAWIKg7YZ10y', '121232750069160104 ', 'RgL4tJex8h'),
('dwJgBWYQ3iOsFRA', '121232750069160250 ', 'ZsbY1vDRNy'),
('e14wkC3HU2tRAnf', '121232750069160065 ', 'h2JUTqd47i'),
('ef6CsdM2buVpyBF', '121232750069160015 ', 'Lswq5eabBA'),
('egV3mENBwAYWsUh', '121232750069160130  ', 'ZsbY1vDRNy'),
('eiUHQ3GhXMzFE5y', '121232750069160163  ', 'Lswq5eabBA'),
('EL3NS8OpRMyBUsA', '121232750069160044 ', 'ZsbY1vDRNy'),
('emZE2Sx8tHNDwPu', '121232750069160197 ', 'ZsbY1vDRNy'),
('EwtpSFMY3PNZlzq', '121232750069160094 ', 'ZsbY1vDRNy'),
('F0MpEKyOgzTIcuf', '121232750069160226 ', 'Z8nJgh9eDV'),
('FD1c4MoKVk2QqCB', '121232750069160270 ', 'Z8nJgh9eDV'),
('FeDhot8JXysf1CB', '121232750069160024 ', 'Z8nJgh9eDV'),
('fGSejh4MQsCbo6c', '121232750069160005', 'Z8nJgh9eDV'),
('FVdR1g5avDpwhsT', '121232750069160160 ', 'Z8nJgh9eDV'),
('g1G3pZqE0zSmYcK', '121232750069160023 ', 'RgL4tJex8h'),
('g5t2IVUKWbJN9rY', '121232750069160025 ', 'h2JUTqd47i'),
('gabwk9OL4DctZYW', '121232750069160272 ', 'Lswq5eabBA'),
('GaqWscZdQntRO3h', '121232750069160261 ', 'h2JUTqd47i'),
('gCMIhZTX7kJjV6A', '121232750069160179 ', 'h2JUTqd47i'),
('GKUBLXmCPHjOvWS', '121232750069160031 ', 'Lswq5eabBA'),
('gld0fweIvNjQBrx', '121232750069160273 ', 'Lswq5eabBA'),
('gpxnAFYDZQsRfXw', '121232750069160117 ', 'Z8nJgh9eDV'),
('GshW3knMI57jHVR', '121232750069160192 ', 'pJMvHAFSE6'),
('gwSiGjxqKzLDhRE', '121232750069160036 ', 'Lswq5eabBA'),
('h3GBoIDy1g5JdNw', '121232750069160070 ', 'h2JUTqd47i'),
('HCuJxemtyPWUqnp', '121232750069160102 ', 'RgL4tJex8h'),
('hgtvJmbIrkan3f8', '121232750069160135 ', 'RgL4tJex8h'),
('hKFdiH5tqTCYu02', '121232750069160180 ', 'h2JUTqd47i'),
('HnQcsVjkMZWq7CN', '121232750069160075 ', 'pJMvHAFSE6'),
('hnzlksoJRP1jYye', '121232750069160159 ', 'ZsbY1vDRNy'),
('Hsbvon8O0YSD9Be', '121232750069160166 ', 'ZsbY1vDRNy'),
('hTXpmeQSUrVnsNJ', '121232750069160184 ', 'ZsbY1vDRNy'),
('hvGlqNVPQXirIpe', '121232750069160069 ', 'RgL4tJex8h'),
('hvUISGTeAoYlpmu', '121232750069160061 ', 'Z8nJgh9eDV'),
('I5WaNuwfXeSxlOA', '121232750069160018 ', 'Z8nJgh9eDV'),
('IfrCumUcDPy29Qn', '121232750069160240 ', 'Z8nJgh9eDV'),
('IFZKuQWyhdcE3wH', '121232750069160221 ', 'Lswq5eabBA'),
('IjEKOVwJNQvA6Px', '121232750069160106 ', 'RgL4tJex8h'),
('iMKOkSHnzV5mWp9', '121232750069160012 ', 'ZsbY1vDRNy'),
('iMuYcbIAw2ap4Dy', '121232750069160028 ', 'Lswq5eabBA'),
('InXz6MJYs3Ppjde', '121232750069160259 ', 'h2JUTqd47i'),
('iPCmDOIxzrTV6pc', '121232750069160103 ', 'h2JUTqd47i'),
('IS81qEfHoCRBcnX', '121232750069160071 ', 'h2JUTqd47i'),
('IW5Y0X8GMg7Ocru', '121232750069160174 ', 'Lswq5eabBA'),
('j0mEpbKGLnRXNHf', '121232750069160132 ', 'h2JUTqd47i'),
('JfLTZKkE3n7NmUR', '121232750069160047 ', 'h2JUTqd47i'),
('jNY7oZD2GE9bkBa', '121232750069160008 ', 'ZsbY1vDRNy'),
('jqAbPoT7aKp5Udz', '121232750069160212 ', 'h2JUTqd47i'),
('jqR6KgpHXUxJkW3', '121232750069160145 ', 'pJMvHAFSE6'),
('JsrZgSUpoj4aAlN', '121232750069160150 ', 'RgL4tJex8h'),
('jyQ0cg6pIBC2RYm', '121232750069160090 ', 'Lswq5eabBA'),
('JyZfYbRpgvLqscX', '121232750069160257 ', 'ZsbY1vDRNy'),
('k9uVd1rgMJSh5UE', '121232750069160158 ', 'ZsbY1vDRNy'),
('Ka9oypmrY0LJBhn', '121232750069160054 ', 'Lswq5eabBA'),
('kbQiC6gRNJGSX8u', '121232750069160027 ', 'ZsbY1vDRNy'),
('kcviXVdW94hopPQ', '121232750069160140', 'RgL4tJex8h'),
('kwJpPTQ2MEejVfh', '121232750069160059 ', 'ZsbY1vDRNy'),
('Lj62SYdlgIzAi0y', '121232750069160252 ', 'RgL4tJex8h'),
('Lk5SdebWt1HQNAT', '121232750069160038 ', 'RgL4tJex8h'),
('lofWzimRhkE4OM9', '121232750069160148 ', 'Z8nJgh9eDV'),
('lRN7QrMGqoeakWZ', '121232750069160168 ', 'RgL4tJex8h'),
('M04GaHxld3OXJcK', '121232750069160129 ', 'ZsbY1vDRNy'),
('M37miQBfG8kjAIu', '121232750069160078 ', 'pJMvHAFSE6'),
('MA0yUuCWSzIv7F6', '121232750069160081 ', 'Lswq5eabBA'),
('MGd0ZSqCuHp1IAf', '121232750069160002 ', 'Lswq5eabBA'),
('MgIpb8dS7DhmXCV', '121232750069160190 ', 'Z8nJgh9eDV'),
('MhmVUZxvkcXCSwl', '121232750069160186 ', 'RgL4tJex8h'),
('mIdNWgzbHifk9pP', '121232750069160175 ', 'h2JUTqd47i'),
('MiLzebWFY47wNvu', '121232750069160001 ', 'h2JUTqd47i'),
('MIqQpKiteYBhaZH', '121232750069160187 ', 'ZsbY1vDRNy'),
('MO7pNFXwZrqunUH', '121232750069160093 ', 'Z8nJgh9eDV'),
('mpjX5aZzS8W3yB7', '121232750069160143 ', 'pJMvHAFSE6'),
('mXaiYMONbletSoJ', '121232750069160060 ', 'RgL4tJex8h'),
('mzeoh2XBWbKDZga', '121232750069160074 ', 'RgL4tJex8h'),
('N07MjTF8oC4GvVr', '121232750069160219 ', 'ZsbY1vDRNy'),
('N1us7nRmAk482Ow', '121232750069160022 ', 'pJMvHAFSE6'),
('n3GdBwCW0bmg82O', '121232750069160035 ', 'pJMvHAFSE6'),
('N3R5bqpU8arX7AG', '121232750069160115 ', 'ZsbY1vDRNy'),
('NCA94JBbqp2oTvD', '121232750069160125 ', 'ZsbY1vDRNy'),
('NFi9wGpqc6bL7XV', '121232750069160045 ', 'Lswq5eabBA'),
('nGqoi5V8usegwfP', '121232750069160016 ', 'ZsbY1vDRNy'),
('nI5rAZt9Epo2mRd', '121232750069160260 ', 'Z8nJgh9eDV'),
('NiYbmZzpVFdK9ga', '121232750069160182 ', 'Z8nJgh9eDV'),
('nMesI02qouXkHTm', '121232750069160238 ', 'ZsbY1vDRNy'),
('o4P56bezFcsCWOG', '121232750069160137 ', 'h2JUTqd47i'),
('O4wjobQ2TBauxYW', '121232750069160126 ', 'RgL4tJex8h'),
('OeGh5v2rtYSI8j4', '121232750069160133 ', 'h2JUTqd47i'),
('OGWyS4FMjdrIsDn', '121232750069160242 ', 'Lswq5eabBA'),
('ohkJ3lm5d8Ov7xP', '121232750069160228 ', 'pJMvHAFSE6'),
('OibNpnHJ4ZyRQud', '121232750069160085 ', 'RgL4tJex8h'),
('ONpwPiv2Hq1mgzo', '121232750069160019 ', 'RgL4tJex8h'),
('OPfTIjQGiXC0BZW', '121232750069160173 ', 'h2JUTqd47i'),
('OV8F2XgqyI1tRZU', '121232750069160204 ', 'ZsbY1vDRNy'),
('P6EcOmy79GJKQlt', '121232750069160155 ', 'Z8nJgh9eDV'),
('PaF06gdC9G8qZDV', '121232750069160196 ', 'h2JUTqd47i'),
('PBJ5m2ncoMTUVs7', '121232750069160042 ', 'RgL4tJex8h'),
('PDGjsnfJRBLxkhQ', '121232750069160101 ', 'pJMvHAFSE6'),
('pdw2EL5NqZmsonO', '121232750069160268 ', 'Z8nJgh9eDV'),
('pj5AMuDfnRE20Lq', '121232750069160055 ', 'h2JUTqd47i'),
('PRMIdleFtrJb25a', '121232750069160253 ', 'RgL4tJex8h'),
('pruz7CP39NsbaQ4', '121232750069160142 ', 'Z8nJgh9eDV'),
('PSqLN7TB6CziojR', '121232750069160039 ', 'Z8nJgh9eDV'),
('PWb71SwrUHQ58Kp', '121232750069160198 ', 'Z8nJgh9eDV'),
('Q10n9Zo2YiEz6qA', '121232750069160144 ', 'h2JUTqd47i'),
('QdrYMnWhDFjqem7', '121232750069160072 ', 'pJMvHAFSE6'),
('qEWDUtSaw8zVmZ1', '121232750069160245 ', 'pJMvHAFSE6'),
('QN7Gs9dOnrf32jz', '121232750069160118 ', 'ZsbY1vDRNy'),
('QPqURE7dFSYjHtv', '121232750069160266 ', 'Z8nJgh9eDV'),
('qS73hYod6s2FBrA', '121232750069160020 ', 'pJMvHAFSE6'),
('r2LaDsqA1Qh4oiN', '121232750069160017 ', 'Lswq5eabBA'),
('R81weQYOiSmU2zH', '121232750069160223 ', 'ZsbY1vDRNy'),
('raxy0l4PtD87mbX', '121232750069160049 ', 'pJMvHAFSE6'),
('RFGv4Xha8eP6Zwm', '121232750069160211 ', 'Z8nJgh9eDV'),
('RJGe8NbFIHrUmk6', '121232750069160227 ', 'h2JUTqd47i'),
('RkLjASYHTcvh8ys', '121232750069160046 ', 'h2JUTqd47i'),
('rNdaERCpyU2f0XB', '121232750069160194 ', 'ZsbY1vDRNy'),
('ROE1hdxY84ZgJsI', '121232750069160178 ', 'Z8nJgh9eDV'),
('ru7x6mlOBwZnkYc', '121232750069160030 ', 'pJMvHAFSE6'),
('rVHY61SAveTNZtk', '121232750069160164 ', 'RgL4tJex8h'),
('s5EAfC3GqmDhLc7', '121232750069160218 ', 'h2JUTqd47i'),
('SIzqnvhLyXYCJ9E', '121232750069160010 ', 'ZsbY1vDRNy'),
('SnDxNRj5AkZPXd4', '121232750069160255 ', 'RgL4tJex8h'),
('SPOTow2RqiLxKE3', '121232750069160033 ', 'h2JUTqd47i'),
('SYqcmbDjOzXQ4TR', '121232750069160189 ', 'h2JUTqd47i'),
('T4jDQ0Eq9dtWfw5', '121232750069160210 ', 'ZsbY1vDRNy'),
('tf83IPRTEKWy06w', '121232750069160087 ', 'RgL4tJex8h'),
('ti5vmYQoheN7s96', '121232750069160073 ', 'ZsbY1vDRNy'),
('TqHLgGalQmViDAI', '121232750069160013 ', 'Z8nJgh9eDV'),
('TsMYN7kmnVg04jX', '121232750069160271 ', 'Z8nJgh9eDV'),
('TsYgxpRHetKEOuI', '121232750069160120 ', 'Lswq5eabBA'),
('TveOhAmI1zElyjZ', '121232750069160077 ', 'pJMvHAFSE6'),
('Ub7yeMzgEA9m0a1', '121232750069160058', 'pJMvHAFSE6'),
('uFf3XIUNzDnciWo', '121232750069160080  ', 'pJMvHAFSE6'),
('UKDVTl6FAwocIRk', '121232750069160138 ', 'ZsbY1vDRNy'),
('UkKzGa9NnHvQ2C8', '121232750069160209 ', 'pJMvHAFSE6'),
('UNpG9nsvB6aFDr2', '121232750069160134 ', 'ZsbY1vDRNy'),
('unTgxGIZXmFqvPd', '121232750069160097 ', 'Lswq5eabBA'),
('uo2rHGN1fqiMxXR', '121232750069160185 ', 'pJMvHAFSE6'),
('UO9seNifwT2bLqZ', '121232750069160040 ', 'ZsbY1vDRNy'),
('UoakzupY5JecSMB', '121232750069160267 ', 'pJMvHAFSE6'),
('UwlRrti75JanOQe', '121232750069160220 R', 'Z8nJgh9eDV'),
('UxjHZ7i6K3oLbeq', '121232750069160048 ', 'h2JUTqd47i'),
('uXlReCIorKN60Tp', '121232750069160188 ', 'Z8nJgh9eDV'),
('UZfQm9axJhoT2LR', '121232750069160170 ', 'pJMvHAFSE6'),
('UzTc2jx3yrFSo9K', '121232750069160139 ', 'Lswq5eabBA'),
('V3h82UEIjWwt0s1', '121232750069160241 ', 'RgL4tJex8h'),
('vce5aO6Aq1DfCTz', '121232750069160401 ', 'Z8nJgh9eDV'),
('vEHViCPaktDX3SO', '121232750069160169 ', 'Z8nJgh9eDV'),
('VeOzQclURWoiD4x', '121232750069160006 ', 'pJMvHAFSE6'),
('vG3Kag5ysVZjeLF', '121232750069160116 ', 'RgL4tJex8h'),
('Vhm7FHks6TzWdrq', '121232750069160208 ', 'pJMvHAFSE6'),
('VhZjWGreqbBz2gO', '121232750069160249 ', 'Lswq5eabBA'),
('vugkebEHn8sTlBt', '121232750069160121 ', 'RgL4tJex8h'),
('VzKPoxrv1ONT7XE', '121232750069160207 ', 'Lswq5eabBA'),
('W1gBX0pGOUq9JxT', '121232750069160009 ', 'Lswq5eabBA'),
('W3c4aN5dxPfz9hK', '121232750069160265 ', 'pJMvHAFSE6'),
('w4Oqxj9Z0WLhQls', '121232750069160084 ', 'Lswq5eabBA'),
('WdxYPM0ZiDEbmz3', '121232750069160275 ', 'pJMvHAFSE6'),
('WEJGdktX5csMfbQ', '121232750069160032  ', 'pJMvHAFSE6'),
('WFf4v0LmRx1VTNH', '121232750069160202 ', 'ZsbY1vDRNy'),
('wFyKxrjCvc7GYM5', '121232750069160195 ', 'pJMvHAFSE6'),
('WGJvQ1SeEU2FKZd', '121232750069160229 ', 'pJMvHAFSE6'),
('wkD0nQqJLKU2sXZ', '121232750069160216 ', 'h2JUTqd47i'),
('wRngFfKT6sbNH4U', '121232750069160205 ', 'RgL4tJex8h'),
('wTquBKJMfRUreyH', '121232750069160105', 'RgL4tJex8h'),
('wWDIAdyBqtORp71', '121232750069160156 ', 'h2JUTqd47i'),
('X0J1ovkjmUeYL4s', '121232750069160026 ', 'pJMvHAFSE6'),
('x6NOet5CTWbwKFP', '121232750069160251 ', 'ZsbY1vDRNy'),
('xcHDFTUOAaRueVf', '121232750069160067 ', 'h2JUTqd47i'),
('xF10wzYWIcBmkqT', '121232750069160254 ', 'ZsbY1vDRNy'),
('xfDpXdLv51rSGFw', '121232750069160041 ', 'ZsbY1vDRNy'),
('xh5sOINHKRlAZJD', '121232750069160053 ', 'Z8nJgh9eDV'),
('xh6tfAk3TjHGEYr', '121232750069160263 ', 'pJMvHAFSE6'),
('Xk7INHW84ixZr9h', '121232750069160214 ', 'h2JUTqd47i'),
('xLq2rNS1FeXMw9K', '121232750069160082 ', 'Lswq5eabBA'),
('XM1yqzxcHsErIvK', '121232750069160119 ', 'RgL4tJex8h'),
('xs5cZn2B6LCfWqP', '121232750069160123 ', 'h2JUTqd47i'),
('xU3Nl7YBSWbsciC', '121232750069160161 ', 'h2JUTqd47i'),
('XU9tgsLuBcnPhbf', '121232750069160193 ', 'h2JUTqd47i'),
('y976NmKEVulakwI', '121232750069160004 ', 'pJMvHAFSE6'),
('yg2XPnIaDRquM4t', '121232750069160099 ', 'Lswq5eabBA'),
('yHxqCPBQ3gLuNW1', '121232750069160109 ', 'pJMvHAFSE6'),
('ymXusWlxYHw9neZ', '121232750069160066 ', 'Lswq5eabBA'),
('z2wuJXSCT1snNrL', '121232750069160092 ', 'RgL4tJex8h'),
('Z5aVn6MLr8ACd2j', '121232750069160107 ', 'Lswq5eabBA'),
('Z8qoFSK6lhiHtMu', '121232750069160262 ', 'ZsbY1vDRNy'),
('ZdmG3BkWOJMK42E', '121232750069160147 ', 'pJMvHAFSE6'),
('zIrJvQV4KH2eN9l', '121232750069160215 ', 'h2JUTqd47i'),
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
('0cYxOzigaRDWTV9', '121232750069160089 ', 'FEBRI HARIYANI LESTARI	', '121232750069160089 ', '12-02-2003', 'siswa'),
('0DvmAuLHnEfw3tx', '6733758660300070 ', 'Jannatul Ma\'wa, S.Pd.I ', '6733758660300070 ', '13-08-1980', 'guru'),
('0fJUraYuS7GBt3E', '121232750069160172 ', 'NAILLA FATINAH	', '121232750069160172 ', '08-07-2004', 'siswa'),
('0GAmF2S4ZDLXYp9', '0', 'paiadmin', 'paiadmin', 'asasas', 'admin'),
('0hNPqTLaA9J7mus', '121232750069160201 ', 'RAIHAN FAHMI FEBRIANSYAH	', '121232750069160201 ', '14-02-2004', 'siswa'),
('0ltHN1peLrPdqQh', '121232750069160113 ', 'IMAM SAMUDRA	', '121232750069160113 ', '10-03-2004', 'siswa'),
('0VyTq6xlFDkuKJi', '121232750069160167 ', 'MUHAMAD SAHRUL SAHRI	', '121232750069160167 ', '21-06-2003', 'siswa'),
('18Fzn2gyj0lKpu9', '121232750069160237 ', 'SATRIA EGI RAHMADANI	', '121232750069160237 ', '31-10-2004', 'siswa'),
('1GkMA4Pvai7bnqQ', '121232750069160149 ', 'MUHAMAD RAFLI	', '121232750069160149 ', '07-02-2004', 'siswa'),
('1mfXStgLRAyUDnj', '121232750069160057 ', 'CHINDY MERYANNISA PUTRI	', '121232750069160057 ', '01-07-2004', 'siswa'),
('24LbI8osP1iArBE', '121232750069160007 ', 'ADHINDA DWI MEILANY	', '121232750069160007 ', '08-05-2004', 'siswa'),
('2gR71ns3bl56Eio', '121232750069160124 ', 'KURNIA FATMALINTANG PERTIWI	', '121232750069160124 ', '27-07-2004', 'siswa'),
('2hAyMWBDNPkj4YT', '121232750069160232 ', 'SALSABILA AZIS	', '121232750069160232 ', '29-06-2004', 'siswa'),
('2IpuhDgSrT835jB', '121232750069160100 ', 'GINA TASYA RAUDHATUL ZANNAH', '121232750069160100 ', '10-02-2004', 'siswa'),
('2LIjC8YS5dGWOvq', '121232750069160062 ', 'DEWA GEGER HARTONO PUTRA', '121232750069160062 ', '07-08-2017', 'siswa'),
('2wjPI48dyarZDn6', '121232750069160153 ', 'MUHAMAD RYZKI	', '121232750069160153 ', '14-05-2004', 'siswa'),
('2XioFA8mO9bVdzg', '121232750069160098 ', 'FITRIYAH DEWI	', '121232750069160098 ', '07-01-2004', 'siswa'),
('30lZU6Y24axejwd', '121232750069160162 ', 'MUHAMMAD RAMADI	', '121232750069160162 ', '12-09-2002', 'siswa'),
('31ZXzQfnkyiqaSC', '121232750069160243 ', 'SIFA NUR MALASARI	', '121232750069160243 ', '10-05-2003', 'siswa'),
('34LMwGljBrSHeZz', '12111', 'ASA', '12111', '08-08-2017', 'siswa'),
('36sOIk8C1aRgrcq', '11', 'dfdsf', '11', '01-08-2017', 'siswa'),
('389ofaWuSqyIdzO', '121232750069160239 ', 'SEFTINA		', '121232750069160239 ', '27-09-2004', 'siswa'),
('3iORr1ANPL2gCmD', '121232750069160225 ', 'ROBIATUL ADAWIYAH	', '121232750069160225 ', '12-03-2004', 'siswa'),
('3lHaFN6RZLnm7zy', '121232750069160258 ', 'TRI SATRIA SUDIAR	', '121232750069160258 ', '04-04-2004', 'siswa'),
('3MXvwmt7nsWVdbU', '121232750069160191 ', 'NUZUL RAHMAN	', '121232750069160191 ', '25-07-2003', 'siswa'),
('4dXbHeG0SVjTEOY', '121232750069160256 ', 'SYIFA NUR MUTTAQIN	', '121232750069160256 ', '22-04-2004', 'siswa'),
('4fT5YFRpvlbidmK', '121232750069160088 ', 'FARHAN FADILA', '121232750069160088 ', '26-12-2003', 'siswa'),
('4gADpNtiTdsmwo9', '1325254', 'ryo', '1325254', '01-08-2017', 'guru'),
('4ieU2R1lnaDHB0y', '121232750069160122 ', 'KANDRA DIANSYAH H.P.A.T.C.S.D	', '121232750069160122 ', '08-05-2004', 'siswa'),
('4syNo9zY0khPQE5', '121232750069160248 ', 'SITI PATIMAH	', '121232750069160248 ', '24-05-2004', 'siswa'),
('5F3BHMapVJhCNSl', '121232750069160128 ', 'LUTHFI FATIMAH	', '121232750069160128 ', '07-05-2004', 'siswa'),
('5krOsSlf0oC1DLg', '121232750069160177 ', 'NAZWA ALAISYA BALQIS	', '121232750069160177 ', '18-10-2004', 'siswa'),
('5ReMmQa3glrO2zI', '121232750069160217 ', 'RIKZMA AULIA PRATIWI	', '121232750069160217 ', '22-06-2004', 'siswa'),
('5wLskWIUR4ntBjE', '121232750069160114 ', 'INDAH OKTAVIANI	', '121232750069160114 ', '04-10-2004', 'siswa'),
('65yDq0zI39UcRSF', '0143750652300083 ', 'Nur`Afifah, S.Ag ', '0143750652300083 ', '11-06-1972', 'guru'),
('6GLtSaQomJx7dWh', '121232750069160171 ', 'NAHDA ERISKA	', '121232750069160171 ', '01-08-2004', 'siswa'),
('6jSxcyDPloqZtfg', '121232750069160235 ', 'SAPUTRA RAMADAN	', '121232750069160235 ', '01-11-2003', 'siswa'),
('6Snb2fOeQLNgvx7', '1212327500691B60400 ', 'IKHSAN MAULANA	', '1212327500691B60400 ', '13-10-2003', 'siswa'),
('7CMWmEj2X9P0iSA', '121232750069160076 ', 'DWI YULIANTO	', '121232750069160076 ', '08-07-2003', 'siswa'),
('7KGUJbAQ8HfkV0n', '121232750069160141 ', 'MOH. RANGGA MAULANA	', '121232750069160141 ', '06-09-2004', 'siswa'),
('7mJ0Qep6KNHlAcI', '121232750069160079 ', 'EKO ROGANI	', '121232750069160079 ', '01-01-2002', 'siswa'),
('7mxBa9bO42YElwR', '5835741644200032Drs.', 'Drs. H. WIRA ATMAJA', '5835741644200032Drs. ', '03-05-1963', 'guru'),
('7PjkFMInNyHUoS6', '121232750069160244 ', 'SITI HASANAH		', '121232750069160244 ', '14-12-2003', 'siswa'),
('8GDf0Wh9Sc5oPdE', '121232750069160264 ', 'WIDYA TUN UMAROH', '121232750069160264 ', '05-06-2003', 'siswa'),
('8GRYxjorAWnLalQ', '8765432366', 'sdfsf', '8765432366', '08-08-2017', 'guru'),
('8x7rtlvceUIEWmq', '121232750069160206 ', 'RAMA FIKRI HAIKAL	', '121232750069160206 ', '07-06-2004', 'siswa'),
('93RAk7dpX6B8LmU', '121232750069160029 ', 'ANDINI LESTANTI	', '121232750069160029 ', '24-08-2004', 'siswa'),
('9eyMq1BNFaRwQ0D', '121232750069160064 ', 'DEWI CAHYANI	', '121232750069160064 ', '11-06-2004', 'siswa'),
('9i3HzsdTxjZYok1', '121232750069160112 ', 'ILHAM NURCAYA', '121232750069160112 ', '20-11-2003', 'siswa'),
('9jMJwTYeXFDRoi5', '121232750069160247 ', 'SITI NURHALIZA	', '121232750069160247 ', '31-03-2004', 'siswa'),
('9NosKvWzawu1S6A', '121232750069160203 ', 'RAIHANAH SHINTA	', '121232750069160203 ', '10-12-2003', 'siswa'),
('9PKJZdnOGf3MBql', '7036737643110000 ', 'Larby Alhadi, S.Ei ', '7036737643110000 ', '10-01-1989', 'guru'),
('9QcXvOwJldCH6Mx', '121232750069160199 ', 'RAFLY ALKASAFY	', '121232750069160199 ', '18-01-2004', 'siswa'),
('9ULMBAYXCoPseHQ', '898989', 'asdasd', '898989', '08-08-2017', 'guru'),
('9XclgWVNYtx7p2v', '121232750069160154 ', 'MUHAMMAD ADHI PRIHANTORO	', '121232750069160154 ', '17-01-2004', 'siswa'),
('Ac9GSnNLuqKib6C', '121232750069160236 ', 'SARAH DIAN CAHYANI	', '121232750069160236 ', '25-09-2004', 'siswa'),
('AhFylD7KYtmdNaP', '121232750069160014 ', 'AHMAD DIMAS APRIYADI	', '121232750069160014 ', '23-04-2004', 'siswa'),
('AKr2p1L5hjixyFw', '121232750069160111 ', 'IHKSAN MAULANA	', '121232750069160111 ', '13-10-2003', 'siswa'),
('aLSBkEAuX6jPsNe', '121232750069160269', 'ZACKY UBAY DILLA	', '121232750069160269', '06-05-2003', 'siswa'),
('aoJc6u3QM81RqXw', '121232750069160110 I', 'IS DAHLIA	', '121232750069160110 I', '11-10-2001', 'siswa'),
('Aq3DhBwC57SkgH0', '121232750069160246', 'SITI NUR AISYAH', '121232750069160246', '24-05-2004', 'siswa'),
('aTAeFuxkn82byQz', '121232750069160127 ', 'LISNAWATI	', '121232750069160127 ', '29-06-2004', 'siswa'),
('ATHrVUn0q45fkJl', '1649753655113330', 'H. Asmawi ', '1649753655113330', '26-05-1952', 'guru'),
('AtM9FlNfOiQGn6w', '121232750069160146 ', 'MUHAMAD FAHMI RIZAL	', '121232750069160146 ', '02-02-2004', 'siswa'),
('awCy05xtpqWFhXI', '121232750069160032  ', 'ANIS MUTIARA', '121232750069160032  ', '11-11-2002', 'siswa'),
('B0piS9R7yLtMaIF', '121232750069160231 ', 'SALSA NABILA	', '121232750069160231 ', '08-11-2003', 'siswa'),
('B4kc9wfYsvGbjtT', '121232750069160003 ', 'ABDUL ZIKRI		', '121232750069160003 ', '10-07-2004', 'siswa'),
('BdDzSKrJV0MYvOl', '121232750069160135 ', 'MAULANA	', '121232750069160135 ', '04-04-2003', 'siswa'),
('bKNR0Vm6yYzWGLF', '9935756657200030 ', 'Suhartono Setiawan, S.Pd.I ', '9935756657200030 ', '03-05-1978', 'guru'),
('BMAyjwT20x6srkR', '121232750069160011 ', 'ADITYA SAPUTRA	', '121232750069160011 ', '22-07-2003', 'siswa'),
('bU5RZMagOL2WvTB', '121232750069160165 ', 'MUHAMAD RIFAYZ	', '121232750069160165 ', '31-03-2004', 'siswa'),
('BuP90i6sEpUHTzW', '9352762663200030 ', 'Edi Siswanto, S.Pd ', '9352762663200030 ', '20-10-1984', 'guru'),
('c0By1NluMmJ85EH', 'sdsd', 'sdsw', 'sdsd', '07-08-2017', 'siswa'),
('c10eAJBOpv3yW2h', '121232750069160043 ', 'ARYA RAKA RAINENDRA	', '121232750069160043 ', '09-09-2003', 'siswa'),
('CIRWr6vu4E1qfUL', '121232750069160181  ', 'NOVAN FIRMANSYAH', '121232750069160181  ', '24-07-2004', 'siswa'),
('cjZFxBVqDLUdmM7', '121232750069160274 ', 'DIO ARDJI GHIFARI 	', '121232750069160274 ', '16-01-2004', 'siswa'),
('Cne19QrB58kH3YI', '7050751653300060 ', 'Ai Laila Mustafa, S.Ag ', '7050751653300060 ', '18-07-1973', 'guru'),
('CQOgtYspI7K8Rqk', '121232750069160233 ', 'SAMUJI	', '121232750069160233 ', '27-09-2002', 'siswa'),
('Cr8UhXZsGpSKngo', '121232750069160213  ', 'RIAN NUR FIRMANSYAH', '121232750069160213  ', '02-08-2004', 'siswa'),
('CUtnPfNgIycvSMF', '121232750069160056 ', 'BINTANG FAJRI PRATAMA AL-FATIH', '121232750069160056 ', '06-03-2004', 'siswa'),
('cuUvP94HJz5yZa3', '121232750069160095 ', 'FIRMAN ADI PRASTYO	', '121232750069160095 ', '04-05-2004', 'siswa'),
('dBePOpmfJ2lXKn4', '121232750069160037 ', 'ANTARANGGA IHSAN	', '121232750069160037 ', '24-04-2004', 'siswa'),
('DJ4wHWRAdMF6e38', '121232750069160136 ', 'MAULANA ARDHIAN CIPTO HANDOYO	', '121232750069160136 ', '02-06-2004', 'siswa'),
('dJqWNT39O7Vi0zB', '1212', 'ASAasdswa', '1212', '08-08-2017', 'siswa'),
('DKoGai0NrMlvBVP', '0940764666200032 ', 'Sukri Ahmadi, S.Kom ', '0940764666200032 ', '08-06-1986', 'guru'),
('dP9SKJEQeVwly2k', '121232750069160151 ', 'MUHAMAD RIFKY HABIBI	', '121232750069160151 ', '13-12-2003', 'siswa'),
('Dpyq0VGS75PLBnI', '6639736638200040 ', 'H. M. Syarbini, S.Pd.I ', '6639736638200040 ', '07-03-1958', 'guru'),
('dtvSAWIKg7YZ10y', '121232750069160104 ', 'HAUZAN AKBAR AFIF SAPUTRA	', '121232750069160104 ', '31-01-2004', 'siswa'),
('ducF3LIXsot1lmz', '3558744646300032 ', 'ARDI ROHAYADI, S.Pd.I', '3558744646300032 ', '26-02-1966', 'guru'),
('dwJgBWYQ3iOsFRA', '121232750069160250 ', 'SYAIFULLOH	', '121232750069160250 ', '20-03-2001', 'siswa'),
('e14wkC3HU2tRAnf', '121232750069160065 ', 'DHELA NUR FATIMAH	', '121232750069160065 ', '23-10-2003', 'siswa'),
('ef6CsdM2buVpyBF', '121232750069160015 ', 'AHMAD RAMADANI	', '121232750069160015 ', '23-10-2003', 'siswa'),
('egV3mENBwAYWsUh', '121232750069160130  ', 'M. EKA ADITYA PRATAMA PUTRA', '121232750069160130  ', '04-06-2004', 'siswa'),
('eiUHQ3GhXMzFE5y', '121232750069160163  ', 'MUHAMMAD RAYYAN PUTRA ASIFI', '121232750069160163  ', '05-10-2004', 'siswa'),
('EkRHVm5BacS2gqo', '124256', 'ryo', '124256', '01-08-2017', 'siswa'),
('EL3NS8OpRMyBUsA', '121232750069160044 ', 'ARYA SUBARI	', '121232750069160044 ', '07-08-2017', 'siswa'),
('emZE2Sx8tHNDwPu', '121232750069160197 ', 'RADITIA MAULA ZAIDAN	', '121232750069160197 ', '02-06-2003', 'siswa'),
('etNEH9DUrZFoT6O', '121212', 'Fadly Rifai', '121212', '23-08-2017', 'siswa'),
('EwtpSFMY3PNZlzq', '121232750069160094 ', 'FIRDZA ISA AXCELDI	', '121232750069160094 ', '16-09-2004', 'siswa'),
('F0MpEKyOgzTIcuf', '121232750069160226 ', 'ROHADATTUL AISY AWALUDIN	', '121232750069160226 ', '28-10-2004', 'siswa'),
('fAgk9sEBcG1NHa8', '2537761661300020 ', 'Agustina Sri Rahayu ', '2537761661300020 ', '17-08-1980', 'guru'),
('FD1c4MoKVk2QqCB', '121232750069160270 ', 'ZAFIRA SILA SAMI	', '121232750069160270 ', '24-04-2004', 'siswa'),
('FeDhot8JXysf1CB', '121232750069160024 ', 'ALFIAN FATHUROHMAN	', '121232750069160024 ', '11-04-2004', 'siswa'),
('fGSejh4MQsCbo6c', '121232750069160005', 'ADE ANANDA AMELIA', '121232750069160005', '27-03-2004', 'siswa'),
('Fv6iflL3PANM7Ht', '8436759659300003 ', 'Nasrullah, S.Pd.I ', '8436759659300003 ', '06-08-1977', 'guru'),
('FVdR1g5avDpwhsT', '121232750069160160 ', 'M. IRFAN KHALIK	BEKASI	', '121232750069160160 ', '24-09-2003', 'siswa'),
('g1G3pZqE0zSmYcK', '121232750069160023 ', 'ALFI PUTRA GUNAWAN	', '121232750069160023 ', '11-05-2004', 'siswa'),
('g5t2IVUKWbJN9rY', '121232750069160025 ', 'ALFIAN NUROHMAN		', '121232750069160025 ', '13-06-2004', 'siswa'),
('gabwk9OL4DctZYW', '121232750069160272 ', 'ZAIDUL KHOIR RAHMANTYO	', '121232750069160272 ', '24-04-2004', 'siswa'),
('GaqWscZdQntRO3h', '121232750069160261 ', 'WAHYU FAHREZA	', '121232750069160261 ', '04-06-2004', 'siswa'),
('gCMIhZTX7kJjV6A', '121232750069160179 ', 'NIDA SHOHWATUL MUSLIMAH	', '121232750069160179 ', '07-06-2004', 'siswa'),
('GKUBLXmCPHjOvWS', '121232750069160031 ', 'ANGGRAINI GALUH HERTANSYAN	', '121232750069160031 ', '31-07-2003', 'siswa'),
('gld0fweIvNjQBrx', '121232750069160273 ', 'ZAKIYYAH	', '121232750069160273 ', '05-08-2004', 'siswa'),
('gpxnAFYDZQsRfXw', '121232750069160117 ', 'IRSYAD VARIANSYAH ALVAN	', '121232750069160117 ', '22-12-2002', 'siswa'),
('GshW3knMI57jHVR', '121232750069160192 ', 'PADIA FEBRIANI	', '121232750069160192 ', '31-01-2004', 'siswa'),
('gwSiGjxqKzLDhRE', '121232750069160036 ', 'ANNIS FITIA NURHASANAH	', '121232750069160036 ', '29-06-2004', 'siswa'),
('GYfRlvNAZXV3O8q', '5044747649200070 ', 'Drs. H. Abdul Salam ', '5044747649200070 ', '12-07-1969', 'guru'),
('H0sdcBxW5Kl97to', '5153761663300070 ', 'Tati Sri Hartati, S.Pd ', '5153761663300070 ', '21-08-1983', 'guru'),
('h3GBoIDy1g5JdNw', '121232750069160070 ', 'DIMAS SETIAWAN	', '121232750069160070 ', '31-12-2003', 'siswa'),
('HCuJxemtyPWUqnp', '121232750069160102 ', 'HARIZA AULIA ZAHRA	', '121232750069160102 ', '21-01-2004', 'siswa'),
('hgtvJmbIrkan3f8', '121232750069160135 ', 'MAULANA	', '121232750069160135 ', '04-04-2003', 'siswa'),
('hKFdiH5tqTCYu02', '121232750069160180 ', 'NOVRI ARBI KURNIA SHANDY	', '121232750069160180 ', '29-11-2004', 'siswa'),
('HnQcsVjkMZWq7CN', '121232750069160075 ', 'DWI PERMANA SAPUTRA	', '121232750069160075 ', '17-06-2004', 'siswa'),
('hnzlksoJRP1jYye', '121232750069160159 ', 'MUHAMMAD FATWA PRASETIYA	', '121232750069160159 ', '11-05-2004', 'siswa'),
('HpxoqymZFCk3lgR', '121232750069160005 ', 'ADE ANANDA AMELIA	', '121232750069160005 ', '07-08-2017', 'siswa'),
('Hsbvon8O0YSD9Be', '121232750069160166 ', 'MUHAMMAD ROFI\'UL HUDA	', '121232750069160166 ', '29-04-2004', 'siswa'),
('hTXpmeQSUrVnsNJ', '121232750069160184 ', 'NUR AVIFAH MAHARANI	', '121232750069160184 ', '27-04-2004', 'siswa'),
('hvGlqNVPQXirIpe', '121232750069160069 ', 'DIMAS PRAWIRA TAMA	', '121232750069160069 ', '09-09-2004', 'siswa'),
('hvUISGTeAoYlpmu', '121232750069160061 ', 'DEVI WAHYUNI	', '121232750069160061 ', '18-01-2004', 'siswa'),
('I5WaNuwfXeSxlOA', '121232750069160018 ', 'AJI BRAHMASTA', '121232750069160018 ', '20-03-2004', 'siswa'),
('IANUD2hXH9Zgwcx', '2038763664200043 ', 'Arba Nugroho, M.Pd ', '2038763664200043 ', '29-03-1988', 'guru'),
('IfrCumUcDPy29Qn', '121232750069160240 ', 'SELVIA	', '121232750069160240 ', '21-03-2004', 'siswa'),
('IFZKuQWyhdcE3wH', '121232750069160221 ', 'RIZKY ADRIAN RAMADHANA	', '121232750069160221 ', '15-11-2003', 'siswa'),
('ihU2bDJsPSOXqQT', '4444746648200040 ', 'Agus, BA ', '4444746648200040 ', '12-11-1968', 'guru'),
('IjEKOVwJNQvA6Px', '121232750069160106 ', 'HAZZURA KHOSYATILLAH	', '121232750069160106 ', '18-01-2004', 'siswa'),
('iMKOkSHnzV5mWp9', '121232750069160012 ', 'AGIL SETYO FRIYADI	', '121232750069160012 ', '06-06-2004', 'siswa'),
('iMuYcbIAw2ap4Dy', '121232750069160028 ', 'AMELLIA PUTRI NEMIRA ANJANI	', '121232750069160028 ', '21-11-2003', 'siswa'),
('InXz6MJYs3Ppjde', '121232750069160259 ', 'VAHREZA ANANDA PUTRI	', '121232750069160259 ', '08-10-2003', 'siswa'),
('iPCmDOIxzrTV6pc', '121232750069160103 ', 'HARLAN MIFTAH N.	', '121232750069160103 ', '04-09-2004', 'siswa'),
('IS81qEfHoCRBcnX', '121232750069160071 ', 'DIMAS SUWANDA	', '121232750069160071 ', '24-03-2004', 'siswa'),
('IW5Y0X8GMg7Ocru', '121232750069160174 ', 'NANDA LINTANG PURNAMA SARI	', '121232750069160174 ', '25-07-2004', 'siswa'),
('j0mEpbKGLnRXNHf', '121232750069160132 ', 'M. RIFKY RAMADHANI	', '121232750069160132 ', '10-08-2004', 'siswa'),
('JfLTZKkE3n7NmUR', '121232750069160047 ', 'AULIA PUTRI JUWITA	', '121232750069160047 ', '27-07-2004', 'siswa'),
('jNY7oZD2GE9bkBa', '121232750069160008 ', 'ADINDA APRILIA WIBOWO PUTRI	', '121232750069160008 ', '26-04-2003', 'siswa'),
('jqAbPoT7aKp5Udz', '121232750069160212 ', 'RHYZMA QHURSUBHY	', '121232750069160212 ', '14-04-2004', 'siswa'),
('jqR6KgpHXUxJkW3', '121232750069160145 ', 'MUHAMAD DERMAWAN	', '121232750069160145 ', '23-12-2003', 'siswa'),
('JsrZgSUpoj4aAlN', '121232750069160150 ', 'MUHAMAD RIDHO	', '121232750069160150 ', '08-12-2003', 'siswa'),
('jyQ0cg6pIBC2RYm', '121232750069160090 ', 'FERDIE NUR HIDAYAT	', '121232750069160090 ', '28-11-2004', 'siswa'),
('JyZfYbRpgvLqscX', '121232750069160257 ', 'TASYA HANIFAH	', '121232750069160257 ', '19-05-2004', 'siswa'),
('k9uVd1rgMJSh5UE', '121232750069160158 ', 'MUHAMMAD FAJAR SIANGGIAN	', '121232750069160158 ', '01-01-2004', 'siswa'),
('Ka9oypmrY0LJBhn', '121232750069160054 ', 'BAYU EKA NANDA	', '121232750069160054 ', '18-09-2004', 'siswa'),
('kbQiC6gRNJGSX8u', '121232750069160027 ', 'AMANDA AHLAQUL SADIYAH	', '121232750069160027 ', '19-08-2004', 'siswa'),
('kcviXVdW94hopPQ', '121232750069160140', 'MOCHAMAD FADLI INSANI	', '121232750069160140', '30-05-2004', 'siswa'),
('kwJpPTQ2MEejVfh', '121232750069160059 ', 'DAMAR PRATAMA	', '121232750069160059 ', '03-06-2005', 'siswa'),
('lBhEiNXUcr7SPkR', '2121', 'Wira', '2121', '04-08-2017', 'guru'),
('Lj62SYdlgIzAi0y', '121232750069160252 ', 'SYARIFAH SALWA ZEN AL-HADDAD	', '121232750069160252 ', '21-04-2003', 'siswa'),
('Lk5SdebWt1HQNAT', '121232750069160038 ', 'ARDIYANSAH	', '121232750069160038 ', '03-11-2004', 'siswa'),
('lofWzimRhkE4OM9', '121232750069160148 ', 'MUHAMMAD KUSDIANTO	', '121232750069160148 ', '01-07-2004', 'siswa'),
('lRN7QrMGqoeakWZ', '121232750069160168 ', 'MUTIA NUR AZZAHRA	', '121232750069160168 ', '25-09-2004', 'siswa'),
('M04GaHxld3OXJcK', '121232750069160129 ', 'M ZAKI ZAIDAN	', '121232750069160129 ', '17-03-2004', 'siswa'),
('M37miQBfG8kjAIu', '121232750069160078 ', 'EKA KARTIKA	', '121232750069160078 ', '19-03-2004', 'siswa'),
('M5xKsl7tUzoJRwN', '2439760662210072 ', 'Mimi Jamilah, S.Pd ', '2439760662210072 ', '09-01-1990', 'guru'),
('MA0yUuCWSzIv7F6', '121232750069160081 ', 'ERIK MAULANA SIDIK	', '121232750069160081 ', '07-06-2003', 'siswa'),
('MGd0ZSqCuHp1IAf', '121232750069160002 ', 'ABDUL BASIT', '121232750069160002 ', '10-06-2004', 'siswa'),
('MgIpb8dS7DhmXCV', '121232750069160190 ', 'NURPITA	', '121232750069160190 ', '05-02-2004', 'siswa'),
('MhmVUZxvkcXCSwl', '121232750069160186 ', 'NUR INTAN TAZMAHAL	', '121232750069160186 ', '18-06-2004', 'siswa'),
('mIdNWgzbHifk9pP', '121232750069160175 ', 'NAWAL AZUHRA	', '121232750069160175 ', '02-12-2003', 'siswa'),
('MiLzebWFY47wNvu', '121232750069160001 ', 'ABDILLAH HUSIN ALFATIH	', '121232750069160001 ', '15-02-2004', 'siswa'),
('MIqQpKiteYBhaZH', '121232750069160187 ', 'NURAINI	', '121232750069160187 ', '17-04-2003', 'siswa'),
('MO7pNFXwZrqunUH', '121232750069160093 ', 'FINGKAN NUR AZIZAH', '121232750069160093 ', '07-08-2017', 'siswa'),
('mpjX5aZzS8W3yB7', '121232750069160143 ', 'MUHAMAD ALFHA RIZKY	', '121232750069160143 ', '14-05-2003', 'siswa'),
('mXaiYMONbletSoJ', '121232750069160060 ', 'DENNY RIZKY SETIAWAN	', '121232750069160060 ', '29-01-2004', 'siswa'),
('mzeoh2XBWbKDZga', '121232750069160074 ', 'DITA WULAN PRADINA	', '121232750069160074 ', '17-03-2004', 'siswa'),
('N07MjTF8oC4GvVr', '121232750069160219 ', 'RISKA AMELIA PUTRI	', '121232750069160219 ', '24-03-2004', 'siswa'),
('N1us7nRmAk482Ow', '121232750069160022 ', 'ALDINO DIBUGA	', '121232750069160022 ', '12-08-2003', 'siswa'),
('N2bsgmv8ztYXw1i', '9057760663300010 ', 'Dede Fitria, S.Pd ', '9057760663300010 ', '25-07-1982', 'guru'),
('n3GdBwCW0bmg82O', '121232750069160035 ', 'ANNA KURNIAWATI	', '121232750069160035 ', '14-05-2004', 'siswa'),
('N3R5bqpU8arX7AG', '121232750069160115 ', 'IRENA FEBRIANTI	', '121232750069160115 ', '04-02-2004', 'siswa'),
('NCA94JBbqp2oTvD', '121232750069160125 ', 'KUSRAMDHANI	', '121232750069160125 ', '06-11-2003', 'siswa'),
('NFi9wGpqc6bL7XV', '121232750069160045 ', 'ATRI PRASETYO		', '121232750069160045 ', '05-11-2003', 'siswa'),
('nGqoi5V8usegwfP', '121232750069160016 ', 'AHMAD RIFAI DARAJAT	', '121232750069160016 ', '12-04-2004', 'siswa'),
('nI5rAZt9Epo2mRd', '121232750069160260 ', 'VALEND NUR CAHYA		', '121232750069160260 ', '29-02-2004', 'siswa'),
('NiYbmZzpVFdK9ga', '121232750069160182 ', 'NOVITASARI	', '121232750069160182 ', '09-06-2003', 'siswa'),
('nMesI02qouXkHTm', '121232750069160238 ', 'SAYYIDA A\'INI	', '121232750069160238 ', '23-12-2003', 'siswa'),
('nMJOoN6XgwiHdY8', '8838746649300060 ', 'Tintin mariyah, S.Ag ', '8838746649300060 ', '26-05-1968', 'guru'),
('NzjCtdVDU62cFBW', '0', 'asd', 'aa', 'aaaaa', 'admin'),
('o4P56bezFcsCWOG', '121232750069160137 ', 'MILA BIDARI HAWA	', '121232750069160137 ', '31-12-2003', 'siswa'),
('O4wjobQ2TBauxYW', '121232750069160126 ', 'LIRUPINA KHADIJAH	', '121232750069160126 ', '16-09-2002', 'siswa'),
('o7V0SKUgTy1rEqk', '7846759661300080 ', 'Nia Kurnayati, S.Pd  ', '7846759661300080 ', '14-05-1981', 'guru'),
('oB2YmlLfXkSy8JZ', '1121111', 'kurnia', '1121111', '05-08-2017', 'siswa'),
('OeGh5v2rtYSI8j4', '121232750069160133 ', 'MARISCA AULIA	', '121232750069160133 ', '20-01-2004', 'siswa'),
('OGWyS4FMjdrIsDn', '121232750069160242 ', 'SHINTA YUNIASHARI HARIADI	', '121232750069160242 ', '01-06-2004', 'siswa'),
('ohkJ3lm5d8Ov7xP', '121232750069160228 ', 'SABAR SUMBODRO	', '121232750069160228 ', '22-01-2004', 'siswa'),
('OibNpnHJ4ZyRQud', '121232750069160085 ', 'FAHRI ALI RAHIM	', '121232750069160085 ', '07-02-2004', 'siswa'),
('OILZfbch6jCxXUJ', '1537746648300080 ', 'Ida Hamidah, S.Pd ', '1537746648300080 ', '05-12-1968', 'guru'),
('oivVu1xYKB2MkzC', '8945764666467382', 'Manin Hidayat ', '8945764666467382', '21-11-1977', 'guru'),
('ONpwPiv2Hq1mgzo', '121232750069160019 ', 'ALAM DWI AGPRIYANDO	', '121232750069160019 ', '10-08-2003', 'siswa'),
('OPfTIjQGiXC0BZW', '121232750069160173 ', 'NANDA HIDAYAH	', '121232750069160173 ', '29-02-2004', 'siswa'),
('OV8F2XgqyI1tRZU', '121232750069160204 ', 'RAMADANDI SETIAWAN	', '121232750069160204 ', '06-10-2004', 'siswa'),
('P6EcOmy79GJKQlt', '121232750069160155 ', 'MUHAMMAD ALDIRA IRWANTO	', '121232750069160155 ', '09-08-2004', 'siswa'),
('p7RJYGi45Dq20uA', '0101', 'Romi', '0101', '04-08-2017', 'siswa'),
('PaF06gdC9G8qZDV', '121232750069160196 ', 'PUTRI RUBI AWALIAH	', '121232750069160196 ', '01-05-2004', 'siswa'),
('PBJ5m2ncoMTUVs7', '121232750069160042 ', 'ARWAA SHOBIHAH	', '121232750069160042 ', '21-06-2004', 'siswa'),
('PDGjsnfJRBLxkhQ', '121232750069160101 ', 'HADIANTO NUR FADHLI	', '121232750069160101 ', '03-11-2004', 'siswa'),
('pdw2EL5NqZmsonO', '121232750069160268 ', 'YOGI PRADANA	', '121232750069160268 ', '28-01-2002', 'siswa'),
('pj5AMuDfnRE20Lq', '121232750069160055 ', 'BAYU HARDI YUDA	', '121232750069160055 ', '10-06-2003', 'siswa'),
('PRMIdleFtrJb25a', '121232750069160253 ', 'SYAWAL ALIF FABIAN	', '121232750069160253 ', '19-10-2004', 'siswa'),
('pruz7CP39NsbaQ4', '121232750069160142 ', 'MUAMAR ROIS	', '121232750069160142 ', '', 'siswa'),
('PSqLN7TB6CziojR', '121232750069160039 ', 'ARGA FAUZAN ALFARIZI	', '121232750069160039 ', '01-04-2004', 'siswa'),
('PWb71SwrUHQ58Kp', '121232750069160198 ', 'RAFID AHMAD IRMANSYAH	', '121232750069160198 ', '07-01-2004', 'siswa'),
('Q10n9Zo2YiEz6qA', '121232750069160144 ', 'MUHAMAD BAYU SAPUTRA	', '121232750069160144 ', '06-01-2003', 'siswa'),
('QdjVzxl2KoSOIDZ', '222', '2', '222', '08-08-2017', 'guru'),
('QdrYMnWhDFjqem7', '121232750069160072 ', 'DINA CHAIRUNISSA	', '121232750069160072 ', '27-08-2004', 'siswa'),
('qEWDUtSaw8zVmZ1', '121232750069160245 ', 'SITI NUR AFIFAH	', '121232750069160245 ', '05-01-2004', 'siswa'),
('QN7Gs9dOnrf32jz', '121232750069160118 ', 'ISKANDAR ARIEF NULHAKIM	', '121232750069160118 ', '26-04-2004', 'siswa'),
('qpA3LIT5aMD2QNv', '454545', 'Fadly Rifai', '454545', '13-08-2017', 'siswa'),
('QPqURE7dFSYjHtv', '121232750069160266 ', 'YEYET SITI NURJANAH	', '121232750069160266 ', '01-04-2004', 'siswa'),
('qS73hYod6s2FBrA', '121232750069160020 ', 'ALBEY FAUZAN HIDAYAT	', '121232750069160020 ', '04-08-2003', 'siswa'),
('r2LaDsqA1Qh4oiN', '121232750069160017 ', 'AISYA AULIA CAHYA	', '121232750069160017 ', '12-04-2004', 'siswa'),
('R81weQYOiSmU2zH', '121232750069160223 ', 'RIZKY RAHMAD DANI', '121232750069160223 ', '20-10-2003', 'siswa'),
('raxy0l4PtD87mbX', '121232750069160049 ', 'AVILA PUTRI SHAFA	', '121232750069160049 ', '10-04-2004', 'siswa'),
('RFGv4Xha8eP6Zwm', '121232750069160211 ', 'REZA JANUAR HANAFI	', '121232750069160211 ', '10-01-2004', 'siswa'),
('RJGe8NbFIHrUmk6', '121232750069160227 ', 'ROY ZAKHONIA RAMADAN	', '121232750069160227 ', '06-11-2003', 'siswa'),
('RkLjASYHTcvh8ys', '121232750069160046 ', 'AULIA NURHIKMAH	', '121232750069160046 ', '22-08-2004', 'siswa'),
('rNdaERCpyU2f0XB', '121232750069160194 ', 'PRETTY REZKYA AZAHRO	', '121232750069160194 ', '29-03-2004', 'siswa'),
('ROE1hdxY84ZgJsI', '121232750069160178 ', 'NENI APRILIYANTI	', '121232750069160178 ', '25-04-2004', 'siswa'),
('roLwE6gHVJexQ1D', '0858730631200012 ', 'Zaenal Abidin, S.Pd.I ', '0858730631200012 ', '23-07-1975', 'guru'),
('ru7x6mlOBwZnkYc', '121232750069160030 ', 'ANGGI PRATIWI	', '121232750069160030 ', '21-06-2004', 'siswa'),
('rVHY61SAveTNZtk', '121232750069160164 ', 'MUHAMMAD RIFAL	', '121232750069160164 ', '10-09-2003', 'siswa'),
('S0vlIzmX8bsVA65', '7440747649200040 ', 'Dudung Abdul Latif, S.Ag ', '7440747649200040 ', '08-11-1969', 'guru'),
('s5EAfC3GqmDhLc7', '121232750069160218 ', 'RINA AFRILIANI	', '121232750069160218 ', '22-04-2004', 'siswa'),
('SIzqnvhLyXYCJ9E', '121232750069160010 ', 'ADITYA MAHENDRA	', '121232750069160010 ', '03-03-2004', 'siswa'),
('SnDxNRj5AkZPXd4', '121232750069160255 ', 'SYIFA JALIYYA	', '121232750069160255 ', '29-05-2004', 'siswa'),
('SPOTow2RqiLxKE3', '121232750069160033 ', 'ANISA WIDYA PUTRI	', '121232750069160033 ', '04-03-2004', 'siswa'),
('sy6T90ekbDdGAwK', '2033744643200000 ', 'Drs.H.Tutang Z.A.G ', '2033744643200000 ', '01-07-1965', 'guru'),
('SYqcmbDjOzXQ4TR', '121232750069160189 ', 'NURMA WULANDARI	', '121232750069160189 ', '14-05-2004', 'siswa'),
('t16odS4bqiBkTzr', '0011', 'Dadang', '0011', '08-08-2017', 'siswa'),
('T4jDQ0Eq9dtWfw5', '121232750069160210 ', 'RENALDI ADRIAN	', '121232750069160210 ', '30-04-2003', 'siswa'),
('tf83IPRTEKWy06w', '121232750069160087 ', 'FANDI PRATAMA	', '121232750069160087 ', '25-01-2004', 'siswa'),
('ti5vmYQoheN7s96', '121232750069160073 ', 'DITA FITRIA PRAMESTI	', '121232750069160073 ', '23-11-2003', 'siswa'),
('TqHLgGalQmViDAI', '121232750069160013 ', 'AHMAD DANIAL FAYYADH	', '121232750069160013 ', '20-10-2004', 'siswa'),
('TsMYN7kmnVg04jX', '121232750069160271 ', 'ZAHRA NURUL AINI	', '121232750069160271 ', '04-01-2004', 'siswa'),
('TsYgxpRHetKEOuI', '121232750069160120 ', 'JENITA PUTRI	', '121232750069160120 ', '12-01-2004', 'siswa'),
('TveOhAmI1zElyjZ', '121232750069160077 ', 'DZAQY AL FAIZ	', '121232750069160077 ', '13-06-2003', 'siswa'),
('twdkeAEQ7rj5c4m', '1235367', 'ryo', '1235367', '31-08-2017', 'guru'),
('txVRIHFNGnJp8Yi', '676767', 'Abdul Latif', '676767', '30-07-2017', 'guru'),
('tY08Ad19vV7F4s2', '7036737643110003 ', 'Syarifuddin, S.Kom ', '7036737643110003 ', '29-09-1989', 'guru'),
('Ub7yeMzgEA9m0a1', '121232750069160058', 'CITRA ZAINI	', '121232750069160058', '05-10-2004', 'siswa'),
('uEKV7q8lGvyQFbh', '7138759661300080 ', 'Renny Dimyati, S.Pd ', '7138759661300080 ', '06-08-1981', 'guru'),
('uFf3XIUNzDnciWo', '121232750069160080  ', 'ELMA TRI RAHAYU SUPRIYATNA', '121232750069160080  ', '24-07-2004', 'siswa'),
('UKDVTl6FAwocIRk', '121232750069160138 ', 'MIMI RUBBIATUL ADAWIYAH	', '121232750069160138 ', '09-07-2004', 'siswa'),
('UkKzGa9NnHvQ2C8', '121232750069160209 ', 'RANGGA BUDI ALIYANSYAH	', '121232750069160209 ', '13-06-2004', 'siswa'),
('UNpG9nsvB6aFDr2', '121232750069160134 ', 'MARSELINA PUTRI HANDAYANI	', '121232750069160134 ', '03-03-2004', 'siswa'),
('unTgxGIZXmFqvPd', '121232750069160097 ', 'FITRIA DAMAYANTI	', '121232750069160097 ', '26-12-2002', 'siswa'),
('unVg0rCYlEHmO5I', '0', 'admin', 'admin', 'admin', 'admin'),
('uo2rHGN1fqiMxXR', '121232750069160185 ', 'NUR AZIZAH	', '121232750069160185 ', '20-05-2004', 'siswa'),
('UO9seNifwT2bLqZ', '121232750069160040 ', 'ARNETTA BUNGA CINTA ROSA	', '121232750069160040 ', '02-01-2004', 'siswa'),
('UoakzupY5JecSMB', '121232750069160267 ', 'YOGA INDRA SETIAWAN	', '121232750069160267 ', '16-07-2003', 'siswa'),
('uOvq2LcZ3Xe1wj5', '1649753655110040 ', 'Ta`ih Sulaiman, S.Ag ', '1649753655110040 ', '17-02-1975', 'guru'),
('UwlRrti75JanOQe', '121232750069160220 R', ' DYAH TRIYAS HARI	', '121232750069160220 RISMA', '01-12-2004', 'siswa'),
('UxjHZ7i6K3oLbeq', '121232750069160048 ', 'AURA KHAIRUNNISA	', '121232750069160048 ', '20-02-2004', 'siswa'),
('uXlReCIorKN60Tp', '121232750069160188 ', 'NURDIEN PRAMA	', '121232750069160188 ', '16-04-2003', 'siswa'),
('UZfQm9axJhoT2LR', '121232750069160170 ', 'NADIN FAKHRIAH MAFAZI	', '121232750069160170 ', '25-07-2004', 'siswa'),
('UzTc2jx3yrFSo9K', '121232750069160139 ', 'MITA ARYANTI	', '121232750069160139 ', '16-04-2004', 'siswa'),
('V3h82UEIjWwt0s1', '121232750069160241 ', 'SEPIA	', '121232750069160241 ', '23-09-2003', 'siswa'),
('vce5aO6Aq1DfCTz', '121232750069160401 ', 'NADHIFAH NAILAH	', '121232750069160401 ', '11-12-2004', 'siswa'),
('vEHViCPaktDX3SO', '121232750069160169 ', 'MUTIARA SHAHIRA	', '121232750069160169 ', '05-09-2004', 'siswa'),
('VeOzQclURWoiD4x', '121232750069160006 ', 'ADE AYU ANDIRA	', '121232750069160006 ', '26-05-2004', 'siswa'),
('vG3Kag5ysVZjeLF', '121232750069160116 ', 'IRSYA FADILLA	', '121232750069160116 ', '06-02-2004', 'siswa'),
('Vhm7FHks6TzWdrq', '121232750069160208 ', 'RANGGA ADITYA	', '121232750069160208 ', '30-06-2004', 'siswa'),
('VhZjWGreqbBz2gO', '121232750069160249 ', 'SITI SAFKA RIZQIYYAH		', '121232750069160249 ', '13-12-2004', 'siswa'),
('vugkebEHn8sTlBt', '121232750069160121 ', 'JULIYANTI	', '121232750069160121 ', '02-07-2003', 'siswa'),
('VzKPoxrv1ONT7XE', '121232750069160207 ', 'RAMDI SALIM	', '121232750069160207 ', '03-01-2004', 'siswa'),
('W1gBX0pGOUq9JxT', '121232750069160009 ', 'ADITYA BIMO WIDIYANTO		', '121232750069160009 ', '21-12-2003', 'siswa'),
('W3c4aN5dxPfz9hK', '121232750069160265 ', 'WIRDA AYU ASTARI	', '121232750069160265 ', '10-12-2003', 'siswa'),
('w4Oqxj9Z0WLhQls', '121232750069160084 ', 'FADHILA BAIHAQI	', '121232750069160084 ', '04-05-2004', 'siswa'),
('WdxYPM0ZiDEbmz3', '121232750069160275 ', 'ELLY ERNAWATI 	', '121232750069160275 ', '02-03-2004', 'siswa'),
('WEJGdktX5csMfbQ', '121232750069160032  ', 'ANIS MUTIARA', '121232750069160032  ', '11-11-2002', 'siswa'),
('WFf4v0LmRx1VTNH', '121232750069160202 ', 'RAIHAN RAFIF SYAEFUDIN SAPUTRA	', '121232750069160202 ', '17-09-2004', 'siswa'),
('wFyKxrjCvc7GYM5', '121232750069160195 ', 'PUTRI INAYAH	', '121232750069160195 ', '01-02-2004', 'siswa'),
('WGJvQ1SeEU2FKZd', '121232750069160229 ', 'SAHRULLOH	', '121232750069160229 ', '17-12-2003', 'siswa'),
('wkD0nQqJLKU2sXZ', '121232750069160216 ', 'RIFQI FADHILA SULAEMAN	', '121232750069160216 ', '12-06-2004', 'siswa'),
('wRngFfKT6sbNH4U', '121232750069160205 ', 'RAMA DWI PUTRA	', '121232750069160205 ', '09-06-2004', 'siswa'),
('wTquBKJMfRUreyH', '121232750069160105', 'HAYATI MARDHIYYAH ADILA	', '121232750069160105', '13-09-2004', 'siswa'),
('wWDIAdyBqtORp71', '121232750069160156 ', 'MUHAMMAD ASHRI	', '121232750069160156 ', '19-12-2003', 'siswa'),
('X0J1ovkjmUeYL4s', '121232750069160026 ', 'ALFIN ALFIAN	', '121232750069160026 ', '16-09-2003', 'siswa'),
('x6NOet5CTWbwKFP', '121232750069160251 ', 'SYALAISHA PUTRI AMANI	', '121232750069160251 ', '14-04-2004', 'siswa'),
('xcHDFTUOAaRueVf', '121232750069160067 ', 'DIMAS ADITYA PRAMUKTI	', '121232750069160067 ', '17-04-2004', 'siswa'),
('xF10wzYWIcBmkqT', '121232750069160254 ', 'SYIFA AULIA PUTRI	', '121232750069160254 ', '19-02-2004', 'siswa'),
('xfDpXdLv51rSGFw', '121232750069160041 ', 'ARVA EQ SABRINA	', '121232750069160041 ', '17-01-2004', 'siswa'),
('xh5sOINHKRlAZJD', '121232750069160053 ', 'BAMBANG APRILIANTO	', '121232750069160053 ', '07-04-2004', 'siswa'),
('xh6tfAk3TjHGEYr', '121232750069160263 ', 'WAVI ADIPUTRA	', '121232750069160263 ', '24-11-2005', 'siswa'),
('Xk7INHW84ixZr9h', '121232750069160214 ', 'RICCO DWI MAHENDRA	', '121232750069160214 ', '05-03-2004', 'siswa'),
('xLq2rNS1FeXMw9K', '121232750069160082 ', 'ERVIANA SALVIRA	', '121232750069160082 ', '15-02-2004', 'siswa'),
('XM1yqzxcHsErIvK', '121232750069160119 ', 'JANES RUHA NINGSIH	', '121232750069160119 ', '29-06-2003', 'siswa'),
('xs5cZn2B6LCfWqP', '121232750069160123 ', 'KEYSYA RAHHADATUL \'AISY	', '121232750069160123 ', '28-10-2003', 'siswa'),
('xU3Nl7YBSWbsciC', '121232750069160161 ', 'MUHAMMAD JAELANI', '121232750069160161 ', '08-09-2003', 'siswa'),
('XU9tgsLuBcnPhbf', '121232750069160193 ', 'PRADIPTA SEPTRIAN JATI	', '121232750069160193 ', '04-09-2003', 'siswa'),
('y976NmKEVulakwI', '121232750069160004 ', 'ADAM RIYADI	', '121232750069160004 ', '05-10-2002', 'siswa'),
('yg2XPnIaDRquM4t', '121232750069160099 ', 'GHOZALI AL GHIFARI	', '121232750069160099 ', '03-04-2004', 'siswa'),
('yHxqCPBQ3gLuNW1', '121232750069160109 ', 'ICHWAN ADLI	', '121232750069160109 ', '14-06-2004', 'siswa'),
('ymXusWlxYHw9neZ', '121232750069160066 ', 'DIMAS ADI PUTRA	', '121232750069160066 ', '24-05-2004', 'siswa'),
('z2wuJXSCT1snNrL', '121232750069160092 ', 'FIQRI SAPUTRA', '121232750069160092 ', '26-11-2003', 'siswa'),
('Z5aVn6MLr8ACd2j', '121232750069160107 ', 'HENDRYAWAN CIPTA MULIA	', '121232750069160107 ', '01-03-2004', 'siswa'),
('Z8qoFSK6lhiHtMu', '121232750069160262 ', 'WARSILATUT TOYYIBAH	', '121232750069160262 ', '12-12-2003', 'siswa'),
('ZdmG3BkWOJMK42E', '121232750069160147 ', 'MUHAMAD FERDIANSYAH	', '121232750069160147 ', '20-01-2003', 'siswa'),
('zIrJvQV4KH2eN9l', '121232750069160215 ', 'RIDHO ALIF PUTRA	', '121232750069160215 ', '26-05-2004', 'siswa'),
('zjLRueMqW7trfZc', '121232750069160230 ', 'SAKA WIJAYA	', '121232750069160230 ', '08-06-2004', 'siswa'),
('ZnkY6VPldWb3jtf', '121232750069160083 ', 'EVA SOPHIYANTI', '121232750069160083 ', '07-08-2017', 'siswa'),
('ZtpHjaOGShCnxl9', '5835741644200032', 'Drs. H. WIRA ATMAJA', '5835741644200032', '03-05-1963', 'guru'),
('ZudTiByGJRN98AI', '3232', 'xzxz', '3232', '01-08-2017', 'guru'),
('ZYMAisuwdr604hl', '121232750069160021 ', 'ALBIAN RAMADHAN	', '121232750069160021 ', '09-11-2003', 'siswa');

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
