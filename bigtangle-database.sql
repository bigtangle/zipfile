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
INSERT INTO `blocks` VALUES ('ƒ7”µ­¿\Z\Åú5AÀº¸\Óm‰Š1#Ÿó¨“A',12,'\0\0\0•¶\'_\å\ç¯”\Æ\ÛD%`X\ät[\ØN\ï2#\ËOeR‰\r;•¶\'_\å\ç¯”\Æ\ÛD%`X\ät[\ØN\ï2#\ËOeR‰\r;ª\ìGI“]»)\åA[\è\ÓTd¾‘9¨Š†Â£!N²O3º†?]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0‘u¬\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!O¥\Ît5§Ø­\î\æ\Î4´¢¶Ø‘‡›·\ÒSå«·,¢=^nGR!O¥\Ît5§Ø­\î\æ\Î4´¢¶Ø‘‡›·\ÒSå«·,¢=^n!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®\0\0\0\0\0\0\0\0\0\0\0TOKEN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-BTC\",\n    \"description\" : \"test-1-BTC\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-BTC\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0`\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1MW35ZNpYDANihQjDZC7fmzj2rADW4ZyrP\",\n    \"publickey\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"signature\" : \"3044022036ac03aba892d536fe2ecc6dae52507318518f1c2df20d3e27919578c63b6b51022044de0265fc0629388c02016afebd783afab1961aeafafbecb971ffb123307888\"\n  }, {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100f56778538077759269ae143323bef4a512294cc65daf2aaff50025241891cda00220014867021a38fdc3168e319f522b9cbd51209b39a29e363e4dc3f2284defd4b0\"\n  } ]\n}',0,';\r‰ReO\Ë#2\ïN\Ø[t\äX`%D\ÛÆ”¯\ç\å_\'¶•',';\r‰ReO\Ë#2\ïN\Ø[t\äX`%D\ÛÆ”¯\ç\å_\'¶•','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,12,14,1,1564410248793,12,1564410247310,1),(' $%#»J”\é#¡\nB\åZHğ2e4WK ©\ĞP\ä¬\Ù',6,'\0\0\0tQ­ª×•¢ª›è®µaFÜŒ“±ûm.ÔŠ\å‹õ?tQ­ª×•¢ª›è®µaFÜŒ“±ûm.ÔŠ\å‹õ?^HÔ¾ˆ\ÛÜŠÙ†¤_,bĞ­stƒ#ñ<\ÄQ\Ñ\İ1+³ ó>]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0]U\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0pï•G“\ß9a_z”²‘«\Å\ç\ì\Í\äWL+\ß79X~\í6\0\0\0jG0D D¦Oe\Î.e-fÃ®\İ$³È˜\äµpÉ‹\Ü\é9TF z\nfôprœ•ˆº\\\ØG×„Ø¡-”ı¹oKO\Z6\n¸Qm!)¹\Ù[Z‹\"\Ì÷ng9\ÕIX\ØiK9-\ßÇ‚d¸\Õvÿÿÿÿ\0\0\0d\0\0\0\0\0\0\0¼v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬\n\0\0\0\0\0\0\0¼v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬Z\0\0\0\0\0\0\0¼v©W5^´\ßNòÀ·un2ˆ›\Ëv<ˆ¬\0\0\0\0\0\0\012\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'?õ‹\åŠ\Ô.mû±“Œ\ÜFaµ®è›ª¢•\×ª­Qt','?õ‹\åŠ\Ô.mû±“Œ\ÜFaµ®è›ª¢•\×ª­Qt','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,18,20,1,1564406648215,18,1564406647242,1),('\Z\æÜ”y\é\Øe\r°\ê*3*·òõP¤\ÍT\íÆ a€Ø±ğ\Ö',7,'\0\0\0Ù¬\äPĞ© KW4e2ğHZ\åB\n¡#\é”J»#%$ Ù¬\äPĞ© KW4e2ğHZ\åB\n¡#\é”J»#%$ ˜¼5\Ö^¹ù+B\ÄA‡•9òı\Ì	#ğŠ\Æ\ë\0\Õ„X}5bÀö>]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0†Y\Ë[\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0^HÔ¾ˆ\ÛÜŠÙ†¤_,bĞ­stƒ#ñ<\ÄQ\Ñ\İ1+³ \0\0\0\0jG0D D7p\ã\ÅxV\Ö{ŸK5 …1„€¼¤zø¤y‘ü CF$K»-_\à”A&û3fŸ\ß\Ø\r\Äi?†¯!)¹\Ù[Z‹\"\Ì÷ng9\ÕIX\ØiK9-\ßÇ‚d¸\Õvÿÿÿÿ\0\0\0\n\0\0\0\0\0\0\0¼v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬\0\0\0\0\0\0\0¼v©W5^´\ßNòÀ·un2ˆ›\Ëv<ˆ¬\0\0\0\0\0\0\0¼v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬\0\0\0\0\0\0\00.03\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,' $%#»J”\é#¡\nB\åZHğ2e4WK ©\ĞP\ä¬\Ù',' $%#»J”\é#¡\nB\åZHğ2e4WK ©\ĞP\ä¬\Ù','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,17,19,1,1564407662328,17,1564407660611,1),('µ\ÖXÿ÷w‡¨IÚ¾(Vå´ck²\ê\rr\åğ¿',8,'\0\0\0\Öğ±Ø€a \Æ\íTÍ¤Põò·*3*\ê°\re\Ø\éy”\Ü\æ\Z\Öğ±Ø€a \Æ\íTÍ¤Põò·*3*\ê°\re\Ø\éy”\Ü\æ\Z\Ê\\:•\î`‰e\Ûrk<”r‡Å–\Èx‘¯®P¬\à\ê–\å6“÷>]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0¼\Ş\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0˜¼5\Ö^¹ù+B\ÄA‡•9òı\Ì	#ğŠ\Æ\ë\0\Õ„X}5b\0\0\0kH0E!\0\ÎzKcô\ÕYVtø­,\Â)\ìgüß…h»\âH¥Ø®\Ì4ú.\ç X¦(™d„\Ö\ï½Aü*¹]‡»?{\"”²\Õ\ë¬Ÿ!)¹\Ù[Z‹\"\Ì÷ng9\ÕIX\ØiK9-\ßÇ‚d¸\Õvÿÿÿÿ\0\0\0\0\0\0\0\0\0\0¼v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬\0\0\0\0\0\0\0¼v©W5^´\ßNòÀ·un2ˆ›\Ëv<ˆ¬\0\0\0\0\0\0\0¼v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬\0\0\0\0\0\0\012\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'\Z\æÜ”y\é\Øe\r°\ê*3*·òõP¤\ÍT\íÆ a€Ø±ğ\Ö','\Z\æÜ”y\é\Øe\r°\ê*3*·òõP¤\ÍT\íÆ a€Ø±ğ\Ö','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,16,18,1,1564407716557,16,1564407713735,1),('L.ŠJk4\'\ê÷\ÒW•¢\Z¨QõöƒT2«\ßakb',13,'\0\0\0A“¨óŸ#1Š‰mÓ¸ºÀA5ú\Å\Z¿­µ”7ƒA“¨óŸ#1Š‰mÓ¸ºÀA5ú\Å\Z¿­µ”7ƒ°é¥Šì¸±sEj\Ç~Õ“<\ÈM\Ñş“$À\Û\Ş\ÊÕ‘v†?]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0Á\ÙD\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ù\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 1,\n  \"toHeight\" : 10,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"hQfmJOfryC1R90MpZnNeLSxvW2tE67Rt2Dkt7MvKwjk=\",\n    \"reversedBytes\" : \"OcLKy+wtOdhttOtEa1tvLC1ec2YpQ/dRLcjr5yTmB4U=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'ƒ7”µ­¿\Z\Åú5AÀº¸\Óm‰Š1#Ÿó¨“A','ƒ7”µ­¿\Z\Åú5AÀº¸\Óm‰Š1#Ÿó¨“A','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,11,12,1,1564410255060,11,1564410250873,1),('\Æ\ÂL\ÖÑªZº¾64y\à\Ã.q”w¨</„S\ÛŞ‘\İ',21,'\0\0\0U-£—xø§¼Ï½\\\é \0Ï«\\\åv\ÍZ°Ğ“4®)\Ê~U-£—xø§¼Ï½\\\é \0Ï«\\\åv\ÍZ°Ğ“4®)\Ê~D‘]Mû\ÍsQú‹÷\ÃEû\Ó\Şútw\ç“\è®&•‰+~•\àNB]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0C¬uõ\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0Aµ\ß/ZY•`¦‰\ÊPp=\Îôl\"v«¼^÷¢%2\0\0\0jG0D \Ä_\Ê\ÆªOú&I\è¾A§‘V\r\Í8õ§e -ß¾0û¨†N…\'g \Ğ\Ü?Ï¬QV9ƒ3GS\Ìô!:\á\Ä.SõLüO3P¢(\Ô\ãXb*{ÿñ¶Kœnƒ´\Í2•.ÿÿÿÿ\0\0\0€¹*\0\0\0\0\0¼v©Yè…‘9§™²–ğ\Å5F\n¸|‡ˆ¬\È\0\0\0\0\0\0\0¼%Q!^O[=D>¨Ø¯ºp¸ƒ«ñ†øÔ‡h\æÈ<yQ®¸¸*\0\0\0\0\0¼v©\×m*\Ü}õQ}‡ô³›\Ø*(/~=øˆ¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'~\Ê)®4“Ğ°Z\Ív\å\\«\Ï\0 \é\\½Ï¼§øx—£-U','~\Ê)®4“Ğ°Z\Ív\å\\«\Ï\0 \é\\½Ï¼§øx—£-U','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,3,4,1,1564626663107,3,1564626659777,1),(' ¡Xµ \ÕK‰\ßh‹Y“\r[\ØZ.µõ0n’“p5e÷',1,'\0\0\09\Â\Ê\Ë\ì-9\Øm´\ëDk[o,-^sf)C÷Q-\È\ë\ç$\æ…9\Â\Ê\Ë\ì-9\Øm´\ëDk[o,-^sf)C÷Q-\È\ë\ç$\æ…Š^/¦\Ö55\å\éù\İÚŠ™\ìıK\Æ\Ã|W½üœš¥“m[>]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0WœŒ\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\Û\Ş\çIc3™\ê\ãh6 òq)\Ù{nD¿ZYŒ¹j<­F\0\0\0\0IH0E!\0\Ò9\Ë:\Èo\îÅ¦2IC¢‹Ñ¶[ûE¤?dƒ™.j\Èñ\È \rl´¡½BX	h#KÁQ”D/\íßºù÷‚Ÿ\È\ä@¸¡fÿÿÿÿ\0\0\0\0 rN	\0\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬)\0\0\0\0\0\0¼v©¯(4\ÃhAl9\ÊF·6¯2½-n\ÜWˆ¬0W\0\0\0\0\0¼v©Yè…‘9§™²–ğ\Å5F\n¸|‡ˆ¬\\D\0\0\0\0\0\0¼v©°\Å–\Ş\É.fo\áhıÆ† ·ˆ¬p\ÛlN	\0\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0WEIXIN\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'…\æ$\ç\ë\È-Q÷C)fs^-,o[kD\ë´m\Ø9-\ì\Ë\Ê\Â9','…\æ$\ç\ë\È-Q÷C)fs^-,o[kD\ë´m\Ø9-\ì\Ë\Ê\Â9','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,23,25,1,1564367729204,23,1564367725869,1),('+ª/\ÓÀ¶s:»·c\Ö\Îq›iŸƒ¥®\Ô\äkˆ–\Õ¢',2,'\0\0\0÷e5p“’n0õµ.Z\Ø[\r“Y‹hß‰KÕ µX¡ ÷e5p“’n0õµ.Z\Ø[\r“Y‹hß‰KÕ µX¡ Aµ\ß/ZY•`¦‰\ÊPp=\Îôl\"v«¼^÷¢%2§>]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0ş¡\Âøì“…²RğG\Î*Jr—\Ä\Ò#1D\0\0\0\0\0\0\0\0\0\0\0\0\0Š^/¦\Ö55\å\éù\İÚŠ™\ìıK\Æ\Ã|W½üœš¥“\0\0\0IH0E!\0\ÅnT$’\"k\áh:\Æ\Ñ\ë:Ö¢\×\\*F>V³¸½\Ñ\ê;D Xs2wD\í+@ñ[Ø‰\Ñ)Cõ:q„\ëv \á\Ê;y\ë2ÿÿÿÿ\0\0\0p\ÛlN	\0\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬„[\0\0\0\0\0¼v©·›gˆQ\"\ê7öB;_È™\åSˆ¬Àò\0\0\0\0\0¼v©¯(4\ÃhAl9\ÊF·6¯2½-n\ÜWˆ¬S\0\0\0\0\0¼v©°\Å–\Ş\É.fo\áhıÆ† ·ˆ¬€¹*\0\0\0\0\0¼v©Yè…‘9§™²–ğ\Å5F\n¸|‡ˆ¬˜€N	\0\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,' ¡Xµ \ÕK‰\ßh‹Y“\r[\ØZ.µõ0n’“p5e÷',' ¡Xµ \ÕK‰\ßh‹Y“\r[\ØZ.µõ0n’“p5e÷','øì“…²RğG\Î*Jr—\Ä\Ò#1D',NULL,1,100,22,24,1,1564387085213,22,1564387082891,1),('2\åˆ¿:©‚1Å§r …\à»÷¯\ê\ÄP\ç„#%\Ô\Ø',4,'\0\0\0Pô\ÆDJğˆ&¢g½Á8o\Çµ±JÁeõ\ç­}\Ä×šœa5Pô\ÆDJğˆ&¢g½Á8o\Çµ±JÁeõ\ç­}\Ä×šœa5C\Ó\ç¶ôî¥ñ¤@\Ø\Â\çE\è\æº¯P2X\ä4B_\Îÿt\Zò>]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0‰±x3\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0Aµ\ß/ZY•`¦‰\ÊPp=\Îôl\"v«¼^÷¢%2\0\0\0IH0E!\0\è\ß\Ñ \"ˆ\ØXc:¦°MµŸ†£Àö\ß{.eÖ‘  xMi>$`f\ÊÎ¥\è\\z\ì×º¢‚½\ÏHÁL£¦÷¥ÿÿÿÿ\0\0\0˜€N	\0\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬dd\0\0\0\0\0\0¼v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬4N	\0\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'5aœš\×\Ä}­\çõeÁJ±µ\Ço8Á½g¢&ˆğJD\ÆôP','5aœš\×\Ä}­\çõeÁJ±µ\Ço8Á½g¢&ˆğJD\ÆôP','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,20,22,1,1564406303182,20,1564406301498,1),('5\rkjšMF´]”/Ow#\Ú. PZ\Ù\Ò\Údyx×˜',17,'\0\0\0ŸóG&¥\ÈIIº„‡\ìl\Å\âúµ\Ô8 Aö\Îÿ€h`d@ŸóG&¥\ÈIIº„‡\ìl\Å\âúµ\Ô8 Aö\Îÿ€h`d@V\Ö}SH/ğX-F[\ïMK±³\Ò}\ë€\Ø\ËD@öP¯ºDs??]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0Ytm\èøì“…²RğG\Î*Jr—\Ä\Ò#1D\0\0\0\0\0\0\0\0\0\0\0\0\0C\Ó\ç¶ôî¥ñ¤@\Ø\Â\çE\è\æº¯P2X\ä4B_\Îÿt\0\0\0IH0E!\0§2/$Âˆó/š\Ç9k(y:G¢­¡O4>~²Ë¥ QsÚ°6{\ç\èÀ’NTe»t‡o;o³n\"›5(Æ™\ìÿÿÿÿ\0\0\04N	\0\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0a¼\0\0\0\0\0¼v©·›gˆQ\"\ê7öB;_È™\åSˆ¬4»GM	\0\0¼v©–\Ç\éuòÀ5\Õ_¢\\÷\Äß‹\ë®gˆ¬\0\0\0\0\0\0\0test\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'@d`h€ÿ\ÎöA 8Ôµú\â\Ålì‡„ºIIÈ¥&GóŸ','@d`h€ÿ\ÎöA 8Ôµú\â\Ålì‡„ºIIÈ¥&GóŸ','øì“…²RğG\Î*Jr—\Ä\Ò#1D',NULL,1,100,7,8,1,1564426305132,7,1564426302535,1),('5aœš\×\Ä}­\çõeÁJ±µ\Ço8Á½g¢&ˆğJD\ÆôP',3,'\0\0\0¢Õ–ˆk\ä\Ô®¥ƒŸi›q\Î\Öc·»:s¶À\Ó/ª+¢Õ–ˆk\ä\Ô®¥ƒŸi›q\Î\Öc·»:s¶À\Ó/ª+¸1jq\Ò€x¥\'0C¹d\Ï\î2>\ÇT\åÄ”†¾!bz» §>]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0øµ\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0Aµ\ß/ZY•`¦‰\ÊPp=\Îôl\"v«¼^÷¢%2\0\0\0\0kH0E!\0ı¡†v\ä†T’jñşv\\Ÿ¯7\Íú®\Ãy®{P9$!\Ú U\â\ç>\Ë(\åŸŠfŒ½Y\ã»\Ã(D,•E\Ë\ÏóKW}µ!€¥*‡‰sŒ—\Ûpöb€¥Á5µÃ¦‰N¿O3K5W\ê–5oÿÿÿÿ\0\0\0„[\0\0\0\0\0¼v©·›gˆQ\"\ê7öB;_È™\åSˆ¬ [\0\0\0\0\0¼v©û4¾‚][oS—\Èµx’•ºˆ¬d\0\0\0\0\0\0\0¼v©·›gˆQ\"\ê7öB;_È™\åSˆ¬\0\0\0\0\0\0\01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'+ª/\ÓÀ¶s:»·c\Ö\Îq›iŸƒ¥®\Ô\äkˆ–\Õ¢','+ª/\ÓÀ¶s:»·c\Ö\Îq›iŸƒ¥®\Ô\äkˆ–\Õ¢','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,21,23,1,1564387235213,21,1564387233229,1),('6|\ÜHS,¾ÿ³<y¾·º¼\íò’j@y\\KŠ!\0i',15,'\0\0\0\ß{+H±¯O‰ı+w¸ò_†s\í3­QW\êa\ß{+H±¯O‰ı+w¸ò_†s\í3­QW\êaª†s«\Ô(€€`/|6UMI?\0I\ÑUüº3€Z¸?]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0\ë\Ò\Î÷\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!\ŞÁ\ÌJY…<\êÑ¬¤e\Í\ëö7e\Æ~d\ç\Ì*­\ÑPl¼GR!\ŞÁ\ÌJY…<\êÑ¬¤e\Í\ëö7e\Æ~d\ç\Ì*­\ÑPl¼!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®\0\0\0\0\0\0\0\0\0\0\0TOKEN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-USD\",\n    \"description\" : \"test-1-USD\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-USD\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0^\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"address\" : \"12jEy3c58dGMtB3sotY99WXXC3hfuqozNV\",\n    \"publickey\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"signature\" : \"30440220176b990156d4a1dc11c4a2e5af5a2c40eb4f7c1822036feb2c9ab41b8f4f389702205e947f9ff80a5458cc2566645acbefa6e13452d43d175ff8f20ca19a5851217d\"\n  }, {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402205381c2e91f3d9aaad854910c67c4b21c03a290da6190969e7a3c2560046c1346022050adf178d821b862d05524fc4cb228f87893745cefbd2c4b3cbcbb2a396b731e\"\n  } ]\n}',0,'a\êWQ­3\ís†_ò¸w+ı‰O¯±H+{\ß','a\êWQ­3\ís†_ò¸w+ı‰O¯±H+{\ß','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,9,10,1,1564410257869,9,1564410256537,1),('8#Ó›÷Ae5lš¯\îùs”ŸTOVQ‹?£v\Ây¹ı',10,'\0\0\0T\"\Ä<4±´\è\ZØ¾KeH«ÿ\Ùh\îVC[\Är\é`¦?T\"\Ä<4±´\è\ZØ¾KeH«ÿ\Ùh\îVC[\Är\é`¦?ğf\ZA‰-ó\rLÈœbóL,®©V‰fqF[^SH \È÷>]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\à®\Ä\Â\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\n\0\0\0\0\0\0\0\0\0\0\Ê\\:•\î`‰e\Ûrk<”r‡Å–\Èx‘¯®P¬\à\ê–\å6\0\0\0kH0E!\0ƒµi§_ğF\ÓÚ‚R\ÍÈ§ô\Â.…I÷ò\Ç} kk¼ß€ k\æFÍ°‹]ñº3Ï’µÿ±¸§’¥C”1M›-!)¹\Ù[Z‹\"\Ì÷ng9\ÕIX\ØiK9-\ßÇ‚d¸\Õvÿÿÿÿ\0\0\0\0\0\0\0\0\0\0¼v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬\0\0\0\0\0\0\0¼v©W5^´\ßNòÀ·un2ˆ›\Ëv<ˆ¬\0\0\0\0\0\0\0¼v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬\0\0\0\0\0\0\00.01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'?¦`\ér\Ä[CV\îh\Ùÿ«HeK¾\Ø\Zè´±4<\Ä\"T','?¦`\ér\Ä[CV\îh\Ùÿ«HeK¾\Ø\Zè´±4<\Ä\"T','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,14,16,1,1564407773606,14,1564407772256,1),(':ó@>ı\\q²×Š29O\æl2“ú€üi\ç‘\"·#ùöĞŠ»\Ğ',13,'\0\0\0A“¨óŸ#1Š‰mÓ¸ºÀA5ú\Å\Z¿­µ”7ƒA“¨óŸ#1Š‰mÓ¸ºÀA5ú\Å\Z¿­µ”7ƒógP€\ì*–£!QÛ‹ô3t^\äsNG\Ğ\ÔH˜F†._Ô‰?]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0s0õT\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!\0]d%*i¤sı\É^‘<º›\éz!¼a“P¿o\é%hGR!\0]d%*i¤sı\É^‘<º›\éz!¼a“P¿o\é%h!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®\0\0\0\0\0\0\0\0\0\0\0TOKEN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-ETH\",\n    \"description\" : \"test-1-ETH\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-ETH\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"address\" : \"17gt5R6JU3geTrJqauEWZZ1hqozH5HAppG\",\n    \"publickey\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"signature\" : \"3045022100a64bbbf04b0192bd45a41f3ee05e3df5c60b5240b0b6e3bace8eb46557d960f80220290034ed237e2fabb51f8c12b94a23b3089bb650626decfb903a83cb525675af\"\n  }, {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100e603001c1b2d498a38d8f501a19bc21cd076d3dc07420f25f87d19b4e1ce232e02205e0125ad0b6eb856b0af607739c3a5aae573afda267ed962358842273c4e86df\"\n  } ]\n}',0,'ƒ7”µ­¿\Z\Åú5AÀº¸\Óm‰Š1#Ÿó¨“A','ƒ7”µ­¿\Z\Åú5AÀº¸\Óm‰Š1#Ÿó¨“A','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,11,12,1,1564410255127,11,1564410251037,1),(';\r‰ReO\Ë#2\ïN\Ø[t\äX`%D\ÛÆ”¯\ç\å_\'¶•',11,'\0\0\0ı¹y\Âv£?‹QVOTŸ”sù\î¯šl5eA÷›\Ó#8ı¹y\Âv£?‹QVOTŸ”sù\î¯šl5eA÷›\Ó#8J0\î¾+C®+¦¾.\Õ\ï£\Ï\ÖzU±ño\Z±½\åµÊ•p‚?]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\ÍVµ\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!\ë\ÄXº„nÇ›2\ç¢0û\éÖ‡\rü…$”Ã¶Ïœ–£\ÕHYGR!\ë\ÄXº„nÇ›2\ç¢0û\éÖ‡\rü…$”Ã¶Ïœ–£\ÕHY!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®\0\0\0\0\0\0\0\0\0\0\0TOKEN\"\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-Gold\",\n    \"description\" : \"test-1-Gold\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-Gold\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0`\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB\",\n    \"publickey\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"signature\" : \"3045022100a2df5eed8d96ac0d61627ffdf693c1f3d0f950de87995da599774b6fc5409904022040cc2bcd6bd1f6f984893412d4e5f26e6ada5a2422d43d0b23f0d2f9aacdf828\"\n  }, {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402201adbeccde46b7f7c9f4da4cd44b47eb2cf6ad4a275830122cc62f9f7fe9e2d26022022a355ce56881a56232fe5d1ef062d6f50b258ee54a79375f2919efabb1e4ec4\"\n  } ]\n}',0,'8#Ó›÷Ae5lš¯\îùs”ŸTOVQ‹?£v\Ây¹ı','8#Ó›÷Ae5lš¯\îùs”ŸTOVQ‹?£v\Ây¹ı','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,13,15,1,1564410248733,13,1564410244797,1),('?¦`\ér\Ä[CV\îh\Ùÿ«HeK¾\Ø\Zè´±4<\Ä\"T',9,'\0\0\0¿ğ\år\r\ê²kc´\åV(¾\ÚI¨‡w÷ÿXÖµ¿ğ\år\r\ê²kc´\åV(¾\ÚI¨‡w÷ÿXÖµŸºóı2Á´µdXÁ9‚~P.ˆª4\ÆXDœ5g§•1¢÷>]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0F\Ä))\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ó\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -7,\n  \"toHeight\" : 9,\n  \"prevHash\" : {\n    \"bytes\" : \"hQfmJOfryC1R90MpZnNeLSxvW2tE67Rt2Dkt7MvKwjk=\",\n    \"reversedBytes\" : \"OcLKy+wtOdhttOtEa1tvLC1ec2YpQ/dRLcjr5yTmB4U=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'µ\ÖXÿ÷w‡¨IÚ¾(Vå´ck²\ê\rr\åğ¿','µ\ÖXÿ÷w‡¨IÚ¾(Vå´ck²\ê\rr\åğ¿','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,15,17,1,1564407716557,15,1564407715985,1),('?õ‹\åŠ\Ô.mû±“Œ\ÜFaµ®è›ª¢•\×ª­Qt',5,'\0\0\0\Ø\Ô%#„\çP\Ä\ê¯÷»\à… r§\Å1‚©:¿ˆ\å2\Ø\Ô%#„\çP\Ä\ê¯÷»\à… r§\Å1‚©:¿ˆ\å2pï•G“\ß9a_z”²‘«\Å\ç\ì\Í\äWL+\ß79X~\í6‘ò>]\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\ÕI\È?\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0C\Ó\ç¶ôî¥ñ¤@\Ø\Â\çE\è\æº¯P2X\ä4B_\Îÿt\0\0\0\0kH0E!\0…ŠGôÔµ{ƒÎ…5\í†J\0^¬om\"%uƒøÀÏ‘e h,_—\ãW¹¾Z\0¤ı„¥ò:j‹!¸;\ro/ˆEeI!)¹\Ù[Z‹\"\Ì÷ng9\ÕIX\ØiK9-\ßÇ‚d¸\Õvÿÿÿÿ\0\0\0dd\0\0\0\0\0\0¼v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬\0d\0\0\0\0\0\0¼v©W5^´\ßNòÀ·un2ˆ›\Ëv<ˆ¬d\0\0\0\0\0\0\0¼v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬\0\0\0\0\0\0\0test\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'2\åˆ¿:©‚1Å§r …\à»÷¯\ê\ÄP\ç„#%\Ô\Ø','2\åˆ¿:©‚1Å§r …\à»÷¯\ê\ÄP\ç„#%\Ô\Ø','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,19,21,1,1564406420314,19,1564406418872,1),('@d`h€ÿ\ÎöA 8Ôµú\â\Ålì‡„ºIIÈ¥&GóŸ',16,'\0\0\0i\0!ŠK\\y@j’òí¼º·¾y<³ÿ¾,SH\Ü|6i\0!ŠK\\y@j’òí¼º·¾y<³ÿ¾,SH\Ü|6\Í\ãs\ÑfÆ¢2\æh ô4•£oD\åÙ¿²\êí›ˆA·M“?]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0\Ïù#÷\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!+¼÷ºPK\î¹i+s+*s\ÕZ\ØV Õ¼!’\Z.`usGR!+¼÷ºPK\î¹i+s+*s\ÕZ\ØV Õ¼!’\Z.`us!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®\0\0\0\0\0\0\0\0\0\0\0TOKEN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-EUR\",\n    \"description\" : \"test-1-EUR\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-EUR\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0`\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1Lpvh2E44RSReTnmPivfghtUm2RE9Kd66B\",\n    \"publickey\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"signature\" : \"3045022100f081329b5ec083a0805009857b37c85d71a8ab9989a08c90a66fae965f933c9802207ed38d4d8accd8bf9e803d47d1a962e397c0b70dea4956c14e9bc3f57cacc353\"\n  }, {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"30440220516fb17aad62e2ad62e8d4df6f18b2dc6bbd7b2e7bc089831bf7b6f2867b6d3902206f71455852c2d29f385061d9864ebe82ccbc9ff811405193a1970d04e30ee9d8\"\n  } ]\n}',0,'6|\ÜHS,¾ÿ³<y¾·º¼\íò’j@y\\KŠ!\0i','6|\ÜHS,¾ÿ³<y¾·º¼\íò’j@y\\KŠ!\0i','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,8,9,1,1564410264285,8,1564410260282,1),('T\ìF¹`\Ô(¶‚\İ\Âk®\Ô7§\Õ¦\Å\Ï]ˆ\íqL¥•',22,'\0\0\0İ‘\Ş\ÛS„/<¨w”q.\Ã\ày46¾ºZª\Ñ\ÖL\Â\Æİ‘\Ş\ÛS„/<¨w”q.\Ã\ày46¾ºZª\Ñ\ÖL\Â\Æ\ãû|u\Ãÿ[J/Õ«x\ÔXµL\"&T´²f\Ø\á¤ò[H3T/\ÍPB]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0Q\Ûm\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0Š^/¦\Ö55\å\éù\İÚŠ™\ìıK\Æ\Ã|W½üœš¥“\0\0\0kH0E!\0\Ù4§.\Í[\ãM³¿›0UŠšH:¹\Åñs*&\Ï_?ˆ\ZCy p\Ë%\ÂELZ\nN\Ñ\éıO?—ù·ş¨(Vl³\È\Ç\Êü%!:\á\Ä.SõLüO3P¢(\Ô\ãXb*{ÿñ¶Kœnƒ´\Í2•.ÿÿÿÿ\0\0\00W\0\0\0\0\0¼v©Yè…‘9§™²–ğ\Å5F\n¸|‡ˆ¬V\0\0\0\0\0¼v©\×m*\Ü}õQ}‡ô³›\Ø*(/~=øˆ¬,\0\0\0\0\0\0¼GR!Á÷<\Ò<O°\êÿN¶\å\Ö\à\ço‡\"gY‰¶Á§û!lYÎ˜ \ëx¦\ß>\Ã\\\\š\ç nE\Ü¼\è¶vŠ°ã®•iR®\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'\Æ\ÂL\ÖÑªZº¾64y\à\Ã.q”w¨</„S\ÛŞ‘\İ','\Æ\ÂL\ÖÑªZº¾64y\à\Ã.q”w¨</„S\ÛŞ‘\İ','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,2,3,1,1564627155321,2,1564627151383,1),('aµƒ;k_‰\îˆK\Ş`¢+§ÿy¦A•yØ’R\ël\ËtÏ†',23,'\0\0\0•¥Lq\íˆ]\ÏÅ¦Õ§7Ô®k\Â\İ‚¶(\Ô`¹F\ìT•¥Lq\íˆ]\ÏÅ¦Õ§7Ô®k\Â\İ‚¶(\Ô`¹F\ìT¼•©*(/\Î\ĞóJ®\î…hô—’Üœ@\Ø†s9µnÇ®\ÍPB]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0x¥ˆ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ú\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 11,\n  \"toHeight\" : 20,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"HkwuikqNazQn6vfSV5WijxoBqA9R9faDFVQyq99ha2I=\",\n    \"reversedBytes\" : \"Ymth36syVBWD9vVRD6gBGo+ilVfS9+onNGuNSoouTB4=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'T\ìF¹`\Ô(¶‚\İ\Âk®\Ô7§\Õ¦\Å\Ï]ˆ\íqL¥•','T\ìF¹`\Ô(¶‚\İ\Âk®\Ô7§\Õ¦\Å\Ï]ˆ\íqL¥•','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,1,2,1,1564627170464,1,1564627166163,1),('a\êWQ­3\ís†_ò¸w+ı‰O¯±H+{\ß',14,'\0\0\0Ğ»Š\Ğöù#·\"‘\çiü€ú“2l\æO92Š×²q\\ı>@ó:bkaß«2TƒöõQ¨\Z¢•W\Ò÷\ê\'4kJŠ.L—³q8Xo^n¢:Yj–\×9\Ò<f”EQH\â;IS¤tŒ?]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0ğŒİ®\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!¬ö`¾\æL\ä‰\Ø\0?¼{m)%\ílG¦¢	\Ì|r@@]{=GR!¬ö`¾\æL\ä‰\Ø\0?¼{m)%\ílG¦¢	\Ì|r@@]{=!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®\0\0\0\0\0\0\0\0\0\0\0TOKEN1\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-äººæ°‘å¸\",\n    \"description\" : \"test-1-äººæ°‘å¸\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-äººæ°‘å¸\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1GtzL9G51YTnquirBBptpgKkwzRGp3Nicg\",\n    \"publickey\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"signature\" : \"30450221008729ce6b4676fde46d3f9776635bf8a37987e48c183134c8f5be704d485b87e802201a712973d4780e7f59c03d339ede7c80ce7213e5820346ecc97005a7deffc898\"\n  }, {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100fc804d1b92c86e2a930bcd0e75b3443959bdba0dd70d6f638151ae8e93f9ed85022000e6549955a9a65677181d04bcc2f82b98514f3149beb566882c5d8268c3c962\"\n  } ]\n}',0,':ó@>ı\\q²×Š29O\æl2“ú€üi\ç‘\"·#ùöĞŠ»\Ğ','L.ŠJk4\'\ê÷\ÒW•¢\Z¨QõöƒT2«\ßakb','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,10,11,1,1564410255127,10,1564410253540,1),('d\ÊlM\É\Í<b-!\Å|·\ázW+™\İKXEq÷\á\Ñ',24,'\0\0\0†\Ït\Ël\ëR’\Øy•A¦yÿ§+¢`\ŞKˆ\î‰_k;ƒµa†\Ït\Ël\ëR’\Øy•A¦yÿ§+¢`\ŞKˆ\î‰_k;ƒµaÀ»g3³bÜ¦{4Å³kõÄ3@Y¿\êÀ´>›·:Y9Œ‚B]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0/#ñ\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\ãû|u\Ãÿ[J/Õ«x\ÔXµL\"&T´²f\Ø\á¤ò[H3T/\0\0\0‘\0G0D $ü\ÛT¬65F\Ó\î®s‡²%\Ìğeg-\ÈQ	4„Z— \ZƒN\í\êrQ¤Ï²Ã“f†Bgrc3Í©\È=¡]F^\İG0D /öğv|,\Şw\Å\Æ\×`SÕ\Û\Ì).\ë\Ö2\Ä\Û}Pô_ M6Ñ‚_,)33kö(2%\å`\Zz)‰r\n6ÿ¿ÿÿÿÿ\0\0\0,\0\0\0\0\0\0¼GR!Á÷<\Ò<O°\êÿN¶\å\Ö\à\ço‡\"gY‰¶Á§û!lYÎ˜ \ëx¦\ß>\Ã\\\\š\ç nE\Ü¼\è¶vŠ°ã®•iR®,\0\0\0\0\0\0¼v©\æ\İ\Í\ãn4@¬”\0Jg›s’ˆ¬\0\0\0\0\0\0\0\0¼GR!Á÷<\Ò<O°\êÿN¶\å\Ö\à\ço‡\"gY‰¶Á§û!lYÎ˜ \ëx¦\ß>\Ã\\\\š\ç nE\Ü¼\è¶vŠ°ã®•iR®\0\0\0\0\0\0\0test4\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'aµƒ;k_‰\îˆK\Ş`¢+§ÿy¦A•yØ’R\ël\ËtÏ†','aµƒ;k_‰\îˆK\Ş`¢+§ÿy¦A•yØ’R\ël\ËtÏ†','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,0,1,1,1564639887511,0,1564639884835,1),('v¹<Gd§1\Ş\Z:ú>[n°H„.Z¬M\Ã#\Ğz\ç\ŞX±',19,'\0\0\0\êh¾‚\Êû\èÿ*‡œ\êŒ$Æµ:\"\Òzù3Ÿ¶\í›2\êh¾‚\Êû\èÿ*‡œ\êŒ$Æµ:\"\Òzù3Ÿ¶\í›2\Ä\Õ\Å\ä\ŞrCÂ¬Å¡§j³F9\Ë\ÓS\Ó\ä\è¾Yó8ÿ\ÚH¡˜A?]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0RğTøì“…²RğG\Î*Jr—\Ä\Ò#1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0CONTACTINFOy\0\0\0{\n  \"version\" : 1,\n  \"contactList\" : [ {\n    \"name\" : \"3r3\",\n    \"address\" : \"12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7\"\n  } ]\n}\0\0\0\0F\0\0[ {\n  \"tokenindex\" : 0,\n  \"address\" : \"1APeHh6XGwGXKiPdqSGLiFBpRqK6Grkrvq\",\n  \"publickey\" : \"0296a7d955d47d79e9b6880b66a5750d69f2722bac46f5660508c439ef9e760d56\",\n  \"signature\" : \"3045022100d7dcf5fec3ae9c9ae371d4c7b673869fb1fccbb0863ebaf5310d09c927bb98f00220331dce3348ac288f34cba5f80faa17ee97d340ff7bf1669af536e9bbf42f6282\"\n} ]',0,'2›í¶Ÿ3ùz\Ò\":µ\Æ$Œ\êœ‡*ÿ\èûÊ‚¾h\ê','2›í¶Ÿ3ùz\Ò\":µ\Æ$Œ\êœ‡*ÿ\èûÊ‚¾h\ê','øì“…²RğG\Î*Jr—\Ä\Ò#1D',NULL,4,100,5,6,1,1564426650176,5,1564426647846,1),('~\Ê)®4“Ğ°Z\Ív\å\\«\Ï\0 \é\\½Ï¼§øx—£-U',20,'\0\0\0±X\Ş\çz\Ğ#\ÃM¬Z.„H°n[>ú:\Z\Ş1§dG<¹v±X\Ş\çz\Ğ#\ÃM¬Z.„H°n[>ú:\Z\Ş1§dG<¹v>m[\ëª¹Ê‚Wƒ7ä¯ŸÚ§]6¦†•#}¸zƒB•M?]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0:+\ï”\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\n\0\0\0\0\0\0\0\0\0\0\0\0\0V\Ö}SH/ğX-F[\ïMK±³\Ò}\ë€\Ø\ËD@öP¯ºD\0\0\0\0kH0E!\0ùóS—\ÂzN%ó]<\Ì\æga\Î;›Š‘\Åù\ÒMÒ¬Â¤ )O­™m\Ş1\ÅiH\Äb˜\Ô\ÃÁKA\ì¶\îa‹Zš\Ì0¶!€¥*‡‰sŒ—\Ûpöb€¥Á5µÃ¦‰N¿O3K5W\ê–5oÿÿÿÿ\0\0\0\0a¼\0\0\0\0\0¼v©·›gˆQ\"\ê7öB;_È™\åSˆ¬8`¼\0\0\0\0\0¼#!€¥*‡‰sŒ—\Ûpöb€¥Á5µÃ¦‰N¿O3K5W\ê–5o¬\0\0\0\0\0\0\0\0\0\0\0\0G\0\0{\n  \"version\" : 1,\n  \"targetValue\" : 2,\n  \"targetTokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n  \"beneficiaryPubKey\" : \"A4ClKoeJc4yX23D2YoClwTW1w6aJTr9PMwxLNVfqljVv\",\n  \"validToTime\" : 1564458472,\n  \"validFromTime\" : 1564429672,\n  \"beneficiaryAddress\" : \"12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7\"\n}\0\0\0\0\0\0\0\0',0,'v¹<Gd§1\Ş\Z:ú>[n°H„.Z¬M\Ã#\Ğz\ç\ŞX±','v¹<Gd§1\Ş\Z:ú>[n°H„.Z¬M\Ã#\Ğz\ç\ŞX±','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,10,100,4,5,1,1564429722287,4,1564429717825,1),('2›í¶Ÿ3ùz\Ò\":µ\Æ$Œ\êœ‡*ÿ\èûÊ‚¾h\ê',18,'\0\0\0˜\×xyd\Ú\Ò\ÙZP .\Ú#wO/”]´FMšjk\r5˜\×xyd\Ú\Ò\ÙZP .\Ú#wO/”]´FMšjk\r5V\ÓLÊ¦_O\'ğ³XdE$C÷€k$š¶U£s[»Z\í\ìI@?]\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0\×Ä‚\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ó\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 2,\n  \"toHeight\" : 18,\n  \"prevHash\" : {\n    \"bytes\" : \"P6Zg6XLEW0NW7pBo2f+rSGVLgR++2BrotLEXNDzEIlQ=\",\n    \"reversedBytes\" : \"VCLEPDQXsbToGti+H4FLZUir/9lokO5WQ1vEculgpj8=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'5\rkjšMF´]”/Ow#\Ú. PZ\Ù\Ò\Údyx×˜','5\rkjšMF´]”/Ow#\Ú. PZ\Ù\Ò\Údyx×˜','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,6,7,1,1564426317291,6,1564426315057,1),('…\æ$\ç\ë\È-Q÷C)fs^-,o[kD\ë´m\Ø9-\ì\Ë\Ê\Â9',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Û\Ş\çIc3™\ê\ãh6 òq)\Ù{nD¿ZYŒ¹j<­Fm#^[\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0\0 rN	\0\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\Ù\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,24,26,1,1564350456329,24,1564350456137,1);
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
  `address` varchar(255) DEFAULT NULL,
  `pubKeyHex` varchar(255) NOT NULL,
  `posIndex` int(11) DEFAULT NULL,
  `tokenHolder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blockhash`,`tokenid`,`pubKeyHex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multisignaddress`
--

LOCK TABLES `multisignaddress` WRITE;
/*!40000 ALTER TABLE `multisignaddress` DISABLE KEYS */;
INSERT INTO `multisignaddress` VALUES ('0383379413b5adbf1ac5fa3541c0ba0fb8d36d17898a31239f0ef304a80e9341','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('0383379413b5adbf1ac5fa3541c0ba0fb8d36d17898a31239f0ef304a80e9341','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e','','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e',0,1),('367cdc1448532c1fbeffb33c7f79beb7babc8fedf2926a40795c4b8a2100690c','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('367cdc1448532c1fbeffb33c7f79beb7babc8fedf2926a40795c4b8a2100690c','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc','','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc',0,1),('3af3403efd5c71b2d78a32394fe66c3293fa80fc69e79122b723f9f6d08abbd0','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568','','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568',0,1),('3af3403efd5c71b2d78a32394fe66c3293fa80fc69e79122b723f9f6d08abbd0','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('3b0d8952654fcb2332ef4ed87f5b9d74e458602544dbc69419afe7e55f27b695','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('3b0d8952654fcb2332ef4ed87f5b9d74e458602544dbc69419afe7e55f27b695','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859','','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859',0,1),('40640e606880ffcef6412038d4b5fae2c56c9dec8784ba499e49c8a52647f39f','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573','','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573',0,1),('40640e606880ffcef6412038d4b5fae2c56c9dec8784ba499e49c8a52647f39f','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('61ea1b5751ad08041833ed9073865f818ef2b8772bfd894faf018db1482b7bdf','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d','','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d',0,1),('61ea1b5751ad08041833ed9073865f818ef2b8772bfd894faf018db1482b7bdf','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239','bc01','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('a289f54b7f68910707a293b464577c78bc40c30a2ec50c3de20c3d5d0be40eff','bc','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1);
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
INSERT INTO `openorders` VALUES ('~\Ê)®4“Ğ°Z\Ív\å\\«\Ï\0 \é\\½Ï¼§øx—£-U','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',200,'bc',1,0,NULL,2,'021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d','€¥*‡‰sŒ—\Ûpöb€¥Á5µÃ¦‰N¿O3K5W\ê–5o',1564458472,0,1564429672,'BUY','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7');
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
INSERT INTO `ordermatching` VALUES ('?¦`\ér\Ä[CV\îh\Ùÿ«HeK¾\Ø\Zè´±4<\Ä\"T',9,1,1,'2›í¶Ÿ3ùz\Ò\":µ\Æ$Œ\êœ‡*ÿ\èûÊ‚¾h\ê',2,'…\æ$\ç\ë\È-Q÷C)fs^-,o[kD\ë´m\Ø9-\ì\Ë\Ê\Â9'),('2›í¶Ÿ3ùz\Ò\":µ\Æ$Œ\êœ‡*ÿ\èûÊ‚¾h\ê',18,1,0,NULL,2,'?¦`\ér\Ä[CV\îh\Ùÿ«HeK¾\Ø\Zè´±4<\Ä\"T'),('…\æ$\ç\ë\È-Q÷C)fs^-,o[kD\ë´m\Ø9-\ì\Ë\Ê\Â9',0,1,1,'?¦`\ér\Ä[CV\îh\Ùÿ«HeK¾\Ø\Zè´±4<\Ä\"T',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
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
  `spendpendingtime` bigint(20) DEFAULT NULL,
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
INSERT INTO `outputs` VALUES ('º3O²N!£Â†Š¨9‘¾dT\Ó\è[A\å)»]“IG\ìª',0,678900000,'R!O¥\Ît5§Ø­\î\æ\Î4´¢¶Ø‘‡›·\ÒSå«·,¢=^n!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®','',0,1,'ƒ7”µ­¿\Z\Åú5AÀº¸\Óm‰Š1#Ÿó¨“A','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e','',NULL,0,1,0,0,NULL,1564410247),(' HS^[Fqf‰V©®,Lóbœ\ÈL\ró-‰A\Zfğ',0,1,'v©W5^´\ßNòÀ·un2ˆ›\Ëv<ˆ¬','18x7irozhBegs36LX2vW7HbqdwqxQqKraN',1,0,'8#Ó›÷Ae5lš¯\îùs”ŸTOVQ‹?£v\Ây¹ı','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','0.01',0,1,0,0,NULL,1564407772),(' HS^[Fqf‰V©®,Lóbœ\ÈL\ró-‰A\Zfğ',1,1,'v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,'8#Ó›÷Ae5lš¯\îùs”ŸTOVQ‹?£v\Ây¹ı','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','0.01',0,1,0,0,NULL,1564407772),(' ³+1\İ\ÑQ\Ä<ñ#ƒts­\Ğb,_¤†ÙŠ\Ü\Ûˆ¾\ÔH^',0,10,'v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,' $%#»J”\é#¡\nB\åZHğ2e4WK ©\ĞP\ä¬\Ù','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','12',1,1,1,1564407660610,'\Z\æÜ”y\é\Øe\r°\ê*3*·òõP¤\ÍT\íÆ a€Ø±ğ\Ö',1564406647),(' ³+1\İ\ÑQ\Ä<ñ#ƒts­\Ğb,_¤†ÙŠ\Ü\Ûˆ¾\ÔH^',1,90,'v©W5^´\ßNòÀ·un2ˆ›\Ëv<ˆ¬','18x7irozhBegs36LX2vW7HbqdwqxQqKraN',1,0,' $%#»J”\é#¡\nB\åZHğ2e4WK ©\ĞP\ä¬\Ù','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','12',0,1,0,0,NULL,1564406647),('/T3H[ò¤\á\Øf²´T&\"LµX\Ôx«\Õ/J[ÿ\Ãu|û\ã',0,349700,'v©\×m*\Ü}õQ}‡ô³›\Ø*(/~=øˆ¬','1Le548FsyeXyBMtsoduaHZhKJnJGbDMBao',1,0,'T\ìF¹`\Ô(¶‚\İ\Âk®\Ô7§\Õ¦\Å\Ï]ˆ\íqL¥•','bc','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',NULL,0,1,0,0,NULL,1564627151),('/T3H[ò¤\á\Øf²´T&\"LµX\Ôx«\Õ/J[ÿ\Ãu|û\ã',1,300,'R!Á÷<\Ò<O°\êÿN¶\å\Ö\à\ço‡\"gY‰¶Á§û!lYÎ˜ \ëx¦\ß>\Ã\\\\š\ç nE\Ü¼\è¶vŠ°ã®•iR®','',0,0,'T\ìF¹`\Ô(¶‚\İ\Âk®\Ô7§\Õ¦\Å\Ï]ˆ\íqL¥•','bc','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',NULL,1,1,1,1564639884828,'d\ÊlM\É\Í<b-!\Å|·\ázW+™\İKXEq÷\á\Ñ',1564627151),('2%¢÷^¼«v\"lô\Î=pP\Ê‰¦`•YZ/ßµA',0,1792900,'v©·›gˆQ\"\ê7öB;_È™\åSˆ¬','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7',1,0,'+ª/\ÓÀ¶s:»·c\Ö\Îq›iŸƒ¥®\Ô\äkˆ–\Õ¢','bc','',NULL,1,1,1,1564387233227,'5aœš\×\Ä}­\çõeÁJ±µ\Ço8Á½g¢&ˆğJD\ÆôP',1564387082),('2%¢÷^¼«v\"lô\Î=pP\Ê‰¦`•YZ/ßµA',1,1438400,'v©¯(4\ÃhAl9\ÊF·6¯2½-n\ÜWˆ¬','1Gy9QxJ9Q4JMq62hNMfiZWPmjFUctTm4af',1,0,'+ª/\ÓÀ¶s:»·c\Ö\Îq›iŸƒ¥®\Ô\äkˆ–\Õ¢','bc','',NULL,0,1,0,0,NULL,1564387082),('2%¢÷^¼«v\"lô\Î=pP\Ê‰¦`•YZ/ßµA',2,807700,'v©°\Å–\Ş\É.fo\áhıÆ† ·ˆ¬','1H7g13KSLBkGtuxBe58rQGG3rk8qfQudsA',1,0,'+ª/\ÓÀ¶s:»·c\Ö\Îq›iŸƒ¥®\Ô\äkˆ–\Õ¢','bc','',NULL,0,1,0,0,NULL,1564387082),('2%¢÷^¼«v\"lô\Î=pP\Ê‰¦`•YZ/ßµA',3,2800000,'v©Yè…‘9§™²–ğ\Å5F\n¸|‡ˆ¬','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',1,0,'+ª/\ÓÀ¶s:»·c\Ö\Îq›iŸƒ¥®\Ô\äkˆ–\Õ¢','bc','',NULL,1,1,1,1564626659776,'\Æ\ÂL\ÖÑªZº¾64y\à\Ã.q”w¨</„S\ÛŞ‘\İ',1564387082),('2%¢÷^¼«v\"lô\Î=pP\Ê‰¦`•YZ/ßµA',4,9999992783000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'+ª/\ÓÀ¶s:»·c\Ö\Îq›iŸƒ¥®\Ô\äkˆ–\Õ¢','bc','',NULL,1,1,1,1564406301497,'2\åˆ¿:©‚1Å§r …\à»÷¯\ê\ÄP\ç„#%\Ô\Ø',1564387082),('6\å–\ê\à¬P®¯‘xÈ–Å‡r”<kr\Ûe‰`\î•:\\\Ê',0,1,'v©W5^´\ßNòÀ·un2ˆ›\Ëv<ˆ¬','18x7irozhBegs36LX2vW7HbqdwqxQqKraN',1,0,'µ\ÖXÿ÷w‡¨IÚ¾(Vå´ck²\ê\rr\åğ¿','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','12',0,1,0,0,NULL,1564407713),('6\å–\ê\à¬P®¯‘xÈ–Å‡r”<kr\Ûe‰`\î•:\\\Ê',1,2,'v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,'µ\ÖXÿ÷w‡¨IÚ¾(Vå´ck²\ê\rr\åğ¿','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','12',1,1,1,1564407772255,'8#Ó›÷Ae5lš¯\îùs”ŸTOVQ‹?£v\Ây¹ı',1564407713),('6\í~X97\ß+LW\ä\Í\ì\çÅ«‘²”z_a9ß“G•\ïp',0,25600,'v©W5^´\ßNòÀ·un2ˆ›\Ëv<ˆ¬','18x7irozhBegs36LX2vW7HbqdwqxQqKraN',1,0,'?õ‹\åŠ\Ô.mû±“Œ\ÜFaµ®è›ª¢•\×ª­Qt','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','test',0,1,0,0,NULL,1564406418),('6\í~X97\ß+LW\ä\Í\ì\çÅ«‘²”z_a9ß“G•\ïp',1,100,'v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,'?õ‹\åŠ\Ô.mû±“Œ\ÜFaµ®è›ª¢•\×ª­Qt','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','test',1,1,1,1564406647241,' $%#»J”\é#¡\nB\åZHğ2e4WK ©\ĞP\ä¬\Ù',1564406418),('9Y:·›>´À\ê¿Y@3\Äõk³\Å4{¦\Üb³3g»À',0,300,'v©\æ\İ\Í\ãn4@¬”\0Jg›s’ˆ¬','1N3hG7mZwSDMCvHG5gEBaEcs5oU68fTsGH',1,0,'d\ÊlM\É\Í<b-!\Å|·\ázW+™\İKXEq÷\á\Ñ','bc','','test4',0,1,0,0,NULL,1564639884),('9Y:·›>´À\ê¿Y@3\Äõk³\Å4{¦\Üb³3g»À',1,0,'R!Á÷<\Ò<O°\êÿN¶\å\Ö\à\ço‡\"gY‰¶Á§û!lYÎ˜ \ëx¦\ß>\Ã\\\\š\ç nE\Ü¼\è¶vŠ°ã®•iR®','',0,0,'d\ÊlM\É\Í<b-!\Å|·\ázW+™\İKXEq÷\á\Ñ','bc','','test4',0,1,0,0,NULL,1564639884),('Bƒz¸}#•†¦6]§ÚŸ¯\ä7ƒW‚Ê¹ª\ë[m>',0,12345400,'!€¥*‡‰sŒ—\Ûpöb€¥Á5µÃ¦‰N¿O3K5W\ê–5o¬','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7',2,0,'~\Ê)®4“Ğ°Z\Ív\å\\«\Ï\0 \é\\½Ï¼§øx—£-U','bc','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7',NULL,0,1,0,0,NULL,1564429717),('Dº¯Pö@D\ËØ€\ë}Ò³±KM\ï[F-Xğ/HS}\ÖV',0,12345600,'v©·›gˆQ\"\ê7öB;_È™\åSˆ¬','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7',1,0,'5\rkjšMF´]”/Ow#\Ú. PZ\Ù\Ò\Údyx×˜','bc','','test',1,1,1,1564429717824,'~\Ê)®4“Ğ°Z\Ív\å\\«\Ï\0 \é\\½Ï¼§øx—£-U',1564426302),('Dº¯Pö@D\ËØ€\ë}Ò³±KM\ï[F-Xğ/HS}\ÖV',1,9999980411700,'v©–\Ç\éuòÀ5\Õ_¢\\÷\Äß‹\ë®gˆ¬','1EkFquFDC2v3wDuVLgKqQwPXfiSrG3zRGX',1,0,'5\rkjšMF´]”/Ow#\Ú. PZ\Ù\Ò\Údyx×˜','bc','','test',0,1,0,0,NULL,1564426302),('F­<j¹ŒYZ¿Dn{\Ù)qò 6h\ã\ê™3cI\ç\Ş\Û',0,10000000000000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'…\æ$\ç\ë\È-Q÷C)fs^-,o[kD\ë´m\Ø9-\ì\Ë\Ê\Â9','bc','',NULL,1,1,1,1564367725865,' ¡Xµ \ÕK‰\ßh‹Y“\r[\ØZ.µõ0n’“p5e÷',0),('M·Aˆ›\í\ê²¿\Ù\åDo£•4ô h\æ2¢\Æf\Ñs\ã\Í',0,678900000,'R!+¼÷ºPK\î¹i+s+*s\ÕZ\ØV Õ¼!’\Z.`us!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®','',0,1,'@d`h€ÿ\ÎöA 8Ôµú\â\Ålì‡„ºIIÈ¥&GóŸ','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573','',NULL,0,1,0,0,NULL,1564410260),('b5}X„\Õ\0\ëÆŠğ#	\Ìıò9•‡A\ÄB+ù¹^\Ö5¼˜',0,7,'v©W5^´\ßNòÀ·un2ˆ›\Ëv<ˆ¬','18x7irozhBegs36LX2vW7HbqdwqxQqKraN',1,0,'\Z\æÜ”y\é\Øe\r°\ê*3*·òõP¤\ÍT\íÆ a€Ø±ğ\Ö','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','0.03',0,1,0,0,NULL,1564407660),('b5}X„\Õ\0\ëÆŠğ#	\Ìıò9•‡A\ÄB+ù¹^\Ö5¼˜',1,3,'v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,'\Z\æÜ”y\é\Øe\r°\ê*3*·òõP¤\ÍT\íÆ a€Ø±ğ\Ö','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','0.03',1,1,1,1564407713734,'µ\ÖXÿ÷w‡¨IÚ¾(Vå´ck²\ê\rr\åğ¿',1564407660),('iCPE@úp \Ã+\"vH\Ñ¾¼I—Ki\è\Ïñ£RBõU',0,4,'v©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ¬','1111111111111111111114oLvT2',1,1,'aµƒ;k_‰\îˆK\Ş`¢+§ÿy¦A•yØ’R\ël\ËtÏ†','bc','',NULL,0,1,0,0,NULL,1564627170),('iCPE@úp \Ã+\"vH\Ñ¾¼I—Ki\è\Ïñ£RBõU',1,14,'v©\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«Ôˆ¬','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'aµƒ;k_‰\îˆK\Ş`¢+§ÿy¦A•yØ’R\ël\ËtÏ†','bc','',NULL,0,1,0,0,NULL,1564627170),('iCPE@úp \Ã+\"vH\Ñ¾¼I—Ki\è\Ïñ£RBõU',2,4,'v©øì“…²RğG\Î*Jr—\Ä\Ò#1Dˆ¬','1PhBzBUTXzq1M5wY5rvgEgwMcoSWbwhdRC',1,1,'aµƒ;k_‰\îˆK\Ş`¢+§ÿy¦A•yØ’R\ël\ËtÏ†','bc','',NULL,0,1,0,0,NULL,1564627170),('p•Êµå½±\Zoñ±Uz\ÖÏ£\ï\Õ.¾¦+®C+¾\î0J',0,678900000,'R!\ë\ÄXº„nÇ›2\ç¢0û\éÖ‡\rü…$”Ã¶Ïœ–£\ÕHY!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®','',0,1,';\r‰ReO\Ë#2\ïN\Ø[t\äX`%D\ÛÆ”¯\ç\å_\'¶•','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859','',NULL,0,1,0,0,NULL,1564410244),('t¤SI;\âHQE”f<\Ò9×–jY:¢n^oX8q³—',0,678900000,'R!¬ö`¾\æL\ä‰\Ø\0?¼{m)%\ílG¦¢	\Ì|r@@]{=!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®','',0,1,'a\êWQ­3\ís†_ò¸w+ı‰O¯±H+{\ß','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d','',NULL,0,1,0,0,NULL,1564410253),('tÿ\Î_B4\äX2P¯º\æ\èE\ç\Â\Ø@¤ñ¥\îô¶\ç\ÓC',0,25700,'v©\Ô)ö™:\Õ5Eq¶„:šV\Ü\'Áˆ¬','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,'2\åˆ¿:©‚1Å§r …\à»÷¯\ê\ÄP\ç„#%\Ô\Ø','bc','',NULL,1,1,1,1564406418871,'?õ‹\åŠ\Ô.mû±“Œ\ÜFaµ®è›ª¢•\×ª­Qt',1564406301),('tÿ\Î_B4\äX2P¯º\æ\èE\ç\Â\Ø@¤ñ¥\îô¶\ç\ÓC',1,9999992757300,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'2\åˆ¿:©‚1Å§r …\à»÷¯\ê\ÄP\ç„#%\Ô\Ø','bc','',NULL,1,1,1,1564426302534,'5\rkjšMF´]”/Ow#\Ú. PZ\Ù\Ò\Údyx×˜',1564406301),('“¥šœü½W|\Ã\ÆKıì™Š\Ú\İù\é\å55Ö¦/^Š',0,10500,'v©¯(4\ÃhAl9\ÊF·6¯2½-n\ÜWˆ¬','1Gy9QxJ9Q4JMq62hNMfiZWPmjFUctTm4af',1,0,' ¡Xµ \ÕK‰\ßh‹Y“\r[\ØZ.µõ0n’“p5e÷','bc','','WEIXIN',0,1,0,0,NULL,1564367725),('“¥šœü½W|\Ã\ÆKıì™Š\Ú\İù\é\å55Ö¦/^Š',1,350000,'v©Yè…‘9§™²–ğ\Å5F\n¸|‡ˆ¬','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',1,0,' ¡Xµ \ÕK‰\ßh‹Y“\r[\ØZ.µõ0n’“p5e÷','bc','','WEIXIN',1,1,1,1564627151381,'T\ìF¹`\Ô(¶‚\İ\Âk®\Ô7§\Õ¦\Å\Ï]ˆ\íqL¥•',1564367725),('“¥šœü½W|\Ã\ÆKıì™Š\Ú\İù\é\å55Ö¦/^Š',2,17500,'v©°\Å–\Ş\É.fo\áhıÆ† ·ˆ¬','1H7g13KSLBkGtuxBe58rQGG3rk8qfQudsA',1,0,' ¡Xµ \ÕK‰\ßh‹Y“\r[\ØZ.µõ0n’“p5e÷','bc','','WEIXIN',0,1,0,0,NULL,1564367725),('“¥šœü½W|\Ã\ÆKıì™Š\Ú\İù\é\å55Ö¦/^Š',3,9999999622000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,' ¡Xµ \ÕK‰\ßh‹Y“\r[\ØZ.µõ0n’“p5e÷','bc','','WEIXIN',1,1,1,1564387082888,'+ª/\ÓÀ¶s:»·c\Ö\Îq›iŸƒ¥®\Ô\äkˆ–\Õ¢',1564367725),('•~+‰•&®\è“\çwtú\Ş\ÓûE\Ã÷‹úQs\ÍûM]‘D',0,200,'Q!^O[=D>¨Ø¯ºp¸ƒ«ñ†øÔ‡h\æÈ<yQ®','',0,0,'\Æ\ÂL\ÖÑªZº¾64y\à\Ã.q”w¨</„S\ÛŞ‘\İ','bc','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',NULL,0,1,0,0,NULL,1564626659),('•~+‰•&®\è“\çwtú\Ş\ÓûE\Ã÷‹úQs\ÍûM]‘D',1,2799800,'v©\×m*\Ü}õQ}‡ô³›\Ø*(/~=øˆ¬','1Le548FsyeXyBMtsoduaHZhKJnJGbDMBao',1,0,'\Æ\ÂL\ÖÑªZº¾64y\à\Ã.q”w¨</„S\ÛŞ‘\İ','bc','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',NULL,0,1,0,0,NULL,1564626659),('¸Z€3ºüU\ÑI\0?IMU6|/`€€(Ô«s†ª',0,678900000,'R!\ŞÁ\ÌJY…<\êÑ¬¤e\Í\ëö7e\Æ~d\ç\Ì*­\ÑPl¼!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®','',0,1,'6|\ÜHS,¾ÿ³<y¾·º¼\íò’j@y\\KŠ!\0i','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc','',NULL,0,1,0,0,NULL,1564410256),('»zb!¾†”\Ä\åT\Ç>2\î\Ïd¹C0\'¥x€\Òqj1¸',0,1792800,'v©û4¾‚][oS—\Èµx’•ºˆ¬','1PuFnszE3u7Ku1VPkY7Fa4oamUWcZnXBnH',1,0,'5aœš\×\Ä}­\çõeÁJ±µ\Ço8Á½g¢&ˆğJD\ÆôP','bc','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7','1',0,1,0,0,NULL,1564387233),('»zb!¾†”\Ä\åT\Ç>2\î\Ïd¹C0\'¥x€\Òqj1¸',1,100,'v©·›gˆQ\"\ê7öB;_È™\åSˆ¬','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7',1,0,'5aœš\×\Ä}­\çõeÁJ±µ\Ço8Á½g¢&ˆğJD\ÆôP','bc','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7','1',0,1,0,0,NULL,1564387233),('\Ñ^\Â\à\ã=0>±l\Êm‹#²¢F–5b@€K*ªÿ²\ã\í¸',0,10,'v©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ¬','1111111111111111111114oLvT2',1,1,'L.ŠJk4\'\ê÷\ÒW•¢\Z¨QõöƒT2«\ßakb','bc','',NULL,0,1,0,0,NULL,1564410255),('\Ñ^\Â\à\ã=0>±l\Êm‹#²¢F–5b@€K*ªÿ²\ã\í¸',1,80,'v©\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«Ôˆ¬','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'L.ŠJk4\'\ê÷\ÒW•¢\Z¨QõöƒT2«\ßakb','bc','',NULL,0,1,0,0,NULL,1564410255),('\Ñ^\Â\à\ã=0>±l\Êm‹#²¢F–5b@€K*ªÿ²\ã\í¸',2,10,'v©øì“…²RğG\Î*Jr—\Ä\Ò#1Dˆ¬','1PhBzBUTXzq1M5wY5rvgEgwMcoSWbwhdRC',1,1,'L.ŠJk4\'\ê÷\ÒW•¢\Z¨QõöƒT2«\ßakb','bc','',NULL,0,1,0,0,NULL,1564410255),('\Ô_.†F˜H\Ô\ĞGNs\ä^t3ô‹\ÛQ!£–*\ì€Pgó',0,678900000,'R!\0]d%*i¤sı\É^‘<º›\éz!¼a“P¿o\é%h!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\ÉuR®','',0,1,':ó@>ı\\q²×Š29O\æl2“ú€üi\ç‘\"·#ùöĞŠ»\Ğ','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568','',NULL,0,1,0,0,NULL,1564410251);
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
INSERT INTO `outputsmulti` VALUES ('º3O²N!£Â†Š¨9‘¾dT\Ó\è[A\å)»]“IG\ìª',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('º3O²N!£Â†Š¨9‘¾dT\Ó\è[A\å)»]“IG\ìª',0,'1MW35ZNpYDANihQjDZC7fmzj2rADW4ZyrP',2),('/T3H[ò¤\á\Øf²´T&\"LµX\Ôx«\Õ/J[ÿ\Ãu|û\ã',1,'1AEw57BsZX7CiGStKqGNA5ZHHWiV3oxPqy',2),('/T3H[ò¤\á\Øf²´T&\"LµX\Ôx«\Õ/J[ÿ\Ãu|û\ã',1,'1Db235DFpST2zqTL1YwCYDw419rGsvZGr6',2),('9Y:·›>´À\ê¿Y@3\Äõk³\Å4{¦\Üb³3g»À',1,'1AEw57BsZX7CiGStKqGNA5ZHHWiV3oxPqy',2),('9Y:·›>´À\ê¿Y@3\Äõk³\Å4{¦\Üb³3g»À',1,'1Db235DFpST2zqTL1YwCYDw419rGsvZGr6',2),('M·Aˆ›\í\ê²¿\Ù\åDo£•4ô h\æ2¢\Æf\Ñs\ã\Í',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('M·Aˆ›\í\ê²¿\Ù\åDo£•4ô h\æ2¢\Æf\Ñs\ã\Í',0,'1Lpvh2E44RSReTnmPivfghtUm2RE9Kd66B',2),('p•Êµå½±\Zoñ±Uz\ÖÏ£\ï\Õ.¾¦+®C+¾\î0J',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('p•Êµå½±\Zoñ±Uz\ÖÏ£\ï\Õ.¾¦+®C+¾\î0J',0,'1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB',2),('t¤SI;\âHQE”f<\Ò9×–jY:¢n^oX8q³—',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('t¤SI;\âHQE”f<\Ò9×–jY:¢n^oX8q³—',0,'1GtzL9G51YTnquirBBptpgKkwzRGp3Nicg',2),('•~+‰•&®\è“\çwtú\Ş\ÓûE\Ã÷‹úQs\ÍûM]‘D',0,'1C6a32NXDtihFUa1JBU5bRosBnbgmrnaxQ',1),('¸Z€3ºüU\ÑI\0?IMU6|/`€€(Ô«s†ª',0,'12jEy3c58dGMtB3sotY99WXXC3hfuqozNV',2),('¸Z€3ºüU\ÑI\0?IMU6|/`€€(Ô«s†ª',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('\Ô_.†F˜H\Ô\ĞGNs\ä^t3ô‹\ÛQ!£–*\ì€Pgó',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('\Ô_.†F˜H\Ô\ĞGNs\ä^t3ô‹\ÛQ!£–*\ì€Pgó',0,'17gt5R6JU3geTrJqauEWZZ1hqozH5HAppG',2);
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
INSERT INTO `tips` VALUES ('d\ÊlM\É\Í<b-!\Å|·\ázW+™\İKXEq÷\á\Ñ');
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
  `tokenname` varchar(60) DEFAULT NULL,
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
  `domainpredblockhash` varchar(255) NOT NULL,
  `decimals` int(11) DEFAULT NULL,
  PRIMARY KEY (`blockhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES ('0383379413b5adbf1ac5fa3541c0ba0fb8d36d17898a31239f0ef304a80e9341',1,'034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e',0,678900000,'test-1-BTC','test-1-BTC',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('367cdc1448532c1fbeffb33c7f79beb7babc8fedf2926a40795c4b8a2100690c',1,'03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc',0,678900000,'test-1-USD','test-1-USD',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('3af3403efd5c71b2d78a32394fe66c3293fa80fc69e79122b723f9f6d08abbd0',1,'02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568',0,678900000,'test-1-ETH','test-1-ETH',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('3b0d8952654fcb2332ef4ed87f5b9d74e458602544dbc69419afe7e55f27b695',1,'02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859',0,678900000,'test-1-Gold','test-1-Gold',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('40640e606880ffcef6412038d4b5fae2c56c9dec8784ba499e49c8a52647f39f',1,'022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573',0,678900000,'test-1-EUR','test-1-EUR',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('61ea1b5751ad08041833ed9073865f818ef2b8772bfd894faf018db1482b7bdf',1,'021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d',0,678900000,'test-1-äººæ°‘å¸','test-1-äººæ°‘å¸',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',1,'bc01',0,1,'bc','BigTangle Domain','bc',1,3,1,'',0,NULL,NULL,0,NULL,NULL,'',2),('a289f54b7f68910707a293b464577c78bc40c30a2ec50c3de20c3d5d0be40eff',1,'bc',0,10000000000000,'BIG','BigTangle Currency',NULL,1,0,1,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',2);
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
INSERT INTO `txreward` VALUES ('L.ŠJk4\'\ê÷\ÒW•¢\Z¨QõöƒT2«\ßakb',10,1,1,'aµƒ;k_‰\îˆK\Ş`¢+§ÿy¦A•yØ’R\ël\ËtÏ†',2,'…\æ$\ç\ë\È-Q÷C)fs^-,o[kD\ë´m\Ø9-\ì\Ë\Ê\Â9',2),('aµƒ;k_‰\îˆK\Ş`¢+§ÿy¦A•yØ’R\ël\ËtÏ†',20,1,0,NULL,2,'L.ŠJk4\'\ê÷\ÒW•¢\Z¨QõöƒT2«\ßakb',8),('…\æ$\ç\ë\È-Q÷C)fs^-,o[kD\ë´m\Ø9-\ì\Ë\Ê\Â9',0,1,1,'L.ŠJk4\'\ê÷\ÒW•¢\Z¨QõöƒT2«\ßakb',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',10);
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
INSERT INTO `userdata` VALUES ('v¹<Gd§1\Ş\Z:ú>[n°H„.Z¬M\Ã#\Ğz\ç\ŞX±','CONTACTINFO','{\n  \"version\" : 1,\n  \"contactList\" : [ {\n    \"name\" : \"3r3\",\n    \"address\" : \"12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7\"\n  } ]\n}','0296a7d955d47d79e9b6880b66a5750d69f2722bac46f5660508c439ef9e760d56',4);
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

-- Dump completed on 2019-08-04  2:10:01
