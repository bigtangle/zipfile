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
INSERT INTO `blocks` VALUES ('��>�ߙRZ4\�\��v	��2U2�OU�,t2',1,'\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\���E\��\�+6a3:!�ks\�\�搲k?\0��EBh8�\�H]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�\���쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�\�Ic3�\�\�h6 �q)\�{�nD�ZY��j<�F\0\0\0\0IH0E!\0��\��\n5ﮗN)8\�w�@������F�`\r	� 4!\���袓���G�u-\'P����|���j\�*����\0\0\0\0�rN	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�47�M\0\0\0�v������u�\0O}wW\�d���̚;�\�\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�쓅�R�G\�*Jr�\�\�#�1D',NULL,1,100,3,4,1,1560367198426,3,1560367197076,1),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>',4,'\0\0\0Q8�\�e\�tz晾\�o\�\�\�T0�\��>�(��\�{�<Q8�\�e\�tz晾\�o\�\�\�T0�\��>�(��\�{�<Ҡj�l����\��U>Cʍ\�~���v\�IS]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�\�,�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0�����Z\Z��\��Cۘ*O�\�	�\�\�jǴ\�_\Z]\0\0\0IH0E!\0�]\�\�f�÷�y0��.�\��vO�/L���p�>\� 5a\�ma\�M�W*\�\0�tkS�)s�[\�\\Nzy \\�����\0\0\0d�\�y/\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�47�M\0\0\0�v������u�\0O}wW\�d���0��\�\�\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'<�{\��(�>�\��0T\�\�\�oƾ�\�zt\�e\��8Q','<�{\��(�>�\��0T\�\�\�oƾ�\�zt\�e\��8Q','�쓅�R�G\�*Jr�\�\�#�1D',NULL,1,100,0,1,1,1560367903372,0,1560367902182,1),('2X9��&ٰ\�\�\���ۂҢ\�>\�g\�\�\�\�8\�',2,'\0\0\02t,�UO�2U2��	v�\�\�4ZR�\��>��2t,�UO�2U2��	v�\�\�4ZR�\��>��MF�\�%\Z�Պ[?\�]~߰|��\�:�\���\���H]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0b~��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0�E\��\�+6a3:!�ks\�\�搲k?\0��EBh8�\0\0\0HG0D )�\�U\�Φ����}�OV}\�4UK����ϙgm� \\_����\'w{Nކ�\0>2h\�G\�jg\'\�\�3Od����\0\0\0̚;�\�\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�47�M\0\0\0�v�gg%Ջ��̸�/�\�\�h�C����}\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'��>�ߙRZ4\�\��v	��2U2�OU�,t2','��>�ߙRZ4\�\��v	��2U2�OU�,t2','�쓅�R�G\�*Jr�\�\�#�1D',NULL,1,100,2,3,1,1560367198584,2,1560367197599,1),('<�{\��(�>�\��0T\�\�\�oƾ�\�zt\�e\��8Q',3,'\0\0\0\�8\�\�ֈ\�g\�>¢҂\���\�\�ɰ\�&��9X2\�8\�\�ֈ\�g\�>¢҂\���\�\�ɰ\�&��9X2�����Z\Z��\��Cۘ*O�\�	�\�\�jǴ\�_\Z]S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�\�~�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0MF�\�%\Z�Պ[?\�]~߰|��\�:�\���\��\0\0\0HG0D ROV�ü�T<�Y�R;��(L�\�r�z\�\n�/� V�\�$\�\�g	г\�q�\0���g\�\rή�	�\�>��\�����\0\0\0��}\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�47�M\0\0\0�v�gg%Ջ��̸�/�\�\�h�C��d�\�y/\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'2X9��&ٰ\�\�\���ۂҢ\�>\�g\�\�\�\�8\�','2X9��&ٰ\�\�\���ۂҢ\�>\�g\�\�\�\�8\�','�쓅�R�G\�*Jr�\�\�#�1D',NULL,1,100,1,2,1,1560367885401,1,1560367883285,1),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�\�Ic3�\�\�h6 �q)\�{�nD�ZY��j<�Fm#^[\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0\0�rN	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,4,5,1,1560367190357,4,1560367190157,1);
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
INSERT INTO `multisign` VALUES ('0959b0ed136a4b47a4a1df0b34f4c365','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',0,'1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r\rA\'�	�|��\Z>�	3S�-\�\�h��@�	�\n�%;S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0��\"��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,#!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-人民币\",\n    \"description\" : \"test-1-人民币\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo\",\n    \"publickey\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"signature\" : \"3045022100acf0f58d7e8ea8465f74525da4d8eb133ec18720f9ab068c85f6b786ac3732a402202ea5a6345715fe11ed218e07c241329f3d743520a9bc5441f591edcf2852ac35\"\n  } ]\n}',1),('163aa9c532eb4c839dbe86bc17d50c57','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',0,'1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r�G!гt�c2\�TY�\�\0��N��}��Җ\�\�O�;S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0 ��\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\Z\0����\0\0\0\0 1w(\0\0\0\0!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v#!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-ETH\",\n    \"description\" : \"test-1-ETH\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8\",\n    \"publickey\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"signature\" : \"30450221008b0ffaf8f8f4d057c677dd2ab4d5361aca77fbdf8175bd48215f34b4c5003da40220345d956878bdb2ebaf2ff9ad6196aaf8e1f6e2bd38c9a5d43a9e59a3ce09c90e\"\n  } ]\n}',1),('206da7eac57e413d954b158373863492','036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca',0,'1DhZ1MX7TRG9tF4dNogyodzYGXostYMANS','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\rB4�[n��;\�]2͕\���ϴ�\�) 6jt�)Ji=S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\��E�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!k܋\0��\�\�F��\�}�q\nE\�y��TU\�̟�ץ\�#!k܋\0��\�\�F��\�}�q\nE\�y��TU\�̟�ץʬ\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-2-BTC\",\n    \"description\" : \"test-2-BTC\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1DhZ1MX7TRG9tF4dNogyodzYGXostYMANS\",\n    \"publickey\" : \"036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca\",\n    \"signature\" : \"3045022100f81ee9870d9aeff18f880815d899dca15b7e26e4dcfb20f911b66ca8ddf7df4c02205b5d92f4caada83d440b6efe90c562125ed08f488ff41d39911891341375d8ed\"\n  } ]\n}',1),('422219bedc7e43b6ab297381f9d05041','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',0,'1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\rG�Q0L\�1\�}�u�� �\�y<\�\�siN\n��D\�<S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�żQ�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<#!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-EUR\",\n    \"description\" : \"test-1-EUR\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP\",\n    \"publickey\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"signature\" : \"304402207ef3f0823b0ea7ebe0adc512babeebb8ae687f8f789d54e77cf72c8a3b73223e022004ce7ac8b146777fe565bf487283c7d58676317f9fc0eabacae3c7b8b70ebe06\"\n  } ]\n}',1),('447a8329635c4f9e95b243df9ec44eff','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',0,'1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\rE꨺,�c\��\"�?!��\Z-Y�\�p��\�\�[��;S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�x�%�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g�#!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g��\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-Gold\",\n    \"description\" : \"test-1-Gold\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap\",\n    \"publickey\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"signature\" : \"30440220750b37bf66a57872284992733273b99da75261d39285dea5b09e6eedfba265ac022078912fa3184eb6487892a5a832b028cea25c659decc78418bb82123a3b2e5fa2\"\n  } ]\n}',1),('5491c19265b946cf89c3460afac808ab','020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81',0,'19SgkC33Mee39yB8CQtxzobruSko1sQRMN','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\rβQ_S��뚁Ѫ���\�D�G�7����PC��\�\�=S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0>˾��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���� \0����\0\0\0\0 1w(\0\0\0\0!\r��@UᢞnHVi+\�\�0b�\�^\�a�!\�?\�b�\Ź#!\r��@UᢞnHVi+\�\�0b�\�^\�a�!\�?\�b�\Ź�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-2-ETH\",\n    \"description\" : \"test-2-ETH\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81\",\n    \"tokenindex\" : 0,\n    \"address\" : \"19SgkC33Mee39yB8CQtxzobruSko1sQRMN\",\n    \"publickey\" : \"020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81\",\n    \"signature\" : \"3045022100cc67db89a5827350653e3b5fcf20fe7e68ac29aa794ae733af1cb3556d5d3d6302205dcb4e0272de2071b39504925c9c52fee3321d6054146fcea0fa70fe859c480f\"\n  } ]\n}',1),('73628e709e7b4eb4bed50c107d46f712','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',0,'14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r\�\�\�\�\�P��\��Z~\�ĽU;W3R�2d|!!����;S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�/\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�#!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-BTC\",\n    \"description\" : \"test-1-BTC\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws\",\n    \"publickey\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"signature\" : \"304402203bb9bc7af3ead2794941bf998bf196b5aa465534956518a80817609beb3be0b8022069ca1d5a6fb9050ce95c4cc913f6bfe4d471e0cb728dacb42eed9fa08a437ee7\"\n  } ]\n}',1),('8babf93ce1d04f84ba4f38a3bb2526be','03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f',0,'17fmaEbQU1aEr81MAqQpVGfjc31RTXfpyy','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r\�HU:\nܨ,�4E��h�FO��~\�2.\�o^�:S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�737�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\� ��Ts�\�\�M\Z\�c6\�\�[���\�Ob�\r\�_#!\� ��Ts�\�\�M\Z\�c6\�\�[���\�Ob�\r\�_�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-2-EUR\",\n    \"description\" : \"test-2-EUR\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f\",\n    \"tokenindex\" : 0,\n    \"address\" : \"17fmaEbQU1aEr81MAqQpVGfjc31RTXfpyy\",\n    \"publickey\" : \"03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f\",\n    \"signature\" : \"3045022100af148fe1bd944e14010bc82884eddb2d8c93695f79fe2ab03d8983bc5cb1c11302201280f1635031f494ebec2adc1409ed400fc3aa324c3a77ea30345eb15404d235\"\n  } ]\n}',1),('a8068e43c85a442eb7801d7d99f63762','020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9',0,'157jTUSRaos9MpGaNu72tEk2D2dYt28Rpd','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r�2tĥg���ܩE�\�h�[�\�P�e�%-\����U<S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0{\�S��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\�\�\�?z)|\0	��g\'\�e�l\nU\�\��j\�\�\�#!\�\�\�?z)|\0	��g\'\�e�l\nU\�\��j\�\�٬\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-2-Gold\",\n    \"description\" : \"test-2-Gold\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9\",\n    \"tokenindex\" : 0,\n    \"address\" : \"157jTUSRaos9MpGaNu72tEk2D2dYt28Rpd\",\n    \"publickey\" : \"020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9\",\n    \"signature\" : \"30450221008ff82977ba8a23a17ee7cb62d42666829d20042542b5364aabf5a535b592585802205150b0fdb841a20f95fc1660ec04e15de25ff2129c4411462501a5be5f542edd\"\n  } ]\n}',1),('b32845089a5245a2b692fd89d1ea7dea','02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b',0,'1L6pdXCtLTcTutCNAQoCXUCMgZBP8Uwzxh','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r1\�9�_\�0Z\���Dc�y�O~�y\�P\�!�&A\�:S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\07\\�\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\��Px�m�g�!S�o�*@2��72\0\�Y�T@sek#!\��Px�m�g�!S�o�*@2��72\0\�Y�T@sek�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-2-USD\",\n    \"description\" : \"test-2-USD\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1L6pdXCtLTcTutCNAQoCXUCMgZBP8Uwzxh\",\n    \"publickey\" : \"02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b\",\n    \"signature\" : \"304402205276782941c70d20cc76bcc3fd89df44601833f5c32dc1cbe414219e99aa072f02201891f980242dd5f8f9727f931603088455e3b32080f3f2f0c66c25d9f33e0407\"\n  } ]\n}',1),('d0b2fe2dd9084ff3a38f52cb35066282','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',0,'1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\ro�@ۖ�/�4CU3u�d�h�uX�O�N��u����<S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0r\Z�7�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re�#!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re��\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-USD\",\n    \"description\" : \"test-1-USD\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT\",\n    \"publickey\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"signature\" : \"3045022100e8030ab303d25966bf78d45f2e88d7a70435bf6b9970b97d1e045410281060600220593e37c0097bc0891bd88e7a7bfb69d83b10a73f10950b36524d4bedfef4801c\"\n  } ]\n}',1),('e9b285792849400ba6e3c3a73db6ed6b','037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6',0,'1FNpperFoPx3ojrLjMHLXRpicyDhH3jmeG','\0\0\0>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r>�\�U`\� ��\�Ӽ	\�l��+\�Ϋ��\�}Y3\r�x\�:q񿂒`�@丛[��v\�\�JT�m�y,\�1=S]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�F��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����!\0����\0\0\0\0 1w(\0\0\0\0!{v�6����\�\r\�\�S�b�g\�c�mŜ���`H�#!{v�6����\�\r\�\�S�b�g\�c�mŜ���`H��\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-2-人民币\",\n    \"description\" : \"test-2-人民币\",\n    \"domainname\" : \"de\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1FNpperFoPx3ojrLjMHLXRpicyDhH3jmeG\",\n    \"publickey\" : \"037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6\",\n    \"signature\" : \"3045022100ead64cc8479ad3d9e59492dc36654d649bcb4e9077d66ca1c105ec3e4bd1ba9d02201a5e782125fac3dbacef484cb51398d8c3ce42db948669af43913a3a8a5c47eb\"\n  } ]\n}',1);
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
INSERT INTO `myserverblocks` VALUES ('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','\0U\�\�\�\��3�z�\�dh\�6\�\���!�=�',1560367929742),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','��\�v�\r]4\"\�f�U�ƺ륃�w\�ͬ�',1560367932763),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','	$\�@\��e4\�r>\Z\�\�\�\���uԬ�-Ӕ�\�U',1560367929479),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','����K����܀T�5xϛB\�@WBf6Z',1560367927848),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','!�]��\�A�ٛݷ%��\r\�L\�Ǽ}6�\�e�',1560367928980),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','$j\�R_\Z�\�\�\�J�z�j�\�\r\�_V��\�)',1560367931876),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','1o�[L�\�\��7\�+\�\�˸(f�/�I�V�b\�',1560367925179),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','=��CY�V\0�n��\�\�M\�r\�\�hi7.�˭t',1560367925825),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','H\��\�\�*�\�<�\�V�\"�\�\�>K�H\�4����',1560367928706),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','K&p;9\�J���!��\�,\�i�w,�\�HB&V�/�',1560367931209),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','O�޺�\��K_�\�CI�ͷ%K�i�\�F#�Ln',1560367926789),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','RF0I\�8�UH̚�g�@\�QAh\"�!~ζFE�',1560367924056),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','V״R��\��Tp9\�P3�n\�+.f�\� 5\�2�.\�',1560367930110),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','e5}$\�a\Z��ؙ\�܆$v\�\�}O�P�y\��\�\�\�',1560367927571),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','p\�Ѷ�WGN\��\�\�$��\�\�[\�.F=z��I�',1560367933077),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','p�=\��\�B�n`�6Ȃ\�\�F\��\�(_$6+Kt漽',1560367926138),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','sV\�\�\�zRO\�8Mw�|�B\���ka�}�oN��M�',1560367929224),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','}2��\�R��w�T	��@��ª\�aC\�Z!���J',1560367925495),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','��.�<��sY�\�\�\0\�O~�>���\�\�\�h',1560367927026),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','�ܩX\�\���_\�>#\�\�_n|\�\�8\�Nj\�\�`',1560367923304),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','�:�sG#���1��C���Y�l\�3�ho/�\�.d',1560367926439),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','��#�\�\�\��\�\�`��IѤ�K\�J\��;n]6�\�!\�',1560367924330),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','��h~kbd|V�\�\�\�#>�����4͓r���J>',1560367932487),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','��ܠ�(\�@j5��)��a�\�;[n��:�G\�[K',1560367930366),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','�4���q�m\�{�c\�~zCéCǽ�0^���',1560367924916),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','�Hd\���\�H`�\�\'\�\�\�]5\�,|c\' Lt�\�k',1560367923671),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','���hD�]`�$�\�<���v\�N��\r*@<\�\�o\�',1560367932136),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','�~dI\�X\�;d\�0��FLT�\�嫬\�e}\�d�<�H`\�',1560367924592),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','�\�IY1Xxm��&6\�\0���r;Wb\�S��\�{',1560367922889),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','\�<�2Hx�	�TY&�lZ�\�E����┫vD�',1560367928453),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','\�E�H��`\�YvQ\0U�z\�i.#3V4Ώes߯O',1560367931549),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','\�c:\�\�:I�뵲Jk�\\|����_G%t\�\r\�\�',1560367930634),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','\�\�o5��\�-\�(v\���J\�\�=1\�xo�>��\'',1560367930895),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','�\�\\�3\�dkq_].\"�{a�}v7U\��%�.��',1560367927280),('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','�T�Z\�M\�>\�CE�{�r%��l\�\��C���eIT',1560367928184);
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
INSERT INTO `ordermatching` VALUES ('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9',0,1,0,NULL,2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
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
INSERT INTO `outputs` VALUES ('F�<j��YZ�Dn�{\�)q� 6h\�\�3cI\�\�\�',0,10000000000000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','bc','',NULL,1,1,1,'��>�ߙRZ4\�\��v	��2U2�OU�,t2',0),('I\�v���~\��\�C>U�ذ���l�j�\�',0,333333333300,'v������u�\0O}wW\�d���','1Wu86c2Pbsm4GGSLzkzogdRNQcmQiz27U',1,0,'\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','bc','1Wu86c2Pbsm4GGSLzkzogdRNQcmQiz27U',NULL,0,1,0,NULL,1560367902),('I\�v���~\��\�C>U�ذ���l�j�\�',1,8666666666800,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>','bc','',NULL,0,1,0,NULL,1560367902),(']\Z_ȴ\�j�\�\�	ވO*�\�C�����\ZZ�����',0,333333333300,'v�gg%Ջ��̸�/�\�\�h�C��','1ARkAbNXUo3HBUK8PnXBcfbaW2fbTn7bnF',1,0,'<�{\��(�>�\��0T\�\�\�oƾ�\�zt\�e\��8Q','bc','1ARkAbNXUo3HBUK8PnXBcfbaW2fbTn7bnF',NULL,0,1,0,NULL,1560367883),(']\Z_ȴ\�j�\�\�	ވO*�\�C�����\ZZ�����',1,9000000000100,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'<�{\��(�>�\��0T\�\�\�oƾ�\�zt\�e\��8Q','bc','',NULL,1,1,1,'\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>',1560367883),('�8hBE��\0?k��\�\�\�sk�!:3a6+\��\�E�',0,333333333300,'v������u�\0O}wW\�d���','1Wu86c2Pbsm4GGSLzkzogdRNQcmQiz27U',1,0,'��>�ߙRZ4\�\��v	��2U2�OU�,t2','bc','1Wu86c2Pbsm4GGSLzkzogdRNQcmQiz27U',NULL,0,1,0,NULL,1560367197),('�8hBE��\0?k��\�\�\�sk�!:3a6+\��\�E�',1,9666666666700,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'��>�ߙRZ4\�\��v	��2U2�OU�,t2','bc','',NULL,1,1,1,'2X9��&ٰ\�\�\���ۂҢ\�>\�g\�\�\�\�8\�',1560367197),('�щ�Ѡ:�\���|�\�~]\�?[�ռ\Z%ҳFM',0,333333333300,'v�gg%Ջ��̸�/�\�\�h�C��','1ARkAbNXUo3HBUK8PnXBcfbaW2fbTn7bnF',1,0,'2X9��&ٰ\�\�\���ۂҢ\�>\�g\�\�\�\�8\�','bc','1ARkAbNXUo3HBUK8PnXBcfbaW2fbTn7bnF',NULL,0,1,0,NULL,1560367197),('�щ�Ѡ:�\���|�\�~]\�?[�ռ\Z%ҳFM',1,9333333333400,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'2X9��&ٰ\�\�\���ۂҢ\�>\�g\�\�\�\�8\�','bc','',NULL,1,1,1,'<�{\��(�>�\��0T\�\�\�oƾ�\�zt\�e\��8Q',1560367197);
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
INSERT INTO `tips` VALUES ('\r3Y}Ǡ��\�\�+��l\�	�ӑ\�� \�`U�\��>');
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
  `domainnametokenid` varchar(255) DEFAULT NULL,
  `decimals` int(11) DEFAULT NULL,
  PRIMARY KEY (`blockhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES ('8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',1,'bc',0,0,'bc','BigTangle currency',NULL,1,0,1,'',0,NULL,NULL,0,NULL,NULL,NULL,2);
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
INSERT INTO `txreward` VALUES ('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9',0,1,0,NULL,2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',10);
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
INSERT INTO `unsolidblocks` VALUES ('~\�t�@\�\�|{\�\��t\��ġ]�n���jc�\�p','\0\0\0\�\�uD�7�j\���7\n>�O`\�[G�{l_�8\�\�uD�7�j\���7\n>�O`\�[G�{l_�8�Q��\�\��1�%DP\�a0�\�S\�H\r\�-�z�\��q���]\0\0\0\0�� \0\0\0\0=\0\0\0\0\0\0\0��A�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\�\0\0\0\0\0\0\0\0\0�tbZ,eGH�\�j�v����SP�JIc�70�\�\0\0\0IH0E!\0�\�M\Z�?_���\�я��a��\�\�{�\�b8l�OB �\'�p#���\�N��d*x3k�Pѡ\�+\�.>\��0)����\0\0\0 \�\�q�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u��\�-\0\0\0\0\0�v�dǺ�ڐ}����OyWK����`�q�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',1560386693,2,'8�_l{�G[\�`O�>\n7���\�j�7�Du\�\�',746);
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

-- Dump completed on 2019-06-13  2:10:01
