-- MySQL dump 10.13  Distrib 5.6.35, for Linux (x86_64)
--
-- Host: localhost    Database: code
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Table structure for table `aula`
--

DROP TABLE IF EXISTS `aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aula` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula`
--

LOCK TABLES `aula` WRITE;
/*!40000 ALTER TABLE `aula` DISABLE KEYS */;
INSERT INTO `aula` VALUES (1,'Udemy','https://www.udemy.com/index.php','aula','Desarrollo web','Yoga','Yoga','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Udacity','https://www.udacity.com/','aula','Web Development','Software Development','Non-Tech','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'miríadax','https://miriadax.net/home','aula','Aprende','Crea','Comparte','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'edX','https://www.edx.org/','aula','MicroMasters Certificate','Professional Certificate','XSeries Certificate','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'coursera','https://www.coursera.org/','aula','Negocios','Ciencias de la Computación','ciencia de datos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Pluralsight','https://www.pluralsight.com/','aula','<Software> Development','IT OPS','Creative Professional','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'CODE','https://code.org/','aula','Hora del Codigo','Minecraft Hour of Code','Galaxy Game Jam','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'treehouse','https://teamtreehouse.com/','aula','Web Design','Coding','Much More','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'codecademy','https://www.codecademy.com/','aula','Make an Interactive Website','Deploy a Website','Learn Git','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'TED','http://ed.ted.com/','aula','Lessons','Series','Clubs','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Domestika','https://www.domestika.org/','aula','Cursos de Diseño','Cursos de 3D y Animación','Cursos de Tecnología','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Campus Virtual Romero','http://www.campusromero.pe/','aula','Plan de Negocios','Desarrollando al Líder Emprendedor','Formalizando mi Emprendimiento','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'MITOPENCOURSEWARE','https://ocw.mit.edu/index.htm','aula','Energy','Entrepreneurship','Introductory Programming','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Open Yale Courses','http://oyc.yale.edu/','aula','Biomedical Engineering','Molecular, Cellular & Developmental Biology','English','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Scratch','https://scratch.mit.edu/','aula','Stories','Games','Animations','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Lynda','https://www.lynda.com/','aula','Developer','Business','Design','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'CREHANA','https://www.crehana.com/','aula','Diseño','Audiovisuales','Arquitectura Digital','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Khan Academy','https://es.khanacademy.org/','aula','Matemáticas y Ciencias','Economía y finanzas','Computación','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Duolingo','https://www.duolingo.com/','aula','Duolingo para Escuelas','Duolingo English Test','Duolingo English Test para Empresas','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'busuu','https://www.busuu.com/es/','aula','Correcciones de hablantes nativos','Tarjetas','Ejercicios escritos','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description1` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description2` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description3` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Front End','ux_designer','UX Designer','Desarrollo Web','Front-End','2016-12-28 13:55:20','2016-12-28 14:02:44'),(2,'Java Dev','java_dev','Java SE','JEE','Backend','2016-12-28 13:58:06','2016-12-28 13:58:06'),(3,'Rails Dev','rails_dev','Ruby','Ruby on Rails','Backend','2016-12-28 14:01:30','2016-12-28 14:01:30'),(4,'Base de Datos','base_datos','SQL','NoSQL','Database Manager','2016-12-28 14:05:39','2016-12-28 14:05:39'),(5,'Desarrollo Escritorio','desarrollo_escritorio','Code','Code','Backend','2016-12-28 14:08:17','2016-12-28 14:08:17'),(6,'Desarrollo Movil','desarrollo_movil','Code','Code','Code','2016-12-28 14:11:27','2016-12-28 14:11:27'),(7,'Desarrollo Web','desarrollo_web','Code','Code','Code','2016-12-28 14:13:10','2016-12-28 14:13:10'),(8,'Programacion Competitiva','code_comp','ACM','Google Code Jam','CodeEval','2016-12-28 14:23:07','2016-12-28 14:23:07'),(10,'Data Science','data_science','DevOps','Big Data','Machine Learning','2016-12-28 14:28:13','2016-12-28 14:34:57');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `level_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `items_category_id_foreign` (`category_id`),
  KEY `items_level_id_foreign` (`level_id`),
  CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `items_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'AngularJS','https://angular.io/docs/ts/latest/quickstart.html','photo',1,1,'2017-01-01 05:11:04','2017-01-01 05:11:51'),(2,'Material Design','https://material.io/guidelines/','photo',1,2,'2017-01-01 05:17:13','2017-01-01 05:17:13'),(3,'Google Design','https://design.google.com/','photo',1,2,'2017-01-01 05:19:54','2017-01-01 05:19:54'),(4,'Bootstrap','http://getbootstrap.com/getting-started/','photo',1,2,'2017-01-01 05:23:27','2017-01-01 05:23:27'),(5,'Manual Bootstrap','http://librosweb.es/libro/bootstrap_3/','photo',1,1,'2017-01-01 06:55:04','2017-01-01 06:55:04'),(6,'CSS Tutorials','http://www.htmldog.com/guides/css/','photo',1,2,'2017-01-01 07:14:03','2017-01-01 07:14:03'),(7,'KHANACADEMY - Introduccin a HTML/CSS','https://es.khanacademy.org/computing/computer-programming/html-css','',1,1,'2017-01-01 07:16:26','2017-01-01 07:16:26'),(8,'CodePen','http://codepen.io/','photo',1,3,'2017-01-01 07:19:20','2017-01-01 07:19:20'),(9,'Mozilla Developer Network - Entendiendo la Web','https://developer.mozilla.org/es/docs/Learn','photo',1,1,'2017-01-04 10:20:45','2017-01-04 10:20:45'),(10,'Microsoft Virtual Academy - Introduccin a jQuery','https://mva.microsoft.com/es-es/training-courses/introduccin-a-jquery-8429?l=KoZTXv9jB_4400115888','photo',1,2,'2017-01-04 10:24:43','2017-01-04 10:24:43'),(11,'edX - User Experience (UX) Research and Design','https://www.edx.org/micromasters/michiganx-user-experience-ux-research-and-design','photo',1,3,'2017-01-04 10:28:55','2017-01-04 10:28:55'),(12,'Udacity - Intro to HTML and CSS','https://www.udacity.com/course/intro-to-html-and-css--ud304','photo',1,1,'2017-01-04 10:34:52','2017-01-04 10:34:52'),(13,'Udacity - Responsive Web Design Fundamentals','https://www.udacity.com/course/responsive-web-design-fundamentals--ud893','photo',1,2,'2017-01-04 10:37:08','2017-01-04 10:37:08'),(14,'Udacity - Front End Frameworks','https://www.udacity.com/course/front-end-frameworks--ud894','',1,3,'2017-01-04 10:38:51','2017-01-04 10:38:51'),(15,'Materialize','https://www.youtube.com/playlist?list=PLPiMTe_552ODUgTGpEGlcLI__18gzq8tT','',1,2,'2017-01-04 10:45:35','2017-01-04 10:45:35'),(16,'Java 7 SE Basico','https://www.youtube.com/playlist?list=PLvimn1Ins-42o8Ms1G2SuRloD01nnXn31','',2,1,'2017-01-04 10:57:26','2017-01-04 10:58:08'),(17,'Java 7 SE Avanzado','https://www.youtube.com/playlist?list=PLvimn1Ins-43qPXR3gBcxwe7tydxZtsON','',2,3,'2017-01-04 11:00:37','2017-01-04 11:00:37'),(18,'Curso de Java Enterprise Edition JEE','https://www.youtube.com/playlist?list=PLpOqH6AE0tNjuu5oLxK0a4JWo3_M4MG-f','',2,2,'2017-01-04 11:03:17','2017-01-04 11:03:17'),(19,'Curso de Desarrollo con Java EE 6','https://www.youtube.com/watch?v=V23GNjnf438&list=SP5F907F818938859E','',2,2,'2017-01-04 11:10:13','2017-01-04 11:10:13'),(20,'edX - Software Construction in Java','https://www.edx.org/course/software-construction-java-mitx-6-005-1x','',2,2,'2017-01-04 11:14:28','2017-01-04 11:14:28'),(21,'edX - Advanced Software Construction in Java','https://www.edx.org/course/advanced-software-construction-java-mitx-6-005-2x','',2,3,'2017-01-04 11:16:09','2017-01-04 11:16:09'),(22,'Programacion en Java: Una Introduccion al Software','https://www.coursera.org/specializations/java-programming','',2,3,'2017-01-04 11:22:44','2017-01-04 11:27:41'),(23,'Diseño de Estructuras de Datos Orientado a Objetos','https://www.coursera.org/specializations/java-object-oriented','',2,3,'2017-01-04 11:25:15','2017-01-04 11:27:13'),(24,'Spring Framework','https://www.youtube.com/playlist?list=PLvimn1Ins-40CImsffjCkv_TrKzYiB1gb','',2,2,'2017-01-04 11:31:36','2017-01-04 11:31:36'),(25,'Curso de JSF, JPA y Primefaces','https://www.youtube.com/playlist?list=PL5sFNOYxsSxRLq_XwJs2qI0KbWEwX3puA','',2,2,'2017-01-04 11:43:01','2017-01-04 11:43:01'),(26,'SPRING MVC 4','https://www.dropbox.com/sh/0t8s0phr7tddxof/AAAgyyguNKmFs1Mxv80oTzxxa?dl=0','',2,2,'2017-01-04 11:47:42','2017-01-04 11:47:42'),(27,'Ruby desde Cero','http://codehero.co/series/ruby-desde-cero','photo',3,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Core Ruby Programming','http://rubylearning.com/satishtalim/tutorial.html','photo',3,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Ruby Essentials','http://www.techotopia.com/index.php/Ruby_Essentials','photo',3,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'try ruby','http://tryruby.org/levels/1/challenges/0','photo',3,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'Ruby','https://www.youtube.com/playlist?list=PLvimn1Ins-41I74OfEUG_RTIX7wXl19E8','photo',3,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'Guía Ruby','https://www.youtube.com/playlist?list=PLQCgNGUqLK4loqS6mVamB_yRUvA2sMcF2','photo',3,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'Curso Ruby on Rails 4 desde cero','https://www.youtube.com/playlist?list=PLpOqH6AE0tNiQ-ofrDlbAUSc1r67r_AWv','photo',3,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Curso Polymer','https://www.youtube.com/playlist?list=PLpOqH6AE0tNiplM2pFjhO51cEqQaI0R42','photo',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'Learn Ruby on Rails','https://www.codecademy.com/learn/learn-rails','photo',3,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'GitHub - Ruby on Rails','https://www.codecademy.com/learn/learn-rails','photo',3,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Desarrollo Web Ruby on Rails','https://www.coursera.org/specializations/ruby-on-rails','photo',3,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'Curso Bases de Datos en MySQL','https://www.youtube.com/playlist?list=PLpOqH6AE0tNix8HFnJOBQ8c_5PyPsdZ50','photo',4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'Curso SQL','https://www.youtube.com/playlist?list=PLU8oAlHdN5Bmx-LChV4K3MbHrpZKefNwn','photo',4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'PostgreSQL Tutorial','http://www.postgresqltutorial.com/','photo',4,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Learn PostgreSQL','http://www.tutorialspoint.com/postgresql/','photo',4,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'PostgreSQL 9.5.5 Documentation','https://www.postgresql.org/docs/9.5/static/index.html','photo',4,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'Postgres Guide','http://postgresguide.com/','photo',4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'PostgreSQL - Documentación en Español','http://palomo.usach.cl/docshtml/node4.html','photo',4,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'MongoDB','https://university.mongodb.com/','photo',4,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'MongoDB Series','http://www.mmfilesi.com/blog/series/mongo/','photo',4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'MongoDB desde Cero','http://codehero.co/series/mongodb-desde-cero','photo',4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'Programar Pac-Man c++','https://www.youtube.com/playlist?list=PL9E48CC99A9EE4F6F','photo',5,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'Ejercicios Java & C++','https://www.youtube.com/playlist?list=PLpOqH6AE0tNjGxfleqAfyvJjIGIsHc7Iq','photo',5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'Programación en C++ - PARTE - 1','https://www.youtube.com/playlist?list=PLxpLoFt3yPUIKzTjN63gug3ImSL9q5abc','photo',5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'Programación en C++ - PARTE - 2 ','https://www.youtube.com/playlist?list=PLxpLoFt3yPULW27FF9xSV9KQv8DbEwpWJ','photo',5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'ARREGLOS-VECTORES-C++','https://www.youtube.com/playlist?list=PLxpLoFt3yPUJsjSWK8Hwz7-g8bzdrwTbu','photo',5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'C#','https://www.youtube.com/playlist?list=PLAF633B843489D433','photo',5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'Curso de C#','https://www.youtube.com/playlist?list=PLpOqH6AE0tNhmU9OUbm5FIJtnHAbJ4dKd','photo',5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'Curso de C# - visual studio 2013','https://www.youtube.com/watch?v=6PnGXCe9WPI&list=PLD3-wsv2mjgOG9vsb3XkogSD5ZW4x1UAc','photo',5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'Curso de Java desde 0','https://www.youtube.com/playlist?list=PLU8oAlHdN5BktAXdEVCLUYzvDyqRQJ2lk','photo',5,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'Programacion de Juegos','https://www.youtube.com/playlist?list=PL34C94B5BFD906876','photo',5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'Curso VB.NET 2010 & 2012','https://www.youtube.com/playlist?list=PLpOqH6AE0tNic0oQ_sqQLCNfaL5oEEBo6','photo',5,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'Game Development Courses','https://mva.microsoft.com/training-topics/game-development#!lang=1034','photo',5,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'Adobe PhoneGap','http://phonegap.com/','photo',6,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'Sencha','https://www.sencha.com/products/touch/#overview','photo',6,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'Aplicaciones móviles híbridas','https://inusual.com/blog/aplicaciones-moviles-hibridas','photo',6,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'IONIC','http://ionicframework.com/','photo',6,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'Build HTML5 Mobile Apps with Bootstrap and Angular JS','http://mobileangularui.com/','photo',6,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'Xamarin','https://www.xamarin.com/','photo',6,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'Android Developers Primeros pasos','https://developer.android.com/training/index.html','photo',6,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'Android studio tutorial español','https://www.youtube.com/playlist?list=PLNRxocD70gLoEx4O2pr4Klr3rfvlcAAfs','photo',6,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'Desarrollo de Aplicaciones Profesionales en Android','https://www.youtube.com/playlist?list=PLC7Ec2r5tkJCAwd-Ig7x69pytjjkHsfA9','photo',6,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'Professional Android Developer','https://www.edx.org/micromasters/galileox-professional-android-developer','photo',6,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'Android Developers','https://www.youtube.com/channel/UCVHFbqXqoYvEWM1Ddxl0QDg','photo',6,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'Material Design con Android Studio','https://www.youtube.com/playlist?list=PLEtcGQaT56ch37mnavd8p5cbnkDvXLGsX','photo',6,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'iOS desde Cero','http://codehero.co/series/ios-desde-cero','photo',6,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'Objective-C desde Cero','http://codehero.co/series/objective-c-desde-cero','photo',6,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'Udacity - Android','https://www.udacity.com/courses/android','photo',6,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'ASP​.NET','https://docs.microsoft.com/en-us/aspnet/core/tutorials/','photo',7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'Getting Started with ASP.NET MVC 5','https://www.asp.net/mvc/overview/getting-started/introduction/getting-started','photo',7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'Intro to ASP.NET MVC','https://www.asp.net/mvc/overview/older-versions-1/getting-started-with-mvc/getting-started-with-mvc-part1','photo',7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'Learn About ASP.NET Web Pages','https://www.asp.net/web-pages','photo',7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'Curso de ASP.NET MVC 4 en C#(Csharp)','https://www.youtube.com/playlist?list=PLViNbzdNIbHA6FMyBkMTIB_osYf1JXOve&nohtml5=False','photo',7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'Curso de CodeIgniter','https://www.youtube.com/playlist?list=PLpOqH6AE0tNi8aehdfi3B_ZjP3DrXQMhf','photo',7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'Django desde Cero','http://codehero.co/series/django-desde-cero','photo',7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'Django, el web framework para perfeccionistas','http://www.maestrosdelweb.com/curso-django-introduccion/','photo',7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'The Django Book','http://djangobook.com/','photo',7,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'Django documentation','https://docs.djangoproject.com/en/1.10/','photo',7,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'Curso de HTML y CSS','https://www.youtube.com/playlist?list=PLQCgNGUqLK4njrWWAXv30jx6CGzgI-SC3','photo',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'Laravel','https://styde.net/cursos/','photo',7,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'Curso Laravel','https://www.youtube.com/watch?v=nkkVlyynkaQ&list=PLK0Qy1n0iBQSis3AJUBUlMUyJdlYQ7VX2','photo',7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'Laravel 5.2','https://www.youtube.com/watch?v=bc-6fbKPKPI&list=PLQOoqAvceIIOq1WcbaK0QP4oa7YOYEb-U','photo',7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'Node Series','http://www.mmfilesi.com/blog/series/node-2/','photo',7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'El Libro para Principiantes en Node.js','http://www.nodebeginner.org/index-es.html','photo',7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'Node.js y Express','http://codehero.co/series/node-y-express','photo',7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'Node Js Ejecutando el primer código con node js','https://www.youtube.com/watch?v=LLajNY5NuhQ&list=PLfkODrpjGnhmm_t9yiaWfESBggaJf8mcE','photo',7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'PHP','http://www.phptherightway.com/','photo',7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'Curso de PHP/MySQL','https://www.youtube.com/playlist?list=PLU8oAlHdN5BkinrODGXToK9oPAlnJxmW_','photo',7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'Tutoriales PHP','https://www.youtube.com/playlist?list=PL469D93BF3AE1F84F','photo',7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'Python desde Cero','http://codehero.co/series/python-desde-cero','photo',7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'Web Development Courses','https://mva.microsoft.com/training-topics/web-development#!lang=1034','photo',7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'JavaScript','https://developer.mozilla.org/es/docs/Web/JavaScript','photo',7,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'codeeval','https://codeeval.com/','photo',8,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'ACM','https://icpc.baylor.edu/','photo',8,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'Google Code Jam','https://code.google.com/codejam/','photo',8,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'Udacity Data Science','https://www.udacity.com/courses/data-science','photo',10,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'Análisis de Datos','https://www.coursera.org/browse/data-science/data-analysis?_facet_changed_=true','photo',10,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'Aprendizaje automático','https://www.coursera.org/browse/data-science/machine-learning?_facet_changed_=true','photo',10,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'Probabilidad y Estadística','https://www.coursera.org/browse/data-science/probability-and-statistics?_facet_changed_=true','photo',10,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'Cloud Development Courses','https://mva.microsoft.com/training-topics/cloud-app-development#!lang=1034','photo',10,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'Database Administration Courses','https://mva.microsoft.com/training-topics/database-administration#!lang=1034','photo',10,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'Business Intelligence Courses','https://mva.microsoft.com/training-topics/business-intelligence#!lang=1034','photo',10,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'Artificial Intelligence','https://www.edx.org/micromasters/columbiax-artificial-intelligence','photo',10,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'Evidence-Based Management','https://www.edx.org/micromasters/anux-evidence-based-management','photo',10,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'Microsoft Professional Program Certificate in Data Science','https://www.edx.org/microsoft-professional-program-certficate-data-science','photo',10,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'Data Science and Analytics in Context','https://www.edx.org/xseries/data-science-analytics-context','photo',10,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'UC Berkeley CS188 Intro to AI','http://ai.berkeley.edu/project_overview.html','photo',10,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,'BASICO','basico','2017-01-01 05:00:28','2017-01-01 05:00:28'),(2,'INTERMEDIO','intermedio','2017-01-01 05:01:13','2017-01-01 05:02:32'),(3,'AVANZADO','avanzado','2017-01-01 05:01:53','2017-01-01 05:01:53');
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_12_24_234647_add_categories_table',1),('2016_12_25_030022_add_levels_table',1),('2016_12_25_030048_add_items_table',1),('2017_01_08_065303_add_pluscodes_table',2),('2017_01_10_023638_add_aula_table',2),('2017_01_10_042858_create_pluscode_table',3),('2017_01_10_042919_create_aula_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluscode`
--

DROP TABLE IF EXISTS `pluscode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluscode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluscode`
--

LOCK TABLES `pluscode` WRITE;
/*!40000 ALTER TABLE `pluscode` DISABLE KEYS */;
INSERT INTO `pluscode` VALUES (1,'Google Careers Technical Development Guide','https://www.google.com/about/careers/students/guide-to-technical-development.html','pluscode','Computer Science','Guide to Technical Development','Google','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Visual Studio Dev Essentials','https://myprodscussu1.app.vssubscriptions.visualstudio.com/Benefits','pluscode','Education','Tools','*Requiere una cuenta microsoft para suscripción','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'GitHub Education','https://education.github.com/pack','pluscode','Student Developer Pack','Stories','*Necesitas correo institucional(Universidad, Instituto)','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Big Data y Hadoop, el próximo desafío en tu carrera como programador Java.','https://blog.hackealo.co/big-data-y-hadoop-el-pr%C3%B3ximo-desaf%C3%ADo-en-tu-carrera-como-programador-java-83fb0e58d5e0#.83ame7gdh','pluscode','Java','Big Data','Hadoop','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'LiveEdu','https://www.liveedu.tv/','pluscode','Learn by watching','Start your own channel','Hire talent visually','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Doce canales para que aprendas inglés gratis','http://www.pqs.pe/emprendimiento/youtube-doce-canales-para-que-aprendas-ingles-gratis','pluscode','BBC Learn English','British Council: Learn English','Business English Pod','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'JetBrains Products for Learning','https://www.jetbrains.com/shop/eform/students','pluscode','JetBrains','IDE','*Necesitas correo institucional(Universidad, Instituto)','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `pluscode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('admin','member') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2017-01-10  1:25:13
