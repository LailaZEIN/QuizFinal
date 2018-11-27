-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 25 nov. 2018 à 10:05
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `quizfinal`
--

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `numeroQuestion` int(11) NOT NULL AUTO_INCREMENT,
  `enonce` varchar(255) DEFAULT NULL,
  `estMultiple` bit(1) NOT NULL,
  `imageQuestion` varchar(255) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`numeroQuestion`),
  KEY `FKr4j2orxaag8tafv7dnww8lrp0` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`numeroQuestion`, `enonce`, `estMultiple`, `imageQuestion`, `quiz_id`) VALUES
(1, 'Quelle est la capitale de la Californie ?', b'0', 'californie', 1),
(2, 'Quelle est la capitale de la Floride ?', b'0', 'floride', 1),
(3, 'Quelle est la capitale du Texas ?', b'0', 'texas', 1),
(4, 'Quel est le dernier État à avoir intégré les États-Unis ?', b'0', 'etat', 1),
(5, 'Quelle est la capitale de l\'Ohio ?', b'0', 'ohio', 1),
(6, 'Quelle est la capitale du Maroc ?', b'0', 'maroc', 2),
(7, 'Quelle est la capitale de l\'Australie ?', b'0', 'australie', 2),
(8, 'Quelle est la capitale du Brésil ?', b'0', 'bresil', 2),
(9, 'Quelle est la capitale du Canada ?', b'0', 'canada', 2),
(10, 'Quelle est la capitale du Japon ?', b'0', 'japon', 2);

-- --------------------------------------------------------

--
-- Structure de la table `question_reponse`
--

DROP TABLE IF EXISTS `question_reponse`;
CREATE TABLE IF NOT EXISTS `question_reponse` (
  `Question_numeroQuestion` int(11) NOT NULL,
  `reponses_numeroReponse` int(11) NOT NULL,
  UNIQUE KEY `UK_cugnjogkf8so5gy2r9vnvn3sp` (`reponses_numeroReponse`),
  KEY `FK5vu0fo96slswyylfngb8766j0` (`Question_numeroQuestion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compteARebours` int(11) DEFAULT NULL,
  `nbQuestions` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `titreQuiz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`id`, `compteARebours`, `nbQuestions`, `score`, `titreQuiz`) VALUES
(1, 0, 5, 0, 'Géographie - États-Unis'),
(2, 0, 5, 0, 'Géographie - capitales');

-- --------------------------------------------------------

--
-- Structure de la table `quiz_question`
--

DROP TABLE IF EXISTS `quiz_question`;
CREATE TABLE IF NOT EXISTS `quiz_question` (
  `Quiz_id` int(11) NOT NULL,
  `questions_numeroQuestion` int(11) NOT NULL,
  UNIQUE KEY `UK_opdthgu3jegtclmmgm0b4gh47` (`questions_numeroQuestion`),
  KEY `FK4dv986ko4hgpfg43qahdmwtbk` (`Quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

DROP TABLE IF EXISTS `reponse`;
CREATE TABLE IF NOT EXISTS `reponse` (
  `numeroReponse` int(11) NOT NULL AUTO_INCREMENT,
  `correct` bit(1) NOT NULL,
  `enonceReponse` varchar(255) DEFAULT NULL,
  `imageReponse` varchar(255) DEFAULT NULL,
  `question_numeroQuestion` int(11) DEFAULT NULL,
  PRIMARY KEY (`numeroReponse`),
  KEY `FKnsvcver0300gk326mso4u4wos` (`question_numeroQuestion`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`numeroReponse`, `correct`, `enonceReponse`, `imageReponse`, `question_numeroQuestion`) VALUES
(1, b'0', 'Los Angeles', 'la', 1),
(2, b'0', 'San Francisco', 'sf', 1),
(3, b'0', 'San Diego', 'sd', 1),
(4, b'1', 'Sacramento', 'sacramento', 1),
(5, b'0', 'Miami', 'miami', 2),
(6, b'1', 'Tallahassee', 'tallahassee', 2),
(7, b'0', 'Tampa Bay', 'tampa', 2),
(8, b'0', 'Orlando', 'orlando', 2),
(9, b'0', 'Dallas', 'dallas', 3),
(10, b'1', 'Austin', 'austin', 3),
(11, b'0', 'Houston', 'houston', 3),
(12, b'0', 'Galveston', 'galveston', 3),
(13, b'0', 'Alaska', 'alaska', 4),
(14, b'0', 'Nouveau-Mexique', 'newmexico', 4),
(15, b'1', 'Hawaï', 'hawai', 4),
(16, b'0', 'Oregon', 'oregon', 4),
(17, b'1', 'Columbus', 'columbus', 5),
(18, b'0', 'Cleveland', 'Cleveland', 5),
(19, b'0', 'Cincinnati', 'Cincinnati', 5),
(20, b'0', 'Dayton', 'dayton', 5),
(21, b'1', 'Rabat', 'rabat', 6),
(22, b'0', 'Sydney', 'sydney', 7),
(23, b'0', 'Melbourne', 'melbourne', 7),
(24, b'0', 'Perth', 'perth', 7),
(25, b'1', 'Canberra', 'canberra', 7),
(26, b'0', 'São Paulo', 'sp', 8),
(27, b'0', 'Rio de Janeiro', 'rio', 8),
(28, b'0', 'Salvador da Bahia', 'salvador', 8),
(29, b'1', 'Brasilia', 'brasilia', 8),
(30, b'0', 'Toronto', 'toronto', 9),
(31, b'0', 'Montréal', 'montreal', 9),
(32, b'1', 'Ottawa', 'ottawa', 1),
(33, b'0', 'Vancouver', 'vancouver', 1),
(34, b'1', 'Tokyo', 'tokyo', 10),
(35, b'0', 'Kyoto', 'kyoto', 10),
(36, b'0', 'Kobe', 'kobe', 10),
(37, b'0', 'Osaka', 'osaka', 10);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `numeroUser` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `isAdmin` bit(1) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numeroUser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`numeroUser`, `email`, `isAdmin`, `nom`, `password`, `prenom`, `zip`) VALUES
(1, 'moidor44@hotmail.com', b'1', 'Zein', 'toto', 'Cham', '44200'),
(2, 'ismool44@hotmail.com', b'0', 'Zein', 'titi', 'Ismaël', '44200');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FKr4j2orxaag8tafv7dnww8lrp0` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`);

--
-- Contraintes pour la table `question_reponse`
--
ALTER TABLE `question_reponse`
  ADD CONSTRAINT `FK5vu0fo96slswyylfngb8766j0` FOREIGN KEY (`Question_numeroQuestion`) REFERENCES `question` (`numeroQuestion`),
  ADD CONSTRAINT `FK6jrlq89qgkpqkae3i37epbfc6` FOREIGN KEY (`reponses_numeroReponse`) REFERENCES `reponse` (`numeroReponse`);

--
-- Contraintes pour la table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD CONSTRAINT `FK4dv986ko4hgpfg43qahdmwtbk` FOREIGN KEY (`Quiz_id`) REFERENCES `quiz` (`id`),
  ADD CONSTRAINT `FKbosh97dnua3ycs9g7bs4meb40` FOREIGN KEY (`questions_numeroQuestion`) REFERENCES `question` (`numeroQuestion`);

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `FKnsvcver0300gk326mso4u4wos` FOREIGN KEY (`question_numeroQuestion`) REFERENCES `question` (`numeroQuestion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
