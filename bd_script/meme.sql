-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Dez-2019 às 12:24
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `meme`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table for Products';

--
-- Extraindo dados da tabela `product`
--

INSERT INTO `product` (`id`, `name`) VALUES
(1, 'Product1'),
(2, 'Product2'),
(3, 'Product3'),
(4, 'Product4'),
(5, 'CustomTest'),
(6, 'ProductTestupd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `shop`
--

CREATE TABLE `shop` (
  `idshop` int(11) NOT NULL,
  `name_shop` varchar(45) NOT NULL,
  `email_shop` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This is the table for Shops ';

--
-- Extraindo dados da tabela `shop`
--

INSERT INTO `shop` (`idshop`, `name_shop`, `email_shop`, `city`, `password`, `address`) VALUES
(1, 'Shop Arepa', 'shoparepas@gmail.com', 'Bogota', '153420', ''),
(3, 'Academia', 'academiasr@gmail.com', 'Santa Rita do Sapucai', '153420', 'Rua quintino bocauiva'),
(4, 'Unisul ', 'unisul@gmail.com', ' Santa Rita do Sapucai', '143244', 'Rua ET');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `idusuario` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `id_Document` varchar(50) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`idusuario`, `name`, `surname`, `id_Document`, `mail`, `password`, `telephone`) VALUES
(1, 'Manuel ', 'SR', '1018484513', 'manny2296@gmail.com', '123456789', 9888888),
(2, 'Mariana', 'Borges', '10004523232', 'mariana.borges@geb.inatel.br', '153420', 123654789);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`idshop`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `shop`
--
ALTER TABLE `shop`
  MODIFY `idshop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
