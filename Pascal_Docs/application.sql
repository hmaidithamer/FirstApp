-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 02 Août 2016 à 17:03
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `application`
--

-- --------------------------------------------------------

--
-- Structure de la table `target`
--

CREATE TABLE IF NOT EXISTS `target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Destination` varchar(255) NOT NULL,
  `Codes` varchar(255) NOT NULL,
  `Rate` varchar(255) NOT NULL,
  `Currency` varchar(255) NOT NULL,
  `Quality` varchar(255) NOT NULL,
  `QoS` varchar(255) NOT NULL,
  `Volume` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Technology` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `target`
--

INSERT INTO `target` (`id`, `Destination`, `Codes`, `Rate`, `Currency`, `Quality`, `QoS`, `Volume`, `Type`, `Technology`) VALUES
(1, 'Senegal mab Tigo', '2214,2217', '0.2840', 'EUR', 'Premium', '38% - 125 - 59', '10000000', 'buy', 'Voice'),
(2, 'Ivory Cost Mob MTN', '2214,2217', '0.2313', 'EUR', 'Premium', '38% - 125 - 59', '10000000', 'buy', 'Voice');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
