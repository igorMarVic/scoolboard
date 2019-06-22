-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23-Jun-2019 às 00:14
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administracao`
--

CREATE TABLE `administracao` (
  `id_admin` bigint(10) UNSIGNED NOT NULL,
  `nome_admin` varchar(50) NOT NULL,
  `email_admin` varchar(70) NOT NULL,
  `senha_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administracao`
--

INSERT INTO `administracao` (`id_admin`, `nome_admin`, `email_admin`, `senha_admin`) VALUES
(1, 'Igor Marques Vicente', 'igormarvic2001@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(2, 'Bianca Motta', 'biancabmotta@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `RA` int(6) NOT NULL,
  `nome_aluno` varchar(70) NOT NULL,
  `email_aluno` varchar(70) NOT NULL,
  `senha_aluno` varchar(100) NOT NULL,
  `email_responsavel` varchar(200) NOT NULL,
  `periodo_aluno` int(1) NOT NULL,
  `curso_aluno` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`RA`, `nome_aluno`, `email_aluno`, `senha_aluno`, `email_responsavel`, `periodo_aluno`, `curso_aluno`) VALUES
(12839, 'Anny Gabrielly Cassal Lopes Cardoso', 'anny.cardoso@estudante.ifms.edu.br', '66ed8b8b942cb36134b94424ed60227ad13cf4c9', '', 7, 'informatica'),
(13846, 'Gabriel Neris dos Santos', 'gabriel.santos11@estudante.ifms.edu.br', 'bccb45f9446c96a6ceed2be39d14fdb75abe6c79', '', 7, 'informatica'),
(13850, 'Gustavo Henrique da Silva Leal', 'gustavo.leal@estudante.ifms.edu.br', '4078bf7cf92786880b06aa08cedd3265b692c50b', '', 7, 'informatica'),
(13854, 'Igor Marques Vicente', 'igor.vicente@estudante.ifms.edu.br', '3e115ad61bed28b8ad34f6a5384213f981343cb1', 'igormarvic2001@gmail.com', 7, 'informatica'),
(13865, 'JoÃ£o Vitor Vasconcelos Tomiatti', 'joao.tomiatti@estudante.edu.br', 'f6d623446fb99f9732bce64c2eaaee810a13b7d4', 'igormarvic2001@gmail.com', 7, 'informatica'),
(13867, 'JosÃ© Vicente Junior ', 'jose.junior11@estudante.ifms.edu.br', '8514fa8a395de349cf791d9f62f7d9a7114938f2', '', 7, 'informatica'),
(13869, 'Lucas Aguena Martos Costa', 'lucas.costa7@estudante.ifms.edu.br', '03a40a9990fee0e942ccd4e9cdbe10a603cf50ac', '', 7, 'informatica'),
(13877, 'NatÃ¡lia Silva Duarte', 'natalia.duarte@estudante.ifms.edu.br', '74cc80620855e633094d4513b2826f25f5d3d9c8', 'joaovitorpic12@gmail.com', 7, 'informatica'),
(13887, 'Thalita Oliveira', 'thalita.oliveira3@estudante.ifms.edu.br', '042352bce55df7b5b9b4228e5de1ed10247822f4', 'gabrielneris122@gmail.com\r\n', 7, 'informatica'),
(14174, 'Victor Hugo Lima Bauer', 'victor.bauer@estudante.ifms.edu.br', '53cb24e363bdd9f25631324eb84ef96d2f9ef014', '', 7, 'informatica'),
(14175, 'Gabriele Mie Sadoyama Tanino', 'gabriele.tanino@estudante.ifms.edu.br', '7ee09a88417ac5a3bd6db347776703c197b7fcdb', '', 7, 'informatica'),
(14183, 'JoÃ£o Victor Regenold Ferreira', 'joao.ferreira2@estudante.ifms.edu.br', '3a13b5a8e9729b8a04007d80b8fca5bc0f177e14', '', 7, 'informatica'),
(14274, 'Lucas Alejandro Terres', 'lucas.terres@estudante.ifms.edu.br', 'd09814ba72bccdc18b89ab9f1e28d43a725d30a9', '', 7, 'informatica'),
(14345, 'Natalia Pereira Silva ', 'natalia.silva4@estudante.ifms.edu.br', 'ee9d3f36b997e9877660b91170ab37c60abf4fba', '', 7, 'informatica'),
(14374, 'Pedro Arfux Pereira Cavalcante de Castro', 'pedro.castro@estudante.ifms.edu.br', 'c355ddce3fc708975364ac41742d9362c970dfe6', '', 7, 'informatica'),
(15257, 'Yuri da Silva Amaral', 'yuri.amaral@estudante.ifms.edu.br', 'd31455fb6ceabbe29c5189d46db4d7bd3366e025', '', 7, 'informatica'),
(15456, 'Brunno Fernandes Lewin Augusto', 'brunno.augusto@estudante.ifms.edu.br', '04ddc83c5e86633f39811c0ae845ae90e776eeb0', '', 7, 'informatica'),
(18489, 'Bianca Motta Martins', 'bianca.martins@estudante.ifms.edu.br', '50f03599a3a755155ed86c89657fa363011c110e', '', 7, 'informatica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `cod_disciplina` bigint(20) UNSIGNED NOT NULL,
  `descricao_disciplina` varchar(100) NOT NULL,
  `curso_disciplina` varchar(50) NOT NULL,
  `periodo_disciplina` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`cod_disciplina`, `descricao_disciplina`, `curso_disciplina`, `periodo_disciplina`) VALUES
(24363, 'FÃ­sica 6', 'informatica', 7),
(27887, 'SeguranÃ§a da InformaÃ§Ã£o', 'informatica', 7),
(27888, 'LÃ­ngua Portuguesa e Literatura Brasileira 7', 'comum', 7),
(27889, 'Projeto Integrador 3', 'comum', 7),
(27890, 'GerÃªncia e ConfiguraÃ§Ã£o de ServiÃ§os de Internet', 'informatica', 7),
(27891, 'Linguagem de ProgramaÃ§Ã£o 4', 'informatica', 7),
(27892, 'ComunicaÃ§Ã£o TÃ©cnica', 'comum', 7),
(27893, 'Estatistica', 'comum', 7),
(27894, 'Computador, Ã‰tica e Sociedade', 'informatica', 7),
(27895, 'TÃ³picos Especiais em Tecnologia da InformaÃ§Ã£o', 'informatica', 7),
(28009, 'FÃ­sica 5', 'mecanica', 5),
(29154, 'ProgramaÃ§Ã£o para Dispositivos MÃ³veis', 'informatica', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

CREATE TABLE `nota` (
  `cod_vinculo` int(11) NOT NULL,
  `ra` int(11) NOT NULL,
  `nota` double NOT NULL,
  `id_nota` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `SIAPE` bigint(20) UNSIGNED NOT NULL,
  `nome_professor` varchar(70) NOT NULL,
  `email_professor` varchar(70) NOT NULL,
  `senha_professor` varchar(50) NOT NULL,
  `area_professor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`SIAPE`, `nome_professor`, `email_professor`, `senha_professor`, `area_professor`) VALUES
(230953593, 'Joelson Maschio', 'joelson.maschio@ifms.edu.br', '968b0cf2cf8a71d5d035e58e31be3c58248153fa', 'MatemÃ¡tica'),
(285059763, 'Simone Machado Marques', 'simone.marques@ifms.edu.br', '915543e8ada173af05d84fe13bc50ea4627312e1', 'FÃ­sica'),
(288755999, 'Diego Alves da Rocha', 'diego.alves@ifms.edu.br', '54b2f2bb192e831c36a94c45e62f371422d8629e', 'InformÃ¡tica/Desenvolvimento e Desenvolvimento Web'),
(372685162, 'Fernando Augusto Dessotti', 'fernando.dessotti@ifms.edu.br', '1dc46d4c91990c8d863f2dcc585d8b774ee124cd', 'FÃ­sica'),
(493398926, 'Cassima Zatorre Ortegosa', 'cassima.ortegosa@ifms.edu.br', 'c22746e12245f793c0bc019d7addc5d6a7045c2c', 'InformÃ¡tica/Desenvolvimento Web'),
(500793250, 'Jonathas Leontino Medina', 'jonathas.medina@ifms.edu.br', '503bfde8d20a9db6c253c0ddf5e6ac9587de6008', 'InformÃ¡tica/Desenvolvimento Web'),
(541833083, 'Eder de Souza Rodrigues', 'eder.rodrigues@ifms.edu.br', '9e32d2ade98531dbc0a7afa027db9a675f381a70', 'InformÃ¡tica/Redes de Computadores'),
(582840169, 'Isaias Leonidio Farias', 'isaias.farias@ifms.edu.br', 'fa12b642979458bb89973c997a2a952b64366728', 'PortuguÃªs/Espanhol'),
(741572354, 'Aislan Vieira de Melo', 'aislan.melo@ifms.edu.br', '4b18bba6a31e3e8595f683d22de249c93e42026c', 'Sociologia'),
(781091247, 'Marta Luzzi', 'marta.luzzi@ifms.edu.br', '9b2aad26ba85cd0525e75ec1d10ee8eae077d9d1', 'PortuguÃªs/Espanhol	'),
(826087658, 'Jiyan Yari', 'jiyan.yari@ifms.edu.br', '96cea1dc1794ae16ab5be3941ce1f124662ccf6f', 'InformÃ¡tica/Redes de Computadores'),
(875285075, 'Gisela Silva Suppo', 'gisela.suppo@ifms.edu.br', '3e5d7a63043e6bf9227f344da35cc44306fbcbbd', 'Metodologia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `recuperacao_senha`
--

CREATE TABLE `recuperacao_senha` (
  `codigo_re` varchar(200) NOT NULL,
  `data` datetime NOT NULL,
  `id_re` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `recuperacao_senha`
--

INSERT INTO `recuperacao_senha` (`codigo_re`, `data`, `id_re`) VALUES
('Z2FicmllbC5zYW50b3MxMUBlc3R1ZGFudGUuaWZtcy5lZHUuYnI=', '2019-06-23 10:21:07', 3),
('aWdvci52aWNlbnRlQGVzdHVkYW50ZS5pZm1zLmVkdS5icg==', '2019-06-23 19:00:23', 4),
('Z2FicmllbC5zYW50b3MxMUBlc3R1ZGFudGUuaWZtcy5lZHUuYnI=', '2019-06-23 19:02:22', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala`
--

CREATE TABLE `sala` (
  `cod_sala` varchar(20) NOT NULL,
  `descricao_sala` varchar(25) NOT NULL,
  `bloco_sala` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sala`
--

INSERT INTO `sala` (`cod_sala`, `descricao_sala`, `bloco_sala`) VALUES
('B201', 'sala', 'B'),
('C202', 'labInfo', 'C'),
('D201', 'labInfo', 'D'),
('D206', 'labInfo', 'D');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `cod_null` int(11) NOT NULL,
  `cod_turma` varchar(100) NOT NULL,
  `curso_turma` varchar(70) NOT NULL,
  `periodo_turma` int(11) NOT NULL,
  `turno_turma` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`cod_null`, `cod_turma`, `curso_turma`, `periodo_turma`, `turno_turma`) VALUES
(0, '124', 'Informatica', 7, 'Matutino'),
(0, '125', 'Informatica', 6, 'Matutino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vinculo`
--

CREATE TABLE `vinculo` (
  `cod_vinculo` bigint(20) UNSIGNED NOT NULL,
  `cod_disciplina` bigint(20) NOT NULL,
  `cod_sala` varchar(5) NOT NULL,
  `dia_semana` varchar(7) NOT NULL,
  `periodo` varchar(10) NOT NULL,
  `horario` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vinculo`
--

INSERT INTO `vinculo` (`cod_vinculo`, `cod_disciplina`, `cod_sala`, `dia_semana`, `periodo`, `horario`) VALUES
(9, 27887, 'D206', 'Segunda', 'Matutino', '1'),
(10, 27887, 'D206', 'Segunda', 'Matutino', '2'),
(11, 27888, 'B201', 'Segunda', 'Matutino', '3'),
(12, 27888, 'B201', 'Segunda', 'Matutino', '4'),
(13, 27889, 'C202', 'Segunda', 'Matutino', '5'),
(14, 27889, 'C202', 'Segunda', 'Matutino', '6'),
(15, 27890, 'D201', 'Terca', 'Matutino', '1'),
(16, 27890, 'D201', 'Terca', 'Matutino', '2'),
(17, 27891, 'D201', 'Terca', 'Matutino', '3'),
(18, 27891, 'D201', 'Terca', 'Matutino', '4'),
(19, 27892, 'B201', 'Terca', 'Matutino', '5'),
(20, 27892, 'B201', 'Terca', 'Matutino', '6'),
(21, 27890, 'D201', 'Quarta', 'Matutino', '1'),
(22, 27890, 'D201', 'Quarta', 'Matutino', '2'),
(23, 27889, 'C202', 'Quarta', 'Matutino', '3'),
(24, 27889, 'C202', 'Quarta', 'Matutino', '4'),
(25, 27893, 'C202', 'Quarta', 'Matutino', '5'),
(26, 27893, 'C202', 'Quarta', 'Matutino', '6'),
(27, 27894, 'B201', 'Quinta', 'Matutino', '1'),
(28, 27894, 'B201', 'Quinta', 'Matutino', '2'),
(29, 27894, 'B201', 'Quinta', 'Matutino', '3'),
(30, 27895, 'D206', 'Quinta', 'Matutino', '4'),
(31, 27895, 'D206', 'Quinta', 'Matutino', '5'),
(32, 27895, 'D206', 'Quinta', 'Matutino', '6'),
(33, 29154, 'D206', 'Sexta', 'Matutino', '1'),
(34, 29154, 'D206', 'Sexta', 'Matutino', '2'),
(35, 29154, 'D206', 'Sexta', 'Matutino', '3'),
(38, 24363, 'B201', 'Sexta', 'Matutino', '6'),
(39, 24363, 'B201', 'Sexta', 'Matutino', '5'),
(40, 24363, 'B201', 'Sexta', 'Matutino', '4'),
(42, 28009, 'B201', 'Quinta', 'Vespertino', '1'),
(43, 28009, 'B201', 'Quinta', 'Vespertino', '2'),
(44, 28009, 'B201', 'Quinta', 'Vespertino', '3'),
(45, 24363, 'D206', 'Terca', 'Vespertino', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vinculoaluno`
--

CREATE TABLE `vinculoaluno` (
  `cod_vinculo_aluno` bigint(20) UNSIGNED NOT NULL,
  `cod_vinculo` bigint(20) NOT NULL,
  `RA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vinculoaluno`
--

INSERT INTO `vinculoaluno` (`cod_vinculo_aluno`, `cod_vinculo`, `RA`) VALUES
(2, 9, 13877),
(3, 10, 13877),
(4, 11, 13877),
(5, 12, 13877),
(6, 13, 13877),
(7, 14, 13877),
(15, 42, 18489),
(16, 43, 18489),
(17, 44, 18489),
(20, 27, 13854),
(21, 28, 13854),
(22, 29, 13854),
(26, 21, 13854),
(27, 22, 13854),
(28, 15, 13854),
(29, 16, 13854),
(30, 18, 13854),
(31, 17, 13854),
(32, 33, 13854),
(33, 34, 13854),
(34, 35, 13854),
(37, 32, 13854),
(38, 30, 13854),
(39, 31, 13854),
(40, 19, 13854),
(41, 20, 13854),
(42, 25, 13854),
(43, 26, 13854),
(44, 11, 13854),
(45, 12, 13854),
(46, 14, 13854),
(47, 23, 13854),
(48, 24, 13854),
(49, 13, 13854),
(50, 27, 13854),
(51, 28, 13854),
(52, 29, 13854),
(53, 27, 13887),
(54, 28, 13887),
(55, 29, 13887),
(56, 38, 13887),
(57, 39, 13887),
(58, 40, 13887),
(59, 45, 13887),
(60, 22, 13887),
(61, 15, 13887),
(62, 16, 13887),
(63, 21, 13887),
(64, 17, 13887),
(65, 18, 13887),
(66, 34, 13887),
(67, 35, 13887),
(68, 33, 13887),
(69, 9, 13887),
(70, 10, 13887),
(71, 30, 13887),
(72, 31, 13887),
(73, 32, 13887),
(74, 11, 13887),
(75, 12, 13887),
(76, 24, 13887),
(77, 13, 13887),
(78, 14, 13887),
(79, 23, 13887),
(80, 26, 13865),
(81, 24, 13865);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vinculoprofessor`
--

CREATE TABLE `vinculoprofessor` (
  `cod_vinculo_professor` bigint(20) UNSIGNED NOT NULL,
  `cod_vinculo` bigint(20) NOT NULL,
  `SIAPE` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vinculoprofessor`
--

INSERT INTO `vinculoprofessor` (`cod_vinculo_professor`, `cod_vinculo`, `SIAPE`) VALUES
(3, 9, 826087658),
(4, 10, 826087658),
(5, 11, 781091247),
(6, 12, 781091247),
(7, 13, 875285075),
(8, 14, 875285075),
(9, 15, 541833083),
(10, 16, 541833083),
(11, 17, 288755999),
(12, 18, 288755999),
(13, 19, 582840169),
(14, 20, 582840169),
(15, 21, 541833083),
(16, 22, 541833083),
(17, 23, 875285075),
(18, 24, 875285075),
(19, 25, 230953593),
(20, 26, 230953593),
(21, 27, 415723530),
(22, 28, 415723530),
(23, 29, 415723530),
(24, 30, 493398926),
(25, 31, 493398926),
(26, 32, 493398926),
(27, 33, 500793250),
(28, 34, 500793250),
(29, 35, 500793250),
(30, 40, 372685162),
(31, 39, 372685162),
(32, 38, 372685162),
(33, 27, 741572354),
(34, 28, 741572354),
(35, 29, 741572354),
(37, 43, 285059763),
(38, 44, 285059763),
(39, 42, 285059763);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vinculoturma`
--

CREATE TABLE `vinculoturma` (
  `cod_vinculo_turma` bigint(20) UNSIGNED NOT NULL,
  `cod_turma` varchar(100) NOT NULL,
  `cod_vinculo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vinculoturma`
--

INSERT INTO `vinculoturma` (`cod_vinculo_turma`, `cod_turma`, `cod_vinculo`) VALUES
(2, '124', 14),
(3, '124', 23),
(4, '124', 24),
(5, '124', 13),
(7, '124', 27),
(8, '124', 28),
(9, '124', 29),
(10, '124', 38),
(11, '124', 39),
(12, '124', 40),
(13, '124', 15),
(14, '124', 16),
(15, '124', 21),
(16, '124', 22),
(17, '124', 17),
(18, '124', 18),
(19, '124', 35),
(20, '124', 33),
(21, '124', 34),
(22, '124', 9),
(23, '124', 10),
(24, '124', 30),
(25, '124', 31),
(26, '124', 32),
(27, '124', 19),
(28, '124', 20),
(29, '124', 25),
(30, '124', 26),
(31, '124', 11),
(32, '124', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administracao`
--
ALTER TABLE `administracao`
  ADD UNIQUE KEY `id_admin_2` (`id_admin`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`RA`),
  ADD UNIQUE KEY `RA` (`RA`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD UNIQUE KEY `cod_disciplina` (`cod_disciplina`),
  ADD KEY `cod_disciplina_2` (`cod_disciplina`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD UNIQUE KEY `id_nota` (`id_nota`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD UNIQUE KEY `SIAPE_2` (`SIAPE`),
  ADD KEY `SIAPE` (`SIAPE`);

--
-- Indexes for table `recuperacao_senha`
--
ALTER TABLE `recuperacao_senha`
  ADD UNIQUE KEY `id_re` (`id_re`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD UNIQUE KEY `cod_sala` (`cod_sala`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD UNIQUE KEY `cod_turma` (`cod_turma`);

--
-- Indexes for table `vinculo`
--
ALTER TABLE `vinculo`
  ADD UNIQUE KEY `cod_vinculo_2` (`cod_vinculo`),
  ADD UNIQUE KEY `cod_vinculo_3` (`cod_vinculo`),
  ADD UNIQUE KEY `cod_vinculo_4` (`cod_vinculo`),
  ADD KEY `cod_vinculo` (`cod_vinculo`);

--
-- Indexes for table `vinculoaluno`
--
ALTER TABLE `vinculoaluno`
  ADD UNIQUE KEY `cod_vinculo_aluno_2` (`cod_vinculo_aluno`),
  ADD UNIQUE KEY `cod_vinculo_aluno_3` (`cod_vinculo_aluno`),
  ADD KEY `cod_vinculo_aluno` (`cod_vinculo_aluno`);

--
-- Indexes for table `vinculoprofessor`
--
ALTER TABLE `vinculoprofessor`
  ADD UNIQUE KEY `cod_vinculo_professor_2` (`cod_vinculo_professor`),
  ADD KEY `cod_vinculo_professor` (`cod_vinculo_professor`);

--
-- Indexes for table `vinculoturma`
--
ALTER TABLE `vinculoturma`
  ADD UNIQUE KEY `cod_vinculo_turma` (`cod_vinculo_turma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administracao`
--
ALTER TABLE `administracao`
  MODIFY `id_admin` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `cod_disciplina` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29155;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `SIAPE` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=875285076;

--
-- AUTO_INCREMENT for table `recuperacao_senha`
--
ALTER TABLE `recuperacao_senha`
  MODIFY `id_re` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vinculo`
--
ALTER TABLE `vinculo`
  MODIFY `cod_vinculo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `vinculoaluno`
--
ALTER TABLE `vinculoaluno`
  MODIFY `cod_vinculo_aluno` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `vinculoprofessor`
--
ALTER TABLE `vinculoprofessor`
  MODIFY `cod_vinculo_professor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `vinculoturma`
--
ALTER TABLE `vinculoturma`
  MODIFY `cod_vinculo_turma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
