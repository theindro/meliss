-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Jaan 19, 2016 kell 12:37 p.k.
-- Serveri versioon: 5.6.26
-- PHP versioon: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `meliss`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `adminn`
--

CREATE TABLE IF NOT EXISTS `adminn` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `adminn`
--

INSERT INTO `adminn` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `broneering`
--

CREATE TABLE IF NOT EXISTS `broneering` (
  `broneering_id` int(11) NOT NULL,
  `klient_id` int(11) NOT NULL,
  `kuupäev_kellaaeg` datetime NOT NULL,
  `inimeste_arv` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Andmete tõmmistamine tabelile `broneering`
--

INSERT INTO `broneering` (`broneering_id`, `klient_id`, kuupaev_kellaaeg, `inimeste_arv`) VALUES
(1, 1, '2016-01-06 12:00:00', 3);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `klient`
--

CREATE TABLE IF NOT EXISTS `klient` (
  `klient_id` int(11) NOT NULL,
  `nimi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telf_nr` int(11) NOT NULL,
  `e_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Andmete tõmmistamine tabelile `klient`
--

INSERT INTO `klient` (`klient_id`, `nimi`, `telf_nr`, `e_mail`) VALUES
(1, 'Peeter', 56262626, 'peeter@live.com'),
(8, 'test', 123, 'test');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL,
  `broneering_id` int(11) NOT NULL,
  `eelroogade_arv` int(11) NOT NULL,
  `põhiroogade_arv` int(11) NOT NULL,
  `järelroogade_arv` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Andmete tõmmistamine tabelile `menu`
--

INSERT INTO `menu` (`menu_id`, `broneering_id`, `eelroogade_arv`, pohiroogade_arv, jarelroogade_arv) VALUES
(1, 1, 2, 3, 1);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `adminn`
--
ALTER TABLE `adminn`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `broneering`
--
ALTER TABLE `broneering`
  ADD PRIMARY KEY (`broneering_id`),
  ADD KEY `klient_id` (`klient_id`);

--
-- Indeksid tabelile `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`klient_id`);

--
-- Indeksid tabelile `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `broneering_id` (`broneering_id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `adminn`
--
ALTER TABLE `adminn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT tabelile `broneering`
--
ALTER TABLE `broneering`
  MODIFY `broneering_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT tabelile `klient`
--
ALTER TABLE `klient`
  MODIFY `klient_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT tabelile `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `broneering`
--
ALTER TABLE `broneering`
  ADD CONSTRAINT `broneering_ibfk_1` FOREIGN KEY (`klient_id`) REFERENCES `klient` (`klient_id`);

--
-- Piirangud tabelile `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`broneering_id`) REFERENCES `broneering` (`broneering_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
