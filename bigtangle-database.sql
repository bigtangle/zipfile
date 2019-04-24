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
INSERT INTO `blocks` VALUES ('����r�S �|C\�k\r�.W2��-�Qi��\�*',5,'\0\0\0�r\�\��;��u�\��\�\�\�Y���!y!\r��l�\�%�r\�\��;��u�\��\�\�\�Y���!y!\r��l�\�%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�x\�Z\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'%Ȓl��\r!y!���Y\�\�\��\��u��;�\�\�r�','%Ȓl��\r!y!���Y\�\�\��\��u��;�\�\�r�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,35,38,1,1556060421985,35,1556060421529,1),('�#���@� +T!�P�/_LS���Df���&',12,'\0\0\0u�\�B>�\n�SH��\�|6Idtk�.�\�\�0��su�\�B>�\n�SH��\�|6Idtk�.�\�\�0��s(3a\�J\��@���97yDFvl�>\�\���\�U��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�>�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v#!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v�\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"ETH\",\n    \"description\" : \"ETH\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8\",\n    \"publickey\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"signature\" : \"304402206d4227335b2437f18f978107831fce87b1279c33edb290c0f73b3367bb91df04022014d7be76321f857472dc9a2513ff1af0e7b85ced8b0bfc1fff00a9c611ce1e6a\"\n  } ]\n}',0,'s��0\�ˡ.�ktdI6|\���HS�\n�>B\��u','s��0\�ˡ.�ktdI6|\���HS�\n�>B\��u','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,28,31,1,1556060503930,28,1556060502296,1),('�O}\�\�$��\�U�mU4��\�W\�\�^\�x',25,'\0\0\0��\�\�%R�o=m�ħґ=I�\�y\�H\�דJ��\�\�%R�o=m�ħґ=I�\�y\�H\�דJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0f��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0a(\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'J�\�\�H\�y\�I=�ҧ\��m=o�R%\�鏫','J�\�\�H\�y\�I=�ҧ\��m=o�R%\�鏫','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,15,16,1,1556060520996,15,1556060518804,1),('\�\�\�DM!4k���0\�Ǣp\�\�u���\'\�s/',31,'\0\0\0Y�\����]\�Dۖ�;w!�k�4t1�jQ\�i\�\�6Y�\����]\�Dۖ�;w!�k�4t1�jQ\�i\�\�6\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0p��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0PL\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'6\�\�i\�Qj�1t4�k�!w;��\�D\�]���\��Y','6\�\�i\�Qj�1t4�k�!w;��\�D\�]���\��Y','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,9,10,1,1556060540485,9,1556060529533,1),('T\�ǡ\r�\0�x��q?&\�\��DE����\�w�',17,'\0\0\0c�8U�\��۔u���#\�r���\�s��klc�8U�\��۔u���#\�r���\�s��kl\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0cg\�6\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'lk��sᆹ�r\�#���u�ۑ�\��U8�c','lk��sᆹ�r\�#���u�ۑ�\��U8�c','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,23,25,1,1556060510509,23,1556060507955,1),('��o��\��b�?�\�r/2\��N\�Q\�\�r�\�',36,'\0\0\0kJ��\���\�Sq\�\�\�\�\�.C�V$\�<$\�\�L\�`kJ��\���\�Sq\�\�\�\�\�.C�V$\�<$\�\�L\�`�\�\�\n$\'�\'\�\�\�JV\r�F\�xY\�H�K�l\'x��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0Ɛ>\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 14,\n  \"toHeight\" : 33,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"bGv5hnPhhrmPcgfDI3+GhJ11lNuRwp/x0A7/VTgX82M=\",\n    \"reversedBytes\" : \"Y/MXOFX/DtDxn8KR25R1nYSGfyPDB3KPuYbhc4b5a2w=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'`\�L\�\�$<\�$V�C.\�\�\�\�\�qS�\��ƽ�Jk','`\�L\�\�$<\�$V�C.\�\�\�\�\�qS�\��ƽ�Jk','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,4,5,1,1556060540597,4,1556060537743,1),('L�z�SW:0�hg)\�r}N\�b:3V+\�s�:[\�',21,'\0\0\0�\�$*BI^\�G��\�W��kzQ�\�A\��\�d�*x\r\�J�\�$*BI^\�G��\�W��kzQ�\�A\��\�d�*x\r\�JI\Z9ȏ	%\�|���dV<�\"ar��r\�B5\�_��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0k�\0 \�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<#!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<�\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"EUR\",\n    \"description\" : \"EUR\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP\",\n    \"publickey\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"signature\" : \"3045022100ab2b34700bc21ea5552a476dc4d242c988a1ec06c5af8d859abe5afa3983ee29022029fbc768f71d293083d73e0c26ec6429093b43e1eca9607e3a5f5e9945ce7c1b\"\n  } ]\n}',0,'J\�\rx*�d\�\�AϺQzk��Wķ�G\�^IB*$\��','J\�\rx*�d\�\�AϺQzk��Wķ�G\�^IB*$\��','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,19,20,1,1556060514970,19,1556060512351,1),('O�ʧH\��>�L�%_8\�\�_\��+�\�$ИWt&',8,'\0\0\0�\�w�=���录��[����Bb�t΄Q2�\�S=�\�w�=���录��[����Bb�t΄Q2�\�S=\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�I+\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'=S\��2Q�\�t�bB����[����冑�=�wպ','=S\��2Q�\�t�bB����[����冑�=�wպ','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,32,35,1,1556060503812,32,1556060499465,1),(']���j��>��ζ�YJޑ��־\��\�\��\�\r',19,'\0\0\0\�\�2�\�+��b -\�Խ\Z͚n��x/�\Z\�\�\�	w1\�\�2�\�+��b -\�Խ\Z͚n��x/�\Z\�\�\�	w1e4\"]:\�[�\��B�\�V�#Pg�LɅ�Сp�͡K]��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�\�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re�#!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re��\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"USD\",\n    \"description\" : \"USD\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT\",\n    \"publickey\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"signature\" : \"3045022100b572f9ee3352baacb10d0bd5749af65907f875beb702b453d94f4ee607654f4e022059325826201c0821ff569383ae7ac26b4dde5ad45fdfca1c448d7a6ced44a487\"\n  } ]\n}',0,'1w	݇\�\�\Z�/x��n�\�\Z�\�\�- b��+ӣ2\�\�','1w	݇\�\�\Z�/x��n�\�\Z�\�\�- b��+ӣ2\�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,21,22,1,1556060514970,21,1556060509977,1),('�K�2\Z���\�GU�G@\�Y��z�̠\�\�ޛP\�\�',19,'\0\0\0\�\�2�\�+��b -\�Խ\Z͚n��x/�\Z\�\�\�	w1\�\�2�\�+��b -\�Խ\Z͚n��x/�\Z\�\�\�	w1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0E�-\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'1w	݇\�\�\Z�/x��n�\�\Z�\�\�- b��+ӣ2\�\�','1w	݇\�\�\Z�/x��n�\�\Z�\�\�- b��+ӣ2\�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,21,22,1,1556060514972,21,1556060509724,1),('s��0\�ˡ.�ktdI6|\���HS�\n�>B\��u',11,'\0\0\0\�F!&\�\�������*�\�f��\�3���\�FJ�C�\"\�F!&\�\�������*�\�f��\�3���\�FJ�C�\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0]*\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'\"�C�JF\��3ᙓf�\�*������\�\�&!F\�','\"�C�JF\��3ᙓf�\�*������\�\�&!F\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,29,32,1,1556060503871,29,1556060501031,1),('yȿ\�XU��\�#ѣ}b�U���\�\�ʵ�\r{',2,'\0\0\0휋q\�\�NC��kmI�\�j󧗞u]�:��C휋q\�\�NC��kmI�\�j󧗞u]�:��C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\03n��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'C��:�]u����jʎImk��CN\�\�q��\�','C��:�]u����jʎImk��CN\�\�q��\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,38,41,1,1556060418869,38,1556060416275,1),('��\�Ͼ\�-ߙQ�GBR�J^\�K3�{����?',34,'\0\0\0\nc-�w`\"\�\��AL\�\�<�\�\�=\�D\�^�	/v\nc-�w`\"\�\��AL\�\�<�\�\�=\�D\�^�	/v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0v��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0��}4\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'v/	�^\�D\�=\�ҍ<\�\�LA�\�\�\"`w�-c\n','v/	�^\�D\�=\�ҍ<\�\�LA�\�\�\"`w�-c\n','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,6,7,1,1556060540484,6,1556060534957,1),('ME\�\�\'[h�?��B{\r\r�[��\�\�W�l;9\��',3,'\0\0\0{\r��\�\�\����U�b}�\�#\����UX\�\�y{\r��\�\�\����U�b}�\�#\����UX\�\�y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0Rc��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'yȿ\�XU��\�#ѣ}b�U���\�\�ʵ�\r{','yȿ\�XU��\�#ѣ}b�U���\�\�ʵ�\r{','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,37,40,1,1556060418869,37,1556060417943,1),('C��:�]u����jʎImk��CN\�\�q��\�',1,'\0\0\0\\\r!\�w���i\';�x\�\�W���ɷ%v\�\��Tj\\\r!\�w���i\';�x\�\�W���ɷ%v\�\��Tjt٬Lq&�\� \\\�~�V��/�j�;\�\�\�Lƛ���\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0ssL�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\�\�,G�����˓\�l���?��yδ\�l�\�eEH\0\0\0\0IH0E!\0\�\�M��R\�;V��U��a��ϫ߾д4v4�~C\� M\'�t[c�u�򊂁\\ \�\��\�S�N�g�\�\�\n\�t����\0\0\0\0�Ƥ~�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\�g5\0\0\0\0\0�v�]�n�\�LJ�\�%�ũ���䮈�@x}\0\0\0\0�v���\�rY�	�&�\�`�\�M��\0e\�\0\0\0\0�v�i\�\�Ƒhճk%\�C��}�����\0�/\0\0\0\0�v�\�˔!�V%�C.\"D\���<N� �����\0\0\0\0\0�v��j߇������=<I(\�������\0\0\0\0�v���\�4�%n\�\�v\�6�0�I^�\�\0\0\0\0\0\0�v��\�N\�\�ؐ�B(�v���s�M��\0\��\0\0\0\0�v����q�$�5�\\�Gf颈�\0��e\0\0\0�v��B�^��42�;y�ʯŽe٤��\0\�T\0\0\0�v�$^i\�\�\�sٯ&?0�$ܓ�f\�6��`\�S\0\0\0\0\0�v�\�S�cD�\�t��\�;\�\�/[�����\�\0\0\0\0�v�\�9 �Mjƀ��{�q\�\�Akx���\0ʚ;\0\0\0\0�v�ՙ�y�\�]�)��\��\�o,�� \�\0\0\0\0�v�P�y\�P�\�\�>\�L�\�<�,2�`����)z�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\','jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,39,42,1,1556060418870,39,1556060415997,1),('\"�C�JF\��3ᙓf�\�*������\�\�&!F\�',10,'\0\0\0	�\�ݜ\"<\�V)�K\�\nMͨى��\\�766���:	�\�ݜ\"<\�V)�K\�\nMͨى��\\�766���:�0c^u\�g\�l\rh4\��f�\��\�\��\� dVj%�S��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0���\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�#!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"BTC\",\n    \"description\" : \"BTC\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws\",\n    \"publickey\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"signature\" : \"3045022100eb2a0f3e3ba8800f45c3477465d3f7e9d121d203ffeb86ae795b904fdc2d42c80220597ae9b923fe4d821b1cac88f77baf91380df04dd1fe9835930883e6984a15b7\"\n  } ]\n}',0,':���667�\\���٨\�M\n\�K�)V\�<\"�\�\��	',':���667�\\���٨\�M\n\�K�)V\�<\"�\�\��	','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,30,33,1,1556060503871,30,1556060499757,1),('$�\Z��\�1�ؓ\�d\��մv~SaCߎۑ\�\�H�',6,'\0\0\0*\���iQ�-��2W.�\rk\�C|� S�r����*\���iQ�-��2W.�\rk\�C|� S�r����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�\�lh\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'����r�S �|C\�k\r�.W2��-�Qi��\�*','����r�S �|C\�k\r�.W2��-�Qi��\�*','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,34,37,1,1556060424838,34,1556060423394,1),('%Ȓl��\r!y!���Y\�\�\��\��u��;�\�\�r�',4,'\0\0\0�\�9;l�W\�Ȓ�[�\r\r{B��?�h[\'\�\�EM�\�9;l�W\�Ȓ�[�\r\r{B��?�h[\'\�\�EM\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0n�\�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'ME\�\�\'[h�?��B{\r\r�[��\�\�W�l;9\��','ME\�\�\'[h�?��B{\r\r�[��\�\�W�l;9\��','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,36,39,1,1556060421986,36,1556060419679,1),('%\�G�:\�*��\'{o\�\�1RyPyVR�Q�/#\��',37,'\0\0\0\��r\�\�Q\�N�\�2/r\�?�b�串o��\��r\�\�Q\�N�\�2/r\�?�b�串o��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0y��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0qԌ�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'��o��\��b�?�\�r/2\��N\�Q\�\�r�\�','��o��\��b�?�\�r/2\��N\�Q\�\�r�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,3,4,1,1556060540597,3,1556060538718,1),('*9\Z�9��\�w�\��\�1YD\�e��&\�a��ַ\��?',28,'\0\0\0\���v�5\"%}{�mv	b/�[�y��\�&K�+\���v�5\"%}{�mv	b/�[�y��\�&K�+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0k��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0����\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'+�K&ɲ�y�[�/b	vm�{}%\"5�v��\�','+�K&ɲ�y�[�/b	vm�{}%\"5�v��\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,12,13,1,1556060529744,12,1556060524130,1),('*�.TЉ\�O��%����\�b�\�L\�R1�0�\�\�\�',14,'\0\0\0q9��T[�0t�o�&\�\�[=\��\�백\�:\0|8q9��T[�0t�o�&\�\�[=\��\�백\�:\0|8X�G\�;|-$���\����\�Ŝ\�\�Z\�\�ty#kBW��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0 ���\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!�<W�.5�:6!��\�d�(�)/Ӽ�\�ö#!�<W�.5�:6!��\�d�(�)/Ӽ�\�ö�\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"CNY\",\n    \"description\" : \"CNY\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1EvM6MUnShSCCY5RgxaC1NgkP7hmabyMo8\",\n    \"publickey\" : \"02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618\",\n    \"signature\" : \"30450221009bfbb992665b644f6ec65e6109cf9c54a866861ee981439ded317b9f708890700220322efcef556e90958ed772f799e5347bc02d259fdeaad764ac5756d64d7b6a89\"\n  } ]\n}',0,'8|\0:籰\�\��\�=[�\�\�&�o�t0��[T��9q','8|\0:籰\�\��\�=[�\�\�&�o�t0��[T��9q','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,26,28,1,1556060510434,26,1556060504688,1),('+�K&ɲ�y�[�/b	vm�{}%\"5�v��\�',27,'\0\0\0@C҃ }�/Svߌi��=��9���Xv��j�\�+@C҃ }�/Svߌi��=��9���Xv��j�\�+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0i��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�\�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'+\��j��vX���9��=��i�\�vS/�} �\�C@','+\��j��vX���9��=��i�\�vS/�} �\�C@','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,13,14,1,1556060529618,13,1556060522394,1),('+\��!�\�A__E\�\�-}�c3\�Z\�	2B�\\-',23,'\0\0\0py��z_\�j&]�^�\�\�M	�G�\�À\�G5`4�.py��z_\�j&]�^�\�\�M	�G�\�À\�G5`4�.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0b��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0Ƽ\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'.�4`5G\�ç\�G�	M�\�\�^�]&j\�_z��yp','.�4`5G\�ç\�G�	M�\�\�^�]&j\�_z��yp','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,17,18,1,1556060520880,17,1556060515198,1),('+\��j��vX���9��=��i�\�vS/�} �\�C@',26,'\0\0\0x\�^�\�\�W�\���4Um�Uצ�$\�\�}O�x\�^�\�\�W�\���4Um�Uצ�$\�\�}O�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0g��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0!V�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'�O}\�\�$��\�U�mU4��\�W\�\�^\�x','�O}\�\�$��\�U�mU4��\�W\�\�^\�x','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,14,15,1,1556060529459,14,1556060520658,1),('.�4`5G\�ç\�G�	M�\�\�^�]&j\�_z��yp',22,'\0\0\0�\�[:�s�\�+V3:b�\�N}r\�)gh�0:WS�z�L�\�[:�s�\�+V3:b�\�N}r\�)gh�0:WS�z�L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0g\�T\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'L�z�SW:0�hg)\�r}N\�b:3V+\�s�:[\�','L�z�SW:0�hg)\�r}N\�b:3V+\�s�:[\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,18,19,1,1556060515037,18,1556060513337,1),('1w	݇\�\�\Z�/x��n�\�\Z�\�\�- b��+ӣ2\�\�',18,'\0\0\0�wڽ���ED�\�\�&?q���x�\0�\r�\�\�T�wڽ���ED�\�\�&?q���x�\0�\r�\�\�T*\"\�\�nv^A������\�\���_x�\�\re�\�-[��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0��Φ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -7,\n  \"toHeight\" : 18,\n  \"prevHash\" : {\n    \"bytes\" : \"agJU9gHuxXYlt8m0H7aBV+HNeK47J2n6lPt3yxchDVw=\",\n    \"reversedBytes\" : \"XA0hF8t3+5T6aSc7rnjN4VeBth+0ybcldsXuAfZUAmo=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'T\�ǡ\r�\0�x��q?&\�\��DE����\�w�','T\�ǡ\r�\0�x��q?&\�\��DE����\�w�','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,22,24,1,1556060510626,22,1556060509386,1),('2�\�T\��7�\�y\�\��bW\ZU\�=�\�\���?',14,'\0\0\0q9��T[�0t�o�&\�\�[=\��\�백\�:\0|8q9��T[�0t�o�&\�\�[=\��\�백\�:\0|8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�\�\r�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'8|\0:籰\�\��\�=[�\�\�&�o�t0��[T��9q','8|\0:籰\�\��\�=[�\�\�&�o�t0��[T��9q','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,26,28,1,1556060510322,26,1556060504923,1),('6\�\�i\�Qj�1t4�k�!w;��\�D\�]���\��Y',30,'\0\0\0�5�͎	�+\��\�\��}u����׌<G�5,�ImC�5�͎	�+\��\�\��}u����׌<G�5,�ImC\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0o��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�l\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'CmI�,5�G<�ק���u}�\�\��\�+�	�ͯ5�','CmI�,5�G<�ק���u}�\�\��\�+�	�ͯ5�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,10,11,1,1556060530069,10,1556060527797,1),('8|\0:籰\�\��\�=[�\�\�&�o�t0��[T��9q',13,'\0\0\0&���fD���SL_/�P�!T+ �@���#�&���fD���SL_/�P�!T+ �@���#�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0V��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�4L\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'�#���@� +T!�P�/_LS���Df���&','�#���@� +T!�P�/_LS���Df���&','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,27,30,1,1556060504038,27,1556060502940,1),(':���667�\\���٨\�M\n\�K�)V\�<\"�\�\��	',9,'\0\0\0&tW�\�$\��+�\�_\�\�8_%�L�>�\�H�\��O&tW�\�$\��+�\�_\�\�8_%�L�>�\�H�\��O\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0Ε}f\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'O�ʧH\��>�L�%_8\�\�_\��+�\�$ИWt&','O�ʧH\��>�L�%_8\�\�_\��+�\�$ИWt&','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,31,34,1,1556060503872,31,1556060499550,1),(';Y���mU�\�\��Q�hFT\�\�\\�\�5}(�\�',15,'\0\0\0?��\�\�=\�U\ZWb�\�\�y\��7�\�T\�2\�\�޿0�1R\�L\��b飬��%��O\�\�T.�*^�?(�=�c\rh]\�\rNhż\�\"��\��\�\�\�Ϻ�\�Z��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0*uY\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,#!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,�\0\0\0\0\0\0\0\0\0\0\0TOKENZ\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"人民币\",\n    \"description\" : \"人民币\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo\",\n    \"publickey\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"signature\" : \"304402203a84c06f57e8a08d9ccc085a2d482f86e149017af9d59a3c6620f7987bab755c0220012cbf610e2494f46b80161a0d83fe48b08fbd6e0faeb9c93d086f62a921cce0\"\n  } ]\n}',0,'2�\�T\��7�\�y\�\��bW\ZU\�=�\�\���?','*�.TЉ\�O��%����\�b�\�L\�R1�0�\�\�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,25,27,1,1556060510434,25,1556060507411,1),(';�Qw/AK�����?�+劔�\���\'��r',40,'\0\0\0c\��u���\��tY������\Zg��\�\'v�&��fIc\��u���\��tY������\Zg��\�\'v�&��fI\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0}��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0\�P_\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'If��&�v\'ۧ�g\Z������Yt�˳��u�\�c','If��&�v\'ۧ�g\Z������Yt�˳��u�\�c','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,0,1,1,1556060548787,0,1556060542535,1),('=S\��2Q�\�t�bB����[����冑�=�wպ',7,'\0\0\0�H\�ԑێ\�CaS~v�Մ\�d\��ؐ1\���\Z�$�H\�ԑێ\�CaS~v�Մ\�d\��ؐ1\���\Z�$SS���Ȫ&J�����91*�+8绐���d7P��\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0!�uW\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0����\0\0\0\0 1w(\0\0\0\0!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g�#!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g��\0\0\0\0\0\0\0\0\0\0\0TOKENP\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"Gold\",\n    \"description\" : \"Gold\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap\",\n    \"publickey\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"signature\" : \"3045022100cf47ce23033aa2071f495f4c22a5e963aac8f79bc344535f29f882428c1d933302204860b2fbc261d0d7bb1f89523741239a04c6807f52bdeb9e810bd910d9ce3961\"\n  } ]\n}',0,'$�\Z��\�1�ؓ\�d\��մv~SaCߎۑ\�\�H�','$�\Z��\�1�ؓ\�d\��մv~SaCߎۑ\�\�H�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,33,36,1,1556060503813,33,1556060499315,1),('CmI�,5�G<�ק���u}�\�\��\�+�	�ͯ5�',29,'\0\0\0?�\�\���a\�&��e\�DY1\��יwᬰ9�\Z9*?�\�\���a\�&��e\�DY1\��יwᬰ9�\Z9*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0m��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0H\0\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'*9\Z�9��\�w�\��\�1YD\�e��&\�a��ַ\��?','*9\Z�9��\�w�\��\�1YD\�e��&\�a��ַ\��?','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,11,12,1,1556060529744,11,1556060525973,1),('If��&�v\'ۧ�g\Z������Yt�˳��u�\�c',39,'\0\0\0�O�ND;\�\�6;%��K�\�C:�v�!�#o�\�DR�O�ND;\�\�6;%��K�\�C:�v�!�#o�\�DR\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0{��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�\�dG\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'RD݋o#�!�v�:CƥK��%;6\�\�;DN�O�','RD݋o#�!�v�:CƥK��%;6\�\�;DN�O�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,1,2,1,1556060548728,1,1556060540699,1),('J�\�\�H\�y\�I=�ҧ\��m=o�R%\�鏫',24,'\0\0\0-\\�B2	\�Z�\�3c�}-\�\�E__Aȴ!�\�+-\\�B2	\�Z�\�3c�}-\�\�E__Aȴ!�\�+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0\��U\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'+\��!�\�A__E\�\�-}�c3\�Z\�	2B�\\-','+\��!�\�A__E\�\�-}�c3\�Z\�	2B�\\-','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,16,17,1,1556060520880,16,1556060517050,1),('J\�\rx*�d\�\�AϺQzk��Wķ�G\�^IB*$\��',20,'\0\0\0\r\�\�\��\��֮��\�JY��β�>��j���]\�\�P�\�\�\��̹z��Y\�@G�UGѩ��\Z2�K�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�o\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,']���j��>��ζ�YJޑ��־\��\�\��\�\r','�K�2\Z���\�GU�G@\�Y��z�̠\�\�ޛP\�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,20,21,1,1556060514970,20,1556060511331,1),('R3Lք\�c\�̧\�+�4OF�6v�d�?л!\�F?',32,'\0\0\0/s\�\'���u\�\�p�\�\�0���k4!MD\�\�\�/s\�\'���u\�\�p�\�\�0���k4!MD\�\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0r��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�J�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'\�\�\�DM!4k���0\�Ǣp\�\�u���\'\�s/','\�\�\�DM!4k���0\�Ǣp\�\�u���\'\�s/','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,8,9,1,1556060540484,8,1556060531377,1),('RD݋o#�!�v�:CƥK��%;6\�\�;DN�O�',38,'\0\0\0�\�#/�Q�RVyPyR1\�\�o{\'��*\�:�G\�%�\�#/�Q�RVyPyR1\�\�o{\'��*\�:�G\�%͚�g\�\Z5��C\�ɑ��\��\�a�\�\�I�mbyy��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\04��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 11,\n  \"toHeight\" : 38,\n  \"prevHash\" : {\n    \"bytes\" : \"MXcJ3Yfi3xq6L3j+lG6azRq91NktEiBigqor06My6Mw=\",\n    \"reversedBytes\" : \"zOgyo9MrqoJiIBIt2dS9Gs2abpT+eC+6Gt/ih90JdzE=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'%\�G�:\�*��\'{o\�\�1RyPyVR�Q�/#\��','%\�G�:\�*��\'{o\�\�1RyPyVR�Q�/#\��','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,2,3,1,1556060548610,2,1556060539717,1),('`\�L\�\�$<\�$V�C.\�\�\�\�\�qS�\��ƽ�Jk',35,'\0\0\0?����{�3K\�^J�RBG�Q�\�-Ӿ\�넰?����{�3K\�^J�RBG�Q�\�-Ӿ\�넰\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0\\C\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'��\�Ͼ\�-ߙQ�GBR�J^\�K3�{����?','��\�Ͼ\�-ߙQ�GBR�J^\�K3�{����?','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,5,6,1,1556060540597,5,1556060536733,1),('jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�,G�����˓\�l���?��yδ\�l�\�eEHm#^[\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0\0�Ƥ~�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,40,43,1,1556060269713,40,1556060269530,1),('lk��sᆹ�r\�#���u�ۑ�\��U8�c',16,'\0\0\0\��(}5\��\\\�\�TFh�Q�\�ơUm���Y;\��(}5\��\\\�\�TFh�Q�\�ơUm���Y; ) /�\�\�x�o��TBC�/\�KK�\�\��J�sDZ��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�U\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 1,\n  \"toHeight\" : 13,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"agJU9gHuxXYlt8m0H7aBV+HNeK47J2n6lPt3yxchDVw=\",\n    \"reversedBytes\" : \"XA0hF8t3+5T6aSc7rnjN4VeBth+0ybcldsXuAfZUAmo=\"\n  }\n}\0\0\0\0\0\0\0\0',0,';Y���mU�\�\��Q�hFT\�\�\\�\�5}(�\�',';Y���mU�\�\��Q�hFT\�\�\\�\�5}(�\�','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,24,26,1,1556060510434,24,1556060507727,1),('v/	�^\�D\�=\�ҍ<\�\�LA�\�\�\"`w�-c\n',33,'\0\0\0?F\�!�\�?�d�v6�FO4�+Χ\�\�c\�\�L3R?F\�!�\�?�d�v6�FO4�+Χ\�\�c\�\�L3R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0t��\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0l�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'R3Lք\�c\�̧\�+�4OF�6v�d�?л!\�F?','R3Lք\�c\�̧\�+�4OF�6v�d�?л!\�F?','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,7,8,1,1556060540484,7,1556060533114,1);
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
INSERT INTO `ordermatching` VALUES ('1w	݇\�\�\Z�/x��n�\�\Z�\�\�- b��+ӣ2\�\�',18,1,1,'RD݋o#�!�v�:CƥK��%;6\�\�;DN�O�',2,'jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\'),('RD݋o#�!�v�:CƥK��%;6\�\�;DN�O�',38,1,0,NULL,2,'1w	݇\�\�\Z�/x��n�\�\Z�\�\�- b��+ӣ2\�\�'),('jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\',0,1,1,'1w	݇\�\�\Z�/x��n�\�\Z�\�\�- b��+ӣ2\�\�',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
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
INSERT INTO `outputs` VALUES ('K�\��p�І�\�L�gP#�VЄB�\�[�\�:]\"4e',0,678900000,'!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re��','1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT',2,1,']���j��>��ζ�YJޑ��־\��\�\��\�\r','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',NULL,NULL,0,1,0,NULL,1556060509),('7d�����\�8+�*19�����J&�ȣ��SS',0,678900000,'!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g��','1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap',2,1,'=S\��2Q�\�t�bB����[����冑�=�wպ','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',NULL,NULL,0,1,0,NULL,1556060499),('\Z���U2RM\�}1\�����\�\�\�SN\���!',0,130,'v�\�\�\�稒\n\�o\�\�L�I�\\�Ԉ�','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'lk��sᆹ�r\�#���u�ۑ�\��U8�c','bc',NULL,NULL,0,1,0,NULL,1556060510),('Bk#yt\�\�Z\�֜\�ı��얱�$-|;\�G�X',0,678900000,'!�<W�.5�:6!��\�d�(�)/Ӽ�\�ö�','1EvM6MUnShSCCY5RgxaC1NgkP7hmabyMo8',2,1,'*�.TЉ\�O��%����\�b�\�L\�R1�0�\�\�\�','02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618',NULL,NULL,0,1,0,NULL,1556060504),('HEe\�l\�\�y��?���lߓ\������G,\�\�',0,1000000000000000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\','bc',NULL,NULL,1,1,1,'C��:�]u����jʎImk��CN\�\�q��\�',0),('��	�l0��[�\��\�4��%JV�>�QGY��3',0,4,'v�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��','1111111111111111111114oLvT2',1,1,'��o��\��b�?�\�r/2\��N\�Q\�\�r�\�','bc',NULL,NULL,0,1,0,NULL,1556060540),('��	�l0��[�\��\�4��%JV�>�QGY��3',1,40,'v�\�\�\�稒\n\�o\�\�L�I�\\�Ԉ�','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'��o��\��b�?�\�r/2\��N\�Q\�\�r�\�','bc',NULL,NULL,0,1,0,NULL,1556060540),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',0,3500000,'v�]�n�\�LJ�\�%�ũ���䮈�','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',1,25000000,'v���\�rY�	�&�\�`�\�M��','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',2,500000000,'v�i\�\�Ƒhճk%\�C��}�����','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',3,800000000,'v�\�˔!�V%�C.\"D\���<N� ��','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',4,10000000,'v��j߇������=<I(\����','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',5,50000000,'v���\�4�%n\�\�v\�6�0�I^�','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',6,2000,'v��\�N\�\�ؐ�B(�v���s�M��','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',7,100000000,'v����q�$�5�\\�Gf颈�','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',8,6000000000,'v��B�^��42�;y�ʯŽe٤��','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',9,10000000000,'v�$^i\�\�\�sٯ&?0�$ܓ�f\�6��','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',10,5500000,'v�\�S�cD�\�t��\�;\�\�/[���','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',11,250000000,'v�\�9 �Mjƀ��{�q\�\�Akx���','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',12,1000000000,'v�ՙ�y�\�]�)��\��\�o,��','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',13,500500000,'v�P�y\�P�\�\�>\�L�\�<�,2�`��','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',1,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�\�L�\�\�\�;�j�/��V�~\�\\ &qL�\�t',14,999980755498000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'C��:�]u����jʎImk��CN\�\�q��\�','bc',NULL,NULL,0,1,0,NULL,1556060415),('�%jVd \��\�\��\�f�\�4h\rl\�g\�u^c0�',0,678900000,'!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�','14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws',2,1,'\"�C�JF\��3ᙓf�\�*������\�\�&!F\�','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',NULL,NULL,0,1,0,NULL,1556060499),('ل�\�\�>�lvFDy79�@�\�J\�a3(',0,678900000,'!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v�','1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8',2,1,'�#���@� +T!�P�/_LS���Df���&','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',NULL,NULL,0,1,0,NULL,1556060502),('\�5B\�r��ra\"�<Vd���|\�%	�\�9\ZI',0,678900000,'!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<�','1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP',2,1,'L�z�SW:0�hg)\�r}N\�b:3V+\�s�:[\�','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',NULL,NULL,0,1,0,NULL,1556060512),('抺\�\�\�ν\���\"ܼ\�hN\r\�]h\rc�=�(?�^',0,678900000,'!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,�','1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo',2,1,';Y���mU�\�\��Q�hFT\�\�\\�\�5}(�\�','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',NULL,NULL,0,1,0,NULL,1556060507);
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
INSERT INTO `tips` VALUES (';�Qw/AK�����?�+劔�\���\'��r');
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
INSERT INTO `tokens` VALUES ('0b12b723b68f19b30640f720072b54218550ad2f5f4c53f4b4f644668ba7a426',1,'027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',0,678900000,'ETH','ETH',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('114cf47a9c53573a308e686729c5727d4ee481623a33562be6a473a23a5be59b',1,'0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',0,678900000,'EUR','EUR',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('185d8eff9c6ab0ad3e0ea4b2ceb6a0594ade91b4aed6be1feafee4eb059fe80d',1,'0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',0,678900000,'USD','USD',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('22a343a94a46c4f28a9833e1999366bae2be2a87bda99bf7fce20ed6262146c7',1,'03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',0,678900000,'BTC','BTC',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('2a8d2e54d089e54f9b8d25f9801214aca3e9628617c64cda5231c130bfdedfe9',1,'02803c57b22e35fe1f3a15360e2116b3f2c264b628f3292fd3bc7f8ae796c3b618',0,678900000,'CNY','CNY',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('3b59bdfd836d0655a1c60fe9f75189684654dfdf5cf3e40e357d0e28841f18c6',1,'02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',0,678900000,'人民币','人民币',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('3d53e09c325184ce74fb6242b19ff5be5bbbf81395bde58691bd1e3dbf77d5ba',1,'028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',0,678900000,'Gold','Gold',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('6a0254f601eec57625b7c9b41fb68157e1cd78ae3b2769fa94fb77cb17210d5c',1,'bc',0,0,'bc','BigTangle currency',NULL,1,0,1,'',0,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `txreward` VALUES ('��o��\��b�?�\�r/2\��N\�Q\�\�r�\�',33,1,0,NULL,2,'lk��sᆹ�r\�#���u�ۑ�\��U8�c',8),('jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\',0,1,1,'lk��sᆹ�r\�#���u�ۑ�\��U8�c',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',10),('lk��sᆹ�r\�#���u�ۑ�\��U8�c',13,1,1,'��o��\��b�?�\�r/2\��N\�Q\�\�r�\�',2,'jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\',2);
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
