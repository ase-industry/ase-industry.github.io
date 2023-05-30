-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 30 mai 2023 à 22:40
-- Version du serveur : 8.0.31
-- Version de PHP : 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ase`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_admin` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230530222258', '2023-05-30 22:23:10', 220);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pc`
--

DROP TABLE IF EXISTS `pc`;
CREATE TABLE IF NOT EXISTS `pc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` decimal(6,2) NOT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pc`
--

INSERT INTO `pc` (`id`, `brand`, `prix`, `model`, `specification`, `photo`, `slug`) VALUES
(1, 'lenovo', '999.00', 'Legion 5', 'Processeur\r\n\r\nRyzen 5 5600H\r\nType et langue du clavier\r\n\r\nAZERTY - Français\r\nLecteur optique\r\n\r\nNon\r\nCouleur principale\r\n\r\nNoir\r\nSérie\r\n\r\nLegion\r\nPort USB-A\r\n\r\nOui\r\nPort HDMI\r\n\r\nOui\r\nPort Jack\r\n\r\nOui\r\nMarque\r\n\r\nLenovo\r\nPoids\r\n\r\n2500 g', 'pc-portable-gamer-lenovo-legion-5-15ach6h-15-6.webp', 'Legion 5'),
(2, 'Macbook Pro', '1349.00', 'Pro 14 M2', 'Ecran\r\nType de résolution : Retina avec affichage True Tone\r\nRésolution : 2560 x 1664 pixels\r\nType de charnière : Standard\r\nType d\'écran : écran brillant pour des couleurs plus vives\r\nWebcam intégrée : Oui\r\nMicrophone intégré : Oui\r\nPerformance\r\nRéférence du processeur : Puce Apple M2\r\nFréquence (en GHz) : 0\r\nNombre de coeurs : 8\r\nIntérêt du nombre de coeurs : un nombre de coeur important vous permettra d\'effectuer plus de tâches en simultané\r\nMémoire vive (RAM) : 8 Go\r\nInformation sur la mémoire vive : une grande capacité de mémoire vive rend l\'ordinateur plus réactif et plus fluide\r\nPerformance graphique\r\nType de carte graphique : intégrée au processeur\r\nCarte graphique : Intégrée au processeur\r\nStocker vos données\r\nType et capacité totale de stockage : SSD 256 Go\r\nType de stockage : SSD pour plus de rapidité\r\nLecteur de carte mémoire : Non\r\nLecteur / Graveur : Pas de lecteur-graveur\r\nConnectivité\r\nNorme Wifi : Wifi 6 (AX)\r\nBluetooth : 5\r\nAirplay : Oui\r\nConnectique(s)\r\nCombo casque / micro : 1\r\nPort Thunderbolt 4 : 2\r\nAutonomie et alimentation\r\nAutonomie (donnée constructeur) : 18 heures\r\nLogiciels\r\nSystème d\'exploitation : Mac OS Monterey\r\nConfidentialité et sécurité\r\nCache webcam : Non\r\nDéverouillage de l\'ordinateur : par empreinte digitale\r\nEquipement(s)\r\nClavier : Magic Keyboard rétroéclairé\r\nPavé numérique : Non\r\nSouris : TouchPad\r\nLecteur d\'empreinte : Oui\r\nTypologie du clavier : AZERTY\r\nContenu du carton\r\nLivré avec : Chargeur secteur\r\nInformations et Services\r\nIndice de réparabilité : 6,0 /10\r\nEn savoir plus sur l\'indice de réparabilité : Cliquez ici !\r\nGarantie : 2 ans\r\nDisponibilité des pièces détachées (données fournisseur) : Pendant 5 ans, à compter de la date fin de commercialisation\r\nQu\'est-ce que le DAS : Le débit d\'absorption spécifique (DAS) local quantifie l\'exposition de l\'utilisateur aux ondes électromagnétiques de l\'équipement concerné. Le DAS maximal autorisé est de 2 W/kg pour la tête et le tronc et de 4 W/kg pour les membres\r\nDAS Tronc : 0,830 W/kg\r\nDAS Membres : 0,830 W/kg\r\nFabriqué en : Chine\r\nDimensions\r\nDimensions l x h x p : 30.41 x 1.13 x 21.5 cm\r\nPoids : 1,2 kg\r\n', 'mbp-spacegray-gallery1-202206.jpg', 'Pro 14 M2'),
(3, 'Hp laptop', '309.00', '14s-dq0004sf PC Portable 14', 'Marque	‎HP\r\nNuméro du modèle de l\'article	‎750J3EA#ABF\r\nséries	‎750J3EA\r\nCouleur	‎Blanc\r\nGarantie constructeur	‎Cette garantie limitée valable 1 an (1/1/0) couvre les pièces et la main d’œuvre pendant 1 an. Pas de réparation sur site. Les conditions générales varient selon le pays. Certaines restrictions et exclusions s’appliquent.\r\nSystème d\'exploitation	‎Windows 11 Home in S mode\r\nPlate-forme du matériel informatique	‎Windows 11 Home in S mode\r\nDescription du clavier	‎French keyboard\r\nMarque du processeur	‎Intel\r\nType de processeur	‎Celeron\r\nVitesse du processeur	‎1.1\r\nNombre de coeurs	‎4\r\nMémoire maximale	‎4 Go\r\nTaille du disque dur	‎64 Go\r\nTechnologie du disque dur	‎EMMC\r\nType de carte mémoire	‎EMMC\r\nTaille de l\'écran	‎14 Pouces\r\nMarque chipset graphique	‎Intel\r\nDescription de la carte graphique	‎Intégré\r\nGPU	‎Intel UHD Graphics 600\r\nType de mémoire vive (carte graphique)	‎Shared\r\nInterface du matériel informatique	‎HDMI\r\nNombre de ports HDMI	‎1\r\nNombre de ports USB 3.0	‎3\r\nType de connecteur	‎HDMI\r\nLogiciels inclus	‎Internet Security\r\nDimensions de l\'article L x L x H	‎22.5 x 32.4 x 1.8 centimètres\r\nPoids du produit	‎1460 Grammes\r\nDivers	‎Anti Glare Screen\r\nDisponibilité des pièces détachées	‎Information indisponible sur les pièces détachées\r\nMises à jour logicielles garanties jusqu’à	‎Information non disponible\r\n', '714xzwXNdnL._AC_SL1500_.jpg', 'Hp laptop'),
(4, 'Dell', '437.00', 'Inspiron 15', 'Marque	‎Dell\r\nNuméro du modèle de l\'article	‎i3525-A523BLK-PFR\r\nséries	‎Dell Inspiron 15 3525\r\nCouleur	‎Carbon black\r\nGarantie constructeur	‎2 Years Warranty\r\nSystème d\'exploitation	‎Windows 11 Home\r\nPlate-forme du matériel informatique	‎PC\r\nDescription du clavier	‎Ergonomique\r\nMarque du processeur	‎AMD\r\nType de processeur	‎AMD Ryzen 5 5500U\r\nVitesse du processeur	‎4,2 GHz\r\nNombre de coeurs	‎6\r\nMémoire maximale	‎16 Go\r\nTechnologie du disque dur	‎SSD\r\nInterface du disque dur	‎Solid State\r\nType de carte mémoire	‎Installed memory only\r\nType d\'écran	‎LED\r\nTaille de l\'écran	‎15,6 Pouces\r\nRésolution de l\'écran	‎1920 x 1080 pixels\r\nMarque chipset graphique	‎AMD\r\nDescription de la carte graphique	‎Intégré\r\nGPU	‎AMD Radeon Graphics\r\nType de mémoire vive (carte graphique)	‎Shared\r\nType de connectivité	‎Bluetooth\r\nType de technologie sans fil	‎Bluetooth\r\nInterface du matériel informatique	‎HDMI, USB 3.2 Gen 1, USB-C\r\nNombre de ports HDMI	‎1\r\nNombre de ports USB 2.0	‎1\r\nNombre de ports USB 3.0	‎2\r\nType de connecteur	‎Bluetooth, USB, HDMI\r\nLogiciels inclus	‎Windows 11 Home\r\nPoids du produit	‎1,9 Kilogrammes\r\nDivers	‎Anti Glare Screen\r\nDisponibilité des pièces détachées	‎Information indisponible sur les pièces détachées\r\nMises à jour logicielles garanties jusqu’à	‎Information non disponible', '61QlLeBscrL._AC_SL1500_.jpg', 'Dell'),
(5, 'LG', '1599.00', 'Gram 17', 'Marque	‎LG Electronics\r\nNuméro du modèle de l\'article	‎17Z90R-G.AD79F\r\nséries	‎17Z90R-G.AD79F\r\nCouleur	‎Charcoal Grey\r\nGarantie constructeur	‎2 ans constructeur\r\nSystème d\'exploitation	‎Windows 11 Home\r\nPlate-forme du matériel informatique	‎PC\r\nDescription du clavier	‎Ergonomique\r\nMarque du processeur	‎Intel\r\nType de processeur	‎Intel Core i7\r\nVitesse du processeur	‎2,2 GHz\r\nNombre de coeurs	‎12\r\nMémoire maximale	‎32 Go\r\nTaille du disque dur	‎1 To\r\nTechnologie du disque dur	‎SSD\r\nType d\'écran	‎IPS\r\nTaille de l\'écran	‎17 Pouces\r\nRésolution de l\'écran	‎2560 x 1600 pixels\r\nResolution	‎2560x1600 Pixels\r\nMarque chipset graphique	‎Intel\r\nDescription de la carte graphique	‎Intégré\r\nGPU	‎Intel Iris Xe Graphics\r\nType de mémoire vive (carte graphique)	‎GDDR5\r\nType de connectivité	‎Bluetooth, Wi-Fi\r\nType de technologie sans fil	‎Bluetooth\r\nInterface du matériel informatique	‎MicroSD, Écouteurs, HDMI, Bluetooth 5, USB 3.2 Gen 2, Thunderbolt 4\r\nNombre de ports HDMI	‎1\r\nType de connecteur	‎Bluetooth, Wi-Fi, USB, HDMI\r\nLogiciels inclus	‎Microsoft Office 365\r\nPoids du produit	‎1350 Grammes\r\nDivers	‎Audio HD, Revêtement antireflet, Pavé numérique, Fente pour carte mémoire\r\nDisponibilité des pièces détachées	‎5 Ans\r\nMises à jour logicielles garanties jusqu’à	‎Information non disponible', '61LSr1dDj9L._AC_SL1500_.jpg', 'LG'),
(6, 'HP', '249.00', 'Chromebook', 'Marque	‎HP\r\nNuméro du modèle de l\'article	‎75M96EA#ABF\r\nséries	‎75M96EA\r\nCouleur	‎Gris\r\nGarantie constructeur	‎Cette garantie limitée valable 1 an (1/1/0) couvre les pièces et la main d’œuvre pendant 1 an. Pas de réparation sur site. Les conditions générales varient selon le pays. Certaines restrictions et exclusions s’appliquent.\r\nSystème d\'exploitation	‎Chrome OS\r\nPlate-forme du matériel informatique	‎Chrome OS\r\nDescription du clavier	‎French keyboard\r\nMarque du processeur	‎Intel\r\nType de processeur	‎Celeron\r\nVitesse du processeur	‎1.1\r\nNombre de coeurs	‎2\r\nMémoire maximale	‎4 Go\r\nTaille du disque dur	‎64 Go\r\nTechnologie du disque dur	‎EMMC\r\nType de carte mémoire	‎EMMC\r\nTaille de l\'écran	‎15,6 Pouces\r\nRésolution de l\'écran	‎1920 x 1080 pixels\r\nMarque chipset graphique	‎Intel\r\nDescription de la carte graphique	‎Intégré\r\nGPU	‎Intel UHD Graphics\r\nType de mémoire vive (carte graphique)	‎Shared\r\nInterface du matériel informatique	‎USB\r\nNombre de ports USB 3.0	‎3\r\nType de connecteur	‎USB\r\nLogiciels inclus	‎Internet Security\r\nDimensions de l\'article L x L x H	‎24.1 x 36.3 x 1.8 centimètres\r\nPoids du produit	‎1690 Grammes\r\nDivers	‎Portable\r\nDisponibilité des pièces détachées	‎Information indisponible sur les pièces détachées\r\nMises à jour logicielles garanties jusqu’à	‎Information non disponible\r\n', '61yNpas1gEL._AC_SL1500_.jpg', 'chromebook'),
(7, 'ASUS', '1399.00', ' Zenbook 14', 'Marque	‎ASUS\r\nNuméro du modèle de l\'article	‎UX3402ZA-KN478W\r\nséries	‎ASUS Zenbook 14 OLED\r\nCouleur	‎Bleu\r\nGarantie constructeur	‎2 ans constructeur\r\nSystème d\'exploitation	‎Windows 11\r\nDescription du clavier	‎French keyboard\r\nMarque du processeur	‎Intel\r\nType de processeur	‎Intel Core i7\r\nVitesse du processeur	‎2,1 GHz\r\nNombre de coeurs	‎12\r\nMémoire maximale	‎16 Go\r\nTaille du disque dur	‎512 Go\r\nTechnologie du disque dur	‎SSD\r\nInterface du disque dur	‎Thunderbolt\r\nType d\'écran	‎OLED\r\nTaille de l\'écran	‎14 Pouces\r\nResolution	‎2880x1800 Pixels\r\nMarque chipset graphique	‎Intel\r\nDescription de la carte graphique	‎Intégré\r\nGPU	‎Intel Iris Plus Graphics 655\r\nMémoire vive de la carte graphique	‎512 Go\r\nType de mémoire vive (carte graphique)	‎Shared\r\nInterface du matériel informatique	‎USB, Audio 3,5 mm, HDMI\r\nNombre de ports HDMI	‎1\r\nNombre de ports USB 3.0	‎1\r\nType de connecteur	‎USB, HDMI\r\nLogiciels inclus	‎Windows 11\r\nDivers	‎Fingerprint Reader\r\nDisponibilité des pièces détachées	‎Information indisponible sur les pièces détachées\r\nMises à jour logicielles garanties jusqu’à	‎Information non disponible\r\n', '61rAJh9tRBL._AC_SL1500_.jpg', 'zenbook'),
(8, 'Lenovo', '499.00', 'Thinkpad A275', 'Marque	‎Lenovo\r\nNuméro du modèle de l\'article	‎20KCS07C05\r\nséries	‎LENOVO ThinkPad A275\r\nCouleur	‎Noir\r\nGarantie constructeur	‎1 an\r\nSystème d\'exploitation	‎Windows 11 Pro\r\nDescription du clavier	‎Jeu\r\nMarque du processeur	‎AMD\r\nType de processeur	‎AMD A Series\r\nVitesse du processeur	‎3,4 GHz\r\nNombre de coeurs	‎1\r\nMémoire maximale	‎16 Go\r\nTaille du disque dur	‎256 Go\r\nTechnologie du disque dur	‎SSD\r\nTaille de l\'écran	‎12.5\r\nResolution	‎1366x768 Pixels\r\nMarque chipset graphique	‎AMD\r\nDescription de la carte graphique	‎Intégré\r\nType de mémoire vive (carte graphique)	‎Shared\r\nType de connectivité	‎Bluetooth, Wi-Fi\r\nInterface du matériel informatique	‎Bluetooth\r\nNombre de ports USB 3.0	‎2\r\nType de connecteur	‎Bluetooth, Usb Type C, Ethernet, HDMI\r\nLogiciels inclus	‎Webcam\r\nPoids du produit	‎1,2 Kilogrammes\r\nDivers	‎Portable, Bluetooth\r\nDisponibilité des pièces détachées	‎Information indisponible sur les pièces détachées\r\nMises à jour logicielles garanties jusqu’à	‎Information non disponible\r\n', '61BTl9cT4ML._AC_SL1200_.jpg', 'Thinkpad A275'),
(12, 'Acer', '499.00', 'Aspire 3', 'Marque	‎Acer\r\nNuméro du modèle de l\'article	‎NX.KDEEF.00T\r\nséries	‎A315-24P-R7AS\r\nCouleur	‎Gris\r\nGarantie constructeur	‎2 ans constructeur\r\nSystème d\'exploitation	‎Windows 11\r\nDescription du clavier	‎French keyboard\r\nMarque du processeur	‎AMD\r\nType de processeur	‎Ryzen 5\r\nVitesse du processeur	‎4,3 GHz\r\nNombre de coeurs	‎1\r\nTaille de la mémoire vive	‎8 Go\r\nMémoire maximale	‎16 Go\r\nTechnologie du disque dur	‎SSD\r\nInterface du disque dur	‎PCIE x 4\r\nType d\'écran	‎LCD\r\nTaille de l\'écran	‎15,6 Pouces\r\nResolution	‎1920 Pixels\r\nMarque chipset graphique	‎AMD\r\nDescription de la carte graphique	‎Intégré\r\nGPU	‎Intégré\r\nMémoire vive de la carte graphique	‎8 Go\r\nType de mémoire vive (carte graphique)	‎L2 cache\r\nType de connectivité	‎Wi-Fi\r\nType de technologie sans fil	‎Bluetooth\r\nInterface du matériel informatique	‎HDMI\r\nNombre de ports USB 3.0	‎3\r\nType de connecteur	‎Wi-Fi, USB, HDMI\r\nLogiciels inclus	‎Microsoft Office 365\r\nPoids du produit	‎1,78 Kilogrammes\r\nDivers	‎Portable\r\nDisponibilité des pièces détachées	‎5 Ans\r\nMises à jour logicielles garanties jusqu’à	‎Information non disponible\r\n', '51PDQxpp+vL._AC_SL1168_.jpg', 'Aspire 3'),
(13, 'MSI', '499.00', 'Modern 15', 'Marque	‎MSI\r\nséries	‎Modern 15 B11M-020FR\r\nGarantie constructeur	‎2 ans constructeur\r\nSystème d\'exploitation	‎Windows 11 Home\r\nPlate-forme du matériel informatique	‎PC\r\nDescription du clavier	‎Traditional\r\nMarque du processeur	‎Intel\r\nType de processeur	‎Core i3\r\nVitesse du processeur	‎1,3 GHz\r\nNombre de coeurs	‎2\r\nMémoire maximale	‎8 Go\r\nTechnologie du disque dur	‎SSD\r\nType d\'écran	‎LCD\r\nTaille de l\'écran	‎15,6 Pouces\r\nResolution	‎1080p Full HD Pixels\r\nMarque chipset graphique	‎Intel\r\nDescription de la carte graphique	‎Intégré\r\nType de mémoire vive (carte graphique)	‎Shared\r\nNombre de ports USB 2.0	‎1\r\nNombre de ports USB 3.0	‎2\r\nLogiciels inclus	‎Adobe\r\nDivers	‎Portable\r\nDisponibilité des pièces détachées	‎Information indisponible sur les pièces détachées\r\nMises à jour logicielles garanties jusqu’à	‎Information non disponible\r\n', '41IpsYf4y+L._AC_SL1024_.jpg', 'Modern 15');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

DROP TABLE IF EXISTS `reset_password_request`;
CREATE TABLE IF NOT EXISTS `reset_password_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
