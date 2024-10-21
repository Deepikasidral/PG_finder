-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2024 at 08:14 PM
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
-- Database: `pg`
--

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(2) NOT NULL,
  `image1` varchar(50) NOT NULL,
  `image2` varchar(50) NOT NULL,
  `image3` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(100) NOT NULL,
  `facilities` varchar(200) NOT NULL,
  `roomtype` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `ownername` varchar(200) NOT NULL,
  `ownermobile` varchar(10) NOT NULL,
  `owneraddress` varchar(500) NOT NULL,
  `area` varchar(200) NOT NULL,
  `buildingname` varchar(200) NOT NULL,
  `roommates` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `landmark` varchar(200) NOT NULL,
  `map` varchar(200) NOT NULL,
  `nosroom` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `image1`, `image2`, `image3`, `name`, `price`, `facilities`, `roomtype`, `address`, `ownername`, `ownermobile`, `owneraddress`, `area`, `buildingname`, `roommates`, `gender`, `landmark`, `map`, `nosroom`) VALUES
(1, 'uploads/img1.jpeg', 'uploads/img2.jpeg', 'uploads/img3.jpeg', 'Room 1', '8000', 'Wi-Fi, AC, Laundry, Kitchen', '1 BHK', 'bibwewadi', 'Deepika Sidral', '8010282423', 'Sivaji Nagar', 'Chintamani nagar', 'Chaitanya Apt', '4', 'Male', 'near VIT', 'https://www.google.com/maps?q=18.49482039206196,73.89474946794638&output=embed', '2'),
(2, 'uploads/img4.jpeg', 'uploads/img5.jpeg', 'uploads/img1.jpeg', 'Room 2', '10000', 'Wi-Fi, AC, Laundry, Kitchen', '2 BHK', 'bibewadi', 'Saburi Nikam', '8010282423', 'Shivaji Nagar', 'bibwewadi', 'chaitanya Apt', '5', 'Female', 'near VIT', 'https://www.google.com/maps?q=18.49482039206196,73.89474946794638&output=embed', '5'),
(20, 'uploads/img6.jpeg', 'uploads/img7.jpeg', 'uploads/img2.jpeg', 'Room3', '8000', 'Wifi,Parking', '1 BHK', 'bibwewadi', 'Sahil ', '8010282423', 'Pimpri', 'Chintamani Nagar', 'Chaitanya Apt', '4', 'any', 'near VIT', 'https://www.google.com/maps?q=18.459419437579008,73.85713577270508&output=embed', '2'),
(21, 'uploads/img8.jpeg', 'uploads/img9.jpeg', 'uploads/img10.jpeg', 'Room3', '8000', 'Wi-Fi, Parking', '1 BHK', 'bibwewadi', 'Shantanu', '8010282423', 'Pimpri', 'Chintamani Nagar', 'Chaitanya Apt', '4', 'any', 'near VIT', 'https://www.google.com/maps?q=18.459419437579008,73.85713577270508&output=embed', '2'),
(22, 'uploads/img2.jpeg', 'uploads/img6.jpeg', 'uploads/img9.jpeg', 'Room5', '10000', 'Parking, Gym', '2 BHK', 'bibwewadi', 'Deepika sidral', '8010282423', 'Shivaji Nagar', 'Chintamani Nagar', 'Green House', '5', 'any', 'near VIT', 'https://www.google.com/maps?q=18.459419437579008,73.85713577270508&output=embed', '2');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `mobile`, `email`, `password`, `gender`, `Address`) VALUES
(1, 'Deepika Sidral ', '8010282423', 'deepikasidral@gmail.com', '123', 'female', 'asasa'),
(4, 'mahi', '8010282423', 'nandinimaheshwaram24@gmail.com', '456', 'female', 'asdasdsa'),
(5, 'mahi', '1234567890', 'kore@gmail.com', '12345', 'male', 'asdsadad'),
(6, 'mahi', '1234567890', 'kore@gmail.com', '$2y$10$PPpfMRIkMIBBz', 'male', 'asdsadad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
