-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: info
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Current Database: `info`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `info` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `info`;

--
-- Table structure for table `batchblock`
--

DROP TABLE IF EXISTS `batchblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batchblock` (
  `hash` varbinary(32) NOT NULL,
  `block` mediumblob NOT NULL,
  `inserttime` datetime NOT NULL,
  PRIMARY KEY (`hash`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchblock`
--

LOCK TABLES `batchblock` WRITE;
/*!40000 ALTER TABLE `batchblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `batchblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `hash` varbinary(32) NOT NULL,
  `height` bigint(20) NOT NULL,
  `block` mediumblob NOT NULL,
  `wasundoable` tinyint(1) NOT NULL,
  `prevblockhash` varbinary(32) NOT NULL,
  `prevbranchblockhash` varbinary(32) NOT NULL,
  `mineraddress` varbinary(255) DEFAULT NULL,
  `tokenid` varbinary(255) DEFAULT NULL,
  `blocktype` bigint(20) NOT NULL,
  `rating` bigint(20) DEFAULT NULL,
  `depth` bigint(20) DEFAULT NULL,
  `cumulativeweight` bigint(20) DEFAULT NULL,
  `milestone` tinyint(1) DEFAULT NULL,
  `milestonelastupdate` bigint(20) DEFAULT NULL,
  `milestonedepth` bigint(20) DEFAULT NULL,
  `inserttime` bigint(20) DEFAULT NULL,
  `maintained` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`hash`) USING BTREE,
  KEY `blocks_prevbranchblockhash_idx` (`prevbranchblockhash`) USING HASH,
  KEY `blocks_prevblockhash_idx` (`prevblockhash`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES ('[\Û3ñ†;ƒ›\ÄIA;DG0\Èv\İÀ¬J»rƒ\Ñ*',19,'\0\0\0MS\ÙQ¤‰B	R\\ò\èË˜(	\r•v›ò+ùI¢\èŠ7MS\ÙQ¤‰B	R\\ò\èË˜(	\r•v›ò+ùI¢\èŠ7²³2°J7g³uš4…1¬R\í\Â\ÇNkw\Â*\ç/³\í\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0j§9ñ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ó\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 3,\n  \"toHeight\" : 19,\n  \"prevHash\" : {\n    \"bytes\" : \"JkfcSo1Am661l6Vnz9lFk3hCsjsV1eFYt475IfX/VJw=\",\n    \"reversedBytes\" : \"nFT/9SH5jrdY4dUVO7JCeJNF2c9npZe1rptAjUrcRyY=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'7Š\è¢Iù+ò›v•\r	(˜\Ë\èò\\R	B‰¤Q\ÙSM','7Š\è¢Iù+ò›v•\r	(˜\Ë\èò\\R	B‰¤Q\ÙSM','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,3,4,1,1559081783721,3,1559081776444,1),('~\í/ø­ \Îßœ\ç\Í\Êi±\éW\\EÀòO|~$a“fg',14,'\0\0\0=xú\ÂÆ¬\ã9©\âƒø¡\'¤^VJ‡\ÇÑƒŞ½\r\Ë$=xú\ÂÆ¬\ã9©\âƒø¡\'¤^VJ‡\ÇÑƒŞ½\r\Ë$?10×—·—ğ¡g„ ‘>\èôƒÁ\Ş\æ>\İFÇ³\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0³¬h\Ä\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!~\Êk-\ÉÕ•Røoƒ”&ör­û³\è8À\r\ï\Ä\äıœQ\áv#!~\Êk-\ÉÕ•Røoƒ”&ör­û³\è8À\r\ï\Ä\äıœQ\áv¬\0\0\0\0\0\0\0\0\0\0\0TOKEN¥\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"ETH\",\n    \"description\" : \"ETH\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"245c9a5109bc0af4161291fde9e46f36cb1b3e3fe371d88d465a64daccd65dd1\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¼\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8\",\n    \"publickey\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"signature\" : \"304402204ec5fab767cbb03f0ec5c2da2efeadda964a01f93f85a94153063cef0c9e4ab8022036d559f5757375830538189740236cf85b1bb2780a62fed53b960aee0d26d263\"\n  } ]\n}',0,'$\Ë\r½Şƒ\ÑÇ‡JV^¤\'¡øƒ\â©9\ã¬\Æ\Âúx=','$\Ë\r½Şƒ\ÑÇ‡JV^¤\'¡øƒ\â©9\ã¬\Æ\Âúx=','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,8,10,1,1559081760088,8,1559081758352,1),('>È–Š\É&@¼W¦e(õ\Ü7¿SV¶¢Â˜€²\â_»\r',12,'\0\0\0¯\Õ\Ø\Şc÷kQ¾&€\ãp\ä—Ö¼&\åyr†\\?	¯\Õ\Ø\Şc÷kQ¾&€\ãp\ä—Ö¼&\åyr†\\?	ş«HŸs\Z!AÆ¸¢ü\Í&jV0\çG‘¦ˆMs\Ë0kµ\Z³\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0a¸SS\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!‹\Û±Yú)\ìQ\ÔÆ±´ü;\ëc1\Õ^ƒ		M\ß\çg¶#!‹\Û±Yú)\ìQ\ÔÆ±´ü;\ëc1\Õ^ƒ		M\ß\çg¶¬\0\0\0\0\0\0\0\0\0\0\0TOKEN§\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"Gold\",\n    \"description\" : \"Gold\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"382784b7efa69bbad75177150d2324de78d4987c897a7addfc70a915c20678a5\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap\",\n    \"publickey\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"signature\" : \"3045022100f88b11d27e3e16757475d1af9df3b027f54dfe5a914e70a80b83f33b67d3944a022042d1d60c809a0d3c00ee6e0af9afef9880d811ce929cd46675a3d8f557d47284\"\n  } ]\n}',0,'	?\\†ry\å&¼Ö—\äp\ã€&¾Qk÷c\Ş\Ø\Õ¯','	?\\†ry\å&¼Ö—\äp\ã€&¾Qk÷c\Ş\Ø\Õ¯','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,10,12,1,1559081756719,10,1559081754820,1),('PH­q\Éø»©x\Ü]%Á\Ï`\Å;•<™FIR‡\È',15,'\0\0\0gf“a$~|OòÀE\\W\é±i\Ê\Í\çœ\ßÎ ­ø/\í~gf“a$~|OòÀE\\W\é±i\Ê\Í\çœ\ßÎ ­ø/\í~c™™\'ò¶:Î \ìs1óB¸Ÿ\Ø\rÀ«º\ÈÁ ³\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0À5&\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!³ó\çKƒ\Ó¢!ı’9­ÁAn\Ï\ÕS§‡<oñU\àxv\Â,#!³ó\çKƒ\Ó¢!ı’9­ÁAn\Ï\ÕS§‡<oñU\àxv\Â,¬\0\0\0\0\0\0\0\0\0\0\0TOKEN±\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"äººæ°‘å¸\",\n    \"description\" : \"äººæ°‘å¸\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"395745d4dc4094d602ad453e8a098bac5dae6cf6b520f76d3c9d58c434420029\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¼\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo\",\n    \"publickey\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"signature\" : \"30440220327d73423642a6d628cdca92e9b7a3ec410981f03d9a0cecb7fe0042c4deeaf202202fe5e75c75bf9e2fe02e8cb44fa084be7a782bc85b5e768b71899c74946aa615\"\n  } ]\n}',0,'~\í/ø­ \Îßœ\ç\Í\Êi±\éW\\EÀòO|~$a“fg','~\í/ø­ \Îßœ\ç\Í\Êi±\éW\\EÀòO|~$a“fg','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,7,9,1,1559081763058,7,1559081760775,1),('	?\\†ry\å&¼Ö—\äp\ã€&¾Qk÷c\Ş\Ø\Õ¯',11,'\0\0\0œTÿõ!ù·X\á\Õ;²Bx“E\Ù\Ïg¥—µ®›@J\ÜG&œTÿõ!ù·X\á\Õ;²Bx“E\Ù\Ïg¥—µ®›@J\ÜG&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹²\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0±‘o\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>\0\0\0\0\0\0\0\0\0\0\0',0,'&G\ÜJ@›®µ—¥g\Ï\ÙE“xB²;\Õ\áX·ù!õÿTœ','&G\ÜJ@›®µ—¥g\Ï\ÙE“xB²;\Õ\áX·ù!õÿTœ','\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>',NULL,1,100,11,13,1,1559081660899,11,1559081657775,1),('’˜<\ã\Õ\ÅK(h€&L®tq\ÖDÌ²/û&v\Ì\n¨Eü',21,'\0\0\0\Ğvjt·Z³1¢1ÿ›Øš\æ`qİ›¡¿Ó´Mú½ı	\Ğvjt·Z³1¢1ÿ›Øš\æ`qİ›¡¿Ó´Mú½ı	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03³\í\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0¬#3R\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>\0\0\0\0\0\0\0\0\0\0\0',0,'	ı½úM´Ó¿¡›\İq`\æš\Ø›ÿ1¢1³Z·tjv\Ğ','	ı½úM´Ó¿¡›\İq`\æš\Ø›ÿ1¢1³Z·tjv\Ğ','\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>',NULL,1,100,1,2,1,1559081783720,1,1559081779447,1),('U\ÎI–\íıKg‰\È6¾\Ù\ÚOS”5©b\àrMóü-o',3,'\0\0\0\ÍU6‚h#:‚Oğñh3?D»œ½\ÅaŒ{Â‘\ë{«IŒ5\ÍU6‚h#:‚Oğñh3?D»œ½\ÅaŒ{Â‘\ë{«IŒ5\ï\ÌMÿzFH·\Ñx9ò\ïª}ôlò L8\Û	v*Œô‰\ÃJ-¯\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0²\Ï:\é\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0Wm»\İj l°v\áœÌ†B0\ì\Ôúg^\Z}\åXüog\0\0\0IH0E!\0ê·­T\'y/ñeÁ·opK´\Î\İ2h‰ı:ÿûJ\å{T¢ (ô\î\äfW\0Ÿ\"mkW\ÌÁBn ü“bZo‡\×Á/¦‘ÿÿÿÿ\0\0\0¬\ÇV \'\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬47œM\0\0\0¼v©gg%Õ‹ù§Ì¸/Á\Ï\×hñCˆ¬x\ÂÚŒ\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'5ŒI«{\ë‘\Â{ŒaÅ½œ»D?3hñğO‚:#h‚6U\Í','5ŒI«{\ë‘\Â{ŒaÅ½œ»D?3hñğO‚:#h‚6U\Í','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,19,21,1,1559080751214,19,1559080749955,1),('	ı½úM´Ó¿¡›\İq`\æš\Ø›ÿ1¢1³Z·tjv\Ğ',20,'\0\0\0*Ñƒr»J¬À\İv\È0GD;AIÄ›ƒ;†ñ3\Û[*Ñƒr»J¬À\İv\È0GD;AIÄ›ƒ;†ñ3\Û[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01³\í\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0\Ú\0\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>\0\0\0\0\0\0\0\0\0\0\0',0,'[\Û3ñ†;ƒ›\ÄIA;DG0\Èv\İÀ¬J»rƒ\Ñ*','[\Û3ñ†;ƒ›\ÄIA;DG0\Èv\İÀ¬J»rƒ\Ñ*','\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>',NULL,1,100,2,3,1,1559081783721,2,1559081776821,1),('$\\šQ	¼\nô‘ı\é\äo6\Ë>?\ãqØFZd\Ú\Ì\Ö]\Ñ',6,'\0\0\0y®\Ãu±p\Übp„8Še˜\àZ\İ1=~\Z\Öõl-\ŞN t\'y®\Ãu±p\Übp„8Še˜\àZ\İ1=~\Z\Öõl-\ŞN t\'K\ìi„§Š®\ÛqŒIbòÀ4\"œ©µm²nbs\ä›n­²\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0^U	\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!~\Êk-\ÉÕ•Røoƒ”&ör­û³\è8À\r\ï\Ä\äıœQ\áv#!~\Êk-\ÉÕ•Røoƒ”&ör­û³\è8À\r\ï\Ä\äıœQ\áv¬\0\0\0\0\0\0\0\0\0\0\0TOKENe\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"ETH\",\n    \"description\" : \"ETH\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8\",\n    \"publickey\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"signature\" : \"3045022100a47db500efadd1b2ab332317c60156e98a9f7ef5744bb6941a5e35761ca3fcc10220702515de4a793ddd2f95ec5613ee641257bb3ec35f9a8a69cf9f5ec6cfcfdd55\"\n  } ]\n}',0,'\'t N\Ş-lõ\Ö\Z~=1\İZ\à˜eŠ8„pb\Üp±uÃ®y','\'t N\Ş-lõ\Ö\Z~=1\İZ\à˜eŠ8„pb\Üp±uÃ®y','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,16,18,1,1559081648738,16,1559081645696,1),('$\Ë\r½Şƒ\ÑÇ‡JV^¤\'¡øƒ\â©9\ã¬\Æ\Âúx=',13,'\0\0\0\r»_â²€˜Â¢¶VS¿7\Üõ(e¦W¼@&ÉŠ–\È>\r»_â²€˜Â¢¶VS¿7\Üõ(e¦W¼@&ÉŠ–\È>>Mbòq™À\ì~}^\ï\Ãz…P\Í((\Şf¡¸¾\í)\ã³\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\É\ã3•\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!\ëˆ\É9ZxD@¦ò9XiúVIW«»n\è\ŞTî°\É\Õ\à#!\ëˆ\É9ZxD@¦ò9XiúVIW«»n\è\ŞTî°\É\Õ\à¬\0\0\0\0\0\0\0\0\0\0\0TOKEN¥\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"BTC\",\n    \"description\" : \"BTC\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"2774204ede2d6c90f5d61a7e3d1131dd5ae098658a38847062dc70b175c3ae79\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¼\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws\",\n    \"publickey\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"signature\" : \"30440220737f8fc2ee7f597c34b94c52c869c8ae1706f4b98d4535c326107258508c722702206f4b3087511704c7cb92ad8a6ce30be8db6a5c0d8c2c4a8af70bead82338def7\"\n  } ]\n}',0,'>È–Š\É&@¼W¦e(õ\Ü7¿SV¶¢Â˜€²\â_»\r','>È–Š\É&@¼W¦e(õ\Ü7¿SV¶¢Â˜€²\â_»\r','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,9,11,1,1559081760089,9,1559081757011,1),('&G\ÜJ@›®µ—¥g\Ï\ÙE“xB²;\Õ\áX·ù!õÿTœ',10,'\0\0\0\r#¾\Í\Z¶½\Ú\ä7\æ\0‰i›\Ót•\æ,\ÖeÀ\\.\ÃUNƒ?\r#¾\Í\Z¶½\Ú\ä7\æ\0‰i›\Ót•\æ,\ÖeÀ\\.\ÃUNƒ?c\Õ\ì\ê<rò‰ôú˜Iû\ér/ÀŸxñ<İ`±jµ²\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0&†\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ô\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -7,\n  \"toHeight\" : 10,\n  \"prevHash\" : {\n    \"bytes\" : \"PinWXquw8G1FKGlXSZDCXKl2QseeGwZHrixrHDdiyhc=\",\n    \"reversedBytes\" : \"F8piNxxrLK5HBhuex0J2qVzCkElXaShFbfCwq17WKT4=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'?ƒNU\Ã.\\Àe\Ö,\æ•tÓ›i‰\0\æ7\äÚ½¶\ZÍ¾#\r','?ƒNU\Ã.\\Àe\Ö,\æ•tÓ›i‰\0\æ7\äÚ½¶\ZÍ¾#\r','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,12,14,1,1559081657562,12,1559081654924,1),('\'t N\Ş-lõ\Ö\Z~=1\İZ\à˜eŠ8„pb\Üp±uÃ®y',5,'\0\0\0¥x\Â©pü\İzz‰|˜\Ôx\Ş$#\rwQ×º›¦ï·„\'8¥x\Â©pü\İzz‰|˜\Ôx\Ş$#\rwQ×º›¦ï·„\'8ˆ‘d–€¢,r$\Ïr\Æ\ÂzAÕ€\Ê\İ\\3 \Î†\êuùúª²\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\à(¶x\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!\ëˆ\É9ZxD@¦ò9XiúVIW«»n\è\ŞTî°\É\Õ\à#!\ëˆ\É9ZxD@¦ò9XiúVIW«»n\è\ŞTî°\É\Õ\à¬\0\0\0\0\0\0\0\0\0\0\0TOKENe\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"BTC\",\n    \"description\" : \"BTC\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws\",\n    \"publickey\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"signature\" : \"3045022100b5ad133e4326c7e98cbe78592a4323a99df3db50c6aaf63eb616b4835829ddde022071f482d2bde8931c5d929be40f35fc79fe03f2274d79d94457f5bb1a66501c20\"\n  } ]\n}',0,'8\'„·ï¦›º\×Qw\r#$\ŞxÔ˜|‰zz\İüp©\Âx¥','8\'„·ï¦›º\×Qw\r#$\ŞxÔ˜|‰zz\İüp©\Âx¥','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,17,19,1,1559081645580,17,1559081643515,1),('( ”\ïòÑ˜$ş&Ê£WyP¯shj?^‹’\Û1LNN',19,'\0\0\0MS\ÙQ¤‰B	R\\ò\èË˜(	\r•v›ò+ùI¢\èŠ7MS\ÙQ¤‰B	R\\ò\èË˜(	\r•v›ò+ùI¢\èŠ7\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01³\í\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0+\Ãd¦\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>\0\0\0\0\0\0\0\0\0\0\0',0,'7Š\è¢Iù+ò›v•\r	(˜\Ë\èò\\R	B‰¤Q\ÙSM','7Š\è¢Iù+ò›v•\r	(˜\Ë\èò\\R	B‰¤Q\ÙSM','\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>',NULL,1,100,1,2,1,1559081783608,1,1559081777815,1),(')&\ì¬(_\Óh’\ãB)\Ì6©{h\Ú‹Ø—]\'‘\Û|N½µ',17,'\0\0\0Bş\æuoF\0G„ú²ıq\ÃÕ‡™SPZTK\ë³.\r7Bş\æuoF\0G„ú²ıq\ÃÕ‡™SPZTK\ë³.\r7¶MÅŒLƒyP\'ó\ÊayJH\ê¬\ÍÓ¿öM¶\è\È\å)q$³\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0™c0&\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!V\Ğw¶—…U \æd¨\Ù€[~Œ]\Ş\ÃÕ¯2\ä0MµšC<#!V\Ğw¶—…U \æd¨\Ù€[~Œ]\Ş\ÃÕ¯2\ä0MµšC<¬\0\0\0\0\0\0\0\0\0\0\0TOKEN¥\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"EUR\",\n    \"description\" : \"EUR\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"3f18834e55c32e5cc065d62ce69574d39b698900e637e4dabdb61acdbe239d0d\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¼\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP\",\n    \"publickey\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"signature\" : \"304402203127285789bc6188c7ccf92f72581a22eedfcb9a6ab7118b1745b38ad0eea19f02201c9f438819312d953c14538621e079ff6097b02320e76b9c92f258fd6e6e768a\"\n  } ]\n}',0,'7\r.³\ëKTZPS™‡\Õ\Ãqı²ú„G\0Fou\æşB','7\r.³\ëKTZPS™‡\Õ\Ãqı²ú„G\0Fou\æşB','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,5,7,1,1559081766229,5,1559081764669,1),('1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a',1,'\0\0\0\Êb7k,®G\ÇBv©\\ÂIWi(Emğ°«^\Ö)>\Êb7k,®G\ÇBv©\\ÂIWi(Emğ°«^\Ö)>jª¨¯6Ü¶‘¥‡k\Ù;®şhÁ-ütkŒ\Ò\İa{\rŞ´¤\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0vŸ°\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\Ô\Î,G†À¤ŸÿË“\ßl˜¿?ûyÎ´\ïl²\ëeEH\0\0\0\0IH0E!\0®Ó¬¶²8\äšN\ìu—ù¢\Â*\Ğwû´|htŒL%X r„nX­x™\É\Ô-/¹Ç™\Ş\Ôhd\ê1 –K\ìù”\Éÿÿÿÿ\0\0\0\0€Æ¤~\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\" ½ \0\0\0\0¼v©\ä˜\Ùy¼meş¼Š³&ç•¾Lˆ¬0W\0\0\0\0\0¼v©]¹n¨\ëLJş\Õ%¯Å©¿€Áä®ˆ¬\àš\ç\0\0\0\0¼v©j”·9\Ú.G‰—oEQq3€Åˆ¬\0e\Í\0\0\0\0¼v©i\ï\æÆ‘hÕ³k%\ÒC£š}¿ ‹ˆ¬€²\æ\0\0\0\0¼v©)•t2x>4\ßl)	»6\İN\İR:ˆ¬ğe\0\0\0\0¼v©\éRe\r‘½£XÁ\\‘Ñ\ã B÷\ê5îˆ¬À\0\0\0\0¼v©TimskDGff™÷”’¥\î\ìXHfˆ¬^\0\0\0\0¼v©9\ß(C5%À\Ûó£-‹özşˆ¬\0wB\0\0\0¼v©\ëJ›‡]ô\ï‡*>ƒ\Úd$«FiAˆ¬\0¯/\0\0\0\0¼v©\ÏË”!ÁV%ğC.\"D\Î¥<Nõ ˆ¬€ğú\0\0\0\0¼v©ùŠ\ê4”%n\İ\âv\â6¾0©I^ôˆ¬\Ğ\0\0\0\0\0\0¼v©…\ÉN\Ş\İØ³B(¿vı¤§s”Mˆ¬\0\äT\0\0\0¼v©$^i\ä\ï\ÎsÙ¯&?0€$Ü“†f\Ş6ˆ¬À\0\0\0\0¼v©‡g+2EU\Ç]Fx\ÍÏ¸ÿ>œDœˆ¬€ğú\0\0\0\0¼v©\ç¾ET\å6WÁ\Ê{ni]øÙˆ¬ \Õ\0\0\0\0¼v©4V•‚\\¶ğ#ÿ‘Š\Ü\Å\Ëˆ¬\0e\Í\0\0\0\0¼v©‚„n\ÄÍªQµ\ç•\Â <¼õŠ@‚–—ˆ¬\0Ã\Ğ\0\0\0\0¼v©|b‰yÆ¹1\Ô?^?<\ÜYP–°¤gˆ¬·\0\0\0\0¼v©‡Š\á#&ºiXÇsôy\ß>£ˆ¬\0\'¹)\0\0\0\0¼v©Œú||m\Ş\î\ì\äY°!\Æ&/\rg¹ˆ¬@x}\0\0\0\0¼v©õœ\ØrY›	¥&…\È`‘\ÜMˆ¬€–˜\0\0\0\0\0¼v©“jß‡ˆ‰¤…“=<I(\İ˜ˆ¬€“\Ü\0\0\0\0¼v©F\Óğn¢¤&¡$ş„ =¬ˆ¬\0\áõ\0\0\0\0¼v©±¸q‚$²5½\\›Gfé¢ˆ¬\0¼ e\0\0\0¼v©˜B–^õş42´;y•Ê¯Å½eÙ¤ˆ¬0W\0\0\0\0\0¼v©G\ßAx\Ü\çQ’a&>°S« jğ’tÄˆ¬€“\Ü\0\0\0\0¼v©)K|¾\ÙóÏ™ƒ\ÓtÕ¡3s‰„UÀˆ¬`\ìS\0\0\0\0\0¼v©\è‘SŒcDŸ\á¬tş¡\ë;\é\Ö/[ıˆ¬€“\Ü\0\0\0\0¼v©#½l€ršfö¡I“Ø£L‚Aˆ¬€²\æ\0\0\0\0¼v©\Ğ9 ´MjÆ€Ÿ½{‹q\ë\ÇAkx©ˆ¬\0Êš;\0\0\0\0¼v©Õ™yû\Ä]ñ)ñù\åš\Úo,ˆ¬€ğú\0\0\0\0¼v©ø\ÎÏŠ\Ùø\î®yŸqõ\İóóQÑˆ¬ \Õ\0\0\0\0¼v©Py\åP‡\ç\ë>\ìLŒ\í<,2²`ˆ¬\àÌ<u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê','>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,21,23,1,1559078087301,21,1559078086200,1),('5ŒI«{\ë‘\Â{ŒaÅ½œ»D?3hñğO‚:#h‚6U\Í',2,'\0\0\0a,ãˆ‡ıgW5k\rŸ{|9•­°l|ó«opuU1a,ãˆ‡ıgW5k\rŸ{|9•­°l|ó«opuU1Wm»\İj l°v\áœÌ†B0\ì\Ôúg^\Z}\åXüog!¯\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\01un&\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0jª¨¯6Ü¶‘¥‡k\Ù;®şhÁ-ütkŒ\Ò\İa{\r\Ş!\0\0\0HG0D (/H[~/9c¨b£Ê )”’´\ìzšHm\Øæ³„ 33†#ö\æ½Áˆˆ\0b÷C^#p6\r\Î^ög ø©”\Ùÿÿÿÿ\0\0\0\àÌ<u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬47œM\0\0\0¼v©§’‹¡òŒuô\0O}wW\í™dÿˆ¬¬\ÇV \'\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,20,22,1,1559080739237,20,1559080737481,1),('7\r.³\ëKTZPS™‡\Õ\Ãqı²ú„G\0Fou\æşB',16,'\0\0\0\È‡RIF™<•;\Å`\ÏÁ%]\Üx©»ø\Éq­HP\È‡RIF™<•;\Å`\ÏÁ%]\Üx©»ø\Éq­HPU«\ÜxNÓ®N)tx\ÖRx›†¬õG¢a¯p<R\×\È\"³\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\08‚\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!S\Õ\ßB\ÅÇ\Ì\ç˜zN)u“\Õ·1ñxXqF!Re†#!S\Õ\ßB\ÅÇ\Ì\ç˜zN)u“\Õ·1ñxXqF!Re†¬\0\0\0\0\0\0\0\0\0\0\0TOKEN¥\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"USD\",\n    \"description\" : \"USD\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"37c4b9851818c9d6f5cf0f59a34ca2d14ffc8b9a4b4b03e6d28c7eb9a182e391\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¼\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT\",\n    \"publickey\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"signature\" : \"304402204bdf0074b9313f4d46ae6cec31b3ab10375af49ea0bd30aa5d8c7807e47d8b0b0220525eea76fc861e267e1b7134cf73ca5b8b67143942eb5a64b1038cc4826a1c33\"\n  } ]\n}',0,'PH­q\Éø»©x\Ü]%Á\Ï`\Å;•<™FIR‡\È','PH­q\Éø»©x\Ü]%Á\Ï`\Å;•<™FIR‡\È','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,6,8,1,1559081766229,6,1559081762799,1),('7Š\è¢Iù+ò›v•\r	(˜\Ë\èò\\R	B‰¤Q\ÙSM',18,'\0\0\0µ½N|Û‘\']—Ø‹\Úh{©6\Ì)B\ã’h\Ó_(¬\ì&)µ½N|Û‘\']—Ø‹\Úh{©6\Ì)B\ã’h\Ó_(¬\ì&)™´B§\ÒJ{m«\èLK\Ù?›ÿa\ëuIDıZ\ÑiÀb§£ş$³\í\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0\Şü}\Û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ù\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 1,\n  \"toHeight\" : 15,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"PinWXquw8G1FKGlXSZDCXKl2QseeGwZHrixrHDdiyhc=\",\n    \"reversedBytes\" : \"F8piNxxrLK5HBhuex0J2qVzCkElXaShFbfCwq17WKT4=\"\n  }\n}\0\0\0\0\0\0\0\0',0,')&\ì¬(_\Óh’\ãB)\Ì6©{h\Ú‹Ø—]\'‘\Û|N½µ',')&\ì¬(_\Óh’\ãB)\Ì6©{h\Ú‹Ø—]\'‘\Û|N½µ','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,4,6,1,1559081779117,4,1559081775126,1),('7Ä¹…\É\Öõ\ÏY£L¢\ÑOü‹šKK\æÒŒ~¹¡‚\ã‘',8,'\0\0\0)\0B4\ÄX<m÷ µöl®]¬‹	Š>E­Ö”@\Ü\ÔEW9)\0B4\ÄX<m÷ µöl®]¬‹	Š>E­Ö”@\Ü\ÔEW9³N\è\Ê«UôÊ¢\Ú\r\Ğ@ª%‡\Ù\×)fŠ‹›x±²\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\'¬G˜\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!S\Õ\ßB\ÅÇ\Ì\ç˜zN)u“\Õ·1ñxXqF!Re†#!S\Õ\ßB\ÅÇ\Ì\ç˜zN)u“\Õ·1ñxXqF!Re†¬\0\0\0\0\0\0\0\0\0\0\0TOKENe\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"USD\",\n    \"description\" : \"USD\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT\",\n    \"publickey\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"signature\" : \"3045022100e689543e4eba264f50121a6c3b5538e163b2d7f9247b18584d51d7585e97edee02203f3c18ba9e495ad4e1ee0c98068eee323bc1f7ca4bdfa4f39cc0be7bb90d370a\"\n  } ]\n}',0,'9WE\Ô\Ü@”\Ö­E>Š	‹¬]®löµ ÷m<X\Ä4B\0)','9WE\Ô\Ü@”\Ö­E>Š	‹¬]®löµ ÷m<X\Ä4B\0)','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,14,16,1,1559081651625,14,1559081649692,1),('8\'„·ï¦›º\×Qw\r#$\ŞxÔ˜|‰zz\İüp©\Âx¥',4,'\0\0\0o-üóMr\àb©5”SO\ÚÙ¾6È‰gKı\í–I\ÎUo-üóMr\àb©5”SO\ÚÙ¾6È‰gKı\í–I\ÎUg9u‹DfÛ¥]ÿµ~rS\0jY \"´]5\Ê,š‘õ3¨²\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0±# y\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!‹\Û±Yú)\ìQ\ÔÆ±´ü;\ëc1\Õ^ƒ		M\ß\çg¶#!‹\Û±Yú)\ìQ\ÔÆ±´ü;\ëc1\Õ^ƒ		M\ß\çg¶¬\0\0\0\0\0\0\0\0\0\0\0TOKENg\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"Gold\",\n    \"description\" : \"Gold\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¼\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap\",\n    \"publickey\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"signature\" : \"304402204d5232e56ab6c4348b4e512cb44daf7e1160a408ba6234e222d7354c8ca37892022029d964f6ae9911c0765c866643e5869ab67b7ad8845e5a2831dd6ae5c4808f0c\"\n  } ]\n}',0,'U\ÎI–\íıKg‰\È6¾\Ù\ÚOS”5©b\àrMóü-o','U\ÎI–\íıKg‰\È6¾\Ù\ÚOS”5©b\àrMóü-o','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,18,20,1,1559081642288,18,1559081641564,1),('9WE\Ô\Ü@”\Ö­E>Š	‹¬]®löµ ÷m<X\Ä4B\0)',7,'\0\0\0\Ñ]\Ö\Ì\ÚdZF\Øq\ã?>\Ë6o\ä\éı‘ô\n¼	Qš\\$\Ñ]\Ö\Ì\ÚdZF\Øq\ã?>\Ë6o\ä\éı‘ô\n¼	Qš\\$1©[ÆŒ©§ó+ú~Ô©L\çw~\ÂÅ-\æ¤p»_°3¯²\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\01\ÃT\Ù\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!³ó\çKƒ\Ó¢!ı’9­ÁAn\Ï\ÕS§‡<oñU\àxv\Â,#!³ó\çKƒ\Ó¢!ı’9­ÁAn\Ï\ÕS§‡<oñU\àxv\Â,¬\0\0\0\0\0\0\0\0\0\0\0TOKENq\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"äººæ°‘å¸\",\n    \"description\" : \"äººæ°‘å¸\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo\",\n    \"publickey\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"signature\" : \"304502210080e8eff71619003613fac7133126a54bacbcd8e5e6e2b64df6535d98178ec06002203f8e069c7791b4a0ff32d3f4863f3ea405e7812eccce3fb455f4e4a2ed77c0ce\"\n  } ]\n}',0,'$\\šQ	¼\nô‘ı\é\äo6\Ë>?\ãqØFZd\Ú\Ì\Ö]\Ñ','$\\šQ	¼\nô‘ı\é\äo6\Ë>?\ãqØFZd\Ú\Ì\Ö]\Ñ','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,15,17,1,1559081648803,15,1559081647790,1),('>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ô\Î,G†À¤ŸÿË“\ßl˜¿?ûyÎ´\ïl²\ëeEHm#^[\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0\0€Æ¤~\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\Ù\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,22,24,1,1559078085533,22,1559078085383,1),('?ƒNU\Ã.\\Àe\Ö,\æ•tÓ›i‰\0\æ7\äÚ½¶\ZÍ¾#\r',9,'\0\0\0‘ã‚¡¹~Œ\Ò\æKKš‹üOÑ¢L£Y\Ïõ\Ö\É…¹\Ä7‘ã‚¡¹~Œ\Ò\æKKš‹üOÑ¢L£Y\Ïõ\Ö\É…¹\Ä7…ş=‡¦}®«v<Pd6\Ø¯C\á¨E[!¢7y>õN¯³²\í\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\ê5\Ùy\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!V\Ğw¶—…U \æd¨\Ù€[~Œ]\Ş\ÃÕ¯2\ä0MµšC<#!V\Ğw¶—…U \æd¨\Ù€[~Œ]\Ş\ÃÕ¯2\ä0MµšC<¬\0\0\0\0\0\0\0\0\0\0\0TOKENe\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"EUR\",\n    \"description\" : \"EUR\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP\",\n    \"publickey\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"signature\" : \"3045022100e71fa72aa090073520a6f8d1ca5655258ec909bc13bf064823d7cb4f8ed2b6b7022056a9653dbf68edc51420e381b20143a6f127ccbaefe521f522817da8f17a9618\"\n  } ]\n}',0,'7Ä¹…\É\Öõ\ÏY£L¢\ÑOü‹šKK\æÒŒ~¹¡‚\ã‘','7Ä¹…\É\Öõ\ÏY£L¢\ÑOü‹šKK\æÒŒ~¹¡‚\ã‘','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,13,15,1,1559081654927,13,1559081651585,1),('A6ÁVNÀ\ç•n@´Ÿ\àoh)	\Ê: \n#\ÔÇ´}gE',22,'\0\0\0üE¨\n\Ìv&û/²\ÌD\Öqt®L&€h(K\Å\Õ\ã<˜’NNL1Û’‹^?jhs¯PyW£\Ê&ş$˜\Ñò\ï” (\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\05³\í\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0p­òT\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>\0\0\0\0\0\0\0\0\0\0\0',0,'’˜<\ã\Õ\ÅK(h€&L®tq\ÖDÌ²/û&v\Ì\n¨Eü','( ”\ïòÑ˜$ş&Ê£WyP¯shj?^‹’\Û1LNN','\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>',NULL,1,100,0,1,1,1559081783793,0,1559081780999,1);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmationdependency`
--

DROP TABLE IF EXISTS `confirmationdependency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confirmationdependency` (
  `blockhash` binary(32) NOT NULL,
  `dependencyblockhash` binary(32) NOT NULL,
  PRIMARY KEY (`blockhash`,`dependencyblockhash`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmationdependency`
--

LOCK TABLES `confirmationdependency` WRITE;
/*!40000 ALTER TABLE `confirmationdependency` DISABLE KEYS */;
/*!40000 ALTER TABLE `confirmationdependency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logresult`
--

DROP TABLE IF EXISTS `logresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logresult` (
  `logResultId` varchar(255) NOT NULL,
  `logContent` varchar(255) NOT NULL,
  `submitDate` datetime NOT NULL,
  PRIMARY KEY (`logResultId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logresult`
--

LOCK TABLES `logresult` WRITE;
/*!40000 ALTER TABLE `logresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `logresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matching`
--

DROP TABLE IF EXISTS `matching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matching` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `txhash` varchar(255) NOT NULL,
  `tokenid` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `executedQuantity` bigint(20) NOT NULL,
  `inserttime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matching`
--

LOCK TABLES `matching` WRITE;
/*!40000 ALTER TABLE `matching` DISABLE KEYS */;
/*!40000 ALTER TABLE `matching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multisign`
--

DROP TABLE IF EXISTS `multisign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multisign` (
  `id` varchar(255) NOT NULL,
  `tokenid` varchar(255) NOT NULL,
  `tokenindex` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `blockhash` mediumblob NOT NULL,
  `sign` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multisign`
--

LOCK TABLES `multisign` WRITE;
/*!40000 ALTER TABLE `multisign` DISABLE KEYS */;
/*!40000 ALTER TABLE `multisign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multisignaddress`
--

DROP TABLE IF EXISTS `multisignaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multisignaddress` (
  `blockhash` varchar(255) NOT NULL,
  `tokenid` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pubKeyHex` varchar(255) DEFAULT NULL,
  `posIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`blockhash`,`tokenid`,`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multisignaddress`
--

LOCK TABLES `multisignaddress` WRITE;
/*!40000 ALTER TABLE `multisignaddress` DISABLE KEYS */;
INSERT INTO `multisignaddress` VALUES ('037eed2ff8ada0cedf9ce7cdca69b1e9575c45c0f29e4f7c037e241261936667','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176','','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',0),('073ec8968ac9269e40bc57a6652814f502dc37bf5356b6a2c29880b2e25fbb0d','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6','','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',0),('075048ad71c9f8bb1da978dc5d25c1cf608e1d14c53b958f3c994649528710c8','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c','','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',0),('245c9a5109bc0af4161291fde9e46f36cb1b3e3fe371d88d465a64daccd65dd1','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176','','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',0),('24cb0dbdde83d1c7874a12565e1ba42719a1f883e2a939e3acc6c2fa0213783d','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0','','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',0),('2774204ede2d6c90f5d61a7e3d1131dd5ae098658a38847062dc70b175c3ae79','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0','','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',0),('2926ecac285f18d36892e3420429cc36a97b68da178bd8975d2791db7c4ebdb5','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c','','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',0),('37060d2eb3eb4b54010b5a50539987d5c371fdb28ffa844700466f75e6fe8e42','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586','','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',0),('37c4b9851818c9d6f5cf0f59a34ca2d14ffc8b9a4b4b03e6d28c7eb9a182e391','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586','','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',0),('382784b7efa69bbad75177150d2324de78d4987c897a7addfc70a915c20678a5','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6','','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',0),('395745d4dc4094d602ad453e8a098bac5dae6cf6b520f76d3c9d58c434420029','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c','','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',0),('3f18834e55c32e5cc065d62ce69574d39b698900e637e4dabdb61acdbe239d0d','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c','','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',0);
/*!40000 ALTER TABLE `multisignaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multisignby`
--

DROP TABLE IF EXISTS `multisignby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multisignby` (
  `tokenid` varchar(255) NOT NULL,
  `tokenindex` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`tokenid`,`tokenindex`,`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multisignby`
--

LOCK TABLES `multisignby` WRITE;
/*!40000 ALTER TABLE `multisignby` DISABLE KEYS */;
/*!40000 ALTER TABLE `multisignby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myserverblocks`
--

DROP TABLE IF EXISTS `myserverblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myserverblocks` (
  `prevhash` varbinary(32) NOT NULL,
  `hash` varbinary(32) NOT NULL,
  `inserttime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`prevhash`,`hash`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myserverblocks`
--

LOCK TABLES `myserverblocks` WRITE;
/*!40000 ALTER TABLE `myserverblocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `myserverblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openorders`
--

DROP TABLE IF EXISTS `openorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openorders` (
  `blockhash` varbinary(32) NOT NULL,
  `collectinghash` varbinary(32) NOT NULL,
  `offercoinvalue` bigint(20) NOT NULL,
  `offertokenid` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `spent` tinyint(1) NOT NULL,
  `spenderblockhash` varbinary(32) DEFAULT NULL,
  `targetcoinvalue` bigint(20) DEFAULT NULL,
  `targettokenid` varchar(255) DEFAULT NULL,
  `beneficiarypubkey` binary(33) DEFAULT NULL,
  `validToTime` bigint(20) DEFAULT NULL,
  `opindex` int(11) DEFAULT NULL,
  `validFromTime` bigint(20) DEFAULT NULL,
  `side` varchar(255) DEFAULT NULL,
  `beneficiaryaddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`blockhash`,`collectinghash`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openorders`
--

LOCK TABLES `openorders` WRITE;
/*!40000 ALTER TABLE `openorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `openorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordermatching`
--

DROP TABLE IF EXISTS `ordermatching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordermatching` (
  `blockhash` varbinary(32) NOT NULL,
  `toheight` bigint(20) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `spent` tinyint(1) NOT NULL,
  `spenderblockhash` varbinary(32) DEFAULT NULL,
  `eligibility` int(11) NOT NULL,
  `prevblockhash` varbinary(32) NOT NULL,
  PRIMARY KEY (`blockhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordermatching`
--

LOCK TABLES `ordermatching` WRITE;
/*!40000 ALTER TABLE `ordermatching` DISABLE KEYS */;
INSERT INTO `ordermatching` VALUES ('[\Û3ñ†;ƒ›\ÄIA;DG0\Èv\İÀ¬J»rƒ\Ñ*',19,1,0,NULL,2,'&G\ÜJ@›®µ—¥g\Ï\ÙE“xB²;\Õ\áX·ù!õÿTœ'),('&G\ÜJ@›®µ—¥g\Ï\ÙE“xB²;\Õ\áX·ù!õÿTœ',10,1,1,'[\Û3ñ†;ƒ›\ÄIA;DG0\Èv\İÀ¬J»rƒ\Ñ*',2,'>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê'),('>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê',0,1,1,'&G\ÜJ@›®µ—¥g\Ï\ÙE“xB²;\Õ\áX·ù!õÿTœ',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
/*!40000 ALTER TABLE `ordermatching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outputs`
--

DROP TABLE IF EXISTS `outputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outputs` (
  `hash` varbinary(32) NOT NULL,
  `outputindex` bigint(20) NOT NULL,
  `coinvalue` bigint(20) NOT NULL,
  `scriptbytes` mediumblob NOT NULL,
  `toaddress` varchar(255) DEFAULT NULL,
  `addresstargetable` bigint(20) DEFAULT NULL,
  `coinbase` tinyint(1) DEFAULT NULL,
  `blockhash` varbinary(32) DEFAULT NULL,
  `tokenid` varchar(255) DEFAULT NULL,
  `fromaddress` varchar(255) DEFAULT NULL,
  `memo` mediumtext,
  `spent` tinyint(1) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `spendpending` tinyint(1) NOT NULL,
  `spenderblockhash` varbinary(32) DEFAULT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`hash`,`outputindex`) USING BTREE,
  KEY `outputs_hash_index_toaddress_idx` (`hash`,`outputindex`,`toaddress`) USING HASH,
  KEY `outputs_addresstargetable_idx` (`addresstargetable`) USING HASH,
  KEY `outputs_hash_idx` (`hash`) USING HASH,
  KEY `outputs_toaddress_idx` (`toaddress`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outputs`
--

LOCK TABLES `outputs` WRITE;
/*!40000 ALTER TABLE `outputs` DISABLE KEYS */;
INSERT INTO `outputs` VALUES ('n›\äsbn²mµ©œ\"4ÀòbIŒqÛ®Š§„i\ìK',0,678900000,'!~\Êk-\ÉÕ•Røoƒ”&ör­û³\è8À\r\ï\Ä\äıœQ\áv¬','1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8',2,1,'$\\šQ	¼\nô‘ı\é\äo6\Ë>?\ãqØFZd\Ú\Ì\Ö]\Ñ','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176','',NULL,0,1,0,NULL,1559081645),('3°_»p¤\æ-\Å\Â~w\çL©\Ô~ú+ó§©Œ\Æ[©1',0,678900000,'!³ó\çKƒ\Ó¢!ı’9­ÁAn\Ï\ÕS§‡<oñU\àxv\Â,¬','1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo',2,1,'9WE\Ô\Ü@”\Ö­E>Š	‹¬]®löµ ÷m<X\Ä4B\0)','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c','',NULL,0,1,0,NULL,1559081647),('3õ‘š,\Ê5]´\" Yj\0Sr~µÿ]¥\ÛfD‹u9g',0,678900000,'!‹\Û±Yú)\ìQ\ÔÆ±´ü;\ëc1\Õ^ƒ		M\ß\çg¶¬','1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap',2,1,'8\'„·ï¦›º\×Qw\r#$\ŞxÔ˜|‰zz\İüp©\Âx¥','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6','',NULL,0,1,0,NULL,1559081641),('HEe\ë²l\ï´\Îyû?¿˜lß“\ËÿŸ¤À†G,\Î\Ô',0,1000000000000000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê','bc','',NULL,1,1,1,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a',0),('JÃ‰ôŒ*v	\Û8L òlô}ª\ïò9xÑ·HFzÿM\Ì\ï',0,333333333300,'v©gg%Õ‹ù§Ì¸/Á\Ï\×hñCˆ¬','1ARkAbNXUo3HBUK8PnXBcfbaW2fbTn7bnF',1,0,'U\ÎI–\íıKg‰\È6¾\Ù\ÚOS”5©b\àrMóü-o','bc','1ARkAbNXUo3HBUK8PnXBcfbaW2fbTn7bnF',NULL,0,1,0,NULL,1559080749),('JÃ‰ôŒ*v	\Û8L òlô}ª\ïò9xÑ·HFzÿM\Ì\ï',1,999292930081400,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'U\ÎI–\íıKg‰\È6¾\Ù\ÚOS”5©b\àrMóü-o','bc','',NULL,0,1,0,NULL,1559080749),('goüX\å}\Z^gú\Ô\ì0B†Ìœ\áv°l jİ»mW',0,333333333300,'v©§’‹¡òŒuô\0O}wW\í™dÿˆ¬','1Wu86c2Pbsm4GGSLzkzogdRNQcmQiz27U',1,0,'5ŒI«{\ë‘\Â{ŒaÅ½œ»D?3hñğO‚:#h‚6U\Í','bc','1Wu86c2Pbsm4GGSLzkzogdRNQcmQiz27U',NULL,0,1,0,NULL,1559080737),('goüX\å}\Z^gú\Ô\ì0B†Ìœ\áv°l jİ»mW',1,999626263414700,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'5ŒI«{\ë‘\Â{ŒaÅ½œ»D?3hñğO‚:#h‚6U\Í','bc','',NULL,1,1,1,'U\ÎI–\íıKg‰\È6¾\Ù\ÚOS”5©b\àrMóü-o',1559080737),('q)\å\È\è¶Mö¿\ÓÍ¬\êHJya\Êó\'PyƒLŒ\ÅM¶',0,678900000,'!V\Ğw¶—…U \æd¨\Ù€[~Œ]\Ş\ÃÕ¯2\ä0MµšC<¬','1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP',2,1,')&\ì¬(_\Óh’\ãB)\Ì6©{h\Ú‹Ø—]\'‘\Û|N½µ','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c','',NULL,0,1,0,NULL,1559081764),('x›‹Šf)\×Ù‡%ª@\Ğ\rÚ¢\ÊôU«\Ê\èN³',0,678900000,'!S\Õ\ßB\ÅÇ\Ì\ç˜zN)u“\Õ·1ñxXqF!Re†¬','1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT',2,1,'7Ä¹…\É\Öõ\ÏY£L¢\ÑOü‹šKK\æÒŒ~¹¡‚\ã‘','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586','',NULL,0,1,0,NULL,1559081649),('\ÇF\İ>\æ\ŞÁƒô\è>‘ „g¡ğ—·—\×01?',0,678900000,'!~\Êk-\ÉÕ•Røoƒ”&ör­û³\è8À\r\ï\Ä\äıœQ\áv¬','1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8',2,1,'~\í/ø­ \Îßœ\ç\Í\Êi±\éW\\EÀòO|~$a“fg','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176','',NULL,0,1,0,NULL,1559081758),('¯Nõ>y7¢![E¨\áC¯\Ø6dP<v«®}¦‡=ş…',0,678900000,'!V\Ğw¶—…U \æd¨\Ù€[~Œ]\Ş\ÃÕ¯2\ä0MµšC<¬','1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP',2,1,'?ƒNU\Ã.\\Àe\Ö,\æ•tÓ›i‰\0\æ7\äÚ½¶\ZÍ¾#\r','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c','',NULL,0,1,0,NULL,1559081651),('µk0\ËsMˆ¦‘G\ç0Vj&\Íü¢¸\ÆA!\ZsŸH«ş',0,678900000,'!‹\Û±Yú)\ìQ\ÔÆ±´ü;\ëc1\Õ^ƒ		M\ß\çg¶¬','1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap',2,1,'>È–Š\É&@¼W¦e(õ\Ü7¿SV¶¢Â˜€²\â_»\r','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6','',NULL,0,1,0,NULL,1559081754),('Á\Èº«À\r\ØŸ¸Bó1s\ì \Î:¶ò\'™™c',0,678900000,'!³ó\çKƒ\Ó¢!ı’9­ÁAn\Ï\ÕS§‡<oñU\àxv\Â,¬','1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo',2,1,'PH­q\Éø»©x\Ü]%Á\Ï`\Å;•<™FIR‡\È','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c','',NULL,0,1,0,NULL,1559081760),('\È\×R<p¯a¢Gõ¬†›xR\Öxt)N®\ÓNxÜ«U',0,678900000,'!S\Õ\ßB\ÅÇ\Ì\ç˜zN)u“\Õ·1ñxXqF!Re†¬','1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT',2,1,'7\r.³\ëKTZPS™‡\Õ\Ãqı²ú„G\0Fou\æşB','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586','',NULL,0,1,0,NULL,1559081762),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',0,35700000,'v©\ä˜\Ùy¼meş¼Š³&ç•¾Lˆ¬','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',1,350000,'v©]¹n¨\ëLJş\Õ%¯Å©¿€Áä®ˆ¬','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',2,367500000,'v©j”·9\Ú.G‰—oEQq3€Åˆ¬','1Afz5FJtVGAtrwCfE5giVvhRi6u2mDg9Fv',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1Afz5FJtVGAtrwCfE5giVvhRi6u2mDg9Fv',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',3,500000000,'v©i\ï\æÆ‘hÕ³k%\ÒC£š}¿ ‹ˆ¬','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',4,250000000,'v©)•t2x>4\ßl)	»6\İN\İR:ˆ¬','14nsk71wQjXFSxT8bQZQTdjYvDwpxpni1w',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','14nsk71wQjXFSxT8bQZQTdjYvDwpxpni1w',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',5,35350000,'v©\éRe\r‘½£XÁ\\‘Ñ\ã B÷\ê5îˆ¬','1NGh9aq7mePaYeTUuEi9viVtgo8Xw6d6Rp',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1NGh9aq7mePaYeTUuEi9viVtgo8Xw6d6Rp',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',6,35000000,'v©TimskDGff™÷”’¥\î\ìXHfˆ¬','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',7,17850000,'v©9\ß(C5%À\Ûó£-‹özşˆ¬','16GzrB4XercHpVZodiMUQBXg1ka3GvPzzX',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','16GzrB4XercHpVZodiMUQBXg1ka3GvPzzX',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',8,14000000000,'v©\ëJ›‡]ô\ï‡*>ƒ\Úd$«FiAˆ¬','1NT7AuM2jL2ZiQ559TLA9CzyqoqpZr9bCn',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1NT7AuM2jL2ZiQ559TLA9CzyqoqpZr9bCn',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',9,800000000,'v©\ÏË”!ÁV%ğC.\"D\Î¥<Nõ ˆ¬','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',10,50000000,'v©ùŠ\ê4”%n\İ\âv\â6¾0©I^ôˆ¬','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',11,2000,'v©…\ÉN\Ş\İØ³B(¿vı¤§s”Mˆ¬','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',12,10000000000,'v©$^i\ä\ï\ÎsÙ¯&?0€$Ü“†f\Ş6ˆ¬','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',13,35000000,'v©‡g+2EU\Ç]Fx\ÍÏ¸ÿ>œDœˆ¬','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',14,50000000,'v©\ç¾ET\å6WÁ\Ê{ni]øÙˆ¬','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',15,500500000,'v©4V•‚\\¶ğ#ÿ‘Š\Ü\Å\Ëˆ¬','15mjrwRj8h8SRbJ4HHGpQB33HPu6L2Xbds',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','15mjrwRj8h8SRbJ4HHGpQB33HPu6L2Xbds',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',16,500000000,'v©‚„n\ÄÍªQµ\ç•\Â <¼õŠ@‚–—ˆ¬','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',17,3500000000,'v©|b‰yÆ¹1\Ô?^?<\ÜYP–°¤gˆ¬','1CLgqG1U9fjsEcMhnnKU7FVVzepar5ktaH',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1CLgqG1U9fjsEcMhnnKU7FVVzepar5ktaH',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',18,34650000,'v©‡Š\á#&ºiXÇsôy\ß>£ˆ¬','1DMgbQn4ZsmYoGoct4w4gkqd1PK23s6EzA',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1DMgbQn4ZsmYoGoct4w4gkqd1PK23s6EzA',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',19,700000000,'v©Œú||m\Ş\î\ì\äY°!\Æ&/\rg¹ˆ¬','1DrRfwxwtLcAEhAEiE6MSbpyK52Lf7x8rE',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1DrRfwxwtLcAEhAEiE6MSbpyK52Lf7x8rE',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',20,25000000,'v©õœ\ØrY›	¥&…\È`‘\ÜMˆ¬','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',21,10000000,'v©“jß‡ˆ‰¤…“=<I(\İ˜ˆ¬','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',22,350000000,'v©F\Óğn¢¤&¡$ş„ =¬ˆ¬','17TWC7hjEPu8JxvVHKzWhT5NiPvgXseCZj',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','17TWC7hjEPu8JxvVHKzWhT5NiPvgXseCZj',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',23,100000000,'v©±¸q‚$²5½\\›Gfé¢ˆ¬','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',24,6000000000,'v©˜B–^õş42´;y•Ê¯Å½eÙ¤ˆ¬','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',25,350000,'v©G\ßAx\Ü\çQ’a&>°S« jğ’tÄˆ¬','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',26,350000000,'v©)K|¾\ÙóÏ™ƒ\ÓtÕ¡3s‰„UÀˆ¬','14mM8pCKSi6nftVVLFLz4etCWhRWyR5BLN',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','14mM8pCKSi6nftVVLFLz4etCWhRWyR5BLN',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',27,5500000,'v©\è‘SŒcDŸ\á¬tş¡\ë;\é\Ö/[ıˆ¬','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',28,350000000,'v©#½l€ršfö¡I“Ø£L‚Aˆ¬','14Fy836wiMYzwzVmRCvu5fi1nvCKabW5dz',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','14Fy836wiMYzwzVmRCvu5fi1nvCKabW5dz',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',29,250000000,'v©\Ğ9 ´MjÆ€Ÿ½{‹q\ë\ÇAkx©ˆ¬','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',30,1000000000,'v©Õ™yû\Ä]ñ)ñù\åš\Úo,ˆ¬','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',31,50000000,'v©ø\ÎÏŠ\Ùø\î®yŸqõ\İóóQÑˆ¬','1PgaL2wGD2DXTwkbUGUG31TekMm9tggwqN',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','1PgaL2wGD2DXTwkbUGUG31TekMm9tggwqN',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',32,500500000,'v©Py\åP‡\ç\ë>\ìLŒ\í<,2²`ˆ¬','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',1,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',NULL,0,1,0,NULL,1559078086),('\Ş\r{a\İ\ÒŒktü-Áhş®;\Ùk‡¥‘¶\Ü6¯¨ªj',33,999959596748000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'1Uupo«ó|l°­•9|{Ÿ\rk5Wgı‡ˆ\ã,a','bc','',NULL,1,1,1,'5ŒI«{\ë‘\Â{ŒaÅ½œ»D?3hñğO‚:#h‚6U\Í',1559078086),('\á\æ\ÇSy­vù†.\Äªÿ<“ó“\á„\Ğ^\Û\Ò\Ù]\êP',0,10,'v©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ¬','1111111111111111111114oLvT2',1,1,'7Š\è¢Iù+ò›v•\r	(˜\Ë\èò\\R	B‰¤Q\ÙSM','bc','1111111111111111111114oLvT2',NULL,0,1,0,NULL,1559081779),('\á\æ\ÇSy­vù†.\Äªÿ<“ó“\á„\Ğ^\Û\Ò\Ù]\êP',1,10,'v©\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>ˆ¬','1Kbm8rqjcX6j5oLbq9J8FapksdvrfGUA88',1,1,'7Š\è¢Iù+ò›v•\r	(˜\Ë\èò\\R	B‰¤Q\ÙSM','bc','1Kbm8rqjcX6j5oLbq9J8FapksdvrfGUA88',NULL,0,1,0,NULL,1559081779),('\á\æ\ÇSy­vù†.\Äªÿ<“ó“\á„\Ğ^\Û\Ò\Ù]\êP',2,130,'v©\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«Ôˆ¬','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'7Š\è¢Iù+ò›v•\r	(˜\Ë\èò\\R	B‰¤Q\ÙSM','bc','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',NULL,0,1,0,NULL,1559081779),('\ã)í¾¸¡f\Ş((\ÍP…z\Ã\ï^}~\ìÀ™qòbM>',0,678900000,'!\ëˆ\É9ZxD@¦ò9XiúVIW«»n\è\ŞTî°\É\Õ\à¬','14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws',2,1,'$\Ë\r½Şƒ\ÑÇ‡JV^¤\'¡øƒ\â©9\ã¬\Æ\Âúx=','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0','',NULL,0,1,0,NULL,1559081757),('úùu\ê†Î 3\\\İÊ€\ÕAz\Â\Ær\Ï$r,¢€–d‘ˆ',0,678900000,'!\ëˆ\É9ZxD@¦ò9XiúVIW«»n\è\ŞTî°\É\Õ\à¬','14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws',2,1,'\'t N\Ş-lõ\Ö\Z~=1\İZ\à˜eŠ8„pb\Üp±uÃ®y','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0','',NULL,0,1,0,NULL,1559081643);
/*!40000 ALTER TABLE `outputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outputsmulti`
--

DROP TABLE IF EXISTS `outputsmulti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outputsmulti` (
  `hash` varbinary(32) NOT NULL,
  `outputindex` bigint(20) NOT NULL,
  `toaddress` varchar(255) NOT NULL,
  `minimumsign` bigint(20) NOT NULL,
  PRIMARY KEY (`hash`,`outputindex`,`toaddress`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outputsmulti`
--

LOCK TABLES `outputsmulti` WRITE;
/*!40000 ALTER TABLE `outputsmulti` DISABLE KEYS */;
/*!40000 ALTER TABLE `outputsmulti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymultisign`
--

DROP TABLE IF EXISTS `paymultisign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymultisign` (
  `orderid` varchar(255) NOT NULL,
  `tokenid` varchar(255) NOT NULL,
  `toaddress` varchar(255) NOT NULL,
  `blockhash` mediumblob NOT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `minsignnumber` bigint(20) DEFAULT NULL,
  `outputHashHex` varchar(255) DEFAULT NULL,
  `outputindex` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymultisign`
--

LOCK TABLES `paymultisign` WRITE;
/*!40000 ALTER TABLE `paymultisign` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymultisign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymultisignaddress`
--

DROP TABLE IF EXISTS `paymultisignaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymultisignaddress` (
  `orderid` varchar(255) NOT NULL,
  `pubKey` varchar(255) NOT NULL,
  `sign` int(11) NOT NULL,
  `signIndex` int(11) NOT NULL,
  `signInputData` mediumblob,
  PRIMARY KEY (`orderid`,`pubKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymultisignaddress`
--

LOCK TABLES `paymultisignaddress` WRITE;
/*!40000 ALTER TABLE `paymultisignaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymultisignaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `name` varchar(32) NOT NULL,
  `settingvalue` blob,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('version','03');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtangle_permission`
--

DROP TABLE IF EXISTS `subtangle_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subtangle_permission` (
  `pubkey` varchar(255) NOT NULL,
  `userdataPubkey` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`pubkey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtangle_permission`
--

LOCK TABLES `subtangle_permission` WRITE;
/*!40000 ALTER TABLE `subtangle_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `subtangle_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tips`
--

DROP TABLE IF EXISTS `tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tips` (
  `hash` varbinary(32) NOT NULL,
  PRIMARY KEY (`hash`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tips`
--

LOCK TABLES `tips` WRITE;
/*!40000 ALTER TABLE `tips` DISABLE KEYS */;
INSERT INTO `tips` VALUES ('A6ÁVNÀ\ç•n@´Ÿ\àoh)	\Ê: \n#\ÔÇ´}gE');
/*!40000 ALTER TABLE `tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `blockhash` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `tokenid` varchar(255) NOT NULL,
  `tokenindex` bigint(20) NOT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `tokenname` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `domainname` varchar(100) DEFAULT NULL,
  `signnumber` bigint(20) NOT NULL,
  `tokentype` int(11) DEFAULT NULL,
  `tokenstop` tinyint(1) DEFAULT NULL,
  `prevblockhash` varchar(255) NOT NULL,
  `spent` tinyint(1) NOT NULL,
  `spenderblockhash` varbinary(32) DEFAULT NULL,
  `tokenkeyvalues` mediumblob,
  `revoked` tinyint(1) DEFAULT NULL,
  `language` char(2) DEFAULT NULL,
  `classification` varchar(255) DEFAULT NULL,
  `domainnametokenid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`blockhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES ('037eed2ff8ada0cedf9ce7cdca69b1e9575c45c0f29e4f7c037e241261936667',1,'027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',1,678900000,'ETH','ETH',NULL,1,0,0,'245c9a5109bc0af4161291fde9e46f36cb1b3e3fe371d88d465a64daccd65dd1',0,NULL,NULL,0,NULL,NULL,NULL),('073ec8968ac9269e40bc57a6652814f502dc37bf5356b6a2c29880b2e25fbb0d',1,'028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',1,678900000,'Gold','Gold',NULL,1,0,0,'382784b7efa69bbad75177150d2324de78d4987c897a7addfc70a915c20678a5',0,NULL,NULL,0,NULL,NULL,NULL),('075048ad71c9f8bb1da978dc5d25c1cf608e1d14c53b958f3c994649528710c8',1,'02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',1,678900000,'äººæ°‘å¸','äººæ°‘å¸',NULL,1,0,0,'395745d4dc4094d602ad453e8a098bac5dae6cf6b520f76d3c9d58c434420029',0,NULL,NULL,0,NULL,NULL,NULL),('245c9a5109bc0af4161291fde9e46f36cb1b3e3fe371d88d465a64daccd65dd1',1,'027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',0,678900000,'ETH','ETH',NULL,1,0,0,'',1,'~\í/ø­ \Îßœ\ç\Í\Êi±\éW\\EÀòO|~$a“fg',NULL,0,NULL,NULL,NULL),('24cb0dbdde83d1c7874a12565e1ba42719a1f883e2a939e3acc6c2fa0213783d',1,'03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',1,678900000,'BTC','BTC',NULL,1,0,0,'2774204ede2d6c90f5d61a7e3d1131dd5ae098658a38847062dc70b175c3ae79',0,NULL,NULL,0,NULL,NULL,NULL),('2774204ede2d6c90f5d61a7e3d1131dd5ae098658a38847062dc70b175c3ae79',1,'03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',0,678900000,'BTC','BTC',NULL,1,0,0,'',1,'$\Ë\r½Şƒ\ÑÇ‡JV^¤\'¡øƒ\â©9\ã¬\Æ\Âúx=',NULL,0,NULL,NULL,NULL),('2926ecac285f18d36892e3420429cc36a97b68da178bd8975d2791db7c4ebdb5',1,'0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',1,678900000,'EUR','EUR',NULL,1,0,0,'3f18834e55c32e5cc065d62ce69574d39b698900e637e4dabdb61acdbe239d0d',0,NULL,NULL,0,NULL,NULL,NULL),('37060d2eb3eb4b54010b5a50539987d5c371fdb28ffa844700466f75e6fe8e42',1,'0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',1,678900000,'USD','USD',NULL,1,0,0,'37c4b9851818c9d6f5cf0f59a34ca2d14ffc8b9a4b4b03e6d28c7eb9a182e391',0,NULL,NULL,0,NULL,NULL,NULL),('37c4b9851818c9d6f5cf0f59a34ca2d14ffc8b9a4b4b03e6d28c7eb9a182e391',1,'0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',0,678900000,'USD','USD',NULL,1,0,0,'',1,'7\r.³\ëKTZPS™‡\Õ\Ãqı²ú„G\0Fou\æşB',NULL,0,NULL,NULL,NULL),('382784b7efa69bbad75177150d2324de78d4987c897a7addfc70a915c20678a5',1,'028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',0,678900000,'Gold','Gold',NULL,1,0,0,'',1,'>È–Š\É&@¼W¦e(õ\Ü7¿SV¶¢Â˜€²\â_»\r',NULL,0,NULL,NULL,NULL),('395745d4dc4094d602ad453e8a098bac5dae6cf6b520f76d3c9d58c434420029',1,'02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',0,678900000,'äººæ°‘å¸','äººæ°‘å¸',NULL,1,0,0,'',1,'PH­q\Éø»©x\Ü]%Á\Ï`\Å;•<™FIR‡\È',NULL,0,NULL,NULL,NULL),('3e29d65eabb0f06d452869574990c25ca97642c79e1b0647ae2c6b1c3762ca17',1,'bc',0,0,'bc','BigTangle currency',NULL,1,0,1,'',0,NULL,NULL,0,NULL,NULL,NULL),('3f18834e55c32e5cc065d62ce69574d39b698900e637e4dabdb61acdbe239d0d',1,'0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',0,678900000,'EUR','EUR',NULL,1,0,0,'',1,')&\ì¬(_\Óh’\ãB)\Ì6©{h\Ú‹Ø—]\'‘\Û|N½µ',NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txreward`
--

DROP TABLE IF EXISTS `txreward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txreward` (
  `blockhash` varbinary(32) NOT NULL,
  `toheight` bigint(20) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `spent` tinyint(1) NOT NULL,
  `spenderblockhash` varbinary(32) DEFAULT NULL,
  `eligibility` int(11) NOT NULL,
  `prevblockhash` varbinary(32) NOT NULL,
  `nexttxreward` bigint(20) NOT NULL,
  PRIMARY KEY (`blockhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txreward`
--

LOCK TABLES `txreward` WRITE;
/*!40000 ALTER TABLE `txreward` DISABLE KEYS */;
INSERT INTO `txreward` VALUES ('7Š\è¢Iù+ò›v•\r	(˜\Ë\èò\\R	B‰¤Q\ÙSM',15,1,0,NULL,2,'>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê',2),('>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê',0,1,1,'7Š\è¢Iù+ò›v•\r	(˜\Ë\èò\\R	B‰¤Q\ÙSM',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',10);
/*!40000 ALTER TABLE `txreward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unsolidblocks`
--

DROP TABLE IF EXISTS `unsolidblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unsolidblocks` (
  `hash` varbinary(32) NOT NULL,
  `block` mediumblob NOT NULL,
  `inserttime` bigint(20) DEFAULT NULL,
  `reason` bigint(20) NOT NULL,
  `missingdependency` mediumblob NOT NULL,
  `height` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`hash`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unsolidblocks`
--

LOCK TABLES `unsolidblocks` WRITE;
/*!40000 ALTER TABLE `unsolidblocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsolidblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdata` (
  `blockhash` varbinary(32) NOT NULL,
  `dataclassname` varchar(255) NOT NULL,
  `data` mediumblob NOT NULL,
  `pubKey` varchar(255) NOT NULL,
  `blocktype` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`dataclassname`,`pubKey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdata`
--

LOCK TABLES `userdata` WRITE;
/*!40000 ALTER TABLE `userdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `userdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vosexecute`
--

DROP TABLE IF EXISTS `vosexecute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vosexecute` (
  `vosKey` varchar(255) NOT NULL,
  `pubKey` varchar(255) NOT NULL,
  `execute` bigint(20) NOT NULL,
  `data` mediumblob NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  PRIMARY KEY (`vosKey`,`pubKey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vosexecute`
--

LOCK TABLES `vosexecute` WRITE;
/*!40000 ALTER TABLE `vosexecute` DISABLE KEYS */;
/*!40000 ALTER TABLE `vosexecute` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29  2:10:01
