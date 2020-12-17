-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(245) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_communities_users1_idx` (`admin_id`),
  CONSTRAINT `fk_communities_users1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'rerum','',22),(2,'magnam','Non repellendus et quaerat cum maxime esse.',88),(3,'quo','',5),(4,'quae','',63),(5,'saepe','Rerum dolores labore sit corrupti iusto nesciunt.',96),(6,'vel','',34),(7,'consectetur','',55),(8,'est','Accusamus exercitationem perferendis est consequatur.',23),(9,'aut','Sed accusamus iusto mollitia qui quia ut nobis.',16),(10,'occaecati','',71);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_requests` (
  `from_users_id` int unsigned NOT NULL,
  `to_users_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 - отклонен, 0 - запрос, 1 - принят',
  `created_ad` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`from_users_id`,`to_users_id`),
  KEY `fk_friend_requests_users1_idx` (`from_users_id`),
  KEY `fk_friend_requests_users2_idx` (`to_users_id`),
  CONSTRAINT `fk_friend_requests_users1` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_requests_users2` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
INSERT INTO `friend_requests` VALUES (1,2,-1,'2020-12-11 21:42:31',NULL),(1,91,-1,'1993-08-26 06:56:17','1970-12-06 09:23:57'),(2,91,-1,'1976-05-20 10:07:37','1970-05-08 05:18:49'),(4,30,-1,'1998-06-20 14:12:27','2014-03-06 10:28:54'),(6,9,1,'1989-04-14 08:47:02','2017-01-08 12:37:22'),(8,51,1,'1975-02-17 17:59:24','1988-03-08 00:59:53'),(9,28,1,'2020-12-11 21:42:31',NULL),(9,67,0,'2020-12-11 21:42:31','2019-11-12 17:53:09'),(10,75,1,'2013-08-21 05:38:27',NULL),(11,21,0,'1985-11-13 14:59:11',NULL),(11,41,-1,'2020-12-11 21:42:31','1982-07-02 11:05:24'),(11,43,-1,'2020-12-11 21:42:31',NULL),(12,26,-1,'2010-09-26 13:35:06','2013-04-05 23:15:23'),(13,41,0,'1991-01-11 13:07:38','2018-03-27 08:36:49'),(14,18,-1,'2020-12-11 21:42:31','1993-05-03 06:58:30'),(14,80,0,'2020-12-11 21:42:31','2003-07-22 17:33:20'),(15,30,0,'2012-10-15 09:47:11',NULL),(18,55,1,'1992-11-20 15:33:00','2013-09-06 14:12:43'),(18,73,-1,'2020-12-11 21:42:31','1976-01-06 14:13:17'),(19,1,0,'2010-01-21 17:46:50',NULL),(19,6,1,'2020-12-11 21:42:31',NULL),(20,31,0,'2005-08-10 07:06:08','1997-01-28 05:08:31'),(21,5,0,'2006-07-25 14:40:34',NULL),(21,77,0,'1970-06-03 19:45:09',NULL),(22,23,1,'2020-12-11 21:42:31',NULL),(22,97,1,'2006-10-18 21:19:59','2004-11-14 06:46:32'),(24,71,-1,'2020-12-11 21:42:31',NULL),(25,6,0,'1998-02-18 02:07:13',NULL),(26,34,0,'2020-12-11 21:42:31',NULL),(27,38,-1,'2020-12-11 21:42:31',NULL),(27,84,-1,'2020-12-11 21:42:31',NULL),(28,100,0,'2020-12-11 21:42:31',NULL),(29,34,-1,'2020-12-11 21:42:31','1975-12-07 22:21:06'),(29,41,-1,'2001-07-15 04:55:27',NULL),(31,45,1,'1982-08-17 05:12:22','1987-09-20 19:18:18'),(31,67,0,'1998-09-15 04:48:31',NULL),(31,83,0,'2014-10-13 16:51:28',NULL),(31,95,1,'2020-12-11 21:42:31','2018-09-08 16:07:14'),(32,69,1,'2007-02-11 22:55:22',NULL),(34,1,1,'2020-12-11 21:42:31',NULL),(34,20,-1,'2020-12-11 21:42:31','1991-05-11 05:50:06'),(34,92,0,'1977-12-25 21:59:01','2016-05-01 18:33:04'),(35,10,-1,'2020-12-11 21:42:31',NULL),(35,15,1,'1985-01-24 17:55:54','1975-09-10 17:47:09'),(36,10,1,'2020-12-11 21:42:31','1982-08-27 17:10:46'),(37,67,-1,'2020-12-11 21:42:31','1992-06-30 18:14:53'),(40,11,0,'2020-12-11 21:42:31','1991-06-18 16:18:21'),(41,45,1,'2006-12-02 21:33:38',NULL),(42,10,-1,'2020-12-11 21:42:31',NULL),(42,22,1,'1984-03-07 10:37:58',NULL),(42,92,0,'1970-06-09 05:02:39',NULL),(43,82,0,'2020-12-11 21:42:31',NULL),(46,86,0,'2020-12-11 21:42:31',NULL),(48,63,0,'2020-12-11 21:42:31','1986-05-24 06:43:01'),(48,83,-1,'2018-07-06 19:28:40','2004-05-17 16:04:01'),(49,16,-1,'2020-12-11 21:42:31',NULL),(49,37,1,'2020-12-11 21:42:31',NULL),(50,54,-1,'2020-12-11 21:42:31',NULL),(51,74,1,'2020-12-11 21:42:31','1979-08-08 21:55:36'),(52,13,1,'2009-10-17 01:38:57','1976-01-13 04:12:22'),(54,17,-1,'1978-09-06 20:05:10',NULL),(55,2,1,'2020-12-11 21:42:31',NULL),(55,51,1,'1973-08-10 04:55:29','1995-12-09 07:42:00'),(57,15,0,'2009-01-19 23:01:06','1992-03-24 16:35:09'),(60,52,-1,'1983-02-20 08:45:21','2017-10-10 09:24:15'),(60,89,1,'2020-12-11 21:42:31','1991-04-01 11:54:04'),(60,90,1,'2020-12-11 21:42:31',NULL),(60,91,1,'2016-02-02 17:36:26','1991-08-27 23:11:41'),(64,19,-1,'1993-07-11 21:23:03','1990-10-11 21:42:05'),(65,16,0,'1985-11-03 14:21:57',NULL),(69,11,-1,'2020-12-11 21:42:31','2005-12-03 04:48:18'),(70,94,1,'2001-08-09 13:31:01','1972-02-10 11:13:07'),(72,7,0,'2017-11-15 09:46:56',NULL),(73,63,1,'2020-12-11 21:42:31',NULL),(73,82,0,'1993-05-07 12:50:42','1979-04-09 00:34:40'),(74,87,0,'2020-12-11 21:42:31','1979-06-26 18:14:49'),(75,37,-1,'1979-11-27 07:58:47',NULL),(75,46,1,'2020-12-11 21:42:31','1983-01-17 22:07:46'),(77,30,1,'1983-06-17 15:15:39','2000-04-19 20:28:01'),(77,52,-1,'1990-06-18 10:08:53','2001-05-02 22:22:57'),(77,93,-1,'2001-07-08 09:22:14','2004-11-26 20:48:30'),(79,49,-1,'1989-09-01 22:35:16',NULL),(79,88,1,'1993-12-01 06:55:12','1973-04-21 19:25:44'),(83,75,-1,'2020-12-11 21:42:31',NULL),(84,31,1,'2020-12-11 21:42:31',NULL),(88,26,1,'1982-03-26 13:45:05','1998-07-23 10:16:48'),(89,1,1,'2020-12-11 21:42:31',NULL),(89,58,1,'2020-12-11 21:42:31','1973-01-03 23:57:30'),(91,28,1,'1989-09-06 21:31:33',NULL),(91,99,1,'2020-12-11 21:42:31',NULL),(92,51,-1,'2020-12-11 21:42:31','1970-04-11 14:18:05'),(95,82,1,'2020-12-11 21:42:31','1993-03-24 16:13:35'),(97,81,1,'2020-12-11 21:42:31',NULL),(98,26,-1,'1999-06-16 09:50:31',NULL),(98,44,1,'2020-12-11 21:42:31',NULL),(98,88,0,'2020-12-11 21:42:31','2006-06-07 09:15:49'),(98,100,0,'2020-12-11 21:42:31',NULL),(100,25,1,'2010-11-19 16:48:28',NULL);
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `users_id` int unsigned NOT NULL,
  `media_id` int unsigned DEFAULT NULL,
  `posts_id` int unsigned DEFAULT NULL,
  `messages_id` int unsigned DEFAULT NULL,
  UNIQUE KEY `index` (`users_id`,`media_id`),
  UNIQUE KEY `index2` (`users_id`,`posts_id`),
  UNIQUE KEY `index3` (`users_id`,`messages_id`),
  KEY `fk_likes_users1_idx` (`users_id`),
  KEY `fk_likes_media1_idx` (`media_id`),
  KEY `fk_likes_posts1_idx` (`posts_id`),
  KEY `fk_likes_messages1_idx` (`messages_id`),
  CONSTRAINT `fk_likes_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_likes_messages1` FOREIGN KEY (`messages_id`) REFERENCES `messages` (`id`),
  CONSTRAINT `fk_likes_posts1` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `fk_likes_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (25,13,29,59),(28,78,38,87),(35,48,81,79),(1,53,55,85),(22,91,58,11),(76,1,46,66),(81,73,25,24),(18,88,4,43),(100,33,1,28),(10,38,14,45),(86,95,23,87),(47,77,71,69),(68,29,79,43),(29,25,8,9),(97,33,33,15),(20,37,57,20),(69,58,48,79),(95,62,23,80),(57,45,66,3),(22,37,71,89),(65,50,32,93),(75,40,2,72),(72,35,87,92),(71,43,12,39),(100,60,18,95),(21,40,74,77),(85,40,80,6),(76,51,95,40),(100,27,33,74),(66,35,46,38),(69,32,29,39),(75,41,78,75),(100,95,69,21),(35,43,97,19),(82,77,25,57),(27,20,97,26),(46,30,100,11),(64,46,48,32),(77,77,71,51),(18,48,26,17),(43,94,37,77),(37,34,96,18),(10,21,75,36),(40,72,62,85),(1,61,96,65),(6,44,96,83),(21,67,34,38),(15,59,54,57),(53,90,34,89),(23,29,7,33),(49,81,68,88),(53,29,73,53),(90,68,17,96),(12,13,78,32),(80,11,69,94),(70,22,50,22),(12,84,11,35),(12,17,67,61),(98,34,49,50),(62,22,3,52),(89,20,47,100),(32,25,32,11),(36,100,5,5),(22,55,27,33),(38,37,67,50),(53,33,10,50),(67,59,100,29),(80,2,80,69),(21,27,69,53),(51,100,64,86),(99,68,91,20),(22,17,52,59),(53,19,9,6),(52,18,56,18),(77,55,46,56),(56,25,24,77),(52,92,29,2),(91,92,87,89),(60,78,9,82),(94,61,40,47),(79,48,52,30),(66,7,48,42),(61,93,98,17),(18,21,94,69),(12,22,70,3),(14,57,92,74),(34,100,55,28),(61,95,74,39),(43,25,69,8),(32,17,50,93),(9,47,10,27),(67,3,95,79),(25,65,81,38),(22,72,11,56),(72,66,83,32),(60,57,71,2),(82,40,10,13),(56,59,5,65),(6,14,91,73),(16,86,51,40);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int unsigned NOT NULL,
  `media_types_id` int unsigned NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '/files/file.jpg',
  `blob` blob,
  `size` bigint NOT NULL DEFAULT '0',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  KEY `fk_media_users1_idx` (`users_id`),
  KEY `fk_media_media_types1_idx` (`media_types_id`),
  CONSTRAINT `fk_media_media_types1` FOREIGN KEY (`media_types_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `fk_media_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,88,2,'dotm',NULL,NULL,4810396,NULL),(2,10,3,'pbm',NULL,NULL,1768,NULL),(3,15,2,'mathml',NULL,NULL,142,NULL),(4,77,1,'rtf',NULL,NULL,2,NULL),(5,56,1,'pgm',NULL,NULL,409754513,NULL),(6,28,1,'xltx',NULL,NULL,64099754,NULL),(7,25,2,'xvml',NULL,NULL,652547,NULL),(8,36,2,'ustar',NULL,NULL,647811,NULL),(9,70,2,'obd',NULL,NULL,15,NULL),(10,58,3,'mng',NULL,NULL,1114,NULL),(11,89,3,'appcache',NULL,NULL,2403753,NULL),(12,95,3,'oti',NULL,NULL,4,NULL),(13,43,2,'kpxx',NULL,NULL,6743,NULL),(14,30,1,'xop',NULL,NULL,7487836,NULL),(15,72,2,'air',NULL,NULL,712565703,NULL),(16,13,2,'rtx',NULL,NULL,902587,NULL),(17,81,1,'fli',NULL,NULL,0,NULL),(18,50,3,'mvb',NULL,NULL,509,NULL),(19,76,1,'xbap',NULL,NULL,4,NULL),(20,15,1,'class',NULL,NULL,0,NULL),(21,60,2,'pdf',NULL,NULL,0,NULL),(22,34,3,'stf',NULL,NULL,933698286,NULL),(23,8,3,'conf',NULL,NULL,981133,NULL),(24,31,3,'mmf',NULL,NULL,40686417,NULL),(25,33,3,'fig',NULL,NULL,2563,NULL),(26,54,1,'vst',NULL,NULL,65419643,NULL),(27,62,2,'odi',NULL,NULL,58735,NULL),(28,1,1,'esf',NULL,NULL,77,NULL),(29,98,1,'movie',NULL,NULL,924347,NULL),(30,25,3,'7z',NULL,NULL,9,NULL),(31,75,2,'npx',NULL,NULL,81372,NULL),(32,28,2,'semf',NULL,NULL,0,NULL),(33,60,3,'odf',NULL,NULL,0,NULL),(34,51,2,'thmx',NULL,NULL,82475,NULL),(35,4,2,'wml',NULL,NULL,7154958,NULL),(36,66,2,'xlsb',NULL,NULL,99966,NULL),(37,8,3,'crd',NULL,NULL,79782094,NULL),(38,48,1,'tiff',NULL,NULL,139,NULL),(39,68,3,'123',NULL,NULL,0,NULL),(40,92,3,'ods',NULL,NULL,8443,NULL),(41,67,2,'pkipath',NULL,NULL,95,NULL),(42,21,1,'pptm',NULL,NULL,0,NULL),(43,94,1,'vcard',NULL,NULL,860062896,NULL),(44,32,3,'kpxx',NULL,NULL,0,NULL),(45,51,2,'ogx',NULL,NULL,1,NULL),(46,59,1,'csv',NULL,NULL,0,NULL),(47,93,3,'vsf',NULL,NULL,8336,NULL),(48,81,2,'rm',NULL,NULL,703838,NULL),(49,63,1,'sbml',NULL,NULL,9781453,NULL),(50,86,2,'dmp',NULL,NULL,8,NULL),(51,96,2,'docm',NULL,NULL,4638,NULL),(52,30,1,'dwg',NULL,NULL,0,NULL),(53,51,3,'hlp',NULL,NULL,87212269,NULL),(54,18,1,'movie',NULL,NULL,43650,NULL),(55,56,1,'ahead',NULL,NULL,9,NULL),(56,18,1,'opml',NULL,NULL,0,NULL),(57,55,2,'oth',NULL,NULL,708144,NULL),(58,50,2,'x3d',NULL,NULL,29919950,NULL),(59,58,3,'pgn',NULL,NULL,7,NULL),(60,38,1,'ustar',NULL,NULL,431805789,NULL),(61,36,3,'mts',NULL,NULL,44343641,NULL),(62,34,1,'vxml',NULL,NULL,13474,NULL),(63,82,1,'bed',NULL,NULL,49879,NULL),(64,80,2,'musicxml',NULL,NULL,71503,NULL),(65,45,2,'vcx',NULL,NULL,28,NULL),(66,11,2,'odt',NULL,NULL,0,NULL),(67,17,2,'mets',NULL,NULL,487088,NULL),(68,43,3,'m2v',NULL,NULL,35289354,NULL),(69,18,2,'fpx',NULL,NULL,821323642,NULL),(70,85,3,'svd',NULL,NULL,38001,NULL),(71,70,1,'kar',NULL,NULL,1,NULL),(72,96,1,'vis',NULL,NULL,825,NULL),(73,39,2,'xml',NULL,NULL,0,NULL),(74,72,3,'fbs',NULL,NULL,0,NULL),(75,26,1,'s',NULL,NULL,5868,NULL),(76,6,2,'sitx',NULL,NULL,0,NULL),(77,6,2,'thmx',NULL,NULL,63414026,NULL),(78,90,3,'wav',NULL,NULL,866914939,NULL),(79,54,3,'sgml',NULL,NULL,0,NULL),(80,32,3,'odp',NULL,NULL,486503459,NULL),(81,35,2,'obj',NULL,NULL,54,NULL),(82,38,2,'wmls',NULL,NULL,3,NULL),(83,82,3,'iif',NULL,NULL,590821,NULL),(84,18,3,'otc',NULL,NULL,637513038,NULL),(85,41,1,'kfo',NULL,NULL,590579,NULL),(86,73,1,'xlsb',NULL,NULL,0,NULL),(87,4,3,'fh',NULL,NULL,9,NULL),(88,35,2,'xlsm',NULL,NULL,1,NULL),(89,13,1,'gramps',NULL,NULL,26666,NULL),(90,38,2,'wvx',NULL,NULL,942501,NULL),(91,15,2,'fvt',NULL,NULL,28714503,NULL),(92,99,1,'ogv',NULL,NULL,834,NULL),(93,83,3,'xhtml',NULL,NULL,4918766,NULL),(94,7,2,'xlsx',NULL,NULL,586215802,NULL),(95,57,2,'xltm',NULL,NULL,1,NULL),(96,34,3,'tif',NULL,NULL,11,NULL),(97,80,3,'vcf',NULL,NULL,670926,NULL),(98,42,2,'crt',NULL,NULL,49527723,NULL),(99,52,2,'ott',NULL,NULL,7,NULL),(100,61,3,'nbp',NULL,NULL,25,NULL);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'audio'),(2,'img'),(3,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_users_id` int unsigned NOT NULL,
  `to_users_id` int unsigned NOT NULL,
  `text` varchar(245) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from_users_idx` (`from_users_id`),
  KEY `fk_messages_users1_idx` (`to_users_id`),
  KEY `fk_messages_media1_idx` (`media_id`),
  CONSTRAINT `fk_messages_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_messages_users_from` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_users_to` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,90,54,'Delectus et voluptas aut porro.',89,'2015-08-22 22:11:54','0000-00-00 00:00:00','2003-07-28 00:14:03'),(2,68,83,'Quam in maiores neque nihil vitae praesentium non.',75,'1973-01-13 00:10:38','0000-00-00 00:00:00','2015-09-23 08:49:15'),(3,50,95,'Ex ut autem ducimus saepe ullam.',49,'2004-12-20 08:04:35','0000-00-00 00:00:00','1999-10-29 09:00:26'),(4,61,60,'Ullam deserunt explicabo unde dolorem sint dolores.',26,'1976-04-12 01:36:28','2012-01-26 05:57:24','1980-01-22 14:21:47'),(5,89,40,'Omnis dignissimos assumenda ullam nisi voluptatibus.',20,'1992-10-02 22:57:02','1977-01-04 10:40:22','2019-11-05 03:03:01'),(6,90,15,'Temporibus id officiis sed ea dolorum quasi est at.',79,'1988-07-03 19:15:01','1999-09-29 19:24:00','0000-00-00 00:00:00'),(7,88,58,'Error qui molestiae explicabo ut rerum sed quis.',68,'2006-11-01 20:09:12','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,29,43,'Aut est necessitatibus aliquid excepturi.',38,'1992-08-13 05:57:29','1982-02-03 12:11:59','1970-10-26 07:30:15'),(9,100,26,'Natus repellat porro et.',44,'2014-01-25 18:14:50','0000-00-00 00:00:00','2013-10-18 07:29:39'),(10,49,27,'Quia iusto eaque quae ipsa.',88,'2014-05-06 22:56:11','1995-03-10 14:45:06','1985-05-19 12:32:41'),(11,80,17,'Et corrupti pariatur et officiis occaecati et.',41,'1994-01-06 13:50:12','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,69,85,'Accusantium suscipit et ipsam ut.',23,'2011-06-16 02:36:00','0000-00-00 00:00:00','1981-04-03 14:44:31'),(13,43,35,'Est facere est quia sit voluptatem reprehenderit.',18,'2006-11-05 08:52:59','0000-00-00 00:00:00','1978-11-08 22:15:58'),(14,92,95,'Omnis recusandae perspiciatis quaerat molestiae.',78,'1998-07-03 21:03:34','1996-08-18 09:24:40','0000-00-00 00:00:00'),(15,17,83,'Consequatur illum sed vel eius repellendus.',17,'1990-01-15 00:07:41','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,36,73,'Explicabo nihil molestiae iure est enim ut.',31,'2017-08-21 20:25:27','0000-00-00 00:00:00','1981-06-08 14:31:05'),(17,15,61,'Qui est iusto rerum dolorum et non eveniet.',89,'1977-01-30 12:28:56','2018-08-19 18:53:03','0000-00-00 00:00:00'),(18,82,90,'Deleniti in repellendus odio.',32,'2006-10-15 01:07:18','0000-00-00 00:00:00','1981-07-25 11:34:27'),(19,20,89,'Quae nam ea sint consequatur perferendis.',58,'1972-05-10 21:24:18','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,63,38,'Sint excepturi voluptas minus architecto aspernatur sit.',85,'2019-09-16 06:15:22','0000-00-00 00:00:00','2003-01-12 07:19:58'),(21,51,17,'Quis aut non possimus magni.',2,'2015-05-30 11:24:17','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,92,86,'Ut et nihil sit cupiditate.',86,'2012-06-27 16:01:12','0000-00-00 00:00:00','1977-12-28 12:01:06'),(23,15,28,'Quos a est deserunt.',20,'1995-07-29 09:21:45','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,32,19,'Culpa ab ea enim aut animi deserunt ratione hic.',15,'1996-01-10 14:26:47','2019-04-24 11:00:32','0000-00-00 00:00:00'),(25,10,36,'Iste ipsa totam commodi.',97,'1981-07-03 18:19:29','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,26,72,'Non et illo facilis magnam quo facere.',70,'1994-07-31 17:11:55','0000-00-00 00:00:00','2011-12-26 01:10:02'),(27,57,86,'Sit qui aliquam ipsum.',31,'1993-09-03 07:25:11','0000-00-00 00:00:00','1978-12-12 14:15:42'),(28,46,68,'Exercitationem ullam dicta et fugiat reprehenderit non asperiores.',20,'2009-02-17 08:12:08','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,77,87,'Incidunt nesciunt porro quo doloribus qui quisquam.',9,'1997-11-17 12:30:06','1987-01-24 17:53:49','0000-00-00 00:00:00'),(30,34,50,'Explicabo et quo eum omnis repellat alias saepe.',46,'2018-04-09 03:48:40','1971-09-29 06:49:31','2016-06-28 16:08:05'),(31,18,100,'Dolorum saepe aspernatur quia accusantium.',63,'1988-12-07 23:32:15','1976-02-09 18:20:56','1991-06-27 12:09:16'),(32,19,91,'Dicta voluptas occaecati quia exercitationem corporis aliquam officiis.',48,'2011-07-29 14:30:25','1988-05-11 19:50:24','2003-03-22 08:13:16'),(33,5,5,'Enim occaecati debitis sequi iure.',76,'2018-10-01 08:39:12','1985-11-03 15:05:45','0000-00-00 00:00:00'),(34,25,37,'Dolorem commodi ut sed a assumenda fugiat a magnam.',95,'1993-11-06 04:32:08','1986-01-11 11:18:46','0000-00-00 00:00:00'),(35,39,46,'Quia odio quos necessitatibus.',30,'1985-05-28 17:02:10','0000-00-00 00:00:00','2001-06-19 10:51:23'),(36,36,72,'Voluptas veritatis consequuntur saepe atque et.',2,'1986-10-30 07:43:23','1999-01-20 01:25:09','1995-04-06 07:35:46'),(37,5,28,'Et in fugit qui ea quibusdam et.',88,'1989-02-09 20:59:15','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,36,74,'Non cupiditate dolor porro deserunt ipsam ipsam ex.',55,'1998-01-05 04:55:23','1992-09-16 16:03:36','1978-02-08 19:13:04'),(39,55,50,'Cum et at fugit ut asperiores.',41,'1985-08-11 03:32:22','1972-10-04 13:10:51','0000-00-00 00:00:00'),(40,63,84,'Quia quas facilis sit distinctio.',91,'1979-10-28 10:31:21','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,9,2,'Similique nemo nihil fuga qui impedit rerum quo.',90,'1994-12-18 17:11:09','2014-05-18 18:23:32','0000-00-00 00:00:00'),(42,71,21,'Numquam et consequatur odio non.',81,'1974-08-23 02:13:46','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,19,26,'Reiciendis quidem est omnis dolore ratione autem aut.',86,'2001-03-17 08:11:36','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,94,50,'Aut eaque blanditiis possimus.',22,'2017-06-19 03:28:21','2013-02-09 14:00:30','1970-01-22 11:24:18'),(45,88,88,'Iure et quae expedita eum.',68,'2020-04-23 12:54:10','2002-12-28 11:21:02','0000-00-00 00:00:00'),(46,18,23,'Sit fuga ut magni sequi.',39,'1992-04-14 23:47:44','2010-11-21 18:05:07','1973-03-11 03:05:54'),(47,19,28,'Perferendis error error similique consequatur neque et pariatur.',67,'1971-12-15 04:39:32','2000-08-05 08:09:26','0000-00-00 00:00:00'),(48,6,63,'Consequatur et doloribus expedita expedita et voluptatem.',40,'1996-11-30 20:23:29','0000-00-00 00:00:00','1997-01-04 01:15:43'),(49,60,18,'Pariatur temporibus quo quisquam quidem labore eveniet aliquid.',90,'2011-03-18 05:38:53','0000-00-00 00:00:00','1989-09-06 07:40:02'),(50,1,81,'Quas nemo voluptatem repellendus.',74,'1973-05-25 01:53:08','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,91,89,'Enim odio voluptas similique dolorem.',76,'1990-07-05 22:08:31','1981-08-12 04:29:23','0000-00-00 00:00:00'),(52,81,60,'Et et in aut facere repellat sunt.',96,'1976-04-06 19:50:41','1992-09-25 09:57:12','0000-00-00 00:00:00'),(53,61,78,'Necessitatibus amet et et sunt voluptas minima ut ut.',21,'1999-04-26 06:58:14','1999-12-23 07:49:31','0000-00-00 00:00:00'),(54,46,71,'Dolorum ut adipisci eaque quidem vitae debitis.',71,'1981-05-12 21:29:22','0000-00-00 00:00:00','1981-12-29 18:49:30'),(55,68,59,'Consectetur et sed quo eligendi recusandae veritatis.',58,'2002-10-27 23:49:50','2012-06-19 08:25:31','0000-00-00 00:00:00'),(56,36,76,'Culpa recusandae exercitationem qui iure iure dolor consectetur.',81,'1991-03-31 23:49:39','1975-09-12 22:04:30','0000-00-00 00:00:00'),(57,74,94,'Earum minima quam doloremque molestiae laboriosam sed quo.',8,'1992-08-16 13:01:59','2000-09-09 16:38:50','0000-00-00 00:00:00'),(58,41,100,'Voluptatem aut sint et facere.',71,'1977-05-11 06:40:59','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,81,60,'Qui doloremque enim nobis laboriosam dolor in.',88,'2004-08-25 14:42:23','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,71,61,'Eum eligendi necessitatibus libero.',68,'1998-11-29 13:49:04','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,44,51,'Assumenda aut cum fugiat aut totam fugit.',57,'1988-11-28 13:41:50','1997-12-08 13:02:57','2006-02-09 15:52:07'),(62,19,32,'Sit eveniet enim quia praesentium aut.',16,'2019-04-21 07:45:09','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,15,92,'Eius id eos nobis debitis magnam.',94,'2007-02-14 09:34:57','1997-02-05 16:40:18','0000-00-00 00:00:00'),(64,36,38,'Autem magni quasi mollitia cum in.',65,'1994-06-14 22:39:31','0000-00-00 00:00:00','1990-07-29 22:01:55'),(65,6,6,'Eos maxime mollitia quia magnam odit necessitatibus pariatur.',23,'2019-05-09 19:28:34','1995-12-25 12:11:44','1985-05-04 21:48:33'),(66,64,41,'Omnis ipsum laudantium rem fuga.',98,'2020-07-29 11:15:14','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,44,15,'Inventore necessitatibus voluptatem et quis nam placeat accusamus facere.',92,'2001-10-20 10:52:41','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,52,55,'Quas sint voluptatibus voluptate et sint quam.',92,'2019-08-09 05:59:23','2011-06-01 07:14:28','2001-04-25 11:33:25'),(69,22,36,'Soluta velit sunt repudiandae inventore et reprehenderit.',51,'1996-08-18 19:38:56','1994-07-29 05:33:56','0000-00-00 00:00:00'),(70,9,6,'Eos a quibusdam quibusdam doloremque dolores ullam voluptatem.',11,'2011-02-07 23:30:29','0000-00-00 00:00:00','1988-01-29 02:07:45'),(71,77,50,'Eum nemo ipsum perferendis odio ut.',62,'2000-11-15 09:13:59','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,33,69,'Et laborum totam sunt.',93,'1994-10-14 21:26:54','0000-00-00 00:00:00','1991-12-01 15:59:50'),(73,49,84,'Quae non dolor eius sequi quod quidem.',85,'1991-05-22 08:37:12','1987-05-29 17:17:46','0000-00-00 00:00:00'),(74,42,19,'Hic ad ullam qui est autem officia.',23,'1987-06-17 19:13:34','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,6,25,'Iure commodi eveniet rerum saepe.',28,'2005-03-07 14:27:56','1987-01-29 02:23:01','1997-09-25 10:05:00'),(76,29,88,'Quia doloremque architecto est rerum est aliquam ratione.',69,'2011-04-18 06:37:10','2001-03-06 18:37:52','1994-07-08 16:46:35'),(77,26,31,'Dolor alias illum non quibusdam est.',83,'1994-06-15 10:23:47','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,18,82,'Cumque aperiam optio qui eaque tenetur rerum.',38,'2008-04-29 23:04:58','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,9,4,'Repellat voluptatem maxime velit eos.',74,'1985-03-13 14:55:40','2006-05-14 13:34:49','1986-04-16 06:11:40'),(80,59,13,'Quasi cupiditate consectetur aliquid sint consequuntur.',79,'2010-06-17 15:09:37','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,70,89,'Error cupiditate saepe rem et libero voluptatem aspernatur ut.',29,'2009-07-29 10:10:20','1987-07-03 21:54:38','0000-00-00 00:00:00'),(82,31,22,'Molestiae praesentium cum illo eum.',97,'1996-08-16 02:14:43','1995-01-13 07:18:35','0000-00-00 00:00:00'),(83,24,70,'Iste non et tenetur quam aut laboriosam in praesentium.',80,'1990-05-15 06:04:26','0000-00-00 00:00:00','1975-05-06 05:54:26'),(84,8,12,'Impedit placeat tenetur officia ea explicabo.',99,'1991-05-15 09:41:09','1989-09-13 18:27:48','1983-03-01 20:45:32'),(85,31,18,'Ut minus beatae autem libero.',23,'1991-06-17 23:58:19','2018-10-21 18:53:19','1989-10-27 01:45:18'),(86,59,46,'Ea blanditiis soluta repellendus.',11,'1988-02-02 04:54:48','2012-12-09 00:21:52','0000-00-00 00:00:00'),(87,27,71,'Quia iusto asperiores omnis facilis provident asperiores.',41,'2006-11-07 09:21:23','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,10,89,'Eum optio similique non voluptatem.',23,'1988-09-07 12:09:54','2016-07-08 17:33:20','1981-06-26 07:33:48'),(89,48,97,'Ducimus et magni vitae molestias aut officia.',26,'1970-10-23 03:49:28','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,21,56,'Sapiente et aut et at ipsa eligendi et.',38,'1989-04-28 14:09:36','1979-08-18 06:24:57','1978-10-07 10:37:28'),(91,100,25,'Et quo ratione qui.',27,'1997-07-10 03:08:44','2001-11-25 13:22:49','0000-00-00 00:00:00'),(92,28,56,'Facere iste aut dolorem molestiae tempora.',48,'1993-12-30 06:47:57','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,25,79,'Repudiandae exercitationem ipsa nobis qui voluptates molestias et.',18,'1970-01-29 15:52:31','1989-08-21 16:09:30','2007-05-04 12:15:17'),(94,5,87,'Sunt aut voluptas explicabo at veniam et rem atque.',29,'2007-08-28 15:09:06','2013-01-25 04:01:13','1972-05-09 15:53:38'),(95,3,17,'Ad architecto veritatis qui eos at.',47,'2018-09-24 16:45:19','1984-06-18 21:55:03','0000-00-00 00:00:00'),(96,26,75,'Non molestiae quis consequatur ab sunt assumenda suscipit.',92,'2011-02-21 07:26:12','0000-00-00 00:00:00','1982-02-04 18:04:43'),(97,36,2,'Molestiae ipsum rem dolorum repellendus sit distinctio dolores.',63,'2007-01-09 21:36:56','1995-08-25 05:32:37','0000-00-00 00:00:00'),(98,77,11,'Ducimus nobis neque repudiandae ut velit rerum perspiciatis.',51,'2010-06-01 15:45:05','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,99,58,'Dolores aut minus voluptatibus rerum corporis.',48,'1980-05-15 04:07:29','0000-00-00 00:00:00','2018-07-12 09:45:47'),(100,24,79,'Omnis asperiores et tempora dolor ut.',3,'2005-12-30 09:34:51','0000-00-00 00:00:00','1982-05-07 05:46:37');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int unsigned NOT NULL,
  `communities_id` int unsigned DEFAULT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `media_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_posts_users1_idx` (`users_id`),
  KEY `fk_posts_communities1_idx` (`communities_id`),
  KEY `fk_posts_media1_idx` (`media_id`),
  CONSTRAINT `fk_posts_communities1` FOREIGN KEY (`communities_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_posts_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_posts_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,31,5,'Dolores in quasi rerum et dicta explicabo quos.',48,'1980-04-19 15:36:02'),(2,74,10,'Ea vel quia consequuntur quia dolor.',60,'1996-06-27 09:48:40'),(3,75,4,'Eius officia id et dignissimos error nesciunt ratione.',87,'1972-05-17 08:07:02'),(4,5,5,'Aperiam qui voluptate consequatur laudantium minus et velit.',63,'1984-04-23 14:56:23'),(5,82,7,'Itaque at repellat ut et.',43,'1994-07-06 16:36:30'),(6,4,1,'Id molestiae porro reprehenderit voluptatibus incidunt rerum.',23,'2016-08-21 18:48:26'),(7,93,1,'Ea facilis labore saepe et sint accusantium qui.',98,'1995-10-11 20:32:17'),(8,81,10,'Saepe quia rerum cupiditate voluptas eaque velit perspiciatis.',77,'2007-08-15 16:08:39'),(9,56,2,'Quo quis qui dolor ut explicabo.',68,'1987-11-28 03:10:19'),(10,16,6,'Sed eum consequatur aut fuga dolore aut.',69,'1973-08-09 20:51:00'),(11,69,9,'Fugit provident corporis enim ut suscipit ut.',13,'1974-02-10 23:53:53'),(12,17,7,'Cum accusamus vel velit odio.',13,'2012-03-14 12:48:47'),(13,76,4,'Atque velit quia quasi.',50,'1983-05-05 18:21:23'),(14,63,4,'Assumenda et et voluptas qui.',94,'1978-05-26 18:35:33'),(15,26,3,'Amet nostrum fuga vero rerum voluptatem dolorem.',58,'2013-11-23 10:01:20'),(16,68,3,'Sit nulla animi blanditiis.',64,'1981-06-21 08:27:22'),(17,91,2,'Pariatur omnis ratione beatae perferendis a qui facere.',68,'1997-04-07 03:47:36'),(18,88,10,'Eligendi repudiandae ratione praesentium sint ipsum sed.',61,'1987-09-29 18:55:30'),(19,65,6,'Est id eveniet dolorem veritatis consequatur.',72,'1978-09-22 20:02:13'),(20,32,7,'Omnis blanditiis ad et dolorum quas magni debitis.',29,'1989-06-20 03:47:43'),(21,1,4,'Earum ducimus dolor debitis doloremque facere iusto non.',16,'2005-04-01 10:52:08'),(22,14,6,'Dicta quo eligendi vel.',77,'2017-10-02 09:58:54'),(23,26,3,'Quia sunt atque autem quo.',13,'1993-05-25 16:55:33'),(24,75,10,'Vitae rerum cumque rerum pariatur.',53,'1984-05-26 15:43:52'),(25,69,2,'Omnis fugiat laudantium qui blanditiis explicabo mollitia non.',74,'1971-06-03 09:42:21'),(26,26,9,'Dicta vel sed nisi maiores.',99,'2013-05-15 09:57:12'),(27,90,8,'Ipsa recusandae minus natus alias.',16,'1990-10-30 08:17:56'),(28,58,7,'Suscipit aut qui excepturi adipisci mollitia animi sed nemo.',13,'2005-02-26 03:49:27'),(29,19,3,'Quae ut similique blanditiis molestiae repellendus illo.',66,'1986-06-24 02:10:41'),(30,90,6,'Nostrum exercitationem corrupti molestiae tempore quibusdam.',34,'2009-07-31 15:28:43'),(31,18,6,'Suscipit officia maxime voluptas commodi et aut quis.',71,'1980-12-07 17:36:26'),(32,34,8,'Natus necessitatibus delectus fugit libero aspernatur quas.',24,'1989-06-11 04:18:16'),(33,11,10,'Corporis asperiores ut quasi est nam tempore.',53,'1993-10-18 12:31:41'),(34,24,8,'Nihil distinctio non excepturi fugit sapiente et non ea.',44,'1984-05-02 20:22:28'),(35,76,5,'Velit et saepe qui voluptatum.',60,'2015-08-13 02:41:11'),(36,50,7,'Hic impedit dolor numquam.',44,'2009-06-13 15:32:27'),(37,49,6,'Id tempora voluptates pariatur eveniet tempore numquam.',18,'1985-06-06 17:36:30'),(38,64,2,'Et veniam aspernatur cupiditate corporis.',80,'1973-10-12 02:39:14'),(39,77,4,'Harum odio sed sint est ut aut minima est.',6,'2018-10-10 13:33:36'),(40,42,3,'Sapiente velit et quia omnis id sit.',65,'2006-04-07 05:42:51'),(41,75,4,'Quam ut commodi magni officia consectetur.',24,'1983-09-15 18:15:28'),(42,46,8,'Ullam animi dolorem in corporis aut unde.',97,'2008-01-26 20:49:57'),(43,69,9,'Repudiandae asperiores optio modi quia quia cum non.',95,'1973-02-09 20:03:13'),(44,21,1,'Eos quae ut omnis temporibus.',67,'2002-12-03 21:45:56'),(45,65,9,'Voluptas odio ad sunt non earum magnam iusto in.',8,'1977-11-22 09:18:57'),(46,24,4,'Occaecati quae repellat expedita quia veniam.',76,'2004-02-07 00:40:06'),(47,67,8,'Ex facere ex ut velit illum.',32,'2011-09-02 03:51:13'),(48,85,5,'Dolorum expedita cumque possimus sunt vitae aperiam.',46,'1977-06-22 22:23:02'),(49,64,2,'Ut molestiae deleniti eum minus nobis.',78,'1987-10-27 09:49:57'),(50,69,7,'Officiis sit ratione omnis molestiae.',99,'1996-04-25 17:42:50'),(51,34,4,'Necessitatibus officiis cum nisi a.',39,'1996-09-08 00:00:33'),(52,58,9,'Debitis dolores voluptatum fugiat distinctio nobis temporibus.',11,'2013-05-18 07:53:09'),(53,54,5,'Distinctio voluptatem eveniet est et.',95,'1985-12-17 21:54:18'),(54,48,8,'Aut aliquam et temporibus doloremque vero dolore similique.',1,'2019-01-05 15:45:10'),(55,15,4,'Id molestiae enim repellendus dignissimos quos officiis qui eum.',84,'1981-01-06 23:40:53'),(56,23,6,'Numquam id et odit eligendi minus quo.',16,'1999-07-09 03:43:12'),(57,98,3,'Et harum ut eos et.',95,'1988-04-05 08:00:19'),(58,30,1,'Magni optio reprehenderit voluptatem omnis pariatur esse sed.',39,'2011-11-19 08:15:15'),(59,75,8,'Magni est vel maxime ad labore explicabo fuga.',58,'1977-04-26 06:40:10'),(60,53,5,'Ratione ea accusamus magni sint.',19,'1982-06-17 07:29:17'),(61,52,8,'Dolor dolores porro similique ratione beatae.',54,'1978-04-13 07:42:58'),(62,90,4,'Id tenetur placeat animi occaecati nobis nobis.',35,'1973-10-18 22:16:53'),(63,1,9,'Earum dignissimos et voluptates quisquam.',84,'2005-03-28 17:36:35'),(64,96,4,'Id quia sed illo sunt iusto in.',55,'1987-05-10 05:52:56'),(65,96,5,'Dolor delectus mollitia fugit architecto occaecati corrupti aliquam.',89,'1998-08-05 16:44:06'),(66,80,8,'Perferendis at ipsum et quaerat tempora ipsam.',47,'1990-02-15 18:13:12'),(67,95,7,'Perferendis commodi sapiente ratione ea qui praesentium velit.',72,'1996-11-02 04:32:31'),(68,90,10,'Cumque blanditiis ut error placeat est maiores fuga consequatur.',82,'2009-10-26 11:10:02'),(69,28,8,'Voluptas voluptatem sit eos autem velit fugiat ratione.',54,'1986-10-16 06:10:29'),(70,85,3,'Quos saepe reiciendis consequatur vitae reiciendis.',95,'1977-12-12 08:02:50'),(71,4,8,'Ut quas voluptas rerum nisi iure.',70,'2017-01-16 15:30:16'),(72,58,7,'Asperiores voluptates esse enim fugit eaque.',2,'1975-05-13 21:41:59'),(73,92,7,'Accusantium sed et rerum molestias.',88,'2005-08-28 04:04:54'),(74,76,7,'Et non unde autem qui vel similique.',21,'2007-02-07 16:54:34'),(75,30,6,'Omnis eos dicta laudantium.',70,'2017-08-15 09:28:31'),(76,19,4,'Libero eaque non nesciunt voluptas vitae excepturi.',40,'1990-08-19 22:28:11'),(77,66,4,'Eum voluptatibus sed dolor quia itaque nisi.',8,'2010-03-02 17:07:45'),(78,37,2,'Est excepturi minus tempora a quo eos quos.',5,'2008-12-19 05:57:02'),(79,19,5,'Possimus eligendi sit neque labore quam fuga.',78,'2005-05-19 19:14:01'),(80,72,4,'Recusandae est sit dolor et ea maxime ullam qui.',2,'2000-12-17 02:27:50'),(81,67,4,'Tempore aut qui dolor beatae enim nobis ea.',79,'1999-09-14 12:07:32'),(82,37,10,'Quae voluptate sit a qui.',45,'1999-09-22 14:31:18'),(83,38,9,'Laborum pariatur nulla et.',11,'2017-01-10 05:57:47'),(84,26,7,'Ab excepturi architecto quia temporibus sunt maxime voluptates.',73,'1979-06-20 11:48:33'),(85,47,10,'Asperiores perspiciatis qui inventore nisi et.',31,'2013-05-30 09:02:04'),(86,16,1,'Sunt nobis eos omnis tempora ea vel aut atque.',67,'1977-01-13 09:53:39'),(87,55,8,'Nisi enim aliquam vel suscipit aut.',98,'1992-03-14 03:16:56'),(88,63,2,'Illum natus animi autem quam est voluptas.',18,'2018-01-19 19:32:29'),(89,68,3,'Porro sunt debitis excepturi incidunt sunt est.',65,'2012-12-13 13:22:55'),(90,45,1,'Dolorum cupiditate saepe non reiciendis ex quia dolore.',97,'1989-04-23 20:09:28'),(91,47,7,'Dolores corporis magnam maiores illum modi blanditiis libero sed.',33,'2009-10-10 20:59:35'),(92,25,1,'Vitae pariatur iste ex omnis atque commodi.',25,'2000-10-15 04:09:13'),(93,69,5,'Labore reprehenderit explicabo adipisci reiciendis sint eos qui.',10,'1997-02-12 13:15:05'),(94,80,7,'Nostrum eos eaque ex excepturi voluptatem error cum.',70,'1978-02-15 14:55:45'),(95,52,2,'Placeat vitae laudantium maiores voluptatum cum omnis non reiciendis.',60,'1972-04-28 16:08:19'),(96,82,3,'Maxime fugit saepe voluptas.',69,'1973-03-10 05:51:09'),(97,49,9,'Veniam dolorum vel qui rerum.',42,'2020-06-22 12:02:14'),(98,47,5,'Ut quisquam eum aut voluptatem.',53,'1994-10-04 06:47:49'),(99,65,2,'Est doloremque iure sed facilis optio cupiditate et.',82,'2018-07-28 13:57:07'),(100,30,6,'Nesciunt sit et perspiciatis exercitationem illum doloribus repellat id.',82,'1970-05-24 23:27:56');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `users_id` int unsigned NOT NULL,
  `gender` enum('m','f','x') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(245) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`users_id`),
  KEY `fk_profiles_users_idx` (`users_id`),
  KEY `fk_profiles_media1_idx` (`photo_id`),
  CONSTRAINT `fk_profiles_media1` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profiles_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'f','2018-07-05','44905 Jack River Apt. 800\nNorth Rodrickborough, NM 19410-5031',18,'1979-02-28 23:31:08'),(2,'m','1972-03-12','739 Carroll Bridge Apt. 896\nPort Prudenceview, MT 09366-1929',77,'1990-07-17 02:36:23'),(3,'m','1982-04-29','6808 Goldner Extension\nHassiemouth, ND 86665',76,'1997-10-04 23:51:13'),(4,'f','2018-05-05','413 Leopold Mission Apt. 382\nLabadiefurt, FL 00648-4014',67,'1997-01-23 19:09:33'),(5,'f','2013-05-07','591 Homenick Knolls Apt. 724\nNorth Sheldon, AK 02869-8312',88,'2016-11-23 10:48:43'),(6,'f','1992-09-08','8369 Romaguera Spurs\nHarberfort, ME 81565',24,'1984-06-14 10:06:27'),(7,'m','1999-02-05','47725 Reynolds Mall Suite 802\nGrimesport, SC 28438',72,'1980-05-16 12:17:33'),(8,'m','2010-11-12','610 Carissa Villages\nPort Lucienneborough, GA 61396',33,'1981-04-18 14:57:05'),(9,'f','1999-10-02','44256 Mathilde Locks Suite 326\nSouth Simeon, ME 81790-8496',77,'2007-03-23 00:04:52'),(10,'m','1974-12-02','4684 Annabelle Cliffs Suite 337\nEdgarport, NV 19949',82,'2016-09-30 15:04:40'),(11,'f','2010-07-24','8893 Addison Bridge Apt. 194\nWest Lucianoview, NJ 64245-0794',5,'1998-09-02 10:55:27'),(12,'f','1987-12-21','8803 Ernser Street\nEmardtown, MS 67856-5787',79,'2005-01-01 18:55:32'),(13,'m','1974-04-04','8882 Hermann Parkways Apt. 698\nLake Leeshire, NM 82289',97,'1981-02-07 17:26:50'),(14,'f','1973-06-11','797 Bogan Valley\nSchadenfurt, GA 02629',89,'2016-09-30 11:31:00'),(15,'f','1999-10-22','1013 Elisa Island Suite 130\nLake Rubyhaven, NE 93451-2684',61,'2016-12-15 23:35:53'),(16,'f','1994-10-13','2167 Feil Avenue Apt. 467\nAliceton, HI 84402-1168',98,'1977-07-24 10:33:13'),(17,'f','1980-01-11','1726 Frami Circles\nWest Kamryn, AK 35207-2028',63,'2013-05-01 12:01:23'),(18,'f','2013-01-06','2400 Violette Villages\nHermannside, CT 28854',47,'2014-07-26 11:38:43'),(19,'f','1973-01-22','215 Abbott Burgs\nNorth Kariane, WA 60269-8862',36,'2017-10-19 09:05:19'),(20,'m','1991-02-17','754 Ardella Route Apt. 866\nPort Fayefurt, AL 56828-1152',95,'1999-04-08 03:42:36'),(21,'f','2018-03-28','4132 Schimmel Keys Apt. 969\nWest Antwan, CA 04068',36,'1970-11-26 11:00:40'),(22,'f','1996-04-23','77716 Wisoky Falls\nEast Piperport, SD 05368',72,'1991-04-03 03:00:44'),(23,'m','1976-01-18','42568 Konopelski Knoll Suite 770\nHildegardburgh, IL 46542',83,'1997-09-27 06:03:07'),(24,'m','1991-11-21','465 Weissnat Causeway Apt. 832\nLake Branson, NJ 05811-9675',10,'1981-01-22 00:09:22'),(25,'f','1971-12-30','750 Kuphal Dam\nKamrenfort, ND 30323-7291',44,'2007-02-03 00:23:48'),(26,'m','1979-10-11','737 Stiedemann Crest\nSchulistborough, ID 14708-7296',54,'1971-10-31 10:14:54'),(27,'m','2013-04-08','747 Hilpert Course\nNew Gustave, IA 68357-3068',59,'1996-04-13 00:48:31'),(28,'m','2018-10-22','6673 Darrel Green\nCasperside, NC 32254-3801',82,'1988-02-22 23:05:08'),(29,'f','2019-08-15','301 Mayra Extension Apt. 550\nDeltaton, ND 93550',95,'2020-07-31 12:43:17'),(30,'m','1994-02-18','842 Corine Hollow\nSouth Angelafurt, FL 94957',7,'1974-06-18 20:28:25'),(31,'m','1992-07-25','155 Kilback Locks\nPort Mariettamouth, VA 58022-9137',57,'1997-12-19 10:19:32'),(32,'f','1996-05-14','086 Yundt Ranch\nAnselburgh, NJ 91565',12,'1989-12-20 04:18:55'),(33,'f','2014-08-21','168 Connelly Via\nBrakusside, MS 58040-0032',83,'1997-01-13 02:42:27'),(34,'m','2020-03-23','9120 Strosin Orchard Suite 581\nDelbertside, ME 53433',32,'1987-02-25 10:28:48'),(35,'f','1974-11-13','9279 Mable Avenue\nNew Willard, KY 11295-2500',79,'1994-05-17 03:15:14'),(36,'m','2010-02-17','569 Elvis Mountain\nPort Ryann, WI 12071',71,'1997-07-12 06:34:34'),(37,'f','1985-08-25','09700 Hauck Islands Suite 289\nVonRuedenborough, ID 09439',56,'1984-10-23 01:09:16'),(38,'f','2000-02-08','072 Corwin Rapids\nSchoenmouth, NE 77426-0652',51,'1986-04-15 15:48:44'),(39,'m','1977-02-15','7066 Keebler Cape\nSouth Sylviaberg, NV 59506',3,'1971-06-15 01:29:38'),(40,'m','2007-02-24','68752 Dejon Village\nWest Rosamond, UT 96450',33,'1994-07-13 00:07:57'),(41,'f','1986-07-10','1003 Haag Dale Apt. 713\nSouth Daphneside, MD 43570-4842',33,'2012-09-06 21:01:16'),(42,'f','2017-07-22','8340 Kianna Plaza\nLake Ignatiustown, MA 93037',7,'1986-01-29 08:27:02'),(43,'m','1995-03-21','57470 Crist Trafficway\nPort Felicia, OH 81287',11,'1993-08-29 19:31:24'),(44,'f','2012-12-07','6559 Sharon Way Suite 648\nOrtizmouth, MT 67582-4172',30,'1985-10-15 11:21:36'),(45,'m','2009-02-28','11566 Crona Drive Apt. 248\nYvonneberg, WV 76348-1641',96,'2017-01-20 18:07:00'),(46,'f','1995-09-04','9952 Narciso Freeway\nRobertsburgh, MD 74832',72,'1980-09-19 14:26:01'),(47,'m','2000-01-12','9414 Arnold Heights Suite 936\nWest Janickfurt, NJ 47510',28,'2000-11-29 08:39:40'),(48,'m','1981-07-29','95817 Kirlin Square\nSouth Elsie, MS 30250',59,'2001-03-28 14:55:35'),(49,'m','2015-09-10','102 Wisozk Ranch\nLake Raymondfurt, LA 63349-6210',18,'1970-09-10 12:24:06'),(50,'f','2009-01-10','3702 Cayla Hills\nWest Perryfort, OH 94282',63,'2006-09-09 21:56:59'),(51,'f','1993-02-28','71099 Telly Underpass Apt. 038\nDarianchester, CT 45607',53,'2007-08-18 04:59:53'),(52,'f','1989-05-01','1875 Jacobson Fork\nSouth Frida, LA 34347',54,'1996-07-12 09:33:32'),(53,'m','1992-12-07','741 Simonis Junction\nJackelinemouth, AL 79138-2572',34,'2011-06-20 03:12:25'),(54,'m','1995-02-17','246 Ondricka Throughway Suite 940\nWest Emily, SD 38862',36,'1972-04-29 14:05:01'),(55,'f','2019-08-09','2273 Ziemann Keys Suite 997\nWest Grantburgh, DC 27965-6687',63,'2012-10-31 17:11:01'),(56,'m','2015-10-26','35657 Hudson Mills\nWest Geovanny, SC 15693-0295',78,'2017-10-14 01:30:20'),(57,'m','1971-10-01','46882 Jacobi Mountains\nEast Beauburgh, TN 97005',89,'1972-03-27 17:11:25'),(58,'f','2018-02-26','780 Leo Courts\nStephanmouth, IL 00205',22,'2000-05-30 08:30:32'),(59,'m','2015-11-04','5635 Mann Brooks\nBeerbury, TX 99413',60,'2000-01-03 16:45:19'),(60,'m','2006-12-11','16197 Ratke Route\nCydneyland, ID 15823',84,'2011-12-26 04:47:13'),(61,'f','1980-01-22','1385 Harvey Underpass\nPort Tamaramouth, NC 29885-4060',29,'2019-05-24 18:31:22'),(62,'f','1980-01-24','722 Harber Light Suite 661\nPort Sophiamouth, DC 90184-5542',16,'2012-04-09 08:20:37'),(63,'f','2004-12-27','88141 Dallin Run Suite 059\nNew Aldafurt, DE 21915',96,'1988-08-15 10:40:05'),(64,'f','2018-03-16','1941 Hudson Highway\nBechtelarfurt, ID 70989-6318',11,'2005-09-20 01:07:28'),(65,'m','1994-11-05','7682 Catharine Squares Apt. 161\nLake Ritashire, DC 66975',48,'1975-02-26 09:05:59'),(66,'m','2017-03-02','437 Klocko Island Apt. 450\nSouth Toreystad, MN 48838-9919',74,'1988-07-04 18:45:32'),(67,'f','1998-04-25','3250 Herman Fords\nBartellfurt, WV 86803-0142',81,'1996-12-20 05:15:44'),(68,'m','1975-10-04','477 Sporer Dam Suite 921\nLake Christopborough, KS 00615-1174',3,'1992-03-06 17:48:01'),(69,'f','2001-04-09','1267 Britney Square\nRauview, OH 96496',25,'1973-11-08 06:44:43'),(70,'m','1985-11-10','2660 Torp Summit\nPort Andreanneland, ME 72327-5891',84,'2001-12-18 21:29:31'),(71,'m','1974-02-10','5645 Thelma Plaza\nLake Vadaview, NC 98558',35,'1995-03-12 13:41:49'),(72,'m','1987-06-06','87258 Wilburn Drives\nProhaskaburgh, AZ 16336',57,'1974-03-18 21:55:14'),(73,'m','1978-11-13','299 Brown Cape Apt. 425\nSchmittfort, AZ 63058-8217',90,'1982-05-14 02:18:36'),(74,'m','2003-04-05','66746 Rohan Mount Suite 689\nMantehaven, IN 74245',46,'2013-06-08 06:45:29'),(75,'f','2019-03-14','780 Darien Via Apt. 411\nWilmamouth, WY 08528',87,'1995-07-10 17:27:37'),(76,'f','2013-01-28','32906 Bernadine Ford Suite 916\nJaunitafurt, UT 88657-5492',86,'2005-03-05 23:13:03'),(77,'m','1992-01-30','79738 Bashirian Isle Suite 379\nJaskolskistad, NJ 76020',18,'1981-12-09 14:41:59'),(78,'m','1999-11-26','62928 Amira Shores\nSchummbury, OK 16158',14,'1986-09-04 18:02:20'),(79,'f','2008-04-30','2720 Vada Walk\nWest Wardburgh, KS 26990-4732',44,'2011-09-15 07:34:32'),(80,'m','1978-07-10','0935 Terrence Estate Suite 729\nLake Tracyview, KS 33002',36,'1975-06-09 01:42:23'),(81,'f','2010-01-28','740 Amir Radial Apt. 923\nRobbmouth, WA 04074-3049',76,'1981-06-27 07:53:21'),(82,'m','2010-02-03','3623 Weber Valleys\nPacochafurt, VA 16272',97,'1979-10-14 10:50:03'),(83,'f','2001-02-21','3087 Carmen Estate Suite 652\nNorth Dulceview, KS 85485',89,'1975-09-19 12:10:11'),(84,'f','2008-04-27','033 Michelle Walks\nWest Aileenland, RI 37324-3903',10,'1971-06-16 18:25:16'),(85,'m','2016-06-23','486 Zena Crest\nBlockland, NC 51057',32,'1994-07-29 20:35:37'),(86,'f','2008-11-05','467 Leanna Meadow\nGislasonhaven, MS 72999',52,'1982-02-25 02:27:50'),(87,'f','2013-01-06','63541 Laney Fords Suite 800\nEast Annamaefurt, HI 31293-0118',87,'2010-03-13 16:27:23'),(88,'m','1988-09-16','79680 Pascale Mount Apt. 718\nPort Raphaellebury, MO 58503-3244',21,'1982-11-20 19:41:39'),(89,'m','2001-11-28','08639 Sipes Falls\nWeimannfort, KS 91925-5409',73,'1998-03-04 06:44:40'),(90,'m','1996-01-07','8399 Dooley Street\nMedhurstland, DE 34377',46,'2002-05-21 08:58:03'),(91,'f','1973-11-03','06336 Percy Locks Apt. 463\nAnthonyport, MA 44375',5,'1986-02-01 14:32:18'),(92,'m','2020-11-10','493 Bradtke Trace\nTremblayberg, MN 11015',1,'1992-11-19 04:17:51'),(93,'m','1978-12-28','463 Sanford Parks\nSouth Irma, KS 16564',61,'1971-10-26 00:22:46'),(94,'f','1991-02-15','67654 Clyde Stravenue Suite 507\nNorth Gia, DC 12263-3353',100,'2013-05-13 21:46:20'),(95,'f','2020-06-25','9909 Jerome Forest Apt. 923\nSouth Watson, KS 37994',12,'1980-11-11 12:21:22'),(96,'f','1999-10-23','0523 Aliza Unions Suite 661\nHammesfort, RI 94120-2434',8,'1986-10-24 21:07:27'),(97,'f','1988-03-19','2368 Vandervort Ridge\nGerlachburgh, MD 53580',74,'2017-02-22 05:45:26'),(98,'m','1970-05-13','5241 Benjamin Villages\nHomenickshire, TX 88268-8986',93,'2007-11-12 20:44:04'),(99,'f','1989-07-18','935 Koss Locks Suite 250\nCristbury, IL 99576-5047',11,'1970-07-21 07:55:34'),(100,'m','2012-08-18','2731 Diamond Loop Suite 880\nPacochafort, SD 38964',98,'1999-01-10 20:34:37');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(145) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'имя',
  `lastname` varchar(145) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'фамилия',
  `email` varchar(245) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `password_hash` char(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Rebeka','Dicki','dawn17@example.net',79835075421,'082dc216c4cc66d2dfe7614eaacfcb28a59dda6c'),(2,'Hunter','Beer','zrippin@example.com',79088394852,'f4670a457c1e816ea29bd08dbb638e1bdfb6a17b'),(3,'Monte','Feil','jane48@example.org',79920013087,'d84cbf72ac90f8c53106623c9e9483b54cb007cf'),(4,'Deon','Jerde','maritza.hackett@example.net',79565545471,'6ccecc04b8592cea7c2c77725ee2a0ffd32e8c7d'),(5,'Carlo','Cruickshank','edward61@example.net',79202394465,'dced538b5d5da8f7cd16b9b93945823c65f3dc4f'),(6,'Albin','Marvin','maiya63@example.org',79488283410,'d37c0844c61e08744cbe22537f06d191121f60d2'),(7,'Kaelyn','Strosin','oberbrunner.rodrick@example.org',79214911470,'cd7a5646a8bc370f1e0df0fc85e382836fc2c00c'),(8,'Jean','Stehr','morar.rosamond@example.net',79145887656,'719e6b2d18dcdbe4450bb935c2f0d6fc0dbef048'),(9,'Melvina','Streich','konopelski.jay@example.com',79956284507,'a24e6b5bdbc4a18f04adaf716123176e88fbe2a0'),(10,'Ozella','Gutmann','trantow.glenda@example.com',79373980589,'30bece45405ca02fb5222a012466ce17e05fa38e'),(11,'Tevin','Muller','corene91@example.net',79158229833,'f772c26ea0b0b0e14f4d57bd10be73b44d8eb389'),(12,'Oceane','Strosin','loyce22@example.net',79762428588,'bba0a641feb7e2dc14270bd20b93b775d85dc2a3'),(13,'Mireya','Beahan','keira.marquardt@example.net',79406808844,'706eacd2623c4a8bdd18d194ef3c69da883d3352'),(14,'Ryley','Gusikowski','pstroman@example.org',79214622462,'66857e2e9b3d74119eac02a0372e1ace3d60c0e7'),(15,'Krystina','Collins','dan51@example.com',79512616280,'c8b6a5dde4d9bfee8ca3dab0ff240569f1a366fa'),(16,'Clifton','Doyle','moore.bennett@example.net',79522219451,'c28694c4e66d368ccf4b41e20e1f1239315c5a5a'),(17,'Francesca','Bahringer','waelchi.lilian@example.org',79277270678,'73d94043a7c81a7476a1c63abbaa67cf5316024d'),(18,'Wilfred','Conn','reid03@example.net',79384379936,'7b8792b4bcf84828d287c4d4c7d0fc3d4124efcd'),(19,'Karl','Cummings','zelma.maggio@example.org',79484354044,'f9da34a274161ffb32ddd58d2bc7119fcdd8c1f9'),(20,'Meagan','Howe','zakary90@example.org',79696758589,'a656dd07bb574a6d33ad254cd9f9e343a1c6ee2d'),(21,'Tiana','Reichel','romaguera.hal@example.org',79429638404,'36fdefd89be574e3c3eb175013df74758685581b'),(22,'Katrine','Hirthe','kimberly.price@example.org',79746973917,'0e6a7ca8f26a7c65cd0b918b7785926a50cc7cda'),(23,'Angelita','Pfeffer','mkuhic@example.net',79599218423,'734ba074ff743058c716ea283a643c0abf3d893f'),(24,'Nathaniel','Hyatt','karina04@example.org',79509669936,'7436f775923ba0c3fc47ac7b9555d4965285cef8'),(25,'Karina','Gutkowski','maritza83@example.com',79872269480,'9b0ed84619412f8edb4e30cbdac2afe060513c7a'),(26,'Madaline','Rau','edward36@example.com',79229579966,'72db2b3490a827803af07e441e8ab96b894f91ff'),(27,'Aliyah','Braun','roger.walsh@example.net',79879215339,'6bce19708c08b6a57de6ef56c1372ad583de08f9'),(28,'Buster','Nikolaus','rempel.virgie@example.org',79898143177,'c7ea03a4abe9d41100f7509fdc3a4df09ec9c298'),(29,'Eleazar','Corwin','fbogisich@example.net',79256322067,'f3b15d1cdfba377fc056bd43295c629ff967b7f5'),(30,'Houston','Johnson','uadams@example.org',79082019346,'81f16c05c045dfabc9af2f0059a6835c0432125a'),(31,'Demarcus','Considine','jaron55@example.net',79613111734,'310d7775aa1c78acc330c3dde44fa2b46af3a27a'),(32,'Estevan','Heaney','harold95@example.com',79671510318,'bc043b4c3df338ab6966507d1df6558dfedfe85c'),(33,'Kristopher','Hagenes','williamson.jamar@example.org',79610469912,'778e3c195e8845d93487ca58968981756f62eab6'),(34,'Rasheed','Morissette','kaci.sanford@example.com',79266611822,'33b0813131ee3f4ac76b6ad7e0c498670cb713a8'),(35,'Anthony','Heidenreich','leanne69@example.org',79917588295,'39ea35fd1ad1e353010776f03b9a592f1eb95341'),(36,'Courtney','Rohan','umcdermott@example.net',79947594288,'58cf2ec11908c08999748e6620f9ae9cc26f8b1c'),(37,'Susie','Champlin','keyon.toy@example.com',79810768276,'adfdecf6ecbe8a61f8734a9575bc4a7239f91a51'),(38,'Uriah','Bergnaum','ebba.o\'reilly@example.com',79964024960,'fc5f17e4057937ccb56043db4ed3cd30966e8549'),(39,'Germaine','Marvin','iveum@example.org',79191888945,'62de036f45ad8f3e5211d67a563b3aa034e7279f'),(40,'Romaine','Rosenbaum','ebba19@example.org',79251569074,'e872f7049e4dc29d935b5868749e75f557557c33'),(41,'Sterling','Stokes','mills.kirstin@example.com',79556578115,'43355a2354d09d5db37b032a1e9bd0fe5779bf17'),(42,'Alisha','Ondricka','fgleason@example.org',79711383675,'f8e6d4dceb021f4450ac33f793d28c2f1b1fd026'),(43,'Mozelle','Lind','emilia.zieme@example.net',79437251734,'ae98d4dfe9a6332e2814ac4889ca4fa6fb9416a1'),(44,'Dock','Gusikowski','iwhite@example.org',79435823027,'1d0353a64f8ea3fc6445e626b82fc791b9cdd478'),(45,'Scarlett','Terry','brayan23@example.net',79288586813,'47da5443f1fa4ead46c662644775f682db1dfa8e'),(46,'Junior','Purdy','ryan.bayer@example.net',79531965536,'2d107358e60063b83935c56bdaa35ab7be94958e'),(47,'Verlie','Collier','kcrona@example.org',79022600721,'2f0dd67514a47e78fb01159844b767a7d637dd39'),(48,'Michel','Batz','llewellyn.klein@example.net',79118708546,'408e7ee8cc2a45ebb9af95dba6ba32b5ce1854f5'),(49,'Elva','Quigley','king.stephania@example.net',79560351293,'372e3b0e76ec9e2a230aed334af2985e1de4260a'),(50,'Rocio','Kovacek','abernathy.shanon@example.org',79596050031,'842c8b7c851bb991c459dfeee6fa37e5cfac48e1'),(51,'Alessandra','Breitenberg','okuneva.eleonore@example.org',79906415488,'f85f53cdb56670827e6ffd6c4ba5df4e99d6fd69'),(52,'Lisa','Skiles','qreinger@example.org',79436413706,'26956f5ef8a0a609d6d18f7f9749786da10410ff'),(53,'Drew','Metz','mohr.verna@example.com',79391110274,'e8585417e17da456ae676b7a5d2e54678ee65420'),(54,'Terry','Wilderman','xo\'conner@example.net',79177938970,'03b6e24238ea40f9f297bd549114a095da31c1cf'),(55,'Margret','Wolff','sfarrell@example.org',79943910550,'56b08f5eb14e9f0039a4f62892bf6e038a567e5c'),(56,'Joey','Gutkowski','awhite@example.com',79080885172,'599846c8034de88b8388df331d0d041f3275a212'),(57,'Luciano','Ankunding','joyce.roberts@example.net',79574703984,'bc2941b5fa781a606edfbfc3457c473a287548e3'),(58,'Florence','Cremin','hahn.laila@example.net',79621939231,'9b0a3a1e4a8d7aa76675b6e6a8935e70f995a0f2'),(59,'Mekhi','Collins','halie.cruickshank@example.org',79759094997,'b3d1126fb3e3ea8cb2114432bd79235c5b97d0fd'),(60,'London','Baumbach','bwalker@example.net',79756262385,'b50eb78b413ef2883bc2d84683ba818eac879a84'),(61,'Alessia','Hoppe','immanuel91@example.com',79603172393,'9573afc6fac82c5fa3e8c15aba2970743620d58c'),(62,'Rosalia','Bins','lindgren.imelda@example.com',79635442135,'733a1c7e8cac62a8b0e8e7fe75abef7db2b5bb89'),(63,'Darrin','Streich','clint85@example.org',79634960144,'acf38738347a485d15392dc3448ed2e8f142ca5e'),(64,'Frederick','Stanton','osborne10@example.org',79532490024,'bb111ddba1f198b185552d1d51c395cfe7848cbe'),(65,'Marilou','Heaney','jennings.wisoky@example.com',79134705148,'12d7fae9a3ead7e9ceb8d7bc3f3684fe27abfa9f'),(66,'Gracie','Rempel','santa36@example.net',79603901056,'11db99ac6d4f786a5703ac5683a2a9a015ea8a55'),(67,'Ashley','McLaughlin','kuhn.joy@example.com',79490907986,'4766fe8f2995ceb2ce95b0e54d6b647c0931f62d'),(68,'Dominique','McKenzie','ohoeger@example.net',79226815197,'921d1df7214e3fc613f76cc68991902aa5195ce3'),(69,'Karine','Crooks','kelsi.jerde@example.com',79701317558,'29c7199f629f41c4a3f4e771669e4ad3fa5b9545'),(70,'Aleen','Wilkinson','pprosacco@example.com',79456007250,'d1625c91c0f51321f42eb2bdeff6003cf441843f'),(71,'Janet','Treutel','hamill.emmie@example.com',79118852293,'af7c31fde063c2cb27e171bb8c1b48569ba3b919'),(72,'Mae','Runolfsdottir','ukozey@example.com',79168264770,'1f40916fcb1a754163b95e984bc0a503f6ae4813'),(73,'Kian','Crooks','carroll.jose@example.com',79035216189,'af72d76935eecbf134b120ca2193fa8fcc11bf9a'),(74,'Delta','Schmitt','friedrich.johns@example.net',79950331484,'8f8ac60b2c1261edb5a0ecb768727954d3495b79'),(75,'Vanessa','Stanton','hane.carolina@example.net',79200887584,'e77c49384ba87ce6f4276466181be2b4ef4af8e0'),(76,'Kylie','Wuckert','isaiah.torphy@example.org',79750893107,'3fc51fb6fbc001a275b3e29fd7becfe6ef6460a4'),(77,'Eugenia','Fadel','aidan80@example.org',79937668431,'6a8be5123877b52ef60019283de4850676bac903'),(78,'Jannie','Kuvalis','alva.stroman@example.com',79273632370,'a3b04993964062744b0a4ee89028e286caa13773'),(79,'Myriam','Gorczany','leannon.jett@example.net',79648524219,'8d40dfed7f3049852efd57cc83354fbdd47f14ce'),(80,'Hettie','Konopelski','schmitt.zetta@example.com',79634869983,'644ad0b9b04300cdcd049975e9458428c63bfe39'),(81,'Aiden','O\'Connell','liliane66@example.net',79058100910,'d339d2bc01612810209bea1a7669363c96f0f316'),(82,'Sylvia','Olson','lowe.mckayla@example.com',79292772566,'0ab67dd5246253bdeaf146d4da43e6ec2f08d24f'),(83,'Reynold','Boyer','murazik.emilia@example.com',79594380288,'28cb27b2b92a7a0fc9b2bb09c968800888597d81'),(84,'Else','Strosin','charley62@example.net',79675097217,'d529eaa9af60b0ca4c30c340aec8ddb9c432f0fc'),(85,'Lempi','Champlin','west.blanche@example.com',79581353009,'27a4a6abb73fca2fbda26cc378f88c9e68bcd670'),(86,'Brady','Bergstrom','klocko.cesar@example.org',79310612583,'1df6572cf679cfba56fc5e4a47766528d14861e8'),(87,'Ellie','Gottlieb','ova99@example.net',79885349403,'e17bd9bb659283e9643d825daf1ac0827b2aff49'),(88,'Monique','Zieme','lkunde@example.org',79735026645,'1fbc8ebd5685c634ff132437e8a5ec1f77d1bb6b'),(89,'Peggie','Ryan','josiah.robel@example.org',79132940798,'01bbfc63ffa6b221300960e49e0bd5a9bb15f187'),(90,'Moises','Reichel','ynikolaus@example.com',79630346270,'cf0032a8346110b1f55e7e8b41e3a9861f88b4a6'),(91,'Eloise','Yost','paige.gislason@example.org',79688646118,'b800bafb742718613a5cb0ca42d8e3b6cc989b78'),(92,'Filiberto','Denesik','crist.ozella@example.org',79590232826,'5eaa17690bd473df426959763b44f7a046111b64'),(93,'Ceasar','Senger','kailyn.wolf@example.org',79604169019,'ed86e7d621be7351941af1de8096983e07536c5b'),(94,'Matilda','Dibbert','beverly.gottlieb@example.org',79219363217,'fd9244f3bc3fe30594c75e5385e6a8edbb993792'),(95,'Linda','Jacobson','trinity.cartwright@example.org',79655797774,'483da12ee22783f0786e8fab9e5243c35988ea71'),(96,'Eliseo','Buckridge','armstrong.juana@example.com',79156559829,'682ec7fd06d70fc7c0f051e7c09ccb43cb3fd4b7'),(97,'Laurie','Cummings','garrett.hills@example.net',79267426780,'c208e0a6fd6541e90c086c9be4456f6daf3e6ce0'),(98,'Rhoda','Schowalter','madalyn.jones@example.com',79913495510,'f4cba2510051353dff4b5cbb0cf6854d43fb93eb'),(99,'Aletha','Littel','rigoberto.towne@example.org',79539807229,'37663a80cbc6a44d355a15cf8d596f50a826405f'),(100,'Patience','Stracke','scruickshank@example.net',79280978941,'c8b801bfe772616ef6cce01f9734e14781f27e77');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communities`
--

DROP TABLE IF EXISTS `users_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_communities` (
  `communities_id` int unsigned NOT NULL,
  `users_id` int unsigned NOT NULL,
  PRIMARY KEY (`communities_id`,`users_id`),
  KEY `fk_users_communities_communities1_idx` (`communities_id`),
  KEY `fk_users_communities_users1_idx` (`users_id`),
  CONSTRAINT `fk_users_communities_communities1` FOREIGN KEY (`communities_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_users_communities_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communities`
--

LOCK TABLES `users_communities` WRITE;
/*!40000 ALTER TABLE `users_communities` DISABLE KEYS */;
INSERT INTO `users_communities` VALUES (1,42),(1,60),(1,83),(1,87),(1,91),(2,20),(2,36),(2,65),(2,71),(2,77),(2,79),(2,87),(2,89),(2,90),(2,95),(3,4),(3,19),(3,25),(3,44),(3,66),(3,85),(3,89),(3,91),(3,95),(4,2),(4,6),(4,7),(4,11),(4,25),(4,27),(4,40),(4,47),(4,61),(4,77),(4,93),(5,13),(5,26),(5,28),(5,35),(5,36),(5,38),(5,41),(5,45),(5,46),(5,51),(5,53),(5,71),(5,81),(5,86),(5,97),(5,99),(6,20),(6,26),(6,34),(6,40),(6,47),(6,63),(6,77),(6,81),(6,93),(7,4),(7,18),(7,27),(7,39),(7,53),(7,60),(7,66),(7,69),(7,77),(7,92),(8,9),(8,16),(8,17),(8,42),(8,81),(8,99),(9,22),(9,28),(9,43),(9,52),(9,54),(9,72),(9,88),(9,94),(9,98),(9,100),(10,28),(10,31),(10,52),(10,58),(10,74),(10,78),(10,79),(10,81),(10,94);
/*!40000 ALTER TABLE `users_communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vk'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-17 22:16:30
