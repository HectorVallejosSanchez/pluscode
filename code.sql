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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Front End','ux_designer','UX Designer','Desarrollo Web','Front-End','2016-12-28 13:55:20','2016-12-28 14:02:44'),(2,'Java Dev','java_dev','Java SE','JEE','Backend','2016-12-28 13:58:06','2016-12-28 13:58:06'),(3,'Rails Dev','rails_dev','Ruby','Ruby on Rails','Backend','2016-12-28 14:01:30','2016-12-28 14:01:30'),(4,'Base de Datos','base_datos','SQL','NoSQL','Database Manager','2016-12-28 14:05:39','2016-12-28 14:05:39'),(5,'Desarrollo Escritorio','desarrollo_escritorio','Code','Code','Backend','2016-12-28 14:08:17','2016-12-28 14:08:17'),(6,'Desarrollo Movil','desarrollo_movil','Code','Code','Code','2016-12-28 14:11:27','2016-12-28 14:11:27'),(7,'Desarrollo Web','desarrollo_web','Code','Code','Code','2016-12-28 14:13:10','2016-12-28 14:13:10'),(8,'Programacion Competitiva','code_comp','ACM','Google Code Jam','CodeEval','2016-12-28 14:23:07','2016-12-28 14:23:07'),(9,'Android','android','Android','Android','Android','2016-12-28 14:25:15','2016-12-28 14:25:15'),(10,'Data Science','data_science','DevOps','Big Data','Machine Learning','2016-12-28 14:28:13','2016-12-28 14:34:57'),(11,'iOS','ios','Code','Code','Code','2016-12-28 14:30:02','2016-12-28 14:35:02'),(12,'Software Engineering','software','Code','Code','Code','2016-12-28 14:34:18','2016-12-28 14:34:18'),(13,'Aula Virtual','non-tech','Aprende','Emprende','Startup','2017-01-01 07:27:53','2017-01-01 07:27:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'AngularJS','https://angular.io/docs/ts/latest/quickstart.html','photo',1,1,'2017-01-01 05:11:04','2017-01-01 05:11:51'),(2,'Material Design','https://material.io/guidelines/','photo',1,2,'2017-01-01 05:17:13','2017-01-01 05:17:13'),(3,'Google Design','https://design.google.com/','photo',1,2,'2017-01-01 05:19:54','2017-01-01 05:19:54'),(4,'Bootstrap','http://getbootstrap.com/getting-started/','photo',1,2,'2017-01-01 05:23:27','2017-01-01 05:23:27'),(5,'Manual Bootstrap','http://librosweb.es/libro/bootstrap_3/','photo',1,1,'2017-01-01 06:55:04','2017-01-01 06:55:04'),(6,'CSS Tutorials','http://www.htmldog.com/guides/css/','photo',1,2,'2017-01-01 07:14:03','2017-01-01 07:14:03'),(7,'KHANACADEMY - Introduccin a HTML/CSS','https://es.khanacademy.org/computing/computer-programming/html-css','',1,1,'2017-01-01 07:16:26','2017-01-01 07:16:26'),(8,'CodePen','http://codepen.io/','photo',1,3,'2017-01-01 07:19:20','2017-01-01 07:19:20'),(9,'Mozilla Developer Network - Entendiendo la Web','https://developer.mozilla.org/es/docs/Learn','photo',1,1,'2017-01-04 10:20:45','2017-01-04 10:20:45'),(10,'Microsoft Virtual Academy - Introduccin a jQuery','https://mva.microsoft.com/es-es/training-courses/introduccin-a-jquery-8429?l=KoZTXv9jB_4400115888','photo',1,2,'2017-01-04 10:24:43','2017-01-04 10:24:43'),(11,'edX - User Experience (UX) Research and Design','https://www.edx.org/micromasters/michiganx-user-experience-ux-research-and-design','photo',1,3,'2017-01-04 10:28:55','2017-01-04 10:28:55'),(12,'Udacity - Intro to HTML and CSS','https://www.udacity.com/course/intro-to-html-and-css--ud304','photo',1,1,'2017-01-04 10:34:52','2017-01-04 10:34:52'),(13,'Udacity - Responsive Web Design Fundamentals','https://www.udacity.com/course/responsive-web-design-fundamentals--ud893','photo',1,2,'2017-01-04 10:37:08','2017-01-04 10:37:08'),(14,'Udacity - Front End Frameworks','https://www.udacity.com/course/front-end-frameworks--ud894','',1,3,'2017-01-04 10:38:51','2017-01-04 10:38:51'),(15,'Materialize','https://www.youtube.com/playlist?list=PLPiMTe_552ODUgTGpEGlcLI__18gzq8tT','',1,2,'2017-01-04 10:45:35','2017-01-04 10:45:35'),(16,'Java 7 SE Basico','https://www.youtube.com/playlist?list=PLvimn1Ins-42o8Ms1G2SuRloD01nnXn31','',2,1,'2017-01-04 10:57:26','2017-01-04 10:58:08'),(17,'Java 7 SE Avanzado','https://www.youtube.com/playlist?list=PLvimn1Ins-43qPXR3gBcxwe7tydxZtsON','',2,3,'2017-01-04 11:00:37','2017-01-04 11:00:37'),(18,'Curso de Java Enterprise Edition JEE','https://www.youtube.com/playlist?list=PLpOqH6AE0tNjuu5oLxK0a4JWo3_M4MG-f','',2,2,'2017-01-04 11:03:17','2017-01-04 11:03:17'),(19,'Curso de Desarrollo con Java EE 6','https://www.youtube.com/watch?v=V23GNjnf438&list=SP5F907F818938859E','',2,2,'2017-01-04 11:10:13','2017-01-04 11:10:13'),(20,'edX - Software Construction in Java','https://www.edx.org/course/software-construction-java-mitx-6-005-1x','',2,2,'2017-01-04 11:14:28','2017-01-04 11:14:28'),(21,'edX - Advanced Software Construction in Java','https://www.edx.org/course/advanced-software-construction-java-mitx-6-005-2x','',2,3,'2017-01-04 11:16:09','2017-01-04 11:16:09'),(22,'Programacion en Java: Una Introduccion al Software','https://www.coursera.org/specializations/java-programming','',2,3,'2017-01-04 11:22:44','2017-01-04 11:27:41'),(23,'Diseño de Estructuras de Datos Orientado a Objetos','https://www.coursera.org/specializations/java-object-oriented','',2,3,'2017-01-04 11:25:15','2017-01-04 11:27:13'),(24,'Spring Framework','https://www.youtube.com/playlist?list=PLvimn1Ins-40CImsffjCkv_TrKzYiB1gb','',2,2,'2017-01-04 11:31:36','2017-01-04 11:31:36'),(25,'Curso de JSF, JPA y Primefaces','https://www.youtube.com/playlist?list=PL5sFNOYxsSxRLq_XwJs2qI0KbWEwX3puA','',2,2,'2017-01-04 11:43:01','2017-01-04 11:43:01'),(26,'SPRING MVC 4','https://www.dropbox.com/sh/0t8s0phr7tddxof/AAAgyyguNKmFs1Mxv80oTzxxa?dl=0','',2,2,'2017-01-04 11:47:42','2017-01-04 11:47:42');
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
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_12_24_234647_add_categories_table',1),('2016_12_25_030022_add_levels_table',1),('2016_12_25_030048_add_items_table',1);
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

-- Dump completed on 2017-01-04  2:30:04
