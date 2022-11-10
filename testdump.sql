-- Adminer 4.8.1 MySQL 8.0.31 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `testtask`;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `names`;
CREATE TABLE `names` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `names` (`id`, `name`) VALUES
(1,	'Ivan1'),
(2,	'Ivan2'),
(3,	'Ivan3'),
(4,	'Ivan4'),
(5,	'Ivan5'),
(6,	'Ivan6'),
(7,	'Ivan7'),
(8,	'Ivan8'),
(9,	'Ivan9'),
(10,	'Ivan10');

DROP TABLE IF EXISTS `surnames`;
CREATE TABLE `surnames` (
  `id` int NOT NULL,
  `surname` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  KEY `id` (`id`),
  CONSTRAINT `surnames_ibfk_1` FOREIGN KEY (`id`) REFERENCES `names` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `surnames` (`id`, `surname`) VALUES
(1,	'Ivanov1'),
(2,	'Ivanov2'),
(3,	'Ivanov3'),
(4,	'Ivanov4'),
(5,	'Ivanov5'),
(6,	'Ivanov6'),
(7,	'Ivanov7'),
(8,	'Ivanov8'),
(9,	'Ivanov9'),
(10,	'Ivanov10');

-- 2022-11-09 18:09:09
