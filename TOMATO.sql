-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2021 at 03:00 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `imagepath` varchar(100) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `deleted`, `imagepath`, `flag`, `category`) VALUES
(1, 'aloo paratha', 40, 0, 'uploads/5bf16c3605a757.81605791.jpg', 0, 'Breakfast'),
(2, 'arhar toor dal', 70, 0, 'uploads/5bf16ceb2fc155.22384628.jpg', 0, 'Dinner'),
(3, 'butter chicken', 200, 0, 'uploads/5bf16d5a720dd8.44690677.jpg', 0, 'Non-Veg'),
(4, 'chicken biryani', 300, 0, 'uploads/5bf16d904af6c8.26704025.jpg', 0, 'Non-Veg'),
(5, 'chicken pizza', 220, 0, 'uploads/5bf16e7287e963.06215024.jpg', 0, 'FastFood'),
(6, 'chicken roll', 60, 0, 'uploads/5bf16eb3a6b464.94215056.jpg', 0, 'Non-Veg'),
(7, 'chicken tandori', 150, 0, 'uploads/5bf16ef18c9a07.26476091.jpg', 0, 'Non-Veg'),
(8, 'chilli paneer', 140, 0, 'uploads/5bf16f38344280.44011155.jpg', 0, 'Dinner'),
(9, 'crispy chilli potato', 50, 0, 'uploads/5bf170149ad0e0.80429253.png', 0, 'FastFood'),
(10, 'dal tadka', 80, 0, 'uploads/5bf17082ae5f90.91666581.jpg', 0, 'Dinner'),
(11, 'dal makhani', 90, 0, 'uploads/5bf170e4304c60.54765524.jpg', 0, 'Dinner'),
(12, 'dosa masala', 85, 0, 'uploads/5bf1735bbdaad2.61583787.jpg', 0, 'Breakfast'),
(13, 'egg burger', 45, 0, 'uploads/5bf17656af7f74.54788089.jpg', 0, 'FastFood'),
(14, 'egg burger', 45, 0, 'uploads/5bf176b91c5cd3.93768622.jpg', 0, 'Breakfast'),
(15, 'dosa masala', 85, 0, 'uploads/5bf17605873d35.36251154.jpg', 0, 'Dinner'),
(16, 'egg roll', 50, 0, 'uploads/5bf177159ed946.32241691.jpg', 0, 'Lunch'),
(17, 'french fries', 60, 0, 'uploads/5bf1777ca5f560.94504570.jpg', 0, 'FastFood'),
(18, 'french fries', 60, 0, 'uploads/5bf1779f44def8.18082063.jpg', 0, 'Lunch'),
(19, 'fried rice pulao', 90, 0, 'uploads/5bf177fb3189a4.35635289.jpg', 0, 'Dinner'),
(20, 'fries cheese burger', 100, 0, 'uploads/5bf1786168cd78.49229017.jpg', 0, 'Lunch'),
(21, 'fries cheese burger', 100, 0, 'uploads/5bf178ad190094.93382584.jpg', 0, 'FastFood'),
(22, 'grilled cheese sandwich', 45, 0, 'uploads/5bf1790c7e5ff9.69756454.jpg', 0, 'Breakfast'),
(23, 'grilled cheese sandwich', 45, 0, 'uploads/5bf1791f8999e9.95241459.jpg', 0, 'Lunch'),
(24, 'grilled sandwich', 30, 0, 'uploads/5bf1795919b495.16020491.jpg', 0, 'Breakfast'),
(25, 'ham burger', 60, 0, 'uploads/5bf17996f11f27.27572514.jpg', 0, 'Lunch'),
(26, 'ham burger', 60, 0, 'uploads/5bf179abc4ba96.26401960.jpg', 0, 'FastFood'),
(27, 'honey chilli potato', 80, 0, 'uploads/5bf179cdf35136.70943490.jpg', 0, 'FastFood'),
(28, 'hyderabadi chicken biryani', 120, 0, 'uploads/5bf17a129828a5.18324122.jpg', 0, 'Non-Veg'),
(29, 'kadai paneer', 150, 0, 'uploads/5bf17a369f2196.99752565.jpg', 0, 'Lunch'),
(30, 'kadai paneer', 150, 0, 'uploads/5bf17a4c21d157.43715819.jpg', 0, 'Dinner'),
(31, 'macaroni pasta', 100, 0, 'uploads/5bf17a74c22877.65697347.jpg', 0, 'Lunch'),
(32, 'margherita pizza', 180, 0, 'uploads/5bf17aa7aa46e3.66464603.jpg', 0, 'FastFood'),
(33, 'margherita pizza', 180, 0, 'uploads/5bf17ab93df177.50665245.jpg', 0, 'Dinner'),
(34, 'margherita pizza', 180, 0, 'uploads/5bf17acaec8f43.49179901.jpg', 0, 'Lunch'),
(35, 'matar paneer', 135, 0, 'uploads/5bf17aef1ac5e9.14292496.jpg', 0, 'Lunch'),
(36, 'matar paneer', 135, 0, 'uploads/5bf17b0ca21133.80851887.jpg', 0, 'Dinner'),
(37, 'moong dal', 85, 0, 'uploads/5bf17b3d6f9499.35664956.jpg', 0, 'Dinner'),
(38, 'mushroom masala', 120, 0, 'uploads/5bf17b75cbc806.97758598.jpg', 0, 'Dinner'),
(39, 'mushroom methi', 125, 0, 'uploads/5bf17b978e0e49.49360109.jpg', 0, 'Dinner'),
(40, 'noodles', 45, 0, 'uploads/5bf17bd7dc9116.79288641.png', 0, 'FastFood'),
(41, 'palak paneer', 145, 0, 'uploads/5bf17c4d765282.10715313.jpg', 0, 'Lunch'),
(42, 'palak paneer', 145, 0, 'uploads/5bf17c69431554.28094975.jpg', 0, 'Dinner'),
(43, 'paneer butter masala', 160, 0, 'uploads/5bf17c892edc07.90304483.jpg', 0, 'Dinner'),
(44, 'paneer butter masala', 160, 0, 'uploads/5bf17ca6c93752.07448051.jpg', 0, 'Lunch'),
(45, 'paneer do pyaza', 125, 0, 'uploads/5bf17cd6d340c9.15465149.jpg', 0, 'Dinner'),
(46, 'paneer do pyaza', 125, 0, 'uploads/5bf17cf0aade14.85159883.jpg', 0, 'Lunch'),
(47, 'red sauce penni pasta', 80, 0, 'uploads/5bf17ddbcd04a8.56074788.jpeg', 0, 'FastFood'),
(48, 'pasta', 70, 0, 'uploads/5bf17e35b8ba45.11685875.jpg', 0, 'Lunch'),
(49, 'plain paratha', 25, 0, 'uploads/5bf17e6014f072.51039166.jpg', 0, 'Dinner'),
(50, 'plain paratha', 25, 0, 'uploads/5bf17e71647c24.83060332.jpg', 0, 'Lunch'),
(51, 'plain paratha', 25, 0, 'uploads/5bf17e8460ce60.60317897.jpg', 0, 'Breakfast'),
(52, 'red sauce pasta', 80, 0, 'uploads/5bf17ea99faa33.99379375.jpg', 0, 'Lunch'),
(53, 'shahi paneer', 140, 0, 'uploads/5bf17eeb0eb0e5.57974552.jpg', 0, 'Lunch'),
(54, 'shahi paneer', 140, 0, 'uploads/5bf17f14c28504.83723129.jpg', 0, 'Dinner'),
(55, 'spring roll', 70, 0, 'uploads/5bf18c19d8fdc6.91518262.jpg', 0, 'Lunch'),
(56, 'spring roll', 70, 0, 'uploads/5bf18c2fcc5782.85690288.jpg', 0, 'FastFood'),
(57, 'stuffed paratha', 30, 0, 'uploads/5bf18c5a6e5dc7.97142850.jpg', 0, 'Dinner'),
(58, 'stuffed paratha', 30, 0, 'uploads/5bf18c6ee2bcf2.23396575.jpg', 0, 'Lunch'),
(59, 'stuffed paratha', 30, 0, 'uploads/5bf18c82b25df2.83858894.jpg', 0, 'Breakfast'),
(60, 'sub sandwich', 70, 0, 'uploads/5bf18cb2848bd3.35027470.jpg', 0, 'Breakfast'),
(61, 'sub sandwich', 70, 0, 'uploads/5bf18cca2d8ce6.57612234.jpg', 0, 'FastFood'),
(62, 'tandoori roti', 15, 0, 'uploads/5bf18cf21e44a4.11080103.jpg', 0, 'Dinner'),
(63, 'tandoori roti', 15, 0, 'uploads/5bf18d05966560.38014008.jpg', 0, 'Lunch'),
(64, 'toor dal tadka', 85, 0, 'uploads/5bf18d44052fb6.78654054.jpg', 0, 'Dinner'),
(65, 'toor dal tadka', 85, 0, 'uploads/5bf18d5ebb7f26.99383897.jpg', 0, 'Lunch'),
(66, 'veg roll', 35, 0, 'uploads/5bf18d8ae2f629.65705364.jpg', 0, 'FastFood'),
(67, 'veg roll', 35, 0, 'uploads/5bf18dc41d4d12.90103382.jpg', 0, 'Lunch'),
(68, 'veg sandwich', 35, 0, 'uploads/5bf18dee617920.83906169.jpg', 0, 'FastFood'),
(69, 'veg sandwich', 35, 0, 'uploads/5bf18e041ff635.89106146.jpg', 0, 'Breakfast'),
(70, 'white sauce pasta', 90, 0, 'uploads/5bf18e559fb7b3.62429500.jpg', 0, 'FastFood'),
(71, 'white sauce pasta', 90, 0, 'uploads/5bf18e686ed475.90789826.jpg', 0, 'Lunch'),
(72, 'banana shake', 30, 0, 'uploads/5bf1b2ab025291.25910216.jpg', 0, 'Drinks'),
(73, 'blue mojito', 45, 0, 'uploads/5bf1b2c7e45244.18019202.jpg', 0, 'Drinks'),
(74, 'chocolate shake', 50, 0, 'uploads/5bf1b437658681.29397099.jpg', 0, 'Drinks'),
(75, 'iced cafe mocha', 45, 0, 'uploads/5bf1b48c9cc7a8.95574548.jpg', 0, 'Drinks'),
(76, 'lemon blueberry mojito', 55, 0, 'uploads/5bf1b4c2cb9832.51273875.jpg', 0, 'Drinks'),
(77, 'mango milkshake', 40, 0, 'uploads/5bf1b4e0af7544.82534557.jpg', 0, 'Drinks'),
(78, 'pineapple mojito', 55, 0, 'uploads/5bf1b4fb3c9067.02962109.jpg', 0, 'Drinks'),
(79, 'strawberry milkshake', 50, 0, 'uploads/5bf1b515c1ed20.88211308.jpg', 0, 'Drinks'),
(80, 'black tea', 20, 0, 'uploads/5bf1b7ccaf4ba2.59351015.jpg', 0, 'Tea'),
(81, 'charnomile tea', 25, 0, 'uploads/5bf1b7ee0856d4.38359074.jpg', 0, 'Tea'),
(82, 'ginger tea', 25, 0, 'uploads/5bf1b809920062.05722475.jpg', 0, 'Tea'),
(83, 'oolong tea', 25, 0, 'uploads/5bf1b82041e866.89665908.jpg', 0, 'Tea'),
(84, 'shai adeni tea', 25, 0, 'uploads/5bf1b8468362d5.35400013.jpg', 0, 'Tea'),
(85, 'bbq burger', 80, 0, 'uploads/5bf23590757f22.33750986.jpeg', 0, 'FastFood'),
(86, 'coffee', 50, 0, 'uploads/5bf23f14bac858.60102569.png', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_type` varchar(16) NOT NULL DEFAULT 'Wallet',
  `total` int(11) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Yet to be delivered',
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `description`, `date`, `payment_type`, `total`, `status`, `deleted`) VALUES
(1, 3, '1745 ABBIII,JIIT-62,Nodia', '', '2018-11-18 22:19:05', 'Wallet', 550, 'Delivered', 0),
(2, 2, 'Address1', '', '2018-11-18 22:23:28', 'Wallet', 345, 'Delivered', 0),
(3, 2, 'Address1', '', '2018-11-18 22:25:06', 'Wallet', 380, 'Cancelled by Admin', 0),
(4, 2, 'Address1', '', '2018-11-18 22:59:48', 'Wallet', 300, 'Cancelled by Customer', 1),
(5, 7, 'a block sector 62 jiit noida', '', '2018-11-19 00:06:56', 'Wallet', 1700, 'Cancelled by Customer', 1),
(6, 2, 'Address1', 'Hello', '2018-11-19 01:34:10', 'Wallet', 750, 'Yet to be delivered', 0),
(7, 2, 'Address1', '', '2018-11-19 09:25:49', 'Wallet', 220, 'Yet to be delivered', 0),
(8, 2, 'Address1', '', '2018-11-19 10:04:06', 'Wallet', 250, 'Delivered', 0),
(9, 2, 'jiit sdhjdj', 'deliver fast', '2018-11-19 10:21:16', 'Wallet', 45, 'Yet to be delivered', 0),
(10, 2, 'Address1\r\n12A panchwati\r\ndva zc', '', '2021-06-19 19:17:29', 'Cash On Delivery', 430, 'Delivered', 0),
(11, 2, '12A panchwati colony', 'Need Pickle with salad', '2021-07-24 11:03:09', 'Cash On Delivery', 640, 'Delivered', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`) VALUES
(1, 1, 1, 2, 80),
(2, 1, 2, 1, 70),
(3, 1, 3, 2, 400),
(4, 2, 1, 1, 40),
(5, 2, 12, 2, 170),
(6, 2, 14, 3, 135),
(7, 3, 5, 1, 220),
(8, 3, 9, 2, 100),
(9, 3, 13, 0, 0),
(10, 3, 17, 1, 60),
(11, 4, 4, 1, 300),
(12, 5, 3, 1, 200),
(13, 5, 4, 5, 1500),
(14, 6, 4, 1, 300),
(15, 6, 7, 3, 450),
(16, 7, 5, 1, 220),
(17, 8, 85, 2, 160),
(18, 8, 11, 1, 90),
(19, 9, 13, 1, 45),
(20, 10, 1, 5, 200),
(21, 10, 2, 2, 140),
(22, 10, 70, 1, 90),
(23, 11, 1, 6, 240),
(24, 11, 52, 2, 160),
(25, 11, 47, 3, 240);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'Open',
  `type` varchar(30) NOT NULL DEFAULT 'Others',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `poster_id`, `subject`, `description`, `status`, `type`, `date`, `deleted`) VALUES
(1, 2, 'Order Not Delivered', 'Pls Deliver my order in next 30 mins', 'Closed', 'Others', '2018-11-18 22:26:14', 0),
(2, 2, 'not good food', 'not good food huihhhhhhhhhhhhhhhhhuhiuhbk', 'Open', 'Complaint', '2021-07-24 11:09:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

CREATE TABLE `ticket_details` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_details`
--

INSERT INTO `ticket_details` (`id`, `ticket_id`, `user_id`, `description`, `date`) VALUES
(1, 1, 2, 'Pls Deliver my order in next 30 mins', '2018-11-18 22:26:14'),
(2, 1, 2, 'Pls Hurry', '2018-11-18 22:29:39'),
(3, 1, 1, 'We have delivered Order', '2018-11-18 22:31:30'),
(4, 2, 2, 'not good food huihhhhhhhhhhhhhhhhhuhiuhbk', '2021-07-24 11:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL DEFAULT 'Customer',
  `name` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `contact` bigint(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `Image` varchar(100) DEFAULT NULL,
  `Flag` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `password`, `email`, `address`, `contact`, `verified`, `deleted`, `Image`, `Flag`) VALUES
(1, 'Administrator', 'Admin1', 'root', 'toor', 'mail1@example.com', 'Address1', 9000800000, 1, 0, 'upload/5bf1646059e379.74989946.jpg', 1),
(2, 'Customer', 'Customer 1', 'user1', 'pass1', 'mail2@example.com', 'Address1', 9000800001, 1, 0, 'upload/5bf1671da09b51.42528327.jpg', 1),
(3, 'Customer', 'Yogesh Gupta', 'Yogesh', 'Yogesh', 'mail3@example.com', '1745 ABBIII,JIIT-62,Nodia', 7728832721, 1, 0, 'upload/5bf16765c00b83.19464120.jpg', 1),
(4, 'Customer', 'Deeptanshu Shar', 'Deeptanshu', 'Deeptanshu', 'mail4@example.com', 'Address4', 9000800002, 1, 0, 'upload/5bf167a87c3f44.59638577.jpg', 0),
(5, 'Customer', 'Varun Singhai', 'Varun', 'Varun', 'mail5@example.com', 'Address5', 9000800003, 1, 0, 'upload/5bf167e12e7be1.29153274.jpg', 1),
(6, 'Customer', 'Shubham Singh', 'Shubham', 'Shubham', 'mail6@example.com', 'Address6', 9000800004, 0, 1, 'upload/5bf1681a741029.27471063.jpg', 1),
(7, 'Customer', 'Prakhar Mathur', 'mathur619', 'rohit##m', NULL, NULL, 7976866184, 0, 0, 'upload/5bf1afee388627.80294353.', 1),
(8, 'Customer', 'john doe', 'johnny', 'johnny', NULL, NULL, 7584313155, 0, 0, 'upload/5bf1d1a8cd2c10.74444768.', 1),
(9, 'Customer', 'customer 9', 'User9', 'User9', NULL, NULL, 7728832721, 0, 0, 'upload/5bf23eb89891a3.83357424.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `customer_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_details`
--

CREATE TABLE `wallet_details` (
  `id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `number` varchar(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '2000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`id`, `wallet_id`, `number`, `cvv`, `balance`) VALUES
(1, 1, '1111222233334444', 123, 2000),
(2, 2, '1111222233334444', 123, 1000),
(3, 3, '1956784325458945', 616, 1450),
(4, 4, '1111222233334444', 123, 2000),
(5, 5, '1111222233334444', 123, 2000),
(6, 6, '1111222233334444', 123, 2000),
(7, 7, '8805423232131215', 86, 2000),
(8, 8, '9737114753614532', 929, 2000),
(9, 9, '9846252314416435', 757, 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poster_id` (`poster_id`);

--
-- Indexes for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_id` (`wallet_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ticket_details`
--
ALTER TABLE `ticket_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD CONSTRAINT `ticket_details_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `ticket_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD CONSTRAINT `wallet_details_ibfk_1` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
