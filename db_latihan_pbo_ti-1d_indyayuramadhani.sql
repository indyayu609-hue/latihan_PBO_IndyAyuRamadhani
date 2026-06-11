-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2026 at 05:26 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_ti-1d_indyayuramadhani`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(255) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` varchar(100) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'The Avengers: Secret Wars', '2026-05-01 13:00:00', 2, 50000.00, 'Regular', 'Dolby Digital 5.1', 'Row G', NULL, NULL, NULL, NULL),
(2, 'The Avengers: Secret Wars', '2026-05-01 15:45:00', 1, 50000.00, 'Regular', 'Dolby Digital 5.1', 'Row E', NULL, NULL, NULL, NULL),
(3, 'Avatar 4', '2026-05-02 12:00:00', 4, 55000.00, 'Regular', 'Standard Stereo', 'Row F', NULL, NULL, NULL, NULL),
(4, 'Avatar 4', '2026-05-02 19:30:00', 2, 60000.00, 'Regular', 'Dolby Digital 5.1', 'Row C', NULL, NULL, NULL, NULL),
(5, 'Dune: Part Three', '2026-05-03 14:00:00', 2, 50000.00, 'Regular', 'Standard Stereo', 'Row H', NULL, NULL, NULL, NULL),
(6, 'Dune: Part Three', '2026-05-03 17:00:00', 3, 50000.00, 'Regular', 'Dolby Digital 5.1', 'Row D', NULL, NULL, NULL, NULL),
(7, 'Project Hail Mary', '2026-05-04 20:00:00', 1, 55000.00, 'Regular', 'Dolby Digital 5.1', 'Row J', NULL, NULL, NULL, NULL),
(8, 'The Avengers: Secret Wars', '2026-05-01 14:00:00', 2, 90000.00, 'IMAX', 'Dolby Atmos', 'Row K', '3D-GLS-001', 'Standard Seat Vibration', NULL, NULL),
(9, 'The Avengers: Secret Wars', '2026-05-01 18:00:00', 2, 90000.00, 'IMAX', 'Dolby Atmos', 'Row L', '3D-GLS-002', 'Standard Seat Vibration', NULL, NULL),
(10, 'Avatar 4', '2026-05-02 13:00:00', 3, 95000.00, 'IMAX', 'IMAX 12-Channel', 'Row M', '3D-GLS-045', 'Heavy Shaker Feature', NULL, NULL),
(11, 'Avatar 4', '2026-05-02 16:30:00', 1, 95000.00, 'IMAX', 'IMAX 12-Channel', 'Row N', '3D-GLS-090', 'Heavy Shaker Feature', NULL, NULL),
(12, 'Dune: Part Three', '2026-05-03 11:00:00', 2, 90000.00, 'IMAX', 'Dolby Atmos', 'Row K', NULL, 'Standard Seat Vibration', NULL, NULL),
(13, 'Dune: Part Three', '2026-05-03 15:30:00', 4, 90000.00, 'IMAX', 'Dolby Atmos', 'Row L', NULL, 'Standard Seat Vibration', NULL, NULL),
(14, 'Project Hail Mary', '2026-05-04 19:00:00', 2, 95000.00, 'IMAX', 'IMAX 12-Channel', 'Row M', '3D-GLS-112', 'Heavy Shaker Feature', NULL, NULL),
(15, 'The Avengers: Secret Wars', '2026-05-01 20:30:00', 2, 150000.00, 'Velvet', 'Dolby Atmos', 'Row A', NULL, NULL, 'Premium Quilt Pack A', 'Full Service Butler Call'),
(16, 'The Avengers: Secret Wars', '2026-05-01 23:15:00', 2, 150000.00, 'Velvet', 'Dolby Atmos', 'Row B', NULL, NULL, 'Premium Quilt Pack B', 'Food & Beverage Only'),
(17, 'Avatar 4', '2026-05-02 15:00:00', 2, 175000.00, 'Velvet', 'DTS:X Luxury Audio', 'Row A', NULL, NULL, 'Luxury Silk Pack', 'Full Service Butler Call'),
(18, 'Avatar 4', '2026-05-02 20:45:00', 2, 175000.00, 'Velvet', 'DTS:X Luxury Audio', 'Row C', NULL, NULL, 'Standard Bedding Pack', 'Welcome Drink Only'),
(19, 'Dune: Part Three', '2026-05-03 18:00:00', 2, 150000.00, 'Velvet', 'Dolby Atmos', 'Row B', NULL, NULL, 'Premium Quilt Pack A', 'Full Service Butler Call'),
(20, 'Project Hail Mary', '2026-05-04 21:30:00', 2, 175000.00, 'Velvet', 'DTS:X Luxury Audio', 'Row A', NULL, NULL, 'Luxury Silk Pack', 'Full Service Butler Call');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
