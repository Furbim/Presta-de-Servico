-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/07/2024 às 14:27
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `barbearia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessos`
--

CREATE TABLE `acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `chave` varchar(50) NOT NULL,
  `grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `acessos`
--

INSERT INTO `acessos` (`id`, `nome`, `chave`, `grupo`) VALUES
(1, 'Usuários', 'usuarios', 1),
(2, 'Funcionários', 'funcionarios', 1),
(3, 'Clientes', 'clientes', 1),
(4, 'Clientes Retornos', 'clientes_retorno', 1),
(5, 'Fornecedores', 'fornecedores', 1),
(6, 'Serviços', 'servicos', 2),
(7, 'Cargos', 'cargos', 2),
(8, 'Categoria Serviços', 'cat_servicos', 2),
(9, 'Grupo Acessos', 'grupos', 2),
(10, 'Acessos', 'acessos', 2),
(11, 'Produtos', 'produtos', 3),
(12, 'Categorias', 'cat_produtos', 3),
(13, 'Estoque Baixo', 'estoque', 3),
(14, 'Saídas', 'saidas', 3),
(15, 'Entradas', 'entradas', 3),
(16, 'Vendas', 'vendas', 4),
(17, 'Compras', 'compras', 4),
(18, 'Contas à Pagar', 'pagar', 4),
(19, 'Contas à Receber', 'receber', 4),
(20, 'Agendamentos', 'agendamentos', 5),
(21, 'Serviços Agendamentos', 'servicos_agenda', 5),
(22, 'Home', 'home', 0),
(25, 'Relatório Produtos', 'rel_produtos', 7),
(26, 'Relatório de Entradas', 'rel_entradas', 7),
(27, 'Relatório de Saídas', 'rel_saidas', 7),
(28, 'Relatório de Comissões', 'rel_comissoes', 7),
(29, 'Relatório de Contas', 'rel_contas', 7),
(30, 'Aniversáriantes', 'rel_aniv', 7),
(31, 'Relatório de Lucro', 'rel_lucro', 7),
(32, 'Textos Banner Index', 'textos_index', 8),
(33, 'Comentários / Depoimentos', 'comentarios', 8),
(34, 'Configurações do Sistema', 'configuracoes', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `data_lanc` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `servico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id`, `funcionario`, `cliente`, `data`, `hora`, `obs`, `data_lanc`, `usuario`, `status`, `servico`) VALUES
(6, 0, 2, '2022-06-06', '00:00:00', '', '2022-06-06', 10, 'Agendado', 0),
(10, 11, 2, '2022-06-06', '08:00:00', '', '2022-06-06', 6, 'Concluído', 2),
(11, 11, 3, '2022-06-06', '08:30:00', '', '2022-06-06', 6, 'Concluído', 1),
(12, 11, 1, '2022-06-06', '09:30:00', '', '2022-06-06', 6, 'Concluído', 8),
(13, 10, 2, '2022-06-06', '08:00:00', '', '2022-06-06', 6, 'Concluído', 2),
(14, 10, 3, '2022-06-06', '09:00:00', '', '2022-06-06', 6, 'Concluído', 4),
(15, 11, 2, '2022-06-07', '08:00:00', '', '2022-06-06', 6, 'Agendado', 2),
(16, 11, 2, '2022-06-06', '09:00:00', '', '2022-06-06', 6, 'Concluído', 2),
(17, 10, 2, '2022-06-07', '08:00:00', '', '2022-06-06', 6, 'Agendado', 2),
(18, 6, 2, '2022-06-07', '08:00:00', '', '2022-06-06', 6, 'Concluído', 2),
(19, 6, 3, '2022-06-07', '09:00:00', '', '2022-06-06', 6, 'Concluído', 1),
(20, 10, 2, '2022-06-07', '10:00:00', '', '2022-06-06', 6, 'Agendado', 1),
(21, 10, 1, '2022-06-06', '12:00:00', '', '2022-06-06', 10, 'Concluído', 1),
(22, 11, 2, '2022-06-08', '08:00:00', '', '2022-06-08', 6, 'Agendado', 2),
(24, 11, 4, '2022-06-08', '09:00:00', '', '2022-06-08', 6, 'Agendado', 2),
(25, 10, 2, '2022-06-08', '11:00:00', '', '2022-06-08', 6, 'Agendado', 2),
(26, 10, 2, '2022-06-08', '13:00:00', '', '2022-06-08', 6, 'Agendado', 2),
(27, 6, 2, '2022-06-08', '08:00:00', '', '2022-06-08', 6, 'Concluído', 2),
(28, 6, 2, '2022-06-09', '10:00:00', '', '2022-06-08', 6, 'Concluído', 2),
(29, 6, 2, '2022-06-08', '12:00:00', '', '2022-06-08', 6, 'Concluído', 2),
(30, 6, 3, '2022-06-09', '11:00:00', '', '2022-06-09', 6, 'Concluído', 1),
(31, 6, 2, '2022-06-09', '12:00:00', '', '2022-06-09', 6, 'Concluído', 2),
(32, 6, 1, '2022-06-09', '09:00:00', '', '2022-06-09', 6, 'Concluído', 5),
(33, 6, 2, '2022-06-09', '08:00:00', '', '2022-06-09', 6, 'Concluído', 5),
(34, 11, 2, '2022-06-09', '08:00:00', '', '2022-06-09', 6, 'Concluído', 2),
(35, 10, 2, '2022-06-09', '10:00:00', '', '2022-06-09', 6, 'Concluído', 2),
(36, 11, 2, '2022-06-09', '08:30:00', '', '2022-06-09', 6, 'Concluído', 2),
(37, 6, 2, '2022-06-10', '08:00:00', '', '2022-06-09', 6, 'Concluído', 5),
(38, 6, 2, '2022-06-08', '09:00:00', '', '2022-06-09', 6, 'Concluído', 2),
(39, 10, 2, '2022-06-09', '11:00:00', '', '2022-06-09', 6, 'Concluído', 2),
(40, 11, 3, '2022-06-09', '09:00:00', '', '2022-06-09', 6, 'Concluído', 1),
(41, 10, 2, '2022-06-09', '09:00:00', '', '2022-06-09', 6, 'Concluído', 2),
(42, 6, 4, '2022-06-10', '09:00:00', '', '2022-06-09', 6, 'Concluído', 4),
(43, 6, 1, '2022-06-10', '10:00:00', '', '2022-06-09', 6, 'Concluído', 5),
(44, 11, 4, '2022-06-09', '09:30:00', '', '2022-06-09', 6, 'Concluído', 4),
(45, 11, 2, '2022-06-10', '08:00:00', '', '2022-06-09', 6, 'Concluído', 5),
(46, 10, 2, '2022-06-09', '17:00:00', '', '2022-06-09', 6, 'Agendado', 2),
(47, 6, 4, '2022-06-09', '15:00:00', '', '2022-06-09', 6, 'Agendado', 5),
(48, 6, 1, '2022-06-09', '16:00:00', '', '2022-06-09', 6, 'Agendado', 2),
(49, 11, 4, '2022-06-09', '10:00:00', '', '2022-06-09', 6, 'Agendado', 5),
(50, 11, 3, '2022-06-13', '08:30:00', '', '2022-06-13', 6, 'Concluído', 5),
(51, 6, 2, '2022-06-13', '08:00:00', '', '2022-06-13', 6, 'Concluído', 2),
(52, 6, 3, '2022-06-13', '09:00:00', '', '2022-06-13', 6, 'Concluído', 2),
(53, 6, 4, '2022-06-13', '10:00:00', '', '2022-06-13', 6, 'Agendado', 1),
(54, 6, 2, '2022-06-15', '09:00:00', '', '2022-06-15', 6, 'Concluído', 2),
(55, 6, 3, '2022-06-15', '11:00:00', '', '2022-06-15', 6, 'Agendado', 2),
(56, 6, 2, '2022-06-15', '10:00:00', '', '2022-06-15', 6, 'Concluído', 2),
(57, 6, 2, '2022-06-15', '08:00:00', '', '2022-06-15', 6, 'Concluído', 1),
(58, 10, 3, '2022-06-15', '08:00:00', '', '2022-06-15', 6, 'Concluído', 2),
(59, 10, 3, '2022-06-15', '09:00:00', '', '2022-06-15', 6, 'Concluído', 5),
(60, 10, 3, '2022-06-15', '11:00:00', '', '2022-06-15', 6, 'Concluído', 4),
(61, 10, 2, '2022-06-15', '12:00:00', '', '2022-06-15', 6, 'Agendado', 2),
(62, 10, 3, '2022-06-15', '14:00:00', '', '2022-06-15', 6, 'Concluído', 2),
(63, 10, 3, '2022-06-15', '15:00:00', '', '2022-06-15', 6, 'Agendado', 5),
(64, 6, 2, '2022-06-15', '15:00:00', '', '2022-06-15', 6, 'Concluído', 2),
(65, 6, 2, '2022-06-15', '17:00:00', '', '2022-06-15', 6, 'Concluído', 4),
(66, 6, 2, '2022-06-16', '09:00:00', '', '2022-06-16', 6, 'Agendado', 2),
(67, 11, 2, '2022-06-27', '08:30:00', '', '2022-06-27', 6, 'Concluído', 2),
(69, 6, 12, '2022-06-27', '08:00:00', '', '2022-06-27', 0, 'Agendado', 1),
(71, 11, 10, '2022-06-27', '09:30:00', '', '2022-06-27', 0, 'Agendado', 10),
(72, 6, 10, '2022-06-28', '15:00:00', 'sss', '2022-06-27', 0, 'Agendado', 10),
(79, 11, 13, '2022-06-28', '09:30:00', '', '2022-06-27', 0, 'Agendado', 1),
(80, 6, 10, '2022-06-28', '11:00:00', 'sss', '2022-06-27', 0, 'Agendado', 10),
(81, 6, 10, '2022-06-28', '16:00:00', '', '2022-06-27', 0, 'Agendado', 5),
(108, 10, 11, '2022-06-27', '14:00:00', '', '2022-06-27', 0, 'Agendado', 5),
(109, 11, 2, '2022-06-27', '10:00:00', '', '2022-06-27', 6, 'Concluído', 2),
(110, 11, 2, '2022-06-27', '12:00:00', '', '2022-06-27', 6, 'Concluído', 2),
(111, 11, 2, '2022-06-27', '08:00:00', '', '2022-06-27', 6, 'Concluído', 2),
(112, 6, 2, '2024-07-31', '09:00:00', '', '2024-07-18', 6, 'Agendado', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cargos`
--

INSERT INTO `cargos` (`id`, `nome`) VALUES
(9, 'Administrador'),
(10, 'Gerente'),
(11, 'Recepcionista'),
(12, 'Barbeiro'),
(13, 'Cabelereira'),
(14, 'Manicure e Pedicure');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cat_produtos`
--

CREATE TABLE `cat_produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cat_produtos`
--

INSERT INTO `cat_produtos` (`id`, `nome`) VALUES
(1, 'Pomadas'),
(2, 'Cremes'),
(3, 'Lâminas e Giletes'),
(4, 'Bebidas'),
(5, 'Gel'),
(7, 'Esmaltes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cat_servicos`
--

CREATE TABLE `cat_servicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cat_servicos`
--

INSERT INTO `cat_servicos` (`id`, `nome`) VALUES
(1, 'Corte'),
(2, 'Química'),
(5, 'Manicure e Pedicure'),
(6, 'Depilação');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `data_nasc` date NOT NULL,
  `data_cad` date NOT NULL,
  `cartoes` int(11) NOT NULL,
  `data_retorno` date DEFAULT NULL,
  `ultimo_servico` int(11) NOT NULL,
  `alertado` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `endereco`, `data_nasc`, `data_cad`, `cartoes`, `data_retorno`, `ultimo_servico`, `alertado`) VALUES
(1, 'Cliente 4', '(45) 44584-55', '', '0000-00-00', '2022-05-30', 5, '2022-06-10', 5, 'Não'),
(2, 'Cliente 1', '(54) 54841-1121', 'Rua C', '2022-05-02', '2022-05-30', 4, '2022-07-04', 2, 'Não'),
(3, 'Cliente 2', '(74) 45454-5454', 'Rua 5', '0000-00-00', '2022-05-30', 10, '2022-06-22', 2, 'Não'),
(4, 'Cliente 3', '(58) 44554', '', '0000-00-00', '2022-05-30', 4, '2022-06-29', 4, 'Não'),
(6, 'Cliente 5', '(45) 55655-5555', 'Rua C', '2022-06-13', '2022-06-13', 0, NULL, 0, 'Não'),
(7, 'Cliente 6', '(40) 00000-0000', 'Rua C', '1990-06-01', '2022-06-13', 0, NULL, 0, 'Não'),
(8, 'Cliente 7', '(11) 11111-1000', '', '2000-06-13', '2022-06-13', 0, NULL, 0, 'Não'),
(10, 'Cliente Teste', '(55) 56664-5454', '', '0000-00-00', '2022-06-14', 6, NULL, 0, 'Não'),
(11, 'Hugo Freitas', '(31) 97527-5084', '', '0000-00-00', '2022-06-27', 2, NULL, 0, 'Não'),
(12, 'Teste Cliente', '(11) 11111-2221', NULL, '0000-00-00', '2022-06-27', 0, NULL, 0, 'Não'),
(13, 'Cliente para Testes', '(55) 55555-5555', NULL, '0000-00-00', '2022-06-27', 0, NULL, 0, 'Não');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `texto` varchar(500) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `nome`, `texto`, `foto`, `ativo`) VALUES
(2, 'Paulo Campos', 'Aqui será o texto do comentário referente a essa mensagem e poderá ser aprovado ou não pelo administrador do site. Aqui será o texto do comentário referente a essa mensagem e poderá ser aprovado ou não pelo administrador do site.', '14-06-2022-19-10-25-c1.jpg', 'Sim'),
(3, 'Marcos Silva', 'Aqui será o texto do comentário referente a essa mensagem e poderá ser aprovado ou não pelo administrador do site.', '14-06-2022-19-11-32-30-05-2022-13-19-34-08-03-2022-22-21-20-02-03-2022-09-59-04-Arthur.jpg', 'Sim'),
(4, 'Marcos Santos', 'Aqui será o texto do comentário referente a essa mensagem e poderá ser aprovado ou não pelo administrador do site.', '14-06-2022-19-11-50-c2.jpg', 'Sim'),
(15, 'Fabricio Campos', 'Excelente barbearia, sempre bom atendimento, preços assecíveis, Excelente barbearia, sempre bom atendimento, preços assecíveis, Excelente barbearia, sempre bom atendimento, preços assecíveis, ', '14-06-2022-20-10-40-c1.jpg', 'Sim'),
(16, 'Marcelo Silva', 'Excelente barbearia, sempre bom atendimento, preços assecíveis, Excelente barbearia, sempre bom atendimento, preços assecíveis, Excelente barbearia, sempre bom atendimento, preços assecíveis, ', '14-06-2022-20-13-02-c2.jpg', 'Sim'),
(18, 'Priscila Matos', 'Excelente Salão de cabereira, muito bom atendimento.', '14-06-2022-20-17-37-favicon.png', 'Não');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone_fixo` varchar(20) DEFAULT NULL,
  `telefone_whatsapp` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `icone` varchar(100) DEFAULT NULL,
  `logo_rel` varchar(100) DEFAULT NULL,
  `tipo_rel` varchar(10) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `tipo_comissao` varchar(25) NOT NULL,
  `texto_rodape` varchar(255) DEFAULT NULL,
  `img_banner_index` varchar(100) DEFAULT NULL,
  `texto_sobre` varchar(600) DEFAULT NULL,
  `imagem_sobre` varchar(100) DEFAULT NULL,
  `icone_site` varchar(100) NOT NULL,
  `mapa` varchar(1000) DEFAULT NULL,
  `texto_fidelidade` varchar(255) DEFAULT NULL,
  `quantidade_cartoes` int(11) NOT NULL,
  `texto_agendamento` varchar(30) DEFAULT NULL,
  `msg_agendamento` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `email`, `telefone_fixo`, `telefone_whatsapp`, `endereco`, `logo`, `icone`, `logo_rel`, `tipo_rel`, `instagram`, `tipo_comissao`, `texto_rodape`, `img_banner_index`, `texto_sobre`, `imagem_sobre`, `icone_site`, `mapa`, `texto_fidelidade`, `quantidade_cartoes`, `texto_agendamento`, `msg_agendamento`) VALUES
(2, 'Barbearia Studio', 'admin@admin', '(33) 3333-3333', '(31) 99999-9999', 'Rua X Número 150 - Bairro Centro', 'logo.png', 'favicon.png', 'logo_rel.jpg', 'PDF', 'https://www.instagram.com/', 'R$', 'Este texto pode ser modificado no painel do sistema, nas opções de configurações, é um texto com tamanho para até 255 caracteres e será apresentado no rodapé de todo o site!', 'hero-bg.jpg', 'Este texto pode ser alterado no painel administrativo nas configurações, aqui voce vai colocar um texto escrevendo sobre sua empresa. Este texto pode ser alterado no painel administrativo nas configurações, aqui voce vai colocar um texto escrevendo sobre.', 'getlstd-property-photo.jpg', 'favicon.png', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15111.737337923378!2d-44.43875433848488!3d-18.756469927096727!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xa862fa2d52b993%3A0xe3bd921aa58bc4a8!2sCentro%2C%20Curvelo%20-%20MG%2C%2035790-000!5e0!3m2!1spt-BR!2sbr!4v1655243351692!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Parabéns, você completou seus cartões Fidelidade, seu próximo corte será gratuito!!', 10, 'Selecionar Barbeiro', 'Não');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dias`
--

CREATE TABLE `dias` (
  `id` int(11) NOT NULL,
  `dia` varchar(25) NOT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `dias`
--

INSERT INTO `dias` (`id`, `dia`, `funcionario`) VALUES
(1, 'Segunda-Feira', 11),
(2, 'Terça-Feira', 11),
(3, 'Quarta-Feira', 11),
(4, 'Quinta-Feira', 11),
(5, 'Sexta-Feira', 11),
(6, 'Sábado', 11),
(8, 'Terça-Feira', 10),
(9, 'Quarta-Feira', 10),
(10, 'Quinta-Feira', 10),
(11, 'Sexta-Feira', 10),
(12, 'Terça-Feira', 6),
(13, 'Quarta-Feira', 6),
(14, 'Quinta-Feira', 6),
(15, 'Sexta-Feira', 6),
(16, 'Sábado', 6),
(17, 'Segunda-Feira', 10),
(18, 'Segunda-Feira', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `motivo` varchar(50) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `entradas`
--

INSERT INTO `entradas` (`id`, `produto`, `quantidade`, `motivo`, `usuario`, `data`) VALUES
(1, 2, 8, 'Encontrados', 6, '2022-05-31'),
(3, 2, 2, 'Encontrados', 6, '2022-05-31'),
(4, 10, 8, 'Devolução', 6, '2022-06-14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `data_cad` date NOT NULL,
  `tipo_chave` varchar(25) DEFAULT NULL,
  `chave_pix` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `endereco`, `data_cad`, `tipo_chave`, `chave_pix`) VALUES
(1, 'Fornecedor 2', '(55) 55555-5555', 'Rua Guajajaras 140 Centro', '2022-05-31', 'Email', 'fornecedor2@hotmail.com'),
(2, 'Fornecedor 1', '(88) 88888-8888', 'Teste', '2022-05-31', 'CPF', '123111111'),
(4, 'Fornecedor 3', '(31) 78999-9999', 'Rua C', '2022-06-13', 'CNPJ', '11.111.111/1111-11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo_acessos`
--

CREATE TABLE `grupo_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `grupo_acessos`
--

INSERT INTO `grupo_acessos` (`id`, `nome`) VALUES
(1, 'Pessoas'),
(2, 'Cadastros'),
(3, 'Produtos'),
(4, 'Financeiro'),
(5, 'Agendamento / Serviços'),
(7, 'Relatórios'),
(8, 'Dados Site');

-- --------------------------------------------------------

--
-- Estrutura para tabela `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `horario` time NOT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `horarios`
--

INSERT INTO `horarios` (`id`, `horario`, `funcionario`) VALUES
(1, '08:00:00', 10),
(2, '09:00:00', 10),
(4, '12:00:00', 10),
(5, '10:00:00', 10),
(6, '13:00:00', 10),
(7, '11:00:00', 10),
(8, '08:00:00', 9),
(9, '09:00:00', 9),
(10, '08:00:00', 6),
(11, '09:00:00', 6),
(12, '10:00:00', 6),
(14, '08:00:00', 11),
(15, '08:30:00', 11),
(16, '09:00:00', 11),
(17, '09:30:00', 11),
(18, '14:00:00', 10),
(19, '15:00:00', 10),
(20, '16:00:00', 10),
(21, '17:00:00', 10),
(22, '11:00:00', 6),
(23, '12:00:00', 6),
(24, '15:00:00', 6),
(25, '16:00:00', 6),
(26, '17:00:00', 6),
(27, '10:00:00', 11),
(28, '12:00:00', 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagar`
--

CREATE TABLE `pagar` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `tipo` varchar(35) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data_lanc` date NOT NULL,
  `data_venc` date NOT NULL,
  `data_pgto` date NOT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `usuario_baixa` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `pessoa` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL,
  `servico` int(11) NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pagar`
--

INSERT INTO `pagar` (`id`, `descricao`, `tipo`, `valor`, `data_lanc`, `data_venc`, `data_pgto`, `usuario_lanc`, `usuario_baixa`, `foto`, `pessoa`, `pago`, `produto`, `quantidade`, `funcionario`, `servico`, `cliente`) VALUES
(1, 'Conta de Luz', 'Conta', 870.00, '2022-05-31', '2022-05-31', '0000-00-00', 6, 0, '31-05-2022-14-29-55-09-11-2021-09-21-26-conta3.jpg', 0, 'Não', 0, 0, 0, 0, 0),
(2, 'Conta de Água', 'Conta', 750.00, '2022-05-31', '2022-05-31', '0000-00-00', 6, 0, '31-05-2022-14-30-08-09-11-2021-10-17-10-pdfteste.pdf', 0, 'Não', 0, 0, 0, 0, 0),
(4, 'Compra de Cadeiras', 'Conta', 750.00, '2022-05-31', '2022-05-31', '2022-04-30', 6, 6, 'sem-foto.jpg', 1, 'Sim', 0, 0, 0, 0, 0),
(5, 'Conta Vencida', 'Conta', 50.00, '2022-05-31', '2022-05-30', '2022-05-31', 6, 6, '31-05-2022-14-53-15-09-11-2021-12-04-29-pdfteste.zip', 1, 'Sim', 0, 0, 0, 0, 0),
(6, 'aaaaaa', 'Conta', 45.00, '2022-05-31', '2022-05-31', '2022-05-31', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 0, 0, 0),
(9, 'Compra - (10) Creme Cabelo', 'Compra', 150.00, '2022-05-31', '2022-05-31', '2022-05-31', 6, 6, 'sem-foto.jpg', 2, 'Sim', 2, 10, 0, 0, 0),
(11, 'Compra - (5) Pomada Cabelo XXX', 'Compra', 185.00, '2022-05-31', '2022-05-31', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 1, 5, 0, 0, 0),
(14, 'Vencida', 'Conta', 88.00, '2022-05-31', '2022-05-30', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 0, 0, 0),
(17, 'Compra - (2) Creme Cabelo', 'Compra', 50.00, '2022-05-31', '2022-05-30', '2022-05-31', 6, 6, 'sem-foto.jpg', 2, 'Sim', 2, 2, 0, 0, 0),
(18, 'Compra - (30) Creme Cabelo', 'Compra', 500.00, '2022-05-31', '2022-05-31', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 2, 30, 0, 0, 0),
(19, 'Compra - (25) Pomada Cabelo XXX', 'Compra', 600.00, '2022-05-31', '2022-05-31', '0000-00-00', 6, 0, 'sem-foto.jpg', 1, 'Não', 1, 25, 0, 0, 0),
(20, 'Conta de Telefone', 'Conta', 380.00, '2022-05-31', '2022-06-02', '0000-00-00', 6, 0, '31-05-2022-19-50-37-09-11-2021-12-04-29-pdfteste.zip', 0, 'Não', 0, 0, 0, 0, 0),
(21, 'Compra - (40) Gel', 'Compra', 400.00, '2022-05-31', '2022-05-31', '2022-05-31', 6, 6, 'sem-foto.jpg', 1, 'Sim', 4, 40, 0, 0, 0),
(22, 'Comissão :Barba', 'Comissão', 1.45, '2022-06-09', '2022-06-09', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 10, 2, 0),
(25, 'Comissão - Luzes', 'Comissão', 8.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 4, 0),
(27, 'Comissão - Barba', 'Comissão', 8.50, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 2, 0),
(28, 'Comissão - Hidrataçao', 'Comissão', 5.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 5, 0),
(29, 'Comissão - Hidrataçao', 'Comissão', 5.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 5, 0),
(30, 'Comissão - Comissão - Barba', 'Comissão', 8.50, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 11, 2, 0),
(31, 'Comissão - Barba', 'Comissão', 8.50, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 11, 2, 0),
(32, 'Comissão - Hidrataçao', 'Comissão', 5.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 5, 0),
(33, 'Comissão - Luzes', 'Comissão', 8.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 4, 0),
(34, 'Comissão - Unha de Gel', 'Comissão', 10.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 9, 0),
(35, 'Comissão - Barba', 'Comissão', 8.50, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 2, 0),
(36, 'Comissão - Barba', 'Comissão', 8.50, '2022-06-09', '2022-06-09', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 10, 2, 0),
(37, 'Comissão - Mão e Pé', 'Comissão', 10.00, '2022-06-09', '2022-06-09', '2022-06-13', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 12, 8, 0),
(38, 'Comissão - Corte', 'Comissão', 10.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 11, 1, 3),
(39, 'Comissão - Barba', 'Comissão', 8.50, '2022-06-09', '2022-06-09', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 10, 2, 2),
(40, 'Comissão - Luzes', 'Comissão', 8.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 4, 4),
(41, 'Comissão - Hidrataçao', 'Comissão', 5.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 5, 1),
(42, 'Comissão - Luzes', 'Comissão', 8.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 11, 4, 4),
(43, 'Comissão - Hidrataçao', 'Comissão', 5.00, '2022-06-09', '2022-06-09', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 11, 5, 2),
(44, 'Comissão - Barba', 'Comissão', 8.50, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 2, 2),
(45, 'Comissão - Mão e Pé', 'Comissão', 10.00, '2022-06-09', '2022-06-09', '2022-06-13', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 12, 8, 2),
(46, 'Aluguél', 'Conta', 950.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 0, 0, 0),
(47, 'Compra de Pomadas', 'Conta', 360.00, '2022-06-13', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 1, 'Não', 0, 0, 0, 0, 0),
(48, 'Comissão - Hidrataçao', 'Comissão', 2.00, '2022-06-13', '2022-06-13', '2022-06-13', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 11, 5, 3),
(49, 'Comissão - Barba', 'Comissão', 1.45, '2022-06-13', '2022-06-13', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 6, 2, 2),
(50, 'Comissão - Barba', 'Comissão', 1.45, '2022-06-13', '2022-06-13', '2022-06-13', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 6, 2, 3),
(51, 'Conta de Luz', 'Conta', 800.00, '2022-06-13', '2022-06-13', '2022-06-13', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 0, 0, 0),
(52, 'Compra - (6) Creme Cabelo', 'Compra', 60.00, '2022-06-13', '2022-06-13', '2022-06-13', 6, 6, 'sem-foto.jpg', 0, 'Sim', 2, 6, 0, 0, 0),
(53, 'Compra de Giletes', 'Conta', 50.00, '2022-06-13', '2022-06-13', '2022-06-13', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 0, 0, 0),
(54, 'Compra - (5) Creme Hidratação', 'Compra', 10.00, '2022-06-14', '2022-06-14', '2022-06-14', 6, 6, 'sem-foto.jpg', 2, 'Sim', 2, 5, 0, 0, 0),
(55, 'Compra - (8) Creme para Barbas', 'Compra', 250.00, '2022-06-14', '2022-06-14', '2022-06-15', 6, 6, 'sem-foto.jpg', 0, 'Sim', 6, 8, 0, 0, 0),
(56, 'Compra - (6) Esmalte Longa Duração', 'Compra', 60.00, '2022-06-14', '2022-06-14', '2022-06-14', 6, 6, 'sem-foto.jpg', 4, 'Sim', 9, 6, 0, 0, 0),
(57, 'Compra - (9) Esmalte Risqué', 'Compra', 90.00, '2022-06-14', '2022-06-14', '0000-00-00', 6, 0, 'sem-foto.jpg', 2, 'Não', 8, 9, 0, 0, 0),
(58, 'Compra - (12) Loção Pós Barba', 'Compra', 120.00, '2022-06-14', '2022-06-14', '0000-00-00', 6, 0, 'sem-foto.jpg', 4, 'Não', 4, 12, 0, 0, 0),
(59, 'Compra - (10) Esmalte Longa Duração', 'Compra', 100.00, '2022-06-14', '2022-06-14', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 9, 10, 0, 0, 0),
(60, 'Compra - (10) Esmalte Risqué', 'Compra', 100.00, '2022-06-14', '2022-06-14', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 8, 10, 0, 0, 0),
(61, 'Compra - (60) Pomada Gel Modeladora', 'Compra', 600.00, '2022-06-14', '2022-06-14', '2022-06-14', 6, 6, 'sem-foto.jpg', 4, 'Sim', 7, 60, 0, 0, 0),
(62, 'Compra - (8) Pomada Modeladora', 'Compra', 80.00, '2022-06-14', '2022-06-14', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 5, 8, 0, 0, 0),
(63, 'Comissão - Barba', 'Comissão', 1.45, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 6, 2, 2),
(64, 'Comissão - Barba', 'Comissão', 1.45, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 6, 2, 2),
(65, 'Comissão - Barba', 'Comissão', 1.45, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 6, 2, 2),
(66, 'Comissão - Barba', 'Comissão', 1.45, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 6, 2, 2),
(67, 'Comissão - Corte', 'Comissão', 2.50, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 6, 1, 2),
(68, 'Comissão - Barba', 'Comissão', 1.45, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 10, 2, 3),
(69, 'Comissão - Hidrataçao', 'Comissão', 2.00, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 10, 5, 3),
(70, 'Comissão - Luzes', 'Comissão', 2.80, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 10, 4, 3),
(71, 'Comissão - Barba', 'Comissão', 1.45, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 10, 2, 3),
(72, 'Comissão - Hidrataçao', 'Comissão', 2.00, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 6, 5, 2),
(73, 'Comissão - Barba', 'Comissão', 1.45, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 6, 2, 2),
(74, 'Comissão - Luzes', 'Comissão', 2.80, '2022-06-15', '2022-06-15', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 6, 4, 2),
(75, 'Comissão - Barba', 'Comissão', 1.45, '2022-06-27', '2022-06-27', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 11, 2, 2),
(76, 'Comissão - Barba', 'Comissão', 1.45, '2022-06-27', '2022-06-27', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 11, 2, 2),
(77, 'Comissão - Barba', 'Comissão', 8.50, '2022-06-27', '2022-06-27', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 11, 2, 2),
(78, 'Comissão - Barba', 'Comissão', 8.50, '2022-06-27', '2022-06-27', '0000-00-00', 6, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 11, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `categoria` int(11) NOT NULL,
  `valor_compra` decimal(8,2) NOT NULL,
  `valor_venda` decimal(8,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `nivel_estoque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `categoria`, `valor_compra`, `valor_venda`, `estoque`, `foto`, `nivel_estoque`) VALUES
(1, 'Pomada para Barbas', 'Pomada para barbas...', 1, 24.00, 60.00, 12, '14-06-2022-16-44-05-BARBA-04.png', 5),
(2, 'Creme Hidratação', 'Creme para hidratar...', 2, 2.00, 35.00, 41, '14-06-2022-16-43-42-creme-hidrataçao.png', 5),
(4, 'Loção Pós Barba', 'Loção para barba creme X', 5, 10.00, 15.00, 48, '14-06-2022-16-43-17-BARBA-03.png', 5),
(5, 'Pomada Modeladora', 'Pomada Modeladora para Cabelos', 1, 10.00, 10.00, 8, '14-06-2022-16-42-47-BARBA-06.png', 5),
(6, 'Creme para Barbas', 'Evita a pele ficar hirritada...', 2, 31.25, 35.00, 8, '14-06-2022-16-44-44-BARBA-05.png', 5),
(7, 'Pomada Gel Modeladora', 'Pomada que tem uma ação de gel que mantém seu cabelo modelado mais tempo', 1, 10.00, 30.00, 60, '14-06-2022-17-30-52-pomada.png', 5),
(10, 'Creme Pele', 'Creme ...', 2, 0.00, 35.00, 8, '14-06-2022-16-52-39-p2.png', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `receber`
--

CREATE TABLE `receber` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `tipo` varchar(35) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data_lanc` date NOT NULL,
  `data_venc` date NOT NULL,
  `data_pgto` date NOT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `usuario_baixa` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `pessoa` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `servico` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `receber`
--

INSERT INTO `receber` (`id`, `descricao`, `tipo`, `valor`, `data_lanc`, `data_venc`, `data_pgto`, `usuario_lanc`, `usuario_baixa`, `foto`, `pessoa`, `pago`, `produto`, `quantidade`, `servico`, `funcionario`) VALUES
(30, 'Venda - (2) Creme Cabelo', 'Venda', 70.00, '2022-05-31', '2022-05-31', '2022-05-31', 6, 6, 'sem-foto.jpg', 0, 'Sim', 2, 2, 0, 0),
(32, 'Venda - (3) Pomada Cabelo XXX', 'Venda', 180.00, '2022-05-31', '2022-05-31', '2022-04-30', 6, 6, '31-05-2022-18-47-37-09-11-2021-10-17-10-pdfteste.pdf', 3, 'Sim', 1, 3, 0, 0),
(33, 'Corte', 'Conta', 35.00, '2022-05-31', '2022-05-31', '2022-05-30', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 0, 0),
(34, 'Barba', 'Conta', 20.00, '2022-05-31', '2022-05-30', '0000-00-00', 6, 0, 'sem-foto.jpg', 1, 'Não', 0, 0, 0, 0),
(36, 'Venda de Gel', 'Conta', 60.00, '2022-05-31', '2022-05-31', '0000-00-00', 6, 0, 'sem-foto.jpg', 3, 'Não', 0, 0, 0, 0),
(38, 'Barba', 'Serviço', 17.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 0, 0),
(40, 'Corte', 'Serviço', 25.00, '2022-06-06', '2022-06-08', '0000-00-00', 6, 0, 'sem-foto.jpg', 3, 'Não', 0, 0, 0, 0),
(41, 'Mão e Pé', 'Serviço', 50.00, '2022-06-06', '2022-06-06', '2022-05-06', 6, 6, 'sem-foto.jpg', 1, 'Sim', 0, 0, 0, 0),
(42, 'Mão e Pé', 'Serviço', 50.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 1, 'Sim', 0, 0, 0, 0),
(43, 'Corte', 'Serviço', 25.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 0, 0),
(44, 'Barba', 'Serviço', 17.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 0, 0),
(45, 'Barba', 'Serviço', 17.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 0, 0),
(46, 'Barba', 'Serviço', 17.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 0, 0),
(47, 'Barba', 'Serviço', 17.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 0, 0),
(48, 'Luzes', 'Serviço', 35.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 0, 0),
(49, 'Barba', 'Serviço', 17.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 0, 0),
(50, 'Corte', 'Serviço', 80.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 0, 0),
(52, 'Corte', 'Serviço', 80.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 1, 'Sim', 0, 0, 0, 0),
(53, 'Luzes', 'Serviço', 55.00, '2022-06-06', '2022-06-08', '2022-05-06', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 4, 0),
(54, 'Barba', 'Serviço', 17.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 11),
(55, 'Barba', 'Serviço', 15.00, '2022-06-06', '2022-06-06', '2022-06-06', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 10),
(56, 'Corte', 'Serviço', 25.00, '2022-06-06', '2022-06-07', '0000-00-00', 6, 0, 'sem-foto.jpg', 2, 'Não', 0, 0, 1, 10),
(57, 'Corte', 'Serviço', 25.00, '2022-06-06', '2022-06-07', '0000-00-00', 10, 0, 'sem-foto.jpg', 1, 'Não', 0, 0, 1, 10),
(58, 'Barba', 'Serviço', 17.00, '2022-06-08', '2022-06-08', '2022-06-08', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(59, 'Barba', 'Serviço', 17.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(60, 'Corte', 'Serviço', 25.00, '2022-06-09', '2022-06-10', '2022-06-09', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 1, 6),
(61, 'Barba', 'Serviço', 50.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 10),
(62, 'Barba', 'Serviço', 50.00, '2022-06-09', '2022-06-10', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 10),
(63, 'Barba', 'Serviço', 20.00, '2022-06-09', '2022-06-10', '2022-06-09', 6, 6, 'sem-foto.jpg', 4, 'Sim', 0, 0, 2, 11),
(64, 'Luzes', 'Serviço', 40.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 4, 0),
(65, 'Luzes', 'Serviço', 40.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 4, 6),
(66, 'Comissão - Barba', 'Serviço', 17.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(67, 'Comissão - Hidrataçao', 'Serviço', 40.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 1, 'Sim', 0, 0, 5, 6),
(68, 'Comissão - Hidrataçao', 'Serviço', 40.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 5, 6),
(69, 'Comissão - Barba', 'Serviço', 17.00, '2022-06-09', '2022-06-10', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 11),
(70, 'Comissão - Barba', 'Serviço', 17.00, '2022-06-09', '2022-06-10', '0000-00-00', 6, 0, 'sem-foto.jpg', 2, 'Não', 0, 0, 2, 10),
(71, 'Barba', 'Serviço', 17.00, '2022-06-09', '2022-06-10', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 11),
(72, 'Barba', 'Serviço', 17.00, '2022-06-09', '2022-06-10', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(73, 'Corte', 'Serviço', 25.00, '2022-06-09', '2022-06-10', '2022-06-09', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 1, 6),
(74, 'Hidrataçao', 'Serviço', 40.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 5, 6),
(75, 'Barba', 'Serviço', 60.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(76, 'Luzes', 'Serviço', 80.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 4, 'Sim', 0, 0, 4, 6),
(77, 'Unha de Gel', 'Serviço', 100.00, '2022-06-09', '2022-06-10', '2022-06-09', 6, 6, 'sem-foto.jpg', 1, 'Sim', 0, 0, 9, 6),
(78, 'Barba', 'Serviço', 17.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(79, 'Barba', 'Serviço', 17.00, '2022-06-09', '2022-06-10', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 10),
(80, 'Mão e Pé', 'Serviço', 50.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 8, 12),
(81, 'Mão e Pé', 'Serviço', 65.00, '2022-06-09', '2022-06-10', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 8, 12),
(82, 'Corte', 'Serviço', 25.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 1, 11),
(83, 'Barba', 'Serviço', 17.00, '2022-06-09', '2022-06-11', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 10),
(84, 'Luzes', 'Serviço', 35.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 4, 'Sim', 0, 0, 4, 6),
(85, 'Hidrataçao', 'Serviço', 40.00, '2022-06-09', '2022-06-13', '2022-06-09', 6, 6, 'sem-foto.jpg', 1, 'Sim', 0, 0, 5, 6),
(86, 'Luzes', 'Serviço', 35.00, '2022-06-09', '2022-06-15', '2022-06-09', 6, 6, 'sem-foto.jpg', 4, 'Sim', 0, 0, 4, 11),
(87, 'Hidrataçao', 'Serviço', 40.00, '2022-06-09', '2022-06-09', '2022-06-09', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 5, 11),
(88, 'Pagamento Atrasado', 'Conta', 260.00, '2022-06-13', '2022-06-13', '2022-06-13', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 0, 0),
(89, 'Hidrataçao', 'Serviço', 40.00, '2022-06-13', '2022-06-13', '2022-06-13', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 5, 11),
(90, 'Barba', 'Serviço', 17.00, '2022-06-13', '2022-06-13', '2022-06-13', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(91, 'Barba', 'Serviço', 17.00, '2022-06-13', '2022-06-13', '2022-06-13', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 2, 6),
(92, 'Venda - (4) Gel', 'Venda', 60.00, '2022-06-13', '2022-06-13', '2022-06-13', 6, 6, 'sem-foto.jpg', 2, 'Sim', 4, 4, 0, 0),
(93, 'Recebimento', 'Conta', 820.00, '2022-06-13', '2022-06-13', '2022-06-13', 6, 6, 'sem-foto.jpg', 0, 'Sim', 0, 0, 0, 0),
(94, 'Barba', 'Serviço', 17.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(95, 'Barba', 'Serviço', 17.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(96, 'Barba', 'Serviço', 17.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(97, 'Barba', 'Serviço', 17.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(98, 'Corte', 'Serviço', 25.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 1, 6),
(99, 'Barba', 'Serviço', 17.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 2, 10),
(100, 'Hidrataçao', 'Serviço', 40.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 5, 10),
(101, 'Luzes', 'Serviço', 35.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 4, 10),
(102, 'Barba', 'Serviço', 17.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 3, 'Sim', 0, 0, 2, 10),
(103, 'Hidrataçao', 'Serviço', 50.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 5, 6),
(104, 'Barba', 'Serviço', 17.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 6),
(105, 'Luzes', 'Serviço', 35.00, '2022-06-15', '2022-06-15', '2022-06-15', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 4, 6),
(106, 'Barba', 'Serviço', 0.00, '2022-06-27', '2022-06-27', '2022-06-27', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 11),
(107, 'Barba', 'Serviço', 17.00, '2022-06-27', '2022-06-27', '2022-06-27', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 11),
(108, 'Barba', 'Serviço', 0.00, '2022-06-27', '2022-06-27', '2022-06-27', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 11),
(109, 'Barba', 'Serviço', 17.00, '2022-06-27', '2022-06-27', '2022-06-27', 6, 6, 'sem-foto.jpg', 2, 'Sim', 0, 0, 2, 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `saidas`
--

CREATE TABLE `saidas` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `motivo` varchar(50) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `saidas`
--

INSERT INTO `saidas` (`id`, `produto`, `quantidade`, `motivo`, `usuario`, `data`) VALUES
(1, 1, 2, 'Sumiço', 6, '2022-05-31'),
(2, 1, 1, 'Furto', 6, '2022-05-31'),
(3, 2, 2, 'Roubo', 6, '2022-05-31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `categoria` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `dias_retorno` int(11) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `comissao` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `categoria`, `valor`, `foto`, `dias_retorno`, `ativo`, `comissao`) VALUES
(1, 'Corte', 1, 25.00, '14-06-2022-15-40-01-CORTE-01.png', 15, 'Sim', 10.00),
(2, 'Barba', 1, 17.00, '14-06-2022-15-39-39-BARBA-01.png', 7, 'Sim', 8.50),
(4, 'Luzes', 2, 35.00, '14-06-2022-15-39-29-BARBA-02.png', 20, 'Sim', 8.00),
(5, 'Hidrataçao', 2, 40.00, '14-06-2022-15-39-20-hidratacao.png', 180, 'Sim', 5.00),
(8, 'Mão e Pé', 5, 50.00, '14-06-2022-15-39-09-unha.png', 15, 'Sim', 10.00),
(9, 'Unha de Gel', 5, 150.00, '14-06-2022-15-38-59-unha-de-gel.png', 30, 'Sim', 10.00),
(10, 'Corte + Barba', 1, 45.00, '14-06-2022-15-40-40-CORTE-E-BARBA.png', 15, 'Sim', 15.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `textos_index`
--

CREATE TABLE `textos_index` (
  `id` int(11) NOT NULL,
  `titulo` varchar(25) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `textos_index`
--

INSERT INTO `textos_index` (`id`, `titulo`, `descricao`) VALUES
(1, 'Cortes Profissionais', 'Descrição relacionado ao texto, você poderá alterar essa descrição e o título do texto acima no painel administrativo, lá terá uma opção para gerenciar os recursos do site.'),
(2, 'Faça sua Barba', 'Descrição relacionado ao texto, você poderá alterar essa descrição e o título do texto acima no painel administrativo, lá terá uma opção para gerenciar os recursos do site.'),
(3, 'Mega Hair', 'Descrição relacionado ao texto, você poderá alterar essa descrição e o título do texto acima no painel administrativo, lá terá uma opção para gerenciar os recursos do site.'),
(4, 'Unha de Gel', 'Descrição relacionado ao texto, você poderá alterar essa descrição e o título do texto acima no painel administrativo, lá terá uma opção para gerenciar os recursos do site.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `senha` varchar(25) NOT NULL,
  `senha_crip` varchar(100) NOT NULL,
  `nivel` varchar(35) NOT NULL,
  `data` date NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `atendimento` varchar(5) NOT NULL,
  `tipo_chave` varchar(25) DEFAULT NULL,
  `chave_pix` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `cpf`, `senha`, `senha_crip`, `nivel`, `data`, `ativo`, `telefone`, `endereco`, `foto`, `atendimento`, `tipo_chave`, `chave_pix`) VALUES
(6, 'Admin', 'admin@admin', '000.000.000-00', '123', '202cb962ac59075b964b07152d234b70', 'Administrador', '2022-05-25', 'Sim', '(31) 99999-9999', 'Rua xxx, 8 ', '18-07-2024-17-31-03-Logo.png', 'Sim', NULL, NULL),
(8, 'Recepcionista Teste', 'recep@hotmail.com', '555.555.555-55', '123', '202cb962ac59075b964b07152d234b70', 'Recepcionista', '2022-05-30', 'Sim', '(44) 44444-4444', 'Rua C', '30-05-2022-13-19-34-08-03-2022-22-21-20-02-03-2022-09-59-04-Arthur.jpg', 'Não', NULL, NULL),
(9, 'Gerente', 'gerente@hotmail.com', '444.444.444-46', '123', '202cb962ac59075b964b07152d234b70', 'Gerente', '2022-05-30', 'Sim', '(22) 12121-2121', 'Rua C', 'sem-foto.jpg', 'Não', NULL, NULL),
(10, 'Barbeiro', 'barbeiro@hotmail.com', '555.555.555-58', '123', '202cb962ac59075b964b07152d234b70', 'Barbeiro', '2022-05-30', 'Sim', '(48) 54545-5555', 'Rua X', 'sem-foto.jpg', 'Sim', NULL, NULL),
(11, 'Barbeiro 2', 'barbeiro2@hotmail.com', '545.454.545-45', '123', '202cb962ac59075b964b07152d234b70', 'Barbeiro', '2022-05-30', 'Sim', '(85) 54545-454', 'Rua C', 'sem-foto.jpg', 'Sim', 'CPF', '545.454.545-45'),
(12, 'Cabelereira Teste', 'cabelereira@hotmail.com', '000.000.000-11', '123', '202cb962ac59075b964b07152d234b70', 'Cabelereira', '2022-06-06', 'Sim', '(25) 88888-8888', 'Rua X', 'sem-foto.jpg', 'Sim', 'CPF', '111.111.111-17'),
(13, 'Manicure', 'manicure@hotmail.com', '111.111.111-01', '123', '202cb962ac59075b964b07152d234b70', 'Manicure e Pedicure', '2022-06-06', 'Sim', '(11) 11111-1111', 'Rua C', 'sem-foto.jpg', 'Sim', 'Telefone', '3198888-8888'),
(14, 'Barbeiro 3', 'barbeiro3@hotmail.com', '888.888.888-81', '123', '202cb962ac59075b964b07152d234b70', 'Barbeiro', '2022-06-13', 'Sim', '(47) 77777-7777', 'Rua C', 'sem-foto.jpg', 'Sim', 'CPF', '111.111.111-12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios_permissoes`
--

CREATE TABLE `usuarios_permissoes` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios_permissoes`
--

INSERT INTO `usuarios_permissoes` (`id`, `usuario`, `permissao`) VALUES
(93, 13, 3),
(101, 13, 11),
(102, 13, 12),
(114, 9, 2),
(115, 9, 3),
(116, 9, 4),
(117, 9, 5),
(118, 9, 6),
(119, 9, 7),
(120, 9, 8),
(123, 9, 11),
(124, 9, 12),
(125, 9, 13),
(126, 9, 14),
(127, 9, 15),
(128, 9, 16),
(129, 9, 17),
(130, 9, 18),
(131, 9, 19),
(132, 9, 20),
(133, 9, 21),
(134, 9, 22),
(201, 10, 1),
(202, 10, 22),
(209, 11, 11),
(210, 11, 12),
(277, 8, 2),
(278, 8, 7),
(279, 8, 12),
(280, 8, 13),
(281, 8, 20),
(282, 11, 6),
(283, 11, 7),
(284, 8, 30),
(285, 8, 34),
(286, 8, 32);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cat_produtos`
--
ALTER TABLE `cat_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cat_servicos`
--
ALTER TABLE `cat_servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pagar`
--
ALTER TABLE `pagar`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `receber`
--
ALTER TABLE `receber`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `saidas`
--
ALTER TABLE `saidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `textos_index`
--
ALTER TABLE `textos_index`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `cat_produtos`
--
ALTER TABLE `cat_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cat_servicos`
--
ALTER TABLE `cat_servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `dias`
--
ALTER TABLE `dias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `pagar`
--
ALTER TABLE `pagar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `receber`
--
ALTER TABLE `receber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de tabela `saidas`
--
ALTER TABLE `saidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `textos_index`
--
ALTER TABLE `textos_index`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
