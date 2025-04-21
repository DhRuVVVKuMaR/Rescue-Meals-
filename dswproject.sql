-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2024 at 08:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dswproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` text NOT NULL,
  `location` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_persons`
--

CREATE TABLE `delivery_persons` (
  `Did` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `amount`, `payment_method`, `name`, `email`, `phone`, `address`, `created_at`) VALUES
(1, 8898.00, 'PayPal', 'nidhi', 'dhruvkumar7390@gmail.com', '9571462877', '171', '2024-12-22 06:20:31'),
(2, 1000.00, 'UPI', 'Dhruv Kumar', 'kapil@gmail.com', '9999887737', 'jiit', '2024-12-22 09:34:06'),
(3, 1234.00, 'Bank Transfer', 'Dhruv Kumar', 'triggereddhruv@gmail.com', '9571462877', 'jiit', '2024-12-22 11:04:43'),
(4, 789.00, 'Credit Card', 'Dhruv Kumar', 'triggereddhruv@gmail.com', '9571462877', 'jiit', '2024-12-22 11:20:25'),
(5, 55.00, 'Credit Card', 'yp', 'triggereddhruv@gmail.com', '741852963', 'l', '2024-12-22 11:20:48'),
(6, 55.00, 'Credit Card', 'yp', 'triggereddhruv@gmail.com', '741852963', 'l', '2024-12-22 11:22:19'),
(7, 22.00, 'PayPal', 'Dhruv Kumar', 'triggereddhruv@gmail.com', '9571462877', '2s', '2024-12-22 11:22:33'),
(8, 789.00, 'UPI', 'Dhruv Kumar', 'triggereddhruv@gmail.com', '9571462877', 'kota', '2024-12-22 11:28:42'),
(9, 500.00, 'UPI', 'YP GANDHI', 'ypgandhi03@gmail.com', '9571462877', 'JIIT', '2024-12-22 11:31:28'),
(10, 560.00, 'UPI', 'Dhruv Kumar', 'dhruv@gmail.com', '9571462877', 'JIIT', '2024-12-23 06:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `food_donations`
--

CREATE TABLE `food_donations` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `food` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `phoneno` varchar(15) NOT NULL,
  `location` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_donations`
--

INSERT INTO `food_donations` (`id`, `email`, `food`, `type`, `category`, `phoneno`, `location`, `address`, `name`, `quantity`) VALUES
(1, '', 'pasta', 'veg', 'cooked-food', '9571462877', 'noida', 'JIIT NOIDA', 'dhruv ', '1'),
(2, 'ebc@gmail.com', 'pasta', 'veg', 'cooked-food', '9571462877', 'noida', 'JIIT NOIDA', 'dhruv ', '1'),
(3, 'ebc@gmail.com', 'rice', 'veg', 'raw-food', '3454345434', 'bareilly', 'JIIT NOIDA', 'chitransh', '11'),
(4, 'ebc@gmail.com', 'rice', 'veg', 'raw-food', '9571462877', 'bareilly', 'JIIT NOIDA', 'shrey', '11'),
(5, 'ebc@gmail.com', 'pav bhaji', 'Non-veg', 'packed-food', '9571462877', 'bareilly', 'jaypee institute of information tech.', 'chitransh', '11'),
(6, 'ebc@gmail.com', 'pav bhaji', 'Non-veg', 'packed-food', '9571462877', 'bareilly', 'jaypee institute of information tech.', 'chitransh', '11'),
(7, 'ebc@gmail.com', 'pav bhaji', 'Non-veg', 'packed-food', '9571462877', 'bareilly', 'jaypee institute of information tech.', 'chitransh', '11'),
(8, 'ebc@gmail.com', 'pav bhaji', 'Non-veg', 'packed-food', '9571462877', 'bareilly', 'jaypee institute of information tech.', 'chitransh', '11'),
(9, 'ebc@gmail.com', 'pav bhaji', 'Non-veg', 'packed-food', '9571462877', 'bareilly', 'jaypee institute of information tech.', 'chitransh', '11'),
(10, 'chitransh@gmail.com', 'rice', 'veg', 'raw-food', '9571462877', 'noida', 'JIIT NOIDA', 'chitransh saxena', '11'),
(11, 'chitransh@gmail.com', 'rice', 'veg', 'raw-food', '9571462877', 'bareilly', 'JIIT NOIDA', 'dhruv', '1'),
(12, 'chitransh@gmail.com', 'pav bhaji', 'veg', 'raw-food', '3454345434', 'kota', 'mlbhjcgf', 'dhruvkumr', '87678'),
(13, 'chitransh@gmail.com', 'pav bhaji', 'veg', 'raw-food', '3454345434', 'kota', 'mlbhjcgf', 'dhruvkumr', '87678'),
(14, 'chitransh@gmail.com', 'pav bhaji', 'veg', 'raw-food', '3454345434', 'kota', 'mlbhjcgf', 'dhruvkumr', '87678'),
(15, 'chitransh@gmail.com', 'rice', 'veg', 'raw-food', '2344323432', 'kota', 'fgfhntretgrfef', 'fdgfhngrthyjgfhgdf', '34'),
(16, 'chitransh@gmail.com', 'pasta', 'veg', 'raw-food', '2345678909', 'kota', 'dfgh', 'xfghnmzcvbnm,n', '1'),
(17, 'chitransh@gmail.com', 'pasta', 'veg', 'raw-food', '9571462877', 'kota', 'JIIT NOIDA', 'chitransh', '11'),
(18, 'amrit@email.com', 'pasta', 'veg', 'cooked-food', '3454345434', 'bareilly', 'JIIT NOIDA', 'DHRUV KUMAR', '56'),
(19, 'shrey@gmail.com', 'pasta', 'veg', 'raw-food', '8302109692', 'kota', 'JIIT NOIDA', 'dhruv', '44'),
(20, 'testing123@gmail.com', 'pizza', 'veg', 'cooked-food', '5689234578', 'kota', 'JIIT NOIDA', 'shrey', '34'),
(21, 'chit@gmail.com', 'pasta', 'veg', 'cooked-food', '8303881614', 'noida', 'JIIT NOIDA', 'chitranshh', '2'),
(22, 'test@example.com', 'rice', 'veg', 'raw-food', '9571462877', 'kota', 'JIIT NOIDA', 'dhruv', '34'),
(23, 'nidhiscdl@gmail.com', 'poha', 'veg', 'cooked-food', '9828858006', 'kota', '171 shastri nagar', 'nidhi', '20'),
(24, 'dhruvkumar7390@gmail.com', 'poha', 'veg', 'cooked-food', '5647895452', 'kota', '171 shastri nagar', 'dhd', '20'),
(25, 'kapil@gmail.com', 'biryani', 'Non-veg', 'cooked-food', '9999887737', 'noida', 'jiit', 'kapil', '89'),
(26, 'kapil@gmail.com', 'biryani', 'Non-veg', 'cooked-food', '9999887737', 'noida', 'jiit', 'kapil', '89'),
(27, 'kapil@gmail.com', 'poha', 'Non-veg', 'raw-food', '9828858006', 'kota', 'jiit', 'nidhi', '20'),
(28, 'kapil@gmail.com', 'poha', 'Non-veg', 'raw-food', '9828858006', 'kota', 'jiit', 'nidhi', '20'),
(29, 'kapil@gmail.com', 'poha', 'Non-veg', 'raw-food', '9828858006', 'kota', 'jiit', 'nidhi', '20'),
(30, 'kapil@gmail.com', 'biryani', 'veg', 'raw-food', '9828858006', 'kota', 'jiit', 'dhd', '89'),
(31, 'triggereddhruv@gmail.com', 'cake', 'veg', 'packed-food', '9571462877', 'kota', 'jiit', 'Dhruv Kumar', '23'),
(32, 'triggereddhruv@gmail.com', 'cake', 'veg', 'packed-food', '9571462877', 'kota', 'jiit', 'Dhruv Kumar', '23'),
(33, 'triggereddhruv@gmail.com', 'cake', 'veg', 'packed-food', '9571462877', 'kota', 'jiit', 'Dhruv Kumar', '23'),
(34, 'dhruv@gmail.com', 'Pasta', 'veg', 'cooked-food', '9571462877', 'noida', 'JIIT', 'Dhruv Kumar', '30');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `dob`, `gender`, `mobile`, `email`, `password`) VALUES
(1, 'dhruv', 'kumar', '2024-11-14', 'Male', '9571462877', 'abc@gmail.com', '$2y$10$B829nE1PurjAsfE8/hUUlu47Ip1NQ5kR2oxWffZSErkGTCOFgE9je'),
(2, 'shrey', 'gupta', '2024-11-12', 'Other', '9571462877', 'ebc@gmail.com', '$2y$10$9jq0Y/uowTnIzyXaDr0e9eY9IN9.6nb9wtG4.mdnC8OWNuWu4C4ta'),
(3, 'chitu', 'gyi', '2024-11-04', 'Female', '8303881617', 'kalinga@gmail.com', '$2y$10$f/QQKHV7ElqWvplAtxjCKOTqxW.glgx8/euM1.Jkqo8blO528gJa.'),
(4, 'chitransh', 'saxena', '2024-11-07', 'Male', '9571462877', 'chitransh@gmail.com', '$2y$10$J.0I4/4loReqO8tAQiTfW.QsbFsiLzRE5iCL0mEKiqWyYWsyseIAu'),
(5, 'amrit', 'kumar', '2024-11-20', 'Male', '9571462877', 'amrit@email.com', '$2y$10$Yy5YFiwke.40T2t9C1md6OpMwv2ksMo4sGVAVVBcIvaBkrzjNdkKO'),
(6, 'shrey', 'gupta', '2024-10-28', 'Male', '5278569455', 'shrey@gmail.com', '$2y$10$sHy8YdH4ePB0eRgaNZxlV.dnWetNKqWxRFarBwEQw76MKyw6LrP6S'),
(7, 'shrey', 'tripathi', '2024-10-22', 'Male', '5689234578', 'testing123@gmail.com', '$2y$10$kklN2BKlV9dixtFH7dbw8e5HMdG6RDp17LUc1U3YsffM88h4IL.0y'),
(8, 'chitranshh', 'saxena', '2024-05-15', 'Male', '8303881614', 'chit@gmail.com', '$2y$10$pgNta9egZx1f31MrVcFZwOG.9MxaFQhWwkkQ9SPGKSiOgsxvNws.W'),
(9, 'dhruv', 'kumar', '2024-12-05', 'Male', '9571462877', 'test@example.com', '$2y$10$blXfvZUKIwQb7dIa0vtCj.k5eDaUyNw.WAmyMnCII33uNVz.I3Cj.'),
(10, 'nidhi', 'gandhi', '1974-01-18', 'Female', '9828858006', 'nidhiscdl@gmail.com', '$2y$10$15RPSvXOTQcVd16gYPBQ1OElLB4oNyNe96In.QTFJkoFVcYVMszyK'),
(11, 'dhruv', 'kumar', '2024-12-25', 'Male', '9571462877', 'dhruvkumar7390@gmail.com', '$2y$10$4/A2GtMbwVTgspwS7t480.6D6lUrulM4NqT.j3ZcFrwoDv48.OMde'),
(12, 'kapil ', 'gandhi', '2024-12-12', 'Male', '9999887737', 'kapil@gmail.com', '$2y$10$5/9A0KT/RVT9vEnXMsaGE.SlyNOQzCPyKQSjMDaJep.g5JiaXMy6u'),
(13, 'dhruv', 'k', '2024-12-05', 'Male', '7894561234', 'triggereddhruv@gmail.com', '$2y$10$0WY3NOv6T3LBnUTnWzm5xOEli5ZxmN2TgjXuMIML5PSU8cSVlTfw.'),
(14, 'YP', 'GANDHI', '1975-08-03', 'Male', '9649684470', 'ypgandhi03@gmail.com', '$2y$10$ebq2lEV0RXt0rCfBPNzCYOmPxLx.dqV2cpxr45me7OmjRFC0vdxGq'),
(15, 'Dhruv ', 'Kumar', '2005-11-23', 'Male', '9571462877', 'dhruvvvkumar2@gmail.com', '$2y$10$NfYKIEUsTQ2e6dWAwXZ3eumUpMRxwtEgSGYjNbKJmnShkffXWNJqq'),
(16, 'Dhruv ', 'Kumar', '2005-11-23', 'Male', '9571462877', 'dhruv@gmail.com', '$2y$10$IwGWemBQzCEIVDFT6iaHou.KM5s.hcR5eHRBtQR0uhtiKjbruA/Iu');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `feedback_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`feedback_id`, `name`, `email`, `message`) VALUES
(1, 'John Smith', 'john@example.com', 'I really enjoyed using your product!'),
(7, 'DHRUV KUMAR', 'test@example.com', 'hi rescue meals'),
(8, '', '', ''),
(9, '', '', ''),
(10, 'DHRUV KUMAR', 'test@example.com', 'hi'),
(11, 'DHRUV KUMAR', 'rescuemeals01@gmail.com', 'hi'),
(12, 'DHRUV KUMAR', 'test@example.com', 'hi'),
(13, 'DHRUV KUMAR', 'test@example.com', 'hi'),
(14, 'DHRUV KUMAR', 'test@example.com', 'hi'),
(15, 'dhd', 'dhruvvvkumar2@gmail.com', 'hi'),
(16, 'Dhruv Kumar', 'dhruvkumar7390@gmail.com', 'hello world!'),
(17, 'Dhruv Kumar', 'dhruvkumar7390@gmail.com', 'hello world!'),
(18, 'Dhruv Kumar', 'dhruvvvkumar2@gmail.com', 'hello world!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `delivery_persons`
--
ALTER TABLE `delivery_persons`
  ADD PRIMARY KEY (`Did`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_donations`
--
ALTER TABLE `food_donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_persons`
--
ALTER TABLE `delivery_persons`
  MODIFY `Did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `food_donations`
--
ALTER TABLE `food_donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
