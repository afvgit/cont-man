-- Adminer 4.8.1 MySQL 5.5.5-10.4.24-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `content_manager`;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `cm_category`;
CREATE TABLE `cm_category` (
  `cm_id` int(11) NOT NULL AUTO_INCREMENT,
  `cm_category` int(11) NOT NULL,
  PRIMARY KEY (`cm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `cm_media`;
CREATE TABLE `cm_media` (
  `cm_id` int(11) NOT NULL AUTO_INCREMENT,
  `cm_title` int(11) NOT NULL,
  `cm_type` int(11) NOT NULL,
  `cm_media` int(11) NOT NULL,
  PRIMARY KEY (`cm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `cm_options`;
CREATE TABLE `cm_options` (
  `cm_id` int(11) NOT NULL AUTO_INCREMENT,
  `cm_option_key` varchar(255) NOT NULL,
  `cm_option_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cm_id`),
  KEY `cm_option_name` (`cm_option_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `cm_posts`;
CREATE TABLE `cm_posts` (
  `cm_id` int(11) NOT NULL AUTO_INCREMENT,
  `cm_title` int(11) NOT NULL,
  `cm_category` int(11) DEFAULT NULL,
  `cm_post` text DEFAULT NULL,
  `cm_author` int(11) NOT NULL,
  `cm_display_date` datetime NOT NULL,
  `cm_expiration_date` datetime NOT NULL,
  PRIMARY KEY (`cm_id`),
  KEY `cm_author` (`cm_author`),
  KEY `cm_category` (`cm_category`),
  CONSTRAINT `cm_posts_ibfk_1` FOREIGN KEY (`cm_author`) REFERENCES `cm_user` (`cm_id`),
  CONSTRAINT `cm_posts_ibfk_2` FOREIGN KEY (`cm_category`) REFERENCES `cm_category` (`cm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `cm_user`;
CREATE TABLE `cm_user` (
  `cm_id` int(11) NOT NULL AUTO_INCREMENT,
  `cm_name` int(255) NOT NULL,
  `cm_email` int(11) NOT NULL,
  `cm_password` int(11) NOT NULL,
  `cm_phone` int(11) DEFAULT NULL,
  `cm_image` int(11) DEFAULT NULL,
  `cm_level` int(11) NOT NULL,
  PRIMARY KEY (`cm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2022-07-13 03:09:49
