CREATE DATABASE  IF NOT EXISTS `peliculas` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `peliculas`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: peliculas
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`),
  UNIQUE KEY `nombre` (`nombre_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Pelicula'),(2,'Serie');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `id_genero` int NOT NULL AUTO_INCREMENT,
  `nombre_genero` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_genero`),
  UNIQUE KEY `nombre` (`nombre_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Acción'),(2,'Aventura'),(4,'Drama'),(3,'Fantásía'),(12,'Fantástica'),(10,'Ficción'),(11,'Hechos veríficos'),(5,'Historia'),(7,'Intriga'),(8,'Sci-Fi'),(6,'Suspenso'),(9,'Terror');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparto`
--

DROP TABLE IF EXISTS `reparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparto` (
  `id_reparto` int NOT NULL AUTO_INCREMENT,
  `nombre_reparto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_reparto`),
  UNIQUE KEY `nombre` (`nombre_reparto`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparto`
--

LOCK TABLES `reparto` WRITE;
/*!40000 ALTER TABLE `reparto` DISABLE KEYS */;
INSERT INTO `reparto` VALUES (57,'Alice Braga'),(42,'Alicia Vikander'),(17,'Amy Manson'),(15,'Benjamin Sokolow'),(49,'Bryce Dallas Howard'),(74,'Burn Gorman'),(71,'Cailee Spaeny'),(9,'Caitriona Balfe'),(1,'Chadwick Boseman'),(58,'Charlie Tahan'),(50,'Chris Pratt'),(7,'Christian Bale'),(64,'Claire Foy'),(47,'Claire Selby'),(46,'Corey Johnson'),(67,'Corey Stoll'),(4,'Danai Gurira'),(6,'Daniel Kaluuya'),(59,'Dash Mihok'),(31,'David Harbour'),(43,'Domhnall Gleeson'),(20,'Dominic Mafham'),(16,'Emily Bayiokos'),(62,'Emma Thompson'),(30,'Florence Pugh'),(48,'Gana Bayarsaikhan'),(13,'Génesis Rodríguez'),(28,'Gwyneth Paltrow'),(51,'Irrfan Khan'),(21,'James Weber Brown'),(65,'Jason Clarke'),(38,'Jeff Daniels'),(27,'Jennifer Ehle'),(36,'Jessica Chastain'),(72,'Jing Tian'),(69,'John Boyega'),(12,'Jon Bernthal'),(10,'Josh Lucas'),(25,'Jude Law'),(55,'Judy Greer'),(41,'Kate Mara'),(26,'Kate Winslet'),(37,'Kristen Wiig'),(66,'Kyle Chandler'),(24,'Laurence Fishburne'),(22,'Lorina Kamburova'),(18,'Luke Allen-Gale'),(3,'Lupita Nyong\'o'),(23,'Marion Cotillard'),(5,'Martin Freeman'),(8,'Matt Damon'),(2,'Michael B. Jordan'),(39,'Michael Peña'),(54,'Nick Robinson'),(19,'Nina Bergman'),(11,'Noah Jupe'),(32,'O.T. Fagbenle'),(53,'Omar Sy'),(44,'Oscar Isaac'),(68,'Patrick Fugit'),(33,'Rachel Weisz'),(35,'Ray Winstone'),(73,'Rinko Kikuchi'),(63,'Ryan Gosling'),(60,'Salli Richardson-Whitfield'),(29,'Scarlett Johansson'),(70,'Scott Eastwood'),(40,'Sean Bean'),(45,'Sonoya Mizuno'),(52,'Vincent D\'Onofrio'),(173,'Vincent Donofrio'),(14,'Vincent Piazza'),(56,'Will Smith'),(34,'William Hurt'),(61,'Willow Smith');
/*!40000 ALTER TABLE `reparto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `id_serie` int NOT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `resumen` text,
  `temporadas` int DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  PRIMARY KEY (`id_serie`),
  KEY `categoria_id` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'./posters/1.jpg','The Office','Una comedia que muestra la vida cotidiana de los empleados de una oficina en Scranton, Pennsylvania.',9,'https://www.youtube.com/embed/dC1GgK4WbCE',1),(2,'./posters/2.jpg','Stranger Things','Un grupo de amigos en la década de 1980 investiga la desaparición de un niño y el surgimiento de fenómenos paranormales.',4,'https://www.youtube.com/embed/Xtqv7crs2vM',1),(3,'./posters/3.jpg','Breaking Bad','La historia de un profesor de química que se convierte en fabricante de metanfetaminas tras ser diagnosticado con cáncer.',5,'https://www.youtube.com/embed/5Gz5uJkU2iM',1),(4,'./posters/4.jpg','Game of Thrones','Una serie épica de fantasía que narra las luchas de poder entre familias nobles en un mundo medieval.',8,'https://www.youtube.com/embed/5Gz5uJkU2iM',1),(5,'./posters/5.jpg','The Mandalorian','Un cazarrecompensas solitario navega por los confines de la galaxia en la época posterior a la caída del Imperio.',2,'https://www.youtube.com/embed/CZpK2dP4eP4',1),(6,'./posters/6.jpg','The Crown','La historia de la reina Isabel II y los eventos que han moldeado la segunda mitad del siglo XX.',6,'https://www.youtube.com/embed/2hZty0gJ00Y',1),(7,'./posters/7.jpg','The Witcher','Un cazador de monstruos navega por un mundo lleno de magia y criaturas sobrenaturales.',2,'https://www.youtube.com/embed/bqAqP3c3R2E',1),(8,'./posters/8.jpg','Black Mirror','Una antología de historias independientes que exploran el lado oscuro de la tecnología y la sociedad.',5,'https://www.youtube.com/embed/4k29H9uHxMo',1),(9,'./posters/9.jpg','The Boys','Un grupo de vigilantes lucha contra superhéroes corruptos en un mundo donde los héroes son más bien villanos.',3,'https://www.youtube.com/embed/gkF-4Oe2iJ8',1),(10,'./posters/10.jpg','Fargo','Una serie de crímenes y comedia negra inspirada en la película del mismo nombre.',4,'https://www.youtube.com/embed/B0ZpHkDg3Qk',1),(11,'./posters/11.jpg','The Queen\'s Gambit','La historia de una joven prodigio del ajedrez que lucha con adicciones mientras se convierte en una campeona.',1,'https://www.youtube.com/embed/2wW1n2yUBsU',1),(12,'./posters/12.jpg','Better Call Saul','La transformación de un abogado estafador en el personaje de Saul Goodman de \"Breaking Bad\".',6,'https://www.youtube.com/embed/s4V5cG-ntg4',1),(13,'./posters/13.jpg','Dark','Una serie de ciencia ficción que explora el viaje en el tiempo y las repercusiones de las decisiones.',3,'https://www.youtube.com/embed/uoDpx52H2E8',1),(14,'./posters/14.jpg','Peaky Blinders','La historia de una familia criminal en Birmingham, Inglaterra, después de la Primera Guerra Mundial.',6,'https://www.youtube.com/embed/Q62gVGBjNkI',1),(15,'./posters/15.jpg','Mindhunter','Dos agentes del FBI desarrollan técnicas de perfilado criminal al entrevistar asesinos en serie.',2,'https://www.youtube.com/embed/vqg6Dg1m0J0',1),(16,'./posters/16.jpg','Narcos','La historia del auge y caída de los carteles de droga en Colombia y México.',3,'https://www.youtube.com/embed/JxDE1Q5k0zg',1),(17,'./posters/17.jpg','Ozark','Un consultor financiero se traslada a los Ozarks con su familia tras un fallo en un negocio de lavado de dinero.',4,'https://www.youtube.com/embed/jYcZ54gKTVs',1),(18,'./posters/18.jpg','Westworld','Un parque temático futurista donde los huéspedes interactúan con androides en un entorno salvaje.',4,'https://www.youtube.com/embed/rCGxR3B_NU0',1),(19,'./posters/19.jpg','The Handmaid\'s Tale','Una distopía en la que las mujeres son tratadas como propiedad del estado.',4,'https://www.youtube.com/embed/9aL1Q5HEIc8',1),(20,'./posters/20.jpg','Vikings','La saga de Ragnar Lothbrok, un legendario guerrero y explorador escandinavo.',6,'https://www.youtube.com/embed/rx8zGt6eqMA',1),(21,'./posters/21.jpg','Fleabag','La vida de una joven mujer que intenta sobrellevar las dificultades de su vida en Londres.',2,'https://www.youtube.com/embed/Aff-7zLDCOY',1),(22,'./posters/22.jpg','The Good Place','Una comedia sobre el más allá y la moralidad, donde los personajes deben mejorar para alcanzar el \"Buen Lugar\".',4,'https://www.youtube.com/embed/0x98t4ZpR0g',1),(23,'./posters/23.jpg','Narcos: Mexico','El surgimiento del narcotráfico en México y el impacto de la guerra contra las drogas.',3,'https://www.youtube.com/embed/Km-5N09v5y4',1),(24,'./posters/24.jpg','Pantera Negra','T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.',NULL,'https://www.youtube.com/embed/BE6inv8Xh4A',1),(25,'./posters/25.jpg','Contra lo imposible (Ford versus Ferrari)','Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.',NULL,'https://www.youtube.com/embed/SOVb0-2g1Q0',1),(26,'./posters/26.jpg','Centígrados','Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.',NULL,'',1),(27,'./posters/27.jpg','DOOM: Aniquilación','Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.',NULL,'https://www.youtube.com/embed/nat3u3gAVLE',1),(28,'./posters/28.jpg','Contagio','De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia',0,'https://www.youtube.com/embed/5s0L6EHpO4I',1),(29,'./posters/29.jpg','Viuda Negra','Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.',0,'https://www.youtube.com/embed/BIn8iANwEog',1),(30,'./posters/30.jpg','The Martian','Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.',0,'https://www.youtube.com/embed/XvB58bCVfng',1),(31,'./posters/31.jpg','Ex-Machina','Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.',0,'https://www.youtube.com/embed/XRYL5spvEcI',1),(32,'./posters/32.jpg','Jurassic World','Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic World, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.',1,'',1),(33,'./posters/33.jpg','Soy leyenda','Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.',0,'https://www.youtube.com/embed/dtKMEAXyPkg',1),(34,'./posters/34.jpg','El primer hombre en la luna','Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.',0,'',1),(35,'./posters/35.jpg','Titanes del pacífico - La insurrección','Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.',0,'',1);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series_generos`
--

DROP TABLE IF EXISTS `series_generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series_generos` (
  `id_serie` int NOT NULL,
  `id_genero` int NOT NULL,
  PRIMARY KEY (`id_serie`,`id_genero`),
  KEY `genero_id` (`id_genero`),
  CONSTRAINT `series_generos_ibfk_1` FOREIGN KEY (`id_serie`) REFERENCES `series` (`id_serie`),
  CONSTRAINT `series_generos_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series_generos`
--

LOCK TABLES `series_generos` WRITE;
/*!40000 ALTER TABLE `series_generos` DISABLE KEYS */;
INSERT INTO `series_generos` VALUES (24,1),(27,1),(29,1),(35,1),(24,2),(25,2),(29,2),(30,2),(32,2),(24,3),(35,3),(25,4),(26,4),(28,4),(29,4),(30,4),(31,4),(33,4),(34,4),(25,5),(26,6),(28,6),(31,6),(32,6),(26,7),(27,8),(30,8),(31,8),(35,8),(27,9),(33,9),(28,10),(32,10),(33,10),(34,11);
/*!40000 ALTER TABLE `series_generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series_reparto`
--

DROP TABLE IF EXISTS `series_reparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series_reparto` (
  `id_serie` int NOT NULL,
  `id_reparto` int NOT NULL,
  PRIMARY KEY (`id_serie`,`id_reparto`),
  KEY `reparto_id` (`id_reparto`),
  CONSTRAINT `series_reparto_ibfk_1` FOREIGN KEY (`id_serie`) REFERENCES `series` (`id_serie`),
  CONSTRAINT `series_reparto_ibfk_2` FOREIGN KEY (`id_reparto`) REFERENCES `reparto` (`id_reparto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series_reparto`
--

LOCK TABLES `series_reparto` WRITE;
/*!40000 ALTER TABLE `series_reparto` DISABLE KEYS */;
INSERT INTO `series_reparto` VALUES (24,4),(24,5),(24,6),(25,7),(25,8),(28,8),(30,8),(25,9),(25,10),(25,11),(25,12),(26,13),(26,14),(26,15),(26,16),(27,17),(27,18),(27,19),(27,20),(27,21),(27,22),(28,23),(28,24),(28,25),(28,26),(28,27),(28,28),(29,29),(29,30),(29,31),(29,32),(29,33),(29,34),(29,35),(30,36),(30,37),(30,38),(30,39),(30,40),(30,41),(31,42),(31,43),(31,44),(31,45),(31,46),(31,47),(31,48),(32,49),(32,50),(32,51),(32,53),(32,54),(32,55),(33,56),(33,57),(33,58),(33,59),(33,60),(33,61),(33,62),(34,63),(34,64),(34,65),(34,66),(34,67),(34,68),(35,69),(35,70),(35,71),(35,72),(35,73),(35,74),(32,173);
/*!40000 ALTER TABLE `series_reparto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'peliculas'
--

--
-- Dumping routines for database 'peliculas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-14 22:49:50
