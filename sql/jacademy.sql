-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.0.29-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `profissao` varchar(32) NOT NULL,
  `nome` varchar(128) NOT NULL,
  `cpf` varchar(12) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `telefone` varchar(64) DEFAULT NULL,
  `endereco` varchar(64) NOT NULL,
  `bairro` varchar(32) NOT NULL,
  `cidade` varchar(32) NOT NULL,
  `estado` varchar(3) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `observacao` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'teste Profissao','nome0','999','demo@demoro:)','9999-999','lajdslkjk','lajdslkjk','lajdslkjk','laj','lajdslkjk','lajdslkjk'),(2,'teste Profissao','nome1','999','demo@demoro:)','9999-999','lajdslkjk','lajdslkjk','lajdslkjk','laj','lajdslkjk','lajdslkjk'),(3,'teste Profissao','nome2','999','demo@demoro:)','9999-999','lajdslkjk','lajdslkjk','lajdslkjk','laj','lajdslkjk','lajdslkjk'),(4,'teste Profissao','nome3','999','demo@demoro:)','9999-999','lajdslkjk','lajdslkjk','lajdslkjk','laj','lajdslkjk','lajdslkjk'),(5,'teste Profissao','nome4','999','demo@demoro:)','9999-999','lajdslkjk','lajdslkjk','lajdslkjk','laj','lajdslkjk','lajdslkjk'),(6,'teste Profissao','nome5','999','demo@demoro:)','9999-999','lajdslkjk','lajdslkjk','lajdslkjk','laj','lajdslkjk','lajdslkjk'),(7,'teste Profissao','nome6','999','demo@demoro:)','9999-999','lajdslkjk','lajdslkjk','lajdslkjk','laj','lajdslkjk','lajdslkjk'),(8,'teste Profissao','nome7','999','demo@demoro:)','9999-999','lajdslkjk','lajdslkjk','lajdslkjk','laj','lajdslkjk','lajdslkjk'),(9,'teste Profissao','nome8','999','demo@demoro:)','9999-999','lajdslkjk','lajdslkjk','lajdslkjk','laj','lajdslkjk','lajdslkjk'),(10,'teste Profissao','nome9','999','demo@demoro:)','9999-999','lajdslkjk','lajdslkjk','lajdslkjk','laj','lajdslkjk','lajdslkjk'),(11,'teste Profissao','nome10','999','demo@demoro:)','9999-999','lajdslkjk','lajdslkjk','lajdslkjk','laj','lajdslkjk','lajdslkjk');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursa`
--

DROP TABLE IF EXISTS `cursa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursa` (
  `idAluno` int(11) NOT NULL DEFAULT '0',
  `idDisciplina` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idAluno`,`idDisciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursa`
--

LOCK TABLES `cursa` WRITE;
/*!40000 ALTER TABLE `cursa` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  `descricao` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'1','1'),(2,'1','1'),(3,'2','2');
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `usuario` varchar(11) DEFAULT NULL,
  `senha` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'A171',12345);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ministra`
--

DROP TABLE IF EXISTS `ministra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ministra` (
  `idDisciplina` int(11) NOT NULL DEFAULT '0',
  `idProfessor` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idDisciplina`,`idProfessor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ministra`
--

LOCK TABLES `ministra` WRITE;
/*!40000 ALTER TABLE `ministra` DISABLE KEYS */;
/*!40000 ALTER TABLE `ministra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `profissao` varchar(32) NOT NULL,
  `titularidade` varchar(2) NOT NULL,
  `nome` varchar(128) NOT NULL,
  `cpf` varchar(12) NOT NULL,
  `sexo` varchar(2) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `telefone` varchar(64) DEFAULT NULL,
  `endereco` varchar(64) NOT NULL,
  `bairro` varchar(32) NOT NULL,
  `cidade` varchar(32) NOT NULL,
  `estado` varchar(3) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `observacao` varchar(512) DEFAULT NULL,
  `situacao` varchar(2) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'','','João','','',NULL,NULL,'','','','','',NULL,''),(2,'','','João','','',NULL,NULL,'','','','','',NULL,'');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-13  0:26:12
