-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : lun. 17 nov. 2025 à 13:05
-- Version du serveur : 9.5.0
-- Version de PHP : 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ChaTop`
--
CREATE DATABASE IF NOT EXISTS `ChaTop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ChaTop`;

-- --------------------------------------------------------

--
-- Structure de la table `MESSAGE`
--

DROP TABLE IF EXISTS `MESSAGE`;
CREATE TABLE `MESSAGE` (
  `id` int NOT NULL,
  `rental_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `message_entity`
--

DROP TABLE IF EXISTS `message_entity`;
CREATE TABLE `message_entity` (
  `id` bigint NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `rental_id` bigint DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `refresh_token`
--

DROP TABLE IF EXISTS `refresh_token`;
CREATE TABLE `refresh_token` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `token` varchar(512) NOT NULL,
  `expiry_date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `refresh_token_entity`
--

DROP TABLE IF EXISTS `refresh_token_entity`;
CREATE TABLE `refresh_token_entity` (
  `id` bigint NOT NULL,
  `expiration_date` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `RENTAL`
--

DROP TABLE IF EXISTS `RENTAL`;
CREATE TABLE `RENTAL` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surface` decimal(10,0) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `owner_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rental_entity`
--

DROP TABLE IF EXISTS `rental_entity`;
CREATE TABLE `rental_entity` (
  `id` bigint NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `surface` double DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `owner_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `USER`
--

DROP TABLE IF EXISTS `USER`;
CREATE TABLE `USER` (
  `id` bigint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_entity`
--

DROP TABLE IF EXISTS `user_entity`;
CREATE TABLE `user_entity` (
  `id` bigint NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `MESSAGE`
--
ALTER TABLE `MESSAGE`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `message_entity`
--
ALTER TABLE `message_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKh99srviwhgfebrkxuutrwdtht` (`user_id`),
  ADD KEY `FKngow9t9200raiw9skj8yeeaks` (`rental_id`);

--
-- Index pour la table `refresh_token`
--
ALTER TABLE `refresh_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_refresh_user` (`user_id`);

--
-- Index pour la table `refresh_token_entity`
--
ALTER TABLE `refresh_token_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe2ok354dpjcd3b97n1yrp0qj2` (`user_id`);

--
-- Index pour la table `RENTAL`
--
ALTER TABLE `RENTAL`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rental_entity`
--
ALTER TABLE `rental_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK57g0wtgs5h310bnkwwlgn4soj` (`owner_id`);

--
-- Index pour la table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `USERS_index` (`email`);

--
-- Index pour la table `user_entity`
--
ALTER TABLE `user_entity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `MESSAGE`
--
ALTER TABLE `MESSAGE`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `message_entity`
--
ALTER TABLE `message_entity`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `refresh_token`
--
ALTER TABLE `refresh_token`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `refresh_token_entity`
--
ALTER TABLE `refresh_token_entity`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `RENTAL`
--
ALTER TABLE `RENTAL`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rental_entity`
--
ALTER TABLE `rental_entity`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_entity`
--
ALTER TABLE `user_entity`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `message_entity`
--
ALTER TABLE `message_entity`
  ADD CONSTRAINT `FKh99srviwhgfebrkxuutrwdtht` FOREIGN KEY (`user_id`) REFERENCES `user_entity` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `FKngow9t9200raiw9skj8yeeaks` FOREIGN KEY (`rental_id`) REFERENCES `rental_entity` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Contraintes pour la table `refresh_token`
--
ALTER TABLE `refresh_token`
  ADD CONSTRAINT `fk_refresh_user` FOREIGN KEY (`user_id`) REFERENCES `USER` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `refresh_token_entity`
--
ALTER TABLE `refresh_token_entity`
  ADD CONSTRAINT `FKe2ok354dpjcd3b97n1yrp0qj2` FOREIGN KEY (`user_id`) REFERENCES `user_entity` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Contraintes pour la table `rental_entity`
--
ALTER TABLE `rental_entity`
  ADD CONSTRAINT `FK57g0wtgs5h310bnkwwlgn4soj` FOREIGN KEY (`owner_id`) REFERENCES `user_entity` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
