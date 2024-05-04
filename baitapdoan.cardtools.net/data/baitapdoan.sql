-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 27, 2023 at 06:29 PM
-- Server version: 5.7.40-log
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baitapdoan`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)  SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `donhang_id` int(11) NOT NULL,
  `mypham_id` int(11) NOT NULL,
  `dongia` float NOT NULL DEFAULT '0',
  `soluong` int(11) NOT NULL DEFAULT '1',
  `thanhtien` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `donhang_id`, `mypham_id`, `dongia`, `soluong`, `thanhtien`) VALUES
(1, 2, 21, 550000, 12, 6600000);

-- --------------------------------------------------------

--
-- Table structure for table `diachi`
--

CREATE TABLE `diachi` (
  `id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `macdinh` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diachi`
--

INSERT INTO `diachi` (`id`, `nguoidung_id`, `diachi`, `macdinh`) VALUES
(1, 4, 'Đông Xuyên, Long Xuyên', 1),
(2, 5, 'Mỹ Xuyên, Long Xuyên', 1),
(3, 7, 'Mỹ Long', 1),
(4, 8, 'Mỹ Thới', 1),
(5, 9, 'Mỹ Xuyên', 1),
(6, 10, 'Mỹ Long', 1),
(0, 8, '123123 asdasda', 1),
(0, 10, '124124 ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `diachi_id` varchar(255) NOT NULL,
  `ngay` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nguoidung_id` int(11) NOT NULL,
  `tongtien` float NOT NULL DEFAULT '0',
  `ghichu` varchar(255) DEFAULT NULL,
  `trangthai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `diachi_id`, `ngay`, `nguoidung_id`, `tongtien`, `ghichu`, `trangthai`) VALUES
(1, '0', '2023-11-26 20:53:57', 8, 0, 'dasda sd', 3),
(2, '0', '2023-11-26 21:14:48', 10, 6600000, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `loaimypham`
--

CREATE TABLE `loaimypham` (
  `id` int(11) NOT NULL,
  `tenloai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaimypham`
--

INSERT INTO `loaimypham` (`id`, `tenloai`) VALUES
(1, 'Thức ăn cho chó'),
(2, 'Thức ăn cho mèo'),
(3, 'Dụng cụ Grooming'),
(4, 'Sữa tắm & nước hoa Chó Mèo');

-- --------------------------------------------------------

--
-- Table structure for table `mypham`
--

CREATE TABLE `mypham` (
  `id` int(11) NOT NULL,
  `tenmypham` varchar(255) NOT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `giagoc` float NOT NULL DEFAULT '0',
  `giaban` float NOT NULL DEFAULT '0',
  `soluongton` int(11) NOT NULL DEFAULT '0',
  `hinhanh` varchar(255) DEFAULT NULL,
  `luotxem` int(11) NOT NULL DEFAULT '0',
  `luotmua` int(11) NOT NULL DEFAULT '0',
  `kiemduyet` tinyint(4) NOT NULL,
  `loaimypham_id` int(11) NOT NULL,
  `thuonghieu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mypham`
--

INSERT INTO `mypham` (`id`, `tenmypham`, `mota`, `giagoc`, `giaban`, `soluongton`, `hinhanh`, `luotxem`, `luotmua`, `kiemduyet`, `loaimypham_id`, `thuonghieu_id`) VALUES
(10, 'Viên Tiêu Búi Lông Cho Mèo Cattyman', '', 196000, 210000, 0, 'images/vien-tieu-bui-long-cho-meo-cattyman.webp', 0, 0, 1, 2, 1),
(11, 'Thức Ăn Hạt Cho Mèo Con Whiskas Vị Cá Thu & Sữa', '', 45000, 54000, 0, 'images/thuc-an-whiskas-meo-con-vi-ca-thu-va-sua.webp', 0, 0, 1, 2, 2),
(12, 'Pate Cho Mèo King\'s Pet Cá Ngừ Jelly By Bảo Anh Lon 80g', '', 43000, 55000, 0, 'images/pate-king-pet-bao-anh-cho-meo-lon-80g.webp', 0, 0, 1, 2, 2),
(13, 'Thức Ăn Cho Mèo Lapaw', '', 45000, 55000, 0, 'images/thuc-an-cho-meo-con-lapaw-1.webp', 0, 0, 1, 2, 1),
(14, 'Bánh Thưởng Cho Chó Snack Bowwow', '', 33000, 45000, 0, 'images/thuc-an-hat-mem-drsoft-cho-cho-cont-vi-cuu-1kg2.webp', 0, 0, 1, 1, 2),
(15, 'Thức Ăn Cho Mèo Minino Plus', '', 149000, 160000, 0, 'images/minino-plus-meo-con-goi-350g.webp', 2, 0, 1, 2, 2),
(16, 'Snack Phô Mai Viên Giảm Stress Cho Mèo Gimcat Cheezies Gói 50g', '', 133000, 145000, 312, 'images/pho-mai-vien-cho-meo-gimcat.webp', 3123, 323123, 1, 2, 1),
(17, 'Thức Ăn Cho Chó Giống Nhỏ Smartheart Vị Bò - 1kg5', '', 264000, 280000, 23123, 'images/thuc-an-smartherat-vi-bo-danh-cho-cho-giong-nho1.webp', 423123, 23123, 1, 1, 2),
(18, 'Thức Ăn Cho Chó Reflex - 3Kg', '', 215000, 239000, 0, 'images/thuc-an-reflex-cho-cho.webp', 0, 0, 1, 1, 2),
(19, 'Thức Ăn Hạt Mềm Cho Chó Con Dr.Soft Lamb Vị Cừu 1.2Kg (300g x 4 gói)', '', 120000, 135000, 123, 'images/thuc-an-hat-mem-drsoft-cho-cho-cont-vi-cuu-1kg2.webp', 3, 0, 1, 1, 2),
(20, 'Thức Ăn Cho Chó Trưởng Thành Fib\'s', '', 150000, 175000, 0, 'images/thuc-an-cho-cho-fibs-400g-1.webp', 7, 0, 1, 1, 2),
(21, 'Thức Ăn Cho Chó Smartheart Gold', '', 450000, 550000, 36, 'images/thuc-an-cho-cho-con-smart-heart-gold-1kg.webp', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `sodienthoai` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `loai` tinyint(4) NOT NULL DEFAULT '3',
  `trangthai` tinyint(4) NOT NULL DEFAULT '1',
  `hinhanh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `hoten`, `sodienthoai`, `email`, `matkhau`, `loai`, `trangthai`, `hinhanh`) VALUES
(1, 'Trần Lê Minh Cường', '0368672641', 'cuong@cuong.com', '356a192b7913b04c54574d18c28d46e6395428ab', 1, 1, 'avt1.jpg'),
(2, 'Bùi Linh Linh Linh', '0911673582', 'linh@linh', '356a192b7913b04c54574d18c28d46e6395428ab', 2, 1, 'avt5.jpg'),
(3, 'Nguyễn Thị Lệ Hằng', '0368672644', 'lehang', '356a192b7913b04c54574d18c28d46e6395428ab', 2, 1, 'avt4.jpg'),
(5, 'Như', '0368672641', 'abc@abc.com', 'a9993e364706816aba3e25717850c26c9cd0d89d', 2, 0, 'avt5.jpg'),
(6, 'Trương Trương', '0368672641', 'truongy@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 1, 'avt1.jpg'),
(7, 'HOANG MINH', '0559036866', 'stuartbroad@mailnesia.com', '06ac2742269e29893cce78bc7aea6afd', 3, 1, NULL),
(8, 'HOANG MINH', '0559036866', 'stuartbroa22d@mailnesia.com', '06ac2742269e29893cce78bc7aea6afd', 3, 1, NULL),
(9, 'CUCBOT', '0909909021', 'cucbot0113@gmail.com', '4d0505284ac5049b4167eb7ebfe0791b', 1, 1, 'avt1.jpg'),
(10, 'HOANG MINH', '0559036866', 'cucbot0113@gmail.com12', '06ac2742269e29893cce78bc7aea6afd', 3, 1, NULL),
(11, 'Hchvnf', '85868884', 'cucbot0113dfgg@gmail.com', '011d75e6eee27dd1080bff958ddf4166', 3, 1, NULL),
(12, 'admin123123@gmail.com', '123123', 'admin123123@gmail.com', '2281a69892feaba58cc71f2fc89c7306', 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id` int(11) NOT NULL,
  `tenthuonghieu` varchar(255) NOT NULL,
  `hinhanh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`id`, `tenthuonghieu`, `hinhanh`) VALUES
(1, 'Cat Rangs', 'images/xf06zfcB1629517084.png'),
(2, 'Whiskas', 'images/Whiskas-Logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_id` (`donhang_id`),
  ADD KEY `sanpham_id` (`mypham_id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`);

--
-- Indexes for table `loaimypham`
--
ALTER TABLE `loaimypham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mypham`
--
ALTER TABLE `mypham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaimypham_id` (`loaimypham_id`),
  ADD KEY `thuonghieu_id` (`thuonghieu_id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loaimypham`
--
ALTER TABLE `loaimypham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mypham`
--
ALTER TABLE `mypham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_chitietdonhang_donhang` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_chitietdonhang_mypham` FOREIGN KEY (`mypham_id`) REFERENCES `mypham` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_donhang_nguoidung` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `mypham`
--
ALTER TABLE `mypham`
  ADD CONSTRAINT `fk_mypham_loaimypham` FOREIGN KEY (`loaimypham_id`) REFERENCES `loaimypham` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mypham_thuonghieu` FOREIGN KEY (`thuonghieu_id`) REFERENCES `thuonghieu` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
