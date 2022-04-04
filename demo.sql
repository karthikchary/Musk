-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 08:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `email`, `birthdate`, `added`) VALUES
(1, 'Christian', 'Hackett', 'suzanne41@example.com', '1983-12-30', '1992-02-05 07:51:46'),
(2, 'Percy', 'Blanda', 'to\'keefe@example.org', '2011-09-19', '1990-04-23 19:47:02'),
(3, 'Kennedi', 'Crona', 'xmorissette@example.com', '2013-12-17', '1973-03-17 07:51:12'),
(4, 'Jordan', 'Hessel', 'lucio73@example.com', '1975-04-17', '1970-10-18 09:13:11'),
(5, 'Ila', 'Von', 'bkohler@example.net', '1989-10-04', '2004-08-15 00:55:33'),
(6, 'Caitlyn', 'Legros', 'gusikowski.alycia@example.com', '2020-02-05', '1978-01-05 15:24:52'),
(7, 'Jace', 'Mills', 'mante.claud@example.org', '2017-04-30', '1999-12-06 12:26:43'),
(8, 'Kiley', 'Hickle', 'megane34@example.net', '1999-09-16', '2014-05-27 17:24:34'),
(9, 'Keshaun', 'Swift', 'ahickle@example.com', '1984-05-27', '1979-06-14 21:11:44'),
(10, 'Bernhard', 'Hudson', 'ramiro46@example.com', '1996-09-30', '1987-10-15 13:59:03'),
(11, 'Brando', 'Maggio', 'katarina90@example.org', '2001-10-16', '1989-08-31 02:55:57'),
(12, 'Kariane', 'Dicki', 'hwilliamson@example.net', '2006-03-25', '2018-10-07 00:53:34'),
(13, 'Earnestine', 'Ankunding', 'nwindler@example.org', '1975-11-11', '2019-08-20 11:42:29'),
(14, 'Nayeli', 'Schiller', 'camden.kemmer@example.net', '2005-01-28', '2008-02-28 14:12:52'),
(15, 'Tressie', 'Willms', 'randerson@example.com', '1995-11-24', '2000-05-19 04:18:39'),
(16, 'Shaun', 'Walsh', 'howell.brenna@example.net', '1991-11-01', '1976-03-24 06:24:20'),
(17, 'Roosevelt', 'Leuschke', 'janiya.kub@example.com', '1984-12-16', '2004-09-30 18:51:22'),
(18, 'Bill', 'Farrell', 'bins.moses@example.net', '1986-03-18', '1994-01-11 20:52:08'),
(19, 'Maurice', 'Johns', 'katelyn.friesen@example.org', '2000-12-07', '2004-07-15 21:29:16'),
(20, 'Taya', 'Towne', 'vbauch@example.net', '1972-01-14', '2018-04-19 16:30:33'),
(21, 'Ivah', 'Kuhlman', 'vswaniawski@example.org', '2003-10-30', '2004-08-28 02:31:06'),
(22, 'Virgie', 'Quitzon', 'terrell.ratke@example.net', '1977-06-30', '1990-08-13 00:00:49'),
(23, 'Laurel', 'Lueilwitz', 'karen02@example.com', '1973-03-10', '2006-06-24 09:31:07'),
(24, 'Colton', 'Wisoky', 'ivory40@example.com', '2004-03-13', '1972-04-13 05:09:32'),
(25, 'Frankie', 'Kutch', 'schuster.adrianna@example.com', '1983-07-16', '1993-03-27 00:59:23'),
(26, 'Noelia', 'Kertzmann', 'dubuque.blanca@example.org', '1990-10-18', '1989-02-02 11:22:51'),
(27, 'Aida', 'Durgan', 'brendan05@example.org', '1979-05-30', '1996-08-20 03:15:41'),
(28, 'Vesta', 'Stiedemann', 'jo\'kon@example.net', '2019-03-18', '1977-11-04 06:43:54'),
(29, 'Emmy', 'Armstrong', 'schuster.adrienne@example.org', '1971-07-24', '1997-08-22 21:04:33'),
(30, 'Melany', 'Kris', 'antonio.towne@example.net', '1970-05-03', '1993-01-10 22:56:59'),
(31, 'Valentine', 'Boyle', 'swift.joana@example.net', '1988-02-08', '2012-11-15 07:24:23'),
(32, 'Trisha', 'Gutmann', 'jdickinson@example.net', '1992-07-21', '1989-10-25 16:22:17'),
(33, 'Angela', 'Stoltenberg', 'walter.leta@example.com', '1973-08-15', '2008-11-21 10:46:02'),
(34, 'Dulce', 'Bartoletti', 'mosciski.nolan@example.com', '2011-04-03', '2015-10-06 23:57:01'),
(35, 'Haylie', 'Rohan', 'edna.maggio@example.net', '2003-07-15', '2005-05-09 18:43:04'),
(36, 'Daphney', 'Nikolaus', 'tdibbert@example.org', '1978-02-19', '1984-02-12 03:02:02'),
(37, 'Gabriella', 'Wolf', 'egutmann@example.org', '2009-11-28', '2001-10-20 00:55:35'),
(38, 'Elvie', 'Pfannerstill', 'aorn@example.org', '2014-08-14', '2015-10-19 08:18:05'),
(39, 'Elliot', 'Denesik', 'borer.tierra@example.net', '2005-02-28', '2015-01-29 01:39:30'),
(40, 'Jermaine', 'Cartwright', 'lhane@example.org', '2013-07-05', '1970-03-25 21:04:32'),
(41, 'Herminio', 'Rosenbaum', 'shanahan.gilda@example.com', '1997-10-06', '2010-07-25 03:02:11'),
(42, 'Mateo', 'Raynor', 'esmeralda.yost@example.com', '2006-11-04', '2017-08-25 00:43:30'),
(43, 'Maymie', 'Runte', 'kwhite@example.com', '2000-06-19', '2018-06-01 00:12:58'),
(44, 'Demond', 'Skiles', 'schinner.westley@example.com', '1983-02-22', '2013-08-11 09:09:05'),
(45, 'Arvel', 'Jones', 'udietrich@example.net', '1975-03-20', '1974-10-04 05:14:12'),
(46, 'Donavon', 'Thiel', 'smitham.keven@example.org', '1994-12-25', '2019-05-05 07:38:57'),
(47, 'Aiyana', 'Ziemann', 'katlyn.shields@example.com', '1987-02-18', '1982-12-16 04:08:25'),
(48, 'Gillian', 'Streich', 'zmertz@example.com', '1976-07-07', '1990-09-03 03:55:48'),
(49, 'Bryon', 'Roob', 'rosanna03@example.com', '1979-06-21', '1979-03-27 20:28:17'),
(50, 'Wendy', 'McLaughlin', 'katelyn.howell@example.com', '2018-06-06', '2002-10-11 16:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `interventions`
--

CREATE TABLE `interventions` (
  `id` int(11) NOT NULL,
  `no_intv` int(2) NOT NULL,
  `comm` text NOT NULL,
  `insp_comp` text NOT NULL,
  `act_takn` text NOT NULL,
  `no_intv2` int(2) NOT NULL,
  `comm2` text NOT NULL,
  `insp_comp2` text NOT NULL,
  `act_takn2` text NOT NULL,
  `no_intv3` int(2) NOT NULL,
  `comm3` text NOT NULL,
  `insp_comp3` text NOT NULL,
  `act_takn3` text NOT NULL,
  `no_intv4` int(2) NOT NULL,
  `comm4` text NOT NULL,
  `insp_comp4` text NOT NULL,
  `act_takn4` text NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interventions`
--

INSERT INTO `interventions` (`id`, `no_intv`, `comm`, `insp_comp`, `act_takn`, `no_intv2`, `comm2`, `insp_comp2`, `act_takn2`, `no_intv3`, `comm3`, `insp_comp3`, `act_takn3`, `no_intv4`, `comm4`, `insp_comp4`, `act_takn4`, `member_id`, `role_id`) VALUES
(1, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 1),
(2, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 1),
(3, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 1),
(4, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 1),
(5, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 1),
(6, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 1),
(7, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 1),
(8, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 1),
(9, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 2),
(10, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 2),
(11, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 2),
(12, 1, 'Nothing', 'Nothing', 'Nothing', 2, 'Nothing', 'Nothing', 'Nothing', 3, 'Nothing', 'Nothing', 'Nothing', 4, 'Nothing', 'Nothing', 'Nothing', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '0',
  `last_name` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `role_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(8, 1, 'sai krishna', 'musham', 'something@something.com', '$2y$04$P7vvMfjRwDoSbt3nXYxVgO4PiiZZuMXh/RJB8rRMYe.xbr/2SZZam'),
(9, 2, 'sai', 'krishna', 'sai@aru.com', '$2y$04$Rfrqt4z2NMoidRtXwtSp2eeQadGvyRQZxgkX7vyI9H5Vf.MT5q9pm'),
(10, 2, 'tasneem', 'subhani', 'tasneem@aru.com', '$2y$04$.Jvpk7oKwMKWTvjnw51DKuyE/bceJp.3efxestaeTmFK7AdMCzkwO'),
(11, 2, 'KARTHIK', 'CHARY', 'karthik.chary138@gmail.com', '$2y$04$3/UXNvKSorcmZZ6ZO9hwXOD5R7hRkAo4IpnqYJfIyWfVbByLKW6Ou');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(20) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_on`, `created_by`) VALUES
(1, 'Admin', '2022-03-23 13:54:30', 1),
(2, 'Site Inspector', '2022-03-23 13:54:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `site_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `site_name`) VALUES
(8, 'hyderabad'),
(9, 'hyderabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interventions`
--
ALTER TABLE `interventions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `interventions`
--
ALTER TABLE `interventions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `interventions`
--
ALTER TABLE `interventions`
  ADD CONSTRAINT `interventions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `interventions_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
