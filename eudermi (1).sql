-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 09:15 PM
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
-- Database: `eudermi`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE `consultation` (
  `ExpertID` int(10) NOT NULL,
  `Cus_ID` int(10) NOT NULL,
  `ExpertName` varchar(15) NOT NULL,
  `Expertise` varchar(100) NOT NULL,
  `Time` varchar(100) NOT NULL,
  `Day` varchar(100) NOT NULL,
  `Cus_Name` varchar(100) NOT NULL,
  `Cus_Age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultation`
--

INSERT INTO `consultation` (`ExpertID`, `Cus_ID`, `ExpertName`, `Expertise`, `Time`, `Day`, `Cus_Name`, `Cus_Age`) VALUES
(1, 1, 'Emma', '0', '10:00 AM', 'Monday', 'walaa', 21),
(2, 1, 'Emma', '', '12:00 PM', 'Monday', 'walaa', 22),
(3, 1, 'Emma', 'A prominent dermatologist who provides effective consultations and treatments for various skin issue', '9:00 AM', 'Sunday', 'walaa', 21);

-- --------------------------------------------------------

--
-- Table structure for table `coustmer`
--

CREATE TABLE `coustmer` (
  `Cus_ID` int(10) NOT NULL,
  `Cus_Name` varchar(15) NOT NULL,
  `Cus_PhoneNumber` int(10) NOT NULL,
  `Cus_Age` int(2) NOT NULL,
  `Cus_Email` varchar(255) NOT NULL,
  `Cus_Password` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coustmer`
--

INSERT INTO `coustmer` (`Cus_ID`, `Cus_Name`, `Cus_PhoneNumber`, `Cus_Age`, `Cus_Email`, `Cus_Password`) VALUES
(1, 'ssssssss', 1234567898, 22, 'sss@gmail.com', 12345678),
(2, 'wa', 1234567899, 22, 'w@gmail.com', 12345678),
(3, 'waw', 1234567898, 22, 'ww@gmail.com', 12345678),
(4, 'f', 1234567898, 22, 'f@gmail.com', 12345678),
(5, 'faa', 123455783, 22, 'w3443@gmail.com', 12345678),
(6, 'waw', 1234567898, 22, 'f22@gmail.com', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `customized`
--

CREATE TABLE `customized` (
  `CustomizcreamID` int(10) NOT NULL,
  `Cus_ID` int(11) NOT NULL,
  `Ingredient` varchar(400) NOT NULL,
  `Quantities` int(11) NOT NULL,
  `Price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customized`
--

INSERT INTO `customized` (`CustomizcreamID`, `Cus_ID`, `Ingredient`, `Quantities`, `Price`) VALUES
(1, 1, 'Diazolidinyl Urea, Vitamin E', 1, '20'),
(2, 1, 'Optiphen+, Diazolidinyl Urea, Vitamin C, Vitamin E', 1, '25'),
(3, 1, 'Optiphen+, Vitamin C', 1, '20'),
(4, 1, 'Optiphen+, Vitamin C', 2, '40');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderIdD` int(10) NOT NULL,
  `Cus_ID` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `CustomizcreamID` int(10) NOT NULL,
  `PaymentMethod` varchar(255) NOT NULL,
  `Cost` varchar(100) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Cus_Name` varchar(15) NOT NULL,
  `Cus_PhoneNumber` int(10) NOT NULL,
  `Cus_Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(10) NOT NULL,
  `OrderID` int(10) NOT NULL,
  `Cus_ID` int(10) NOT NULL,
  `ExpariteDate` date NOT NULL,
  `CVV` int(3) NOT NULL,
  `Amount` varchar(20) NOT NULL,
  `CardNo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `OrderID`, `Cus_ID`, `ExpariteDate`, `CVV`, `Amount`, `CardNo`) VALUES
(1, 1, 1, '0000-00-00', 221, '90', 1111);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(10) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `Description` varchar(400) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `ProductImg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Description`, `Price`, `ProductImg`) VALUES
(1, 'Avocado Cream', 'Smooth and creamy avocado spread, perfect for enhancing dishes with its rich flavor and versatile nature.', '15$', 'AvkCream.jpeg'),
(2, 'Avocado Toner & lemongrass Cream', 'Hydrating and revitalizing skincare products designed for healthy and radiant skin.', '30$', 'Tonerandcream.jpeg'),
(3, 'Matcha Face Mask', 'Detoxify, brighten, and rejuvenate your skin with antioxidant-rich powdered green tea leaves for a refreshed and glowing complexion.', '20$', 'MatchaMask.jpeg\''),
(4, 'Spical Face Cream', 'Luxurious skincare product for nourished, rejuvenated, and radiant complexion.', '20$', 'Spical face cream.jpeg'),
(5, 'Spical Hand Cream', 'Nourish and moisturize your hands with a specially formulated skincare product, leaving them soft, smooth, and rejuvenated.', '20$', 'Spical hand cream.jpeg'),
(6, 'Spical Body Cream', 'Deeply nourish and hydrate your skin with a luxurious skincare product for a healthy and radiant appearance from head to toe.', '20$', 'Spical body cream.jpeg'),
(7, 'Eudermi Face Oil', 'Nourish, rejuvenate, and promote a youthful complexion with a high-quality facial oil infused with botanical extracts and essential oils.', '15$', 'Face Oil.jpeg'),
(8, 'Serum Vitmain C', 'Illuminate your skin with a potent skincare serum, containing brightening and antioxidant properties to even out skin tone, reduce dark spots, and enhance radiance..', '22$', 'Vitmain C.jpeg'),
(9, 'Spical Avocado Hand Cream', 'Nourishing and moisturizing skincare product infused with avocado to leave hands soft, smooth, and rejuvenated.', '20$', 'AvkCream.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `technicalsupport`
--

CREATE TABLE `technicalsupport` (
  `TS_ID` int(10) NOT NULL,
  `Cus_ID` int(10) NOT NULL,
  `Issue` varchar(400) NOT NULL,
  `Cus_Name` varchar(15) NOT NULL,
  `Cus_Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicalsupport`
--

INSERT INTO `technicalsupport` (`TS_ID`, `Cus_ID`, `Issue`, `Cus_Name`, `Cus_Email`) VALUES
(4, 1, 'I CAN NOT ADD A PRODUCT IN A CART', 'waw', 'sss@gmail.com'),
(5, 1, 'I CAN NOT ADD A PRODUCT TO THE CART!', 'WALAA', 'sss@gmail.com'),
(6, 1, 'I can not add a product to the cart!', 'WALAA', 'ww@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`ExpertID`);

--
-- Indexes for table `coustmer`
--
ALTER TABLE `coustmer`
  ADD PRIMARY KEY (`Cus_ID`);

--
-- Indexes for table `customized`
--
ALTER TABLE `customized`
  ADD PRIMARY KEY (`CustomizcreamID`),
  ADD KEY `CustomizcreamID` (`CustomizcreamID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderIdD`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `technicalsupport`
--
ALTER TABLE `technicalsupport`
  ADD PRIMARY KEY (`TS_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consultation`
--
ALTER TABLE `consultation`
  MODIFY `ExpertID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coustmer`
--
ALTER TABLE `coustmer`
  MODIFY `Cus_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customized`
--
ALTER TABLE `customized`
  MODIFY `CustomizcreamID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderIdD` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `technicalsupport`
--
ALTER TABLE `technicalsupport`
  MODIFY `TS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
