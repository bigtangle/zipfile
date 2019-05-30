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
INSERT INTO `blocks` VALUES ('\0�T\�\�*\�8�/�}���G�:\�mӎK�\�',18,'\0\0\0{�\�|��]a\��\0C�^�\n\��{��_�-o�Ge�~{�\�|��]a\��\0C�^�\n\��{��_�-o�Ge�~&�K|\�\�ƚ\�\�\�֙�u\�wG*������7U�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0\�\�Ү\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 2,\n  \"toHeight\" : 18,\n  \"prevHash\" : {\n    \"bytes\" : \"BXop71tu/M+wuzRygS7NfajWYOpNKBzR0cKkZdY1pxk=\",\n    \"reversedBytes\" : \"Gac11mWkwtHRHChN6mDWqH3NLoFyNLuwz/xuW+8pegU=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'~�eG�o-�_��{�\�\n�^�C\0�\�a]��|\��{','~�eG�o-�_��{�\�\n�^�C\0�\�a]��|\��{','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,1,2,1,1559173403086,1,1559173399728,1),('z)\�[n�ϰ�4r�.\�}�\�`\�M(\�\�¤e\�5�',9,'\0\0\0> A�\�X$yy1�\�,��\�>\�\�F�^����rc�/> A�\�X$yy1�\�,��\�>\�\�F�^����rc�/VO߂\�zz�\���\��e��T\�Ct����?R\�@�B�\\\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\��9C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -7,\n  \"toHeight\" : 9,\n  \"prevHash\" : {\n    \"bytes\" : \"PinWXquw8G1FKGlXSZDCXKl2QseeGwZHrixrHDdiyhc=\",\n    \"reversedBytes\" : \"F8piNxxrLK5HBhuex0J2qVzCkElXaShFbfCwq17WKT4=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'/�cr����^�F\�\�>\��,\�1yy$XݺA >','/�cr����^�F\�\�>\��,\�1yy$XݺA >','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,13,100,10,12,1,1559162464422,10,1559162460821,1),('/�cr����^�F\�\�>\��,\�1yy$XݺA >',8,'\0\0\0\�\�7pT\�+S\�\�ټ\�=��/��t��n\�>\�\n�\�\�7pT\�+S\�\�ټ\�=��/��t��n\�>\�\n����`v\�#:L!ck��Q\"\�y�&\\�;���\r\�\�@U\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0Ku2�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�t	9��%��\�RX�8\0H$Suc��\nq��z\0\0\0IH0E!\0�~\r�py��K�k\�\Z\�yv0\Z�D��\�TgnIN w\�\�\� \�\�\�ˁ|9hڲ\�p�)\r���\�X+}�W����\0\0\0��V8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u��\0\0\0\0�v�\�K>X��bJ\�� �\�\\\�\�v\�\\���\��@6u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'�\n\�>\�n��t��/��=\�\�\�\�S+�\�Tp7\�\�','�\n\�>\�n��t��/��=\�\�\�\�S+�\�Tp7\�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,11,13,1,1559162455391,11,1559162453974,1),('^l#��\0�\�\n\�\�y�\�Py\�\�|�|\r��\�UMf[\r',12,'\0\0\0\�:�D��\�\�v\'�V��\��˪��:W�mM\�\�T\�:�D��\�\�v\'�V��\��˪��:W�mM\�\�T\�\�\���g�ڕG��VN.˦\�ᓏ�����\�K��\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0d��\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\0]d%*i�s�\�^�<��\�z!��a�P�o\�%h#!\0]d%*i�s�\�^�<��\�z!��a�P�o\�%h�\0\0\0\0\0\0\0\0\0\0\0TOKENg\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"mETH\",\n    \"description\" : \"mETH\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"tokenindex\" : 0,\n    \"address\" : \"17gt5R6JU3geTrJqauEWZZ1hqozH5HAppG\",\n    \"publickey\" : \"02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568\",\n    \"signature\" : \"30440220575b5b777b2cea88ebcfb10a9fe51e68d508e18c9d9423d754450f3e61a7cd4202204ee80d640cf1f0c3b6d6ac965c1a5f9dee4b693f15afdc8d0885b6a4d4f50175\"\n  } ]\n}',0,'T\�\�Mm�W:���ː��\���V�\'v\�ܿ�D�:\�','T\�\�Mm�W:���ː��\���V�\'v\�ܿ�D�:\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,7,9,1,1559163655801,7,1559163654710,1),('�\n\�>\�n��t��/��=\�\�\�\�S+�\�Tp7\�\�',7,'\0\0\0��Cc�q\�A\ZI\�Jl.���M�\�+�\�Z��A5��Cc�q\�A\ZI\�Jl.���M�\�+�\�Z��A5�\�t	9��%��\�RX�8\0H$Suc��\nq��z\�\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�\�<\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0Ua�bY?����w\�\�&c\��\�_\��\nP�=\�B/\0\0\0HG0D 9@4\�Z\�(��Ui��oi-72���\09\�4� i��y\�\�n{\�4\�bYQ	F\�p �a����\0\0\0\0Ba8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�`�\n\0\0\0\0\0�v��w��r���\�Bi��V�*����V8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'5A��Z̞+\�M��.lJ\�I\ZA\�q�cC��','5A��Z̞+\�M��.lJ\�I\ZA\�q�cC��','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,12,14,1,1559161798306,12,1559161797244,1),('\n�2wI�>\�7o�\�\Z\rJ����H}�����',2,'\0\0\0	\�{\�_�{H�\�<�\�ʜb��\��j\\?e\"�(	\�{\�_�{H�\�<�\�ʜb��\��j\\?e\"�(�h6���@�b����Ǟ�\0�����\�2tP\�(V�\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0ð�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0~;��f���\�\�g�oc�	\'�\"ph̃�8��\Z\�\0\0\0HG0D H7Dd{\�!�O\�c��4\�XLAwC[�f�\'�\�d G1�3\�xm)�\�I\�6^E��\�\\e���4sQ�����\0\0\0�:��~�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�# � \0\0\0\0�v�\�\�y�me����&畾�L��0W\0\0\0\0\0�v�]�n�\�LJ�\�%�ũ���䮈�\��\�\0\0\0\0�v�j���9\�.G��oEQq3�ň�\0e\�\0\0\0\0�v�i\�\�Ƒhճk%\�C��}������\0\0\0\0�v�Ƴ\\!���f�V�\��:�\��R����\�\0\0\0\0�v�)�t2x>4\�l)	�6\�N\�R:���e\0\0\0\0�v�\�Re\r���X�\\�э\� B�\�5�\0\0\0\0�v�Ti�mskDGff�����\�\�XHf���^\0\0\0\0�v�9\�(C5%�\��-��z���\0wB\0\0\0�v�\�J��]�\�*>�\�d$�FiA��\0�/\0\0\0\0�v�\�˔!�V%�C.\"D\���<N� �����\0\0\0\0�v���\�4�%n\�\�v\�6�0�I^�\�\0\0\0\0\0\0�v��\�N\�\�ؐ�B(�v���s�M��\0\�T\0\0\0�v�$^i\�\�\�sٯ&?0�$ܓ�f\�6���\0\0\0\0�v��g+2EU\�]Fx\�ϸ�>�D������\0\0\0\0�v�\�ET\�6W�\�{ni��]��و� \�\0\0\0\0�v�4V��\\��#���\�\�\���\0e\�\0\0\0\0�v���n\�ͪQ�\�\� <���@�����\0Ý\�\0\0\0\0�v�|b�yƹ1\�?^?<\�YP���g����\0\0\0\0�v���\�#&��iXǎs�y\�>���\0\'�)\0\0\0\0�v���||m\�\�\�\�Y�!\�&/\rg���@x}\0\0\0\0�v���\�rY�	�&�\�`�\�M�����\0\0\0\0\0�v��j߇������=<I(\������\�\0\0\0\0�v�F\��n��&��$���=����\0\��\0\0\0\0�v����q�$�5�\\�Gf颈�\0��e\0\0\0�v��B�^��42�;y�ʯŽe٤���\r\0\0\0\0\0\0�v�G\�Ax\�\�Q�a&>�S� j�tĈ���\�\0\0\0\0�v�)K|�\��ϙ�\�tա3s��U���`\�S\0\0\0\0\0�v�\�S�cD�\�t��\�;\�\�/[�����\�\0\0\0\0�v�#�l��r�f��I�أL��A����\�\0\0\0\0�v�\�9 �Mjƀ��{�q\�\�Akx���\0ʚ;\0\0\0\0�v�ՙ�y�\�]�)��\��\�o,�����\0\0\0\0�v��\�ϊ\��\�y�q�\���Qш� \�\0\0\0\0�v�P�y\�P�\�\�>\�L�\�<�,2�`��4\�f8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'(�\"e?\\j�\��b�\�ٙ<٬H{�_\�{\�	','(�\"e?\\j�\��b�\�ٙ<٬H{�_\�{\�	','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,17,19,1,1559157151411,17,1559157150481,1),('i�oTQ�%øԦ\�!I��Fe\�P��\�m0n�ǒ',13,'\0\0\0\r[fMU\r|�|\�\�yPǹy\�\�\n\��\0��#l^\r[fMU\r|�|\�\�yPǹy\�\�\n\��\0��#l^\Z\��\�^Ze>b\'$me\�\\uÛ�\Z\'\�C�\�V�@X��\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0h�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!��`�\�L\�\�\0?�{m)%\�lG��	\�|r@@]{=#!��`�\�L\�\�\0?�{m)%\�lG��	\�|r@@]{=�\0\0\0\0\0\0\0\0\0\0\0TOKENw\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"人民币分\",\n    \"description\" : \"人民币分\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1GtzL9G51YTnquirBBptpgKkwzRGp3Nicg\",\n    \"publickey\" : \"021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d\",\n    \"signature\" : \"304402202132c5b9ca72b57119ed7ee5bee00737ea3d1b4a8007973c08bb5e2a5b3325bc0220136a0817cf5b2db5f2e521e36cacb34aa5f94f816b5fd1e9fdd1482f0da7726f\"\n  } ]\n}',0,'^l#��\0�\�\n\�\�y�\�Py\�\�|�|\r��\�UMf[\r','^l#��\0�\�\n\�\�y�\�Py\�\�|�|\r��\�UMf[\r','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,6,8,1,1559163658694,6,1559163656770,1),('�U\�z�)\�R C��S2��~\"\�\�\�$9��)\'\���',14,'\0\0\0�ǡn0mʹ�P\�eF��I!֦Ը\�%�QTo�i�ǡn0mʹ�P\�eF��I!֦Ը\�%�QTo�i�Y\�O%�SlZ\�e�F:��J\�W6�\0\�P�\�nt\n�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�lI\'\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\��\�JY�<\�Ѭ�e\�\��7e\�~d\�\�*�\�Pl�#!\��\�JY�<\�Ѭ�e\�\��7e\�~d\�\�*�\�Pl��\0\0\0\0\0\0\0\0\0\0\0TOKENo\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"USD-CENT\",\n    \"description\" : \"USD-CENT\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"tokenindex\" : 0,\n    \"address\" : \"12jEy3c58dGMtB3sotY99WXXC3hfuqozNV\",\n    \"publickey\" : \"03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc\",\n    \"signature\" : \"3045022100ca9291f825b6119524f044680450e9f4272912ed28cb002b7455e63b8833e6cc022021172944bf1f021fee0328253aaf7acc7608dbdfbf34f0347fae566bf3cb3731\"\n  } ]\n}',0,'i�oTQ�%øԦ\�!I��Fe\�P��\�m0n�ǒ','i�oTQ�%øԦ\�!I��Fe\�P��\�m0n�ǒ','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,5,7,1,1559163662833,5,1559163659045,1),('T\�\�Mm�W:���ː��\���V�\'v\�ܿ�D�:\�',11,'\0\0\0S���/��!#\�[es��A��B��w�x�lu\� S���/��!#\�[es��A��B��w�x�lu\� vx�ō\�Ӏm�\�	j��g\�9�7#N�\�1\�\�\��\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�\�5�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!O�\�t5�ح\�\�\�4���ؑ���\�S嫷,�=^n#!O�\�t5�ح\�\�\�4���ؑ���\�S嫷,�=^n�\0\0\0\0\0\0\0\0\0\0\0TOKENg\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"mBTC\",\n    \"description\" : \"mBTC\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1MW35ZNpYDANihQjDZC7fmzj2rADW4ZyrP\",\n    \"publickey\" : \"034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e\",\n    \"signature\" : \"3045022100c3dca17f0d979035d61ec78a2041c1a49bcd787024abe43dd049be63aec37f0a022012099f24d8c5cd401f42651911f2eeb8bb4c4b3e8c96fc0979183dadf94e1c91\"\n  } ]\n}',0,' \�ul�x�w��B��A��se[\�#!��/���S',' \�ul�x�w��B��A��se[\�#!��/���S','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,8,10,1,1559163655802,8,1559163652415,1),(' \�ul�x�w��B��A��se[\�#!��/���S',10,'\0\0\0�5\�e�\�\�\�(M\�`֨}\�.�r4��\��n[\�)z�5\�e�\�\�\�(M\�`֨}\�.�r4��\��n[\�)zI�X�C5�d�{�vԦ\�5\�R}������\�\�\�\�\��\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0��\r\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0����\0\0\0\0 1w(\0\0\0\0!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HY#!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HY�\0\0\0\0\0\0\0\0\0\0\0TOKENi\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"mGold\",\n    \"description\" : \"mGold\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB\",\n    \"publickey\" : \"02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859\",\n    \"signature\" : \"30450221009a6ccfcaccea4bcda61ca5ed8a26f69d8c53753ff1d3484601bf37a74ad3b5c3022049b978a0ef773f330627331e2a26d71b8d113f7df808ccdbd6b3f375b954b933\"\n  } ]\n}',0,'z)\�[n�ϰ�4r�.\�}�\�`\�M(\�\�¤e\�5�','z)\�[n�ϰ�4r�.\�}�\�`\�M(\�\�¤e\�5�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,9,11,1,1559163652589,9,1559163650115,1),('#Ԗ->\rܓ`Q�!ͽ��yC\�#\�ؔ\\���',16,'\0\0\0�gE�WßH��r	�\���-@\�gђt�8&xi����i���c\�~\�\�\�\�@�Xے�4\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�>�\�?\�a{b0�u_k\�?�hڠ�>\0\0\0\0\0\0\0\0\0\0\0',0,'8�t�\�g\�@-���\�	r��H�\�W�Eg�','4��\�X�@\�\�\�\�~\�c���i����ix&','\�?\�a{b0�u_k\�?�hڠ�>',NULL,1,100,3,4,1,1559163683339,3,1559163679184,1),('(�\"e?\\j�\��b�\�ٙ<٬H{�_\�{\�	',1,'\0\0\0\�b7k,�G�\�Bv�\\IWi(Em�^\�)>\�b7k,�G�\�Bv�\\IWi(Em�^\�)>~;��f���\�\�g�oc�	\'�\"ph̃�8��\Z\�[\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0 U5a\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�,G�����˓\�l���?��yδ\�l�\�eEH\0\0\0\0HG0D �����I^\�E�\Ze�\�R� \Z����Q�\�7\�2 ,\�Hs=�!�B��\�\�\��t\�\�9��H���C\������\0\0\0\0�Ƥ~�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�)\0\0\0\0\0\0�v�]�n�\�LJ�\�%�ũ���䮈��\0\0\0\0�v�Ƴ\\!���f�V�\��:�\��R���\r\0\0\0\0\0\0�v�G\�Ax\�\�Q�a&>�S� j�tĈ��:��~�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�','>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,18,20,1,1559157151301,18,1559157150265,1),('/p)~�C�\"7��s=^ۜ\���\�|���p',5,'\0\0\0y������\�\�v\�\�\r��qz\�%Spc�e\�V\nL:y������\�\�v\�\�\r��qz\�%Spc�e\�V\nL:\�\�9�N¼\�\�\�b\��g{�I	^6\�\Zi\�Oz\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�m�	\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0a�\��\��_��F��\�\�n\ZeT\�7E#\n״̍I\0\0\0HG0D g�9i�/{��κA\�\��Dd�\�q?8\�D�5 h͹|,�f^t�x�iA~\�\�,\���\Ze4\�;7�����\0\0\0ܦf8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�0W\0\0\0\0\0�v��w��r���\�Bi��V�*���Oa8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,':L\nV\�e�cpS%\�zq��\r\�\�v\�ޢ�����y',':L\nV\�e�cpS%\�zq��\r\�\�v\�ޢ�����y','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,14,16,1,1559160445422,14,1559160442642,1),('4��\�X�@\�\�\�\�~\�c���i����ix&',15,'\0\0\0��\�\')��9$\�\�\�\"~��2S��C R\�)�z\�U���\�\')��9$\�\�\�\"~��2S��C R\�)�z\�U�`\Z1�\����*�9\0G�0מ���Ƅ���i@�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\06�\�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!+���PK�\�i+s+�*s\�Z\�V ռ!�\Z.`us#!+���PK�\�i+s+�*s\�Z\�V ռ!�\Z.`us�\0\0\0\0\0\0\0\0\0\0\0TOKENo\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"EUR-CENT\",\n    \"description\" : \"EUR-CENT\",\n    \"signnumber\" : 1,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"revoked\" : false\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"posIndex\" : 0\n  } ]\n}\0\0\0\0�\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1Lpvh2E44RSReTnmPivfghtUm2RE9Kd66B\",\n    \"publickey\" : \"022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573\",\n    \"signature\" : \"3045022100e12f377319ddd8e309448155781e9ab8151216bfa05c63fe402a79169698b1ae022030643b02e8c8ad80ed27477e40e97963edefefb0e12c53f3e84fcc61183eaf6d\"\n  } ]\n}',0,'�U\�z�)\�R C��S2��~\"\�\�\�$9��)\'\���','�U\�z�)\�R C��S2��~\"\�\�\�$9��)\'\���','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,3,100,4,5,1,1559163683282,4,1559163661565,1),('5A��Z̞+\�M��.lJ\�I\ZA\�q�cC��',6,'\0\0\0p���|\����\��\�^=s��7\"�C�~)p/p���|\����\��\�^=s��7\"�C�~)p/Ua�bY?����w\�\�&c\��\�_\��\nP�=\�B/j\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\\\�|\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�9�N¼\�\�\�b\��g{�I	^6\�\Zi\�O\0\0\0HG0D nC�9o�z�X��\�\�������\��\�*Pw�\"_ y907�\�\�\�抬\�[gi>[1\�\�ޜ�\�e\��:C����\0\0\0�Oa8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u��\r\0\0\0\0\0\0�v���q��w�\�\'51,\�R\�\��e���\0Ba8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'/p)~�C�\"7��s=^ۜ\���\�|���p','/p)~�C�\"7��s=^ۜ\���\�|���p','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,13,15,1,1559161453281,13,1559161449804,1),('8�t�\�g\�@-���\�	r��H�\�W�Eg�',15,'\0\0\0��\�\')��9$\�\�\�\"~��2S��C R\�)�z\�U���\�\')��9$\�\�\�\"~��2S��C R\�)�z\�U�f\'b5\\\�\�;�5O��HKP� \�x�3\�FC�\�_\0\n�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�U\��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : 1,\n  \"toHeight\" : 12,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"PinWXquw8G1FKGlXSZDCXKl2QseeGwZHrixrHDdiyhc=\",\n    \"reversedBytes\" : \"F8piNxxrLK5HBhuex0J2qVzCkElXaShFbfCwq17WKT4=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'�U\�z�)\�R C��S2��~\"\�\�\�$9��)\'\���','�U\�z�)\�R C��S2��~\"\�\�\�$9��)\'\���','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,2,100,4,5,1,1559163683339,4,1559163660821,1),(':L\nV\�e�cpS%\�zq��\r\�\�v\�ޢ�����y',4,'\0\0\0�þ:(�%��\�3?ގ�(XkE�b��\"`%0\�i<�þ:(�%��\�3?ގ�(XkE�b��\"`%0\�i<a�\��\��_��F��\�\�n\ZeT\�7E#\n״̍I\�\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0�P<�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\�%��%��\�\�q��?����\�\��ތ�n\�/e\�Ϗ\0\0\0IH0E!\0\�\�v\�{iw\\T����%QkW�\��]ʥ�\�\�\� ]yA�o�L֧\�������\�_$dr\�\'we�!4�d����\0\0\0��f8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u��\r\0\0\0\0\0\0�v���q��w�\�\'51,\�R\�\��e���ܦf8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'<i\�0%`\"��b�EkX(��\�?3֨�%�(:�À','<i\�0%`\"��b�EkX(��\�?3֨�%�(:�À','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,15,17,1,1559157730362,15,1559157729387,1),('<i\�0%`\"��b�EkX(��\�?3֨�%�(:�À',3,'\0\0\0����}H����J\r\Z\��o7\�>�Iw2�\n����}H����J\r\Z\��o7\�>�Iw2�\n\�%��%��\�\�q��?����\�\��ތ�n\�/e\�Ϗh\�\�\\\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0-v�t\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�h6���@�b����Ǟ�\0�����\�2tP\�(V�\"\0\0\0HG0D Jt̺Arj\�\�<۰���\��W��đ;ۉ�S\��\�@ <=*\reaK�]\�<��\�*�\�\"6;U���\�P\�\�����\0\0\04\�f8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u��\r\0\0\0\0\0\0�v���q��w�\�\'51,\�R\�\��e�����f8u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','\n�2wI�>\�7o�\�\Z\rJ����H}�����','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,16,18,1,1559157610196,16,1559157608686,1),('>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�,G�����˓\�l���?��yδ\�l�\�eEHm#^[\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0\0�Ƥ~�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,19,21,1,1559157149648,19,1559157149502,1),('sy�\��E\��k\�\�\�\�\�-�$��4\��\�K\�f�',19,'\0\0\0�\�K�\�m\�:�G���}�/�8�\�*\�\�T�\0�\�K�\�m\�:�G���}�/�8�\�*\�\�T�\0\n�\�8n2Fq5E�X^sVM�\�kc��\Z�\� �&�{\�S&\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0�\�0\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�-$�\'é����\n5�HM�&b�I�\�i�^\�:2\�\0\0\0IH0E!\0\�\�>�= 춣���\�*�(�\�L\�\��\Z�|ו) q�\���\���P��\��Ѓ����>G�\�&\�\�|����\0\0\0�-;6u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�0W\0\0\0\0\0�v��@Z�~%\��\��BŊ\�\n���\�56u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'\0�T\�\�*\�8�/�}���G�:\�mӎK�\�','\0�T\�\�*\�8�/�}���G�:\�mӎK�\�','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,0,1,1,1559176790124,0,1559176788014,1),('~�eG�o-�_��{�\�\n�^�C\0�\�a]��|\��{',17,'\0\0\0���\\�\�\�#\�Cy���\�!�Q`�\�\r>-�\�#���\\�\�\�#\�Cy���\�!�Q`�\�\r>-�\�#�-$�\'é����\n5�HM�&b�I�\�i�^\�:2\�\�\\\0\0\0\0�� \0\0\0\0\0\0\0\0\0\0\0Uk�\�\�\�\�稒\n\�o\�\�L�I�\\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0���`v\�#:L!ck��Q\"\�y�&\\�;���\r\�\�@\0\0\0IH0E!\0�\�\�efQ{����\��1WSu\�Z$F4�z$z S)|�\�q\�r*�\�\�\�\�Fa��C=�q�8W��q{����\0\0\0\��@6u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�0W\0\0\0\0\0�v��@Z�~%\��\��BŊ\�\n���-;6u�\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'#Ԗ->\rܓ`Q�!ͽ��yC\�#\�ؔ\\���','#Ԗ->\rܓ`Q�!ͽ��yC\�#\�ؔ\\���','\�\�\�稒\n\�o\�\�L�I�\\�\�',NULL,1,100,2,3,1,1559173397094,2,1559173393618,1);
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
INSERT INTO `ordermatching` VALUES ('\0�T\�\�*\�8�/�}���G�:\�mӎK�\�',18,1,0,NULL,2,'z)\�[n�ϰ�4r�.\�}�\�`\�M(\�\�¤e\�5�'),('z)\�[n�ϰ�4r�.\�}�\�`\�M(\�\�¤e\�5�',9,1,1,'\0�T\�\�*\�8�/�}���G�:\�mӎK�\�',2,'>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�'),('>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�',0,1,1,'z)\�[n�ϰ�4r�.\�}�\�`\�M(\�\�¤e\�5�',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
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
INSERT INTO `outputs` VALUES ('I�̴\�\n#E7\�Te\Zn\�֗�F��_�\��˥a',0,3500,'v���q��w�\�\'51,\�R\�\��e���','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',1,0,':L\nV\�e�cpS%\�zq��\r\�\�v\�ޢ�����y','bc','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',NULL,0,1,0,NULL,1559157729),('I�̴\�\n#E7\�Te\Zn\�֗�F��_�\��˥a',1,999959527073500,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,':L\nV\�e�cpS%\�zq��\r\�\�v\�ޢ�����y','bc','',NULL,1,1,1,'/p)~�C�\"7��s=^ۜ\���\�|���p',1559157729),('/B\�=�P\n�\�_\�c&\�\�w����?Yb�aU',0,3500,'v���q��w�\�\'51,\�R\�\��e���','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',1,0,'5A��Z̞+\�M��.lJ\�I\ZA\�q�cC��','bc','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',NULL,0,1,0,NULL,1559161449),('/B\�=�P\n�\�_\�c&\�\�w����?Yb�aU',1,999959526720000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'5A��Z̞+\�M��.lJ\�I\ZA\�q�cC��','bc','',NULL,1,1,1,'�\n\�>\�n��t��/��=\�\�\�\�S+�\�Tp7\�\�',1559161449),('\�\�\�\�艷����}R\�5ڦ\�v�{�d�5C�X�I',0,678900000,'!\�\�X��nǛ2\�0�\�և\r��$�öϜ��\�HY�','1675ZF5ZJEh35CqpfPWiA41FT4hEn7QCJB',2,1,' \�ul�x�w��B��A��se[\�#!��/���S','02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859','',NULL,0,1,0,NULL,1559163649),('@i����Ʊ���\�0�G\09�*���\��1\Z`',0,678900000,'!+���PK�\�i+s+�*s\�Z\�V ռ!�\Z.`us�','1Lpvh2E44RSReTnmPivfghtUm2RE9Kd66B',2,1,'4��\�X�@\�\�\�\�~\�c���i����ix&','022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573','',NULL,0,1,0,NULL,1559163661),('@\�\�\r���;�\\&�y\�\"Q��kc!L:#\�v`���',0,35000000,'v�\�K>X��bJ\�� �\�\\\�\�v\�\\���','1KXvJxM6fC63bgZEwQDNd2UWFDK24ZHJh7',1,0,'/�cr����^�F\�\�>\��,\�1yy$XݺA >','bc','1KXvJxM6fC63bgZEwQDNd2UWFDK24ZHJh7',NULL,0,1,0,NULL,1559162453),('@\�\�\r���;�\\&�y\�\"Q��kc!L:#\�v`���',1,999959491020000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'/�cr����^�F\�\�>\��,\�1yy$XݺA >','bc','',NULL,1,1,1,'~�eG�o-�_��{�\�\n�^�C\0�\�a]��|\��{',1559162453),('HEe\�l\�\�y��?���lߓ\������G,\�\�',0,1000000000000000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�','bc','',NULL,1,1,1,'(�\"e?\\j�\��b�\�ٙ<٬H{�_\�{\�	',0),('r����\"!4�k\�\�:T�g�?_�,�l3;�',0,10,'v�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��','1111111111111111111114oLvT2',1,1,'8�t�\�g\�@-���\�	r��H�\�W�Eg�','bc','1111111111111111111114oLvT2',NULL,0,1,0,NULL,1559163683),('r����\"!4�k\�\�:T�g�?_�,�l3;�',1,110,'v�\�\�\�稒\n\�o\�\�L�I�\\�Ԉ�','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',1,1,'8�t�\�g\�@-���\�	r��H�\�W�Eg�','bc','1MxiDdUWQ5Aek872tJHpnGe7j75pwaGdZE',NULL,0,1,0,NULL,1559163683),('tn\��P\�\0�6W\�J��:F�e\�ZlS�%O\�Y�',0,678900000,'!\��\�JY�<\�Ѭ�e\�\��7e\�~d\�\�*�\�Pl��','12jEy3c58dGMtB3sotY99WXXC3hfuqozNV',2,1,'�U\�z�)\�R C��S2��~\"\�\�\�$9��)\'\���','03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc','',NULL,0,1,0,NULL,1559163659),('z��q\n��cuS$H\08�XRŘ�%��9	tԹ',0,700000,'v��w��r���\�Bi��V�*��','1Fp33sT2QAYKzbBJjknmBQkYSWZtnqsbwB',1,0,'�\n\�>\�n��t��/��=\�\�\�\�S+�\�Tp7\�\�','bc','1Fp33sT2QAYKzbBJjknmBQkYSWZtnqsbwB',NULL,0,1,0,NULL,1559161797),('z��q\n��cuS$H\08�XRŘ�%��9	tԹ',1,999959526020000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'�\n\�>\�n��t��/��=\�\�\�\�S+�\�Tp7\�\�','bc','',NULL,1,1,1,'/�cr����^�F\�\�>\��,\�1yy$XݺA >',1559161797),('�\�O\�i\Z\�6^	I�{g�\�b\�\�\�\�N�9\�\�',0,350000,'v��w��r���\�Bi��V�*��','1Fp33sT2QAYKzbBJjknmBQkYSWZtnqsbwB',1,0,'/p)~�C�\"7��s=^ۜ\���\�|���p','bc','1Fp33sT2QAYKzbBJjknmBQkYSWZtnqsbwB',NULL,0,1,0,NULL,1559160442),('�\�O\�i\Z\�6^	I�{g�\�b\�\�\�\�N�9\�\�',1,999959526723500,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'/p)~�C�\"7��s=^ۜ\���\�|���p','bc','',NULL,1,1,1,'5A��Z̞+\�M��.lJ\�I\ZA\�q�cC��',1559160442),('�X@�V�\�C\�\'\Z��\�u\\\�em$\'b>eZ^\��\�\Z',0,678900000,'!��`�\�L\�\�\0?�{m)%\�lG��	\�|r@@]{=�','1GtzL9G51YTnquirBBptpgKkwzRGp3Nicg',2,1,'i�oTQ�%øԦ\�!I��Fe\�P��\�m0n�ǒ','021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d','',NULL,0,1,0,NULL,1559163656),('�\�\�e/\�n��\��\�ᙰ��?��q\�ҙ�%��%\�',0,3500,'v���q��w�\�\'51,\�R\�\��e���','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',1,0,'<i\�0%`\"��b�EkX(��\�?3֨�%�(:�À','bc','1FTfBEvpEFwAvoJtNd7UTHBouJXn5zciGv',NULL,0,1,0,NULL,1559157608),('�\�\�e/\�n��\��\�ᙰ��?��q\�ҙ�%��%\�',1,999959527077000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'<i\�0%`\"��b�EkX(��\�?3֨�%�(:�À','bc','',NULL,1,1,1,':L\nV\�e�cpS%\�zq��\r\�\�v\�ޢ�����y',1559157608),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',0,35700000,'v�\�\�y�me����&畾�L��','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1MqiAucNA9uepdqk5xzxtT727fWn97Df2Y',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',1,350000,'v�]�n�\�LJ�\�%�ũ���䮈�','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',2,367500000,'v�j���9\�.G��oEQq3�ň�','1Afz5FJtVGAtrwCfE5giVvhRi6u2mDg9Fv',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1Afz5FJtVGAtrwCfE5giVvhRi6u2mDg9Fv',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',3,500000000,'v�i\�\�Ƒhճk%\�C��}�����','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1Af9Lnj5YpxpCNi2nXLBRNGo5P6EYr1a8w',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',4,35000000,'v�Ƴ\\!���f�V�\��:�\��R��','1K7df8Junwj25WLGqm9BFmnPZaPqZYVqKY',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1K7df8Junwj25WLGqm9BFmnPZaPqZYVqKY',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',5,250000000,'v�)�t2x>4\�l)	�6\�N\�R:��','14nsk71wQjXFSxT8bQZQTdjYvDwpxpni1w',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','14nsk71wQjXFSxT8bQZQTdjYvDwpxpni1w',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',6,35350000,'v�\�Re\r���X�\\�э\� B�\�5','1NGh9aq7mePaYeTUuEi9viVtgo8Xw6d6Rp',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1NGh9aq7mePaYeTUuEi9viVtgo8Xw6d6Rp',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',7,35000000,'v�Ti�mskDGff�����\�\�XHf��','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','18hLDJHfZSrW3fTNpcDoHb7zm3TbpwogPq',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',8,17850000,'v�9\�(C5%�\��-��z���','16GzrB4XercHpVZodiMUQBXg1ka3GvPzzX',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','16GzrB4XercHpVZodiMUQBXg1ka3GvPzzX',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',9,14000000000,'v�\�J��]�\�*>�\�d$�FiA��','1NT7AuM2jL2ZiQ559TLA9CzyqoqpZr9bCn',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1NT7AuM2jL2ZiQ559TLA9CzyqoqpZr9bCn',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',10,800000000,'v�\�˔!�V%�C.\"D\���<N� ��','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1Kwikbr3PHcC7Y7amkAKrWpsgfu7MAzwg6',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',11,50000000,'v���\�4�%n\�\�v\�6�0�I^�','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1Pi1s6QPaq7Rn1CcmrLwkkBPw6WKpNrvFy',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',12,2000,'v��\�N\�\�ؐ�B(�v���s�M��','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1DCQ2ePWh2doaAqQPxapDGBTVd2RneYW6m',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',13,10000000000,'v�$^i\�\�\�sٯ&?0�$ܓ�f\�6��','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','14KJRt7bJiDywbQT3ZtdRJDv4aouyNPAcU',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',14,35000000,'v��g+2EU\�]Fx\�ϸ�>�D���','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1DLwhwKgHSjaK1NAbD6fTmF9BweDLoXd4z',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',15,50000000,'v�\�ET\�6W�\�{ni��]��و�','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1N8LideJt2rAXrqvNnidqx8XNSzVV2nB2o',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',16,500500000,'v�4V��\\��#���\�\�\���','15mjrwRj8h8SRbJ4HHGpQB33HPu6L2Xbds',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','15mjrwRj8h8SRbJ4HHGpQB33HPu6L2Xbds',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',17,500000000,'v���n\�ͪQ�\�\� <���@�����','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1Cu7VXK3GsyfDckZBEETE7enk9HctPBeaY',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',18,3500000000,'v�|b�yƹ1\�?^?<\�YP���g��','1CLgqG1U9fjsEcMhnnKU7FVVzepar5ktaH',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1CLgqG1U9fjsEcMhnnKU7FVVzepar5ktaH',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',19,34650000,'v���\�#&��iXǎs�y\�>���','1DMgbQn4ZsmYoGoct4w4gkqd1PK23s6EzA',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1DMgbQn4ZsmYoGoct4w4gkqd1PK23s6EzA',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',20,700000000,'v���||m\�\�\�\�Y�!\�&/\rg���','1DrRfwxwtLcAEhAEiE6MSbpyK52Lf7x8rE',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1DrRfwxwtLcAEhAEiE6MSbpyK52Lf7x8rE',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',21,25000000,'v���\�rY�	�&�\�`�\�M��','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1PPgSpEw12tsgnUs97JkFqaQePq96umieG',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',22,10000000,'v��j߇������=<I(\����','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1ESUMsqfimoAkbbQDHqyKSmDtyAcU2T5XZ',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',23,350000000,'v�F\��n��&��$���=����','17TWC7hjEPu8JxvVHKzWhT5NiPvgXseCZj',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','17TWC7hjEPu8JxvVHKzWhT5NiPvgXseCZj',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',24,100000000,'v����q�$�5�\\�Gf颈�','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1E6nXfhrr2Gt6iZuZq5oEVZW2DMqMWm3S4',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',25,6000000000,'v��B�^��42�;y�ʯŽe٤��','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1Et5UjPuPaiqJ9vxHJVGdGXb7DKzmBCj49',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',26,3500,'v�G\�Ax\�\�Q�a&>�S� j�tĈ�','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',27,350000000,'v�)K|�\��ϙ�\�tա3s��U���','14mM8pCKSi6nftVVLFLz4etCWhRWyR5BLN',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','14mM8pCKSi6nftVVLFLz4etCWhRWyR5BLN',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',28,5500000,'v�\�S�cD�\�t��\�;\�\�/[���','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1NChrxWA8PxQ1rg9vtFNTPY7VYSYXRyWAa',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',29,350000000,'v�#�l��r�f��I�أL��A��','14Fy836wiMYzwzVmRCvu5fi1nvCKabW5dz',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','14Fy836wiMYzwzVmRCvu5fi1nvCKabW5dz',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',30,250000000,'v�\�9 �Mjƀ��{�q\�\�Akx���','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1Kyyz36nFncZqc8EzgqMSJfUoXVEep6hq4',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',31,1000000000,'v�ՙ�y�\�]�)��\��\�o,��','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1LUQx7kFEawgHcbM9vctiU1YZjVjRxbsGc',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',32,50000000,'v��\�ϊ\��\�y�q�\���Qш�','1PgaL2wGD2DXTwkbUGUG31TekMm9tggwqN',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','1PgaL2wGD2DXTwkbUGUG31TekMm9tggwqN',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',33,500500000,'v�P�y\�P�\�\�>\�L�\�<�,2�`��','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',1,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','18MGuTqfd2zRfpDNWE72rJAm56BKbBLonv',NULL,0,1,0,NULL,1559157150),('��V(\�Pt2�ῗ���\0��Ǳ���b�@���6h�',34,999959527080500,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'\n�2wI�>\�7o�\�\Z\rJ����H}�����','bc','',NULL,1,1,1,'<i\�0%`\"��b�EkX(��\�?3֨�%�(:�À',1559157150),('�\�\�\�1ڮN#7�9\�g��j	\�m�\�\��śxv',0,678900000,'!O�\�t5�ح\�\�\�4���ؑ���\�S嫷,�=^n�','1MW35ZNpYDANihQjDZC7fmzj2rADW4ZyrP',2,1,'T\�\�Mm�W:���ː��\���V�\'v\�ܿ�D�:\�','034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e','',NULL,0,1,0,NULL,1559163652),('�KϾ������\�\�\�.NV��G�\��g��\�\�\�',0,678900000,'!\0]d%*i�s�\�^�<��\�z!��a�P�o\�%h�','17gt5R6JU3geTrJqauEWZZ1hqozH5HAppG',2,1,'^l#��\0�\�\n\�\�y�\�Py\�\�|�|\r��\�UMf[\r','02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568','',NULL,0,1,0,NULL,1559163654),('\�2:\�^�i\��I�b&�MH�5\n�����\�\'�$-�',0,350000,'v��@Z�~%\��\��BŊ\�\n��','1NyXKzSUAyqXYQgiDEHtsPw95q7km6rzde',1,0,'~�eG�o-�_��{�\�\n�^�C\0�\�a]��|\��{','bc','1NyXKzSUAyqXYQgiDEHtsPw95q7km6rzde',NULL,0,1,0,NULL,1559173393),('\�2:\�^�i\��I�b&�MH�5\n�����\�\'�$-�',1,999959490670000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'~�eG�o-�_��{�\�\n�^�C\0�\�a]��|\��{','bc','',NULL,1,1,1,'sy�\��E\��k\�\�\�\�\�-�$��4\��\�K\�f�',1559173393),('\�{�&� Ώ\Z��ck\�MVs^X�E5qF2n8ҭ\n',0,350000,'v��@Z�~%\��\��BŊ\�\n��','1NyXKzSUAyqXYQgiDEHtsPw95q7km6rzde',1,0,'sy�\��E\��k\�\�\�\�\�-�$��4\��\�K\�f�','bc','1NyXKzSUAyqXYQgiDEHtsPw95q7km6rzde',NULL,0,1,0,NULL,1559176788),('\�{�&� Ώ\Z��ck\�MVs^X�E5qF2n8ҭ\n',1,999959490320000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'sy�\��E\��k\�\�\�\�\�-�$��4\��\�K\�f�','bc','',NULL,0,1,0,NULL,1559176788),('\�\Z��8��\�hp\"�\'	�co�g\�͏��f��;~',0,10500,'v�]�n�\�LJ�\�%�ũ���䮈�','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',1,0,'(�\"e?\\j�\��b�\�ٙ<٬H{�_\�{\�	','bc','19YZyuCBEEYYivqMMUuB32jhX5JL4Mw1t1',NULL,0,1,0,NULL,1559157150),('\�\Z��8��\�hp\"�\'	�co�g\�͏��f��;~',1,35000000,'v�Ƴ\\!���f�V�\��:�\��R��','1K7df8Junwj25WLGqm9BFmnPZaPqZYVqKY',1,0,'(�\"e?\\j�\��b�\�ٙ<٬H{�_\�{\�	','bc','1K7df8Junwj25WLGqm9BFmnPZaPqZYVqKY',NULL,0,1,0,NULL,1559157150),('\�\Z��8��\�hp\"�\'	�co�g\�͏��f��;~',2,3500,'v�G\�Ax\�\�Q�a&>�S� j�tĈ�','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',1,0,'(�\"e?\\j�\��b�\�ٙ<٬H{�_\�{\�	','bc','17Z2Rhgfr8KPQvLTtvywsNrrfVUkn33yHU',NULL,0,1,0,NULL,1559157150),('\�\Z��8��\�hp\"�\'	�co�g\�͏��f��;~',3,999999964986000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'(�\"e?\\j�\��b�\�ٙ<٬H{�_\�{\�	','bc','',NULL,1,1,1,'\n�2wI�>\�7o�\�\Z\rJ����H}�����',1559157150);
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
INSERT INTO `tips` VALUES ('sy�\��E\��k\�\�\�\�\�-�$��4\��\�K\�f�');
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
INSERT INTO `tokens` VALUES ('085e6c23a5f900f9e80a12edeb79b9c75079cee77c967c0d83a5ee554d665b0d',1,'02005d0b64252a69a473fdc95e913cba9be97a16218fbc15619350bf6f18e92568',0,678900000,'mETH','mETH',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('1669996f54519d25c3b8d4a6d62149bc9946650801e45086b9ca6d306ea1c792',1,'021bacf660bee64c1de489d8003fbc7b6d2925ed6c47a6a209cc7c7240405d7b3d',0,678900000,'人民币分','人民币分',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('16f955c67aa729cc522043bf885332838f7e22c6c9db2439bfff2927cb11a2a3',1,'03dec1cc4a59853cead1aca41465cdebf6376503c6057f7e64e7cc2aadd1506cbc',0,678900000,'USD-CENT','USD-CENT',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('1c54c4e54d6d80573a15ab9faacb9088f1daf9fa56f32776d7dcbffb44903aeb',1,'034fa5ce7435a7d8adee05e6ce34b4a2b6d891879bb7d253e5abb72ca23d055e6e',0,678900000,'mBTC','mBTC',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('20e8756cf3788a77ad871d42fe9341859473655b1bd923219e1b882fb8b28253',1,'02ebc458ba846ec79b32e7a230fbe9d6870dfc850f240b94c3b6cf9c96a3d54859',0,678900000,'mGold','mGold',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('340ca092db588b40dcc3e0d37ec36380a806bf69069890aab569780708121626',1,'022bbcf7ba14504b1b9eeeb9692b732b902a73d55ad85620d5bc21921a2e607573',0,678900000,'EUR-CENT','EUR-CENT',NULL,1,0,0,'',0,NULL,NULL,0,NULL,NULL,NULL),('3e29d65eabb0f06d452869574990c25ca97642c79e1b0647ae2c6b1c3762ca17',1,'bc',0,0,'bc','BigTangle currency',NULL,1,0,1,'',0,NULL,NULL,0,NULL,NULL,NULL);
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
INSERT INTO `txreward` VALUES ('8�t�\�g\�@-���\�	r��H�\�W�Eg�',12,1,0,NULL,2,'>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�',2),('>)\�^���mE(iWI�\�\\�vBǞG�,k7b\�',0,1,1,'8�t�\�g\�@-���\�	r��H�\�W�Eg�',2,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',10);
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
