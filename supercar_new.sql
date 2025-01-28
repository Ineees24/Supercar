-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 28, 2025 at 09:46 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supercar`
--

-- --------------------------------------------------------

--
-- Table structure for table `accueil`
--

DROP TABLE IF EXISTS `accueil`;
CREATE TABLE IF NOT EXISTS `accueil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `txt` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img` varchar(1000) DEFAULT NULL,
  `vid` varchar(1000) DEFAULT NULL,
  `align` enum('left','center','right') NOT NULL DEFAULT 'left',
  `color` varchar(15) NOT NULL DEFAULT 'white',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accueil`
--

INSERT INTO `accueil` (`id`, `titre`, `txt`, `img`, `vid`, `align`, `color`) VALUES
(0, '', '', '', 'ar-vid-blur.mp4', '', ''),
(1, 'Bienvenue', 'Bienvenue chez SuperCar, votre partenaire de confiance pour des véhicules d\'exception. Nous sommes fiers de présenter une sélection impressionnante de voitures de qualité qui répondent aux normes les plus élevées de performance, de sécurité et de style.', 'gtr-inte.webp', '', 'left', 'blue'),
(2, 'Nous proposons 4 marques', 'Supercar propose 4 marques: NISSAN, FORD, BMD et PORSCHE.', 'm8.jpg', '', 'right', 'aqua'),
(3, 'Qui sommes-nous ?', 'Supercar est né de la passion pour les voitures de prestige. Nous avons pour mission de proposer des véhicules de qualité, avec des services personnalisés et une expertise unique. Notre équipe est composée de spécialistes de l’automobile qui vous accompagnent dans le choix de votre véhicule idéal.', 'techjuke.jpg', '', 'left', 'teal'),
(4, 'Explorez notre galerie', 'Parcourez notre galerie pour découvrir des images de nos véhicules et de nos événements passés. Laissez-vous inspirer par les lignes et les détails de chaque modèle. Chez Supercar, chaque voiture est une œuvre d\'art que nous sommes fiers de partager avec vous.', '911.jpg', '', 'right', 'black');

-- --------------------------------------------------------

--
-- Table structure for table `client_inscrit`
--

DROP TABLE IF EXISTS `client_inscrit`;
CREATE TABLE IF NOT EXISTS `client_inscrit` (
  `ID_client` int NOT NULL AUTO_INCREMENT,
  `Utilisateur` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nom` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Prenom` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tel` int DEFAULT NULL,
  `Mdp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_client`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_inscrit`
--

INSERT INTO `client_inscrit` (`ID_client`, `Utilisateur`, `Nom`, `Prenom`, `Email`, `Tel`, `Mdp`) VALUES
(1, 'Vandam', 'Jean', 'Claude', 'vandam@gmail.com', 230328, 'jean1234'),
(2, 'gase', 'ikari', 'yuura', 'ikari@gmail.com', 230328, '12345'),
(4, 'han', 'han', 'sung', 'han@gmail.com', 8389445, '12345'),
(5, 'Chan', 'Jackie', 'Chan', 'jackiechan@gmail.com', 230328, '12345'),
(6, 'Bot', 'Bot', '1', 'bot@gmail.com', 230328, '8cb2237d0679ca88db6464eac60da96345513964'),
(7, 'Vandame', 'Jackie', 'sung', 'bot@gmail.com', 230328, '8cb2237d0679ca88db6464eac60da96345513964'),
(8, 'Chan', 'geogre', 'Claude', 'bot@gmail.com', 230328, '8cb2237d0679ca88db6464eac60da96345513964'),
(9, 'Bot', 'Jackie', 'Claude', 'bot@gmail.com', 0, '8cb2237d0679ca88db6464eac60da96345513964'),
(10, 'client', 'Client', 'client', 'client@gmail.com', 12345, '8a617f3b33b922b6ec078e067407eeb6f693aaab');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `ID_contact` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prenom` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tel` int NOT NULL,
  `Mail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Message` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID_contact`, `Nom`, `Prenom`, `Tel`, `Mail`, `Message`) VALUES
(1, 'Jackie', 'Chan', 230328, 'Jackiechan@gmail.com', 'OKOKO'),
(3, 'Jean', 'Claude', 230328, 'Vandam@gmail.com', 'je suis vandam.'),
(5, 'Mark', 'Zukerberg', 230328, 'markz@gmail.com', 'I want to buy a car.'),
(6, 'Mark', 'Zukerberg', 230328, 'markz@gmail.com', 'I want to buy a car.'),
(7, 'geogre', 'Claude', 28374987, 'claude@gmail.com', 'Je suis claude.');

-- --------------------------------------------------------

--
-- Table structure for table `essai`
--

DROP TABLE IF EXISTS `essai`;
CREATE TABLE IF NOT EXISTS `essai` (
  `ID_demande` int NOT NULL AUTO_INCREMENT,
  `Modele` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Utilisateur` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date_demande` date DEFAULT NULL,
  `Heure` time DEFAULT NULL,
  `statut` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'En attente',
  PRIMARY KEY (`ID_demande`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `essai`
--

INSERT INTO `essai` (`ID_demande`, `Modele`, `Utilisateur`, `Date_demande`, `Heure`, `statut`) VALUES
(1, 'GTR', 'Vandam', '2024-12-12', '12:12:00', 'Terminé'),
(4, 'M8', 'Jackie', '2024-04-26', '17:30:00', 'Terminé'),
(5, 'MUSTANG', 'Jackie', '2024-04-27', '20:30:00', 'Confirmé'),
(8, 'MUSTANG', 'Vandam', '2024-05-12', '10:33:00', 'En attente');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txt` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debut` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `titre`, `txt`, `img`, `debut`, `fin`) VALUES
(1, 'Porte ouverte pour les Fan de BMW', 'Supercar organise une journée porte ouverte pour tous ceux qui aiment la marque BMW.', 'event-1.jpg', '2024-04-20', '2024-05-12'),
(2, 'Journée 4x4', 'Vous aimez les gros bolide, venez dans notre journée 4x4 et découvrez nos meilleurs 4x4.', 'event-2.png', '2024-03-21', '2024-08-29'),
(3, 'Ford and GT', 'Supercar présente: La FORD GT.', 'event-3.jpg', '2024-08-05', '2024-12-26'),
(4, 'Showcase Supercar', 'Vous voulez voir des Super Cars, venez à notre Showcase Supercar.', 'event-4.jpg', '2024-05-01', '2024-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dercon` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`, `dercon`) VALUES
(14, 'bot', 'bot@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `id_voiture` int NOT NULL AUTO_INCREMENT,
  `imo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Marque` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Modele` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `places` int NOT NULL,
  `poidvide` int NOT NULL,
  `longueur` int NOT NULL,
  `largeur` int NOT NULL,
  `hauteur` int NOT NULL,
  `vmax` int NOT NULL,
  `prix` float NOT NULL,
  `Carburant` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservoir` int NOT NULL,
  `titre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_voiture`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voiture`
--

INSERT INTO `voiture` (`id_voiture`, `imo`, `Marque`, `Modele`, `places`, `poidvide`, `longueur`, `largeur`, `hauteur`, `vmax`, `prix`, `Carburant`, `reservoir`, `titre`, `img`) VALUES
(1, '', 'BMW', 'M3', 4, 1800, 1400, 1200, 900, 100, 98000, 'essence', 87, 'BMW M3', 'm3.png'),
(2, '', 'BMW', 'M4', 4, 1800, 1400, 1200, 900, 100, 100000, 'essence', 87, 'BMW M4', 'm44.png'),
(3, '', 'BMW', 'M8', 5, 1800, 1400, 1200, 900, 100, 102000, 'essence', 87, 'BMW M8', 'm8bg.png'),
(4, '', 'BMW', 'X6M', 4, 1800, 1400, 1200, 900, 100, 101000, 'essence', 87, 'BMW X6M', 'BMW_X6M.webp'),
(5, '', 'FORD', 'FIESTA', 5, 1800, 1400, 1200, 900, 100, 45000, 'essence', 87, 'FORD FIESTA', 'fiesta-bn-2.png'),
(6, '', 'FORD', 'GT', 2, 1800, 1400, 1200, 900, 100, 120000, 'essence', 87, 'FORD GT', 'HOR_XB1_Ford_GT_17.webp'),
(7, '', 'FORD', 'MUSTANG', 4, 1800, 1400, 1200, 900, 100, 120000, 'essence', 87, 'FORD MUSTANG', 'ford-must-1.png'),
(8, '', 'FORD', 'RAPTOR', 5, 1800, 1400, 1200, 900, 100, 63000, 'diesel ', 87, 'FORD RAPTOR', 'raptor-bn.png'),
(9, '', 'NISSAN', 'GT-R', 3, 1800, 1400, 1200, 900, 100, 107000, 'essence', 87, 'NISSAN GT-R', 'nissan-tr.png'),
(10, '', 'NISSAN', 'JESKO', 5, 1800, 1400, 1200, 900, 100, 64000, 'essence', 87, 'NISSAN JESKO', 'juke-re.png'),
(11, '', 'NISSAN', 'NAVARA', 5, 1800, 1400, 1200, 900, 100, 75000, 'essence', 87, 'NISSAN NAVARA', 'navara-ar.png'),
(12, '', 'NISSAN', 'Z', 2, 1800, 1400, 1200, 900, 100, 110000, 'essence', 87, 'NISSAN Z', 'nissanz-ar.png'),
(13, '', 'PORSCHE', '718', 2, 1800, 1400, 1200, 900, 100, 130000, 'essence', 87, 'PORSCHE 718', '718 Spyder RS.jpg'),
(14, '', 'PORSCHE', '911', 2, 1800, 1400, 1200, 900, 100, 135000, 'essence', 87, 'PORSCHE 911', '911.jpg'),
(15, '', 'PORSCHE', 'CAYENNE', 4, 1800, 1400, 1200, 900, 100, 132000, 'essence', 87, 'PORSCHE CAYENNE', 'Cayenne S.jpg'),
(16, '', 'PORSCHE', 'TAYCAN', 5, 1800, 0, 1200, 900, 100, 120000, 'essence', 87, 'PORSCHE TAYCAN', 'porsche taycan.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
