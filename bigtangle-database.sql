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
INSERT INTO `blocks` VALUES (' ™‹rS º|C\ãk\r÷.W2˜¦-ÿQióô\Ò*',5,'\0\0\0úr\Ä\Ñÿ;·ºuÀ\Ôþ\Â\È\ÎY…”ƒ!y!\r²°l’\È%úr\Ä\Ñÿ;·ºuÀ\Ôþ\Â\È\ÎY…”ƒ!y!\r²°l’\È%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0šx\ìZ\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'%È’l°²\r!y!ƒ”…Y\Î\È\Âþ\ÔÀuº·;ÿ\Ñ\Ärú','%È’l°²\r!y!ƒ”…Y\Î\È\Âþ\ÔÀuº·;ÿ\Ñ\Ärú','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,35,38,1,1556060421985,35,1556060421529,1),('·#¶³@÷ +T!…P­/_LSô´öDf‹§¤&',12,'\0\0\0uú\ÅB>Œ\nðSHª¹\Ç|6Idtkˆ.¡\Ë\ë0ü£suú\ÅB>Œ\nðSHª¹\Ç|6Idtkˆ.¡\Ë\ë0ü£s(3a\ÜJ\îŸ@¯ˆñ97yDFvl…>\Ò\Îû„\ÙU™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\é>“\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!~\Êk-\ÉÕ•Røoƒ”&ör­û³\è8À\r\ï\Ä\äýœQ\áv#!~\Êk-\ÉÕ•Røoƒ”&ör­û³\è8À\r\ï\Ä\äýœQ\áv¬\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"ETH\",\n    \"description\" : \"ETH\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¼\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8\",\n    \"publickey\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"signature\" : \"304402206d4227335b2437f18f978107831fce87b1279c33edb290c0f73b3367bb91df04022014d7be76321f857472dc9a2513ff1af0e7b85ced8b0bfc1fff00a9c611ce1e6a\"\n  } ]\n}',0,'s£ü0\ëË¡.ˆktdI6|\Ç¹ªHSð\nŒ>B\Åúu','s£ü0\ëË¡.ˆktdI6|\Ç¹ªHSð\nŒ>B\Åúu','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,3,100,28,31,1,1556060503930,28,1556060502296,1),('³O}\Ä\Ð$Œ¦\×U„mU4‹þ\å¶W\ä\ä¦^\çx',25,'\0\0\0«\é\Ý%R®o=m¯Ä§Ò‘=I\èy\ÅH\â×“J«\é\Ý%R®o=m¯Ä§Ò‘=I\èy\ÅH\â×“J\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0f™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0a(\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'J“\×\âH\Åy\èI=‘Ò§\Ä¯m=o®R%\Ýé«','J“\×\âH\Åy\èI=‘Ò§\Ä¯m=o®R%\Ýé«','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,15,16,1,1556060520996,15,1556060518804,1),('\Ã\Ë\ÓDM!4k¾­‡0\ÆÇ¢p\å\ÂuÁþ\'\Ùs/',31,'\0\0\0Yÿ\Ôõø„]\ÈDÛ–¡;w!ˆkµ4t1°jQ\îi\ï\Ù6Yÿ\Ôõø„]\ÈDÛ–¡;w!ˆkµ4t1°jQ\îi\ï\Ù6\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0p™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0PL\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'6\Ù\ïi\îQj°1t4µkˆ!w;¡–\ÛD\È]„øõ\ÔÿY','6\Ù\ïi\îQj°1t4µkˆ!w;¡–\ÛD\È]„øõ\ÔÿY','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,9,10,1,1556060540485,9,1556060529533,1),('T\ÐÇ¡\ró\0ÿxó‚ñ‡q?&\Ç\åÀDE¥®ö½\Úw»',17,'\0\0\0có8Uÿ\ÐñŸÂ‘Û”u„†#\Ãr¹†\ás†ùklcó8Uÿ\ÐñŸÂ‘Û”u„†#\Ãr¹†\ás†ùkl\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0cg\Ý6\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'lkù†sá†¹r\Ã#†„u”Û‘ÂŸñ\ÐÿU8óc','lkù†sá†¹r\Ã#†„u”Û‘ÂŸñ\ÐÿU8óc','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,23,25,1,1556060510509,23,1556060507955,1),('ù³o²¸\äžðb‰?´\ïr/2\É„N\ÆQ\Â\ÝrÁ\ê',36,'\0\0\0kJµ½\ÆÀ£\äµSq\í\â\Ò\Ù\Ë.CŠV$\Ï<$\Ú\ÓL\ç`kJµ½\ÆÀ£\äµSq\í\â\Ò\Ù\Ë.CŠV$\Ï<$\Ú\ÓL\ç`‹\Ì\á\n$\'\'\ë\Ð\ÌJV\rˆF\ÆxY\ãH²Kÿl\'x™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0Æ>\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ú\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 14,\n  \"toHeight\" : 33,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"bGv5hnPhhrmPcgfDI3+GhJ11lNuRwp/x0A7/VTgX82M=\",\n    \"reversedBytes\" : \"Y/MXOFX/DtDxn8KR25R1nYSGfyPDB3KPuYbhc4b5a2w=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'`\çL\Ó\Ú$<\Ï$VŠC.\Ë\Ù\Ò\â\íqSµ\ä£ÀÆ½µJk','`\çL\Ó\Ú$<\Ï$VŠC.\Ë\Ù\Ò\â\íqSµ\ä£ÀÆ½µJk','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,4,5,1,1556060540597,4,1556060537743,1),('LôzœSW:0Žhg)\År}N\äb:3V+\æ¤s¢:[\å›',21,'\0\0\0ö\Æ$*BI^\ÖGž·\ÄWˆkzQº\ÏA\ß\éd‡*x\r\ÞJö\Æ$*BI^\ÖGž·\ÄWˆkzQº\ÏA\ß\éd‡*x\r\ÞJI\Z9È	%\Ã|Œ‰dV<û\"arý®r\îB5\ß_™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0k¿\0 \å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!V\Ðw¶—…U \æd¨\Ù€[~Œ]\Þ\ÃÕ¯2\ä0MµšC<#!V\Ðw¶—…U \æd¨\Ù€[~Œ]\Þ\ÃÕ¯2\ä0MµšC<¬\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"EUR\",\n    \"description\" : \"EUR\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP\",\n    \"publickey\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"signature\" : \"3045022100ab2b34700bc21ea5552a476dc4d242c988a1ec06c5af8d859abe5afa3983ee29022029fbc768f71d293083d73e0c26ec6429093b43e1eca9607e3a5f5e9945ce7c1b\"\n  } ]\n}',0,'J\Þ\rx*‡d\é\ßAÏºQzkˆWÄ·žG\Ö^IB*$\Æö','J\Þ\rx*‡d\é\ßAÏºQzkˆWÄ·žG\Ö^IB*$\Æö','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,3,100,19,20,1,1556060514970,19,1556060512351,1),('OñÊ§H\ÇÁ>õL‹%_8\á\Ã_\Â­+ö\ç$Ð˜Wt&',8,'\0\0\0º\Õw¿=½‘†å½•ø»[¾õŸ±BbûtÎ„Q2œ\àS=º\Õw¿=½‘†å½•ø»[¾õŸ±BbûtÎ„Q2œ\àS=\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0©I+\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'=S\àœ2Q„\ÎtûbB±Ÿõ¾[»ø•½å†‘½=¿wÕº','=S\àœ2Q„\ÎtûbB±Ÿõ¾[»ø•½å†‘½=¿wÕº','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,32,35,1,1556060503812,32,1556060499465,1),(']Žÿœj°­>¤²Î¶ YJÞ‘´®Ö¾\êþ\ä\ëŸ\è\r',19,'\0\0\0\Ì\è2£\Ó+ª‚b -\ÙÔ½\ZÍšn”þx/º\Z\ß\â‡\Ý	w1\Ì\è2£\Ó+ª‚b -\ÙÔ½\ZÍšn”þx/º\Z\ß\â‡\Ý	w1e4\"]:\î[‡\ëðB„\ÐV¶#Pg•LÉ…†Ð¡pðÍ¡K]™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0ó\Æ\Ù\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!S\Õ\ßB\ÅÇŽ\Ì\ç˜zN)u“\Õ·1ñxXqF!Re†#!S\Õ\ßB\ÅÇŽ\Ì\ç˜zN)u“\Õ·1ñxXqF!Re†¬\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"USD\",\n    \"description\" : \"USD\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT\",\n    \"publickey\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"signature\" : \"3045022100b572f9ee3352baacb10d0bd5749af65907f875beb702b453d94f4ee607654f4e022059325826201c0821ff569383ae7ac26b4dde5ad45fdfca1c448d7a6ced44a487\"\n  } ]\n}',0,'1w	Ý‡\â\ß\Zº/xþ”nš\Í\Z½\Ô\Ù- b‚ª+Ó£2\è\Ì','1w	Ý‡\â\ß\Zº/xþ”nš\Í\Z½\Ô\Ù- b‚ª+Ó£2\è\Ì','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,3,100,21,22,1,1556060514970,21,1556060509977,1),('¨K¯2\ZŽ²©\ÑGU„G@\ÞYºó•z¹Ì \Ú\ìÞ›P\Ô\Å',19,'\0\0\0\Ì\è2£\Ó+ª‚b -\ÙÔ½\ZÍšn”þx/º\Z\ß\â‡\Ý	w1\Ì\è2£\Ó+ª‚b -\ÙÔ½\ZÍšn”þx/º\Z\ß\â‡\Ý	w1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0E“-\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'1w	Ý‡\â\ß\Zº/xþ”nš\Í\Z½\Ô\Ù- b‚ª+Ó£2\è\Ì','1w	Ý‡\â\ß\Zº/xþ”nš\Í\Z½\Ô\Ù- b‚ª+Ó£2\è\Ì','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,21,22,1,1556060514972,21,1556060509724,1),('s£ü0\ëË¡.ˆktdI6|\Ç¹ªHSð\nŒ>B\Åúu',11,'\0\0\0\ÇF!&\Ö\âü÷›©½‡*¾\âºf“™\á3˜Šò\ÄFJ©C£\"\ÇF!&\Ö\âü÷›©½‡*¾\âºf“™\á3˜Šò\ÄFJ©C£\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0]*\Ã\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'\"£C©JF\ÄòŠ˜3á™“fº\â¾*‡½©›÷ü\â\Ö&!F\Ç','\"£C©JF\ÄòŠ˜3á™“fº\â¾*‡½©›÷ü\â\Ö&!F\Ç','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,29,32,1,1556060503871,29,1556060501031,1),('yÈ¿\ëXUôŒõ\Æ#Ñ£}b¶UþÁÿ\é\ÒÊµ›\r{',2,'\0\0\0íœ‹q\Ç\ßNC£ kmIŽ\Êjó§—žu]¨:Á»Cíœ‹q\Ç\ßNC£ kmIŽ\Êjó§—žu]¨:Á»C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ˜¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\03n¬±\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,38,41,1,1556060418869,38,1556060416275,1),('°„\ëÏ¾\Ó-ß™QšGBRýJ^\àK3û{‰‘Š?',34,'\0\0\0\nc-¼w`\"\Ã\ÄóAL\Ç\Ì<\Ò\è=\åD\Õ^‡	/v\nc-¼w`\"\Ã\ÄóAL\Ç\Ì<\Ò\è=\åD\Õ^‡	/v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0v™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0œ¡}4\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'v/	‡^\ÕD\å=\èÒ<\Ì\ÇLAó\Ä\Ã\"`w¼-c\n','v/	‡^\ÕD\å=\èÒ<\Ì\ÇLAó\Ä\Ã\"`w¼-c\n','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,6,7,1,1556060540484,6,1556060534957,1),('ME\á\È\'[hù?B{\r\rš[“’\È\ÞWªl;9\ïý',3,'\0\0\0{\r›µ\Ê\Ò\éÿÁþU¶b}£\Ñ#\ÆõŒôUX\ë¿\Èy{\r›µ\Ê\Ò\éÿÁþU¶b}£\Ñ#\ÆõŒôUX\ë¿\Èy\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0Rc½…\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'yÈ¿\ëXUôŒõ\Æ#Ñ£}b¶UþÁÿ\é\ÒÊµ›\r{','yÈ¿\ëXUôŒõ\Æ#Ñ£}b¶UþÁÿ\é\ÒÊµ›\r{','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,37,40,1,1556060418869,37,1556060417943,1),('C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í',1,'\0\0\0\\\r!\Ëwû”úi\';®x\Í\áW¶´É·%v\Å\îöTj\\\r!\Ëwû”úi\';®x\Í\áW¶´É·%v\Å\îöTjtÙ¬Lq&ƒ\Â \\\Â~µV”¦/¶jŸ;\Ç\Ï\ê¸LÆ›ÿ˜¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0ssL…\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0\0\0\Ô\Î,G†À¤ŸÿË“\ßl˜¿?ûyÎ´\ïl²\ëeEH\0\0\0\0IH0E!\0\Ä\ÇMþ÷R\î;VŽŸU—‹a¯¹Ï«ß¾Ð´4v4²~C\Â M\'‚t[cÀu†òŠ‚\\ \Ü\×¹\ÍS‡N¥g‰\Ã\á\n\Ötÿÿÿÿ\0\0\0\0€Æ¤~\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\àg5\0\0\0\0\0¼v©]¹n¨\ëLJþ\Õ%¯Å©¿€Áä®ˆ¬@x}\0\0\0\0¼v©õœ\ØrY›	¥&…\È`‘\ÜMˆ¬\0e\Í\0\0\0\0¼v©i\ï\æÆ‘hÕ³k%\ÒC£š}¿ ‹ˆ¬\0¯/\0\0\0\0¼v©\ÏË”!ÁV%ðC.\"D\Î¥<Nõ ˆ¬€–˜\0\0\0\0\0¼v©“jß‡ˆ‰¤…“Ž=<I(\Ý˜ˆ¬€ðú\0\0\0\0¼v©ùŠ\ê4”%n\Ý\âv\â6¾0©I^ôˆ¬\Ð\0\0\0\0\0\0¼v©…\ÉN\Þ\ÝØ³B(¿vý¤§s”Mˆ¬\0\áõ\0\0\0\0¼v©±¸q‚$²5½\\›Gfé¢ˆ¬\0¼ e\0\0\0¼v©˜B–^õþ42´;y•Ê¯Å½eÙ¤ˆ¬\0\äT\0\0\0¼v©$^i\ä\ï\ÎsÙ¯&?0€$Ü“†f\Þ6ˆ¬`\ìS\0\0\0\0\0¼v©\è‘SŒcDŸ\á¬tþ¡\ë;\é\Ö/[ýˆ¬€²\æ\0\0\0\0¼v©\Ð9 ´MjÆ€Ÿ½{‹q\ë\ÇAkx©ˆ¬\0Êš;\0\0\0\0¼v©Õ™yû\Ä]ñ)ñù\åš\Úo,ˆ¬ \Õ\0\0\0\0¼v©Pžy\åP‡\ç\ë>\ìLŒ\í<,2²`ˆ¬´¶)z\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'jTö\î\Åv%·É´¶W\á\Íx®;\'iú”ûw\Ë!\r\\','jTö\î\Åv%·É´¶W\á\Íx®;\'iú”ûw\Ë!\r\\','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,39,42,1,1556060418870,39,1556060415997,1),('\"£C©JF\ÄòŠ˜3á™“fº\â¾*‡½©›÷ü\â\Ö&!F\Ç',10,'\0\0\0	\ÛÝœ\"<\ÚV)ÁK\Æ\nMÍ¨Ù‰œ\\õ766–¢¥:	\ÛÝœ\"<\ÚV)ÁK\Æ\nMÍ¨Ù‰œ\\õ766–¢¥:û0c^u\Ýg\Ôl\rh4\Õ»f¾\àõ\á\Ìý\ß dVj%¡S™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0Œ“\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!\ëˆ\É9ZxD@¦ò9žXiúVIW«»n\è\ÞTî°\É\Õ\à#!\ëˆ\É9ZxD@¦ò9žXiúVIW«»n\è\ÞTî°\É\Õ\à¬\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"BTC\",\n    \"description\" : \"BTC\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws\",\n    \"publickey\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"signature\" : \"3045022100eb2a0f3e3ba8800f45c3477465d3f7e9d121d203ffeb86ae795b904fdc2d42c80220597ae9b923fe4d821b1cac88f77baf91380df04dd1fe9835930883e6984a15b7\"\n  } ]\n}',0,':¥¢–667õ\\œ‰Ù¨\ÍM\n\ÆKÁ)V\Ú<\"œ\Ý\Û	',':¥¢–667õ\\œ‰Ù¨\ÍM\n\ÆKÁ)V\Ú<\"œ\Ý\Û	','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,3,100,30,33,1,1556060503871,30,1556060499757,1),('$–\Z¶ô\ì1Ø“\ìd\ß„Õ´v~SaCßŽÛ‘\Ô\çH¡',6,'\0\0\0*\ÒôóiQÿ-¦˜2W.÷\rk\ãC|º Sr‹™ *\ÒôóiQÿ-¦˜2W.÷\rk\ãC|º Sr‹™ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0€\çlh\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,' ™‹rS º|C\ãk\r÷.W2˜¦-ÿQióô\Ò*',' ™‹rS º|C\ãk\r÷.W2˜¦-ÿQióô\Ò*','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,34,37,1,1556060424838,34,1556060423394,1),('%È’l°²\r!y!ƒ”…Y\Î\È\Âþ\ÔÀuº·;ÿ\Ñ\Ärú',4,'\0\0\0ý\ï9;lªW\ÞÈ’“[š\r\r{B?ùh[\'\È\áEMý\ï9;lªW\ÞÈ’“[š\r\r{B?ùh[\'\È\áEM\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0n¦\ê\Î\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'ME\á\È\'[hù?B{\r\rš[“’\È\ÞWªl;9\ïý','ME\á\È\'[hù?B{\r\rš[“’\È\ÞWªl;9\ïý','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,36,39,1,1556060421986,36,1556060419679,1),('%\åG¶:\é*´ø\'{o\á\É1RyPyVRºQŠ/#\Îý',37,'\0\0\0\êÁr\Ý\ÂQ\ÆN„\É2/r\ï´?‰bðžä¸²o³ù\êÁr\Ý\ÂQ\ÆN„\É2/r\ï´?‰bðžä¸²o³ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0y™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0qÔŒ\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'ù³o²¸\äžðb‰?´\ïr/2\É„N\ÆQ\Â\ÝrÁ\ê','ù³o²¸\äžðb‰?´\ïr/2\É„N\ÆQ\Â\ÝrÁ\ê','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,3,4,1,1556060540597,3,1556060538718,1),('*9\Zþ9°¬\áw™\×ø\Ö1YD\Ôe¸õ&\Ûa°ôÖ·\ä³?',28,'\0\0\0\Î­žvŽ5\"%}{‘mv	b/™[ y‹²\É&K£+\Î­žvŽ5\"%}{‘mv	b/™[ y‹²\É&K£+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0k™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0ø¤ª\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'+£K&É²‹y [™/b	vm‘{}%\"5Žvž­\Î','+£K&É²‹y [™/b	vm‘{}%\"5Žvž­\Î','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,12,13,1,1556060529744,12,1556060524130,1),('*.TÐ‰\åO›%ù€¬£\éb†\ÆL\ÚR1Á0¿\Þ\ß\é',14,'\0\0\0q9¬öT[ð™0t÷oŠ&\Å\å£[=\æò\ßë°±\ç:\0|8q9¬öT[ð™0t÷oŠ&\Å\å£[=\æò\ßë°±\ç:\0|8XƒG\Û;|-$£±–\ì˜±±\ÄÅœ\Ö\×Z\í\Äty#kBW™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0 ’ˆ—\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!€<W².5þ:6!³ò\Âd¶(ó)/Ó¼Š\ç–Ã¶#!€<W².5þ:6!³ò\Âd¶(ó)/Ó¼Š\ç–Ã¶¬\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"CNY\",\n    \"description\" : \"CNY\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1EvM6MUnShSCCY5RgxaC1NgkP7hmabyMo8\",\n    \"publickey\" : \"02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618\",\n    \"signature\" : \"30450221009bfbb992665b644f6ec65e6109cf9c54a866861ee981439ded317b9f708890700220322efcef556e90958ed772f799e5347bc02d259fdeaad764ac5756d64d7b6a89\"\n  } ]\n}',0,'8|\0:ç±°\ë\ßò\æ=[£\å\Å&Šo÷t0™ð[Tö¬9q','8|\0:ç±°\ë\ßò\æ=[£\å\Å&Šo÷t0™ð[Tö¬9q','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,3,100,26,28,1,1556060510434,26,1556060504688,1),('+£K&É²‹y [™/b	vm‘{}%\"5Žvž­\Î',27,'\0\0\0@CÒƒ }»/SvßŒi’©=¯—9µ¾›Xv¹ÿjÀ\Ï+@CÒƒ }»/SvßŒi’©=¯—9µ¾›Xv¹ÿjÀ\Ï+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0i™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0”\Í\Ï\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'+\ÏÀjÿ¹vX›¾µ9—¯=©’iŒ\ßvS/»} ƒ\ÒC@','+\ÏÀjÿ¹vX›¾µ9—¯=©’iŒ\ßvS/»} ƒ\ÒC@','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,13,14,1,1556060529618,13,1556060522394,1),('+\Î²!´\ÈA__E\í\Ü-}„c3\ì…Z\Ý	2B¥\\-',23,'\0\0\0pyô™z_\Ïj&]²^¶\ì\ê›M	¥G®\ä§Ã€\ëG5`4þ.pyô™z_\Ïj&]²^¶\ì\ê›M	¥G®\ä§Ã€\ëG5`4þ.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0b™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0Æ¼\ã…\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'.þ4`5G\ë€Ã§\ä®G¥	M›\ê\ì¶^²]&j\Ï_z™ôyp','.þ4`5G\ë€Ã§\ä®G¥	M›\ê\ì¶^²]&j\Ï_z™ôyp','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,17,18,1,1556060520880,17,1556060515198,1),('+\ÏÀjÿ¹vX›¾µ9—¯=©’iŒ\ßvS/»} ƒ\ÒC@',26,'\0\0\0x\ç^¦\ä\äW¶\åþ‹4Um„U×¦Œ$\Ð\Ä}O³x\ç^¦\ä\äW¶\åþ‹4Um„U×¦Œ$\Ð\Ä}O³\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0g™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0!Vò\Ú\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'³O}\Ä\Ð$Œ¦\×U„mU4‹þ\å¶W\ä\ä¦^\çx','³O}\Ä\Ð$Œ¦\×U„mU4‹þ\å¶W\ä\ä¦^\çx','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,14,15,1,1556060529459,14,1556060520658,1),('.þ4`5G\ë€Ã§\ä®G¥	M›\ê\ì¶^²]&j\Ï_z™ôyp',22,'\0\0\0›\å[:¢s¤\æ+V3:b\äN}r\Å)ghŽ0:WSœzôL›\å[:¢s¤\æ+V3:b\äN}r\Å)ghŽ0:WSœzôL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0g\îT\Ð\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'LôzœSW:0Žhg)\År}N\äb:3V+\æ¤s¢:[\å›','LôzœSW:0Žhg)\År}N\äb:3V+\æ¤s¢:[\å›','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,18,19,1,1556060515037,18,1556060513337,1),('1w	Ý‡\â\ß\Zº/xþ”nš\Í\Z½\Ô\Ù- b‚ª+Ó£2\è\Ì',18,'\0\0\0»wÚ½ö®¥EDÀ\å\Ç&?q‡ñ‚óxÿ\0ó\r¡\Ç\ÐT»wÚ½ö®¥EDÀ\å\Ç&?q‡ñ‚óxÿ\0ó\r¡\Ç\ÐT*\"\æ¤\änv^A¶…Š·’ü\å\â³—£_x»\ê\re§\Ë-[™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0§úÎ¦\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ô\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -7,\n  \"toHeight\" : 18,\n  \"prevHash\" : {\n    \"bytes\" : \"agJU9gHuxXYlt8m0H7aBV+HNeK47J2n6lPt3yxchDVw=\",\n    \"reversedBytes\" : \"XA0hF8t3+5T6aSc7rnjN4VeBth+0ybcldsXuAfZUAmo=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'T\ÐÇ¡\ró\0ÿxó‚ñ‡q?&\Ç\åÀDE¥®ö½\Úw»','T\ÐÇ¡\ró\0ÿxó‚ñ‡q?&\Ç\åÀDE¥®ö½\Úw»','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,22,24,1,1556060510626,22,1556060509386,1),('2¼\æT\ãø7À\Þy\Ø\ÌžbW\ZU\æ=¯\â\Ê?',14,'\0\0\0q9¬öT[ð™0t÷oŠ&\Å\å£[=\æò\ßë°±\ç:\0|8q9¬öT[ð™0t÷oŠ&\Å\å£[=\æò\ßë°±\ç:\0|8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0û\ç\rƒ\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'8|\0:ç±°\ë\ßò\æ=[£\å\Å&Šo÷t0™ð[Tö¬9q','8|\0:ç±°\ë\ßò\æ=[£\å\Å&Šo÷t0™ð[Tö¬9q','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,26,28,1,1556060510322,26,1556060504923,1),('6\Ù\ïi\îQj°1t4µkˆ!w;¡–\ÛD\È]„øõ\ÔÿY',30,'\0\0\0£5¯ÍŽ	£+\Ë÷\Í\ËÁ}u¼¿¢§×Œ<Gˆ5,¾ImC£5¯ÍŽ	£+\Ë÷\Í\ËÁ}u¼¿¢§×Œ<Gˆ5,¾ImC\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0o™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0¬l\ï\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'CmI¾,5ˆG<Œ×§¢¿¼u}Á\Ë\Í÷\Ë+£	ŽÍ¯5£','CmI¾,5ˆG<Œ×§¢¿¼u}Á\Ë\Í÷\Ë+£	ŽÍ¯5£','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,10,11,1,1556060530069,10,1556060527797,1),('8|\0:ç±°\ë\ßò\æ=[£\å\Å&Šo÷t0™ð[Tö¬9q',13,'\0\0\0&¤§‹fDö´ôSL_/­P…!T+ ÷@³¶#·&¤§‹fDö´ôSL_/­P…!T+ ÷@³¶#·\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0V™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0©4L\Î\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'·#¶³@÷ +T!…P­/_LSô´öDf‹§¤&','·#¶³@÷ +T!…P­/_LSô´öDf‹§¤&','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,27,30,1,1556060504038,27,1556060502940,1),(':¥¢–667õ\\œ‰Ù¨\ÍM\n\ÆKÁ)V\Ú<\"œ\Ý\Û	',9,'\0\0\0&tW˜\Ð$\çö+­\Â_\Ã\á8_%‹Lõ>Á\ÇH§\ÊñO&tW˜\Ð$\çö+­\Â_\Ã\á8_%‹Lõ>Á\ÇH§\ÊñO\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0Î•}f\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'OñÊ§H\ÇÁ>õL‹%_8\á\Ã_\Â­+ö\ç$Ð˜Wt&','OñÊ§H\ÇÁ>õL‹%_8\á\Ã_\Â­+ö\ç$Ð˜Wt&','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,31,34,1,1556060503872,31,1556060499550,1),(';Y½ýƒmU¡\Æ\é÷Q‰hFT\ß\ß\\ó\ä5}(„\Æ',15,'\0\0\0?\Ê\â¯=\æU\ZWbž\Ì\Øy\ÞÀ7ø\ãT\æ¼2\é\ßÞ¿0Á1R\ÚL\Æ†bé£¬€ù%›O\å‰\ÐT.*^?(¯=«c\rh]\Ü\rNhÅ¼\Ü\"¥ó\ê½\Î\Õ\ÛÏºŠ\æZ™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0*uY\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!³ó\çKƒ\Ó¢!ý’9­ÁAn\Ï\ÕS§‡<oñU\àxv\Â,#!³ó\çKƒ\Ó¢!ý’9­ÁAn\Ï\ÕS§‡<oñU\àxv\Â,¬\0\0\0\0\0\0\0\0\0\0\0TOKENZ\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"äººæ°‘å¸\",\n    \"description\" : \"äººæ°‘å¸\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¼\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo\",\n    \"publickey\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"signature\" : \"304402203a84c06f57e8a08d9ccc085a2d482f86e149017af9d59a3c6620f7987bab755c0220012cbf610e2494f46b80161a0d83fe48b08fbd6e0faeb9c93d086f62a921cce0\"\n  } ]\n}',0,'2¼\æT\ãø7À\Þy\Ø\ÌžbW\ZU\æ=¯\â\Ê?','*.TÐ‰\åO›%ù€¬£\éb†\ÆL\ÚR1Á0¿\Þ\ß\é','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,3,100,25,27,1,1556060510434,25,1556060507411,1),(';”Qw/AKûü¯…Œ?©+åŠ”ü\â´‚\'€”r',40,'\0\0\0c\çóuº¼³\Ë‹tYõúµ®ÿ\Zg“§\Û\'vŠ&±fIc\çóuº¼³\Ë‹tYõúµ®ÿ\Zg“§\Û\'vŠ&±fI\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0}™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0\êP_\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'If±&Šv\'Û§“g\Zÿ®µúõYt‹Ë³¼ºuó\çc','If±&Šv\'Û§“g\Zÿ®µúõYt‹Ë³¼ºuó\çc','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,0,1,1,1556060548787,0,1556060542535,1),('=S\àœ2Q„\ÎtûbB±Ÿõ¾[»ø•½å†‘½=¿wÕº',7,'\0\0\0¡H\çÔ‘ÛŽ\ßCaS~v´Õ„\ßd\ì“Ø1\ìô¶\Z–$¡H\çÔ‘ÛŽ\ßCaS~v´Õ„\ßd\ì“Ø1\ìô¶\Z–$SS¬Š£Èª&JµŽ¨ž¤91*…+8ç»¸õ‚d7P™¿\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0!’uW\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!‹\Û±Yú)\ìQ\ÔÆ±´ü;\ëc1\Õ^ƒ		M\ß\çg¶#!‹\Û±Yú)\ìQ\ÔÆ±´ü;\ëc1\Õ^ƒ		M\ß\çg¶¬\0\0\0\0\0\0\0\0\0\0\0TOKENP\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"Gold\",\n    \"description\" : \"Gold\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap\",\n    \"publickey\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"signature\" : \"3045022100cf47ce23033aa2071f495f4c22a5e963aac8f79bc344535f29f882428c1d933302204860b2fbc261d0d7bb1f89523741239a04c6807f52bdeb9e810bd910d9ce3961\"\n  } ]\n}',0,'$–\Z¶ô\ì1Ø“\ìd\ß„Õ´v~SaCßŽÛ‘\Ô\çH¡','$–\Z¶ô\ì1Ø“\ìd\ß„Õ´v~SaCßŽÛ‘\Ô\çH¡','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,3,100,33,36,1,1556060503813,33,1556060499315,1),('CmI¾,5ˆG<Œ×§¢¿¼u}Á\Ë\Í÷\Ë+£	ŽÍ¯5£',29,'\0\0\0?³\ä·\Öô°a\Û&õ¸e\ÔDY1\Öø×™wá¬°9þ\Z9*?³\ä·\Öô°a\Û&õ¸e\ÔDY1\Öø×™wá¬°9þ\Z9*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0m™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0H\0\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'*9\Zþ9°¬\áw™\×ø\Ö1YD\Ôe¸õ&\Ûa°ôÖ·\ä³?','*9\Zþ9°¬\áw™\×ø\Ö1YD\Ôe¸õ&\Ûa°ôÖ·\ä³?','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,11,12,1,1556060529744,11,1556060525973,1),('If±&Šv\'Û§“g\Zÿ®µúõYt‹Ë³¼ºuó\çc',39,'\0\0\0·O—ND;\Û\í6;%¹ŠK¥\ÆC:¯v‚!•#o‹\ÝDR·O—ND;\Û\í6;%¹ŠK¥\ÆC:¯v‚!•#o‹\ÝDR\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0{™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0¹\ËdG\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'RDÝ‹o#•!‚v¯:CÆ¥KŠ¹%;6\í\Û;DN—O·','RDÝ‹o#•!‚v¯:CÆ¥KŠ¹%;6\í\Û;DN—O·','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,1,2,1,1556060548728,1,1556060540699,1),('J“\×\âH\Åy\èI=‘Ò§\Ä¯m=o®R%\Ýé«',24,'\0\0\0-\\¥B2	\ÝZ…\ì3c„}-\Ü\íE__AÈ´!²\Î+-\\¥B2	\ÝZ…\ì3c„}-\Ü\íE__AÈ´!²\Î+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0\ÚûU\ê\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'+\Î²!´\ÈA__E\í\Ü-}„c3\ì…Z\Ý	2B¥\\-','+\Î²!´\ÈA__E\í\Ü-}„c3\ì…Z\Ý	2B¥\\-','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,16,17,1,1556060520880,16,1556060517050,1),('J\Þ\rx*‡d\é\ßAÏºQzkˆWÄ·žG\Ö^IB*$\Æö',20,'\0\0\0\r\èŸ\ë\äþ\ê¾Ö®´‘\ÞJY ¶Î²¤>­°jœÿŽ]\Å\ÔP›\Þ\ì\Ú Ì¹z•óºY\Þ@G„UGÑ©²Ž\Z2¯K¨\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0šo\Ñ\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,']Žÿœj°­>¤²Î¶ YJÞ‘´®Ö¾\êþ\ä\ëŸ\è\r','¨K¯2\ZŽ²©\ÑGU„G@\ÞYºó•z¹Ì \Ú\ìÞ›P\Ô\Å','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,20,21,1,1556060514970,20,1556060511331,1),('R3LÖ„\éc\àÌ§\Î+­4OF6vûd?Ð»!\ÖF?',32,'\0\0\0/s\Ù\'þÁu\Â\åp¢\Ç\Æ0‡­¾k4!MD\Ó\Ë\Ã/s\Ù\'þÁu\Â\åp¢\Ç\Æ0‡­¾k4!MD\Ó\Ë\Ã\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0r™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0®J¹\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'\Ã\Ë\ÓDM!4k¾­‡0\ÆÇ¢p\å\ÂuÁþ\'\Ùs/','\Ã\Ë\ÓDM!4k¾­‡0\ÆÇ¢p\å\ÂuÁþ\'\Ùs/','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,8,9,1,1556060540484,8,1556060531377,1),('RDÝ‹o#•!‚v¯:CÆ¥KŠ¹%;6\í\Û;DN—O·',38,'\0\0\0ý\Î#/ŠQºRVyPyR1\É\áo{\'ø´*\é:¶G\å%ý\Î#/ŠQºRVyPyR1\É\áo{\'ø´*\é:¶G\å%Íš³g\Î\Z5¥–C\çÉ‘¹ñ\îó\ëað\Ü\íI¼mbyy™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\04ú­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ô\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 11,\n  \"toHeight\" : 38,\n  \"prevHash\" : {\n    \"bytes\" : \"MXcJ3Yfi3xq6L3j+lG6azRq91NktEiBigqor06My6Mw=\",\n    \"reversedBytes\" : \"zOgyo9MrqoJiIBIt2dS9Gs2abpT+eC+6Gt/ih90JdzE=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'%\åG¶:\é*´ø\'{o\á\É1RyPyVRºQŠ/#\Îý','%\åG¶:\é*´ø\'{o\á\É1RyPyVRºQŠ/#\Îý','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,2,3,1,1556060548610,2,1556060539717,1),('`\çL\Ó\Ú$<\Ï$VŠC.\Ë\Ù\Ò\â\íqSµ\ä£ÀÆ½µJk',35,'\0\0\0?Š‘‰{û3K\à^JýRBGšQ™\ß-Ó¾\Ïë„°?Š‘‰{û3K\à^JýRBGšQ™\ß-Ó¾\Ïë„°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0\\C\ç\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'°„\ëÏ¾\Ó-ß™QšGBRýJ^\àK3û{‰‘Š?','°„\ëÏ¾\Ó-ß™QšGBRýJ^\àK3û{‰‘Š?','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,5,6,1,1556060540597,5,1556060536733,1),('jTö\î\Åv%·É´¶W\á\Íx®;\'iú”ûw\Ë!\r\\',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ô\Î,G†À¤ŸÿË“\ßl˜¿?ûyÎ´\ïl²\ëeEHm#^[\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0\0€Æ¤~\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\Ù\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,40,43,1,1556060269713,40,1556060269530,1),('lkù†sá†¹r\Ã#†„u”Û‘ÂŸñ\ÐÿU8óc',16,'\0\0\0\Æ„(}5\äó\\\ß\ßTFh‰Q÷\éÆ¡Umƒý½Y;\Æ„(}5\äó\\\ß\ßTFh‰Q÷\éÆ¡Umƒý½Y; ) /þ\Ô\Öx‡o¢”TBC¸/\ÌKKñ\Ó\ë£ÀJÿsDZ™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0ˆU\Ã\Ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ù\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 1,\n  \"toHeight\" : 13,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"agJU9gHuxXYlt8m0H7aBV+HNeK47J2n6lPt3yxchDVw=\",\n    \"reversedBytes\" : \"XA0hF8t3+5T6aSc7rnjN4VeBth+0ybcldsXuAfZUAmo=\"\n  }\n}\0\0\0\0\0\0\0\0',0,';Y½ýƒmU¡\Æ\é÷Q‰hFT\ß\ß\\ó\ä5}(„\Æ',';Y½ýƒmU¡\Æ\é÷Q‰hFT\ß\ß\\ó\ä5}(„\Æ','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,24,26,1,1556060510434,24,1556060507727,1),('v/	‡^\ÕD\å=\èÒ<\Ì\ÇLAó\Ä\Ã\"`w¼-c\n',33,'\0\0\0?F\Ö!»\Ð?dûv6FO4­+Î§\Ì\àc\é„\ÖL3R?F\Ö!»\Ð?dûv6FO4­+Î§\Ì\àc\é„\ÖL3R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0t™¿\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0l†\Ü\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô\0\0\0\0',0,'R3LÖ„\éc\àÌ§\Î+­4OF6vûd?Ð»!\ÖF?','R3LÖ„\éc\àÌ§\Î+­4OF6vûd?Ð»!\ÖF?','\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«\Ô',NULL,1,100,7,8,1,1556060540484,7,1556060533114,1);
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
INSERT INTO `multisignaddress` VALUES ('0b12b723b68f19b30640f720072b54218550ad2f5f4c53f4b4f644668ba7a426','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176','','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',0),('114cf47a9c53573a308e686729c5727d4ee481623a33562be6a473a23a5be59b','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c','','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',0),('185d8eff9c6ab0ad3e0ea4b2ceb6a0594ade91b4aed6be1feafee4eb059fe80d','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586','','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',0),('22a343a94a46c4f28a9833e1999366bae2be2a87bda99bf7fce20ed6262146c7','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0','','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',0),('2a8d2e54d089e54f9b8d25f9801214aca3e9628617c64cda5231c130bfdedfe9','02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618','','02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618',0),('3b59bdfd836d0655a1c60fe9f75189684654dfdf5cf3e40e357d0e28841f18c6','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c','','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',0),('3d53e09c325184ce74fb6242b19ff5be5bbbf81395bde58691bd1e3dbf77d5ba','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6','','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',0);
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
INSERT INTO `ordermatching` VALUES ('1w	Ý‡\â\ß\Zº/xþ”nš\Í\Z½\Ô\Ù- b‚ª+Ó£2\è\Ì',18,1,1,'RDÝ‹o#•!‚v¯:CÆ¥KŠ¹%;6\í\Û;DN—O·',2,'jTö\î\Åv%·É´¶W\á\Íx®;\'iú”ûw\Ë!\r\\'),('RDÝ‹o#•!‚v¯:CÆ¥KŠ¹%;6\í\Û;DN—O·',38,1,0,NULL,2,'1w	Ý‡\â\ß\Zº/xþ”nš\Í\Z½\Ô\Ù- b‚ª+Ó£2\è\Ì'),('jTö\î\Åv%·É´¶W\á\Íx®;\'iú”ûw\Ë!\r\\',0,1,1,'1w	Ý‡\â\ß\Zº/xþ”nš\Í\Z½\Ô\Ù- b‚ª+Ó£2\è\Ì',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
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
  `memo` varchar(80) DEFAULT NULL,
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
INSERT INTO `outputs` VALUES ('K¡\Íðp¡Ð†…\ÉL•gP#¶VÐ„Bð\ë‡[\î:]\"4e',0,678900000,'!S\Õ\ßB\ÅÇŽ\Ì\ç˜zN)u“\Õ·1ñxXqF!Re†¬','1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT',2,1,']Žÿœj°­>¤²Î¶ YJÞ‘´®Ö¾\êþ\ä\ëŸ\è\r','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',NULL,NULL,0,1,0,NULL,1556060509),('7d‚õ¸»\ç8+…*19¤ž¨ŽµJ&ªÈ£Š¬SS',0,678900000,'!‹\Û±Yú)\ìQ\ÔÆ±´ü;\ëc1\Õ^ƒ		M\ß\çg¶¬','1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap',2,1,'=S\àœ2Q„\ÎtûbB±Ÿõ¾[»ø•½å†‘½=¿wÕº','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',NULL,NULL,0,1,0,NULL,1556060499),('\Z¹¾U2RM\ê}1\ï¬†©®\Ë\Ô\ÛSN\ãúð!',0,130,'v©\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«Ôˆ¬','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'lkù†sá†¹r\Ã#†„u”Û‘ÂŸñ\ÐÿU8óc','bc',NULL,NULL,0,1,0,NULL,1556060510),('Bk#yt\Ä\íZ\×Öœ\ÅÄ±±˜ì–±£$-|;\ÛGƒX',0,678900000,'!€<W².5þ:6!³ò\Âd¶(ó)/Ó¼Š\ç–Ã¶¬','1EvM6MUnShSCCY5RgxaC1NgkP7hmabyMo8',2,1,'*.TÐ‰\åO›%ù€¬£\éb†\ÆL\ÚR1Á0¿\Þ\ß\é','02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618',NULL,NULL,0,1,0,NULL,1556060504),('HEe\ë²l\ï´\Îyû?¿˜lß“\ËÿŸ¤À†G,\Î\Ô',0,1000000000000000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'jTö\î\Åv%·É´¶W\á\Íx®;\'iú”ûw\Ë!\r\\','bc',NULL,NULL,1,1,1,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í',0),('¿	÷l0ú€[¦\Ýñ®\Ï4ôü%JV¢>…QGY–±3',0,4,'v©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ¬','1111111111111111111114oLvT2',1,1,'ù³o²¸\äžðb‰?´\ïr/2\É„N\ÆQ\Â\ÝrÁ\ê','bc',NULL,NULL,0,1,0,NULL,1556060540),('¿	÷l0ú€[¦\Ýñ®\Ï4ôü%JV¢>…QGY–±3',1,40,'v©\å\ë\Ìç¨’\n\Èo\Ñ\ÞL¡I¦\\«Ôˆ¬','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'ù³o²¸\äžðb‰?´\ïr/2\É„N\ÆQ\Â\ÝrÁ\ê','bc',NULL,NULL,0,1,0,NULL,1556060540),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',0,3500000,'v©]¹n¨\ëLJþ\Õ%¯Å©¿€Áä®ˆ¬','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',1,25000000,'v©õœ\ØrY›	¥&…\È`‘\ÜMˆ¬','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',2,500000000,'v©i\ï\æÆ‘hÕ³k%\ÒC£š}¿ ‹ˆ¬','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',3,800000000,'v©\ÏË”!ÁV%ðC.\"D\Î¥<Nõ ˆ¬','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',4,10000000,'v©“jß‡ˆ‰¤…“Ž=<I(\Ý˜ˆ¬','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',5,50000000,'v©ùŠ\ê4”%n\Ý\âv\â6¾0©I^ôˆ¬','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',6,2000,'v©…\ÉN\Þ\ÝØ³B(¿vý¤§s”Mˆ¬','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',7,100000000,'v©±¸q‚$²5½\\›Gfé¢ˆ¬','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',8,6000000000,'v©˜B–^õþ42´;y•Ê¯Å½eÙ¤ˆ¬','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',9,10000000000,'v©$^i\ä\ï\ÎsÙ¯&?0€$Ü“†f\Þ6ˆ¬','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',10,5500000,'v©\è‘SŒcDŸ\á¬tþ¡\ë;\é\Ö/[ýˆ¬','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',11,250000000,'v©\Ð9 ´MjÆ€Ÿ½{‹q\ë\ÇAkx©ˆ¬','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',12,1000000000,'v©Õ™yû\Ä]ñ)ñù\åš\Úo,ˆ¬','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',13,500500000,'v©Pžy\åP‡\ç\ë>\ìLŒ\í<,2²`ˆ¬','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',1,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('›\ÆL¸\ê\Ï\Ç;Ÿj¶/¦”Vµ~\Â\\ Âƒ&qL¬\Ùt',14,999980755498000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'C»Á:¨]už—§ójÊŽImk £CN\ß\Çq‹œ\í','bc',NULL,NULL,0,1,0,NULL,1556060415),('¡%jVd \ßý\Ì\áõ\à¾f»\Õ4h\rl\Ôg\Ýu^c0û',0,678900000,'!\ëˆ\É9ZxD@¦ò9žXiúVIW«»n\è\ÞTî°\É\Õ\à¬','14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws',2,1,'\"£C©JF\ÄòŠ˜3á™“fº\â¾*‡½©›÷ü\â\Ö&!F\Ç','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',NULL,NULL,0,1,0,NULL,1556060499),('Ù„û\Î\Ò>…lvFDy79ñˆ¯@Ÿ\îJ\Üa3(',0,678900000,'!~\Êk-\ÉÕ•Røoƒ”&ör­û³\è8À\r\ï\Ä\äýœQ\áv¬','1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8',2,1,'·#¶³@÷ +T!…P­/_LSô´öDf‹§¤&','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',NULL,NULL,0,1,0,NULL,1556060502),('\ß5B\îr®ýra\"û<Vd‰Œ|\Ã%	\È9\ZI',0,678900000,'!V\Ðw¶—…U \æd¨\Ù€[~Œ]\Þ\ÃÕ¯2\ä0MµšC<¬','1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP',2,1,'LôzœSW:0Žhg)\År}N\äb:3V+\æ¤s¢:[\å›','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',NULL,NULL,0,1,0,NULL,1556060512),('æŠº\Ï\Û\ÕÎ½\êó¥\"Ü¼\ÅhN\r\Ü]h\rc«=¯(?^',0,678900000,'!³ó\çKƒ\Ó¢!ý’9­ÁAn\Ï\ÕS§‡<oñU\àxv\Â,¬','1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo',2,1,';Y½ýƒmU¡\Æ\é÷Q‰hFT\ß\ß\\ó\ä5}(„\Æ','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',NULL,NULL,0,1,0,NULL,1556060507);
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
INSERT INTO `tips` VALUES (';”Qw/AKûü¯…Œ?©+åŠ”ü\â´‚\'€”r');
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
  `url` varchar(100) DEFAULT NULL,
  `signnumber` bigint(20) NOT NULL,
  `tokentype` int(11) DEFAULT NULL,
  `tokenstop` tinyint(1) DEFAULT NULL,
  `prevblockhash` varchar(255) NOT NULL,
  `spent` tinyint(1) NOT NULL,
  `spenderblockhash` varbinary(32) DEFAULT NULL,
  `tokenkeyvalues` mediumblob,
  `parenttokenid` varchar(255) DEFAULT NULL,
  `language` char(2) DEFAULT NULL,
  `classification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`blockhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES ('0b12b723b68f19b30640f720072b54218550ad2f5f4c53f4b4f644668ba7a426',1,'027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',0,678900000,'ETH','ETH',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('114cf47a9c53573a308e686729c5727d4ee481623a33562be6a473a23a5be59b',1,'0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',0,678900000,'EUR','EUR',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('185d8eff9c6ab0ad3e0ea4b2ceb6a0594ade91b4aed6be1feafee4eb059fe80d',1,'0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',0,678900000,'USD','USD',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('22a343a94a46c4f28a9833e1999366bae2be2a87bda99bf7fce20ed6262146c7',1,'03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',0,678900000,'BTC','BTC',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('2a8d2e54d089e54f9b8d25f9801214aca3e9628617c64cda5231c130bfdedfe9',1,'02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618',0,678900000,'CNY','CNY',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('3b59bdfd836d0655a1c60fe9f75189684654dfdf5cf3e40e357d0e28841f18c6',1,'02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',0,678900000,'äººæ°‘å¸','äººæ°‘å¸',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('3d53e09c325184ce74fb6242b19ff5be5bbbf81395bde58691bd1e3dbf77d5ba',1,'028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',0,678900000,'Gold','Gold',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('6a0254f601eec57625b7c9b41fb68157e1cd78ae3b2769fa94fb77cb17210d5c',1,'bc',0,0,'bc','BigTangle currency',NULL,1,0,1,'',0,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `txreward` VALUES ('ù³o²¸\äžðb‰?´\ïr/2\É„N\ÆQ\Â\ÝrÁ\ê',33,1,0,NULL,2,'lkù†sá†¹r\Ã#†„u”Û‘ÂŸñ\ÐÿU8óc',8),('jTö\î\Åv%·É´¶W\á\Íx®;\'iú”ûw\Ë!\r\\',0,1,1,'lkù†sá†¹r\Ã#†„u”Û‘ÂŸñ\ÐÿU8óc',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',10),('lkù†sá†¹r\Ã#†„u”Û‘ÂŸñ\ÐÿU8óc',13,1,1,'ù³o²¸\äžðb‰?´\ïr/2\É„N\ÆQ\Â\ÝrÁ\ê',2,'jTö\î\Åv%·É´¶W\á\Íx®;\'iú”ûw\Ë!\r\\',2);
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

-- Dump completed on 2019-04-24  2:10:02
