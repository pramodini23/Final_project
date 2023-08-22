-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2009 at 08:51 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '1234', '2017-01-24 16:21:18', '04-08-2023 08:43:27 AM'),
(2, 'admin', '1234', '2020-11-05 10:33:34', '04-08-2023 08:43:27 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(5, 'Agri', 'prod', '2023-08-03 02:12:42', NULL),
(6, 'Cover Crops', 'crop', '2023-08-03 02:30:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '7', 1, '2020-11-10 11:53:22', 'COD', 'in Process'),
(2, 1, '9', 1, '2020-11-10 11:53:22', 'COD', 'Delivered'),
(3, 1, '6', 1, '2020-11-10 12:38:54', 'COD', NULL),
(4, 1, '11', 1, '2020-11-10 12:38:54', 'COD', NULL),
(5, 1, '1', 1, '2020-11-10 12:39:22', 'COD', NULL),
(6, 1, '1', 1, '2020-11-10 12:39:27', 'COD', NULL),
(7, 1, '16', 1, '2023-08-03 02:36:18', 'Debit / Credit card', 'Delivered'),
(8, 2, '14', 1, '2023-08-04 02:57:56', 'Internet Banking', NULL),
(9, 2, '16', 1, '2023-08-04 03:17:40', 'COD', NULL),
(10, 2, '18', 1, '2009-08-19 18:38:12', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'in Process', 'packed', '2020-11-10 11:56:52'),
(2, 2, 'Delivered', 'product delivered', '2020-11-10 12:40:49'),
(3, 7, 'Delivered', 'delivered', '2023-08-03 02:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(12, 5, 12, 'HandTool', 'zebra', 20, 30, 'tool', 'handtool.png', 'handtool.png', 'handtool.png', 2, 'In Stock', '2023-08-03 02:14:52', NULL),
(13, 5, 12, 'Remover', 'Textxw', 20, 25, 'tool', 'remover.jpg', 'remover.jpg', 'remover.jpg', 2, 'In Stock', '2023-08-03 02:26:35', NULL),
(14, 5, 12, 'Sprayer', 'ptrx', 35, 40, 'tool', 'SPRAYER.jpg', 'SPRAYER.jpg', 'SPRAYER.jpg', 2, 'In Stock', '2023-08-03 02:28:37', NULL),
(15, 6, 13, 'Rice', 'Solar', 1000, 1050, 'rice', 'rice.jpg', 'rice.jpg', 'rice.jpg', 10, 'In Stock', '2023-08-03 02:32:17', NULL),
(16, 6, 13, 'Corn', 'Lakshmi', 1100, 1200, 'corn', 'corn.jpg', 'corn.jpg', 'corn.jpg', 10, 'In Stock', '2023-08-03 02:33:19', NULL),
(17, 6, 13, 'Corn', 'Lakshmi', 1100, 1200, 'corn', 'corn.jpg', 'corn.jpg', 'corn.jpg', 10, 'In Stock', '2023-08-03 02:36:52', NULL),
(18, 6, 13, 'Cotton ', 'ISO', 150, 200, 'cotton', 'cotton.jpg', 'cotton.jpg', 'cotton.jpg', 5, 'In Stock', '2023-08-04 05:39:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(12, 5, 'Tools', '2023-08-03 02:12:57', NULL),
(13, 6, 'End product', '2023-08-03 02:31:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'kanmani@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-10 11:51:40', NULL, 0),
(2, 'kanmani@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-10 11:52:13', NULL, 0),
(3, 'kanmani@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-10 11:52:21', NULL, 0),
(4, 'kanamni@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-10 11:52:51', '10-11-2020 05:23:47 PM', 1),
(5, 'kanmani@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-10 11:53:54', NULL, 0),
(6, 'kanamni@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-10 11:55:02', '10-11-2020 06:09:35 PM', 1),
(7, 'kanamni@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-10 12:39:48', '10-11-2020 06:11:38 PM', 1),
(8, 'nklvijay@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-03 02:34:06', NULL, 0),
(9, 'niki@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-03 02:36:08', NULL, 1),
(10, 'pramo@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-04 02:56:53', NULL, 1),
(11, 'pramo@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-04 03:17:35', NULL, 1),
(12, 'pramo@gmail.com', 0x3a3a3100000000000000000000000000, '2009-08-19 18:37:59', NULL, 1),
(13, 'pramodini2323@gmail.com', 0x3a3a3100000000000000000000000000, '2009-08-19 18:37:22', NULL, 0),
(14, 'pramodini2323@gmail.com', 0x3a3a3100000000000000000000000000, '2009-08-19 18:37:31', '20-08-2009 12:17:07 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'kanmani K', 'niki@gmail.com', 9685968596, '202cb962ac59075b964b07152d234b70', 'NALLIPALIYAM', 'Tamil Nadu', 'NAMAKKAL', 637003, 'NALLIPALIYAM', 'Tamil Nadu', 'NAMAKKAL', 637003, '2020-11-10 11:52:06', NULL),
(2, 'pramodini', 'pramodini2323@gmail.com', 9090909090, '202cb962ac59075b964b07152d234b70', 'No.90', 'atlanta', 'us', 67234, 'no:2', 'US', 'US', 64840, '2023-08-04 02:56:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
