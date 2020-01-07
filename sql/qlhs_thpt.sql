-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 05, 2020 at 05:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

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

--
-- Dumping data for table `diem`
--

INSERT INTO `diem` (`MaHS`, `NamHoc`, `HocKy`, `MaMH`, `DiemMieng`, `Diem15Phut`, `Diem1Tiet`, `DiemHK`) VALUES
('VY01', '2018-2019', 'I', 'M1', 6, 7, 7, 8),
('VY01', '2018-2019', 'II', 'M1', 6, 9, 5, 8),
('VY01', '2018-2019', 'II', 'M2', 4, 5, 5, 8),
('VY01', '2018-2019', 'I', 'M2', 4, 8, 5, 8),
('VY01', '2018-2019', 'I', 'M3', 3, 8, 8, 8),
('VY01', '2018-2019', 'II', 'M3', 9, 9, 6, 8),
('VY01', '2018-2019', 'II', 'M4', 2, 9, 6, 4),
('VY01', '2018-2019', 'I', 'M4', 5, 8, 6, 7),
('VY01', '2018-2019', 'I', 'M5', 5, 8, 6, 7),
('VY01', '2018-2019', 'II', 'M5', 6, 9, 6, 7),
('VY01', '2018-2019', 'II', 'M6', 6.5, 9, 6.5, 7),
('VY01', '2018-2019', 'I', 'M6', 5.5, 9, 9.5, 7),
('VY01', '2018-2019', 'I', 'M7', 5.5, 9, 9.5, 7),
('VY01', '2018-2019', 'II', 'M7', 9.5, 9, 9.5, 7),
('VY01', '2018-2019', 'II', 'M8', 9, 9, 4.5, 7),
('VY01', '2018-2019', 'I', 'M8', 4, 7, 4.5, 7),
('VY01', '2018-2019', 'I', 'M9', 4, 9, 4.5, 9),
('VY01', '2018-2019', 'II', 'M9', 7, 9, 8.5, 9),
('VY01', '2018-2019', 'II', 'M10', 7.5, 9.5, 8.5, 9),
('VY01', '2018-2019', 'I', 'M10', 7, 5, 8.5, 9),
('VY01', '2018-2019', 'I', 'M11', 7, 5, 8.5, 9),
('VY01', '2018-2019', 'II', 'M11', 5, 5, 9.5, 5),
('VY01', '2018-2019', 'II', 'M12', 5, 5, 9.5, 5),
('VY01', '2018-2019', 'I', 'M12', 5.5, 5, 9.5, 8),
('VY01', '2018-2019', 'I', 'M13', 7.5, 6.5, 9.5, 8),
('VY01', '2018-2019', 'II', 'M13', 7.5, 6, 9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `MaGV` char(10) CHARACTER SET utf8 NOT NULL,
  `TenGV` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DiaChi` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SDT` char(11) CHARACTER SET utf8 DEFAULT NULL,
  `matk` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`MaGV`, `TenGV`, `DiaChi`, `SDT`, `matk`) VALUES
('GV1', 'Doan Thuy Nga', 'Nam Dinh', '09090909099', 1),
('GV10', 'Bui Hong Hanh', 'Bac Giang', '08200900993', 1),
('GV11', 'Phuong Minh Hang', 'Bac Giang', '08000900993', 1),
('GV12', 'Phuong Minh Hang', 'Bac Giang', '08099900993', 1),
('GV14', 'Nguyen Tu Anh', 'Bac Giang', '08888900993', 1),
('GV15', 'Cao Thuy Trang', 'Bac Ninh', '08888454993', 1),
('GV16', 'Nguyen Phuong Thuy', 'Khanh Hoa', '08888303993', 1),
('GV17', 'Vu Thanh Luan', 'Khanh Hoa', '09098303993', 1),
('GV18', 'Tran Thi Hoa', 'Khanh Hoa', '09098786993', 1),
('GV19', 'Nguyen Thi Dan', 'Khanh Hoa', '09009766993', 1),
('GV2', 'Nguyen Hong Yen', 'Bac Giang', '09024309099', 1),
('GV20', 'Tran Thi Linh', 'Khanh Hoa', '00986766993', 1),
('GV21', 'Nguyen Thu Hang', 'Khanh Hoa', '08756966993', 1),
('GV22', 'Nguyen Thi May', 'Phu Tho', '08108466993', 1),
('GV23', 'Do Thanh Thuy', 'Phu Tho', '08198766993', 1),
('GV24', 'Nguyen Thi Hong', 'Phu Tho', '09487766993', 1),
('GV25', 'Ngo Linh Trang', 'Phu Tho', '09489590993', 1),
('GV26', 'Thieu Thu Ha', 'Phu Tho', '09490990993', 1),
('GV27', 'Nguyen Hoa Phuong', 'Phu Tho', '09490220993', 1),
('GV28', 'Luong Thi My Dung', 'Phu Tho', '09444420993', 1),
('GV29', 'Le Thi Vinh', 'Hai Duong', '09490420993', 1),
('GV3', 'Duong Thanh Thuy', 'Bac Giang', '09024309099', 1),
('GV30', 'Le Thi Han', 'Hai Duong', '09490409893', 1),
('GV31', 'Le Thi Dam', 'Hai Duong', '09490749803', 1),
('GV32', 'Doan Thi Hang', 'Hai Duong', '09409544980', 1),
('GV33', 'Nguyen Thi Nga', 'Hai Duong', '09087549803', 1),
('GV34', 'Pham Thi Mau', 'Hai Duong', '09080919803', 1),
('GV35', 'Pham Bich Ngoc', 'Hai Duong', '09085559803', 1),
('GV36', 'Nguyen Thi Nhung', 'Hai Duong', '09074759803', 1),
('GV4', 'Dang Tuyet Nhung', 'Bac Giang', '08924309099', 1),
('GV5', 'Phan Quynh Hoa', 'Bac Giang', '08903309099', 1),
('GV6', 'Hoang Le Giang', 'Bac Giang', '08920909099', 1),
('GV7', 'Do Thi Phuong', 'Bac Giang', '08920090099', 1),
('GV8', 'Trieu Ton Pham', 'Bac Ninh', '08288890099', 1),
('GV9', 'Ngo Lien Phuong', 'Bac Giang', '08290900993', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hanhkiem`
--

CREATE TABLE `hanhkiem` (
  `mahk` varchar(15) NOT NULL COMMENT 'ư',
  `loaihk` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hanhkiem`
--

INSERT INTO `hanhkiem` (`mahk`, `loaihk`) VALUES
('HKG', 'Gioi'),
('HKK', 'Kha'),
('HKTB', 'TrungBinh'),
('HKY', 'Yeu');

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

--
-- Dumping data for table `hanhkiemhs`
--

INSERT INTO `hanhkiemhs` (`mahs`, `namhoc`, `hocky`, `mahk`) VALUES
('VY01', '2018-2019', 'I', 'HKK'),
('VY01', '2018-2019', 'II', 'HKK'),
('VY02', '2018-2019', 'II', 'HKG'),
('VY02', '2018-2019', 'I', 'HKTB'),
('VY03', '2018-2019', 'I', 'HKK'),
('VY03', '2018-2019', 'II', 'HKK'),
('VY04', '2018-2019', 'II', 'HKK'),
('VY04', '2018-2019', 'I', 'HKG'),
('VY05', '2018-2019', 'I', 'HKG'),
('VY05', '2018-2019', 'II', 'HKK'),
('VY06', '2018-2019', 'II', 'HKK'),
('VY06', '2018-2019', 'I', 'HKTB'),
('VY07', '2018-2019', 'I', 'HKTB'),
('VY07', '2018-2019', 'II', 'HKK'),
('VY08', '2018-2019', 'II', 'HKK'),
('VY08', '2018-2019', 'I', 'HKK'),
('VY09', '2018-2019', 'II', 'HKTB'),
('VY09', '2018-2019', 'I', 'HKG'),
('VY10', '2018-2019', 'I', 'HKG'),
('VY10', '2018-2019', 'II', 'HKG'),
('VY11', '2018-2019', 'II', 'HKG'),
('VY11', '2018-2019', 'I', 'HKK'),
('VY11', '2018-2019', 'II', 'HKK'),
('VY12', '2018-2019', 'I', 'HKK'),
('VY12', '2018-2019', 'II', 'HKTB'),
('VY13', '2018-2019', 'II', 'HKY'),
('VY13', '2018-2019', 'I', 'HKK'),
('VY14', '2018-2019', 'I', 'HKK'),
('VY14', '2018-2019', 'II', 'HKTB'),
('VY15', '2018-2019', 'II', 'HKK'),
('VY15', '2018-2019', 'I', 'HKK'),
('VY16', '2018-2019', 'I', 'HKG'),
('VY16', '2018-2019', 'II', 'HKG'),
('VY17', '2018-2019', 'II', 'HKTB'),
('VY17', '2018-2019', 'I', 'HKK'),
('VY18', '2018-2019', 'I', 'HKK'),
('VY18', '2018-2019', 'II', 'HKTB'),
('VY19', '2018-2019', 'II', 'HKTB'),
('VY19', '2018-2019', 'I', 'HKG'),
('VY20', '2018-2019', 'I', 'HKK'),
('VY20', '2018-2019', 'II', 'HKK'),
('VY21', '2018-2019', 'II', 'HKK'),
('VY22', '2018-2019', 'I', 'HKK'),
('VY22', '2018-2019', 'II', 'HKTB'),
('VY21', '2018-2019', 'I', 'HKK'),
('VY23', '2018-2019', 'I', 'HKK'),
('VY23', '2018-2019', 'II', 'HKG'),
('VY24', '2018-2019', 'II', 'HKG'),
('VY24', '2018-2019', 'I', 'HKK'),
('VY25', '2018-2019', 'I', 'HKK'),
('VY25', '2018-2019', 'II', 'HKK'),
('VY26', '2018-2019', 'II', 'HKK'),
('VY26', '2018-2019', 'I', 'HKTB'),
('VY27', '2018-2019', 'I', 'HKTB'),
('VY27', '2018-2019', 'II', 'HKG'),
('VY28', '2018-2019', 'II', 'HKG'),
('VY28', '2018-2019', 'I', 'HKG'),
('VY29', '2018-2019', 'I', 'HKG'),
('VY29', '2018-2019', 'II', 'HKK'),
('VY30', '2018-2019', 'II', 'HKK'),
('VY30', '2018-2019', 'I', 'HKK');

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
  `GioiTinh` varchar(3) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hocsinh`
--

INSERT INTO `hocsinh` (`MaHS`, `HoHS`, `TenHS`, `DiaChi`, `NgaySinh`, `QueQuan`, `MaLop`, `matk`, `GioiTinh`) VALUES
('VY01', 'Doan Thi', 'Hanh', 'Bac Giang', '2004-11-26', 'Bac Giang', 'Lop10a0', 2, 'Nu'),
('VY02', 'Doan Thi', 'Hang', 'Bac Giang', '2004-11-11', 'Bac Giang', 'Lop10a1', 2, 'Nu'),
('VY03', 'Doan Nhat', 'Hoang', 'Bac Giang', '2004-01-11', 'Bac Giang', 'Lop10a0', 2, 'Nam'),
('VY04', 'Do Van', 'Hoan', 'Bac Giang', '2004-01-22', 'Bac Giang', 'Lop10a0', 2, 'Nam'),
('VY05', 'Vu Nhat', 'Tan', 'Bac Giang', '2004-03-12', 'Bac Giang', 'Lop10a0', 2, 'Nam'),
('VY06', 'Vu Thi', 'Quynh', 'Bac Giang', '2004-12-12', 'Bac Giang', 'Lop10a0', 2, 'Nu'),
('VY07', 'Nguyen Ngoc Lan', 'Chi', 'Bac Giang', '2004-09-12', 'Bac Giang', 'Lop10a1', 2, 'Nu'),
('VY08', 'Diep Bao', 'Dang', 'Bac Giang', '2004-04-12', 'Bac Giang', 'Lop10a1', 2, 'Nam'),
('VY09', 'Pham Tien', 'Dat', 'Bac Giang', '2004-04-10', 'Bac Giang', 'Lop10a1', 2, 'Nam'),
('VY10', 'Nguyen Hong', 'Diem', 'Bac Giang', '2004-07-11', 'Bac Giang', 'Lop10a1', 2, 'Nu'),
('VY11', 'Dinh Anh', 'Dong', 'Bac Giang', '2004-08-11', 'Bac Giang', 'Lop10a2', 2, 'Nam'),
('VY12', 'Huynh Thi Bich', 'Ha', 'Bac Giang', '2004-07-15', 'Bac Giang', 'Lop10a1', 2, 'Nu'),
('VY13', 'Vo Dong', 'Hoang', 'Bac Giang', '2004-01-10', 'Bac Giang', 'Lop10a2', 2, 'Nu'),
('VY14', 'Do Thi Tuyet', 'Huong', 'Bac Giang', '2004-02-13', 'Bac Giang', 'Lop10a2', 2, 'Nu'),
('VY15', 'Luong Thi Kim', 'Huong', 'Bac Giang', '2004-02-13', 'Bac Giang', 'Lop10a2', 2, 'Nu'),
('VY16', 'Dang Hoang Phuong', 'Linh', 'Bac Giang', '2004-02-14', 'Bac Giang', 'Lop10a3', 2, 'Nu'),
('VY17', 'Vo Thi Thuy', 'Linh', 'Bac Giang', '2004-04-24', 'Bac Giang', 'Lop10a3', 2, 'Nu'),
('VY18', 'Truong Cong', 'Ly', 'Bac Giang', '2004-07-14', 'Bac Giang', 'Lop10a3', 2, 'Nam'),
('VY19', 'Mai Huynh Kim', 'Ngan', 'Bac Giang', '2004-06-20', 'Bac Giang', 'Lop10a3', 2, 'Nu'),
('VY20', 'Nguyen Thao', 'Ngan', 'Bac Giang', '2004-06-20', 'Bac Giang', 'Lop10a3', 2, 'Nu'),
('VY21', 'Le Nguyen Bao', 'Ngoc', 'Bac Giang', '2004-08-29', 'Bac Giang', 'Lop10a4', 2, 'Nu'),
('VY22', 'Tran Nguyen Bao', 'Ngoc', 'Bac Giang', '2004-08-21', 'Bac Giang', 'Lop10a4', 2, 'Nu'),
('VY23', 'Tran Le Trung', 'Nhan', 'Bac Giang', '2004-01-11', 'Bac Giang', 'Lop10a4', 2, 'Nam'),
('VY24', 'Nguyen Trong', 'Nhan', 'Bac Giang', '2004-01-25', 'Bac Giang', 'Lop10a4', 2, 'Nam'),
('VY25', 'Phan Bui My', 'Nhan', 'Bac Giang', '2004-03-15', 'Bac Giang', 'Lop10a4', 2, 'Nu'),
('VY26', 'Doan Ngoc Yen', 'Nhi', 'Bac Giang', '2004-03-18', 'Bac Giang', 'Lop10a4', 2, 'Nu'),
('VY27', 'Nguyen Ngoc Quynh', 'Nhu', 'Bac Giang', '2004-04-28', 'Bac Giang', 'Lop10a4', 2, 'Nu'),
('VY28', 'Ho Le Hoang', 'Anh', 'Bac Giang', '2004-09-26', 'Bac Giang', 'Lop10a4', 2, 'Nu'),
('VY29', 'Chau Thanh', 'Phi', 'Bac Giang', '2004-09-26', 'Bac Giang', 'Lop10a4', 2, 'Nam'),
('VY30', 'Tran Huu Kim', 'Phuc', 'Bac Giang', '2004-02-27', 'Bac Giang', 'Lop10a4', 2, 'Nam'),
('VY31', 'Nguyen Tuyet 1111', 'Suong 11111', 'Bac Giang 1111', '2004-10-21', 'Bac Giang 11111', 'Lop10a5', 2, 'Nam'),
('VY32', 'Nguyen Thi Mong', 'Tham', 'Bac Giang', '2004-11-11', 'Bac Giang', 'Lop10a5', 2, 'Nu'),
('VY33', 'Nguyen Ngoc Thang', 'Thang', 'Bac Giang', '2004-11-30', 'Bac Giang', 'Lop10a5', 2, 'Nam'),
('VY34', 'Tran Mai Xuan', 'Thy', 'Bac Giang', '2004-11-10', 'Bac Giang', 'Lop10a5', 2, 'Nu'),
('VY35', 'Vo Thanh Tien', 'Tien', 'Bac Giang', '2004-10-10', 'Bac Giang', 'Lop10a5', 2, 'Nam'),
('VY36', 'Doan Phuong', 'Tinh', 'Bac Giang', '2004-09-10', 'Bac Giang', 'Lop10a6', 2, 'Nam'),
('VY37', 'Phan Thanh', 'Tuyen', 'Bac Giang', '2004-02-11', 'Bac Giang', 'Lop10a6', 2, 'Nu'),
('VY38', 'Pham Tuong', 'Van', 'Bac Giang', '2004-03-01', 'Bac Giang', 'Lop10a6', 2, 'Nu'),
('VY39', 'Tran Thuy', 'Vy', 'Bac Giang', '2004-04-09', 'Bac Giang', 'Lop10a6', 2, 'Nu'),
('VY40', 'Nguyen Quoc', 'Bao', 'Bac Giang', '2004-04-20', 'Bac Giang', 'Lop10a6', 2, 'Nam'),
('VY41', 'Le Cong', 'Chanh', 'Bac Giang', '2004-08-10', 'Bac Giang', 'Lop10a7', 2, 'Nam'),
('VY42', 'Le Thi Cam', 'Cuc', 'Bac Giang', '2004-06-19', 'Bac Giang', 'Lop10a7', 2, 'Nu'),
('VY43', 'Duong Thi Hong', 'Dao', 'Bac Giang', '2004-06-19', 'Bac Giang', 'Lop10a7', 2, 'Nu'),
('VY44', 'Nguyen Minh', 'Duc', 'Bac Giang', '2004-05-18', 'Bac Giang', 'Lop10a7', 2, 'Nam'),
('VY45', 'Nguyen Thuy', 'Anh', 'Bac Giang', '2004-05-27', 'Bac Giang', 'Lop10a7', 2, 'Nu'),
('VY46', 'Quach Ha', 'Anh', 'Bac Giang', '2004-08-27', 'Bac Giang', 'Lop10a8', 2, 'Nu'),
('VY47', 'Nguyen Duc', 'Binh', 'Bac Giang', '2004-07-17', 'Bac Giang', 'Lop10a8', 2, 'Nam'),
('VY48', 'Pham', 'Duc', 'Bac Giang', '2004-01-07', 'Bac Giang', 'Lop10a8', 2, 'Nam'),
('VY49', 'Nguyen Quoc', 'Dung', 'Bac Giang', '2004-08-17', 'Bac Giang', 'Lop10a8', 2, 'Nam'),
('VY50', 'Pham Thi Hoang', 'Duong', 'Bac Giang', '2004-06-13', 'Bac Giang', 'Lop10a8', 2, 'Nu'),
('VY51', 'Le Tuan', 'Duy', 'Bac Giang', '2004-04-11', 'Bac Giang', 'Lop10a9', 2, 'Nam'),
('VY52', 'Le Minh', 'Hieu', 'Bac Giang', '2004-08-19', 'Bac Giang', 'Lop10a9', 2, 'Nam'),
('VY53', 'Bui Ngoc', 'Linh', 'Bac Giang', '2004-01-17', 'Bac Giang', 'Lop10a9', 2, 'Nu'),
('VY54', 'Chu Phuong', 'Linh', 'Bac Giang', '2004-02-18', 'Bac Giang', 'Lop10a9', 2, 'Nu'),
('VY55', 'Pham Phuoc', 'Manh', 'Bac Giang', '2004-05-19', 'Bac Giang', 'Lop10a9', 2, 'Nam'),
('VY56', 'Nguyen Duc Tuan', 'Minh', 'Bac Giang', '2003-12-19', 'Bac Giang', 'Lop11a9', 2, 'Nam'),
('VY57', 'Nguyen Thi Tuyet', 'Minh', 'Bac Giang', '2003-11-10', 'Bac Giang', 'Lop11a9', 2, 'Nu'),
('VY58', 'Phi Hoang', 'My', 'Bac Giang', '2003-10-19', 'Bac Giang', 'Lop11a9', 2, 'Nu'),
('VY59', 'Tran Thi', 'Nam', 'Bac Giang', '2003-05-18', 'Bac Giang', 'Lop11a9', 2, 'Nu'),
('VY60', 'Nguyen Thien', 'Nhan', 'Bac Giang', '2003-05-18', 'Bac Giang', 'Lop11a9', 2, 'Nam'),
('VY61', 'Nguyễn', 'Minh', 'Cổ Đông - Sơn Tây - Hà Nội', '2020-01-10', 'Cổ Đông - Sơn Tây - Hà Nội', 'Lop10a1', 2, 'Nam'),
('VY62', 'Nguyễn', 'Minh 1', 'Cổ Đông - Sơn Tây - Hà Nội 1', '2020-01-15', 'Cổ Đông - Sơn Tây - Hà Nội', 'Lop10a1', 2, 'Nu');

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
('Lop10a0', '10a0', 'GV1', '101'),
('Lop10a1', '10a1', 'GV2', '101'),
('Lop10a2', '10a2', 'GV3', '101'),
('Lop10a3', '10a3', 'GV4', '101'),
('Lop10a4', '10a4', 'GV5', '101'),
('Lop10a5', '10a5', 'GV6', '101'),
('Lop10a6', '10a6', 'GV7', '101'),
('Lop10a7', '10a7', 'GV8', '101'),
('Lop10a8', '10a8', 'GV9', '101'),
('Lop10a9', '10a9', 'GV10', '101'),
('Lop11a0', '11a0', 'GV21', '111'),
('Lop11a1', '11a1', 'GV20', '111'),
('Lop11a2', '11a2', 'GV19', '111'),
('Lop11a3', '11a3', 'GV18', '111'),
('Lop11a4', '11a4', 'GV17', '111'),
('Lop11a5', '11a5', 'GV16', '111'),
('Lop11a6', '11a6', 'GV15', '111'),
('Lop11a7', '11a7', 'GV14', '111'),
('Lop11a8', '11a8', 'GV12', '111'),
('Lop11a9', '11a9', 'GV11', '111'),
('Lop12a0', '12a0', 'GV22', '121'),
('Lop12a1', '12a2', 'GV23', '121'),
('Lop12a2', '12a1', 'GV24', '121'),
('Lop12a3', '12a3', 'GV25', '121'),
('Lop12a4', '12a4', 'GV26', '121'),
('Lop12a5', '12a5', 'GV27', '121'),
('Lop12a6', '12a6', 'GV28', '121'),
('Lop12a7', '12a7', 'GV29', '121'),
('Lop12a8', '12a8', 'GV30', '121'),
('Lop12a9', '12a9', 'GV31', '121');

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
