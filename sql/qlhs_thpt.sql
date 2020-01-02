-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 30, 2019 at 02:47 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlhs_thpt`
--

-- --------------------------------------------------------

--
-- Table structure for table `dangnhap`
--

CREATE TABLE `dangnhap` (
  `matk` int(11) NOT NULL,
  `TaiKhoan` varchar(20) DEFAULT NULL,
  `MatKhau` varchar(20) DEFAULT NULL,
  `phanloai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dangnhap`
--

INSERT INTO `dangnhap` (`matk`, `TaiKhoan`, `MatKhau`, `phanloai`) VALUES
(1, 'giaovien1', '123', 1),
(2, 'hs1', '123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `diem`
--

CREATE TABLE `diem` (
  `MaHS` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `NamHoc` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `HocKy` char(2) DEFAULT NULL,
  `MaMH` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `DiemMieng` float DEFAULT NULL,
  `Diem15Phut` float DEFAULT NULL,
  `Diem1Tiet` float DEFAULT NULL,
  `DiemHK` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `MaGV` char(10) CHARACTER SET utf8 NOT NULL,
  `TenGV` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DiaChi` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `matk` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`MaGV`, `TenGV`, `DiaChi`, `SDT`, `matk`) VALUES
('GVA', 'Vu Thi Ha', 'Khanh Hoa', 969574795, 1),
('GVAA', 'Dinh Ba Ty', 'Bac Giang', 99037895, 1),
('GVAAA', 'Chau Nhat Hai', 'Bac Ninh', 90990995, 1),
('GVB', 'Vu Thi Oanh', 'Khanh Hoa', 969574395, 1),
('GVBB', 'Do Thi Hanh', 'Bac Giang', 99947895, 1),
('GVBBB', 'Chau Tinh Hoang', 'Bac Giang', 90999585, 1),
('GVC', 'Ta Van Da', 'Bac Giang', 945574395, 1),
('GVCC', 'Cao Thi Hanh', 'Bac Giang', 99863995, 1),
('GVCCC', 'Van Tan Hoi', 'Bac Giang', 90999995, 1),
('GVD', 'Ta Van Ha', 'Bac Giang', 967874395, 1),
('GVDD', 'Cao Van Be', 'Bac Giang', 99860995, 1),
('GVDDD', 'Van Thi Toi', 'Bac Giang', 90809995, 1),
('GVE', 'Ta Quang Ba', 'Bac Giang', 967878765, 1),
('GVEE', 'Cao Van Boi', 'Bac Giang', 99869095, 1),
('GVEEE', 'Do Thi Vui', 'Bac Giang', 9909995, 1),
('GVF', 'Phan Quang Chu', 'Bac Giang', 987878765, 1),
('GVFF', 'Cao My Hanh', 'Bac Ninh', 99809095, 1),
('GVFFF', 'Do Thi Nguyet', 'Ha Giang', 900909995, 1),
('GVG', 'Phan Vu Nam', 'Bac Giang', 978097855, 1),
('GVGG', 'Dang Thi Thom', 'Ninh Binh', 99809095, 1),
('GVGGG', 'Do Thi Kieu', 'Phu Tho', 900149995, 1),
('GVH', 'Dinh Van The', 'Bac Giang', 978107855, 1),
('GVHH', 'Dang Thi Tinh', 'Thanh Hoa', 99989095, 1),
('GVHHH', 'Do Quang Hai', 'Phu Tho', 90090995, 1),
('GVI', 'Dinh Thi Toan', 'Bac Giang', 978984855, 1),
('GVII', 'Dang Tien Luat', 'Ha Tinh', 99934595, 1),
('GVIII', 'Tran Thi Thanh Ha', 'Hai Duong', 900993930, 1),
('GVK', 'Phan Ba Tam', 'Bac Giang', 978967995, 1),
('GVKK', 'Phan Duc Manh', 'Bac Ninh', 99765895, 1),
('GVKKK', 'Tran Van Dong', 'Hai Duong', 909093930, 1),
('GVL', 'Nguyen Van Bo', 'Bac Giang', 97887895, 1),
('GVLL', 'Chau Ba Vinh', 'Dak Lak', 99709895, 1),
('GVM', 'Nguyen Thi Tinh', 'Bac Giang', 91237895, 1),
('GVMM', 'Chau Nhat Nam', 'Dak Lak', 99779895, 1),
('GVN', 'Chu Thuc Duong', 'Bac Giang', 99037895, 1),
('GVNN', 'Chau Nhat Tan', 'Bac Ninh', 99710995, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hanhkiem`
--

CREATE TABLE `hanhkiem` (
  `mahk` varchar(15) NOT NULL COMMENT 'ư',
  `loaihk` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hanhkiemhs`
--

CREATE TABLE `hanhkiemhs` (
  `mahs` char(10) CHARACTER SET utf8 NOT NULL,
  `namhoc` char(10) NOT NULL,
  `hocky` char(6) NOT NULL,
  `mahk` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hocsinh`
--

CREATE TABLE `hocsinh` (
  `MaHS` char(10) CHARACTER SET utf8 NOT NULL,
  `HoHS` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `TenHS` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DiaChi` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `QueQuan` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MaLop` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `matk` int(3) NOT NULL,
  `GioiTinh` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hocsinh`
--

INSERT INTO `hocsinh` (`MaHS`, `HoHS`, `TenHS`, `DiaChi`, `NgaySinh`, `QueQuan`, `MaLop`, `matk`, `GioiTinh`) VALUES
('VY01', 'Vu Nhat', 'Hoang', '81 Le Van Huan', '2004-09-09', 'Bac Giang', 'Lop10a0', 2, 'Nam'),
('VY02', 'Nguyen Khac Le', 'Anh', '81 Vo Thi Sau', '2004-09-08', 'Bac Giang', 'Lop10a0', 2, 'Nam'),
('VY03', 'Pham Ngoc Van', 'Anh', '98 Vo Thi Sau', '2004-06-08', 'Bac Giang', 'Lop10a0', 2, 'Nu'),
('VY04', 'Ly Gia', 'Bao', '79 Pho Duc Chinh', '2004-06-18', 'Bac Giang', 'Lop10a0', 2, 'Nam'),
('VY05', 'Nguyen Dinh', 'Dan', '70 La Van Cau', '2004-06-28', 'Bac Giang', 'Lop10a0', 2, 'Nu'),
('VY06', 'Pham Nhat', 'Ha', '70 La Van Be', '2004-09-28', 'Bac Giang', 'Lop10a0', 2, 'Nu'),
('VY07', 'Nguyen Ngoc', 'Linh', '21 Cao Van Lau', '2004-09-12', 'Bac Giang', 'Lop10a0', 2, 'Nu'),
('VY08', 'Dinh Thi Xuan', 'Mai', '23 Be Van Dan', '2004-09-19', 'Bac Giang', 'Lop10a0', 2, 'Nu'),
('VY09', 'Dang Quynh', 'Ngan', '02 Be Van Dan', '2004-09-30', 'Bac Giang', 'Lop10a0', 2, 'Nu'),
('VY10', 'Nguyen Khanh', 'Ngoc', '123 Su Hi Nhan', '2004-01-11', 'Bac Giang', 'Lop10a0', 2, 'Nu'),
('VY11', 'Vo Khanh', 'Nhi', '289 Su Hi Nhan', '2004-08-11', 'Bac Giang', 'Lop10a0', 2, 'Nu'),
('VY12', 'Hoang Lam', 'Nhu', '229 Mai Xuan Thuong', '2004-08-01', 'Bac Giang', 'Lop10a0', 2, 'Nu'),
('VY13', 'Nguyen Tuan', 'Khang', '29 Mai Xuan Thuong', '2004-02-01', 'Bac Giang', 'Lop10a0', 2, 'Nam'),
('VY14', 'Nguyen Dang', 'Khoi', '91 Cao Thi Ha', '2004-09-01', 'Bac Giang', 'Lop10a0', 2, 'Nam'),
('VY15', 'Nguyen Hoang', 'Bao', '999 Vu Chi Han', '2004-09-28', 'Bac Giang', 'Lop10a0', 2, 'Nam');

-- --------------------------------------------------------

--
-- Table structure for table `khoi`
--

CREATE TABLE `khoi` (
  `MaKhoi` char(10) CHARACTER SET utf8 NOT NULL,
  `TenKhoi` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khoi`
--

INSERT INTO `khoi` (`MaKhoi`, `TenKhoi`) VALUES
('101', '10'),
('111', '11'),
('121', '12');

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `MaLop` char(10) CHARACTER SET utf8 NOT NULL,
  `TenLop` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `MaGV` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `MaKhoi` char(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`MaLop`, `TenLop`, `MaGV`, `MaKhoi`) VALUES
('Lop10a0', '10a0', 'GVA', '101'),
('Lop10a1', '10a1', 'GVB', '101'),
('Lop10a10', '10a10', 'GVM', '101'),
('Lop10a11', '10a11', 'GVN', '101'),
('Lop10a2', '10a2', 'GVC', '101'),
('Lop10a3', '10a3', 'GVD', '101'),
('Lop10a4', '10a4', 'GVE', '101'),
('Lop10a5', '10a5', 'GVG', '101'),
('Lop10a6', '10a6', 'GVH', '101'),
('Lop10a7', '10a7', 'GVI', '101'),
('Lop10a8', '10a8', 'GVK', '101'),
('Lop10a9', '10a9', 'GVL', '101'),
('Lop11a0', '11a0', 'GVLL', '111'),
('Lop11a1', '11a1', 'GVKK', '111'),
('Lop11a10', '11a10', 'GVAA', '111'),
('Lop11a11', '11a11', 'GVF', '111'),
('Lop11a2', '11a2', 'GVII', '111'),
('Lop11a3', '11a3', 'GVHH', '111'),
('Lop11a4', '11a4', 'GVGG', '111'),
('Lop11a5', '11a5', 'GVFF', '111'),
('Lop11a6', '11a6', 'GVEE', '111'),
('Lop11a7', '11a7', 'GVDD', '111'),
('Lop11a8', '11a8', 'GVCC', '111'),
('Lop11a9', '11a9', 'GVBB', '111'),
('Lop12a0', '12a0', 'GVMM', '121'),
('Lop12a1', '12a1', 'GVNN', '121'),
('Lop12a10', '12a10', 'GVIII', '121'),
('Lop12a11', '12a11', 'GVKKK', '121'),
('Lop12a2', '12a2', 'GVAAA', '121'),
('Lop12a3', '12a3', 'GVBBB', '121'),
('Lop12a4', '12a4', 'GVCCC', '121'),
('Lop12a5', '12a5', 'GVDDD', '121'),
('Lop12a6', '12a6', 'GVEEE', '121'),
('Lop12a7', '12a7', 'GVFFF', '121'),
('Lop12a8', '12a8', 'GVGGG', '121'),
('Lop12a9', '12a9', 'GVHHH', '121');

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `MaMH` char(10) CHARACTER SET utf8 NOT NULL,
  `TenMH` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`MaMH`, `TenMH`) VALUES
('M1', 'Dia Ly'),
('M10', 'Sinh Hoc'),
('M11', 'Tieng Anh'),
('M12', 'The Duc'),
('M13', 'Giao Duc Quoc Phong'),
('M2', 'Toan'),
('M3', 'Lich Su'),
('M4', 'Giao Duc Cong Dan'),
('M5', 'Cong Nghe'),
('M6', 'Tin Hoc'),
('M7', 'Vat Ly'),
('M8', 'Hoa Hoc'),
('M9', 'Ngu Van');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`matk`);

--
-- Indexes for table `diem`
--
ALTER TABLE `diem`
  ADD KEY `MaHS` (`MaHS`),
  ADD KEY `MaMH` (`MaMH`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`MaGV`),
  ADD KEY `matk` (`matk`);

--
-- Indexes for table `hanhkiem`
--
ALTER TABLE `hanhkiem`
  ADD PRIMARY KEY (`mahk`);

--
-- Indexes for table `hanhkiemhs`
--
ALTER TABLE `hanhkiemhs`
  ADD KEY `mahs` (`mahs`),
  ADD KEY `MaHK` (`mahk`);

--
-- Indexes for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`MaHS`),
  ADD KEY `MaLop` (`MaLop`),
  ADD KEY `matk` (`matk`);

--
-- Indexes for table `khoi`
--
ALTER TABLE `khoi`
  ADD PRIMARY KEY (`MaKhoi`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaLop`),
  ADD KEY `MaGV` (`MaGV`),
  ADD KEY `MaKhoi` (`MaKhoi`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MaMH`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `diem_ibfk_1` FOREIGN KEY (`MaHS`) REFERENCES `hocsinh` (`MaHS`),
  ADD CONSTRAINT `diem_ibfk_2` FOREIGN KEY (`MaMH`) REFERENCES `monhoc` (`MaMH`);

--
-- Constraints for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD CONSTRAINT `giaovien_ibfk_1` FOREIGN KEY (`matk`) REFERENCES `dangnhap` (`matk`);

--
-- Constraints for table `hanhkiemhs`
--
ALTER TABLE `hanhkiemhs`
  ADD CONSTRAINT `MaHK` FOREIGN KEY (`mahk`) REFERENCES `hanhkiem` (`mahk`),
  ADD CONSTRAINT `hanhkiemhs_ibfk_1` FOREIGN KEY (`mahs`) REFERENCES `hocsinh` (`MaHS`);

--
-- Constraints for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD CONSTRAINT `hocsinh_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`),
  ADD CONSTRAINT `hocsinh_ibfk_2` FOREIGN KEY (`matk`) REFERENCES `dangnhap` (`matk`);

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`MaGV`) REFERENCES `giaovien` (`MaGV`),
  ADD CONSTRAINT `lop_ibfk_2` FOREIGN KEY (`MaKhoi`) REFERENCES `khoi` (`MaKhoi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
