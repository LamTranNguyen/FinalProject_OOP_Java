-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2025 at 08:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brother_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `bill_date` datetime NOT NULL,
  `total_amount` double(10,2) NOT NULL,
  `staff_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `bill_date`, `total_amount`, `staff_id`) VALUES
(26, '2025-12-01 11:37:33', 273000.00, 10),
(27, '2025-12-01 11:40:56', 72000.00, 15),
(28, '2025-12-01 12:06:31', 150000.00, 15),
(29, '2025-12-01 13:01:30', 527000.00, 16);

-- --------------------------------------------------------

--
-- Table structure for table `bill_items`
--

CREATE TABLE `bill_items` (
  `item_id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` double(10,2) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill_items`
--

INSERT INTO `bill_items` (`item_id`, `bill_id`, `product_id`, `quantity`, `subtotal`, `product_name`) VALUES
(14, 26, 102, 4, 156000.00, 'Brother Fries (Spicy)'),
(15, 26, 102, 3, 117000.00, 'Brother Fries (Original)'),
(16, 27, 200, 4, 48000.00, 'Brother coke (Ice)'),
(17, 27, 200, 2, 24000.00, 'Brother coke (No ice)'),
(18, 28, 105, 6, 150000.00, 'Brother hotdog (Spicy)'),
(19, 29, 102, 3, 105000.00, 'Brother Fries (Original)'),
(20, 29, 102, 2, 70000.00, 'Brother Fries (Spicy)'),
(21, 29, 200, 2, 24000.00, 'Brother coke (Ice)'),
(22, 29, 300, 1, 135000.00, 'Couple combo (Sauced)'),
(23, 29, 301, 1, 169000.00, 'Giga combo (Crispy)'),
(24, 29, 400, 1, 8000.00, 'Icecream (Normal)'),
(25, 29, 400, 2, 16000.00, 'Icecream (Cup)');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `username`, `password`) VALUES
(0, 'system@gmail.com', 'System', '123'),
(1, 'trannguyenlam2005@gmail.com', 'lamadmin', 'santa123'),
(2, 'admin@gmail.com', 'admin', '123456'),
(10, '10423011@student.vgu.edu.vn', 'Thai Bao', '123456'),
(11, '10423070@gmail.com', 'Tran Nguyen Lam', '123456'),
(13, '23102005@gmail.com', 'Tran Trung Lam', 'santa123'),
(14, 'xitindau123@gmail.com', 'Nguyen Ngoc Truc Linh', 'santa123'),
(15, '10423070@student.vgu.edu.vn', 'Nguyen Lam', '123456'),
(16, 'test1@gmail.com', 'Manager VGU', 'vgu123');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `pro_type` varchar(255) NOT NULL,
  `pro_price` int(255) NOT NULL,
  `pro_image` varchar(500) DEFAULT NULL,
  `pro_stock` int(100) NOT NULL,
  `pro_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_type`, `pro_price`, `pro_image`, `pro_stock`, `pro_status`) VALUES
(102, 'Brother Fries', 'Meal', 35000, 'C:\\Users\\Dell Precision T5810\\Pictures\\Gallery_brother\\frenchfries.jpg', 95, 'Available'),
(103, 'Brother Chicken', 'Meal', 39000, 'C:\\Users\\Dell Precision T5810\\Pictures\\Gallery_brother\\friedchicken.jpg', 25, 'Available'),
(104, 'Brother Pizza', 'Meal', 69000, 'C:\\Users\\Dell Precision T5810\\Pictures\\Gallery_brother\\PIzza.jpg', 0, 'Unavailable'),
(105, 'Brother hotdog', 'Meal', 25000, 'C:\\Users\\Dell Precision T5810\\Pictures\\Gallery_brother\\hotdog.jpg', 37, 'Available'),
(106, 'Brother Burger', 'Meal', 59000, 'C:\\Users\\Dell Precision T5810\\Pictures\\Gallery_brother\\Burger.jpg', 12, 'Unavailable'),
(200, 'Brother coke', 'Drink', 12000, 'C:\\Users\\Dell Precision T5810\\Pictures\\Gallery_brother\\cocacola.jpg', 76, 'Available'),
(300, 'Couple combo', 'Combo', 135000, 'C:\\Users\\Dell Precision T5810\\Pictures\\Gallery_brother\\combo1.jpg', 11, 'Available'),
(301, 'Giga combo', 'Combo', 169000, 'C:\\Users\\Dell Precision T5810\\Pictures\\Gallery_brother\\combo2.jpg', 9, 'Available'),
(400, 'Icecream', 'Dessert', 8000, 'C:\\Users\\Dell Precision T5810\\Pictures\\Gallery_brother\\icecream.jpg', 73, 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `fk_bill_user` (`staff_id`);

--
-- Indexes for table `bill_items`
--
ALTER TABLE `bill_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_items_bill` (`bill_id`),
  ADD KEY `fk_items_product` (`product_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `bill_items`
--
ALTER TABLE `bill_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_user` FOREIGN KEY (`staff_id`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill_items`
--
ALTER TABLE `bill_items`
  ADD CONSTRAINT `fk_items_bill` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_items_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`pro_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
