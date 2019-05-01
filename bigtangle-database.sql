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
INSERT INTO `blocks` VALUES ('\0�9���>^vS\�p\�=ʱ;���WH\�$�\��',2,'\0\0\0~F\�X��Q�\����ƕ+\�fڼ \��y�&bT+\�<	~F\�X��Q�\����ƕ+\�fڼ \��y�&bT+\�<	\�;�8E�|\�v���\�YG0��������&}\r\�\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�Sݐ\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0I��\"g�Tŧ��0v?5hJ�0�Mޕ\']e�\�\0\0\0IH0E!\0\��\���إ\��$;\�a�{�����	�Ӵ& #E_]td},\'�]*�S\�\�BQ�=��d\�������\0\0\00��z�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u� � \0\0\0\0�v�\�\�y�me����&畾�L��\�g5\0\0\0\0\0�v�]�n�\�LJ�\�%�ũ���䮈�@x}\0\0\0\0�v���\�rY�	�&�\�`�\�M��\0e\�\0\0\0\0�v�i\�\�Ƒhճk%\�C��}������\0\0\0\0�v�Ti�mskDGff�����\�\�XHf��\0�/\0\0\0\0�v�\�˔!�V%�C.\"D\���<N� �����\0\0\0\0\0�v��j߇������=<I(\�������\0\0\0\0�v���\�4�%n\�\�v\�6�0�I^�\�\0\0\0\0\0\0�v��\�N\�\�ؐ�B(�v���s�M��\0\��\0\0\0\0�v����q�$�5�\\�Gf颈�\0��e\0\0\0�v��B�^��42�;y�ʯŽe٤��\0\�T\0\0\0�v�$^i\�\�\�sٯ&?0�$ܓ�f\�6�����\0\0\0\0�v��g+2EU\�]Fx\�ϸ�>�D���`\�S\0\0\0\0\0�v�\�S�cD�\�t��\�;\�\�/[������\0\0\0\0�v�\�ET\�6W�\�{ni��]��و���\�\0\0\0\0�v�\�9 �Mjƀ��{�q\�\�Akx���\0ʚ;\0\0\0\0�v�ՙ�y�\�]�)��\��\�o,��\0e\�\0\0\0\0�v���n\�ͪQ�\�\� <���@����� \�\0\0\0\0�v�P�y\�P�\�\�>\�L�\�<�,2�`��`Ĳ^u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,24,29,1,1556657975634,24,1556657650399,1),('	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~',1,'\0\0\0\\\r!\�w���i\';�x\�\�W���ɷ%v\�\��Tj\\\r!\�w���i\';�x\�\�W���ɷ%v\�\��TjI��\"g�Tŧ��0v?5hJ�0�Mޕ\']e�ۍ�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\�\�,G�����˓\�l���?��yδ\�l�\�eEH\0\0\0\0HG0D -\r\�o\Z\n<\�}YS�_t�ǮJ_	i\�\�\�\� ,8�km��q�Ll�:\�\0sf�7-�\�kw��������\0\0\0\0�Ƥ~�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u� � \0\0\0\0�v�\�\�y�me����&畾�L��\�g5\0\0\0\0\0�v�]�n�\�LJ�\�%�ũ���䮈�@x}\0\0\0\0�v���\�rY�	�&�\�`�\�M��\0e\�\0\0\0\0�v�i\�\�Ƒhճk%\�C��}������\0\0\0\0�v�Ti�mskDGff�����\�\�XHf��\0�/\0\0\0\0�v�\�˔!�V%�C.\"D\���<N� �����\0\0\0\0\0�v��j߇������=<I(\�������\0\0\0\0�v���\�4�%n\�\�v\�6�0�I^�\�\0\0\0\0\0\0�v��\�N\�\�ؐ�B(�v���s�M��\0\��\0\0\0\0�v����q�$�5�\\�Gf颈�\0��e\0\0\0�v��B�^��42�;y�ʯŽe٤��\0\�T\0\0\0�v�$^i\�\�\�sٯ&?0�$ܓ�f\�6�����\0\0\0\0�v��g+2EU\�]Fx\�ϸ�>�D���`\�S\0\0\0\0\0�v�\�S�cD�\�t��\�;\�\�/[������\0\0\0\0�v�\�ET\�6W�\�{ni��]��و���\�\0\0\0\0�v�\�9 �Mjƀ��{�q\�\�Akx���\0ʚ;\0\0\0\0�v�ՙ�y�\�]�)��\��\�o,��\0e\�\0\0\0\0�v���n\�ͪQ�\�\� <���@����� \�\0\0\0\0�v�P�y\�P�\�\�>\�L�\�<�,2�`��0��z�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\','jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,25,30,1,1556657975520,25,1556657076444,1),('�!4�\�ߌ�w\�*\0#���ڿF\�DA\�@.nmW\�',17,'\0\0\0T���`\0G�\�XKm��3\�\�we�\�s��]�\�0\�\�	����\�J[���e�m�\�Wpd�C�\�o\�\\9\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0T\�C�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'0\�]��s\�ew\�\�3��mKX\��G\0`���T','\Z9\\\�o\�C�dpW\��m�e���[J\�����	\�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,9,10,1,1556658537457,9,1556658532919,1),('\r]=G\�rC/=@R��t\�m\�{f\� \��\�\rg��e]',19,'\0\0\0\�\�\�\��	(�DU*�\�\0���u�\�U�\�X�_-\�\�\�\��	(�DU*�\�\0���u�\�U�\�X�_-T\�\�\'A\�\�O\��V\�\�S\'$�#\\�\�_�\��x�H�i�c�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�=\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!+���PK�\�i+s+�*s\�Z\�V ռ!�\Z.`us#!+���PK�\�i+s+�*s\�Z\�V ռ!�\Z.`us�\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"EUR\",\n    \"description\" : \"EUR\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1Lpvh2E44RSReTnmPivfghtUm2RE9Kd66B\",\n    \"publickey\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"signature\" : \"3044022004ed48d8c51b75d32a2a1596a352caea2e619e271f7003dec8312bb67ecb75220220570574d13dfcea45b45f8c3b11f47f90f2fa2bb93f893b6a98ab90a3c88639fa\"\n  } ]\n}',0,'-_�X\��U\��u���\0ۑ*UD�(	�\�\�\�\�','-_�X\��U\��u���\0ۑ*UD�(	�\�\�\�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,7,8,1,1556658537516,7,1556658533075,1),('\�ɶs�\�Z*M��\�/�\�>�� \'\�\�\�ri&\��X',15,'\0\0\0;ai\�\�k�_\��x5�x	קǖ��^iE6��]8\�\�\�2Jq�}�V�kW\���\�-x`������3\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0NS\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'8]��6Ei^���\��\�	x�5x�\�_�k\�\�ia;','3������`x-�\��\�Wk�V�}�qJ2\�\�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,11,13,1,1556658527302,11,1556658524021,1),('�\�\�g�� D�\'�m���&+�jƧs\�f�Y��T',6,'\0\0\0@\"�p��\���\'�:*[�\���6�E\�X\�F\�}@\"�p��\���\'�:*[�\���6�E\�X\�F\�}��� ղhҢ�I\�O\';� ��\�\�nr��J�wg\�S�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0rpHv\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0����\0\0\0\0 1w(\0\0\0\0!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HY#!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HY�\0\0\0\0\0\0\0\0\0\0\0TOKEN�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 1,\n    \"tokenname\" : \"Gold\",\n    \"description\" : \"Gold\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"1c72789143017bf8e6b43286e79688ea45abd136b80935152a1a17d726362a15\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB\",\n    \"publickey\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"signature\" : \"3044022058aa2992655272ac64b130db28075e33aabf27f1dd34618024585d05e46007c302202ea63cb6baaa944d9428299f5fd15f76dad490f5553d1e375ca873278d47d87e\"\n  } ]\n}',0,'}\�F\�X\�E�6��\�[*:�\'��޷�p�\"@','}\�F\�X\�E�6��\�[*:�\'��޷�p�\"@','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,20,25,1,1556658518468,20,1556658515708,1),('QI�W�9:&qW�J-S�vU7*4�����\��\�_',3,'\0\0\0�\�$\�HW���;�\�=\�p\�Sv^>���9�\0�\�$\�HW���;�\�=\�p\�Sv^>���9�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�X\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,23,28,1,1556657975717,23,1556657650852,1),('0����\�p}�9�!�\�8V�9\�\�\��\�',8,'\0\0\0�\�ģ�}~ݙ\�?�c:�U\�m��\�+v�P�\�ģ�}~ݙ\�?�c:�U\�m��\�+v�P\n��$��\���	�~W�\�:\�0�\��`N��U�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�TR\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!O�\�t5�ح\�\�\�4���ؑ���\�S嫷,�=^n#!O�\�t5�ح\�\�\�4���ؑ���\�S嫷,�=^n�\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"BTC\",\n    \"description\" : \"BTC\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1MW35ZNpYDANihQjDZC7fmzj2rADW4ZyrP\",\n    \"publickey\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"signature\" : \"3044022047c6fced207ad2aa5200cb6fa846e793f4b91e3a9c0fe1264a0dc0306be30f5a0220439392993596274e1253a51d155c7ba2fffaceddf3aa50b70fea874c76249b47\"\n  } ]\n}',0,'P�v+�\��m\�U�:c�?ݙ\�~}��\�\��','P�v+�\��m\�U�:c�?ݙ\�~}��\�\��','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,18,23,1,1556658518468,18,1556658517564,1),('*�y%��Q�C\��!\�b�	\�5��VQ�\�̸3',11,'\0\0\0\� �ܤہ���-���?\����gE~<�)�9d(.\� �ܤہ���-���?\����gE~<�)�9d(.􎻝@M�l�\�\�ˈb�]���2WB\�S�vlTV�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�R��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\0]d%*i�s�\�^�<��\�z!��a�P�o\�%h#!\0]d%*i�s�\�^�<��\�z!��a�P�o\�%h�\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"ETH\",\n    \"description\" : \"ETH\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"address\" : \"17gt5R6JU3geTrJqauEWZZ1hqozH5HAppG\",\n    \"publickey\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"signature\" : \"3045022100f0fd750cd62cbf91de3ff6f867077b11b7c3827f87c93960662d530cee4c438a02204f1135f3aed8a7a64f1e72f017d3840f54f842231705d315cdc79a23e76c8d66\"\n  } ]\n}',0,'.(d9�)�<~Eg���\�?���-����ۤ\�� \�','.(d9�)�<~Eg���\�?���-����ۤ\�� \�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,14,17,1,1556658527143,14,1556658519646,1),('\�)\���w\�	\�+��\n=u��\�E�AƨѾ!\�\�6',21,'\0\0\0�]5��{�;x\�:�\�p�\"D2;\���\�\�W�W+�]5��{�;x\�:�\�p�\"D2;\���\�\�W�W+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0e�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0D\�\�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'+W�W\�\���\�;2D\"�p\��:\�x;�{��5]�','+W�W\�\���\�;2D\"�p\��:\�x;�{��5]�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,5,6,1,1556658537515,5,1556658533429,1),('\Z9\\\�o\�C�dpW\��m�e���[J\�����	\�\�',16,'\0\0\0X�\�&ir\�\�\�\' ��>\��/ȭ�M*Z\��s�\�\�X�\�&ir\�\�\�\' ��>\��/ȭ�M*Z\��s�\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0v\�{)\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'\�ɶs�\�Z*M��\�/�\�>�� \'\�\�\�ri&\��X','\�ɶs�\�Z*M��\�/�\�>�� \'\�\�\�ri&\��X','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,10,11,1,1556658537398,10,1556658524612,1),('\Z\��1�CH�l}\�HG�v�Oe\0H\�gbe�w�\�',25,'\0\0\0U\�u.hD��\�\�S(�X��\�j!�&M��\�uU\�u.hD��\�\�S(�X��\�j!�&M��\�u\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0u�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�7P�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'u\��M&�!j͍��X�(S\�Ƈ�Dh.u\�U','u\��M&�!j͍��X�(S\�Ƈ�Dh.u\�U','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,1,2,1,1556658552265,1,1556658549588,1),('}\�F\�X\�E�6��\�[*:�\'��޷�p�\"@',5,'\0\0\0*6&\�\Z*5	�6ѫEꈖ\�2�\��{C�xr*6&\�\Z*5	�6ѫEꈖ\�2�\��{C�xr\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0L�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�V�/\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'rx�C{�\�2�疈\�E�\�6�	5*\Z\�&6*','rx�C{�\�2�疈\�E�\�6�	5*\Z\�&6*','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,21,26,1,1556658254788,21,1556658253558,1),('rx�C{�\�2�疈\�E�\�6�	5*\Z\�&6*',4,'\0\0\0_�\��՚����4*7Uv�S-J�Wq&:9�W�IQ_�\��՚����4*7Uv�S-J�Wq&:9�W�IQ����\�\�\�\�~�\�Bb��uU-�@$N\"\'w��K�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0B�{�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0����\0\0\0\0 1w(\0\0\0\0!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HY#!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HY�\0\0\0\0\0\0\0\0\0\0\0TOKENP\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"Gold\",\n    \"description\" : \"Gold\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB\",\n    \"publickey\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"signature\" : \"3045022100e1c492c535439f11f8f4dbc80ad19578f4c344133d8c851506f71861ea01775e0220247387f47ee8939d2a3beb0078f9cb023d1b3e62fcac784e672452fe9fb1f565\"\n  } ]\n}',0,'QI�W�9:&qW�J-S�vU7*4�����\��\�_','QI�W�9:&qW�J-S�vU7*4�����\��\�_','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,22,27,1,1556658254789,22,1556658252853,1),('P�v+�\��m\�U�:c�?ݙ\�~}��\�\��',7,'\0\0\0T��Y�f\�s�\�j�+&���m�\'�D ��g\�\�T��Y�f\�s�\�j�+&���m�\'�D ��g\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0J@\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'�\�\�g�� D�\'�m���&+�jƧs\�f�Y��T','�\�\�g�� D�\'�m���&+�jƧs\�f�Y��T','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,19,24,1,1556658518468,19,1556658516185,1),('�\�\�7\�\�V�Ȟm? 0v�D\�{���\0>��\�',12,'\0\0\0��\�䍬�B��e&sG0\�c	-vB�\Z\"\�\�g0k6��\�䍬�B��e&sG0\�c	-vB�\Z\"\�\�g0k6F�%u�,J��\�b�\�\�`$��t\0���X�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0u\�\�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!X���%N�\'Ʈi� Z\�\���vh�\0W+UP#!X���%N�\'Ʈi� Z\�\���vh�\0W+UP�\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02581083abb6254ef927c6ae6910f2bf201f5a02dbd21fa99a7668b800572b5550\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"CNY\",\n    \"description\" : \"CNY\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02581083abb6254ef927c6ae6910f2bf201f5a02dbd21fa99a7668b800572b5550\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02581083abb6254ef927c6ae6910f2bf201f5a02dbd21fa99a7668b800572b5550\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02581083abb6254ef927c6ae6910f2bf201f5a02dbd21fa99a7668b800572b5550\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1E4Jo9Wu28sYczCqLZueQ5NsTA6wG2dokD\",\n    \"publickey\" : \"02581083abb6254ef927c6ae6910f2bf201f5a02dbd21fa99a7668b800572b5550\",\n    \"signature\" : \"3045022100e3cc875fe6b684d1306634a0bf80f58d0017a1b364fb20471255735a42e9ce9a0220539120f33879cbbff398ba21cf2f30b8913e2fc6ad67f11bb705864001bf7520\"\n  } ]\n}',0,'6k0g�\�\�\"\Z�Bv-	c\�0Gs&e��B���\�襃','6k0g�\�\�\"\Z�Bv-	c\�0Gs&e��B���\�襃','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,14,17,1,1556658527140,14,1556658521612,1),('#���!\��\��Ҝ���zr+AϷ��\Z�>',9,'\0\0\0Ք��\�\�\�9�V8\��!�9�}p؄���0Ք��\�\�\�9�V8\��!�9�}p؄���0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0U�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\02\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'0����\�p}�9�!�\�8V�9\�\�\��\�','0����\�p}�9�!�\�8V�9\�\�\��\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,17,22,1,1556658518467,17,1556658518044,1),('+3$_�@2\�>��ZY�\�-��ցS*��\�s:',23,'\0\0\0�j�N��0P�P�$޷.ī���UE��8�j�N��0P�P�$޷.ī���UE��8�(\�Vף�BXJw�\��\�3\"|\�F9�b>Oz+g�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0COS\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 1,\n  \"toHeight\" : 20,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"agJU9gHuxXYlt8m0H7aBV+HNeK47J2n6lPt3yxchDVw=\",\n    \"reversedBytes\" : \"XA0hF8t3+5T6aSc7rnjN4VeBth+0ybcldsXuAfZUAmo=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'8��EU���\�.�\�$�P�P0��N�j�','8��EU���\�.�\�$�P�P0��N�j�','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,3,4,1,1556658552136,3,1556658548314,1),('+W�W\�\���\�;2D\"�p\��:\�x;�{��5]�',20,'\0\0\0]e��g\r\��\� \�f{\�m\�t��R@=/Cr\�G=]\r]e��g\r\��\� \�f{\�m\�t��R@=/Cr\�G=]\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�\�4\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'\r]=G\�rC/=@R��t\�m\�{f\� \��\�\rg��e]','\r]=G\�rC/=@R��t\�m\�{f\� \��\�\rg��e]','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,6,7,1,1556658537516,6,1556658533127,1),('-_�X\��U\��u���\0ۑ*UD�(	�\�\�\�\�',18,'\0\0\0\�Wmn.@\�AD\�F�\����#\0*\�w��\�\�4!�\�Wmn.@\�AD\�F�\����#\0*\�w��\�\�4!�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0b�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�\�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'�!4�\�ߌ�w\�*\0#���ڿF\�DA\�@.nmW\�','�!4�\�ߌ�w\�*\0#���ڿF\�DA\�@.nmW\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,8,9,1,1556658537457,8,1556658533018,1),('-������{�\�p\�\��U\�R>�F g�\�X\�\��ȁ',13,'\0\0\0ɕ�>\0���{\�D���v0 ?m�ȌV\�\�7\�߇ɕ�>\0���{\�D���v0 ?m�ȌV\�\�7\�߇\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Y�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'�\�\�7\�\�V�Ȟm? 0v�D\�{���\0>��\�','�\�\�7\�\�V�Ȟm? 0v�D\�{���\0>��\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,13,16,1,1556658527140,13,1556658522095,1),('.(d9�)�<~Eg���\�?���-����ۤ\�� \�',10,'\0\0\0>�\Z���\�A+rz󨃜ғ�\�\�!���#>�\Z���\�A+rz󨃜ғ�\�\�!���#\�^G��a>�qI.t|=ޯ/8hE��,����(\�gY�U�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0IO�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -7,\n  \"toHeight\" : 10,\n  \"prevHash\" : {\n    \"bytes\" : \"agJU9gHuxXYlt8m0H7aBV+HNeK47J2n6lPt3yxchDVw=\",\n    \"reversedBytes\" : \"XA0hF8t3+5T6aSc7rnjN4VeBth+0ybcldsXuAfZUAmo=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'#���!\��\��Ҝ���zr+AϷ��\Z�>','#���!\��\��Ҝ���zr+AϷ��\Z�>','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,16,21,1,1556658521858,16,1556658518541,1),('0\�]��s\�ew\�\�3��mKX\��G\0`���T',16,'\0\0\0X�\�&ir\�\�\�\' ��>\��/ȭ�M*Z\��s�\�\�X�\�&ir\�\�\�\' ��>\��/ȭ�M*Z\��s�\�\�j�\�~�,\0-\�ȧ��y�\�Fl\'r��L\�4xw\�\\\\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0���z\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\��\�JY�<\�Ѭ�e\�\��7e\�~d\�\�*�\�Pl�#!\��\�JY�<\�Ѭ�e\�\��7e\�~d\�\�*�\�Pl��\0\0\0\0\0\0\0\0\0\0\0TOKENN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"USD\",\n    \"description\" : \"USD\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"address\" : \"12jEy3c58dGMtB3sotY99WXXC3hfuqozNV\",\n    \"publickey\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"signature\" : \"3045022100a8abe4e28cfb3bbf1ac082a6ce9d00a42509de4fa5d7aeee75274a0ca0092d48022044c2d7d35dc9914a59bd0ebb77a05c81b5651039193054051c8962329253bd7f\"\n  } ]\n}',0,'\�ɶs�\�Z*M��\�/�\�>�� \'\�\�\�ri&\��X','\�ɶs�\�Z*M��\�/�\�>�� \'\�\�\�ri&\��X','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,10,11,1,1556658537458,10,1556658525128,1),('0W��ڝ���\��\�;-r7\�\�\�\�4ah2�?',12,'\0\0\03�\�\�QV��5\�	�b\�!��\�C�Q��%y�*3�\�\�QV��5\�	�b\�!��\�C�Q��%y�*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�lk\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'*�y%��Q�C\��!\�b�	\�5��VQ�\�̸3','*�y%��Q�C\��!\�b�	\�5��VQ�\�̸3','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,13,16,1,1556658527142,13,1556658520128,1),('3������`x-�\��\�Wk�V�}�qJ2\�\�\�',14,'\0\0\0�\��\�\�Xˏg F�>R\�U�\�\�pݻ{������-?�2ha4\�\�\�\�7r-;\��\�����ڐ�W��\�0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0p\�|\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'-������{�\�p\�\��U\�R>�F g�\�X\�\��ȁ','0W��ڝ���\��\�;-r7\�\�\�\�4ah2�?','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,12,14,1,1556658527303,12,1556658523044,1),('6k0g�\�\�\"\Z�Bv-	c\�0Gs&e��B���\�襃',11,'\0\0\0\� �ܤہ���-���?\����gE~<�)�9d(.\� �ܤہ���-���?\����gE~<�)�9d(.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0V�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0%�*\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'.(d9�)�<~Eg���\�?���-����ۤ\�� \�','.(d9�)�<~Eg���\�?���-����ۤ\�� \�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,15,18,1,1556658527140,15,1556658519150,1),('8]��6Ei^���\��\�	x�5x�\�_�k\�\�ia;',14,'\0\0\0�\��\�\�Xˏg F�>R\�U�\�\�pݻ{������-?�2ha4\�\�\�\�7r-;\��\�����ڐ�W��\�0�W��k\�nA�\�#L��TLN�y`  8ϗ\0\��U3Z�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�#\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!��`�\�L\�\�\0?�{m)%\�lG��	\�|r@@]{=#!��`�\�L\�\�\0?�{m)%\�lG��	\�|r@@]{=�\0\0\0\0\0\0\0\0\0\0\0TOKENZ\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"人民币\",\n    \"description\" : \"人民币\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1GtzL9G51YTnquirBBptpgKkwzRGp3Nicg\",\n    \"publickey\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"signature\" : \"3045022100d0bb38dbffcd3f44e1c0e688bae8537edfd1045b4649c4aced9b6dd022590e0002207054340cb2f9c4e8e6ac8f9e3d01d75082bd4db77c0979ff740fbc85b76b2ad2\"\n  } ]\n}',0,'-������{�\�p\�\��U\�R>�F g�\�X\�\��ȁ','0W��ڝ���\��\�;-r7\�\�\�\�4ah2�?','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,12,14,1,1556658527139,12,1556658523541,1),('8��EU���\�.�\�$�P�P0��N�j�',22,'\0\0\06\�\�!�Ѩ\�A�EƏ�u=\n��+\�	\�w��\�)\�6\�\�!�Ѩ\�A�EƏ�u=\n��+\�	\�w��\�)\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0g�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�\�ã\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'\�)\���w\�	\�+��\n=u��\�E�AƨѾ!\�\�6','\�)\���w\�	\�+��\n=u��\�E�AƨѾ!\�\�6','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,4,5,1,1556658537574,4,1556658535406,1),('jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�,G�����˓\�l���?��yδ\�l�\�eEHm#^[\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0\0�Ƥ~�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,26,31,1,1556656547697,26,1556656547565,1),('u\��M&�!j͍��X�(S\�Ƈ�Dh.u\�U',24,'\0\0\0:sդ�*S�֪�-�\�YZ��>\�2@�_$3+:sդ�*S�֪�-�\�YZ��>\�2@�_$3+|���ꌴr\�\0�RnP�B0�\Zu�\�@D2a �v\�s�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0,	\n\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 3,\n  \"toHeight\" : 24,\n  \"prevHash\" : {\n    \"bytes\" : \"LihkObsp+zx+RWeBmfzKP5n+vS2EqIoEHIHbpNz5IOA=\",\n    \"reversedBytes\" : \"4CD53KTbgRwEiqiELb3+mT/K/JmBZ0V+PPspuzlkKC4=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'+3$_�@2\�>��ZY�\�-��ցS*��\�s:','+3$_�@2\�>��ZY�\�-��ցS*��\�s:','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,2,3,1,1556658552136,2,1556658549107,1),('�\�Qe\�\�Pu8Rc<G��粱\" w\�\��N',26,'\0\0\0\�w�ebg\�H\0eO�v�GH\�}l�HC�1��\�\Z\�w�ebg\�H\0eO�v�GH\�}l�HC�1��\�\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0v�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0E\�+�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0',0,'\Z\��1�CH�l}\�HG�v�Oe\0H\�gbe�w�\�','\Z\��1�CH�l}\�HG�v�Oe\0H\�gbe�w�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,0,1,1,1556658552382,0,1556658551064,1);
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
INSERT INTO `multisignaddress` VALUES ('0d5d3d47e97243042f3d4052958274d36de57b66d11220d1ffef0d67ac92655d','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573','','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573',0),('118de8aae10f6784892044a327b86d958381262b826ac6a773d666a959be9e54','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859','','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859',0),('1630f7b2a984d80203707d8d39119a21f215e01538568f39e3e4eabbf0b894d5','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e','','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e',0),('172abe790325a4a751f443eeb60407ab21dd62bc09d535a3fd5651afecccb833','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568','','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568',0),('1c72789143017bf8e6b43286e79688ea45abd136b80935152a1a17d726362a15','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859','','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859',0),('1f87dfc537c8d5568cc89e6d3f203076f3b08f44ef7bc0138ea004003eb395c9','02581083abb6254ef927c6ae6910f2bf201f5a02dbd21fa99a7668b800572b5550','','02581083abb6254ef927c6ae6910f2bf201f5a02dbd21fa99a7668b800572b5550',0),('30eb94175daf8173eea36577c8e13388ff6d4b58dd0189470060111ffb98a954','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc','','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc',0),('385d9f17ff3645695e95f496c715a7d7090c78993578f4c45ff86becd369613b','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d','','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d',0);
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
INSERT INTO `ordermatching` VALUES ('.(d9�)�<~Eg���\�?���-����ۤ\�� \�',10,1,1,'u\��M&�!j͍��X�(S\�Ƈ�Dh.u\�U',2,'jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\'),('jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\',0,1,1,'.(d9�)�<~Eg���\�?���-����ۤ\�� \�',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),('u\��M&�!j͍��X�(S\�Ƈ�Dh.u\�U',24,1,0,NULL,2,'.(d9�)�<~Eg���\�?���-����ۤ\�� \�');
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
INSERT INTO `outputs` VALUES ('��w\'\"N$@�-Uu��bBվ~\�\�ֳ\�����',0,678900000,'!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HY�','1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB',2,1,'rx�C{�\�2�疈\�E�\�6�	5*\Z\�&6*','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859','',NULL,0,1,0,NULL,1556658252),('3U�\�\0�\�8  `y�NLT��L#ƚAn\�k��W�',0,678900000,'!��`�\�L\�\�\0?�{m)%\�lG��	\�|r@@]{=�','1GtzL9G51YTnquirBBptpgKkwzRGp3Nicg',2,1,'8]��6Ei^���\��\�	x�5x�\�_�k\�\�ia;','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d','',NULL,0,1,0,NULL,1556658523),('HEe\�l\�\�y��?���lߓ\������G,\�\�',0,1000000000000000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\','bc','',NULL,1,1,1,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~',0),('Tlv�S\�BW2���]�b�ˑ\�\�l�M@����',0,678900000,'!\0]d%*i�s�\�^�<��\�z!��a�P�o\�%h�','17gt5R6JU3geTrJqauEWZZ1hqozH5HAppG',2,1,'*�y%��Q�C\��!\�b�	\�5��VQ�\�̸3','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568','',NULL,0,1,0,NULL,1556658519),('\\\�wx4\�L��r\'lF�\��y���\�\�-\0,�~\��j',0,678900000,'!\��\�JY�<\�Ѭ�e\�\��7e\�~d\�\�*�\�Pl��','12jEy3c58dGMtB3sotY99WXXC3hfuqozNV',2,1,'0\�]��s\�ew\�\�3��mKX\��G\0`���T','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc','',NULL,0,1,0,NULL,1556658525),('��N`��\��0\�:\�W~�	��\���$��\n',0,678900000,'!O�\�t5�ح\�\�\�4���ؑ���\�S嫷,�=^n�','1MW35ZNpYDANihQjDZC7fmzj2rADW4ZyrP',2,1,'0����\�p}�9�!�\�8V�9\�\�\��\�','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e','',NULL,0,1,0,NULL,1556658517),('���\0t��$��\�`\�\��b\���J,�u%�F',0,678900000,'!X���%N�\'Ʈi� Z\�\���vh�\0W+UP�','1E4Jo9Wu28sYczCqLZueQ5NsTA6wG2dokD',2,1,'�\�\�7\�\�V�Ȟm? 0v�D\�{���\0>��\�','02581083abb6254ef927c6ae6910f2bf201f5a02dbd21fa99a7668b800572b5550','',NULL,0,1,0,NULL,1556658521),('\�\r}&��������0GY넬�v\�|�E8�;\�',0,35700000,'v�\�\�y�me����&畾�L��','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',1,3500000,'v�]�n�\�LJ�\�%�ũ���䮈�','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',2,25000000,'v���\�rY�	�&�\�`�\�M��','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',3,500000000,'v�i\�\�Ƒhճk%\�C��}�����','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',4,35000000,'v�Ti�mskDGff�����\�\�XHf��','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',5,800000000,'v�\�˔!�V%�C.\"D\���<N� ��','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',6,10000000,'v��j߇������=<I(\����','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',7,50000000,'v���\�4�%n\�\�v\�6�0�I^�','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',8,2000,'v��\�N\�\�ؐ�B(�v���s�M��','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',9,100000000,'v����q�$�5�\\�Gf颈�','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',10,6000000000,'v��B�^��42�;y�ʯŽe٤��','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',11,10000000000,'v�$^i\�\�\�sٯ&?0�$ܓ�f\�6��','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',12,50000000,'v��g+2EU\�]Fx\�ϸ�>�D���','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',13,5500000,'v�\�S�cD�\�t��\�;\�\�/[���','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',14,50000000,'v�\�ET\�6W�\�{ni��]��و�','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',15,250000000,'v�\�9 �Mjƀ��{�q\�\�Akx���','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',16,1000000000,'v�ՙ�y�\�]�)��\��\�o,��','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',17,500000000,'v���n\�ͪQ�\�\� <���@�����','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',18,500500000,'v�P�y\�P�\�\�>\�L�\�<�,2�`��','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',1,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',NULL,0,1,0,NULL,1556657650),('\�\r}&��������0GY넬�v\�|�E8�;\�',19,999960169596000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��','bc','',NULL,0,1,0,NULL,1556657650),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',0,35700000,'v�\�\�y�me����&畾�L��','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',1,3500000,'v�]�n�\�LJ�\�%�ũ���䮈�','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',2,25000000,'v���\�rY�	�&�\�`�\�M��','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',3,500000000,'v�i\�\�Ƒhճk%\�C��}�����','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',4,35000000,'v�Ti�mskDGff�����\�\�XHf��','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',5,800000000,'v�\�˔!�V%�C.\"D\���<N� ��','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',6,10000000,'v��j߇������=<I(\����','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',7,50000000,'v���\�4�%n\�\�v\�6�0�I^�','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',8,2000,'v��\�N\�\�ؐ�B(�v���s�M��','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',9,100000000,'v����q�$�5�\\�Gf颈�','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',10,6000000000,'v��B�^��42�;y�ʯŽe٤��','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',11,10000000000,'v�$^i\�\�\�sٯ&?0�$ܓ�f\�6��','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',12,50000000,'v��g+2EU\�]Fx\�ϸ�>�D���','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',13,5500000,'v�\�S�cD�\�t��\�;\�\�/[���','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',14,50000000,'v�\�ET\�6W�\�{ni��]��و�','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',15,250000000,'v�\�9 �Mjƀ��{�q\�\�Akx���','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',16,1000000000,'v�ՙ�y�\�]�)��\��\�o,��','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',17,500000000,'v���n\�ͪQ�\�\� <���@�����','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',18,500500000,'v�P�y\�P�\�\�>\�L�\�<�,2�`��','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',1,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',NULL,0,1,0,NULL,1556657076),('\��e]\'�\�M�0�Jh5?v0���\�T�g\"��I',19,999980084798000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'	<\�+Tb&�y�\� �\�f\�+�Ƶ��\�Q��X\�F~','bc','',NULL,1,1,1,'\0�9���>^vS\�p\�=ʱ;���WH\�$�\��',1556657076),('\�gw�J��rn\�秓 �;\'O\�I��\�h�\� ���',0,678900000,'!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HY�','1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB',2,1,'�\�\�g�� D�\'�m���&+�jƧs\�f�Y��T','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859','',NULL,0,1,0,NULL,1556658515),('�\'0��Y9��z�I\�es h\"��_f�F�I',0,10,'v�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��','1111111111111111111114oLvT2',1,1,'+3$_�@2\�>��ZY�\�-��ցS*��\�s:','bc','1111111111111111111114oLvT2',NULL,0,1,0,NULL,1556658552),('�\'0��Y9��z�I\�es h\"��_f�F�I',1,230,'v�\�\�\�稒\n\�o\�\�L�I�\\�Ԉ�','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'+3$_�@2\�>��ZY�\�-��ցS*��\�s:','bc','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',NULL,0,1,0,NULL,1556658552),('�i�H�x�ڨ_\�\\#�$\'S\�\�V�\�O\�\�A\'\�\�T',0,678900000,'!+���PK�\�i+s+�*s\�Z\�V ռ!�\Z.`us�','1Lpvh2E44RSReTnmPivfghtUm2RE9Kd66B',2,1,'\r]=G\�rC/=@R��t\�m\�{f\� \��\�\rg��e]','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573','',NULL,0,1,0,NULL,1556658533);
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
INSERT INTO `tips` VALUES ('�\�Qe\�\�Pu8Rc<G��粱\" w\�\��N');
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
INSERT INTO `tokens` VALUES ('0d5d3d47e97243042f3d4052958274d36de57b66d11220d1ffef0d67ac92655d',1,'022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573',0,678900000,'EUR','EUR',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('118de8aae10f6784892044a327b86d958381262b826ac6a773d666a959be9e54',1,'02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859',1,678900000,'Gold','Gold',NULL,1,0,0,'1c72789143017bf8e6b43286e79688ea45abd136b80935152a1a17d726362a15',0,NULL,NULL,NULL,NULL,NULL),('1630f7b2a984d80203707d8d39119a21f215e01538568f39e3e4eabbf0b894d5',1,'034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e',0,678900000,'BTC','BTC',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('172abe790325a4a751f443eeb60407ab21dd62bc09d535a3fd5651afecccb833',1,'02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568',0,678900000,'ETH','ETH',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('1c72789143017bf8e6b43286e79688ea45abd136b80935152a1a17d726362a15',1,'02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859',0,678900000,'Gold','Gold',NULL,1,0,0,'',1,'�\�\�g�� D�\'�m���&+�jƧs\�f�Y��T',NULL,NULL,NULL,NULL),('1f87dfc537c8d5568cc89e6d3f203076f3b08f44ef7bc0138ea004003eb395c9',1,'02581083abb6254ef927c6ae6910f2bf201f5a02dbd21fa99a7668b800572b5550',0,678900000,'CNY','CNY',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('30eb94175daf8173eea36577c8e13388ff6d4b58dd0189470060111ffb98a954',1,'03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc',0,678900000,'USD','USD',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('385d9f17ff3645695e95f496c715a7d7090c78993578f4c45ff86becd369613b',1,'021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d',0,678900000,'人民币','人民币',NULL,1,0,0,'',0,NULL,NULL,NULL,NULL,NULL),('6a0254f601eec57625b7c9b41fb68157e1cd78ae3b2769fa94fb77cb17210d5c',1,'bc',0,0,'bc','BigTangle currency',NULL,1,0,1,'',0,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `txreward` VALUES ('+3$_�@2\�>��ZY�\�-��ցS*��\�s:',20,1,0,NULL,2,'jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\',2),('jT�\�\�v%�ɴ��W\�\�x�;\'i���w\�!\r\\',0,1,1,'+3$_�@2\�>��ZY�\�-��ցS*��\�s:',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',10);
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

-- Dump completed on 2019-05-01  2:10:02
