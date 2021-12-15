-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2021 lúc 03:51 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `productdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `CategoryId` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CategoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`CategoryId`, `CategoryName`) VALUES
('DM', 'Điện máy'),
('DT', 'Điện tử'),
('GD', 'Gia dụng'),
('VT', 'Viễn thông');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ProductId` int(10) NOT NULL,
  `ProductName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Price` double NOT NULL,
  `CategoryId` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Img` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ProductId`, `ProductName`, `Unit`, `Price`, `CategoryId`, `Img`) VALUES
(1, 'Iphone5 plus', 'Cái', 4500000, 'VT', 'ip5plus.jfif'),
(2, 'Iphone6 Plus', 'Cái', 6500000, 'VT', 'ip6plus.jfif'),
(3, 'Iphone7', 'Cái', 15000000, 'VT', 'ip7.jfif'),
(4, 'Tivi Sony 48 inc', 'Cái', 10000000, 'DT', 'tivi-sony.jfif'),
(5, 'Tivi Samsung 40 inc', 'Cái', 8000000, 'DT', 'tivi-samsung.jfif'),
(6, 'Tivi LG 48 inc', 'Cái', 12000000, 'DT', 'tivi-lg.jfif'),
(7, 'Loa Sony', 'Cái', 3000000, 'DT', 'loa-sony.jfif'),
(8, 'Đầu DVD Karaoke Sony', 'Cái', 5000000, 'DT', 'karaoke-sony.jfif'),
(9, 'Tủ lạnh Samsung', 'Cái', 3000000, 'DM', 'tulanh-samsung.jfif'),
(10, 'Tủ đông Panasonic', 'Cái', 3500000, 'DM', 'tudong-panasonic.jfif'),
(11, 'Máy giặt LG 6 Kg', 'Cái', 4500000, 'DM', 'maygiat-lg.jfif'),
(12, 'Máy lạnh Samsung', 'Cái', 9000000, 'DM', 'maylanh-samsung.jfif'),
(13, 'Bếp ga hồng ngoại Sunhouse', 'Cái', 1500000, 'GD', 'bepga-sunhouse.jfif'),
(14, 'Bếp điện từ Media', 'Cái', 1000000, 'GD', 'bepdientu-media.jfif'),
(15, 'Lò vi sóng Sanyo', 'Cái', 800000, 'GD', 'lovisong-sanyo.jfif'),
(16, 'Bếp điện từ Philip', 'Cái', 2000000, 'GD', 'Bepdientu-philips.jfif'),
(17, 'Bếp nướng Happy cook', 'Cái', 3000000, 'GD', 'Bepnuong-happy.jfif'),
(18, 'Nồi cơm điện Toshiba', 'Cái', 1500000, 'GD', 'noidien-toshiba.jfif'),
(20, 'Bình giữ nhiệt Lock&Lock', 'Cái', 350000, 'GD', 'binhgiunhiet-lock.jfif'),
(22, 'Lẩu điện Gali', 'Cái', 900000, 'GD', 'Laudien-gali.jfif'),
(23, 'Bếp từ Toshiba', 'Cái', 1000000, 'GD', 'beptu-toshiba.jfif'),
(32, 'Ấm đun siêu tốc Gali', 'Cái', 300000, 'GD', 'amdun-gali.jfif'),
(33, 'Bếp ga Namilux', 'Cái', 180000, 'GD', 'bepga-namilux.jfif'),
(34, 'Nồi chiên không dầu Magic', 'Cái', 3000000, 'GD', 'magic.jfif'),
(35, 'Điện thoại iPhone 13 Pro 128GB', 'Cái', 30490000, 'DT', 'Ip13.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ProductId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
