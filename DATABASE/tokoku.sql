-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 02:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoku`
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
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626'),
(2, 'dandi', 'dandi'),
(3, 'dandi', 'dandi');

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
('B0004', 'M001', 'P0004', 'Roti Perancis Baguette', '2'),
('B0004', 'M002', 'P0004', 'Roti Perancis Baguette', '2'),
('B0004', 'M004', 'P0004', 'Roti Perancis Baguette', '3'),
('B0005', 'M001', 'P0005', 'Roti Kasur', '3'),
('B0005', 'M002', 'P0005', 'Roti Kasur', '2'),
('B0006', 'M001', 'P0006', 'Roti Bandung / Kasino Pandan', '2'),
('B0006', 'M002', 'P0006', 'Roti Bandung / Kasino Pandan', '2'),
('B0011', 'M003', 'P0011', 'Brownies Fudge / Brownies Sekat', '2'),
('B0011', 'M002', 'P0011', 'Brownies Fudge / Brownies Sekat', '2'),
('B0011', 'M001', 'P0011', 'Brownies Fudge / Brownies Sekat', '2'),
('B0008', 'M001', 'P0008', 'Beef Cheese Melt', '2'),
('B0008', 'M002', 'P0008', 'Beef Cheese Melt', '3'),
('B0008', 'M004', 'P0008', 'Beef Cheese Melt', '1'),
('B0008', 'M005', 'P0008', 'Beef Cheese Melt', '2'),
('B0009', 'M001', 'P0009', 'Roti Blueberry', '2'),
('B0009', 'M002', 'P0009', 'Roti Blueberry', '2'),
('B0010', 'M001', 'P0010', 'Roti Nanas', '3'),
('B0010', 'M002', 'P0010', 'Roti Nanas', '2'),
('B0011', 'M004', 'P0011', 'Brownies Fudge / Brownies Sekat', '2'),
('B0011', 'M005', 'P0011', 'Brownies Fudge / Brownies Sekat', '2'),
('B0012', 'M001', 'P0012', 'Roti Sobek Original', '2'),
('B0012', 'M002', 'P0012', 'Roti Sobek Original', '2'),
('B0012', 'M005', 'P0012', 'Roti Sobek Original', '3'),
('B0013', 'M001', 'P0013', 'Butter Manies', '2'),
('B0013', 'M002', 'P0013', 'Butter Manies', '2'),
('B0013', 'M004', 'P0013', 'Butter Manies', '2'),
('B0014', 'M001', 'P0014', 'Kacang Merah', '2'),
('B0014', 'M002', 'P0014', 'Kacang Merah', '2'),
('B0015', 'M001', 'P0015', 'Tabur Coklat', '3'),
('B0015', 'M002', 'P0015', 'Tabur Coklat', '3'),
('B0015', 'M005', 'P0015', 'Tabur Coklat', '3'),
('B0016', 'M001', 'P0016', 'Butter Cheese', '2'),
('B0016', 'M002', 'P0016', 'Butter Cheese', '2'),
('B0016', 'M004', 'P0016', 'Butter Cheese', '3');

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
('C0001', 'dandi', 'dandydenny07@gmail.com', 'dandi', '$2y$10$JWWh1.CKs04jyk1/rvWig.mVvMCJAYxWuv7kIstNqRwfgsj7MZFu.', '089670154774');

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
('M0001', 'Tepung', '76', 'Kg', 1000, '2023-05-22'),
('M0002', 'Pengembang', '33', 'Kg', 1000, '2023-05-22'),
('M0003', 'Cream', '17', 'Kg', 3000, '2023-05-22'),
('M0004', 'Keju', '82', 'Kg', 4000, '2023-05-22'),
('M0005', 'Coklat', '0', 'Kg', 5000, '2023-05-22');

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
('P0004', 'Roti Perancis Baguette', '64709e6ac4b42.png', '												Baquette Abang memiliki standard hotel hotel bintang 5, namun dengan harga yang sangat lah terjangkau. Abang sudah menjadi mitra terpercaya Hotel dan UMKM sekitar daerah Jabodetabek dengan visi misi membantu teman\" mengakses roti yang berkualitas dan murah :)\r\n												', 15000),
('P0005', 'Roti Kasur', '64709e0857de0.png', '								roti kami menggunakan bahan-bahan pilihan sehingga aman dikonsumsi anak-anak sampai dewasa, dan memiliki kualitas roti yang lembut dan wangi.\r\n									', 7200),
('P0006', 'Roti Bandung / Kasino Pandan', '64709db98a287.png', '								Roti Bandung Uk. 20 cm X 8 cm X 8 cm\r\nProduksi roti dilakukan setiap hari sehingga selalu  fresh from oven dan kwalitas selalu terjaga 						', 6000),
('P0008', 'Beef Cheese Melt', '64709f0bea730.png', '				isi smoked beef dan cheese sliced\r\n						', 8900),
('P0009', 'Roti Blueberry', '64709f19d5955.png', '				roti isi selai blueberry\r\n						', 3600),
('P0010', 'Roti Nanas', '64709eb42b2bd.png', '								roti isi selai nanas \r\n									', 3600),
('P0011', 'Brownies Sekat', '6470a07bec9e0.png', '				Brownies Sekat / brownies Fudge\r\n* ukuran 20x20 cm\r\n  4 varian topping\r\n   isi 16pc\r\n* Ukuran 20x10 cm\r\n  4 varian toping\r\n   isi 8\r\n						', 59000),
('P0012', 'Roti Sobek Original', '6470a1f9676e5.png', 'butter cream original, Messes coklat\r\n			', 45000),
('P0013', 'Butter Manies', '6470a2c2af9cc.png', 'roti dengan taburan gula pasir , gurih pas \r\n			', 4200),
('P0014', 'Kacang Merah', '6470a3883e163.png', 'isi kacang merah, topping wijen\r\n			', 4800),
('P0015', 'Tabur Coklat', '6470a442dff24.png', 'roti isi coklat dan topping Messes coklat\r\n			', 4800),
('P0016', 'Butter Cheese', '6470a4d588478.png', 'butter cream, keju parut\r\n			', 8300);

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
(8, 'INV0001', 'C0002', 'P0003', 'Kue tart coklat', 1, 100000, 'Pesanan Baru', '2023-04-23', 'Jawa Timur', 'Surabaya', 'Jl.Tanah Merah Indah 1', '60129', '2', '1', 0),
(9, 'INV0002', 'C0002', 'P0001', 'Roti Sobek', 3, 10000, 'Pesanan Baru', '2023-04-23', 'Jawa Barat', 'Bandung', 'Jl.Jati blora Blok C, 10', '30712', '0', '0', 0),
(10, 'INV0003', 'C0003', 'P0002', 'Maryam', 2, 15000, '0', '2023-04-23', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro,', '30123', '1', '0', 0),
(11, 'INV0003', 'C0003', 'P0003', 'Kue tart coklat', 1, 100000, '0', '2023-04-23', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro,', '30123', '1', '0', 0),
(12, 'INV0003', 'C0003', 'P0001', 'Roti Sobek', 1, 10000, '0', '2023-04-23', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro', '30123', '1', '0', 0),
(13, 'INV0004', 'C0004', 'P0002', 'Maryam', 1, 15000, 'Pesanan Baru', '2023-04-23', 'Jawa Timur', 'Sidoarjo', 'Jl.KH Hasyim', '50987', '0', '0', 0);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
