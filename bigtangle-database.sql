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
INSERT INTO `blocks` VALUES ('\0ÿT\Î\Û*\à¤8Š/—}ÿšGª:\ímÓKÂ\Â',18,'\0\0\0{¹\Æ|°Œ]a\âñ\0C†^¨\n\îø{œõ_œ-o™Ge‘~{¹\Æ|°Œ]a\âñ\0C†^¨\n\îø{œõ_œ-o™Ge‘~&œK|\í¶\ÚÆš\Ì\ã\ëÖ™u\ØwG*™ôˆ³¤ƒ7U“\ï\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0\ï\àÒ®\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ó\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 2,\n  \"toHeight\" : 18,\n  \"prevHash\" : {\n    \"bytes\" : \"BXop71tu/M+wuzRygS7NfajWYOpNKBzR0cKkZdY1pxk=\",\n    \"reversedBytes\" : \"Gac11mWkwtHRHChN6mDWqH3NLoFyNLuwz/xuW+8pegU=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'~‘eG™o-œ_õœ{ø\î\n¨^†C\0ñ\âa]Œ°|\Æ¹{','~‘eG™o-œ_õœ{ø\î\n¨^†C\0ñ\âa]Œ°|\Æ¹{','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,1,2,1,1559173403086,1,1559173399728,1),('z)\ï[nüÏ°»4r.\Í}¨\Ö`\êM(\Ñ\ÑÂ¤e\Ö5§',9,'\0\0\0> Aº\İX$yy1‹\â,Šó\î>\Û\íF¢^ÿ°¯šrc…/> Aº\İX$yy1‹\â,Šó\î>\Û\íF¢^ÿ°¯šrc…/VOß‚\ëzz¾\ëœÀ¿\íòe‰¬T\ÜCt°±²¦?R\Ô@ñB¸\\\î\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\Êø9C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ó\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -7,\n  \"toHeight\" : 9,\n  \"prevHash\" : {\n    \"bytes\" : \"PinWXquw8G1FKGlXSZDCXKl2QseeGwZHrixrHDdiyhc=\",\n    \"reversedBytes\" : \"F8piNxxrLK5HBhuex0J2qVzCkElXaShFbfCwq17WKT4=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'/…crš¯°ÿ^¢F\í\Û>\îóŠ,\â‹1yy$XİºA >','/…crš¯°ÿ^¢F\í\Û>\îóŠ,\â‹1yy$XİºA >','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,10,12,1,1559162464422,10,1559162460821,1),('/…crš¯°ÿ^¢F\í\Û>\îóŠ,\â‹1yy$XİºA >',8,'\0\0\0\Ş\Ö7pT\ê+S\Õ\ÙÙ¼\ä=”/¥t©n\Ü>\ê\n\Ş\Ö7pT\ê+S\Õ\ÙÙ¼\ä=”/¥t©n\Ü>\ê\nª¤†`v\ï#:L!ck”ûQ\"\æy´&\\º;ı¼ü\r\É\ä@U\î\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0Ku2²\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0¹\Ôt	9§%²˜\ÅRX÷8\0H$Suc¼¦\nq½¹z\0\0\0IH0E!\0 ~\rpy‹”K÷k\Æ\Z\Øyv0\ZºDı‘\ÍTgnIN w\ä\Ó\ç \ç\È\ÅË|9hÚ²\æp¨)\r¼¸û\ÑX+}ÀWÿÿÿÿ\0\0\0 “V8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬À\0\0\0\0¼v©\ËK>XÿbJ\Ïı ‚\í\\\Å\çv\Ó\\ğˆ¬\à„@6u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'\n\ê>\Ün©t¥/”=\ä¼\Ù\Ù\ÕS+\êTp7\Ö\Ş','\n\ê>\Ün©t¥/”=\ä¼\Ù\Ù\ÕS+\êTp7\Ö\Ş','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,11,13,1,1559162455391,11,1559162453974,1),('^l#¥ù\0ù\è\n\í\ëy¹\ÇPy\Î\ç|–|\rƒ¥\îUMf[\r',12,'\0\0\0\ë:Dû¿\Ü\×v\'óVúù\ÚñˆËªŸ«:W€mM\å\ÄT\ë:Dû¿\Ü\×v\'óVúù\ÚñˆËªŸ«:W€mM\å\ÄT\ã\Â\ÜÁ³göÚ•Gô™VN.Ë¦\àá“Šœşˆ¾\ÏK·ó\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0d€¶\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!\0]d%*i¤sı\É^‘<º›\éz!¼a“P¿o\é%h#!\0]d%*i¤sı\É^‘<º›\éz!¼a“P¿o\é%h¬\0\0\0\0\0\0\0\0\0\0\0TOKENg\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"mETH\",\n    \"description\" : \"mETH\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¼\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"address\" : \"17gt5R6JU3geTrJqauEWZZ1hqozH5HAppG\",\n    \"publickey\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"signature\" : \"30440220575b5b777b2cea88ebcfb10a9fe51e68d508e18c9d9423d754450f3e61a7cd4202204ee80d640cf1f0c3b6d6ac965c1a5f9dee4b693f15afdc8d0885b6a4d4f50175\"\n  } ]\n}',0,'T\Ä\åMm€W:«ŸªËˆñ\ÚùúVó\'v\×Ü¿ûD:\ë','T\Ä\åMm€W:«ŸªËˆñ\ÚùúVó\'v\×Ü¿ûD:\ë','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,7,9,1,1559163655801,7,1559163654710,1),('\n\ê>\Ün©t¥/”=\ä¼\Ù\Ù\ÕS+\êTp7\Ö\Ş',7,'\0\0\0‘¿Cc¥q\ÚA\ZI\ëJl.ƒô¬M›\î+\ÌZ›A5‘¿Cc¥q\ÚA\ZI\ëJl.ƒô¬M›\î+\ÌZ›A5¹\Ôt	9§%²˜\ÅRX÷8\0H$Suc¼¦\nq½¹z\Å\ë\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0œ\ä<\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0UaóbY?ºÀœw\å\ï&c\àƒ\Â_\ã ğ\nP=\ãB/\0\0\0HG0D 9@4\ŞZ\Ë(“UiŸ—oi-72›§\09\Ş4² iŠó«y\á\än{\Ì4\ÉbYQ	F\Äp †aÿÿÿÿ\0\0\0\0Ba8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬`®\n\0\0\0\0\0¼v©¢w¡‹rœ·ş\ÛBiö‰V›*ˆ¬ “V8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'5A›ZÌ+\î›M¬ôƒ.lJ\ëI\ZA\Úq¥cC¿‘','5A›ZÌ+\î›M¬ôƒ.lJ\ëI\ZA\Úq¥cC¿‘','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,12,14,1,1559161798306,12,1559161797244,1),('\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø',2,'\0\0\0	\İ{\ß_¡{H¬\Ù<™\ÙÊœb‘½\à‰j\\?e\"(	\İ{\ß_¡{H¬\Ù<™\ÙÊœb‘½\à‰j\\?e\"( h6ùğÿ@‹b“ı±Ç‚\0‡§—¿\áŒ2tP\Ñ(Vñ§„\Ù\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0Ã°\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0~;¼fŠı\Í\ìg¡oc²	\'ş\"phÌƒõ8œ¡\Z\ã\0\0\0HG0D H7Dd{\ß!µO\ïc³»4\àXLAwC[¢f¡\'¸\èd G13\Õxm)÷\ÑI\ã6^E¾ñ\ã\\e§¸4sQ§ÿÿÿÿ\0\0\0:°¢~\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬# ½ \0\0\0\0¼v©\ä˜\Ùy¼meş¼Š³&ç•¾Lˆ¬0W\0\0\0\0\0¼v©]¹n¨\ëLJş\Õ%¯Å©¿€Áä®ˆ¬\àš\ç\0\0\0\0¼v©j”·9\Ú.G‰—oEQq3€Åˆ¬\0e\Í\0\0\0\0¼v©i\ï\æÆ‘hÕ³k%\ÒC£š}¿ ‹ˆ¬À\0\0\0\0¼v©Æ³\\!µú…f‰V‡\Ğü:½\íóRˆ¬€²\æ\0\0\0\0¼v©)•t2x>4\ßl)	»6\İN\İR:ˆ¬ğe\0\0\0\0¼v©\éRe\r‘½£XÁ\\‘Ñ\ã B÷\ê5îˆ¬À\0\0\0\0¼v©TimskDGff™÷”’¥\î\ìXHfˆ¬^\0\0\0\0¼v©9\ß(C5%À\Ûó£-‹özşˆ¬\0wB\0\0\0¼v©\ëJ›‡]ô\ï‡*>ƒ\Úd$«FiAˆ¬\0¯/\0\0\0\0¼v©\ÏË”!ÁV%ğC.\"D\Î¥<Nõ ˆ¬€ğú\0\0\0\0¼v©ùŠ\ê4”%n\İ\âv\â6¾0©I^ôˆ¬\Ğ\0\0\0\0\0\0¼v©…\ÉN\Ş\İØ³B(¿vı¤§s”Mˆ¬\0\äT\0\0\0¼v©$^i\ä\ï\ÎsÙ¯&?0€$Ü“†f\Ş6ˆ¬À\0\0\0\0¼v©‡g+2EU\Ç]Fx\ÍÏ¸ÿ>œDœˆ¬€ğú\0\0\0\0¼v©\ç¾ET\å6WÁ\Ê{ni]øÙˆ¬ \Õ\0\0\0\0¼v©4V•‚\\¶ğ#ÿ‘Š\Ü\Å\Ëˆ¬\0e\Í\0\0\0\0¼v©‚„n\ÄÍªQµ\ç•\Â <¼õŠ@‚–—ˆ¬\0Ã\Ğ\0\0\0\0¼v©|b‰yÆ¹1\Ô?^?<\ÜYP–°¤gˆ¬·\0\0\0\0¼v©‡Š\á#&ºiXÇsôy\ß>£ˆ¬\0\'¹)\0\0\0\0¼v©Œú||m\Ş\î\ì\äY°!\Æ&/\rg¹ˆ¬@x}\0\0\0\0¼v©õœ\ØrY›	¥&…\È`‘\ÜMˆ¬€–˜\0\0\0\0\0¼v©“jß‡ˆ‰¤…“=<I(\İ˜ˆ¬€“\Ü\0\0\0\0¼v©F\Óğn¢¤&¡$ş„ =¬ˆ¬\0\áõ\0\0\0\0¼v©±¸q‚$²5½\\›Gfé¢ˆ¬\0¼ e\0\0\0¼v©˜B–^õş42´;y•Ê¯Å½eÙ¤ˆ¬¬\r\0\0\0\0\0\0¼v©G\ßAx\Ü\çQ’a&>°S« jğ’tÄˆ¬€“\Ü\0\0\0\0¼v©)K|¾\ÙóÏ™ƒ\ÓtÕ¡3s‰„UÀˆ¬`\ìS\0\0\0\0\0¼v©\è‘SŒcDŸ\á¬tş¡\ë;\é\Ö/[ıˆ¬€“\Ü\0\0\0\0¼v©#½l€ršfö¡I“Ø£L‚Aˆ¬€²\æ\0\0\0\0¼v©\Ğ9 ´MjÆ€Ÿ½{‹q\ë\ÇAkx©ˆ¬\0Êš;\0\0\0\0¼v©Õ™yû\Ä]ñ)ñù\åš\Úo,ˆ¬€ğú\0\0\0\0¼v©ø\ÎÏŠ\Ùø\î®yŸqõ\İóóQÑˆ¬ \Õ\0\0\0\0¼v©Py\åP‡\ç\ë>\ìLŒ\í<,2²`ˆ¬4\Âf8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'(\"e?\\j‰\à½‘bœ\ÊÙ™<Ù¬H{¡_\ß{\İ	','(\"e?\\j‰\à½‘bœ\ÊÙ™<Ù¬H{¡_\ß{\İ	','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,17,19,1,1559157151411,17,1559157150481,1),('i™oTQ%Ã¸Ô¦\Ö!I¼™Fe\äP†¹\Êm0n¡Ç’',13,'\0\0\0\r[fMUî¥ƒ\r|–|\ç\ÎyPÇ¹y\ë\í\n\èù\0ù¥#l^\r[fMUî¥ƒ\r|–|\ç\ÎyPÇ¹y\ë\í\n\èù\0ù¥#l^\Z\Çû\Ñ^Ze>b\'$me\â\\uÃ›§\Z\'\íC‚\ã¢Vš@X‚ó\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0h…\Ö\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!¬ö`¾\æL\ä‰\Ø\0?¼{m)%\ílG¦¢	\Ì|r@@]{=#!¬ö`¾\æL\ä‰\Ø\0?¼{m)%\ílG¦¢	\Ì|r@@]{=¬\0\0\0\0\0\0\0\0\0\0\0TOKENw\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"äººæ°‘å¸åˆ†\",\n    \"description\" : \"äººæ°‘å¸åˆ†\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¼\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1GtzL9G51YTnquirBBptpgKkwzRGp3Nicg\",\n    \"publickey\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"signature\" : \"304402202132c5b9ca72b57119ed7ee5bee00737ea3d1b4a8007973c08bb5e2a5b3325bc0220136a0817cf5b2db5f2e521e36cacb34aa5f94f816b5fd1e9fdd1482f0da7726f\"\n  } ]\n}',0,'^l#¥ù\0ù\è\n\í\ëy¹\ÇPy\Î\ç|–|\rƒ¥\îUMf[\r','^l#¥ù\0ù\è\n\í\ëy¹\ÇPy\Î\ç|–|\rƒ¥\îUMf[\r','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,6,8,1,1559163658694,6,1559163656770,1),('ùU\Æz§)\ÌR C¿ˆS2ƒ~\"\Æ\É\Û$9¿ÿ)\'\Ë¢£',14,'\0\0\0’Ç¡n0mÊ¹†P\äeF™¼I!Ö¦Ô¸\Ã%QTo™i’Ç¡n0mÊ¹†P\äeF™¼I!Ö¦Ô¸\Ã%QTo™iÁY\ØO%ÁSlZ\Øe¸F:¢ÁJ\ÒW6û\0\ŞPó\ànt\nó\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0•lI\'\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!\ŞÁ\ÌJY…<\êÑ¬¤e\Í\ëö7e\Æ~d\ç\Ì*­\ÑPl¼#!\ŞÁ\ÌJY…<\êÑ¬¤e\Í\ëö7e\Æ~d\ç\Ì*­\ÑPl¼¬\0\0\0\0\0\0\0\0\0\0\0TOKENo\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"USD-CENT\",\n    \"description\" : \"USD-CENT\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"address\" : \"12jEy3c58dGMtB3sotY99WXXC3hfuqozNV\",\n    \"publickey\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"signature\" : \"3045022100ca9291f825b6119524f044680450e9f4272912ed28cb002b7455e63b8833e6cc022021172944bf1f021fee0328253aaf7acc7608dbdfbf34f0347fae566bf3cb3731\"\n  } ]\n}',0,'i™oTQ%Ã¸Ô¦\Ö!I¼™Fe\äP†¹\Êm0n¡Ç’','i™oTQ%Ã¸Ô¦\Ö!I¼™Fe\äP†¹\Êm0n¡Ç’','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,5,7,1,1559163662833,5,1559163659045,1),('T\Ä\åMm€W:«ŸªËˆñ\ÚùúVó\'v\×Ü¿ûD:\ë',11,'\0\0\0S‚²¸/ˆ!#\Ù[es”…A“şB‡­wŠxólu\è S‚²¸/ˆ!#\Ù[es”…A“şB‡­wŠxólu\è vx›Å\æÓ€m±\ï	j»–g\í97#N®\Ú1\Ö\Ö\æµó\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\Å\Ù5­\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!O¥\Ît5§Ø­\î\æ\Î4´¢¶Ø‘‡›·\ÒSå«·,¢=^n#!O¥\Ît5§Ø­\î\æ\Î4´¢¶Ø‘‡›·\ÒSå«·,¢=^n¬\0\0\0\0\0\0\0\0\0\0\0TOKENg\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"mBTC\",\n    \"description\" : \"mBTC\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1MW35ZNpYDANihQjDZC7fmzj2rADW4ZyrP\",\n    \"publickey\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"signature\" : \"3045022100c3dca17f0d979035d61ec78a2041c1a49bcd787024abe43dd049be63aec37f0a022012099f24d8c5cd401f42651911f2eeb8bb4c4b3e8c96fc0979183dadf94e1c91\"\n  } ]\n}',0,' \èulóxŠw­‡Bş“A…”se[\Ù#!ˆ/¸²‚S',' \èulóxŠw­‡Bş“A…”se[\Ù#!ˆ/¸²‚S','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,8,10,1,1559163655802,8,1559163652415,1),(' \èulóxŠw­‡Bş“A…”se[\Ù#!ˆ/¸²‚S',10,'\0\0\0§5\Öe¤\Â\Ñ\Ñ(M\ê`Ö¨}\Í.r4»°\Ïün[\ï)z§5\Öe¤\Â\Ñ\Ñ(M\ê`Ö¨}\Í.r4»°\Ïün[\ï)zI¥X˜C5ªdû{¥vÔ¦\Ú5\İR}¸ş±„·‰\è\Ë\Ö\Â\Òó\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0˜‡\r\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!\ë\ÄXº„nÇ›2\ç¢0û\éÖ‡\rü…$”Ã¶Ïœ–£\ÕHY#!\ë\ÄXº„nÇ›2\ç¢0û\éÖ‡\rü…$”Ã¶Ïœ–£\ÕHY¬\0\0\0\0\0\0\0\0\0\0\0TOKENi\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"mGold\",\n    \"description\" : \"mGold\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB\",\n    \"publickey\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"signature\" : \"30450221009a6ccfcaccea4bcda61ca5ed8a26f69d8c53753ff1d3484601bf37a74ad3b5c3022049b978a0ef773f330627331e2a26d71b8d113f7df808ccdbd6b3f375b954b933\"\n  } ]\n}',0,'z)\ï[nüÏ°»4r.\Í}¨\Ö`\êM(\Ñ\ÑÂ¤e\Ö5§','z)\ï[nüÏ°»4r.\Í}¨\Ö`\êM(\Ñ\ÑÂ¤e\Ö5§','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,9,11,1,1559163652589,9,1559163650115,1),('#Ô–->\rÜ“`Qú!Í½—œyC\Ü#\ÅØ”\\ö±³',16,'\0\0\0›gEøWÃŸHù¼r	¢\á¸-@\ÕgÑ’tŒ8&xiµª˜i¿¨€c\Ã~\Ó\à\Ã\Ü@‹XÛ’ 4\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ó\î\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0„>\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>\0\0\0\0\0\0\0\0\0\0\0',0,'8Œt’\Ñg\Õ@-¸\á¢	r¼ùHŸ\ÃWøEg›','4 ’\ÛX‹@\Ü\Ã\à\Ó~\Ãc€¨¿i˜ªµix&','\Ì?\Ğa{b0¬u_k\Ğ?ıhÚ ‰>',NULL,1,100,3,4,1,1559163683339,3,1559163679184,1),('(\"e?\\j‰\à½‘bœ\ÊÙ™<Ù¬H{¡_\ß{\İ	',1,'\0\0\0\Êb7k,®G\ÇBv©\\ÂIWi(Emğ°«^\Ö)>\Êb7k,®G\ÇBv©\\ÂIWi(Emğ°«^\Ö)>~;¼fŠı\Í\ìg¡oc²	\'ş\"phÌƒõ8œ¡\Z\ã[\Ù\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0 U5a\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\Ô\Î,G†À¤ŸÿË“\ßl˜¿?ûyÎ´\ïl²\ëeEH\0\0\0\0HG0D úÀ¯ŠI^\íE\Zeó\ÔR¤ \Z¹º°ñQ÷\á7\ï2 ,\ÇHs=¥!ºB˜ù\ä \Ñ\Âªt\â\È9÷»H š•C\äşÿÿÿÿ\0\0\0\0€Æ¤~\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬)\0\0\0\0\0\0¼v©]¹n¨\ëLJş\Õ%¯Å©¿€Áä®ˆ¬À\0\0\0\0¼v©Æ³\\!µú…f‰V‡\Ğü:½\íóRˆ¬¬\r\0\0\0\0\0\0¼v©G\ßAx\Ü\çQ’a&>°S« jğ’tÄˆ¬:°¢~\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê','>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,18,20,1,1559157151301,18,1559157150265,1),('/p)~·Cı\"7•Às=^Ûœ\î‘™\ã|’  p',5,'\0\0\0y‚²¼¸£¢\Ş\Ğv\Î\å\r“qz\Ì%Spcªe\äV\nL:y‚²¼¸£¢\Ş\Ğv\Î\å\r“qz\Ì%Spcªe\äV\nL:\Î\ç9ºNÂ¼\í\Ò\çb\î®g{I	^6\Ø\Zi\ÆOÂ€z\æ\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\ÄmŸ	\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0a¥\Ë÷\âõ_ˆ¥F—\Ö\æn\ZeT\Ë7E#\n×´ÌI\0\0\0HG0D g„9i§/{®˜ÎºA\Ò\Ù³Dd\ëq?8\âD²5 hÍ¹|,òf^t°x§iA~\é\Ä,\Æş®\Ze4\Ê;7«ÿÿÿÿ\0\0\0Ü¦f8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬0W\0\0\0\0\0¼v©¢w¡‹rœ·ş\ÛBiö‰V›*ˆ¬¬Oa8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,':L\nV\äeªcpS%\Ìzq“\r\å\Îv\ĞŞ¢£¸¼²‚y',':L\nV\äeªcpS%\Ìzq“\r\å\Îv\ĞŞ¢£¸¼²‚y','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,14,16,1,1559160445422,14,1559160442642,1),('4 ’\ÛX‹@\Ü\Ã\à\Ó~\Ãc€¨¿i˜ªµix&',15,'\0\0\0£¢\Ë\')ÿ¿9$\Û\É\Æ\"~ƒ2Sˆ¿C R\Ì)§z\ÆUù£¢\Ë\')ÿ¿9$\Û\É\Æ\"~ƒ2Sˆ¿C R\Ì)§z\ÆUù`\Z1…\ï¯À’*9\0G¢0×¦±Æ„ø“«i@ó\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\06¾\ä\Ê\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0 1w(\0\0\0\0!+¼÷ºPK\î¹i+s+*s\ÕZ\ØV Õ¼!’\Z.`us#!+¼÷ºPK\î¹i+s+*s\ÕZ\ØV Õ¼!’\Z.`us¬\0\0\0\0\0\0\0\0\0\0\0TOKENo\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"EUR-CENT\",\n    \"description\" : \"EUR-CENT\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0¾\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1Lpvh2E44RSReTnmPivfghtUm2RE9Kd66B\",\n    \"publickey\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"signature\" : \"3045022100e12f377319ddd8e309448155781e9ab8151216bfa05c63fe402a79169698b1ae022030643b02e8c8ad80ed27477e40e97963edefefb0e12c53f3e84fcc61183eaf6d\"\n  } ]\n}',0,'ùU\Æz§)\ÌR C¿ˆS2ƒ~\"\Æ\É\Û$9¿ÿ)\'\Ë¢£','ùU\Æz§)\ÌR C¿ˆS2ƒ~\"\Æ\É\Û$9¿ÿ)\'\Ë¢£','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,3,100,4,5,1,1559163683282,4,1559163661565,1),('5A›ZÌ+\î›M¬ôƒ.lJ\ëI\ZA\Úq¥cC¿‘',6,'\0\0\0p  ’|\ã™‘\îœ\Û^=sÀ•7\"ıC·~)p/p  ’|\ã™‘\îœ\Û^=sÀ•7\"ıC·~)p/UaóbY?ºÀœw\å\ï&c\àƒ\Â_\ã ğ\nP=\ãB/j\ê\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\\\Æ|\Î\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\Î\ç9ºNÂ¼\í\Ò\çb\î®g{I	^6\Ø\Zi\ÆOÂ€\0\0\0HG0D nC•9o´zƒXú•\í\Åùõú¬¡ó—\à„\ì*Pw™\"_ y907\ï\ê¡\ÔæŠ¬\Ê[gi>[1\Ë\ÄŞœ„\Ãe\ÚÁ:Cÿÿÿÿ\0\0\0¬Oa8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬¬\r\0\0\0\0\0\0¼v©œq´—wò\í\'51,\ÕR\Ã\è»ûe£ˆ¬\0Ba8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'/p)~·Cı\"7•Às=^Ûœ\î‘™\ã|’  p','/p)~·Cı\"7•Às=^Ûœ\î‘™\ã|’  p','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,13,15,1,1559161453281,13,1559161449804,1),('8Œt’\Ñg\Õ@-¸\á¢	r¼ùHŸ\ÃWøEg›',15,'\0\0\0£¢\Ë\')ÿ¿9$\Û\É\Æ\"~ƒ2Sˆ¿C R\Ì)§z\ÆUù£¢\Ë\')ÿ¿9$\Û\É\Æ\"~ƒ2Sˆ¿C R\Ì)§z\ÆUùf\'b5\\\Ğ\ì;«5O”—HKP‚ \Õx3\çFC‘\ê_\0\nó\î\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0¼U\ï÷\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ù\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 1,\n  \"toHeight\" : 12,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"PinWXquw8G1FKGlXSZDCXKl2QseeGwZHrixrHDdiyhc=\",\n    \"reversedBytes\" : \"F8piNxxrLK5HBhuex0J2qVzCkElXaShFbfCwq17WKT4=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'ùU\Æz§)\ÌR C¿ˆS2ƒ~\"\Æ\É\Û$9¿ÿ)\'\Ë¢£','ùU\Æz§)\ÌR C¿ˆS2ƒ~\"\Æ\É\Û$9¿ÿ)\'\Ë¢£','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,4,5,1,1559163683339,4,1559163660821,1),(':L\nV\äeªcpS%\Ìzq“\r\å\Îv\ĞŞ¢£¸¼²‚y',4,'\0\0\0€Ã¾:(…%¨\Ö3?Ş(XkEûb¾©\"`%0\Òi<€Ã¾:(…%¨\Ö3?Ş(XkEûb¾©\"`%0\Òi<a¥\Ë÷\âõ_ˆ¥F—\Ö\æn\ZeT\Ë7E#\n×´ÌI\à\Û\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0½P<ô\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0\Î%ù–%÷™\Ò\àq®?’®°™\á\éÁŞŒ·n\ì/e\ëÏ\0\0\0IH0E!\0\Õ\Øv\é{iw\\T†¸÷‹%QkWú\Ô­]Ê¥\ê\é\È ]yA€oŒLÖ§\ÜÁ«¿©šû\Î_$dr\é\'we¨!4Àdÿÿÿÿ\0\0\0ˆ´f8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬¬\r\0\0\0\0\0\0¼v©œq´—wò\í\'51,\ÕR\Ã\è»ûe£ˆ¬Ü¦f8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'<i\Ò0%`\"©¾bûEkX(\Ş?3Ö¨%…(:¾Ã€','<i\Ò0%`\"©¾bûEkX(\Ş?3Ö¨%…(:¾Ã€','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,15,17,1,1559157730362,15,1559157729387,1),('<i\Ò0%`\"©¾bûEkX(\Ş?3Ö¨%…(:¾Ã€',3,'\0\0\0øó·ÿ£}H»¯«J\r\Z\Éÿo7\Æ>½Iw2—\nøó·ÿ£}H»¯«J\r\Z\Éÿo7\Æ>½Iw2—\n\Î%ù–%÷™\Ò\àq®?’®°™\á\éÁŞŒ·n\ì/e\ëÏh\Û\î\\\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0-vÀt\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0 h6ùğÿ@‹b“ı±Ç‚\0‡§—¿\áŒ2tP\Ñ(Vñ§\"\0\0\0HG0D JtÌºArj\ä\Ö<Û°ùÁ\ÊıWŠ²Ä‘;Û‰øS\Ï·\à@ <=*\reaK“]\Ï<ƒš\é¸*³\î\"6;U“‹÷\ÄP\ä\Æÿÿÿÿ\0\0\04\Âf8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬¬\r\0\0\0\0\0\0¼v©œq´—wò\í\'51,\ÕR\Ã\è»ûe£ˆ¬ˆ´f8u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,16,18,1,1559157610196,16,1559157608686,1),('>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ô\Î,G†À¤ŸÿË“\ßl˜¿?ûyÎ´\ïl²\ëeEHm#^[\0\0\0\0ÿÿ? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0ÿÿÿÿ\0\0\0\0\0€Æ¤~\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\Ù\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,19,21,1,1559157149648,19,1559157149502,1),('sy™\èõE\Å¿k\å¿\í\ä\È\Ù-$øò4\îò\ÔK\Ùf¹',19,'\0\0\0Â\ÂK\Óm\í:ªGšÿ}—/Š8¤\à*\Û\ÎTÿ\0Â\ÂK\Óm\í:ªGšÿ}—/Š8¤\à*\Û\ÎTÿ\0\n­\Ò8n2Fq5E“X^sVM¶\êkc»©\Z\Î µ&{\ÕS&\ï\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0²\Ş0\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0ù-$½\'Ã©³°›œ\n5”HMª&b¹IÁ\ëiö^\î:2\Å\0\0\0IH0E!\0\ß\é>š= ì¶£·ú¦\Ì*»(ğ\ìL\É\Çô\Z‚|×•) q‚\Ó«™\éœP’\ï¡ÁĞƒö¡Š›>Gı\è&\É\Ñ|ÿÿÿÿ\0\0\0°-;6u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬0W\0\0\0\0\0¼v©ñ@Z•~%\å„\ÃöBÅŠ\ç’\nˆ¬€\Ö56u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'\0ÿT\Î\Û*\à¤8Š/—}ÿšGª:\ímÓKÂ\Â','\0ÿT\Î\Û*\à¤8Š/—}ÿšGª:\ímÓKÂ\Â','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,0,1,1,1559176790124,0,1559176788014,1),('~‘eG™o-œ_õœ{ø\î\n¨^†C\0ñ\âa]Œ°|\Æ¹{',17,'\0\0\0³±ö\\”\Ø\Å#\ÜCyœ—½\Í!úQ`“\Ü\r>-–\Ô#³±ö\\”\Ø\Å#\ÜCyœ—½\Í!úQ`“\Ü\r>-–\Ô#ù-$½\'Ã©³°›œ\n5”HMª&b¹IÁ\ëiö^\î:2\Å\ï\\\0\0\0\0ÿÿ \0\0\0\0\0\0\0\0\0\0\0UkŸ\Ì\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô\0\0\0\0\0\0\0\0\0\0\0\0\0ª¤†`v\ï#:L!ck”ûQ\"\æy´&\\º;ı¼ü\r\É\ä@\0\0\0IH0E!\0‚\Â\ÊefQ{ ”„\È¸1WSu\è“Z$F4§z$z S)|¬\Îq\ír*†\Õ\Ë\ê\İFa”€C=’q­8W’ûq{ÿÿÿÿ\0\0\0\à„@6u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬0W\0\0\0\0\0¼v©ñ@Z•~%\å„\ÃöBÅŠ\ç’\nˆ¬°-;6u\0¼#!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'#Ô–->\rÜ“`Qú!Í½—œyC\Ü#\ÅØ”\\ö±³','#Ô–->\rÜ“`Qú!Í½—œyC\Ü#\ÅØ”\\ö±³','\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«\Ô',NULL,1,100,2,3,1,1559173397094,2,1559173393618,1);
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
INSERT INTO `multisignaddress` VALUES ('085e6c23a5f900f9e80a12edeb79b9c75079cee77c967c0d83a5ee554d665b0d','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568','','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568',0),('1669996f54519d25c3b8d4a6d62149bc9946650801e45086b9ca6d306ea1c792','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d','','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d',0),('16f955c67aa729cc522043bf885332838f7e22c6c9db2439bfff2927cb11a2a3','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc','','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc',0),('1c54c4e54d6d80573a15ab9faacb9088f1daf9fa56f32776d7dcbffb44903aeb','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e','','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e',0),('20e8756cf3788a77ad871d42fe9341859473655b1bd923219e1b882fb8b28253','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859','','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859',0),('340ca092db588b40dcc3e0d37ec36380a806bf69069890aab569780708121626','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573','','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573',0);
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
INSERT INTO `ordermatching` VALUES ('\0ÿT\Î\Û*\à¤8Š/—}ÿšGª:\ímÓKÂ\Â',18,1,0,NULL,2,'z)\ï[nüÏ°»4r.\Í}¨\Ö`\êM(\Ñ\ÑÂ¤e\Ö5§'),('z)\ï[nüÏ°»4r.\Í}¨\Ö`\êM(\Ñ\ÑÂ¤e\Ö5§',9,1,1,'\0ÿT\Î\Û*\à¤8Š/—}ÿšGª:\ímÓKÂ\Â',2,'>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê'),('>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê',0,1,1,'z)\ï[nüÏ°»4r.\Í}¨\Ö`\êM(\Ñ\ÑÂ¤e\Ö5§',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
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
INSERT INTO `outputs` VALUES ('IÌ´\×\n#E7\ËTe\Zn\æÖ—F¥ˆ_õ\â÷Ë¥a',0,3500,'v©œq´—wò\í\'51,\ÕR\Ã\è»ûe£ˆ¬','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',1,0,':L\nV\äeªcpS%\Ìzq“\r\å\Îv\ĞŞ¢£¸¼²‚y','bc','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',NULL,0,1,0,NULL,1559157729),('IÌ´\×\n#E7\ËTe\Zn\æÖ—F¥ˆ_õ\â÷Ë¥a',1,999959527073500,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,':L\nV\äeªcpS%\Ìzq“\r\å\Îv\ĞŞ¢£¸¼²‚y','bc','',NULL,1,1,1,'/p)~·Cı\"7•Às=^Ûœ\î‘™\ã|’  p',1559157729),('/B\ã=P\nğ \ã_Âƒ\àc&\ï\åwœÀº?YbóaU',0,3500,'v©œq´—wò\í\'51,\ÕR\Ã\è»ûe£ˆ¬','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',1,0,'5A›ZÌ+\î›M¬ôƒ.lJ\ëI\ZA\Úq¥cC¿‘','bc','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',NULL,0,1,0,NULL,1559161449),('/B\ã=P\nğ \ã_Âƒ\àc&\ï\åwœÀº?YbóaU',1,999959526720000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'5A›ZÌ+\î›M¬ôƒ.lJ\ëI\ZA\Úq¥cC¿‘','bc','',NULL,1,1,1,'\n\ê>\Ün©t¥/”=\ä¼\Ù\Ù\ÕS+\êTp7\Ö\Ş',1559161449),('\Ò\Â\Ö\Ëè‰·„±ş¸}R\İ5Ú¦\Ôv¥{ûdª5C˜X¥I',0,678900000,'!\ë\ÄXº„nÇ›2\ç¢0û\éÖ‡\rü…$”Ã¶Ïœ–£\ÕHY¬','1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB',2,1,' \èulóxŠw­‡Bş“A…”se[\Ù#!ˆ/¸²‚S','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859','',NULL,0,1,0,NULL,1559163649),('@i«“ø„Æ±¦\×0¢G\09*’À¯\ï…1\Z`',0,678900000,'!+¼÷ºPK\î¹i+s+*s\ÕZ\ØV Õ¼!’\Z.`us¬','1Lpvh2E44RSReTnmPivfghtUm2RE9Kd66B',2,1,'4 ’\ÛX‹@\Ü\Ã\à\Ó~\Ãc€¨¿i˜ªµix&','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573','',NULL,0,1,0,NULL,1559163661),('@\ä\É\rü¼ı;º\\&´y\æ\"Qû”kc!L:#\ïv`†¤ª',0,35000000,'v©\ËK>XÿbJ\Ïı ‚\í\\\Å\çv\Ó\\ğˆ¬','1KXvJxM6fC63bgZEwQDNd2UWFDK24ZHJh7',1,0,'/…crš¯°ÿ^¢F\í\Û>\îóŠ,\â‹1yy$XİºA >','bc','1KXvJxM6fC63bgZEwQDNd2UWFDK24ZHJh7',NULL,0,1,0,NULL,1559162453),('@\ä\É\rü¼ı;º\\&´y\æ\"Qû”kc!L:#\ïv`†¤ª',1,999959491020000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'/…crš¯°ÿ^¢F\í\Û>\îóŠ,\â‹1yy$XİºA >','bc','',NULL,1,1,1,'~‘eG™o-œ_õœ{ø\î\n¨^†C\0ñ\âa]Œ°|\Æ¹{',1559162453),('HEe\ë²l\ï´\Îyû?¿˜lß“\ËÿŸ¤À†G,\Î\Ô',0,1000000000000000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê','bc','',NULL,1,1,1,'(\"e?\\j‰\à½‘bœ\ÊÙ™<Ù¬H{¡_\ß{\İ	',0),('r§©„ü\"!4¾k\í\å¾:Tªgº?_“,„l3;”',0,10,'v©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ¬','1111111111111111111114oLvT2',1,1,'8Œt’\Ñg\Õ@-¸\á¢	r¼ùHŸ\ÃWøEg›','bc','1111111111111111111114oLvT2',NULL,0,1,0,NULL,1559163683),('r§©„ü\"!4¾k\í\å¾:Tªgº?_“,„l3;”',1,110,'v©\å\ë\Ìç¨’\n\Èo\Ñ\ŞL¡I¦\\«Ôˆ¬','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'8Œt’\Ñg\Õ@-¸\á¢	r¼ùHŸ\ÃWøEg›','bc','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',NULL,0,1,0,NULL,1559163683),('tn\àóP\Ş\0û6W\ÒJÁ¢:F¸e\ØZlSÁ%O\ØYÁ',0,678900000,'!\ŞÁ\ÌJY…<\êÑ¬¤e\Í\ëö7e\Æ~d\ç\Ì*­\ÑPl¼¬','12jEy3c58dGMtB3sotY99WXXC3hfuqozNV',2,1,'ùU\Æz§)\ÌR C¿ˆS2ƒ~\"\Æ\É\Û$9¿ÿ)\'\Ë¢£','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc','',NULL,0,1,0,NULL,1559163659),('z¹½q\n¦¼cuS$H\08÷XRÅ˜²%§9	tÔ¹',0,700000,'v©¢w¡‹rœ·ş\ÛBiö‰V›*ˆ¬','1Fp33sT2QAYKzbBJjknmBQkYSWZtnqsbwB',1,0,'\n\ê>\Ün©t¥/”=\ä¼\Ù\Ù\ÕS+\êTp7\Ö\Ş','bc','1Fp33sT2QAYKzbBJjknmBQkYSWZtnqsbwB',NULL,0,1,0,NULL,1559161797),('z¹½q\n¦¼cuS$H\08÷XRÅ˜²%§9	tÔ¹',1,999959526020000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'\n\ê>\Ün©t¥/”=\ä¼\Ù\Ù\ÕS+\êTp7\Ö\Ş','bc','',NULL,1,1,1,'/…crš¯°ÿ^¢F\í\Û>\îóŠ,\â‹1yy$XİºA >',1559161797),('€\ÂO\Æi\Z\Ø6^	I{g®\îb\ç\Ò\í¼\ÂNº9\ç\Î',0,350000,'v©¢w¡‹rœ·ş\ÛBiö‰V›*ˆ¬','1Fp33sT2QAYKzbBJjknmBQkYSWZtnqsbwB',1,0,'/p)~·Cı\"7•Às=^Ûœ\î‘™\ã|’  p','bc','1Fp33sT2QAYKzbBJjknmBQkYSWZtnqsbwB',NULL,0,1,0,NULL,1559160442),('€\ÂO\Æi\Z\Ø6^	I{g®\îb\ç\Ò\í¼\ÂNº9\ç\Î',1,999959526723500,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'/p)~·Cı\"7•Às=^Ûœ\î‘™\ã|’  p','bc','',NULL,1,1,1,'5A›ZÌ+\î›M¬ôƒ.lJ\ëI\ZA\Úq¥cC¿‘',1559160442),('‚X@šV¢\ã‚C\í\'\Z§›\Ãu\\\âem$\'b>eZ^\Ñû\Ç\Z',0,678900000,'!¬ö`¾\æL\ä‰\Ø\0?¼{m)%\ílG¦¢	\Ì|r@@]{=¬','1GtzL9G51YTnquirBBptpgKkwzRGp3Nicg',2,1,'i™oTQ%Ã¸Ô¦\Ö!I¼™Fe\äP†¹\Êm0n¡Ç’','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d','',NULL,0,1,0,NULL,1559163656),('\Ï\ëe/\ìn·Œ\ŞÁ\éá™°®’?®q\àÒ™÷%–ù%\Î',0,3500,'v©œq´—wò\í\'51,\ÕR\Ã\è»ûe£ˆ¬','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',1,0,'<i\Ò0%`\"©¾bûEkX(\Ş?3Ö¨%…(:¾Ã€','bc','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',NULL,0,1,0,NULL,1559157608),('\Ï\ëe/\ìn·Œ\ŞÁ\éá™°®’?®q\àÒ™÷%–ù%\Î',1,999959527077000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'<i\Ò0%`\"©¾bûEkX(\Ş?3Ö¨%…(:¾Ã€','bc','',NULL,1,1,1,':L\nV\äeªcpS%\Ìzq“\r\å\Îv\ĞŞ¢£¸¼²‚y',1559157608),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',0,35700000,'v©\ä˜\Ùy¼meş¼Š³&ç•¾Lˆ¬','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',1,350000,'v©]¹n¨\ëLJş\Õ%¯Å©¿€Áä®ˆ¬','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',2,367500000,'v©j”·9\Ú.G‰—oEQq3€Åˆ¬','1Afz5FJtVGAtrwCfE5giVvhRi6u2mDg9Fv',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1Afz5FJtVGAtrwCfE5giVvhRi6u2mDg9Fv',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',3,500000000,'v©i\ï\æÆ‘hÕ³k%\ÒC£š}¿ ‹ˆ¬','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',4,35000000,'v©Æ³\\!µú…f‰V‡\Ğü:½\íóRˆ¬','1K7df8Junwj25WLGqm9BFmnPZaPqZYVqKY',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1K7df8Junwj25WLGqm9BFmnPZaPqZYVqKY',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',5,250000000,'v©)•t2x>4\ßl)	»6\İN\İR:ˆ¬','14nsk71wQjXFSxT8bQZQTdjYvDwpxpni1w',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','14nsk71wQjXFSxT8bQZQTdjYvDwpxpni1w',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',6,35350000,'v©\éRe\r‘½£XÁ\\‘Ñ\ã B÷\ê5îˆ¬','1NGh9aq7mePaYeTUuEi9viVtgo8Xw6d6Rp',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1NGh9aq7mePaYeTUuEi9viVtgo8Xw6d6Rp',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',7,35000000,'v©TimskDGff™÷”’¥\î\ìXHfˆ¬','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',8,17850000,'v©9\ß(C5%À\Ûó£-‹özşˆ¬','16GzrB4XercHpVZodiMUQBXg1ka3GvPzzX',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','16GzrB4XercHpVZodiMUQBXg1ka3GvPzzX',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',9,14000000000,'v©\ëJ›‡]ô\ï‡*>ƒ\Úd$«FiAˆ¬','1NT7AuM2jL2ZiQ559TLA9CzyqoqpZr9bCn',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1NT7AuM2jL2ZiQ559TLA9CzyqoqpZr9bCn',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',10,800000000,'v©\ÏË”!ÁV%ğC.\"D\Î¥<Nõ ˆ¬','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',11,50000000,'v©ùŠ\ê4”%n\İ\âv\â6¾0©I^ôˆ¬','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',12,2000,'v©…\ÉN\Ş\İØ³B(¿vı¤§s”Mˆ¬','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',13,10000000000,'v©$^i\ä\ï\ÎsÙ¯&?0€$Ü“†f\Ş6ˆ¬','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',14,35000000,'v©‡g+2EU\Ç]Fx\ÍÏ¸ÿ>œDœˆ¬','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',15,50000000,'v©\ç¾ET\å6WÁ\Ê{ni]øÙˆ¬','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',16,500500000,'v©4V•‚\\¶ğ#ÿ‘Š\Ü\Å\Ëˆ¬','15mjrwRj8h8SRbJ4HHGpQB33HPu6L2Xbds',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','15mjrwRj8h8SRbJ4HHGpQB33HPu6L2Xbds',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',17,500000000,'v©‚„n\ÄÍªQµ\ç•\Â <¼õŠ@‚–—ˆ¬','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',18,3500000000,'v©|b‰yÆ¹1\Ô?^?<\ÜYP–°¤gˆ¬','1CLgqG1U9fjsEcMhnnKU7FVVzepar5ktaH',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1CLgqG1U9fjsEcMhnnKU7FVVzepar5ktaH',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',19,34650000,'v©‡Š\á#&ºiXÇsôy\ß>£ˆ¬','1DMgbQn4ZsmYoGoct4w4gkqd1PK23s6EzA',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1DMgbQn4ZsmYoGoct4w4gkqd1PK23s6EzA',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',20,700000000,'v©Œú||m\Ş\î\ì\äY°!\Æ&/\rg¹ˆ¬','1DrRfwxwtLcAEhAEiE6MSbpyK52Lf7x8rE',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1DrRfwxwtLcAEhAEiE6MSbpyK52Lf7x8rE',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',21,25000000,'v©õœ\ØrY›	¥&…\È`‘\ÜMˆ¬','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',22,10000000,'v©“jß‡ˆ‰¤…“=<I(\İ˜ˆ¬','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',23,350000000,'v©F\Óğn¢¤&¡$ş„ =¬ˆ¬','17TWC7hjEPu8JxvVHKzWhT5NiPvgXseCZj',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','17TWC7hjEPu8JxvVHKzWhT5NiPvgXseCZj',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',24,100000000,'v©±¸q‚$²5½\\›Gfé¢ˆ¬','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',25,6000000000,'v©˜B–^õş42´;y•Ê¯Å½eÙ¤ˆ¬','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',26,3500,'v©G\ßAx\Ü\çQ’a&>°S« jğ’tÄˆ¬','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',27,350000000,'v©)K|¾\ÙóÏ™ƒ\ÓtÕ¡3s‰„UÀˆ¬','14mM8pCKSi6nftVVLFLz4etCWhRWyR5BLN',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','14mM8pCKSi6nftVVLFLz4etCWhRWyR5BLN',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',28,5500000,'v©\è‘SŒcDŸ\á¬tş¡\ë;\é\Ö/[ıˆ¬','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',29,350000000,'v©#½l€ršfö¡I“Ø£L‚Aˆ¬','14Fy836wiMYzwzVmRCvu5fi1nvCKabW5dz',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','14Fy836wiMYzwzVmRCvu5fi1nvCKabW5dz',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',30,250000000,'v©\Ğ9 ´MjÆ€Ÿ½{‹q\ë\ÇAkx©ˆ¬','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',31,1000000000,'v©Õ™yû\Ä]ñ)ñù\åš\Úo,ˆ¬','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',32,50000000,'v©ø\ÎÏŠ\Ùø\î®yŸqõ\İóóQÑˆ¬','1PgaL2wGD2DXTwkbUGUG31TekMm9tggwqN',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','1PgaL2wGD2DXTwkbUGUG31TekMm9tggwqN',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',33,500500000,'v©Py\åP‡\ç\ë>\ìLŒ\í<,2²`ˆ¬','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',1,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',NULL,0,1,0,NULL,1559157150),('§ñV(\ÑPt2Œá¿—§‡\0‚Ç±ı“b‹@ÿğù6h ',34,999959527080500,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø','bc','',NULL,1,1,1,'<i\Ò0%`\"©¾bûEkX(\Ş?3Ö¨%…(:¾Ã€',1559157150),('µ\æ\Ö\Ö1Ú®N#79\íg–»j	\ï±m€\Ó\æÅ›xv',0,678900000,'!O¥\Ît5§Ø­\î\æ\Î4´¢¶Ø‘‡›·\ÒSå«·,¢=^n¬','1MW35ZNpYDANihQjDZC7fmzj2rADW4ZyrP',2,1,'T\Ä\åMm€W:«ŸªËˆñ\ÚùúVó\'v\×Ü¿ûD:\ë','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e','',NULL,0,1,0,NULL,1559163652),('·KÏ¾ˆşœŠ“\á\à¦\Ë.NV™ôG•\Úög³Á\Ü\Â\ã',0,678900000,'!\0]d%*i¤sı\É^‘<º›\éz!¼a“P¿o\é%h¬','17gt5R6JU3geTrJqauEWZZ1hqozH5HAppG',2,1,'^l#¥ù\0ù\è\n\í\ëy¹\ÇPy\Î\ç|–|\rƒ¥\îUMf[\r','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568','',NULL,0,1,0,NULL,1559163654),('\Å2:\î^öi\ëÁI¹b&ªMH”5\nœ›°³©\Ã\'½$-ù',0,350000,'v©ñ@Z•~%\å„\ÃöBÅŠ\ç’\nˆ¬','1NyXKzSUAyqXYQgiDEHtsPw95q7km6rzde',1,0,'~‘eG™o-œ_õœ{ø\î\n¨^†C\0ñ\âa]Œ°|\Æ¹{','bc','1NyXKzSUAyqXYQgiDEHtsPw95q7km6rzde',NULL,0,1,0,NULL,1559173393),('\Å2:\î^öi\ëÁI¹b&ªMH”5\nœ›°³©\Ã\'½$-ù',1,999959490670000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'~‘eG™o-œ_õœ{ø\î\n¨^†C\0ñ\âa]Œ°|\Æ¹{','bc','',NULL,1,1,1,'sy™\èõE\Å¿k\å¿\í\ä\È\Ù-$øò4\îò\ÔK\Ùf¹',1559173393),('\Õ{&µ Î\Z©»ck\ê¶MVs^X“E5qF2n8Ò­\n',0,350000,'v©ñ@Z•~%\å„\ÃöBÅŠ\ç’\nˆ¬','1NyXKzSUAyqXYQgiDEHtsPw95q7km6rzde',1,0,'sy™\èõE\Å¿k\å¿\í\ä\È\Ù-$øò4\îò\ÔK\Ùf¹','bc','1NyXKzSUAyqXYQgiDEHtsPw95q7km6rzde',NULL,0,1,0,NULL,1559176788),('\Õ{&µ Î\Z©»ck\ê¶MVs^X“E5qF2n8Ò­\n',1,999959490320000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'sy™\èõE\Å¿k\å¿\í\ä\È\Ù-$øò4\îò\ÔK\Ùf¹','bc','',NULL,0,1,0,NULL,1559176788),('\ã\Z¡œ8õƒ\Ìhp\"ş\'	²co¡g\ìÍıŠf¼;~',0,10500,'v©]¹n¨\ëLJş\Õ%¯Å©¿€Áä®ˆ¬','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',1,0,'(\"e?\\j‰\à½‘bœ\ÊÙ™<Ù¬H{¡_\ß{\İ	','bc','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',NULL,0,1,0,NULL,1559157150),('\ã\Z¡œ8õƒ\Ìhp\"ş\'	²co¡g\ìÍıŠf¼;~',1,35000000,'v©Æ³\\!µú…f‰V‡\Ğü:½\íóRˆ¬','1K7df8Junwj25WLGqm9BFmnPZaPqZYVqKY',1,0,'(\"e?\\j‰\à½‘bœ\ÊÙ™<Ù¬H{¡_\ß{\İ	','bc','1K7df8Junwj25WLGqm9BFmnPZaPqZYVqKY',NULL,0,1,0,NULL,1559157150),('\ã\Z¡œ8õƒ\Ìhp\"ş\'	²co¡g\ìÍıŠf¼;~',2,3500,'v©G\ßAx\Ü\çQ’a&>°S« jğ’tÄˆ¬','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',1,0,'(\"e?\\j‰\à½‘bœ\ÊÙ™<Ù¬H{¡_\ß{\İ	','bc','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',NULL,0,1,0,NULL,1559157150),('\ã\Z¡œ8õƒ\Ìhp\"ş\'	²co¡g\ìÍıŠf¼;~',3,999999964986000,'!r^°(.K\Èj«3€â»£“\\º8gAÁTG—42\Æ\Éu¬','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'(\"e?\\j‰\à½‘bœ\ÊÙ™<Ù¬H{¡_\ß{\İ	','bc','',NULL,1,1,1,'\n—2wI½>\Æ7oÿ\É\Z\rJ«¯»H}£ÿ·óø',1559157150);
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
INSERT INTO `tips` VALUES ('sy™\èõE\Å¿k\å¿\í\ä\È\Ù-$øò4\îò\ÔK\Ùf¹');
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
INSERT INTO `tokens` VALUES ('085e6c23a5f900f9e80a12edeb79b9c75079cee77c967c0d83a5ee554d665b0d',1,'02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568',0,678900000,'mETH','mETH',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('1669996f54519d25c3b8d4a6d62149bc9946650801e45086b9ca6d306ea1c792',1,'021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d',0,678900000,'äººæ°‘å¸åˆ†','äººæ°‘å¸åˆ†',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('16f955c67aa729cc522043bf885332838f7e22c6c9db2439bfff2927cb11a2a3',1,'03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc',0,678900000,'USD-CENT','USD-CENT',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('1c54c4e54d6d80573a15ab9faacb9088f1daf9fa56f32776d7dcbffb44903aeb',1,'034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e',0,678900000,'mBTC','mBTC',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('20e8756cf3788a77ad871d42fe9341859473655b1bd923219e1b882fb8b28253',1,'02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859',0,678900000,'mGold','mGold',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('340ca092db588b40dcc3e0d37ec36380a806bf69069890aab569780708121626',1,'022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573',0,678900000,'EUR-CENT','EUR-CENT',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('3e29d65eabb0f06d452869574990c25ca97642c79e1b0647ae2c6b1c3762ca17',1,'bc',0,0,'bc','BigTangle currency',NULL,1,0,1,'',0,NULL,NULL,0,NULL,NULL,NULL);
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
INSERT INTO `txreward` VALUES ('8Œt’\Ñg\Õ@-¸\á¢	r¼ùHŸ\ÃWøEg›',12,1,0,NULL,2,'>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê',2),('>)\Ö^«°ğmE(iWI\Â\\©vBÇG®,k7b\Ê',0,1,1,'8Œt’\Ñg\Õ@-¸\á¢	r¼ùHŸ\ÃWøEg›',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',10);
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

-- Dump completed on 2019-05-30  2:10:01
