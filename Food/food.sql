-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2016-11-14 10:22:00
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- 表的结构 `fd-order`
--

CREATE TABLE `fd-order` (
  `uid` int(20) NOT NULL,
  `orderNum` int(20) NOT NULL,
  `time` datetime NOT NULL,
  `pid` int(20) NOT NULL,
  `count` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fd-order`
--

INSERT INTO `fd-order` (`uid`, `orderNum`, `time`, `pid`, `count`) VALUES
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(5, 20161114, '2016-11-14 00:00:00', 6, 1),
(1, 1, '2016-11-05 00:00:00', 1, 1),
(1, 1, '2016-11-05 00:00:00', 1, 1),
(1, 1, '2016-11-05 00:00:00', 1, 1),
(1, 1, '2016-11-05 00:00:00', 1, 1),
(1, 1, '2016-11-05 00:00:00', 1, 1),
(1, 1, '2016-11-05 00:00:00', 1, 1),
(1, 1, '2016-11-05 00:00:00', 1, 1),
(0, 20161658, '2016-11-14 00:00:00', 1, 1),
(0, 20161954, '2016-11-14 00:00:00', 0, 1),
(0, 20161817, '2016-11-14 00:00:00', 0, 1),
(0, 20162098, '2016-11-14 00:00:00', 0, 1),
(0, 20162027, '2016-11-14 00:00:00', 0, 1),
(0, 20161961, '2016-11-14 00:00:00', 1, 1),
(0, 20161990, '2016-11-14 00:00:00', 2, 1),
(0, 20161247, '2016-11-14 00:00:00', 3, 1),
(18, 20161712, '2016-11-14 00:00:00', 1, 1),
(18, 20161763, '2016-11-14 00:00:00', 2, 1),
(0, 20161778, '2016-11-14 00:00:00', 1, 1),
(0, 20161355, '2016-11-14 00:00:00', 1, 1),
(0, 20162029, '2016-11-14 00:00:00', 2, 1),
(18, 20161505, '2016-11-14 00:00:00', 2, 1),
(18, 20161809, '2016-11-14 00:00:00', 1, 1),
(0, 20161991, '2016-11-14 00:00:00', 1, 1),
(0, 20161575, '2016-11-14 00:00:00', 1, 1),
(0, 20161346, '2016-11-14 00:00:00', 1, 1),
(18, 20161345, '2016-11-14 00:00:00', 1, 1),
(18, 20161197, '2016-11-14 00:00:00', 1, 1),
(18, 20161878, '2016-11-14 08:11:39', 1, 1),
(0, 20161395, '2016-11-14 08:33:49', 1, 1),
(0, 20161683, '2016-11-14 08:34:57', 1, 1),
(18, 20162027, '2016-11-14 08:40:21', 1, 1),
(18, 20161471, '2016-11-14 08:46:06', 1, 1),
(0, 20161851, '2016-11-14 09:51:32', 0, 0),
(18, 20161161, '2016-11-14 09:59:13', 1, 1),
(18, 20161297, '2016-11-14 10:10:14', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `fd-pro`
--

CREATE TABLE `fd-pro` (
  `id` int(8) NOT NULL,
  `src` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fd-pro`
--

INSERT INTO `fd-pro` (`id`, `src`, `name`, `price`, `info`) VALUES
(1, 'slide1.jpg', '豪尚牛排', 40, '最高价格的豪尚牛排双人餐'),
(2, 'slide2.jpg', '豪尚牛排', 80, '最高价格的豪尚牛排双人餐'),
(3, 'slide3.jpg', '豪尚牛排', 120, '最高价格的豪尚牛排双人餐'),
(4, 'g1.jpg', '熊姥姥炒酸奶', 13, '【2店通用】熊姥姥炒酸奶\r\n仅售12.8元！价值16元的冰糖葫芦炒酸奶1份。'),
(5, 'g2.jpg', '杨国富麻辣烫', 12, '桥西区红旗南大街与新石南路交叉口北150米路西15731167352'),
(6, 'g3.jpg', '芙蓉树下成都冒菜（益庄店）', 26, '桥东区胜利北街与铁院北路交口西北角 \r\n15031119837'),
(7, 'g4.jpg', '芙蓉树下成都冒菜', 10, '芙蓉树下成都冒菜\r\n仅售9.9元！价值13元的芙蓉树下素什锦，建议单人使用，提供免费WiFi。'),
(8, 'g4.jpg', '【勒泰中心】轰炸大鱿鱼', 13, '仅售13.9元！价值15元的轰炸大鱿鱼1份，可免费使用包间，提供免费WiFi。亲爱的用户，本次团购有效期延长至2016年11月23日，感谢您的支持，祝消费愉快~');

-- --------------------------------------------------------

--
-- 表的结构 `fd-user`
--

CREATE TABLE `fd-user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fd-user`
--

INSERT INTO `fd-user` (`id`, `name`, `phone`, `address`, `password`) VALUES
(9, '张三丰', '12345678911', '桥西区红旗大街南三环创业梦工场', '20131112'),
(10, 'undefined', 'undefined', 'undefined', 'undefined'),
(11, 'undefined', 'undefined', 'undefined', 'undefined'),
(12, '12', '2', '12', '121'),
(13, '111', '111', '111', '111'),
(14, 'qq', 'qq', 'qq', 'qq'),
(15, 'qq', 'qq', 'qq', 'qq'),
(16, 'qq', 'qq', 'qq', 'qq'),
(17, 'undefined', 'undefined', 'undefined', 'undefined'),
(18, 'mayun', '123456', 'afsd', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fd-pro`
--
ALTER TABLE `fd-pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fd-user`
--
ALTER TABLE `fd-user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `fd-pro`
--
ALTER TABLE `fd-pro`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `fd-user`
--
ALTER TABLE `fd-user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
