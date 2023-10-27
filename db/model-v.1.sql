-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/10/2023 às 13:44
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `model`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `class`
--

CREATE TABLE `class` (
  `idClass` int(11) NOT NULL,
  `idInstitution` int(11) NOT NULL,
  `segment` varchar(45) NOT NULL,
  `period` varchar(25) NOT NULL,
  `professor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `client`
--

CREATE TABLE `client` (
  `idClient` int(11) NOT NULL,
  `nameClient` varchar(45) DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `institution`
--

CREATE TABLE `institution` (
  `idinstitution` int(11) NOT NULL,
  `nameInstitution` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phoneNumber` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `scheduling`
--

CREATE TABLE `scheduling` (
  `idscheduling` int(11) NOT NULL,
  `idClass` int(11) NOT NULL,
  `date` varchar(45) NOT NULL,
  `segment` varchar(45) NOT NULL,
  `codConfirm` varchar(45) NOT NULL,
  `idClient` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `student`
--

CREATE TABLE `student` (
  `idstudent` int(11) NOT NULL,
  `idClass` int(11) NOT NULL,
  `nameStudent` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`idClass`),
  ADD KEY `idInstitution_idx` (`idInstitution`);

--
-- Índices de tabela `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`);

--
-- Índices de tabela `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`idinstitution`);

--
-- Índices de tabela `scheduling`
--
ALTER TABLE `scheduling`
  ADD PRIMARY KEY (`idscheduling`),
  ADD UNIQUE KEY `codConfirm_UNIQUE` (`codConfirm`),
  ADD KEY `idClass_idx` (`idClass`),
  ADD KEY `idClient_idx` (`idClient`);

--
-- Índices de tabela `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`idstudent`),
  ADD KEY `idClass_idx` (`idClass`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `class`
--
ALTER TABLE `class`
  MODIFY `idClass` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `client`
--
ALTER TABLE `client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `scheduling`
--
ALTER TABLE `scheduling`
  MODIFY `idscheduling` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `student`
--
ALTER TABLE `student`
  MODIFY `idstudent` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `fk_class_institution` FOREIGN KEY (`idInstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `scheduling`
--
ALTER TABLE `scheduling`
  ADD CONSTRAINT `fk_scheduling_class` FOREIGN KEY (`idClass`) REFERENCES `class` (`idClass`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_scheduling_client` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_class` FOREIGN KEY (`idClass`) REFERENCES `class` (`idClass`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
