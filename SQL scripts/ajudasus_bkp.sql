-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: ajudasus
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agenda` (
  `idagenda` int NOT NULL AUTO_INCREMENT,
  `dia` varchar(45) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `FK_idespeci` int NOT NULL,
  `FK_idposto` int NOT NULL,
  PRIMARY KEY (`idagenda`),
  KEY `FK_idespeci` (`FK_idespeci`),
  KEY `FK_idposto` (`FK_idposto`),
  CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`FK_idespeci`) REFERENCES `especialidade` (`idespeci`),
  CONSTRAINT `agenda_ibfk_2` FOREIGN KEY (`FK_idposto`) REFERENCES `posto` (`idposto`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` VALUES (1,'SEGUNDA','07:00:00',1,1),(2,'SEGUNDA','09:30:00',5,1),(3,'TERÇA','07:00:00',3,1),(4,'TERÇA','10:00:00',2,1),(5,'QUARTA','07:00:00',2,1),(6,'QUARTA','08:40:00',1,1),(7,'QUINTA','07:00:00',4,1),(8,'QUINTA','09:00:00',6,1),(9,'SEXTA','07:00:00',5,1),(10,'SEXTA','11:00:00',1,1),(11,'SEGUNDA','07:00:00',2,2),(12,'SEGUNDA','09:30:00',3,2),(13,'TERÇA','07:00:00',2,2),(14,'TERÇA','10:00:00',5,2),(15,'QUARTA','07:00:00',1,2),(16,'QUARTA','08:40:00',1,2),(17,'QUINTA','07:00:00',4,2),(18,'QUINTA','09:00:00',5,2),(19,'SEXTA','07:00:00',1,2),(20,'SEXTA','11:00:00',2,2),(21,'SEGUNDA','07:00:00',1,3),(22,'SEGUNDA','09:30:00',2,3),(23,'TERÇA','07:00:00',1,3),(24,'TERÇA','10:00:00',2,3),(25,'QUARTA','07:00:00',1,3),(26,'QUARTA','08:40:00',2,3),(27,'QUINTA','07:00:00',1,3),(28,'QUINTA','09:00:00',2,3),(29,'SEXTA','07:00:00',1,3),(30,'SEXTA','11:00:00',2,3),(31,'SEGUNDA','07:00:00',1,4),(32,'SEGUNDA','09:30:00',5,4),(33,'TERÇA','07:00:00',3,4),(34,'TERÇA','10:00:00',2,4),(35,'QUARTA','07:00:00',2,4),(36,'QUARTA','08:40:00',1,4),(37,'QUINTA','07:00:00',4,4),(38,'QUINTA','09:00:00',6,4),(39,'SEXTA','07:00:00',5,4),(40,'SEXTA','11:00:00',1,4),(41,'SEGUNDA','07:30:00',1,5),(42,'SEGUNDA','10:00:00',5,5),(43,'TERÇA','07:30:00',5,5),(44,'TERÇA','10:00:00',2,5),(45,'QUARTA','07:30:00',2,5),(46,'QUARTA','10:00:00',1,5),(47,'QUINTA','07:30:00',1,5),(48,'QUINTA','10:00:00',5,5),(49,'SEXTA','07:30:00',5,5),(50,'SEXTA','10:00:00',2,5),(51,'SEGUNDA','07:00:00',1,6),(52,'SEGUNDA','09:30:00',5,6),(53,'TERÇA','07:00:00',3,6),(54,'TERÇA','10:00:00',2,6),(55,'QUARTA','07:00:00',2,6),(56,'QUARTA','08:40:00',1,6),(57,'QUINTA','07:00:00',4,6),(58,'QUINTA','09:00:00',6,6),(59,'SEXTA','07:00:00',5,6),(60,'SEXTA','11:00:00',1,6),(61,'SEGUNDA','07:00:00',1,7),(62,'SEGUNDA','09:30:00',5,7),(63,'TERÇA','07:00:00',3,7),(64,'TERÇA','10:00:00',2,7),(65,'QUARTA','07:00:00',2,7),(66,'QUARTA','08:40:00',1,7),(67,'QUINTA','07:00:00',4,7),(68,'QUINTA','09:00:00',6,7),(69,'SEXTA','07:00:00',5,7),(70,'SEXTA','11:00:00',1,7),(71,'SEGUNDA','07:00:00',1,8),(72,'SEGUNDA','09:30:00',5,8),(73,'TERÇA','07:00:00',3,8),(74,'TERÇA','10:00:00',2,8),(75,'QUARTA','07:00:00',2,8),(76,'QUARTA','08:40:00',1,8),(77,'QUINTA','07:00:00',4,8),(78,'QUINTA','09:00:00',6,8),(79,'SEXTA','07:00:00',5,8),(80,'SEXTA','11:00:00',1,8),(81,'SEGUNDA','07:00:00',1,9),(82,'SEGUNDA','09:30:00',5,9),(83,'TERÇA','07:00:00',3,9),(84,'TERÇA','10:00:00',2,9),(85,'QUARTA','07:00:00',2,9),(86,'QUARTA','08:40:00',1,9),(87,'QUINTA','07:00:00',4,9),(88,'QUINTA','09:00:00',6,9),(89,'SEXTA','07:00:00',5,9),(90,'SEXTA','11:00:00',1,9),(91,'SEGUNDA','07:00:00',1,10),(92,'SEGUNDA','09:30:00',5,10),(93,'TERÇA','07:00:00',3,10),(94,'TERÇA','10:00:00',2,10),(95,'QUARTA','07:00:00',2,10),(96,'QUARTA','08:40:00',1,10),(97,'QUINTA','07:00:00',4,10),(98,'QUINTA','09:00:00',6,10),(99,'SEXTA','07:00:00',5,10),(100,'SEXTA','11:00:00',1,10),(101,'SEGUNDA','07:00:00',1,11),(102,'SEGUNDA','09:30:00',5,11),(103,'TERÇA','07:00:00',3,11),(104,'TERÇA','10:00:00',2,11),(105,'QUARTA','07:00:00',2,11),(106,'QUARTA','08:40:00',1,11),(107,'QUINTA','07:00:00',4,11),(108,'QUINTA','09:00:00',6,11),(109,'SEXTA','07:00:00',5,11),(110,'SEXTA','11:00:00',1,11),(111,'SEGUNDA','07:00:00',1,12),(112,'SEGUNDA','09:30:00',5,12),(113,'TERÇA','07:00:00',3,12),(114,'TERÇA','10:00:00',2,12),(115,'QUARTA','07:00:00',2,12),(116,'QUARTA','08:40:00',1,12),(117,'QUINTA','07:00:00',4,12),(118,'QUINTA','09:00:00',6,12),(119,'SEXTA','07:00:00',5,12),(120,'SEXTA','11:00:00',1,12),(121,'SEGUNDA','07:00:00',1,13),(122,'SEGUNDA','09:30:00',5,13),(123,'TERÇA','07:00:00',3,13),(124,'TERÇA','10:00:00',2,13),(125,'QUARTA','07:00:00',2,13),(126,'QUARTA','08:40:00',1,13),(127,'QUINTA','07:00:00',4,13),(128,'QUINTA','09:00:00',6,13),(129,'SEXTA','07:00:00',5,13),(130,'SEXTA','11:00:00',1,13);
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidade` (
  `idespeci` int NOT NULL AUTO_INCREMENT,
  `especi` varchar(255) NOT NULL,
  PRIMARY KEY (`idespeci`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
INSERT INTO `especialidade` VALUES (1,'Clínico geral'),(2,'Pediatria'),(3,'Gastroenterologista'),(4,'Endoscopista'),(5,'Ginecologista'),(6,'Otorrinolaringologista ');
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `idmedico` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `CRM` int NOT NULL,
  `UF_CRM` varchar(2) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idmedico`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'Ricardo Pires Ribas',21715,'BA','dr.ricardoPiresRibas@EMAILFICTICIO.com.br'),(2,'Jan Johann Reinel de Castro',19181,'BA','dr.JanJohannReinel@EMAILFICTICIO.com.br'),(3,'Joel Almeida Filho',5875,'BA','dr.JoelAlmeidaFilho@EMAILFICTICIO.com.br'),(4,'Lorena Pithon Lins',21520,'BA','dra.LorenaPithonLins@EMAILFICTICIO.com.br'),(5,'Najla Godoy Doueidar',19176,'BA','dra.NajlaGodoyDoueidar@EMAILFICTICIO.com.br'),(6,'Iago Reinel de Castro',19,'BA','dr.IagoReineldeCastro@EMAILFICTICIO.com.br'),(7,'Filemon Jovita Soares',4457,'BA','dr.FilemonJovitaSoares@EMAILFICTICIO.com.br'),(8,'Pedro Roberto Bezerra Pereira',5082,'BA','dr.PedroRobertoBezerraPereira@EMAILFICTICIO.com.br'),(9,'Tarcísio Alves',27526,'BA','dr.TarcísioAlves@EMAILFICTICIO.com.br'),(10,'Danilo Caires Costa',24124,'BA','dr.DaniloCairesCosta@EMAILFICTICIO.com.br'),(11,'Laurindo Lopes da Silva Neto',7034,'BA','dr.LaurindoLopesdaSilvaNeto@EMAILFICTICIO.com.br'),(12,'Ruy Oliveira de Sousa',8892,'BA','dr.RuyOliveiradeSousa@EMAILFICTICIO.com.br'),(13,'Rafael Brandalize Brotto',39451,'BA','dr.RafaelBrandalizeBrotto@EMAILFICTICIO.com.br'),(14,'Antonio Edson Lopes',6731,'BA','dr.AntonioEdsonLopes@EMAILFICTICIO.com.br'),(15,'Alberto Henrique Palma Andrade',8732,'BA','dr.AlbertoHenriquePalmaAndrade@EMAILFICTICIO.com.br'),(16,'Pedro Schaer de Codes',17987,'BA','dr.PedroSchaerdeCodes@EMAILFICTICIO.com.br'),(17,'Victor Marques',27489,'BA','dr.VictorMarques@EMAILFICTICIO.com.br'),(18,'Silvane Francisco Chaves',3741,'BA','dr.SilvaneFranciscoChaves@EMAILFICTICIO.com.br');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico_has_especialidade`
--

DROP TABLE IF EXISTS `medico_has_especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico_has_especialidade` (
  `FK_idmedico` int NOT NULL,
  `FK_idespeci` int NOT NULL,
  PRIMARY KEY (`FK_idmedico`,`FK_idespeci`),
  KEY `FK_idespeci` (`FK_idespeci`),
  CONSTRAINT `medico_has_especialidade_ibfk_1` FOREIGN KEY (`FK_idmedico`) REFERENCES `medico` (`idmedico`),
  CONSTRAINT `medico_has_especialidade_ibfk_2` FOREIGN KEY (`FK_idespeci`) REFERENCES `especialidade` (`idespeci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico_has_especialidade`
--

LOCK TABLES `medico_has_especialidade` WRITE;
/*!40000 ALTER TABLE `medico_has_especialidade` DISABLE KEYS */;
INSERT INTO `medico_has_especialidade` VALUES (1,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(17,1),(18,1),(2,2),(6,2),(7,2),(4,3),(3,5),(5,5),(14,5),(15,6),(16,6);
/*!40000 ALTER TABLE `medico_has_especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico_has_posto`
--

DROP TABLE IF EXISTS `medico_has_posto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico_has_posto` (
  `FK_idmedico` int NOT NULL,
  `FK_idposto` int NOT NULL,
  PRIMARY KEY (`FK_idmedico`,`FK_idposto`),
  KEY `FK_idposto` (`FK_idposto`),
  CONSTRAINT `medico_has_posto_ibfk_1` FOREIGN KEY (`FK_idmedico`) REFERENCES `medico` (`idmedico`),
  CONSTRAINT `medico_has_posto_ibfk_2` FOREIGN KEY (`FK_idposto`) REFERENCES `posto` (`idposto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico_has_posto`
--

LOCK TABLES `medico_has_posto` WRITE;
/*!40000 ALTER TABLE `medico_has_posto` DISABLE KEYS */;
/*!40000 ALTER TABLE `medico_has_posto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posto`
--

DROP TABLE IF EXISTS `posto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posto` (
  `idposto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `cidade` varchar(255) NOT NULL,
  `UF` varchar(2) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `coordenadas` varchar(255) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `h_abre` time DEFAULT NULL,
  `h_fecha` time DEFAULT NULL,
  PRIMARY KEY (`idposto`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posto`
--

LOCK TABLES `posto` WRITE;
/*!40000 ALTER TABLE `posto` DISABLE KEYS */;
INSERT INTO `posto` VALUES (1,'Upa 24HRS','45600200','Itabuna','BA','Nossa Sra. de Fatima','rua o','S/N',NULL,'7332153677','00:00:00','00:00:00'),(2,'UBS Jose Edites','45607090','Itabuna','BA','São Caetano','Rua Floresta','64',NULL,'7336177550','07:00:00','17:00:00'),(3,'UBS Dr Calixto Midlej','45611122','Itabuna','BA','Nova Itabuna','Rua E','2',NULL,'7336161882','07:00:00','17:00:00'),(4,'UBS Dr Nilton Ramos','45600185','Itabuna','BA','Mangabinha','Rua Ubaldino Brandão','S/N',NULL,'7332119562','07:00:00','17:00:00'),(5,'Posto de Saude','45608100','Itabuna','BA','Sarinha Alcantara','Rua Bom Jesus da Lapa','323',NULL,NULL,'07:00:00','17:00:00'),(6,'UBS Alberto Teixeira Barreto','45604252','Itabuna','BA','Califórnia','Rua Santa Rita','442',NULL,'7332156963','07:00:00','17:00:00'),(7,'UBS Moise Hage','45601105','Itabuna','BA','Lomanto Júnior','Praça Rua Lomanto Júnior','S/N',NULL,'7336126152','07:00:00','21:00:00'),(8,'USF Dr. Candido Pereira','45606730','Itabuna','BA','Maria Pinheiro','Rua Nossa Sra. de Fátima','336-384',NULL,NULL,'07:00:00','17:00:00'),(9,'UBS Dr Roberto Santos','45602275','Itabuna','BA','Santo Antônio','Rua Santos Dumont','11',NULL,'7336134157','07:00:00','17:00:00'),(10,'USF Dr Elson Duarte','45603175','Itabuna','BA','Sival Palmeira','Baxia A','S/N',NULL,'7336162878','07:00:00','17:00:00'),(11,'USF Dr João José Soares','45600970','Itabuna','BA','Centro','Travessa Vila Das Dores','617',NULL,'7332156436','07:00:00','17:00:00'),(12,'Posto De Saude','45608485','Itabuna','BA','Vila Anália','Rua São Francisco','70',NULL,NULL,'07:00:00','17:00:00'),(13,'Posto Universal','45603415','Itabuna','BA','Alto Maron','Rua Maria Olívia Rebouças','S/N',NULL,'7332148325','00:00:00','00:00:00');
/*!40000 ALTER TABLE `posto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacao`
--

DROP TABLE IF EXISTS `publicacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacao` (
  `idpublicacao` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `conteudo` text,
  `data` date DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `FK_idposto` int NOT NULL,
  PRIMARY KEY (`idpublicacao`),
  KEY `FK_idposto` (`FK_idposto`),
  CONSTRAINT `publicacao_ibfk_1` FOREIGN KEY (`FK_idposto`) REFERENCES `posto` (`idposto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacao`
--

LOCK TABLES `publicacao` WRITE;
/*!40000 ALTER TABLE `publicacao` DISABLE KEYS */;
INSERT INTO `publicacao` VALUES (1,'Campanha de vacinação para crianças e adolescentes será encerrada no próximo dia 30','Crianças com idade entre 01 e 05 anos e também adolescentes que ainda não foram vacinadas devem ser levadas pelos pais ou responsáveis a uma\nunidade de saúde próxima de sua residência para que possam ser imunizadas contra a poliomielite ou atualizar a caderneta de vacina.O público-alvo\nda vacina contra a pólio são crianças com idade entre 1 e 5 anos. Já a campanha de multivacinação é destinada as crianças e adolescentes com até 15 anos. A campanha prossegue até o próximo dia 30.\nNo momento da vacina é imprescindível apresentar caderneta de vacina e cartão do SUS. Importante lembrar que os pais ou responsáveis também devem\nlevar cópia da primeira página da caderneta de vacina, e da página do controle de imunização, para que sejam atualizados os dados das crianças no \nsistema da Secretaria Municipal de Saúde.','2020-10-23','Assessoria de Comunicação',1),(2,'UPA 24h recebe adequações para realizar triagem de pacientes com suspeita do Covid','Para ser utilizada como um Centro de Triagem para pacientes com suspeita do Covid-19 (Coronavírus), a Unidade de Pronto Atendimento 24 horas\n(UPA 24 Horas), no bairro Monte Cristo, em Itabuna, passou uma série de adequações em sua estrutura física, de modo a atender os padrões \nsanitários exigidos pelos órgãos de saúde. Nos últimos dias, a Prefeitura de Itabuna, através da Secretaria Municipal de Saúde realizou \nintervenções que vão garantir a segurança, tanto dos pacientes, quanto dos profissionais de saúde que trabalham no local.\nA UPA 24h dispõe de 13 (treze) leitos, sendo 10 (dez) leitos clínicos e 3 (três) leitos de terapia invasiva para estabilização do paciente,\n com ventilador mecânico, monitor e bombas de infusão. Dentre as modificações realizadas na Unidade, destacam-se a instalação de guichês,\n que estarão garantindo maior isolamento da equipe profissional, e a modificação da garagem da ambulância, que mudou o fluxo de entrada de\n pacientes. De acordo com a Secretaria Municipal de Saúde, todas essas intervenções visaram a garantia dos padrões sanitários e de segurança\n para os servidores.Em paralelo as intervenções na UPA 24h, a Prefeitura de Itabuna segue trabalhando para ampliar a capacidade de atendimento\n no Hospital de Base Luís Eduardo Magalhães. Na última terça-feira, o Governo do Estado da Bahia anunciou que estará viabilizando a implantação\n de 21 leitos de UTI e 38 clínicos no Hospital de Base Luís Eduardo Magalhães. Em reunião com o Governador Rui Costa, o prefeito Fernando Gomes\n anunciou ainda o que o município irá disponibilizar R$ 4 milhões para a compra de 30 respiradores, que equiparão UTIs no Hospital de Base.','2020-04-24','Assessoria de Comunicação',1),(3,'UPA 24 horas recebe mais 5 respiradores e passa a contar com oito leitos de estabilização','A Unidade de Pronto Atendimento 24 horas\n (UPA 24 horas), em Itabuna, teve sua capacidade ampliada para o atendimento de pacientes com suspeita da COVID-19. A unidade que está sendo\n usada como um Centro de Triagem para pacientes com suspeita da doença, além de ter passado por uma série de adequações em sua estrutura física\n para atender os padrões sanitários e de segurança exigidos pelos órgãos de saúde, agora recebeu novos respiradores pulmonares.De acordo com \n Diretora do Departamento de Média e Alta Complexidade, Fabrícia Moura, o Governo do Estado doou cinco respiradores para a Média e Alta Complexidade,\n e os mesmos foram direcionados para UPA 24 horas, visando a ampliação dos leitos de estabilização, que tem a mesma finalidade de um leito de \n UTI, só que na UPA, por se tratar de um centro de triagem o paciente só pode permanecer por um período de 24 horas. “Estávamos com três leitos\n de estabilização, e agora com mais cinco, a UPA 24 horas passa a contar com oito leitos de estabilização”, informou.','2020-06-22','Assessoria de Comunicação',1),(4,'Posto de Saúde do Lomanto será contemplado nesta quarta com o Mutirão Fila Zero','O Posto de Saúde Moisés Hage, do bairro Lomanto, será contemplado nesta quarta-feira (04) com o Mutirão Fila Zero, uma iniciativa do \n Departamento de Regulação, Controle e Avaliação do SUS da Secretaria Municipal de Saúde. O objetivo é atender as demandas de exames e \n consultas de média complexidade que estão inseridas no Sistema de Regulação, de acordo com a ordem de entrada no referido sistema.Vale \n ressaltar que este Mutirão que visa à humanização do atendimento aos itabunenses chegará a todas as Unidades de Saúde (UBS/USF) do município\n – um total de 30 -, seguindo um cronograma de datas. Esta ação que tem início nesta quarta-feira (04) seguirá até o dia 15 de dezembro. Vale\n ressaltar que no Fila Zero serão oferecidos todos os procedimentos de Média Complexidade (Consultas e exames) que já são disponibilizados nas\n Unidades de Saúde (Postos de Saúde), procedimentos de média complexidade executados pela Policlínica Regional, além dos procedimentos que já\n são disponibilizados mensalmente para a Unidade.Atendimento Para o atendimento, o paciente deverá apresentar comprovante de residência no seu\n Nome ou declaração do Agente comunitário de Saúde que acompanha a família, CPF, RG, Cartão do SUS e Pedido do Médico (solicitação de exame ou\n consulta). Se o paciente não puder comparecer, seu representante poderá apresentar os documentos solicitados para agendar a consulta ou exame.','2020-03-03','Assessoria de Comunicação',7),(5,'Itabuna intensifica ações durante a Semana Nacional de Combate às Arboviroses ','A Prefeitura Municipal de Itabuna, através da Secretaria Municipal de Saúde/Coordenação de Endemias, tem intensificado as ações de combate\n as arboviroses, e no período de 30 de novembro a 04 de dezembro, este trabalho ganhará um reforço em razão da Semana Nacional de Combate às\n Arboviroses. De acordo com Roberto Góes, Coordenador de Endemias, esta é uma ação desenvolvida pelo Ministério da Saúde em parceria com a \n Secretaria Estadual de Saúde/Núcleo Regional Sul e Prefeitura Municipal de Itabuna.“Esta será uma mobilização nacional focada nos cuidados\n contra o Aedes Aegypti – mosquito transmissor da dengue, zika e chikungunya. Faremos uma ação direta com a comunidade abordando a importância\n dos cuidados, estaremos também nas praças, avenidas, distribuindo informativos, expondo com cartazes e faixas com o intuito de chamar a \n atenção da população para a necessidade de evitar a proliferação do mosquito Aedes Aegypti, principalmente conta do início do verão, quando\n há uma maior incidência”, explicou Roberto Góes.','2020-11-18','Assessoria de Comunicação',2),(6,'Prefeitura de Itabuna convoca pais e responsáveis para vacinação de crianças contra a poliomielite ','A Prefeitura Municipal de Itabuna, através da Secretaria Municipal de Saúde, convoca os pais e responsáveis de crianças com idade entre 01\n e 05 anos, para vacinação contra a poliomielite. É preciso comparecer ao posto de saúde mais próximo de sua residência, munido de caderneta \n de vacina e cartão do SUS da criança. Importante lembrar que também devem levar cópia da primeira página da caderneta e da página do controle\n de vacinas, para que sejam atualizados os dados das crianças no sistema da Secretaria Municipal de Saúde.Infelizmente, por conta da pandemia\n da COVID-19, muitos pais têm deixado de ir ao posto de saúde para vacinar suas crianças, o que levou até o momento, a menos de 50% de \n cobertura vacinal. Vale ressaltar, que estão sendo adotadas todas as medidas de segurança. A imunização ocorre em todas as unidades de saúde\n da cidade. Vale ressaltar que no bairro Santo Antônio, onde o posto de saúde está em reforma, a vacinação ocorre no Grupo Escolar Luiz Viana\n Filho, situado na avenida José Monstans.','2020-11-10','Assessoria de Comunicação',9),(11,'Teste Editado','Conteudo Editado','2020-12-10','Autor Editado',1);
/*!40000 ALTER TABLE `publicacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-10 19:14:35
