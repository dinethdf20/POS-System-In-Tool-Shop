-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20230611.5937beaa60
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 11:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql7625497`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_loging`
--

CREATE TABLE `admin_loging` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `spr` varchar(288) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_loging`
--

INSERT INTO `admin_loging` (`id`, `user_name`, `Password`, `spr`) VALUES
(1, 'admin', 'admin', ''),
(2, 'purni', '1234', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_ID` int(11) NOT NULL,
  `Con_ID` varchar(20) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Section` varchar(255) NOT NULL,
  `Mobite_Number` varchar(255) NOT NULL,
  `Fix_Number` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `P_Ger_Product` int(11) NOT NULL,
  `T_Ger_Product` int(11) NOT NULL,
  `Is_Active` tinyint(1) NOT NULL,
  `Spre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_ID`, `Con_ID`, `First_Name`, `Last_Name`, `Address`, `Section`, `Mobite_Number`, `Fix_Number`, `Email`, `P_Ger_Product`, `T_Ger_Product`, `Is_Active`, `Spre`) VALUES
(1, 'E1', 'Dineth', 'Dilshan', 'Hospital Road, Walawwatta, Pelmadulla', 'Maintanes', '07164897645', '045897864', 'dasdjas@djnsadj.csdnasj', 3, 4, 1, 2022),
(2, 'E2', 'Poorni', 'Mandira', 'Yanthampalama, Kurunagala', 'R & D', '0752345686', '0458987963', 'dsdasdsa@sdasd.dsfdsf', 5, 4, 1, 545),
(3, 'M1', 'Dinidu', 'Perera', 'Piliyandala', 'MNT', '0723478954', '0458844565', 'vbcmbdfh@dfh.cis', 2, 1, 1, 200),
(4, 'M2', 'Lakshani', 'Darmadas', 'Thalawathugoda', 'ABCD', '0723478222', '0458844555', 'sdbkjfmbdfh@dfh.com', 8, 2, 1, 200);

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `e_id` int(11) NOT NULL,
  `prm_last_Invoice` int(11) NOT NULL,
  `temp_last_Invoice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`e_id`, `prm_last_Invoice`, `temp_last_Invoice`) VALUES
(1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lowinvnt`
--

CREATE TABLE `lowinvnt` (
  `id` int(11) NOT NULL,
  `Item_Code` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lowinvnt`
--

INSERT INTO `lowinvnt` (`id`, `Item_Code`) VALUES
(1, 'DRL001S10'),
(2, 'http://NutH'),
(3, 'NutHex10'),
(4, 'Optsen');

-- --------------------------------------------------------

--
-- Table structure for table `perm_order_item_list`
--

CREATE TABLE `perm_order_item_list` (
  `Order_Id` int(11) NOT NULL,
  `Invoice_Number` int(11) NOT NULL,
  `Item_Code` varchar(255) NOT NULL,
  `Item_Name` varchar(255) NOT NULL,
  `Qty` int(11) NOT NULL,
  `SPR` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perm_order_item_list`
--

INSERT INTO `perm_order_item_list` (`Order_Id`, `Invoice_Number`, `Item_Code`, `Item_Name`, `Qty`, `SPR`) VALUES
(46, 2, 'NutHex15', 'Bolt Hexaganal 15 mm Size', 50, ''),
(47, 2, 'DRL001S10', 'Drilling tool 10mm', 1, ''),
(48, 2, 'DRL001S10', 'Drilling tool 10mm', 5, ''),
(49, 2, 'http://NutHex9', 'fdsfsf', 7, ''),
(50, 2, 'http://NutHex10', 'fgdfgdfg', 8, ''),
(51, 3, 'DRL001S10', 'Drilling tool 10mm', 5, ''),
(52, 3, 'DRL001S12', 'Drilling tool 12mm', 8, ''),
(53, 3, 'http://NutHex9', 'fdsfsf', 5, ''),
(54, 5, 'http://BHex15', 'rerwerwer', 30, ''),
(55, 5, 'http://NutHex9', 'fdsfsf', 40, '');

-- --------------------------------------------------------

--
-- Table structure for table `pernamat_iss_invoice`
--

CREATE TABLE `pernamat_iss_invoice` (
  `Invoice_ID` int(11) NOT NULL,
  `Emp_ID` varchar(11) NOT NULL,
  `Emp_Name` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Tot_Product` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `SPr` varchar(255) NOT NULL,
  `Spr1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pernamat_iss_invoice`
--

INSERT INTO `pernamat_iss_invoice` (`Invoice_ID`, `Emp_ID`, `Emp_Name`, `Date`, `Tot_Product`, `Qty`, `SPr`, `Spr1`) VALUES
(1, 'E1', 'Dineth', '2023-05-30', 5, 25, '', ''),
(2, 'E2', 'Poorni', '2023-05-31', 5, 71, '', ''),
(3, 'E2', 'Poorni', '2023-06-01', 3, 18, '', ''),
(4, 'E1', 'Dineth', '2023-06-09', 0, 0, '', ''),
(5, 'Select', 'Consumer', '2023-06-09', 2, 70, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `ID` int(11) NOT NULL,
  `Item_Code` varchar(255) NOT NULL,
  `Item_Name` varchar(255) NOT NULL,
  `Qty` int(10) NOT NULL,
  `Add_table_qty` int(11) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Limit_Stk_Count` int(11) NOT NULL,
  `Is_Available` int(11) NOT NULL,
  `IsAddTbl` int(11) NOT NULL,
  `Supplier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`ID`, `Item_Code`, `Item_Name`, `Qty`, `Add_table_qty`, `Category`, `Limit_Stk_Count`, `Is_Available`, `IsAddTbl`, `Supplier`) VALUES
(2, 'DRL001S10', 'Drilling tool 10mm', 789, 0, 'Drilling Machine Tool', 2, 1, 0, ''),
(1, 'DRL001S12', 'Drilling tool 12mm', 488, 0, 'Drilling Machine Tool', 1, 1, 0, ''),
(5, 'http://BHex13', 'tretert', 495, 0, 'dfsdf', 0, 0, 0, ''),
(8, 'http://BHex15', 'rerwerwer', 870, 0, 'gfdgdfgd', 0, 0, 0, ''),
(6, 'http://NutHex10', 'fgdfgdfg', 788, 0, 'vcxvxcv', 0, 0, 0, ''),
(9, 'http://NutHex9', 'fdsfsf', 548, 0, 'vbcvbcb', 0, 0, 0, ''),
(7, 'http://Optsen', 'rwerwer', 800, 0, 'vbcvbcb', 0, 0, 0, ''),
(10, 'http://RefSen', 'dfdsfs', 290, 0, 'dfdffsdf', 0, 0, 0, ''),
(4, 'NutHex10', 'Nut Hexaganal 10mm Size', 150, 0, 'Nut And Bolts', 10, 1, 0, ''),
(3, 'NutHex15', 'Bolt Hexaganal 15 mm Size', 148, 0, 'Nut And Bolts', 20, 1, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_loging`
--
ALTER TABLE `admin_loging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `lowinvnt`
--
ALTER TABLE `lowinvnt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perm_order_item_list`
--
ALTER TABLE `perm_order_item_list`
  ADD PRIMARY KEY (`Order_Id`);

--
-- Indexes for table `pernamat_iss_invoice`
--
ALTER TABLE `pernamat_iss_invoice`
  ADD PRIMARY KEY (`Invoice_ID`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`Item_Code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_loging`
--
ALTER TABLE `admin_loging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Emp_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lowinvnt`
--
ALTER TABLE `lowinvnt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perm_order_item_list`
--
ALTER TABLE `perm_order_item_list`
  MODIFY `Order_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `pernamat_iss_invoice`
--
ALTER TABLE `pernamat_iss_invoice`
  MODIFY `Invoice_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
