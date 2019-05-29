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
INSERT INTO `blocks` VALUES ('�[\�3�;��\�IA;DG0\�v\���J�r�\�*',19,'\0\0\0MS\�Q��B	R\\�\�˘(	\r�v��+�I�\�7MS\�Q��B	R\\�\�˘(	\r�v��+�I�\�7��2�J7g�u�4��1�R\�\�\�Nkw\�*\�/�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0j�9�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 3,\n  \"toHeight\" : 19,\n  \"prevHash\" : {\n    \"bytes\" : \"JkfcSo1Am661l6Vnz9lFk3hCsjsV1eFYt475IfX/VJw=\",\n    \"reversedBytes\" : \"nFT/9SH5jrdY4dUVO7JCeJNF2c9npZe1rptAjUrcRyY=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'7�\�I�+�v�\r	(�\�\��\\R	B��Q\�SM','7�\�I�+�v�\r	(�\�\��\\R	B��Q\�SM','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,3,4,1,1559081783721,3,1559081776444,1),('~\�/���\�ߜ\�\�\�i�\�W\\E��O|~$a�fg',14,'\0\0\0=x�\�Ƭ\�9�\���\'�^VJ�\�у޽\r\�$=x�\�Ƭ\�9�\���\'�^VJ�\�у޽\r\�$?10ח���g�� �>\���\�\�>\�Fǎ�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0��h\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v#!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"ETH\",\n    \"description\" : \"ETH\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"245c9a5109bc0af4161291fde9e46f36cb1b3e3fe371d88d465a64daccd65dd1\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8\",\n    \"publickey\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"signature\" : \"304402204ec5fab767cbb03f0ec5c2da2efeadda964a01f93f85a94153063cef0c9e4ab8022036d559f5757375830538189740236cf85b1bb2780a62fed53b960aee0d26d263\"\n  } ]\n}',0,'$\�\r�ރ\�ǇJV^�\'���\�9\�\�\��x=','$\�\r�ރ\�ǇJV^�\'���\�9\�\�\��x=','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,8,10,1,1559081760088,8,1559081758352,1),('>Ȗ�\�&�@�W�e(�\�7�SV����\�_�\r',12,'\0\0\0�\�\�\�c�kQ�&�\�p\�ּ&\�yr�\\?	�\�\�\�c�kQ�&�\�p\�ּ&\�yr�\\?	��H�s\Z!AƸ��\�&jV0\�G���Ms\�0k�\Z�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0a�SS\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0����\0\0\0\0 1w(\0\0\0\0!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g�#!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g��\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"Gold\",\n    \"description\" : \"Gold\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"382784b7efa69bbad75177150d2324de78d4987c897a7addfc70a915c20678a5\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap\",\n    \"publickey\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"signature\" : \"3045022100f88b11d27e3e16757475d1af9df3b027f54dfe5a914e70a80b83f33b67d3944a022042d1d60c809a0d3c00ee6e0af9afef9880d811ce929cd46675a3d8f557d47284\"\n  } ]\n}',0,'	?\\�ry\�&�֗\�p\�&�Qk�c\�\�\��','	?\\�ry\�&�֗\�p\�&�Qk�c\�\�\��','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,10,12,1,1559081756719,10,1559081754820,1),('PH�q\����x\�]%�\�`�\�;��<�FIR�\�',15,'\0\0\0gf�a$~|O���E\\W\�i\�\�\�\�Π��/\�~gf�a$~|O���E\\W\�i\�\�\�\�Π��/\�~�c��\'�:Π\�s�1�B��\�\r�����\�� �\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�5&\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,#!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"人民币\",\n    \"description\" : \"人民币\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"395745d4dc4094d602ad453e8a098bac5dae6cf6b520f76d3c9d58c434420029\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo\",\n    \"publickey\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"signature\" : \"30440220327d73423642a6d628cdca92e9b7a3ec410981f03d9a0cecb7fe0042c4deeaf202202fe5e75c75bf9e2fe02e8cb44fa084be7a782bc85b5e768b71899c74946aa615\"\n  } ]\n}',0,'~\�/���\�ߜ\�\�\�i�\�W\\E��O|~$a�fg','~\�/���\�ߜ\�\�\�i�\�W\\E��O|~$a�fg','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,7,9,1,1559081763058,7,1559081760775,1),('	?\\�ry\�&�֗\�p\�&�Qk�c\�\�\��',11,'\0\0\0�T��!���X\�\�;�Bx�E\�\�g�����@�J\�G&�T��!���X\�\�;�Bx�E\�\�g�����@�J\�G&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0���o\�?\�a{b0�u_k\�?�hڠ�>\0\0\0\0\0\0\0\0\0\0\0',0,'&G\�J�@�����g\�\�E�xB�;\�\�X���!��T�','&G\�J�@�����g\�\�E�xB�;\�\�X���!��T�','\�?\�a{b0�u_k\�?�hڠ�>',NULL,1,100,11,13,1,1559081660899,11,1559081657775,1),('��<�\�\�\�K(h�&L�tq\�D̲/�&v\�\n�E�',21,'\0\0\0\�vjt�Z�1�1��ؚ\�`qݛ��ӴM���	\�vjt�Z�1�1��ؚ\�`qݛ��ӴM���	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�#3R\�?\�a{b0�u_k\�?�hڠ�>\0\0\0\0\0\0\0\0\0\0\0',0,'	���M�ӿ��\�q`\�\���1�1�Z�tjv\�','	���M�ӿ��\�q`\�\���1�1�Z�tjv\�','\�?\�a{b0�u_k\�?�hڠ�>',NULL,1,100,1,2,1,1559081783720,1,1559081779447,1),('U\�I�\��Kg�\�6��\�\�OS�5�b\�rM��-o',3,'\0\0\0\�U6�h#:�O��h3?D���\�a�{\�{�I�5\�U6�h#:�O��h3?D���\�a�{\�{�I�5\�\�M�zFH�\�x9�\�}�l�L8\�	v*��\�J-�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�\�:\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0Wm�\�j l�v\�̆B0\�\��g^\Z}\�X�og\0\0\0IH0E!\0귭T\'y/�e��opK�\�\�2h��:���J\�{T� (��\�\�fW\0�\"mkW\��Bn ��bZo�\��/������\0\0\0�\�V�\'�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�47�M\0\0\0�v�gg%Ջ��̸�/�\�\�h�C��x\�ڌ\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'5�I�{\�\�{�aŽ��D?3h��O�:#h�6U\�','5�I�{\�\�{�aŽ��D?3h��O�:#h�6U\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,19,21,1,1559080751214,19,1559080749955,1),('	���M�ӿ��\�q`\�\���1�1�Z�tjv\�',20,'\0\0\0*уr�J��\�v\�0GD;AIě�;��3\�[�*уr�J��\�v\�0GD;AIě�;��3\�[�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0\�\0\�?\�a{b0�u_k\�?�hڠ�>\0\0\0\0\0\0\0\0\0\0\0',0,'�[\�3�;��\�IA;DG0\�v\���J�r�\�*','�[\�3�;��\�IA;DG0\�v\���J�r�\�*','\�?\�a{b0�u_k\�?�hڠ�>',NULL,1,100,2,3,1,1559081783721,2,1559081776821,1),('$\\�Q	�\n���\�\�o6\�>?\�q؍FZd\�\�\�]\�',6,'\0\0\0y�\�u�p\�bp�8�e�\�Z\�1=~\Z\���l-\�N t\'y�\�u�p\�bp�8�e�\�Z\�1=~\Z\���l-\�N t\'K\�i����\�q�Ib��4\"���m�nbs\�n��\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0^U	\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v#!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v�\0\0\0\0\0\0\0\0\0\0\0TOKENe\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"ETH\",\n    \"description\" : \"ETH\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8\",\n    \"publickey\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"signature\" : \"3045022100a47db500efadd1b2ab332317c60156e98a9f7ef5744bb6941a5e35761ca3fcc10220702515de4a793ddd2f95ec5613ee641257bb3ec35f9a8a69cf9f5ec6cfcfdd55\"\n  } ]\n}',0,'\'t N\�-l��\�\Z~=1\�Z\��e�8�pb\�p�uîy','\'t N\�-l��\�\Z~=1\�Z\��e�8�pb\�p�uîy','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,16,18,1,1559081648738,16,1559081645696,1),('$\�\r�ރ\�ǇJV^�\'���\�9\�\�\��x=',13,'\0\0\0\r�_Ⲁ�¢�VS�7\��(e�W�@�&Ɋ�\�>\r�_Ⲁ�¢�VS�7\��(e�W�@�&Ɋ�\�>>Mb�q��\�~}^\�\�z�P\�((\�f���\�)\��\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�\�3�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�#!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"BTC\",\n    \"description\" : \"BTC\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"2774204ede2d6c90f5d61a7e3d1131dd5ae098658a38847062dc70b175c3ae79\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws\",\n    \"publickey\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"signature\" : \"30440220737f8fc2ee7f597c34b94c52c869c8ae1706f4b98d4535c326107258508c722702206f4b3087511704c7cb92ad8a6ce30be8db6a5c0d8c2c4a8af70bead82338def7\"\n  } ]\n}',0,'>Ȗ�\�&�@�W�e(�\�7�SV����\�_�\r','>Ȗ�\�&�@�W�e(�\�7�SV����\�_�\r','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,9,11,1,1559081760089,9,1559081757011,1),('&G\�J�@�����g\�\�E�xB�;\�\�X���!��T�',10,'\0\0\0\r�#�\�\Z��\�\�7\�\0�i�\�t�\�,\�e�\\.\�UN�?\r�#�\�\Z��\�\�7\�\0�i�\�t�\�,\�e�\\.\�UN�?�c\�\�\�<r�����I�\�r/��x�<ݞ`�j��\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0&���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -7,\n  \"toHeight\" : 10,\n  \"prevHash\" : {\n    \"bytes\" : \"PinWXquw8G1FKGlXSZDCXKl2QseeGwZHrixrHDdiyhc=\",\n    \"reversedBytes\" : \"F8piNxxrLK5HBhuex0J2qVzCkElXaShFbfCwq17WKT4=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'?�NU\�.\\�e\�,\�tӛi�\0\�7\�ڽ�\Z;#�\r','?�NU\�.\\�e\�,\�tӛi�\0\�7\�ڽ�\Z;#�\r','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,12,14,1,1559081657562,12,1559081654924,1),('\'t N\�-l��\�\Z~=1\�Z\��e�8�pb\�p�uîy',5,'\0\0\0�x\��p�\�zz�|�\�x\�$#\rwQ׺��ﷄ\'8�x\��p�\�zz�|�\�x\�$#\rwQ׺��ﷄ\'8��d����,r$\�r\�\�zAՀ\�\�\\3�\��\�u����\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�(�x\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�#!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�\0\0\0\0\0\0\0\0\0\0\0TOKENe\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"BTC\",\n    \"description\" : \"BTC\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws\",\n    \"publickey\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"signature\" : \"3045022100b5ad133e4326c7e98cbe78592a4323a99df3db50c6aaf63eb616b4835829ddde022071f482d2bde8931c5d929be40f35fc79fe03f2274d79d94457f5bb1a66501c20\"\n  } ]\n}',0,'8\'��鍊�\�Qw\r#$\�xԘ|�zz\��p�\�x�','8\'��鍊�\�Qw\r#$\�xԘ|�zz\��p�\�x�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,17,19,1,1559081645580,17,1559081643515,1),('( ��\��ј$�&ʣWyP�shj?^��\�1LNN',19,'\0\0\0MS\�Q��B	R\\�\�˘(	\r�v��+�I�\�7MS\�Q��B	R\\�\�˘(	\r�v��+�I�\�7\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0+\�d�\�?\�a{b0�u_k\�?�hڠ�>\0\0\0\0\0\0\0\0\0\0\0',0,'7�\�I�+�v�\r	(�\�\��\\R	B��Q\�SM','7�\�I�+�v�\r	(�\�\��\\R	B��Q\�SM','\�?\�a{b0�u_k\�?�hڠ�>',NULL,1,100,1,2,1,1559081783608,1,1559081777815,1),(')&\�(_\�h�\�B)\�6�{h\��ؗ]\'�\�|N��',17,'\0\0\0B��\�uoF\0G�����q\�Շ�SPZTK\�.\r7B��\�uoF\0G�����q\�Շ�SPZTK\�.\r7�MŌL��yP\'�\�ayJH\�\�ӿ�M�\�\�\�)�q$�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�c0&\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<#!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"EUR\",\n    \"description\" : \"EUR\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"3f18834e55c32e5cc065d62ce69574d39b698900e637e4dabdb61acdbe239d0d\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP\",\n    \"publickey\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"signature\" : \"304402203127285789bc6188c7ccf92f72581a22eedfcb9a6ab7118b1745b38ad0eea19f02201c9f438819312d953c14538621e079ff6097b02320e76b9c92f258fd6e6e768a\"\n  } ]\n}',0,'7\r.�\�KTZPS��\�\�q�����G\0Fou\���B','7\r.�\�KTZPS��\�\�q�����G\0Fou\���B','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,5,7,1,1559081766229,5,1559081764669,1),('1Uupo��|l���9|{�\rk5Wg���\�,a',1,'\0\0\0\�b7k,�G�\�Bv�\\IWi(Em�^\�)>\�b7k,�G�\�Bv�\\IWi(Em�^\�)>j���6ܶ���k\�;��h�-�tk�\�\�a{\r޴�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�v��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�,G�����˓\�l���?��yδ\�l�\�eEH\0\0\0\0IH0E!\0�Ӭ��8\�N\�u���\�*\�w��|ht�L%X r��n�X�x�\�\�-/�Ǚ\�\�hd\�1 �K\���\�����\0\0\0\0�Ƥ~�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\" � \0\0\0\0�v�\�\�y�me����&畾�L��0W\0\0\0\0\0�v�]�n�\�LJ�\�%�ũ���䮈�\��\�\0\0\0\0�v�j���9\�.G��oEQq3�ň�\0e\�\0\0\0\0�v�i\�\�Ƒhճk%\�C��}�������\�\0\0\0\0�v�)�t2x>4\�l)	�6\�N\�R:���e\0\0\0\0�v�\�Re\r���X�\\�э\� B�\�5�\0\0\0\0�v�Ti�mskDGff�����\�\�XHf���^\0\0\0\0�v�9\�(C5%�\��-��z���\0wB\0\0\0�v�\�J��]�\�*>�\�d$�FiA��\0�/\0\0\0\0�v�\�˔!�V%�C.\"D\���<N� �����\0\0\0\0�v���\�4�%n\�\�v\�6�0�I^�\�\0\0\0\0\0\0�v��\�N\�\�ؐ�B(�v���s�M��\0\�T\0\0\0�v�$^i\�\�\�sٯ&?0�$ܓ�f\�6���\0\0\0\0�v��g+2EU\�]Fx\�ϸ�>�D������\0\0\0\0�v�\�ET\�6W�\�{ni��]��و� \�\0\0\0\0�v�4V��\\��#���\�\�\���\0e\�\0\0\0\0�v���n\�ͪQ�\�\� <���@�����\0Ý\�\0\0\0\0�v�|b�yƹ1\�?^?<\�YP���g����\0\0\0\0�v���\�#&��iXǎs�y\�>���\0\'�)\0\0\0\0�v���||m\�\�\�\�Y�!\�&/\rg���@x}\0\0\0\0�v���\�rY�	�&�\�`�\�M�����\0\0\0\0\0�v��j߇������=<I(\������\�\0\0\0\0�v�F\��n��&��$���=����\0\��\0\0\0\0�v����q�$�5�\\�Gf颈�\0��e\0\0\0�v��B�^��42�;y�ʯŽe٤��0W\0\0\0\0\0�v�G\�Ax\�\�Q�a&>�S� j�tĈ���\�\0\0\0\0�v�)K|�\��ϙ�\�tա3s��U���`\�S\0\0\0\0\0�v�\�S�cD�\�t��\�;\�\�/[�����\�\0\0\0\0�v�#�l��r�f��I�أL��A����\�\0\0\0\0�v�\�9 �Mjƀ��{�q\�\�Akx���\0ʚ;\0\0\0\0�v�ՙ�y�\�]�)��\��\�o,�����\0\0\0\0�v��\�ϊ\��\�y�q�\���Qш� \�\0\0\0\0�v�P�y\�P�\�\�>\�L�\�<�,2�`��\�̍<u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�','>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,21,23,1,1559078087301,21,1559078086200,1),('5�I�{\�\�{�aŽ��D?3h��O�:#h�6U\�',2,'\0\0\0a,㈇�gW5k\r�{|9���l|�opuU1a,㈇�gW5k\r�{|9���l|�opuU1Wm�\�j l�v\�̆B0\�\��g^\Z}\�X�og!�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\01un&\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0j���6ܶ���k\�;��h�-�tk�\�\�a{\r\�!\0\0\0HG0D (/H[~/9c��b�ʠ)���\�z�Hm\�泄 33�#�\�����\0b�C^#p6\r\�^�g����\�����\0\0\0\�̍<u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�47�M\0\0\0�v������u�\0O}wW\�d����\�V�\'�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'1Uupo��|l���9|{�\rk5Wg���\�,a','1Uupo��|l���9|{�\rk5Wg���\�,a','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,20,22,1,1559080739237,20,1559080737481,1),('7\r.�\�KTZPS��\�\�q�����G\0Fou\���B',16,'\0\0\0\��RIF�<��;\��`\��%]\�x���\�q�HP\��RIF�<��;\��`\��%]\�x���\�q�HPU�\�xNӮN)tx\�Rx����G�a�p<R\�\�\"�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\08��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re�#!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re��\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"USD\",\n    \"description\" : \"USD\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"37c4b9851818c9d6f5cf0f59a34ca2d14ffc8b9a4b4b03e6d28c7eb9a182e391\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT\",\n    \"publickey\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"signature\" : \"304402204bdf0074b9313f4d46ae6cec31b3ab10375af49ea0bd30aa5d8c7807e47d8b0b0220525eea76fc861e267e1b7134cf73ca5b8b67143942eb5a64b1038cc4826a1c33\"\n  } ]\n}',0,'PH�q\����x\�]%�\�`�\�;��<�FIR�\�','PH�q\����x\�]%�\�`�\�;��<�FIR�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,6,8,1,1559081766229,6,1559081762799,1),('7�\�I�+�v�\r	(�\�\��\\R	B��Q\�SM',18,'\0\0\0��N|ۑ\']�؋\�h{�6\�)B\�h\�_(�\�&)��N|ۑ\']�؋\�h{�6\�)B\�h\�_(�\�&)���B�\�J{m�\�LK\�?��a\�uID��Z\�i�b���$�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0\��}\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 1,\n  \"toHeight\" : 15,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"PinWXquw8G1FKGlXSZDCXKl2QseeGwZHrixrHDdiyhc=\",\n    \"reversedBytes\" : \"F8piNxxrLK5HBhuex0J2qVzCkElXaShFbfCwq17WKT4=\"\n  }\n}\0\0\0\0\0\0\0\0',0,')&\�(_\�h�\�B)\�6�{h\��ؗ]\'�\�|N��',')&\�(_\�h�\�B)\�6�{h\��ؗ]\'�\�|N��','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,4,6,1,1559081779117,4,1559081775126,1),('7Ĺ�\�\��\�Y�L�\�O���KK\�Ҍ~���\�',8,'\0\0\0)\0B4\�X�<m� ��l�]��	�>E�֔@\�\�EW9)\0B4\�X�<m� ��l�]��	�>E�֔@\�\�EW9�N\�\��U�ʢ\�\r\�@�%�\�\�)f���x��\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\'�G�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re�#!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re��\0\0\0\0\0\0\0\0\0\0\0TOKENe\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"USD\",\n    \"description\" : \"USD\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT\",\n    \"publickey\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"signature\" : \"3045022100e689543e4eba264f50121a6c3b5538e163b2d7f9247b18584d51d7585e97edee02203f3c18ba9e495ad4e1ee0c98068eee323bc1f7ca4bdfa4f39cc0be7bb90d370a\"\n  } ]\n}',0,'9WE\�\�@�\��E>�	��]�l�� �m<�X\�4B\0)','9WE\�\�@�\��E>�	��]�l�� �m<�X\�4B\0)','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,14,16,1,1559081651625,14,1559081649692,1),('8\'��鍊�\�Qw\r#$\�xԘ|�zz\��p�\�x�',4,'\0\0\0o-��Mr\�b�5�SO\�ف�6ȉgK�\�I\�Uo-��Mr\�b�5�SO\�ف�6ȉgK�\�I\�Ug9u�Dfۥ]��~r�S\0jY�\"�]5\�,���3��\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�#�y\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0����\0\0\0\0 1w(\0\0\0\0!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g�#!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g��\0\0\0\0\0\0\0\0\0\0\0TOKENg\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"Gold\",\n    \"description\" : \"Gold\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap\",\n    \"publickey\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"signature\" : \"304402204d5232e56ab6c4348b4e512cb44daf7e1160a408ba6234e222d7354c8ca37892022029d964f6ae9911c0765c866643e5869ab67b7ad8845e5a2831dd6ae5c4808f0c\"\n  } ]\n}',0,'U\�I�\��Kg�\�6��\�\�OS�5�b\�rM��-o','U\�I�\��Kg�\�6��\�\�OS�5�b\�rM��-o','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,18,20,1,1559081642288,18,1559081641564,1),('9WE\�\�@�\��E>�	��]�l�� �m<�X\�4B\0)',7,'\0\0\0\�]\�\�\�dZF�\�q\�?>\�6o\�\����\n�	Q�\\$\�]\�\�\�dZF�\�q\�?>\�6o\�\����\n�	Q�\\$1�[ƌ���+�~ԩL\�w~\�ō-\�p�_�3��\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\01\�T\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,#!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,�\0\0\0\0\0\0\0\0\0\0\0TOKENq\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"人民币\",\n    \"description\" : \"人民币\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo\",\n    \"publickey\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"signature\" : \"304502210080e8eff71619003613fac7133126a54bacbcd8e5e6e2b64df6535d98178ec06002203f8e069c7791b4a0ff32d3f4863f3ea405e7812eccce3fb455f4e4a2ed77c0ce\"\n  } ]\n}',0,'$\\�Q	�\n���\�\�o6\�>?\�q؍FZd\�\�\�]\�','$\\�Q	�\n���\�\�o6\�>?\�q؍FZd\�\�\�]\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,15,17,1,1559081648803,15,1559081647790,1),('>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�,G�����˓\�l���?��yδ\�l�\�eEHm#^[\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0\0�Ƥ~�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,22,24,1,1559078085533,22,1559078085383,1),('?�NU\�.\\�e\�,\�tӛi�\0\�7\�ڽ�\Z;#�\r',9,'\0\0\0�ァ�~�\�\�KK���OѢL�Y\��\�\���\�7�ァ�~�\�\�KK���OѢL�Y\��\�\���\�7��=��}��v<Pd6\��C�\�E[!�7y>�N���\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�5\�y\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<#!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<�\0\0\0\0\0\0\0\0\0\0\0TOKENe\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"EUR\",\n    \"description\" : \"EUR\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP\",\n    \"publickey\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"signature\" : \"3045022100e71fa72aa090073520a6f8d1ca5655258ec909bc13bf064823d7cb4f8ed2b6b7022056a9653dbf68edc51420e381b20143a6f127ccbaefe521f522817da8f17a9618\"\n  } ]\n}',0,'7Ĺ�\�\��\�Y�L�\�O���KK\�Ҍ~���\�','7Ĺ�\�\��\�Y�L�\�O���KK\�Ҍ~���\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,13,15,1,1559081654927,13,1559081651585,1),('A6�VN�\�n�@��\��oh)	\�:�\n#\�Ǵ}gE',22,'\0\0\0�E�\n\�v&�/�\�D\�qt�L&�h(K\�\�\�<��NNL1ے�^?jhs�PyW�\�&�$�\��\�� (\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\05�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0p��T\�?\�a{b0�u_k\�?�hڠ�>\0\0\0\0\0\0\0\0\0\0\0',0,'��<�\�\�\�K(h�&L�tq\�D̲/�&v\�\n�E�','( ��\��ј$�&ʣWyP�shj?^��\�1LNN','\�?\�a{b0�u_k\�?�hڠ�>',NULL,1,100,0,1,1,1559081783793,0,1559081780999,1);
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
INSERT INTO `ordermatching` VALUES ('�[\�3�;��\�IA;DG0\�v\���J�r�\�*',19,1,0,NULL,2,'&G\�J�@�����g\�\�E�xB�;\�\�X���!��T�'),('&G\�J�@�����g\�\�E�xB�;\�\�X���!��T�',10,1,1,'�[\�3�;��\�IA;DG0\�v\���J�r�\�*',2,'>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�'),('>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�',0,1,1,'&G\�J�@�����g\�\�E�xB�;\�\�X���!��T�',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
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
INSERT INTO `outputs` VALUES ('n�\�sbn�m���\"4��bI�qۮ���i\�K',0,678900000,'!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v�','1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8',2,1,'$\\�Q	�\n���\�\�o6\�>?\�q؍FZd\�\�\�]\�','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176','',NULL,0,1,0,NULL,1559081645),('3�_�p�\�-�\�\�~w\�L�\�~�+����\�[�1',0,678900000,'!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,�','1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo',2,1,'9WE\�\�@�\��E>�	��]�l�� �m<�X\�4B\0)','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c','',NULL,0,1,0,NULL,1559081647),('3���,\�5]�\"�Yj\0S�r~��]�\�fD�u9g',0,678900000,'!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g��','1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap',2,1,'8\'��鍊�\�Qw\r#$\�xԘ|�zz\��p�\�x�','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6','',NULL,0,1,0,NULL,1559081641),('HEe\�l\�\�y��?���lߓ\������G,\�\�',0,1000000000000000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�','bc','',NULL,1,1,1,'1Uupo��|l���9|{�\rk5Wg���\�,a',0),('JÉ�*v	\�8L��l�}�\��9xѷHFz�M\�\�',0,333333333300,'v�gg%Ջ��̸�/�\�\�h�C��','1ARkAbNXUo3HBUK8PnXBcfbaW2fbTn7bnF',1,0,'U\�I�\��Kg�\�6��\�\�OS�5�b\�rM��-o','bc','1ARkAbNXUo3HBUK8PnXBcfbaW2fbTn7bnF',NULL,0,1,0,NULL,1559080749),('JÉ�*v	\�8L��l�}�\��9xѷHFz�M\�\�',1,999292930081400,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'U\�I�\��Kg�\�6��\�\�OS�5�b\�rM��-o','bc','',NULL,0,1,0,NULL,1559080749),('go�X\�}\Z^g�\�\�0B�̜\�v�l jݻmW',0,333333333300,'v������u�\0O}wW\�d���','1Wu86c2Pbsm4GGSLzkzogdRNQcmQiz27U',1,0,'5�I�{\�\�{�aŽ��D?3h��O�:#h�6U\�','bc','1Wu86c2Pbsm4GGSLzkzogdRNQcmQiz27U',NULL,0,1,0,NULL,1559080737),('go�X\�}\Z^g�\�\�0B�̜\�v�l jݻmW',1,999626263414700,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'5�I�{\�\�{�aŽ��D?3h��O�:#h�6U\�','bc','',NULL,1,1,1,'U\�I�\��Kg�\�6��\�\�OS�5�b\�rM��-o',1559080737),('q�)\�\�\�M��\�ͬ\�HJya\��\'Py��L�\�M�',0,678900000,'!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<�','1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP',2,1,')&\�(_\�h�\�B)\�6�{h\��ؗ]\'�\�|N��','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c','',NULL,0,1,0,NULL,1559081764),('x���f)\�ه%�@\�\rڢ\��U�\�\�N�',0,678900000,'!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re��','1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT',2,1,'7Ĺ�\�\��\�Y�L�\�O���KK\�Ҍ~���\�','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586','',NULL,0,1,0,NULL,1559081649),('�\�F\�>\�\����\�>� ��g�𗷗\�01?',0,678900000,'!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v�','1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8',2,1,'~\�/���\�ߜ\�\�\�i�\�W\\E��O|~$a�fg','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176','',NULL,0,1,0,NULL,1559081758),('�N�>y7�![E�\��C�\�6dP<v��}��=��',0,678900000,'!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<�','1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP',2,1,'?�NU\�.\\�e\�,\�tӛi�\0\�7\�ڽ�\Z;#�\r','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c','',NULL,0,1,0,NULL,1559081651),('�k0\�sM���G\�0Vj&\����\�A!\Zs�H��',0,678900000,'!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g��','1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap',2,1,'>Ȗ�\�&�@�W�e(�\�7�SV����\�_�\r','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6','',NULL,0,1,0,NULL,1559081754),('�\������\r\���B�1�s\�\�:��\'��c�',0,678900000,'!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,�','1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo',2,1,'PH�q\����x\�]%�\�`�\�;��<�FIR�\�','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c','',NULL,0,1,0,NULL,1559081760),('\�\�R<p�a�G����xR\�xt)N�\�NxܫU',0,678900000,'!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re��','1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT',2,1,'7\r.�\�KTZPS��\�\�q�����G\0Fou\���B','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586','',NULL,0,1,0,NULL,1559081762),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',0,35700000,'v�\�\�y�me����&畾�L��','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',1,350000,'v�]�n�\�LJ�\�%�ũ���䮈�','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',2,367500000,'v�j���9\�.G��oEQq3�ň�','1Afz5FJtVGAtrwCfE5giVvhRi6u2mDg9Fv',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1Afz5FJtVGAtrwCfE5giVvhRi6u2mDg9Fv',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',3,500000000,'v�i\�\�Ƒhճk%\�C��}�����','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',4,250000000,'v�)�t2x>4\�l)	�6\�N\�R:��','14nsk71wQjXFSxT8bQZQTdjYvDwpxpni1w',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','14nsk71wQjXFSxT8bQZQTdjYvDwpxpni1w',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',5,35350000,'v�\�Re\r���X�\\�э\� B�\�5','1NGh9aq7mePaYeTUuEi9viVtgo8Xw6d6Rp',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1NGh9aq7mePaYeTUuEi9viVtgo8Xw6d6Rp',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',6,35000000,'v�Ti�mskDGff�����\�\�XHf��','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',7,17850000,'v�9\�(C5%�\��-��z���','16GzrB4XercHpVZodiMUQBXg1ka3GvPzzX',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','16GzrB4XercHpVZodiMUQBXg1ka3GvPzzX',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',8,14000000000,'v�\�J��]�\�*>�\�d$�FiA��','1NT7AuM2jL2ZiQ559TLA9CzyqoqpZr9bCn',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1NT7AuM2jL2ZiQ559TLA9CzyqoqpZr9bCn',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',9,800000000,'v�\�˔!�V%�C.\"D\���<N� ��','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',10,50000000,'v���\�4�%n\�\�v\�6�0�I^�','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',11,2000,'v��\�N\�\�ؐ�B(�v���s�M��','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',12,10000000000,'v�$^i\�\�\�sٯ&?0�$ܓ�f\�6��','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',13,35000000,'v��g+2EU\�]Fx\�ϸ�>�D���','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',14,50000000,'v�\�ET\�6W�\�{ni��]��و�','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',15,500500000,'v�4V��\\��#���\�\�\���','15mjrwRj8h8SRbJ4HHGpQB33HPu6L2Xbds',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','15mjrwRj8h8SRbJ4HHGpQB33HPu6L2Xbds',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',16,500000000,'v���n\�ͪQ�\�\� <���@�����','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',17,3500000000,'v�|b�yƹ1\�?^?<\�YP���g��','1CLgqG1U9fjsEcMhnnKU7FVVzepar5ktaH',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1CLgqG1U9fjsEcMhnnKU7FVVzepar5ktaH',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',18,34650000,'v���\�#&��iXǎs�y\�>���','1DMgbQn4ZsmYoGoct4w4gkqd1PK23s6EzA',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1DMgbQn4ZsmYoGoct4w4gkqd1PK23s6EzA',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',19,700000000,'v���||m\�\�\�\�Y�!\�&/\rg���','1DrRfwxwtLcAEhAEiE6MSbpyK52Lf7x8rE',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1DrRfwxwtLcAEhAEiE6MSbpyK52Lf7x8rE',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',20,25000000,'v���\�rY�	�&�\�`�\�M��','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',21,10000000,'v��j߇������=<I(\����','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',22,350000000,'v�F\��n��&��$���=����','17TWC7hjEPu8JxvVHKzWhT5NiPvgXseCZj',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','17TWC7hjEPu8JxvVHKzWhT5NiPvgXseCZj',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',23,100000000,'v����q�$�5�\\�Gf颈�','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',24,6000000000,'v��B�^��42�;y�ʯŽe٤��','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',25,350000,'v�G\�Ax\�\�Q�a&>�S� j�tĈ�','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',26,350000000,'v�)K|�\��ϙ�\�tա3s��U���','14mM8pCKSi6nftVVLFLz4etCWhRWyR5BLN',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','14mM8pCKSi6nftVVLFLz4etCWhRWyR5BLN',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',27,5500000,'v�\�S�cD�\�t��\�;\�\�/[���','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',28,350000000,'v�#�l��r�f��I�أL��A��','14Fy836wiMYzwzVmRCvu5fi1nvCKabW5dz',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','14Fy836wiMYzwzVmRCvu5fi1nvCKabW5dz',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',29,250000000,'v�\�9 �Mjƀ��{�q\�\�Akx���','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',30,1000000000,'v�ՙ�y�\�]�)��\��\�o,��','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',31,50000000,'v��\�ϊ\��\�y�q�\���Qш�','1PgaL2wGD2DXTwkbUGUG31TekMm9tggwqN',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','1PgaL2wGD2DXTwkbUGUG31TekMm9tggwqN',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',32,500500000,'v�P�y\�P�\�\�>\�L�\�<�,2�`��','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',1,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',NULL,0,1,0,NULL,1559078086),('\�\r{a\�\��kt�-�h��;\�k����\�6���j',33,999959596748000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'1Uupo��|l���9|{�\rk5Wg���\�,a','bc','',NULL,1,1,1,'5�I�{\�\�{�aŽ��D?3h��O�:#h�6U\�',1559078086),('\�\�\�Sy�v��.\���<��\�\�^\�\�\�]\�P',0,10,'v�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��','1111111111111111111114oLvT2',1,1,'7�\�I�+�v�\r	(�\�\��\\R	B��Q\�SM','bc','1111111111111111111114oLvT2',NULL,0,1,0,NULL,1559081779),('\�\�\�Sy�v��.\���<��\�\�^\�\�\�]\�P',1,10,'v�\�?\�a{b0�u_k\�?�hڠ�>��','1Kbm8rqjcX6j5oLbq9J8FapksdvrfGUA88',1,1,'7�\�I�+�v�\r	(�\�\��\\R	B��Q\�SM','bc','1Kbm8rqjcX6j5oLbq9J8FapksdvrfGUA88',NULL,0,1,0,NULL,1559081779),('\�\�\�Sy�v��.\���<��\�\�^\�\�\�]\�P',2,130,'v�\�\�\�稒\n\�o\�\�L�I�\\�Ԉ�','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'7�\�I�+�v�\r	(�\�\��\\R	B��Q\�SM','bc','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',NULL,0,1,0,NULL,1559081779),('\�)��f\�((\�P�z\�\�^}~\���q�bM>',0,678900000,'!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�','14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws',2,1,'$\�\r�ރ\�ǇJV^�\'���\�9\�\�\��x=','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0','',NULL,0,1,0,NULL,1559081757),('��u\�Π3\\\�ʀ\�Az\�\�r\�$r,����d��',0,678900000,'!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�','14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws',2,1,'\'t N\�-l��\�\Z~=1\�Z\��e�8�pb\�p�uîy','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0','',NULL,0,1,0,NULL,1559081643);
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
INSERT INTO `tips` VALUES ('A6�VN�\�n�@��\��oh)	\�:�\n#\�Ǵ}gE');
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
INSERT INTO `tokens` VALUES ('037eed2ff8ada0cedf9ce7cdca69b1e9575c45c0f29e4f7c037e241261936667',1,'027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',1,678900000,'ETH','ETH',NULL,1,0,0,'245c9a5109bc0af4161291fde9e46f36cb1b3e3fe371d88d465a64daccd65dd1',0,NULL,NULL,0,NULL,NULL,NULL),('073ec8968ac9269e40bc57a6652814f502dc37bf5356b6a2c29880b2e25fbb0d',1,'028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',1,678900000,'Gold','Gold',NULL,1,0,0,'382784b7efa69bbad75177150d2324de78d4987c897a7addfc70a915c20678a5',0,NULL,NULL,0,NULL,NULL,NULL),('075048ad71c9f8bb1da978dc5d25c1cf608e1d14c53b958f3c994649528710c8',1,'02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',1,678900000,'人民币','人民币',NULL,1,0,0,'395745d4dc4094d602ad453e8a098bac5dae6cf6b520f76d3c9d58c434420029',0,NULL,NULL,0,NULL,NULL,NULL),('245c9a5109bc0af4161291fde9e46f36cb1b3e3fe371d88d465a64daccd65dd1',1,'027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',0,678900000,'ETH','ETH',NULL,1,0,0,'',1,'~\�/���\�ߜ\�\�\�i�\�W\\E��O|~$a�fg',NULL,0,NULL,NULL,NULL),('24cb0dbdde83d1c7874a12565e1ba42719a1f883e2a939e3acc6c2fa0213783d',1,'03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',1,678900000,'BTC','BTC',NULL,1,0,0,'2774204ede2d6c90f5d61a7e3d1131dd5ae098658a38847062dc70b175c3ae79',0,NULL,NULL,0,NULL,NULL,NULL),('2774204ede2d6c90f5d61a7e3d1131dd5ae098658a38847062dc70b175c3ae79',1,'03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',0,678900000,'BTC','BTC',NULL,1,0,0,'',1,'$\�\r�ރ\�ǇJV^�\'���\�9\�\�\��x=',NULL,0,NULL,NULL,NULL),('2926ecac285f18d36892e3420429cc36a97b68da178bd8975d2791db7c4ebdb5',1,'0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',1,678900000,'EUR','EUR',NULL,1,0,0,'3f18834e55c32e5cc065d62ce69574d39b698900e637e4dabdb61acdbe239d0d',0,NULL,NULL,0,NULL,NULL,NULL),('37060d2eb3eb4b54010b5a50539987d5c371fdb28ffa844700466f75e6fe8e42',1,'0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',1,678900000,'USD','USD',NULL,1,0,0,'37c4b9851818c9d6f5cf0f59a34ca2d14ffc8b9a4b4b03e6d28c7eb9a182e391',0,NULL,NULL,0,NULL,NULL,NULL),('37c4b9851818c9d6f5cf0f59a34ca2d14ffc8b9a4b4b03e6d28c7eb9a182e391',1,'0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',0,678900000,'USD','USD',NULL,1,0,0,'',1,'7\r.�\�KTZPS��\�\�q�����G\0Fou\���B',NULL,0,NULL,NULL,NULL),('382784b7efa69bbad75177150d2324de78d4987c897a7addfc70a915c20678a5',1,'028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',0,678900000,'Gold','Gold',NULL,1,0,0,'',1,'>Ȗ�\�&�@�W�e(�\�7�SV����\�_�\r',NULL,0,NULL,NULL,NULL),('395745d4dc4094d602ad453e8a098bac5dae6cf6b520f76d3c9d58c434420029',1,'02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',0,678900000,'人民币','人民币',NULL,1,0,0,'',1,'PH�q\����x\�]%�\�`�\�;��<�FIR�\�',NULL,0,NULL,NULL,NULL),('3e29d65eabb0f06d452869574990c25ca97642c79e1b0647ae2c6b1c3762ca17',1,'bc',0,0,'bc','BigTangle currency',NULL,1,0,1,'',0,NULL,NULL,0,NULL,NULL,NULL),('3f18834e55c32e5cc065d62ce69574d39b698900e637e4dabdb61acdbe239d0d',1,'0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',0,678900000,'EUR','EUR',NULL,1,0,0,'',1,')&\�(_\�h�\�B)\�6�{h\��ؗ]\'�\�|N��',NULL,0,NULL,NULL,NULL);
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
INSERT INTO `txreward` VALUES ('7�\�I�+�v�\r	(�\�\��\\R	B��Q\�SM',15,1,0,NULL,2,'>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�',2),('>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�',0,1,1,'7�\�I�+�v�\r	(�\�\��\\R	B��Q\�SM',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',10);
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
