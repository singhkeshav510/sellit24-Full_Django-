-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add product',7,'add_product'),(26,'Can change product',7,'change_product'),(27,'Can delete product',7,'delete_product'),(28,'Can view product',7,'view_product'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add brand',9,'add_brand'),(34,'Can change brand',9,'change_brand'),(35,'Can delete brand',9,'delete_brand'),(36,'Can view brand',9,'view_brand'),(37,'Can add Product Image',10,'add_product_image'),(38,'Can change Product Image',10,'change_product_image'),(39,'Can delete Product Image',10,'delete_product_image'),(40,'Can view Product Image',10,'view_product_image'),(41,'Can add location',11,'add_location'),(42,'Can change location',11,'change_location'),(43,'Can delete location',11,'delete_location'),(44,'Can view location',11,'view_location');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$SP5VdIAjL0uV$WBpGJHZYhh+zbkIP3wzGELQlBpDaAq4nOgc/c3MCsRU=','2020-06-05 13:57:14.000000',1,'keshav','','','keshavsingh200100@gmail.com',1,1,'2020-06-02 15:45:37.000000'),(3,'pbkdf2_sha256$180000$kQ4JtfecpgS8$7INxu/meuua5xcXhPXitYRBmJdV2vp+FoqV/uoiDHZY=','2020-06-05 14:52:02.924638',0,'admin','','','ksj.181ee124@nitk.edu.in',0,1,'2020-06-05 13:58:51.000000'),(4,'pbkdf2_sha256$180000$4LZPdrTtQhFr$ZT1dFLjPe3JYHHd5TftL5YyPR8lCx8NmqKq26ajuyi4=',NULL,0,'user1','','','ksj.181ee124@nitk.edu.in',0,1,'2020-06-05 14:06:59.000000'),(5,'pbkdf2_sha256$180000$g8IuejCspi84$JnqmmLN63EPHP6cvO5eEl7OMoqTq2nVeXtMYUpl2Kgg=','2020-06-05 14:08:57.000000',0,'user2','','','singhshanu510@gmail.com',0,1,'2020-06-05 14:07:31.000000'),(6,'pbkdf2_sha256$180000$3U04nJ4gzNZp$qIoEfeigpM1cH6GwRWYv3CKSPpkcbwFg6Ls/w1eJkJU=',NULL,0,'user3','','','ksj.181ee124@nitk.edu.in',0,1,'2020-06-05 14:07:51.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-06-02 20:03:44.449163','1','Mobiles',1,'[{\"added\": {}}]',8,1),(2,'2020-06-02 20:04:00.144971','1','Apple',1,'[{\"added\": {}}]',9,1),(3,'2020-06-02 20:06:54.440006','1','iPhone 11 : 2020-06-02 20:06:54.436572+00:00',1,'[{\"added\": {}}]',7,1),(4,'2020-06-02 20:20:41.911102','1','iPhone 11 : Tue Jun  2 20:06:54 2020',2,'[{\"changed\": {\"fields\": [\"Price(in \\u20b9)\"]}}]',7,1),(5,'2020-06-02 20:21:34.579988','1','iPhone 11 : Tue Jun  2 20:21:34 2020',2,'[{\"changed\": {\"fields\": [\"Price(in \\u20b9)\"]}}]',7,1),(6,'2020-06-02 20:22:20.585146','2','I phone 6 : Tue Jun  2 20:22:20 2020',1,'[{\"added\": {}}]',7,1),(7,'2020-06-02 20:49:36.810577','1','iPhone 11',3,'',7,1),(8,'2020-06-02 20:49:43.343357','2','I phone 6',3,'',7,1),(9,'2020-06-02 21:00:04.130264','3','iPhone 11',1,'[{\"added\": {}}]',7,1),(10,'2020-06-03 09:04:06.257491','3','iPhone 11',3,'',7,1),(11,'2020-06-03 10:54:13.492112','4','iPhone 11',1,'[{\"added\": {}}]',7,1),(12,'2020-06-03 11:03:28.504197','1','iPhone 11',1,'[{\"added\": {}}]',10,1),(13,'2020-06-03 12:16:50.242760','5','iPhone 11',1,'[{\"added\": {}}]',7,1),(14,'2020-06-03 12:21:39.692597','5','iPhone 11 : Wed Jun  3 12:21:39 2020',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1),(15,'2020-06-03 12:21:51.362683','4','iPhone 11 : Wed Jun  3 12:21:51 2020',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1),(16,'2020-06-03 12:23:37.825826','1','iPhone 11',2,'[]',10,1),(17,'2020-06-03 12:23:52.460117','2','iPhone 11',1,'[{\"added\": {}}]',10,1),(18,'2020-06-03 12:30:53.487493','5','iPhone 11 : Wed Jun  3 12:30:53 2020',2,'[]',7,1),(19,'2020-06-03 12:30:59.721120','4','iPhone 11 : Wed Jun  3 12:30:59 2020',2,'[]',7,1),(20,'2020-06-03 12:31:24.234801','2','iPhone 11',2,'[{\"changed\": {\"fields\": [\"Product\", \"Image\"]}}]',10,1),(21,'2020-06-03 12:31:35.615689','1','iPhone 11',2,'[{\"changed\": {\"fields\": [\"Product\"]}}]',10,1),(22,'2020-06-03 12:43:15.774180','5','iPhone 11',3,'',7,1),(23,'2020-06-03 12:43:22.805257','4','iPhone 11',3,'',7,1),(24,'2020-06-03 12:44:35.754898','6','iPhone 11',1,'[{\"added\": {}}]',7,1),(25,'2020-06-03 12:44:52.295139','3','iPhone 11',1,'[{\"added\": {}}]',10,1),(26,'2020-06-03 12:47:44.282232','6','iPhone 11',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(27,'2020-06-03 12:47:53.857747','6','iPhone 11',2,'[]',7,1),(28,'2020-06-03 12:48:32.664316','3','iPhone 11',2,'[]',10,1),(29,'2020-06-03 12:48:40.860903','4','iPhone 11',1,'[{\"added\": {}}]',10,1),(30,'2020-06-03 13:03:51.218814','6','iPhone 11 : Wed Jun  3 12:44:35 2020',3,'',7,1),(31,'2020-06-03 13:47:51.819517','1','iPhone 11 : Wed Jun  3 13:47:51 2020',1,'[{\"added\": {}}]',7,1),(32,'2020-06-03 14:07:59.059554','1','iPhone 11 : Wed Jun  3 14:07:59 2020',1,'[{\"added\": {}}]',7,1),(33,'2020-06-03 14:08:36.927178','1','iPhone 11 : Wed Jun  3 14:08:36 2020',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(34,'2020-06-03 14:09:08.068235','2','I phone 6 : Wed Jun  3 14:09:08 2020',1,'[{\"added\": {}}]',7,1),(35,'2020-06-03 14:10:00.066609','1','iPhone 11 : Wed Jun  3 14:08:36 2020',1,'[{\"added\": {}}]',10,1),(36,'2020-06-03 14:10:20.741424','2','iPhone 11 : Wed Jun  3 14:08:36 2020',1,'[{\"added\": {}}]',10,1),(37,'2020-06-03 14:10:43.864859','3','I phone 6 : Wed Jun  3 14:09:08 2020',1,'[{\"added\": {}}]',10,1),(38,'2020-06-03 17:48:06.506798','3','Moto G : Wed Jun  3 17:48:06 2020',1,'[{\"added\": {}}]',7,1),(39,'2020-06-03 18:26:38.563721','1','Mobiles',3,'',8,1),(40,'2020-06-03 18:26:59.214435','1','Apple',3,'',9,1),(41,'2020-06-03 18:27:12.738840','3','Moto G : Wed Jun  3 17:48:06 2020',3,'',7,1),(42,'2020-06-03 18:27:19.951770','2','I phone 6 : Wed Jun  3 14:09:08 2020',3,'',7,1),(43,'2020-06-03 18:27:29.328596','1','iPhone 11 : Wed Jun  3 14:08:36 2020',3,'',7,1),(44,'2020-06-03 18:38:57.958682','2','Mobiles',1,'[{\"added\": {}}]',8,1),(45,'2020-06-03 18:40:07.100122','2','Apple',1,'[{\"added\": {}}]',9,1),(46,'2020-06-03 18:40:32.324633','4','iPhone 11 : Wed Jun  3 18:40:32 2020',1,'[{\"added\": {}}]',7,1),(47,'2020-06-03 19:01:50.815708','3','Cars',1,'[{\"added\": {}}]',8,1),(48,'2020-06-03 19:02:06.443012','3','Honda',1,'[{\"added\": {}}]',9,1),(49,'2020-06-03 19:02:48.637926','5','Maruti : Wed Jun  3 19:02:48 2020',1,'[{\"added\": {}}]',7,1),(50,'2020-06-04 05:39:50.497419','5','Maruti : Thu Jun  4 05:39:50 2020',2,'[]',7,1),(51,'2020-06-04 05:39:55.242931','4','iPhone 11 : Thu Jun  4 05:39:55 2020',2,'[]',7,1),(52,'2020-06-04 05:55:16.191716','3','Cars',3,'',8,1),(53,'2020-06-04 05:55:22.771416','2','Mobiles',3,'',8,1),(54,'2020-06-04 05:55:37.235814','5','Maruti : Thu Jun  4 05:39:50 2020',3,'',7,1),(55,'2020-06-04 05:55:42.617234','4','iPhone 11 : Thu Jun  4 05:39:55 2020',3,'',7,1),(56,'2020-06-04 05:55:58.930610','4','Cars',1,'[{\"added\": {}}]',8,1),(57,'2020-06-04 05:56:31.730989','6','iPhone 11 : Thu Jun  4 05:56:31 2020',1,'[{\"added\": {}}]',7,1),(58,'2020-06-04 07:28:28.092898','8','iPhone 11 : Thu Jun  4 07:28:28 2020',1,'[{\"added\": {}}]',7,1),(59,'2020-06-04 07:42:14.448318','6','iPhone 11 : Thu Jun  4 07:42:14 2020',2,'[]',7,1),(60,'2020-06-04 07:51:22.829032','8','iPhone 11 : Thu Jun  4 07:51:22 2020',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(61,'2020-06-04 07:51:32.915665','6','iPhone 11 : Thu Jun  4 07:51:32 2020',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(62,'2020-06-04 08:26:51.607092','6','iPhone 11 : Thu Jun  4 07:51:32 2020',3,'',7,1),(63,'2020-06-04 08:26:56.356744','8','iPhone 11 : Thu Jun  4 07:51:22 2020',3,'',7,1),(64,'2020-06-04 08:27:23.081554','4','Cars',3,'',8,1),(65,'2020-06-04 08:27:34.368227','3','Honda',3,'',9,1),(66,'2020-06-04 08:27:42.529074','2','Apple',3,'',9,1),(67,'2020-06-04 15:24:40.118226','1','keshav',2,'[{\"changed\": {\"fields\": [\"Email address\", \"Last login\"]}}]',4,1),(68,'2020-06-04 17:44:30.505171','5','Mobiles',1,'[{\"added\": {}}]',8,1),(69,'2020-06-04 17:44:40.072265','6','Cars',1,'[{\"added\": {}}]',8,1),(70,'2020-06-04 17:44:55.282794','7','Laptops',1,'[{\"added\": {}}]',8,1),(71,'2020-06-04 17:45:21.449661','8','Bicycle',1,'[{\"added\": {}}]',8,1),(72,'2020-06-04 17:45:33.816922','4','Apple',1,'[{\"added\": {}}]',9,1),(73,'2020-06-04 17:45:40.299936','5','Honda',1,'[{\"added\": {}}]',9,1),(74,'2020-06-04 17:45:53.549860','6','Hercules',1,'[{\"added\": {}}]',9,1),(75,'2020-06-04 17:46:04.919675','7','Asus',1,'[{\"added\": {}}]',9,1),(76,'2020-06-04 17:53:35.203577','1','Jaipur',1,'[{\"added\": {}}]',11,1),(77,'2020-06-04 17:53:42.233688','2','Mumbai',1,'[{\"added\": {}}]',11,1),(78,'2020-06-04 17:53:49.903201','3','Chennai',1,'[{\"added\": {}}]',11,1),(79,'2020-06-04 17:53:56.925295','4','Delhi',1,'[{\"added\": {}}]',11,1),(80,'2020-06-04 17:54:48.075223','9','iPhone 11 : Thu Jun  4 17:54:48 2020',1,'[{\"added\": {}}]',7,1),(81,'2020-06-04 17:55:55.040648','10','Hercules HMX : Thu Jun  4 17:55:55 2020',1,'[{\"added\": {}}]',7,1),(82,'2020-06-04 17:57:54.258944','2','admin',1,'[{\"added\": {}}]',4,1),(83,'2020-06-04 17:58:16.853302','2','admin',2,'[{\"changed\": {\"fields\": [\"Email address\", \"Last login\"]}}]',4,1),(84,'2020-06-04 17:59:52.569621','11','Honda SUV : Thu Jun  4 17:59:52 2020',1,'[{\"added\": {}}]',7,1),(85,'2020-06-04 18:01:10.436869','12','Asus DMX : Thu Jun  4 18:01:10 2020',1,'[{\"added\": {}}]',7,1),(86,'2020-06-04 18:01:29.073532','1','iPhone 11 : Thu Jun  4 17:54:48 2020',1,'[{\"added\": {}}]',10,1),(87,'2020-06-04 18:01:39.105111','2','iPhone 11 : Thu Jun  4 17:54:48 2020',1,'[{\"added\": {}}]',10,1),(88,'2020-06-04 18:01:49.624000','3','Hercules HMX : Thu Jun  4 17:55:55 2020',1,'[{\"added\": {}}]',10,1),(89,'2020-06-04 18:01:58.790586','4','Hercules HMX : Thu Jun  4 17:55:55 2020',1,'[{\"added\": {}}]',10,1),(90,'2020-06-04 18:02:08.554219','5','Honda SUV : Thu Jun  4 17:59:52 2020',1,'[{\"added\": {}}]',10,1),(91,'2020-06-04 18:02:24.658951','6','Honda SUV : Thu Jun  4 17:59:52 2020',1,'[{\"added\": {}}]',10,1),(92,'2020-06-04 18:02:36.569825','7','Asus DMX : Thu Jun  4 18:01:10 2020',1,'[{\"added\": {}}]',10,1),(93,'2020-06-04 18:02:45.513221','8','Asus DMX : Thu Jun  4 18:01:10 2020',1,'[{\"added\": {}}]',10,1),(94,'2020-06-04 21:54:11.463265','8','Apple',1,'[{\"added\": {}}]',9,1),(95,'2020-06-04 21:54:21.344984','9','Honda',1,'[{\"added\": {}}]',9,1),(96,'2020-06-04 21:54:29.203253','10','Asus',1,'[{\"added\": {}}]',9,1),(97,'2020-06-04 21:55:31.269665','9','Mobiles',1,'[{\"added\": {}}]',8,1),(98,'2020-06-04 21:55:50.417247','10','Cars',1,'[{\"added\": {}}]',8,1),(99,'2020-06-04 21:56:07.092408','11','Laptops',1,'[{\"added\": {}}]',8,1),(100,'2020-06-04 21:56:13.123077','11','Laptops',2,'[]',8,1),(101,'2020-06-04 21:56:30.230376','5','Jaipur',1,'[{\"added\": {}}]',11,1),(102,'2020-06-04 21:56:36.173515','6','Delhi',1,'[{\"added\": {}}]',11,1),(103,'2020-06-04 21:56:43.683216','7','Mumbai',1,'[{\"added\": {}}]',11,1),(104,'2020-06-04 21:56:49.067337','8','Chennai',1,'[{\"added\": {}}]',11,1),(105,'2020-06-05 05:41:28.180263','18','Yamaha : Fri Jun  5 05:41:28 2020',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(106,'2020-06-05 06:24:02.506166','19','yoyoboss : Fri Jun  5 06:24:02 2020',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(107,'2020-06-05 06:32:33.948947','20','Keshav Singh : Fri Jun  5 06:32:33 2020',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(108,'2020-06-05 06:37:05.782691','20','Keshav Singh : Fri Jun  5 06:32:33 2020',3,'',7,1),(109,'2020-06-05 06:37:10.962815','19','yoyoboss : Fri Jun  5 06:24:02 2020',3,'',7,1),(110,'2020-06-05 06:37:24.037737','18','Yamaha : Fri Jun  5 05:41:28 2020',3,'',7,1),(111,'2020-06-05 12:58:18.702839','25','iPhone 11 : Fri Jun  5 12:58:18 2020',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1),(112,'2020-06-05 13:17:38.139158','25','iPhone 11 : Fri Jun  5 12:58:18 2020',3,'',7,1),(113,'2020-06-05 13:17:43.492902','26','Doc : Fri Jun  5 13:08:29 2020',3,'',7,1),(114,'2020-06-05 13:17:54.422256','23','iPhone 11 : Fri Jun  5 09:32:40 2020',3,'',7,1),(115,'2020-06-05 13:43:20.378944','28','Keshav Singh : Fri Jun  5 13:43:20 2020',1,'[{\"added\": {}}]',7,1),(116,'2020-06-05 13:43:37.330938','1','Mercedes : Fri Jun  5 13:20:23 2020',1,'[{\"added\": {}}]',10,1),(117,'2020-06-05 13:43:46.655358','2','Keshav Singh : Fri Jun  5 13:43:20 2020',1,'[{\"added\": {}}]',10,1),(118,'2020-06-05 13:50:15.123404','1','Mercedes : Fri Jun  5 13:20:23 2020',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(119,'2020-06-05 13:51:29.798423','27','Mercedes : Fri Jun  5 13:51:29 2020',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(120,'2020-06-05 13:57:35.413025','10','Asus',3,'',9,1),(121,'2020-06-05 13:57:35.458841','9','Honda',3,'',9,1),(122,'2020-06-05 13:57:35.493388','8','Apple',3,'',9,1),(123,'2020-06-05 13:57:52.668577','11','Laptops',3,'',8,1),(124,'2020-06-05 13:57:52.713212','10','Cars',3,'',8,1),(125,'2020-06-05 13:57:52.746729','9','Mobiles',3,'',8,1),(126,'2020-06-05 13:58:11.042016','2','admin',3,'',4,1),(127,'2020-06-05 13:58:51.293848','3','admin',1,'[{\"added\": {}}]',4,1),(128,'2020-06-05 13:59:35.292422','1','keshav',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(129,'2020-06-05 14:07:00.039554','4','user1',1,'[{\"added\": {}}]',4,1),(130,'2020-06-05 14:07:31.503147','5','user2',1,'[{\"added\": {}}]',4,1),(131,'2020-06-05 14:07:51.331785','6','user3',1,'[{\"added\": {}}]',4,1),(132,'2020-06-05 14:08:28.254321','3','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(133,'2020-06-05 14:08:47.670019','4','user1',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(134,'2020-06-05 14:09:17.269425','5','user2',2,'[{\"changed\": {\"fields\": [\"Email address\", \"Last login\"]}}]',4,1),(135,'2020-06-05 14:09:28.867118','6','user3',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(136,'2020-06-05 14:10:17.479641','12','Laptops',1,'[{\"added\": {}}]',8,1),(137,'2020-06-05 14:10:46.967150','13','Mobiles',1,'[{\"added\": {}}]',8,1),(138,'2020-06-05 14:11:16.568915','14','Fashion',1,'[{\"added\": {}}]',8,1),(139,'2020-06-05 14:11:39.611563','15','Vehicles',1,'[{\"added\": {}}]',8,1),(140,'2020-06-05 14:12:13.861080','16','Furniture',1,'[{\"added\": {}}]',8,1),(141,'2020-06-05 14:12:42.196339','9','Mangaluru',1,'[{\"added\": {}}]',11,1),(142,'2020-06-05 14:13:08.053692','10','Ahmedabad',1,'[{\"added\": {}}]',11,1),(143,'2020-06-05 14:14:09.253080','11','Godreg',1,'[{\"added\": {}}]',9,1),(144,'2020-06-05 14:14:17.478548','12','Asus',1,'[{\"added\": {}}]',9,1),(145,'2020-06-05 14:14:27.107842','13','Honda',1,'[{\"added\": {}}]',9,1),(146,'2020-06-05 14:14:41.992648','14','H',1,'[{\"added\": {}}]',9,1),(147,'2020-06-05 14:14:50.044133','14','Hercules',2,'[{\"changed\": {\"fields\": [\"Brand name\"]}}]',9,1),(148,'2020-06-05 14:15:00.800067','15','Spykar',1,'[{\"added\": {}}]',9,1),(149,'2020-06-05 14:15:30.091662','16','Hero',1,'[{\"added\": {}}]',9,1),(150,'2020-06-05 14:16:44.991463','29','Asus DMX : Fri Jun  5 14:16:44 2020',1,'[{\"added\": {}}]',7,1),(151,'2020-06-05 14:18:01.597021','30','Lenovo R3 : Fri Jun  5 14:18:01 2020',1,'[{\"added\": {}}]',7,1),(152,'2020-06-05 14:18:45.577840','31','T shirts : Fri Jun  5 14:18:45 2020',1,'[{\"added\": {}}]',7,1),(153,'2020-06-05 14:19:30.052938','32','TVS : Fri Jun  5 14:19:30 2020',1,'[{\"added\": {}}]',7,1),(154,'2020-06-05 14:20:15.000706','33','Almirah : Fri Jun  5 14:20:14 2020',1,'[{\"added\": {}}]',7,1),(155,'2020-06-05 14:21:22.354834','34','iPhone 11 : Fri Jun  5 14:21:22 2020',1,'[{\"added\": {}}]',7,1),(156,'2020-06-05 14:22:11.628079','35','SUV SX : Fri Jun  5 14:22:11 2020',1,'[{\"added\": {}}]',7,1),(157,'2020-06-05 14:22:46.619205','3','Asus DMX : Fri Jun  5 14:16:44 2020',1,'[{\"added\": {}}]',10,1),(158,'2020-06-05 14:23:10.501218','4','Lenovo R3 : Fri Jun  5 14:18:01 2020',1,'[{\"added\": {}}]',10,1),(159,'2020-06-05 14:23:28.246067','5','T shirts : Fri Jun  5 14:18:45 2020',1,'[{\"added\": {}}]',10,1),(160,'2020-06-05 14:23:43.289896','6','TVS : Fri Jun  5 14:19:30 2020',1,'[{\"added\": {}}]',10,1),(161,'2020-06-05 14:23:59.341299','7','Almirah : Fri Jun  5 14:20:14 2020',1,'[{\"added\": {}}]',10,1),(162,'2020-06-05 14:24:08.213243','8','iPhone 11 : Fri Jun  5 14:21:22 2020',1,'[{\"added\": {}}]',10,1),(163,'2020-06-05 14:24:23.368329','9','SUV SX : Fri Jun  5 14:22:11 2020',1,'[{\"added\": {}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'products','brand'),(8,'products','category'),(11,'products','location'),(7,'products','product'),(10,'products','product_image'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-06-02 15:44:32.272160'),(2,'auth','0001_initial','2020-06-02 15:44:33.954110'),(3,'admin','0001_initial','2020-06-02 15:44:40.233498'),(4,'admin','0002_logentry_remove_auto_add','2020-06-02 15:44:41.718212'),(5,'admin','0003_logentry_add_action_flag_choices','2020-06-02 15:44:41.796727'),(6,'contenttypes','0002_remove_content_type_name','2020-06-02 15:44:42.758375'),(7,'auth','0002_alter_permission_name_max_length','2020-06-02 15:44:42.861709'),(8,'auth','0003_alter_user_email_max_length','2020-06-02 15:44:42.995277'),(9,'auth','0004_alter_user_username_opts','2020-06-02 15:44:43.060754'),(10,'auth','0005_alter_user_last_login_null','2020-06-02 15:44:43.629886'),(11,'auth','0006_require_contenttypes_0002','2020-06-02 15:44:43.675778'),(12,'auth','0007_alter_validators_add_error_messages','2020-06-02 15:44:43.734925'),(13,'auth','0008_alter_user_username_max_length','2020-06-02 15:44:43.844590'),(14,'auth','0009_alter_user_last_name_max_length','2020-06-02 15:44:43.967516'),(15,'auth','0010_alter_group_name_max_length','2020-06-02 15:44:44.090340'),(16,'auth','0011_update_proxy_permissions','2020-06-02 15:44:44.149729'),(17,'products','0001_initial','2020-06-02 15:44:44.450819'),(18,'sessions','0001_initial','2020-06-02 15:44:45.425643'),(19,'products','0002_remove_product_description','2020-06-02 15:51:20.169303'),(20,'products','0003_auto_20200602_1632','2020-06-02 16:32:13.237053'),(21,'products','0004_auto_20200602_1640','2020-06-02 16:40:16.026542'),(22,'products','0005_product_category','2020-06-02 16:48:14.874820'),(23,'products','0006_auto_20200602_1929','2020-06-02 19:29:37.348446'),(24,'products','0007_auto_20200602_2006','2020-06-02 20:06:46.778973'),(25,'products','0008_product_slug','2020-06-02 20:59:18.843454'),(26,'products','0009_auto_20200603_0929','2020-06-03 09:30:20.675119'),(27,'products','0010_auto_20200603_1055','2020-06-03 10:55:12.898432'),(28,'products','0002_product_image','2020-06-03 11:02:37.773516'),(29,'products','0002_product_product_image','2020-06-03 13:47:28.473410'),(30,'products','0003_product_product_image','2020-06-03 13:53:11.047860'),(31,'products','0002_category_slug','2020-06-03 18:31:54.876773'),(32,'products','0002_auto_20200604_2300','2020-06-04 17:31:06.460528');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('sn107qkca56mq01ikp8ywx4ts6ve7nt4','NzBkNjIyNzkyZWY4NTY3OTA2YWM5ZWNiNTlkOGU3NjI2Y2I0NjM2Zjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NzQyODBiMTg5MDM4ZWE4ZmQyN2MyNTU2NjQ1ZmZjYzg4ZDNjNmJiIn0=','2020-06-19 14:52:02.969803');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_brand`
--

DROP TABLE IF EXISTS `products_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_brand`
--

LOCK TABLES `products_brand` WRITE;
/*!40000 ALTER TABLE `products_brand` DISABLE KEYS */;
INSERT INTO `products_brand` VALUES (11,'Godreg'),(12,'Asus'),(13,'Honda'),(14,'Hercules'),(15,'Spykar'),(16,'Hero');
/*!40000 ALTER TABLE `products_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_category`
--

DROP TABLE IF EXISTS `products_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(40) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_slug_c558efae` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_category`
--

LOCK TABLES `products_category` WRITE;
/*!40000 ALTER TABLE `products_category` DISABLE KEYS */;
INSERT INTO `products_category` VALUES (12,'Laptops','category/e9.jpg','laptops'),(13,'Mobiles','category/b1.jpg','mobiles'),(14,'Fashion','category/cat5.png','fashion'),(15,'Vehicles','category/bk2.jpg','vehicles'),(16,'Furniture','category/b7.jpg','furniture');
/*!40000 ALTER TABLE `products_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_location`
--

DROP TABLE IF EXISTS `products_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(40) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_location_slug_c816fc18` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_location`
--

LOCK TABLES `products_location` WRITE;
/*!40000 ALTER TABLE `products_location` DISABLE KEYS */;
INSERT INTO `products_location` VALUES (5,'Jaipur','jaipur'),(6,'Delhi','delhi'),(7,'Mumbai','mumbai'),(8,'Chennai','chennai'),(9,'Mangaluru','mangaluru'),(10,'Ahmedabad','ahmedabad');
/*!40000 ALTER TABLE `products_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `condition` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `city_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_brand_id_3e2e8fd1_fk_products_brand_id` (`brand_id`),
  KEY `products_product_category_id_9b594869_fk_products_category_id` (`category_id`),
  KEY `products_product_owner_id_f189d068_fk_auth_user_id` (`owner_id`),
  KEY `products_product_slug_70d3148d` (`slug`),
  KEY `products_product_city_name_id_d41ea8d4_fk_products_location_id` (`city_name_id`),
  CONSTRAINT `products_product_brand_id_3e2e8fd1_fk_products_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `products_brand` (`id`),
  CONSTRAINT `products_product_category_id_9b594869_fk_products_category_id` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`id`),
  CONSTRAINT `products_product_city_name_id_d41ea8d4_fk_products_location_id` FOREIGN KEY (`city_name_id`) REFERENCES `products_location` (`id`),
  CONSTRAINT `products_product_owner_id_f189d068_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` VALUES (29,'2020-06-05 14:16:44.983436','2020-06-05 14:16:44.983473','Asus DMX','An amzing product',12000.00,'New','main_product/asus3_0PY0OUM.jpeg','none-asus-dmx',12,12,3,5),(30,'2020-06-05 14:18:01.595339','2020-06-05 14:18:01.595379','Lenovo R3','An amazing product',7000.00,'New','main_product/1.jpg','none-lenovo-r3',11,13,1,6),(31,'2020-06-05 14:18:45.576412','2020-06-05 14:18:45.576444','T shirts','An amazing product',455.00,'Old','main_product/cat8.png','none-t-shirts',13,14,3,7),(32,'2020-06-05 14:19:30.049300','2020-06-05 14:19:30.049538','TVS','An amazing product',45000.00,'Old','main_product/bk2.jpg','none-tvs',13,15,1,8),(33,'2020-06-05 14:20:14.999389','2020-06-05 14:20:14.999421','Almirah','An amazing product',1000.00,'Old','main_product/cat5.png','none-almirah',11,16,3,9),(34,'2020-06-05 14:21:22.353440','2020-06-05 14:21:22.353473','iPhone 11','An amazing product',45000.45,'New','main_product/m3.jpg','none-iphone-11',12,13,3,5),(35,'2020-06-05 14:22:11.626410','2020-06-05 14:22:11.626447','SUV SX','An amazing product',128000.00,'Old','main_product/c11.jpg','none-suv-sx',16,15,1,7);
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product_image`
--

DROP TABLE IF EXISTS `products_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_ima_product_id_8cf167bc_fk_products_` (`product_id`),
  CONSTRAINT `products_product_ima_product_id_8cf167bc_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product_image`
--

LOCK TABLES `products_product_image` WRITE;
/*!40000 ALTER TABLE `products_product_image` DISABLE KEYS */;
INSERT INTO `products_product_image` VALUES (3,'product/f3.jpg',29),(4,'product/m1.jpg',30),(5,'product/fa10.jpg',31),(6,'product/bk12.jpg',32),(7,'product/fr4.jpg',33),(8,'product/1.jpg',34),(9,'product/c13.jpg',35);
/*!40000 ALTER TABLE `products_product_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-06  3:40:17
