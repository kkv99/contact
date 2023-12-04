-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 04:23 AM
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
-- Database: `stockmarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Acc_no` int(11) NOT NULL,
  `Balance` int(11) NOT NULL,
  `Cust_Name` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Date_Opened` date DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL,
  `Branch_Code` int(11) DEFAULT NULL,
  `Customer_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Acc_no`, `Balance`, `Cust_Name`, `Type`, `Date_Opened`, `Status`, `Branch_Code`, `Customer_Id`) VALUES
(1200000001, 3000, 'Tyler Robert', 'Checkings', '2000-05-21', 'Active', 1, 50001),
(1200000002, 1289, 'Brenda Michael', 'Savings', '2008-09-30', 'Active', 2, 50002),
(1200000003, 4595, 'Christine Anthony', 'Checkings', '2013-06-22', 'Closed', 3, 50003),
(1200000004, 54546, 'Adam Anthony', 'Checkings', '2019-01-12', 'Hold', 4, 50004),
(1200000005, 12120, 'Frances Robert', 'Savings', '1999-03-19', 'Active', 5, 50005),
(1200000006, 3436, 'Evelyn Donald', 'Savings', '2002-04-24', 'Active', 6, 50006),
(1200000007, 9898, 'Rose Steven', 'Chattanooga', '2004-05-29', 'Closed', 7, 50007),
(1200000008, 867693, 'Joe Edward', 'Savings', '2009-08-09', 'Active', 8, 50008),
(1200000009, 9846547, 'Ralph Brian', 'Savings', '2020-11-11', 'Active', 9, 50009),
(1200000010, 354546, 'Roy Timothy', 'Savings', '2021-12-12', 'Active', 10, 50010),
(1200000012, 345, 'gftefwey hdywf', 'Savings', '2023-11-30', 'Active', 1, 50038),
(1200000013, 345, 'mary john', 'Savings', '2023-11-30', 'Active', 1, 50039),
(1200000014, 56000, 'tera ms', 'Checkings', '2023-11-30', 'Active', 1, 50040);

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `Acc_Code` varchar(20) NOT NULL,
  `Acc_Type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`Acc_Code`, `Acc_Type`) VALUES
('CD001', 'Certificate_of_Deposit_Account'),
('CHK002', 'Checkings_Account'),
('Join001', 'Joint_Account'),
('LOA003', 'Loan_Account'),
('MMA004', 'MoneyMarket_Account'),
('SAV001', 'Savings_Account');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `Branch_Name` varchar(255) NOT NULL,
  `Branch_Code` int(11) NOT NULL,
  `Branch_Location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`Branch_Name`, `Branch_Code`, `Branch_Location`) VALUES
('Mcdonalds - Stones River', 1, '2180 Old Fort Pkwy, Murfreesboro, TN 37129'),
('South Church Street', 2, '2424 S Church St, Murfreesboro, TN 37127'),
('Northfield', 3, '1625 Memorial Blvd, Murfreesboro, TN 37129'),
('Middle Tennessee Blvd.', 4, '1680 Middle Tennessee Blvd, Murfreesboro, TN 37130'),
('Mid - Tn State University', 5, '1301 E Main St, Murfreesboro, TN 37132'),
('Smyrna', 6, '589 S Lowry St, Smyrna, TN 37167'),
('Sam Ridley Parkway', 7, '460 Sam Ridley Pkwy W, Smyrna, TN 37167'),
('North Smyrna Remote', 8, '267 N Lowry St, Smyrna, TN 37167'),
('Lavergne', 9, '445 Waldron Rd, Lavergne, TN 37086'),
('Hickory Hollow', 10, '5434 Bell Forge Lane E, Antioch, TN 37013');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Name` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL,
  `City` varchar(255) DEFAULT NULL,
  `ZipCode` int(11) NOT NULL,
  `Branch_Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Name`, `ID`, `City`, `ZipCode`, `Branch_Phone`) VALUES
('Mcdonalds - Stones River', 1, '2180 Old Fort Pkwy, Murfreesboro, TN', 37129, '+16151028845'),
('South Church Street', 2, '2424 S Church St, Murfreesboro, TN', 37127, '+16153689845'),
('Northfield', 3, '1625 Memorial Blvd, Murfreesboro, TN', 37129, '+16153839445'),
('Middle Tennessee Blvd.', 4, '1680 Middle Tennessee Blvd, Murfreesboro, TN', 37130, '+16153682937'),
('Mid - Tn State University', 5, '1301 E Main St, Murfreesboro, TN', 37132, '+16154957645'),
('Smyrna', 6, '589 S Lowry St, Smyrna, TN', 37167, '+16153920445'),
('Sam Ridley Parkway', 7, '460 Sam Ridley Pkwy W, Smyrna, TN', 37167, '+16153629045'),
('North Smyrna Remote', 8, '267 N Lowry St, Smyrna, TN', 37167, '+16153620435'),
('Lavergne', 9, '445 Waldron Rd, Lavergne, TN', 37086, '+16153104845'),
('Hickory Hollow', 10, '5434 Bell Forge Lane E, Antioch, TN', 37013, '+16153680685');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cust_ID` int(11) NOT NULL,
  `F_Name` varchar(255) NOT NULL,
  `L_Name` varchar(255) NOT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Contact_Number` varchar(15) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cust_ID`, `F_Name`, `L_Name`, `City`, `Contact_Number`, `Email`, `Date_of_Birth`, `Zip`, `Password`) VALUES
(50001, 'Tyler', 'Robert', 'Murfreesboro', '+16153395545', 'Tyler.Robert@gmail.com', '1998-05-21', 37128, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(50002, 'Brenda', 'Michael', 'Murfreesboro', '+16166664845', 'Brenda.Michael@gmail.com', '1994-09-30', 37126, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(50003, 'Christine', 'Anthony', 'Smyrna', '+16158777745', 'Christine.Anthony@gmail.com', '1939-06-22', 37132, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(50004, 'Adam', 'Anthony', 'Nashville', '+16159688885', 'Adam.Anthony@gmail.com', '1956-01-12', 36124, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(50005, 'Frances', 'Robert', 'Chattanooga', '+16395999945', 'Frances.Robert@gmail.com', '1924-03-19', 37134, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(50006, 'Evelyn', 'Donald', 'Lavernge', '+16153344845', 'Evelyn.Donald@gmail.com', '1955-04-24', 37156, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(50007, 'Rose', 'Steven', 'Chattanooga', '+16150955555', 'Rose.Steven@gmail.com', '1999-05-29', 37168, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(50008, 'Joe', 'Edward', 'Nashville', '+16154111145', 'Joe.Edward@gmail.com', '2000-08-09', 37176, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(50009, 'Ralph', 'Brian', 'Lavernge', '+16153222245', 'Ralph.Brian@gmail.com', '1999-11-11', 31245, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(50010, 'Roy', 'Timothy', 'Smyrna', '+16153622115', 'Roy.Timothy@gmail.com', '1955-12-12', 42312, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(50038, 'gftefwey', 'hdywf', 'Mount Juliet', '6778338942', 'yeerq@gmail.com', '2008-02-07', 37122, '$2y$10$Hxa80apeNhbqQ7gu5ww6iuZmvtrPenTpXUH2jONkzpeayJCxL.kKu'),
(50039, 'mary', 'john', 'Mount Juliet', '65432278', 'mary.john@gmail.com', '2023-11-02', 37122, '$2y$10$54p8l43APqAaxl0hz1SldeC5tEip/C2ipDdd3dJamNTQDspNUeq5u'),
(50040, 'tera', 'ms', 'Mount Juliet', '5137390066', 'tera@gmail.com', '2023-11-30', 37122, '$2y$10$HDx58/cIQzhBJNOiVR5/LufbQEheomAYAdIVUMaI4NNZsg2y4gcXO');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_ID` int(11) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Contact_Number` varchar(15) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Role_Id` int(11) DEFAULT NULL,
  `B_Code` int(11) DEFAULT NULL,
  `Password` varchar(255) NOT NULL DEFAULT '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_ID`, `First_Name`, `Last_Name`, `City`, `Contact_Number`, `Email`, `Role_Id`, `B_Code`, `Password`) VALUES
(10001, 'James', 'Robert', 'Murfreesboro', '+16153689845', 'James.Robert@gmail.com', 50001, 1, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(10002, 'Michael', 'Michael', 'Murfreesboro', '+16152494845', 'Michael.Michael@gmail.com', 50002, 1, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(10003, 'Matthew', 'Anthony', 'Smyrna', '+16158494345', 'Matthew.Anthony@gmail.com', 50002, 2, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(10004, 'James', 'Anthony', 'Nashville', '+16159601845', 'James.Anthony@gmail.com', 50002, 2, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(10005, 'Barbara', 'Robert', 'Chattanooga', '+16395869845', 'Barbara.Robert@gmail.com', 50003, 3, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(10006, 'Linda', 'Donald', 'Lavernge', '+16153299845', 'Linda.Donald@gmail.com', 50003, 3, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(10007, 'Paul', 'Steven', 'Chattanooga', '+16150980845', 'Paul.Steven@gmail.com', 50004, 4, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(10008, 'Donald', 'Edward', 'Nashville', '+16154859845', 'Donald.Edward@gmail.com', 50004, 5, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(10009, 'James', 'Brian', 'Lavernge', '+16153204445', 'James.Brian@gmail.com', 50005, 6, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu'),
(10010, 'Jessica', 'Timothy', 'Smyrna', '+16153699995', 'Jessica.Timothy@gmail.com', 50005, 7, '$2y$10$bu/1L.q.OY741q7ntHV2WOhigfYNFmwrE31XNUBsJ5oBfwrftXsfu');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `Loan_No` varchar(20) NOT NULL,
  `Loan_Code` varchar(30) NOT NULL,
  `Loan_Type` varchar(40) NOT NULL,
  `Account_No` int(11) DEFAULT NULL,
  `Loan_Amount` int(11) DEFAULT NULL,
  `Due_Amount` int(11) DEFAULT NULL,
  `ROI` int(11) DEFAULT NULL,
  `Branch_Code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`Loan_No`, `Loan_Code`, `Loan_Type`, `Account_No`, `Loan_Amount`, `Due_Amount`, `ROI`, `Branch_Code`) VALUES
('L0000001', 'PL0001', 'Personal Loan', 1200000001, 984394, 89455, 9, 1),
('L0000002', 'STU0003', 'Student Loans', 1200000002, 45454, 89455, 5, 2),
('L0000003', 'PL0001', 'Personal Loan', 1200000003, 343545, 3436, 9, 3),
('L0000004', 'PL0001', 'Personal Loan', 1200000004, 23232, 5655, 9, 4),
('L0000005', 'STU0003', 'Student Loans', 1200000005, 24345, 5658, 5, 5),
('L0000006', 'PL0001', 'Personal Loan', 1200000006, 57676, 89455, 9, 6),
('L0000007', 'Mort0004', 'MoneyMarket_Account', 1200000007, 67686, 89455, 7, 7),
('L0000008', 'Mort0004', 'MoneyMarket_Account', 1200000008, 98787, 89455, 7, 8),
('L0000009', 'AL0002', 'Auto Loan', 1200000009, 564545, 87455, 8, 9),
('L0000010', 'PL0001', 'Personal Loan', 1200000010, 676756, 89455, 8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `loan_type`
--

CREATE TABLE `loan_type` (
  `Loan_Code` varchar(20) NOT NULL,
  `Loan_Type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_type`
--

INSERT INTO `loan_type` (`Loan_Code`, `Loan_Type`) VALUES
('AL0002', 'Auto Loan'),
('Mort0004', 'MoneyMarket_Account'),
('PL0001', 'Personal Loan'),
('STU0003', 'Student Loans');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `stock_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `stock_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`stock_name`, `price`, `quantity`, `total`, `cust_id`, `stock_Id`) VALUES
('AAPL', 189, 34, 6439, 50007, 1),
('AAPL', 189, 567, 107373, 50008, 2),
('AAPL', 189, 513, 107373, 50009, 3),
('AAPL', 189, 2, 4348, 50001, 16),
('AAPL', 190, 20, 3799, 50038, 17),
('AAPL', 190, 46, 12727, 50001, 18);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Trans_ID` int(11) NOT NULL,
  `ACC_No` int(11) NOT NULL,
  `Cust_ID` int(11) NOT NULL,
  `WithdrawlAMT` int(11) DEFAULT NULL,
  `withdrawl_time` datetime DEFAULT NULL,
  `Emp_ID` int(11) DEFAULT NULL,
  `stock_name` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Trans_ID`, `ACC_No`, `Cust_ID`, `WithdrawlAMT`, `withdrawl_time`, `Emp_ID`, `stock_name`, `quantity`, `price`) VALUES
(1, 1200000001, 50001, 230, '2022-09-22 23:59:59', 10001, 'AMZN', 45, NULL),
(2, 1200000002, 50002, 20, '2022-02-09 14:32:59', 10002, 'AAPL', 467, NULL),
(3, 1200000003, 50003, 35, '2022-03-01 12:21:59', 10003, 'MSFT', 75, NULL),
(4, 1200000004, 50004, 60, '2022-03-30 13:32:59', 10002, 'GOOGL', 424, NULL),
(5, 1200000005, 50005, 100, '2022-04-21 09:43:59', 10001, 'NVD', 42, NULL),
(6, 1200000006, 50006, 300, '2022-04-19 10:34:59', 10005, 'TSLA', 285, NULL),
(7, 1200000007, 50007, 90, '2022-05-11 22:12:59', 10007, 'TSLA', 475, NULL),
(8, 1200000008, 50008, 100, '2022-06-02 21:55:59', 10008, 'TSLA', 477, NULL),
(9, 1200000009, 50009, 120, '2022-07-12 16:32:59', 10006, 'NFLX', 45, NULL),
(10, 1200000010, 50010, 300, '2022-09-13 19:34:59', 10006, 'NFLX', 76, NULL),
(11, 1200000010, 50010, 5400, '2022-09-17 19:35:58', 10006, 'AAPL', 12, NULL),
(12, 1200000010, 50010, 540, '2022-09-19 19:00:00', 10006, 'AAPL', 757, NULL),
(13, 1200000010, 50010, 5477, '2022-09-21 19:00:00', 10006, 'AAPL', 427, NULL),
(14, 1200000010, 50010, 5488, '2022-09-23 19:00:00', 10006, 'AAPL', 4527, NULL),
(15, 1200000009, 50009, 757, '2023-11-30 02:29:05', NULL, 'AAPL', 4, 189);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Acc_no`),
  ADD UNIQUE KEY `Customer_Id` (`Customer_Id`);

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`Acc_Code`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`Branch_Code`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cust_ID`),
  ADD UNIQUE KEY `F_Name` (`F_Name`,`L_Name`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`Loan_No`);

--
-- Indexes for table `loan_type`
--
ALTER TABLE `loan_type`
  ADD PRIMARY KEY (`Loan_Code`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`stock_Id`),
  ADD UNIQUE KEY `stock_Id` (`stock_Id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Trans_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `Acc_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1200000015;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cust_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50041;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `stock_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Trans_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
