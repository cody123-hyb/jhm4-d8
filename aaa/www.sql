SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci */;

--
-- Database: `APT2004`
--
CREATE DATABASE IF NOT EXISTS `APT2004` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `APT2004`;

-- --------------------------------------------------------

--
-- Table structure for table `snacks`
--
DROP TABLE IF EXISTS `snacks`;
CREATE TABLE `snacks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Brand` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SalesCount` int(11) DEFAULT NULL,
  `HealthyOption` tinyint(1) DEFAULT 0 COMMENT '1 for healthy, 0 for not healthy',
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `idx_category` (`Category`),
  KEY `idx_brand` (`Brand`),
  KEY `idx_healthy` (`HealthyOption`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `snacks`
--
INSERT INTO `snacks` (`ID`, `Category`, `Brand`, `SalesCount`, `HealthyOption`) VALUES
(1, 'Chips', 'Lays', 50, 0),
(2, 'Chips', 'Calbee', 42, 0),
(3, 'Chips', 'Doritos', 38, 0),
(4, 'Chips', 'Pringles', 61, 0),
(5, 'Chips', 'Jack’n Jill', 33, 0),
(6, 'Chocolate', 'Lindt', 65, 0),
(7, 'Chocolate', 'Kinder', 75, 1),
(8, 'Chocolate', 'Ferrero Rocher', 58, 0),
(9, 'Chocolate', 'Snickers', 49, 0),
(10, 'Chocolate', 'M&M\'s', 45, 0),
(11, 'Cookies', 'Oreo', 33, 0),
(12, 'Cookies', 'Glico Pretz', 28, 1),
(13, 'Cookies', 'Hello Panda', 39, 0),
(14, 'Cookies', 'Koala\'s March', 31, 0),
(15, 'Cookies', 'Bourbon Alfort', 22, 1),
(16, 'Candies', 'Sugus', 40, 0),
(17, 'Candies', 'Ricola', 36, 1),
(18, 'Candies', 'Mentos', 55, 0),
(19, 'Candies', 'Hi-Chew', 33, 0),
(20, 'Candies', 'Puccho', 29, 0),
(21, 'Fruit Snacks', 'Vita Fruit Bar', 20, 1),
(22, 'Fruit Snacks', 'Healthy Garden', 18, 1),
(23, 'Fruit Snacks', 'Fruit-tella', 12, 1),
(24, 'Fruit Snacks', 'Dried Mango', 17, 1),
(25, 'Nuts', 'Blue Diamond Almonds', 26, 1),
(26, 'Nuts', 'Tong Garden', 22, 1),
(27, 'Nuts', 'Kirkland Cashews', 19, 1),
(28, 'Nuts', 'Planters Peanuts', 24, 1),
(29, 'Energy Bars', 'Nature Valley', 21, 1),
(30, 'Energy Bars', 'Clif Bar', 25, 1),
(31, 'Energy Bars', 'KIND Bar', 27, 1),
(32, 'Energy Bars', 'Quest Bar', 18, 1);

--
-- Fix any auto-increment values
--
ALTER TABLE `snacks` AUTO_INCREMENT=33;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;