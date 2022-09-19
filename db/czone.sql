-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 05, 2022 at 01:30 PM
-- Server version: 10.6.8-MariaDB-1
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `czone`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pOrder`
--

CREATE TABLE `pOrder` (
  `orderId` int(11) NOT NULL,
  `orderNo` varchar(100) DEFAULT NULL,
  `pName` varchar(200) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  `order_date` varchar(100) DEFAULT NULL,
  `order_time` varchar(100) DEFAULT NULL,
  `userIdF` int(11) DEFAULT NULL,
  `userIdC` int(11) DEFAULT NULL,
  `userIdD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pOrder`
--

INSERT INTO `pOrder` (`orderId`, `orderNo`, `pName`, `price`, `quantity`, `amount`, `status`, `pId`, `order_date`, `order_time`, `userIdF`, `userIdC`, `userIdD`) VALUES
(1, 'cz4582', '1.5 kg Chicken Wings', '15000', 1, '15000', 'delivered', NULL, '2022-09-04', '03:37:30 PM', 1, 2, 3),
(2, 'cz6948', 'Half Tray of Eggs', '6000', 1, '6000', 'delivered', NULL, '2022-09-04', '03:37:30 PM', 1, 2, 3),
(3, 'cz2058', '10 Egg Carton', '8000', 1, '8000', 'cancelled', NULL, '2022-09-05', '12:10:50 PM', 1, 2, NULL),
(4, 'cz6510', 'Chicken Thighs', '14500', 1, '14500', 'delivered', NULL, '2022-09-05', '01:58:45 PM', 1, 2, 3),
(5, 'cz3228', 'Half Tray of Eggs', '6000', 1, '6000', 'inroute', NULL, '2022-09-05', '01:58:45 PM', 1, 2, 3),
(6, 'cz6990', 'Chicken Breast (Half Kilo)', '8500', 1, '8500', 'cancelled', NULL, '2022-09-05', '01:58:45 PM', 1, 2, 3),
(7, 'cz8612', 'Gizzards', '15500', 1, '15500', 'placed', NULL, '2022-09-05', '01:58:45 PM', 1, 2, NULL),
(8, 'cz8249', '1.5 kg Chicken Wings', '15000', 1, '15000', 'placed', NULL, '2022-09-05', '01:58:45 PM', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pId` int(11) NOT NULL,
  `pName` varchar(100) DEFAULT NULL,
  `pDesc` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `photo` varchar(250) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pId`, `pName`, `pDesc`, `price`, `quantity`, `photo`, `userId`) VALUES
(10, '1kg Chicken Hearts', 'This is 1kg of  Chicken Hearts. They are well cleaned and ready to roast for barbecue or pan frying.', '12000', 20, '1kg_chicken_heartsdisarray.jpeg', 1),
(11, 'Gizzards', 'Clean \"Stone-Free\" gizzards weighing between 1.4 to 1.7 kgs available for our customers.', '15500', 15, 'gizzardsdisarray.jpeg', 1),
(12, '10 Egg Carton', 'These are packed in a box carton for easier carriage and handling. Simply keep in a cool dry place.', '8000', 20, '10_egg_cartondis1_.jpeg', 1),
(13, '1.5 kg Chicken Wings', 'This is 1.5kg of cleanly cut fresh Chicken wings packed in a plastic platter ready for preparation at your convience.', '15000', 20, '1.5_kg_chicken_wingsdis1_.jpeg', 1),
(14, 'Half Tray of Eggs', 'No need to worry about bulk purchase. Grab 15 box packed eggs from ChickenZone and enjoy purchasing in your comfort.', '6000', 50, 'half_tray_of_eggsdis1_.jpeg', 1),
(15, 'Chicken Breast (Half Kilo)', 'Clean and Fresh Chicken Poultry Breasts only packed in recyclable plastic weighing between 1.4 to 1.7 kgs for you to enjoy.', '8500', 50, 'chicken_breast_(half_kilo)dis1_.jpeg', 1),
(16, 'Tray of Eggs', 'These are 30 eggs packed in traditional box trays. Simply store surplus in a cool dry place for up to 2 months', '12500', 100, 'tray_of_eggsdis1_.jpeg', 1),
(17, 'Whole Chicken', 'This a freshly cut chicken + 1 gizzard + 1 heart weighing between 2 - 2.5 kilos ready ready to cook, roast, oven fry or pan fry packed in a silver plate.', '23500', 50, 'whole_chickendis1_.jpeg', 1),
(18, 'Fresh Necks', 'These are packed fresh Chicken Necks ready for preparation and consumption. These weigh between 1.2-1.6 kgs.', '16500', 50, 'fresh_necksdis1_.jpeg', 1),
(19, 'Chicken Thighs', '1.2 -1.5 kgs of Fresh Chicken Thighs that are ready for home consumption and restaurant or chicken use.', '14500', 50, 'chicken_thighsdis1_.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `nin` varchar(15) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tpMeans` varchar(100) DEFAULT NULL,
  `permitNo` varchar(15) DEFAULT NULL,
  `vCard` varchar(250) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `name`, `email`, `phone`, `location`, `nin`, `password`, `type`, `description`, `tpMeans`, `permitNo`, `vCard`, `photo`) VALUES
(1, 'KAYONDO ARNOLD', 'kayondo@gmail.com', '0705 410 508', 'Kireka Bira', NULL, '$2y$10$A43T3Eu40DaYpn.a7SjEx.3t7KLh1CSdOZqwXYJqnUpAXgavsut8u', 'farmer', 'We offer fresh Poultry products to you at affordable prices such that you can enjoy comfort in obtaining what you need.', NULL, NULL, NULL, 'IMG_20201024_141808_830.jpg'),
(2, 'Ssegawa', 'ssegodfrey171@gmail.com', '0753446252', 'nansana', NULL, '$2y$10$ldAIRJXcM4aAjIlTolgdo.AHVuM6X3MhpcRhokdBY83NRhc/5uoem', 'customer', 'fdsaGFDSAAAAAAAAAA', NULL, NULL, NULL, NULL),
(3, 'leon', 'leon@gmail.com', '78907543', 'kakiri', 'sdfi65nm', '$2y$10$mSRFsqb4.v.ZE6mIjhkATubZ/6v76.2k9r.wpUiHnYF77gdTCUQtS', 'agent', 'gfhjkl', 'bicycle', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `cart_ibfk_1` (`userId`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `pOrder`
--
ALTER TABLE `pOrder`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pOrder`
--
ALTER TABLE `pOrder`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`pId`) REFERENCES `product` (`pId`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
