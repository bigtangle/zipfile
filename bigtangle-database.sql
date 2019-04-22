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
INSERT INTO `blocks` VALUES ('jTˆ\Ó\≈v%∑…¥∂ÅW\·\ÕxÆ;\'i˙î˚w\À!\r\\',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\‘\Œ,GÜ¿§üˇÀì\ﬂlòøê?˚êyŒ¥\Ôl≤\ÎeEHm#^[\0\0\0\0ˇˇ? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇˇˇˇ\0ˇˇˇˇ\0\0\0\0\0Ä∆§~ç\0º#!r^∞(.K\»j´3Ä‚ª£ì\\∫8gA¡TGó42\∆\…u¨\0\0\0\0\0\0\0\0\0\0\0\0\Ÿ\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,0,1,1,1555883599330,0,1555883599131,1);
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
INSERT INTO `ordermatching` VALUES ('jTˆ\Ó\≈v%∑…¥∂ÅW\·\ÕxÆ;\'i˙î˚w\À!\r\\',0,1,0,NULL,2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
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
INSERT INTO `outputs` VALUES ('HEe\Î≤l\Ô¥\Œyê˚?êøòlﬂì\Àˇü§¿ÜG,\Œ\‘',0,1000000000000000,'!r^∞(.K\»j´3Ä‚ª£ì\\∫8gA¡TGó42\∆\…u¨','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'jTˆ\Ó\≈v%∑…¥∂ÅW\·\ÕxÆ;\'i˙î˚w\À!\r\\','bc',NULL,NULL,0,1,0,NULL,0);
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
INSERT INTO `tips` VALUES ('jTˆ\Ó\≈v%∑…¥∂ÅW\·\ÕxÆ;\'i˙î˚w\À!\r\\');
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
INSERT INTO `tokens` VALUES ('6a0254f601eec57625b7c9b41fb68157e1cd78ae3b2769fa94fb77cb17210d5c',1,'bc',0,0,'bc','BigTangle currency',NULL,1,0,1,'',0,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `txreward` VALUES ('jTˆ\Ó\≈v%∑…¥∂ÅW\·\ÕxÆ;\'i˙î˚w\À!\r\\',0,1,0,NULL,2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',10);
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

-- Dump completed on 2019-04-22  2:10:02
