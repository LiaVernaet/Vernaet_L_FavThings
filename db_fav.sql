-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2019 at 06:05 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fav`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favthings`
--

DROP TABLE IF EXISTS `tbl_favthings`;
CREATE TABLE IF NOT EXISTS `tbl_favthings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thing_title` varchar(40) NOT NULL,
  `thing_banner` varchar(40) NOT NULL,
  `thing-text` text NOT NULL,
  `thing_thumb` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_favthings`
--

INSERT INTO `tbl_favthings` (`id`, `thing_title`, `thing_banner`, `thing-text`, `thing_thumb`) VALUES
(1, 'Warriors', 'warriors-banner.png', 'Warriors has been one of my top favorite things for about ten years now. It is a book series that started in 2005 about clans of feral cats that live in a forest. The series revolves around politics, religion, and relationships within the clans as the cats face external and internal conflicts and enemies. I\'ve always loved animals, particularly cats, and the series has been a huge part of my life since I started reading it.', 'warriors-thumb.png'),
(2, 'Balto', 'balto-banner', 'Balto is an animated movie released in 1995. It is based on the true story of the Nome serum run in 1925. It was one of my favorite movies growing up, and inspired me to try to become an animator. I have even talked to some animators who worked on the movie, and I like studying the animation, storyboards, and how the frames were done to create smooth movement.', 'balto-thumb.png'),
(3, 'Timeless', 'timeless-banner.png', 'Timeless is one of my favorite TV shows, though it only had two seasons. It is about a historian, a soldier, and a pilot who are sent on missions in a time machine where through time, they must chase down a criminal and stop him before he changes history and everything they have ever known to be true.', 'timeless-thumb.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
