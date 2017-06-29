-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2017 at 08:55 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2advanced`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(10) NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_address` varchar(200) NOT NULL,
  `cus_tel` int(10) NOT NULL,
  `cus_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `cus_address`, `cus_tel`, `cus_email`) VALUES
(1, 'John', '123 A', 851234567, 'John@mail.com'),
(2, 'sarah', '72 ABCD', 872598577, 'sarah@mail.com'),
(3, 'robert', '12 G', 824581234, 'robert@mail.com'),
(4, 'eric', '8 B', 612589635, 'eric@mail.com'),
(5, 'olive', '21 R', 812579634, 'olive@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1498393273),
('m130524_201442_init', 1498393277);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(10) NOT NULL,
  `cus_id` int(10) NOT NULL,
  `pro_id` int(10) NOT NULL,
  `order_unit` int(10) NOT NULL,
  `purchase_date` date NOT NULL,
  `delivery_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `cus_id`, `pro_id`, `order_unit`, `purchase_date`, `delivery_date`) VALUES
(1, 1, 3, 2, '2560-06-12', '2560-07-12'),
(2, 2, 3, 5, '2560-08-12', '2560-10-15'),
(3, 1, 4, 3, '2560-06-12', '2560-10-15'),
(4, 3, 5, 1, '2560-06-12', '2560-10-15'),
(5, 1, 5, 2, '2560-06-12', '2560-10-15'),
(6, 3, 5, 4, '2560-06-12', '2560-07-12'),
(7, 5, 2, 3, '2560-06-12', '2560-10-15'),
(8, 5, 4, 1, '2560-06-12', '2560-10-15'),
(9, 3, 2, 2, '2560-06-12', '2560-10-15'),
(10, 5, 5, 3, '2560-06-12', '2560-10-15');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(10) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_price` int(10) NOT NULL,
  `pro_description` text NOT NULL,
  `pro_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_price`, `pro_description`, `pro_img`) VALUES
(1, 'Pro 111', 100, 'Pro 111 Description', '406951038_o.jpg'),
(2, 'Pro 222', 200, 'Pro 222 Description', 'A1253225.jpg'),
(3, 'Pro 333', 100, 'Pro 333 Description', 'Devestation.jpg'),
(4, 'Pro 444', 250, 'Pro 444 Description', 'P1130191.jpg'),
(5, 'Pro 555', 400, 'Pro 555 Description', 'd_15411.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'jk', 'W89nFuE9auUkPMfmvo4UP5CLYbC5Eh_z', '$2y$13$Y/GRqV.1yjt8lrTIGPpnv.YIzxH5QZHdW3JExgTLNc8TQGkSh1Hce', NULL, 'jk@gmail.com', 10, 1498393530, 1498393530),
(2, 'rt', 'JmAvrEPz10B7Lr_B1yu3f13cxYfr064s', '$2y$13$/dUarpAVM13f2Az/25.P.Ov1xMJATFV317wZnvkBAej4OUTRh7OsS', NULL, 'fefeff@gmail.com', 10, 1498393655, 1498393655);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
