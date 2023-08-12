-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 03:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be19_cr6_bigeventsgeorgiostsoulakis`
--
CREATE DATABASE IF NOT EXISTS `be19_cr6_bigeventsgeorgiostsoulakis` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be19_cr6_bigeventsgeorgiostsoulakis`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230811102426', '2023-08-11 12:24:51', 74);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT 'No location avaliable',
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `datetime`, `description`, `image`, `capacity`, `email`, `number`, `address`, `url`, `type`) VALUES
(2, 'Film Festival am Wiener Rathausplatz', '2023-07-01 21:00:00', 'For the 33rd time, hundreds of thousands of visitors from Vienna, Austria and all over the world can enjoy top-class music film productions from all genres every day with free admission. The program includes a wealth of highlights, with something to suit all musical tastes: classical, opera, pop, rock, jazz...\n\nThe culinary delights are not neglected either: 26 different gastronomy concepts ensure physical well-being. And several side events - above all the children\'s opera festival - round off the summer event. Admission is free as usual.', '/img/default.jpg', 1000, NULL, NULL, 'Ratshausplatz', 'https://filmfestival-rathausplatz.at/', 'Film'),
(12, 'Rock the Opera', '2023-08-12 20:00:00', 'Conductor Friedemann Riehle achieves the impossible: a perfect combination of classic and rock. The transmissions and interpretations combine the atmosphere and power of the original songs with a unique passion and the great sound of the Prague Philharmonic Orchestra are considered groundbreaking among rock fans.', NULL, 200, 'georgtsou9@gmail.com', 2147483647, 'Vienna state Opera', 'https://www.oeticket.com/noapp/artist/rock-the-opera/?affiliate=A21', 'music'),
(13, 'Big Gay Picnic', '2023-08-13 14:00:00', 'Because everyone deserves a place to relax, socialize and have fun outside of bars and clubs. The Big Gay Picnic is all about fostering community, celebrating diversity and enjoying the company of others in a super chilled atmosphere.', NULL, 50, 'georgtsou9@gmail.com', NULL, 'Danube Island', 'https://www.facebook.com/events/678171634142975/678171650809640/?active_tab=about', 'other'),
(14, 'Africa Days Vienna', '2023-08-11 10:00:00', 'The Africa Days are a lively celebration of African culture in all its uniqueness and vitality. In the middle of Vienna on the Danube Island surrounded by blue water. Africa is more than just a place in people\'s hearts, minds and souls. The event focuses on bringing this cultural experience to life through music, entertainment, fashion, art and many other expressions of culture.', NULL, 100, 'georgtsou9@gmail.com', NULL, 'Danube Island Vienna', 'https://www.oeticket.com/noapp/artist/afrika-tage-wien/19-afrika-tage-wien-dauerkarte-3334868/?affiliate=A21', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
