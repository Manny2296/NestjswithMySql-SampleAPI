-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Dez-2019 às 19:59
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
-- Estrutura da tabela `payment`
--

CREATE TABLE `payment` (
  `idpayment` int(11) NOT NULL,
  `date_payment` date NOT NULL,
  `total_amount` int(11) NOT NULL,
  `prestamoIdprestamo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='this is the table for payments';

--
-- Extraindo dados da tabela `payment`
--

INSERT INTO `payment` (`idpayment`, `date_payment`, `total_amount`, `prestamoIdprestamo`) VALUES
(1, '2019-12-13', 0, 1),
(2, '2019-12-13', 0, 1),
(7, '0000-00-00', 0, NULL),
(8, '2019-12-13', 20000, NULL),
(9, '2019-12-13', 5000, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `prestamo`
--

CREATE TABLE `prestamo` (
  `idprestamo` int(11) NOT NULL,
  `prestamo_cuotas` int(11) NOT NULL,
  `prestamo_tax` double NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `prestamo_valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This is the table for money loans';

--
-- Extraindo dados da tabela `prestamo`
--

INSERT INTO `prestamo` (`idprestamo`, `prestamo_cuotas`, `prestamo_tax`, `fecha_prestamo`, `prestamo_valor`) VALUES
(1, 6, 1.25, '2019-12-13', 0),
(2, 8, 1.25, '2019-11-11', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table for Products';

--
-- Extraindo dados da tabela `product`
--

INSERT INTO `product` (`id`, `name`, `description`) VALUES
(1, 'Product1', 'The product 1 description'),
(2, 'Product2', 'This is another second product'),
(3, 'Product3', 'This is the third one '),
(4, 'Product4', 'May be this is another one that has another description'),
(5, 'CustomTest', 'A custom description for a custom product'),
(6, 'ProductTestupd', 'A Test description for a test product');

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
  `telephone` bigint(11) NOT NULL,
  `image_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`idusuario`, `name`, `surname`, `id_Document`, `mail`, `password`, `telephone`, `image_user`) VALUES
(4, 'Homero Jey', 'Simpson', '52011888', 'homerosimpson@gmail.com', 'qwerty96', 5441220, 'avatars\\f705948f6204f4c838c2e158786b6291.png'),
(6, 'Bartolomeo J', 'Simpson', '1111111', 'bart@gmail.com', '2222232', 3168259610, 'avatars\\957a5b678d81c35e9b6881034295c7578.jpeg'),
(7, 'Lisa', 'Simpson', '789451', 'lisasimpson@gmail.com', '234567', 3165223529, 'avatars\\48a2102ae760b362260f41e10cda5e5ec6.jfif'),
(8, 'Abram ', 'Simpson', '88834343', 'abrahan@gmail.com', '445543', 9851145, 'avatars\\bd373ed102dc8e62ae825c1015947649a5.gif'),
(9, 'Rafa', 'Gorgory', '55553443', 'rafa@gmail.com', '4443533', 3165229256, 'avatars\\84131f25d5105291781c61014ebc4a8e109.jpeg'),
(11, 'Milhouse', 'Vanhouten', '43332222', 'milhouse@gmail.com', '2116699', 0, 'avatars\\79915fa82ef9eb2c14feb21d8d309bd3.jpg'),
(12, 'Simour', 'Skinner', '2223232', 'skinner@gmail.com', '34eee34', 0, 'avatars\\41be10a9910babddba98cc9c9cfefc258b.png'),
(13, 'Tony', 'El gordo', '2323222', 'tony@gmail.com', '555322', 0, 'avatars\\4f7f5db9fd3ecb511742b2ed8e39dbc7.jpeg'),
(14, 'Charles Montgomery', 'Burns', '3444321111', 'charles-burns@gmail.com', '22232323', 0, 'avatars\\3ec60a898cadf543c3bbe6cdbb2b9f69.jpg'),
(15, 'Apu ', 'Nahasapeemapetilon', '999999997', 'Nahasapeemapetilon@gmail.com', '4444322', 0, ''),
(16, 'Ned', 'Flanders', '333424242', 'nedflanders@gmail.com', '444455454', 0, ''),
(17, 'Moe', 'Sislack', '566677888', 'moetaberna@gmail.com', '44433322', 0, ''),
(18, 'Nelson', 'Muntz', '34445553', 'nelson@gmail.com', '12223333', 0, ''),
(19, 'Edna', 'Krabapple', '444545454', 'krabaple@gmail.com', '444444', 0, ''),
(20, 'Waylon', 'Smithers', '9888077', 'waylon@gmail.com', 'wailoneeee', 0, ''),
(21, 'Juan', 'Topo', '05050505', 'juantopo@gmail.com', '657topo', 0, ''),
(22, 'Barney', 'Gomez', '989999', 'barney@gmail.coim', 'barnerrrr', 0, ''),
(23, 'Martin', 'Prince', '55665556', 'martin@gmail.com', 'martin123', 0, ''),
(24, 'Maude', 'Flanders', '85855858', 'maude@gmail.com', 'maude', 0, ''),
(25, 'Kent', 'Brockman', '686866868', 'kentbrockman@gmail.com', '668558555', 0, ''),
(26, 'Agnes', 'Skynner', '344567656', 'agnes@gmail.com', '333242324', 0, ''),
(27, 'Luann', 'Vanhouynten', '86866868', 'luan@gmail.com', '67676765', 0, ''),
(28, 'Julius', 'Hibbert', '333234242', 'julius@gmail.com', '3434333', 0, ''),
(29, 'Alyson', 'Taylor', '433322232', 'alyson@gmail.com', '33333edede', 0, ''),
(30, 'Willian', 'Mcdougal', '33434343', 'macdougal@gmail.com', '32324242', 0, ''),
(32, 'Willie', 'El concerje', '23324442', 'willie@gmail.com', '3443532', 0, ''),
(33, 'Lenny', 'Lennard', '54666355', 'lennard@gmail.com', 'qwerty123', 0, ''),
(34, 'Patty ', 'Bouvier', '3422522', 'patty@gmail.com', '233342444', 0, ''),
(35, 'Selma', 'Bouvier', '44454533', 'selma@hotmail.com', 'selma123', 0, ''),
(53, 'Clancy', 'Gorgory', '22222', 'clancy@cops.com', '', 0, ''),
(54, 'Dan ', 'Gillick', '1022929', 'dan.gillick@gmail.com', '', 0, ''),
(56, 'Troy', 'McClure', '1018484513', 'troy@gmail.com', '', 0, ''),
(57, 'Javier', 'Granados', '9339890', 'javier@gmail.com', '', 0, 'avatars\\0dbc757b2d7278ef92dcfbaacc6105b96.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_prestam`
--

CREATE TABLE `user_prestam` (
  `user` int(11) NOT NULL,
  `prestamo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user_prestam`
--

INSERT INTO `user_prestam` (`user`, `prestamo`) VALUES
(4, 1),
(4, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`idpayment`),
  ADD KEY `FK_7913c98331e380718e358e09ef9` (`prestamoIdprestamo`);

--
-- Índices para tabela `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`idprestamo`);

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
-- Índices para tabela `user_prestam`
--
ALTER TABLE `user_prestam`
  ADD PRIMARY KEY (`user`,`prestamo`),
  ADD KEY `IDX_7630167d7388335dd4afb3c8db` (`user`),
  ADD KEY `IDX_32a35625bf4c7a23e4e05d3234` (`prestamo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `payment`
--
ALTER TABLE `payment`
  MODIFY `idpayment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `idprestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_7913c98331e380718e358e09ef9` FOREIGN KEY (`prestamoIdprestamo`) REFERENCES `prestamo` (`idprestamo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `user_prestam`
--
ALTER TABLE `user_prestam`
  ADD CONSTRAINT `FK_32a35625bf4c7a23e4e05d3234e` FOREIGN KEY (`prestamo`) REFERENCES `prestamo` (`idprestamo`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7630167d7388335dd4afb3c8dbc` FOREIGN KEY (`user`) REFERENCES `user` (`idusuario`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
