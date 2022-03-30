-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 30 mars 2022 à 10:32
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `techit`
--

-- --------------------------------------------------------

--
-- Structure de la table `donation`
--

CREATE TABLE `donation` (
  `ID` bigint(10) NOT NULL,
  `ProductName` text DEFAULT NULL,
  `DonatorID` bigint(20) DEFAULT NULL,
  `ProductType` enum('Computer','Keyboard','Mouse','Screen','Printer','Camera','EarPhones','Other') DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Condtions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `expedition`
--

CREATE TABLE `expedition` (
  `ID` bigint(10) NOT NULL,
  `ProductName` text DEFAULT NULL,
  `AcquirerID` bigint(10) DEFAULT NULL,
  `ExpeditorID` bigint(10) DEFAULT NULL,
  `OrderDate` date NOT NULL DEFAULT current_timestamp(),
  `DeliveryDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `ID` bigint(10) NOT NULL,
  `NickName` text DEFAULT NULL,
  `FirstName` text DEFAULT NULL,
  `LastName` text DEFAULT NULL,
  `E-Mail` text DEFAULT NULL,
  `Adress` text DEFAULT NULL,
  `Password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `expedition`
--
ALTER TABLE `expedition`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `donation`
--
ALTER TABLE `donation`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `expedition`
--
ALTER TABLE `expedition`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
