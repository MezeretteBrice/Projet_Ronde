-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 13 fév. 2020 à 23:38
-- Version du serveur :  5.5.57-MariaDB
-- Version de PHP :  5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ControleurDeRonde2020`
--

-- --------------------------------------------------------

--
-- Structure de la table `agents`
--

CREATE TABLE `agents` (
  `idAgent` int(11) NOT NULL,
  `idTag` char(8) DEFAULT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `statut` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `agents`
--

INSERT INTO `agents` (`idAgent`, `idTag`, `nom`, `prenom`, `statut`) VALUES
(1, '45v2ty1c', 'bidochon', 'robert', 1);

-- --------------------------------------------------------

--
-- Structure de la table `associationagentsrondes`
--

CREATE TABLE `associationagentsrondes` (
  `id` int(11) NOT NULL,
  `idAgent` int(11) NOT NULL,
  `idRonde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `associationagentsrondes`
--

INSERT INTO `associationagentsrondes` (`id`, `idAgent`, `idRonde`) VALUES
(1, 1, 11);

-- --------------------------------------------------------

--
-- Structure de la table `associationpointeauxrondes`
--

CREATE TABLE `associationpointeauxrondes` (
  `id` int(11) NOT NULL,
  `idRonde` int(11) NOT NULL,
  `idPointeau` int(11) NOT NULL,
  `ordrePointeau` int(11) NOT NULL,
  `tempsMin` int(11) DEFAULT NULL,
  `tempsMax` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `associationpointeauxrondes`
--

INSERT INTO `associationpointeauxrondes` (`id`, `idRonde`, `idPointeau`, `ordrePointeau`, `tempsMin`, `tempsMax`) VALUES
(2, 11, 1001, 1, 5, 15);

-- --------------------------------------------------------

--
-- Structure de la table `historiquePointeau`
--

CREATE TABLE `historiquePointeau` (
  `id` int(11) NOT NULL,
  `idAgent` int(11) NOT NULL,
  `idRonde` int(11) NOT NULL,
  `idPointeau` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `ordrePointeau` int(11) NOT NULL,
  `numeroRonde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `historiquePointeau`
--

INSERT INTO `historiquePointeau` (`id`, `idAgent`, `idRonde`, `idPointeau`, `date`, `ordrePointeau`, `numeroRonde`) VALUES
(1, 1, 1, 1, '2017-05-01 00:00:00', 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pointeaux`
--

CREATE TABLE `pointeaux` (
  `idpointeaux` int(11) NOT NULL,
  `idTag` char(8) DEFAULT NULL,
  `localisation` varchar(20) DEFAULT NULL,
  `alias` int(11) NOT NULL,
  `pointeauActif` tinyint(4) NOT NULL,
  `etage` varchar(45) DEFAULT NULL,
  `batiment` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pointeaux`
--

INSERT INTO `pointeaux` (`idpointeaux`, `idTag`, `localisation`, `alias`, `pointeauActif`, `etage`, `batiment`) VALUES
(1001, 'id1001', 'hall', 1001, 1, '0', 'A');

-- --------------------------------------------------------

--
-- Structure de la table `responsables`
--

CREATE TABLE `responsables` (
  `idresponsables` int(11) NOT NULL,
  `login` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `responsables`
--

INSERT INTO `responsables` (`idresponsables`, `login`, `mdp`) VALUES
(1, 'toto', 'toto');

-- --------------------------------------------------------

--
-- Structure de la table `rondes`
--

CREATE TABLE `rondes` (
  `idrondes` int(11) NOT NULL,
  `nomrondes` varchar(30) NOT NULL,
  `rondeActive` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rondes`
--

INSERT INTO `rondes` (`idrondes`, `nomrondes`, `rondeActive`) VALUES
(11, 'rondeGenerale', 1);

-- --------------------------------------------------------

--
-- Structure de la table `smartphones`
--

CREATE TABLE `smartphones` (
  `idsmartphones` int(11) NOT NULL,
  `nomSmartphone` varchar(45) DEFAULT NULL,
  `idADB` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `smartphones`
--

INSERT INTO `smartphones` (`idsmartphones`, `nomSmartphone`, `idADB`) VALUES
(1, 'test', 'ZY322DHJWR');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`idAgent`);

--
-- Index pour la table `associationagentsrondes`
--
ALTER TABLE `associationagentsrondes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_associationagentsrondes_agents1_idx` (`idAgent`),
  ADD KEY `fk_associationagentsrondes_rondes1_idx` (`idRonde`);

--
-- Index pour la table `associationpointeauxrondes`
--
ALTER TABLE `associationpointeauxrondes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_associationpointeauxrondes_pointeaux1_idx` (`idPointeau`),
  ADD KEY `fk_associationpointeauxrondes_rondes1_idx` (`idRonde`);

--
-- Index pour la table `historiquePointeau`
--
ALTER TABLE `historiquePointeau`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_historiquePointeau_pointeaux1_idx` (`idPointeau`),
  ADD KEY `fk_historiquePointeau_rondes1_idx` (`idRonde`),
  ADD KEY `fk_historiquePointeau_agents1_idx` (`idAgent`);

--
-- Index pour la table `pointeaux`
--
ALTER TABLE `pointeaux`
  ADD PRIMARY KEY (`idpointeaux`);

--
-- Index pour la table `responsables`
--
ALTER TABLE `responsables`
  ADD PRIMARY KEY (`idresponsables`);

--
-- Index pour la table `rondes`
--
ALTER TABLE `rondes`
  ADD PRIMARY KEY (`idrondes`);

--
-- Index pour la table `smartphones`
--
ALTER TABLE `smartphones`
  ADD PRIMARY KEY (`idsmartphones`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `associationagentsrondes`
--
ALTER TABLE `associationagentsrondes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `associationpointeauxrondes`
--
ALTER TABLE `associationpointeauxrondes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `associationagentsrondes`
--
ALTER TABLE `associationagentsrondes`
  ADD CONSTRAINT `associationagentsrondes_ibfk_1` FOREIGN KEY (`idAgent`) REFERENCES `agents` (`idAgent`),
  ADD CONSTRAINT `associationagentsrondes_ibfk_2` FOREIGN KEY (`idRonde`) REFERENCES `rondes` (`idrondes`);

--
-- Contraintes pour la table `associationpointeauxrondes`
--
ALTER TABLE `associationpointeauxrondes`
  ADD CONSTRAINT `associationpointeauxrondes_ibfk_1` FOREIGN KEY (`idRonde`) REFERENCES `rondes` (`idrondes`),
  ADD CONSTRAINT `associationpointeauxrondes_ibfk_2` FOREIGN KEY (`idPointeau`) REFERENCES `pointeaux` (`idpointeaux`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
