-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 01:29 PM
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
-- Database: `truongthcs`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `ds_giaovien`
-- (See below for the actual view)
--
CREATE TABLE `ds_giaovien` (
`CCCD` char(12)
,`HO_VA_TENLOT` varchar(15)
,`TEN` varchar(15)
,`SEX` varchar(5)
,`BDATE` date
,`ADDRESS` varchar(30)
,`PHONENUMBER` varchar(10)
,`MONGIANGDAY` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ds_hocsinh`
-- (See below for the actual view)
--
CREATE TABLE `ds_hocsinh` (
`MSHS` varchar(10)
,`HO_VA_TENLOT` varchar(15)
,`TEN` varchar(15)
,`SEX` varchar(5)
,`BDATE` date
,`ADDRESS` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `giamthi`
--

CREATE TABLE `giamthi` (
  `GT_CCCD` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giamthi`
--

INSERT INTO `giamthi` (`GT_CCCD`) VALUES
('436');

-- --------------------------------------------------------

--
-- Table structure for table `giangday`
--

CREATE TABLE `giangday` (
  `GV_CCCD` char(12) NOT NULL,
  `TenLopDay` varchar(12) NOT NULL,
  `TenNamHoc` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giangday`
--

INSERT INTO `giangday` (`GV_CCCD`, `TenLopDay`, `TenNamHoc`) VALUES
('345', '6A1', '2021-2022'),
('345', '7A1', '2021-2022'),
('345', '9A1', '2021-2022'),
('391', '6A1', '2021-2022'),
('391', '7A1', '2021-2022'),
('391', '9A1', '2021-2022'),
('453', '9A1', '2021-2022'),
('492', '6A1', '2021-2022'),
('492', '7A1', '2021-2022'),
('492', '9A1', '2021-2022'),
('502', '6A1', '2021-2022'),
('502', '7A1', '2021-2022'),
('502', '9A1', '2021-2022'),
('535', '6A1', '2021-2022'),
('535', '7A1', '2021-2022'),
('535', '9A1', '2021-2022'),
('544', '6A1', '2021-2022'),
('544', '7A1', '2021-2022'),
('544', '9A1', '2021-2022'),
('955', '6A1', '2021-2022'),
('955', '7A1', '2021-2022'),
('955', '9A1', '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `CCCD` char(12) NOT NULL,
  `HO_VA_TENLOT` varchar(15) NOT NULL,
  `TEN` varchar(15) NOT NULL,
  `Bdate` date DEFAULT NULL,
  `Address` varchar(30) NOT NULL,
  `Sex` varchar(5) DEFAULT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL,
  `MonGiangDay` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`CCCD`, `HO_VA_TENLOT`, `TEN`, `Bdate`, `Address`, `Sex`, `PhoneNumber`, `MonGiangDay`) VALUES
('144', 'Trần Minh', 'Quang', '1978-11-05', 'Bình Dương', 'Nam', '0969241777', 'HOA HOC'),
('271', 'Nguyễn Thanh', 'Bình', '1978-11-25', 'Quảng Bình', 'TOAN', '0969241777', 'TOAN'),
('345', 'Trần Thị', 'Cúc', '1973-04-12', 'Quảng Bình', 'NU', '0923456699', 'GDCD'),
('391', 'HOANG', 'GIANG', '0000-00-00', 'QUAN 1', 'NU', '0352817523', 'LICH SU'),
('436', 'VO TAN', 'THONG', '0000-00-00', 'QUAN 1', 'NAM', '0123217768', 'VAT LY'),
('453', 'Võ Thị Ngọc', 'Châu', '1982-11-12', 'QUAN 1', 'NAM', '0523279030', 'TOAN'),
('492', 'PHAN TRONG', 'NHAN', '0000-00-00', 'QUAN 2', 'NAM', '0523817030', 'VAT LY'),
('502', 'TRAN', 'TAM', '0000-00-00', 'QUAN 1', 'NU', '0333817768', 'SINH HOC'),
('535', 'NGUYEN', 'PHU', '0000-00-00', 'QUAN 3', 'NAM', '0969817768', 'DIA LY'),
('544', 'NGUYEN TIEN', 'THINH', '0000-00-00', 'QUAN 3', 'NAM', '0523741030', 'TOAN'),
('954', 'LE THI BAO', 'THU', '0000-00-00', 'QUAN 3', 'NU', '0303741279', 'TIENG ANH'),
('955', 'LE THI', 'HAU', '0000-00-00', 'QUAN 2', 'NU', '0325523030', 'TOAN');

-- --------------------------------------------------------

--
-- Table structure for table `giaoviengiangday`
--

CREATE TABLE `giaoviengiangday` (
  `GVGD_CCCD` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giaoviengiangday`
--

INSERT INTO `giaoviengiangday` (`GVGD_CCCD`) VALUES
('345'),
('391'),
('453'),
('492'),
('502'),
('535'),
('544'),
('954'),
('955');

-- --------------------------------------------------------

--
-- Table structure for table `hocky`
--

CREATE TABLE `hocky` (
  `TenHocKy` varchar(12) NOT NULL,
  `TenNamHoc` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hocky`
--

INSERT INTO `hocky` (`TenHocKy`, `TenNamHoc`) VALUES
('HK1', '2019-2020'),
('HK1', '2020-2021'),
('HK1', '2021-2022'),
('HK1', '2022-2023'),
('HK2', '2019-2020'),
('HK2', '2020-2021'),
('HK2', '2021-2022'),
('HK2', '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `hocsinh`
--

CREATE TABLE `hocsinh` (
  `MSHS` varchar(10) NOT NULL,
  `HO_VA_TENLOT` varchar(15) NOT NULL,
  `TEN` varchar(15) NOT NULL,
  `Bdate` date DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Sex` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hocsinh`
--

INSERT INTO `hocsinh` (`MSHS`, `HO_VA_TENLOT`, `TEN`, `Bdate`, `Address`, `Sex`) VALUES
('1347', 'Đặng Đăng', 'Khánh', '2009-11-15', 'QUAN 3', 'NAM'),
('2012', 'Bùi Xuân ', 'Giang', '2011-02-19', 'Quận Phú Nhuận', 'NAM'),
('2039', 'LE THANH', 'VAN', '0000-00-00', 'QUAN 3', 'NU'),
('2218', 'PHAM THANH', 'HIEN', '0000-00-00', 'QUAN 2', 'NU'),
('229', 'Nguyễn Cao', 'Trí', '2010-07-21', 'Hà Nội', 'NAM'),
('2317', 'BUI LAM', 'TIEN', '0000-00-00', 'QUAN 10', 'NAM'),
('3169', 'BUI KHANH', 'LINH', '0000-00-00', 'QUAN 3', 'NU'),
('5843', 'NGUYEN NGOC', 'ANH', '0000-00-00', 'QUAN 2', 'NU'),
('7747', 'HOANG', 'PHU', '0000-00-00', 'QUAN 1', 'NAM'),
('8212', 'VO THANH', 'HUNG', '0000-00-00', 'QUAN 2 ', 'NAM');

-- --------------------------------------------------------

--
-- Table structure for table `hoctap`
--

CREATE TABLE `hoctap` (
  `TenMonHoc` varchar(12) NOT NULL,
  `TenKhoiLop` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoctap`
--

INSERT INTO `hoctap` (`TenMonHoc`, `TenKhoiLop`) VALUES
('DIA LY', '6'),
('DIA LY', '7'),
('DIA LY', '8'),
('DIA LY', '9'),
('GDCD', '6'),
('GDCD', '7'),
('GDCD', '8'),
('GDCD', '9'),
('HOA HOC', '8'),
('HOA HOC', '9'),
('LICH SU', '6'),
('LICH SU', '7'),
('LICH SU', '8'),
('LICH SU', '9'),
('SINH HOC', '6'),
('SINH HOC', '7'),
('SINH HOC', '8'),
('SINH HOC', '9'),
('TIENG ANH', '6'),
('TIENG ANH', '7'),
('TIENG ANH', '8'),
('TIENG ANH', '9'),
('TIN HOC', '6'),
('TIN HOC', '7'),
('TIN HOC', '8'),
('TIN HOC', '9'),
('TOAN', '6'),
('TOAN', '7'),
('TOAN', '8'),
('TOAN', '9'),
('VAT LY', '6'),
('VAT LY', '7'),
('VAT LY', '8'),
('VAT LY', '9');

-- --------------------------------------------------------

--
-- Table structure for table `khoilop`
--

CREATE TABLE `khoilop` (
  `KhoiLop` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khoilop`
--

INSERT INTO `khoilop` (`KhoiLop`) VALUES
('6'),
('7'),
('8'),
('9');

-- --------------------------------------------------------

--
-- Table structure for table `kiemtra`
--

CREATE TABLE `kiemtra` (
  `MSHS` varchar(10) NOT NULL,
  `MonHoc` varchar(12) NOT NULL,
  `HocKy` varchar(12) NOT NULL,
  `NamHoc` varchar(12) NOT NULL,
  `KT_Mieng` float DEFAULT NULL,
  `KT_15phut` float DEFAULT NULL,
  `KT_1tiet` float DEFAULT NULL,
  `KT_CuoiKi` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kiemtra`
--

INSERT INTO `kiemtra` (`MSHS`, `MonHoc`, `HocKy`, `NamHoc`, `KT_Mieng`, `KT_15phut`, `KT_1tiet`, `KT_CuoiKi`) VALUES
('1347', 'DIA LY', 'HK1', '2021-2022', 8, 6, 5, 5.75),
('1347', 'GDCD', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('1347', 'LICH SU', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('1347', 'SINH HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('1347', 'TIN HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('1347', 'TOAN', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('1347', 'VAT LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2012', 'HOA HOC', 'HK1', '2022-2023', 8, 7, 9.25, 10),
('2012', 'LICH SU', 'HK1', '2022-2023', 5.5, 6, 8.5, 8.5),
('2012', 'TOAN', 'HK1', '2022-2023', 6.5, 8, 9.5, 9),
('2012', 'VAT LY', 'HK1', '2022-2023', 7, 5.5, 8, 9.5),
('2039', 'DIA LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2039', 'GDCD', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2039', 'HOA HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2039', 'LICH SU', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2039', 'SINH HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2039', 'TIN HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2039', 'TOAN', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2039', 'VAT LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2218', 'DIA LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2218', 'GDCD', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2218', 'HOA HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2218', 'LICH SU', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2218', 'SINH HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2218', 'TIN HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2218', 'TOAN', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2218', 'VAT LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2317', 'DIA LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2317', 'GDCD', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2317', 'HOA HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2317', 'LICH SU', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2317', 'SINH HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2317', 'TIN HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2317', 'TOAN', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('2317', 'VAT LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('3169', 'DIA LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('3169', 'GDCD', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('3169', 'HOA HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('3169', 'LICH SU', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('3169', 'SINH HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('3169', 'TIN HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('3169', 'TOAN', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('3169', 'VAT LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('5843', 'DIA LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('5843', 'GDCD', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('5843', 'LICH SU', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('5843', 'SINH HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('5843', 'TIN HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('5843', 'TOAN', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('5843', 'VAT LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('7747', 'DIA LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('7747', 'GDCD', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('7747', 'LICH SU', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('7747', 'SINH HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('7747', 'TIN HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('7747', 'TOAN', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('7747', 'VAT LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('8212', 'DIA LY', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('8212', 'GDCD', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('8212', 'LICH SU', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('8212', 'SINH HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('8212', 'TIN HOC', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('8212', 'TOAN', 'HK1', '2021-2022', 8, 10, 8.5, 8),
('8212', 'VAT LY', 'HK1', '2021-2022', 8, 10, 8.5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `TenLop` varchar(5) NOT NULL,
  `NamHoc` varchar(10) NOT NULL,
  `GVCN_CCCD` char(12) DEFAULT NULL,
  `SoPhong` varchar(8) DEFAULT NULL,
  `KhoiLop` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`TenLop`, `NamHoc`, `GVCN_CCCD`, `SoPhong`, `KhoiLop`) VALUES
('6A1', '2021-2022', '453', '101-L1', '6'),
('7A1', '2021-2022', '535', '201-L2', '7'),
('9A1', '2021-2022', '955', '301-L3', '9');

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `TenMonHoc` varchar(12) NOT NULL,
  `TenBoMon` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`TenMonHoc`, `TenBoMon`) VALUES
('TIENG ANH', 'NGOAI NGU'),
('TOAN', 'TOAN'),
('HOA HOC', 'TU NHIEN'),
('SINH HOC', 'TU NHIEN'),
('TIN HOC', 'TU NHIEN'),
('VAT LY', 'TU NHIEN'),
('CONG NGHE', 'VAN THE MI'),
('DIA LY', 'XA HOI'),
('GDCD', 'XA HOI'),
('LICH SU', 'XA HOI');

-- --------------------------------------------------------

--
-- Table structure for table `namhoc`
--

CREATE TABLE `namhoc` (
  `NamHoc` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `namhoc`
--

INSERT INTO `namhoc` (`NamHoc`) VALUES
('2019-2020'),
('2020-2021'),
('2021-2022'),
('2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `phanlop`
--

CREATE TABLE `phanlop` (
  `MSHS` varchar(10) NOT NULL,
  `TenLop` varchar(5) NOT NULL,
  `NamHoc` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phanlop`
--

INSERT INTO `phanlop` (`MSHS`, `TenLop`, `NamHoc`) VALUES
('1347', '7A1', '2021-2022'),
('2218', '9A1', '2021-2022'),
('2317', '9A1', '2021-2022'),
('5843', '7A1', '2021-2022'),
('7747', '6A1', '2021-2022'),
('8212', '7A1', '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `MASOPHONG` varchar(10) NOT NULL,
  `ChucNang` varchar(30) DEFAULT NULL,
  `CCCD_CBQL` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`MASOPHONG`, `ChucNang`, `CCCD_CBQL`) VALUES
('101-L1', 'DAYHOC', '436'),
('102-L1', 'DAYHOC', '436'),
('103-L1', 'DAYHOC', '436'),
('104-L1', 'DAYHOC', '436'),
('105-L1', 'DAYHOC', '436'),
('106-L1', 'DAYHOC', '436'),
('107-L1', 'PHONG_NGHI_GV', NULL),
('108-L1', 'PHONG_GIAMTHI', NULL),
('109-L1', 'HOI_TRUONG', NULL),
('110-L1', 'PHONG_HIEU_TRUONG', NULL),
('111-L1', 'PHONG_PHO_HIEU_TRUONG_1', NULL),
('112-L1', 'THINGHIEM', NULL),
('113-L1', 'THINGHIEM', NULL),
('114-L1', 'THINGHIEM', NULL),
('115-L1', 'THINGHIEM', NULL),
('201-L2', 'DAYHOC', NULL),
('202-L2', 'DAYHOC', NULL),
('203-L2', 'DAYHOC', NULL),
('204-L2', 'DAYHOC', NULL),
('205-L2', 'PHONG_NGHI_GV', NULL),
('206-L2', 'PHONG_TIN_HOC_1', NULL),
('207-L2', 'PHONG_TIN_HOC_2', NULL),
('208-L2', 'PHONG_DOAN', NULL),
('209-L2', 'THU VIEN', NULL),
('301-L3', 'DAYHOC', NULL),
('302-L3', 'DAYHOC', NULL),
('303-L3', 'DAYHOC', NULL),
('304-L3', 'DAYHOC', NULL),
('305-L3', 'PHONG_NGHI_GV', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phuhuynh`
--

CREATE TABLE `phuhuynh` (
  `MSHS` varchar(10) NOT NULL,
  `HO_VA_TENLOT` varchar(15) NOT NULL,
  `TEN` varchar(15) NOT NULL,
  `QuanHe` varchar(10) DEFAULT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Sex` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phuhuynh`
--

INSERT INTO `phuhuynh` (`MSHS`, `HO_VA_TENLOT`, `TEN`, `QuanHe`, `PhoneNumber`, `Bdate`, `Sex`) VALUES
('1347', 'DANG TRAN', 'KHANH', 'CHA', '0937913468', '0000-00-00', 'NAM'),
('2039', 'TRAN NHU', 'YEN', 'DI', '0932463468', '0000-00-00', 'NU'),
('2218', 'NGUYEN MINH', 'ANH', 'ME', '0931343368', '0000-00-00', 'NU'),
('2317', 'VO MINH', 'TRIET', 'CHA', '0938923468', '0000-00-00', 'NAM'),
('3169', 'PHAM THANH', 'HIEN', 'ME', '0936453468', '0000-00-00', 'NU'),
('5843', 'NGUYEN VAN', 'HIEP', 'CHA', '0934443768', '0000-00-00', 'NAM'),
('8212', 'NGUYEN MINH', 'ANH', 'ME', '0931343368', '0000-00-00', 'NU');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `USERNAME` varchar(10) NOT NULL,
  `PASS` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`USERNAME`, `PASS`) VALUES
('GIAOVIEN', 'ABCD1234'),
('HOCSINH', 'ABCD1234');

-- --------------------------------------------------------

--
-- Table structure for table `tobomon`
--

CREATE TABLE `tobomon` (
  `TenBoMon` varchar(12) NOT NULL,
  `CCCD_TBM` char(12) DEFAULT NULL,
  `TBM_StartDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tobomon`
--

INSERT INTO `tobomon` (`TenBoMon`, `CCCD_TBM`, `TBM_StartDate`) VALUES
('NGOAI NGU', '955', '0000-00-00'),
('TOAN', '544', '0000-00-00'),
('TU NHIEN', '492', '0000-00-00'),
('VAN THE MI', '345', '0000-00-00'),
('XA HOI', '391', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure for view `ds_giaovien`
--
DROP TABLE IF EXISTS `ds_giaovien`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ds_giaovien`  AS SELECT `giaovien`.`CCCD` AS `CCCD`, `giaovien`.`HO_VA_TENLOT` AS `HO_VA_TENLOT`, `giaovien`.`TEN` AS `TEN`, `giaovien`.`Sex` AS `SEX`, `giaovien`.`Bdate` AS `BDATE`, `giaovien`.`Address` AS `ADDRESS`, `giaovien`.`PhoneNumber` AS `PHONENUMBER`, `giaovien`.`MonGiangDay` AS `MONGIANGDAY` FROM `giaovien``giaovien`  ;

-- --------------------------------------------------------

--
-- Structure for view `ds_hocsinh`
--
DROP TABLE IF EXISTS `ds_hocsinh`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ds_hocsinh`  AS SELECT `hocsinh`.`MSHS` AS `MSHS`, `hocsinh`.`HO_VA_TENLOT` AS `HO_VA_TENLOT`, `hocsinh`.`TEN` AS `TEN`, `hocsinh`.`Sex` AS `SEX`, `hocsinh`.`Bdate` AS `BDATE`, `hocsinh`.`Address` AS `ADDRESS` FROM `hocsinh``hocsinh`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `giamthi`
--
ALTER TABLE `giamthi`
  ADD PRIMARY KEY (`GT_CCCD`);

--
-- Indexes for table `giangday`
--
ALTER TABLE `giangday`
  ADD PRIMARY KEY (`GV_CCCD`,`TenLopDay`,`TenNamHoc`),
  ADD KEY `GiangDay_LopDay_NamHoc` (`TenLopDay`,`TenNamHoc`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`CCCD`),
  ADD KEY `fk_GV_day_mon_gi` (`MonGiangDay`);

--
-- Indexes for table `giaoviengiangday`
--
ALTER TABLE `giaoviengiangday`
  ADD PRIMARY KEY (`GVGD_CCCD`);

--
-- Indexes for table `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`TenHocKy`,`TenNamHoc`),
  ADD KEY `HocKy_Thuoc_NamHoc` (`TenNamHoc`);

--
-- Indexes for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`MSHS`);

--
-- Indexes for table `hoctap`
--
ALTER TABLE `hoctap`
  ADD PRIMARY KEY (`TenMonHoc`,`TenKhoiLop`),
  ADD KEY `HocTap_KhoiLop` (`TenKhoiLop`);

--
-- Indexes for table `khoilop`
--
ALTER TABLE `khoilop`
  ADD PRIMARY KEY (`KhoiLop`);

--
-- Indexes for table `kiemtra`
--
ALTER TABLE `kiemtra`
  ADD PRIMARY KEY (`MSHS`,`MonHoc`,`HocKy`,`NamHoc`),
  ADD KEY `KiemTra_MonHoc` (`MonHoc`),
  ADD KEY `KiemTra_HocKy_NamHoc` (`HocKy`,`NamHoc`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`TenLop`,`NamHoc`),
  ADD KEY `fk_Lop_NamHoc` (`NamHoc`),
  ADD KEY `fk_Lop_GVCN` (`GVCN_CCCD`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`TenMonHoc`),
  ADD KEY `fk_MonHoc_Thuoc_BoMon` (`TenBoMon`);

--
-- Indexes for table `namhoc`
--
ALTER TABLE `namhoc`
  ADD PRIMARY KEY (`NamHoc`);

--
-- Indexes for table `phanlop`
--
ALTER TABLE `phanlop`
  ADD PRIMARY KEY (`MSHS`,`TenLop`,`NamHoc`),
  ADD KEY `fk_HS_LopHoc_NamHoc` (`TenLop`,`NamHoc`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MASOPHONG`),
  ADD KEY `fk_Phong_Do_Ai_Quan_ly` (`CCCD_CBQL`);

--
-- Indexes for table `phuhuynh`
--
ALTER TABLE `phuhuynh`
  ADD PRIMARY KEY (`MSHS`,`HO_VA_TENLOT`,`TEN`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `tobomon`
--
ALTER TABLE `tobomon`
  ADD PRIMARY KEY (`TenBoMon`),
  ADD KEY `fk_TruongBoMon` (`CCCD_TBM`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `giamthi`
--
ALTER TABLE `giamthi`
  ADD CONSTRAINT `fk_GiamThi_CCCD` FOREIGN KEY (`GT_CCCD`) REFERENCES `giaovien` (`CCCD`) ON DELETE CASCADE;

--
-- Constraints for table `giangday`
--
ALTER TABLE `giangday`
  ADD CONSTRAINT `GiangDay_GiaoVien` FOREIGN KEY (`GV_CCCD`) REFERENCES `giaoviengiangday` (`GVGD_CCCD`) ON DELETE CASCADE,
  ADD CONSTRAINT `GiangDay_LopDay_NamHoc` FOREIGN KEY (`TenLopDay`,`TenNamHoc`) REFERENCES `lop` (`TenLop`, `NamHoc`) ON DELETE CASCADE;

--
-- Constraints for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD CONSTRAINT `fk_GV_day_mon_gi` FOREIGN KEY (`MonGiangDay`) REFERENCES `monhoc` (`TenMonHoc`) ON DELETE SET NULL;

--
-- Constraints for table `giaoviengiangday`
--
ALTER TABLE `giaoviengiangday`
  ADD CONSTRAINT `fk_GVGD_CCCD` FOREIGN KEY (`GVGD_CCCD`) REFERENCES `giaovien` (`CCCD`) ON DELETE CASCADE;

--
-- Constraints for table `hocky`
--
ALTER TABLE `hocky`
  ADD CONSTRAINT `HocKy_Thuoc_NamHoc` FOREIGN KEY (`TenNamHoc`) REFERENCES `namhoc` (`NamHoc`) ON DELETE CASCADE;

--
-- Constraints for table `hoctap`
--
ALTER TABLE `hoctap`
  ADD CONSTRAINT `HocTap_KhoiLop` FOREIGN KEY (`TenKhoiLop`) REFERENCES `khoilop` (`KhoiLop`) ON DELETE CASCADE,
  ADD CONSTRAINT `HocTap_MonHoc` FOREIGN KEY (`TenMonHoc`) REFERENCES `monhoc` (`TenMonHoc`) ON DELETE CASCADE;

--
-- Constraints for table `kiemtra`
--
ALTER TABLE `kiemtra`
  ADD CONSTRAINT `KiemTra_HocKy_NamHoc` FOREIGN KEY (`HocKy`,`NamHoc`) REFERENCES `hocky` (`TenHocKy`, `TenNamHoc`) ON DELETE CASCADE,
  ADD CONSTRAINT `KiemTra_HocSinh` FOREIGN KEY (`MSHS`) REFERENCES `hocsinh` (`MSHS`) ON DELETE CASCADE,
  ADD CONSTRAINT `KiemTra_MonHoc` FOREIGN KEY (`MonHoc`) REFERENCES `monhoc` (`TenMonHoc`) ON DELETE CASCADE;

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `fk_Lop_GVCN` FOREIGN KEY (`GVCN_CCCD`) REFERENCES `giaoviengiangday` (`GVGD_CCCD`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_Lop_NamHoc` FOREIGN KEY (`NamHoc`) REFERENCES `namhoc` (`NamHoc`) ON DELETE CASCADE;

--
-- Constraints for table `phanlop`
--
ALTER TABLE `phanlop`
  ADD CONSTRAINT `fk_HS_LopHoc_NamHoc` FOREIGN KEY (`TenLop`,`NamHoc`) REFERENCES `lop` (`TenLop`, `NamHoc`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_Lop_HocSinh` FOREIGN KEY (`MSHS`) REFERENCES `hocsinh` (`MSHS`) ON DELETE CASCADE;

--
-- Constraints for table `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `fk_Phong_Do_Ai_Quan_ly` FOREIGN KEY (`CCCD_CBQL`) REFERENCES `giamthi` (`GT_CCCD`) ON DELETE SET NULL;

--
-- Constraints for table `phuhuynh`
--
ALTER TABLE `phuhuynh`
  ADD CONSTRAINT `fk_PhuHuynh_HS` FOREIGN KEY (`MSHS`) REFERENCES `hocsinh` (`MSHS`) ON DELETE CASCADE;

--
-- Constraints for table `tobomon`
--
ALTER TABLE `tobomon`
  ADD CONSTRAINT `fk_TruongBoMon` FOREIGN KEY (`CCCD_TBM`) REFERENCES `giaoviengiangday` (`GVGD_CCCD`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
