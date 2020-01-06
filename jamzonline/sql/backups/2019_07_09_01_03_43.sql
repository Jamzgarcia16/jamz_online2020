-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: mi_proyecto
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

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
-- Table structure for table `apartamentos`
--

DROP TABLE IF EXISTS `apartamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartamentos` (
  `id_apartamento` int(4) NOT NULL AUTO_INCREMENT,
  `nombre_apartamento` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `valor_adm` varchar(12) NOT NULL,
  PRIMARY KEY (`id_apartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartamentos`
--

LOCK TABLES `apartamentos` WRITE;
/*!40000 ALTER TABLE `apartamentos` DISABLE KEYS */;
INSERT INTO `apartamentos` VALUES (1,'Apartamento 101','Zona A','200000'),(2,'Apartamento 102','Zona A','320000'),(3,'Aparamtento 103','Zona A','120000'),(4,'Apartamento 201','Zona A','150000'),(8,'Apartamento 202','Zona A','125000'),(10,'Apartamento 203','Zona A','175000'),(11,'Apartamento 301','Zona A','200000'),(12,'Apartamento 302','Zona A','320000'),(13,'Apartamento 303','Zona A','120000'),(14,'Apartamento 401','Zona A','200000'),(15,'Apartamento 402','Zona A','320000'),(16,'Apartamento 403','Zona A','120000'),(17,'Apartamento 501','Zona A','200000'),(18,'Apartamento 502','Zona A','320000'),(19,'Apartamento 503','Zona A','120000'),(20,'Apartamento 101','Zona B','200000'),(21,'Apartamento 102','Zona B','320000'),(22,'Apartamento 103','Zona B','120000'),(23,'Apartamento 201','Zona B','200000'),(24,'Apartamento 202','Zona B','320000'),(25,'Apartamento 203','Zona B','120000'),(26,'Apartamento 301','Zona B','200000'),(27,'Apartamento 302','Zona B','320000'),(28,'Apartamento 303','Zona B','120000'),(29,'Apartamento 401','Zona B','200000'),(30,'Apartamento 402','Zona B','320000'),(31,'Apartamento 403','Zona B','120000'),(32,'Apartamento 501','Zona B','200000'),(33,'Apartamento 502','Zona B','320000'),(34,'Apartamento 503','Zona B','120000'),(35,'Apartamento 101','Zona C','200000'),(36,'Apartamento 102','Zona C','320000'),(37,'Apartamento 103','Zona C','120000'),(38,'Apartamento 201','Zona C','200000'),(39,'Apartamento 202','Zona C','320000'),(40,'Apartamento 203','Zona C','120000'),(41,'Apartamento 301','Zona C','200000'),(42,'Apartamento 302','Zona C','320000'),(43,'Apartamento 303','Zona C','120000'),(44,'Apartamento 401','Zona C','200000'),(45,'Apartamento 402','Zona C','320000'),(46,'Apartamento 403','Zona C','120000'),(47,'Apartamento 501','Zona C','200000'),(48,'Apartamento 502','Zona C','320000'),(49,'Apartamento 503','Zona C','120000'),(50,'Apartamento 101','Zona D','200000'),(51,'Apartamento 102','Zona D','320000'),(52,'Apartamento 103','Zona D','120000'),(53,'Apartamento 201','Zona D','200000'),(54,'Apartamento 202','Zona D','320000'),(55,'Apartamento 203','Zona D','120000'),(56,'Apartamento 301','Zona D','200000'),(57,'Apartamento 302','Zona D','320000'),(58,'Apartamento 303','Zona D','120000'),(59,'Apartamento 401','Zona D','200000'),(60,'Apartamento 402','Zona D','320000'),(61,'Apartamento 403','Zona D','120000'),(62,'Apartamento 501','Zona D','200000'),(63,'Apartamento 502','Zona D','320000'),(64,'Apartamento 503','Zona D','120000');
/*!40000 ALTER TABLE `apartamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_perfiles_menus`
--

DROP TABLE IF EXISTS `aux_perfiles_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_perfiles_menus` (
  `id_aux` int(4) NOT NULL AUTO_INCREMENT,
  `perfil_id` int(2) NOT NULL,
  `menu_id` int(2) NOT NULL,
  PRIMARY KEY (`id_aux`),
  KEY `perfil_id` (`perfil_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `aux_perfiles_menus_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfiles` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `aux_perfiles_menus_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_perfiles_menus`
--

LOCK TABLES `aux_perfiles_menus` WRITE;
/*!40000 ALTER TABLE `aux_perfiles_menus` DISABLE KEYS */;
INSERT INTO `aux_perfiles_menus` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,2,12),(16,2,13),(17,2,14),(18,3,7),(20,1,15),(21,1,16),(22,1,17),(23,1,18),(24,1,21);
/*!40000 ALTER TABLE `aux_perfiles_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `objeto` text NOT NULL,
  `impresiones` int(3) NOT NULL,
  `accesos` int(3) NOT NULL,
  `cliente_id` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'Banner 1','ob 1',10,2,1),(2,'Banner 2','ob 2',15,3,2),(3,'Banner 3','ob 3',12,1,1),(4,'Banner 4','ob 4',14,5,3),(5,'Banner 5','ob 5',16,4,4),(6,'Banner 6','ob 6',18,2,5),(7,'Banner 7','ob 7',12,4,7),(8,'Banner 8','ob 8',14,5,9),(9,'Banner 9','ob 9',19,4,1),(10,'Banner 10','ob 10',11,3,2),(11,'Banner Nuevo','ob new',0,0,0),(12,'banner 11','nuevo',200,150,0);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_cliente` int(2) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(30) NOT NULL,
  `cc` int(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `cod_cliente` int(6) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `cod_cliente` (`cod_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Empresa 1',930254142,'empresa1@gmail.com','Calle 10 No. 9 - 78? Centro',111),(2,'Empresa 2',930214562,'empresa2@gmail.com','Carrera 56A No. 51 - 81',112),(3,'Empresa 3',930214562,'empresa3@gmail.com','Carrera 22 No. 17-31',113),(4,'Empresa 4',830214563,'empresa4@gmail.com','Carrera 54 No. 68 - 80 Barrio ',114),(5,'Empresa 5',863024969,'empresa5@gmail.com','Calle 111 No. 100 - 11? Barrio',115),(6,'Empresa 6',930214568,'empresa6@gmail.com','Carrera 10A No. 20 - 40? Edifi',116),(7,'Empresa 7',630214875,'empresa7@gmail.com','Carrera 8? No. 20 - 59',117),(8,'Empresa 8',830214563,'empresa8@gmail.com','Calle 20 No. 22 - 27 piso 3 Ed',118),(9,'Empresa 9',932142521,'empresa9@gmail.com','Carrera 8a No. 7 - 88 /94? Bar',119),(10,'Empresa 10',452362142,'empresa10@gmail.com','Carrera? 5 No. 3 -74? centro',120),(11,'Empresa 11',320145247,'empresa11@gmail.com','Calle 15 No. 9 - 56 centro',121),(12,'Empresa 12',932145851,'empresa12@gmail.com','Calle 25 No. 4 - 38 piso 2? Ba',122),(13,'Empresa 13',830216547,'empresa13@gmail.com','Calle 28 No. 8 - 69 CENTRO',123),(14,'Empresa 14',830214569,'empresa14@gmail.com','Carrera 7A No. 32 - 63 piso 2',124),(15,'Empresa 15',874320125,'empresa15@gmail.com','Calle 7 No. 5 - 25? Edificio S',125),(16,'Empresa 16',320125698,'empresa16@gmail.com','Calle 7 No. 5 - 25? Edificio S',126),(17,'Empresa 17',830254120,'empresa17@gmail.com','Carrera 9? No. 7 - 34',127),(18,'Empresa 18',841021458,'empresa18@gmail.com','Calle 20 No. 3 - 22',128),(19,'Empresa 19',863021482,'empresa19@gmail.com','Calle 33B? No. 38 - 42? Barrio',129),(20,'Empresa 20',896452141,'empresa20@gmail.com','Calle 16 No. 23 - 57 piso 4? E',130),(21,'Empresa 21',830521410,'empresa21@gmail.com','Calle 33B? No. 38 - 42? Barrio',131),(22,'Empresa 22',830214574,'empresa22@gmail.com','Calle 16 No. 23 - 57 piso 4? E',132),(23,'Empresa 23',830214562,'empresa23@gmail.com','Calle 12 No. 4 - 19? Edificio ',133),(24,'Empresa 24',862145210,'empresa24@gmail.com','Cr 5 No. 9 - 08',134),(25,'Empresa 25',830214565,'empresa25@gmail.com','CALLE 23 No. 12-11',135),(26,'Empresa 26',830214565,'empresa26@gmail.com','Calle 19 No. 8 - 34? of. 502',136),(27,'Empresa 27',860214589,'empresa27@gmail.com','Avda Francisco Newball No. 4A-',137),(28,'Empresa 28',930214568,'empresa28@gmail.com','Calle 31 No. 13 - 71 of. 301 E',138),(29,'Empresa 29',862145987,'empresa29@gmail.com','Carrera 3? con Calle 28 Esquin',139),(30,'Empresa 30',830254102,'empresa30@gmail.com','CARRERA 42 No.5C-48 Barrio Teq',140);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `id_empleado` int(2) NOT NULL AUTO_INCREMENT,
  `cod_empleado` int(2) NOT NULL,
  `departamento` varchar(20) NOT NULL,
  `nombre_empleado` varchar(20) NOT NULL,
  `apellido_empleado` varchar(20) NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `fecha_acceso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_empleado`),
  KEY `cod_empleado` (`cod_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,1100,'Cundinamarca','jimmy fernando','Cantor Garcia','1992-04-25','masculino','Programador','2019-07-08 00:58:15'),(2,1101,'Boyaca','alberto','sanchez','2019-02-28','masculino','guarda','2019-07-08 00:58:21'),(3,1102,'Antioquia','ana','sanchez','2019-02-06','femenino','diseñadora','2019-07-08 00:58:36'),(4,1103,'Caldaz','Andrea','Corzo','2019-02-03','femenino','Programadora Junior','2019-07-08 00:58:48'),(7,1104,'Risaralda','Andres','Cardenas','2019-07-06','masculino','Operador','2019-07-06 05:00:00'),(8,1105,'Bogota','Antonio','Perez','1978-06-12','masculino','Operador','2019-07-07 05:00:00'),(13,1106,'Bogota','Antonela','Giraldo','2019-01-07','masculino','Operador','2019-07-07 05:00:00'),(15,1107,'Antioquia','Antony','Garcia','1992-02-20','masculino','Auditor','2019-07-07 05:00:00'),(16,1108,'aa','aa','aa','1211-12-12','aa','as','2019-07-07 05:00:00'),(17,1109,'aaxxcc','aaaaaa','bbbbbb','2019-07-17','masculino','2019-07-08','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iconos`
--

DROP TABLE IF EXISTS `iconos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iconos` (
  `id_icono` int(2) NOT NULL AUTO_INCREMENT,
  `icono` varchar(30) NOT NULL,
  PRIMARY KEY (`id_icono`)
) ENGINE=InnoDB AUTO_INCREMENT=786 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iconos`
--

LOCK TABLES `iconos` WRITE;
/*!40000 ALTER TABLE `iconos` DISABLE KEYS */;
INSERT INTO `iconos` VALUES (1,'<i class=\"fa fa-500px\"></i>'),(2,'<i class=\"fa fa-address-book\">'),(3,'<i class=\"fa fa-address-book-o'),(4,'<i class=\"fa fa-address-card\">'),(5,'<i class=\"fa fa-address-card-o'),(6,'<i class=\"fa fa-adjust\"></i>'),(7,'<i class=\"fa fa-adn\"></i>'),(8,'<i class=\"fa fa-align-center\">'),(9,'<i class=\"fa fa-align-justify\"'),(10,'<i class=\"fa fa-align-left\"></'),(11,'<i class=\"fa fa-align-right\"><'),(12,'<i class=\"fa fa-amazon\"></i>'),(13,'<i class=\"fa fa-ambulance\"></i'),(14,'<i class=\"fa fa-american-sign-'),(15,'<i class=\"fa fa-anchor\"></i>'),(16,'<i class=\"fa fa-android\"></i>'),(17,'<i class=\"fa fa-angellist\"></i'),(18,'<i class=\"fa fa-angle-double-d'),(19,'<i class=\"fa fa-angle-double-l'),(20,'<i class=\"fa fa-angle-double-r'),(21,'<i class=\"fa fa-angle-double-u'),(22,'<i class=\"fa fa-angle-down\"></'),(23,'<i class=\"fa fa-angle-left\"></'),(24,'<i class=\"fa fa-angle-right\"><'),(25,'<i class=\"fa fa-angle-up\"></i>'),(26,'<i class=\"fa fa-apple\"></i>'),(27,'<i class=\"fa fa-archive\"></i>'),(28,'<i class=\"fa fa-area-chart\"></'),(29,'<i class=\"fa fa-arrow-circle-d'),(30,'<i class=\"fa fa-arrow-circle-l'),(31,'<i class=\"fa fa-arrow-circle-o'),(32,'<i class=\"fa fa-arrow-circle-o'),(33,'<i class=\"fa fa-arrow-circle-o'),(34,'<i class=\"fa fa-arrow-circle-o'),(35,'<i class=\"fa fa-arrow-circle-r'),(36,'<i class=\"fa fa-arrow-circle-u'),(37,'<i class=\"fa fa-arrow-down\"></'),(38,'<i class=\"fa fa-arrow-left\"></'),(39,'<i class=\"fa fa-arrow-right\"><'),(40,'<i class=\"fa fa-arrow-up\"></i>'),(41,'<i class=\"fa fa-arrows\"></i>'),(42,'<i class=\"fa fa-arrows-alt\"></'),(43,'<i class=\"fa fa-arrows-h\"></i>'),(44,'<i class=\"fa fa-arrows-v\"></i>'),(45,'<i class=\"fa fa-asl-interpreti'),(46,'<i class=\"fa fa-assistive-list'),(47,'<i class=\"fa fa-asterisk\"></i>'),(48,'<i class=\"fa fa-at\"></i>'),(49,'<i class=\"fa fa-audio-descript'),(50,'<i class=\"fa fa-automobile\"></'),(51,'<i class=\"fa fa-backward\"></i>'),(52,'<i class=\"fa fa-balance-scale\"'),(53,'<i class=\"fa fa-ban\"></i>'),(54,'<i class=\"fa fa-bandcamp\"></i>'),(55,'<i class=\"fa fa-bank\"></i>'),(56,'<i class=\"fa fa-bar-chart\"></i'),(57,'<i class=\"fa fa-bar-chart-o\"><'),(58,'<i class=\"fa fa-barcode\"></i>'),(59,'<i class=\"fa fa-bars\"></i>'),(60,'<i class=\"fa fa-bath\"></i>'),(61,'<i class=\"fa fa-bathtub\"></i>'),(62,'<i class=\"fa fa-battery-0\"></i'),(63,'<i class=\"fa fa-battery-1\"></i'),(64,'<i class=\"fa fa-battery-2\"></i'),(65,'<i class=\"fa fa-battery-3\"></i'),(66,'<i class=\"fa fa-battery-4\"></i'),(67,'<i class=\"fa fa-battery-empty\"'),(68,'<i class=\"fa fa-battery-full\">'),(69,'<i class=\"fa fa-battery-half\">'),(70,'<i class=\"fa fa-battery-quarte'),(71,'<i class=\"fa fa-battery-three-'),(72,'<i class=\"fa fa-bed\"></i>'),(73,'<i class=\"fa fa-beer\"></i>'),(74,'<i class=\"fa fa-behance\"></i>'),(75,'<i class=\"fa fa-behance-square'),(76,'<i class=\"fa fa-bell\"></i>'),(77,'<i class=\"fa fa-bell-o\"></i>'),(78,'<i class=\"fa fa-bell-slash\"></'),(79,'<i class=\"fa fa-bell-slash-o\">'),(80,'<i class=\"fa fa-bicycle\"></i>'),(81,'<i class=\"fa fa-binoculars\"></'),(82,'<i class=\"fa fa-birthday-cake\"'),(83,'<i class=\"fa fa-bitbucket\"></i'),(84,'<i class=\"fa fa-bitbucket-squa'),(85,'<i class=\"fa fa-bitcoin\"></i>'),(86,'<i class=\"fa fa-black-tie\"></i'),(87,'<i class=\"fa fa-blind\"></i>'),(88,'<i class=\"fa fa-bluetooth\"></i'),(89,'<i class=\"fa fa-bluetooth-b\"><'),(90,'<i class=\"fa fa-bold\"></i>'),(91,'<i class=\"fa fa-bolt\"></i>'),(92,'<i class=\"fa fa-bomb\"></i>'),(93,'<i class=\"fa fa-book\"></i>'),(94,'<i class=\"fa fa-bookmark\"></i>'),(95,'<i class=\"fa fa-bookmark-o\"></'),(96,'<i class=\"fa fa-braille\"></i>'),(97,'<i class=\"fa fa-briefcase\"></i'),(98,'<i class=\"fa fa-btc\"></i>'),(99,'<i class=\"fa fa-bug\"></i>'),(100,'<i class=\"fa fa-building\"></i>'),(101,'<i class=\"fa fa-building-o\"></'),(102,'<i class=\"fa fa-bullhorn\"></i>'),(103,'<i class=\"fa fa-bullseye\"></i>'),(104,'<i class=\"fa fa-bus\"></i>'),(105,'<i class=\"fa fa-buysellads\"></'),(106,'<i class=\"fa fa-cab\"></i>'),(107,'<i class=\"fa fa-calculator\"></'),(108,'<i class=\"fa fa-calendar\"></i>'),(109,'<i class=\"fa fa-calendar-check'),(110,'<i class=\"fa fa-calendar-minus'),(111,'<i class=\"fa fa-calendar-o\"></'),(112,'<i class=\"fa fa-calendar-plus-'),(113,'<i class=\"fa fa-calendar-times'),(114,'<i class=\"fa fa-camera\"></i>'),(115,'<i class=\"fa fa-camera-retro\">'),(116,'<i class=\"fa fa-car\"></i>'),(117,'<i class=\"fa fa-caret-down\"></'),(118,'<i class=\"fa fa-caret-left\"></'),(119,'<i class=\"fa fa-caret-right\"><'),(120,'<i class=\"fa fa-caret-square-o'),(121,'<i class=\"fa fa-caret-square-o'),(122,'<i class=\"fa fa-caret-square-o'),(123,'<i class=\"fa fa-caret-square-o'),(124,'<i class=\"fa fa-caret-up\"></i>'),(125,'<i class=\"fa fa-cart-arrow-dow'),(126,'<i class=\"fa fa-cart-plus\"></i'),(127,'<i class=\"fa fa-cc\"></i>'),(128,'<i class=\"fa fa-cc-amex\"></i>'),(129,'<i class=\"fa fa-cc-diners-club'),(130,'<i class=\"fa fa-cc-discover\"><'),(131,'<i class=\"fa fa-cc-jcb\"></i>'),(132,'<i class=\"fa fa-cc-mastercard\"'),(133,'<i class=\"fa fa-cc-paypal\"></i'),(134,'<i class=\"fa fa-cc-stripe\"></i'),(135,'<i class=\"fa fa-cc-visa\"></i>'),(136,'<i class=\"fa fa-certificate\"><'),(137,'<i class=\"fa fa-chain\"></i>'),(138,'<i class=\"fa fa-chain-broken\">'),(139,'<i class=\"fa fa-check\"></i>'),(140,'<i class=\"fa fa-check-circle\">'),(141,'<i class=\"fa fa-check-circle-o'),(142,'<i class=\"fa fa-check-square\">'),(143,'<i class=\"fa fa-check-square-o'),(144,'<i class=\"fa fa-chevron-circle'),(145,'<i class=\"fa fa-chevron-circle'),(146,'<i class=\"fa fa-chevron-circle'),(147,'<i class=\"fa fa-chevron-circle'),(148,'<i class=\"fa fa-chevron-down\">'),(149,'<i class=\"fa fa-chevron-left\">'),(150,'<i class=\"fa fa-chevron-right\"'),(151,'<i class=\"fa fa-chevron-up\"></'),(152,'<i class=\"fa fa-child\"></i>'),(153,'<i class=\"fa fa-chrome\"></i>'),(154,'<i class=\"fa fa-circle\"></i>'),(155,'<i class=\"fa fa-circle-o\"></i>'),(156,'<i class=\"fa fa-circle-o-notch'),(157,'<i class=\"fa fa-circle-thin\"><'),(158,'<i class=\"fa fa-clipboard\"></i'),(159,'<i class=\"fa fa-clock-o\"></i>'),(160,'<i class=\"fa fa-clone\"></i>'),(161,'<i class=\"fa fa-close\"></i>'),(162,'<i class=\"fa fa-cloud\"></i>'),(163,'<i class=\"fa fa-cloud-download'),(164,'<i class=\"fa fa-cloud-upload\">'),(165,'<i class=\"fa fa-cny\"></i>'),(166,'<i class=\"fa fa-code\"></i>'),(167,'<i class=\"fa fa-code-fork\"></i'),(168,'<i class=\"fa fa-codepen\"></i>'),(169,'<i class=\"fa fa-codiepie\"></i>'),(170,'<i class=\"fa fa-coffee\"></i>'),(171,'<i class=\"fa fa-cog\"></i>'),(172,'<i class=\"fa fa-cogs\"></i>'),(173,'<i class=\"fa fa-columns\"></i>'),(174,'<i class=\"fa fa-comment\"></i>'),(175,'<i class=\"fa fa-comment-o\"></i'),(176,'<i class=\"fa fa-comments\"></i>'),(177,'<i class=\"fa fa-comments-o\"></'),(178,'<i class=\"fa fa-commenting\"></'),(179,'<i class=\"fa fa-commenting-o\">'),(180,'<i class=\"fa fa-compass\"></i>'),(181,'<i class=\"fa fa-compress\"></i>'),(182,'<i class=\"fa fa-connectdevelop'),(183,'<i class=\"fa fa-contao\"></i>'),(184,'<i class=\"fa fa-copy\"></i>'),(185,'<i class=\"fa fa-copyright\"></i'),(186,'<i class=\"fa fa-creative-commo'),(187,'<i class=\"fa fa-credit-card\"><'),(188,'<i class=\"fa fa-credit-card-al'),(189,'<i class=\"fa fa-crop\"></i>'),(190,'<i class=\"fa fa-crosshairs\"></'),(191,'<i class=\"fa fa-css3\"></i>'),(192,'<i class=\"fa fa-cube\"></i>'),(193,'<i class=\"fa fa-cubes\"></i>'),(194,'<i class=\"fa fa-cut\"></i>'),(195,'<i class=\"fa fa-cutlery\"></i>'),(196,'<i class=\"fa fa-dashboard\"></i'),(197,'<i class=\"fa fa-dashcube\"></i>'),(198,'<i class=\"fa fa-database\"></i>'),(199,'<i class=\"fa fa-deaf\"></i>'),(200,'<i class=\"fa fa-deafness\"></i>'),(201,'<i class=\"fa fa-dedent\"></i>'),(202,'<i class=\"fa fa-delicious\"></i'),(203,'<i class=\"fa fa-desktop\"></i>'),(204,'<i class=\"fa fa-deviantart\"></'),(205,'<i class=\"fa fa-diamond\"></i>'),(206,'<i class=\"fa fa-digg\"></i>'),(207,'<i class=\"fa fa-dollar\"></i>'),(208,'<i class=\"fa fa-dot-circle-o\">'),(209,'<i class=\"fa fa-download\"></i>'),(210,'<i class=\"fa fa-dribbble\"></i>'),(211,'<i class=\"fa fa-drivers-licens'),(212,'<i class=\"fa fa-drivers-licens'),(213,'<i class=\"fa fa-dropbox\"></i>'),(214,'<i class=\"fa fa-drupal\"></i>'),(215,'<i class=\"fa fa-edge\"></i>'),(216,'<i class=\"fa fa-edit\"></i>'),(217,'<i class=\"fa fa-eercast\"></i>'),(218,'<i class=\"fa fa-eject\"></i>'),(219,'<i class=\"fa fa-ellipsis-h\"></'),(220,'<i class=\"fa fa-ellipsis-v\"></'),(221,'<i class=\"fa fa-empire\"></i>'),(222,'<i class=\"fa fa-envelope\"></i>'),(223,'<i class=\"fa fa-envelope-o\"></'),(224,'<i class=\"fa fa-envelope-open\"'),(225,'<i class=\"fa fa-envelope-open-'),(226,'<i class=\"fa fa-envelope-squar'),(227,'<i class=\"fa fa-envira\"></i>'),(228,'<i class=\"fa fa-eraser\"></i>'),(229,'<i class=\"fa fa-etsy\"></i>'),(230,'<i class=\"fa fa-eur\"></i>'),(231,'<i class=\"fa fa-euro\"></i>'),(232,'<i class=\"fa fa-exchange\"></i>'),(233,'<i class=\"fa fa-exclamation\"><'),(234,'<i class=\"fa fa-exclamation-ci'),(235,'<i class=\"fa fa-exclamation-tr'),(236,'<i class=\"fa fa-expand\"></i>'),(237,'<i class=\"fa fa-expeditedssl\">'),(238,'<i class=\"fa fa-external-link\"'),(239,'<i class=\"fa fa-external-link-'),(240,'<i class=\"fa fa-eye\"></i>'),(241,'<i class=\"fa fa-eye-slash\"></i'),(242,'<i class=\"fa fa-eyedropper\"></'),(243,'<i class=\"fa fa-font-awesome\">'),(244,'<i class=\"fa fa-facebook\"></i>'),(245,'<i class=\"fa fa-facebook-f\"></'),(246,'<i class=\"fa fa-facebook-offic'),(247,'<i class=\"fa fa-facebook-squar'),(248,'<i class=\"fa fa-fast-backward\"'),(249,'<i class=\"fa fa-fast-forward\">'),(250,'<i class=\"fa fa-fax\"></i>'),(251,'<i class=\"fa fa-feed\"></i>'),(252,'<i class=\"fa fa-female\"></i>'),(253,'<i class=\"fa fa-fighter-jet\"><'),(254,'<i class=\"fa fa-file\"></i>'),(255,'<i class=\"fa fa-file-archive-o'),(256,'<i class=\"fa fa-file-audio-o\">'),(257,'<i class=\"fa fa-file-code-o\"><'),(258,'<i class=\"fa fa-file-excel-o\">'),(259,'<i class=\"fa fa-file-image-o\">'),(260,'<i class=\"fa fa-file-movie-o\">'),(261,'<i class=\"fa fa-file-o\"></i>'),(262,'<i class=\"fa fa-file-pdf-o\"></'),(263,'<i class=\"fa fa-file-photo-o\">'),(264,'<i class=\"fa fa-file-picture-o'),(265,'<i class=\"fa fa-file-powerpoin'),(266,'<i class=\"fa fa-file-sound-o\">'),(267,'<i class=\"fa fa-file-text\"></i'),(268,'<i class=\"fa fa-file-text-o\"><'),(269,'<i class=\"fa fa-file-video-o\">'),(270,'<i class=\"fa fa-file-word-o\"><'),(271,'<i class=\"fa fa-file-zip-o\"></'),(272,'<i class=\"fa fa-files-o\"></i>'),(273,'<i class=\"fa fa-film\"></i>'),(274,'<i class=\"fa fa-filter\"></i>'),(275,'<i class=\"fa fa-fire\"></i>'),(276,'<i class=\"fa fa-fire-extinguis'),(277,'<i class=\"fa fa-firefox\"></i>'),(278,'<i class=\"fa fa-first-order\"><'),(279,'<i class=\"fa fa-flag\"></i>'),(280,'<i class=\"fa fa-flag-checkered'),(281,'<i class=\"fa fa-flag-o\"></i>'),(282,'<i class=\"fa fa-flash\"></i>'),(283,'<i class=\"fa fa-flask\"></i>'),(284,'<i class=\"fa fa-flickr\"></i>'),(285,'<i class=\"fa fa-floppy-o\"></i>'),(286,'<i class=\"fa fa-folder\"></i>'),(287,'<i class=\"fa fa-folder-o\"></i>'),(288,'<i class=\"fa fa-folder-open\"><'),(289,'<i class=\"fa fa-folder-open-o\"'),(290,'<i class=\"fa fa-font\"></i>'),(291,'<i class=\"fa fa-font-awesome\">'),(292,'<i class=\"fa fa-fonticons\"></i'),(293,'<i class=\"fa fa-fort-awesome\">'),(294,'<i class=\"fa fa-forumbee\"></i>'),(295,'<i class=\"fa fa-forward\"></i>'),(296,'<i class=\"fa fa-foursquare\"></'),(297,'<i class=\"fa fa-free-code-camp'),(298,'<i class=\"fa fa-frown-o\"></i>'),(299,'<i class=\"fa fa-futbol-o\"></i>'),(300,'<i class=\"fa fa-gamepad\"></i>'),(301,'<i class=\"fa fa-gavel\"></i>'),(302,'<i class=\"fa fa-gbp\"></i>'),(303,'<i class=\"fa fa-ge\"></i>'),(304,'<i class=\"fa fa-gear\"></i>'),(305,'<i class=\"fa fa-gears\"></i>'),(306,'<i class=\"fa fa-genderless\"></'),(307,'<i class=\"fa fa-get-pocket\"></'),(308,'<i class=\"fa fa-gg\"></i>'),(309,'<i class=\"fa fa-gg-circle\"></i'),(310,'<i class=\"fa fa-gift\"></i>'),(311,'<i class=\"fa fa-git\"></i>'),(312,'<i class=\"fa fa-git-square\"></'),(313,'<i class=\"fa fa-github\"></i>'),(314,'<i class=\"fa fa-github-alt\"></'),(315,'<i class=\"fa fa-github-square\"'),(316,'<i class=\"fa fa-gitlab\"></i>'),(317,'<i class=\"fa fa-gittip\"></i>'),(318,'<i class=\"fa fa-glass\"></i>'),(319,'<i class=\"fa fa-glide\"></i>'),(320,'<i class=\"fa fa-glide-g\"></i>'),(321,'<i class=\"fa fa-globe\"></i>'),(322,'<i class=\"fa fa-google\"></i>'),(323,'<i class=\"fa fa-google-plus\"><'),(324,'<i class=\"fa fa-google-plus-ci'),(325,'<i class=\"fa fa-google-plus-of'),(326,'<i class=\"fa fa-google-plus-sq'),(327,'<i class=\"fa fa-google-wallet\"'),(328,'<i class=\"fa fa-graduation-cap'),(329,'<i class=\"fa fa-gratipay\"></i>'),(330,'<i class=\"fa fa-grav\"></i>'),(331,'<i class=\"fa fa-group\"></i>'),(332,'<i class=\"fa fa-h-square\"></i>'),(333,'<i class=\"fa fa-hacker-news\"><'),(334,'<i class=\"fa fa-hand-grab-o\"><'),(335,'<i class=\"fa fa-hand-lizard-o\"'),(336,'<i class=\"fa fa-hand-o-down\"><'),(337,'<i class=\"fa fa-hand-o-left\"><'),(338,'<i class=\"fa fa-hand-o-right\">'),(339,'<i class=\"fa fa-hand-o-up\"></i'),(340,'<i class=\"fa fa-hand-paper-o\">'),(341,'<i class=\"fa fa-hand-peace-o\">'),(342,'<i class=\"fa fa-hand-pointer-o'),(343,'<i class=\"fa fa-hand-rock-o\"><'),(344,'<i class=\"fa fa-hand-scissors-'),(345,'<i class=\"fa fa-hand-spock-o\">'),(346,'<i class=\"fa fa-hand-stop-o\"><'),(347,'<i class=\"fa fa-handshake-o\"><'),(348,'<i class=\"fa fa-hard-of-hearin'),(349,'<i class=\"fa fa-hashtag\"></i>'),(350,'<i class=\"fa fa-hdd-o\"></i>'),(351,'<i class=\"fa fa-header\"></i>'),(352,'<i class=\"fa fa-headphones\"></'),(353,'<i class=\"fa fa-heart\"></i>'),(354,'<i class=\"fa fa-heart-o\"></i>'),(355,'<i class=\"fa fa-heartbeat\"></i'),(356,'<i class=\"fa fa-history\"></i>'),(357,'<i class=\"fa fa-home\"></i>'),(358,'<i class=\"fa fa-hospital-o\"></'),(359,'<i class=\"fa fa-hotel\"></i>'),(360,'<i class=\"fa fa-hourglass\"></i'),(361,'<i class=\"fa fa-hourglass-1\"><'),(362,'<i class=\"fa fa-hourglass-2\"><'),(363,'<i class=\"fa fa-hourglass-3\"><'),(364,'<i class=\"fa fa-hourglass-end\"'),(365,'<i class=\"fa fa-hourglass-half'),(366,'<i class=\"fa fa-hourglass-o\"><'),(367,'<i class=\"fa fa-hourglass-star'),(368,'<i class=\"fa fa-houzz\"></i>'),(369,'<i class=\"fa fa-html5\"></i>'),(370,'<i class=\"fa fa-i-cursor\"></i>'),(371,'<i class=\"fa fa-id-badge\"></i>'),(372,'<i class=\"fa fa-id-card\"></i>'),(373,'<i class=\"fa fa-id-card-o\"></i'),(374,'<i class=\"fa fa-ils\"></i>'),(375,'<i class=\"fa fa-image\"></i>'),(376,'<i class=\"fa fa-imdb\"></i>'),(377,'<i class=\"fa fa-inbox\"></i>'),(378,'<i class=\"fa fa-indent\"></i>'),(379,'<i class=\"fa fa-industry\"></i>'),(380,'<i class=\"fa fa-info\"></i>'),(381,'<i class=\"fa fa-info-circle\"><'),(382,'<i class=\"fa fa-inr\"></i>'),(383,'<i class=\"fa fa-instagram\"></i'),(384,'<i class=\"fa fa-institution\"><'),(385,'<i class=\"fa fa-internet-explo'),(386,'<i class=\"fa fa-intersex\"></i>'),(387,'<i class=\"fa fa-ioxhost\"></i>'),(388,'<i class=\"fa fa-italic\"></i>'),(389,'<i class=\"fa fa-joomla\"></i>'),(390,'<i class=\"fa fa-jpy\"></i>'),(391,'<i class=\"fa fa-jsfiddle\"></i>'),(392,'<i class=\"fa fa-key\"></i>'),(393,'<i class=\"fa fa-keyboard-o\"></'),(394,'<i class=\"fa fa-krw\"></i>'),(395,'<i class=\"fa fa-language\"></i>'),(396,'<i class=\"fa fa-laptop\"></i>'),(397,'<i class=\"fa fa-lastfm\"></i>'),(398,'<i class=\"fa fa-lastfm-square\"'),(399,'<i class=\"fa fa-leaf\"></i>'),(400,'<i class=\"fa fa-leanpub\"></i>'),(401,'<i class=\"fa fa-legal\"></i>'),(402,'<i class=\"fa fa-lemon-o\"></i>'),(403,'<i class=\"fa fa-level-down\"></'),(404,'<i class=\"fa fa-level-up\"></i>'),(405,'<i class=\"fa fa-life-bouy\"></i'),(406,'<i class=\"fa fa-life-buoy\"></i'),(407,'<i class=\"fa fa-life-ring\"></i'),(408,'<i class=\"fa fa-life-saver\"></'),(409,'<i class=\"fa fa-lightbulb-o\"><'),(410,'<i class=\"fa fa-line-chart\"></'),(411,'<i class=\"fa fa-link\"></i>'),(412,'<i class=\"fa fa-linkedin\"></i>'),(413,'<i class=\"fa fa-linkedin-squar'),(414,'<i class=\"fa fa-linode\"></i>'),(415,'<i class=\"fa fa-linux\"></i>'),(416,'<i class=\"fa fa-list\"></i>'),(417,'<i class=\"fa fa-list-alt\"></i>'),(418,'<i class=\"fa fa-list-ol\"></i>'),(419,'<i class=\"fa fa-list-ul\"></i>'),(420,'<i class=\"fa fa-location-arrow'),(421,'<i class=\"fa fa-lock\"></i>'),(422,'<i class=\"fa fa-long-arrow-dow'),(423,'<i class=\"fa fa-long-arrow-lef'),(424,'<i class=\"fa fa-long-arrow-rig'),(425,'<i class=\"fa fa-long-arrow-up\"'),(426,'<i class=\"fa fa-low-vision\"></'),(427,'<i class=\"fa fa-magic\"></i>'),(428,'<i class=\"fa fa-magnet\"></i>'),(429,'<i class=\"fa fa-mail-forward\">'),(430,'<i class=\"fa fa-mail-reply\"></'),(431,'<i class=\"fa fa-mail-reply-all'),(432,'<i class=\"fa fa-male\"></i>'),(433,'<i class=\"fa fa-map\"></i>'),(434,'<i class=\"fa fa-map-marker\"></'),(435,'<i class=\"fa fa-map-o\"></i>'),(436,'<i class=\"fa fa-map-pin\"></i>'),(437,'<i class=\"fa fa-map-signs\"></i'),(438,'<i class=\"fa fa-mars\"></i>'),(439,'<i class=\"fa fa-mars-double\"><'),(440,'<i class=\"fa fa-mars-stroke\"><'),(441,'<i class=\"fa fa-mars-stroke-h\"'),(442,'<i class=\"fa fa-mars-stroke-v\"'),(443,'<i class=\"fa fa-maxcdn\"></i>'),(444,'<i class=\"fa fa-meanpath\"></i>'),(445,'<i class=\"fa fa-medium\"></i>'),(446,'<i class=\"fa fa-medkit\"></i>'),(447,'<i class=\"fa fa-meetup\"></i>'),(448,'<i class=\"fa fa-meh-o\"></i>'),(449,'<i class=\"fa fa-mercury\"></i>'),(450,'<i class=\"fa fa-microchip\"></i'),(451,'<i class=\"fa fa-microphone\"></'),(452,'<i class=\"fa fa-microphone-sla'),(453,'<i class=\"fa fa-minus\"></i>'),(454,'<i class=\"fa fa-minus-circle\">'),(455,'<i class=\"fa fa-minus-square\">'),(456,'<i class=\"fa fa-minus-square-o'),(457,'<i class=\"fa fa-mixcloud\"></i>'),(458,'<i class=\"fa fa-mobile\"></i>'),(459,'<i class=\"fa fa-mobile-phone\">'),(460,'<i class=\"fa fa-modx\"></i>'),(461,'<i class=\"fa fa-money\"></i>'),(462,'<i class=\"fa fa-moon-o\"></i>'),(463,'<i class=\"fa fa-mortar-board\">'),(464,'<i class=\"fa fa-motorcycle\"></'),(465,'<i class=\"fa fa-mouse-pointer\"'),(466,'<i class=\"fa fa-music\"></i>'),(467,'<i class=\"fa fa-navicon\"></i>'),(468,'<i class=\"fa fa-neuter\"></i>'),(469,'<i class=\"fa fa-newspaper-o\"><'),(470,'<i class=\"fa fa-object-group\">'),(471,'<i class=\"fa fa-object-ungroup'),(472,'<i class=\"fa fa-odnoklassniki\"'),(473,'<i class=\"fa fa-odnoklassniki-'),(474,'<i class=\"fa fa-opencart\"></i>'),(475,'<i class=\"fa fa-openid\"></i>'),(476,'<i class=\"fa fa-opera\"></i>'),(477,'<i class=\"fa fa-optin-monster\"'),(478,'<i class=\"fa fa-outdent\"></i>'),(479,'<i class=\"fa fa-paint-brush\"><'),(480,'<i class=\"fa fa-pagelines\"></i'),(481,'<i class=\"fa fa-paper-plane\"><'),(482,'<i class=\"fa fa-paper-plane-o\"'),(483,'<i class=\"fa fa-paperclip\"></i'),(484,'<i class=\"fa fa-paragraph\"></i'),(485,'<i class=\"fa fa-paste\"></i>'),(486,'<i class=\"fa fa-pause\"></i>'),(487,'<i class=\"fa fa-pause-circle\">'),(488,'<i class=\"fa fa-pause-circle-o'),(489,'<i class=\"fa fa-paw\"></i>'),(490,'<i class=\"fa fa-paypal\"></i>'),(491,'<i class=\"fa fa-pencil\"></i>'),(492,'<i class=\"fa fa-pencil-square\"'),(493,'<i class=\"fa fa-pencil-square-'),(494,'<i class=\"fa fa-percent\"></i>'),(495,'<i class=\"fa fa-phone\"></i>'),(496,'<i class=\"fa fa-phone-square\">'),(497,'<i class=\"fa fa-photo\"></i>'),(498,'<i class=\"fa fa-picture-o\"></i'),(499,'<i class=\"fa fa-pie-chart\"></i'),(500,'<i class=\"fa fa-pied-piper\"></'),(501,'<i class=\"fa fa-pied-piper-alt'),(502,'<i class=\"fa fa-pied-piper-pp\"'),(503,'<i class=\"fa fa-pinterest\"></i'),(504,'<i class=\"fa fa-pinterest-p\"><'),(505,'<i class=\"fa fa-pinterest-squa'),(506,'<i class=\"fa fa-plane\"></i>'),(507,'<i class=\"fa fa-play\"></i>'),(508,'<i class=\"fa fa-play-circle\"><'),(509,'<i class=\"fa fa-play-circle-o\"'),(510,'<i class=\"fa fa-plug\"></i>'),(511,'<i class=\"fa fa-plus\"></i>'),(512,'<i class=\"fa fa-plus-circle\"><'),(513,'<i class=\"fa fa-plus-square\"><'),(514,'<i class=\"fa fa-plus-square-o\"'),(515,'<i class=\"fa fa-podcast\"></i>'),(516,'<i class=\"fa fa-power-off\"></i'),(517,'<i class=\"fa fa-print\"></i>'),(518,'<i class=\"fa fa-product-hunt\">'),(519,'<i class=\"fa fa-puzzle-piece\">'),(520,'<i class=\"fa fa-qq\"></i>'),(521,'<i class=\"fa fa-qrcode\"></i>'),(522,'<i class=\"fa fa-question\"></i>'),(523,'<i class=\"fa fa-question-circl'),(524,'<i class=\"fa fa-question-circl'),(525,'<i class=\"fa fa-quora\"></i>'),(526,'<i class=\"fa fa-quote-left\"></'),(527,'<i class=\"fa fa-quote-right\"><'),(528,'<i class=\"fa fa-ra\"></i>'),(529,'<i class=\"fa fa-random\"></i>'),(530,'<i class=\"fa fa-ravelry\"></i>'),(531,'<i class=\"fa fa-rebel\"></i>'),(532,'<i class=\"fa fa-recycle\"></i>'),(533,'<i class=\"fa fa-reddit\"></i>'),(534,'<i class=\"fa fa-reddit-alien\">'),(535,'<i class=\"fa fa-reddit-square\"'),(536,'<i class=\"fa fa-refresh\"></i>'),(537,'<i class=\"fa fa-registered\"></'),(538,'<i class=\"fa fa-remove\"></i>'),(539,'<i class=\"fa fa-renren\"></i>'),(540,'<i class=\"fa fa-reorder\"></i>'),(541,'<i class=\"fa fa-repeat\"></i>'),(542,'<i class=\"fa fa-reply\"></i>'),(543,'<i class=\"fa fa-reply-all\"></i'),(544,'<i class=\"fa fa-resistance\"></'),(545,'<i class=\"fa fa-retweet\"></i>'),(546,'<i class=\"fa fa-rmb\"></i>'),(547,'<i class=\"fa fa-road\"></i>'),(548,'<i class=\"fa fa-rocket\"></i>'),(549,'<i class=\"fa fa-rotate-left\"><'),(550,'<i class=\"fa fa-rotate-right\">'),(551,'<i class=\"fa fa-rouble\"></i>'),(552,'<i class=\"fa fa-rss\"></i>'),(553,'<i class=\"fa fa-rss-square\"></'),(554,'<i class=\"fa fa-rub\"></i>'),(555,'<i class=\"fa fa-ruble\"></i>'),(556,'<i class=\"fa fa-rupee\"></i>'),(557,'<i class=\"fa fa-s15\"></i>'),(558,'<i class=\"fa fa-safari\"></i>'),(559,'<i class=\"fa fa-save\"></i>'),(560,'<i class=\"fa fa-scissors\"></i>'),(561,'<i class=\"fa fa-scribd\"></i>'),(562,'<i class=\"fa fa-search\"></i>'),(563,'<i class=\"fa fa-search-minus\">'),(564,'<i class=\"fa fa-search-plus\"><'),(565,'<i class=\"fa fa-sellsy\"></i>'),(566,'<i class=\"fa fa-send\"></i>'),(567,'<i class=\"fa fa-send-o\"></i>'),(568,'<i class=\"fa fa-server\"></i>'),(569,'<i class=\"fa fa-share\"></i>'),(570,'<i class=\"fa fa-share-alt\"></i'),(571,'<i class=\"fa fa-share-alt-squa'),(572,'<i class=\"fa fa-share-square\">'),(573,'<i class=\"fa fa-share-square-o'),(574,'<i class=\"fa fa-shekel\"></i>'),(575,'<i class=\"fa fa-sheqel\"></i>'),(576,'<i class=\"fa fa-shield\"></i>'),(577,'<i class=\"fa fa-ship\"></i>'),(578,'<i class=\"fa fa-shirtsinbulk\">'),(579,'<i class=\"fa fa-shopping-bag\">'),(580,'<i class=\"fa fa-shopping-baske'),(581,'<i class=\"fa fa-shopping-cart\"'),(582,'<i class=\"fa fa-shower\"></i>'),(583,'<i class=\"fa fa-sign-in\"></i>'),(584,'<i class=\"fa fa-sign-language\"'),(585,'<i class=\"fa fa-sign-out\"></i>'),(586,'<i class=\"fa fa-signal\"></i>'),(587,'<i class=\"fa fa-signing\"></i>'),(588,'<i class=\"fa fa-simplybuilt\"><'),(589,'<i class=\"fa fa-sitemap\"></i>'),(590,'<i class=\"fa fa-skyatlas\"></i>'),(591,'<i class=\"fa fa-skype\"></i>'),(592,'<i class=\"fa fa-slack\"></i>'),(593,'<i class=\"fa fa-sliders\"></i>'),(594,'<i class=\"fa fa-slideshare\"></'),(595,'<i class=\"fa fa-smile-o\"></i>'),(596,'<i class=\"fa fa-snapchat\"></i>'),(597,'<i class=\"fa fa-snapchat-ghost'),(598,'<i class=\"fa fa-snapchat-squar'),(599,'<i class=\"fa fa-snowflake-o\"><'),(600,'<i class=\"fa fa-soccer-ball-o\"'),(601,'<i class=\"fa fa-sort\"></i>'),(602,'<i class=\"fa fa-sort-alpha-asc'),(603,'<i class=\"fa fa-sort-alpha-des'),(604,'<i class=\"fa fa-sort-amount-as'),(605,'<i class=\"fa fa-sort-amount-de'),(606,'<i class=\"fa fa-sort-asc\"></i>'),(607,'<i class=\"fa fa-sort-desc\"></i'),(608,'<i class=\"fa fa-sort-down\"></i'),(609,'<i class=\"fa fa-sort-numeric-a'),(610,'<i class=\"fa fa-sort-numeric-d'),(611,'<i class=\"fa fa-sort-up\"></i>'),(612,'<i class=\"fa fa-soundcloud\"></'),(613,'<i class=\"fa fa-space-shuttle\"'),(614,'<i class=\"fa fa-spinner\"></i>'),(615,'<i class=\"fa fa-spoon\"></i>'),(616,'<i class=\"fa fa-spotify\"></i>'),(617,'<i class=\"fa fa-square\"></i>'),(618,'<i class=\"fa fa-square-o\"></i>'),(619,'<i class=\"fa fa-stack-exchange'),(620,'<i class=\"fa fa-stack-overflow'),(621,'<i class=\"fa fa-star\"></i>'),(622,'<i class=\"fa fa-star-half\"></i'),(623,'<i class=\"fa fa-star-half-empt'),(624,'<i class=\"fa fa-star-half-full'),(625,'<i class=\"fa fa-star-half-o\"><'),(626,'<i class=\"fa fa-star-o\"></i>'),(627,'<i class=\"fa fa-steam\"></i>'),(628,'<i class=\"fa fa-steam-square\">'),(629,'<i class=\"fa fa-step-backward\"'),(630,'<i class=\"fa fa-step-forward\">'),(631,'<i class=\"fa fa-stethoscope\"><'),(632,'<i class=\"fa fa-sticky-note\"><'),(633,'<i class=\"fa fa-sticky-note-o\"'),(634,'<i class=\"fa fa-stop\"></i>'),(635,'<i class=\"fa fa-stop-circle\"><'),(636,'<i class=\"fa fa-stop-circle-o\"'),(637,'<i class=\"fa fa-street-view\"><'),(638,'<i class=\"fa fa-strikethrough\"'),(639,'<i class=\"fa fa-stumbleupon\"><'),(640,'<i class=\"fa fa-stumbleupon-ci'),(641,'<i class=\"fa fa-subscript\"></i'),(642,'<i class=\"fa fa-subway\"></i>'),(643,'<i class=\"fa fa-suitcase\"></i>'),(644,'<i class=\"fa fa-sun-o\"></i>'),(645,'<i class=\"fa fa-superpowers\"><'),(646,'<i class=\"fa fa-superscript\"><'),(647,'<i class=\"fa fa-support\"></i>'),(648,'<i class=\"fa fa-table\"></i>'),(649,'<i class=\"fa fa-tablet\"></i>'),(650,'<i class=\"fa fa-tachometer\"></'),(651,'<i class=\"fa fa-tag\"></i>'),(652,'<i class=\"fa fa-tags\"></i>'),(653,'<i class=\"fa fa-tasks\"></i>'),(654,'<i class=\"fa fa-taxi\"></i>'),(655,'<i class=\"fa fa-telegram\"></i>'),(656,'<i class=\"fa fa-television\"></'),(657,'<i class=\"fa fa-tencent-weibo\"'),(658,'<i class=\"fa fa-terminal\"></i>'),(659,'<i class=\"fa fa-text-height\"><'),(660,'<i class=\"fa fa-text-width\"></'),(661,'<i class=\"fa fa-th\"></i>'),(662,'<i class=\"fa fa-th-large\"></i>'),(663,'<i class=\"fa fa-th-list\"></i>'),(664,'<i class=\"fa fa-themeisle\"></i'),(665,'<i class=\"fa fa-thermometer\"><'),(666,'<i class=\"fa fa-thermometer-0\"'),(667,'<i class=\"fa fa-thermometer-1\"'),(668,'<i class=\"fa fa-thermometer-2\"'),(669,'<i class=\"fa fa-thermometer-3\"'),(670,'<i class=\"fa fa-thermometer-4\"'),(671,'<i class=\"fa fa-thermometer-em'),(672,'<i class=\"fa fa-thermometer-fu'),(673,'<i class=\"fa fa-thermometer-ha'),(674,'<i class=\"fa fa-thermometer-qu'),(675,'<i class=\"fa fa-thermometer-th'),(676,'<i class=\"fa fa-thumb-tack\"></'),(677,'<i class=\"fa fa-thumbs-down\"><'),(678,'<i class=\"fa fa-thumbs-o-down\"'),(679,'<i class=\"fa fa-thumbs-o-up\"><'),(680,'<i class=\"fa fa-thumbs-up\"></i'),(681,'<i class=\"fa fa-ticket\"></i>'),(682,'<i class=\"fa fa-times\"></i>'),(683,'<i class=\"fa fa-times-circle\">'),(684,'<i class=\"fa fa-times-circle-o'),(685,'<i class=\"fa fa-times-rectangl'),(686,'<i class=\"fa fa-times-rectangl'),(687,'<i class=\"fa fa-tint\"></i>'),(688,'<i class=\"fa fa-toggle-down\"><'),(689,'<i class=\"fa fa-toggle-left\"><'),(690,'<i class=\"fa fa-toggle-off\"></'),(691,'<i class=\"fa fa-toggle-on\"></i'),(692,'<i class=\"fa fa-toggle-right\">'),(693,'<i class=\"fa fa-toggle-up\"></i'),(694,'<i class=\"fa fa-trademark\"></i'),(695,'<i class=\"fa fa-train\"></i>'),(696,'<i class=\"fa fa-transgender\"><'),(697,'<i class=\"fa fa-transgender-al'),(698,'<i class=\"fa fa-trash\"></i>'),(699,'<i class=\"fa fa-trash-o\"></i>'),(700,'<i class=\"fa fa-tree\"></i>'),(701,'<i class=\"fa fa-trello\"></i>'),(702,'<i class=\"fa fa-tripadvisor\"><'),(703,'<i class=\"fa fa-trophy\"></i>'),(704,'<i class=\"fa fa-truck\"></i>'),(705,'<i class=\"fa fa-try\"></i>'),(706,'<i class=\"fa fa-tty\"></i>'),(707,'<i class=\"fa fa-tumblr\"></i>'),(708,'<i class=\"fa fa-tumblr-square\"'),(709,'<i class=\"fa fa-turkish-lira\">'),(710,'<i class=\"fa fa-tv\"></i>'),(711,'<i class=\"fa fa-twitch\"></i>'),(712,'<i class=\"fa fa-twitter\"></i>'),(713,'<i class=\"fa fa-twitter-square'),(714,'<i class=\"fa fa-umbrella\"></i>'),(715,'<i class=\"fa fa-underline\"></i'),(716,'<i class=\"fa fa-undo\"></i>'),(717,'<i class=\"fa fa-universal-acce'),(718,'<i class=\"fa fa-university\"></'),(719,'<i class=\"fa fa-unlink\"></i>'),(720,'<i class=\"fa fa-unlock\"></i>'),(721,'<i class=\"fa fa-unlock-alt\"></'),(722,'<i class=\"fa fa-unsorted\"></i>'),(723,'<i class=\"fa fa-upload\"></i>'),(724,'<i class=\"fa fa-usb\"></i>'),(725,'<i class=\"fa fa-usd\"></i>'),(726,'<i class=\"fa fa-user\"></i>'),(727,'<i class=\"fa fa-user-circle\"><'),(728,'<i class=\"fa fa-user-circle-o\"'),(729,'<i class=\"fa fa-user-md\"></i>'),(730,'<i class=\"fa fa-user-o\"></i>'),(731,'<i class=\"fa fa-user-plus\"></i'),(732,'<i class=\"fa fa-user-secret\"><'),(733,'<i class=\"fa fa-user-times\"></'),(734,'<i class=\"fa fa-users\"></i>'),(735,'<i class=\"fa fa-vcard\"></i>'),(736,'<i class=\"fa fa-vcard-o\"></i>'),(737,'<i class=\"fa fa-venus\"></i>'),(738,'<i class=\"fa fa-venus-double\">'),(739,'<i class=\"fa fa-venus-mars\"></'),(740,'<i class=\"fa fa-viacoin\"></i>'),(741,'<i class=\"fa fa-viadeo\"></i>'),(742,'<i class=\"fa fa-viadeo-square\"'),(743,'<i class=\"fa fa-video-camera\">'),(744,'<i class=\"fa fa-vimeo\"></i>'),(745,'<i class=\"fa fa-vimeo-square\">'),(746,'<i class=\"fa fa-vine\"></i>'),(747,'<i class=\"fa fa-vk\"></i>'),(748,'<i class=\"fa fa-volume-control'),(749,'<i class=\"fa fa-volume-down\"><'),(750,'<i class=\"fa fa-volume-off\"></'),(751,'<i class=\"fa fa-volume-up\"></i'),(752,'<i class=\"fa fa-warning\"></i>'),(753,'<i class=\"fa fa-wechat\"></i>'),(754,'<i class=\"fa fa-weibo\"></i>'),(755,'<i class=\"fa fa-weixin\"></i>'),(756,'<i class=\"fa fa-whatsapp\"></i>'),(757,'<i class=\"fa fa-wheelchair\"></'),(758,'<i class=\"fa fa-wheelchair-alt'),(759,'<i class=\"fa fa-wifi\"></i>'),(760,'<i class=\"fa fa-wikipedia-w\"><'),(761,'<i class=\"fa fa-window-close\">'),(762,'<i class=\"fa fa-window-close-o'),(763,'<i class=\"fa fa-window-maximiz'),(764,'<i class=\"fa fa-window-minimiz'),(765,'<i class=\"fa fa-window-restore'),(766,'<i class=\"fa fa-windows\"></i>'),(767,'<i class=\"fa fa-won\"></i>'),(768,'<i class=\"fa fa-wordpress\"></i'),(769,'<i class=\"fa fa-wpbeginner\"></'),(770,'<i class=\"fa fa-wpexplorer\"></'),(771,'<i class=\"fa fa-wpforms\"></i>'),(772,'<i class=\"fa fa-wrench\"></i>'),(773,'<i class=\"fa fa-xing\"></i>'),(774,'<i class=\"fa fa-xing-square\"><'),(775,'<i class=\"fa fa-y-combinator\">'),(776,'<i class=\"fa fa-y-combinator-s'),(777,'<i class=\"fa fa-yahoo\"></i>'),(778,'<i class=\"fa fa-yc\"></i>'),(779,'<i class=\"fa fa-yc-square\"></i'),(780,'<i class=\"fa fa-yelp\"></i>'),(781,'<i class=\"fa fa-yen\"></i>'),(782,'<i class=\"fa fa-yoast\"></i>'),(783,'<i class=\"fa fa-youtube\"></i>'),(784,'<i class=\"fa fa-youtube-play\">'),(785,'<i class=\"fa fa-youtube-square');
/*!40000 ALTER TABLE `iconos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mascotas` (
  `id_mascota` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `especie` varchar(1) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `ubicacion` varchar(5) NOT NULL,
  `estado` varchar(2) NOT NULL,
  PRIMARY KEY (`id_mascota`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (1,'budy','P','M','E05','B'),(2,'Pipo','P','M','E02','A'),(3,'Nuna','P','H','E03','A'),(4,'Bruts','P','M','E03','A'),(5,'Americo','G','M','E04','A'),(6,'Sombra','P','H','E05','A'),(7,'Amaya','P','H','E04','A'),(8,'Talia','G','H','E01','B'),(9,'Trabis','P','H','E02','A'),(10,'Tesa','G','M','E01','A'),(11,'Titito','G','M','E04','B'),(12,'Truca','P','H','E02','A'),(13,'Dandi','G','M','E04','A'),(14,'RAS','G','M','E01','A'),(15,'Canela','P','H','E02','A');
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id_menu` int(2) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `modulo` varchar(100) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Admón Usuarios','adm_usuarios','<i class=\"fa fa-archive\"></i>','admon-usuarios'),(2,'Admón Menús','adm_menus','<i class=\"fa fa-amazon\"></i>','admon-menus'),(3,'Admón Perfiles','adm_perfiles','<i class=\"fa fa-cogs\"></i>','admon-perfiles'),(4,'Admón Clientes','adm_clientes','<i class=\"fa fa-desktop\"></i>','admon-clientes'),(5,'Admón Banners','adm_banners','<i class=\"fa fa-bed\"></i>','admon-banners'),(6,'Estadísticas Banners','estadisticas_banners','<i class=\"fa fa-ban\"></i>','estadisticas-banners'),(7,'Admón Visitantes','adm_visitantes','<i class=\"fa fa-amazon\"></i>','admon-visitantes'),(8,'Admón Propietarios','adm_propietario','<i class=\"fa fa-amazon\"></i>','admon-propietario'),(9,'Admón Residentes','adm_residentes','<i class=\"fa fa-amazon\"></i>','admon-residentes'),(10,'Admon Apartamentos 2','adm_apartamentos','<i class=\"fa fa-amazon\"></i>','admon-apartamentos 2'),(11,'Admón Interiores','adm_interiores','<i class=\"fa fa-amazon\"></i>','admon_interiores'),(12,'Admon Eventos','adm_eventos','<i class=\"fa fa-amazon\"></i>','admon-eventos'),(13,'Admón Reservas','adm_reservas','<i class=\"fa fa-amazon\"></i>','admon_reservas'),(14,'Admón Correspondencia','adm_correspondencia','<i class=\"fa fa-amazon\"></i>','admon_correspondencia'),(15,'Admón Videos','adm_videos','<i class=\"fa fa-desktop\"></i>','adm_videos'),(16,'Admón Galeria ','adm_galeria','<i class=\"fa fa-bed\"></i>','adm_galeria'),(17,'adm_galeria_rock','adm_rock','<i class=\"fa fa-address-card\"></i>','adm_rock'),(18,'Admon Pivote','adm_perfiles_menus','<i class=\"fa fa-address-card\"></i>','adm_perfiles_menus'),(21,'menu_tpl','tpl','<i class=\"fa fa-address-book\"></i>','tpl'),(22,'zzzzzzzz','zzzzzz','<i class=\"fa fa-address-card\"></i>','zzzzzz'),(23,'zzzzzzzz','zzzzzz','<i class=\"fa fa-address-card\"></i>','zzzzzz'),(24,'zzzzzzzz','zzzzzz','<i class=\"fa fa-address-card\"></i>','zzzzzz'),(25,'zzzzzzzz','zzzzzz','<i class=\"fa fa-address-card\"></i>','zzzzzz'),(26,'zzzzzzzz','zzzzzz','<i class=\"fa fa-address-card\"></i>','zzzzzz'),(27,'zzzzzzzz','zzzzzz','<i class=\"fa fa-address-card\"></i>','zzzzzz'),(28,'zzzzzzzz','zzzzzz','<i class=\"fa fa-address-card\"></i>','zzzzzz');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfiles`
--

DROP TABLE IF EXISTS `perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfiles` (
  `id_perfil` int(2) NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(30) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfiles`
--

LOCK TABLES `perfiles` WRITE;
/*!40000 ALTER TABLE `perfiles` DISABLE KEYS */;
INSERT INTO `perfiles` VALUES (1,'administrador'),(2,'cliente'),(3,'guarda'),(5,'nuevo perfilnn'),(7,'jamz');
/*!40000 ALTER TABLE `perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietarios`
--

DROP TABLE IF EXISTS `propietarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propietarios` (
  `id_propietario` int(2) NOT NULL AUTO_INCREMENT,
  `nombre_propietario` varchar(30) NOT NULL,
  `identificacion` int(15) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_propietario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietarios`
--

LOCK TABLES `propietarios` WRITE;
/*!40000 ALTER TABLE `propietarios` DISABLE KEYS */;
INSERT INTO `propietarios` VALUES (1,'Jimmy Fernando Cantor Garcia',1000782057,'3115105208','jamzgarcia16@gmail.com','1992-04-25','fotos/jimmy.jpg'),(2,'Andres Cardenas',52412365,'3214568741','andres123@gmail.com','1994-08-10','fotos/andres.jpg'),(3,'Andrea Rozo',52478654,'3204785421','andrea@gmail.com','1993-03-08','fotos/andrea.jpg'),(4,'benito perez',1009827384,'3205412321','benitoperez6@gmail.com','1991-07-17','fotos/benito.jpg'),(6,'Nuevo Propietario',2147483647,'3125444962','otrouser2@gmail.com','1993-03-02','fotos/otrouser2@gmail.com.jpg');
/*!40000 ALTER TABLE `propietarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `cuenta` varchar(100) NOT NULL,
  `clave` varchar(128) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `estado` int(1) NOT NULL DEFAULT '1' COMMENT ' 1=activo,0=inactivo ',
  `perfil_id` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `perfil_id` (`perfil_id`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfiles` (`id_perfil`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'administrador Jamz Garcia','admin@conjuntoseguro.com','8ca32d950873fd2b5b34a7d79c4a294b2fd805abe3261beb04fab61a3b4b75609afd6478aa8d34e03f262d68bb09a2ba9d655e228c96723b2854838a6e613b9d','fotos/photo.png',1,1),(2,'jimmy','prueba1@gmail.com','8ca32d950873fd2b5b34a7d79c4a294b2fd805abe3261beb04fab61a3b4b75609afd6478aa8d34e03f262d68bb09a2ba9d655e228c96723b2854838a6e613b9d','fotos/logon.png',1,2),(3,'otrousuario','otrouser@gmail.com','8ca32d950873fd2b5b34a7d79c4a294b2fd805abe3261beb04fab61a3b4b75609afd6478aa8d34e03f262d68bb09a2ba9d655e228c96723b2854838a6e613b9d','fotos/goku.png',1,3),(5,'Guarda','guarda@gmail.com','808d63ba47fcef6a7c52ec47cb63eb1b747a9d527a77385fc05c8a5ce8007586265d003b4130f6b0c8f3bb2ad89965a5da07289ba5d1e35321e160bea4f766f8','fotos/jefe@gmail.com.jpg',1,3),(6,'Guarda aaa','new111@gmail.com','8ca32d950873fd2b5b34a7d79c4a294b2fd805abe3261beb04fab61a3b4b75609afd6478aa8d34e03f262d68bb09a2ba9d655e228c96723b2854838a6e613b9d','fotos/new111@gmail.com.jpg',1,5),(7,'sin foto','sinfoto@gmail.com','8ca32d950873fd2b5b34a7d79c4a294b2fd805abe3261beb04fab61a3b4b75609afd6478aa8d34e03f262d68bb09a2ba9d655e228c96723b2854838a6e613b9d','',0,3);
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

-- Dump completed on 2019-07-08 18:04:33
