-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 28, 2025 at 10:45 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auto`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banner_id`, `image`, `active`) VALUES
(15, 'images/uploads/banner/1737388493.jpg', 1),
(19, 'images/uploads/banner/1740691250.jpg', 1),
(13, 'images/uploads/banner/1740776691.jpg', 1),
(18, 'images/uploads/banner/1737962096.jpg', 1),
(16, 'images/uploads/banner/1737962020.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `quantity`) VALUES
(30, 5, 24, 1),
(39, 0, 7, 1),
(40, 8, 9, 21),
(41, 0, 20, 1),
(43, 0, 9, 1),
(53, 0, 15, 1),
(55, 0, 22, 1),
(57, 10, 8, 2),
(64, 12, 21, 3),
(63, 14, 10, 1),
(62, 14, 31, 1),
(79, 22, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `image`, `active`) VALUES
(11, 'Braking System', 'images/uploads/category/1737885387.webp', 1),
(9, 'Exhaust System', 'images/uploads/category/1737885747.jpeg', 1),
(12, 'Cooling System', 'images/uploads/category/1737885833.jpeg', 1),
(13, 'Interior Components', 'images/uploads/category/1737886046.webp', 1),
(14, 'Body Parts', 'images/uploads/category/1737886363.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `email`, `message`) VALUES
(31, 16, 'user1@gmail.com', 'hello i am arman'),
(32, 24, 'haba@gmail.com', 'thanks'),
(33, 24, 'user2@gmail.com', 'thanks you\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `payment` varchar(200) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `date`, `price`, `status`, `payment`) VALUES
(61, 15, '2025-02-17', 35094, 'Delivered', 'cash on delivery'),
(60, 15, '2025-02-17', 4060, 'Canceled', 'cash on delivery'),
(62, 15, '2025-02-17', 2506, 'Delivered', 'cash on delivery'),
(63, 15, '2025-02-17', 15600, 'Delivered', 'Credit card pament'),
(64, 16, '2025-02-17', 3398, 'Pending', 'cash on delivery'),
(65, 16, '2025-02-17', 5097, 'Delivered', 'cash on delivery'),
(66, 16, '2025-02-17', 16800, 'Pending', 'cash on delivery'),
(67, 17, '2025-02-17', 5097, 'Delivered', 'cash on delivery'),
(68, 17, '2025-02-17', 11200, 'Pending', 'cash on delivery'),
(69, 17, '2025-02-17', 11200, 'Pending', 'Credit card payment'),
(70, 16, '2025-02-20', 54090, 'Delivered', 'cash on delivery'),
(71, 18, '2025-02-24', 12000, 'Pending', 'cash on delivery'),
(72, 18, '2025-02-24', 7518, 'Pending', 'Credit card payment'),
(73, 23, '2025-02-24', 10880, 'Pending', 'cash on delivery'),
(74, 24, '2025-02-27', 18030, 'Pending', 'cash on delivery'),
(75, 24, '2025-02-27', 10360, 'Delivered', 'cash on delivery'),
(76, 24, '2025-02-27', 13097, 'Pending', 'cash on delivery'),
(77, 24, '2025-02-27', 3398, 'Pending', 'Credit card payment'),
(78, 29, '2025-02-28', 3398, 'Pending', 'cash on delivery'),
(79, 16, '2025-02-28', 4060, 'Pending', 'Credit card payment');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`order_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `cart_id`, `order_id`, `total`, `quantity`, `product_name`, `price`) VALUES
(79, 86, 77, 3398, 2, 'coolant 5L', 1699),
(78, 84, 76, 11398, 2, 'brake pedal', 5699),
(77, 85, 76, 1699, 1, 'coolant 5L', 1699),
(76, 83, 75, 10360, 4, 'brake disc ', 2590),
(75, 82, 74, 18030, 3, 'HKS HI-POWER Muffler ', 6010),
(74, 81, 73, 7800, 1, 'Dashboard', 7800),
(73, 80, 73, 3080, 1, 'brake pads', 3080),
(72, 78, 72, 7518, 3, 'cup holder and storage', 2506),
(71, 77, 71, 12000, 2, 'EXTPKT1 muffler', 6000),
(70, 76, 70, 54090, 9, 'HKS HI-POWER Muffler ', 6010),
(69, 75, 69, 11200, 2, 'radiator', 5600),
(68, 74, 68, 11200, 2, 'radiator', 5600),
(67, 73, 67, 5097, 3, 'coolant 5L', 1699),
(66, 72, 66, 16800, 3, 'radiator', 5600),
(65, 71, 65, 5097, 3, 'coolant 5L', 1699),
(64, 70, 64, 3398, 2, 'coolant 5L', 1699),
(63, 69, 63, 15600, 2, 'Dashboard', 7800),
(62, 68, 62, 2506, 1, 'cup holder and storage', 2506),
(61, 67, 61, 29997, 3, 'SWITCHES', 9999),
(60, 66, 61, 5097, 3, 'coolant 5L', 1699),
(59, 65, 60, 4060, 2, 'evaportator', 2030),
(80, 88, 78, 3398, 2, 'coolant 5L', 1699),
(81, 89, 79, 4060, 2, 'evaportator', 2030);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `product_price` double NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `unit` varchar(25) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `image`, `description`, `product_price`, `stock`, `unit`, `active`, `category_id`) VALUES
(5, 'SWITCHES', 'images/uploads/product/1737888339.jpeg', 'set of all the dashboard switches', 9999, 129, '250 gm', 1, 13),
(6, 'brake pads', 'images/uploads/product/1737990417.jpeg', 'origanal parts', 3080, 10, '500 gm', 1, 11),
(31, 'brake pedal', 'images/uploads/product/1737949307.jpeg', 'original part', 5699, 22, '', 1, 11),
(8, 'brake disc ', 'images/uploads/product/1737889204.jpeg', 'orignal parts', 2590, 7, '500 gm', 1, 11),
(9, 'Exhaust muffler', 'images/uploads/product/1737886899.jpeg', 'A muffler is also widely known as silencer..', 3999, 16, '1 Kg', 1, 9),
(10, 'HKS HI-POWER Muffler ', 'images/uploads/product/1737886914.jpeg', 'HKS HIGH power performance', 6010, 5, '250 gm', 1, 9),
(11, 'EXTPKT1 muffler', 'images/uploads/product/1737886925.jpeg', 'specializing in automotive accessories.', 6000, 40, '750 gm', 1, 9),
(12, 'silencer', 'images/uploads/product/1737886937.jpeg', 'mxs2235-nitto-series-exhaust-muffler', 2560, 23, '2 Kg', 1, 9),
(13, 'Arrow Pro-Race', 'images/uploads/product/1737886945.jpeg', 'The image shows an Arrow Pro-Race exhaust system, likely for a BMW S1000RR, Honda CBR1000RR, or potentially a Honda CBR650F/CB650F.', 17699, 56, '1 Kg', 1, 9),
(14, 'brake rotor', 'images/uploads/product/1737889220.jpeg', 'good quality and branded parts', 2800, 23, '250 gm', 1, 11),
(15, 'Dyna200 Intake hose', 'images/uploads/product/1737887670.jpeg', 'very exellent and good quality product', 2399, 24, '5 Kg', 1, 12),
(16, 'full kit chassis', 'images/uploads/product/1737887275.jpeg', 'The part shown in the image is a 3D car frame body. It represents the chassis or framework of a vehicle, often used for engineering and design visualizations.', 96288, 27, '750 gm', 1, 14),
(17, 'car Door ', 'images/uploads/product/1737887195.jpeg', 'The primary item is a car door shell, typically made of metal.\r\nIt is a structural component that houses the window, door handle, and locking mechanism.\r\nThis is commonly used for replacements during body repairs after an accident', 45000, 5, '2 Kg', 1, 14),
(18, 'Front Bumper', 'images/uploads/product/1737887207.jpeg', 'This appears to be the front bumper of a car, likely including slots for fog lights and a grille section.', 15999, 155, '250 gm', 1, 14),
(19, 'special body set', 'images/uploads/product/1737887214.jpeg', '\r\nwheel cover , hubcap , fog light , side mirror , front grille [special set]\r\n\r\nAll are original parts', 23569, 56, '1 Kg', 1, 14),
(20, 'car bodyshell or fender', 'images/uploads/product/1737887222.jpeg', 'Fenders are the arched parts of the vehicle body that surround the wheel cutouts. They are typically made of metal or plastic and help to protect the car and other vehicles from water, snow, and debris thrown up by the tires.', 480000, 81, '250 gm', 1, 14),
(21, 'evaportator', 'images/uploads/product/1737887621.jpeg', 'compressor, condenser,', 2030, 13, '500 gm', 1, 12),
(22, 'coolant 5L', 'images/uploads/product/1737887633.jpeg', 'radiator coolant , engine coolant or antifreeze', 1699, 41, '2 Kg', 1, 12),
(32, 'Dashboard', 'images/uploads/product/1737993073.jpeg', ' Dobond customized Automotive cup holder series chery m36t Auxiliary instrument panel Dashboard Rear Drink Holder', 7800, 20, '', 1, 13),
(23, 'radiator', 'images/uploads/product/1737887646.jpeg', 'heat exchange that cools fluid', 5600, 226, '750 gm', 1, 12),
(24, 'coolant 2L', 'images/uploads/product/1737888149.jpg', 'engine coolant or antifreeze', 499, 130, '1 Kg', 1, 12),
(26, 'cup holder and storage', 'images/uploads/product/1737888463.jpeg', 'Indian company specializing in plastic injection moldlng for the automotive .. ', 2506, 18, '500 gm', 1, 13),
(27, 'Door panel', 'images/uploads/product/1737888351.jpeg', 'One of the workhorses of car interior plastics is Acrylonitrile Butadiene Styrene, commonly known as ABS. This versatile plastic boasts a shiny, rubbery surface that makes it ideal for various automotive applications. ABS is often found in vehicle dashboards, tire covers, and specific body components.', 10000, 59, '250 gm', 1, 13),
(28, 'FRONT AXLE', 'images/uploads/product/1737888471.jpeg', 'Explore the bring home the best for you and your Family - because great meals start with great ingredients', 6502, 23, '750 gm', 1, 13),
(29, 'air brake', 'images/uploads/product/1737889270.png', 'good product and car brake is soothliy', 7800, 25, '250 gm', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(200) NOT NULL,
  `setting_value` varchar(200) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'email', 'autoparts@gmail.com'),
(2, 'phone_number', '0274200511'),
(3, 'Symbol', 'Choose Symbol'),
(4, 'fb_url', 'http://facebook.com'),
(5, 'x_url', 'http://twitter.com'),
(6, 'insta_url', 'http://Instagram.com'),
(7, 'yt_url', 'http://youtube.com'),
(9, 'logo', 'images/uploads/logo/1737994499.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(25) NOT NULL,
  `image` varchar(250) NOT NULL DEFAULT 'not image',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `type`, `image`) VALUES
(1, 'Moriya Mustabahusain', 'admin@gmail.com', 'Ali@_786', 'admin', 'images/uploads/profile/1737466587.jpg'),
(16, 'arman haba', 'user1@gmail.com', 'Ali@_786', 'user', 'not image'),
(17, 'mr_husain', 'user2@gmail.com', 'Ali@_786', 'user', 'not image'),
(18, 'ammar', 'user3@gmail.com', 'Ali@_786', 'user', 'not image'),
(19, 'moriya mustabahusain', 'user4@gmail.cm', 'Ali@_786', 'user', 'not image'),
(20, 'moriya mustabahusain', 'user2@yu.com', '123', 'user', 'not image'),
(21, 'moriya mustabahusain', 'user2@ail.com', '345', 'user', 'not image'),
(22, 'Ammar 2', 'ammar@gmail.com', 'ammar1234', 'user', 'not image'),
(23, 'Naruto', 'naruto@gmail.com', 'naruto1234', 'user', 'not image'),
(24, 'haba', 'haba@gmail.com', 'Ali@_786', 'user', 'not image'),
(25, 'kirti', 'kirti@gail.com', '1234', 'user', 'not image'),
(26, '5242fgdf', 'ammar@gmail.com', '1234', 'user', 'not image'),
(27, 'Naruto', 'user1gmai2@l.com', '1234', 'user', 'not image'),
(28, 'Naruto', 'user1@gmail.com', 'asd', 'user', 'not image'),
(29, 'husain', 'huain1@gmail.com', 'Ali@_786', 'user', 'not image'),
(30, 'hu', 'user1@gmail.com', 'ali@_786', 'user', 'not image'),
(31, 'hu', 'user2@gmail.com', '12345678', 'user', 'not image'),
(32, '1234', 'user1gmail.@sdd', '12345678', 'user', 'not image'),
(33, 'ballu', 'hu@gmail.com', '12345678', 'user', 'not image'),
(34, 'xyz1', 'xyz@gmail.com', '12345678', 'user', 'not image');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `details_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `note` varchar(11) NOT NULL DEFAULT 'not',
  `image` varchar(250) NOT NULL DEFAULT 'not image set',
  `zip_code` int(11) NOT NULL,
  PRIMARY KEY (`details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`details_id`, `user_id`, `name`, `email`, `phone`, `state`, `city`, `address`, `note`, `image`, `zip_code`) VALUES
(17, 16, 'arman haba', 'user1@gmail.com', 7383207862, 'india', 'palanpur', 'basu , palanpur ', '           ', 'images/uploads/profile/1739832090.jpg', 385520),
(18, 17, 'moriya mustabahusain', 'user2@gmail.com', 9173159640, 'india', 'palanpur', 'palanpur chadotar', '           ', 'images/uploads/profile/1739832697.jpg', 385001),
(19, 18, 'ammar', 'user3@gmail.com', 1731559640, 'india', 'palanpur', 'thur', '           ', 'images/uploads/profile/1740429755.jpg', 385001),
(20, 22, 'ammar3', 'ammar@gmail.com', 7046590071, 'gujarat', 'thur', 'thur', 'not', 'images/uploads/profile/1740436592.jpg', 385001),
(21, 23, 'Naruto', 'ammar@gmail.com', 5046590071, 'gujarat', 'thur', 'thur', '           ', 'not image set', 385001),
(22, 24, 'arman haba', 'haba@gmail.com', 7383207862, 'india', 'palanpur', 'basu , palanpur', '           ', 'not image set', 385520),
(23, 29, 'moriya mustabahusain', 'husaingmai@l.com', 9173159640, 'india', 'palanpur', 'palanpur chadotar', '           ', 'not image set', 385002);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
