# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.22)
# Database: game
# Generation Time: 2018-08-02 14:05:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table alphabet
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alphabet`;

CREATE TABLE `alphabet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `letter` varchar(1) DEFAULT NULL,
  `word` varchar(45) DEFAULT NULL,
  `meaning` varchar(255) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `phonetic` varchar(45) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alphabet` WRITE;
/*!40000 ALTER TABLE `alphabet` DISABLE KEYS */;

INSERT INTO `alphabet` (`id`, `letter`, `word`, `meaning`, `image`, `phonetic`, `updated_at`, `created_at`)
VALUES
	(1,'ก','ก ไก่','chicken',NULL,'ko kai','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(2,'ข','ข ไข่','egg',NULL,'kho khai','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(3,'ฃ','ฃ ขวด','bottle (obsolete)',NULL,'kho khuat','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(4,'ค','ค ควาย','buffalo',NULL,'kho khwai','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(5,'ฅ','ฅ คน','person (obsolete)',NULL,'kho khon','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(6,'ฆ','ฆ ระฆัง','bell',NULL,'kho ra-khang','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(7,'ง','ง งู','snake',NULL,'ngo ngu','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(8,'จ','จ จาน','plate',NULL,'cho chan','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(9,'ฉ','ฉ ฉิ่ง','cymbals',NULL,'cho ching','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(10,'ช','ช ช้าง','elephant',NULL,'cho chang','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(11,'ซ','ซ โซ่','chain',NULL,'so so','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(12,'ฌ','ฌ เฌอ','tree',NULL,'cho choe','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(13,'ญ','ญ หญิง','woman',NULL,'yo ying','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(14,'ฎ','ฎ ชฎา','headdress',NULL,'do cha-da','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(15,'ฏ','ฏ ปฏัก','goad, javelin',NULL,'to pa-tak','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(16,'ฐ','ฐ ฐาน','pedestal',NULL,'tho than','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(17,'ฑ','ฑ มณโฑ','Montho, character from Ramayana',NULL,'tho montho','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(18,'ฒ','ฒ ผู้เฒ่า','elder',NULL,'tho phu-thao','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(19,'ณ','ณ เณร','samanera',NULL,'no nen','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(20,'ด','ด เด็ก','child',NULL,'do dek','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(21,'ต','ต เต่า','turtle',NULL,'to tao','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(22,'ถ','ถ ถุง','sack',NULL,'tho thung','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(23,'ท','ท ทหาร','soldier',NULL,'tho thahan','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(24,'ธ','ธ ธง','flag',NULL,'tho thong','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(25,'น','น หนู','mouse',NULL,'no nu','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(26,'บ','บ ใบไม้','leaf',NULL,'bo baimai','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(27,'ป','ป ปลา','fish',NULL,'po pla','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(28,'ผ','ผ ผึ้ง','bee',NULL,'pho phueng','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(29,'ฝ','ฝ ฝา','lid',NULL,'fo fa','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(30,'พ','พ พาน','phan',NULL,'pho phan','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(31,'ฟ','ฟ ฟัน','teeth',NULL,'fo fan','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(32,'ภ','ภ สำเภา','Junk',NULL,'pho sam-phao','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(33,'ม','ม ม้า','horse',NULL,'mo ma','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(34,'ย','ย ยักษ์','giant, yaksha',NULL,'yo yak','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(35,'ร','ร เรือ','boat',NULL,'ro ruea','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(36,'ล','ล ลิง','monkey',NULL,'lo ling','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(37,'ว','ว แหวน','ring',NULL,'wo waen','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(38,'ศ','ศ ศาลา','pavilion, sala',NULL,'so sala','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(39,'ษ','ษ ฤๅษี','hermit',NULL,'so rue-si','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(40,'ส','ส เสือ','tiger',NULL,'so suea','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(41,'ห','ห หีบ','chest, box',NULL,'ho hip','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(42,'ฬ','ฬ จุฬา','kite',NULL,'lo chu-la','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(43,'อ','อ อ่าง','basin',NULL,'o ang','2018-08-02 13:54:36','2018-08-02 13:54:36'),
	(44,'ฮ','ฮ นกฮูก','owl',NULL,'ho nok-huk','2018-08-02 13:54:36','2018-08-02 13:54:36');

/*!40000 ALTER TABLE `alphabet` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Rogier','svp@xs4all.nl','$2y$10$sIsqELs2mrEU2wymamdXmuJRiYuHhhLoR8vf7XqUTogRIn8np/WRi',NULL,'2018-08-02 14:03:10','2018-08-02 14:03:10');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
