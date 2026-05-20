-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2026 at 02:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_handicap_univ`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `departement` varchar(100) DEFAULT NULL,
  `idUtilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `departement`, `idUtilisateur`) VALUES
(1, 'Département Informatique', 1);

-- --------------------------------------------------------

--
-- Table structure for table `demande`
--

CREATE TABLE `demande` (
  `idDemande` int(11) NOT NULL,
  `descDemande` text NOT NULL,
  `dateDemande` date NOT NULL,
  `typeDemande` varchar(100) NOT NULL,
  `statutDemande` enum('EN_COURS','ACCEPTEE','REFUSEE') NOT NULL DEFAULT 'EN_COURS',
  `idEtudiant` int(11) NOT NULL,
  `motif_refus` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `idEtudiant` int(11) NOT NULL,
  `handicap` text DEFAULT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `numEtudiant` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`idEtudiant`, `handicap`, `idUtilisateur`, `numEtudiant`) VALUES
(20210099, 'ADHD', 14, '2026');

-- --------------------------------------------------------

--
-- Table structure for table `piecejustificatif`
--

CREATE TABLE `piecejustificatif` (
  `idPiece` int(11) NOT NULL,
  `nomPiece` varchar(255) NOT NULL,
  `descPiece` text DEFAULT NULL,
  `dateAjout` date NOT NULL,
  `idDemande` int(11) NOT NULL,
  `cheminFichier` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reclamation`
--

CREATE TABLE `reclamation` (
  `idRecla` int(11) NOT NULL,
  `dateRecla` date NOT NULL,
  `descriRecla` text NOT NULL,
  `statutRecla` enum('EN_ATTENTE','EN_TRAITEMENT','RESOLUE','REJETEE') NOT NULL DEFAULT 'EN_ATTENTE',
  `action` text DEFAULT NULL,
  `idEtudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `emailUtilisateur` varchar(100) NOT NULL,
  `pwdUtilisateur` varchar(255) NOT NULL,
  `nomUtilisateur` varchar(100) NOT NULL,
  `roleUtilisateur` enum('Etudiant','Admin') NOT NULL,
  `statutCompte` enum('En attente','Validé','Refusé') DEFAULT 'En attente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `emailUtilisateur`, `pwdUtilisateur`, `nomUtilisateur`, `roleUtilisateur`, `statutCompte`) VALUES
(1, 'admin@uir.ac.ma', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', 'Admin Principal', 'Admin', 'Validé'),
(14, 'user@uir.ac.ma', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'user', 'Etudiant', 'Validé');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`),
  ADD KEY `idUtilisateur` (`idUtilisateur`);

--
-- Indexes for table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`idDemande`),
  ADD KEY `idEtudiant` (`idEtudiant`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`idEtudiant`),
  ADD KEY `idUtilisateur` (`idUtilisateur`);

--
-- Indexes for table `piecejustificatif`
--
ALTER TABLE `piecejustificatif`
  ADD PRIMARY KEY (`idPiece`),
  ADD KEY `idDemande` (`idDemande`);

--
-- Indexes for table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`idRecla`),
  ADD KEY `idEtudiant` (`idEtudiant`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`),
  ADD UNIQUE KEY `emailUtilisateur` (`emailUtilisateur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `demande`
--
ALTER TABLE `demande`
  MODIFY `idDemande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idEtudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20210100;

--
-- AUTO_INCREMENT for table `piecejustificatif`
--
ALTER TABLE `piecejustificatif`
  MODIFY `idPiece` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `idRecla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE CASCADE;

--
-- Constraints for table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `demande_ibfk_1` FOREIGN KEY (`idEtudiant`) REFERENCES `etudiant` (`idEtudiant`) ON DELETE CASCADE;

--
-- Constraints for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE CASCADE;

--
-- Constraints for table `piecejustificatif`
--
ALTER TABLE `piecejustificatif`
  ADD CONSTRAINT `piecejustificatif_ibfk_1` FOREIGN KEY (`idDemande`) REFERENCES `demande` (`idDemande`) ON DELETE CASCADE;

--
-- Constraints for table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `reclamation_ibfk_1` FOREIGN KEY (`idEtudiant`) REFERENCES `etudiant` (`idEtudiant`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
