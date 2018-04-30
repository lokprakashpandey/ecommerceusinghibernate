-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2018 at 07:16 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceusinghibernate`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `password`, `uname`) VALUES
(1, 'lokprakashpandey@gmail.com', 'hello123', 'lokprakashpandey'),
(2, 'ram@shyam.com', 'hello123', 'ram'),
(3, 'kabitabhatt520@gmail.com', 'hello123', 'kabitabhatt');

-- --------------------------------------------------------

--
-- Table structure for table `order_`
--

CREATE TABLE `order_` (
  `id` bigint(20) NOT NULL,
  `order_date` date NOT NULL,
  `customer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_`
--

INSERT INTO `order_` (`id`, `order_date`, `customer_id`) VALUES
(29, '2018-04-28', 1),
(52, '2018-04-28', 1),
(53, '2018-04-28', 1),
(54, '2018-04-28', 1),
(55, '2018-04-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `path`, `price`, `quantity`) VALUES
(1, 'Desktops', 'desktop.jpg', 550, 99),
(2, 'Laptops', 'laptop.jpg', 1250, 100),
(3, 'Tablets', 'tab.jpg', 750, 200),
(4, 'Notebooks', 'notebook.jpg', 999, 4),
(5, 'Softwares', 'software.jpg', 500, 75),
(6, 'Mobile Phones', 'mobile phone.jpg', 799, 16),
(7, 'Cameras', 'camera.jpg', 650, 3),
(8, 'Head Phones', 'head phone.jpg', 99, 50),
(9, 'Chargers', 'charger.jpg', 50, 100),
(10, 'Pen Drives', 'pen drive.jpg', 45, 34),
(11, 'DVDs', 'dvd.jpg', 5, 84),
(12, 'Multiplugs', 'multiplug.jpg', 15, 50),
(14, 'Laptop Bags', 'laptop bag.jpg', 99, 27);

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `products_id` bigint(20) NOT NULL,
  `orders_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`products_id`, `orders_id`) VALUES
(1, 55),
(2, 54),
(3, 54),
(10, 52),
(11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) NOT NULL,
  `birthday` date NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `hobbies` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `customer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `birthday`, `fullname`, `gender`, `hobbies`, `pic`, `customer_id`) VALUES
(1, '1982-08-21', 'Lok Prakash Pandey', 'M', 'Sports', 'aaaaa.jpg', 1),
(2, '1982-08-21', 'Ram Chandra Pandey', 'M', 'Traveling', '1524434493579Lok Prakash Pandey #1925. IAF consent form.pdf', 2),
(3, '1982-08-21', 'Kabita Bhatt', 'F', 'Music', '1524782919644Lok Prakash Pandey #1925. Promissory note.pdf', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_`
--
ALTER TABLE `order_`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_nuektq0t0wsfj2yos4jaga5yq` (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`products_id`,`orders_id`),
  ADD KEY `FK_btcqdjb1jj6qg8tchpav9rbjg` (`orders_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_8b4oycgftf86tnj40kpmficx6` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_`
--
ALTER TABLE `order_`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_`
--
ALTER TABLE `order_`
  ADD CONSTRAINT `FK_nuektq0t0wsfj2yos4jaga5yq` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `FK_1ds4w7v8if0hlp7gvyn6gx2kg` FOREIGN KEY (`products_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_btcqdjb1jj6qg8tchpav9rbjg` FOREIGN KEY (`orders_id`) REFERENCES `order_` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `FK_8b4oycgftf86tnj40kpmficx6` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
