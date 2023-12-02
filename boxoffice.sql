-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 10:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boxoffice`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `mid` varchar(11) NOT NULL,
  `year` text NOT NULL,
  `runtime` text NOT NULL,
  `genre` text NOT NULL,
  `director` text NOT NULL,
  `writer` text NOT NULL,
  `actor` text NOT NULL,
  `metascore` text NOT NULL,
  `rate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `title`, `mid`, `year`, `runtime`, `genre`, `director`, `writer`, `actor`, `metascore`, `rate`) VALUES
(33, 'Avatar 1', '0001', '2009', '162 min', 'Action,Adventure, Fantasy', 'James Cameron', 'James Cameron', 'Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang', '83', '7.9'),
(35, 'Black Adam', '0002', '2022', '2h 5m', 'Action, Adventure, Fantasy ', ' Jaume Collet-Serra', 'Adam Sztykiel', 'Dwayne Johnson, Aldis Hodge, Pierce Brosnan', '41', '7.1'),
(36, 'The Boys', '0003', '2019', '1h', 'Action, Comedy, Crime', ' Eric Kripke', ' Eric Kripke', 'Karl Urban, jack Quaid, Antony Starr', '54', '8.7'),
(37, 'Black Panther', '0004', '2022', '2h 41m', 'Action, Adventure, Drama', ' Ryan Coogler', ' Ryan Coogler', 'Letitia Wright, Lupita Nyong\'o, Danai Gurira', '67', '7.4'),
(38, 'Deadpool', '0005', '2016', '1h 48m', 'Action, Adventure, Comedy', 'Tim Miller', 'Rhett Reese', 'Ryan Reynolds, Morena Baccarin', '65', '8.0'),
(39, 'Titanic', '0006', '1997', '3h 14m', 'Drama, Romance', ' James Cameron', ' James Cameron', 'Leonardo DiCaprio, Kate Winslet', '75', '7.9'),
(40, 'Avatar 2', '0007', 'Releases December 16, 2022', '3h 10m', 'Action, Adventure, Fantasy ', 'James Cameron', 'James Cameron', 'Zoe Saldana, Rick Jaffa, Amanda Silver', '-', '-'),
(41, 'Stranger Things ', '0008', '2016', '51m', 'Drama, Fantasy, Horror', ' Matt DufferRoss Duffer', ' Matt DufferRoss Duffer', 'Millie Bobby Brown, Finn Wolfhard, Winona Ryder, David Harbour', '65', '8.7'),
(42, 'Euphoria', '0009', '2019', '55 min', 'Drama', 'Sam Levinson', 'Sam Levinson', 'Zendaya, Hunter Schafer, Angus Cloud, Jacob Elordi', '77', '8.4'),
(43, 'Kantara', '0010', '2022', '2h 28m', 'Action, Adventure, Drama', ' Rishab Shetty', ' Rishab Shetty', 'Rishab Shetty, Sapthami Gowda, Kishore Kumar G.', '87', '9.1'),
(44, 'K.G.F', '0011', '2018', '2h 36m', 'Action, Crime, Drama', 'Prashanth Neel', 'M Chandramouli', 'Yash, Srinidhi', '90', '8.2'),
(45, 'K.G.F: 2', '0012', '2022', '2h 48m', 'Action, Crime, Drama', ' Prashanth Neel', ' Prashanth Neel', 'Yash, Sanjay Dutt', '87', '8.4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
