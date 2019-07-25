-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 03:57 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `password`, `role_id`) VALUES
('admin', '$2a$10$yWIweFuAoLaHKYuvcIlrCudXMyjAlHMAAkD/FUmv8QER25dsC6VWG', 1),
('khang', '$2a$10$tz9rogZTpAiOvb2b6BKD3OUX0GhvkdZpAAICdeMa8yZIFg5GxkvKu', 2),
('nhanviena', '$2a$10$2XlgKWm2B6bQzfOfZbuG0.ceu9bZiE8J0OtzhWQhGckQ24pVnqSym', 3),
('nhanvienb', '\r\n$2a$10$WUoonmjzcLqJPXMM/aG5J.DRkVvC63zMt4IodkvjHAjo/dEFfyxVi', 3),
('nhanvienc', '$2a$10$htG6Z4FhwW2VYXDNt93Wwe2lELswJ7jTyKBPp9ATtpHUWIoOqd.zy', 3),
('nhanviend', '$2a$10$VTrVopouXeGe6/iQYhxjQu6C./mYWQqpbN1Q6m9tzTQtQmervQXTK', 3),
('thuan', '$2a$10$iIg7aUihhqNrzWlEWMS24.qgFCpd4xswkENoljoQK1tWocC0nTfEO', 2),
('thy', '$2a$10$ymemNhQjVgwpbnPO/LoNGeOo5.CDaQsFheIhuohi6pw6H3DHuxRDu', 2),
('tien', '$2a$10$lPLzTlzi9d9SLp9j4LK3m./Umk3L6DDXUUq2ycPinDD7KdCxzI1IO', 2),
('truc', '$2a$10$iAPFAXjdLYHCiDrfGHCaVum8KcqVY8QwAsIP2g6nYnIZ/J1DOQIti', 2);

-- --------------------------------------------------------

--
-- Table structure for table `addresss_ship`
--

CREATE TABLE `addresss_ship` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `id_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenRows` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_create` date NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `image`) VALUES
(1, 'Xiaomi', '');

-- --------------------------------------------------------

--
-- Table structure for table `caterogy`
--

CREATE TABLE `caterogy` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `caterogy`
--

INSERT INTO `caterogy` (`id`, `name`) VALUES
(1, 'Phone, Laptop, TV ...');

-- --------------------------------------------------------

--
-- Table structure for table `comment_blog`
--

CREATE TABLE `comment_blog` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_blog` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_product`
--

CREATE TABLE `comment_product` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_product` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coppon`
--

CREATE TABLE `coppon` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `code_sale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datestart` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `mail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `salary_ratio` double DEFAULT NULL,
  `date_join` date NOT NULL,
  `CV` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialize` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `gender`, `mail`, `address`, `birthday`, `phone`, `image`, `status`, `salary_ratio`, `date_join`, `CV`, `specialize`, `username`) VALUES
(1, 'Nguyen Van A', 1, 'huutien921@gmail.com', 'Ho Chi Minh City', '1998-01-01', '0947443148', NULL, 1, NULL, '2019-07-01', NULL, NULL, 'nhanviena'),
(2, 'Nguyen Van C', 1, 'huutien921@gmail.com', 'Ho Chi Minh City', '1998-01-01', '0947443148', NULL, 1, NULL, '2019-07-01', NULL, NULL, 'nhanvienc'),
(3, 'Nguyen Van B', 1, 'huutien921@gmail.com', 'Ho Chi Minh City', '1998-01-01', '0947443148', NULL, 1, NULL, '2019-07-01', NULL, NULL, 'nhanvienb'),
(4, 'Nguyen Van D', 1, 'huutien921@gmail.com', 'Ho Chi Minh City', '1998-01-01', '0947443148', NULL, 1, NULL, '2019-07-01', NULL, NULL, 'nhanviend');

-- --------------------------------------------------------

--
-- Table structure for table `evaluate_product`
--

CREATE TABLE `evaluate_product` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `lever` int(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datecreate` date NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_ rep`
--

CREATE TABLE `feedback_ rep` (
  `id` int(11) NOT NULL,
  `title` int(11) DEFAULT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` int(11) DEFAULT NULL,
  `content` int(11) DEFAULT NULL,
  `id_feedback` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_blog`
--

CREATE TABLE `image_blog` (
  `id` int(11) NOT NULL,
  `src` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_blog` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_product`
--

CREATE TABLE `image_product` (
  `id` int(11) NOT NULL,
  `src` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_type`
--

CREATE TABLE `image_type` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `information_user`
--

CREATE TABLE `information_user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthday` date NOT NULL,
  `mail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `information_user`
--

INSERT INTO `information_user` (`id`, `name`, `gender`, `birthday`, `mail`, `image`, `status`, `username`) VALUES
(1, 'Nguyen Huu Tien', 1, '1998-08-15', 'huutien921@gmail.com', NULL, 1, 'tien'),
(2, 'Nguyen Hieu Thuan', 1, '1998-01-01', 'huutien921@gmail.com', NULL, 1, 'thuan'),
(3, 'Tran Thanh Truc', 2, '1998-07-15', 'huutien921@gmail.com', NULL, 1, 'truc'),
(4, 'Nguyen Tran Dan Thy', 1, '1999-12-15', 'thytran251299@gmail.com', NULL, 1, 'thy'),
(5, 'Nguyen Van Quan Ly', 1, '1995-12-12', 'vaythechap111@gmail.com', NULL, 1, 'admin'),
(6, 'Nguyen Van Nhan Vien 1', 0, '1998-01-01', 'huutien920@gmail.com', NULL, 1, 'nhanviena'),
(7, 'Nguyen Van Nhan Vien 2', 1, '1999-01-01', 'huutien920@gmail.com', NULL, 1, 'nhanvienb'),
(8, 'Nguyen Van Nhan Vien 3', 1, '1997-01-01', 'huutien920@gmail.com', NULL, 1, 'nhanvienc'),
(9, 'Nguyen Van Nhan Vien 4', 0, '1996-01-01', 'huutien920@gmail.com', NULL, 1, 'nhanviend');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `date_order` date NOT NULL,
  `total_price` decimal(10,0) NOT NULL,
  `id_infor_user` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `id_coppon` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `id_ship` int(11) NOT NULL,
  `pay` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `quatity` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_sale` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `value` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `datecreate` date NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,0) DEFAULT NULL,
  `quatily` int(11) DEFAULT NULL,
  `describe` text COLLATE utf8mb4_unicode_ci,
  `date_create` date NOT NULL,
  `id_store` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `id_sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `property`, `price`, `quatily`, `describe`, `date_create`, `id_store`, `id_type`, `status`, `id_brand`, `id_sale`) VALUES
(1, 'Xiaomi Redmi Note 7 64GB', '[{"Screen","IPS LCD, 6.3", Full HD+"},{"Operating system","Android 9.0 (Pie)"},\r\n{"Rear camera","Main 48 MP & 5 MP Spare"},\r\n{"Front camera","13 MP"},\r\n{"CPU","Qualcomm Snapdragon 660 8 nhân"},\r\n{"RAM","4 GB"},\r\n{"Internal memory",""},\r\n{"Rom","64 GB"}\r\n{"Memory Stick","MicroSD"}\r\n{"SIM","2 SIM Nano (SIM 2 common memory card slot), 4G support"}]', '50000', 1000, '[{"title","Xiaomi Redmi Note 7 is a new cheap smartphone introduced in early 2019 with many worthwhile equipment such as designing notch water drops or cameras up to 48 MP."},{"h1","Powerful performance smooth game experience"},{"content","Redmi Note 7 deserves one of the good performance smartphones, with the Antutu score measuring around 137586."}]', '2019-07-24', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_store` int(11) NOT NULL,
  `id_caterogy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `id_store`, `id_caterogy`) VALUES
(1, 'Phone', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `repcomment_product`
--

CREATE TABLE `repcomment_product` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_comment` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rep_comment_blog`
--

CREATE TABLE `rep_comment_blog` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_comment_blog` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'customer'),
(3, 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datestart` date NOT NULL,
  `deadline` date NOT NULL,
  `value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `name`, `datestart`, `deadline`, `value`, `status`, `content`) VALUES
(1, 'Birtday Xiaomi', '2019-07-24', '2019-07-31', '20', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship`
--

CREATE TABLE `ship` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `datecreate` date NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `id_shiper` int(11) NOT NULL,
  `idcoppon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `describe` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `id_type` int(11) NOT NULL,
  `id_infor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `name`, `describe`, `status`, `id_type`, `id_infor`) VALUES
(1, 'Thegioididong.com', '\nThegioididong.com is a trademark of Mobile World Joint Stock Company, tax code 0303217354, legal representative is Mr. Tran Kinh Doanh, co-founder by Mr. Nguyen Duc Tai. The English name is Mobile World JSC, (Stock code: MWG) is a retail group in Vietnam with the main business of retailing mobile phones, digital devices and consumer electronics [2]. According to EMPEA\'s research, mobile phone retail market share statistics in Vietnam in 2014, the Mobile World now accounts for 25% and is the largest enterprise in its field. [3]\nWhen established in March 2004, the Mobile World selected an early eCommerce model with a website introducing product information [5] and 3 small stores on Hoang Van Thu Street, Ho Chi Minh City. Minh to trade. [6] In October 2004, the company transformed its business model, invested in a large retail store on Nguyen Dinh Chieu Street and started to make profits. By March 2006, Mobile World had a total of 4 stores in Ho Chi Minh City.\n\nIn 2007, the company succeeded in calling for investment capital of Mekong Capital and growing rapidly in scale, reaching 40 stores in 2009. [6]\n\nIn late 2010, Mobile World expanded its business to consumer electronics with Dienmay.com brand (now changed to Green Electronics - Dienmayxanh.com) - an independent business unit with the team Administration is completely separate from Mobile World. [7]\n\nBy the end of 2012, Mobile World had a total of 220 stores in Vietnam. [7]\n\nIn May 2013, Mobile World continued to receive the investment of Robert A. Willett - former CEO of BestBuy International and CDH Electric Bee Limited ..\n\nIn 2017, Mobile World Joint Stock Company conducted the merger and acquisition of Tran Anh electronics retail system. October, 2018, the merger is completed, Facebook fanpage Tran Anh will stop activities to promote products branded Tran Anh. A total of 34 Tran Anh supermarkets will have their names removed and replaced by the Green Electronics sign, Tran Anh\'s website has also redirected its activities to dienmayxanh.com. [8]', 1, 1, 1),
(2, 'bachhoaxanh.com', 'Bach Hoa Xanh is a mini supermarket chain that sells fresh food and necessities of Mobile World Joint Stock Company. Although newly formed in late 2015, Bach Hoa Xanh has 324 stores in Ho Chi Minh City to serve 226,800 customers per day. 2018 will be the booming year of this department store with a large investment coming from the CEO.\r\nMobile World Investment Joint Stock Company (MWG) was established in March 2004, the company\'s main business areas include: trading and repairing mobile phone and equipment related equipment. digital and e-commerce related fields. With the vision of MWG until 2020 is the most powerful multi-industry retail group, having the No. 1 position in the field of e-commerce, expanding business success in Laos, Cambodia and Myanmar. MWG continually improves to bring customers the most interesting and satisfied experience based on the culture that places the Customer at the center and Integrity.\r\n\r\nIn recent years, the business performance of Mobile World is very impressive, according to data released in the first 3 months of 2017, Mobile World Investment JSC (HOSE: MWG) reached 15,586. VND billion revenue and VND 558 billion profit after tax. Turn up 62% and 34% respectively compared to 2016 performance. GDT is flying high thanks to TGD and Dien May Xanh supermarkets. The easy-to-see strategy of the CEO is to increase these stores and supermarkets as quickly as possible, as much as possible. The store opening speed of this company also grows in proportion to revenue.\r\n\r\n \r\n\r\nAt the end of 2015, the General Director\'s revenue reached 1 billion USD in 2015, the General Director encroached on food business. What makes the CEO confident is the success of the previous two retail chains. The Bach Hoa Xanh chain was born as the first step to implement the "3 challenges" plan within 5 years.\r\n\r\nSpecifically, the first thing is to build the GDD to become a multidisciplinary retail group. The second challenge is to bring business operations to Indochina and Myanmar. The third major challenge is actually becoming a big e-commerce business. Recently talking to the press, Mr. Tran Kinh Doanh said: “In the coming time, the market share of the CEO may be 50%; while Dien May Xanh, if maintaining the current growth rate, it is not difficult to get 20% market share. The new chain Bach Hoa Xanh mainly targets retail products. When completed, it is possible to call the CEO, a multidisciplinary retailer, the most accurate way. This is also the first challenge in the next 5-year plan that TGD conquers ', 1, 2, 5),
(3, 'Excel On ', 'Excel On (full name: Sunhouse Group Joint Stock Company, English: Sunhouse Group., JSC) is a company specializing in household appliances established in Vietnam on May 22, 2000. Original name of this enterprise is Phu Thang Limited Liability Company, by 2010, the company took its current name. [1] [2] [3]', 1, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `store_type`
--

CREATE TABLE `store_type` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_type`
--

INSERT INTO `store_type` (`id`, `name`) VALUES
(1, 'electronic'),
(2, 'foods'),
(3, 'synthetic'),
(4, 'engine'),
(5, 'convenient store'),
(6, 'education'),
(7, 'service');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `addresss_ship`
--
ALTER TABLE `addresss_ship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caterogy`
--
ALTER TABLE `caterogy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_blog`
--
ALTER TABLE `comment_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `id_bog` (`id_blog`);

--
-- Indexes for table `comment_product`
--
ALTER TABLE `comment_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_account` (`username`);

--
-- Indexes for table `coppon`
--
ALTER TABLE `coppon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_sale` (`code_sale`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `evaluate_product`
--
ALTER TABLE `evaluate_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_store` (`id_product`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `feedback_ rep`
--
ALTER TABLE `feedback_ rep`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `id_feedback` (`id_feedback`),
  ADD KEY `username_2` (`username`),
  ADD KEY `id_feedback_2` (`id_feedback`);

--
-- Indexes for table `image_blog`
--
ALTER TABLE `image_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bog` (`id_blog`);

--
-- Indexes for table `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `image_type`
--
ALTER TABLE `image_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information_user`
--
ALTER TABLE `information_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_infor_user` (`id_infor_user`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_coppen` (`id_coppon`),
  ADD KEY `id_emplyee` (`id_employee`),
  ADD KEY `id_ship` (`id_ship`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_sale` (`id_sale`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_store` (`id_store`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_sup` (`id_brand`),
  ADD KEY `id_sale` (`id_sale`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_store` (`id_store`),
  ADD KEY `id_caterogy` (`id_caterogy`);

--
-- Indexes for table `repcomment_product`
--
ALTER TABLE `repcomment_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_comment` (`id_comment`),
  ADD KEY `id_account` (`username`);

--
-- Indexes for table `rep_comment_blog`
--
ALTER TABLE `rep_comment_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_comment_bog` (`id_comment_blog`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship`
--
ALTER TABLE `ship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_shiper` (`id_shiper`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_infor` (`id_infor`);

--
-- Indexes for table `store_type`
--
ALTER TABLE `store_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresss_ship`
--
ALTER TABLE `addresss_ship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `caterogy`
--
ALTER TABLE `caterogy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comment_blog`
--
ALTER TABLE `comment_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_product`
--
ALTER TABLE `comment_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `coppon`
--
ALTER TABLE `coppon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `evaluate_product`
--
ALTER TABLE `evaluate_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback_ rep`
--
ALTER TABLE `feedback_ rep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image_blog`
--
ALTER TABLE `image_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image_product`
--
ALTER TABLE `image_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image_type`
--
ALTER TABLE `image_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `information_user`
--
ALTER TABLE `information_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `repcomment_product`
--
ALTER TABLE `repcomment_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rep_comment_blog`
--
ALTER TABLE `rep_comment_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `store_type`
--
ALTER TABLE `store_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `addresss_ship`
--
ALTER TABLE `addresss_ship`
  ADD CONSTRAINT `addresss_ship_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `information_user` (`id`);

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Constraints for table `comment_blog`
--
ALTER TABLE `comment_blog`
  ADD CONSTRAINT `comment_blog_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`),
  ADD CONSTRAINT `comment_blog_ibfk_2` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id`);

--
-- Constraints for table `comment_product`
--
ALTER TABLE `comment_product`
  ADD CONSTRAINT `comment_product_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`),
  ADD CONSTRAINT `comment_product_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Constraints for table `evaluate_product`
--
ALTER TABLE `evaluate_product`
  ADD CONSTRAINT `evaluate_product_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `information_user` (`id`),
  ADD CONSTRAINT `evaluate_product_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Constraints for table `feedback_ rep`
--
ALTER TABLE `feedback_ rep`
  ADD CONSTRAINT `feedback_ rep_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`),
  ADD CONSTRAINT `feedback_ rep_ibfk_2` FOREIGN KEY (`id_feedback`) REFERENCES `feedback` (`id`);

--
-- Constraints for table `image_blog`
--
ALTER TABLE `image_blog`
  ADD CONSTRAINT `image_blog_ibfk_1` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id`);

--
-- Constraints for table `image_product`
--
ALTER TABLE `image_product`
  ADD CONSTRAINT `image_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `image_product_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `image_type` (`id`);

--
-- Constraints for table `information_user`
--
ALTER TABLE `information_user`
  ADD CONSTRAINT `information_user_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_infor_user`) REFERENCES `information_user` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id_shop`) REFERENCES `store` (`id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`id_coppon`) REFERENCES `coppon` (`id`),
  ADD CONSTRAINT `order_ibfk_4` FOREIGN KEY (`id_employee`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `order_ibfk_5` FOREIGN KEY (`id_ship`) REFERENCES `ship` (`id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_3` FOREIGN KEY (`id_sale`) REFERENCES `sale` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_store`) REFERENCES `store` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `product_type` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`id_sale`) REFERENCES `sale` (`id`);

--
-- Constraints for table `product_type`
--
ALTER TABLE `product_type`
  ADD CONSTRAINT `product_type_ibfk_1` FOREIGN KEY (`id_store`) REFERENCES `store` (`id`),
  ADD CONSTRAINT `product_type_ibfk_2` FOREIGN KEY (`id_caterogy`) REFERENCES `caterogy` (`id`);

--
-- Constraints for table `repcomment_product`
--
ALTER TABLE `repcomment_product`
  ADD CONSTRAINT `repcomment_product_ibfk_1` FOREIGN KEY (`id_comment`) REFERENCES `comment_product` (`id`),
  ADD CONSTRAINT `repcomment_product_ibfk_2` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Constraints for table `rep_comment_blog`
--
ALTER TABLE `rep_comment_blog`
  ADD CONSTRAINT `rep_comment_blog_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`),
  ADD CONSTRAINT `rep_comment_blog_ibfk_2` FOREIGN KEY (`id_comment_blog`) REFERENCES `comment_blog` (`id`);

--
-- Constraints for table `ship`
--
ALTER TABLE `ship`
  ADD CONSTRAINT `ship_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `information_user` (`id`),
  ADD CONSTRAINT `ship_ibfk_2` FOREIGN KEY (`id_shiper`) REFERENCES `ship` (`id`);

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `store_type` (`id`),
  ADD CONSTRAINT `store_ibfk_2` FOREIGN KEY (`id_infor`) REFERENCES `information_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
