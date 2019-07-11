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
INSERT INTO `blocks` VALUES ('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�\�Ic3�\�\�h6 �q)\�{�nD�ZY��j<�Fm#^[\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0\0�rN	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,0,1,1,1562701612408,0,1562701612174,1);
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
INSERT INTO `multisign` VALUES ('1938e2c88148498d9662f4ac9bb034f8','028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��50��6\'7w6Z\�ح�#\�\�RE1\�	\�!���*\�z�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�Mr�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����H\0����\0\0\0\0 1w(\0\0\0\0!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g�GQ!�\��Y�)\�Q\�Ʊ��;\�c1\�^�		M\�\�g�!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1CzjRL1LYNu99oXHjtPYRr6SGH8eRMxDap\",\n    \"publickey\" : \"028bdb04b159fa29ec5102d4c6b1b411fc3beb633108d55e8309094ddfe7670eb6\",\n    \"signature\" : \"304402204ae3c51d740edf8ea5a2638de1721e4d95db047360a77442d3c3e02e41be925402200a2135ba57cd51b86c527b2fbecc2860f12c9205057cf0c8c14c889c2da4594f\"\n  } ]\n}',0),('25bed3934b9642a58d711965d83c478a','036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��%aj\��}�IE`E�\�/\�5�EbH\�I\��T&x�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�>\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����C\0����\0\0\0\0 1w(\0\0\0\0!k܋\0��\�\�F��\�}�q\nE\�y��TU\�̟�ץ\�GQ!k܋\0��\�\�F��\�}�q\nE\�y��TU\�̟�ץ\�!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1DhZ1MX7TRG9tF4dNogyodzYGXostYMANS\",\n    \"publickey\" : \"036bdc8b000799f9d7d81d46b4ffea7da1710a45c4798ab55455d7cc9f9dd7a5ca\",\n    \"signature\" : \"304402204d3ac1b8051c4b3dece9e3d90e986b74edba357f5f04222ae08decf1125d69250220249d0a6e162e3da0fa552ced981b965fc2d1904c1dcad61acb73e2d93d8955f1\"\n  } ]\n}',0),('309500233c4b4698b96b3b5fa4341e85','020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\������#T\�\\3C*�A/�I���\�\�F��N��7�X|�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�7\�\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����N\0����\0\0\0\0 1w(\0\0\0\0!\�\�\�?z)|\0	��g\'\�e�l\nU\�\��j\�\�\�GQ!\�\�\�?z)|\0	��g\'\�e�l\nU\�\��j\�\�\�!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9\",\n    \"tokenindex\" : 0,\n    \"address\" : \"157jTUSRaos9MpGaNu72tEk2D2dYt28Rpd\",\n    \"publickey\" : \"020619c3d1c23f7a297c0009f4f3b96727e165946c0a55d81911c202916ae1ebd9\",\n    \"signature\" : \"304502210080b65ec77f896128c5c037b9ce6edf13237637fd24d362c8c1eb0dd63bdc6e77022011f696d684f4f986656044163b910a5d33a1626483f1e3c4d02c4648c341a1fb\"\n  } ]\n}',0),('3b845b55bcfa44e4b44eddfca5be1824','02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\���\�f�\�4�\�[^�\�B\�\n\�\�HO\�x�\�S�e��y�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�G�\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����F\0����\0\0\0\0 1w(\0\0\0\0!\��Px�m�g�!S�o�*@2��72\0\�Y�T@sekGQ!\��Px�m�g�!S�o�*@2��72\0\�Y�T@sek!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1L6pdXCtLTcTutCNAQoCXUCMgZBP8Uwzxh\",\n    \"publickey\" : \"02e3fa5078896d0e8467b42153826f1ef52a4032aca6373200ed59bc544073656b\",\n    \"signature\" : \"304402203fd310b8855b874e03d7b6b2b1cf5ade4dcfc94266058bf611d3e57ca372360802202315263ba59b54db3e1cefce499d46d54f07e4925291d082f3316bdd39cca4a2\"\n  } ]\n}',0),('606ee88da41d47808ca20b4a0b221988','020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��iKߣՄ\�|\�\�\�7\�ZO\�%\�Nx��<���T1y�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\00�E�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����D\0����\0\0\0\0 1w(\0\0\0\0!\r��@UᢞnHVi+\�\�0b�\�^\�a�!\�?\�b�\ŹGQ!\r��@UᢞnHVi+\�\�0b�\�^\�a�!\�?\�b�\Ź!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81\",\n    \"tokenindex\" : 0,\n    \"address\" : \"19SgkC33Mee39yB8CQtxzobruSko1sQRMN\",\n    \"publickey\" : \"020d8db54055e1a29e6e4856692be2d33062a0df5ee361f821e83fdc62b11acd81\",\n    \"signature\" : \"3045022100edc7f73612ca40442526fe2c28575550b9bed39bf27cac6880a281956a99d9b702201214ae326100f198af51ba60695dbd4260db36a6bd22492be1faf89c15416011\"\n  } ]\n}',0),('7b71d46e242c4b73b103788ff76d69c6','037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��Q���\�\���s\� :\�:�9\�[/F��\�%�x\�y�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0���\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����E\0����\0\0\0\0 1w(\0\0\0\0!{v�6����\�\r\�\�S�b�g\�c�mŜ���`H�GQ!{v�6����\�\r\�\�S�b�g\�c�mŜ���`H�!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1FNpperFoPx3ojrLjMHLXRpicyDhH3jmeG\",\n    \"publickey\" : \"037b769936a4a1b58307cc0dede553aa1362a867e9639b6dc59c11999ea96048b6\",\n    \"signature\" : \"3044022033034c95519af9caa38b0394dd5f78c55e16acec378484c31b705877c2dd92b3022037ca8380f1ed6c1096a204ff915de91f04a80cb0d2a1973429bcab9e5dd1491e\"\n  } ]\n}',0),('8fd5e15d542a4dcd9c9b46d293a24d77','03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\���ߣ �D\�&\�\��m\�sxm\\\�Śz!����1\ry�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0I�<Q�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����G\0����\0\0\0\0 1w(\0\0\0\0!\� ��Ts�\�\�M\Z\�c6\�\�[�\�Ob�\r\�_GQ!\� ��Ts�\�\�M\Z\�c6\�\�[�\�Ob�\r\�_!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f\",\n    \"tokenindex\" : 0,\n    \"address\" : \"17fmaEbQU1aEr81MAqQpVGfjc31RTXfpyy\",\n    \"publickey\" : \"03d020ab895473117fbcede0074d1ae76336eea7d95bedadbe15e64f62a80de25f\",\n    \"signature\" : \"3045022100912ec39d01c9f239c68d8e40270144a854221b80687ea1bdc4bb891ee7b38810022011392a23190c8b0d55cf64d6afc8e9e00f971c5dcffa1b48aa383a8dfec8a7e8\"\n  } ]\n}',0),('92b22a3be3f14102aa4473511f108671','03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��H4h�л5QJ4�;O@\�d\'��5\�\��@c��e���z�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�\\�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����I\0����\0\0\0\0 1w(\0\0\0\0!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�GQ!\�\�9�ZxD@��9�Xi�VIW��n\�\�T\�\�\�!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14i3sHkTiv9hQhELEhBYPpuA8f6ofebTws\",\n    \"publickey\" : \"03eb88c9398d5a784440a6f2399e5869fa19564957abbb6ee8de54ee8fb0c9d5e0\",\n    \"signature\" : \"3045022100cb97a307727436a5b31b025514df307570f9fb946cca2a8040c3e9daced2408e02200cd1f9e96f65740acbe6b52262bce9e5c96d00571c80f142a06b6f37d452d2ac\"\n  } ]\n}',0),('de5396da8f5b402e81f5748149fefc02','02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9�3B\�]�������X��z��iQ\�\�{�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0N\n+z�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����K\0����\0\0\0\0 1w(\0\0\0\0!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,GQ!��\�K�\��!��9��An\�\�S��<o�U\�xv\�,!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1J577sbCxSv2YuwrndSzSQJqmqGBVY2Ymo\",\n    \"publickey\" : \"02b3f3e74b83d306a221fd9239adc1416e0bcfd553a7873c0f6ff155e07876c22c\",\n    \"signature\" : \"3044022073f2660185a0d3260f676da1835499dd3eec91eee479f2a97807a3af22c8a17102203246a539f09fc66a3f7fbeb22408d7a3a1aea2c975e713bc130d23a40bdb2c74\"\n  } ]\n}',0),('e37ca527c8b4416f930ef2ad96761f11','0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\���arˮ+��{	�5V\�ט\�A\�\��\�KE \�{�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\����쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����L\0����\0\0\0\0 1w(\0\0\0\0!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re�GQ!S\�\�B\�ǎ\�\�zN)u�\��1�xXqF!Re�!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1HuRt2NqBPK5arbFrZTbEgCkPYU3RqFveT\",\n    \"publickey\" : \"0353d5df42c5c78ecce7987a4e29130b7593d51cb731f178580e71462152651586\",\n    \"signature\" : \"30440220514283a41b6c39ec027d19dc746123f788fb773c4a99f253b8f60b45248fb2cf02204953eea7e7b7f1b84cc12a3cd3229bd97b67ad62579099ff11bee87dfaab79b0\"\n  } ]\n}',0),('e8f797dbb4524100b7ee9444dabc8c9b','0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��:\�cO�\�=\��ws\�x\�\r\�[\���^d�cV��.\�{�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�7~s�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����M\0����\0\0\0\0 1w(\0\0\0\0!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<GQ!V\�w���U \�d�\��[~�]\�\�կ�2\�0M��C<!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1G3SeCekZ2K4bFJ56bNjp65CddpQBfrvSP\",\n    \"publickey\" : \"0356d077b697855520e664a8d917805b7e8c5ddec3d5af8132e4304db5059a433c\",\n    \"signature\" : \"304402203f0f5f187273eae156f52b0735ba7e890970f897dadfb5b350c54dac54703150022004e4090708d9ee87af37ac3755c763e063d2a6215ecdb1bd850a2a8adabb6b88\"\n  } ]\n}',0),('ec622df72e404d218f2b97fb4eb3050e','027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\���ń1\�ã�\Zb(�+�\�L�l(�\�_KĲ:\�\',\�{�$]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0z�Es�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����J\0����\0\0\0\0 1w(\0\0\0\0!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�vGQ!~\�k-\�՝�R�o��&�r���\�8�\r\�\�\���Q\�v!\�4\�׽t�G?��\���7�G����p�\�3�\�tR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\�\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"test\",\n    \"description\" : \"test\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"test@null\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"posIndex\" : 0\n  }, {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02d10434efa0d7bd087496473f95a2d4f59517378f47fcb7b8fb7082ec3392e074\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1LHnHV4J9GtCqb9uo7rN4u8Z5ZKPqUj2Z8\",\n    \"publickey\" : \"027eca6b2dc9d59d9552f86f839426f6720fadfbb3e838c00defc4e4fd9c51e176\",\n    \"signature\" : \"3044022057482d61da72eac6c77e551b419f9001974a1999bd85602751939a915ff8d87102202ae5729dd1562bc1e3208453d57dfbde849b8412222a4a3658924bd8ab0d11eb\"\n  } ]\n}',0);
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
  PRIMARY KEY (`blockhash`,`tokenid`,`pubKeyHex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multisignaddress`
--

LOCK TABLES `multisignaddress` WRITE;
/*!40000 ALTER TABLE `multisignaddress` DISABLE KEYS */;
INSERT INTO `multisignaddress` VALUES ('8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239','bc','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0);
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
INSERT INTO `myserverblocks` VALUES ('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�#!(-rHb\�	\�\�_,n Ib.�\�\�\��l�h',1562703471379),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�!���?�/\�$\�X\�-#:�6�\�j\�\�-\�\�h�p�',1562703480362),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�%��xt.y��H��\�O�\'T�gZ\�Πq!',1562703468068),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�\�P�\�$h\�\��H2\r��\�\�  �\�1�>�r\�\�~',1562703464535),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�*��$��`ݳ�[1�g�\�q�e\��d�-',1562703462413),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�^q�T r\n\'IŅ\�5\�1\�6�/�Z�\�ҹ�q',1562703461591),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\Z̉\�y\�̧�du\�\�\05\Z\���\�|\����',1562703461184),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','l�\"�5#�b�+\�\�\�aeoա\0\�^��j\�',1562703464791),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�5\�ƪH�Lz#m��Bgq�a)_Ť(aعp',1562703478794),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�_�Hx\��^Γv�\Z�D�\�\n��\�+�@F$',1562703463656),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','$$��\�\'N\Z�\�6\";\��.���3$�\r�\�t~2',1562703478292),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','&ti\�6�/\�5�e�f�q��ҧ�+4�!�o6�',1562703461884),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','(\Z1�j\�\ryfq��,\��,y�U\�wpF�Q�M@\�',1562703482671),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9',')�{t!��,Ml���\r�z4B��\�q\� ��$_g',1562703480067),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','*9�Zmr�@xW�ʡ@Ho�2о\�n\�\�\�\�j\�O��',1562703480988),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','+U��G\Z�za��0 Q,\�{~p�«B����',1562703476724),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','+�\��t��4y��#z\��\�9�7g\�֓$v\�̀L\Z',1562703470315),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','+\�\�\�D�s@�*��fc\��$�V\��12��\�U�e\�',1562703462667),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9',',�\� QT�z\�\�h\n�%k�i5-\�n\�j.H fY`}u',1562703481710),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','-�\0�_\�0�ѯ��֥Vu��Y�\�\�h�\�M:^��',1562703470612),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','8�\�\�����J�\�\�@\�\�T�WX��)\n\�]$�',1562703470070),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','9�\�\�	��1\��\��Ȑt`�V2,�E��\�&&\\8n',1562703477747),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','C�M͍g�v�(\�8b�T\�,`���4�pW7\�',1562703474509),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','G\�Ҧ��\�uPs���:�4�Y�m��iE',1562703475433),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','I�*\r w@$-Gh�lX \Z�\�\�LK��\�e-W�B�',1562703465316),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','L�P\�oǷ�����_�v��If�%b�\�\�zƢ',1562703483198),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','X\'�rx\�=��������j�C\���ʶ\�\09SW',1562703462915),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','Yf\�!�r���;n̡\�_�qz�6�uO\�F��q',1562703478048),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\\\�fkl\Z�5��$\�\'�W\��`4��u�\�\����',1562703465834),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','`��yw����ः�z��?�I�8A&�O�=C',1562703469564),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','o\�_x\����\�q1�cF�o����9,M�FW�',1562703465068),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','p\�Q�Z*\�y�>\�:\��\�f0��1!�7\�J۴',1562703470857),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','qo\�T\�܀9o:�՝Y�\�+a�V唄�(�휬',1562703460453),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','s^S�P\�N�)���)�v�\�\�\� \�\�\���y',1562703471970),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','tG|������Y\�)���.�{+�\0ͺ>���\�\�W\�',1562703476212),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','tQ�\0\r��l)`5��[E\�s8�\�\�\�j&�&]\�:o',1562703462157),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','v�\�\�\�Z\�a\�X1zlɿ[��-�1�\\�\�\�\�R',1562703469817),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','x �سq�Bd��?^M\�D\�Jꔍ*�$��y',1562703482081),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','y\�SYc�\�C��jUGp8\�I=��5��� (ȍ�',1562703475958),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','|�[���\����\�wq���<���s���\�Ժ\�',1562703463149),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�V�\�K\�L\�a\�\�\�8�C\��먶C֤Z�GM\�\�',1562703465587),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�@\"\��A��ksw\�[�/��wW�K��\�Nm�',1562703479826),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','��7.}�\�$|\�\�S��N&�;5\�Po\\o%\�\\��\�',1562703469281),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�\ZO|+\�a`5�\�\n۠j\�I�?^.�\�\�\�|I',1562703482366),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','���в��%�T_�5$:\�Sh\�\�|=���',1562703477505),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�xb\�K\�5�FT[\�((\Z�G*ٻ7���&�\�',1562703471699),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�u[L|D\�\�\������\��*#ɱ��ZT\��q',1562703479032),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�G���\�W\�\��K�\�Mrv<����\�\�{ޗ�2:',1562703482906),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�Ktjt�G4�Jх��㦬\"n�GXH\�\":\0�IG',1562703467570),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','��l\�\��3H\�1�\���x���\�\'���{�\r��\�',1562703475674),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�4\�3\�;e\�g\�\�\Z�H�\�hM\�vM?ݴ��K*ʔ',1562703464015),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','��\�p\�\�F�\�Y�d�sDrI6\�\r�C;\�w\�',1562703475085),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�\�RѢpR\�a>�9$��\�\�\���D~~5���_�',1562703468736),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','���*}�5�\��Hǯ�\�\��-ۖ\�Ӫ\�+�Z\�^\Z',1562703467818),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�*�uY��\�H^��)\"$\�Wq�M\�g�\�}Py@',1562703471090),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','��2lC�\��\�,\�@PLگM�=�ܰ\�_&�\Z�G',1562703473248),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�$�J#ڇ@\�\��0�d}��� m\�\�.�U�	91ZU',1562703472753),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�[^.�3^�\0\"B���\�Q\r�\�k��N\�PA�',1562703474269),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','��O)n]\�\�R��AL\0�\�F�I�?\���\0z]��\�',1562703468390),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','��A�\�ՠ�P\�h��\"�\�Sk^F�J��V',1562703478543),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','��Ǝ9l���\�\�\�3�x�\�̿��q�{\��\�',1562703479272),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�}r\�2\0M�\"t\�,�\�\�Hh&)��}���c�4.&',1562703474838),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�o��C�:�4և\� ;\�+�E{�=Ѷť�\�%D',1562703463411),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','ǈ�\�%B�4c�\�\nK\�I��\�\�jŭ�	ڹ�e',1562703477271),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','ȸ~�\�\�\�{�y��E*�V�0G��V�WN',1562703473983),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','ɬ�%��*a\�gP~\�Z�\�#�������O�x',1562703473003),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�Y\�i*l\�X��\"y7$��j\�X��\ng�iP\�k�l	',1562703477030),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','·\�\�}g�z\�J�F\r�R|\��bs`��B��\�{0\�',1562703479551),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�\�\�4\�\��k�[\�ōg7���\�\�5\�\�ჶm\�',1562703472504),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','ѳ\�J7�\�$p�\�\�ט`ƾ�?2�6^z��\�~y.',1562703473487),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�8�@�MO3\�\�ٺ�Gu=\�}7�\�V��o\�,',1562703460841),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�\�:\�*^\�W\���G|�6Sl�ʨO\�\���8',1562703464270),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�<&\�]�2�\\��\�F\�q�~C^�\�MI�I�:w',1562703476473),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','\�b\�Jt�\�h\nt���t\�k�bQ\"G�)�Ϛ\�;.',1562703468983),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�_�x/K\�f�\�ß:\�\\4,\'7�3\�rU\�W',1562703466767),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�\�~\�JZ\�\������\�C\�TM\�\�UE��n�\�%',1562703473732),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�.��s\�~מ9\�\�\�7\����H\�/�����',1562703480695),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�|\rQ�RY\��\�e\�O��|��]�B�0\0e9<iyl',1562703481380),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�]y��p�=�\�	�K7�\��t�?^S��1�\�K',1562703472261);
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
INSERT INTO `outputs` VALUES ('F�<j��YZ�Dn�{\�)q� 6h\�\�3cI\�\�\�',0,10000000000000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','bc','',NULL,0,1,0,0,NULL,0);
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
INSERT INTO `tips` VALUES ('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9');
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
  `domainpredtokenid` varchar(255) NOT NULL,
  `decimals` int(11) DEFAULT NULL,
  PRIMARY KEY (`blockhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES ('8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',1,'bc',0,10000000000000,'BIG','BigTangle Currency','bc',1,3,1,'',0,NULL,NULL,0,NULL,NULL,'',2);
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

-- Dump completed on 2019-07-11  2:10:02
