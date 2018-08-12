# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.22)
# Database: game
# Generation Time: 2018-08-12 07:52:15 +0000
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
  `type` enum('consonant','vowel') DEFAULT NULL,
  `letter` varchar(5) DEFAULT NULL,
  `word` varchar(45) DEFAULT NULL,
  `meaning` varchar(255) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `sound` varchar(45) DEFAULT NULL,
  `phonetic` varchar(45) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alphabet` WRITE;
/*!40000 ALTER TABLE `alphabet` DISABLE KEYS */;

INSERT INTO `alphabet` (`id`, `type`, `letter`, `word`, `meaning`, `image`, `sound`, `phonetic`, `updated_at`, `created_at`)
VALUES
	(1,'consonant','ก','ก ไก่','chicken','chicken.jpg','ko-kai.mp3','ko kai','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(2,'consonant','ข','ข ไข่','egg','egg.jpg','kho-khai.mp3','kho khai','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(3,'consonant','ฃ','ฃ ขวด','bottle (obsolete)','bottle-obsolete.jpg','kho-khuat.mp3','kho khuat','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(4,'consonant','ค','ค ควาย','buffalo','buffalo.jpg','kho-khwai.mp3','kho khwai','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(5,'consonant','ฅ','ฅ คน','person (obsolete)','person-obsolete.jpg','kho-khon.mp3','kho khon','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(6,'consonant','ฆ','ฆ ระฆัง','bell','bell.jpg','kho-ra-khang.mp3','kho ra-khang','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(7,'consonant','ง','ง งู','snake','snake.jpg','ngo-ngu.mp3','ngo ngu','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(8,'consonant','จ','จ จาน','plate','plate.jpg','cho-chan.mp3','cho chan','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(9,'consonant','ฉ','ฉ ฉิ่ง','cymbals','cymbals.jpg','cho-ching.mp3','cho ching','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(10,'consonant','ช','ช ช้าง','elephant','elephant.jpg','cho-chang.mp3','cho chang','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(11,'consonant','ซ','ซ โซ่','chain','chain.jpg','so-so.mp3','so so','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(12,'consonant','ฌ','ฌ เฌอ','tree','tree.jpg','cho-choe.mp3','cho choe','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(13,'consonant','ญ','ญ หญิง','woman','woman.jpg','yo-ying.mp3','yo ying','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(14,'consonant','ฎ','ฎ ชฎา','headdress','headdress.jpg','do-cha-da.mp3','do cha-da','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(15,'consonant','ฏ','ฏ ปฏัก','goad, javelin','goad-javelin.jpg','to-pa-tak.mp3','to pa-tak','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(16,'consonant','ฐ','ฐ ฐาน','pedestal','pedestal.jpg','tho-than.mp3','tho than','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(17,'consonant','ฑ','ฑ มณโฑ','Montho, character from Ramayana','montho-character-from-ramayana.jpg','tho-montho.mp3','tho montho','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(18,'consonant','ฒ','ฒ ผู้เฒ่า','elder','elder.jpg','tho-phu-thao.mp3','tho phu-thao','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(19,'consonant','ณ','ณ เณร','samanera','samanera.jpg','no-nen.mp3','no nen','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(20,'consonant','ด','ด เด็ก','child','child.jpg','do-dek.mp3','do dek','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(21,'consonant','ต','ต เต่า','turtle','turtle.jpg','to-tao.mp3','to tao','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(22,'consonant','ถ','ถ ถุง','sack','sack.jpg','tho-thung.mp3','tho thung','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(23,'consonant','ท','ท ทหาร','soldier','soldier.jpg','tho-thahan.mp3','tho thahan','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(24,'consonant','ธ','ธ ธง','flag','flag.jpg','tho-thong.mp3','tho thong','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(25,'consonant','น','น หนู','mouse','mouse.jpg','no-nu.mp3','no nu','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(26,'consonant','บ','บ ใบไม้','leaf','leaf.jpg','bo-baimai.mp3','bo baimai','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(27,'consonant','ป','ป ปลา','fish','fish.jpg','po-pla.mp3','po pla','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(28,'consonant','ผ','ผ ผึ้ง','bee','bee.jpg','pho-phueng.mp3','pho phueng','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(29,'consonant','ฝ','ฝ ฝา','lid','lid.jpg','fo-fa.mp3','fo fa','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(30,'consonant','พ','พ พาน','phan','phan.jpg','pho-phan.mp3','pho phan','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(31,'consonant','ฟ','ฟ ฟัน','teeth','teeth.jpg','fo-fan.mp3','fo fan','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(32,'consonant','ภ','ภ สำเภา','Junk','junk.jpg','pho-sam-phao.mp3','pho sam-phao','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(33,'consonant','ม','ม ม้า','horse','horse.jpg','mo-ma.mp3','mo ma','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(34,'consonant','ย','ย ยักษ์','giant, yaksha','giant-yaksha.jpg','yo-yak.mp3','yo yak','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(35,'consonant','ร','ร เรือ','boat','boat.jpg','ro-ruea.mp3','ro ruea','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(36,'consonant','ล','ล ลิง','monkey','monkey.jpg','lo-ling.mp3','lo ling','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(37,'consonant','ว','ว แหวน','ring','ring.jpg','wo-waen.mp3','wo waen','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(38,'consonant','ศ','ศ ศาลา','pavilion, sala','pavilion-sala.jpg','so-sala.mp3','so sala','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(39,'consonant','ษ','ษ ฤๅษี','hermit','hermit.jpg','so-rue-si.mp3','so rue-si','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(40,'consonant','ส','ส เสือ','tiger','tiger.jpg','so-suea.mp3','so suea','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(41,'consonant','ห','ห หีบ','chest, box','chest-box.jpg','ho-hip.mp3','ho hip','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(42,'consonant','ฬ','ฬ จุฬา','kite','kite.jpg','lo-chu-la.mp3','lo chu-la','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(43,'consonant','อ','อ อ่าง','basin','basin.jpg','o-ang.mp3','o ang','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(44,'consonant','ฮ','ฮ นกฮูก','owl','owl.jpg','ho-nok-huk.mp3','ho nok-huk','2018-08-03 16:28:12','2018-08-02 13:54:36'),
	(45,NULL,'อั-','-a-',NULL,NULL,NULL,NULL,NULL,NULL),
	(46,NULL,'-ะ','-a',NULL,NULL,NULL,NULL,NULL,NULL),
	(47,NULL,'-า-','-aa-',NULL,NULL,NULL,NULL,NULL,NULL),
	(48,NULL,'-า','-aa',NULL,NULL,NULL,NULL,NULL,NULL),
	(49,NULL,'แอ็-','-ae-',NULL,NULL,NULL,NULL,NULL,NULL),
	(50,NULL,'แ-ะ	','-ae',NULL,NULL,NULL,NULL,NULL,NULL),
	(51,NULL,'แ--','-aae-',NULL,NULL,NULL,NULL,NULL,NULL),
	(52,NULL,'แ-','-aae',NULL,NULL,NULL,NULL,NULL,NULL),
	(53,NULL,'อ็อ-','-aw-',NULL,NULL,NULL,NULL,NULL,NULL),
	(54,NULL,'เ-าะ','-aw',NULL,NULL,NULL,NULL,NULL,NULL),
	(55,NULL,'-อ-','-aaw-',NULL,NULL,NULL,NULL,NULL,NULL),
	(56,NULL,'-อ','-aaw',NULL,NULL,NULL,NULL,NULL,NULL),
	(57,NULL,'เอ็-	','-e-',NULL,NULL,NULL,NULL,NULL,NULL),
	(58,NULL,'เ-ะ','-eh',NULL,NULL,NULL,NULL,NULL,NULL),
	(59,NULL,'เ--','-aeh-',NULL,NULL,NULL,NULL,NULL,NULL),
	(60,NULL,'เ-','-aeh',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `alphabet` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
