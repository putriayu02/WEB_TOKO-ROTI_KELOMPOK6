-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 09:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpw192_18410100054`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626');

-- --------------------------------------------------------

--
-- Table structure for table `bom_produk`
--

CREATE TABLE `bom_produk` (
  `kode_bom` varchar(100) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `kebutuhan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bom_produk`
--

INSERT INTO `bom_produk` (`kode_bom`, `kode_bk`, `kode_produk`, `nama_produk`, `kebutuhan`) VALUES
('B0001', 'M0002', 'P0001', 'Roti Sobek', '2'),
('B0001', 'M0001', 'P0001', 'Roti Sobek', '4'),
('B0001', 'M0004', 'P0001', 'Roti Sobek', '3'),
('B0002', 'M0001', 'P0002', 'Maryam', '4'),
('B0002', 'M0004', 'P0002', 'Maryam', '3'),
('B0002', 'M0003', 'P0002', 'Maryam', '2'),
('B0003', 'M0002', 'P0003', 'Kue tart coklat', '2'),
('B0003', 'M0003', 'P0003', 'Kue tart coklat', '5'),
('B0003', 'M0005', 'P0003', 'Kue tart coklat', '5'),
('B0004', 'M0001', 'P0004', 'Muffin Cake', '2'),
('B0004', 'M0002', 'P0004', 'Muffin Cake', '0.2'),
('B0004', 'M0003', 'P0004', 'Muffin Cake', '1'),
('B0004', 'M006', 'P0004', 'Muffin Cake', '0.2'),
('B0004', 'M0007', 'P0004', 'Muffin Cake', '0.2'),
('B0004', 'M0008', 'P0004', 'Muffin Cake', '0.2'),
('B0005', 'M0010', 'P0005', 'Cromboloni Cokelat', '2'),
('B0005', 'M0008', 'P0005', 'Cromboloni Cokelat', '1'),
('B0005', 'M0005', 'P0005', 'Cromboloni Cokelat', '0.2'),
('B0005', 'M.0003', 'P0005', 'Cromboloni Cokelat', '0.02'),
('B0006', 'M0016', 'P0006', 'Sandwich', '0.2'),
('B0006', 'M0015', 'P0006', 'Sandwich', '0.1'),
('B0006', 'M0014', 'P0006', 'Sandwich', '0.1'),
('B0006', 'M0012', 'P0006', 'Sandwich', '0.2'),
('B0009', 'M0016', 'P0009', 'Roti Sosis Keju', '1'),
('B0008', 'M0012', 'P0008', 'Burger', '1'),
('B0008', 'M0014', 'P0008', 'Burger', '1'),
('B0008', 'M0015', 'P0008', 'Burger', '1'),
('B0008', 'M0018', 'P0008', 'Burger', '1'),
('B0008', 'M0017', 'P0008', 'Burger', '1'),
('B0007', 'M0004', 'P0007', 'Cromboloni Mix', '0.2'),
('B0007', 'M0003', 'P0007', 'Cromboloni Mix', '0.2'),
('B0007', 'M0005', 'P0007', 'Cromboloni Mix', '0.2'),
('B0007', 'M0010', 'P0007', 'Cromboloni Mix', '1'),
('B0007', 'M0008', 'P0007', 'Cromboloni Mix', '0.2'),
('B0010', 'M0007', 'P0010', 'Macaron Mix 1 box isi 6', '0.1'),
('B0010', 'M0006', 'P0010', 'Macaron Mix 1 box isi 6', '0.25'),
('B0010', 'M0001', 'P0010', 'Macaron Mix 1 box isi 6', '0.5'),
('B0009', 'M0004', 'P0009', 'Roti Sosis Keju', '1'),
('B0009', 'M0013', 'P0009', 'Roti Sosis Keju', '1'),
('B0010', 'M0009', 'P0010', 'Macaron Mix 1 box isi 6', '0.1'),
('B0010', 'M0003', 'P0010', 'Macaron Mix 1 box isi 6', '0.1');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama`, `email`, `username`, `password`, `telp`) VALUES
('C0002', 'Rafi Akbar', 'a.rafy@gmail.com', 'rafi', '$2y$10$/UjGYbisTPJhr8MgmT37qOXo1o/HJn3dhafPoSYbOlSN1E7olHIb.', '0856748564'),
('C0003', 'Nagita Silvana', 'bambang@gmail.com', 'Nagita', '$2y$10$47./qEeA/y3rNx3UkoKmkuxoAtmz4ebHSR0t0Bc.cFEEg7cK34M3C', '087804616097'),
('C0004', 'Nadiya', 'nadiya@gmail.com', 'nadiya', '$2y$10$6wHH.7rF1q3JtzKgAhNFy.4URchgJC8R.POT1osTAWmasDXTTO7ZG', '0898765432'),
('C0005', 'mumuy imut gemash', 'mumuy@gmail.com', 'mumuy', '$2y$10$DijglA.KMm0MkN.eQBGg1up0118zYXEWN0q6rwVRd/L2odU.eASkC', '123');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`kode_bk`, `nama`, `qty`, `satuan`, `harga`, `tanggal`) VALUES
('M0001', 'Tepung', '52', 'Kg', 1000, '2020-07-26'),
('M0002', 'Pengembang', '186', 'Kg', 1000, '2024-02-11'),
('M0003', 'Cream', '88', 'Kg', 3000, '2024-02-11'),
('M0004', 'Keju', '64', 'Kg', 4000, '2020-07-26'),
('M0005', 'Coklat', '190', 'Kg', 5000, '2024-02-11'),
('M0006', 'Telur', '100', 'Kg', 30000, '2024-02-11'),
('M0007', 'Gula', '100', 'Kg', 20000, '2024-02-11'),
('M0008', 'Mentega', '100', 'Kg', 15000, '2024-02-11'),
('M0009', 'Butter', '50', 'Kg', 73000, '2024-02-11'),
('M0010', 'Kulit Pastry', '100', 'Kg', 50000, '2024-02-11'),
('M0011', 'Keju Mozarella', '100', 'Kg', 270000, '2024-02-11'),
('M0012', 'Beef Slice', '100', 'Kg', 95000, '2024-02-11'),
('M0013', 'Sosis Sapi', '100', 'Kg', 35000, '2024-02-11'),
('M0014', 'Selada', '10', 'Kg', 30000, '2024-02-11'),
('M0015', 'Keju Slice', '100', 'Kg', 15000, '2024-02-11'),
('M0016', 'Roti Tawar', '50', 'Kg', 20000, '2024-02-11'),
('M0017', 'Roti Burger', '10', 'Kg', 5000, '2024-02-12'),
('M0018', 'Tomat', '10', 'Kg', 5000, '2024-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
(16, 'C0003', 'P0002', 'Maryam', 5, 15000),
(17, 'C0003', 'P0003', 'Kue tart coklat', 2, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `image`, `deskripsi`, `harga`) VALUES
('P0001', 'Roti Sobek', '5f1d915d27dc3.jpg', '																								Roti Enak Sobek Sobek aww\r\n																					', 10000),
('P0002', 'Maryam', '5f1d9154715a4.jpg', '				Roti araym\r\n						', 15000),
('P0003', 'Kue tart coklat', '5f1d924614831.jpg', 'Kuetar dengan varian rasa coklat enak dan lumer rasanya\r\n			', 100000),
('P0004', 'Muffin Cake', '65c8a1b961eca.jpg', '								Kue muffin cocok untuk menemani hari sore anda \r\n									', 10000),
('P0005', 'Cromboloni Cokelat', '65c9c8134b9c8.jpg', '												\r\n												', 25000),
('P0006', 'Sandwich', '65c88e98dc183.jpeg', 'sandwich daging dan keju\r\n			', 10000),
('P0007', 'Cromboloni Mix', '65c9c88fe8ed2.jpg', '								\r\n									', 12000),
('P0008', 'Burger', '65c9c934609e0.jpg', '								\r\n									', 10000),
('P0009', 'Roti Sosis Keju', '65c9c9ca2f315.jpg', '\r\n			', 10000),
('P0010', 'Macaron Mix 1 box isi 6', '65c9d88ba8309.jpg', '\r\n			', 35000);

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`id_order`, `invoice`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`, `status`, `tanggal`, `provinsi`, `kota`, `alamat`, `kode_pos`, `terima`, `tolak`, `cek`) VALUES
(8, 'INV0001', 'C0002', 'P0003', 'Kue tart coklat', 1, 100000, 'Pesanan Baru', '2020-07-27', 'Jawa Timur', 'Surabaya', 'Jl.Tanah Merah Indah 1', '60129', '2', '1', 0),
(9, 'INV0002', 'C0002', 'P0001', 'Roti Sobek', 3, 10000, '0', '2020-07-27', 'Jawa Barat', 'Bandung', 'Jl.Jati Nangor Blok C, 10', '30712', '1', '0', 0),
(10, 'INV0003', 'C0003', 'P0002', 'Maryam', 2, 15000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(11, 'INV0003', 'C0003', 'P0003', 'Kue tart coklat', 1, 100000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(12, 'INV0003', 'C0003', 'P0001', 'Roti Sobek', 1, 10000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(13, 'INV0004', 'C0004', 'P0002', 'Maryam', 1, 15000, '0', '2020-07-26', 'Jawa Timur', 'Sidoarjo', 'Jl.KH Syukur Blok C 18 A', '50987', '1', '0', 0),
(14, 'INV0005', 'C0005', 'P0003', 'Kue tart coklat', 1, 100000, '0', '2424-02-10', 'jabar', 'bdg', 'bdg', '40235', '1', '0', 0),
(15, 'INV0006', 'C0005', 'P0001', 'Roti Sobek', 2, 10000, '0', '2424-02-11', 'jawabarat', 'bdg', 'bandung', '123123', '1', '0', 0),
(16, 'INV0007', 'C0005', 'P0003', 'Kue tart coklat', 1, 100000, '0', '2424-02-11', 'jawabarat', 'bdg', 'bandung', '123123', '1', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_cancel`
--

CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_inventory`
--

CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_omset`
--

CREATE TABLE `report_omset` (
  `id_report_omset` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_omset` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report _penjualan`
--

CREATE TABLE `report _penjualan` (
  `id_report_sell` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_produksi`
--

CREATE TABLE `report_produksi` (
  `id_report_prd` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_profit`
--

CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL,
  `kode_bom` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`kode_bk`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `report_cancel`
--
ALTER TABLE `report_cancel`
  ADD PRIMARY KEY (`id_report_cancel`);

--
-- Indexes for table `report_inventory`
--
ALTER TABLE `report_inventory`
  ADD PRIMARY KEY (`id_report_inv`);

--
-- Indexes for table `report_omset`
--
ALTER TABLE `report_omset`
  ADD PRIMARY KEY (`id_report_omset`);

--
-- Indexes for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  ADD PRIMARY KEY (`id_report_sell`);

--
-- Indexes for table `report_produksi`
--
ALTER TABLE `report_produksi`
  ADD PRIMARY KEY (`id_report_prd`);

--
-- Indexes for table `report_profit`
--
ALTER TABLE `report_profit`
  ADD PRIMARY KEY (`id_report_profit`),
  ADD UNIQUE KEY `kode_bom` (`kode_bom`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `report_cancel`
--
ALTER TABLE `report_cancel`
  MODIFY `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_inventory`
--
ALTER TABLE `report_inventory`
  MODIFY `id_report_inv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_omset`
--
ALTER TABLE `report_omset`
  MODIFY `id_report_omset` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  MODIFY `id_report_sell` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_produksi`
--
ALTER TABLE `report_produksi`
  MODIFY `id_report_prd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_profit`
--
ALTER TABLE `report_profit`
  MODIFY `id_report_profit` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
