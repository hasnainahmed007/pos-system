-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2017 at 07:54 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ressales`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`) VALUES
(15, 'Ashraf Khan', '8/j Azimpur colony', '01680443544', '2', 'lux', '2017-03-08', 'Premium Customer'),
(18, 'Saleh Tanzi', 'Mirpur', '01780885644', '2', 'Chicken Grill', '2017-05-19', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `vat` float NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `cost`, `o_price`, `vat`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(63, '232', 'Maxican Pasta ', '', '130', 5, '150', '20', '', 0, 3, 10, '2017-04-24', '2017-04-22'),
(65, '365', ' Fried Rice 1:2 Quantity     ', '', '200', 4, '220', '20', '', 0, -12, 8, '2017-04-23', '2017-04-22'),
(66, '349', 'Fried Rice 1:4 Quality  ', '', '350', 3, '400', '50', '', 0, -7, 8, '2017-04-22', '2017-04-22'),
(67, '302', 'Chicken Grill 1:1  ', '', '75', 3, '90', '15', '', 0, -1, 10, '2017-04-22', '2017-04-22'),
(68, '301', 'Chicken Grill  4:1    ', '', '300', 4, '350', '50', '', 0, 0, 10, '2017-04-22', '2017-04-22'),
(69, '600', 'Beef Stack 1:1   ', '', '160', 0, '180', '20', '', 0, 7, 12, '2017-04-21', '2017-04-21'),
(70, '306', ' Chicken Vagetable 1:1 ', '', '70', 0, '80', '10', '', 0, 10, 14, '2017-04-23', '2017-04-22'),
(72, '304', 'Chicken Curry 1:1 ', '', '115', 0, '120', '5', '', 0, 6, 10, '2017-04-23', '2017-04-22'),
(75, '344', 'Burger 1:1 ', '', '55', 0, '60', '5', '', 0, 18, 20, '2017-04-24', '2017-04-22'),
(76, '345', 'Burger 1:1 ', '', '55', 0, '60', '5', '', 0, 18, 20, '2017-04-24', '2017-04-22'),
(78, '502', 'Ice Cream', '', '96', 0, '100', '4', '', 0, 23, 25, '2017-04-30', '2017-04-22'),
(79, '120', 'Shorma ', '', '110', 4.5, '120', '10', '', 0, 19, 20, '2017-04-22', '2017-04-22'),
(80, '103', 'Chips  ', '', '10', 5, '15', '5', '', 0, 20, 20, '2017-04-27', '2017-04-22'),
(81, '390', ' Corn Soup  ', '', '100', 10, '120', '20', '', 0, 5, 10, '2017-05-01', '2017-04-30'),
(82, '449', 'Puding', '', '110', 10, '120', '10', '', 0, -3, 10, '2017-05-19', '2017-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `grandtotal` varchar(255) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `qt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `vat`, `amount`, `discount`, `grandtotal`, `profit`, `due_date`, `name`, `balance`, `qt`) VALUES
(142, 'RS-23436', 'Admin', '03/08/17', 'cash', '', '180', '', '180', '12', '180', 'Abir', '', ''),
(143, 'RS-0323038', 'Admin', '03/08/17', 'cash', '', '60', '', '60', '4', '50', 'Abir', '', ''),
(144, 'RS-0233322', 'Admin', '03/08/17', 'cash', '', '300', '', '300', '15', '300', 'Tuhin', '', ''),
(145, 'RS-335036', 'Admin', '03/08/17', 'cash', '', '300', '', '300', '20', '300', 'Saif', '', ''),
(146, 'RS-0400307', 'Admin', '03/08/17', 'cash', '', '200', '', '200', '10', '200', 'Arnab', '', ''),
(147, 'RS-00324020', 'Admin', '03/08/17', 'cash', '', '360', '', '360', '24', '300', 'Hasib', '', ''),
(148, 'RS-9529252', 'Admin', '03/08/17', 'cash', '', '30', '', '30', '2', '30', 'Farhan', '', ''),
(149, 'RS-3333203', 'Admin', '03/09/17', 'cash', '', '350', '', '350', '20', '350', 'Pias', '', ''),
(150, 'RS-242282', 'Admin', '03/09/17', 'cash', '', '150', '', '150', '10', '150', 'Shamim', '', ''),
(151, 'RS-25002222', 'Admin', '03/10/17', 'cash', '', '30', '', '30', '2', '30', 'lamia', '', ''),
(152, 'RS-20532232', 'Admin', '03/11/17', 'cash', '', '30', '', '30', '2', '30', 'Samir', '', ''),
(153, 'RS-322323', 'Admin', '03/29/17', 'cash', '', '68', '', '68', '4', '68', 'Tanzi', '', ''),
(154, 'RS-32029302', 'Admin', '04/10/17', 'cash', '', '1200', '', '1200', '63', '1200', 'Md. Saif', '', ''),
(155, 'RS-370292', 'Admin', '04/10/17', 'cash', '', '300', '', '300', '20', '350', 'Fahim', '', ''),
(156, 'RS-2363222', 'Admin', '04/19/17', 'cash', '', '80', '', '80', '4', '100', 'Arfan', '', ''),
(157, 'RS-0339462', 'Admin', '04/21/17', 'cash', '', '30', '', '30', '2', '50', 'Amitab', '', ''),
(158, 'RS-98433263', 'Admin', '04/21/17', 'cash', '', '30', '', '30', '2', '50', 'Ronon', '', ''),
(159, 'RS-0530', 'Admin', '04/21/17', 'cash', '', '1342', '', '1342', '68', '1500', 'Sonjoy', '', ''),
(160, 'RS-332222', 'Admin', '04/30/17', 'cash', '', '650', '', '650', '80', '700', 'Rahat', '', ''),
(161, 'RS-32332', 'Admin', '04/30/17', 'cash', '', '400', '', '400', '40', '400', 'Ashraf Khan', '', ''),
(181, 'RS-22433', 'Admin', '05/05/17', 'cash', '', '80', '', '80', '10', '100', 'Asash', '', ''),
(182, 'RS-0306222', 'Admin', '05/08/17', 'cash', '', '380', '', '380', '52', '500', 'Masud Khan', '', ''),
(183, 'RS-39383033', 'Admin', '05/08/17', 'cash', '', '400', '', '400', '50', '500', 'Fahim', '', ''),
(184, 'RS-033203', 'Cashier', '05/15/17', 'cash', '', '220', '', '220', '20', '500', 'Saleh Tanzi', '', ''),
(185, 'RS-2440920', 'Cashier', '05/15/17', 'cash', '', '350', '', '350', '50', '400', 'Arnab', '', ''),
(188, 'RS-32735223', 'Cashier', '05/17/17', 'cash', '', '504.7', '', '504.70', '80', '600', 'Fahim', '', ''),
(189, 'RS-034423', 'Admin', '05/23/17', 'cash', '', '310', '', '310', '35', '500', 'Saddam', '', ''),
(191, 'RS-0493205', 'Admin', '05/23/17', 'cash', '', '220', '', '220', '20', '300', 'Selim', '', ''),
(192, 'RS-3338333', 'Admin', '05/23/17', 'cash', '', '490', '', '490', '65', '600', 'Fahim', '', ''),
(193, 'RS-50084023', 'Admin', '05/23/17', 'cash', '', '220', '', '220', '20', '300', 'K', '', ''),
(194, 'RS-403239', 'Admin', '05/26/17', 'cash', '', '\r\n				370.00				', '', '370', '40', '500', 'Lister', '', ''),
(195, 'RS-4730260', 'Admin', '05/26/17', 'cash', '', '\r\n				220.00				', '', '220', '20', '300', 'Tasnim', '', ''),
(196, 'RS-32303723', 'Admin', '05/26/17', 'cash', '', '\r\n				220.00				', '', '224.40', '20', '300', 'Lister Khan', '', ''),
(197, 'RS-28902', 'Cashier ', '05/26/17', 'cash', '', '\r\n				400.00				', '', '408.00', '50', '500', 'Ajmol', '', ''),
(198, 'RS-7323209', 'Cashier ', '05/26/17', 'cash', '', '\r\n				400.00				', '', '403.92', '50', '450', 'Shamol', '', ''),
(199, 'RS-2030308', 'Cashier ', '05/26/17', 'cash', '', '\r\n				120.00				', '5', '115.14', '10', '150', 'Saif', '', ''),
(200, 'RS-2323350', 'Admin', '05/27/17', 'cash', '', '\r\n				400.00				', '', '408.00', '50', '500', 'Tamim', '', ''),
(201, 'RS-30000034', 'Admin', '05/27/17', 'cash', '', '\r\n				120.00				', '', '123.60', '20', '150', 'Masud Khan', '', ''),
(202, 'RS-222030', 'Admin', '05/27/17', 'cash', '', '\r\n				350.00				', '0', '360.50', '50', '400', 'Mahmub', '', ''),
(203, 'RS-2202245', 'guest', '05/28/17', 'cash', '', '\r\n				350.00				', '0', '349.69', '50', '400', 'Towsif', '', ''),
(204, 'RS-223302', 'guest', '05/28/17', 'cash', '', '\r\n				180.00				', '2', '183.46', '20', '200', 'Saddam', '', ''),
(205, 'RS-92793', 'guest', '05/28/17', 'cash', '4', '\r\n				60.00				', '1', '61.78', '5', '100', 'Sofiq', '', ''),
(206, 'RS-2532032', 'guest', '05/28/17', 'cash', '3', '\r\n				320.00				', '1', '323.14', '28', '400', 'Polash', '', ''),
(207, 'RS-3343733', 'guest', '05/28/17', 'cash', '4', '\r\n				360.00				', '0', '374.40', '25', '400', 'Mojid', '', ''),
(208, 'RS-0832336', 'guest', '05/30/17', 'cash', '2', '\r\n				240.00				', '1', '242.35', '20', '300', 'Tanzi', '', ''),
(209, 'RS-320038', 'guest', '05/30/17', 'cash', '2', '\r\n				520.00				', '0', '530.40', '60', '550', 'Ashraf', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `grand_amount` varchar(255) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `name`, `price`, `vat`, `discount`, `grand_amount`, `date`) VALUES
(343, 'RS-332222', '65', '1', '220', '20', '365', ' Fried Rice(1:2 Quantity)   ', '220', '', '', '', '04/30/17'),
(344, 'RS-332222', '68', '1', '350', '50', '301', ' Chicken Grill(4:1)', '350', '', '', '', '04/30/17'),
(346, 'RS-030023', '65', '2', '440', '40', '365', ' Fried Rice(1:2 Quantity)   ', '220', '', '', '', '04/30/17'),
(347, 'RS-34930202', '81', '1', '120', '20', '390', ' Corn Soup', '120', '', '', '', '04/30/17'),
(349, 'RS-32332', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity    ', '220', '', '', '', '04/30/17'),
(350, 'RS-32332', '69', '1', '180', '20', '600', 'Beef Stack 1:1   ', '180', '', '', '', '04/30/17'),
(351, 'RS-2330533', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity    ', '220', '', '', '', '05/01/17'),
(352, 'RS-2330533', '68', '1', '350', '50', '301', 'Chicken Grill  4:1 ', '350', '', '', '', '05/01/17'),
(353, 'RS-60233', '63', '1', '150', '20', '232', 'Maxican Pasta', '150', '', '', '', '05/05/17'),
(354, 'RS-60233', '72', '1', '120', '5', '304', 'Chicken Curry 1:1 ', '120', '', '', '', '05/05/17'),
(355, 'RS-60233', '74', '1', '30', '2', '234', 'Merinda', '30', '', '', '', '05/05/17'),
(356, 'RS-33233', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity    ', '220', '', '', '', '05/05/17'),
(358, 'RS-22032', '66', '1', '400', '50', '349', 'Fried Rice 1:4 Quality ', '400', '', '', '', '05/05/17'),
(359, 'RS-03620232', '67', '1', '90', '15', '302', 'Chicken Grill 1:1 ', '90', '', '', '', '05/05/17'),
(360, 'RS-22302805', '67', '1', '90', '15', '302', 'Chicken Grill 1:1 ', '90', '', '', '', '05/05/17'),
(361, 'RS-22302805', '74', '1', '30', '2', '234', 'Merinda', '30', '', '', '', '05/05/17'),
(362, 'RS-203323', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity    ', '220', '', '', '', '05/05/17'),
(363, 'RS-300320', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity    ', '220', '', '', '', '05/05/17'),
(364, 'RS-2233', '69', '1', '180', '20', '600', 'Beef Stack 1:1   ', '180', '', '', '', '05/05/17'),
(365, 'RS-332825', '76', '1', '60', '5', '345', 'Burger 1:1 ', '60', '', '', '', '05/05/17'),
(367, 'RS-0233083', '66', '1', '400', '50', '349', 'Fried Rice 1:4 Quality ', '400', '', '', '', '05/05/17'),
(369, 'RS-482022', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity    ', '220', '', '', '', '05/05/17'),
(370, 'RS-3322602', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity    ', '220', '', '', '', '05/05/17'),
(371, 'RS-803330', '79', '1', '120', '10', '120', 'Shorma', '120', '', '', '', '05/05/17'),
(372, 'RS-2242029', '81', '1', '120', '20', '390', ' Corn Soup', '120', '', '', '', '05/05/17'),
(373, 'RS-0333720', '75', '1', '60', '5', '344', 'Burger 1:1 ', '60', '', '', '', '05/05/17'),
(374, 'RS-053342', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity    ', '220', '', '', '', '05/05/17'),
(375, 'RS-225235', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity    ', '220', '', '', '', '05/05/17'),
(376, 'RS-22433', '70', '1', '80', '10', '306', ' Chicken Vagetable 1:1 ', '80', '', '', '', '05/05/17'),
(377, 'RS-333702', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity    ', '220', '', '', '', '05/06/17'),
(378, 'RS-330233', '68', '1', '350', '50', '301', 'Chicken Grill  4:1 ', '350', '', '', '', '05/06/17'),
(380, 'RS-0306222', '68', '1', '350', '50', '301', 'Chicken Grill  4:1 ', '350', '', '', '', '05/08/17'),
(381, 'RS-0306222', '74', '1', '30', '2', '234', 'Merinda', '30', '', '', '', '05/08/17'),
(382, 'RS-39383033', '66', '1', '400', '50', '349', 'Fried Rice 1:4 Quality ', '400', '', '', '', '05/08/17'),
(383, 'RS-033203', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity    ', '220', '', '', '', '05/15/17'),
(384, 'RS-2440920', '68', '1', '350', '50', '301', 'Chicken Grill  4:1 ', '350', '', '', '', '05/15/17'),
(386, 'RS-06003303', '70', '1', '80', '10', '306', ' Chicken Vagetable 1:1 ', '80', '', '', '', '05/15/17'),
(387, 'RS-32322', '81', '1', '120', '20', '390', ' Corn Soup', '120', '', '', '', '05/15/17'),
(389, 'RS-06634', '63', '1', '150', '20', '232', 'Maxican Pasta ', '150', '', '', '', '05/15/17'),
(392, 'RS-30320232', '82', '1', '120', '10', '449', 'Puding', '120', '', '', '', '05/15/17'),
(393, 'RS-096220', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '', '', '', '05/16/17'),
(394, 'RS-23225003', '63', '1', '150', '20', '232', 'Maxican Pasta ', '150', '', '', '', '05/16/17'),
(395, 'RS-33308530', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '', '', '', '05/16/17'),
(396, 'RS-33308530', '68', '2', '700', '100', '301', 'Chicken Grill  4:1    ', '350', '', '', '', '05/16/17'),
(397, 'RS-2233388', '63', '1', '150', '20', '232', 'Maxican Pasta ', '150', '', '', '', '05/16/17'),
(398, 'RS-3323323', '70', '1', '80', '10', '306', ' Chicken Vagetable 1:1 ', '80', '', '', '', '05/16/17'),
(399, 'RS-32563302', '82', '1', '120', '10', '449', 'Puding', '120', '', '', '', '05/16/17'),
(400, 'RS-4232723', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '', '', '', '05/16/17'),
(412, 'RS-4398302', '65', '1', '228.8', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/16/17'),
(413, 'RS-4398302', '67', '1', '92.7', '15', '302', 'Chicken Grill 1:1  ', '90', '3', '', '', '05/16/17'),
(414, 'RS-4398302', '65', '1', '228.8', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/16/17'),
(415, 'RS-4398302', '82', '1', '132', '10', '449', 'Puding', '120', '10', '', '', '05/16/17'),
(416, 'RS-333900', '65', '1', '228.8', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/16/17'),
(417, 'RS-333900', '66', '3', '412', '150', '349', 'Fried Rice 1:4 Quality  ', '400', '3', '', '', '05/16/17'),
(420, 'RS-2922420', '65', '1', '228.8', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/16/17'),
(421, 'RS-3823320', '65', '1', '228.8', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/17/17'),
(422, 'RS-3823320', '69', '2', '180', '40', '600', 'Beef Stack 1:1   ', '180', '0', '', '', '05/17/17'),
(423, 'RS-32735223', '67', '2', '92.7', '30', '302', 'Chicken Grill 1:1  ', '90', '3', '', '', '05/17/17'),
(424, 'RS-32735223', '66', '1', '412', '50', '349', 'Fried Rice 1:4 Quality  ', '400', '3', '', '', '05/17/17'),
(428, 'RS-2222352', '67', '1', '92.7', '15', '302', 'Chicken Grill 1:1  ', '90', '3', '', '', '05/17/17'),
(429, 'RS-2222352', '67', '2', '185.4', '30', '302', 'Chicken Grill 1:1  ', '90', '3', '', '', '05/17/17'),
(430, 'RS-222220', '68', '1', '364', '50', '301', 'Chicken Grill  4:1    ', '350', '4', '', '', '05/17/17'),
(431, 'RS-29232303', '66', '1', '412', '50', '349', 'Fried Rice 1:4 Quality  ', '400', '3', '', '', '05/17/17'),
(432, 'RS-9272238', '65', '1', '228.8', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/20/17'),
(434, 'RS-034423', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/23/17'),
(435, 'RS-034423', '67', '1', '90', '15', '302', 'Chicken Grill 1:1  ', '90', '3', '', '', '05/23/17'),
(436, 'RS-228330', '66', '1', '400', '50', '349', 'Fried Rice 1:4 Quality  ', '400', '3', '', '', '05/23/17'),
(437, 'RS-0493205', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/23/17'),
(438, 'RS-3338333', '66', '1', '400', '50', '349', 'Fried Rice 1:4 Quality  ', '400', '3', '', '', '05/23/17'),
(439, 'RS-3338333', '67', '1', '90', '15', '302', 'Chicken Grill 1:1  ', '90', '3', '', '', '05/23/17'),
(440, 'RS-50084023', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/23/17'),
(441, 'RS-403239', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/26/17'),
(442, 'RS-403239', '63', '1', '150', '20', '232', 'Maxican Pasta ', '150', '5', '', '', '05/26/17'),
(444, 'RS-4730260', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/26/17'),
(445, 'RS-32303723', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/26/17'),
(446, 'RS-3002392', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/26/17'),
(447, 'RS-3002392', '66', '2', '800', '100', '349', 'Fried Rice 1:4 Quality  ', '400', '3', '', '', '05/26/17'),
(448, 'RS-28902', '66', '1', '400', '50', '349', 'Fried Rice 1:4 Quality  ', '400', '3', '', '', '05/26/17'),
(449, 'RS-7323209', '66', '1', '400', '50', '349', 'Fried Rice 1:4 Quality  ', '400', '3', '', '', '05/26/17'),
(451, 'RS-2323350', '66', '1', '400', '50', '349', 'Fried Rice 1:4 Quality  ', '400', '3', '', '', '05/27/17'),
(452, 'RS-30000034', '81', '1', '120', '20', '390', ' Corn Soup  ', '120', '10', '', '', '05/27/17'),
(453, 'RS-222030', '68', '1', '350', '50', '301', 'Chicken Grill  4:1    ', '350', '4', '', '', '05/27/17'),
(454, 'RS-233523', '72', '1', '120', '5', '304', 'Chicken Curry 1:1 ', '120', '0', '', '', '05/28/17'),
(455, 'RS-2202245', '68', '1', '350', '50', '301', 'Chicken Grill  4:1    ', '350', '4', '', '', '05/28/17'),
(456, 'RS-40326', '76', '1', '60', '5', '345', 'Burger 1:1 ', '60', '0', '', '', '05/28/17'),
(457, 'RS-223302', '69', '1', '180', '20', '600', 'Beef Stack 1:1   ', '180', '0', '', '', '05/28/17'),
(458, 'RS-92793', '75', '1', '60', '5', '344', 'Burger 1:1 ', '60', '0', '', '', '05/28/17'),
(459, 'RS-2532032', '78', '2', '200', '8', '502', 'Ice Cream', '100', '0', '', '', '05/28/17'),
(460, 'RS-2532032', '81', '1', '120', '20', '390', ' Corn Soup  ', '120', '10', '', '', '05/28/17'),
(461, 'RS-3343733', '72', '1', '120', '5', '304', 'Chicken Curry 1:1 ', '120', '0', '', '', '05/28/17'),
(462, 'RS-3343733', '82', '2', '240', '20', '449', 'Puding', '120', '10', '', '', '05/28/17'),
(463, 'RS-02252', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/30/17'),
(464, 'RS-0832336', '82', '2', '240', '20', '449', 'Puding', '120', '10', '', '', '05/30/17'),
(465, 'RS-320038', '63', '2', '300', '40', '232', 'Maxican Pasta ', '150', '5', '', '', '05/30/17'),
(466, 'RS-320038', '65', '1', '220', '20', '365', ' Fried Rice 1:2 Quantity     ', '220', '4', '', '', '05/30/17');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `stock_id` int(11) NOT NULL,
  `stock_code` varchar(200) NOT NULL,
  `stock_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`stock_id`, `stock_code`, `stock_name`, `cost`, `price`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(1, '789', 'Potato      ', '', '20', 'Karim mia', 0, 9, 8, '2017-05-03', '2017-05-01'),
(4, '788', ' Tomato', '', '40', '', 0, 10, 0, '2017-05-31', '2017-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`) VALUES
(6, 'Khaled Mia', 'Dhamrai', '01790774533', '2346', 'Chicken Supplier'),
(7, 'Iqbal', 'Fokirapul', '01680996778', '2433', 'Oil Diller'),
(8, 'Nawab', 'Azimpur', '0179884578', '2347', 'Egg Supplier'),
(9, 'Karim mia', '89/k karwan bazer', '01780554323', '5678', 'Potato Supplier');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(1, 'admin', 'admin', 'Admin', 'admin'),
(2, 'cashier', 'cashier', 'Cashier ', 'Cashier'),
(3, 'admin', 'admin123', 'Administrator', 'admin'),
(4, 'guest', 'guest', 'guest', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `purchases_item`
--
ALTER TABLE `purchases_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;
--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
