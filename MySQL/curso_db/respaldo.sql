-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: libreria_cf
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `autor_id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `seudonimo` varchar(50) DEFAULT NULL,
  `genero` enum('M','F') DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `pais_origen` varchar(40) NOT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `cantidad_libros` int DEFAULT '0',
  PRIMARY KEY (`autor_id`),
  UNIQUE KEY `seudonimo` (`seudonimo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Stephen Edwin','King','Richard Bachman','M','1947-09-27','USA','2023-09-02 15:06:21',2),(2,'Joanne','Rowling','J.K Rowling','F','1947-09-27','Reino unido','2023-09-02 15:06:21',0),(3,'Daniel','Brown',NULL,'M','1964-06-22','USA','2023-09-02 15:06:21',0),(4,'John','Katzenbach ',NULL,'M','1950-06-23','USA','2023-09-02 15:06:21',0),(5,'John Ronald','Reuel Tolkien',NULL,'M','1892-01-03','Reino unido','2023-09-02 15:06:21',0),(6,'Miguel','de Unamuno',NULL,'M','1892-01-03','USA','2023-09-02 15:06:21',0),(7,'Arturo','P├®rez Reverte',NULL,'M','1951-11-25','Espa├▒a','2023-09-02 15:06:21',0),(8,'George Raymond','Richard Martin',NULL,'M','1948-09-20','USA','2023-09-02 15:06:21',0);
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `libro_id` int unsigned NOT NULL AUTO_INCREMENT,
  `autor_id` int unsigned NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(250) NOT NULL DEFAULT '',
  `paginas` int unsigned NOT NULL DEFAULT '0',
  `fecha_publicacion` date NOT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `ventas` int unsigned NOT NULL DEFAULT '0',
  `stock` int unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`libro_id`),
  KEY `autor_id` (`autor_id`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autores` (`autor_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,1,'Carrie','',0,'1974-01-01','2023-09-02 15:06:21',0,10),(2,1,'El misterio de Salmes Lot','',0,'1975-01-01','2023-09-02 15:06:21',0,10),(3,1,'El resplando','',0,'1977-01-01','2023-09-02 15:06:21',0,10),(4,1,'Rabia','',0,'1977-01-01','2023-09-02 15:06:21',0,10),(5,1,'El umbral de la noche','',0,'1978-01-01','2023-09-02 15:06:21',0,10),(6,1,'La danza de la muerte','',0,'1978-01-01','2023-09-02 15:06:21',0,10),(7,1,'La larga marcha','',0,'1979-01-01','2023-09-02 15:06:21',0,10),(8,1,'La zona muerta','',0,'1979-01-01','2023-09-02 15:06:21',0,10),(9,1,'Ojos de fuego','',0,'1980-01-01','2023-09-02 15:06:21',0,10),(10,1,'Cujo','',0,'1981-01-01','2023-09-02 15:06:21',0,10),(11,1,'La torre oscura 1 El pistolero','',0,'1982-01-01','2023-09-02 15:06:21',0,10),(12,1,'La torre oscura 2 La invocaci├│n','',0,'1987-01-01','2023-09-02 15:06:21',0,10),(13,1,'Apocalipsis','',0,'1990-01-01','2023-09-02 15:06:21',0,10),(14,1,'La torre oscura 3 Las tierras bald├¡as','',0,'1991-01-01','2023-09-02 15:06:21',0,10),(15,1,'La torre oscura 4 Bola de cristal','',0,'1997-01-01','2023-09-02 15:06:21',0,10),(16,1,'La torre oscura 5 Los de Calla','',0,'2003-01-01','2023-09-02 15:06:21',0,10),(17,1,'La torre oscura 6 La torre oscura','',0,'2004-01-01','2023-09-02 15:06:21',0,10),(18,1,'La torre oscura 7 Canci├│n de Susannah','',0,'2004-01-01','2023-09-02 15:06:21',0,10),(19,1,'La niebla','',0,'1981-01-01','2023-09-02 15:06:21',0,10),(20,2,'Harry Potter y la Piedra Filosofal','',0,'1997-06-30','2023-09-02 15:06:21',0,10),(21,2,'Harry Potter y la C├ímara Secreta','',0,'1998-07-02','2023-09-02 15:06:21',0,10),(22,2,'Harry Potter y el Prisionero de Azkaban','',0,'1999-07-08','2023-09-02 15:06:21',0,10),(23,2,'Harry Potter y el C├íliz de Fuego','',0,'2000-03-20','2023-09-02 15:06:21',0,10),(24,2,'Harry Potter y la Orden del F├®nix','',0,'2003-06-21','2023-09-02 15:06:21',0,10),(25,2,'Harry Potter y el Misterio del Pr├¡ncipe','',0,'2005-06-16','2023-09-02 15:06:21',0,10),(26,2,'Harry Potter y las Reliquias de la Muerte','',0,'2007-07-21','2023-09-02 15:06:21',0,10),(27,3,'Origen','',0,'2017-01-01','2023-09-02 15:06:21',0,10),(28,3,'Inferno','',0,'2013-01-01','2023-09-02 15:06:21',0,10),(29,3,'El simbolo perdido','',0,'2009-01-01','2023-09-02 15:06:21',0,10),(30,3,'El c├│digo Da Vinci','',0,'2006-01-01','2023-09-02 15:06:21',0,10),(31,3,'La consipiraci├│n','',0,'2003-01-01','2023-09-02 15:06:21',0,10),(32,4,'Al calor del verano','',0,'1982-01-01','2023-09-02 15:06:21',0,10),(33,4,'Un asunto pendiente','',0,'1987-01-01','2023-09-02 15:06:21',0,10),(34,4,'Juicio Final','',0,'1992-01-01','2023-09-02 15:06:21',0,10),(35,4,'La sombra','',0,'1995-01-01','2023-09-02 15:06:21',0,10),(36,4,'Juego de ingenios','',0,'1997-01-01','2023-09-02 15:06:21',0,10),(37,4,'El psicoanalista','',0,'2002-01-01','2023-09-02 15:06:21',0,10),(38,4,'La historia del loco','',0,'2004-01-01','2023-09-02 15:06:21',0,10),(39,4,'El hombre equivocado','',0,'2006-01-01','2023-09-02 15:06:21',0,10),(40,4,'El estudiante','',0,'2014-01-01','2023-09-02 15:06:21',0,10),(41,5,'El hobbit','',0,'1937-01-01','2023-09-02 15:06:21',0,10),(42,5,'Las dos torres','',0,'1954-01-01','2023-09-02 15:06:21',0,10),(43,5,'El se├▒or de los anillos','',0,'1954-01-01','2023-09-02 15:06:21',0,10),(44,5,'La comunidad del anillo','',0,'1954-01-01','2023-09-02 15:06:21',0,10),(45,5,'El retorno del rey','',0,'1955-01-01','2023-09-02 15:06:21',0,10),(46,6,'La niebla','',0,'1914-01-01','2023-09-02 15:06:21',0,10),(47,7,'Eva','',0,'2017-01-01','2023-09-02 15:06:21',0,10),(48,7,'Falc├│','',0,'2016-01-01','2023-09-02 15:06:21',0,10),(49,7,'Hombre buenos','',0,'2015-01-01','2023-09-02 15:06:21',0,10),(50,7,'Los barcos se pierden en tierra','',0,'2011-01-01','2023-09-02 15:06:21',0,10),(51,8,'Juego de tronos','',0,'1996-08-01','2023-09-02 15:06:21',0,10),(52,8,'Choque de reyes','',0,'1998-11-16','2023-09-02 15:06:21',0,10),(53,8,'Tormenta de espadas','',0,'2005-10-17','2023-09-02 15:06:21',0,10),(54,8,'Festin de cuervos','',0,'2011-07-12','2023-09-02 15:06:21',0,10),(55,8,'Danza de dragones','',0,'2011-07-12','2023-09-02 15:06:21',0,10),(56,1,'Area 81','',0,'2011-07-01','2023-09-02 15:16:06',0,10),(57,1,'El misterio de Salems Lot','',0,'1975-01-01','2023-09-02 15:19:25',0,10);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_actualizacion_libros` AFTER INSERT ON `libros` FOR EACH ROW BEGIN
  UPDATE autores SET cantidad_libros = cantidad_libros + 1 WHERE autor_id = NEW.autor_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `libros_usuarios`
--

DROP TABLE IF EXISTS `libros_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros_usuarios` (
  `libro_id` int unsigned NOT NULL,
  `usuario_id` int unsigned NOT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  KEY `libro_id` (`libro_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `libros_usuarios_ibfk_1` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`libro_id`),
  CONSTRAINT `libros_usuarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_usuarios`
--

LOCK TABLES `libros_usuarios` WRITE;
/*!40000 ALTER TABLE `libros_usuarios` DISABLE KEYS */;
INSERT INTO `libros_usuarios` VALUES (1,1,'2023-09-02 15:06:21'),(2,1,'2023-09-02 15:06:21'),(3,1,'2023-09-02 15:06:21'),(55,3,'2023-09-02 15:06:21'),(55,3,'2023-09-02 15:06:21'),(55,3,'2023-09-02 15:06:21');
/*!40000 ALTER TABLE `libros_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `usuario_id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(25) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Eduardo','Garc├¡a','eduardogpg','eduardo@codigofacilito.com','2023-09-02 15:06:21'),(2,'Codi1','Facilito','codigofacilito','ayuda@codigofacilito.com','2023-09-02 15:06:21'),(3,'Codi2','Facilito','codigofacilito','ayuda@codigofacilito.com','2023-09-02 15:06:21'),(4,'Codi3','Facilito','codigofacilito','ayuda@codigofacilito.com','2023-09-02 15:06:21');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-02 16:15:18
