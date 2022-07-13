-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 13-Jul-2022 às 05:08
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `content_manager`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cm_category`
--

CREATE TABLE `cm_category` (
  `cm_id` int(11) NOT NULL,
  `cm_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cm_media`
--

CREATE TABLE `cm_media` (
  `cm_id` int(11) NOT NULL,
  `cm_title` int(11) NOT NULL,
  `cm_type` int(11) NOT NULL,
  `cm_media` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cm_options`
--

CREATE TABLE `cm_options` (
  `cm_id` int(11) NOT NULL,
  `cm_option_key` varchar(255) NOT NULL,
  `cm_option_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cm_posts`
--

CREATE TABLE `cm_posts` (
  `cm_id` int(11) NOT NULL,
  `cm_title` int(11) NOT NULL,
  `cm_category` int(11) DEFAULT NULL,
  `cm_post` text DEFAULT NULL,
  `cm_author` int(11) NOT NULL,
  `cm_display_date` datetime NOT NULL,
  `cm_expiration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cm_user`
--

CREATE TABLE `cm_user` (
  `cm_id` int(11) NOT NULL,
  `cm_name` int(255) NOT NULL,
  `cm_email` int(11) NOT NULL,
  `cm_password` int(11) NOT NULL,
  `cm_phone` int(11) DEFAULT NULL,
  `cm_image` int(11) DEFAULT NULL,
  `cm_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cm_category`
--
ALTER TABLE `cm_category`
  ADD PRIMARY KEY (`cm_id`);

--
-- Índices para tabela `cm_media`
--
ALTER TABLE `cm_media`
  ADD PRIMARY KEY (`cm_id`);

--
-- Índices para tabela `cm_options`
--
ALTER TABLE `cm_options`
  ADD PRIMARY KEY (`cm_id`),
  ADD KEY `cm_option_name` (`cm_option_key`);

--
-- Índices para tabela `cm_posts`
--
ALTER TABLE `cm_posts`
  ADD PRIMARY KEY (`cm_id`),
  ADD KEY `cm_author` (`cm_author`),
  ADD KEY `cm_category` (`cm_category`);

--
-- Índices para tabela `cm_user`
--
ALTER TABLE `cm_user`
  ADD PRIMARY KEY (`cm_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cm_category`
--
ALTER TABLE `cm_category`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cm_media`
--
ALTER TABLE `cm_media`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cm_options`
--
ALTER TABLE `cm_options`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cm_posts`
--
ALTER TABLE `cm_posts`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cm_user`
--
ALTER TABLE `cm_user`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cm_posts`
--
ALTER TABLE `cm_posts`
  ADD CONSTRAINT `cm_posts_ibfk_1` FOREIGN KEY (`cm_author`) REFERENCES `cm_user` (`cm_id`),
  ADD CONSTRAINT `cm_posts_ibfk_2` FOREIGN KEY (`cm_category`) REFERENCES `cm_category` (`cm_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
