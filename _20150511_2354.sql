-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema macwiggle
--

CREATE DATABASE IF NOT EXISTS macwiggle;
USE macwiggle;

--
-- Definition of table `macwiggle`.`auth_group`
--

DROP TABLE IF EXISTS `macwiggle`.`auth_group`;
CREATE TABLE  `macwiggle`.`auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`auth_group`
--

/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
LOCK TABLES `auth_group` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`auth_group_permissions`
--

DROP TABLE IF EXISTS `macwiggle`.`auth_group_permissions`;
CREATE TABLE  `macwiggle`.`auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`auth_group_permissions`
--

/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
LOCK TABLES `auth_group_permissions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`auth_permission`
--

DROP TABLE IF EXISTS `macwiggle`.`auth_permission`;
CREATE TABLE  `macwiggle`.`auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`auth_permission`
--

/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
LOCK TABLES `auth_permission` WRITE;
INSERT INTO `macwiggle`.`auth_permission` VALUES  (1,'Can add log entry',1,'add_logentry'),
 (2,'Can change log entry',1,'change_logentry'),
 (3,'Can delete log entry',1,'delete_logentry'),
 (4,'Can add permission',2,'add_permission'),
 (5,'Can change permission',2,'change_permission'),
 (6,'Can delete permission',2,'delete_permission'),
 (7,'Can add group',3,'add_group'),
 (8,'Can change group',3,'change_group'),
 (9,'Can delete group',3,'delete_group'),
 (10,'Can add user',4,'add_user'),
 (11,'Can change user',4,'change_user'),
 (12,'Can delete user',4,'delete_user'),
 (13,'Can add content type',5,'add_contenttype'),
 (14,'Can change content type',5,'change_contenttype'),
 (15,'Can delete content type',5,'delete_contenttype'),
 (16,'Can add session',6,'add_session'),
 (17,'Can change session',6,'change_session'),
 (18,'Can delete session',6,'delete_session'),
 (19,'Can add review',7,'add_review'),
 (20,'Can change review',7,'change_review'),
 (21,'Can delete review',7,'delete_review'),
 (22,'Can add faqs',8,'add_faqs'),
 (23,'Can change faqs',8,'change_faqs'),
 (24,'Can delete faqs',8,'delete_faqs'),
 (25,'Can add macs',9,'add_macs'),
 (26,'Can change macs',9,'change_macs'),
 (27,'Can delete macs',9,'delete_macs'),
 (28,'Can add screen',10,'add_screen'),
 (29,'Can change screen',10,'change_screen'),
 (30,'Can delete screen',10,'delete_screen'),
 (31,'Can add processor',11,'add_processor'),
 (32,'Can change processor',11,'change_processor'),
 (33,'Can delete processor',11,'delete_processor'),
 (34,'Can add hard drive',12,'add_harddrive'),
 (35,'Can change hard drive',12,'change_harddrive'),
 (36,'Can delete hard drive',12,'delete_harddrive'),
 (37,'Can add macs model',13,'add_macsmodel'),
 (38,'Can change macs model',13,'change_macsmodel'),
 (39,'Can delete macs model',13,'delete_macsmodel'),
 (40,'Can add mac status',14,'add_macstatus'),
 (41,'Can change mac status',14,'change_macstatus'),
 (42,'Can delete mac status',14,'delete_macstatus'),
 (43,'Can add macs buy',15,'add_macsbuy'),
 (44,'Can change macs buy',15,'change_macsbuy'),
 (45,'Can delete macs buy',15,'delete_macsbuy'),
 (46,'Can add contact',16,'add_contact'),
 (47,'Can change contact',16,'change_contact'),
 (48,'Can delete contact',16,'delete_contact'),
 (49,'Can add newsletter',17,'add_newsletter'),
 (50,'Can change newsletter',17,'change_newsletter'),
 (51,'Can delete newsletter',17,'delete_newsletter');
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`auth_user`
--

DROP TABLE IF EXISTS `macwiggle`.`auth_user`;
CREATE TABLE  `macwiggle`.`auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`auth_user`
--

/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
LOCK TABLES `auth_user` WRITE;
INSERT INTO `macwiggle`.`auth_user` VALUES  (1,'pbkdf2_sha256$12000$yMsdebgKURuA$08+bf1ip2eHJhwO8ONvzT0oC0BGkT9jAdO1kgy8t8uY=','2015-05-12 01:05:20',1,'fabiano-rdj','','','fabiano.rdj@gmail.com',1,1,'2015-05-11 19:43:08');
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`auth_user_groups`
--

DROP TABLE IF EXISTS `macwiggle`.`auth_user_groups`;
CREATE TABLE  `macwiggle`.`auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`auth_user_groups`
--

/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
LOCK TABLES `auth_user_groups` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`auth_user_user_permissions`
--

DROP TABLE IF EXISTS `macwiggle`.`auth_user_user_permissions`;
CREATE TABLE  `macwiggle`.`auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`auth_user_user_permissions`
--

/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
LOCK TABLES `auth_user_user_permissions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`django_admin_log`
--

DROP TABLE IF EXISTS `macwiggle`.`django_admin_log`;
CREATE TABLE  `macwiggle`.`django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`django_admin_log`
--

/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
LOCK TABLES `django_admin_log` WRITE;
INSERT INTO `macwiggle`.`django_admin_log` VALUES  (1,'2015-05-11 21:06:37',1,9,'1','MacBook',1,''),
 (2,'2015-05-11 21:06:55',1,9,'2','MacBook Air',1,''),
 (3,'2015-05-11 21:07:19',1,9,'3','MacBook Pro',1,''),
 (4,'2015-05-12 00:19:21',1,13,'1','MacBook Pro (1,1) 2006',1,''),
 (5,'2015-05-12 00:19:52',1,13,'2','MacBook Pro (1,1) 2006',1,''),
 (6,'2015-05-12 00:20:17',1,13,'3','MacBook Pro (1,1) 2006',1,''),
 (7,'2015-05-12 00:21:17',1,13,'4','MacBook Pro (2,1) 2006',1,''),
 (8,'2015-05-12 01:06:33',1,12,'66','250 GB 5400 RPM pro',2,'Changed drive.'),
 (9,'2015-05-12 01:11:51',1,12,'17','250 GB 5400 RPM',3,''),
 (10,'2015-05-12 02:02:35',1,12,'36','256 GB SSD',2,'Changed idScreenKey.'),
 (11,'2015-05-12 02:03:35',1,12,'36','256 GB SSD',2,'Changed idProcessorKey.'),
 (12,'2015-05-12 02:07:27',1,12,'36','256 GB SSD',2,'Changed idProcessorKey.'),
 (13,'2015-05-12 02:42:51',1,10,'4','13.0',2,'Changed size.'),
 (14,'2015-05-12 03:10:12',1,12,'66','250 GB 5400 RPM',2,'Changed drive.'),
 (15,'2015-05-12 03:40:18',1,14,'1','300',1,'');
UNLOCK TABLES;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`django_content_type`
--

DROP TABLE IF EXISTS `macwiggle`.`django_content_type`;
CREATE TABLE  `macwiggle`.`django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`django_content_type`
--

/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
LOCK TABLES `django_content_type` WRITE;
INSERT INTO `macwiggle`.`django_content_type` VALUES  (1,'log entry','admin','logentry'),
 (2,'permission','auth','permission'),
 (3,'group','auth','group'),
 (4,'user','auth','user'),
 (5,'content type','contenttypes','contenttype'),
 (6,'session','sessions','session'),
 (7,'review','signups','review'),
 (8,'faqs','signups','faqs'),
 (9,'macs','signups','macs'),
 (10,'screen','signups','screen'),
 (11,'processor','signups','processor'),
 (12,'hard drive','signups','harddrive'),
 (13,'macs model','signups','macsmodel'),
 (14,'mac status','signups','macstatus'),
 (15,'macs buy','signups','macsbuy'),
 (16,'contact','signups','contact'),
 (17,'newsletter','signups','newsletter');
UNLOCK TABLES;
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`django_session`
--

DROP TABLE IF EXISTS `macwiggle`.`django_session`;
CREATE TABLE  `macwiggle`.`django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`django_session`
--

/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
LOCK TABLES `django_session` WRITE;
INSERT INTO `macwiggle`.`django_session` VALUES  ('9jx21msbszum43cseefu2c6xdl1cdh2t','Y2E4OTdkZDQ5ZDdiNTUwNzhiNDNjMWQwYzBhOWViNmEwMDE2ZDA4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2015-05-25 21:04:36'),
 ('f41pbyorw9pae3tw7vqkpp95tgbm81v6','ZWY2ZTkxYWZlMWE5ZTFlZjRiNzBiMjk1N2FkNWZhNTlhZjM4ZjQ3Mjp7fQ==','2015-05-25 21:04:00'),
 ('i2vu4k33o4594kcjxcn5qx00t2zamhsa','ZWY2ZTkxYWZlMWE5ZTFlZjRiNzBiMjk1N2FkNWZhNTlhZjM4ZjQ3Mjp7fQ==','2015-05-25 21:03:43'),
 ('rb7rquylhwo8bhnqlrr29syvgyghqpw0','ZWY2ZTkxYWZlMWE5ZTFlZjRiNzBiMjk1N2FkNWZhNTlhZjM4ZjQ3Mjp7fQ==','2015-05-25 21:02:23'),
 ('wv64i103lwb6bqfufzpylk7li9b0opt6','Y2E4OTdkZDQ5ZDdiNTUwNzhiNDNjMWQwYzBhOWViNmEwMDE2ZDA4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2015-05-26 01:05:20'),
 ('xcxk05ka39dbil7ufva0kstug53jih1s','ZWY2ZTkxYWZlMWE5ZTFlZjRiNzBiMjk1N2FkNWZhNTlhZjM4ZjQ3Mjp7fQ==','2015-05-25 21:02:22');
UNLOCK TABLES;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`signups_contact`
--

DROP TABLE IF EXISTS `macwiggle`.`signups_contact`;
CREATE TABLE  `macwiggle`.`signups_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `msg` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`signups_contact`
--

/*!40000 ALTER TABLE `signups_contact` DISABLE KEYS */;
LOCK TABLES `signups_contact` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `signups_contact` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`signups_faqs`
--

DROP TABLE IF EXISTS `macwiggle`.`signups_faqs`;
CREATE TABLE  `macwiggle`.`signups_faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(150) NOT NULL,
  `answer` varchar(900) NOT NULL,
  `data_pub` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`signups_faqs`
--

/*!40000 ALTER TABLE `signups_faqs` DISABLE KEYS */;
LOCK TABLES `signups_faqs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `signups_faqs` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`signups_harddrive`
--

DROP TABLE IF EXISTS `macwiggle`.`signups_harddrive`;
CREATE TABLE  `macwiggle`.`signups_harddrive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idMacKey_id` int(11) NOT NULL,
  `idScreenKey_id` int(11) NOT NULL,
  `idProcessorKey_id` int(11) NOT NULL,
  `drive` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signups_harddrive_da51e771` (`idMacKey_id`),
  KEY `signups_harddrive_dad30b9e` (`idScreenKey_id`),
  KEY `signups_harddrive_c5bb4b7e` (`idProcessorKey_id`),
  CONSTRAINT `idMacKey_id_refs_id_cf9eca5d` FOREIGN KEY (`idMacKey_id`) REFERENCES `signups_macs` (`id`),
  CONSTRAINT `idProcessorKey_id_refs_id_ca64a2d3` FOREIGN KEY (`idProcessorKey_id`) REFERENCES `signups_processor` (`id`),
  CONSTRAINT `idScreenKey_id_refs_id_31cf785d` FOREIGN KEY (`idScreenKey_id`) REFERENCES `signups_screen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`signups_harddrive`
--

/*!40000 ALTER TABLE `signups_harddrive` DISABLE KEYS */;
LOCK TABLES `signups_harddrive` WRITE;
INSERT INTO `macwiggle`.`signups_harddrive` VALUES  (1,1,2,1,'60 GB 5400 RPM'),
 (2,1,2,2,'60 GB 5400 RPM'),
 (3,1,2,2,'80 GB 5400 RPM'),
 (4,1,2,3,'60 GB 5400 RPM'),
 (5,1,2,4,'80 GB 5400 RPM'),
 (6,1,2,4,'120 GB 5400 RPM'),
 (7,1,2,5,'120 GB 5400 RPM'),
 (8,1,2,5,'160 GB 5400 RPM'),
 (9,1,2,7,'120 GB 5400 RPM'),
 (10,1,2,7,'160 GB 5400 RPM'),
 (11,1,2,6,'120 GB 5400 RPM'),
 (12,1,2,8,'160 GB 5400 RPM'),
 (13,1,2,8,'250 GB 5400 RPM'),
 (14,1,2,4,'160 GB 5400 RPM'),
 (15,1,2,9,'160 GB 5400 RPM'),
 (16,1,2,10,'250 GB 5400 RPM'),
 (18,1,1,11,'256 GB SSD'),
 (19,1,1,12,'512 GB SSD'),
 (20,1,1,13,'256 GB SSD'),
 (21,1,1,13,'512 GB SSD'),
 (22,2,3,15,'64 GB SSD'),
 (23,2,3,14,'120 GB 4200 RPM'),
 (24,2,3,16,'128 GB SSD'),
 (25,2,3,16,'120 GB 4200 RPM'),
 (26,2,3,17,'128 GB SSD'),
 (27,2,3,18,'64 GB SSD'),
 (28,2,3,18,'128 GB SSD'),
 (29,2,3,14,'128 GB SSD'),
 (30,2,3,17,'256 GB SSD'),
 (31,2,3,16,'256 GB SSD'),
 (32,2,3,20,'64 GB SSD'),
 (33,2,3,20,'128 GB SSD'),
 (34,2,3,19,'128 GB SSD'),
 (35,2,3,20,'256 GB SSD'),
 (36,2,3,27,'256 GB SSD'),
 (37,2,4,26,'64 GB SSD'),
 (38,2,4,22,'128 GB SSD'),
 (39,2,4,22,'64 GB SSD'),
 (40,2,4,23,'128 GB SSD'),
 (41,2,4,23,'256 GB SSD'),
 (42,2,4,24,'128 GB SSD'),
 (43,2,4,24,'256 GB SSD'),
 (44,2,4,21,'80 GB 4200 RPM'),
 (45,2,4,28,'128 GB SSD'),
 (46,2,4,28,'256 GB SSD'),
 (47,2,4,29,'128 GB SSD'),
 (48,2,4,29,'256 GB SSD'),
 (49,2,4,27,'128 GB SSD'),
 (50,2,4,27,'256 GB SSD'),
 (51,2,4,30,'128 GB SSD'),
 (52,2,4,30,'256 GB SSD'),
 (53,3,5,31,'80 GB 5400 RPM'),
 (54,3,5,32,'80 GB 5400 RPM'),
 (55,3,5,33,'80 GB 5400 RPM'),
 (56,3,5,33,'100 GB 5400 RPM'),
 (57,3,5,34,'100 GB 5400 RPM'),
 (58,3,5,35,'120 GB 5400 RPM'),
 (59,3,5,36,'120 GB 5400 RPM'),
 (60,3,5,37,'120 GB 5400 RPM'),
 (61,3,5,38,'160 GB 5400 RPM'),
 (62,3,5,38,'200 GB 5400 RPM'),
 (63,3,5,41,'160 GB 5400 RPM'),
 (64,3,5,39,'250 GB 5400 RPM'),
 (65,3,5,41,'250 GB 5400 RPM'),
 (66,3,5,38,'250 GB 5400 RPM'),
 (67,3,5,40,'320 GB 5400 RPM'),
 (68,3,5,43,'320 GB 5400 RPM'),
 (69,3,5,42,'320 GB 5400 RPM'),
 (70,3,5,44,'320 GB 5400 RPM'),
 (71,3,5,40,'250 GB 5400 RPM'),
 (72,3,5,42,'320 GB 5400 RPM'),
 (73,3,5,43,'500 GB 5400 RPM'),
 (74,3,5,45,'500 GB 5400 RPM'),
 (75,3,5,46,'320 GB 5400 RPM'),
 (76,3,5,56,'500 GB 5400 RPM'),
 (77,3,5,48,'500 GB 5400 RPM'),
 (78,3,5,49,'500 GB 5400 RPM'),
 (79,3,5,49,'750 GB 5400 RPM'),
 (80,3,5,50,'500 GB 5400 RPM'),
 (81,3,5,50,'750 GB 5400 RPM'),
 (82,3,5,51,'256 GB SSD'),
 (83,3,5,51,'512 GB SSD'),
 (84,3,5,53,'512 GB SSD'),
 (85,3,5,52,'256 GB SSD'),
 (86,3,5,52,'512 GB SSD'),
 (87,3,5,54,'256 GB SSD'),
 (88,3,5,54,'512 GB SSD'),
 (89,3,5,55,'256 GB SSD'),
 (90,3,5,55,'512 GB SSD'),
 (91,3,5,47,'512 GB SSD');
UNLOCK TABLES;
/*!40000 ALTER TABLE `signups_harddrive` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`signups_macs`
--

DROP TABLE IF EXISTS `macwiggle`.`signups_macs`;
CREATE TABLE  `macwiggle`.`signups_macs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameMac` varchar(200) NOT NULL,
  `imgMac` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`signups_macs`
--

/*!40000 ALTER TABLE `signups_macs` DISABLE KEYS */;
LOCK TABLES `signups_macs` WRITE;
INSERT INTO `macwiggle`.`signups_macs` VALUES  (1,'MacBook','macbook.jpg'),
 (2,'MacBook Air','macbook_air.jpg'),
 (3,'MacBook Pro','macbook_pro.jpg');
UNLOCK TABLES;
/*!40000 ALTER TABLE `signups_macs` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`signups_macsbuy`
--

DROP TABLE IF EXISTS `macwiggle`.`signups_macsbuy`;
CREATE TABLE  `macwiggle`.`signups_macsbuy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(150) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(5) NOT NULL,
  `macModel` varchar(100) NOT NULL,
  `macPrice` varchar(20) NOT NULL,
  `macState` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`signups_macsbuy`
--

/*!40000 ALTER TABLE `signups_macsbuy` DISABLE KEYS */;
LOCK TABLES `signups_macsbuy` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `signups_macsbuy` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`signups_macsmodel`
--

DROP TABLE IF EXISTS `macwiggle`.`signups_macsmodel`;
CREATE TABLE  `macwiggle`.`signups_macsmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idMacKey_id` int(11) NOT NULL,
  `idScreenKey_id` int(11) NOT NULL,
  `idProcessorKey_id` int(11) NOT NULL,
  `idHdKey_id` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signups_macsmodel_da51e771` (`idMacKey_id`),
  KEY `signups_macsmodel_dad30b9e` (`idScreenKey_id`),
  KEY `signups_macsmodel_c5bb4b7e` (`idProcessorKey_id`),
  KEY `signups_macsmodel_4a3beef4` (`idHdKey_id`),
  CONSTRAINT `idHdKey_id_refs_id_1ca5c8d2` FOREIGN KEY (`idHdKey_id`) REFERENCES `signups_harddrive` (`id`),
  CONSTRAINT `idMacKey_id_refs_id_75d20834` FOREIGN KEY (`idMacKey_id`) REFERENCES `signups_macs` (`id`),
  CONSTRAINT `idProcessorKey_id_refs_id_7c57da40` FOREIGN KEY (`idProcessorKey_id`) REFERENCES `signups_processor` (`id`),
  CONSTRAINT `idScreenKey_id_refs_id_28ae3466` FOREIGN KEY (`idScreenKey_id`) REFERENCES `signups_screen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`signups_macsmodel`
--

/*!40000 ALTER TABLE `signups_macsmodel` DISABLE KEYS */;
LOCK TABLES `signups_macsmodel` WRITE;
INSERT INTO `macwiggle`.`signups_macsmodel` VALUES  (1,1,2,1,1,'MacBook (1,1) 2006'),
 (2,1,2,2,2,'MacBook (1,1) 2006'),
 (3,1,2,2,3,'MacBook (1,1) 2006'),
 (4,1,2,3,4,'MacBook (2,1) 2006'),
 (5,1,2,4,5,'MacBook (2,1) 2006'),
 (6,1,2,4,6,'MacBook (2,1) 2006'),
 (8,1,2,5,7,'MacBook (2,1) 2007'),
 (9,1,2,5,8,'MacBook (2,1) 2007'),
 (10,1,2,7,9,'MacBook (3,1) 2007'),
 (11,1,2,7,10,'MacBook (3,1) 2007'),
 (12,1,2,6,11,'MacBook (4,1) 2008'),
 (13,1,2,8,12,'MacBook (4,1) 2008'),
 (14,1,2,8,13,'MacBook (4,1) 2008'),
 (15,1,2,4,14,'MacBook (5,1) 2008'),
 (16,1,2,9,15,'MacBook (5,2) 2009'),
 (17,1,2,10,16,'MacBook (6,1) 2009'),
 (18,1,1,11,18,'MacBook (8,1) 2015'),
 (19,1,1,12,19,'MacBook (8,1) 2015'),
 (20,1,1,13,20,'MacBook (8,1) 2015'),
 (21,1,1,13,21,'MacBook (8,1) 2015'),
 (22,2,3,15,22,'MacBook Air (1,1) 2008'),
 (23,2,3,14,23,'MacBook Air (2,1) 2008'),
 (24,2,3,16,24,'MacBook Air (2,1) 2008'),
 (25,2,3,16,25,'MacBook Air (2,1) 2009'),
 (26,2,3,17,26,'MacBook Air (2,1) 2009'),
 (27,2,3,18,27,'MacBook Air (3,1) 2010'),
 (28,2,3,18,28,'MacBook Air (3,1) 2010'),
 (29,2,3,14,29,'MacBook Air (3,1) 2010'),
 (30,2,3,17,30,'MacBook Air (3,2) 2010'),
 (31,2,3,16,31,'MacBook Air (3,1) 2010'),
 (32,2,3,20,32,'MacBook Air (4,1) 2011'),
 (33,2,3,20,33,'MacBook Air (4,1) 2011'),
 (34,2,3,19,34,'MacBook Air (4,1) 2011'),
 (35,2,3,20,35,'MacBook Air (4,2) 2011'),
 (36,2,4,27,36,'MacBook Air (4,2) 2011'),
 (37,2,4,25,37,'MacBook Air (4,2) 2012'),
 (38,2,4,22,38,'MacBook Air (5,1) 2012'),
 (39,2,4,22,39,'MacBook Air (5,1) 2012'),
 (40,2,4,23,40,'MacBook Air (5,2) 2012'),
 (41,2,4,23,41,'MacBook Air (5,2) 2012'),
 (42,2,4,24,42,'MacBook Air (6,1) 2013'),
 (43,2,4,24,43,'MacBook Air (6,1) 2013'),
 (44,2,4,21,44,'MacBook Air (1,1) 2008'),
 (45,2,4,28,45,'MacBook Air (6,2) 2013'),
 (46,2,4,28,46,'MacBook Air (6,2) 2013'),
 (47,2,4,29,47,'MacBook Air (6,1) 2014'),
 (48,2,4,29,48,'MacBook Air (6,1) 2014'),
 (49,2,4,27,49,'MacBook Air (6,2) 2014 or MacBook Air (7,1) 2015 '),
 (50,2,4,27,50,'MacBook Air (6,2) 2014 or MacBook Air (7,1) 2015 '),
 (51,2,4,30,51,'MacBook Air (7,2) 2015'),
 (52,2,4,30,52,'MacBook Air (7,2) 2015'),
 (53,3,5,31,53,'Macbook Pro (1,1) 2006'),
 (54,3,5,32,54,'Macbook Pro (1,1) 2006'),
 (55,3,5,33,55,'Macbook Pro (1,1) 2006'),
 (56,3,5,33,56,'Macbook Pro (1,1) 2006'),
 (57,3,5,34,57,'Macbook Pro (1,1) 2006'),
 (58,3,5,35,58,'Macbook Pro (2,2) 2006'),
 (59,3,5,36,59,'Macbook Pro (3,1) 2007'),
 (60,3,5,37,60,'Macbook Pro (2,2) 2006'),
 (61,3,5,38,61,'Macbook Pro (3,1) 2007'),
 (62,3,5,38,62,'Macbook Pro (4,1) 2008'),
 (63,3,5,41,63,'Macbook Pro (3,1) 2007'),
 (64,3,5,39,64,'Macbook Pro (4,1) 2008'),
 (65,3,5,41,65,'Macbook Pro (4,1) 2008'),
 (66,3,5,38,66,'Macbook Pro (5,1) 2008'),
 (67,3,5,40,67,'Macbook Pro (5,1) 2008'),
 (68,3,5,43,68,'Macbook Pro (5,1) 2008'),
 (69,3,5,42,69,'Macbook Pro (5,1) 2009'),
 (70,3,5,44,70,'Macbook Pro (5,1) 2009'),
 (71,3,5,40,71,'Macbook Pro (5,4) 2009'),
 (72,3,5,42,72,'Macbook Pro (5,3) 2009'),
 (73,3,5,43,73,'Macbook Pro (5,3) 2009'),
 (74,3,5,45,74,'Macbook Pro (5,3) 2009'),
 (75,3,5,46,75,'Macbook Pro (6,2) 2010'),
 (76,3,5,56,76,'Macbook Pro (6,2) 2010'),
 (77,3,5,48,77,'Macbook Pro (6,2) 2010'),
 (78,3,5,49,78,'Macbook Pro (8,2) 2011'),
 (79,3,5,49,79,'Macbook Pro (8,2) 2011'),
 (80,3,5,50,80,'Macbook Pro (9,1) 2012'),
 (81,3,5,50,81,'Macbook Pro (9,1) 2012'),
 (82,3,5,51,82,'Macbook Pro (10,1) 2012'),
 (83,3,5,51,83,'Macbook Pro (10,1) 2012'),
 (84,3,5,53,84,'Macbook Pro (10,1) 2012'),
 (85,3,5,52,85,'Macbook Pro (10,1) 2013'),
 (86,3,5,52,86,'Macbook Pro (10,1) 2013'),
 (87,3,5,54,87,'Macbook Pro (11,2) 2013'),
 (88,3,5,54,88,'Macbook Pro (11,2) 2013'),
 (89,3,5,55,89,'Macbook Pro (11,2) 2014'),
 (90,3,5,55,90,'Macbook Pro (11,2) 2014'),
 (91,3,5,47,91,'Macbook Pro (11,3) 2014');
UNLOCK TABLES;
/*!40000 ALTER TABLE `signups_macsmodel` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`signups_macstatus`
--

DROP TABLE IF EXISTS `macwiggle`.`signups_macstatus`;
CREATE TABLE  `macwiggle`.`signups_macstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idMacKey_id` int(11) NOT NULL,
  `idModelKey_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `price` varchar(30) NOT NULL,
  `msg` varchar(900) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signups_macstatus_da51e771` (`idMacKey_id`),
  KEY `signups_macstatus_f6ad2392` (`idModelKey_id`),
  CONSTRAINT `idMacKey_id_refs_id_95c1f0c5` FOREIGN KEY (`idMacKey_id`) REFERENCES `signups_macs` (`id`),
  CONSTRAINT `idModelKey_id_refs_id_241719a9` FOREIGN KEY (`idModelKey_id`) REFERENCES `signups_macsmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`signups_macstatus`
--

/*!40000 ALTER TABLE `signups_macstatus` DISABLE KEYS */;
LOCK TABLES `signups_macstatus` WRITE;
INSERT INTO `macwiggle`.`signups_macstatus` VALUES  (1,1,1,'1','300','ghghhghghgg');
UNLOCK TABLES;
/*!40000 ALTER TABLE `signups_macstatus` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`signups_newsletter`
--

DROP TABLE IF EXISTS `macwiggle`.`signups_newsletter`;
CREATE TABLE  `macwiggle`.`signups_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`signups_newsletter`
--

/*!40000 ALTER TABLE `signups_newsletter` DISABLE KEYS */;
LOCK TABLES `signups_newsletter` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `signups_newsletter` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`signups_processor`
--

DROP TABLE IF EXISTS `macwiggle`.`signups_processor`;
CREATE TABLE  `macwiggle`.`signups_processor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `processor` varchar(30) NOT NULL,
  `idMacKey_id` int(11) NOT NULL,
  `idScreenKey_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signups_processor_da51e771` (`idMacKey_id`),
  KEY `signups_processor_dad30b9e` (`idScreenKey_id`),
  CONSTRAINT `idMacKey_id_refs_id_badadcab` FOREIGN KEY (`idMacKey_id`) REFERENCES `signups_macs` (`id`),
  CONSTRAINT `idScreenKey_id_refs_id_207f991b` FOREIGN KEY (`idScreenKey_id`) REFERENCES `signups_screen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`signups_processor`
--

/*!40000 ALTER TABLE `signups_processor` DISABLE KEYS */;
LOCK TABLES `signups_processor` WRITE;
INSERT INTO `macwiggle`.`signups_processor` VALUES  (1,'Core Due 1.83 Ghz',1,2),
 (2,'Core Due 2.0 Ghz',1,2),
 (3,'Core 2 Due 1.83 Ghz',1,2),
 (4,'Core 2 Due 2.0 Ghz',1,2),
 (5,'Core 2 Due 2.16 Ghz',1,2),
 (6,'Core 2 Due 2.1 Ghz',1,2),
 (7,'Core 2 Due 2.2 Ghz',1,2),
 (8,'Core 2 Due 2.4 Ghz',1,2),
 (9,'Core 2 Due 2.13 Ghz',1,2),
 (10,'Core 2 Due 2.26 Ghz',1,2),
 (11,'Core M 1.1 Ghz',1,1),
 (12,'Core M 1.2 Ghz',1,1),
 (13,'Core M 1.3 Ghz',1,1),
 (14,'Core 2 Due 1.6 GHz',2,3),
 (15,'Core 2 Due 1.8 GHz',2,3),
 (16,'Core 2 Due 1.86 GHz',2,3),
 (17,'Core 2 Due 2.13 GHz',2,3),
 (18,'Core 2 Due 1.4 GHz',2,3),
 (19,'Core i5 1.7 GHz',2,3),
 (20,'Core i5 1.6 GHz',2,3),
 (21,'Core 2 Due 1.6 GHz',2,4),
 (22,'Core i5 1.3 GHz',2,4),
 (23,'Core i5 1.4 GHz',2,4),
 (24,'Core i5 1.6 GHz',2,4),
 (25,'Core i5 1.7 GHz',2,4),
 (26,'Core i5 1.8 GHz',2,4),
 (27,'Core i7 1.7 GHz',2,4),
 (28,'Core i7 1.8 GHz',2,4),
 (29,'Core i7 2.0 GHz',2,4),
 (30,'Core i7 2.2 GHz',2,4),
 (31,'Core Due 1.67 GHz',3,5),
 (32,'Core Due 1.83 GHz',3,5),
 (33,'Core Due 2.0 GHz',3,5),
 (34,'Core Due 2.16 GHz',3,5),
 (35,'Core 2 Due 2.16 Ghz',3,5),
 (36,'Core 2 Due 2.2 Ghz',3,5),
 (37,'Core 2 Due 2.33 Ghz',3,5),
 (38,'Core 2 Due 2.4 Ghz',3,5),
 (39,'Core 2 Due 2.5 Ghz',3,5),
 (40,'Core 2 Due 2.53 Ghz',3,5),
 (41,'Core 2 Due 2.6 Ghz',3,5),
 (42,'Core 2 Due 2.66 Ghz',3,5),
 (43,'Core 2 Due 2.8 Ghz',3,5),
 (44,'Core 2 Due 2.93 Ghz',3,5),
 (45,'Core 2 Due 3.06 Ghz',3,5),
 (46,'Core i5 2.4 GHz',3,5),
 (47,'Core i7 2.0 GHz',3,5),
 (48,'Core i7 2.2 GHz',3,5),
 (49,'Core i7 2.3 GHz',3,5),
 (50,'Core i7 2.4 GHz',3,5),
 (51,'Core i7 2.5 GHz',3,5),
 (52,'Core i7 2.6 GHz',3,5),
 (53,'Core i7 2.66 GHz',3,5),
 (54,'Core i7 2.7 GHz',3,5),
 (55,'Core i7 2.8 GHz',3,5),
 (56,'Core i5 2.53 GHz',3,5);
UNLOCK TABLES;
/*!40000 ALTER TABLE `signups_processor` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`signups_review`
--

DROP TABLE IF EXISTS `macwiggle`.`signups_review`;
CREATE TABLE  `macwiggle`.`signups_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review` varchar(200) NOT NULL,
  `ReviewName` varchar(200) NOT NULL,
  `ReviewProf` varchar(200) NOT NULL,
  `data_pub` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`signups_review`
--

/*!40000 ALTER TABLE `signups_review` DISABLE KEYS */;
LOCK TABLES `signups_review` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `signups_review` ENABLE KEYS */;


--
-- Definition of table `macwiggle`.`signups_screen`
--

DROP TABLE IF EXISTS `macwiggle`.`signups_screen`;
CREATE TABLE  `macwiggle`.`signups_screen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` double NOT NULL,
  `idMacKey_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signups_screen_da51e771` (`idMacKey_id`),
  CONSTRAINT `idMacKey_id_refs_id_4caceee1` FOREIGN KEY (`idMacKey_id`) REFERENCES `signups_macs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macwiggle`.`signups_screen`
--

/*!40000 ALTER TABLE `signups_screen` DISABLE KEYS */;
LOCK TABLES `signups_screen` WRITE;
INSERT INTO `macwiggle`.`signups_screen` VALUES  (1,12,1),
 (2,13,1),
 (3,11,2),
 (4,13,2),
 (5,15,3);
UNLOCK TABLES;
/*!40000 ALTER TABLE `signups_screen` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;