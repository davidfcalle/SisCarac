-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `correo` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  PRIMARY KEY (`correo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES ('gabriel_monter@hotmail.com','71411ae06d7d8d6aa160823c082158a7'),('prosofi@javeriana.edu.co','30c964e7fc7c162d242d4ae549a6013f'),('muti1034@hotmail.com','c1f57b87429fa30b76677faffb10a0b9'),('mutisantos@hotmail.com','c1f57b87429fa30b76677faffb10a0b9');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuestado`
--

DROP TABLE IF EXISTS `encuestado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuestado` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cedulaEncuestado` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`cedulaEncuestado`),
  UNIQUE KEY `cedulaEncuestado` (`cedulaEncuestado`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestado`
--

LOCK TABLES `encuestado` WRITE;
/*!40000 ALTER TABLE `encuestado` DISABLE KEYS */;
INSERT INTO `encuestado` VALUES (1,'afcb7a2f1c158286b48062cd885a9866'),(2,'4b009c2f8e8d230c498c2db26678dd77'),(3,'c4ca4238a0b923820dcc509a6f75849b'),(4,'a01610228fe998f515a72dd730294d87'),(5,'e4da3b7fbbce2345d7772b0674a318d5'),(6,'eccbc87e4b5ce2fe28308fd9f2a7baf3'),(7,'Bogota'),(8,'vacio'),(9,'79caaef5e339aed843dd028ef92bf4ff'),(10,'3019ed995c2fd36d70e6f6094f6fa0b1'),(11,'6f4f65b0381e995260105e9e23a8f3b5'),(12,'41809fa092b3e89db9bb66d723eadb0a'),(13,'6c8349cc7260ae62e3b1396831a8398f'),(14,'4ef34a69c531b917732ef5dc9170a19e'),(15,'4c8deef6ad66f2cdc5d3fa51183b1e4d'),(16,'748bafe99f20ee27852988a8a2d15650'),(19,'e438451f745656c9e994f39fea627a8c'),(20,'b9d487a30398d42ecff55c228ed5652b'),(21,'d2b15c75c0c389b49c2efbea79cdc946'),(22,'7afd4025c75e488bc9d1d4f90bd6fbb6'),(23,'a47a54697915c9557004629afd98b70b'),(24,'c81e728d9d4c2f636f067f89cc14862c'),(25,'1019086425');
/*!40000 ALTER TABLE `encuestado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuestador`
--

DROP TABLE IF EXISTS `encuestador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuestador` (
  `correo` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  PRIMARY KEY (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestador`
--

LOCK TABLES `encuestador` WRITE;
/*!40000 ALTER TABLE `encuestador` DISABLE KEYS */;
INSERT INTO `encuestador` VALUES ('a@b.com','c1f57b87429fa30b76677faffb10a0b9'),('aja88@hotmail.com','c3b830f9a769b49d3250795223caad4d'),('dieg_goo@hotmail.com','fcea920f7412b5da7be0cf42b8c93759'),('dietocharlotte@gmail.com','fcea920f7412b5da7be0cf42b8c93759'),('gabriel_montero@hotmail.com','71411ae06d7d8d6aa160823c082158a7'),('hernandez.esteban@javeriana.edu.co','c1f57b87429fa30b76677faffb10a0b9'),('luisa.barrera@javeriana.edu.co','3fc0a7acf087f549ac2b266baf94b8b1'),('prueba@hotmail.com','e10adc3949ba59abbe56e057f20f883e'),('sebastian.vivas89@gmail.com','202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `encuestador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form1`
--

DROP TABLE IF EXISTS `form1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form1` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `fechaE` date NOT NULL,
  `horaInicio` varchar(255) DEFAULT NULL,
  `horaFin` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT 'vacio',
  `vistoBueno` varchar(255) DEFAULT '0',
  `nombre` varchar(255) DEFAULT '0',
  `telefono` varchar(255) DEFAULT '0',
  `celular` varchar(20) DEFAULT '0',
  `parentesco` varchar(255) DEFAULT '0',
  `estadocivil` varchar(255) DEFAULT '0',
  `edad` varchar(255) DEFAULT '0',
  `genero` varchar(255) DEFAULT '0',
  `direccionnueva` varchar(255) DEFAULT '0',
  `upz` varchar(255) DEFAULT '0',
  `barrio` varchar(255) DEFAULT '0',
  `estrato` int(11) DEFAULT '0',
  `numerohogares` int(11) DEFAULT '0',
  `tiempobarrio` varchar(255) DEFAULT '0',
  `carrera` varchar(255) DEFAULT '0',
  `supervisor` varchar(255) DEFAULT '0',
  `encuestador` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form1`
--

LOCK TABLES `form1` WRITE;
/*!40000 ALTER TABLE `form1` DISABLE KEYS */;
INSERT INTO `form1` VALUES (19,'2015-05-31','01:01','14:00','completa','Yeah','Gabriel Montero mariï¿½o','65565565','6633215516','Jefe de Hogar','Soltero','1','Femenino','casd 123 a sd123 ','1','calleja',1,1,'5 aÃ±os','ing de sistemas','Blanca','gabriel montero'),(20,'2015-06-03','0','0','incompleta','Bien','SANTIAGO MONTERO','65565565','6633215516','Jefe de Hogar','Soltero','1','Femenino','4771 NW 72ND AVE MIAMI FL 33166-5616','1','calleja',1,1,'5 aÃ±os','ing de sistemas','Blanca','gabriel montero'),(21,'0000-00-00','vacio','vacio','incompleta','vacio','ddd','4545','45454','Padres','UnionLibre','45','Femenino','4545','vacio','vacio',0,0,'vacio','vacio','vacio','vacio'),(22,'0000-00-00','vacio','vacio','incompleta','vacio','rtette','vacio','19','Sobrino','Soltero','13','Femenino','vacio','vacio','erwr',0,21,'vacio','vacio','vacio','vacio'),(23,'2015-10-09','11:13','13:06','completa','Si','Proeba','7592753','3214992795','Sobrino','Soltero','23','Masculino','Calle 34-Sur','Bolonia','Bulonia',1,5,'5 aÃ±os','Sistemas','Prueba','Esteban'),(24,'0000-00-00','vacio','vacio','incompleta','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio',0,0,'vacio','vacio','vacio','vacio'),(1019086425,'2016-01-01','02:00','03:00','completa','Aprobado por PROSOFI','Esteban Cedula','72123312','3214992795','Jefe de Hogar','Casado','25','Masculino','Calle Falsa 123','Bologna','Yomaseto',2,2,'5 aÃ±os','IngenierÃ­a de Sistemas','Blanca Oviedo','Esteban HernÃ¡ndez');
/*!40000 ALTER TABLE `form1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form2`
--

DROP TABLE IF EXISTS `form2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2` (
  `id` bigint(20) NOT NULL,
  `lugarDepartamento` varchar(255) NOT NULL,
  `lugarCiudad` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `tiempoEnLocalidad` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2`
--

LOCK TABLES `form2` WRITE;
/*!40000 ALTER TABLE `form2` DISABLE KEYS */;
INSERT INTO `form2` VALUES (3,'Casanare','Albán','2001-01-01'),(9,'vacio','Ciudad o Municipio','0000-00-00'),(12,'AtlÃ¡ntico','AcandÃ­','2014-12-12'),(14,'vacio','Ciudad o Municipio','0000-00-00'),(15,'vacio','Ciudad o Municipio','0000-00-00'),(16,'Caldas','Abriaqui','2001-04-15'),(19,'vacio','vacio','0000-00-00');
/*!40000 ALTER TABLE `form2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form2composicion`
--

DROP TABLE IF EXISTS `form2composicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2composicion` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `documento` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `edad` int(11) NOT NULL,
  `fechaN` date NOT NULL,
  `lugarCiudad` varchar(255) NOT NULL,
  `lugarDepartamento` varchar(255) NOT NULL,
  `estadoC` varchar(255) NOT NULL,
  `condicionEspecial` varchar(255) NOT NULL,
  `etnia` varchar(255) NOT NULL,
  `parentesco` varchar(255) NOT NULL,
  `escolaridad` varchar(255) NOT NULL,
  `ocupacion` varchar(255) NOT NULL,
  `actividad` varchar(255) NOT NULL,
  `ingresos` double NOT NULL,
  `aporteIngresos` double NOT NULL,
  `enfermedades` varchar(255) NOT NULL,
  `discapacidad` varchar(255) NOT NULL,
  `segSocial` varchar(255) NOT NULL,
  `sisben` varchar(255) NOT NULL,
  `cajaComp` varchar(255) NOT NULL,
  `subEstado` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`documento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2composicion`
--

LOCK TABLES `form2composicion` WRITE;
/*!40000 ALTER TABLE `form2composicion` DISABLE KEYS */;
INSERT INTO `form2composicion` VALUES (3,'diego sebastian barrera guevar','1072664784','Masculino',22,'1992-04-26','','','Soltero','Ninguna','Mestizo','Hijo','Universitario','Estudia','Empleado',100000000,50000,'Gastrointestinales','Ninguna','Contributivo','30','Comcaja','ICBF'),(9,'vacio','12','Femenino',0,'0000-00-00','','','Soltero','Reinsertado','Afrocolombiano','Jefe de Hogar','Ninguna','Estudia','Empleado',0,0,'Respiratorias','Fisica','Contributivo','vacio','Cafam','Adulto Mayor'),(3,'Juan Vacio','1','Masculino',35,'0000-00-00','vacio','vacio','Casado','Ninguna','Mestizo','Jefe de Hogar','Bachillerato ','Empleado','Agricultura ganaderia silvicultura pesca',320000,320000,'Ninguna','Ninguna','Subsidiado','1','Cafam','Otro'),(3,'vacio','vacio','Femenino',0,'0000-00-00','vacio','vacio','Soltero','Reinsertado','Afrocolombiano','Jefe de Hogar','Ninguna','Estudiante','Comercio restaurantes hoteles',0,0,'Respiratorias','Fisica','Contributivo','vacio','Cafam','Adulto Mayor'),(12,'alguno','45465','Masculino',55,'1986-05-15','AcandÃ­','AtlÃ¡ntico','Soltero','Reinsertado','Afrocolombiano','Jefe de Hogar','Jardin','Estudia','No Aplica ',45000,54000,'Cancer','Mental','Subsidiado','4','Comfacund','Adulto Mayor'),(14,'a','123','Femenino',12,'0000-00-00','Ciudad o Municipio','vacio','Soltero','Reinsertado','Afrocolombiano','Jefe de Hogar','Ninguna','Estudia','Empleado',0,0,'Respiratorias','Fisica','Contributivo','vacio','Cafam','Adulto Mayor'),(15,'vacio','vacio','Femenino',0,'0000-00-00','Ciudad o Municipio','vacio','Soltero','Reinsertado','Afrocolombiano','Jefe de Hogar','Ninguna','Estudia','Empleado',0,0,'Respiratorias','Fisica','Contributivo','vacio','Cafam','Adulto Mayor'),(16,'vacio','vacio','Femenino',0,'0000-00-00','Ciudad o Municipio','Antioquia','Soltero','Reinsertado','Afrocolombiano','Jefe de Hogar','Ninguna','Estudia','Empleado',0,0,'Respiratorias','Fisica','Contributivo','vacio','Cafam','Adulto Mayor'),(16,'Mama','5996577','Femenino',45,'1975-11-12','Abriaqui','Caldas','Casado','Ninguna','IndÃ­gena','CÃ³nyuge o CompaÃ±ero','Bachillerato ','Trabaja','Independiente',45000,30000,'Ninguna','Ninguna','Subsidiado','5','Ninguna','Ninguna'),(19,'vacio','vacio','Femenino',0,'0000-00-00','vacio','vacio','Soltero','Reinsertado','Afrocolombiano','Jefe de Hogar','Ninguna','Estudiante','Comercio restaurantes hoteles',0,0,'Respiratorias','Fisica','Contributivo','vacio','Cafam','Adulto Mayor'),(21,'vacio','vacio','Femenino',0,'0000-00-00','vacio','vacio','Soltero','Reinsertado','Afrocolombiano','Jefe de Hogar','Ninguna','Estudiante','Comercio restaurantes hoteles',0,0,'Respiratorias','Fisica','Contributivo','vacio','Cafam','Adulto Mayor'),(22,'vacio','vacio','Femenino',0,'0000-00-00','vacio','vacio','Soltero','Reinsertado','Afrocolombiano','Jefe de Hogar','Ninguna','Estudiante','Comercio restaurantes hoteles',0,0,'Respiratorias','Fisica','Contributivo','vacio','Cafam','Adulto Mayor'),(24,'vacio','vacio','Femenino',0,'0000-00-00','vacio','vacio','Soltero','Reinsertado','Afrocolombiano','Jefe de Hogar','Ninguna','Estudiante','Comercio restaurantes hoteles',0,0,'Respiratorias','Fisica','Contributivo','vacio','Cafam','Adulto Mayor'),(3,'Juana Vacio','10109091','Femenino',32,'0000-00-00','vacio','vacio','Casado','Ninguna','Afrocolombiano','Jefe de Hogar','Transicion','Estudiante','Servicios comunales sociales personales',320000,320000,'Dermatologicas','Sensorial','Subsidiado','1','Cafam','Familias en Accion'),(1019086425,'Juanita,Pruebas','79880117','Femenino',29,'1985-04-02','vacio','vacio','Casado','Desplazado','ROM','CÃ³nyuge o CompaÃ±ero','Educacion Basica','Independiente','Industria manufacturera',50000,50000,'Neurologicas','Sensorial','Subsidiado','4','Caja de Retiro de las Fuerzas Militares','Alcadia Local'),(1019086425,'vacio','vacio','Femenino',0,'0000-00-00','vacio','vacio','Soltero','Reinsertado','Afrocolombiano','Jefe de Hogar','Ninguna','Estudiante','Comercio restaurantes hoteles',0,0,'Respiratorias','Fisica','Contributivo','vacio','Cafam','Adulto Mayor');
/*!40000 ALTER TABLE `form2composicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form3`
--

DROP TABLE IF EXISTS `form3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form3` (
  `id` bigint(20) NOT NULL,
  `P1Parques` varchar(10) NOT NULL,
  `P1Hospitales` varchar(10) NOT NULL,
  `P1Colegios` varchar(10) NOT NULL,
  `P1Iglesias` varchar(10) NOT NULL,
  `P1SedeAC` varchar(10) NOT NULL,
  `P1Jardines` varchar(10) NOT NULL,
  `P1Otro` varchar(255) NOT NULL,
  `P2Utiliza` varchar(10) NOT NULL,
  `P3Aguas` varchar(10) NOT NULL,
  `P3Canos` varchar(10) NOT NULL,
  `P3Botadero` varchar(10) NOT NULL,
  `P3Enmontadas` varchar(10) NOT NULL,
  `P3Otro` varchar(255) NOT NULL,
  `P4Conforme` varchar(50) NOT NULL,
  `P5UtilizaSalud` varchar(10) NOT NULL,
  `P5Cual` varchar(255) NOT NULL,
  `P6CalificaSalud` varchar(10) NOT NULL,
  `P7UtilizaColegio` varchar(10) NOT NULL,
  `P8Preescolar` varchar(10) NOT NULL,
  `P8Primaria` varchar(10) NOT NULL,
  `P8Media` varchar(10) NOT NULL,
  `P8Bachillerato` varchar(10) NOT NULL,
  `P8Tecnico` varchar(10) NOT NULL,
  `P9CalificaEducacion` varchar(10) NOT NULL,
  `P10Opcion1` varchar(100) NOT NULL,
  `P10Usa1` varchar(10) NOT NULL,
  `P10Opcion2` varchar(100) NOT NULL,
  `P10Usa2` varchar(10) NOT NULL,
  `P10Opcion3` varchar(100) NOT NULL,
  `P10Usa3` varchar(10) NOT NULL,
  `P10Opcion4` varchar(100) NOT NULL,
  `P10Usa4` varchar(10) NOT NULL,
  `P11CostoTrans` double NOT NULL,
  `P12TiempoTrans` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `P13CalificaPolicia` varchar(10) NOT NULL,
  `P14CalificaSeguridad` varchar(10) NOT NULL,
  `P15Madres` varchar(10) NOT NULL,
  `P15Clubes` varchar(10) NOT NULL,
  `P15Etnicas` varchar(10) NOT NULL,
  `P15Juntas` varchar(10) NOT NULL,
  `P15Comedores` varchar(10) NOT NULL,
  `P15Culturales` varchar(10) NOT NULL,
  `P15Otro` varchar(255) NOT NULL,
  `P16FamiliaParte` varchar(10) NOT NULL,
  `P16FamiliaParteCual` varchar(100) NOT NULL,
  `P17Logro` varchar(10) NOT NULL,
  `P17LogroCual` varchar(100) NOT NULL,
  `P18Calidad` varchar(10) NOT NULL,
  `P18CalidadPorque` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form3`
--

LOCK TABLES `form3` WRITE;
/*!40000 ALTER TABLE `form3` DISABLE KEYS */;
INSERT INTO `form3` VALUES (19,'Si','No','Si','No','Si','No','a','Si','Si','Si','Si','Si','ghv','Conforme','Si','a','','Si','Si','Si','Si','Si','Si','Regular','tra','1','bu','2','vacio','vacio','vacio','vacio',516,'01:00','Regular','Inseguro','Si','Si','Si','Si','Si','Si','a','Si','1','Si','d','Si','a'),(21,'No','No','No','No','No','No','vacio','No','No','No','No','No','vacio','MuyInconforme','No','vacio','','No','No','Si','No','Si','No','Deficiente','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio',0,'vacio','Deficiente','MuyInsegur','No','Si','No','Si','No','No','vacio','No','vacio','Si','vacio','No','vacio'),(22,'No','No','No','No','No','No','vacio','No','No','No','No','No','vacio','MuyInconforme','No','vacio','','No','No','No','No','No','No','Deficiente','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio',0,'vacio','Deficiente','MuyInsegur','No','No','No','No','No','No','vacio','No','vacio','No','vacio','No','vacio'),(3,'Si','No','Si','No','No','No','vacio','No','Si','Si','No','Si','vacio','Niconformeniinconforme','Si','vacio','','No','No','Si','No','Si','No','Regular','Buseta','vacio','SITP','vacio','Cicla','vacio','vacio','vacio',40000,'14:30','Regular','Inseguro','Si','No','No','Si','No','No','vacio','No','vacio','No','vacio','No','vacio'),(0,'No','No','No','No','No','No','vacio','No','No','No','No','No','vacio','MuyInconforme','No','vacio','','No','No','No','No','No','No','Deficiente','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio',0,'vacio','Deficiente','MuyInsegur','No','No','No','No','No','No','vacio','No','vacio','No','vacio','No','vacio'),(1019086425,'Si','No','Si','No','Si','No','vacio','Si','Si','No','No','Si','vacio','MuyInconforme','No','vacio','','No','Si','No','No','Si','No','Regular','Bus','1','Bicicleta','2','Alimentador','3','vacio','vacio',1800,'01:00','Regular','Seguro','Si','No','No','No','Si','No','vacio','Si','vacio','No','vacio','No','vacio');
/*!40000 ALTER TABLE `form3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form4`
--

DROP TABLE IF EXISTS `form4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form4` (
  `id` bigint(20) NOT NULL,
  `tenencia` varchar(255) NOT NULL,
  `usos` varchar(255) NOT NULL,
  `cualNegocio` varchar(255) NOT NULL,
  `lote` int(11) NOT NULL,
  `tejaZinc` int(11) NOT NULL,
  `ladriBloquePiedra` int(11) NOT NULL,
  `tierra` int(11) NOT NULL,
  `ladrilloVista` int(11) NOT NULL,
  `casalote` int(11) NOT NULL,
  `tejaFibrocemento` int(11) NOT NULL,
  `maderaPulida` int(11) NOT NULL,
  `cementoGravilla` int(11) NOT NULL,
  `panete` int(11) NOT NULL,
  `casa` int(11) NOT NULL,
  `tejaPlastica` int(11) NOT NULL,
  `adobeTapia` int(11) NOT NULL,
  `maderaBurdaTabla` int(11) NOT NULL,
  `madera` int(11) NOT NULL,
  `cuartoOtra` int(11) NOT NULL,
  `placa` int(11) NOT NULL,
  `Bahareque` int(11) NOT NULL,
  `balLAdSin` int(11) NOT NULL,
  `zinc` int(11) NOT NULL,
  `rancho` int(11) NOT NULL,
  `maderaBurda` int(11) NOT NULL,
  `naderaPulida` int(11) NOT NULL,
  `CiTeCaLaPl` int(11) NOT NULL,
  `Tapete` int(11) NOT NULL,
  `otro1` varchar(25) NOT NULL,
  `otro2` varchar(25) NOT NULL,
  `otro3` varchar(25) NOT NULL,
  `otro4` varchar(25) NOT NULL,
  `otro5` varchar(25) NOT NULL,
  `oSinPanete` int(11) NOT NULL,
  `oSinPintar` int(11) NOT NULL,
  `oTerminada` int(11) NOT NULL,
  `salaT` int(11) NOT NULL,
  `salaS` varchar(11) NOT NULL,
  `comedorT` int(11) NOT NULL,
  `comedorS` varchar(11) NOT NULL,
  `banosT` int(11) NOT NULL,
  `banosS` varchar(11) NOT NULL,
  `cocinaT` int(11) NOT NULL,
  `cocinaS` varchar(11) NOT NULL,
  `habitacionesT` int(11) NOT NULL,
  `habitaacionesS` varchar(11) NOT NULL,
  `pisosT` int(11) NOT NULL,
  `pisosS` varchar(11) NOT NULL,
  `personasN` int(11) NOT NULL,
  `metrosN` int(11) NOT NULL,
  `cocinaComp` varchar(10) NOT NULL,
  `arriendo` double NOT NULL,
  `alimentacion` double NOT NULL,
  `gas` double NOT NULL,
  `acueducto` double NOT NULL,
  `luz` double NOT NULL,
  `telefono` double NOT NULL,
  `internet` double NOT NULL,
  `tv` double NOT NULL,
  `transporte` double NOT NULL,
  `universidad` double NOT NULL,
  `colegios` double NOT NULL,
  `medico` double NOT NULL,
  `manutencion` double NOT NULL,
  `recreacion` double NOT NULL,
  `bancariosD` double NOT NULL,
  `bancarios` double NOT NULL,
  `particularesD` double NOT NULL,
  `particulares` double NOT NULL,
  `ahorro` double NOT NULL,
  `otrosGastos` double NOT NULL,
  `totalMensual` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form4`
--

LOCK TABLES `form4` WRITE;
/*!40000 ALTER TABLE `form4` DISABLE KEYS */;
INSERT INTO `form4` VALUES (19,'Propia totalmente Pagada','Residencial','vacio',4,50,1,5,5,95,20,1,5,6,1,12,1,5,4,0,2,0,5,4,0,2,4,1,5,'vacio','vacio','vacio','vacio','vacio',54,35,11,1,'si',1,'si',1,'si',1,'si',1,'no',1,'no',5,15,'no',5,5,5,5,47,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1000),(0,'vacio','vacio','vacio',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'vacio','vacio','vacio','vacio','vacio',0,0,0,0,'vacio',0,'vacio',0,'vacio',0,'vacio',0,'vacio',0,'vacio',0,0,'vacio',0,0,0,0,0,0,0,0,0,0,0,5,5,0,0,0,0,0,0,0,0),(22,'Propia totalmente Pagada','Residencial','vacio',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'vacio','vacio','vacio','vacio','vacio',0,0,0,0,'si',0,'si',0,'si',0,'si',0,'si',0,'si',0,0,'si',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,'En arriendo o sub-arriendo','Residencia con negocios','Ventas',44,26,33,33,17,34,28,35,29,30,32,49,26,27,11,41,42,46,25,24,20,31,30,30,30,'vacio','vacio','vacio','vacio','vacio',20,10,70,2,'si',2,'no',1,'si',1,'si',2,'si',3,'si',3,60,'si',400000,100000,50000,30000,30000,10000,0,0,50000,0,0,0,0,0,0,0,0,0,0,0,6500000),(21,'Propia totalmente Pagada','Residencial','vacio',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'vacio','vacio','vacio','vacio','vacio',0,0,0,0,'si',0,'si',0,'si',0,'si',0,'si',0,'si',0,0,'si',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1019086425,'Propia totalmente Pagada','Residencial','vacio',12,12,12,12,12,34,34,35,13,31,23,24,72,78,21,12,23,21,23,12,23,34,32,12,45,'Asfalto','vacio','vacio','vacio','vacio',99,19,87,1,'si',1,'si',1,'si',1,'si',1,'si',2,'si',3,45,'si',900000,200000,10000,20000,20000,10000,0,0,0,0,0,0,0,0,0,0,0,0,80000,0,2000000);
/*!40000 ALTER TABLE `form4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form5`
--

DROP TABLE IF EXISTS `form5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form5` (
  `id` bigint(20) NOT NULL,
  `P26Ahorro` varchar(25) NOT NULL,
  `P26Credito` varchar(25) NOT NULL,
  `P26Subsidio` varchar(25) NOT NULL,
  `P26Prestamo` varchar(25) NOT NULL,
  `P26Cesantias` varchar(25) NOT NULL,
  `P26Otro` varchar(255) NOT NULL,
  `P27Mejoramiento` varchar(25) NOT NULL,
  `P28Subsidio` varchar(25) NOT NULL,
  `P29Porque` varchar(255) NOT NULL,
  `P30LugarO1` varchar(255) NOT NULL,
  `P30Ano1` int(11) NOT NULL,
  `P30LugarD1` varchar(255) NOT NULL,
  `P30Razon1` varchar(255) NOT NULL,
  `P30LugarO2` varchar(255) NOT NULL,
  `P30Ano2` int(11) NOT NULL,
  `P30LugarD2` varchar(255) NOT NULL,
  `P30Razon2` varchar(255) NOT NULL,
  `P30LugarO3` varchar(255) NOT NULL,
  `P30Ano3` int(11) NOT NULL,
  `P30LugarD3` varchar(255) NOT NULL,
  `P30Razon3` varchar(255) NOT NULL,
  `P30LugarO4` varchar(255) NOT NULL,
  `P30Ano4` int(11) NOT NULL,
  `P30LugarD4` varchar(255) NOT NULL,
  `P30Razon4` varchar(255) NOT NULL,
  `P31ConformeVivienda` varchar(25) NOT NULL,
  `P32Porque` varchar(255) NOT NULL,
  `P33Extrana` varchar(255) NOT NULL,
  `P34Cambios` varchar(255) NOT NULL,
  `P35Dignamente` varchar(25) NOT NULL,
  `P36Porque` varchar(255) NOT NULL,
  `P37Mascotas` varchar(255) NOT NULL,
  `P38Problemas` varchar(255) NOT NULL,
  `P39PersonaConvi` varchar(255) NOT NULL,
  `P40Solucion` varchar(25) NOT NULL,
  `P40Otro` varchar(255) NOT NULL,
  `P41CalidadVida` varchar(25) NOT NULL,
  `P42Porque` varchar(255) NOT NULL,
  `P43CalidadVida` varchar(25) NOT NULL,
  `P44Porque` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form5`
--

LOCK TABLES `form5` WRITE;
/*!40000 ALTER TABLE `form5` DISABLE KEYS */;
INSERT INTO `form5` VALUES (19,'Si','No','Si','No','No','as','si','si','d','asd',0,'asd','12','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','Inconforme','asdas','asd','zxczx','si','qwe','asdasd','asdasd','asdasd asdasd','AgresiÃ³n Fisica','asd','NibuenaniMala','asd','Iguales','asdasd'),(0,'Si','No','Si','No','No','as','si','si','d','asd',0,'asd','12','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','Inconforme','asdas','asd','zxczx','si','qwe','asdasd','asdasd','asdasd asdasd','AgresiÃ³n Fisica','asd','NibuenaniMala','asd','Iguales','asdasd'),(21,'No','No','No','No','No','vacio','si','si','vacio','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','MuyInconforme','vacio','vacio','vacio','si','vacio','vacio','vacio','vacio','AgresiÃ³n Verval','vacio','MuyMala','vacio','MejorarÃ¡n','vacio'),(22,'No','No','No','No','No','vacio','si','si','vacio','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','MuyInconforme','vacio','vacio','vacio','si','vacio','vacio','vacio','vacio','AgresiÃ³n Verval','vacio','MuyMala','vacio','MejorarÃ¡n','vacio'),(3,'Si','Si','No','No','No','vacio','si','no','vacio','Santo Domingo',1997,'Usme','Paramilitares','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','Inconforme','Difcultad y marginaciÃ³n','Acceso a servicios, mis cosas','Cambios de acceso','no','aja','aja','ninguno','no, porque aja','Dialogo','vacio','Buena','Soy feliz','MejorarÃ¡n','Aja'),(1019086425,'Si','No','No','Si','No','vacio','si','si','Muy caro','AcandÃ­',1997,'BogotÃ¡','Violencia','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','vacio',0,'vacio','vacio','Niconformeniinconforme','PodrÃ­a mejorar','El espacio amplio ','Poder realizar cambios para que sea agrÃ­cola','si','Dificultades de acceso, vias complicadas','ninguno','econÃ³micos','Ninguno','DiscusiÃ³n','vacio','NibuenaniMala','Podria mejorar pero soy conforme','MejorarÃ¡n','Mejores oportunidades para el hijastro');
/*!40000 ALTER TABLE `form5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form6`
--

DROP TABLE IF EXISTS `form6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form6` (
  `id` bigint(20) NOT NULL,
  `Observaciones` text,
  `Seguimiento` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form6`
--

LOCK TABLES `form6` WRITE;
/*!40000 ALTER TABLE `form6` DISABLE KEYS */;
INSERT INTO `form6` VALUES (19,' a vernueva',' seguimos a veseguimosnueva'),(21,' ',' '),(22,' ',' '),(3,' Todo bien','Todo Bonito'),(0,' ',' '),(1019086425,'Bien\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nMuy Bien','Veremos luego \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nmucho despues');
/*!40000 ALTER TABLE `form6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formo1`
--

DROP TABLE IF EXISTS `formo1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formo1` (
  `id` varchar(255) NOT NULL,
  `12adultoMayor` int(11) NOT NULL,
  `12adulto` int(11) NOT NULL,
  `12joven` int(11) NOT NULL,
  `12nino` int(11) NOT NULL,
  `12menor5` int(11) NOT NULL,
  `otro13` varchar(255) NOT NULL,
  `21enfermedadesComunes` varchar(255) NOT NULL,
  `21otro` varchar(255) NOT NULL,
  `22produccionEnfermedades` varchar(255) NOT NULL,
  `23quien` varchar(255) NOT NULL,
  `24paraQue` varchar(255) NOT NULL,
  `otro24` varchar(255) NOT NULL,
  `25otrosElementos` varchar(255) NOT NULL,
  `25otro` varchar(255) NOT NULL,
  `31Elementos` varchar(255) NOT NULL,
  `31otro` varchar(255) NOT NULL,
  `32frecuencia` varchar(255) NOT NULL,
  `33dolorMuela` varchar(255) NOT NULL,
  `34problemasOdontologo` varchar(255) NOT NULL,
  `35ultimaVisita` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formo1`
--

LOCK TABLES `formo1` WRITE;
/*!40000 ALTER TABLE `formo1` DISABLE KEYS */;
INSERT INTO `formo1` VALUES ('1072664784',0,2,0,2,0,'vacio','Sangrado en las encías','vacio','Herencia','Hermano','Reir,Comer','vacio','Bolsa de Plástico','vacio','Hilo dental','vacio','Al Desayunar,Al Almorzar','Va al Odontologo,Remedio Casero','Temor','Entre 1 y 6'),('vacio',0,0,0,0,0,'vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio','vacio');
/*!40000 ALTER TABLE `formo1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formo2`
--

DROP TABLE IF EXISTS `formo2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formo2` (
  `fecha1` date NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente1` varchar(255) NOT NULL,
  `profesional1` varchar(255) NOT NULL,
  `tratamiento1` varchar(255) NOT NULL,
  `ips` varchar(255) NOT NULL,
  `fechaA` date NOT NULL,
  `color1` varchar(255) NOT NULL,
  `observaciones1` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formo2`
--

LOCK TABLES `formo2` WRITE;
/*!40000 ALTER TABLE `formo2` DISABLE KEYS */;
INSERT INTO `formo2` VALUES ('0000-00-00',45,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',44,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',43,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',42,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',41,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',40,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',39,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',38,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',37,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',36,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',35,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',34,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',33,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',32,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',31,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',46,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',47,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',48,'diego','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',49,'diego','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',50,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',51,'vacio','vacio','vacio','vacio','0000-00-00','Azul','vacio'),('0000-00-00',52,'vacio','vacio','vacio','vacio','0000-00-00','Azul','vacio'),('0000-00-00',53,'vacio','vacio','vacio','vacio','0000-00-00','Amarillo','vacio'),('0000-00-00',54,'sdfasd','asdf','vacio','sadf','0000-00-00','Amarillo','sadf');
/*!40000 ALTER TABLE `formo2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulariocaracterizacion`
--

DROP TABLE IF EXISTS `formulariocaracterizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formulariocaracterizacion` (
  `id` bigint(20) NOT NULL,
  `correoEncuestador` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulariocaracterizacion`
--

LOCK TABLES `formulariocaracterizacion` WRITE;
/*!40000 ALTER TABLE `formulariocaracterizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `formulariocaracterizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formularioodontologia`
--

DROP TABLE IF EXISTS `formularioodontologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formularioodontologia` (
  `id` bigint(20) NOT NULL,
  `correoEncuestador` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formularioodontologia`
--

LOCK TABLES `formularioodontologia` WRITE;
/*!40000 ALTER TABLE `formularioodontologia` DISABLE KEYS */;
/*!40000 ALTER TABLE `formularioodontologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preguntas` (
  `codigoPregunta` varchar(255) NOT NULL,
  `opcion` varchar(255) NOT NULL,
  `tipoFormulario` varchar(255) NOT NULL,
  PRIMARY KEY (`codigoPregunta`,`opcion`,`tipoFormulario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `correo` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `cedula` varchar(255) NOT NULL,
  PRIMARY KEY (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('a@b.com','Uno','03be645beeedece0dae5d302675f1609'),('aja88@hotmail.com','AJa','cf79ae6addba60ad018347359bd144d2'),('gabriel_monter@hotmail.com','Gabriel Montero','e438451f745656c9e994f39fea627a8c'),('gabriel_montero@hotmail.com','Gabriel Montero','e438451f745656c9e994f39fea627a8c'),('hernandez.esteban@javeriana.edu.co','Esteban Hernandez','36c7a00254eab6fd03a395a548f61885'),('luisa.barrera@javeriana.edu.co','Luisa Barrera','32e90007599362b2552ef928420aa1a7'),('muti1034@hotmail.com','Muti','d3d9446802a44259755d38e6d163e820'),('mutisantos@hotmail.com','Esteban H','1c925bdd858def7aff7f77c035a98d0b'),('prosofi@javeriana.edu.co','Blanca Oviedo','202cb962ac59075b964b07152d234b70'),('prueba@hotmail.com','Prueba1','e6531854dced6f28e17acdbed048b153'),('sebastian.vivas89@gmail.com','Sebastian Vivas','41809fa092b3e89db9bb66d723eadb0a');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-05 16:43:23
