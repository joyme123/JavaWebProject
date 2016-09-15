-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-09-15 12:19:31
-- 服务器版本： 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `name`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `car_image`
--

CREATE TABLE `car_image` (
  `id` int(11) NOT NULL,
  `car_model_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `car_image`
--

INSERT INTO `car_image` (`id`, `car_model_id`, `img_url`) VALUES
(1, 114, '/assets/upload/AstonMartin1.jpg'),
(2, 114, '/assets/upload/AstonMartin2.jpg'),
(3, 114, '/assets/upload/AstonMartin3.jpg'),
(4, 114, '/assets/upload/AstonMartin4.jpg'),
(5, 114, '/assets/upload/AstonMartin5.jpg'),
(6, 115, '/assets/upload/benz1.jpg'),
(7, 115, '/assets/upload/benz2.jpg'),
(8, 115, '/assets/upload/benz3.jpg'),
(9, 115, '/assets/upload/benz4.jpg'),
(10, 115, '/assets/upload/benz5.jpg'),
(11, 116, '/assets/upload/Agera1.jpg'),
(12, 116, '/assets/upload/Agera2.jpg'),
(13, 116, '/assets/upload/Agera3.jpg'),
(14, 116, '/assets/upload/Agera4.jpg'),
(15, 116, '/assets/upload/Agera5.jpg'),
(16, 116, '/assets/upload/Agera6.jpg'),
(17, 117, '/assets/upload/LaFarrari1.jpg'),
(18, 117, '/assets/upload/LaFarrari2.jpg'),
(19, 117, '/assets/upload/LaFarrari3.jpg'),
(20, 117, '/assets/upload/LaFarrari4.jpg'),
(21, 117, '/assets/upload/LaFarrari5.jpg'),
(22, 117, '/assets/upload/LaFarrari6.jpg'),
(23, 117, '/assets/upload/LaFarrari7.jpg'),
(24, 118, '/assets/upload/lamber1.jpg'),
(25, 118, '/assets/upload/lamber2.jpg'),
(26, 118, '/assets/upload/lamber3.jpg'),
(27, 118, '/assets/upload/lamber4.jpg'),
(28, 118, '/assets/upload/lamber5.jpg'),
(29, 118, '/assets/upload/lamber6.jpg'),
(30, 119, '/assets/upload/McLaren1.jpg'),
(31, 119, '/assets/upload/McLaren2.jpg'),
(32, 119, '/assets/upload/McLaren3.jpg'),
(33, 119, '/assets/upload/McLaren4.jpg'),
(34, 119, '/assets/upload/McLaren5.jpg'),
(35, 120, '/assets/upload/Morgen1.jpg'),
(36, 120, '/assets/upload/Morgen2.jpg'),
(37, 120, '/assets/upload/Morgen3.jpg'),
(38, 120, '/assets/upload/Morgen4.jpg'),
(39, 120, '/assets/upload/Morgen5.jpg'),
(40, 120, '/assets/upload/Morgen6.jpg'),
(41, 120, '/assets/upload/Morgen7.jpg'),
(42, 121, '/assets/upload/Pagani1.jpg'),
(43, 121, '/assets/upload/Pagani2.jpg'),
(44, 121, '/assets/upload/Pagani3.jpg'),
(45, 121, '/assets/upload/Pagani4.jpg'),
(46, 121, '/assets/upload/Pagani5.jpg'),
(47, 122, '/assets/upload/porsche1.jpg'),
(48, 122, '/assets/upload/porsche2.jpg'),
(49, 122, '/assets/upload/porsche3.jpg'),
(50, 122, '/assets/upload/porsche4.jpg'),
(51, 122, '/assets/upload/porsche5.jpg'),
(52, 122, '/assets/upload/porsche6.jpg'),
(53, 123, '/assets/upload/Rolls-Royce1.jpg'),
(54, 123, '/assets/upload/Rolls-Royce2.jpg'),
(55, 123, '/assets/upload/Rolls-Royce3.jpg'),
(56, 123, '/assets/upload/Rolls-Royce4.jpg'),
(57, 123, '/assets/upload/Rolls-Royce5.jpg'),
(58, 124, '/assets/upload/Wiesmann1.jpg'),
(59, 124, '/assets/upload/Wiesmann2.jpg'),
(60, 124, '/assets/upload/Wiesmann3.jpg'),
(61, 124, '/assets/upload/Wiesmann4.jpg'),
(62, 125, '/assets/upload/红旗1.jpg'),
(63, 125, '/assets/upload/红旗2.jpg'),
(64, 125, '/assets/upload/红旗3.jpg'),
(65, 125, '/assets/upload/红旗4.jpg'),
(66, 125, '/assets/upload/红旗5.jpg'),
(67, 125, '/assets/upload/红旗6.jpg'),
(68, 127, '/assets/upload/0aa6c050d3192bf43567f86f27e9d13e.jpg'),
(69, 127, '/assets/upload/0cdf2e2f869047b870e3eeb840ffa720.jpg'),
(70, 127, '/assets/upload/0cdf2e2f869047b870e3eeb840ffa720.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `car_model`
--

CREATE TABLE `car_model` (
  `id` int(11) UNSIGNED NOT NULL,
  `modelName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '擎天柱',
  `doorCount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '4',
  `seatCount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '5',
  `price` int(11) NOT NULL DEFAULT '10000',
  `engineSpeed` double NOT NULL DEFAULT '6',
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '黑',
  `storage` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `car_model`
--

INSERT INTO `car_model` (`id`, `modelName`, `doorCount`, `seatCount`, `price`, `engineSpeed`, `color`, `storage`) VALUES
(2, '帕萨特', '4', '2', 250000, 0, '黑', 200),
(3, '桑塔纳', '4', '5', 100000, 1, '黑', 20),
(4, '擎天柱', '4', '5', 300000, 3, '白', 10),
(5, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(6, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(7, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(8, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(9, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(10, '擎天柱', '4', '5', 10000, 6, '黑', 3),
(11, '擎天柱', '4', '5', 10000, 6, '黑', 23),
(12, '擎天柱', '4', '5', 10000, 6, '黑', 23),
(13, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(14, '擎天柱', '4', '5', 10000, 6, '黑', 32),
(15, '擎天柱', '4', '5', 10000, 6, '黑', 321),
(16, '擎天柱', '4', '5', 10000, 6, '黑', 31),
(17, '擎天柱', '4', '5', 10000, 6, '黑', 23),
(18, '擎天柱', '4', '5', 10000, 6, '黑', 13),
(19, '擎天柱', '4', '5', 10000, 6, '黑', 123),
(20, '擎天柱', '4', '5', 10000, 6, '黑', 12),
(21, '擎天柱', '4', '5', 10000, 6, '黑', 13),
(22, '擎天柱', '4', '5', 10000, 6, '黑', 123123123),
(23, '擎天柱', '4', '5', 10000, 6, '黑', 23),
(24, '擎天柱', '4', '5', 10000, 6, '黑', 23),
(25, '擎天柱', '4', '5', 10000, 6, '黑', 23),
(26, '擎天柱', '4', '5', 10000, 6, '黑', 23),
(27, '擎天柱', '4', '5', 10000, 6, '黑', 23),
(28, '擎天柱', '4', '5', 10000, 6, '黑', 23),
(29, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(30, '擎天柱', '4', '5', 10000, 6, '黑', 3213),
(31, '擎天柱', '4', '5', 10000, 6, '黑', 123),
(32, '擎天柱', '4', '5', 10000, 6, '黑', 123),
(33, '擎天柱', '4', '5', 10000, 6, '黑', 3453),
(34, '擎天柱', '4', '5', 10000, 6, '黑', 454565),
(35, '擎天柱', '4', '5', 10000, 6, '黑', 4324),
(36, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(37, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(38, '擎天柱', '4', '5', 10000, 6, '黑', 24),
(39, '擎天柱', '4', '5', 10000, 6, '黑', 24),
(40, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(41, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(42, '擎天柱', '4', '5', 10000, 6, '黑', 24),
(43, '擎天柱', '4', '5', 10000, 6, '黑', 24242424),
(44, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(45, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(46, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(47, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(48, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(49, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(50, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(51, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(52, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(53, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(54, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(55, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(56, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(57, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(58, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(59, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(60, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(61, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(62, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(63, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(64, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(65, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(66, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(67, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(68, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(69, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(70, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(71, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(72, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(73, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(74, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(75, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(76, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(77, '擎天柱', '4', '5', 10000, 6, '黑', 4),
(78, '擎天柱', '4', '5', 10000, 6, '黑', 10),
(79, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(80, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(81, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(82, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(83, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(84, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(85, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(86, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(87, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(88, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(89, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(90, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(91, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(92, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(93, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(94, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(95, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(96, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(97, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(98, '擎天柱', '4', '5', 10000, 6, '黑', 22),
(99, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(100, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(102, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(103, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(104, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(105, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(106, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(107, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(108, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(109, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(110, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(111, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(112, '擎天柱', '4', '5', 10000, 6, '黑', 2),
(114, 'AstonMartin 6.0 Coupe', '2', '2', 3000000, 6, '白', 10),
(115, 'Benz G-Class', '4', '5', 1500000, 6, '白', 5),
(116, 'Koenigsegg Agera', '2', '2', 12000000, 0, '红', 1),
(117, 'LaFarrari 458 SpecialeA', '2', '2', 8500000, 10, '黄', 2),
(118, 'Lamber LP 750-4', '2', '2', 4000000, 6, '黑', 3),
(119, 'McLaren 675LT', '2', '2', 8000000, 6, '烟灰', 3),
(120, 'Morgan Aero', '2', '2', 3500000, 6, '灰', 3),
(121, 'Pagani Huayra', '2', '2', 23000000, 20, '黄', 1),
(122, 'Porsche 918', '2', '2', 7000000, 0, '白', 10),
(123, 'Rolls-Royce Phantom', '2', '5', 15000000, 6, '黑', 1),
(124, 'Wiesmann MF4-S', '2', '2', 3000000, 6, '白', 10),
(125, '红旗L5', '4', '5', 5000000, 6, '黑', 1),
(126, 'uguy', '4', '2', 6876, 7, 'dh', 1);

-- --------------------------------------------------------

--
-- 表的结构 `customer_service`
--

CREATE TABLE `customer_service` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `car_model_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `order_record`
--

CREATE TABLE `order_record` (
  `id` int(11) UNSIGNED NOT NULL,
  `userID` int(11) DEFAULT '1',
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '霸天虎',
  `carID` int(11) DEFAULT '1',
  `carName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '擎天柱',
  `discount` double DEFAULT '0.2',
  `price` int(11) DEFAULT '8000',
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT '霸天虎是变形金刚中的军团',
  `time` date DEFAULT '2016-04-13'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `order_record`
--

INSERT INTO `order_record` (`id`, `userID`, `userName`, `carID`, `carName`, `discount`, `price`, `note`, `time`) VALUES
(17, 1, '霸天虎', 1, '擎天柱', 0.2, 8000, '拆掉', '2016-04-13'),
(18, 9, '周奕涵', 120, 'Morgan Aero', 0.99, 20, '不要辣椒', '2016-04-14'),
(19, 10, '江鹏飞', 116, 'Koenigsegg Agera', 0.999, 3, '要大一点的', '2016-04-14'),
(20, 11, '姜健芃', 121, 'Pagani Huayra', 0, 29000000, '包好看点', '2016-04-14'),
(21, 1, '霸天虎', 14, '擎天柱', 321, 123, '', '2016-06-13');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '霸天虎',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '其他',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '911',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'baianhu@gmail.com',
  `age` int(11) NOT NULL DEFAULT '2',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '花果山水帘洞'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `gender`, `phone`, `email`, `age`, `address`) VALUES
(1, '霸天虎', '男', '911', '霸天虎@qq.com', 100, '花果山'),
(9, '周奕涵', '男', '15800300315', '446066796@qq.com', 22, '文汇路300弄13号5019'),
(10, '江鹏飞', '男', '15000895132', 'joyme@163.com', 21, '文汇路300弄13号5019'),
(11, '姜健芃', '男', '15000836357', '1016057098@qq.com', 21, '文汇路300弄13号5019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_image`
--
ALTER TABLE `car_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_model`
--
ALTER TABLE `car_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_service`
--
ALTER TABLE `customer_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_record`
--
ALTER TABLE `order_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `car_image`
--
ALTER TABLE `car_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- 使用表AUTO_INCREMENT `car_model`
--
ALTER TABLE `car_model`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- 使用表AUTO_INCREMENT `customer_service`
--
ALTER TABLE `customer_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `order_record`
--
ALTER TABLE `order_record`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
