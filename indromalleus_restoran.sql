-- phpMyAdmin SQL Dump
-- version 3.5.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Loomise aeg: Jaan 18, 2016 kell 10:58 AM
-- Serveri versioon: 5.5.27-1~dotdeb.0
-- PHP versioon: 5.3.16-1~dotdeb.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Andmebaas: `indromalleus_restoran`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `broneering`
--

CREATE TABLE IF NOT EXISTS `broneering` (
  `broneering_id` int(11) NOT NULL AUTO_INCREMENT,
  `klient_id` int(11) NOT NULL,
  `kuupäev_kellaaeg` datetime NOT NULL,
  `inimeste_arv` int(11) NOT NULL,
  PRIMARY KEY (`broneering_id`),
  KEY `klient_id` (`klient_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `broneering`
--

INSERT INTO `broneering` (`broneering_id`, `klient_id`, `kuupäev_kellaaeg`, `inimeste_arv`) VALUES
(1, 1, '2016-01-06 12:00:00', 3);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `Klient`
--

CREATE TABLE IF NOT EXISTS `Klient` (
  `klient_id` int(11) NOT NULL AUTO_INCREMENT,
  `nimi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telf_nr` int(11) NOT NULL,
  `e_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`klient_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `Klient`
--

INSERT INTO `Klient` (`klient_id`, `nimi`, `telf_nr`, `e_mail`) VALUES
(1, 'Peeter', 56262626, 'peeter@live.com');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `broneering_id` int(11) NOT NULL,
  `eelroogade_arv` int(11) NOT NULL,
  `põhiroogade_arv` int(11) NOT NULL,
  `järelroogade_arv` int(11) NOT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `broneering_id` (`broneering_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `menu`
--

INSERT INTO `menu` (`menu_id`, `broneering_id`, `eelroogade_arv`, `põhiroogade_arv`, `järelroogade_arv`) VALUES
(1, 1, 2, 3, 1);

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `broneering`
--
ALTER TABLE `broneering`
  ADD CONSTRAINT `broneering_ibfk_1` FOREIGN KEY (`klient_id`) REFERENCES `Klient` (`klient_id`);

--
-- Piirangud tabelile `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`broneering_id`) REFERENCES `broneering` (`broneering_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
