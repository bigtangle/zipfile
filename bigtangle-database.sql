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
INSERT INTO `blocks` VALUES ('�7����\Z\��5A���\�m��1#����A',12,'\0\0\0��\'_\�\��\�\�D%`X\�t�[\�N\�2#\�OeR�\r;��\'_\�\��\�\�D%`X\�t�[\�N\�2#\�OeR�\r;�\�GI�]�)\�A[\�\�Td��9���£!N�O3��?]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�u�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!O�\�t5�ح\�\�\�4���ؑ���\�S嫷,�=^nGR!O�\�t5�ح\�\�\�4���ؑ���\�S嫷,�=^n!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-BTC\",\n    \"description\" : \"test-1-BTC\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-BTC\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0`\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1MW35ZNpYDANihQjDZC7fmzj2rADW4ZyrP\",\n    \"publickey\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"signature\" : \"3044022036ac03aba892d536fe2ecc6dae52507318518f1c2df20d3e27919578c63b6b51022044de0265fc0629388c02016afebd783afab1961aeafafbecb971ffb123307888\"\n  }, {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100f56778538077759269ae143323bef4a512294cc65daf2aaff50025241891cda00220014867021a38fdc3168e319f522b9cbd51209b39a29e363e4dc3f2284defd4b0\"\n  } ]\n}',0,';\r�ReO\�#2\�N\�[�t\�X`%D\�Ɣ�\�\�_\'��',';\r�ReO\�#2\�N\�[�t\�X`%D\�Ɣ�\�\�_\'��','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,12,14,1,1564410248793,12,1564410247310,1),(' $%#�J�\�#�\nB\�ZH�2e4W�K ��\�P\�\�',6,'\0\0\0tQ��ו���讵aF܌���m.Ԋ\����?tQ��ו���讵aF܌���m.Ԋ\����?^HԾ�\�܊ن�_,bЭst�#�<\�Q\�\�1+� �>]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0]U\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0pG�\�9a_z����\�\�\�\�\�WL+\�79X~\�6\0\0\0jG0D D�Oe\�.e-fÍ�\�$�Ș\�pɋ\�\�9TF z\nf�pr����\\\�Gׄء-���oK�O\Z6\n�Qm!)�\�[Z�\"\��ng9\�I�X\�iK9-\�ǂd�\�v����\0\0\0d\0\0\0\0\0\0\0�v�\�)��:\�5E�q��:�V\�\'���\n\0\0\0\0\0\0\0�v�\�)��:\�5E�q��:�V\�\'���Z\0\0\0\0\0\0\0�v�W5^��\�N���un2��\�v<��\0\0\0\0\0\0\012\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'?���\�\�.m����\�Fa��蛪��\���Qt','?���\�\�.m����\�Fa��蛪��\���Qt','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,18,20,1,1564406648215,18,1564406647242,1),('\Z\�ܔy\�\�e\r�\�*3*���P�\�T\�Ơa�ر�\�',7,'\0\0\0٬\�PЍ� K�W4e2�HZ\�B\n�#\�J�#%$ ٬\�PЍ� K�W4e2�HZ\�B\n�#\�J�#%$ ��5\�^��+B\�A��9��\�	#��\�\�\0\��X}5b��>]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�Y\�[\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0^HԾ�\�܊ن�_,bЭst�#�<\�Q\�\�1+� \0\0\0\0jG0D D7p\�\�xV\�{�K5 ��1����z��y�� CF�$K�-_\��A&�3f�\�\�\r\�i?��!)�\�[Z�\"\��ng9\�I�X\�iK9-\�ǂd�\�v����\0\0\0\n\0\0\0\0\0\0\0�v�\�)��:\�5E�q��:�V\�\'���\0\0\0\0\0\0\0�v�W5^��\�N���un2��\�v<��\0\0\0\0\0\0\0�v�\�)��:\�5E�q��:�V\�\'���\0\0\0\0\0\0\00.03\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,' $%#�J�\�#�\nB\�ZH�2e4W�K ��\�P\�\�',' $%#�J�\�#�\nB\�ZH�2e4W�K ��\�P\�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,17,19,1,1564407662328,17,1564407660611,1),('�\�X���w��Iھ(V坴ck�\�\r�r\��',8,'\0\0\0\��؀a�\�\�TͤP��*3*\�\re\�\�y�\�\�\Z\��؀a�\�\�TͤP��*3*\�\re\�\�y�\�\�\Z\�\\:�\�`��e\�rk<�r�Ŗ\�x���P�\�\�\�6��>]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0��5\�^��+B\�A��9��\�	#��\�\�\0\��X}5b\0\0\0kH0E!\0\�zKc�\�YVt��,\�)\�g�߅h�\�H�خ\�4�.\� X�(�d�\�\�A�*�]��?{\"���\�\���!)�\�[Z�\"\��ng9\�I�X\�iK9-\�ǂd�\�v����\0\0\0\0\0\0\0\0\0\0�v�\�)��:\�5E�q��:�V\�\'���\0\0\0\0\0\0\0�v�W5^��\�N���un2��\�v<��\0\0\0\0\0\0\0�v�\�)��:\�5E�q��:�V\�\'���\0\0\0\0\0\0\012\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'\Z\�ܔy\�\�e\r�\�*3*���P�\�T\�Ơa�ر�\�','\Z\�ܔy\�\�e\r�\�*3*���P�\�T\�Ơa�ر�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,16,18,1,1564407716557,16,1564407713735,1),('L.�J�k4\'\��\�W���\Z�Q���T2�\�akb',13,'\0\0\0A����#1��mӸ��A5�\�\Z����7�A����#1��mӸ��A5�\�\Z����7��饊츱sE�j\�~Փ�<\�M\���$�\�\�\�Ցv�?]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�\�D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 1,\n  \"toHeight\" : 10,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"hQfmJOfryC1R90MpZnNeLSxvW2tE67Rt2Dkt7MvKwjk=\",\n    \"reversedBytes\" : \"OcLKy+wtOdhttOtEa1tvLC1ec2YpQ/dRLcjr5yTmB4U=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'�7����\Z\��5A���\�m��1#����A','�7����\Z\��5A���\�m��1#����A','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,11,12,1,1564410255060,11,1564410250873,1),('\�\�L\�ѪZ��64y\�\�.q�w�</�S\�ޑ\�',21,'\0\0\0U-��x���Ͻ\\\�\0ϫ\\\�v\�Z�Г4�)\�~U-��x���Ͻ\\\�\0ϫ\\\�v\�Z�Г4�)\�~D�]M�\�sQ���\�E�\�\��tw\�\�&��+~�\�NB]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0C�u�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0A�\�/ZY��`��\��Pp=\��l\"v��^��%2\0\0\0jG0D \�_�\�\���O�&I\�A��V\r\�8���e -߾0����N�\'g \�\�?ϬQV9�3�GS\��!:\�\�.S�L�O3P�(\�\�Xb*{��K�n��\�2�.����\0\0\0��*\0\0\0\0\0�v�Y腑9�����\�5F\n�|���\�\0\0\0\0\0\0\0�%Q!^O[=D�>��د�p������ԇh\�ȏ<yQ���*\0\0\0\0\0�v�\�m*\�}�Q}����\�*(/~=���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'~\�)�4�аZ\�v\�\\�\�\0�\�\\�ϼ��x��-U','~\�)�4�аZ\�v\�\\�\�\0�\�\\�ϼ��x��-U','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,3,4,1,1564626663107,3,1564626659777,1),(' �X��\�K�\�h�Y�\r[\�Z.��0n��p5e�',1,'\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\���^�/�\�55�\�\��\�ڊ�\��K\�\�|W�������m[>]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0W��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�\�Ic3�\�\�h6 �q)\�{�nD�ZY��j<�F\0\0\0\0IH0E!\0\�9\�:\�o\�Ŧ2IC��Ѷ[�E�?d��.j�\��\� \rl���BX	h#K�Q�D/\�ߺ����\�\�@��f����\0\0\0\0�rN	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�)\0\0\0\0\0\0�v��(4\�hAl9\�F�6�2�-n\�W��0W\0\0\0\0\0�v�Y腑9�����\�5F\n�|���\\D\0\0\0\0\0\0�v��\��\�\�.fo�\�h�Ɔ����p\�lN	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0WEIXIN\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,23,25,1,1564367729204,23,1564367725869,1),('+�/\���s:��c\�\�q�i�����\�\�k��\��',2,'\0\0\0�e5p��n0��.Z\�[\r�Y�h߉Kՠ�X� �e5p��n0��.Z\�[\r�Y�h߉Kՠ�X� A�\�/ZY��`��\��Pp=\��l\"v��^��%2�>]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0��\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0�^�/�\�55�\�\��\�ڊ�\��K\�\�|W�������\0\0\0IH0E!\0\�nT$�\"k\�h:\�\�\�:֢\�\\*F>V���\�\�;D Xs2wD\�+@�[؉\�)C�:q��\�v�\�\�;y\�2����\0\0\0p\�lN	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u��[\0\0\0\0\0�v���g��Q\"\�7�B;_ș\�S����\0\0\0\0\0�v��(4\�hAl9\�F�6�2�-n\�W��S\0\0\0\0\0�v��\��\�\�.fo�\�h�Ɔ������*\0\0\0\0\0�v�Y腑9�����\�5F\n�|�����N	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,' �X��\�K�\�h�Y�\r[\�Z.��0n��p5e�',' �X��\�K�\�h�Y�\r[\�Z.��0n��p5e�','�쓅�R�G\�*Jr�\�\�#�1D',NULL,1,100,22,24,1,1564387085213,22,1564387082891,1),('2\��:���1ŧr �\���\�\�P\�#%\�\�',4,'\0\0\0P�\�DJ��&�g��8o\����J�e�\�}\�ך�a5P�\�DJ��&�g��8o\����J�e�\�}\�ך�a5C\�\���@\�\�\�E\�\���P2X\�4B_\��t\Z�>]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0��x3\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0A�\�/ZY��`��\��Pp=\��l\"v��^��%2\0\0\0IH0E!\0\�\�\� \"�\�Xc:��M�������\�{.�e֑  xMi>$`f\�Υ\�\\z�\�׺���\�H�L���������\0\0\0��N	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�dd\0\0\0\0\0\0�v�\�)��:\�5E�q��:�V\�\'���4N	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'5a��\�\�}�\��e�J���\�o8��g�&��JD\��P','5a��\�\�}�\��e�J���\�o8��g�&��JD\��P','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,20,22,1,1564406303182,20,1564406301498,1),('5\rkj�MF�]�/Ow#\�. PZ\�\�\�dyxט',17,'\0\0\0��G&�\�I�I���\�l\�\���\�8 A�\���h`d@��G&�\�I�I���\�l\�\���\�8 A�\���h`d@V\�}SH/�X-F[\�MK��\�}\�\�\�D@�P��Ds??]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0Ytm\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0C\�\���@\�\�\�E\�\���P2X\�4B_\��t\0\0\0IH0E!\0�2�/$�/�\�9k(y:G���O4>~�˥ Qsڰ6{\�\���NTe��t�o;o�n\"�5(ƙ\�����\0\0\04N	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0a�\0\0\0\0\0�v���g��Q\"\�7�B;_ș\�S��4�GM	\0\0�v��\�\�u��5\�_�\\�\�ߋ\��g��\0\0\0\0\0\0\0test\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'@d`h��\��A 8Ե�\�\�l�쇄�I�Iȥ&G�','@d`h��\��A 8Ե�\�\�l�쇄�I�Iȥ&G�','�쓅�R�G\�*Jr�\�\�#�1D',NULL,1,100,7,8,1,1564426305132,7,1564426302535,1),('5a��\�\�}�\��e�J���\�o8��g�&��JD\��P',3,'\0\0\0�Ֆ�k\�\������i�q\�\�c��:s��\�/�+�Ֆ�k\�\������i�q\�\�c��:s��\�/�+�1jq\��x�\'0C�d\�\�2>\�T\�Ĕ��!bz���>]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0A�\�/ZY��`��\��Pp=\��l\"v��^��%2\0\0\0\0kH0E!\0���v\��T�j��v\\��7\����\�y�{P9$!\� U\�\�>\�(\���f��Y\�\�(D,�E\�\��KW}�!��*��s��\�p�b���5�æ�N�O3K5W\�5o����\0\0\0�[\0\0\0\0\0�v���g��Q\"\�7�B;_ș\�S�� [\0\0\0\0\0�v��4��][oS�\����x������d\0\0\0\0\0\0\0�v���g��Q\"\�7�B;_ș\�S��\0\0\0\0\0\0\01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'+�/\���s:��c\�\�q�i�����\�\�k��\��','+�/\���s:��c\�\�q�i�����\�\�k��\��','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,21,23,1,1564387235213,21,1564387233229,1),('6|\�HS,���<y�����\��j@y\\K�!\0i',15,'\0\0\0\�{+H���O��+w��_�s�\�3�QW\�a\�{+H���O��+w��_�s�\�3�QW\�a��s�\�(��`/|6U�MI?\0I\�U��3�Z��?]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0\�\�\��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\��\�JY�<\�Ѭ�e\�\��7e\�~d\�\�*�\�Pl�GR!\��\�JY�<\�Ѭ�e\�\��7e\�~d\�\�*�\�Pl�!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-USD\",\n    \"description\" : \"test-1-USD\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-USD\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0^\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"address\" : \"12jEy3c58dGMtB3sotY99WXXC3hfuqozNV\",\n    \"publickey\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"signature\" : \"30440220176b990156d4a1dc11c4a2e5af5a2c40eb4f7c1822036feb2c9ab41b8f4f389702205e947f9ff80a5458cc2566645acbefa6e13452d43d175ff8f20ca19a5851217d\"\n  }, {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402205381c2e91f3d9aaad854910c67c4b21c03a290da6190969e7a3c2560046c1346022050adf178d821b862d05524fc4cb228f87893745cefbd2c4b3cbcbb2a396b731e\"\n  } ]\n}',0,'a\�WQ�3\�s�_���w+��O���H+{\�','a\�WQ�3\�s�_���w+��O���H+{\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,9,10,1,1564410257869,9,1564410256537,1),('8#ӛ�Ae5l��\��s��TOV�Q�?�v\�y��',10,'\0\0\0T\"\�<4��\�\Zؾ�KeH��\�h�\�VC[\�r\�`�?T\"\�<4��\�\Zؾ�KeH��\�h�\�VC[\�r\�`�?�f\ZA�-�\rLȜb�L,��V�fqF[^SH \��>]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�\�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\n\0\0\0\0\0\0\0\0\0\0\�\\:�\�`��e\�rk<�r�Ŗ\�x���P�\�\�\�6\0\0\0kH0E!\0��i�_�F\�ڂR\�ȧ�\�.�I��\�}�kk�߀ k\�FͰ�]��3�ϒ�������C�1M�-!)�\�[Z�\"\��ng9\�I�X\�iK9-\�ǂd�\�v����\0\0\0\0\0\0\0\0\0\0�v�\�)��:\�5E�q��:�V\�\'���\0\0\0\0\0\0\0�v�W5^��\�N���un2��\�v<��\0\0\0\0\0\0\0�v�\�)��:\�5E�q��:�V\�\'���\0\0\0\0\0\0\00.01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'?�`\�r\�[CV\�h\���HeK��\�\Z贱4<\�\"T','?�`\�r\�[CV\�h\���HeK��\�\Z贱4<\�\"T','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,14,16,1,1564407773606,14,1564407772256,1),(':�@>�\\q�׊29O\�l2����i\�\"�#��Њ�\�',13,'\0\0\0A����#1��mӸ��A5�\�\Z����7�A����#1��mӸ��A5�\�\Z����7��gP�\�*��!Qۋ�3t^\�sNG\�\�H�F�._ԉ?]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0s0�T\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\0]d%*i�s�\�^�<��\�z!��a�P�o\�%hGR!\0]d%*i�s�\�^�<��\�z!��a�P�o\�%h!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-ETH\",\n    \"description\" : \"test-1-ETH\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-ETH\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"address\" : \"17gt5R6JU3geTrJqauEWZZ1hqozH5HAppG\",\n    \"publickey\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"signature\" : \"3045022100a64bbbf04b0192bd45a41f3ee05e3df5c60b5240b0b6e3bace8eb46557d960f80220290034ed237e2fabb51f8c12b94a23b3089bb650626decfb903a83cb525675af\"\n  }, {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100e603001c1b2d498a38d8f501a19bc21cd076d3dc07420f25f87d19b4e1ce232e02205e0125ad0b6eb856b0af607739c3a5aae573afda267ed962358842273c4e86df\"\n  } ]\n}',0,'�7����\Z\��5A���\�m��1#����A','�7����\Z\��5A���\�m��1#����A','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,11,12,1,1564410255127,11,1564410251037,1),(';\r�ReO\�#2\�N\�[�t\�X`%D\�Ɣ�\�\�_\'��',11,'\0\0\0��y\�v�?�Q�VOT��s�\���l5eA��\�#8��y\�v�?�Q�VOT��s�\���l5eA��\�#8J0\�+C�+��.\�\�\�\�zU��o�\Z��\�ʕp�?]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�V�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0����\0\0\0\0 1w(\0\0\0\0!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HYGR!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HY!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\"\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-Gold\",\n    \"description\" : \"test-1-Gold\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-Gold\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0`\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB\",\n    \"publickey\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"signature\" : \"3045022100a2df5eed8d96ac0d61627ffdf693c1f3d0f950de87995da599774b6fc5409904022040cc2bcd6bd1f6f984893412d4e5f26e6ada5a2422d43d0b23f0d2f9aacdf828\"\n  }, {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402201adbeccde46b7f7c9f4da4cd44b47eb2cf6ad4a275830122cc62f9f7fe9e2d26022022a355ce56881a56232fe5d1ef062d6f50b258ee54a79375f2919efabb1e4ec4\"\n  } ]\n}',0,'8#ӛ�Ae5l��\��s��TOV�Q�?�v\�y��','8#ӛ�Ae5l��\��s��TOV�Q�?�v\�y��','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,13,15,1,1564410248733,13,1564410244797,1),('?�`\�r\�[CV\�h\���HeK��\�\Z贱4<\�\"T',9,'\0\0\0��\�r�\r\�kc��\�V(�\�I��w���Xֵ��\�r�\r\�kc��\�V(�\�I��w���Xֵ����2���dX�9�~P.��4\�XD�5g��1��>]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0F\�))\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -7,\n  \"toHeight\" : 9,\n  \"prevHash\" : {\n    \"bytes\" : \"hQfmJOfryC1R90MpZnNeLSxvW2tE67Rt2Dkt7MvKwjk=\",\n    \"reversedBytes\" : \"OcLKy+wtOdhttOtEa1tvLC1ec2YpQ/dRLcjr5yTmB4U=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'�\�X���w��Iھ(V坴ck�\�\r�r\��','�\�X���w��Iھ(V坴ck�\�\r�r\��','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,15,17,1,1564407716557,15,1564407715985,1),('?���\�\�.m����\�Fa��蛪��\���Qt',5,'\0\0\0\�\�%#�\�P\�\���\�� r�\�1���:��\�2\�\�%#�\�P\�\���\�� r�\�1���:��\�2pG�\�9a_z����\�\�\�\�\�WL+\�79X~\�6��>]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�I\�?\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0C\�\���@\�\�\�E\�\���P2X\�4B_\��t\0\0\0\0kH0E!\0���G�Ե{�΅5\�J\0^�om\"%u���ϑe h,_�\�W��Z\0�����:j�!�;\ro/�EeI!)�\�[Z�\"\��ng9\�I�X\�iK9-\�ǂd�\�v����\0\0\0dd\0\0\0\0\0\0�v�\�)��:\�5E�q��:�V\�\'���\0d\0\0\0\0\0\0�v�W5^��\�N���un2��\�v<��d\0\0\0\0\0\0\0�v�\�)��:\�5E�q��:�V\�\'���\0\0\0\0\0\0\0test\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'2\��:���1ŧr �\���\�\�P\�#%\�\�','2\��:���1ŧr �\���\�\�P\�#%\�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,19,21,1,1564406420314,19,1564406418872,1),('@d`h��\��A 8Ե�\�\�l�쇄�I�Iȥ&G�',16,'\0\0\0i\0!�K\\y@j��폼���y<���,SH\�|6i\0!�K\\y@j��폼���y<���,SH\�|6\�\�s\�fƢ2\�h� �4��oD\�ٿ�\�훈A��M�?]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0\��#�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!+���PK�\�i+s+�*s\�Z\�V ռ!�\Z.`usGR!+���PK�\�i+s+�*s\�Z\�V ռ!�\Z.`us!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-EUR\",\n    \"description\" : \"test-1-EUR\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-EUR\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0`\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1Lpvh2E44RSReTnmPivfghtUm2RE9Kd66B\",\n    \"publickey\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"signature\" : \"3045022100f081329b5ec083a0805009857b37c85d71a8ab9989a08c90a66fae965f933c9802207ed38d4d8accd8bf9e803d47d1a962e397c0b70dea4956c14e9bc3f57cacc353\"\n  }, {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"30440220516fb17aad62e2ad62e8d4df6f18b2dc6bbd7b2e7bc089831bf7b6f2867b6d3902206f71455852c2d29f385061d9864ebe82ccbc9ff811405193a1970d04e30ee9d8\"\n  } ]\n}',0,'6|\�HS,���<y�����\��j@y\\K�!\0i','6|\�HS,���<y�����\��j@y\\K�!\0i','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,8,9,1,1564410264285,8,1564410260282,1),('T\�F�`\�(��\�\�k�\�7�\��\�\�]�\�qL��',22,'\0\0\0ݑ\�\�S�/<�w�q.\�\�y46��Z�\�\�L\�\�ݑ\�\�S�/<�w�q.\�\�y46��Z�\�\�L\�\�\��|u\��[J/իx\�X�L\"&T��f\�\��[H3T/\�PB]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0Q\�m\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�^�/�\�55�\�\��\�ڊ�\��K\�\�|W�������\0\0\0kH0E!\0\�4�.\�[\�M���0U��H:�\��s*&\�_?�\ZCy p\�%\�EL�Z\nN\�\��O?������(Vl�\�\�\��%!:\�\�.S�L�O3P�(\�\�Xb*{��K�n��\�2�.����\0\0\00W\0\0\0\0\0�v�Y腑9�����\�5F\n�|���V\0\0\0\0\0�v�\�m*\�}�Q}����\�*(/~=���,\0\0\0\0\0\0�GR!��<\�<O�\��N�\�\�\�\�o�\"gY������!lYΘ \�x�\�>\�\\\\�\� nE\��\�v��㮕iR�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'\�\�L\�ѪZ��64y\�\�.q�w�</�S\�ޑ\�','\�\�L\�ѪZ��64y\�\�.q�w�</�S\�ޑ\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,2,3,1,1564627155321,2,1564627151383,1),('a��;k_�\�K\�`�+��y�A�yؒR�\�l\�tφ',23,'\0\0\0��Lq\�]\�Ŧէ7Ԯk\�\���(\�`�F\�T��Lq\�]\�Ŧէ7Ԯk\�\���(\�`�F\�T���*(/\�\��J�\�h���ܜ@\��s9�nǮ\�PB]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0x���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 11,\n  \"toHeight\" : 20,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"HkwuikqNazQn6vfSV5WijxoBqA9R9faDFVQyq99ha2I=\",\n    \"reversedBytes\" : \"Ymth36syVBWD9vVRD6gBGo+ilVfS9+onNGuNSoouTB4=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'T\�F�`\�(��\�\�k�\�7�\��\�\�]�\�qL��','T\�F�`\�(��\�\�k�\�7�\��\�\�]�\�qL��','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,1,2,1,1564627170464,1,1564627166163,1),('a\�WQ�3\�s�_���w+��O���H+{\�',14,'\0\0\0л�\���#�\"�\�i����2l\�O92�ײq\\�>@�:bka߫2T���Q�\Z���W\��\�\'4k�J�.L��q8Xo^n�:Yj�\�9\�<f��EQH\�;IS�t�?]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0��ݮ\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!��`�\�L\�\�\0?�{m)%\�lG��	\�|r@@]{=GR!��`�\�L\�\�\0?�{m)%\�lG��	\�|r@@]{=!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN1\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test-1-人民币\",\n    \"description\" : \"test-1-人民币\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test-1-人民币\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1GtzL9G51YTnquirBBptpgKkwzRGp3Nicg\",\n    \"publickey\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"signature\" : \"30450221008729ce6b4676fde46d3f9776635bf8a37987e48c183134c8f5be704d485b87e802201a712973d4780e7f59c03d339ede7c80ce7213e5820346ecc97005a7deffc898\"\n  }, {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100fc804d1b92c86e2a930bcd0e75b3443959bdba0dd70d6f638151ae8e93f9ed85022000e6549955a9a65677181d04bcc2f82b98514f3149beb566882c5d8268c3c962\"\n  } ]\n}',0,':�@>�\\q�׊29O\�l2����i\�\"�#��Њ�\�','L.�J�k4\'\��\�W���\Z�Q���T2�\�akb','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,10,11,1,1564410255127,10,1564410253540,1),('d\�lM\�\�<b-!�\�|�\�zW+�\�K�XEq�\�\�',24,'\0\0\0�\�t\�l\�R�\�y�A�y��+�`\�K�\�_k;��a�\�t\�l\�R�\�y�A�y��+�`\�K�\�_k;��a���g3�bܦ{4ųk�ĝ3@Y�\���>��:Y9��B]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0/#��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\��|u\��[J/իx\�X�L\"&T��f\�\��[H3T/\0\0\0�\0G0D $�\�T�65F\�\�s��%\��eg-\�Q	4�Z� \Z�N\�\�rQ�ϲÓf�Bgrc3ͩ\�=�]�F^\�G0D /��v|,\�w�\�\�\�`SՍ\�\�).\�\�2\�\�}P�_ M6т_,)3�3k�(2%\�`\Zz)�r\n6������\0\0\0,\0\0\0\0\0\0�GR!��<\�<O�\��N�\�\�\�\�o�\"gY������!lYΘ \�x�\�>\�\\\\�\� nE\��\�v��㮕iR�,\0\0\0\0\0\0�v�\�\�\�\�n4@��\0J�g�s���\0\0\0\0\0\0\0\0�GR!��<\�<O�\��N�\�\�\�\�o�\"gY������!lYΘ \�x�\�>\�\\\\�\� nE\��\�v��㮕iR�\0\0\0\0\0\0\0test4\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'a��;k_�\�K\�`�+��y�A�yؒR�\�l\�tφ','a��;k_�\�K\�`�+��y�A�yؒR�\�l\�tφ','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,0,1,1,1564639887511,0,1564639884835,1),('v�<Gd�1\�\Z:�>[n�H�.Z��M\�#\�z\�\�X�',19,'\0\0\0\�h��\��\��*��\�$Ƶ:\"\�z�3��\�2\�h��\��\��*��\�$Ƶ:\"\�z�3��\�2\�\�\�\�\�rC¬š�j�F9\�\�S\�\�\�Y�8�\�H��A?]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0R�T��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0CONTACTINFOy\0\0\0{\n  \"version\" : 1,\n  \"contactList\" : [ {\n    \"name\" : \"3r3\",\n    \"address\" : \"12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7\"\n  } ]\n}\0\0\0\0F\0\0[ {\n  \"tokenindex\" : 0,\n  \"address\" : \"1APeHh6XGwGXKiPdqSGLiFBpRqK6Grkrvq\",\n  \"publickey\" : \"0296a7d955d47d79e9b6880b66a5750d69f2722bac46f5660508c439ef9e760d56\",\n  \"signature\" : \"3045022100d7dcf5fec3ae9c9ae371d4c7b673869fb1fccbb0863ebaf5310d09c927bb98f00220331dce3348ac288f34cba5f80faa17ee97d340ff7bf1669af536e9bbf42f6282\"\n} ]',0,'2��3�z\�\":�\�$�\��*�\��ʂ�h\�','2��3�z\�\":�\�$�\��*�\��ʂ�h\�','�쓅�R�G\�*Jr�\�\�#�1D',NULL,4,100,5,6,1,1564426650176,5,1564426647846,1),('~\�)�4�аZ\�v\�\\�\�\0�\�\\�ϼ��x��-U',20,'\0\0\0�X\�\�z\�#\�M��Z.�H�n[>�:\Z\�1�dG<�v�X\�\�z\�#\�M��Z.�H�n[>�:\Z\�1�dG<�v>m�[\���ʂW�7䯟ڧ]6���#}�z�B�M?]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0:+\�\�\�\�稒\n\�o\�\�L�I�\\�\�\n\0\0\0\0\0\0\0\0\0\0\0\0\0V\�}SH/�X-F[\�MK��\�}\�\�\�D@�P��D\0\0\0\0kH0E!\0��S�\�zN%�]<\�\�ga\�;���\��\�MҬ� )O��m\�1\�iH\�b�\�\��KA\�\�a�Z�\�0�!��*��s��\�p�b���5�æ�N�O3K5W\�5o����\0\0\0\0a�\0\0\0\0\0�v���g��Q\"\�7�B;_ș\�S��8`�\0\0\0\0\0�#!��*��s��\�p�b���5�æ�N�O3K5W\�5o�\0\0\0\0\0\0\0\0\0\0\0\0G\0\0{\n  \"version\" : 1,\n  \"targetValue\" : 2,\n  \"targetTokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n  \"beneficiaryPubKey\" : \"A4ClKoeJc4yX23D2YoClwTW1w6aJTr9PMwxLNVfqljVv\",\n  \"validToTime\" : 1564458472,\n  \"validFromTime\" : 1564429672,\n  \"beneficiaryAddress\" : \"12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7\"\n}\0\0\0\0\0\0\0\0',0,'v�<Gd�1\�\Z:�>[n�H�.Z��M\�#\�z\�\�X�','v�<Gd�1\�\Z:�>[n�H�.Z��M\�#\�z\�\�X�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,10,100,4,5,1,1564429722287,4,1564429717825,1),('2��3�z\�\":�\�$�\��*�\��ʂ�h\�',18,'\0\0\0�\�xyd\�\�\�ZP .\�#wO/�]�FM�jk\r5�\�xyd\�\�\�ZP .\�#wO/�]�FM�jk\r5V\�Lʦ_O\'�XdE$C��k$��U�s[�Z\�\�I@?]\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0\�Ă\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 2,\n  \"toHeight\" : 18,\n  \"prevHash\" : {\n    \"bytes\" : \"P6Zg6XLEW0NW7pBo2f+rSGVLgR++2BrotLEXNDzEIlQ=\",\n    \"reversedBytes\" : \"VCLEPDQXsbToGti+H4FLZUir/9lokO5WQ1vEculgpj8=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'5\rkj�MF�]�/Ow#\�. PZ\�\�\�dyxט','5\rkj�MF�]�/Ow#\�. PZ\�\�\�dyxט','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,6,7,1,1564426317291,6,1564426315057,1),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�\�Ic3�\�\�h6 �q)\�{�nD�ZY��j<�Fm#^[\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0\0�rN	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,24,26,1,1564350456329,24,1564350456137,1);
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
INSERT INTO `openorders` VALUES ('~\�)�4�аZ\�v\�\\�\�\0�\�\\�ϼ��x��-U','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',200,'bc',1,0,NULL,2,'021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d','��*��s��\�p�b���5�æ�N�O3K5W\�5o',1564458472,0,1564429672,'BUY','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7');
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
INSERT INTO `ordermatching` VALUES ('?�`\�r\�[CV\�h\���HeK��\�\Z贱4<\�\"T',9,1,1,'2��3�z\�\":�\�$�\��*�\��ʂ�h\�',2,'�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9'),('2��3�z\�\":�\�$�\��*�\��ʂ�h\�',18,1,0,NULL,2,'?�`\�r\�[CV\�h\���HeK��\�\Z贱4<\�\"T'),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9',0,1,1,'?�`\�r\�[CV\�h\���HeK��\�\Z贱4<\�\"T',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
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
INSERT INTO `outputs` VALUES ('�3O�N!���9��dT\�\�[A\�)�]�IG\�',0,678900000,'R!O�\�t5�ح\�\�\�4���ؑ���\�S嫷,�=^n!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,'�7����\Z\��5A���\�m��1#����A','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e','',NULL,0,1,0,0,NULL,1564410247),(' HS^[Fqf�V��,L�b�\�L\r�-�A\Zf�',0,1,'v�W5^��\�N���un2��\�v<��','18x7irozhBegs36LX2vW7HbqdwqxQqKraN',1,0,'8#ӛ�Ae5l��\��s��TOV�Q�?�v\�y��','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','0.01',0,1,0,0,NULL,1564407772),(' HS^[Fqf�V��,L�b�\�L\r�-�A\Zf�',1,1,'v�\�)��:\�5E�q��:�V\�\'���','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,'8#ӛ�Ae5l��\��s��TOV�Q�?�v\�y��','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','0.01',0,1,0,0,NULL,1564407772),(' �+1\�\�Q\�<�#�ts�\�b,_��ي\�\���\�H^',0,10,'v�\�)��:\�5E�q��:�V\�\'���','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,' $%#�J�\�#�\nB\�ZH�2e4W�K ��\�P\�\�','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','12',1,1,1,1564407660610,'\Z\�ܔy\�\�e\r�\�*3*���P�\�T\�Ơa�ر�\�',1564406647),(' �+1\�\�Q\�<�#�ts�\�b,_��ي\�\���\�H^',1,90,'v�W5^��\�N���un2��\�v<��','18x7irozhBegs36LX2vW7HbqdwqxQqKraN',1,0,' $%#�J�\�#�\nB\�ZH�2e4W�K ��\�P\�\�','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','12',0,1,0,0,NULL,1564406647),('/T3H[�\�\�f��T&\"L�X\�x�\�/J[�\�u|�\�',0,349700,'v�\�m*\�}�Q}����\�*(/~=���','1Le548FsyeXyBMtsoduaHZhKJnJGbDMBao',1,0,'T\�F�`\�(��\�\�k�\�7�\��\�\�]�\�qL��','bc','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',NULL,0,1,0,0,NULL,1564627151),('/T3H[�\�\�f��T&\"L�X\�x�\�/J[�\�u|�\�',1,300,'R!��<\�<O�\��N�\�\�\�\�o�\"gY������!lYΘ \�x�\�>\�\\\\�\� nE\��\�v��㮕iR�','',0,0,'T\�F�`\�(��\�\�k�\�7�\��\�\�]�\�qL��','bc','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',NULL,1,1,1,1564639884828,'d\�lM\�\�<b-!�\�|�\�zW+�\�K�XEq�\�\�',1564627151),('2%��^��v\"l�\�=pP�\���`��YZ/ߵA',0,1792900,'v���g��Q\"\�7�B;_ș\�S��','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7',1,0,'+�/\���s:��c\�\�q�i�����\�\�k��\��','bc','',NULL,1,1,1,1564387233227,'5a��\�\�}�\��e�J���\�o8��g�&��JD\��P',1564387082),('2%��^��v\"l�\�=pP�\���`��YZ/ߵA',1,1438400,'v��(4\�hAl9\�F�6�2�-n\�W��','1Gy9QxJ9Q4JMq62hNMfiZWPmjFUctTm4af',1,0,'+�/\���s:��c\�\�q�i�����\�\�k��\��','bc','',NULL,0,1,0,0,NULL,1564387082),('2%��^��v\"l�\�=pP�\���`��YZ/ߵA',2,807700,'v��\��\�\�.fo�\�h�Ɔ����','1H7g13KSLBkGtuxBe58rQGG3rk8qfQudsA',1,0,'+�/\���s:��c\�\�q�i�����\�\�k��\��','bc','',NULL,0,1,0,0,NULL,1564387082),('2%��^��v\"l�\�=pP�\���`��YZ/ߵA',3,2800000,'v�Y腑9�����\�5F\n�|���','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',1,0,'+�/\���s:��c\�\�q�i�����\�\�k��\��','bc','',NULL,1,1,1,1564626659776,'\�\�L\�ѪZ��64y\�\�.q�w�</�S\�ޑ\�',1564387082),('2%��^��v\"l�\�=pP�\���`��YZ/ߵA',4,9999992783000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'+�/\���s:��c\�\�q�i�����\�\�k��\��','bc','',NULL,1,1,1,1564406301497,'2\��:���1ŧr �\���\�\�P\�#%\�\�',1564387082),('6\�\�\�P���xȖŇr�<kr\�e��`\�:\\\�',0,1,'v�W5^��\�N���un2��\�v<��','18x7irozhBegs36LX2vW7HbqdwqxQqKraN',1,0,'�\�X���w��Iھ(V坴ck�\�\r�r\��','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','12',0,1,0,0,NULL,1564407713),('6\�\�\�P���xȖŇr�<kr\�e��`\�:\\\�',1,2,'v�\�)��:\�5E�q��:�V\�\'���','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,'�\�X���w��Iھ(V坴ck�\�\r�r\��','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','12',1,1,1,1564407772255,'8#ӛ�Ae5l��\��s��TOV�Q�?�v\�y��',1564407713),('6\�~X97\�+LW\�\�\�\�ū���z_a9ߓG��\�p',0,25600,'v�W5^��\�N���un2��\�v<��','18x7irozhBegs36LX2vW7HbqdwqxQqKraN',1,0,'?���\�\�.m����\�Fa��蛪��\���Qt','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','test',0,1,0,0,NULL,1564406418),('6\�~X97\�+LW\�\�\�\�ū���z_a9ߓG��\�p',1,100,'v�\�)��:\�5E�q��:�V\�\'���','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,'?���\�\�.m����\�Fa��蛪��\���Qt','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','test',1,1,1,1564406647241,' $%#�J�\�#�\nB\�ZH�2e4W�K ��\�P\�\�',1564406418),('9Y:��>��\�Y@3�\��k�\�4{�\�b�3g���',0,300,'v�\�\�\�\�n4@��\0J�g�s���','1N3hG7mZwSDMCvHG5gEBaEcs5oU68fTsGH',1,0,'d\�lM\�\�<b-!�\�|�\�zW+�\�K�XEq�\�\�','bc','','test4',0,1,0,0,NULL,1564639884),('9Y:��>��\�Y@3�\��k�\�4{�\�b�3g���',1,0,'R!��<\�<O�\��N�\�\�\�\�o�\"gY������!lYΘ \�x�\�>\�\\\\�\� nE\��\�v��㮕iR�','',0,0,'d\�lM\�\�<b-!�\�|�\�zW+�\�K�XEq�\�\�','bc','','test4',0,1,0,0,NULL,1564639884),('B�z�}#���6]�ڟ�\�7�W�ʹ�\�[�m>',0,12345400,'!��*��s��\�p�b���5�æ�N�O3K5W\�5o�','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7',2,0,'~\�)�4�аZ\�v\�\\�\�\0�\�\\�ϼ��x��-U','bc','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7',NULL,0,1,0,0,NULL,1564429717),('D��P�@D\�؀\�}ҳ�KM\�[F-X�/HS}\�V',0,12345600,'v���g��Q\"\�7�B;_ș\�S��','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7',1,0,'5\rkj�MF�]�/Ow#\�. PZ\�\�\�dyxט','bc','','test',1,1,1,1564429717824,'~\�)�4�аZ\�v\�\\�\�\0�\�\\�ϼ��x��-U',1564426302),('D��P�@D\�؀\�}ҳ�KM\�[F-X�/HS}\�V',1,9999980411700,'v��\�\�u��5\�_�\\�\�ߋ\��g��','1EkFquFDC2v3wDuVLgKqQwPXfiSrG3zRGX',1,0,'5\rkj�MF�]�/Ow#\�. PZ\�\�\�dyxט','bc','','test',0,1,0,0,NULL,1564426302),('F�<j��YZ�Dn�{\�)q� 6h\�\�3cI\�\�\�',0,10000000000000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','bc','',NULL,1,1,1,1564367725865,' �X��\�K�\�h�Y�\r[\�Z.��0n��p5e�',0),('M��A��\�\��\�\�Do��4� �h\�2�\�f\�s\�\�',0,678900000,'R!+���PK�\�i+s+�*s\�Z\�V ռ!�\Z.`us!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,'@d`h��\��A 8Ե�\�\�l�쇄�I�Iȥ&G�','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573','',NULL,0,1,0,0,NULL,1564410260),('b5}X�\�\0\�Ɗ�#	\���9��A\�B+��^\�5��',0,7,'v�W5^��\�N���un2��\�v<��','18x7irozhBegs36LX2vW7HbqdwqxQqKraN',1,0,'\Z\�ܔy\�\�e\r�\�*3*���P�\�T\�Ơa�ر�\�','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','0.03',0,1,0,0,NULL,1564407660),('b5}X�\�\0\�Ɗ�#	\���9��A\�B+��^\�5��',1,3,'v�\�)��:\�5E�q��:�V\�\'���','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,'\Z\�ܔy\�\�e\r�\�*3*���P�\�T\�Ơa�ر�\�','bc','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk','0.03',1,1,1,1564407713734,'�\�X���w��Iھ(V坴ck�\�\r�r\��',1564407660),('iCPE@�p \�+\"vH\���I�Ki\�\��RB�U',0,4,'v�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��','1111111111111111111114oLvT2',1,1,'a��;k_�\�K\�`�+��y�A�yؒR�\�l\�tφ','bc','',NULL,0,1,0,0,NULL,1564627170),('iCPE@�p \�+\"vH\���I�Ki\�\��RB�U',1,14,'v�\�\�\�稒\n\�o\�\�L�I�\\�Ԉ�','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'a��;k_�\�K\�`�+��y�A�yؒR�\�l\�tφ','bc','',NULL,0,1,0,0,NULL,1564627170),('iCPE@�p \�+\"vH\���I�Ki\�\��RB�U',2,4,'v��쓅�R�G\�*Jr�\�\�#�1D��','1PhBzBUTXzq1M5wY5rvgEgwMcoSWbwhdRC',1,1,'a��;k_�\�K\�`�+��y�A�yؒR�\�l\�tφ','bc','',NULL,0,1,0,0,NULL,1564627170),('p�ʵ影\Z�o�Uz\�ϣ\�\�.��+�C+�\�0J',0,678900000,'R!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HY!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,';\r�ReO\�#2\�N\�[�t\�X`%D\�Ɣ�\�\�_\'��','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859','',NULL,0,1,0,0,NULL,1564410244),('t�SI;\�HQE��f<\�9זjY:�n^oX8q��',0,678900000,'R!��`�\�L\�\�\0?�{m)%\�lG��	\�|r@@]{=!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,'a\�WQ�3\�s�_���w+��O���H+{\�','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d','',NULL,0,1,0,0,NULL,1564410253),('t�\�_B4\�X2P���\�\�E\�\�\�@��\���\�\�C',0,25700,'v�\�)��:\�5E�q��:�V\�\'���','1LLpXKzNtKi5LWvyGFDxu9JFFcWwpZX1fk',1,0,'2\��:���1ŧr �\���\�\�P\�#%\�\�','bc','',NULL,1,1,1,1564406418871,'?���\�\�.m����\�Fa��蛪��\���Qt',1564406301),('t�\�_B4\�X2P���\�\�E\�\�\�@��\���\�\�C',1,9999992757300,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'2\��:���1ŧr �\���\�\�P\�#%\�\�','bc','',NULL,1,1,1,1564426302534,'5\rkj�MF�]�/Ow#\�. PZ\�\�\�dyxט',1564406301),('�������W|\�\�K�왊\�\���\�\�55֦/�^�',0,10500,'v��(4\�hAl9\�F�6�2�-n\�W��','1Gy9QxJ9Q4JMq62hNMfiZWPmjFUctTm4af',1,0,' �X��\�K�\�h�Y�\r[\�Z.��0n��p5e�','bc','','WEIXIN',0,1,0,0,NULL,1564367725),('�������W|\�\�K�왊\�\���\�\�55֦/�^�',1,350000,'v�Y腑9�����\�5F\n�|���','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',1,0,' �X��\�K�\�h�Y�\r[\�Z.��0n��p5e�','bc','','WEIXIN',1,1,1,1564627151381,'T\�F�`\�(��\�\�k�\�7�\��\�\�]�\�qL��',1564367725),('�������W|\�\�K�왊\�\���\�\�55֦/�^�',2,17500,'v��\��\�\�.fo�\�h�Ɔ����','1H7g13KSLBkGtuxBe58rQGG3rk8qfQudsA',1,0,' �X��\�K�\�h�Y�\r[\�Z.��0n��p5e�','bc','','WEIXIN',0,1,0,0,NULL,1564367725),('�������W|\�\�K�왊\�\���\�\�55֦/�^�',3,9999999622000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,' �X��\�K�\�h�Y�\r[\�Z.��0n��p5e�','bc','','WEIXIN',1,1,1,1564387082888,'+�/\���s:��c\�\�q�i�����\�\�k��\��',1564367725),('�~+��&�\�\�wt�\�\��E\����Qs\��M]�D',0,200,'Q!^O[=D�>��د�p������ԇh\�ȏ<yQ�','',0,0,'\�\�L\�ѪZ��64y\�\�.q�w�</�S\�ޑ\�','bc','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',NULL,0,1,0,0,NULL,1564626659),('�~+��&�\�\�wt�\�\��E\����Qs\��M]�D',1,2799800,'v�\�m*\�}�Q}����\�*(/~=���','1Le548FsyeXyBMtsoduaHZhKJnJGbDMBao',1,0,'\�\�L\�ѪZ��64y\�\�.q�w�</�S\�ޑ\�','bc','1aam68DxH7SJgdRPAQoBVDx3xBLkdkahs',NULL,0,1,0,0,NULL,1564626659),('�Z�3��U\�I\0?IM�U6|/`��(ԫs��',0,678900000,'R!\��\�JY�<\�Ѭ�e\�\��7e\�~d\�\�*�\�Pl�!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,'6|\�HS,���<y�����\��j@y\\K�!\0i','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc','',NULL,0,1,0,0,NULL,1564410256),('�zb!���\�\�T\�>2\�\�d�C0\'�x�\�qj1�',0,1792800,'v��4��][oS�\����x������','1PuFnszE3u7Ku1VPkY7Fa4oamUWcZnXBnH',1,0,'5a��\�\�}�\��e�J���\�o8��g�&��JD\��P','bc','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7','1',0,1,0,0,NULL,1564387233),('�zb!���\�\�T\�>2\�\�d�C0\'�x�\�qj1�',1,100,'v���g��Q\"\�7�B;_ș\�S��','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7',1,0,'5a��\�\�}�\��e�J���\�o8��g�&��JD\��P','bc','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7','1',0,1,0,0,NULL,1564387233),('\�^\�\�\�=0>�l\�m�#��F�5b@�K*���\�\�',0,10,'v�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��','1111111111111111111114oLvT2',1,1,'L.�J�k4\'\��\�W���\Z�Q���T2�\�akb','bc','',NULL,0,1,0,0,NULL,1564410255),('\�^\�\�\�=0>�l\�m�#��F�5b@�K*���\�\�',1,80,'v�\�\�\�稒\n\�o\�\�L�I�\\�Ԉ�','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'L.�J�k4\'\��\�W���\Z�Q���T2�\�akb','bc','',NULL,0,1,0,0,NULL,1564410255),('\�^\�\�\�=0>�l\�m�#��F�5b@�K*���\�\�',2,10,'v��쓅�R�G\�*Jr�\�\�#�1D��','1PhBzBUTXzq1M5wY5rvgEgwMcoSWbwhdRC',1,1,'L.�J�k4\'\��\�W���\Z�Q���T2�\�akb','bc','',NULL,0,1,0,0,NULL,1564410255),('\�_.�F�H\�\�GNs\�^t3�\�Q!��*\��Pg�',0,678900000,'R!\0]d%*i�s�\�^�<��\�z!��a�P�o\�%h!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,':�@>�\\q�׊29O\�l2����i\�\"�#��Њ�\�','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568','',NULL,0,1,0,0,NULL,1564410251);
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
INSERT INTO `outputsmulti` VALUES ('�3O�N!���9��dT\�\�[A\�)�]�IG\�',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('�3O�N!���9��dT\�\�[A\�)�]�IG\�',0,'1MW35ZNpYDANihQjDZC7fmzj2rADW4ZyrP',2),('/T3H[�\�\�f��T&\"L�X\�x�\�/J[�\�u|�\�',1,'1AEw57BsZX7CiGStKqGNA5ZHHWiV3oxPqy',2),('/T3H[�\�\�f��T&\"L�X\�x�\�/J[�\�u|�\�',1,'1Db235DFpST2zqTL1YwCYDw419rGsvZGr6',2),('9Y:��>��\�Y@3�\��k�\�4{�\�b�3g���',1,'1AEw57BsZX7CiGStKqGNA5ZHHWiV3oxPqy',2),('9Y:��>��\�Y@3�\��k�\�4{�\�b�3g���',1,'1Db235DFpST2zqTL1YwCYDw419rGsvZGr6',2),('M��A��\�\��\�\�Do��4� �h\�2�\�f\�s\�\�',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('M��A��\�\��\�\�Do��4� �h\�2�\�f\�s\�\�',0,'1Lpvh2E44RSReTnmPivfghtUm2RE9Kd66B',2),('p�ʵ影\Z�o�Uz\�ϣ\�\�.��+�C+�\�0J',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('p�ʵ影\Z�o�Uz\�ϣ\�\�.��+�C+�\�0J',0,'1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB',2),('t�SI;\�HQE��f<\�9זjY:�n^oX8q��',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('t�SI;\�HQE��f<\�9זjY:�n^oX8q��',0,'1GtzL9G51YTnquirBBptpgKkwzRGp3Nicg',2),('�~+��&�\�\�wt�\�\��E\����Qs\��M]�D',0,'1C6a32NXDtihFUa1JBU5bRosBnbgmrnaxQ',1),('�Z�3��U\�I\0?IM�U6|/`��(ԫs��',0,'12jEy3c58dGMtB3sotY99WXXC3hfuqozNV',2),('�Z�3��U\�I\0?IM�U6|/`��(ԫs��',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('\�_.�F�H\�\�GNs\�^t3�\�Q!��*\��Pg�',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('\�_.�F�H\�\�GNs\�^t3�\�Q!��*\��Pg�',0,'17gt5R6JU3geTrJqauEWZZ1hqozH5HAppG',2);
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
INSERT INTO `tips` VALUES ('d\�lM\�\�<b-!�\�|�\�zW+�\�K�XEq�\�\�');
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
INSERT INTO `tokens` VALUES ('0383379413b5adbf1ac5fa3541c0ba0fb8d36d17898a31239f0ef304a80e9341',1,'034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e',0,678900000,'test-1-BTC','test-1-BTC',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('367cdc1448532c1fbeffb33c7f79beb7babc8fedf2926a40795c4b8a2100690c',1,'03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc',0,678900000,'test-1-USD','test-1-USD',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('3af3403efd5c71b2d78a32394fe66c3293fa80fc69e79122b723f9f6d08abbd0',1,'02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568',0,678900000,'test-1-ETH','test-1-ETH',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('3b0d8952654fcb2332ef4ed87f5b9d74e458602544dbc69419afe7e55f27b695',1,'02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859',0,678900000,'test-1-Gold','test-1-Gold',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('40640e606880ffcef6412038d4b5fae2c56c9dec8784ba499e49c8a52647f39f',1,'022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573',0,678900000,'test-1-EUR','test-1-EUR',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('61ea1b5751ad08041833ed9073865f818ef2b8772bfd894faf018db1482b7bdf',1,'021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d',0,678900000,'test-1-人民币','test-1-人民币',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',1,'bc01',0,1,'bc','BigTangle Domain','bc',1,3,1,'',0,NULL,NULL,0,NULL,NULL,'',2),('a289f54b7f68910707a293b464577c78bc40c30a2ec50c3de20c3d5d0be40eff',1,'bc',0,10000000000000,'BIG','BigTangle Currency',NULL,1,0,1,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',2);
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
INSERT INTO `txreward` VALUES ('L.�J�k4\'\��\�W���\Z�Q���T2�\�akb',10,1,1,'a��;k_�\�K\�`�+��y�A�yؒR�\�l\�tφ',2,'�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9',2),('a��;k_�\�K\�`�+��y�A�yؒR�\�l\�tφ',20,1,0,NULL,2,'L.�J�k4\'\��\�W���\Z�Q���T2�\�akb',8),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9',0,1,1,'L.�J�k4\'\��\�W���\Z�Q���T2�\�akb',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',10);
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
INSERT INTO `userdata` VALUES ('v�<Gd�1\�\Z:�>[n�H�.Z��M\�#\�z\�\�X�','CONTACTINFO','{\n  \"version\" : 1,\n  \"contactList\" : [ {\n    \"name\" : \"3r3\",\n    \"address\" : \"12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7\"\n  } ]\n}','0296a7d955d47d79e9b6880b66a5750d69f2722bac46f5660508c439ef9e760d56',4);
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
