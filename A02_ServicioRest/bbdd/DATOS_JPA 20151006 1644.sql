-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.12


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema datos
--

CREATE DATABASE IF NOT EXISTS datos;
USE datos;

--
-- Definition of table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(40) DEFAULT NULL,
  `TELEFONO` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` (`ID`,`NOMBRE`,`TELEFONO`) VALUES 
 (1,'Vicente','648301806'),
 (2,'Antonio','648303579'),
 (3,'Toni','648305352'),
 (4,'Javi','648307125'),
 (5,'Daniel','648308898'),
 (6,'Luis','648310671'),
 (7,'Alicia','648312444'),
 (8,'Marta','648314216'),
 (9,'Rocio','648315989'),
 (10,'Raquel','648317762'),
 (11,'Lucas','648319535'),
 (12,'Inmaculada','648321308'),
 (13,'oscar','648323081'),
 (14,'Gabriel','648324854'),
 (15,'Manuel','648326627'),
 (16,'Diego','648328400'),
 (17,'Xavi','648330172'),
 (18,'Angel','648331945'),
 (19,'Enrique','648333718'),
 (20,'Iñaki','648339037'),
 (21,'pepe','648342583'),
 (22,'Pepe','648344356'),
 (23,'alvaro','648346128'),
 (24,'Felipe','648347901'),
 (25,'paco,paquito','648360312'),
 (26,'jojo','648397542'),
 (27,'jaja','648454275'),
 (28,'Eduardo','648477322'),
 (29,'Sergio','648654611'),
 (30,'Lidia','648831900'),
 (31,'Lidia2','648833673'),
 (32,'Anxo','649009189'),
 (33,'Juan Fco','649186478'),
 (34,'pablo','649363767'),
 (35,'juanito','649480778'),
 (36,'Yolanda','649541056'),
 (37,'toni','649718345'),
 (38,'Alberto','649895634'),
 (39,'Andres','650072923'),
 (40,'MARIA','650250212'),
 (41,'Diego','650427501'),
 (42,'Mónica','650782079'),
 (43,'Vladimir','651313946'),
 (44,'Lorenzo','654072563'),
 (45,'JOSE','654856181'),
 (46,'Kiko','656178756'),
 (47,'pepe','658148437'),
 (48,'Pepito','662919548');
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;


--
-- Definition of table `calculadora`
--

DROP TABLE IF EXISTS `calculadora`;
CREATE TABLE `calculadora` (
  `t` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `metodo` varchar(20) NOT NULL,
  `operacion` varchar(30) NOT NULL,
  PRIMARY KEY (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calculadora`
--

/*!40000 ALTER TABLE `calculadora` DISABLE KEYS */;
INSERT INTO `calculadora` (`t`,`metodo`,`operacion`) VALUES 
 ('2012-07-10 10:16:26','calcular','3.0 * 2.0 = 6.0'),
 ('2012-07-10 10:16:40','calcular','2.0 + 3.2 = 5.2'),
 ('2012-07-10 10:16:50','calcular','3.0 * 2.0 = 6.0'),
 ('2012-07-10 10:16:53','calcular','4.0 + 2.0 = 6.0'),
 ('2012-07-10 10:18:09','calcular','4.0 + 2.0 = 6.0'),
 ('2012-07-10 10:18:22','calcular','3.0 + 2.0 = 5.0'),
 ('2012-07-10 10:23:48','calcular','4.0 + 2.0 = 6.0'),
 ('2012-07-10 10:25:11','calcular','1.0 - 1.0 = 0.0'),
 ('2012-07-10 10:28:54','calcular','4.0 + 5.2 = 9.2'),
 ('2012-07-10 10:35:32','calcular','3.0 + 2.4 = 5.4'),
 ('2012-07-10 10:40:24','calcular','4.0 + 2.0 = 6.0'),
 ('2012-07-10 10:42:04','calcular','4.0 + 2.0 = 6.0'),
 ('2012-07-10 10:42:45','calcular','3.0 + 7.0 = 10.0'),
 ('2012-07-10 10:43:14','calcular','4.0 + 2.0 = 6.0'),
 ('2012-07-10 10:43:35','calcular','4.0 + 2.0 = 6.0'),
 ('2012-07-10 10:44:32','calcular','4.0 + 2.0 = 6.0'),
 ('2015-10-06 10:46:03','calcular','5 * 7 = 35.0'),
 ('2015-10-06 10:46:04','calcular','5 * 3 = 15.0'),
 ('2015-10-06 10:46:08','calcular','13 - 6 = 7.0'),
 ('2015-10-06 10:46:13','calcular','4 * 8 = 32.0'),
 ('2015-10-06 10:46:14','calcular','5 / 2 = 2.5'),
 ('2015-10-06 10:46:16','calcular','10 * 9 = 90.0'),
 ('2015-10-06 10:46:20','calcular','6 * 4 = 24.0'),
 ('2015-10-06 10:46:25','calcular','1 + 2 = 3.0'),
 ('2015-10-06 10:46:30','raiz','raiz(43)= 6.557438524302'),
 ('2015-10-06 10:46:43','calcular','raiz(4 + 5 = 9.0'),
 ('2015-10-06 10:47:27','calcular','1 + 3 = 4.0'),
 ('2015-10-06 10:48:36','calcular','21 * 21 = 441.0'),
 ('2015-10-06 11:01:48','calcular','[8 * 3 = 24.0]'),
 ('2015-10-06 11:01:49','calcular','[2 * 5 = 10.0]'),
 ('2015-10-06 11:01:51','calcular','[6 * 5 = 30.0]'),
 ('2015-10-06 11:01:56','calcular','[1 * 5 = 5.0]'),
 ('2015-10-06 11:01:59','calcular','[3 * 43 = 129.0]'),
 ('2015-10-06 11:02:05','calcular','[2 * 5 = 10.0]'),
 ('2015-10-06 11:02:08','calcular','[6 / 3 = 2.0]'),
 ('2015-10-06 11:02:10','calcular','raiz([3 + 1 = 4.0]'),
 ('2015-10-06 11:02:11','calcular','[8 + 9 = 17.0]'),
 ('2015-10-06 11:02:15','calcular','[20 + 10 = 30.0]'),
 ('2015-10-06 11:02:24','calcular','[22 * 22 = 484.0]'),
 ('2015-10-06 11:02:49','calcular','[1 * 5 = 5.0]'),
 ('2015-10-06 11:02:50','calcular','[6 * 9 = 54.0]'),
 ('2015-10-06 11:03:03','calcular','[98 / 51 = 1.9215686274509804]'),
 ('2015-10-06 11:04:41','calcular','[5 * 2 = 10.0]'),
 ('2015-10-06 11:05:35','raiz','[raiz(5)= 2.23606797749979]'),
 ('2015-10-06 11:10:16','calcular','6 * 12 = 72.0'),
 ('2015-10-06 11:10:24','raiz','raiz(4)= 2.0'),
 ('2015-10-06 11:10:25','calcular','6 * 5 = 30.0'),
 ('2015-10-06 11:10:31','raiz','raiz(545)= 23.345235059857504'),
 ('2015-10-06 11:10:47','raiz','raiz(6)= 2.449489742783178'),
 ('2015-10-06 11:12:49','calcular','22 * 21 = 462.0'),
 ('2015-10-06 11:12:50','raiz','raiz(95)= 9.746794344808963'),
 ('2015-10-06 11:12:53','calcular','raiz(1 + 788 = 789.0'),
 ('2015-10-06 11:12:54','calcular','321 *689 98 = 0.0'),
 ('2015-10-06 11:12:56','calcular','1 2 66 = 0.0'),
 ('2015-10-06 11:13:04','calcular','8 / 4 = 2.0'),
 ('2015-10-06 11:13:11','calcular','2 * 3 = 6.0'),
 ('2015-10-06 11:13:14','calcular','987 * 321 = 316827.0'),
 ('2015-10-06 11:13:15','calcular','34234 * 23432 = 8.02171088E8'),
 ('2015-10-06 11:13:19','calcular','4 * 7 = 28.0'),
 ('2015-10-06 11:13:20','calcular','5 * 9 = 45.0'),
 ('2015-10-06 11:13:25','calcular','8 *9 5 = 0.0'),
 ('2015-10-06 11:13:38','calcular','1 + 8 = 9.0'),
 ('2015-10-06 11:13:52','calcular','2 * 45 = 90.0'),
 ('2015-10-06 11:13:57','calcular','1 + 2 = 3.0'),
 ('2015-10-06 11:14:11','calcular','7 * 6 = 42.0'),
 ('2015-10-06 11:18:35','calcular','1 + 1 = 2.0'),
 ('2015-10-06 11:19:14','calcular','1 + 2 = 3.0'),
 ('2015-10-06 11:19:51','calcular','0 + 0 = 0.0'),
 ('2015-10-06 11:20:45','calcular','1 + 2 = 3.0'),
 ('2015-10-06 11:21:05','calcular','1 + 4 = 5.0'),
 ('2015-10-06 12:05:13','calcular','1 + 2 = 3.0');
/*!40000 ALTER TABLE `calculadora` ENABLE KEYS */;


--
-- Definition of table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
CREATE TABLE `calendario` (
  `DIA` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MES` int(10) unsigned NOT NULL,
  `ANO` int(10) unsigned NOT NULL,
  `EVENTO` varchar(45) NOT NULL,
  PRIMARY KEY (`DIA`,`MES`,`ANO`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendario`
--

/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
INSERT INTO `calendario` (`DIA`,`MES`,`ANO`,`EVENTO`) VALUES 
 (1,1,1811,'Dia de año nuevo de 1811'),
 (1,1,1817,'Dia de año nuevo de 1817'),
 (1,1,1877,'Dia de año nuevo de 1877'),
 (1,1,1902,'Dia de año nuevo de 1902'),
 (1,1,2105,'Año nuevo del 2015'),
 (12,10,1492,'Descubrimiento de América');
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;


--
-- Definition of table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `DNI` int(10) unsigned NOT NULL,
  `Nombre` varchar(45) NOT NULL DEFAULT '',
  `Apellidos` varchar(45) NOT NULL DEFAULT '',
  `Saldo` double NOT NULL DEFAULT '0',
  `ID_PROVINCIA` int(10) unsigned DEFAULT '28',
  PRIMARY KEY (`DNI`),
  KEY `ID_PROVINCIA` (`ID_PROVINCIA`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`ID_PROVINCIA`) REFERENCES `provincias` (`ID_PROVINCIA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes`
--

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`DNI`,`Nombre`,`Apellidos`,`Saldo`,`ID_PROVINCIA`) VALUES 
 (1,'Victor','Blasco',-322.4010000000002,46),
 (2,'Alicia','González',2320.4010000000003,8),
 (3,'Antonio','Garcia',1656,33),
 (4,'Javi','Sobrín',622,8),
 (5,'Daniel','Valiente',-349,11),
 (6,'Luis','Garcia',2579,25),
 (7,'Fernando','Gonzalez',1923,25),
 (8,'Marta','Gomez',1831,11),
 (9,'Rocio','Fernadez',92,11),
 (10,'Raquel','Gómez',1927,11),
 (11,'Lucas','Ruiz',4098,46),
 (12,'Pepe','González Garcia',4746,25),
 (19,'Iñaki','Mendez',1437,6),
 (20,'Pedro','Rodriguez',2944,8),
 (23,'Emma','Nems',410,28),
 (43,'Luis','García',4853,28),
 (55,'Chicho','Terremoto',4615,28),
 (67,'Armando','Casitas',3517,28),
 (69,'Felix','Cruza',3739,15),
 (77,'rosa','rosa',2896,11),
 (87,'amparo','lopez',4513,28),
 (91,'Armando','Guerra Constante',0,28),
 (99,'Nacho','lorene',999999,28),
 (100,'Vladimir','Bataller',988,NULL),
 (103,'Vladimir','Bataller',1000,28),
 (105,'aaa','bbb',23,28),
 (111,'Bea','Rincón',141414,28),
 (112,'Nuevo ','Nuevo',1000,NULL),
 (113,'aaa','bbbb',34,13),
 (115,'Pepito','Grillo',90000,28),
 (120,'Sara','Goza Bastante',78963,28),
 (121,'Roberto','Sanchez ',1500,28),
 (123,'Raul','Fernandez',7560,0),
 (125,'pepe','flores',2346,28),
 (135,'Ramon','Sanz',844,13),
 (139,'Roberto','Sanchez ',1500,28),
 (141,'Llanos','Ibáñez',5000.5,28),
 (145,'perico','perez',-56564556,28),
 (146,'Roberto','Sanchez ',1500,28),
 (147,'Andres','null',1500,28),
 (149,'Nuevo ','Nuevo',1000,NULL),
 (151,'Carlos','Perez',274,28),
 (152,'javie','Pascualito',56569868,28),
 (159,'Machu','Pichu',2759,28),
 (165,'Roberto','Sanchez ',1500,28),
 (167,'Maria Jose','No me borres',4605,28),
 (170,'Paco','Jonnes',78956,28),
 (172,'Vladimir','Bataller',1000,28),
 (173,'Pepito','perez',1.1,13),
 (176,'Julio','Perea',11111,28),
 (177,'Oscar','Menendez',5555,28),
 (178,'Luis','Torres',2091,28),
 (181,'hoad','hola',1005,13),
 (182,'Vladimir','Bataller',1000,28),
 (184,'Bea','Rincón',5000,28),
 (188,'Palo','Largo',1642,28),
 (191,'Roberto','Sánchez Chacón',2000,28),
 (194,'Bea','Rincón',1000,28),
 (197,'Jesús','Gallego',1900,28),
 (200,'Llanos','Ibáñez',5000.5,28),
 (202,'Paquito','Ochoa',0,13),
 (207,'Marcos','Gutierrez',3835,28),
 (208,'Juanito','Valderrama',321,13),
 (209,'María','Martínez',33,28),
 (210,'Llanos','Ibañez',1000,13),
 (211,'Juan','Marin',1111,13),
 (212,'hola','hola hola',321,28),
 (218,'Maribel','Oz',1937,28),
 (219,'a','a',1000,NULL),
 (234,'Carlos','Ruiz Sanz',3356,28),
 (241,'Jose ','Mourinho',123131,28),
 (242,'Nuevo ','Nuevo',1000,NULL),
 (245,'Pepe','Leches',2,13),
 (250,'Vladimir','Bataller',1000,28),
 (252,'Adolfo','Izquierdo',1430000,13),
 (258,'Llanos ','Ibáñez ',50554,28),
 (260,'Vladimir','Bataller',1000,28),
 (265,'Carlos','Mad',325,13),
 (268,'Jesús','Gallego',1900,28),
 (270,'Roberto','Sanchez ',1500,28),
 (271,'Capitan','Fanega',7896,28),
 (274,'654564','564564',54654,13),
 (276,'Bea','Rincón',5000,28),
 (277,'Martín','López',333,13),
 (279,'Jesús','Gallego',1900,28),
 (280,'Miguel','Sánchez Sánchez',0,28),
 (283,'jorge','Rodriguez',274,28),
 (308,'Roberto','Sanchez ',1500,28),
 (309,'Vladimir','Bataller',1000,28),
 (314,'Llanos','Ibáñez',5000.5,28),
 (319,'Jesús','Gallego',1900,28),
 (322,'Pepe','Garcia',1157,28),
 (323,'rosa','rosa',2511,39),
 (324,'Jesús','Gallego',1900,28),
 (331,'Bea','Rincón',5000,28),
 (332,'sfd','asdf',555,28),
 (335,'Torcuato','Martinez',870,28),
 (337,'Roberto','Sanchez ',1500,28),
 (339,'Bea','Rincón',5000,28),
 (340,'Alfonso','Franco',7777,28),
 (350,'Nuevo ','Nuevo',1000,NULL),
 (388,'Vladimir 30','Gómez',1111,28),
 (393,'Vladimir','Bataller',1000,28),
 (396,'Llanos ','Pérez',5000,13),
 (407,'Luis','Arias',1300,28),
 (432,'Pepe','Garcia',4082,28),
 (439,'Vladimir','Bataller',1000,28),
 (447,'Esther','Colero',643,28),
 (448,'Elena','Nito',2877,28),
 (451,'Alfonso','Franco',7777,28),
 (452,'Alfonso','Franco',7777,28),
 (454,'Benji','Price',2715,28),
 (456,'David','Santeodoro Camisón',1585,28),
 (458,'Antonio','Martín',4263,28),
 (466,'Martín','Blasco',1211,28),
 (494,'Antonio','Romero',4384,28),
 (495,'Pepito2','Grillo',90000,28),
 (511,'Fco. Javier','Sevillano',527,NULL),
 (529,'Hector','GArcía',964,28),
 (540,'javier','tontas',1678,28),
 (543,'Juan','Lopez',2067,28),
 (550,'Pepito','Perez',818,28),
 (551,'Antoñito','Antúnez',3118,28),
 (552,'Juanito','Juarez',3137,28),
 (560,'Susana','De Jesus',3358,28),
 (561,'David','Santeodoro Camisón',496,28),
 (564,'Antonio Manuel','Pozuelo Arenas',249,13),
 (565,'Carlos','Madrigal',912,13),
 (566,'Jose Luis','Ortega',795,13),
 (567,'Ruben','Simarro',668,13),
 (568,'Roberto','Mancebo',246,13),
 (570,'Rubén','Canal Fernández',4168,13),
 (571,'Adolfo','Izquierdo',556,13),
 (572,'Fco Javier','Garrido',1000000,13),
 (573,'Eva','Moreno',447,13),
 (574,'Fco. Javier','Sevillano',970,13),
 (583,'Maria Jose','La vane',4133,28),
 (587,'Pepe','Garcia',3916,28),
 (588,'Julian','Gomez',3378,28),
 (595,'Esther','Colero',4697,28),
 (601,'Pepe','Garcia',681,28),
 (613,'Pablo','Marquez',2892,28),
 (626,'Tom','Baker',448,28),
 (643,'Samuel','Tomitío',2515,28),
 (656,'Angel','Garzia',143,28),
 (666,'maria','lopez',583,28),
 (694,'Carlos','Ruiz',173,28),
 (698,'Juanito','Garcia',3993,28),
 (703,'Ines','Román',4485,28),
 (704,'Roberto','Mancebo',593,NULL),
 (713,'Edmundo','Dantes',2484,28),
 (715,'Pepe','Fernandez',2324,28),
 (716,'Toni','Gol',4319,28),
 (718,'Margarita','Fernandez',908,28),
 (722,'Ana','Forteza',2231,28),
 (729,'Pedro','Puerta',771,28),
 (730,'José Luis','Ruiz',4102,28),
 (732,'Antonio','Romero',177,28),
 (734,'Raul','Sanchez',2172,28),
 (744,'David','Santeodoro Camisón',3624,28),
 (745,'Roberto','Mancebo',593,NULL),
 (761,'Hommer','Simpsom',4539,28),
 (769,'pepe','perez',4504,28),
 (773,'Marta','null',78956,28),
 (778,'sara','sara',2445,28),
 (784,'javie','Pascualifsds',2840,28),
 (786,'José','Ruiz',2566,28),
 (788,'amparo','lopez',672,28),
 (793,'Dani','Garcia',3221,28),
 (794,'saritisima','aa',737,28),
 (797,'Edmundo','Dantes',4094,28),
 (815,'Vicente','Martorell',719,28),
 (819,'Carlton','Banks',2351,28),
 (824,'Carlos','Madrigal',21329321,13),
 (828,'sara','galan ',3320,28),
 (831,'Igor','Dito',4167,28),
 (835,'Raul','Sevilla',108,28),
 (843,'Julio','Marco',3864,28),
 (853,'Antonio','Temprano',3571,28),
 (854,'Marcos','Hernandez',1081,28),
 (863,'perico','los palotes',2337,28),
 (870,'perico','palotes',1140,28),
 (890,'Alicuencamo','Gamusino',2511,28),
 (911,'Juanma','Pamundi',4827,28),
 (922,'Ramón','Rodríguez',3300,28),
 (925,'Dulce Maria','Sanz',789,28),
 (930,'Marta','Tirado',784512,28),
 (932,'Aitor','Tillas',909,28),
 (937,'Fernado','Ramirez',717,28),
 (949,'javie','Pascualifsds',4447,28),
 (970,'Abraham','la Puerta ',2897,28),
 (974,'Juanito','Vera',3929,28),
 (978,'Eduardo','Warner',3463,28),
 (983,'Alejandro','Medario',1350,28),
 (984,'Daniel','Gomez',2490,28),
 (993,'Gema','Garcia Martín',3644,28),
 (996,'Jesús','Gallego',1900,28),
 (997,'Ana','López',3342,28),
 (999,'Rosa','Escorial',2529,28),
 (1000,'Vladimir','Bataller',609,28),
 (1001,'Jorge','Sánchez Ferreiro',629,28),
 (1002,'Belén','Cerdeiras',560,28),
 (1003,'Isaac','Rubio',155,28),
 (1004,'Jorge','Garcia',146,28),
 (1007,'Silvia','Quinteiro',927,28),
 (1008,'Paula','Martínez',644,28),
 (1010,'Jose','Barrera',136,28),
 (1011,'Paula','Leyenda',964,28),
 (1012,'María','Sanmiguel',465,28),
 (1014,'Diego','Lusquiños',93,28),
 (1050,'Froilán','De Todos los Santos',692,28),
 (1051,'Iñaki','Urdangarín',69,28);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


--
-- Definition of table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
CREATE TABLE `cuentas` (
  `ID_CUENTA` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SALDO` double NOT NULL DEFAULT '100',
  PRIMARY KEY (`ID_CUENTA`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuentas`
--

/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` (`ID_CUENTA`,`SALDO`) VALUES 
 (1,100),
 (2,0),
 (3,300),
 (4,400),
 (5,500),
 (6,600),
 (7,700),
 (8,800),
 (9,900),
 (10,1000);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;


--
-- Definition of table `cuentas_clientes`
--

DROP TABLE IF EXISTS `cuentas_clientes`;
CREATE TABLE `cuentas_clientes` (
  `dni` int(11) NOT NULL,
  `ID_CUENTA` int(11) NOT NULL,
  PRIMARY KEY (`dni`,`ID_CUENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuentas_clientes`
--

/*!40000 ALTER TABLE `cuentas_clientes` DISABLE KEYS */;
INSERT INTO `cuentas_clientes` (`dni`,`ID_CUENTA`) VALUES 
 (1,1),
 (1,6),
 (1,7),
 (1,8),
 (1,9),
 (1,10),
 (2,2),
 (3,3),
 (4,4),
 (5,5),
 (10,1);
/*!40000 ALTER TABLE `cuentas_clientes` ENABLE KEYS */;


--
-- Definition of table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
CREATE TABLE `provincias` (
  `ID_PROVINCIA` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PROVINCIA` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_PROVINCIA`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provincias`
--

/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` (`ID_PROVINCIA`,`PROVINCIA`) VALUES 
 (0,'(Sin provincia)'),
 (6,'Badajoz'),
 (8,'Barcelona'),
 (11,'Cádiz'),
 (13,'Ciudad Real'),
 (15,'A Coruña'),
 (25,'Lleida'),
 (28,'Madrid'),
 (33,'Asturias'),
 (39,'Cantabria'),
 (46,'Valencia'),
 (48,'Vizcaya'),
 (50,'Zaragoza');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;


--
-- Definition of table `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
CREATE TABLE `tarjetas` (
  `NUM_TARJETA` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TIPO` varchar(45) NOT NULL,
  `DNI_TITULAR` int(10) unsigned NOT NULL,
  PRIMARY KEY (`NUM_TARJETA`),
  KEY `FK_TARJETAS_CLIENTES` (`DNI_TITULAR`),
  CONSTRAINT `FK_TARJETAS_CLIENTES` FOREIGN KEY (`DNI_TITULAR`) REFERENCES `clientes` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tarjetas`
--

/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
INSERT INTO `tarjetas` (`NUM_TARJETA`,`TIPO`,`DNI_TITULAR`) VALUES 
 (1,'Credito',1),
 (2,'Debito',1),
 (3,'Credito',2),
 (4,'Visa oro',2);
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;


--
-- Definition of table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
CREATE TABLE `telefonos` (
  `DNI` int(10) unsigned NOT NULL,
  `Telefono` varchar(15) NOT NULL DEFAULT '',
  `Descripcion` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`Telefono`) USING BTREE,
  KEY `DNI` (`DNI`),
  CONSTRAINT `telefonos_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `clientes` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telefonos`
--

/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` (`DNI`,`Telefono`,`Descripcion`) VALUES 
 (10,'121816075','Movil'),
 (3,'123','321'),
 (5,'123321123','Casa'),
 (3,'123456','tlf1'),
 (11,'123456789','casa'),
 (7,'1234567890','Casa'),
 (3,'123654789','movil'),
 (3,'132','365'),
 (8,'141176345','Casa'),
 (11,'142346449','Casa'),
 (4,'237230761','Movil'),
 (5,'268152899','Movil'),
 (9,'325223565','Casa'),
 (4,'328572579','Movil'),
 (3,'330490735','Movil'),
 (6,'333444555','Casa'),
 (5,'343453636','Movil'),
 (3,'344123','movil'),
 (10,'345345356','Casa'),
 (1,'349971789','Movil'),
 (8,'352028919','Movil'),
 (3,'383548460','Movil'),
 (7,'403188077','Movil'),
 (4,'403895534','Casa'),
 (2,'409143455','Movil'),
 (10,'4142434445','Casa'),
 (10,'436464634','Casa'),
 (10,'453747439','Casa'),
 (10,'463463644','Casa'),
 (9,'468437549','Movil'),
 (10,'520683391','Movil'),
 (6,'534645792','Movil'),
 (3,'55555444','casa'),
 (4,'611249645','Casa'),
 (1,'616548473','Movil'),
 (6,'624748487','Movil'),
 (2,'625656544','Movil'),
 (4,'628384643','Casa'),
 (3,'636362626','Movil Trabajo'),
 (2,'65551234','Movil'),
 (3,'665646436','Movil'),
 (3,'666664444555','adad'),
 (3,'677777444','Movil trabajo'),
 (3,'685958224','Tipo Listo'),
 (3,'696814543','movil de empresa'),
 (6,'69696969','Movil'),
 (11,'754654533','casa'),
 (1,'768019724','Movil'),
 (7,'783412551','Movil'),
 (11,'799574940','Movil'),
 (11,'804227998','Movil'),
 (9,'827182282','Movil'),
 (7,'871052444','Movil'),
 (2,'890093377','Movil'),
 (5,'905999466','Movil'),
 (1,'915274587','Casa'),
 (3,'918478474','Casa'),
 (3,'926555444','Fijo casa'),
 (3,'9283903870','Casa'),
 (9,'93186581','Casa'),
 (8,'9338021139','Casa'),
 (6,'9340838723','Casa'),
 (4,'934343434','Trabajo'),
 (7,'9383734915','Casa'),
 (2,'963254553','Casa'),
 (4,'9647024017','Casa'),
 (5,'966464633','Casa'),
 (2,'9749790143','Casa'),
 (8,'975674889','Movil'),
 (5,'9861911580','Casa'),
 (3,'987654321','movil2'),
 (1,'9881560815','Casa'),
 (11,'9920912108','Casa'),
 (10,'9977725076','Casa'),
 (3,'999999999','movil raro');
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;


--
-- Definition of table `traductor`
--

DROP TABLE IF EXISTS `traductor`;
CREATE TABLE `traductor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ingles` varchar(150) NOT NULL,
  `espanol` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traductor`
--

/*!40000 ALTER TABLE `traductor` DISABLE KEYS */;
INSERT INTO `traductor` (`id`,`ingles`,`espanol`) VALUES 
 (1,'alligator','caiman'),
 (2,'cat','gato'),
 (3,'dog','perro'),
 (4,'bear','oso'),
 (5,'bird','pajaro'),
 (6,'cow','vaca'),
 (7,'donkey','burro'),
 (8,'fox','zorro'),
 (9,'frog','rana'),
 (10,'goat','cabra'),
 (11,'lizard','lagartija'),
 (12,'monkey','mono'),
 (13,'rabbit','conejo'),
 (14,'rat','rata'),
 (15,'snake','serpiente'),
 (16,'tiger','tigre'),
 (17,'bison','bisonte'),
 (18,'dolphin','delfin'),
 (19,'gorilla','gorila'),
 (20,'ox','buey'),
 (21,'panther ','pantera'),
 (22,'penguin','pingüino'),
 (23,'shark','tiburon'),
 (24,'toad','sapo'),
 (25,'whale','ballena'),
 (26,'ewe','oveja'),
 (27,'ship','oveja'),
 (28,'jellyfish','medusa'),
 (29,'swordfish','pez espada'),
 (30,'house','casa');
/*!40000 ALTER TABLE `traductor` ENABLE KEYS */;


--
-- Definition of table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_name` varchar(15) NOT NULL,
  `role_name` varchar(15) NOT NULL,
  PRIMARY KEY (`user_name`,`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_name`,`role_name`) VALUES 
 ('ana','administrador'),
 ('ana','usuario'),
 ('luis','administrador'),
 ('pepe','tomcat'),
 ('pepe','usuario');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_name` varchar(15) NOT NULL,
  `user_pass` varchar(255) NOT NULL DEFAULT '""',
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_name`,`user_pass`) VALUES 
 ('ana','1ae8d4cb9c423eac548bc996959ad463df793012389eb6eca25a56fcb14d820bb1de62a64e5459c0'),
 ('luis','bf332012c64ab78c2cb0f329496a501deb8e3f68668752031cffc147b4bc15e394ba996451fce5c2'),
 ('pepe','54e0c51b3e37cf60b203c2c0b31191ef8bd8f7bf0a95094a453bf4874c048e4baf24e85f8122ef61');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
