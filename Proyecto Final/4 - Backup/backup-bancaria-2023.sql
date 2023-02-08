CREATE DATABASE  IF NOT EXISTS `bancaria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bancaria`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bancaria
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `clasificacion_cuenta`
--

DROP TABLE IF EXISTS `clasificacion_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clasificacion_cuenta` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `tipo_cuenta` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clasificacion_cuenta`
--

LOCK TABLES `clasificacion_cuenta` WRITE;
/*!40000 ALTER TABLE `clasificacion_cuenta` DISABLE KEYS */;
INSERT INTO `clasificacion_cuenta` VALUES (1,'Caja de Ahorros'),(2,'Cuenta Corriente');
/*!40000 ALTER TABLE `clasificacion_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Marcos','Acuña','38145789','San Jorge 1234','1993-12-01'),(2,'Jaime','Allon','18746879','Pieres 456','1963-05-21'),(3,'Maria Laura','Tazer','30695123','Coquimboe 777','1982-04-02'),(4,'Lilian','Clark','9133412','Besares 734','1933-04-04'),(5,'Ramon','Pelle','26984621','San Luis 698','1968-08-06'),(6,'Adriana','Perrone','40145789','Salta 1123','2000-05-05'),(7,'Lautaro','Romero','39561023','Virasoro 756','1995-03-16'),(8,'Mario','Santos','20126789','Campos Eliseos 1717','1960-10-10'),(9,'Melisa','Hernandez','35001321','Formosa 115','1989-12-22'),(10,'Ramona','Ayala','15698563','Vuelta de Obligado 799','1955-02-10'),(11,'Vanina','Valenzuela','29144789','Santo Tome 723','1980-03-29'),(12,'Julian','Becerra','43127922','Monroe 7136','2003-07-14'),(13,'Athos','Pomier','37446332','Marcos Sastre 55','1990-08-08'),(14,'Daiana','Rodriguez','92756123','Almirante Brown 7789','1996-06-06'),(15,'Pablo','San Filippo','12356998','Pichincha 12','1949-01-02'),(16,'Jorge','Gonzalez','34370477','Lima 800','1985-09-08'),(17,'Cristina','Fernandez','13821391','Tucumán 1234','1975-06-06'),(18,'Lucas','Martinez','35464758','Mitre 789','1980-01-01'),(19,'Andrea','Perez','21787798','Corrientes 234','1989-04-03'),(20,'Sebastian','Rodriguez','40406077','Rosario 567','1995-07-05'),(21,'Valentina','Garcia','41740274','Mendoza 890','2000-12-12'),(22,'Facundo','Martinez','24918440','Rio Tercero 123','1996-09-09'),(23,'Soledad','Gonzalez','29025189','Villa Carlos Paz 678','1999-08-08'),(24,'Gustavo','Perez','35630543','Santiago del Estero 456','1995-05-05'),(25,'Florencia','Rodriguez','30267871','Neuquen 789','1985-03-03');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_insert_clientes` AFTER INSERT ON `clientes` FOR EACH ROW BEGIN
		INSERT INTO log_clientes (tipo_accion, nombre_de_tabla, cliente_id, nombre, apellido, dni, direccion, fecha_nacimiento, usuario, fecha_log, detalle_log) 
        VALUES ('INSERT', 'CLIENTES', NEW.cliente_id, NEW.nombre, NEW.apellido, NEW.dni, NEW.direccion, NEW.fecha_nacimiento, CURRENT_USER(), TIMESTAMP, 'Este es un cliente nuevo');
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_update_clientes` BEFORE UPDATE ON `clientes` FOR EACH ROW BEGIN
		INSERT INTO log_clientes ( tipo_accion, nombre_de_tabla, cliente_id, nombre, apellido, dni, direccion, fecha_nacimiento, usuario, fecha_log, detalle_log)
		VALUES ( 'UPDATE', 'CLIENTES',new.cliente_id, new.nombre, new.apellido, new.dni, new.direccion, new.fecha_nacimiento, CURRENT_USER(), TIMESTAMP,
        CONCAT('Las columnas mostradas han reemplazado a los siguientes valores:',' ', IF( NEW.cliente_id != OLD.cliente_id, CONCAT('ID: ', old.cliente_id), '' ),
        '-', IF (NEW.nombre != OLD.nombre, CONCAT('Nombre:', old.nombre), ''),'-', IF(NEW.apellido != OLD.apellido, CONCAT('Apellido:', old.apellido), ''), '-',
        IF(NEW.dni != OLD.dni, CONCAT('DNI:', old.dni), ''),'-', IF(NEW.direccion != OLD.direccion, CONCAT('Direccion: ', old.direccion), ''),'-',
        IF(NEW.fecha_nacimiento != old.fecha_nacimiento, CONCAT('Fecha de Nacimiento:', old.fecha_nacimiento),''))
        );
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_delete_clientes` AFTER DELETE ON `clientes` FOR EACH ROW BEGIN
		INSERT INTO log_clientes ( tipo_accion, nombre_de_tabla, cliente_id, nombre, apellido, dni, direccion, fecha_nacimiento, usuario, fecha_log, detalle_log)
		VALUES ( 'DELETE', 'CLIENTES',OLD.cliente_id, OLD.nombre, OLD.apellido, OLD.dni, OLD.direccion, OLD.fecha_nacimiento, CURRENT_USER(), TIMESTAMP,
        CONCAT('Este cliente ha sido borrado con exito')
        );
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas` (
  `id_cuenta` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `tipo_cuenta` int DEFAULT NULL,
  `tipo_moneda` int DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `id_sucursal` int DEFAULT NULL,
  PRIMARY KEY (`id_cuenta`),
  KEY `id_cliente` (`id_cliente`),
  KEY `tipo_cuenta` (`tipo_cuenta`),
  KEY `tipo_moneda` (`tipo_moneda`),
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`cliente_id`),
  CONSTRAINT `cuentas_ibfk_2` FOREIGN KEY (`tipo_cuenta`) REFERENCES `clasificacion_cuenta` (`id_tipo`),
  CONSTRAINT `cuentas_ibfk_3` FOREIGN KEY (`tipo_moneda`) REFERENCES `moneda` (`id_moneda`),
  CONSTRAINT `cuentas_ibfk_4` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (1,25,1,1,36659,6),(2,24,1,1,60000000,5),(3,23,1,1,778961,4),(4,22,1,1,70451.1,3),(5,21,1,1,29120.1,2),(6,20,1,1,12305.8,1),(7,19,1,1,132511,15),(8,18,1,1,412300,14),(9,17,1,1,28950.1,13),(10,16,1,1,0,12),(11,15,1,1,230000,7),(12,14,1,1,5533,6),(13,13,1,1,12346,5),(14,12,1,1,0,4),(15,11,1,1,70251.1,3),(16,10,1,1,24120.1,2),(17,9,1,1,1230,1),(18,8,1,1,32510.6,15),(19,7,1,1,41200,14),(20,6,1,1,23000.1,13),(21,5,1,1,0,12),(22,4,1,1,15503.9,11),(23,3,1,1,77456.1,10),(24,2,1,1,13501,8),(25,1,1,1,9810.33,9);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_insert_cuentas` AFTER INSERT ON `cuentas` FOR EACH ROW BEGIN
		INSERT INTO log_cuentas (tipo_accion, nombre_de_tabla, id_cuenta, id_cliente, tipo_cuenta, tipo_moneda, saldo, id_sucursal, usuario, fecha_log, detalle_log) 
        VALUES ('INSERT', 'CUENTA', NEW.id_cuenta, NEW.id_cliente, NEW.tipo_cuenta, NEW.tipo_moneda, NEW.saldo, NEW.id_sucursal, CURRENT_USER(), TIMESTAMP, 'Esta cuenta es nueva');
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_update_cuentas` BEFORE UPDATE ON `cuentas` FOR EACH ROW BEGIN
		INSERT INTO log_cuentas (tipo_accion, nombre_de_tabla, id_cuenta, id_cliente, tipo_cuenta, tipo_moneda, saldo, id_sucursal, usuario, fecha_log, detalle_log) 
		VALUES ('INSERT', 'CUENTA', NEW.id_cuenta, NEW.id_cliente, NEW.tipo_cuenta, NEW.tipo_moneda, NEW.saldo, NEW.id_sucursal, CURRENT_USER(), TIMESTAMP,
        CONCAT('Los datos que han sido modificados son: ',' ', IF( NEW.id_cuenta != OLD.id_cuenta, CONCAT('ID de Cuenta: ', old.id_cuenta), '' ),
        '-', IF (NEW.id_cliente != OLD.id_cliente, CONCAT('ID de Cliente:', old.id_cliente), ''),'-', IF(NEW.tipo_cuenta != OLD.tipo_cuenta, CONCAT('Tipo de Cuenta:', old.tipo_cuenta), ''), '-',
        IF(NEW.tipo_moneda != OLD.tipo_moneda, CONCAT('Tipo de Moneda:', old.tipo_moneda), ''),'-', IF(NEW.saldo != OLD.saldo, CONCAT('Saldo: ', old.saldo), ''),'-',
        IF(NEW.id_sucursal != old.id_sucursal, CONCAT('ID de Sucursal:', old.id_sucursal),''))
        );
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_delete_cuentas` AFTER DELETE ON `cuentas` FOR EACH ROW BEGIN
		INSERT INTO log_cuentas (tipo_accion, nombre_de_tabla, id_cuenta, id_cliente, tipo_cuenta, tipo_moneda, saldo, id_sucursal, usuario, fecha_log, detalle_log)
		VALUES ( 'DELETE', 'CLIENTES', OLD.id_cuenta, OLD.id_cliente, OLD.tipo_cuenta, OLD.tipo_moneda, OLD.saldo, OLD.id_sucursal, CURRENT_USER(), TIMESTAMP,
        CONCAT('Este cliente ha sido borrado con exito')
        );
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `cuil` varchar(11) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `puesto` int DEFAULT NULL,
  `sucursal_empleo` int DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `puesto` (`puesto`),
  KEY `sucursal_empleo` (`sucursal_empleo`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`puesto`) REFERENCES `puesto_laboral` (`id_puesto`),
  CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`sucursal_empleo`) REFERENCES `sucursal` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Soledad','Araujo','21148967712','Av Forest 112','1145956179','2012-01-02',1,2),(2,'Jesus','Ramos','20159887791','25 de mayo 33','1137459561','2012-01-02',2,2),(3,'Juan','Saraneta','27359123456','Mitre 612','3415567891','2000-05-20',3,1),(4,'Ricardo','Galleto','20349123457','Lavalle 789','1145678901','2005-12-01',3,2),(5,'Gabriela','Heilmen','23409123458','Belgrano 450','3413456789','2002-03-17',3,3),(6,'Mauricio','Ferro','27339123459','Alsina 890','1145679801','1999-07-15',3,4),(7,'Sofia','Tinez','20369123450','Lima 987','3411126789','2010-09-08',3,5),(8,'Ezequiel','Enriz','27369123451','San Martin 500','1145896789','2005-05-19',3,6),(9,'Violeta','Heredia','20379123452','Independencia 700','3418996789','2003-01-13',3,7),(10,'Facundo','Kippes','27309123453','Balcarce 789','1145726789','1998-04-08',3,8),(11,'Martina','Peyorano','20359123454','Corrientes 450','3411567789','2007-11-20',3,9),(12,'Federico','Sellis','27349123455','25 de Mayo 550','1145826789','2000-02-12',3,10),(13,'Catalina','Zapata','20369123456','Mitre 250','3416056789','2002-06-19',3,11),(14,'Agustin','Oruro','27379123457','San Martin 400','1145136789','1999-01-23',3,12),(15,'Valentina','Entri','20339123458','Belgrano 900','3417236789','2006-09-08',3,13),(16,'Carlos','Rosales','27339123459','Lavalle 500','1145276789','1998-07-01',3,14),(17,'Elena','Garcia','20349123450','25 de Mayo 700','3419056789','2003-05-20',3,15),(18,'German','Mendoza','27309123451','San Juan 800','1145676879','2001-03-15',3,16),(19,'Ana','Lopez','20359123452','Balcarce 650','3415526789','2007-11-01',3,17),(20,'Dario','Rodriguez','27369123453','San Luis 900','1145796789','1999-04-21',3,18),(21,'Barbara','Perez','20379123454','Corrientes 700','3411456789','2005-12-08',3,19),(22,'Jorge','Martinez','27309123455','Mitre 300','1145678769','2002-07-12',3,20),(23,'Rosa','Gonzalez','20349123456','San Martin 600','3416056789','1998-06-15',3,21),(24,'Javier','Hernandez','27339123457','Independencia 900','1145266789','2007-02-23',3,22),(25,'Camila','Jimenez','20369123458','Lavalle 400','3417656789','2000-09-08',3,23),(26,'Sebastian','Gomez','27379123459','25 de Mayo 550','1145676789','1998-01-02',3,24),(27,'Gabriela','Akbachian','25123456789','Carabobo 175','1139874562','2010-05-12',4,1),(28,'Martin','Alanis','27123456789','San Lorenzo 123','1147896325','2010-07-05',4,1),(29,'Sofia','Albani','26123456789','Papa Francisco 143','1155987654','2009-03-02',4,1),(30,'Juan','Verdi','28123456789','Salvigny 112','1132145678','2010-01-05',4,2),(31,'Lucia','Viglianti','29123456789','Corrientes 174','1115672345','2012-02-12',4,2),(32,'Pedro','Barraza','22123456789','Salta 133','1156789563','2010-03-10',4,2),(33,'Ana','Beyon','24123456789','Paso del Sereno 75','1136987541','2011-05-22',4,3),(34,'Carlos','Sostre','23123456789','Agente Ceferino Garcia 165','1198741236','2009-07-08',4,3),(35,'María','Risso','21123456789','Trelles 95','1146789321','2010-10-12',4,3),(36,'Ricardo','Rios','28123456789','Cincinatti 33','1162345678','2011-01-05',4,4),(37,'Soledad','Retana','29123456789','Paso de los libres 149','1114235879','2012-03-15',4,4),(38,'Diego','Blanco','26123456789','La haya 1114','1175986423','2010-05-01',4,4),(39,'Laura','Dastugue','27123456789','Simbron 95','1198745236','2011-02-22',4,5),(40,'Federico','Radvanski','24123456789','Cerro San Javier 78','1136987452','2009-08-11',4,5),(41,'Manuel','Radzanowicz','22123456789','San Cayetano 95','1146798321','2010-06-12',4,5),(42,'Maria','Carreño','25123456789','Marcos Galperin 198','1159871234','2011-04-03',4,6),(43,'Javier','Aimetta','26123456789','Guayaquil 99','1187456239','2010-02-01',4,6),(44,'Adriana','Armetta','23123456789','Rosario 119','1168753412','2011-07-05',4,6),(45,'Sebastian','Rettoir','29123456789','Salerno 75','1145678923','2012-06-15',4,7),(46,'Silvina','Merlot','28123456789','Cnel Ramon Falcon149','1192345678','2011-08-22',4,7),(47,'Emiliano','Yapeyu','24123456789','Mieres 56','1138974562','2010-05-12',4,7),(48,'Paula','Tunuyan','22123456789','Av Riestra 133','1162745983','2011-02-01',4,8),(49,'Ana','Gonzalez','22123456790','Av San Martin 123','1162745984','2011-03-01',4,8),(50,'Juan','Perez','22123456791','Av Mendoza 111','1162745985','2011-04-01',4,8),(51,'Marcos','Rodriguez','22123456792','Av Sarmiento 123','1162745986','2011-05-01',4,9),(52,'Lucas','Gomez','22123456793','Av Rivadavia 111','1162745987','2011-06-01',4,9),(53,'Julia','Martinez','22123456794','Av Belgrano 123','1162745988','2011-07-01',4,9),(54,'Mateo','Ruiz','22123456795','Av Corrientes 111','1162745989','2011-08-01',4,9),(55,'Alejandra','Moreno','20300601234','Jose Marti 1250','1130284579','2002-05-22',4,10),(56,'Juan','Maciel','20300609876','Cnel Ramon Falcon 350','1130284580','1995-08-01',4,11),(57,'Laura','Lugo','20300609890','Sarasa 150','1130284581','2010-06-05',4,12),(58,'Gabriel','Magallanes','20300609891','Ulricho Schmidt 1370','1130284582','1999-03-07',4,13),(59,'Silvina','Lucero','20300609892','Federico Garcia Lorca 2250','1130284583','2017-09-19',4,14),(60,'Martin','Nietto','20300609893','Av Avellaneda 800','1130284584','2015-01-15',4,15),(61,'Marta','Pavon','20300609894','Maria Elena Uhart 500','1130284585','2000-12-08',4,16),(62,'Maximiliano','Osso','20300609895','Coppola 1600','1130284586','2015-06-30',4,17),(63,'Martina','Peiretti','20300609896','Diego Maradona 500','1130284587','2003-11-15',4,18),(64,'Facundo','Osuna','20300609897','Talacasto 2200','1130284588','2005-02-28',4,19),(65,'Marina','Pedruozo','20300609898','San Fernando 1700','1130284589','2002-08-01',4,20),(66,'Agustin','Nicolini','20300609899','Moron 3300','1130284590','2012-05-15',4,21),(67,'Florencia','Nissen','20300609900','Luis Piñeyro 200','1130284591','2009-09-30',4,22),(68,'Sebastian','Loyola','20300609901','Brown 600','1130284592','2015-11-12',4,23),(69,'Natalia','Pedone','20300609902','Mexico 1300','1130284593','2000-07-15',4,24),(70,'Soledad','Marujo','2721348967','General San Martín 142','1145956179','2012-04-02',6,1),(71,'Martin','Heredia','271359686','General Heredia 133','1129671145','2011-03-02',6,2),(72,'Juan','Perez','231459675','General Díaz 2521','1149864151','2010-12-01',6,3),(73,'María','Rodriguez','245613784','General Pinto 1223','123698546','2010-06-05',6,4),(74,'Pedro','Gonzalez','234158769','General Lemos 2040','125679814','2011-08-02',6,5),(75,'Ana','Sánchez','212478396','General Lavalle 801','123698546','2012-01-03',6,6),(76,'Luis','Diaz','236987521','General Madariaga 506','130275896','2012-05-01',6,7),(77,'Carlos','Gómez','246138759','General Las Heras 1510','130275896','2012-08-02',6,8),(78,'Sandra','Martínez','256849731','General Mansilla 1020','139875216','2013-06-01',6,9),(79,'Andrés','García','225698471','General Paz 1203','139087564','2013-09-03',6,10),(80,'Carmen','Jiménez','235645978','General Madariaga 1503','139087564','2013-12-02',6,11),(81,'Julio','Ruiz','239864271','General Escalada 5004','138497560','2014-05-01',6,12),(82,'Adriana','Hernández','239875413','General Gorriti 8004','139875621','2014-08-02',6,13),(83,'Ricardo','Molina','238541236','General Lavalle 1504','139875216','2015-06-01',6,14),(84,'Jorge','Morales','239845632','General Ferré 2004','139087564','2015-09-03',6,15),(85,'Sofía','Rivera','239758412','General Escalada 3004','137598420','2016-01-02',6,16),(86,'Juan','González','2022334435','General San Martín 304','2414986415','2015-04-03',6,17),(87,'Marta','Sánchez','2022334436','General Heredia 1004','351986151','2017-05-01',6,18),(88,'Lucas','Pérez','2022334437','General Díaz 804','2619864151','2018-06-02',6,19),(89,'Isabel','Rodríguez','2022334438','General Pinto 504','3579864151','2019-07-03',6,20),(90,'Pablo','García','2022334439','General Lemos 4040','2469864151','2020-08-01',6,21),(91,'Camila','Jiménez','2022334440','General Lavalle 710','3019864151','2021-09-02',6,22),(92,'Tomás','Ruiz','2022334441','General Madariaga 920','4419864151','2022-10-03',6,23),(93,'Lucía','Hernández','2022334442','General Paz 230','319864151','2023-11-01',6,24),(94,'Juan','Perez','231459675','General Díaz 2521','1149864151','2010-12-01',7,1),(95,'Marta','Rodriguez','211462935','Chopin 1234','1149864152','2011-01-02',7,2),(96,'Lucas','Gonzalez','231459645','Ciudad De La Merced 5670','1149864153','2012-02-03',7,3),(97,'Isabel','Sanchez','781462975','Colectora Este 1245','1149864154','2013-03-01',7,4),(98,'Pablo','Jimenez','231459655','Colectora Oeste 9876','1149864155','2014-04-02',7,5),(99,'Camila','Perez','781462985','Colón 4567','1149864156','2015-05-03',7,6),(100,'Tomas','Rodriguez','231459665','Concordia 3345','1149864157','2016-06-01',7,7),(101,'Lucia','Gonzalez','781462995','Conde De Turín 6543','1149864158','2017-07-02',7,8),(102,'Diego','Sanchez','231459675','Congreve 4123','1149864159','2018-08-03',7,9),(103,'Jimena','Jimenez','271462915','Corrientes 8976','1149864160','2019-09-01',7,10),(104,'Juan','Perez','231459385','Córdoba 3456','1149864161','2020-10-02',7,11),(105,'Marta','Rodriguez','271462925','El Ceibo 7654','1149864162','2021-11-03',7,12),(106,'Lucas','Gonzalez','231459315','Escobar 2345','1149864163','2022-12-01',7,13),(107,'Isabel','Sanchez','2251462935','Eugenia Tapia De Cruz 9876','1149864164','2023-01-02',7,14),(108,'Pablo','Jimenez','221459325','Felipe Boero 4567','1149864165','2024-02-03',7,15),(109,'Camila','Perez','271462945','Fiesta Nacional De La Flor 1234','1149864166','2025-03-01',7,16),(110,'Tomas','Rodriguez','2022339492','Florentino Ameghino 7891','1112345678','2010-01-02',7,17),(111,'Andres','Gonzalez','2022339493','Formosa 1234','1112345679','2010-02-03',7,18),(112,'Marta','Sanchez','2022339494','Güemes 5678','1112345680','2010-03-04',7,19),(113,'Lucia','Perez','2022339495','Intendente Larghi 9101','1112345681','2010-04-05',7,20),(114,'Juan','Garcia','2022339496','Leandro N. Alem 3456','1112345682','2010-05-06',7,21),(115,'Isabel','Jimenez','2022339497','Luis Pasteur 7890','1112345683','2010-06-07',7,22),(116,'Pablo','Ruiz','2022339498','Marcelo T. De Alvear 1233','1112345684','2010-07-08',7,23),(117,'Camila','Hernandez','2022339499','Matheu 4567','1112345685','2010-08-09',7,24);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id_estado` int NOT NULL AUTO_INCREMENT,
  `estado_operacion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Aprobado'),(2,'En proceso'),(3,'Rechazado');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidades` (
  `id_localidad` int NOT NULL AUTO_INCREMENT,
  `localidad` varchar(60) DEFAULT NULL,
  `provincia_perteneciente` int DEFAULT NULL,
  PRIMARY KEY (`id_localidad`),
  KEY `provincia_perteneciente` (`provincia_perteneciente`),
  CONSTRAINT `localidades_ibfk_1` FOREIGN KEY (`provincia_perteneciente`) REFERENCES `provincias` (`id_provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=4047 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
INSERT INTO `localidades` VALUES (1,'Constitucion',1),(2,'Monserrat',1),(3,'Puerto Madero',1),(4,'Retiro',1),(5,'San Nicolas',1),(6,'San Telmo',1),(7,'Recoleta',1),(8,'Balvanera',1),(9,'San Cristobal',1),(10,'Barracas',1),(11,'Boca',1),(12,'Nueva Pompeya',1),(13,'Parque Patricios',1),(14,'Almagro',1),(15,'Boedo',1),(16,'Caballito',1),(17,'Flores',1),(18,'Parque Chacabuco',1),(19,'Villa Lugano',1),(20,'Villa Riachuelo',1),(21,'Villa Soldati',1),(22,'Liniers',1),(23,'Mataderos',1),(24,'Parque Avellaneda',1),(25,'Floresta',1),(26,'Monte Castro',1),(27,'Velez Sarsfield',1),(28,'Versalles',1),(29,'Villa Luro',1),(30,'Villa Real',1),(31,'Villa Del Parque',1),(32,'Villa Devoto',1),(33,'Villa General Mitre',1),(34,'Villa Santa Rita',1),(35,'Coghlan',1),(36,'Saavedra',1),(37,'Villa Pueyrredon',1),(38,'Villa Urquiza',1),(39,'Belgrano',1),(40,'Colegiales',1),(41,'Nuñez',1),(42,'Palermo',1),(43,'Agronomia',1),(44,'Chacarita',1),(45,'Parque Chas',1),(46,'Paternal',1),(47,'Villa Crespo',1),(48,'Villa Ortuzar',1),(49,'Alberti',2),(50,'Coronel Segui',2),(51,'Mechita',2),(52,'Pla',2),(53,'Villa Grisolia',2),(54,'Villa Maria',2),(55,'Villa Ortiz',2),(56,'Adrogue',2),(57,'Burzaco',2),(58,'Claypole',2),(59,'Don Orione',2),(60,'Glew',2),(61,'Jose Marmol',2),(62,'Longchamps',2),(63,'Malvinas Argentinas',2),(64,'Ministro Rivadavia',2),(65,'Rafael Calzada',2),(66,'San Francisco Solano',2),(67,'San Jose',2),(68,'Area Cinturon Ecologico',2),(69,'Avellaneda',2),(70,'Crucesita',2),(71,'Dock Sud',2),(72,'Gerli',2),(73,'Piñeyro',2),(74,'Sarandi',2),(75,'Villa Dominico',2),(76,'Wilde',2),(77,'Ayacucho',2),(78,'La Constancia',2),(79,'Solanet',2),(80,'Udaquiola',2),(81,'Ariel',2),(82,'Azul',2),(83,'Cachari',2),(84,'Chillar',2),(85,'16 De Julio',2),(86,'Bahia Blanca',2),(87,'Grünbein',2),(88,'Ingeniero White',2),(89,'Villa Bordeau',2),(90,'Villa Espora',2),(91,'Cabildo',2),(92,'General Daniel Cerri',2),(93,'Balcarce',2),(94,'Los Pinos',2),(95,'Napaleofu',2),(96,'Ramos Otero',2),(97,'San Agustin',2),(98,'Villa Laguna La Brava',2),(99,'Baradero',2),(100,'Irineo Portela',2),(101,'Santa Coloma',2),(102,'Villa Alsina',2),(103,'Arrecifes',2),(104,'Todd',2),(105,'Viña',2),(106,'Barker',2),(107,'Benito Juarez',2),(108,'Lopez',2),(109,'Tedin Uriburu',2),(110,'Villa Cacique',2),(111,'Berazategui',2),(112,'Berazategui Oeste',2),(113,'Carlos Tomas Sourigues',2),(114,'El Pato',2),(115,'Guillermo Enrique Hudson',2),(116,'Juan Maria Gutierrez',2),(117,'Pereyra',2),(118,'Platanos',2),(119,'Ranelagh',2),(120,'Villa España',2),(121,'Barrio Banco Provincia',2),(122,'Barrio El Carmen (Este)',2),(123,'Barrio Universitario',2),(124,'Berisso',2),(125,'Los Talas',2),(126,'Villa Argüello',2),(127,'Villa Dolores',2),(128,'Villa Independencia',2),(129,'Villa Nueva',2),(130,'Villa Porteña',2),(131,'Villa Progreso',2),(132,'Villa San Carlos',2),(133,'Villa Zula',2),(134,'Hale',2),(135,'Juan F. Ibarra',2),(136,'Paula',2),(137,'Pirovano',2),(138,'San Carlos De Bolivar',2),(139,'Urdampilleta',2),(140,'Villa Lynch Pueyrredon',2),(141,'Asamblea',2),(142,'Bragado',2),(143,'Comodoro Py',2),(144,'General O Brien',2),(145,'Irala',2),(146,'La Limpia',2),(147,'Maximo Fernandez',2),(148,'Olascoaga',2),(149,'Warnes',2),(150,'Altamirano',2),(151,'Barrio El Mirador',2),(152,'Barrio Las Golondrinas',2),(153,'Barrio Los Bosquecitos',2),(154,'Barrio Parque Las Acacias',2),(155,'Campos De Roca',2),(156,'Coronel Brandsen',2),(157,'Club De Campo Las Malvinas',2),(158,'Gomez',2),(159,'Jeppener',2),(160,'Oliden',2),(161,'Posada De Los Lagos',2),(162,'Samborombon',2),(163,'Alto Los Cardales',2),(164,'Barrio Los Pioneros',2),(165,'Campana',2),(166,'Chacras Del Rio Lujan',2),(167,'Lomas Del Rio Lujan',2),(168,'Alejandro Petion',2),(169,'Barrio El Taladro',2),(170,'Cañuelas',2),(171,'Gobernador Udaondo',2),(172,'Barrio Belgrano',2),(173,'Maximo Paz',2),(174,'Santa Rosa',2),(175,'Uribelarrea',2),(176,'Vicente Casares',2),(177,'Capitan Sarmiento',2),(178,'La Luisa',2),(179,'Bellocq',2),(180,'Cadret',2),(181,'Carlos Casares',2),(182,'Colonia Mauricio',2),(183,'Hortensia',2),(184,'La Sofia',2),(185,'Mauricio Hirsch',2),(186,'Moctezuma',2),(187,'Ordoqui',2),(188,'Santo Tomas',2),(189,'Smith',2),(190,'Carlos Tejedor',2),(191,'Colonia Sere',2),(192,'Curaru',2),(193,'Timote',2),(194,'Tres Algarrobos',2),(195,'Carmen De Areco',2),(196,'Pueblo Gouin',2),(197,'Tres Sargentos',2),(198,'Castelli',2),(199,'Centro Guerrero',2),(200,'Cerro De La Gloria (Canal 15)',2),(201,'Colon',2),(202,'El Arbolito',2),(203,'Pearson',2),(204,'Sarasa',2),(205,'Bajo Hondo',2),(206,'Balneario Pehuen Co',2),(207,'Pago Chico',2),(208,'Punta Alta',2),(209,'Villa Del Mar',2),(210,'Villa General Arias',2),(211,'Aparicio',2),(212,'Balneario Marisol',2),(213,'Coronel Dorrego',2),(214,'El Perdido',2),(215,'Faro',2),(216,'Irene',2),(217,'Oriente',2),(218,'La Ruta',2),(219,'San Roman',2),(220,'Coronel Pringles',2),(221,'El Divisorio',2),(222,'El Pensamiento',2),(223,'Indio Rico',2),(224,'Lartigau',2),(225,'Cascadas',2),(226,'Coronel Suarez',2),(227,'Cura Malal',2),(228,'D Orbigny',2),(229,'Huanguelen',2),(230,'Pasman',2),(231,'Santa Maria',2),(232,'Santa Trinidad',2),(233,'Villa La Arcadia',2),(234,'Castilla',2),(235,'Chacabuco',2),(236,'Los Angeles',2),(237,'O Higgins',2),(238,'Rawson',2),(239,'Barrio Lomas Altas',2),(240,'Chascomus',2),(241,'Barrio San Cayetano',2),(242,'Laguna Vitel',2),(243,'Manuel J. Cobo',2),(244,'Villa Parque Girado',2),(245,'Benitez',2),(246,'Chivilcoy',2),(247,'Emilio Ayarza',2),(248,'Gorostiaga',2),(249,'La Rica',2),(250,'Moquehua',2),(251,'Ramon Biaus',2),(252,'San Sebastian',2),(253,'Andant',2),(254,'Arboledas',2),(255,'Daireaux',2),(256,'La Larga',2),(257,'Salazar',2),(258,'Dolores',2),(259,'Sevigne',2),(260,'Dique Nâº 1',2),(261,'Ensenada',2),(262,'Isla Santiago (Oeste)',2),(263,'Punta Lara',2),(264,'Villa Catela',2),(265,'Belen De Escobar',2),(266,'El Cazador',2),(267,'Garin',2),(268,'Ingeniero Maschwitz',2),(269,'Loma Verde',2),(270,'Matheu',2),(271,'Maquinista F. Savio Este',2),(272,'Canning',2),(273,'El Jagüel',2),(274,'Luis Guillon',2),(275,'Monte Grande',2),(276,'9 De Abril',2),(277,'Arroyo De La Cruz',2),(278,'Capilla Del Señor',2),(279,'Diego Gaynor',2),(280,'Los Cardales',2),(281,'Parada Orlando',2),(282,'El Remanso',2),(283,'Parada Robles',2),(284,'Pavon',2),(285,'Aeropuerto Internacional Ezeiza',2),(286,'Carlos Spegazzini',2),(287,'Jose Maria Ezeiza',2),(288,'La Union',2),(289,'Tristan Suarez',2),(290,'Bosques',2),(291,'Estanislao Severo Zeballos',2),(292,'Florencio Varela',2),(293,'Gobernador Julio A. Costa',2),(294,'Ingeniero Juan Allan',2),(295,'Villa Brown',2),(296,'Villa San Luis',2),(297,'Villa Santa Rosa',2),(298,'Villa Vatteone',2),(299,'El Tropezon',2),(300,'La Capilla',2),(301,'Blaquier',2),(302,'Florentino Ameghino',2),(303,'Porvenir',2),(304,'Centinela Del Mar',2),(305,'Comandante Nicanor Otamendi',2),(306,'Mar Del Sur',2),(307,'Mechongue',2),(308,'Miramar',2),(309,'General Alvear',2),(310,'Arribeños',2),(311,'Ascension',2),(312,'Estacion Arenales',2),(313,'Ferre',2),(314,'General Arenales',2),(315,'La Angelita',2),(316,'La Trinidad',2),(317,'General Belgrano',2),(318,'Gorchs',2),(319,'General Guido',2),(320,'Labarden',2),(321,'Barrio Kennedy',2),(322,'General Juan Madariaga',2),(323,'General La Madrid',2),(324,'La Colina',2),(325,'Las Martinetas',2),(326,'Libano',2),(327,'Pontaut',2),(328,'General Hornos',2),(329,'General Las Heras',2),(330,'La Choza',2),(331,'Plomer',2),(332,'Villars',2),(333,'General Lavalle',2),(334,'Barrio Rio Salado',2),(335,'Ranchos',2),(336,'Villanueva',2),(337,'Colonia San Ricardo',2),(338,'General Pinto',2),(339,'Germania',2),(340,'Gunther',2),(341,'Villa Francia',2),(342,'Villa Roth',2),(343,'Barrio El Boqueron',2),(344,'Barrio La Gloria',2),(345,'Barrio Santa Paula',2),(346,'Batan',2),(347,'Chapadmalal',2),(348,'El Marquesado',2),(349,'Estacion Chapadmalal',2),(350,'Camet',2),(351,'Estacion Camet',2),(352,'Mar Del Plata',2),(353,'Punta Mogotes',2),(354,'Barrio El Casal',2),(355,'Sierra De Los Padres',2),(356,'Barrio Colinas Verdes',2),(357,'Barrio El Coyunco',2),(358,'General Rodriguez',2),(359,'Barrio Morabo',2),(360,'Barrio Ruta 24 Km. 10',2),(361,'C.C. Bosque Real',2),(362,'General Rodrguez',2),(363,'Barrio Parque General San Martin',2),(364,'Billinghurst',2),(365,'Ciudad Del Libertador General San Martin',2),(366,'Ciudad Jardin El Libertador',2),(367,'Villa Ayacucho',2),(368,'Villa Ballester',2),(369,'Villa Bernardo Monteagudo',2),(370,'Villa Chacabuco',2),(371,'Villa Coronel Jose M. Zapiola',2),(372,'Villa General Antonio J. De Sucre',2),(373,'Villa General Eugenio Necochea',2),(374,'Villa General Jose Tomas Guido',2),(375,'Villa General Juan G. Las Heras',2),(376,'Villa Godoy Cruz',2),(377,'Villa Granaderos De San Martin',2),(378,'Villa Gregoria Matorras',2),(379,'Villa Jose Leon Suarez',2),(380,'Villa Juan Martin De Pueyrredon',2),(381,'Villa Libertad',2),(382,'Villa Lynch',2),(383,'Villa Maipu',2),(384,'Villa Maria Irene De Los Remedios De Escalada',2),(385,'Villa Marques Alejandro Maria De Aguado',2),(386,'Villa Parque Presidente Figueroa Alcorta',2),(387,'Villa Parque San Lorenzo',2),(388,'Villa San Andres',2),(389,'Villa Yapeyu',2),(390,'Baigorrita',2),(391,'La Delfina',2),(392,'Los Toldos',2),(393,'San Emilio',2),(394,'Zavalia',2),(395,'Banderalo',2),(396,'Cañada Seca',2),(397,'Coronel Charlone',2),(398,'Emilio V. Bunge',2),(399,'General Villegas',2),(400,'Massey',2),(401,'Pichincha',2),(402,'Piedritas',2),(403,'Santa Eleodora',2),(404,'Santa Regina',2),(405,'Villa Saboya',2),(406,'Villa Sauze',2),(407,'Arroyo Venado',2),(408,'Casbas',2),(409,'Garre',2),(410,'Guamini',2),(411,'Laguna Alsina',2),(412,'Henderson',2),(413,'Herrera Vegas',2),(414,'Hurlingham',2),(415,'Villa Santos Tesei',2),(416,'William C. Morris',2),(417,'Ituzaingo Centro',2),(418,'Ituzaingo Sur',2),(419,'Villa Gobernador Udaondo',2),(420,'Del Viso',2),(421,'Jose C. Paz',2),(422,'Tortuguitas',2),(423,'Agustin Roca',2),(424,'Agustina',2),(425,'Balneario Laguna De Gomez',2),(426,'Fortin Tiburcio',2),(427,'Junin',2),(428,'La Agraria',2),(429,'Laplacette',2),(430,'Morse',2),(431,'Saforcada',2),(432,'Las Toninas',2),(433,'Aguas Verdes',2),(434,'Lucila Del Mar',2),(435,'Mar De Ajo',2),(436,'Mar De Ajo Norte',2),(437,'San Bernardo',2),(438,'San Clemente Del Tuyu',2),(439,'Mar Del Tuyu',2),(440,'Santa Teresita',2),(441,'Aldo Bonzi',2),(442,'Ciudad Evita',2),(443,'Gonzalez Catan',2),(444,'Gregorio De Laferrere',2),(445,'Isidro Casanova',2),(446,'La Tablada',2),(447,'Lomas Del Mirador',2),(448,'Rafael Castillo',2),(449,'Ramos Mejia',2),(450,'San Justo',2),(451,'Tapiales',2),(452,'20 De Junio',2),(453,'Villa Eduardo Madero',2),(454,'Villa Luzuriaga',2),(455,'Virrey Del Pino',2),(456,'Lanus Este',2),(457,'Lanus Oeste',2),(458,'Monte Chingolo',2),(459,'Remedios Escalada De San Martin',2),(460,'Valentin Alsina',2),(461,'Country Club El Rodeo',2),(462,'Ignacio Correas',2),(463,'Abasto',2),(464,'Angel Etcheverry',2),(465,'Arana',2),(466,'Arturo Segui',2),(467,'Barrio El Carmen (Oeste)',2),(468,'Barrio Gambier',2),(469,'Barrio Las Malvinas',2),(470,'Barrio Las Quintas',2),(471,'City Bell',2),(472,'El Retiro',2),(473,'Joaquin Gorina',2),(474,'Jose Hernandez',2),(475,'Jose Melchor Romero',2),(476,'La Cumbre',2),(477,'La Plata',2),(478,'Lisandro Olmos',2),(479,'Los Hornos',2),(480,'Manuel B. Gonnet',2),(481,'Ringuelet',2),(482,'Rufino De Elizalde',2),(483,'Tolosa',2),(484,'Transradio',2),(485,'Villa Elisa',2),(486,'Villa Elvira',2),(487,'Villa Garibaldi',2),(488,'Villa Montoro',2),(489,'Villa Parque Sicardi',2),(490,'Lomas De Copello',2),(491,'Barrio Ruta Sol',2),(492,'Laprida',2),(493,'Pueblo Nuevo',2),(494,'Pueblo San Jorge',2),(495,'Coronel Boerr',2),(496,'El Trigo',2),(497,'Las Flores',2),(498,'Pardo',2),(499,'Alberdi Viejo',2),(500,'El Dorado',2),(501,'Fortin Acha',2),(502,'Juan Bautista Alberdi',2),(503,'Leandro N. Alem',2),(504,'Vedia',2),(505,'Arenaza',2),(506,'Bayauca',2),(507,'Bermudez',2),(508,'Carlos Salas',2),(509,'Coronel Martinez De Hoz',2),(510,'El Triunfo',2),(511,'Las Toscas',2),(512,'Lincoln',2),(513,'Pasteur',2),(514,'Roberts',2),(515,'Triunvirato',2),(516,'Arenas Verdes',2),(517,'Licenciado Matienzo',2),(518,'Loberia',2),(519,'Pieres',2),(520,'San Manuel',2),(521,'Tamangueyu',2),(522,'Antonio Carboni',2),(523,'Elvira',2),(524,'Laguna De Lobos',2),(525,'Lobos',2),(526,'Salvador Maria',2),(527,'Banfield',2),(528,'Llavallol',2),(529,'Lomas De Zamora',2),(530,'Temperley',2),(531,'Turdera',2),(532,'Villa Centenario',2),(533,'Villa Fiorito',2),(534,'Carlos Keen',2),(535,'Club De Campo Los Puentes',2),(536,'Lujan',2),(537,'Barrio Las Casuarinas',2),(538,'Cortines',2),(539,'Lezica Y Torrezuri',2),(540,'Villa Flandria Norte (Pueblo Nuevo)',2),(541,'Villa Flandria Sur (Est. Jauregui)',2),(542,'Country Club Las Praderas',2),(543,'Open Door',2),(544,'Olivera',2),(545,'Torres',2),(546,'Atalaya',2),(547,'General Mansilla',2),(548,'Los Naranjos',2),(549,'Magdalena',2),(550,'Roberto J. Payro',2),(551,'Vieytes',2),(552,'Las Armas',2),(553,'Maipu',2),(554,'Santo Domingo',2),(555,'Area De Promocion El Triangulo',2),(556,'Grand Bourg',2),(557,'Ingeniero Adolfo Sourdeaux',2),(558,'Ingeniero Pablo Nogues',2),(559,'Los Polvorines',2),(560,'Villa De Mayo',2),(561,'Coronel Vidal',2),(562,'General Piran',2),(563,'La Armonia',2),(564,'Mar Chiquita',2),(565,'La Baliza',2),(566,'La Caleta',2),(567,'Mar De Cobo',2),(568,'Atlantida',2),(569,'Camet Norte',2),(570,'Frente Mar',2),(571,'Playa Dorada',2),(572,'Santa Clara Del Mar',2),(573,'Santa Elena',2),(574,'Vivorata',2),(575,'Barrio Santa Rosa',2),(576,'Barrios Lisandro De La Torre Y Santa Marta',2),(577,'Marcos Paz',2),(578,'Goldney',2),(579,'Gowland',2),(580,'Mercedes',2),(581,'Tomas Jofre',2),(582,'Libertad',2),(583,'Mariano Acosta',2),(584,'Merlo',2),(585,'Pontevedra',2),(586,'San Antonio De Padua',2),(587,'Abbott',2),(588,'San Miguel Del Monte',2),(589,'Zenon Videla Dorna',2),(590,'Balneario Sauce Grande',2),(591,'Monte Hermoso',2),(592,'Cuartel V',2),(593,'Francisco Alvarez',2),(594,'La Reja',2),(595,'Moreno',2),(596,'Paso Del Rey',2),(597,'Trujui',2),(598,'Castelar',2),(599,'El Palomar',2),(600,'Haedo',2),(601,'Moron',2),(602,'Villa Sarmiento',2),(603,'Jose Juan Almeyra',2),(604,'Las Marianas',2),(605,'Navarro',2),(606,'Villa Moll',2),(607,'Claraz',2),(608,'Energia',2),(609,'Juan N. Fernandez',2),(610,'Necochea',2),(611,'Quequen',2),(612,'Costa Bonita',2),(613,'Nicanor Olivera',2),(614,'Ramon Santamarina',2),(615,'Alfredo Demarchi',2),(616,'Carlos Maria Naon',2),(617,'12 De Octubre',2),(618,'Dudignac',2),(619,'La Aurora',2),(620,'Marcelino Ugarte',2),(621,'Morea',2),(622,'Norumbega',2),(623,'9 De Julio',2),(624,'Patricios',2),(625,'Villa General Fournier',2),(626,'Blancagrande',2),(627,'Colonia Nievas',2),(628,'Colonia San Miguel',2),(629,'Espigas',2),(630,'Hinojo',2),(631,'Colonia Hinojo',2),(632,'Olavarria',2),(633,'Recalde',2),(634,'Santa Luisa',2),(635,'Sierra Chica',2),(636,'Sierras Bayas',2),(637,'Villa Arrieta',2),(638,'Villa Alfredo Fortabat',2),(639,'Villa La Serrania',2),(640,'Bahia San Blas',2),(641,'Cardenal Cagliero',2),(642,'Carmen De Patagones',2),(643,'Jose B. Casas',2),(644,'Juan A. Pradere',2),(645,'Stroeder',2),(646,'Villalonga',2),(647,'Capitan Castro',2),(648,'Chiclana',2),(649,'Francisco Madero',2),(650,'Inocencio Sosa',2),(651,'Juan Jose Paso',2),(652,'Magdala',2),(653,'Mones Cazon',2),(654,'Nueva Plata',2),(655,'Pehuajo',2),(656,'Bocayuva',2),(657,'De Bary',2),(658,'Pellegrini',2),(659,'Acevedo',2),(660,'Fontezuela',2),(661,'Guerrico',2),(662,'Juan A. De La Peña',2),(663,'Juan Anchorena',2),(664,'La Violeta',2),(665,'Manuel Ocampo',2),(666,'Mariano Benitez',2),(667,'Mariano H. Alfonzo',2),(668,'Pergamino',2),(669,'Pinzon',2),(670,'Rancagua',2),(671,'Villa Angelica',2),(672,'Villa San Jose',2),(673,'Casalins',2),(674,'Pila',2),(675,'Fatima',2),(676,'La Lonja',2),(677,'Los Cachorros',2),(678,'Manzanares',2),(679,'Manzone',2),(680,'Maquinista F. Savio (Oeste)',2),(681,'Pilar',2),(682,'Presidente Derqui',2),(683,'Roberto De Vicenzo',2),(684,'Santa Teresa',2),(685,'Villa Astolfi',2),(686,'Villa Rosa',2),(687,'Zelaya',2),(688,'Carilo',2),(689,'Ostende',2),(690,'Pinamar',2),(691,'Valeria Del Mar',2),(692,'Barrio America Unida',2),(693,'Guernica',2),(694,'Azopardo',2),(695,'Bordenave',2),(696,'Darregueira',2),(697,'17 De Agosto',2),(698,'Estela',2),(699,'Felipe Sola',2),(700,'Lopez Lecube',2),(701,'Puan',2),(702,'San German',2),(703,'Villa Castelar',2),(704,'Villa Iris',2),(705,'Alvarez Jonte',2),(706,'Pipinas',2),(707,'Punta Indio',2),(708,'Veronica',2),(709,'Bernal',2),(710,'Bernal Oeste',2),(711,'Don Bosco',2),(712,'Ezpeleta',2),(713,'Ezpeleta Oeste',2),(714,'Quilmes',2),(715,'Quilmes Oeste',2),(716,'Villa La Florida',2),(717,'El Paraiso',2),(718,'Las Bahamas',2),(719,'Perez Millan',2),(720,'Ramallo',2),(721,'Villa General Savio',2),(722,'Villa Ramallo',2),(723,'Rauch',2),(724,'America',2),(725,'Fortin Olavarria',2),(726,'Gonzalez Moreno',2),(727,'Mira Pampa',2),(728,'Roosevelt',2),(729,'San Mauricio',2),(730,'Sansinena',2),(731,'Sundblad',2),(732,'La Beba',2),(733,'Las Carabelas',2),(734,'Los Indios',2),(735,'Rafael Obligado',2),(736,'Roberto Cano',2),(737,'Rojas',2),(738,'Barrio Las Margaritas',2),(739,'Villa Parque Cecir',2),(740,'Estacion Sol De Mayo',2),(741,'Villa Manuel Pomar',2),(742,'Carlos Beguerie',2),(743,'Roque Perez',2),(744,'Arroyo Corto',2),(745,'Colonia San Martin',2),(746,'Dufaur',2),(747,'Espartillar (E)',2),(748,'Goyena',2),(749,'Las Encadenadas',2),(750,'Pigue',2),(751,'Saavedra',2),(752,'Alvarez De Toledo',2),(753,'Cazon',2),(754,'Del Carril',2),(755,'Polvaredas',2),(756,'Saladillo',2),(757,'Arroyo Dulce',2),(758,'Berdier',2),(759,'Gahan',2),(760,'Ines Indart',2),(761,'La Invencible',2),(762,'Salto',2),(763,'Quenuma',2),(764,'Salliquelo',2),(765,'Azcuenaga',2),(766,'Culullu',2),(767,'Franklin',2),(768,'San Andres De Giles',2),(769,'Solis',2),(770,'Villa Espil',2),(771,'Villa Ruiz',2),(772,'Duggan',2),(773,'San Antonio De Areco',2),(774,'Villa Lia',2),(775,'Balneario San Cayetano',2),(776,'Ochandio',2),(777,'San Cayetano',2),(778,'San Fernando',2),(779,'Victoria',2),(780,'Virreyes',2),(781,'Acassuso',2),(782,'Beccar',2),(783,'Boulogne Sur Mer',2),(784,'Martinez',2),(785,'San Isidro',2),(786,'Villa Adelina',2),(787,'Bella Vista',2),(788,'Campo De Mayo',2),(789,'Muñiz',2),(790,'San Miguel',2),(791,'Conesa',2),(792,'Erezcano',2),(793,'General Rojo',2),(794,'La Emilia',2),(795,'Villa Campi',2),(796,'Villa Canto',2),(797,'Villa Riccio',2),(798,'Campos Salles',2),(799,'San Nicolas De Los Arroyos',2),(800,'Villa Esperanza',2),(801,'Gobernador Castro',2),(802,'Ingeniero Moneta',2),(803,'Obligado',2),(804,'Pueblo Doyle',2),(805,'Rio Tala',2),(806,'San Pedro',2),(807,'Santa Lucia',2),(808,'Alejandro Korn',2),(809,'San Vicente',2),(810,'Domselaar',2),(811,'General Rivas',2),(812,'Suipacha',2),(813,'De La Canal',2),(814,'Gardey',2),(815,'Maria Ignacia',2),(816,'Tandil',2),(817,'Crotto',2),(818,'Tapalque',2),(819,'Velloso',2),(820,'Benavidez',2),(821,'Dique Lujan',2),(822,'Don Torcuato Este',2),(823,'Don Torcuato Oeste',2),(824,'El Talar',2),(825,'General Pacheco',2),(826,'Los Troncos Del Talar',2),(827,'Ricardo Rojas',2),(828,'Rincon De Milberg',2),(829,'Tigre',2),(830,'General Conesa',2),(831,'Chasico',2),(832,'Saldungaray',2),(833,'Sierra De La Ventana',2),(834,'Tornquist',2),(835,'Tres Picos',2),(836,'Villa Serrana La Gruta',2),(837,'Villa Ventana',2),(838,'Berutti',2),(839,'Girodias',2),(840,'La Carreta',2),(841,'30 De Agosto',2),(842,'Trenque Lauquen',2),(843,'Tronge',2),(844,'Balneario Orense',2),(845,'Claromeco',2),(846,'Dunamar',2),(847,'Copetonas',2),(848,'Lin Calel',2),(849,'Micaela Cascallares',2),(850,'Orense',2),(851,'Reta',2),(852,'San Francisco De Bellocq',2),(853,'San Mayol',2),(854,'Tres Arroyos',2),(855,'Villa Rodriguez',2),(856,'Caseros',2),(857,'Churruca',2),(858,'Ciudad Jardin Lomas Del Palomar',2),(859,'Ciudadela',2),(860,'El Libertador',2),(861,'Jose Ingenieros',2),(862,'Loma Hermosa',2),(863,'Martin Coronado',2),(864,'11 De Septiembre',2),(865,'Pablo Podesta',2),(866,'Remedios De Escalada',2),(867,'Saenz Peña',2),(868,'Santos Lugares',2),(869,'Villa Bosch (Est. Juan Maria Bosch)',2),(870,'Villa Raffo',2),(871,'Ingeniero Thompson',2),(872,'Tres Lomas',2),(873,'Agustin Mosconi',2),(874,'Del Valle',2),(875,'Ernestina',2),(876,'Gobernador Ugarte',2),(877,'Lucas Monteverde',2),(878,'Norberto De La Riestra',2),(879,'Pedernales',2),(880,'San Enrique',2),(881,'Valdes',2),(882,'25 De Mayo',2),(883,'Carapachay',2),(884,'Florida',2),(885,'Florida Oeste',2),(886,'La Lucila',2),(887,'Munro',2),(888,'Olivos',2),(889,'Vicente Lopez',2),(890,'Villa Martelli',2),(891,'Mar Azul',2),(892,'Mar De Las Pampas',2),(893,'Villa Gesell',2),(894,'Argerich',2),(895,'Colonia San Adolfo',2),(896,'Country Los Medanos',2),(897,'Hilario Ascasubi',2),(898,'Juan Couste',2),(899,'Mayor Buratovich',2),(900,'Medanos',2),(901,'Pedro Luro',2),(902,'Teniente Origone',2),(903,'Country Club El Casco',2),(904,'Escalada',2),(905,'Lima',2),(906,'Zarate',2),(907,'Barrio Saavedra',2),(908,'Carhue',2),(909,'Colonia San Miguel Arcangel',2),(910,'Delfin Huergo',2),(911,'Espartillar',2),(912,'Esteban Agustin Gascon',2),(913,'La Pala',2),(914,'Maza',2),(915,'Rivera',2),(916,'Villa Margarita',2),(917,'Yutuyaco',2),(918,'Adolfo Gonzales Chaves',2),(919,'De La Garma',2),(920,'Juan E. Barra',2),(921,'Vasquez',2),(922,'Barrio Ruta 24 Kilometro 10',2),(923,'Chuchucaruana',3),(924,'Colpes',3),(925,'El Bolson',3),(926,'El Rodeo',3),(927,'Huaycama',3),(928,'La Puerta',3),(929,'Las Chacritas',3),(930,'Las Juntas',3),(931,'Los Castillos',3),(932,'Los Talas',3),(933,'Los Varela',3),(934,'Singuil',3),(935,'Ancasti',3),(936,'Anquincila',3),(937,'La Candelaria',3),(938,'La Majada',3),(939,'Amanao',3),(940,'Andalgala',3),(941,'Chaquiago',3),(942,'Choya',3),(943,'Buena Vista',3),(944,'El Alamito',3),(945,'Aconquija',3),(946,'Alto De Las Juntas',3),(947,'El Lindero',3),(948,'La Mesada',3),(949,'El Potrero',3),(950,'La Aguada',3),(951,'Antofagasta De La Sierra',3),(952,'Antofalla',3),(953,'El Peñon',3),(954,'Los Nacimientos',3),(955,'Barranca Larga',3),(956,'Belen',3),(957,'Condor Huasi',3),(958,'Corral Quemado',3),(959,'El Durazno',3),(960,'Farallon Negro',3),(961,'Hualfin',3),(962,'Jacipunco',3),(963,'La Puntilla',3),(964,'Londres',3),(965,'Puerta De Corral Quemado',3),(966,'Puerta De San Jose',3),(967,'Villa Vil',3),(968,'Adolfo E. Carranza',3),(969,'Balde De La Punta',3),(970,'Capayan',3),(971,'Chumbicha',3),(972,'Colonia Del Valle',3),(973,'Colonia Nueva Coneta',3),(974,'Concepcion',3),(975,'Coneta',3),(976,'El Bañado',3),(977,'Huillapima',3),(978,'Los Angeles',3),(979,'Los Angeles Norte',3),(980,'Los Angeles Sur',3),(981,'Miraflores',3),(982,'San Martin',3),(983,'San Pablo',3),(984,'San Pedro',3),(985,'El Pantanillo',3),(986,'San Fernando Del Valle De Catamarca',3),(987,'El Alto',3),(988,'Guayamba',3),(989,'Infanzon',3),(990,'Los Corrales',3),(991,'Tapso',3),(992,'Vilisman',3),(993,'Collagasta',3),(994,'Pomancillo Este',3),(995,'Pomancillo Oeste',3),(996,'El Hueco',3),(997,'La Carrera',3),(998,'La Falda De San Antonio',3),(999,'La Tercena',3),(1000,'San Antonio',3),(1001,'San Jose',3),(1002,'Villa Las Pirquitas',3),(1003,'Casa De Piedra',3),(1004,'El Aybal',3),(1005,'El Divisadero',3),(1006,'El Quimilo',3),(1007,'Esquiu',3),(1008,'Icaño',3),(1009,'La Dorada',3),(1010,'La Guardia',3),(1011,'Las Esquinas',3),(1012,'Las Palmitas',3),(1013,'Quiros',3),(1014,'Ramblones',3),(1015,'Recreo',3),(1016,'Amadores',3),(1017,'El Rosario',3),(1018,'La Bajada',3),(1019,'La Higuera',3),(1020,'La Merced',3),(1021,'La Viña',3),(1022,'Las Lajas',3),(1023,'Monte Potrero',3),(1024,'Palo Labrado',3),(1025,'Villa De Balcozna',3),(1026,'Apoyaco',3),(1027,'Colana',3),(1028,'El Pajonal',3),(1029,'Joyango',3),(1030,'Mutquin',3),(1031,'Poman',3),(1032,'Rincon',3),(1033,'San Miguel',3),(1034,'Saujil',3),(1035,'Sijan',3),(1036,'Andalhuala',3),(1037,'Caspichango',3),(1038,'Chañar Punco',3),(1039,'Lampacito',3),(1040,'Medanitos',3),(1041,'El Cajon',3),(1042,'El Desmonte',3),(1043,'El Puesto',3),(1044,'Famatanca',3),(1045,'San Jose Banda',3),(1046,'Fuerte Quemado',3),(1047,'La Hoyada',3),(1048,'La Loma',3),(1049,'El Cerrito',3),(1050,'Las Mojarras',3),(1051,'Loro Huasi',3),(1052,'Punta De Balasto',3),(1053,'Palo Seco',3),(1054,'San Jose Norte',3),(1055,'San Jose Villa',3),(1056,'Santa Maria',3),(1057,'Yapes',3),(1058,'Alijilan',3),(1059,'Bañado De Ovanta',3),(1060,'Las Cañas',3),(1061,'Lavalle',3),(1062,'Los Altos',3),(1063,'Manantiales',3),(1064,'Anillaco',3),(1065,'Antinaco',3),(1066,'Banda De Lucero',3),(1067,'Cerro Negro',3),(1068,'Copacabana',3),(1069,'Cordobita',3),(1070,'Costa De Reyes',3),(1071,'El Pueblito',3),(1072,'El Salado',3),(1073,'Fiambala',3),(1074,'La Ramadita',3),(1075,'Pampa Blanca',3),(1076,'Los Balverdis',3),(1077,'Palo Blanco',3),(1078,'Punta Del Agua',3),(1079,'Taton',3),(1080,'Tinogasta',3),(1081,'El Portezuelo',3),(1082,'Las Tejas',3),(1083,'Polcos',3),(1084,'Pozo Del Mistol',3),(1085,'San Isidro',3),(1086,'Santa Rosa',3),(1087,'Sumalao',3),(1088,'Villa Dolores',3),(1089,'Santa Cruz',3),(1090,'Concepcion Del Bermejo',4),(1091,'Los Frentones',4),(1092,'Pampa Del Infierno',4),(1093,'Rio Muerto',4),(1094,'Taco Pozo',4),(1095,'General Vedia',4),(1096,'Isla Del Cerrito',4),(1097,'La Leonesa',4),(1098,'Las Palmas',4),(1099,'Puerto Bermejo Nuevo',4),(1100,'Puerto Bermejo Viejo',4),(1101,'Puerto Eva Peron',4),(1102,'Presidencia Roque Saenz Pena',4),(1103,'Charata',4),(1104,'Gancedo',4),(1105,'General Capdevila',4),(1106,'General Pinedo',4),(1107,'Meson De Fierro',4),(1108,'Pampa Landriel',4),(1109,'Hermoso Campo',4),(1110,'Itin',4),(1111,'Chorotis',4),(1112,'Santa Sylvina',4),(1113,'Venados Grandes',4),(1114,'Corzuela',4),(1115,'La Escondida',4),(1116,'La Verde',4),(1117,'Lapachito',4),(1118,'Makalle',4),(1119,'El Espinillo',4),(1120,'El Sauzal',4),(1121,'El Sauzalito',4),(1122,'Fortin Lavalle',4),(1123,'Fuerte Esperanza',4),(1124,'Juan Jose Castelli',4),(1125,'Nueva Pompeya',4),(1126,'Villa Rio Bermejito',4),(1127,'Wichi',4),(1128,'Zaparinqui',4),(1129,'Avia Terai',4),(1130,'Campo Largo',4),(1131,'Fortin Las Chuñas',4),(1132,'Napenay',4),(1133,'Colonia Popular',4),(1134,'Estacion General Obligado',4),(1135,'Laguna Blanca',4),(1136,'Puerto Tirol',4),(1137,'Ciervo Petiso',4),(1138,'General Jose De San Martin',4),(1139,'La Eduvigis',4),(1140,'Laguna Limpia',4),(1141,'Pampa Almiron',4),(1142,'Pampa Del Indio',4),(1143,'Presidencia Roca',4),(1144,'Selvas Del Rio De Oro',4),(1145,'Tres Isletas',4),(1146,'Coronel Du Graty',4),(1147,'Enrique Urien',4),(1148,'Villa Angela',4),(1149,'Las Breñas',4),(1150,'La Clotilde',4),(1151,'La Tigra',4),(1152,'San Bernardo',4),(1153,'Presidencia De La Plaza',4),(1154,'Barrio De Los Pescadores',4),(1155,'Colonia Benitez',4),(1156,'Margarita Belen',4),(1157,'Quitilipi',4),(1158,'Villa El Palmar',4),(1159,'Barranqueras',4),(1160,'Basail',4),(1161,'Colonia Baranda',4),(1162,'Fontana',4),(1163,'Puerto Vilelas',4),(1164,'Resistencia',4),(1165,'Samuhu',4),(1166,'Villa Berthet',4),(1167,'Capitan Solari',4),(1168,'Colonia Elisa',4),(1169,'Colonias Unidas',4),(1170,'Ingeniero Barbet',4),(1171,'Las Garcitas',4),(1172,'Charadai',4),(1173,'Cote Lai',4),(1174,'Haumonia',4),(1175,'Horquilla',4),(1176,'La Sabana',4),(1177,'Colonia Aborigen',4),(1178,'Machagai',4),(1179,'Napalpi',4),(1180,'Miraflores',4),(1181,'Arroyo Verde',5),(1182,'Puerto Madryn',5),(1183,'Puerto Piramide',5),(1184,'Quinta El Mirador',5),(1185,'Reserva Area Protegida El Doradillo',5),(1186,'Buenos Aires Chico',5),(1187,'Cholila',5),(1188,'Costa De Chubut',5),(1189,'Cushamen Centro',5),(1190,'El Hoyo',5),(1191,'El Maiten',5),(1192,'Epuyen',5),(1193,'Fofo Cahuel',5),(1194,'Gualjaina',5),(1195,'Lago Epuyen',5),(1196,'Lago Puelo',5),(1197,'Leleque',5),(1198,'Astra',5),(1199,'Bahia Bustamante',5),(1200,'Acceso Norte',5),(1201,'Barrio Caleta Cordova',5),(1202,'Barrio Caleta Olivares',5),(1203,'Barrio Castelli',5),(1204,'Barrio Ciudadela',5),(1205,'Barrio Gasoducto',5),(1206,'Barrio Güemes',5),(1207,'Barrio Laprida',5),(1208,'Barrio Manantial Rosales',5),(1209,'Barrio Militar - Aeropuerto Militar',5),(1210,'Barrio Prospero Palazzo',5),(1211,'Barrio Restinga Ali',5),(1212,'Barrio Rodriguez Peña',5),(1213,'Barrio Saavedra',5),(1214,'Barrio Sarmiento',5),(1215,'Barrio 25 De Mayo',5),(1216,'Barrio Villa S.U.P.E.',5),(1217,'Comodoro Rivadavia',5),(1218,'Km. 5 - Presidente Ortiz',5),(1219,'Km. 8 - Don Bosco',5),(1220,'Km. 11 - Cuarteles',5),(1221,'Km. 3 - General Mosconi',5),(1222,'Diadema Argentina',5),(1223,'Rada Tilly',5),(1224,'Camarones',5),(1225,'Garayalde',5),(1226,'Aldea Escolar',5),(1227,'Corcovado',5),(1228,'Esquel',5),(1229,'Lago Rosario',5),(1230,'Los Cipreses',5),(1231,'Trevelin',5),(1232,'Villa Futalaufquen',5),(1233,'Dique Florentino Ameghino',5),(1234,'Dolavon',5),(1235,'Gaiman',5),(1236,'28 De Julio',5),(1237,'Blancuntre',5),(1238,'El Escorial',5),(1239,'Gastre',5),(1240,'Lagunita Salada',5),(1241,'Yala Laubat',5),(1242,'Aldea Epulef',5),(1243,'Carrenleufu',5),(1244,'Colan Conhue',5),(1245,'Paso Del Sapo',5),(1246,'Tecka',5),(1247,'El Mirasol',5),(1248,'Las Plumas',5),(1249,'Cerro Condor',5),(1250,'Los Altares',5),(1251,'Paso De Indios',5),(1252,'Playa Magagna',5),(1253,'Playa Union',5),(1254,'Rawson',5),(1255,'Trelew',5),(1256,'Aldea Apeleg',5),(1257,'Aldea Beleiro',5),(1258,'Alto Rio Senguer',5),(1259,'Doctor Ricardo Rojas',5),(1260,'Facundo',5),(1261,'Lago Blanco',5),(1262,'Rio Mayo',5),(1263,'Buen Pasto',5),(1264,'Sarmiento',5),(1265,'Frontera De Rio Pico',5),(1266,'Gobernador Costa',5),(1267,'Jose De San Martin',5),(1268,'Rio Pico',5),(1269,'Gan Gan',5),(1270,'Telsen',5),(1271,'Amboy',6),(1272,'Arroyo San Antonio',6),(1273,'Cañada Del Sauce',6),(1274,'Capilla Vieja',6),(1275,'El Corcovado - El Torreon',6),(1276,'El Durazno',6),(1277,'Embalse',6),(1278,'La Cruz',6),(1279,'La Cumbrecita',6),(1280,'Las Bajadas',6),(1281,'Las Caleras',6),(1282,'Los Condores',6),(1283,'Los Molinos',6),(1284,'Villa San Miguel',6),(1285,'Los Reartes',6),(1286,'Lutti',6),(1287,'Parque Calmayo',6),(1288,'Rio De Los Sauces',6),(1289,'San Agustin',6),(1290,'San Ignacio (Loteo San Javier)',6),(1291,'Santa Rosa De Calamuchita',6),(1292,'Santa Monica',6),(1293,'San Ignacio (Loteo Velez Crespo)',6),(1294,'Segunda Usina',6),(1295,'Solar De Los Molinos',6),(1296,'Villa Alpina',6),(1297,'Villa Amancay',6),(1298,'Villa Berna',6),(1299,'Villa Ciudad Parque Los Reartes',6),(1300,'Villa Ciudad Parques Los Reartes (1° Seccion)',6),(1301,'Villa Ciudad Parque Los Reartes (3° Seccion)',6),(1302,'Villa Del Dique',6),(1303,'Villa El Tala',6),(1304,'Villa General Belgrano',6),(1305,'Villa La Rivera',6),(1306,'Villa Quillinzo',6),(1307,'Villa Rumipal',6),(1308,'Villa Yacanto',6),(1309,'Cordoba',6),(1310,'Jardin Arenales',6),(1311,'La Floresta',6),(1312,'Agua De Oro',6),(1313,'Ascochinga',6),(1314,'Barrio Nuevo Rio Ceballos',6),(1315,'Canteras El Sauce',6),(1316,'Casa Bamba',6),(1317,'Colonia Caroya',6),(1318,'Colonia Tirolesa',6),(1319,'Colonia Vicente Aguero',6),(1320,'Villa Corazon De Maria',6),(1321,'Corral Quemado',6),(1322,'Country Chacras De La Villa - Country Sa',6),(1323,'Country Chacras De La Villa',6),(1324,'Country San Isidro',6),(1325,'El Manzano',6),(1326,'Estacion Colonia Tirolesa',6),(1327,'General Paz',6),(1328,'Jesus Maria',6),(1329,'La Calera',6),(1330,'Dumesnil',6),(1331,'El Diquecito',6),(1332,'La Granja',6),(1333,'La Morada',6),(1334,'La Puerta',6),(1335,'Las Corzuelas',6),(1336,'Los Molles',6),(1337,'Malvinas Argentinas',6),(1338,'Mendiolaza',6),(1339,'Mi Granja',6),(1340,'Pajas Blancas',6),(1341,'Rio Ceballos',6),(1342,'Saldan',6),(1343,'Salsipuedes',6),(1344,'El Pueblito',6),(1345,'Santa Elena',6),(1346,'Tinoco',6),(1347,'Unquillo',6),(1348,'Villa Allende',6),(1349,'Villa Cerro Azul',6),(1350,'Villa El Fachinal - Parque Norte - Guiña',6),(1351,'Guiñazu Norte',6),(1352,'Parque Norte',6),(1353,'1 De Agosto',6),(1354,'Almirante Brown',6),(1355,'Ciudad De Los Niños',6),(1356,'Villa Pastora',6),(1357,'Villa Los Llanos',6),(1358,'Juarez Celman',6),(1359,'Alto De Los Quebrachos',6),(1360,'Bañado De Soto',6),(1361,'Canteras Quilpo',6),(1362,'Cruz De Caña',6),(1363,'Cruz Del Eje',6),(1364,'El Brete',6),(1365,'El Rincon',6),(1366,'Guanaco Muerto',6),(1367,'La Banda',6),(1368,'La Batea',6),(1369,'La Higuera',6),(1370,'Las Cañadas',6),(1371,'Las Playas',6),(1372,'Los Chañaritos',6),(1373,'Media Naranja',6),(1374,'Paso Viejo',6),(1375,'San Marcos Sierra',6),(1376,'Serrezuela',6),(1377,'Tuclame',6),(1378,'Villa De Soto',6),(1379,'Del Campillo',6),(1380,'Estacion Lecueder',6),(1381,'Hipolito Bouchard',6),(1382,'Huinca Renanco',6),(1383,'Italo',6),(1384,'Mattaldi',6),(1385,'Nicolas Bruzzone',6),(1386,'Onagoity',6),(1387,'Pincen',6),(1388,'Ranqueles',6),(1389,'Santa Magdalena',6),(1390,'Villa Huidobro',6),(1391,'Villa Sarmiento',6),(1392,'Villa Valeria',6),(1393,'Arroyo Algodon',6),(1394,'Arroyo Cabral',6),(1395,'Ausonia',6),(1396,'Chazon',6),(1397,'Etruria',6),(1398,'La Laguna',6),(1399,'La Palestina',6),(1400,'La Playosa',6),(1401,'Las Mojarras',6),(1402,'Luca',6),(1403,'Pasco',6),(1404,'Sanabria',6),(1405,'Silvio Pellico',6),(1406,'Ticino',6),(1407,'Tio Pujio',6),(1408,'Villa Albertina',6),(1409,'Villa Maria',6),(1410,'Villa Nueva',6),(1411,'Villa Oeste',6),(1412,'Avellaneda',6),(1413,'Cañada De Rio Pinto',6),(1414,'Chuña',6),(1415,'Copacabana',6),(1416,'Dean Funes',6),(1417,'Esquina Del Alambre',6),(1418,'Los Pozos',6),(1419,'Olivares De San Nicolas',6),(1420,'Quilino',6),(1421,'San Pedro De Toyos',6),(1422,'Villa Gutierrez',6),(1423,'Villa Quilino',6),(1424,'Alejandro Roca',6),(1425,'Assunta',6),(1426,'Bengolea',6),(1427,'Carnerillo',6),(1428,'Charras',6),(1429,'El Rastreador',6),(1430,'General Cabrera',6),(1431,'General Deheza',6),(1432,'Huanchillas',6),(1433,'La Carlota',6),(1434,'Los Cisnes',6),(1435,'Olaeta',6),(1436,'Pacheco De Melo',6),(1437,'Paso Del Durazno',6),(1438,'Santa Eufemia',6),(1439,'Ucacha',6),(1440,'Villa Reduccion',6),(1441,'Alejo Ledesma',6),(1442,'Arias',6),(1443,'Camilo Aldao',6),(1444,'Capitan General Bernardo O`Higgins',6),(1445,'Cavanagh',6),(1446,'Colonia Barge',6),(1447,'Colonia Italiana',6),(1448,'Colonia Veinticinco',6),(1449,'Corral De Bustos',6),(1450,'Cruz Alta',6),(1451,'General Baldissera',6),(1452,'General Roca',6),(1453,'Guatimozin',6),(1454,'Inriville',6),(1455,'Isla Verde',6),(1456,'Leones',6),(1457,'Los Surgentes',6),(1458,'Marcos Juarez',6),(1459,'Monte Buey',6),(1460,'Saira',6),(1461,'Saladillo',6),(1462,'Villa Elisa',6),(1463,'Cienaga Del Coro',6),(1464,'El Chacho',6),(1465,'Estancia De Guadalupe',6),(1466,'Guasapampa',6),(1467,'La Playa',6),(1468,'San Carlos Minas',6),(1469,'Talaini',6),(1470,'Tosno',6),(1471,'Chancani',6),(1472,'Las Palmas',6),(1473,'Los Talares',6),(1474,'Salsacate',6),(1475,'San Geronimo',6),(1476,'Tala Cañada',6),(1477,'Taninga',6),(1478,'Villa De Pocho',6),(1479,'General Levalle',6),(1480,'La Cesira',6),(1481,'Laboulaye',6),(1482,'Leguizamon',6),(1483,'Melo',6),(1484,'Rio Bamba',6),(1485,'Rosales',6),(1486,'San Joaquin',6),(1487,'Serrano',6),(1488,'Villa Rossi',6),(1489,'Barrio Santa Isabel',6),(1490,'Bialet Masse',6),(1491,'San Roque Del Lago',6),(1492,'Cabalango',6),(1493,'Capilla Del Monte',6),(1494,'Casa Grande',6),(1495,'Charbonier',6),(1496,'Cosquin',6),(1497,'Cuesta Blanca',6),(1498,'Estancia Vieja',6),(1499,'Huerta Grande',6),(1500,'La Cumbre',6),(1501,'La Falda',6),(1502,'Las Jarillas',6),(1503,'Los Cocos',6),(1504,'Mallin',6),(1505,'Mayu Sumaj',6),(1506,'Quebrada De Luna',6),(1507,'San Antonio De Arredondo',6),(1508,'San Esteban',6),(1509,'San Roque',6),(1510,'Santa Maria De Punilla',6),(1511,'Tala Huasi',6),(1512,'Tanti',6),(1513,'Valle Hermoso',6),(1514,'Villa Carlos Paz',6),(1515,'Villa Flor Serrana',6),(1516,'Villa Giardino',6),(1517,'Villa Lago Azul',6),(1518,'Villa Parque Siquiman',6),(1519,'Villa Rio Icho Cruz',6),(1520,'Villa San Jose',6),(1521,'Villa Santa Cruz Del Lago',6),(1522,'Achiras',6),(1523,'Adelia Maria',6),(1524,'Alcira',6),(1525,'Alpa Corral',6),(1526,'Berrotaran',6),(1527,'Bulnes',6),(1528,'Chajan',6),(1529,'Chucul',6),(1530,'Coronel Baigorria',6),(1531,'Coronel Moldes',6),(1532,'Elena',6),(1533,'La Carolina',6),(1534,'La Cautiva',6),(1535,'La Gilda',6),(1536,'Las Acequias',6),(1537,'Las Albahacas',6),(1538,'Las Higueras',6),(1539,'Las Peñas',6),(1540,'Las Vertientes',6),(1541,'Malena',6),(1542,'Monte De Los Gauchos',6),(1543,'Rio Cuarto',6),(1544,'Sampacho',6),(1545,'San Basilio',6),(1546,'Santa Catalina',6),(1547,'Suco',6),(1548,'Tosquitas',6),(1549,'Vicuña Mackenna',6),(1550,'Villa El Chacay',6),(1551,'Villa Santa Eugenia',6),(1552,'Washington',6),(1553,'Atahona',6),(1554,'Cañada De Machado',6),(1555,'Capilla De Los Remedios',6),(1556,'Chalacea',6),(1557,'Colonia Las Cuatro Esquinas',6),(1558,'Diego De Rojas',6),(1559,'El Alcalde',6),(1560,'El Crispin',6),(1561,'Esquina',6),(1562,'Kilometro 658',6),(1563,'La Para',6),(1564,'La Posta',6),(1565,'La Quinta',6),(1566,'Las Gramillas',6),(1567,'Las Saladas',6),(1568,'Maquinista Gallini',6),(1569,'Monte Del Rosario',6),(1570,'Montecristo',6),(1571,'Obispo Trejo',6),(1572,'Piquillin',6),(1573,'Plaza De Mercedes',6),(1574,'Pueblo Comechingones',6),(1575,'Rio Primero',6),(1576,'Sagrada Familia',6),(1577,'Santa Rosa De Rio Primero',6),(1578,'Villa Fontana',6),(1579,'Cerro Colorado',6),(1580,'Chañar Viejo',6),(1581,'Eufrasio Loza',6),(1582,'Gutemberg',6),(1583,'La Rinconada',6),(1584,'Los Hoyos',6),(1585,'Puesto De Castro',6),(1586,'Rayo Cortado',6),(1587,'San Pedro De Gutemberg',6),(1588,'Sebastian Elcano',6),(1589,'Villa Candelaria Norte',6),(1590,'Villa De Maria',6),(1591,'Calchin',6),(1592,'Calchin Oeste',6),(1593,'Capilla Del Carmen',6),(1594,'Carrilobo',6),(1595,'Colazo',6),(1596,'Colonia Videla',6),(1597,'Costasacate',6),(1598,'Impira',6),(1599,'Laguna Larga',6),(1600,'Las Junturas',6),(1601,'Luque',6),(1602,'Manfredi',6),(1603,'Matorrales',6),(1604,'Oncativo',6),(1605,'Pilar',6),(1606,'Pozo Del Molle',6),(1607,'Rincon',6),(1608,'Rio Segundo',6),(1609,'Santiago Temple',6),(1610,'Villa Del Rosario',6),(1611,'Ambul',6),(1612,'Arroyo Los Patos',6),(1613,'El Huayco',6),(1614,'La Cortadera',6),(1615,'Las Calles',6),(1616,'Las Oscuras',6),(1617,'Las Rabonas',6),(1618,'Los Callejones',6),(1619,'Mina Clavero',6),(1620,'Mussi',6),(1621,'Nono',6),(1622,'Panaholma',6),(1623,'San Huberto',6),(1624,'San Lorenzo',6),(1625,'San Martin',6),(1626,'San Pedro',6),(1627,'San Vicente',6),(1628,'Sauce Arriba',6),(1629,'Tasna',6),(1630,'Villa Cura Brochero',6),(1631,'Conlara',6),(1632,'Cruz Caña',6),(1633,'Dos Arroyos',6),(1634,'El Pantanillo',6),(1635,'La Paz',6),(1636,'La Poblacion',6),(1637,'La Ramada',6),(1638,'La Travesia',6),(1639,'Las Chacras',6),(1640,'Las Tapias',6),(1641,'Loma Bola',6),(1642,'Los Cerrillos',6),(1643,'Los Hornillos',6),(1644,'Luyaba',6),(1645,'Quebracho Ladeado',6),(1646,'Quebrada De Los Pozos',6),(1647,'San Javier Y Yacanto',6),(1648,'San Jose',6),(1649,'Villa De Las Rosas',6),(1650,'Alto Resbaloso - El Barrial',6),(1651,'El Valle',6),(1652,'Villa Dolores',6),(1653,'Villa La Viña',6),(1654,'Alicia',6),(1655,'Altos De Chipion',6),(1656,'Arroyito',6),(1657,'Balnearia',6),(1658,'Brinckmann',6),(1659,'Colonia Anita',6),(1660,'Colonia 10 De Julio',6),(1661,'Colonia Las Pichanas',6),(1662,'Colonia Marina',6),(1663,'Colonia Prosperidad',6),(1664,'Colonia San Bartolome',6),(1665,'Colonia San Pedro',6),(1666,'Colonia Santa Maria',6),(1667,'Colonia Valtelina',6),(1668,'Colonia Vignaud',6),(1669,'Devoto',6),(1670,'El Arañado',6),(1671,'El Fortin',6),(1672,'El Fuertecito',6),(1673,'El Tio',6),(1674,'Estacion Luxardo',6),(1675,'Colonia Iturraspe',6),(1676,'Freyre',6),(1677,'La Francia',6),(1678,'La Paquita',6),(1679,'La Tordilla',6),(1680,'Las Varas',6),(1681,'Las Varillas',6),(1682,'Marull',6),(1683,'Miramar',6),(1684,'Morteros',6),(1685,'Plaza Luxardo',6),(1686,'Plaza San Francisco',6),(1687,'Porteña',6),(1688,'Quebracho Herrado',6),(1689,'Sacanta',6),(1690,'San Francisco',6),(1691,'Saturnino Maria Laspiur',6),(1692,'Seeber',6),(1693,'Toro Pujio',6),(1694,'Transito',6),(1695,'Villa Concepcion Del Tio',6),(1696,'Villa Del Transito',6),(1697,'Villa San Esteban',6),(1698,'Alta Gracia',6),(1699,'Anisacate',6),(1700,'Barrio Gilbert',6),(1701,'Barrio Gilbert (1° De Mayo)',6),(1702,'Tejas Tres',6),(1703,'Bouwer',6),(1704,'Campos Del Virrey',6),(1705,'Caseros Centro',6),(1706,'Causana',6),(1707,'Costa Azul',6),(1708,'Despeñaderos',6),(1709,'Dique Chico',6),(1710,'El Potrerillo',6),(1711,'Falda Del Cañete',6),(1712,'Falda Del Carmen',6),(1713,'Jose De La Quintana',6),(1714,'La Boca Del Rio',6),(1715,'La Carbonada',6),(1716,'La Paisanita',6),(1717,'La Perla',6),(1718,'La Rancherita',6),(1719,'La Serranita',6),(1720,'Los Cedros - Las Quintas',6),(1721,'Barrio Las Quintas',6),(1722,'Los Cedros',6),(1723,'Lozada',6),(1724,'Malagueño',6),(1725,'Milenica',6),(1726,'Monte Ralo',6),(1727,'Potrero De Garay',6),(1728,'Rafael Garcia',6),(1729,'San Clemente',6),(1730,'San Nicolas',6),(1731,'Tierra Alta',6),(1732,'Socavones',6),(1733,'Toledo',6),(1734,'Valle Alegre',6),(1735,'Valle De Anisacate',6),(1736,'Barrio Villa Del Parque',6),(1737,'Villa Ciudad De America',6),(1738,'Villa Del Prado',6),(1739,'La Donosa',6),(1740,'Villa La Bolsa',6),(1741,'Villa Los Aromos',6),(1742,'Mi Valle',6),(1743,'Villa Parque Santa Ana',6),(1744,'Villa San Isidro - Jose De La Quintana',6),(1745,'Villa Sierras De Oro',6),(1746,'Yocsina',6),(1747,'Caminiaga',6),(1748,'Chuña Huasi',6),(1749,'Pozo Nuevo',6),(1750,'San Francisco Del Chañar',6),(1751,'Almafuerte',6),(1752,'Colonia Almada',6),(1753,'Corralito',6),(1754,'Dalmacio Velez',6),(1755,'General Fotheringham',6),(1756,'Hernando',6),(1757,'James Craik',6),(1758,'Las Isletillas',6),(1759,'Las Perdices',6),(1760,'Los Zorros',6),(1761,'Oliva',6),(1762,'Pampayasta Norte',6),(1763,'Pampayasta Sur',6),(1764,'Punta Del Agua',6),(1765,'Rio Tercero',6),(1766,'Tancacha',6),(1767,'Villa Ascasubi',6),(1768,'Candelaria Sur',6),(1769,'Cañada De Luque',6),(1770,'Capilla De Siton',6),(1771,'La Pampa',6),(1772,'Los Mistoles',6),(1773,'Sarmiento',6),(1774,'Simbolar',6),(1775,'Sinsacate',6),(1776,'Villa Del Totoral',6),(1777,'Churqui Cañada',6),(1778,'El Rodeo',6),(1779,'El Tuscal',6),(1780,'Las Arrias',6),(1781,'Lucio V. Mansilla',6),(1782,'Rosario Del Saladillo',6),(1783,'San Jose De La Dormida',6),(1784,'San Jose De Las Salinas',6),(1785,'San Pedro Norte',6),(1786,'Villa Tulumba',6),(1787,'Aldea Santa Maria',6),(1788,'Alto Alegre',6),(1789,'Ana Zumaran',6),(1790,'Ballesteros',6),(1791,'Ballesteros Sur',6),(1792,'Bell Ville',6),(1793,'Benjamin Gould',6),(1794,'Canals',6),(1795,'Chilibroste',6),(1796,'Cintra',6),(1797,'Colonia Bismarck',6),(1798,'Colonia Bremen',6),(1799,'Idiazabal',6),(1800,'Justiniano Posse',6),(1801,'Laborde',6),(1802,'Monte Leña',6),(1803,'Monte Maiz',6),(1804,'Morrison',6),(1805,'Noetinger',6),(1806,'Ordoñez',6),(1807,'Pascanas',6),(1808,'Pueblo Italiano',6),(1809,'Ramon J. Carcano',6),(1810,'San Antonio De Litin',6),(1811,'San Marcos',6),(1812,'San Severo',6),(1813,'Viamonte',6),(1814,'Villa Los Patos',6),(1815,'Wenceslao Escalante',6),(1816,'Bella Vista',7),(1817,'Beron De Astrada',7),(1818,'Yahape',7),(1819,'Corrientes',7),(1820,'Laguna Brava',7),(1821,'Riachuelo',7),(1822,'San Cayetano',7),(1823,'Concepcion',7),(1824,'Santa Rosa',7),(1825,'Tabay',7),(1826,'Tatacua',7),(1827,'Cazadores Correntinos',7),(1828,'Curuzu Cuatia',7),(1829,'Perugorria',7),(1830,'El Sombrero',7),(1831,'Empedrado',7),(1832,'Esquina',7),(1833,'Pueblo Libertador',7),(1834,'Alvear',7),(1835,'Estacion Torrent',7),(1836,'Ita Ibate',7),(1837,'Lomas De Vallejos',7),(1838,'Nuestra Señora Del Rosario De Caa Cati',7),(1839,'Palmar Grande',7),(1840,'Colonia Carolina',7),(1841,'Goya',7),(1842,'Itati',7),(1843,'Ramada Paso',7),(1844,'Colonia Liebig',7),(1845,'Ituzaingo',7),(1846,'San Antonio',7),(1847,'San Carlos',7),(1848,'Villa Olivari',7),(1849,'Cruz De Los Milagros',7),(1850,'Gobernador Juan E. Martinez',7),(1851,'Lavalle',7),(1852,'Santa Lucia',7),(1853,'Villa Cordoba',7),(1854,'Yatayti Calle',7),(1855,'Mburucuya',7),(1856,'Felipe Yofre',7),(1857,'Mariano I. Loza',7),(1858,'Mercedes',7),(1859,'Colonia Libertad',7),(1860,'Estacion Libertad',7),(1861,'Juan Pujol',7),(1862,'Mocoreta',7),(1863,'Monte Caseros',7),(1864,'Parada Acuña',7),(1865,'Parada Labougle',7),(1866,'Bonpland',7),(1867,'Parada Pucheta',7),(1868,'Paso De Los Libres',7),(1869,'Tapebicua',7),(1870,'Saladas',7),(1871,'San Lorenzo',7),(1872,'Ingenio Primer Correntino',7),(1873,'Paso De La Patria',7),(1874,'San Cosme',7),(1875,'Santa Ana',7),(1876,'San Luis Del Palmar',7),(1877,'Colonia Carlos Pellegrini',7),(1878,'Guaviravi',7),(1879,'La Cruz',7),(1880,'Yapeyu',7),(1881,'Loreto',7),(1882,'San Miguel',7),(1883,'Chavarria',7),(1884,'Colonia Pando',7),(1885,'9 De Julio',7),(1886,'Pedro R. Fernandez',7),(1887,'San Roque',7),(1888,'Jose R. Gomez',7),(1889,'Garruchos',7),(1890,'Gobernador Igr.Valentin Virasoro',7),(1891,'Santo Tome',7),(1892,'Sauce',7),(1893,'Arroyo Baru',8),(1894,'Colon',8),(1895,'Colonia Hugues',8),(1896,'Hambis',8),(1897,'Hocker',8),(1898,'La Clarita',8),(1899,'Pueblo Cazes',8),(1900,'Pueblo Liebigs',8),(1901,'El Brillante',8),(1902,'El Colorado',8),(1903,'San Jose',8),(1904,'Ubajay',8),(1905,'Villa Elisa',8),(1906,'Calabacilla',8),(1907,'Clodomiro Ledesma',8),(1908,'Colonia Ayui',8),(1909,'Colonia General Roca',8),(1910,'Benito Legeren',8),(1911,'Concordia',8),(1912,'Las Tejas',8),(1913,'Villa Adela',8),(1914,'Villa Zorraquin',8),(1915,'Estacion Yerua',8),(1916,'Estacion Yuqueri',8),(1917,'Estancia Grande',8),(1918,'La Criolla',8),(1919,'Los Charruas',8),(1920,'Nueva Escocia',8),(1921,'Pedernal',8),(1922,'Puerto Yerua',8),(1923,'Aldea Brasilera',8),(1924,'Aldea Grapschental',8),(1925,'Aldea Protestante',8),(1926,'Aldea Salto',8),(1927,'Aldea San Francisco',8),(1928,'Aldea Spatzenkutter',8),(1929,'Aldea Valle Maria',8),(1930,'Colonia Ensayo',8),(1931,'Diamante',8),(1932,'Strobel',8),(1933,'Estacion Camps',8),(1934,'General Alvear',8),(1935,'General Racedo',8),(1936,'General Ramirez',8),(1937,'La Juanita',8),(1938,'La Jaula',8),(1939,'Paraje La Virgen',8),(1940,'Puerto Las Cuevas',8),(1941,'Estacion Puiggari',8),(1942,'Villa Libertador San Martin',8),(1943,'Chajari',8),(1944,'Colonia Alemana',8),(1945,'Colonia Peña',8),(1946,'Federacion',8),(1947,'Los Conquistadores',8),(1948,'San Jaime De La Frontera',8),(1949,'San Pedro',8),(1950,'San Ramon',8),(1951,'Santa Ana',8),(1952,'Villa Del Rosario',8),(1953,'Conscripto Bernardi',8),(1954,'El Cimarron',8),(1955,'Federal',8),(1956,'Nueva Vizcaya',8),(1957,'Sauce De Luna',8),(1958,'San Jose De Feliciano',8),(1959,'San Victor',8),(1960,'Aldea Asuncion',8),(1961,'Estacion Lazo',8),(1962,'General Galarza',8),(1963,'Gualeguay',8),(1964,'Puerto Ruiz',8),(1965,'Aldea San Antonio',8),(1966,'Aldea San Juan',8),(1967,'Enrique Carbo',8),(1968,'Estacion Escriña',8),(1969,'Faustino M. Parera',8),(1970,'General Almada',8),(1971,'Gilbert',8),(1972,'Gualeguaychu',8),(1973,'Irazusta',8),(1974,'Larroque',8),(1975,'Pastor Britos',8),(1976,'Pueblo General Belgrano',8),(1977,'Urdinarrain',8),(1978,'Ceibas',8),(1979,'Ibicuy',8),(1980,'Medanos',8),(1981,'Villa Paranacito',8),(1982,'Alcaraz',8),(1983,'Bovril',8),(1984,'Colonia Avigdor',8),(1985,'El Solar',8),(1986,'La Paz',8),(1987,'Piedras Blancas',8),(1988,'San Gustavo',8),(1989,'Santa Elena',8),(1990,'Sir Leonard',8),(1991,'Aranguren',8),(1992,'Betbeder',8),(1993,'Don Cristobal',8),(1994,'Febre',8),(1995,'Hernandez',8),(1996,'Lucas Gonzalez',8),(1997,'Nogoya',8),(1998,'Xx De Setiembre',8),(1999,'Aldea Maria Luisa',8),(2000,'Aldea San Rafael',8),(2001,'Aldea Santa Maria',8),(2002,'Aldea Santa Rosa',8),(2003,'Cerrito',8),(2004,'Pueblo Moreno',8),(2005,'Colonia Avellaneda',8),(2006,'Colonia Crespo',8),(2007,'Crespo',8),(2008,'El Palenque',8),(2009,'El Pingo',8),(2010,'El Ramblon',8),(2011,'Hasenkamp',8),(2012,'Hernandarias',8),(2013,'La Picada',8),(2014,'Las Tunas',8),(2015,'Maria Grande',8),(2016,'Oro Verde',8),(2017,'Parana',8),(2018,'Pueblo Bellocq',8),(2019,'Pueblo Brugo',8),(2020,'Pueblo General San Martin',8),(2021,'San Benito',8),(2022,'Sauce Montrull',8),(2023,'Sauce Pinto',8),(2024,'Segui',8),(2025,'Sosa',8),(2026,'Tabossi',8),(2027,'Tezanos Pinto',8),(2028,'Viale',8),(2029,'Villa Fontana',8),(2030,'Villa Gobernador Luis F. Etchevehere',8),(2031,'Villa Urquiza',8),(2032,'General Campos',8),(2033,'San Salvador',8),(2034,'Altamirano Sur',8),(2035,'Durazno',8),(2036,'Estacion Arroyo Cle',8),(2037,'Gobernador Echague',8),(2038,'Gobernador Mansilla',8),(2039,'Gobernador Sola',8),(2040,'Guardamonte',8),(2041,'Las Guachas',8),(2042,'Macia',8),(2043,'Rosario Del Tala',8),(2044,'Basavilbaso',8),(2045,'Caseros',8),(2046,'Colonia Elia',8),(2047,'Concepcion Del Uruguay',8),(2048,'Herrera',8),(2049,'Las Moscas',8),(2050,'Libaros',8),(2051,'1 De Mayo',8),(2052,'Pronunciamiento',8),(2053,'Rocamora',8),(2054,'Santa Anita',8),(2055,'Villa Mantero',8),(2056,'Villa San Justo',8),(2057,'Villa San Marcial',8),(2058,'Antelo',8),(2059,'Molino Doll',8),(2060,'Victoria',8),(2061,'Estacion Raices',8),(2062,'Ingeniero Miguel Sajaroff',8),(2063,'Jubileo',8),(2064,'Paso De La Laguna',8),(2065,'Villa Clara',8),(2066,'Villa Dominguez',8),(2067,'Villaguay',8),(2068,'La Soledad',9),(2069,'Guadalcazar',9),(2070,'La Rinconada',9),(2071,'Laguna Yema',9),(2072,'Lamadrid',9),(2073,'Los Chiriguanos',9),(2074,'Pozo De Maza',9),(2075,'Pozo Del Mortero',9),(2076,'Vaca Perdida',9),(2077,'Colonia Pastoril',9),(2078,'Formosa',9),(2079,'Gran Guardia',9),(2080,'Mariano Boedo',9),(2081,'Mojon De Fierro',9),(2082,'San Hilario',9),(2083,'Villa Del Carmen',9),(2084,'Banco Payagua',9),(2085,'General Lucio V Mansilla',9),(2086,'Herradura',9),(2087,'San Francisco De Laishi',9),(2088,'Tatane',9),(2089,'Villa Escolar',9),(2090,'Ingeniero Guillermo N. Juarez',9),(2091,'Bartolome De Las Casas',9),(2092,'Comunidad Aborigen Bartolome De Las Casas',9),(2093,'Colonia Sarmiento',9),(2094,'Comandante Fontana',9),(2095,'El Recreo',9),(2096,'Estanislao Del Campo',9),(2097,'Fortin Cabo 1° Lugones',9),(2098,'Fortin Sargento 1° Leyes',9),(2099,'Ibarreta',9),(2100,'Juan G. Bazan',9),(2101,'Las Lomitas',9),(2102,'Posta Cambio Zalazar',9),(2103,'Pozo Del Tigre',9),(2104,'San Martin I',9),(2105,'San Martin Ii',9),(2106,'Subteniente Perin',9),(2107,'Villa General Guemes',9),(2108,'Villa General Manuel Belgrano',9),(2109,'Buena Vista',9),(2110,'El Espinillo',9),(2111,'Laguna Gallo',9),(2112,'Mision Tacaagle',9),(2113,'Porton Negro',9),(2114,'Tres Lagunas',9),(2115,'Clorinda',9),(2116,'Laguna Blanca',9),(2117,'Laguna Naick-Neck',9),(2118,'Palma Sola',9),(2119,'Puerto Pilcomayo',9),(2120,'Riacho He-He',9),(2121,'Riacho Negro',9),(2122,'Siete Palmas',9),(2123,'Colonia Campo Villafañe',9),(2124,'El Colorado',9),(2125,'Palo Santo',9),(2126,'Pirane',9),(2127,'Villa Kilometro 213',9),(2128,'El Potrillo',9),(2129,'General Mosconi',9),(2130,'El Quebracho',9),(2131,'Abdon Castro Tolay',10),(2132,'Abra Pampa',10),(2133,'Abralaite',10),(2134,'Agua De Castilla',10),(2135,'Casabindo',10),(2136,'Cochinoca',10),(2137,'La Redonda',10),(2138,'Puesto Del Marquez',10),(2139,'Quebraleña',10),(2140,'Quera',10),(2141,'Rinconadillas',10),(2142,'San Francisco De Alfarcito',10),(2143,'Santa Ana De La Puna',10),(2144,'Santuario De Tres Pozos',10),(2145,'Tambillos',10),(2146,'Tusaquillas',10),(2147,'Aguas Calientes',10),(2148,'Fleming',10),(2149,'Pila Pardo',10),(2150,'Barrio El Milagro',10),(2151,'Barrio La Union',10),(2152,'El Carmen',10),(2153,'Los Lapachos',10),(2154,'San Vicente',10),(2155,'Manantiales',10),(2156,'Monterrico',10),(2157,'Pampa Blanca',10),(2158,'Perico',10),(2159,'Puesto Viejo',10),(2160,'San Isidro',10),(2161,'San Juancito',10),(2162,'Guerrero',10),(2163,'La Almona',10),(2164,'Leon',10),(2165,'Lozano',10),(2166,'Ocloyas',10),(2167,'San Salvador De Jujuy',10),(2168,'Tesorero',10),(2169,'Los Nogales',10),(2170,'San Pablo De Reyes',10),(2171,'Yala',10),(2172,'Aparzo',10),(2173,'Cianzo',10),(2174,'Coctaca',10),(2175,'El Aguilar',10),(2176,'Hipolito Yrigoyen',10),(2177,'Humahuaca',10),(2178,'Palca De Aparzo',10),(2179,'Palca De Varas',10),(2180,'Rodero',10),(2181,'Tres Cruces',10),(2182,'Uquia',10),(2183,'Bananal',10),(2184,'Bermejito',10),(2185,'Caimancito',10),(2186,'Calilegua',10),(2187,'Chalican',10),(2188,'Fraile Pintado',10),(2189,'Libertad',10),(2190,'Libertador General San Martin',10),(2191,'Pueblo Ledesma',10),(2192,'Maiz Negro',10),(2193,'Paulina',10),(2194,'Yuto',10),(2195,'Carahunco',10),(2196,'Centro Forestal',10),(2197,'Palpala',10),(2198,'Rio Blanco',10),(2199,'Casa Colorada',10),(2200,'Coyaguaima',10),(2201,'Lagunillas De Farallon',10),(2202,'Liviara',10),(2203,'Loma Blanca',10),(2204,'Nuevo Pirquitas',10),(2205,'Orosmayo',10),(2206,'Rinconada',10),(2207,'El Ceibal',10),(2208,'Los Alisos',10),(2209,'Loteo Navea',10),(2210,'Nuestra Se?Ora Del Rosario',10),(2211,'San Antonio',10),(2212,'Arrayanal',10),(2213,'Arroyo Colorado',10),(2214,'Don Emilio',10),(2215,'El Acheral',10),(2216,'El Puesto',10),(2217,'El Quemado',10),(2218,'La Esperanza',10),(2219,'La Manga',10),(2220,'La Mendieta',10),(2221,'Miraflores',10),(2222,'Palos Blancos',10),(2223,'Parapeti',10),(2224,'Piedritas',10),(2225,'Rodeito',10),(2226,'Rosario De Rio Grande',10),(2227,'San Lucas',10),(2228,'San Pedro',10),(2229,'Sauzal',10),(2230,'El Fuerte',10),(2231,'El Piquete',10),(2232,'El Talar',10),(2233,'Palma Sola',10),(2234,'Puente Lavayen',10),(2235,'Santa Clara',10),(2236,'Vinalito',10),(2237,'Casira',10),(2238,'Cienega',10),(2239,'Cieneguillas',10),(2240,'Cusi Cusi',10),(2241,'El Angosto',10),(2242,'La Cienega',10),(2243,'Misarrumi',10),(2244,'Oratorio',10),(2245,'Paicone',10),(2246,'San Juan De Oros',10),(2247,'Santa Catalina',10),(2248,'Yoscaba',10),(2249,'Catua',10),(2250,'Coranzuli',10),(2251,'El Toro',10),(2252,'Huancar',10),(2253,'Jama',10),(2254,'Mina Providencia',10),(2255,'Olacapato',10),(2256,'Olaroz Chico',10),(2257,'Pastos Chicos',10),(2258,'Puesto Sey',10),(2259,'San Juan De Quillaques',10),(2260,'Susques',10),(2261,'Colonia San Jose',10),(2262,'Yacoraite',10),(2263,'Huacalera',10),(2264,'Juella',10),(2265,'Maimara',10),(2266,'Tilcara',10),(2267,'Barcena',10),(2268,'El Moreno',10),(2269,'Puerta De Colorados',10),(2270,'Purmamarca',10),(2271,'Tumbaya',10),(2272,'Volcan',10),(2273,'Caspala',10),(2274,'Pampichuela',10),(2275,'San Francisco',10),(2276,'Santa Ana',10),(2277,'Valle Colorado',10),(2278,'Valle Grande',10),(2279,'Barrios',10),(2280,'Cangrejillos',10),(2281,'El Condor',10),(2282,'La Intermedia',10),(2283,'La Quiaca',10),(2284,'Llulluchayoc',10),(2285,'Pumahuasi',10),(2286,'San Jose',10),(2287,'Yavi Chico',10),(2288,'La Toma',10),(2289,'Doblas',11),(2290,'Macachin',11),(2291,'Miguel Riglos',11),(2292,'Rolon',11),(2293,'Tomas M. Anchorena',11),(2294,'Anzoategui',11),(2295,'La Adela',11),(2296,'Anguil',11),(2297,'Santa Rosa',11),(2298,'Catrilo',11),(2299,'La Gloria',11),(2300,'Lonquimay',11),(2301,'Uriburu',11),(2302,'Conhelo',11),(2303,'Eduardo Castex',11),(2304,'Mauricio Mayer',11),(2305,'Monte Nievas',11),(2306,'Rucanelo',11),(2307,'Winifreda',11),(2308,'Gobernador Duval',11),(2309,'Puelches',11),(2310,'Santa Isabel',11),(2311,'Bernardo Larroude',11),(2312,'Ceballos',11),(2313,'Coronel Hilario Lagos',11),(2314,'Intendente Alvear',11),(2315,'Sarah',11),(2316,'Vertiz',11),(2317,'Algarrobo Del Aguila',11),(2318,'La Humada',11),(2319,'Alpachiri',11),(2320,'General Manuel J. Campos',11),(2321,'Guatrache',11),(2322,'Peru',11),(2323,'Santa Teresa',11),(2324,'Abramo',11),(2325,'Bernasconi',11),(2326,'General San Martin',11),(2327,'Hucal',11),(2328,'Jacinto Arauz',11),(2329,'Cuchillo Co',11),(2330,'La Reforma',11),(2331,'Limay Mahuida',11),(2332,'Carro Quemado',11),(2333,'Loventue',11),(2334,'Luan Toro',11),(2335,'Telen',11),(2336,'Victorica',11),(2337,'Agustoni',11),(2338,'Dorila',11),(2339,'General Pico',11),(2340,'Speluzzi',11),(2341,'Trebolares',11),(2342,'Casa De Piedra',11),(2343,'Puelen',11),(2344,'25 De Mayo',11),(2345,'Colonia Baron',11),(2346,'Colonia San Jose',11),(2347,'Miguel Cane',11),(2348,'Quemu Quemu',11),(2349,'Relmo',11),(2350,'Villa Mirasol',11),(2351,'Caleufu',11),(2352,'Ingeniero Foster',11),(2353,'La Maruja',11),(2354,'Parera',11),(2355,'Pichi Huinca',11),(2356,'Quetrequen',11),(2357,'Rancul',11),(2358,'Adolfo Van Praet',11),(2359,'Alta Italia',11),(2360,'Damian Maisonave',11),(2361,'Embajador Martini',11),(2362,'Falucho',11),(2363,'Ingeniero Luiggi',11),(2364,'Ojeda',11),(2365,'Realico',11),(2366,'Cachirulo',11),(2367,'Naico',11),(2368,'Toay',11),(2369,'Arata',11),(2370,'Metileo',11),(2371,'Trenel',11),(2372,'Ataliva Roca',11),(2373,'Chacharramendi',11),(2374,'Colonia Santa Maria',11),(2375,'General Acha',11),(2376,'Quehue',11),(2377,'Unanue',11),(2378,'Aimogasta',12),(2379,'Machigasta',12),(2380,'San Antonio',12),(2381,'Arauco',12),(2382,'Bañado De Los Pantanos',12),(2383,'Estacion Mazan',12),(2384,'Termas De Santa Teresita',12),(2385,'Villa Mazan',12),(2386,'La Rioja',12),(2387,'Aminga',12),(2388,'Anillaco',12),(2389,'Anjullon',12),(2390,'Chuquis',12),(2391,'Los Molinos',12),(2392,'Pinchas',12),(2393,'San Pedro',12),(2394,'Santa Vera Cruz',12),(2395,'Aicuña',12),(2396,'Guandacol',12),(2397,'Santa Clara',12),(2398,'Los Palacios',12),(2399,'Pagancillo',12),(2400,'Banda Florida',12),(2401,'Villa Union',12),(2402,'Chamical',12),(2403,'Polco',12),(2404,'Anguinan',12),(2405,'Chilecito',12),(2406,'La Puntilla',12),(2407,'Los Sarmientos',12),(2408,'San Miguel',12),(2409,'Colonia Anguinan',12),(2410,'Colonia Catinzaco',12),(2411,'Colonia Malligasta',12),(2412,'Colonia Vichigasta',12),(2413,'Guanchin',12),(2414,'Malligasta',12),(2415,'Miranda',12),(2416,'Nonogasta',12),(2417,'San Nicolas',12),(2418,'Santa Florentina',12),(2419,'Sañogasta',12),(2420,'Tilimuqui',12),(2421,'Vichigasta',12),(2422,'Alto Carrizal',12),(2423,'Angulos',12),(2424,'Antinaco',12),(2425,'Bajo Carrizal',12),(2426,'Campanas',12),(2427,'Chañarmuyo',12),(2428,'Famatina',12),(2429,'La Cuadra',12),(2430,'Pituil',12),(2431,'Plaza Vieja',12),(2432,'Santa Cruz',12),(2433,'Santo Domingo',12),(2434,'Punta De Los Llanos',12),(2435,'Tama',12),(2436,'Castro Barros',12),(2437,'Chañar',12),(2438,'Loma Blanca',12),(2439,'Olta',12),(2440,'Malanzan',12),(2441,'Nacate',12),(2442,'Portezuelo',12),(2443,'Villa Castelli',12),(2444,'Ambil',12),(2445,'Colonia Ortiz De Ocampo',12),(2446,'Milagro',12),(2447,'Olpas',12),(2448,'Santa Rita De Catuna',12),(2449,'Ulapes',12),(2450,'Jague',12),(2451,'Villa San Jose De Vinchina',12),(2452,'Amana',12),(2453,'Patquia',12),(2454,'Chepes',12),(2455,'Desiderio Tello',12),(2456,'Alpasinche',12),(2457,'Amuschina',12),(2458,'Andolucas',12),(2459,'Chaupihuasi',12),(2460,'Cuipan',12),(2461,'Las Talas',12),(2462,'Los Robles',12),(2463,'Salicas',12),(2464,'San Blas',12),(2465,'Shaqui',12),(2466,'Suriyaco',12),(2467,'Tuyubil',12),(2468,'Villa Sanagasta',12),(2469,'1A. Seccion',13),(2470,'2A. Seccion',13),(2471,'3A. Seccion',13),(2472,'4A. Seccion',13),(2473,'5A. Seccion',13),(2474,'6A. Seccion',13),(2475,'7A. Seccion',13),(2476,'8A. Seccion',13),(2477,'9A. Seccion',13),(2478,'10A. Seccion',13),(2479,'11A. Seccion',13),(2480,'Bowen',13),(2481,'Carmensa',13),(2482,'General Alvear',13),(2483,'Los Compartos',13),(2484,'Godoy Cruz',13),(2485,'Gobernador Benegas',13),(2486,'Las Tortugas',13),(2487,'Presidente Sarmiento',13),(2488,'San Francisco Del Monte',13),(2489,'Villa Hipodromo',13),(2490,'Villa Marini',13),(2491,'Colonia Segovia',13),(2492,'Bermejo',13),(2493,'Buena Nueva',13),(2494,'Capilla Del Rosario',13),(2495,'Dorrego',13),(2496,'El Sauce',13),(2497,'General Belgrano',13),(2498,'Jesus Nazareno',13),(2499,'Las Cañas',13),(2500,'Guaymallen',13),(2501,'Pedro Molina',13),(2502,'Rodeo De La Cruz',13),(2503,'San Jose',13),(2504,'Villa Nueva',13),(2505,'La Primavera',13),(2506,'Los Corralitos',13),(2507,'Puente De Hierro',13),(2508,'Ingeniero Giagnoni',13),(2509,'Junin',13),(2510,'La Colonia',13),(2511,'Los Barriales',13),(2512,'Medrano',13),(2513,'Phillips',13),(2514,'Rodriguez Peña',13),(2515,'Desaguadero',13),(2516,'La Paz',13),(2517,'Villa Antigua',13),(2518,'Blanco Encalada',13),(2519,'Jocoli',13),(2520,'Las Cuevas',13),(2521,'Capdevila',13),(2522,'Las Heras',13),(2523,'El Algarrobal',13),(2524,'El Borbollon',13),(2525,'El Challao',13),(2526,'El Plumerillo',13),(2527,'El Resguardo',13),(2528,'El Zapallar',13),(2529,'La Cieneguita',13),(2530,'Panquehua',13),(2531,'Sierras De Encalada',13),(2532,'Los Penitentes',13),(2533,'Polvaredas',13),(2534,'Puente Del Inca',13),(2535,'Punta De Vacas',13),(2536,'Uspallata',13),(2537,'Barrio Alto Del Olvido',13),(2538,'Barrio Jocoli Ii',13),(2539,'Barrio La Palmera',13),(2540,'Barrio La Pega',13),(2541,'Barrio Lagunas De Bartoluzzi',13),(2542,'Barrio Los Jarilleros',13),(2543,'Barrio Los Olivos',13),(2544,'Barrio Virgen Del Rosario',13),(2545,'Costa De Araujo',13),(2546,'El Paramillo',13),(2547,'El Vergel',13),(2548,'Barrio La Esperanza',13),(2549,'Ingeniero Gustavo Andre',13),(2550,'Jocoli Viejo',13),(2551,'Las Violetas',13),(2552,'3 De Mayo',13),(2553,'Villa Tulumaya',13),(2554,'Agrelo',13),(2555,'Barrio Perdriel Iv',13),(2556,'Cacheuta',13),(2557,'Costa Flores',13),(2558,'El Carrizal',13),(2559,'El Carmelo',13),(2560,'El Salto',13),(2561,'Las Carditas',13),(2562,'Los Manantiales',13),(2563,'Las Compuertas',13),(2564,'Las Vegas',13),(2565,'Piedras Blancas',13),(2566,'Valle Del Sol',13),(2567,'Villa El Refugio',13),(2568,'Carrodilla',13),(2569,'Chacras De Coria',13),(2570,'Lujan De Cuyo',13),(2571,'La Puntilla',13),(2572,'Mayor Drummond',13),(2573,'Vistalba',13),(2574,'Barrio Adina I Y Ii',13),(2575,'Perdriel',13),(2576,'Potrerillos',13),(2577,'Ugarteche',13),(2578,'Barrancas',13),(2579,'Barrio Jesus De Nazaret',13),(2580,'Cruz De Piedra',13),(2581,'El Pedregal',13),(2582,'Fray Luis Beltran',13),(2583,'Coquimbito',13),(2584,'General Gutierrez',13),(2585,'Luzuriaga',13),(2586,'Maipu',13),(2587,'Rodeo Del Medio',13),(2588,'Russell',13),(2589,'San Roque',13),(2590,'Villa Teresa',13),(2591,'Agua Escondida',13),(2592,'Las Leñas',13),(2593,'Malargue',13),(2594,'Andrade',13),(2595,'Barrio Cooperativa Los Campamentos',13),(2596,'Barrio Rivadavia',13),(2597,'El Mirador',13),(2598,'La Central',13),(2599,'La Esperanza',13),(2600,'Cuadro Ortega',13),(2601,'La Florida',13),(2602,'La Libertad',13),(2603,'Los Arboles',13),(2604,'Los Campamentos',13),(2605,'Mundo Nuevo',13),(2606,'Reduccion De Abajo',13),(2607,'Rivadavia',13),(2608,'Santa Maria De Oro',13),(2609,'Barrio Carrasco',13),(2610,'Barrio El Cepillo',13),(2611,'Chilecito',13),(2612,'Eugenio Bustos',13),(2613,'La Consulta',13),(2614,'Pareditas',13),(2615,'San Carlos',13),(2616,'Alto Verde',13),(2617,'Barrio Chivilcoy',13),(2618,'Barrio Emanuel',13),(2619,'Barrio La Estacion',13),(2620,'Barrio Los Charabones',13),(2621,'Barrio Ntra. Sra. De Fatima',13),(2622,'Chapanay',13),(2623,'Chivilcoy',13),(2624,'El Espino',13),(2625,'El Ramblon',13),(2626,'Montecaseros',13),(2627,'Nueva California',13),(2628,'Palmira',13),(2629,'Ciudad De San Martin',13),(2630,'Tres Porteñas',13),(2631,'Barrio Campos El Toledano',13),(2632,'Barrio El Nevado',13),(2633,'Barrio Empleados De Comercio',13),(2634,'Barrio Intendencia',13),(2635,'Capitan Montoya',13),(2636,'Barrio Echeverria',13),(2637,'Barrio Las Rosas',13),(2638,'Barrio Primavera',13),(2639,'El Nihuil',13),(2640,'El Sosneado',13),(2641,'El Tropezon',13),(2642,'Goudge',13),(2643,'Jaime Prats',13),(2644,'La Llave Nueva',13),(2645,'Las Malvinas',13),(2646,'Los Reyunos',13),(2647,'Monte Coman',13),(2648,'Pobre Diablo',13),(2649,'Punta Del Agua',13),(2650,'Rama Caida',13),(2651,'Real Del Padre',13),(2652,'Salto De Las Rosas',13),(2653,'Cuadro Nacional',13),(2654,'San Rafael',13),(2655,'25 De Mayo',13),(2656,'Villa Atuel',13),(2657,'Villa Atuel Norte',13),(2658,'Barrio 12 De Octubre',13),(2659,'Barrio Maria Auxiliadora',13),(2660,'Barrio Molina Cabrera',13),(2661,'La Dormida',13),(2662,'Las Catitas',13),(2663,'Santa Rosa',13),(2664,'Barrio San Cayetano',13),(2665,'Campo Los Andes',13),(2666,'Colonia Las Rosas',13),(2667,'El Manzano',13),(2668,'Los Sauces',13),(2669,'Tunuyan',13),(2670,'Vista Flores',13),(2671,'Barrio Belgrano Norte',13),(2672,'Cordon Del Plata',13),(2673,'El Peral',13),(2674,'El Zampal',13),(2675,'La Arboleda',13),(2676,'Tupungato',13),(2677,'Villa Bastias',13),(2678,'Apostoles',14),(2679,'Azara',14),(2680,'Barrio Rural',14),(2681,'Estacion Apostoles',14),(2682,'Pindapoy',14),(2683,'Rincon De Azara',14),(2684,'San Jose',14),(2685,'Tres Capones',14),(2686,'Aristobulo Del Valle',14),(2687,'Campo Grande',14),(2688,'Dos De Mayo Nucleo I',14),(2689,'Nucleo I',14),(2690,'Nucleo Ii',14),(2691,'Dos De Mayo Nucleo Iii',14),(2692,'Kilometro 17 (Ruta 8)',14),(2693,'1 De Mayo',14),(2694,'Pueblo Illia',14),(2695,'Salto Encantado',14),(2696,'Barrio Del Lago',14),(2697,'Bonpland',14),(2698,'Candelaria',14),(2699,'Cerro Cora',14),(2700,'Loreto',14),(2701,'Martires',14),(2702,'Profundidad',14),(2703,'Puerto Santa Ana',14),(2704,'Santa Ana',14),(2705,'Barrio Nuevo Garupa',14),(2706,'Garupa',14),(2707,'Nemesio Parma',14),(2708,'Posadas',14),(2709,'Barra Concepcion',14),(2710,'Concepcion De La Sierra',14),(2711,'La Corita',14),(2712,'Santa Maria',14),(2713,'Colonia Victoria',14),(2714,'Eldorado',14),(2715,'Maria Magdalena',14),(2716,'Nueva Delicia',14),(2717,'9 De Julio',14),(2718,'9 De Julio Kilometro 20',14),(2719,'Pueblo Nuevo',14),(2720,'Puerto Mado',14),(2721,'Puerto Pinares',14),(2722,'Santiago De Liniers',14),(2723,'Valle Hermoso',14),(2724,'Villa Roulet',14),(2725,'Almirante Brown',14),(2726,'Bernardo De Irigoyen',14),(2727,'Caburei',14),(2728,'Dos Hermanas',14),(2729,'Integracion',14),(2730,'Piñalito Norte',14),(2731,'Puerto Andresito',14),(2732,'Puerto Deseado',14),(2733,'San Antonio',14),(2734,'El Soberbio',14),(2735,'Fracran',14),(2736,'San Vicente',14),(2737,'Esperanza',14),(2738,'Libertad',14),(2739,'Puerto Iguazu',14),(2740,'Villa Cooperativa',14),(2741,'Wanda',14),(2742,'Almafuerte',14),(2743,'Arroyo Del Medio',14),(2744,'Caa - Yari',14),(2745,'Cerro Azul',14),(2746,'Dos Arroyos',14),(2747,'Gobernador Lopez',14),(2748,'Leandro N. Alem',14),(2749,'Olegario V. Andrade',14),(2750,'Villa Libertad',14),(2751,'Capiovi',14),(2752,'Capioviciño',14),(2753,'El Alcazar',14),(2754,'Garuhape',14),(2755,'Mbopicua',14),(2756,'Puerto Leoni',14),(2757,'Puerto Rico',14),(2758,'Ruiz De Montoya',14),(2759,'San Alberto',14),(2760,'San Gotardo',14),(2761,'San Miguel',14),(2762,'Villa Akerman',14),(2763,'Villa Urrutia',14),(2764,'Barrio Cuatro Bocas',14),(2765,'Barrio Guatambu',14),(2766,'Bario Ita',14),(2767,'Caraguatay',14),(2768,'Laharrague',14),(2769,'Montecarlo',14),(2770,'Piray Kilometro 18',14),(2771,'Puerto Piray',14),(2772,'Taruma',14),(2773,'Villa Parodi',14),(2774,'Alberdi',14),(2775,'Barrio Escuela 461',14),(2776,'Barrio Escuela 633',14),(2777,'Campo Ramon',14),(2778,'Campo Viera',14),(2779,'El Salto',14),(2780,'General Alvear',14),(2781,'Guarani',14),(2782,'Los Helechos',14),(2783,'Obera',14),(2784,'Panambi',14),(2785,'Panambi Kilometro 8',14),(2786,'Panambi Kilometro 15',14),(2787,'San Martin',14),(2788,'Villa Bonita',14),(2789,'Barrio Tungoil',14),(2790,'Colonia Polana',14),(2791,'Corpus',14),(2792,'Domingo Savio',14),(2793,'General Urquiza',14),(2794,'Gobernador Roca',14),(2795,'Helvecia',14),(2796,'Hipolito Yrigoyen',14),(2797,'Jardin America',14),(2798,'Oasis',14),(2799,'Roca Chica',14),(2800,'San Ignacio',14),(2801,'Santo Pipo',14),(2802,'Florentino Ameghino',14),(2803,'Itacaruare',14),(2804,'Mojon Grande',14),(2805,'San Javier',14),(2806,'Cruce Caballero',14),(2807,'Paraiso',14),(2808,'Piñalito Sur',14),(2809,'San Pedro',14),(2810,'Tobuna',14),(2811,'Alba Posse',14),(2812,'Colonia Alicia',14),(2813,'Alicia Baja',14),(2814,'Colonia Aurora',14),(2815,'San Francisco De Asis',14),(2816,'Santa Rita',14),(2817,'25 De Mayo',14),(2818,'Alumine',15),(2819,'Moquehue',15),(2820,'Villa Pehuenia',15),(2821,'Aguada San Roque',15),(2822,'Añelo',15),(2823,'San Patricio Del Chañar',15),(2824,'Las Coloradas',15),(2825,'Piedra Del Aguila',15),(2826,'Santo Tomas',15),(2827,'Arroyito',15),(2828,'Barrio Ruca Luhe',15),(2829,'Centenario',15),(2830,'Cutral Co',15),(2831,'El Chocon',15),(2832,'Mari Menuco',15),(2833,'Neuquen',15),(2834,'11 De Octubre',15),(2835,'Plaza Huincul',15),(2836,'Plottier',15),(2837,'Senillosa',15),(2838,'Villa El Chocon',15),(2839,'Vista Alegre Norte',15),(2840,'Vista Alegre Sur',15),(2841,'Chos Malal',15),(2842,'Tricao Malal',15),(2843,'Villa Del Curi Leuvu',15),(2844,'Junin De Los Andes',15),(2845,'San Martin De Los Andes',15),(2846,'Lago Meliquina',15),(2847,'Chorriaca',15),(2848,'Loncopue',15),(2849,'Villa La Angostura',15),(2850,'Villa Traful',15),(2851,'Andacollo',15),(2852,'Huinganco',15),(2853,'Las Ovejas',15),(2854,'Los Miches',15),(2855,'Manzano Amargo',15),(2856,'Varvarco',15),(2857,'Villa Del Nahueve',15),(2858,'Caviahue',15),(2859,'Copahue',15),(2860,'El Cholar',15),(2861,'El Huecu',15),(2862,'Taquimilan',15),(2863,'Barrancas',15),(2864,'Buta Ranquil',15),(2865,'Octavio Pico',15),(2866,'Rincon De Los Sauces',15),(2867,'El Sauce',15),(2868,'Paso Aguerre',15),(2869,'Picun Leufu',15),(2870,'Bajada Del Agrio',15),(2871,'La Buitrera',15),(2872,'Las Lajas',15),(2873,'Quili Malal',15),(2874,'Los Catutos',15),(2875,'Covunco Centro',15),(2876,'Mariano Moreno',15),(2877,'Ramon M. Castro',15),(2878,'Zapala',15),(2879,'Bahia Creek',16),(2880,'El Condor',16),(2881,'El Juncal',16),(2882,'Guardia Mitre',16),(2883,'La Loberia',16),(2884,'Loteo Costa De Rio',16),(2885,'Pozo Salado',16),(2886,'San Javier',16),(2887,'Viedma',16),(2888,'Barrio Union',16),(2889,'Chelforo',16),(2890,'Chimpay',16),(2891,'Choele Choel',16),(2892,'Coronel Belisle',16),(2893,'Darwin',16),(2894,'Lamarque',16),(2895,'Luis Beltran',16),(2896,'Pomona',16),(2897,'Villa Arelauquen',16),(2898,'Barrio El Pilar',16),(2899,'Colonia Suiza',16),(2900,'El Bolson',16),(2901,'El Foyel',16),(2902,'Mallin Ahogado',16),(2903,'Rio Villegas',16),(2904,'San Carlos De Bariloche',16),(2905,'Villa Campanario',16),(2906,'Villa Llao Llao',16),(2907,'Villa Catedral',16),(2908,'Villa Los Coihues',16),(2909,'Villa Mascardi',16),(2910,'Barrio Colonia Conesa',16),(2911,'General Conesa',16),(2912,'Barrio Planta Compresora De Gas',16),(2913,'Aguada Guzman',16),(2914,'Cerro Policia',16),(2915,'El Cuy',16),(2916,'Las Perlas',16),(2917,'Mencue',16),(2918,'Naupa Huen',16),(2919,'Paso Cordova',16),(2920,'Valle Azul',16),(2921,'Allen',16),(2922,'Bajo San Cayetano',16),(2923,'Barda Del Medio',16),(2924,'Barrio Blanco',16),(2925,'Barrio Calle Ciega N? 10',16),(2926,'Barrio Calle Ciega N? 6',16),(2927,'Barrio Canale',16),(2928,'Barrio Chacra Monte',16),(2929,'Barrio Costa Este',16),(2930,'Barrio Costa Linda',16),(2931,'Barrio Costa Oeste',16),(2932,'Barrio Destacamento',16),(2933,'Barrio El Labrador',16),(2934,'Barrio El Maruchito',16),(2935,'Barrio El Petroleo',16),(2936,'Barrio Emergente',16),(2937,'Colonia Fatima',16),(2938,'Barrio Frontera',16),(2939,'Barrio Guerrico',16),(2940,'Barrio Isla 10',16),(2941,'Barrio La Barda',16),(2942,'Barrio La Costa',16),(2943,'Barrio La Defensa',16),(2944,'Barrio La Herradura',16),(2945,'Barrio La Ribera - Barrio Apycar',16),(2946,'Barrio Las Angustias',16),(2947,'Barrio Luisillo',16),(2948,'Barrio Mar Del Plata',16),(2949,'Barrio Maria Elvira',16),(2950,'Barrio Moño Azul',16),(2951,'Barrio Mosconi',16),(2952,'Barrio Norte',16),(2953,'Barrio Pinar',16),(2954,'Barrio Porvenir',16),(2955,'Barrio El Treinta',16),(2956,'Barrio Goretti',16),(2957,'Barrio Puente 83',16),(2958,'Barrio Puente De Madera',16),(2959,'Barrio Tres Luces',16),(2960,'Tres Luces',16),(2961,'Santa Lucia',16),(2962,'Barrio Santa Rita',16),(2963,'Catriel',16),(2964,'Cervantes',16),(2965,'Chichinales',16),(2966,'Cinco Saltos',16),(2967,'Barrio Presidente Peron',16),(2968,'Cipolletti',16),(2969,'Barrio La Lor',16),(2970,'Contralmirante Cordero',16),(2971,'Ferri',16),(2972,'General Enrique Godoy',16),(2973,'General Fernandez Oro',16),(2974,'General Roca',16),(2975,'Barrio Pino Azul',16),(2976,'Ingeniero Luis A. Huergo',16),(2977,'Ingeniero Otto Krause',16),(2978,'Mainque',16),(2979,'Peninsula Ruca Co',16),(2980,'Sargento Vidal',16),(2981,'Villa Alberdi',16),(2982,'Villa Del Parque',16),(2983,'Villa Manzano',16),(2984,'Villa Regina',16),(2985,'Villa San Isidro',16),(2986,'Comico',16),(2987,'Cona Niyeu',16),(2988,'Ministro Ramos Mexia',16),(2989,'Prahuaniyeu',16),(2990,'Sierra Colorada',16),(2991,'Treneta',16),(2992,'Yaminue',16),(2993,'Las Bayas',16),(2994,'Mamuel Choique',16),(2995,'Ñorquinco',16),(2996,'Ojos De Agua',16),(2997,'Rio Chico',16),(2998,'Barrio Esperanza',16),(2999,'Colonia Julia Y Echarren',16),(3000,'Juventud Unida',16),(3001,'Pichi Mahuida',16),(3002,'Rio Colorado',16),(3003,'Salto Andersen',16),(3004,'Cañadon Chileno',16),(3005,'Comallo',16),(3006,'Dina Huapi',16),(3007,'Laguna Blanca',16),(3008,'Ñirihuau',16),(3009,'Pilcaniyeu',16),(3010,'Pilquiniyeu Del Limay',16),(3011,'Villa Llanquin',16),(3012,'Estacion Empalme',16),(3013,'Las Grutas',16),(3014,'Playas Doradas',16),(3015,'Puerto San Antonio Este',16),(3016,'Punta Colorada',16),(3017,'Saco Viejo',16),(3018,'San Antonio Oeste',16),(3019,'Sierra Grande',16),(3020,'Aguada Cecilio',16),(3021,'Arroyo Los Berros',16),(3022,'Arroyo Ventana',16),(3023,'Nahuel Niyeu',16),(3024,'Sierra Paileman',16),(3025,'Valcheta',16),(3026,'Aguada De Guerra',16),(3027,'Clemente Onelli',16),(3028,'Colan Conue',16),(3029,'El Cain',16),(3030,'Ingeniero Jacobacci',16),(3031,'Los Menucos',16),(3032,'Maquinchao',16),(3033,'Mina Santa Teresita',16),(3034,'Pilquiniyeu',16),(3035,'Apolinario Saravia',17),(3036,'Ceibalito',17),(3037,'Centro 25 De Junio',17),(3038,'Coronel Mollinedo',17),(3039,'Coronel Olleros',17),(3040,'El Quebrachal',17),(3041,'Gaona',17),(3042,'General Pizarro',17),(3043,'Joaquin V. Gonzalez',17),(3044,'Las Lajitas',17),(3045,'Luis Burela',17),(3046,'Macapillo',17),(3047,'Nuestra Señora De Talavera',17),(3048,'Piquete Cabado',17),(3049,'Rio Del Valle',17),(3050,'Tolloche',17),(3051,'Cachi',17),(3052,'Payogasta',17),(3053,'Cafayate',17),(3054,'Tolombom',17),(3055,'Atocha',17),(3056,'Barrio San Rafael',17),(3057,'La Cienaga',17),(3058,'Las Costas',17),(3059,'Salta',17),(3060,'Cc El Tipal',17),(3061,'Cc La Almudena',17),(3062,'Villa San Lorenzo',17),(3063,'Cerrillos',17),(3064,'La Merced',17),(3065,'San Agustin',17),(3066,'Villa Los Alamos',17),(3067,'Barrio El Congreso',17),(3068,'Barrio Las Tunas',17),(3069,'Barrio Los Olmos',17),(3070,'Barrio Los Pinares',17),(3071,'La Maroma',17),(3072,'Barrio La Rotonda',17),(3073,'Barrio Santa Teresita',17),(3074,'Chicoana',17),(3075,'El Carril',17),(3076,'Campo Santo',17),(3077,'Cobos',17),(3078,'El Bordo',17),(3079,'General Guemes',17),(3080,'Aguaray',17),(3081,'Campamento Vespucio',17),(3082,'Campichuelo',17),(3083,'Campo Duran',17),(3084,'Capiazuti',17),(3085,'Carboncito',17),(3086,'Coronel Cornejo',17),(3087,'Dragones',17),(3088,'Embarcacion',17),(3089,'Mision Tierras Fiscales',17),(3090,'General Ballivian',17),(3091,'General Mosconi',17),(3092,'Recaredo',17),(3093,'Hickman',17),(3094,'Mision Chaqueña',17),(3095,'Barrio El Milagro',17),(3096,'Barrio El Jardin De San Martin',17),(3097,'Mision El Cruce',17),(3098,'Mision Kilometro 6',17),(3099,'Pacara',17),(3100,'Padre Lozano',17),(3101,'Piquirenda',17),(3102,'Profesor Salvador Mazza',17),(3103,'Tartagal',17),(3104,'Tobantirenda',17),(3105,'Tranquitas',17),(3106,'Yacuy',17),(3107,'Guachipas',17),(3108,'Iruya',17),(3109,'Isla De Cañas',17),(3110,'Pueblo Viejo',17),(3111,'La Caldera',17),(3112,'Vaqueros',17),(3113,'El Jardin',17),(3114,'El Tala',17),(3115,'La Candelaria',17),(3116,'Cobres',17),(3117,'La Poma',17),(3118,'Ampascachi',17),(3119,'Cabra Corral',17),(3120,'Coronel Moldes',17),(3121,'La Viña',17),(3122,'Talapampa',17),(3123,'Olacapato',17),(3124,'San Antonio De Los Cobres',17),(3125,'Santa Rosa De Los Pastos Grandes',17),(3126,'Tolar Grande',17),(3127,'El Galpon',17),(3128,'El Tunal',17),(3129,'Lumbreras',17),(3130,'San Jose De Metan',17),(3131,'Metan Viejo',17),(3132,'Rio Piedras',17),(3133,'San Jose De Orquera',17),(3134,'La Puerta',17),(3135,'Molinos',17),(3136,'Seclantas',17),(3137,'Aguas Blancas',17),(3138,'Colonia Santa Rosa',17),(3139,'La Mision',17),(3140,'El Tabacal',17),(3141,'Hipolito Yrigoyen',17),(3142,'Pichanal',17),(3143,'San Ramon De La Nueva Oran',17),(3144,'Urundel',17),(3145,'Alto De La Sierra',17),(3146,'Capitan Juan Page',17),(3147,'Coronel Juan Sola',17),(3148,'Hito 1',17),(3149,'La Union',17),(3150,'Los Blancos',17),(3151,'Pluma De Pato',17),(3152,'Rivadavia',17),(3153,'Santa Maria',17),(3154,'Santa Rosa',17),(3155,'Santa Victoria Este',17),(3156,'Antilla',17),(3157,'Copo Quile',17),(3158,'El Naranjo',17),(3159,'El Potrero',17),(3160,'Rosario De La Frontera',17),(3161,'San Felipe',17),(3162,'Campo Quijano',17),(3163,'La Merced Del Encon',17),(3164,'La Silleta',17),(3165,'Rosario De Lerma',17),(3166,'Angastaco',17),(3167,'Animana',17),(3168,'El Barrial',17),(3169,'San Carlos',17),(3170,'Acoyte',17),(3171,'Campo La Cruz',17),(3172,'Los Toldos',17),(3173,'Nazareno',17),(3174,'Poscaya',17),(3175,'San Marcos',17),(3176,'Santa Victoria',17),(3177,'El Rincon',18),(3178,'Campo Afuera',18),(3179,'Villa Ampacama',18),(3180,'Villa General San Martin',18),(3181,'Las Tapias',18),(3182,'Villa El Salvador',18),(3183,'Villa Sefair (Talacasto)',18),(3184,'Barreal',18),(3185,'Villa Pituil',18),(3186,'Calingasta',18),(3187,'Tamberias',18),(3188,'San Juan',18),(3189,'Bermejo',18),(3190,'Barrio Justo P. Castro Iv',18),(3191,'Caucete',18),(3192,'Las Talas',18),(3193,'Los Medanos',18),(3194,'Marayes',18),(3195,'Pie De Palo',18),(3196,'Vallecito',18),(3197,'Villa Independencia',18),(3198,'Chimbas',18),(3199,'El Mogote',18),(3200,'Villa Paula Albarracin',18),(3201,'Angualasto',18),(3202,'Bella Vista',18),(3203,'Iglesia',18),(3204,'Las Flores',18),(3205,'Pismanta',18),(3206,'Rodeo',18),(3207,'Tudcum',18),(3208,'El Medano',18),(3209,'Gran China',18),(3210,'Huaco',18),(3211,'Mogna',18),(3212,'Niquivil',18),(3213,'El Fiscal',18),(3214,'La Falda',18),(3215,'Pampa Vieja',18),(3216,'San Isidro',18),(3217,'San Jose De Jachal',18),(3218,'Villa Malvinas Argentinas',18),(3219,'Villa Mercedes',18),(3220,'Colonia Fiorito',18),(3221,'Las Chacritas',18),(3222,'9 De Julio',18),(3223,'Barrio Municipal',18),(3224,'Barrio Ruta 40',18),(3225,'Carpinteria',18),(3226,'Las Piedritas',18),(3227,'Quinto Cuartel',18),(3228,'La Rinconada',18),(3229,'Villa Aberastain',18),(3230,'Villa Barboza',18),(3231,'Villa Nacusi',18),(3232,'Villa Centenario',18),(3233,'El Medanito',18),(3234,'Rawson',18),(3235,'Villa Krause',18),(3236,'Villa Bolaños',18),(3237,'Rivadavia',18),(3238,'Barrio Sadop',18),(3239,'Dos Acequias',18),(3240,'Villa Dominguito',18),(3241,'Villa Don Bosco',18),(3242,'Villa San Martin',18),(3243,'Alto De Sierra',18),(3244,'Colonia Gutierrez',18),(3245,'Santa Lucia',18),(3246,'Cañada Honda',18),(3247,'Cienaguita',18),(3248,'Colonia Fiscal',18),(3249,'Divisadero',18),(3250,'Guanacache',18),(3251,'Las Lagunas',18),(3252,'Los Berros',18),(3253,'Pedernal',18),(3254,'Punta Del Medano',18),(3255,'Villa Media Agua',18),(3256,'Villa Ibañez',18),(3257,'Astica',18),(3258,'Balde Del Rosario',18),(3259,'Chucuma',18),(3260,'Los Baldecitos',18),(3261,'Usno',18),(3262,'Villa San Agustin',18),(3263,'El Encon',18),(3264,'Tupeli',18),(3265,'La Chimbera',18),(3266,'Villa Borjas',18),(3267,'Villa El Tango',18),(3268,'Villa Santa Rosa',18),(3269,'Villa Basilio Nievas',18),(3270,'Villa Tacu',18),(3271,'La Cañada',18),(3272,'Candelaria',19),(3273,'Leandro N. Alem',19),(3274,'Lujan',19),(3275,'Quines',19),(3276,'San Francisco Del Monte De Oro',19),(3277,'La Calera',19),(3278,'Nogoli',19),(3279,'Villa De La Quebrada',19),(3280,'Villa General Roca',19),(3281,'Carolina',19),(3282,'El Trapiche',19),(3283,'Estancia Grande',19),(3284,'Fraga',19),(3285,'La Bajada',19),(3286,'La Florida',19),(3287,'La Toma',19),(3288,'Riocito',19),(3289,'Rio Grande',19),(3290,'Saladillo',19),(3291,'Concaran',19),(3292,'Cortaderas',19),(3293,'Naschel',19),(3294,'Papagayos',19),(3295,'Renca',19),(3296,'San Pablo',19),(3297,'Tilisarao',19),(3298,'Villa Del Carmen',19),(3299,'Villa Larca',19),(3300,'Juan Jorba',19),(3301,'Juan Llerena',19),(3302,'Justo Daract',19),(3303,'La Punilla',19),(3304,'Lavaisse',19),(3305,'Nacion Ranquel',19),(3306,'San Jose Del Morro',19),(3307,'Villa Mercedes',19),(3308,'La Ribera',19),(3309,'Villa Reynolds',19),(3310,'Country Club Los Caldenes',19),(3311,'5Ta Brigada',19),(3312,'Villa Salles',19),(3313,'Anchorena',19),(3314,'Arizona',19),(3315,'Bagual',19),(3316,'Batavia',19),(3317,'Buena Esperanza',19),(3318,'Fortin El Patria',19),(3319,'Fortuna',19),(3320,'La Maroma',19),(3321,'Los Overos',19),(3322,'Martin De Loyola',19),(3323,'Nahuel Mapa',19),(3324,'Navia',19),(3325,'Nueva Galia',19),(3326,'Union',19),(3327,'Carpinteria',19),(3328,'Cerro De Oro',19),(3329,'Lafinur',19),(3330,'Los Cajones',19),(3331,'Los Molles',19),(3332,'Merlo',19),(3333,'Santa Rosa Del Conlara',19),(3334,'Talita',19),(3335,'Alto Pelado',19),(3336,'Alto Pencoso',19),(3337,'Balde',19),(3338,'Beazley',19),(3339,'Cazador',19),(3340,'Chosmes',19),(3341,'Desaguadero',19),(3342,'El Volcan',19),(3343,'Jarilla',19),(3344,'Cerro Colorado',19),(3345,'Cruz De Piedra',19),(3346,'El Chorrillo',19),(3347,'Las Chacras',19),(3348,'San Roque',19),(3349,'Ciudad De La Punta',19),(3350,'Mosmota',19),(3351,'Potrero De Los Funes',19),(3352,'Salinas Del Bebedero',19),(3353,'San Jeronimo',19),(3354,'San Luis',19),(3355,'Zanjitas',19),(3356,'La Vertiente',19),(3357,'Las Aguadas',19),(3358,'Las Lagunas',19),(3359,'Paso Grande',19),(3360,'Potrerillo',19),(3361,'San Martin',19),(3362,'Villa De Praga',19),(3363,'Comandante Luis Piedrabuena',20),(3364,'Puerto Santa Cruz',20),(3365,'Caleta Olivia',20),(3366,'Cañadon Seco',20),(3367,'Fitz Roy',20),(3368,'Jaramillo',20),(3369,'Koluel Kaike',20),(3370,'Las Heras',20),(3371,'Pico Truncado',20),(3372,'Puerto Deseado',20),(3373,'Tellier',20),(3374,'El Turbio',20),(3375,'Julia Dufour',20),(3376,'Mina 3',20),(3377,'Rio Gallegos',20),(3378,'Rospentek',20),(3379,'28 De Noviembre',20),(3380,'Yacimientos Rio Turbio',20),(3381,'El Calafate',20),(3382,'El Chalten',20),(3383,'Tres Lagos',20),(3384,'Los Antiguos',20),(3385,'Perito Moreno',20),(3386,'Puerto San Julian',20),(3387,'Bajo Caracoles',20),(3388,'Gobernador Gregores',20),(3389,'Hipolito Yrigoyen',20),(3390,'Armstrong',21),(3391,'Bouquet',21),(3392,'Las Parejas',21),(3393,'Las Rosas',21),(3394,'Montes De Oca',21),(3395,'Tortugas',21),(3396,'Arequito',21),(3397,'Arteaga',21),(3398,'Beravebu',21),(3399,'Bigand',21),(3400,'Casilda',21),(3401,'Chabas',21),(3402,'Chañar Ladeado',21),(3403,'Godeken',21),(3404,'Los Molinos',21),(3405,'Los Nogales',21),(3406,'Los Quirquinchos',21),(3407,'San Jose De La Esquina',21),(3408,'Sanford',21),(3409,'Villada',21),(3410,'Aldao',21),(3411,'Angelica',21),(3412,'Ataliva',21),(3413,'Aurelia',21),(3414,'Barrios Acapulco Y Veracruz',21),(3415,'Bauer Y Sigel',21),(3416,'Bella Italia',21),(3417,'Castellanos',21),(3418,'Colonia Bicha',21),(3419,'Colonia Cello',21),(3420,'Colonia Margarita',21),(3421,'Colonia Raquel',21),(3422,'Coronel Fraga',21),(3423,'Egusquiza',21),(3424,'Esmeralda',21),(3425,'Estacion Clucellas',21),(3426,'Estacion Saguier',21),(3427,'Eusebia Y Carolina',21),(3428,'Eustolia',21),(3429,'Frontera',21),(3430,'Garibaldi',21),(3431,'Humberto Primo',21),(3432,'Josefina',21),(3433,'Lehmann',21),(3434,'Maria Juana',21),(3435,'Nueva Lehmann',21),(3436,'Plaza Clucellas',21),(3437,'Plaza Saguier',21),(3438,'Estacion Presidente Roca',21),(3439,'Presidente Roca',21),(3440,'Pueblo Marini',21),(3441,'Rafaela',21),(3442,'Ramona',21),(3443,'San Antonio',21),(3444,'San Vicente',21),(3445,'Santa Clara De Saguier',21),(3446,'Sunchales',21),(3447,'Susana',21),(3448,'Tacural',21),(3449,'Vila',21),(3450,'Villa Josefina',21),(3451,'Villa San Jose',21),(3452,'Virginia',21),(3453,'Zenon Pereyra',21),(3454,'Alcorta',21),(3455,'Barrio Arroyo Del Medio',21),(3456,'Barrio Mitre',21),(3457,'Bombal',21),(3458,'Cañada Rica',21),(3459,'Cepeda',21),(3460,'Empalme Villa Constitucion',21),(3461,'Firmat',21),(3462,'General Gelly',21),(3463,'Godoy',21),(3464,'Juan B. Molina',21),(3465,'Juncal',21),(3466,'La Vanguardia',21),(3467,'Maximo Paz',21),(3468,'Pavon',21),(3469,'Pavon Arriba',21),(3470,'Peyrano',21),(3471,'Rueda',21),(3472,'Santa Teresa',21),(3473,'Sargento Cabral',21),(3474,'Stephenson',21),(3475,'Theobald',21),(3476,'Villa Constitucion',21),(3477,'Cayasta',21),(3478,'Helvecia',21),(3479,'Los Zapallos',21),(3480,'Saladero Mariano Cabal',21),(3481,'Santa Rosa De Calchines',21),(3482,'Aaron Castellanos',21),(3483,'Amenabar',21),(3484,'Cafferata',21),(3485,'Cañada Del Ucle',21),(3486,'Carmen',21),(3487,'Carreras',21),(3488,'Chapuy',21),(3489,'Chovet',21),(3490,'Christophersen',21),(3491,'Diego De Alvear',21),(3492,'Elortondo',21),(3493,'Hughes',21),(3494,'La Chispa',21),(3495,'Labordeboy',21),(3496,'Lazzarino',21),(3497,'Maggiolo',21),(3498,'Maria Teresa',21),(3499,'Melincue',21),(3500,'Miguel Torres',21),(3501,'Murphy',21),(3502,'Rufino',21),(3503,'San Eduardo',21),(3504,'San Francisco De Santa Fe',21),(3505,'San Gregorio',21),(3506,'Sancti Spiritu',21),(3507,'Santa Isabel',21),(3508,'Teodelina',21),(3509,'Venado Tuerto',21),(3510,'Villa Cañas',21),(3511,'Wheelwright',21),(3512,'Arroyo Ceibal',21),(3513,'Avellaneda',21),(3514,'Berna',21),(3515,'El Araza',21),(3516,'El Rabon',21),(3517,'Florencia',21),(3518,'Guadalupe Norte',21),(3519,'Ingeniero Chanourdie',21),(3520,'La Isleta',21),(3521,'La Sarita',21),(3522,'Lanteri',21),(3523,'Las Garzas',21),(3524,'Las Toscas',21),(3525,'Los Laureles',21),(3526,'Malabrigo',21),(3527,'Paraje San Manuel',21),(3528,'Puerto Reconquista',21),(3529,'Reconquista',21),(3530,'San Antonio De Obligado',21),(3531,'Tacuarendi',21),(3532,'Villa Ana',21),(3533,'Villa Guillermina',21),(3534,'Villa Ocampo',21),(3535,'Barrio Cicarelli',21),(3536,'Bustinza',21),(3537,'Cañada De Gomez',21),(3538,'Carrizales',21),(3539,'Classon',21),(3540,'Colonia Medici',21),(3541,'Correa',21),(3542,'Larguia',21),(3543,'Lucio V. Lopez',21),(3544,'Oliveros',21),(3545,'Pueblo Andino',21),(3546,'Salto Grande',21),(3547,'Serodino',21),(3548,'Totoras',21),(3549,'Villa Eloisa',21),(3550,'Villa La Rivera - Oliveros',21),(3551,'Villa La Rivera - Pueblo Andino',21),(3552,'Angel Gallardo',21),(3553,'Arroyo Aguiar',21),(3554,'Arroyo Leyes',21),(3555,'Rincon Norte',21),(3556,'Cabal',21),(3557,'Campo Andino',21),(3558,'Candioti',21),(3559,'Emilia',21),(3560,'Laguna Paiva',21),(3561,'Llambi Campbell',21),(3562,'Monte Vera',21),(3563,'Nelson',21),(3564,'Paraje Chaco Chico',21),(3565,'Paraje La Costa',21),(3566,'Recreo',21),(3567,'Rincon Potrero',21),(3568,'San Jose Del Rincon',21),(3569,'Santa Fe',21),(3570,'Santo Tome',21),(3571,'Sauce Viejo',21),(3572,'Villa Adelina',21),(3573,'Villa Laura',21),(3574,'Cavour',21),(3575,'Cululu',21),(3576,'Elisa',21),(3577,'Empalme San Carlos',21),(3578,'Esperanza',21),(3579,'Felicia',21),(3580,'Franck',21),(3581,'Grutly',21),(3582,'Hipatia',21),(3583,'Humboldt',21),(3584,'Jacinto L. Arauz',21),(3585,'La Pelada',21),(3586,'Las Tunas',21),(3587,'Maria Luisa',21),(3588,'Matilde',21),(3589,'Nuevo Torino',21),(3590,'Pilar',21),(3591,'Plaza Matilde',21),(3592,'Progreso',21),(3593,'Providencia',21),(3594,'Sa Pereyra',21),(3595,'San Agustin',21),(3596,'San Carlos Centro',21),(3597,'San Carlos Norte',21),(3598,'San Carlos Sud',21),(3599,'San Jeronimo Del Sauce',21),(3600,'San Jeronimo Norte',21),(3601,'San Mariano',21),(3602,'Santa Clara De Buena Vista',21),(3603,'Santo Domingo',21),(3604,'Sarmiento',21),(3605,'Esteban Rams',21),(3606,'Gato Colorado',21),(3607,'Gregoria Perez De Denis',21),(3608,'Logroño',21),(3609,'Montefiore',21),(3610,'Pozo Borrado',21),(3611,'San Bernardo',21),(3612,'Santa Margarita',21),(3613,'Tostado',21),(3614,'Villa Minetti',21),(3615,'Acebal',21),(3616,'Albarellos',21),(3617,'Alvarez',21),(3618,'Alvear',21),(3619,'Arbilla',21),(3620,'Arminda',21),(3621,'Arroyo Seco',21),(3622,'Carmen Del Sauce',21),(3623,'Coronel Bogado',21),(3624,'Coronel Rodolfo S. Dominguez',21),(3625,'Cuatro Esquinas',21),(3626,'El Caramelo',21),(3627,'Fighiera',21),(3628,'Funes',21),(3629,'General Lagos',21),(3630,'Granadero Baigorria',21),(3631,'Ibarlucea',21),(3632,'Kilometro 101',21),(3633,'Los Muchachos - La Alborada',21),(3634,'Monte Flores',21),(3635,'Perez',21),(3636,'Piñero',21),(3637,'Pueblo Esther',21),(3638,'Pueblo Muñoz',21),(3639,'Pueblo Uranga',21),(3640,'Puerto Arroyo Seco',21),(3641,'Rosario',21),(3642,'Soldini',21),(3643,'Villa Amelia',21),(3644,'Villa Del Plata',21),(3645,'Villa Gobernador Galvez',21),(3646,'Zavalla',21),(3647,'Aguara Grande',21),(3648,'Ambrosetti',21),(3649,'Arrufo',21),(3650,'Balneario La Verde',21),(3651,'Capivara',21),(3652,'Ceres',21),(3653,'Colonia Ana',21),(3654,'Colonia Bossi',21),(3655,'Colonia Rosa',21),(3656,'Constanza',21),(3657,'Curupayti',21),(3658,'Hersilia',21),(3659,'Huanqueros',21),(3660,'La Cabral',21),(3661,'La Lucila',21),(3662,'La Rubia',21),(3663,'Las Avispas',21),(3664,'Las Palmeras',21),(3665,'Moises Ville',21),(3666,'Monigotes',21),(3667,'Ñanducita',21),(3668,'Palacios',21),(3669,'San Cristobal',21),(3670,'San Guillermo',21),(3671,'Santurce',21),(3672,'Soledad',21),(3673,'Suardi',21),(3674,'Villa Saralegui',21),(3675,'Villa Trinidad',21),(3676,'Alejandra',21),(3677,'Cacique Ariacaiquin',21),(3678,'Colonia Duran',21),(3679,'La Brava',21),(3680,'Romang',21),(3681,'San Javier',21),(3682,'Arocena',21),(3683,'Balneario Monje',21),(3684,'Barrancas',21),(3685,'Barrio Caima',21),(3686,'Barrio El Pacaa - Barrio Comipini',21),(3687,'Bernardo De Irigoyen',21),(3688,'Casalegno',21),(3689,'Centeno',21),(3690,'Coronda',21),(3691,'Desvio Arijon',21),(3692,'Diaz',21),(3693,'Gaboto',21),(3694,'Galvez',21),(3695,'Gessler',21),(3696,'Irigoyen',21),(3697,'Larrechea',21),(3698,'Loma Alta',21),(3699,'Lopez',21),(3700,'Maciel',21),(3701,'Monje',21),(3702,'Puerto Aragon',21),(3703,'San Eugenio',21),(3704,'San Fabian',21),(3705,'San Genaro',21),(3706,'San Genaro Norte',21),(3707,'Angeloni',21),(3708,'Cayastacito',21),(3709,'Colonia Dolores',21),(3710,'Esther',21),(3711,'Gobernador Crespo',21),(3712,'La Criolla',21),(3713,'La Penca Y Caraguata',21),(3714,'Marcelino Escalada',21),(3715,'Nare',21),(3716,'Pedro Gomez Cello',21),(3717,'Ramayon',21),(3718,'San Justo',21),(3719,'San Martin Norte',21),(3720,'Silva',21),(3721,'Vera Y Pintado',21),(3722,'Videla',21),(3723,'Capitan Bermudez',21),(3724,'Carcaraña',21),(3725,'Coronel Arnold',21),(3726,'Fray Luis Beltran',21),(3727,'Fuentes',21),(3728,'Luis Palacios',21),(3729,'Puerto General San Martin',21),(3730,'Pujato',21),(3731,'Ricardone',21),(3732,'Roldan',21),(3733,'San Jeronimo Sud',21),(3734,'San Lorenzo',21),(3735,'Timbues',21),(3736,'Villa Elvira',21),(3737,'Villa Mugueta',21),(3738,'Cañada Rosquin',21),(3739,'Carlos Pellegrini',21),(3740,'Casas',21),(3741,'Castelar',21),(3742,'Colonia Belgrano',21),(3743,'Crispi',21),(3744,'El Trebol',21),(3745,'Landeta',21),(3746,'Las Bandurrias',21),(3747,'Las Petacas',21),(3748,'Los Cardos',21),(3749,'Maria Susana',21),(3750,'Piamonte',21),(3751,'San Jorge',21),(3752,'San Martin De Las Escobas',21),(3753,'Sastre',21),(3754,'Traill',21),(3755,'Wildermuth',21),(3756,'Calchaqui',21),(3757,'Cañada Ombu',21),(3758,'Colmena',21),(3759,'Fortin Olmos',21),(3760,'Garabato',21),(3761,'Golondrina',21),(3762,'Intiyaco',21),(3763,'Kilometro 115',21),(3764,'La Gallareta',21),(3765,'Los Amores',21),(3766,'Margarita',21),(3767,'Paraje 29',21),(3768,'Pozo De Los Indios',21),(3769,'Pueblo Santa Lucia',21),(3770,'Tartagal',21),(3771,'Toba',21),(3772,'Vera',21),(3773,'Argentina',22),(3774,'Casares',22),(3775,'Malbran',22),(3776,'Villa General Mitre',22),(3777,'Campo Gallo',22),(3778,'Coronel Manuel L. Rico',22),(3779,'Donadeu',22),(3780,'Sachayoj',22),(3781,'Santos Lugares',22),(3782,'Estacion Atamisqui',22),(3783,'Medellin',22),(3784,'Villa Atamisqui',22),(3785,'Colonia Dora',22),(3786,'Herrera',22),(3787,'Icaño',22),(3788,'Lugones',22),(3789,'Real Sayana',22),(3790,'Villa Mailin',22),(3791,'Abra Grande',22),(3792,'Antaje',22),(3793,'Ardiles',22),(3794,'Cañada Escobar',22),(3795,'Chaupi Pozo',22),(3796,'Clodomira',22),(3797,'Huyamampa',22),(3798,'La Aurora',22),(3799,'La Banda',22),(3800,'La Darsena',22),(3801,'Los Quiroga',22),(3802,'Los Soria',22),(3803,'Simbolar',22),(3804,'Tramo 16',22),(3805,'Tramo 20',22),(3806,'Bandera',22),(3807,'Cuatro Bocas',22),(3808,'Fortin Inca',22),(3809,'Guardia Escolta',22),(3810,'El Dean',22),(3811,'El Mojon',22),(3812,'El Zanjon',22),(3813,'Los Cardozos',22),(3814,'Maco',22),(3815,'Maquito',22),(3816,'Morales',22),(3817,'Puesto De San Antonio',22),(3818,'San Pedro',22),(3819,'Santa Maria',22),(3820,'Santiago Del Estero',22),(3821,'Vuelta De La Barranca',22),(3822,'Yanda',22),(3823,'El Cabure',22),(3824,'La Firmeza',22),(3825,'Los Pirpintos',22),(3826,'Los Tigres',22),(3827,'Monte Quemado',22),(3828,'Nueva Esperanza',22),(3829,'Pampa De Los Guanacos',22),(3830,'San Jose Del Boqueron',22),(3831,'Urutau',22),(3832,'Ancajan',22),(3833,'Choya',22),(3834,'Estacion La Punta',22),(3835,'Frias',22),(3836,'Laprida',22),(3837,'Tapso',22),(3838,'Villa La Punta',22),(3839,'Bandera Bajada',22),(3840,'Caspi Corral',22),(3841,'Colonia San Juan',22),(3842,'El Crucero',22),(3843,'Kilometro 30',22),(3844,'La Cañada',22),(3845,'La Invernada',22),(3846,'Minerva',22),(3847,'Vaca Huañuna',22),(3848,'Villa Figueroa',22),(3849,'Añatuya',22),(3850,'Averias',22),(3851,'Estacion Tacañitas',22),(3852,'La Nena',22),(3853,'Los Juries',22),(3854,'Tomas Young',22),(3855,'Lavalle',22),(3856,'El Arenal',22),(3857,'El Bobadal',22),(3858,'El Charco',22),(3859,'El Rincon',22),(3860,'Gramilla',22),(3861,'Lilo Viejo',22),(3862,'Isca Yacu',22),(3863,'Isca Yacu Semaul',22),(3864,'Pozo Hondo',22),(3865,'El Colorado',22),(3866,'El Cuadrado',22),(3867,'Matara',22),(3868,'Suncho Corral',22),(3869,'Vilelas',22),(3870,'Yuchan',22),(3871,'Villa San Martin',22),(3872,'Villa Union',22),(3873,'Aerolito',22),(3874,'Alhuampa',22),(3875,'Hasse',22),(3876,'Hernan Mejia Miraval',22),(3877,'Las Tinajas',22),(3878,'Libertad',22),(3879,'Patay',22),(3880,'Pueblo Pablo Torelo',22),(3881,'Quimili',22),(3882,'Roversi',22),(3883,'Tintina',22),(3884,'Weisburd',22),(3885,'El 49',22),(3886,'Sol De Julio',22),(3887,'Villa Ojo De Agua',22),(3888,'Las Delicias',22),(3889,'Pozo Betbeder',22),(3890,'Rapelli',22),(3891,'Santo Domingo',22),(3892,'Ramirez De Velazco',22),(3893,'Sumampa',22),(3894,'Sumampa Viejo',22),(3895,'Chañar Pozo De Abajo',22),(3896,'Chauchillas',22),(3897,'Colonia Tinco',22),(3898,'La Nueva Donosa',22),(3899,'Los Miranda',22),(3900,'Los Nuñez',22),(3901,'Mansupa',22),(3902,'Pozuelos',22),(3903,'Rodeo De Valdez',22),(3904,'Sauzal',22),(3905,'Termas De Rio Hondo',22),(3906,'Villa Gimenez',22),(3907,'Villa Rio Hondo',22),(3908,'Villa Turistica Del Embalse',22),(3909,'Vinara',22),(3910,'Colonia Alpina',22),(3911,'Palo Negro',22),(3912,'Selva',22),(3913,'Beltran',22),(3914,'Colonia El Simbolar',22),(3915,'Fernandez',22),(3916,'Ingeniero Forres',22),(3917,'Vilmer',22),(3918,'Chilca Juliana',22),(3919,'Los Telares',22),(3920,'Villa Salavina',22),(3921,'Brea Pozo',22),(3922,'Estacion Robles',22),(3923,'Estacion Taboada',22),(3924,'Villa Nueva',22),(3925,'Garza',22),(3926,'Arraga',22),(3927,'Nueva Francia',22),(3928,'Simbol',22),(3929,'Sumamao',22),(3930,'Villa Silipica',22),(3931,'Rio Grande',23),(3932,'Tolhuin',23),(3933,'Laguna Escondida',23),(3934,'Ushuaia',23),(3935,'Barrio San Jorge',24),(3936,'El Chañar',24),(3937,'El Naranjo',24),(3938,'Garmendia',24),(3939,'La Ramada',24),(3940,'Macomitas',24),(3941,'Piedrabuena',24),(3942,'7 De Abril',24),(3943,'Villa Benjamin Araoz',24),(3944,'Villa Burruyacu',24),(3945,'Villa Padre Monti',24),(3946,'Alderetes',24),(3947,'El Corte',24),(3948,'Los Gutierrez',24),(3949,'Banda Del Rio Sali',24),(3950,'Barrio Aeropuerto',24),(3951,'Lastenia',24),(3952,'Colombres',24),(3953,'Colonia Mayo - Barrio La Milagrosa',24),(3954,'El Paraiso',24),(3955,'Ex Ingenio Esperanza',24),(3956,'Ex Ingenio Lujan',24),(3957,'El Bracho',24),(3958,'Ingenio La Florida',24),(3959,'La Florida',24),(3960,'Las Cejas',24),(3961,'Ex Ingenio Los Ralos',24),(3962,'Villa Recaste',24),(3963,'Villa Tercera',24),(3964,'Pacara',24),(3965,'Ranchillos',24),(3966,'San Andres',24),(3967,'Alpachiri',24),(3968,'Alto Verde',24),(3969,'Arcadia',24),(3970,'San Roque',24),(3971,'Concepcion',24),(3972,'Iltico',24),(3973,'La Trinidad',24),(3974,'Medina',24),(3975,'Barrio Casa Rosada',24),(3976,'Campo De Herrera',24),(3977,'Ex Ingenio Nueva Baviera',24),(3978,'Famailla',24),(3979,'Ingenio Fronterita',24),(3980,'Graneros',24),(3981,'Lamadrid',24),(3982,'Taco Ralo',24),(3983,'Juan Bautista Alberdi',24),(3984,'Villa Belgrano',24),(3985,'La Cocha',24),(3986,'San Jose De La Cocha',24),(3987,'Bella Vista',24),(3988,'Estacion Araoz',24),(3989,'Los Puestos',24),(3990,'Manuel Garcia Fernandez',24),(3991,'Pala Pala',24),(3992,'Rio Colorado',24),(3993,'Santa Rosa De Leales',24),(3994,'Villa Fiad - Ingenio Leales',24),(3995,'Villa De Leales',24),(3996,'Barrio San Felipe',24),(3997,'Barrio Araujo',24),(3998,'El Manantial',24),(3999,'Ingenio San Pablo',24),(4000,'La Reduccion',24),(4001,'Lules',24),(4002,'Acheral',24),(4003,'Capitan Caceres',24),(4004,'Monteros',24),(4005,'Pueblo Independencia',24),(4006,'Rio Seco',24),(4007,'Santa Lucia',24),(4008,'Sargento Moya',24),(4009,'Soldado Maldonado',24),(4010,'Teniente Berdina',24),(4011,'Villa Quinteros',24),(4012,'Aguilares',24),(4013,'Ingenio Santa Barbara',24),(4014,'Los Sarmientos',24),(4015,'Rio Chico',24),(4016,'Santa Ana',24),(4017,'Villa Clodomiro Hileret',24),(4018,'San Miguel De Tucuman',24),(4019,'Atahona',24),(4020,'Monteagudo',24),(4021,'Nueva Trinidad',24),(4022,'Santa Cruz',24),(4023,'Simoca',24),(4024,'Villa Chicligasta',24),(4025,'Amaicha Del Valle',24),(4026,'Colalao Del Valle',24),(4027,'El Mollar',24),(4028,'Tafi Del Valle',24),(4029,'Barrio El Cruce',24),(4030,'Barrio Lomas De Tafi',24),(4031,'Barrio Mutual San Martin',24),(4032,'Barrio Parada 14',24),(4033,'Barrio U.T.A. II',24),(4034,'Diag. Norte - Luz Y Fuerza - Los Pocitos',24),(4035,'El Cadillal',24),(4036,'Tafi Viejo',24),(4037,'Villa Las Flores',24),(4038,'Villa Mariano Moreno - El Colmenar',24),(4039,'Choromoro',24),(4040,'San Pedro De Colalao',24),(4041,'Villa De Trancas',24),(4042,'Barrio San Jose III',24),(4043,'Country Jockey Club',24),(4044,'Villa Carmela',24),(4045,'Ex Ingenio San Jose',24),(4046,'Yerba Buena - Marcos Paz',24);
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_clientes`
--

DROP TABLE IF EXISTS `log_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_clientes` (
  `id_logueo` int NOT NULL AUTO_INCREMENT,
  `tipo_accion` varchar(50) DEFAULT NULL,
  `nombre_de_tabla` varchar(50) DEFAULT NULL,
  `cliente_id` int DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `fecha_log` date DEFAULT NULL,
  `detalle_log` text,
  PRIMARY KEY (`id_logueo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_clientes`
--

LOCK TABLES `log_clientes` WRITE;
/*!40000 ALTER TABLE `log_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_cuentas`
--

DROP TABLE IF EXISTS `log_cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_cuentas` (
  `id_logueo` int NOT NULL AUTO_INCREMENT,
  `tipo_accion` varchar(50) DEFAULT NULL,
  `nombre_de_tabla` varchar(50) DEFAULT NULL,
  `id_cuenta` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `tipo_cuenta` int DEFAULT NULL,
  `tipo_moneda` int DEFAULT NULL,
  `saldo` int DEFAULT NULL,
  `id_sucursal` int DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `fecha_log` date DEFAULT NULL,
  `detalle_log` text,
  PRIMARY KEY (`id_logueo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_cuentas`
--

LOCK TABLES `log_cuentas` WRITE;
/*!40000 ALTER TABLE `log_cuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moneda`
--

DROP TABLE IF EXISTS `moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moneda` (
  `id_moneda` int NOT NULL AUTO_INCREMENT,
  `nombre_moneda` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_moneda`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moneda`
--

LOCK TABLES `moneda` WRITE;
/*!40000 ALTER TABLE `moneda` DISABLE KEYS */;
INSERT INTO `moneda` VALUES (1,'Pesos Argentinos'),(2,'Dolares Americanos');
/*!40000 ALTER TABLE `moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operaciones`
--

DROP TABLE IF EXISTS `operaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operaciones` (
  `id_operacion` int NOT NULL AUTO_INCREMENT,
  `tipo_operacion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_operacion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operaciones`
--

LOCK TABLES `operaciones` WRITE;
/*!40000 ALTER TABLE `operaciones` DISABLE KEYS */;
INSERT INTO `operaciones` VALUES (1,'Extraccion ATM'),(2,'Extraccion Ventanilla'),(3,'Deposito Cuenta Propia'),(4,'Deposito Cuenta Tercero'),(5,'Pago Haberes'),(6,'Prestamo');
/*!40000 ALTER TABLE `operaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `id_provincia` int NOT NULL AUTO_INCREMENT,
  `provincia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'Ciudad Autonoma de Buenos Aires'),(2,'Buenos Aires'),(3,'Catamarca'),(4,'Chaco'),(5,'Chubut'),(6,'Cordoba'),(7,'Corrientes'),(8,'Entre Rios'),(9,'Formosa'),(10,'Jujuy'),(11,'La Pampa'),(12,'La Rioja'),(13,'Mendoza'),(14,'Misiones'),(15,'Neuquen'),(16,'Rio Negro'),(17,'Salta'),(18,'San Juan'),(19,'San Luis'),(20,'Santa Cruz'),(21,'Santa Fe'),(22,'Santiago del Estero'),(23,'Tierra del Fuego'),(24,'Tucuman');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto_laboral`
--

DROP TABLE IF EXISTS `puesto_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puesto_laboral` (
  `id_puesto` int NOT NULL AUTO_INCREMENT,
  `puesto_nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto_laboral`
--

LOCK TABLES `puesto_laboral` WRITE;
/*!40000 ALTER TABLE `puesto_laboral` DISABLE KEYS */;
INSERT INTO `puesto_laboral` VALUES (1,'Presidente'),(2,'Vice Presidente'),(3,'Gerente'),(4,'Cajero'),(5,'Oficial de cuentas'),(6,'Administrativo'),(7,'Contable');
/*!40000 ALTER TABLE `puesto_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal` (
  `id_sucursal` int NOT NULL AUTO_INCREMENT,
  `direccion` varchar(70) DEFAULT NULL,
  `provincia` int DEFAULT NULL,
  `localidad` int DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`),
  KEY `provincia` (`provincia`),
  KEY `localidad` (`localidad`),
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`provincia`) REFERENCES `provincias` (`id_provincia`),
  CONSTRAINT `sucursal_ibfk_2` FOREIGN KEY (`localidad`) REFERENCES `localidades` (`id_localidad`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'Paso de los libres 312',4,1164),(2,'Calle 18 145',2,477),(3,'Av Mitre 124',3,986),(4,'Av Paseo Colon 1247',1,6),(5,'Pipore 71',5,1254),(6,'Martin Fierro 1147',8,1911),(7,'Rodrigo Bueno 10',6,1309),(8,'Quilmes 123',15,2833),(9,'Palmar 445',14,2708),(10,'Olmos 568',23,3934),(11,'Zelarrayan 5598',21,3641),(12,'Pehuajo 99',20,3377),(13,'Puerto Montt 901',19,3351),(14,'Av San Martin 774',9,2078),(15,'Av Martin de Guemes 665',11,1217),(16,'Sapucay 75',10,2266),(17,'Simbron 1299',13,2669),(18,'Segundo Sombra 1123',12,2388),(19,'Elmidio Salvigny 9985',17,3053),(20,'Av. de los Incas 546',18,3198),(21,'Av Belgrano 23',22,3820),(22,'Perito Moreno 101',16,2904),(23,'Consejal Tribulato 999',7,1816),(24,'Pareja 96',24,4018);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacciones` (
  `id_transaccion` int NOT NULL AUTO_INCREMENT,
  `tipo_transaccion` int NOT NULL,
  `fecha` timestamp NOT NULL,
  `estado` int DEFAULT NULL,
  `monto` float DEFAULT NULL,
  `id_cliente` int NOT NULL,
  PRIMARY KEY (`id_transaccion`),
  KEY `id_cliente` (`id_cliente`),
  KEY `tipo_transaccion` (`tipo_transaccion`),
  KEY `estado` (`estado`),
  CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`cliente_id`),
  CONSTRAINT `transacciones_ibfk_2` FOREIGN KEY (`tipo_transaccion`) REFERENCES `operaciones` (`id_operacion`),
  CONSTRAINT `transacciones_ibfk_3` FOREIGN KEY (`estado`) REFERENCES `estado` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (1,1,'2023-02-08 17:26:31',1,15000,1),(2,2,'2023-02-08 17:26:31',1,1000000,2),(3,6,'2023-02-08 17:26:31',1,2000000,3),(4,6,'2023-02-08 17:26:31',3,5000000,4),(5,5,'2023-02-08 17:26:31',1,151254,5),(6,5,'2023-02-08 17:26:31',1,235412,6),(7,5,'2023-02-08 17:26:31',1,93212.5,7),(8,4,'2023-02-08 17:26:31',2,125000,8),(9,3,'2023-02-08 17:26:31',1,56850,9),(10,4,'2023-02-08 17:26:31',1,12300,10),(11,3,'2023-02-08 17:26:31',2,37500,11),(12,2,'2023-02-08 17:26:31',1,200000,12),(13,1,'2023-02-08 17:26:31',1,20000,13),(14,3,'2023-02-08 17:26:31',1,78894,14),(15,5,'2023-02-08 17:26:31',1,125742,15);
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_clientes_cuentas_radicacion`
--

DROP TABLE IF EXISTS `vw_clientes_cuentas_radicacion`;
/*!50001 DROP VIEW IF EXISTS `vw_clientes_cuentas_radicacion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_clientes_cuentas_radicacion` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `id_cuenta`,
 1 AS `tipo_cuenta`,
 1 AS `tipo_moneda`,
 1 AS `saldo`,
 1 AS `provincia`,
 1 AS `localidad`,
 1 AS `direccion_sucursal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_datos_empleados`
--

DROP TABLE IF EXISTS `vw_datos_empleados`;
/*!50001 DROP VIEW IF EXISTS `vw_datos_empleados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_datos_empleados` AS SELECT 
 1 AS `id_empleado`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `cuil`,
 1 AS `domicilio_particular`,
 1 AS `telefono`,
 1 AS `fecha_ingreso`,
 1 AS `puesto`,
 1 AS `provincia`,
 1 AS `localidad`,
 1 AS `domicilio_laboral`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_detalle_operaciones`
--

DROP TABLE IF EXISTS `vw_detalle_operaciones`;
/*!50001 DROP VIEW IF EXISTS `vw_detalle_operaciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_detalle_operaciones` AS SELECT 
 1 AS `id_transaccion`,
 1 AS `id_cliente`,
 1 AS `fecha`,
 1 AS `tipo_operacion`,
 1 AS `monto`,
 1 AS `estado_operacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_operaciones_aprobadas`
--

DROP TABLE IF EXISTS `vw_operaciones_aprobadas`;
/*!50001 DROP VIEW IF EXISTS `vw_operaciones_aprobadas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_operaciones_aprobadas` AS SELECT 
 1 AS `id_transaccion`,
 1 AS `id_cliente`,
 1 AS `fecha`,
 1 AS `tipo_operacion`,
 1 AS `monto`,
 1 AS `estado_operacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_operaciones_en_proceso`
--

DROP TABLE IF EXISTS `vw_operaciones_en_proceso`;
/*!50001 DROP VIEW IF EXISTS `vw_operaciones_en_proceso`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_operaciones_en_proceso` AS SELECT 
 1 AS `id_transaccion`,
 1 AS `id_cliente`,
 1 AS `fecha`,
 1 AS `tipo_operacion`,
 1 AS `monto`,
 1 AS `estado_operacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_operaciones_rechazada`
--

DROP TABLE IF EXISTS `vw_operaciones_rechazada`;
/*!50001 DROP VIEW IF EXISTS `vw_operaciones_rechazada`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_operaciones_rechazada` AS SELECT 
 1 AS `id_transaccion`,
 1 AS `id_cliente`,
 1 AS `fecha`,
 1 AS `tipo_operacion`,
 1 AS `monto`,
 1 AS `estado_operacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'bancaria'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_calcular_antiguedad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcular_antiguedad`(p_id INT) RETURNS varchar(20) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	DECLARE antiguedad BIGINT;
	DECLARE resultado VARCHAR(20);
	SELECT TIMESTAMPDIFF(year, fecha_ingreso, NOW()) into antiguedad FROM empleados
	WHERE p_id = id_empleado;
	IF antiguedad = 0 THEN
		SELECT TIMESTAMPDIFF(month, fecha_ingreso, NOW()) into antiguedad FROM empleados
		WHERE p_id = id_empleado;
		SET resultado = CONCAT(antiguedad, ' meses');
	ELSE
		SET resultado = CONCAT(antiguedad, ' años');
	END IF;
    RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_calcular_clientes_por_sucursal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcular_clientes_por_sucursal`(p_sucursal_id INT) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE cantidad_clientes_sucursal INT;
    SELECT COUNT(id_cuenta) into cantidad_clientes_sucursal FROM cuentas
    WHERE id_sucursal = p_sucursal_id;
	RETURN cantidad_clientes_sucursal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_agregar_eliminar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_eliminar_cliente`(IN add_delete VARCHAR(1), IN id_cliente INT, in nombre VARCHAR(20), apellido VARCHAR(20), in dni VARCHAR(8), IN direccion VARCHAR(50), fecha_nacimiento VARCHAR(10))
BEGIN
	IF (add_delete = 'a') -- INSERTAR
    THEN
	INSERT INTO clientes (cliente_id, nombre, apellido, dni, direccion, fecha_nacimiento)
    VALUES (NULL, nombre, apellido, dni, direccion, fecha_nacimiento);
  
    ELSEIF (add_delete = 'd') -- ELIMINAR
    THEN
    DELETE FROM clientes where id_cliente = cliente_id;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ordenar_tabla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ordenar_tabla`(IN p_nombre_tabla VARCHAR(255), IN p_nombre_campo VARCHAR(255), IN p_asc_desc VARCHAR(4))
BEGIN
	SET @v1 = concat('SELECT * FROM ', p_nombre_tabla,' ORDER BY ',p_nombre_campo,' ',p_asc_desc);
    PREPARE consulta FROM @v1 ;
    EXECUTE consulta;
    DEALLOCATE PREPARE consulta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_clientes_cuentas_radicacion`
--

/*!50001 DROP VIEW IF EXISTS `vw_clientes_cuentas_radicacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_clientes_cuentas_radicacion` AS select `c`.`id_cliente` AS `id_cliente`,`cli`.`nombre` AS `nombre`,`cli`.`apellido` AS `apellido`,`c`.`id_cuenta` AS `id_cuenta`,`cl`.`tipo_cuenta` AS `tipo_cuenta`,`tm`.`nombre_moneda` AS `tipo_moneda`,`c`.`saldo` AS `saldo`,`pr`.`provincia` AS `provincia`,`lc`.`localidad` AS `localidad`,`s`.`direccion` AS `direccion_sucursal` from ((((((`cuentas` `c` join `clientes` `cli` on((`c`.`id_cliente` = `cli`.`cliente_id`))) join `clasificacion_cuenta` `cl` on((`c`.`tipo_cuenta` = `cl`.`id_tipo`))) join `moneda` `tm` on((`c`.`tipo_moneda` = `tm`.`id_moneda`))) join `sucursal` `s` on((`c`.`id_sucursal` = `s`.`id_sucursal`))) join `provincias` `pr` on((`s`.`provincia` = `pr`.`id_provincia`))) join `localidades` `lc` on((`s`.`localidad` = `lc`.`id_localidad`))) order by `c`.`id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_datos_empleados`
--

/*!50001 DROP VIEW IF EXISTS `vw_datos_empleados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_datos_empleados` AS select `e`.`id_empleado` AS `id_empleado`,`e`.`nombre` AS `nombre`,`e`.`apellido` AS `apellido`,`e`.`cuil` AS `cuil`,`e`.`direccion` AS `domicilio_particular`,`e`.`telefono` AS `telefono`,`e`.`fecha_ingreso` AS `fecha_ingreso`,`pl`.`puesto_nombre` AS `puesto`,`pr`.`provincia` AS `provincia`,`lc`.`localidad` AS `localidad`,`s`.`direccion` AS `domicilio_laboral` from ((((`empleados` `e` join `puesto_laboral` `pl` on((`e`.`puesto` = `pl`.`id_puesto`))) join `sucursal` `s` on((`e`.`sucursal_empleo` = `s`.`id_sucursal`))) join `provincias` `pr` on((`s`.`provincia` = `pr`.`id_provincia`))) join `localidades` `lc` on((`s`.`localidad` = `lc`.`id_localidad`))) order by `e`.`id_empleado` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_detalle_operaciones`
--

/*!50001 DROP VIEW IF EXISTS `vw_detalle_operaciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_detalle_operaciones` AS select `t`.`id_transaccion` AS `id_transaccion`,`t`.`id_cliente` AS `id_cliente`,`t`.`fecha` AS `fecha`,`o`.`tipo_operacion` AS `tipo_operacion`,`t`.`monto` AS `monto`,`e`.`estado_operacion` AS `estado_operacion` from ((`transacciones` `t` join `operaciones` `o` on((`t`.`tipo_transaccion` = `o`.`id_operacion`))) join `estado` `e` on((`t`.`estado` = `e`.`id_estado`))) order by `t`.`id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_operaciones_aprobadas`
--

/*!50001 DROP VIEW IF EXISTS `vw_operaciones_aprobadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_operaciones_aprobadas` AS select `t`.`id_transaccion` AS `id_transaccion`,`t`.`id_cliente` AS `id_cliente`,`t`.`fecha` AS `fecha`,`o`.`tipo_operacion` AS `tipo_operacion`,`t`.`monto` AS `monto`,`e`.`estado_operacion` AS `estado_operacion` from ((`transacciones` `t` join `operaciones` `o` on((`t`.`tipo_transaccion` = `o`.`id_operacion`))) join `estado` `e` on((`t`.`estado` = `e`.`id_estado`))) where (`e`.`estado_operacion` like '%aprobado%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_operaciones_en_proceso`
--

/*!50001 DROP VIEW IF EXISTS `vw_operaciones_en_proceso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_operaciones_en_proceso` AS select `t`.`id_transaccion` AS `id_transaccion`,`t`.`id_cliente` AS `id_cliente`,`t`.`fecha` AS `fecha`,`o`.`tipo_operacion` AS `tipo_operacion`,`t`.`monto` AS `monto`,`e`.`estado_operacion` AS `estado_operacion` from ((`transacciones` `t` join `operaciones` `o` on((`t`.`tipo_transaccion` = `o`.`id_operacion`))) join `estado` `e` on((`t`.`estado` = `e`.`id_estado`))) where (`e`.`estado_operacion` like '%en proceso%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_operaciones_rechazada`
--

/*!50001 DROP VIEW IF EXISTS `vw_operaciones_rechazada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_operaciones_rechazada` AS select `t`.`id_transaccion` AS `id_transaccion`,`t`.`id_cliente` AS `id_cliente`,`t`.`fecha` AS `fecha`,`o`.`tipo_operacion` AS `tipo_operacion`,`t`.`monto` AS `monto`,`e`.`estado_operacion` AS `estado_operacion` from ((`transacciones` `t` join `operaciones` `o` on((`t`.`tipo_transaccion` = `o`.`id_operacion`))) join `estado` `e` on((`t`.`estado` = `e`.`id_estado`))) where (`e`.`estado_operacion` like '%rechazado%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-08 14:27:21
