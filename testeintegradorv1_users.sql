-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: testeintegradorv1
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hospedagem` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `valor` float NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('024fb8bd-259e-4e0a-9636-a22a491dbdec','Mariana Rocha','mariana.rocha@example.com','Charrua','678.901.234-56',650,'2024-06-05 00:00:00','2024-06-10 00:00:00','2024-11-27 12:14:56','2024-11-27 12:14:56'),('04632296-ed8c-48f7-895f-272c218ed1c2','Carlos Souza','carlos.souza@example.com','Chale','456.789.123-45',400,'2024-01-15 00:00:00','2024-01-20 00:00:00','2024-11-27 12:12:43','2024-11-27 12:12:43'),('09688993-7e76-4225-81f7-1df7df66554d','Juliana Alves','juliana.alves@example.com','Suite','456.789.012-34',550,'2024-05-05 00:00:00','2024-05-10 00:00:00','2024-11-27 12:14:44','2024-11-27 12:14:44'),('09e3fc8f-8339-45f7-b2e3-a0b313dbcdfa','Aerton Viado Douglas','aertondouglas@gmail.com','Domo','123.456.789-01',400,'2024-11-23 00:00:00','2024-12-28 00:00:00','2024-11-22 11:27:31','2024-11-22 11:27:31'),('1a8cdf39-222e-4685-8f99-dd4248b93877','Victor Souza','victor.souza@example.com','Domo','567.890.321-45',1100,'2024-10-15 00:00:00','2024-10-20 00:00:00','2024-11-27 12:20:09','2024-11-27 12:20:09'),('1ed9bb95-cdf4-4a72-b1c1-45ca0d6c8cf0','Fernanda Costa','fernanda.costa@example.com','Cabana','789.123.456-78',550,'2024-03-05 00:00:00','2024-03-10 00:00:00','2024-11-27 12:13:00','2024-11-27 12:13:00'),('27b11a53-9c7c-4313-9b2f-79686a08dea3','Ursula Lima','ursula.lima@example.com','Cabana','654.789.012-34',1050,'2024-10-05 00:00:00','2024-10-10 00:00:00','2024-11-27 12:19:50','2024-11-27 12:19:50'),('2e61da2f-4409-4740-96b1-96204de5911a','Beatriz Lima','beatriz.lima@example.com','Charrua','321.654.987-12',450,'2024-02-05 00:00:00','2024-02-10 00:00:00','2024-11-27 12:08:24','2024-11-27 12:08:24'),('2f799b64-1558-44f4-91cb-94855811ac47','Quintino Silva','quintino.silva@example.com','Domo','012.345.678-90',850,'2024-08-05 00:00:00','2024-08-10 00:00:00','2024-11-27 12:15:31','2024-11-27 12:15:31'),('34d40354-b5cb-4bd4-9f15-b8cebbacc39d','Pedro Almeida','pedro.almeida@example.com','Cabana','901.234.567-89',800,'2024-07-15 00:00:00','2024-07-20 00:00:00','2024-11-27 12:15:25','2024-11-27 12:15:25'),('4b3ef121-e52c-4581-80d6-9be7db0773c5','Wanda Oliveira','wanda.oliveira@example.com','Chale','678.901.432-56',1150,'2024-11-05 00:00:00','2024-11-10 00:00:00','2024-11-27 12:20:35','2024-11-27 12:20:35'),('67752a34-a1ee-4ae2-ba0d-8967adaa1c0d','Ana Silva','ana.silva@example.com','Domo','987.654.321-00',350,'2024-01-05 00:00:00','2024-01-10 00:00:00','2024-11-27 12:12:32','2024-11-27 12:12:32'),('6963ae52-bc54-49e7-a6a2-bb4b7ebbc9b9','Gabriel Santos','gabriel.santos@example.com','Domo','123.789.456-90',600,'2024-03-15 00:00:00','2024-03-20 00:00:00','2024-11-27 12:13:11','2024-11-27 12:13:11'),('6c31fcd8-4297-49ec-8e96-91176c33845a','Tutu Viado ','tutuviado@gmail.com','cabana','123.456.789-01',300,'2024-11-26 00:00:00','2024-12-28 00:00:00','2024-11-22 11:42:11','2024-11-22 11:42:11'),('79188437-9d68-4cce-81cd-31cf86b82725','Xavier Mendes','xavier.mendes@example.com','Charrua','789.210.345-67',1200,'2024-11-15 00:00:00','2024-11-20 00:00:00','2024-11-27 12:20:54','2024-11-27 12:20:54'),('a1f73ca9-e53b-4812-97aa-b1a7cd8b7821','Yara Santos','yara.santos@example.com','Suite','098.123.456-78',1250,'2024-12-05 00:00:00','2024-12-10 00:00:00','2024-11-27 12:21:25','2024-11-27 12:21:25'),('a6574830-4a57-4c62-8dd0-828630a8c032','Zeca Lima','zeca.lima@example.com','Cabana','901.432.567-89',1300,'2024-12-15 00:00:00','2024-12-20 00:00:00','2024-11-27 12:21:37','2024-11-27 12:21:37'),('b0e832a2-66c3-4fca-ac35-18b5f3b861aa','Rafaela Costa','rafaela.costa@example.com','Chale','123.456.789-02',900,'2024-08-15 00:00:00','2024-08-20 00:00:00','2024-11-27 12:18:51','2024-11-27 12:18:51'),('b58f9efb-415d-4975-8f52-bbf7d8726366','Nicolas Lima','nicolas.lima@example.com','Chale','789.012.345-67',700,'2024-06-15 00:00:00','2024-06-20 00:00:00','2024-11-27 12:15:01','2024-11-27 12:15:01'),('b5f209ae-a757-4556-9e67-d1a9aeb2f5d6','Olivia Mendes','olivia.mendes@example.com','Suite','890.123.456-78',750,'2024-07-05 00:00:00','2024-07-10 00:00:00','2024-11-27 12:15:20','2024-11-27 12:15:20'),('ba96846c-aa4f-406b-a7ec-e2c303fdb3aa','Tutu Viado ','tutuviado@gmail.com','Estacionamento','123.456.789-01',300,'2024-11-26 00:00:00','2024-12-28 00:00:00','2024-11-22 11:51:42','2024-11-22 11:51:42'),('c10604ad-1684-4c76-a991-fef86ce2d7e5','Sofia Pereira','sofia.pereira@example.com','Charrua','234.765.890-12',950,'2024-09-05 00:00:00','2024-09-10 00:00:00','2024-11-27 12:19:12','2024-11-27 12:19:12'),('d3d97dce-2a5c-4408-9077-86d5bc553171','Lucas Pereira','lucas.pereira@example.com','Domo','567.890.123-45',600,'2024-05-15 00:00:00','2024-05-20 00:00:00','2024-11-27 12:14:50','2024-11-27 12:14:50'),('d45a79ed-5a17-47d7-a8c2-d8685016ad8d','Igor Ferreira','igor.ferreira@example.com','Cabana','345.678.901-23',500,'2024-04-15 00:00:00','2024-04-20 00:00:00','2024-11-27 12:14:36','2024-11-27 12:14:36'),('d8860cce-0c94-4d6b-8052-0582b1ba7381','Thiago Fernandes','thiago.fernandes@example.com','Suite','345.678.109-23',1000,'2024-09-15 00:00:00','2024-09-20 00:00:00','2024-11-27 12:19:30','2024-11-27 12:19:30'),('dadf2d49-931b-4858-8242-a68cb8b4e6ef','Helena Martins','helena.martins@example.com','Chale','234.567.890-12',450,'2024-04-05 00:00:00','2024-04-10 00:00:00','2024-11-27 12:14:30','2024-11-27 12:14:30'),('ee0ad893-33f4-41d9-baeb-f0ba04be4a55','Daniel Oliveira','daniel.oliveira@example.com','Suite','654.321.987-34',500,'2024-02-15 00:00:00','2024-02-20 00:00:00','2024-11-27 12:12:53','2024-11-27 12:12:53'),('ff41e890-f2e7-4778-abab-a64835992386','Aerton Viado Douglas','aertondouglas@gmail.com','Domo','123.456.789-01',400,'2024-11-26 00:00:00','2024-12-28 00:00:00','2024-11-22 11:34:32','2024-11-22 11:34:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-29  8:54:10
