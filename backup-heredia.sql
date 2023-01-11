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
-- Dumping data for table `clasificacion_cuenta`
--

LOCK TABLES `clasificacion_cuenta` WRITE;
/*!40000 ALTER TABLE `clasificacion_cuenta` DISABLE KEYS */;
INSERT INTO `clasificacion_cuenta` VALUES (1,'Caja de Ahorros'),(2,'Cuenta Corriente');
/*!40000 ALTER TABLE `clasificacion_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Marcos','Acuña','38145789','San Jorge 1234','1993-12-01'),(2,'Jaime','Allon','18746879','Pieres 456','1963-05-21'),(3,'Maria Laura','Tazer','30695123','Coquimboe 777','1982-04-02'),(4,'Lilian','Clark','9133412','Besares 734','1933-04-04'),(5,'Ramon','Pelle','26984621','San Luis 698','1968-08-06'),(6,'Adriana','Perrone','40145789','Salta 1123','2000-05-05'),(7,'Lautaro','Romero','39561023','Virasoro 756','1995-03-16'),(8,'Mario','Santos','20126789','Campos Eliseos 1717','1960-10-10'),(9,'Melisa','Hernandez','35001321','Formosa 115','1989-12-22'),(10,'Ramona','Ayala','15698563','Vuelta de Obligado 799','1955-02-10'),(11,'Vanina','Valenzuela','29144789','Santo Tome 723','1980-03-29'),(12,'Julian','Becerra','43127922','Monroe 7136','2003-07-14'),(13,'Athos','Pomier','37446332','Marcos Sastre 55','1990-08-08'),(14,'Daiana','Rodriguez','92756123','Almirante Brown 7789','1996-06-06'),(15,'Pablo','San Filippo','12356998','Pichincha 12','1949-01-02');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (1,15,1,1,230000,7),(2,14,1,1,5533,6),(3,13,1,1,12346,5),(4,12,1,1,0,4),(5,11,1,1,70251.1,3),(6,10,1,1,24120.1,2),(7,9,1,1,1230,1),(8,8,1,1,32510.6,15),(9,7,1,1,41200,14),(10,6,1,1,23000.1,13),(11,5,1,1,0,12),(12,4,1,1,15503.9,11),(13,3,1,1,77456.1,10),(14,2,1,1,13501,8),(15,1,1,1,9810.33,9);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Soledad','Araujo','21148967712','Av Forest 112','1145956179','2012-01-02',1,2),(2,'Jesus','Ramos','20159887791','25 de mayo 33','1137459561','2012-01-02',2,2),(3,'Pedro','Gomez','20348913235','Peru 213','1145371112','2017-10-05',3,2),(4,'Laura','Perez','21301234453','Pilcomayo 321','3419459561','2015-07-01',3,20),(5,'Juan Ignacio','Oyola','21319813359','Sarasa 447','3511059510','2015-03-01',3,6),(6,'Adrian','Steilman','23268895416','Saturnino Saa 177','3704626596','2013-12-01',3,9),(7,'Richard','Vallarta ','20921236642','Talampaya 45','1154560449','2022-03-10',5,2),(8,'Brian','Baeza','20112377982','El tala 33','2617814088','2017-07-01',3,13),(9,'Debora ','Saldaña','20306698255','Pje. Garcia 298','3703232563','2014-11-10',5,9),(10,'Maria','Baez','21260110455','Termopilas 12','2217590805','2016-01-05',3,1),(11,'Juan ','Reyes','22158795572','Tilcara 555','2616096633','2017-06-05',5,13),(12,'Isabelino','Pastor','27327774123','Libano 322','2218704782','2012-03-03',5,1),(13,'Aurora','Lozano','23372113665','Tijuana 679','3874369188','2013-08-01',3,17),(14,'Marina','Martínez','20198776523','San Martin 98','3874052129','2016-02-10',5,17),(15,'Cristina ','Enriquez','22268951232','Salas 450','3857341910','2014-10-06',3,22),(16,'Rosario','Miguez','25271236635','Cuenca 2','3850679784','2015-02-03',5,22);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Aprobado'),(2,'En proceso'),(3,'Rechazado');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
INSERT INTO `localidades` VALUES (1,'La Plata'),(2,'Ciudad Autonoma de Buenos Aires'),(3,'San Fernando del Valle de Catamarca'),(4,'Resistencia'),(5,'Rawson'),(6,'Ciudad de Cordoba'),(7,'Ciudad de Corrientes'),(8,'Parana'),(9,'Ciudad de Formosa'),(10,'San Salvador de Jujuy'),(11,'Santa Rosa'),(12,'Ciudad de La Rioja'),(13,'Ciudad de Mendoza'),(14,'Posadas'),(15,'Ciudad de Neuquen'),(16,'Viedma'),(17,'Ciudad de Salta'),(18,'Ciudad de San Juan'),(19,'Ciudad de San Luis'),(20,'Rio Gallegos'),(21,'Ciudad de Santa Fe'),(22,'Ciudad de Santiago del Estero'),(23,'Ushuaia'),(24,'San Miguel de Tucuman');
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_clientes`
--

LOCK TABLES `log_clientes` WRITE;
/*!40000 ALTER TABLE `log_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_cuentas`
--

LOCK TABLES `log_cuentas` WRITE;
/*!40000 ALTER TABLE `log_cuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `moneda`
--

LOCK TABLES `moneda` WRITE;
/*!40000 ALTER TABLE `moneda` DISABLE KEYS */;
INSERT INTO `moneda` VALUES (1,'Pesos Argentinos'),(2,'Dolares Americanos');
/*!40000 ALTER TABLE `moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `operaciones`
--

LOCK TABLES `operaciones` WRITE;
/*!40000 ALTER TABLE `operaciones` DISABLE KEYS */;
INSERT INTO `operaciones` VALUES (1,'Extraccion ATM'),(2,'Extraccion Ventanilla'),(3,'Deposito Cuenta Propia'),(4,'Deposito Cuenta Tercero'),(5,'Pago Haberes'),(6,'Prestamo');
/*!40000 ALTER TABLE `operaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'Buenos Aires'),(2,'Ciudad Autonoma de Buenos Aires'),(3,'Catamarca'),(4,'Chaco'),(5,'Chubut'),(6,'Cordoba'),(7,'Corrientes'),(8,'Entre Rios'),(9,'Formosa'),(10,'Jujuy'),(11,'La Pampa'),(12,'La Rioja'),(13,'Mendoza'),(14,'Misiones'),(15,'Neuquen'),(16,'Rio Negro'),(17,'Salta'),(18,'San Juan'),(19,'San Luis'),(20,'Santa Cruz'),(21,'Santa Fe'),(22,'Santiago del Estero'),(23,'Tierra del Fuego'),(24,'Tucuman');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puesto_laboral`
--

LOCK TABLES `puesto_laboral` WRITE;
/*!40000 ALTER TABLE `puesto_laboral` DISABLE KEYS */;
INSERT INTO `puesto_laboral` VALUES (1,'Presidente'),(2,'Vice Presidente'),(3,'Gerente'),(4,'Cajero'),(5,'Oficial de cuentas'),(6,'Administrativo'),(7,'Contable');
/*!40000 ALTER TABLE `puesto_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'Paso de los libres 312',4,4),(2,'Calle 18 145',1,1),(3,'Av Mitre 124',3,3),(4,'Av Paseo Colon 1247',2,2),(5,'Pipore 71',5,5),(6,'Martin Fierro 1147',8,8),(7,'Rodrigo Bueno 10',6,6),(8,'Quilmes 123',15,15),(9,'Palmar 445',14,14),(10,'Olmos 568',23,23),(11,'Zelarrayan 5598',21,21),(12,'Pehuajo 99',20,20),(13,'Puerto Montt 901',19,19),(14,'Av San Martin 774',9,9),(15,'Av Martin de Guemes 665',11,11),(16,'Sapucay 75',10,10),(17,'Simbron 1299',13,13),(18,'Segundo Sombra 1123',12,12),(19,'Elmidio Salvigny 9985',17,17),(20,'Av. de los Incas 546',18,18),(21,'Av Belgrano 23',22,22),(22,'Perito Moreno 101',16,16),(23,'Consejal Tribulato 999',7,7),(24,'Pareja 96',24,24);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (1,1,'2023-01-11 05:21:38',1,15000,1),(2,2,'2023-01-11 05:21:38',1,1000000,2),(3,6,'2023-01-11 05:21:38',1,2000000,3),(4,6,'2023-01-11 05:21:38',3,5000000,4),(5,5,'2023-01-11 05:21:38',1,151254,5),(6,5,'2023-01-11 05:21:38',1,235412,6),(7,5,'2023-01-11 05:21:38',1,93212.5,7),(8,4,'2023-01-11 05:21:38',2,125000,8),(9,3,'2023-01-11 05:21:38',1,56850,9),(10,4,'2023-01-11 05:21:38',1,12300,10),(11,3,'2023-01-11 05:21:38',2,37500,11),(12,2,'2023-01-11 05:21:38',1,200000,12),(13,1,'2023-01-11 05:21:38',1,20000,13),(14,3,'2023-01-11 05:21:38',1,78894,14),(15,5,'2023-01-11 05:21:38',1,125742,15);
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-11  2:24:58
