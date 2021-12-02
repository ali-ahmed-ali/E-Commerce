-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 16, 2021 at 03:47 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(12, 'Laptop'),
(13, 'Desktop'),
(14, 'Mouse'),
(15, 'Keyboard'),
(16, 'Headset'),
(17, 'Ram'),
(19, 'Graphics Card'),
(20, 'Case Fan'),
(21, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_amount` float NOT NULL,
  `order_transaction` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_currency` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_amount`, `order_transaction`, `order_status`, `order_currency`) VALUES
(53, 345, '345354', 'Completed', 'Rupee'),
(54, 345, '345354', 'Completed', 'Rupee');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(103, 'Gaming Desktop', 13, 260673, 5, 'ROG Strix GT35, 8 Cores 10th Gen Intel Core i7-10700KF Gaming Desktop (32GB RAM/2TB HDD + 512GB SSD/Window 10/11GB NVIDIA GeForce RTX 2080 Ti Graphics/with Keyboard & Mouse/Star Black), G35CZ-IN011T', 'ROG Strix GT35, 8 Cores 10th Gen', 'PikPng.com_gaming-desktop-png_4203653.png'),
(104, 'Lenovo IdeaPad', 12, 42690, 10, 'Lenovo IdeaPad Slim 3 10th Gen Intel Core i3 15.6\" (39.63cm) FHD Thin & Light Laptop (8GB/1TB HDD/Windows 10/MS Office/Intel UHD Graphics/2 Year Warranty/Platinum Grey/1.7Kg), 81WB015GIN', 'Lenovo IdeaPad Slim 3 10th Gen', 'lenovo-ideapad-3.jpg'),
(105, 'Desktop Ram', 17, 1249, 60, 'Dolgix 4GB DDR3 1333MHz Desktop Ram U-DIMM, LO-DIMM, UB-DIMM Memory Module', 'Dolgix 4GB DDR3 1333MHz Desktop ', 'pngwing.com (1).png'),
(106, 'Headset with Mic', 16, 1999, 90, 'Perfect All Around Sound: Gaming, music, recordings and more listen to exquisite sound with this headset\r\nAdjustable Boom Microphone: Not using the microphone? No problem easily move it up when not in use\r\nFlexible and Comfortable: Over-ear headphones offer a fantastic quality in comfort for long listening sessions\r\nInline Remote for Mute Switch and Volume: The inline controls gives you easy access for both the mute switch and volume slider\r\nWith boom microphone for gaming music and videos inline remote for mute switch and volume adjust. 6 Months Manufacturer\'s Warranty', 'Edifier K800 On Ear Headset', 'phu_kien_cover.jpg'),
(107, 'HP Keyboard', 15, 599, 60, 'Features a full range of 109 keys, including 12 working function keys and 3 hot keys\r\nCable Length: 1.5 meters, Interface Type: USB\r\nConnection is a breeze with USB connectivity so you can get up and running fast\r\nCompatible with Windows 7/8/10 Operating Systems and available USB port compatibility, adjustable height\r\nDimensions: 46.5 x 17 x 3 cm, weight: 0.49 kg\r\nCountry of Origin: China', 'HP 100 Wired USB Keyboard', 'pngwing.com (2).png'),
(109, 'Wireless Mouse', 14, 649, 400, 'Logitech M221 Wireless Mouse, Silent Buttons, 2.4 GHz with USB Mini Receiver, 1000 DPI Optical Tracking, 18-Month Battery Life, Ambidextrous PC/Mac/Laptop - Charcoal Grey', 'Logitech M221 Wireless Mouse', 'pngwing.com (3).png'),
(110, 'Case Fan/Cooler', 20, 476, 20, 'Ant Esports Superflow 120 Auto RGB V2 1200 RPM Case Fan/Cooler', 'Ant Esports Superflow Fan', '51287_id_cooling_se_234_argb_1.jpg'),
(111, 'ASUS Graphic Card', 19, 4898, 20, 'Asus GeForce GT 710 2GB GDDR5 HDMI VGA DVI Graphics Card Graphic Cards GT710-SL-2GD5-CSM', 'Asus GeForce GT 710 2GB GDDR5', '50021_asus_gt710_sl_1gd5_01.jpg'),
(112, 'IntelÂ® Coreâ„¢ i5-9', 21, 14999, 3, 'IntelÂ® Coreâ„¢ i5-9400F Processor (9M Cache, up to 4.10 GHz)', 'IntelÂ® Coreâ„¢ i5-9400F Processor ', '44011_hnc_intel_core_i5_9400_right_face_850x850.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `product_id`, `order_id`, `product_price`, `product_title`, `product_quantity`) VALUES
(30, 109, 53, 649, 'Wireless Mouse', 1),
(31, 107, 54, 599, 'HP Keyboard', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `slide_id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_title` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_title`, `slide_image`) VALUES
(22, 'Passer 02', '1.jpg'),
(23, 'Passer 03', '2.jpg'),
(24, 'Passer 04', '3.jpg'),
(25, 'Passer 05', '4.jpg'),
(26, 'Passer 06', '5.jpg'),
(27, 'Passer 07', '6.jpg'),
(28, 'Passer 08', '7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_photo` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `user_photo`) VALUES
(1, 'ali', 'ali@gmail.com', '123456', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
