-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: bdtelemillonario.mysql.database.azure.com    Database: telemillonario
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `calificaciones`
--

DROP TABLE IF EXISTS `calificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` tinyint DEFAULT NULL,
  `calificacion` int DEFAULT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `idpersona` int DEFAULT NULL,
  `idobra` int DEFAULT NULL,
  `idsede` int DEFAULT NULL,
  `idelenco` int DEFAULT NULL,
  `fechaHora` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `personacalificacion` (`idpersona`),
  KEY `sedecalificacion` (`idsede`) /*!80000 INVISIBLE */,
  KEY `obracalificacion` (`idobra`),
  KEY `elencalificacion` (`idelenco`),
  CONSTRAINT `elencocalificacion` FOREIGN KEY (`idelenco`) REFERENCES `persona` (`id`),
  CONSTRAINT `obracalificacion` FOREIGN KEY (`idobra`) REFERENCES `obra` (`id`),
  CONSTRAINT `personacalificacion` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`),
  CONSTRAINT `sedecalificacion` FOREIGN KEY (`idsede`) REFERENCES `sede` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones`
--

LOCK TABLES `calificaciones` WRITE;
/*!40000 ALTER TABLE `calificaciones` DISABLE KEYS */;
INSERT INTO `calificaciones` VALUES (1,1,2,'La sala estaba muy sucia',86,NULL,1,NULL,'2022-07-15 14:30:44'),(2,1,1,'Mala iluminacion. Muy poco espacio entre asientos',86,NULL,2,NULL,'2022-07-15 14:30:44'),(3,1,5,'Me encanto el lugar',90,NULL,3,NULL,'2022-07-15 14:30:44'),(4,1,5,NULL,91,NULL,4,NULL,'2022-07-15 14:30:44'),(5,1,4,'Una sala bonita',90,NULL,5,NULL,'2022-07-15 14:30:44'),(6,1,3,NULL,86,NULL,6,NULL,'2022-07-15 14:30:44'),(7,1,4,'Me parecio un lugar acogedor',91,NULL,7,NULL,'2022-07-15 14:30:44'),(8,1,2,'No hubo una muy buena actuacion',86,1,NULL,NULL,'2022-07-15 14:30:44'),(9,1,4,NULL,86,2,NULL,NULL,'2022-07-15 14:30:44'),(10,1,3,'Mala escenografia. Todo bien en el resto de aspectos',90,2,NULL,NULL,'2022-07-15 14:30:44'),(11,1,2,NULL,90,3,NULL,NULL,'2022-07-15 14:30:44'),(12,1,1,NULL,91,4,NULL,NULL,'2022-07-15 14:30:44'),(13,1,5,NULL,91,5,NULL,NULL,'2022-07-15 14:30:44'),(14,1,5,'Espectacular',91,6,NULL,NULL,'2022-07-15 14:30:44'),(15,1,5,'Maravillosa obra',86,7,NULL,NULL,'2022-07-15 14:30:44'),(16,1,4,'Me ha encantado',86,8,NULL,NULL,'2022-07-15 14:30:44'),(17,1,2,NULL,90,9,NULL,NULL,'2022-07-15 14:30:44'),(18,1,3,NULL,90,10,NULL,NULL,'2022-07-15 14:30:44'),(19,1,3,NULL,91,11,NULL,NULL,'2022-07-15 14:30:44'),(20,1,4,NULL,91,12,NULL,NULL,'2022-07-15 14:30:44'),(21,1,5,NULL,90,13,NULL,NULL,'2022-07-15 14:30:44'),(22,1,5,NULL,91,13,NULL,NULL,'2022-07-15 14:30:44'),(23,1,4,'Entretenida',91,14,NULL,NULL,'2022-07-15 14:30:44'),(24,1,4,'Casi perfecta',90,15,NULL,NULL,'2022-07-15 14:30:44'),(25,1,3,'No me gusto la direccion, pero la obra no es mala del todo',86,16,NULL,NULL,'2022-07-15 14:30:44'),(26,1,1,NULL,91,NULL,NULL,1,'2022-07-15 14:30:44'),(27,1,2,NULL,90,NULL,NULL,2,'2022-07-15 14:30:44'),(28,1,3,NULL,91,NULL,NULL,3,'2022-07-15 14:30:44'),(29,1,4,NULL,90,NULL,NULL,4,'2022-07-15 14:30:44'),(30,1,5,NULL,91,NULL,NULL,5,'2022-07-15 14:30:44'),(31,1,5,NULL,90,NULL,NULL,6,'2022-07-15 14:30:44'),(32,1,4,NULL,91,NULL,NULL,7,'2022-07-15 14:30:44'),(33,1,3,NULL,90,NULL,NULL,8,'2022-07-15 14:30:44'),(34,1,2,NULL,91,NULL,NULL,9,'2022-07-15 14:30:44'),(35,1,2,NULL,90,NULL,NULL,10,'2022-07-15 14:30:44'),(36,1,2,NULL,91,NULL,NULL,11,'2022-07-15 14:30:44'),(37,1,1,NULL,90,NULL,NULL,12,'2022-07-15 14:30:44'),(38,1,1,NULL,86,NULL,NULL,13,'2022-07-15 14:30:44'),(39,1,3,NULL,86,NULL,NULL,14,'2022-07-15 14:30:44'),(40,1,3,NULL,86,NULL,NULL,15,'2022-07-15 14:30:44'),(41,1,4,NULL,86,NULL,NULL,16,'2022-07-15 14:30:44'),(42,1,5,NULL,86,NULL,NULL,17,'2022-07-15 14:30:44'),(43,1,2,NULL,86,NULL,NULL,18,'2022-07-15 14:30:44'),(44,1,1,NULL,86,NULL,NULL,19,'2022-07-15 14:30:44'),(45,1,3,NULL,91,NULL,NULL,20,'2022-07-15 14:30:44'),(46,1,3,NULL,91,NULL,NULL,21,'2022-07-15 14:30:44'),(47,1,3,NULL,90,NULL,NULL,22,'2022-07-15 14:30:44'),(48,1,4,NULL,91,NULL,NULL,23,'2022-07-15 14:30:44'),(49,1,5,NULL,90,NULL,NULL,24,'2022-07-15 14:30:44'),(50,1,5,NULL,91,NULL,NULL,25,'2022-07-15 14:30:44'),(51,1,5,NULL,90,NULL,NULL,26,'2022-07-15 14:30:44'),(52,1,5,NULL,91,NULL,NULL,27,'2022-07-15 14:30:44'),(53,1,4,NULL,90,NULL,NULL,28,'2022-07-15 14:30:44'),(54,1,4,NULL,91,NULL,NULL,29,'2022-07-15 14:30:44'),(55,1,4,NULL,90,NULL,NULL,30,'2022-07-15 14:30:44'),(56,1,4,NULL,91,NULL,NULL,31,'2022-07-15 14:30:44'),(57,1,4,NULL,90,NULL,NULL,32,'2022-07-15 14:30:44'),(58,1,1,NULL,86,NULL,NULL,33,'2022-07-15 14:30:44'),(59,1,1,NULL,86,NULL,NULL,34,'2022-07-15 14:30:44'),(60,1,1,NULL,86,NULL,NULL,35,'2022-07-15 14:30:44'),(61,1,2,NULL,86,NULL,NULL,36,'2022-07-15 14:30:44'),(62,1,2,NULL,86,NULL,NULL,37,'2022-07-15 14:30:44'),(63,1,2,NULL,86,NULL,NULL,38,'2022-07-15 14:30:44'),(64,1,3,NULL,91,NULL,NULL,39,'2022-07-15 14:30:44'),(65,1,3,NULL,90,NULL,NULL,40,'2022-07-15 14:30:44'),(66,1,3,NULL,91,NULL,NULL,41,'2022-07-15 14:30:44'),(67,1,4,NULL,90,NULL,NULL,42,'2022-07-15 14:30:44'),(68,1,5,NULL,91,NULL,NULL,43,'2022-07-15 14:30:44'),(69,1,5,NULL,90,NULL,NULL,44,'2022-07-15 14:30:44'),(70,1,1,NULL,91,NULL,NULL,45,'2022-07-15 14:30:44'),(71,1,1,NULL,90,NULL,NULL,46,'2022-07-15 14:30:44'),(72,1,1,NULL,91,NULL,NULL,47,'2022-07-15 14:30:44'),(73,1,5,NULL,90,NULL,NULL,48,'2022-07-15 14:30:44'),(74,1,5,NULL,91,NULL,NULL,49,'2022-07-15 14:30:44'),(75,1,5,NULL,86,NULL,NULL,50,'2022-07-15 14:30:44'),(76,1,4,NULL,86,NULL,NULL,51,'2022-07-15 14:30:44'),(77,1,1,NULL,86,NULL,NULL,52,'2022-07-15 14:30:44'),(78,1,3,NULL,86,NULL,NULL,53,'2022-07-15 14:30:44'),(79,1,3,NULL,86,NULL,NULL,54,'2022-07-15 14:30:44'),(80,1,2,NULL,86,NULL,NULL,55,'2022-07-15 14:30:44'),(81,1,2,NULL,86,NULL,NULL,56,'2022-07-15 14:30:44'),(82,1,3,NULL,91,NULL,NULL,57,'2022-07-15 14:30:44'),(83,1,3,NULL,90,NULL,NULL,58,'2022-07-15 14:30:44'),(84,1,5,NULL,91,NULL,NULL,59,'2022-07-15 14:30:44'),(85,1,5,NULL,90,NULL,NULL,60,'2022-07-15 14:30:44'),(86,1,5,NULL,91,NULL,NULL,61,'2022-07-15 14:30:44'),(87,1,4,NULL,90,NULL,NULL,62,'2022-07-15 14:30:44'),(88,1,4,NULL,91,NULL,NULL,63,'2022-07-15 14:30:44'),(89,1,4,NULL,90,NULL,NULL,64,'2022-07-15 14:30:44'),(90,1,5,NULL,91,NULL,NULL,65,'2022-07-15 14:30:44'),(91,1,2,NULL,90,NULL,NULL,66,'2022-07-15 14:30:44'),(92,1,2,NULL,91,NULL,NULL,67,'2022-07-15 14:30:44'),(93,1,2,NULL,90,NULL,NULL,68,'2022-07-15 14:30:44'),(94,1,2,NULL,91,NULL,NULL,69,'2022-07-15 14:30:44'),(95,1,2,NULL,90,NULL,NULL,70,'2022-07-15 14:30:44'),(96,1,3,NULL,91,NULL,NULL,71,'2022-07-15 14:30:44'),(97,1,3,NULL,90,NULL,NULL,72,'2022-07-15 14:30:44'),(98,1,3,NULL,91,NULL,NULL,73,'2022-07-15 14:30:44'),(99,1,4,NULL,90,NULL,NULL,74,'2022-07-15 14:30:44'),(100,1,4,NULL,86,NULL,NULL,75,'2022-07-15 14:30:44'),(101,1,4,NULL,86,NULL,NULL,76,'2022-07-15 14:30:44'),(102,1,1,NULL,86,NULL,NULL,77,'2022-07-15 14:30:44'),(103,1,2,NULL,86,NULL,NULL,78,'2022-07-15 14:30:44'),(104,1,2,NULL,86,NULL,NULL,79,'2022-07-15 14:30:44'),(105,1,2,NULL,86,NULL,NULL,80,'2022-07-15 14:30:44'),(106,1,2,NULL,86,NULL,NULL,81,'2022-07-15 14:30:44'),(107,1,3,NULL,91,NULL,NULL,82,'2022-07-15 14:30:44'),(108,1,3,NULL,90,NULL,NULL,83,'2022-07-15 14:30:44'),(109,1,3,NULL,90,NULL,NULL,84,'2022-07-15 14:30:44'),(110,1,5,NULL,91,NULL,NULL,85,'2022-07-15 14:30:44'),(111,1,3,'Aburrida a ratos',110,8,NULL,NULL,'2022-07-19 01:59:19.710568'),(112,1,4,'Un lugar muy acogedor',110,NULL,8,NULL,'2022-07-19 01:59:19.710568'),(113,1,3,NULL,110,NULL,NULL,2,'2022-07-19 01:59:19.710568'),(114,1,4,NULL,110,NULL,NULL,3,'2022-07-19 01:59:19.710568'),(115,1,5,NULL,110,NULL,NULL,62,'2022-07-19 01:59:19.710568');
/*!40000 ALTER TABLE `calificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(20) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `montototal` float DEFAULT NULL,
  `idfuncion` int DEFAULT NULL,
  `idpersona` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `comprafuncion` (`idfuncion`),
  KEY `comprapersona` (`idpersona`),
  CONSTRAINT `comprafuncion` FOREIGN KEY (`idfuncion`) REFERENCES `funcion` (`id`),
  CONSTRAINT `comprapersona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (79,'Asistido',5,75,26,110),(80,'Vigente',3,90,28,110),(81,'Asistido',3,90,38,110),(82,'Asistido',1,15,39,110);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distrito` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` tinyint DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES (1,1,'Ancon'),(2,1,'Ate'),(3,1,'Barranco'),(4,1,'Breña'),(5,1,'Carabayllo'),(6,1,'Cercado de Lima'),(7,1,'Chaclacayo'),(8,1,'Chorrillos'),(9,1,'Chosica'),(10,1,'Cieneguilla'),(11,1,'Comas'),(12,1,'El Agustino'),(13,1,'Independencia'),(14,1,'Jesus Maria'),(15,1,'La Molina'),(16,1,'La Victoria'),(17,1,'Lince'),(18,1,'Los Olivos'),(19,1,'Lurin'),(20,1,'Magdalena del Mar'),(21,1,'Miraflores'),(22,1,'Pachacamac'),(23,1,'Pucusana'),(24,1,'Pueblo Libre'),(25,1,'Puente Piedra'),(26,1,'Punta Hermosa'),(27,1,'Punta Negra'),(28,1,'Rimac'),(29,1,'San Bartolo'),(30,1,'San Borja'),(31,1,'San Isidro'),(32,1,'San Juan de Lurigancho'),(33,1,'San Juan de Miraflores'),(34,1,'San Luis'),(35,1,'San Martin de Porres'),(36,1,'San Miguel'),(37,1,'Santa Anita'),(38,1,'Santa Maria del Mar'),(39,1,'Santa Rosa'),(40,1,'Santiago de Surco'),(41,1,'Surquillo'),(42,1,'Villa el Salvador'),(43,1,'Villa María del Triunfo');
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` tinyint DEFAULT NULL,
  `ruta` varchar(500) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `idpersona` int DEFAULT NULL,
  `idsede` int DEFAULT NULL,
  `idobra` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `personafoto` (`idpersona`),
  KEY `sedefoto` (`idsede`),
  KEY `obrafoto` (`idobra`),
  CONSTRAINT `obrafoto` FOREIGN KEY (`idobra`) REFERENCES `obra` (`id`),
  CONSTRAINT `personafoto` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`),
  CONSTRAINT `sedefoto` FOREIGN KEY (`idsede`) REFERENCES `sede` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (1,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_17000nN2.jpg',0,NULL,NULL,2),(2,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_11734yG3.JPG',0,NULL,NULL,3),(3,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_8028yA4.jpg',0,NULL,NULL,4),(4,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_10671kA5.jpg',0,NULL,NULL,5),(5,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_3509mD6.jpg',0,NULL,NULL,6),(6,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_16797zF7.jpg',0,NULL,NULL,7),(7,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_3383wG8.jpg',0,NULL,NULL,8),(8,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_1784cR9.jpg',0,NULL,NULL,9),(9,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_10261cZ0.jpg',0,NULL,NULL,10),(10,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_2270vS1.jpg',0,NULL,NULL,11),(11,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_7080yT2.jpg',0,NULL,NULL,12),(12,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_629yQ1.jpg',0,NULL,NULL,14),(13,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_6689nL1.jpg',0,NULL,NULL,15),(14,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_209uH6.jpg',0,NULL,NULL,16),(15,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_13436gSi.jpg',1,NULL,NULL,1),(16,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_2051pJG.jpg',2,NULL,NULL,1),(17,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_1100gCW.jpg',3,NULL,NULL,1),(18,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_1453mY8.jpg',1,NULL,NULL,2),(19,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_11554xCf.jpg',2,NULL,NULL,2),(20,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_9860vP1.jpg',3,NULL,NULL,2),(21,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_3956hW-.jpg',1,NULL,NULL,3),(22,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_375mQ7.jpg',2,NULL,NULL,3),(23,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_11697sNo.jpg',3,NULL,NULL,3),(24,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_18316cFg.jpg',1,NULL,NULL,4),(25,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_1694jGn.jpg',2,NULL,NULL,4),(26,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_5239pCa.jpg',1,NULL,NULL,5),(27,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_11397rZ6.jpg',2,NULL,NULL,5),(28,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_3838dL9.jpg',3,NULL,NULL,5),(29,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_6786uN2.jpg',1,NULL,NULL,6),(30,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_9867jW1.jpg',2,NULL,NULL,6),(31,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_6400yAl.jpg',3,NULL,NULL,6),(32,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_13167oFl.jpg',1,NULL,NULL,7),(33,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_16416ySi.jpg',2,NULL,NULL,7),(34,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_13158bGe.jpg',3,NULL,NULL,7),(35,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_13051zS0.jpg',1,NULL,NULL,8),(36,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_10706fVe.jpg',2,NULL,NULL,8),(37,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_14843aDa.jpg',3,NULL,NULL,8),(38,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_928jTe.jpg',1,NULL,NULL,9),(39,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_13018oRo.jpg',2,NULL,NULL,9),(40,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_11656tP5.jpg',3,NULL,NULL,9),(41,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_18708fG%29.jpg',1,NULL,NULL,10),(42,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_748uJ6.jpg',2,NULL,NULL,10),(43,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_2241hHa.jpg',3,NULL,NULL,10),(44,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_12090zE8.jpg',4,NULL,NULL,10),(45,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_14979jOi.jpg',5,NULL,NULL,10),(46,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_9687mDl.jpg',1,NULL,NULL,11),(47,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_10374pPa.jpg',2,NULL,NULL,11),(48,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_4806iCl.jpg',3,NULL,NULL,11),(49,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_4325kMe.jpg',4,NULL,NULL,11),(50,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_8803uV2.jpg',5,NULL,NULL,11),(51,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_14802sZi.jpg',6,NULL,NULL,11),(52,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_8869wGa.jpg',1,NULL,NULL,12),(53,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_9147bM-.jpg',2,NULL,NULL,12),(54,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_18196wYl.jpg',3,NULL,NULL,12),(55,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_506kO3.jpg',0,NULL,NULL,13),(56,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_11018lY2.jpg',1,NULL,NULL,13),(57,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_3036bS6.jpg',2,NULL,NULL,13),(58,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_4025eVu.jpg',3,NULL,NULL,13),(59,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_15432hSm.jpg',1,NULL,NULL,14),(60,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_3227cT6.jpg',2,NULL,NULL,14),(61,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_16274xOo.jpg',3,NULL,NULL,14),(62,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_1388iPn.jpg',1,NULL,NULL,15),(63,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_15892sFr.jpg',2,NULL,NULL,15),(64,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_16244eC4.jpg',3,NULL,NULL,15),(65,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_17787xEa.JPG',1,NULL,NULL,16),(66,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_3722nS7.png',2,NULL,NULL,16),(67,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_12096oTR.jpg',3,NULL,NULL,16),(68,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_1100wKA.jpg',1,NULL,1,NULL),(69,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_12285eAt.jpg',2,NULL,1,NULL),(70,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_14944gF-.jpg',3,NULL,1,NULL),(71,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_2445uPl.jpg',4,NULL,1,NULL),(72,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_17732aM%20.jpg',5,NULL,1,NULL),(73,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_12021eC3.jpg',1,NULL,2,NULL),(74,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_18774lIc.jpg',2,NULL,2,NULL),(75,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_3208aH0.jpg',3,NULL,2,NULL),(76,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_7206fTl.jpg',4,NULL,2,NULL),(77,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_12348qG2.jpg',1,NULL,3,NULL),(78,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_11642iE-.jpg',2,NULL,3,NULL),(79,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_7097uRt.jpg',3,NULL,3,NULL),(80,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_4129lRz.jpg',4,NULL,3,NULL),(81,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_17782nF-.jpg',1,NULL,4,NULL),(82,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_12209aZl.jpg',2,NULL,4,NULL),(83,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_19928zRa.jpg',3,NULL,4,NULL),(84,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_14388bGC.jpg',1,NULL,5,NULL),(85,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_579jNy.jpg',2,NULL,5,NULL),(86,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_18260pZQ.jpg',1,NULL,6,NULL),(87,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_4039vYi.jpg',2,NULL,6,NULL),(88,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_16196zZY.jpg',1,NULL,7,NULL),(89,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_10242aAb.jpg',2,NULL,7,NULL),(90,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/obra_7887dSf.jpg',3,NULL,7,NULL),(91,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_13411nT2.jpg',0,1,NULL,NULL),(92,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_8590yA-.jpg',0,2,NULL,NULL),(93,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_15342pCW.jpg',0,3,NULL,NULL),(94,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_14539sX%20.png',0,4,NULL,NULL),(95,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_1122eI1.png',0,5,NULL,NULL),(96,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_14588lI2.png',0,6,NULL,NULL),(97,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_12019vHa.png',0,7,NULL,NULL),(98,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_19179eJU.jpg',0,8,NULL,NULL),(99,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_17205sCt.jpg',0,9,NULL,NULL),(100,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_2424xT2.png',0,10,NULL,NULL),(101,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_12431dH8.png',0,11,NULL,NULL),(102,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_2180tQ8.png',0,12,NULL,NULL),(103,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_14866pHr.png',0,13,NULL,NULL),(104,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_180aQl.png',0,14,NULL,NULL),(105,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_837vE2.png',0,15,NULL,NULL),(106,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_15776kVd.png',0,16,NULL,NULL),(107,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_9799kY2.png',0,17,NULL,NULL),(108,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_3437cQ2.png',0,18,NULL,NULL),(109,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_1697fC-.png',0,19,NULL,NULL),(110,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_10445uP2.png',0,20,NULL,NULL),(111,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_5305nL-.png',0,21,NULL,NULL),(112,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_15484mF%20.png',0,22,NULL,NULL),(113,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_13582mBp.png',0,23,NULL,NULL),(114,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_12392eTr.png',0,24,NULL,NULL),(115,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_19672dP2.png',0,25,NULL,NULL),(116,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_18574cR7.png',0,26,NULL,NULL),(117,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_14144aBp.png',0,27,NULL,NULL),(118,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_864rV2.png',0,28,NULL,NULL),(119,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_6736aO5.png',0,29,NULL,NULL),(120,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_8951qL-.png',0,30,NULL,NULL),(121,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_14333zD%20.png',0,31,NULL,NULL),(122,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_10724sK7.png',0,32,NULL,NULL),(123,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_10754mU8.png',0,33,NULL,NULL),(124,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_16970qT2.png',0,34,NULL,NULL),(125,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_11195gT1.png',0,35,NULL,NULL),(126,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_803wVe.png',0,36,NULL,NULL),(127,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_483xQ-.png',0,37,NULL,NULL),(128,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_19419lBp.png',0,38,NULL,NULL),(129,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_9100vGp.png',0,39,NULL,NULL),(130,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_6264kXa.png',0,40,NULL,NULL),(131,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_3035jLt.png',0,41,NULL,NULL),(132,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_13687nGa.png',0,42,NULL,NULL),(133,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_10090hQa.png',0,43,NULL,NULL),(134,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_9562qS%20.png',0,44,NULL,NULL),(135,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_13041bH%20.png',0,45,NULL,NULL),(136,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_1297gCa.png',0,46,NULL,NULL),(137,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_19734jLt.png',0,47,NULL,NULL),(138,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_17227dM%20.png',0,48,NULL,NULL),(139,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_2447pA-.png',0,49,NULL,NULL),(140,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_16243dVt.png',0,50,NULL,NULL),(141,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_7237tBC.png',0,51,NULL,NULL),(142,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_19993qEa.png',0,52,NULL,NULL),(143,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_8743hZe.png',0,53,NULL,NULL),(144,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_15881cCo.jpg',0,54,NULL,NULL),(145,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_2099fI2.jpg',0,55,NULL,NULL),(146,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_18757dFa.png',0,56,NULL,NULL),(147,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_10178wT7.png',0,57,NULL,NULL),(148,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_3222qQ-.jpg',0,58,NULL,NULL),(149,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_7803oCc.jpg',0,59,NULL,NULL),(150,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_16680rPc.jpg',0,60,NULL,NULL),(151,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/actor_16709hGl.png',0,61,NULL,NULL),(152,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_8560qLp.png',0,62,NULL,NULL),(153,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_17530aEa.png',0,63,NULL,NULL),(154,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_83gT2.png',0,64,NULL,NULL),(155,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_2378zUa.png',0,65,NULL,NULL),(156,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_8567mOn.png',0,66,NULL,NULL),(157,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_6570aO2.png',0,67,NULL,NULL),(158,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_6424rY2.png',0,68,NULL,NULL),(159,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_13636oXa.png',0,69,NULL,NULL),(160,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_11139tH0.png',0,70,NULL,NULL),(161,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_1789tSu.png',0,71,NULL,NULL),(162,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_250aRa.png',0,72,NULL,NULL),(163,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_13898nOn.png',0,73,NULL,NULL),(164,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_8977yH2.png',0,74,NULL,NULL),(165,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_9982wY%20.png',0,75,NULL,NULL),(166,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_18294qH2.png',0,76,NULL,NULL),(167,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_10002cI3.png',0,77,NULL,NULL),(168,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_3698uY2.png',0,78,NULL,NULL),(169,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_17889iL2.png',0,79,NULL,NULL),(170,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_14107zKr.png',0,80,NULL,NULL),(171,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_552sZ9.png',0,81,NULL,NULL),(172,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_1115rSp.png',0,82,NULL,NULL),(173,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_10404xYc.jpg',0,83,NULL,NULL),(174,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_19922bEi.jpg',0,84,NULL,NULL),(175,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/director_12647rPo.jpg',0,85,NULL,NULL),(176,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/funcion_6500fK1.JPG',0,NULL,NULL,1),(177,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/sede_3981bQe.png',0,NULL,1,NULL),(178,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/sede_17968wHi.png',0,NULL,2,NULL),(179,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/sede_8974rWe.jpg',0,NULL,3,NULL),(180,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/sede_16533iKe.jpg',0,NULL,4,NULL),(181,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/sede_1011zSC.JPG',0,NULL,5,NULL),(182,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/sede_553zMe.jpg',0,NULL,6,NULL),(183,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/sede_3675yTo.jpg',0,NULL,7,NULL),(184,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/sede_3780wQ8.jpg',0,NULL,8,NULL),(185,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/sede_2868fFe.jfif',1,NULL,8,NULL),(186,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/sede_10261gBa.jpeg',2,NULL,8,NULL),(187,1,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/usuario_9874pAa.jpg',0,111,NULL,NULL);
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcion`
--

DROP TABLE IF EXISTS `funcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` tinyint DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `inicio` time DEFAULT NULL,
  `fin` time DEFAULT NULL,
  `precioentrada` float DEFAULT NULL,
  `stockentradas` int DEFAULT NULL,
  `cantidadasistentes` int DEFAULT NULL,
  `idsala` int DEFAULT NULL,
  `idobra` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `funcionsala` (`idsala`),
  KEY `funcionobra` (`idobra`),
  CONSTRAINT `funcionobra` FOREIGN KEY (`idobra`) REFERENCES `obra` (`id`),
  CONSTRAINT `funcionsala` FOREIGN KEY (`idsala`) REFERENCES `sala` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcion`
--

LOCK TABLES `funcion` WRITE;
/*!40000 ALTER TABLE `funcion` DISABLE KEYS */;
INSERT INTO `funcion` VALUES (26,1,'2022-07-18','23:40:00','23:55:00',15,10,5,62,8),(27,1,'2022-07-18','23:45:00','00:10:00',14,10,0,61,7),(28,1,'2022-07-19','20:00:00','20:25:00',30,7,3,61,11),(29,1,'2022-07-22','14:49:00','15:14:00',15,15,0,3,4),(30,1,'2022-07-22','21:50:00','22:15:00',15,24,0,3,1),(31,1,'2022-08-10','19:00:00','19:24:00',14,20,0,8,6),(32,1,'2022-08-04','14:00:00','14:26:00',30,40,0,8,16),(33,1,'2022-07-29','16:49:00','17:49:00',30,37,0,5,15),(34,1,'2022-07-28','19:00:00','20:30:00',50,40,0,7,2),(35,1,'2022-07-18','23:57:00','00:22:00',30,10,0,6,1),(36,1,'2022-07-22','18:54:00','19:09:00',25,25,0,3,4),(37,1,'2022-07-19','00:20:00','00:23:00',15,10,0,61,2),(38,1,'2022-07-19','01:24:00','01:29:00',30,7,3,62,4),(39,1,'2022-07-19','01:23:00','01:48:00',15,9,1,61,5),(40,1,'2022-07-20','13:38:00','14:03:00',15,14,0,61,4),(41,1,'2022-07-21','02:40:00','03:05:00',15,14,0,61,3),(42,1,'2022-07-22','01:49:00','02:14:00',15,14,0,61,4),(43,1,'2022-08-18','03:05:00','03:30:00',15,14,0,11,3),(44,1,'2022-08-19','03:07:00','03:31:00',14,13,0,11,3),(45,1,'2022-07-29','03:15:00','03:39:00',14,10,0,11,3),(46,1,'2022-07-28','15:09:00','15:34:00',15,27,0,10,1),(47,1,'2022-07-30','15:15:00','15:40:00',46,45,0,10,1),(48,1,'2022-07-28','15:28:00','16:58:00',14,34,0,73,5),(49,1,'2022-08-18','14:00:00','15:00:00',37,30,0,71,1),(50,1,'2022-07-20','10:30:00','11:00:00',15,10,0,70,1);
/*!40000 ALTER TABLE `funcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionelenco`
--

DROP TABLE IF EXISTS `funcionelenco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionelenco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idpersona` int DEFAULT NULL,
  `idfuncion` int DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `funcione` (`idfuncion`),
  KEY `personaf` (`idpersona`),
  CONSTRAINT `funcione` FOREIGN KEY (`idfuncion`) REFERENCES `funcion` (`id`),
  CONSTRAINT `personaf` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionelenco`
--

LOCK TABLES `funcionelenco` WRITE;
/*!40000 ALTER TABLE `funcionelenco` DISABLE KEYS */;
INSERT INTO `funcionelenco` VALUES (157,62,26,1),(158,2,26,1),(159,3,26,1),(160,62,27,1),(161,4,27,1),(162,5,27,1),(163,66,28,1),(164,5,28,1),(165,6,28,1),(166,63,29,1),(167,4,29,1),(168,64,29,1),(169,6,29,1),(170,11,29,1),(171,13,29,1),(172,14,29,1),(173,15,29,1),(174,63,30,1),(175,3,30,1),(176,65,30,1),(177,4,30,1),(178,5,30,1),(179,62,31,1),(180,4,31,1),(181,64,31,1),(182,5,31,1),(183,6,31,1),(184,81,32,1),(185,3,32,1),(186,83,32,1),(187,5,32,1),(188,84,32,1),(189,6,32,1),(190,35,32,1),(191,36,32,1),(192,38,32,1),(193,81,33,1),(194,37,33,1),(195,83,33,1),(196,45,33,1),(197,46,33,1),(198,58,33,1),(199,77,34,1),(200,25,34,1),(201,78,34,1),(202,26,34,1),(203,80,34,1),(204,27,34,1),(205,28,34,1),(206,69,35,1),(207,6,35,1),(208,70,35,1),(209,17,35,1),(210,19,35,1),(211,20,35,1),(212,21,35,1),(213,64,36,1),(214,5,36,1),(215,62,37,1),(216,3,37,1),(217,4,37,1),(218,6,37,1),(219,63,38,1),(220,4,38,1),(221,64,38,1),(222,6,38,1),(223,63,39,1),(224,4,39,1),(225,5,39,1),(226,61,40,1),(227,3,40,1),(228,63,40,1),(229,4,40,1),(230,6,40,1),(231,62,41,1),(232,4,41,1),(233,64,41,1),(234,5,41,1),(235,62,42,1),(236,2,42,1),(237,65,42,1),(238,3,42,1),(239,5,42,1),(240,63,43,1),(241,4,43,1),(242,6,43,1),(243,62,44,1),(244,1,44,1),(245,63,44,1),(246,4,44,1),(247,5,44,1),(248,63,45,1),(249,3,45,1),(250,65,45,1),(251,4,45,1),(252,64,46,1),(253,2,46,1),(254,65,46,1),(255,3,46,1),(256,5,46,1),(257,63,47,1),(258,6,47,1),(259,22,47,1),(260,69,48,1),(261,1,48,1),(262,71,48,1),(263,3,48,1),(264,5,48,1),(265,82,49,1),(266,24,49,1),(267,84,49,1),(268,26,49,1),(269,28,49,1),(270,29,49,1),(271,61,50,1),(272,37,50,1),(273,64,50,1),(274,38,50,1),(275,65,50,1),(276,40,50,1);
/*!40000 ALTER TABLE `funcionelenco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` tinyint DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,1,'Tragedia'),(2,1,'Comedia'),(3,1,'Drama'),(4,1,'Musical'),(5,1,'Ópera'),(6,1,'Monólogo');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obra`
--

DROP TABLE IF EXISTS `obra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` tinyint DEFAULT NULL,
  `calificacion` float DEFAULT NULL,
  `restriccionedad` tinyint DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obra`
--

LOCK TABLES `obra` WRITE;
/*!40000 ALTER TABLE `obra` DISABLE KEYS */;
INSERT INTO `obra` VALUES (1,1,2,0,'El mar fue primero, primero fue el mar','A comienzos del siglo XX, en una pequeña localidad bañada por las aguas del océano Atlántico, unos cuantos vecinos tendrán que enfrentarse a un serio problema ecológico. ¿Lograrán solucionarlo?'),(2,1,3.5,1,'Radio Resistencia','En un mundo apocalíptico en el que la humanidad ha sido atacada por un enemigo indefinido, del que no se hace explícita su naturaleza durante la obra, un grupo de supervivientes se ha refugiado en las instalaciones de una antigua emisora de radio llamada Radio Resistencia. La convivencia no es fácil ya que a los problemas generados por la amenaza externa se sumarán conflictos sentimentales y existenciales entre los habitantes de la emisora.'),(3,1,2,0,'¿Quien quiere ser becario?','La Consejería de Educación, ha organizado el concurso 10 preguntas que darán a nuestro valiente concursante la posibilidad de pasar un año estudiando en Granada con todos los gastos pagados. ¿Sabrá Misho todas las respuestas? ¿Podrán ayudarle sus recuerdos? ¿Será todo un sueño?'),(4,1,1,1,'El sargento Canuto','El Sargento Canuto es una historia de aventuras en la que un sargento de la Marina Real se encuentra envuelto en una serie de incidentes en el extranjero. Tras una serie de misiones peligrosas, el sargento se ve forzado a huir de su país y se embarca en una aventura épica para regresar a casa.'),(5,1,5,1,'Amar su propia muerte','Es la historia de un maestro de escuela que también trabaja como agente penitenciario en un penal de máxima seguridad. Por esa privilegiada experiencia asume una misión; encontrar el momento exacto en que las personas divergen su camino al sufrimiento y llegan a perder su libertad.'),(6,1,5,0,'El amor alcalde','Entremés en el que un grupo de presos piden consejos para curarse de los efectos negativos del amor, sirviéndose para ello de chistes, equívocos, juegos verbales y acciones bufonescas.'),(7,1,5,0,'El amor de la estanciera','Chepa, la hija de Pancha y Cancho, debe elegir con quien casarse; si con un pirata portugués llamado Marcos Figueira, que destila riqueza, o con el gaucho Juancho Perucho, que no acierta con sus comentarios.'),(8,1,3.5,1,'Ollantay','El general de los ejércitos incas, Ollantay, es un guerrero de origen plebeyo que, por sus excelentes servicios, ha sido elevado a la nobleza de privilegio y al que se le han concedido numerosos premios.'),(9,1,2,1,'Hima Sumac','La heroína joven indígena que es la novia prometida del guerrero quechua, Túpac-Amaru, se enamora de un español avaro y doble que solo se interesa en usarla para ganar acceso a las criptas famosas del tesoro incaico, perdidas de vista desde la muerte de Atahualpa.'),(10,1,3,1,'La casa de Bernarda Alba','Tras la muerte de su segundo esposo, Bernarda Alba se recluye e impone un luto riguroso y asfixiante por ocho años, prohibiendo a sus cinco hijas a que vayan a la fiesta. Cuando Angustias, la primogénita y la única hija del primer marido, hereda una fortuna, atrae a un pretendiente, Pepe el Romano.'),(11,1,3,1,'La Celestina','Calisto, un joven e impulsivo hacendado, está enamorado de Melibea, una adolescente de buena familia a la que sus padres proyectan casar conveniente y rápidamente. La pasión le mantiene en tal estado de excitación que acepta la sugerencia de su criado Sempronio de obtener los favores de su amada con la mediación de una hechicera cuya siniestra reputación es bien conocida.'),(12,1,4,1,'Tres sombreros de copa','La fuerza dramática de la obra radica en la oposición de dos mundos irreconciliables: el de la burguesía provinciana esclavizada por mil convenciones, y el de un grupo de automarginados de esa sociedad que buscan la libertad y rechazan la moral hipócrita.'),(13,1,5,1,'La vida es sueño','El drama gira en torno a la privación de la libertad de Segismundo por parte de su padre, el rey Basilio de Polonia, quien lo encierra por miedo a que se cumplan las predicciones de un oráculo consultado, según las cuales este lo vencería y humillaría.'),(14,1,4,1,'El infierno de Dante','Dante, el personaje principal, viajará por los múltiples círculos del infierno guiado por el poeta romano Virgilio. Un viaje lleno de simbolismos donde verá Dante el castigo de los pecadores.'),(15,1,4,1,'Don Juan Tenorio','Relata la historia de una apuesta que realiza Don Juan con Don Luis Mejía, la cual consiste en que Don Juan Tenorio debe conquistar en un tiempo muy corto a dos mujeres, totalmente distintas, una era la novicia de un convento y la otra era la novia de su gran rival el propio Luis Mejía.'),(16,1,3,0,'Romeo y Julieta','En Verona, dos jóvenes enamorados, de dos familias enemigas, son víctimas de una situación de odio y violencia que ni desean ni pueden remediar.');
/*!40000 ALTER TABLE `obra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obragenero`
--

DROP TABLE IF EXISTS `obragenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obragenero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` tinyint DEFAULT NULL,
  `idgenero` int DEFAULT NULL,
  `idobra` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `generoo` (`idgenero`),
  KEY `obrag` (`idobra`),
  CONSTRAINT `generoo` FOREIGN KEY (`idgenero`) REFERENCES `genero` (`id`),
  CONSTRAINT `obrag` FOREIGN KEY (`idobra`) REFERENCES `obra` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obragenero`
--

LOCK TABLES `obragenero` WRITE;
/*!40000 ALTER TABLE `obragenero` DISABLE KEYS */;
INSERT INTO `obragenero` VALUES (1,1,1,1),(2,1,3,1),(3,1,3,2),(4,1,2,3),(5,1,2,4),(6,1,3,4),(7,1,6,5),(8,1,2,6),(9,1,2,7),(10,1,3,7),(11,1,5,8),(12,1,3,9),(13,1,3,10),(14,1,2,11),(15,1,3,11),(16,1,4,12),(17,1,1,13),(18,1,3,13),(19,1,1,14),(20,1,3,14),(21,1,2,15),(22,1,3,15),(23,1,1,16),(24,1,3,16);
/*!40000 ALTER TABLE `obragenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` tinyint DEFAULT NULL,
  `idtarjeta` int DEFAULT NULL,
  `numerotarjeta` varchar(100) DEFAULT NULL,
  `fechapago` datetime DEFAULT NULL,
  `idcompra` int DEFAULT NULL,
  `qrlink` varchar(400) DEFAULT NULL,
  `codigo` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `comprapago` (`idcompra`),
  KEY `tarjetapago` (`idtarjeta`),
  CONSTRAINT `comprapago` FOREIGN KEY (`idcompra`) REFERENCES `compra` (`id`),
  CONSTRAINT `tarjetapago` FOREIGN KEY (`idtarjeta`) REFERENCES `tarjeta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (76,1,2,'5757-5318-9637-6731','2022-07-18 23:33:28',79,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/QR_9566kC.png','cc711fd1-746e-4d6c-bd69-15764338e3d7'),(77,1,2,'5757-5318-9637-6731','2022-07-18 23:35:17',80,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/QR_1562hS.png','d95c67c6-d04a-45e3-8dc1-10dbe14e4d75'),(78,1,2,'5757-5318-9637-6731','2022-07-19 01:16:40',81,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/QR_15789oY.png','889c9b66-9434-48ca-9f6d-528a3a09f86f'),(79,1,2,'5757-5318-9637-6731','2022-07-19 01:27:00',82,'https://telemillonariocontainer.blob.core.windows.net/telemillonario/QR_6268cI.png','225b3e46-eb83-4b99-acba-acf01afca7ac');
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `contrasenia` varchar(200) DEFAULT NULL,
  `idsede` int DEFAULT NULL,
  `idrol` int DEFAULT NULL,
  `iddistrito` int DEFAULT NULL,
  `calificacion` float DEFAULT NULL,
  `passwordtoken` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth2` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `dni` (`dni`),
  UNIQUE KEY `correo` (`correo`),
  KEY `rolpersona` (`idrol`),
  KEY `personadistrito` (`iddistrito`),
  KEY `personasede` (`idsede`),
  CONSTRAINT `personadistrito` FOREIGN KEY (`iddistrito`) REFERENCES `distrito` (`id`),
  CONSTRAINT `personasede` FOREIGN KEY (`idsede`) REFERENCES `sede` (`id`),
  CONSTRAINT `rolpersona` FOREIGN KEY (`idrol`) REFERENCES `rol` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Alejandro','Mendez Saldarriaga',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,1,NULL,NULL),(2,'Arnulfo','Carrera Rosales',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,2.5,NULL,NULL),(3,'Bernardo','López',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3.5,NULL,NULL),(4,'Carlos','Certino Zevallos',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,4,NULL,NULL),(5,'Carlos Diego','Asturias Flores',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(6,'César Augusto','Noriega Morales',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(7,'Edgar Raúl','Vargas',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,4,NULL,NULL),(8,'Eliza','Cuevas Sabán',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(9,'Camila Beatriz','Sotomayor Alarcón',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,2,NULL,NULL),(10,'Amanda Mayra','Garcia Delgado',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,2,NULL,NULL),(11,'Natalie Margarita','Campos',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,2,NULL,NULL),(12,'Héctor Leónidas','Quevedo Revolorio',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,1,NULL,NULL),(13,'Hugo Leonel','López Villacorta',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,1,NULL,NULL),(14,'José','Rojas Chutá',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(15,'Manuel Santiago','Quenema Ramirez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(16,'Marco Tulio','Soto Juárez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,4,NULL,NULL),(17,'Maria Inés','Vásquez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(18,'Mario Anibal','Alemán Galindo',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,2,NULL,NULL),(19,'Mario Izariel','Villatoro',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,1,NULL,NULL),(20,'Nancy Beatriz','Calderón Muller',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(21,'Octaviano','Camey Ramírez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(22,'Osman','Rosales Arias',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(23,'Rafael Arnulfo','Carrera Chicas',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,4,NULL,NULL),(24,'Rony David','Salazar Barrios',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(25,'Santos Margarita','López López',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(26,'Dolores','Chajón Costa',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(27,'Vicente','Cush Vásquez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(28,'Abdul Amibael','Pereira Pérez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,4,NULL,NULL),(29,'Abel Isaias','Aldana Tecún',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,4,NULL,NULL),(30,'Adela Beatriz','Gramajo Sagastume',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,4,NULL,NULL),(31,'Adolfo Antonio','Arrecis Concuan',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,4,NULL,NULL),(32,'César Antonio','Ambrosio Rosales',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,4,NULL,NULL),(33,'Byron Aroldo','Estrada Rodriguez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,1,NULL,NULL),(34,'Carmen Enrique','Arias Gómez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,1,NULL,NULL),(35,'Cinthia Vaneza','Piox Caballeros',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,1,NULL,NULL),(36,'Clodoveo','Nájera Chajón',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,2,NULL,NULL),(37,'Danilo Samuel','Arias Alvarez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,2,NULL,NULL),(38,'Eduardo','Herrera Escobar',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,2,NULL,NULL),(39,'Efrain','García Siliezar',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(40,'Felipe Santiago','Aliñado Chajón',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(41,'Geovanny Antonio','Reyes Aguilar',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(42,'Héctor Alfredo','Dávila Romero',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,4,NULL,NULL),(43,'Ingrid Yessenia','Rodriguez Melgar',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(44,'Jimmy Alberto','Chajon Mejia',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(45,'Jorge Mario','López García',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,1,NULL,NULL),(46,'Josue Daniel','Miranda Quevedo',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,1,NULL,NULL),(47,'Julia Roselia','Abril Barrios',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,1,NULL,NULL),(48,'Laura Cristina','Muñoz Afre',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(49,'Lilian Maricela','Rodríguez Del Cid',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(50,'Luis Aroldo','Ambrosio Rosales',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(51,'Mariano','Mox Callejas',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,4,NULL,NULL),(52,'Max Eduardo','Romero Chiguichon',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,1,NULL,NULL),(53,'Mayra Alejandra','Miranda Castillo',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(54,'Mónica Argentina','Paque Meléndez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(55,'Olga Marina','García Herrera',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,2,NULL,NULL),(56,'Raul Antonio','Cruz Romero',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,2,NULL,NULL),(57,'Vicente','Contreras Vela',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(58,'Rina Estefany','Morán González',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,3,NULL,NULL),(59,'Santos Francisco','Lopez Solval',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(60,'Wilson Geovanni','Anzueto Guzmán',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,5,NULL,5,NULL,NULL),(61,'Diego Alejando','Redobran Becerra',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,5,NULL,NULL),(62,'Angela Lucciola','Suarez Velasquez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,4.5,NULL,NULL),(63,'Martha Fabiola','Rizzo Gonzales',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,4,NULL,NULL),(64,'Carlos Dionisio','Sornoza Moran',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,4,NULL,NULL),(65,'Karen Gabriela','Romero Zavala',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,5,NULL,NULL),(66,'Alfredo','Plaza',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,2,NULL,NULL),(67,'Teodoro Ivan','Luna Veliz',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,2,NULL,NULL),(68,'Luis Gabriel','De Sousa Diaz',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,2,NULL,NULL),(69,'Jessica Rosa','Macio Cueva',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,2,NULL,NULL),(70,'Kerlin Gustavo','Yagual Arreaga',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,2,NULL,NULL),(71,'Jose Santiago','Lindao Gonzales',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,3,NULL,NULL),(72,'Carlos Humberto','Viteri Torres',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,3,NULL,NULL),(73,'Carlos Alberto','Vaca Nuñez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,3,NULL,NULL),(74,'Hilda Maria','Molina',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,4,NULL,NULL),(75,'Luis Fernando','Valarezo Lingen',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,4,NULL,NULL),(76,'Lilia Edith','Garcia Anchundia',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,4,NULL,NULL),(77,'Kerlin Gustavo','Yagual Arreaga',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,1,NULL,NULL),(78,'Pablo Renán','Vallejo Aristizábal',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,2,NULL,NULL),(79,'Washington Bolívar','Yánez López',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,2,NULL,NULL),(80,'César Mauricio','Macas Chulde',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,2,NULL,NULL),(81,'Elsa Del Carmen','Goyes Aquilar',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,2,NULL,NULL),(82,'Karina Elizabeth','Nieto Suarez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,3,NULL,NULL),(83,'Andrés Esteban','Aqguilar Viteri',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,3,NULL,NULL),(84,'Vladimir Rafael','Moreno Negrete',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,3,NULL,NULL),(85,'Lady Gabriela','Luna Sanchez',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,4,NULL,5,NULL,NULL),(86,'Jesús','Osorio','12345678','usuario1@mail.com','990382262','2002-03-16','Jr. Huamantanga 358 Urb. Túpac Amaru - Independencia',1,'$2a$10$jzeb5RKOyW2DrnarFZfsJ.HQVgdERtf404H7TX1vVcJ/hZEI3Wkoy',NULL,2,36,NULL,NULL,NULL),(87,'Luciana','Taipe','87654321','operador1@mail.com',NULL,NULL,NULL,1,'$2a$10$jzeb5RKOyW2DrnarFZfsJ.HQVgdERtf404H7TX1vVcJ/hZEI3Wkoy',5,3,NULL,NULL,NULL,NULL),(88,'Nathan','Quinto',NULL,'admin1@mail.com',NULL,NULL,NULL,1,'$2a$10$jzeb5RKOyW2DrnarFZfsJ.HQVgdERtf404H7TX1vVcJ/hZEI3Wkoy',NULL,1,NULL,NULL,NULL,NULL),(89,'Mauricio','Pelaez','65432123','operador2@mail.com',NULL,NULL,NULL,1,'$2a$10$jzeb5RKOyW2DrnarFZfsJ.HQVgdERtf404H7TX1vVcJ/hZEI3Wkoy',6,3,NULL,NULL,NULL,NULL),(90,'Jorge','Delgado','12345677','usuario2@mail.com','991382262','2002-08-16','Jr. Huamantanga 358 Urb. Túpac Amaru - Independencia',1,'$2a$10$jzeb5RKOyW2DrnarFZfsJ.HQVgdERtf404H7TX1vVcJ/hZEI3Wkoy',NULL,2,1,NULL,NULL,NULL),(91,'Mauricio','Quispe','12345688','usuario3@mail.com','992382262','2002-10-16','Jr. Huamantanga 358 Urb. Túpac Amaru - Independencia',1,'$2a$10$jzeb5RKOyW2DrnarFZfsJ.HQVgdERtf404H7TX1vVcJ/hZEI3Wkoy',NULL,2,3,NULL,NULL,NULL),(110,'Percy','De La Rosa Gutierrez','07555654','mfloresc001@gmail.com','996602345','1990-09-25','Calle Lautaro Nº141 - Urb Maranga 6ta Etapa - San Miguel, Lautaro 141, San Miguel 15088',1,'$2a$10$Uys2HweC6UKG/cwI34pq5uYGgxHqyw509pgJg4jKLu/J5rP92lkVe',NULL,2,NULL,NULL,NULL,0),(111,'Joaquin','Orellana','74931410','joaquinorellana90@gmail.com',NULL,NULL,NULL,1,'$2a$10$hE1dT9Lj6ppwAT0mg9mb8.xEsZPstCA5nNK2xqTHLNyvmVZU7zRYW',7,3,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` tinyint DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,1,'Administrador'),(2,1,'Usuario'),(3,1,'Operador'),(4,1,'Director'),(5,1,'Actor');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aforo` int DEFAULT NULL,
  `identificador` varchar(10) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `idsede` int DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `salasede` (`idsede`),
  CONSTRAINT `salasede` FOREIGN KEY (`idsede`) REFERENCES `sede` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (1,50,'GTN001',1,1,1),(2,50,'GTN002',2,1,1),(3,50,'GTN003',3,1,1),(4,50,'GTN004',4,1,1),(5,50,'GTN005',5,1,1),(6,50,'GTN006',6,1,1),(7,50,'GTN007',7,1,1),(8,50,'GTN008',8,1,1),(9,50,'TML001',1,2,1),(10,50,'TML002',2,2,1),(11,50,'TML003',3,2,1),(12,50,'TML004',4,2,1),(13,50,'TML005',5,2,1),(14,50,'TML006',6,2,1),(15,50,'TML007',7,2,1),(16,50,'TML008',8,2,1),(17,50,'TML009',9,2,1),(18,50,'TML010',10,2,1),(19,50,'TP001',1,3,1),(20,50,'TP002',2,3,1),(21,50,'TP003',3,3,1),(22,50,'TP004',4,3,1),(23,50,'TP005',5,3,1),(24,50,'TP006',6,3,1),(25,50,'TP007',7,3,1),(26,50,'TP008',8,3,1),(27,50,'TP001',1,4,1),(28,50,'TP002',2,4,1),(29,50,'TP003',3,4,1),(30,50,'TP004',4,4,1),(31,50,'TP005',5,4,1),(32,50,'TP006',6,4,1),(33,50,'TP007',7,4,1),(34,50,'TP008',8,4,1),(35,50,'TP009',9,4,1),(36,50,'TP010',10,4,1),(37,50,'TP011',11,4,1),(38,50,'TP012',12,4,1),(39,50,'TP013',13,4,1),(40,50,'TP014',14,4,1),(41,50,'TP015',15,4,1),(42,50,'CY001',1,5,1),(43,50,'CY002',2,5,1),(44,50,'CY003',3,5,1),(45,50,'CY004',4,5,1),(46,50,'CY005',5,5,1),(47,50,'CY006',6,5,1),(48,50,'CY007',7,5,1),(49,50,'CY008',8,5,1),(50,50,'CY009',9,5,1),(51,50,'CY010',10,5,1),(52,50,'CY011',11,5,1),(53,50,'CY012',12,5,1),(54,50,'TL001',1,6,1),(55,50,'TL002',2,6,1),(56,50,'TL003',3,6,1),(57,50,'TL004',4,6,1),(58,50,'TL005',5,6,1),(59,50,'TL006',6,6,1),(60,50,'TL007',7,6,1),(61,15,'TS001',1,8,1),(62,20,'TS002',2,8,1),(63,30,'TS003',3,8,0),(64,15,'GTN009',9,1,0),(65,23,'TML011',11,2,1),(66,15,'TP009',9,3,1),(67,23,'TP016',16,4,1),(68,10,'CY013',13,5,1),(69,25,'TL008',8,6,1),(70,14,'TPN001',1,7,1),(71,34,'TPN002',2,7,1),(72,30,'TPN003',3,7,1),(73,46,'TPN004',4,7,1),(74,5,'TPN005',5,7,0);
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sede`
--

DROP TABLE IF EXISTS `sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sede` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(5000) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `coordenadas` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `numerosalas` int DEFAULT NULL,
  `calificacion` float DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `iddistrito` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `sededistrito` (`iddistrito`),
  CONSTRAINT `sededistrito` FOREIGN KEY (`iddistrito`) REFERENCES `distrito` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` VALUES (1,'Gran Teatro Nacional','El Gran Teatro Nacional es de los más importantes que se encuentran en Lima. Considerado como uno de los más modernos del mundo, tiene un diseño especialmente pensado en apoyar la acústica y mecánica teatral. Este recinto ha dado lugar a distintos espectáculos protagonizados por el Ballet Nacional y la Orquesta Sinfónica Nacional del Perú, entre otros grandes elencos nacionales e internacionales.','Av. Javier Prado Este 2225, San Borja 15021','-12.086531221189254, -77.00307626144148','017153659',20,2,1,30),(2,'Teatro Municipal de Lima','Otra joya que tiene Lima es su teatro municipal. Este fue construido en 1915 y tiene una exquisita arquitectura clásica. Es un teatro que satisface los gustos más exigentes y elegantes en cuanto a diseño. Las obras que más se presentan aquí, además de las teatrales, pertenecen al ballet, aunque también ha sido sede de diversas actividades culturales en Lima.','Jirón Ica 377, Cercado de Lima 15001','-12.045346331825293, -77.03493522979304','016321300',20,1,1,6),(3,'Teatro La Plaza',NULL,'Larcomar, Mal. de la Reserva 610, Miraflores 15074','-12.131787372450486, -77.03063010123682','997543038',20,5,1,21),(4,'Teatro Pirandello','Este teatro se encuentra al lado del Instituto Italiano de Cultura y cuenta con una moderna infraestructura con una capacidad para 700 personas. Tiene un diseño sobrio y una excelente acústica por lo que ha sido sede de diversas actividades culturales en Lima como conciertos y obras de teatro. Se encuentra en el céntrico distrito del Cercado de Lima. Últimamente, ha sido la sede de algunas de las mejores obras cómicas que se han presentado en la ciudad.','Av. Alejandro Tirado 274, Cercado de Lima 15046','-12.074392553397558, -77.03502800280584','015050550',20,5,1,6),(5,'Casa Yuyachkani','Yuyachkani es una institución cultural independiente fundada en la década del 70. Es muy conocida en Perú por su estilo único de hacer teatro. Su nombre es una palabra quechua que significa “estoy pensando” o “estoy recordando”. En esta casa de teatro encontrarás representaciones que en su mayoría tienen bastante contenido político que busca analizar la realidad del país desde diferentes perspectivas. Sus obras calan hondo en la mente de sus espectadores.','Jr. Tacna 363, Magdalena del Mar 15086','-12.095162477680756, -77.07297149467828','012634484',20,4,1,20),(6,'Teatro de Lucia','El Teatro de Lucía es un lugar que surgió gracias al amor por el arte de sus socios fundadores. Ubicado en la zona más antigua de Miraflores, guarda aún mucha historia entre sus paredes. El lugar, antes de ser un teatro, fue un local municipal y oficina de correos. Ahora, renovado, se ubica un nuevo espacio cultural donde se han desarrollado geniales obras de teatro en Lima. Aquí podrás disfrutar de obras con conocidos personajes de gran trayectoria artística.','C. Bellavista 512, Miraflores 15074','-12.122832895625573, -77.03269749196618','017028424',20,3,1,21),(7,'Teatro Plaza Norte','Esta sala de teatro se encuentra en uno de los más grandes Centros Comerciales de la zona norte de Lima. Cuenta con una capacidad para más de 600 personas y, desde su inauguración en el año 2015, ha demostrado que es uno de los teatros más visitados por el público limeño. Además, es la primera sala de teatro ubicada en la zona norte de Lima. Aquí, conocidos actores nacionales participan en diversas obras teatrales durante todo el año.','Centro Comercial Plaza Norte, Galería Nte., San Martín de Porres 15311','-12.006421427118507, -77.0582324625104','016407800',20,4,1,35),(8,'Teatro Segura',NULL,'Teatro Segura, Jr. Huancavelica, Cercado de Lima 15001','-12.0473771,-77.034614','(01)315-1324',3,4,1,6);
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spring_session`
--

DROP TABLE IF EXISTS `spring_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint NOT NULL,
  `LAST_ACCESS_TIME` bigint NOT NULL,
  `MAX_INACTIVE_INTERVAL` int NOT NULL,
  `EXPIRY_TIME` bigint NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session`
--

LOCK TABLES `spring_session` WRITE;
/*!40000 ALTER TABLE `spring_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `spring_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spring_session_attributes`
--

DROP TABLE IF EXISTS `spring_session_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session_attributes`
--

LOCK TABLES `spring_session_attributes` WRITE;
/*!40000 ALTER TABLE `spring_session_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spring_session_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta`
--

DROP TABLE IF EXISTS `tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjeta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` tinyint DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
INSERT INTO `tarjeta` VALUES (1,1,'Visa'),(2,1,'Mastercard'),(3,1,'Diners Club');
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-19  9:59:37
