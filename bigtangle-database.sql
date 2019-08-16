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
INSERT INTO `blocks` VALUES ('-5t�g�,\�i_9k\�B�\�و\�̽x��)��z',1,'\0\0\09\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\��9\�\�\�\�-9\�m�\�Dk[o,-^sf)C�Q-\�\�\�$\���\n{*qZ\�uҩ�ln\�g\��댤I��6�=w�\�x\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\��\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�\�Ic3�\�\�h6 �q)\�{�nD�ZY��j<�F\0\0\0\0HG0D J��8\�0A\�(��/�2j\n�}\�XK��R z�\�#�e\�\�{�J�*��:\�/?\�\�[���Nٷ�����\0\0\0\0�rN	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�0W\0\0\0\0\0�v���g��Q\"\�7�B;_ș\�S��\�HmN	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',0,'�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','�쓅�R�G\�*Jr�\�\�#�1D',NULL,1,100,6,7,1,1565117897530,6,1565117896941,1),('$/��\�?���\"q&l���\��\�U�k�f\�-%0ȅ�',6,'\0\0\0	��%�\�a�\"�~�J\��F�\�\��G�a2	��%�\�a�\"�~�J\��F�\�\��G�a2Q��*.Z������%\�݇+\�\�\�wPq\�\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�J?�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!��Oه6Z\�j\�ὂ�V`/LJ3ϐ&�oGR!��Oه6Z\�j\�ὂ�V`/LJ3ϐ&�o!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"USD\",\n    \"description\" : \"USD\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"USD\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0]\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1SXsB7CdTdbiY2ivFX6cnKnvPJbibKwgh\",\n    \"publickey\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"signature\" : \"3044022023ef00c8c170a7800e446104459449200b955f4eb639d0b311c901713ea4671002201dbfebdfe400819a6ff0ce79f6bb9705f037a3170d998a4c6a82f76c9bf881f0\"\n  }, {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402203fe90b20713b549ff50ccb42fd890b2f2ff98e9520e1ecf2ca5b0e9725b7984e02204dd6f883ccbd4a4bf20b4dea52f8197129148ddc8723ae7adc8c1735a966bc6a\"\n  } ]\n}',0,'2a�G�\�ՆF�\�J�~�\"�aĎ%��	','2a�G�\�ՆF�\�J�~�\"�aĎ%��	','�쓅�R�G\�*Jr�\�\�#�1D',NULL,3,100,1,2,1,1565119710071,1,1565119708160,1),('*:�\�\�\nZ�Y�+\�Y��\���k�\�BUz��VP�*',3,'\0\0\0�7ߚd\�\�\�\rP/t��耴\�g9�ds�\��r�\�{2�7ߚd\�\�\�\rP/t��耴\�g9�ds�\��r�\�{2a��\�\�Z\�b^\�\�B\�3�sY\�a�\�MWF�n�d}\�\�\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0a�{��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!c\�ٍ�xl(�e��L+\Z\�{�\�6��^\"\��cGR!c\�ٍ�xl(�e��L+\Z\�{�\�6��^\"\��c!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\r\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"Gold\",\n    \"description\" : \"Gold\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"Gold\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0`\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1MQQTRrpCpiTUy2TrLUxKZtgK3LDnTX1D1\",\n    \"publickey\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"signature\" : \"3045022100d8f389df79ef5fafa2bc1d7d8445606496a00d5e03c3dc3dc2a60a5f7e654b4c02201eb9e583c7d76c6dee3968966d44943624b7ab0af9dd4ec85e42d7736ad6aab8\"\n  }, {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402200da6e3ff3eb9465491d3501d920cdb69ded90a4b506b790fdc8bc51d52157ad402205cbb9f4f451e49384d977e61cd5872bb7719e26b40251f6807d78d49731c09c8\"\n  } ]\n}',0,'2{\��r�\��sd�9gʴ�\��t/P\r\�\�\�d�\�7�','2{\��r�\��sd�9gʴ�\��t/P\r\�\�\�d�\�7�','�쓅�R�G\�*Jr�\�\�#�1D',NULL,3,100,4,5,1,1565119707033,4,1565119705254,1),('+�\��x8_=�\���g�&B�Sm >ɯ\�{�',4,'\0\0\0*�PV��zUB\��k��ى�Y\�+�Y�Z\n\�\�:**�PV��zUB\��k��ى�Y\�+�Y�Z\n\�\�:*�\�`�V!eN�c\�[\0b\�\�y�x\�&���\�ϲ+\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0���$�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!�=��^̂�\�\�\�\��Z��e�f�7\�\�D	XGR!�=��^̂�\�\�\�\��Z��e�f�7\�\�D	X!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"BTC\",\n    \"description\" : \"BTC\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"BTC\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"tokenindex\" : 0,\n    \"address\" : \"192roAcsA9rRFBLDA6bgVZipteDQN7RcFG\",\n    \"publickey\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"signature\" : \"3045022100a761f055ed9f40552ee5bc195d63a97479eb07a0a636d2a4f223c90e2e544568022066ca57c8ea5482d07d47d9c343c77a01d16318dc3cf8851528f96910dd0bd257\"\n  }, {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"30450221008cc4453a2bd8966c043e23f6d4ab4e33643b747066e058a13e513f151c3ac83d022006e57bd64745e520d170cd7a0a38bd7973241279449c56d1eb49b53f2d206a2a\"\n  } ]\n}',0,'*:�\�\�\nZ�Y�+\�Y��\���k�\�BUz��VP�*','*:�\�\�\nZ�Y�+\�Y��\���k�\�BUz��VP�*','�쓅�R�G\�*Jr�\�\�#�1D',NULL,3,100,3,4,1,1565119707100,3,1565119706298,1),('2a�G�\�ՆF�\�J�~�\"�aĎ%��	',5,'\0\0\0�{�\�\�> mS�B&�g���\�=_8x�\��+�{�\�\�> mS�B&�g���\�=_8x�\��+�S\�^�3\�Nr\�K�#gM\��\�G;|��u�]H<�\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0Z���쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\��\�6a9\������;�\�u\�_�t?kՏEX`GR!\��\�6a9\������;�\�u\�_�t?kՏEX`!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"ETH\",\n    \"description\" : \"ETH\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"ETH\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1966QgSJZu5pScZahtjaJASCmhjg5JPvAf\",\n    \"publickey\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"signature\" : \"3045022100b4caee9748feb79147380b47eadd79d19aac49d8ccd1dc9ea60e402f9f6c8aa402207b18c5bead09494e93688161fcf07e6acc79074748c4a12ba819a1eea8d852d3\"\n  }, {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100e2131e1abae47c78f30197a65a8ebcc658e81b08e115861c18285c5e17fc447b02203d7146ffdaa6863e4b8699969191b988aef4160229b6dd33a31a32de1208ea6e\"\n  } ]\n}',0,'+�\��x8_=�\���g�&B�Sm >ɯ\�{�','+�\��x8_=�\���g�&B�Sm >ɯ\�{�','�쓅�R�G\�*Jr�\�\�#�1D',NULL,3,100,2,3,1,1565119710072,2,1565119707306,1),('2{\��r�\��sd�9gʴ�\��t/P\r\�\�\�d�\�7�',2,'\0\0\0z��)��x�̝\�\�\�B\�k9_i\�,�g�t5-z��)��x�̝\�\�\�B\�k9_i\�,�g�t5-\�s\�\����`]5�61D\�ފԿˮ��\�Q�[q-r\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0dй\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0����\0\0\0\0 1w(\0\0\0\0!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:GR!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"人民币\",\n    \"description\" : \"人民币\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"人民币\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"tokenindex\" : 0,\n    \"address\" : \"18TiXgUW913VFs3nqak6QAadTS7EYL6mGg\",\n    \"publickey\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"signature\" : \"3045022100cf521498313d443f1f35755f092ed35e49074e9ca75c0e0db51ad5a0d6b2dae00220618e988d7502181437e3134c46a7f58bf2bc68ce1e3ba41975a3e099c91b8f07\"\n  }, {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100bc98c5f733c12616f9ed97e95782caf7c6ae4cdbb58cd00d718111f7fbe1c0ef02207c60efd9d5e7ebb17c45f61c53b3777c420bd5420a05e091dc77c367b95c6823\"\n  } ]\n}',0,'-5t�g�,\�i_9k\�B�\�و\�̽x��)��z','-5t�g�,\�i_9k\�B�\�و\�̽x��)��z','�쓅�R�G\�*Jr�\�\�#�1D',NULL,3,100,5,6,1,1565119706939,5,1565119703912,1),('4 \\�\�s\�\n@�aS\��!&(ࢴ?6z~�Bo�j�',7,'\0\0\0��\�0%-\�f�k�U\��Ո��l&q\"���?̈�/$��\�0%-\�f�k�U\��Ո��l&q\"���?̈�/$�T�2��ү@�)�ٗ�5\�=)j����=\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0xʪ�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\�\�hr곌\\[UZ�\�\�\�[1��/\���\�Kv\�GR!\�\�hr곌\\[UZ�\�\�\�[1��/\���\�Kv\�!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"EUR\",\n    \"description\" : \"EUR\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"EUR\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0^\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"tokenindex\" : 0,\n    \"address\" : \"18qgE7fustjfp3uZknPVT18c1TqCzvh9ao\",\n    \"publickey\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"signature\" : \"304402207dfe4e631c4cd48a967347cd75a76f75ace9b894793d5dc931d9729f263aad51022058c8ff349ae860cfe8e8016d907c24d0c2e600d662e841aeeeade5b9f4ff0bbd\"\n  }, {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402202e6aa087736f4ba178140fc3965fcd32d8b61f29bc0708cd826dec4bbcd44cb902204fdc5539925d2312a987a394ad7b8c22fe087e4742fc90867b2b766f4019b2ae\"\n  } ]\n}',0,'$/��\�?���\"q&l���\��\�U�k�f\�-%0ȅ�','$/��\�?���\"q&l���\��\�U�k�f\�-%0ȅ�','�쓅�R�G\�*Jr�\�\�#�1D',NULL,3,100,0,1,1,1565119710148,0,1565119708926,1),('�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�\�Ic3�\�\�h6 �q)\�{�nD�ZY��j<�Fm#^[\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0\0�rN	\0\0�#!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0{\n  \"version\" : 1,\n  \"fromHeight\" : -1,\n  \"toHeight\" : 0,\n  \"prevRewardHash\" : {\n    \"bytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\",\n    \"reversedBytes\" : \"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\"\n  }\n}\0\0\0\0\0\0\0\0',0,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,0,100,7,8,1,1565117472033,7,1565117471882,1);
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
INSERT INTO `multisign` VALUES ('07d9c2c8f8de4a3f8ae6e50e30802f14','0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363',0,'1MQQTRrpCpiTUy2TrLUxKZtgK3LDnTX1D1','\0\0\0�7ߚd\�\�\�\rP/t��耴\�g9�ds�\��r�\�{2�7ߚd\�\�\�\rP/t��耴\�g9�ds�\��r�\�{2a��\�\�Z\�b^\�\�B\�3�sY\�a�\�MWF�n�d}\�\�\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0a�{��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!c\�ٍ�xl(�e��L+\Z\�{�\�6��^\"\��cGR!c\�ٍ�xl(�e��L+\Z\�{�\�6��^\"\��c!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\r\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"Gold\",\n    \"description\" : \"Gold\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"Gold\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0`\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1MQQTRrpCpiTUy2TrLUxKZtgK3LDnTX1D1\",\n    \"publickey\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"signature\" : \"3045022100d8f389df79ef5fafa2bc1d7d8445606496a00d5e03c3dc3dc2a60a5f7e654b4c02201eb9e583c7d76c6dee3968966d44943624b7ab0af9dd4ec85e42d7736ad6aab8\"\n  }, {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402200da6e3ff3eb9465491d3501d920cdb69ded90a4b506b790fdc8bc51d52157ad402205cbb9f4f451e49384d977e61cd5872bb7719e26b40251f6807d78d49731c09c8\"\n  } ]\n}',1),('2c06a4d349bd4b1c96563e1bfe7f342a','02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb',0,'18qgE7fustjfp3uZknPVT18c1TqCzvh9ao','\0\0\0��\�0%-\�f�k�U\��Ո��l&q\"���?̈�/$��\�0%-\�f�k�U\��Ո��l&q\"���?̈�/$�T�2��ү@�)�ٗ�5\�=)j����=\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0xʪ�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\�\�hr곌\\[UZ�\�\�\�[1��/\���\�Kv\�GR!\�\�hr곌\\[UZ�\�\�\�[1��/\���\�Kv\�!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"EUR\",\n    \"description\" : \"EUR\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"EUR\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0^\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"tokenindex\" : 0,\n    \"address\" : \"18qgE7fustjfp3uZknPVT18c1TqCzvh9ao\",\n    \"publickey\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"signature\" : \"304402207dfe4e631c4cd48a967347cd75a76f75ace9b894793d5dc931d9729f263aad51022058c8ff349ae860cfe8e8016d907c24d0c2e600d662e841aeeeade5b9f4ff0bbd\"\n  }, {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402202e6aa087736f4ba178140fc3965fcd32d8b61f29bc0708cd826dec4bbcd44cb902204fdc5539925d2312a987a394ad7b8c22fe087e4742fc90867b2b766f4019b2ae\"\n  } ]\n}',1),('3c8282a0248b44d987cd50c389427197','02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\0z��)��x�̝\�\�\�B\�k9_i\�,�g�t5-z��)��x�̝\�\�\�B\�k9_i\�,�g�t5-\�s\�\����`]5�61D\�ފԿˮ��\�Q�[q-r\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0dй\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0����\0\0\0\0 1w(\0\0\0\0!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:GR!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"人民币\",\n    \"description\" : \"人民币\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"人民币\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"tokenindex\" : 0,\n    \"address\" : \"18TiXgUW913VFs3nqak6QAadTS7EYL6mGg\",\n    \"publickey\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"signature\" : \"3045022100cf521498313d443f1f35755f092ed35e49074e9ca75c0e0db51ad5a0d6b2dae00220618e988d7502181437e3134c46a7f58bf2bc68ce1e3ba41975a3e099c91b8f07\"\n  }, {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100bc98c5f733c12616f9ed97e95782caf7c6ae4cdbb58cd00d718111f7fbe1c0ef02207c60efd9d5e7ebb17c45f61c53b3777c420bd5420a05e091dc77c367b95c6823\"\n  } ]\n}',1),('5fc2c967736d4efabb85e17549487697','02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a',0,'18TiXgUW913VFs3nqak6QAadTS7EYL6mGg','\0\0\0z��)��x�̝\�\�\�B\�k9_i\�,�g�t5-z��)��x�̝\�\�\�B\�k9_i\�,�g�t5-\�s\�\����`]5�61D\�ފԿˮ��\�Q�[q-r\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0dй\��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0����\0\0\0\0 1w(\0\0\0\0!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:GR!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"人民币\",\n    \"description\" : \"人民币\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"人民币\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"tokenindex\" : 0,\n    \"address\" : \"18TiXgUW913VFs3nqak6QAadTS7EYL6mGg\",\n    \"publickey\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"signature\" : \"3045022100cf521498313d443f1f35755f092ed35e49074e9ca75c0e0db51ad5a0d6b2dae00220618e988d7502181437e3134c46a7f58bf2bc68ce1e3ba41975a3e099c91b8f07\"\n  }, {\n    \"tokenid\" : \"02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100bc98c5f733c12616f9ed97e95782caf7c6ae4cdbb58cd00d718111f7fbe1c0ef02207c60efd9d5e7ebb17c45f61c53b3777c420bd5420a05e091dc77c367b95c6823\"\n  } ]\n}',1),('721aa9e07ee644a0aa212a05351fab3e','0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\0	��%�\�a�\"�~�J\��F�\�\��G�a2	��%�\�a�\"�~�J\��F�\�\��G�a2Q��*.Z������%\�݇+\�\�\�wPq\�\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�J?�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!��Oه6Z\�j\�ὂ�V`/LJ3ϐ&�oGR!��Oه6Z\�j\�ὂ�V`/LJ3ϐ&�o!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"USD\",\n    \"description\" : \"USD\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"USD\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0]\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1SXsB7CdTdbiY2ivFX6cnKnvPJbibKwgh\",\n    \"publickey\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"signature\" : \"3044022023ef00c8c170a7800e446104459449200b955f4eb639d0b311c901713ea4671002201dbfebdfe400819a6ff0ce79f6bb9705f037a3170d998a4c6a82f76c9bf881f0\"\n  }, {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402203fe90b20713b549ff50ccb42fd890b2f2ff98e9520e1ecf2ca5b0e9725b7984e02204dd6f883ccbd4a4bf20b4dea52f8197129148ddc8723ae7adc8c1735a966bc6a\"\n  } ]\n}',1),('8029ac402e3840ebb03c66083dab1321','0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f',0,'1SXsB7CdTdbiY2ivFX6cnKnvPJbibKwgh','\0\0\0	��%�\�a�\"�~�J\��F�\�\��G�a2	��%�\�a�\"�~�J\��F�\�\��G�a2Q��*.Z������%\�݇+\�\�\�wPq\�\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0\�J?�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!��Oه6Z\�j\�ὂ�V`/LJ3ϐ&�oGR!��Oه6Z\�j\�ὂ�V`/LJ3ϐ&�o!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"USD\",\n    \"description\" : \"USD\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"USD\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0]\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1SXsB7CdTdbiY2ivFX6cnKnvPJbibKwgh\",\n    \"publickey\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"signature\" : \"3044022023ef00c8c170a7800e446104459449200b955f4eb639d0b311c901713ea4671002201dbfebdfe400819a6ff0ce79f6bb9705f037a3170d998a4c6a82f76c9bf881f0\"\n  }, {\n    \"tokenid\" : \"0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402203fe90b20713b549ff50ccb42fd890b2f2ff98e9520e1ecf2ca5b0e9725b7984e02204dd6f883ccbd4a4bf20b4dea52f8197129148ddc8723ae7adc8c1735a966bc6a\"\n  } ]\n}',1),('808439d25e354060850ad3980590d174','02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\0�{�\�\�> mS�B&�g���\�=_8x�\��+�{�\�\�> mS�B&�g���\�=_8x�\��+�S\�^�3\�Nr\�K�#gM\��\�G;|��u�]H<�\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0Z���쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\��\�6a9\������;�\�u\�_�t?kՏEX`GR!\��\�6a9\������;�\�u\�_�t?kՏEX`!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"ETH\",\n    \"description\" : \"ETH\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"ETH\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1966QgSJZu5pScZahtjaJASCmhjg5JPvAf\",\n    \"publickey\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"signature\" : \"3045022100b4caee9748feb79147380b47eadd79d19aac49d8ccd1dc9ea60e402f9f6c8aa402207b18c5bead09494e93688161fcf07e6acc79074748c4a12ba819a1eea8d852d3\"\n  }, {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100e2131e1abae47c78f30197a65a8ebcc658e81b08e115861c18285c5e17fc447b02203d7146ffdaa6863e4b8699969191b988aef4160229b6dd33a31a32de1208ea6e\"\n  } ]\n}',1),('852f7b5879034478af9d14090eb521dc','02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860',0,'1966QgSJZu5pScZahtjaJASCmhjg5JPvAf','\0\0\0�{�\�\�> mS�B&�g���\�=_8x�\��+�{�\�\�> mS�B&�g���\�=_8x�\��+�S\�^�3\�Nr\�K�#gM\��\�G;|��u�]H<�\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0Z���쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\��\�6a9\������;�\�u\�_�t?kՏEX`GR!\��\�6a9\������;�\�u\�_�t?kՏEX`!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"ETH\",\n    \"description\" : \"ETH\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"ETH\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1966QgSJZu5pScZahtjaJASCmhjg5JPvAf\",\n    \"publickey\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"signature\" : \"3045022100b4caee9748feb79147380b47eadd79d19aac49d8ccd1dc9ea60e402f9f6c8aa402207b18c5bead09494e93688161fcf07e6acc79074748c4a12ba819a1eea8d852d3\"\n  }, {\n    \"tokenid\" : \"02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"3045022100e2131e1abae47c78f30197a65a8ebcc658e81b08e115861c18285c5e17fc447b02203d7146ffdaa6863e4b8699969191b988aef4160229b6dd33a31a32de1208ea6e\"\n  } ]\n}',1),('9333a969eb5c4cdb9ad938b2dcace10c','03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958',0,'192roAcsA9rRFBLDA6bgVZipteDQN7RcFG','\0\0\0*�PV��zUB\��k��ى�Y\�+�Y�Z\n\�\�:**�PV��zUB\��k��ى�Y\�+�Y�Z\n\�\�:*�\�`�V!eN�c\�[\0b\�\�y�x\�&���\�ϲ+\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0���$�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!�=��^̂�\�\�\�\��Z��e�f�7\�\�D	XGR!�=��^̂�\�\�\�\��Z��e�f�7\�\�D	X!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"BTC\",\n    \"description\" : \"BTC\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"BTC\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"tokenindex\" : 0,\n    \"address\" : \"192roAcsA9rRFBLDA6bgVZipteDQN7RcFG\",\n    \"publickey\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"signature\" : \"3045022100a761f055ed9f40552ee5bc195d63a97479eb07a0a636d2a4f223c90e2e544568022066ca57c8ea5482d07d47d9c343c77a01d16318dc3cf8851528f96910dd0bd257\"\n  }, {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"30450221008cc4453a2bd8966c043e23f6d4ab4e33643b747066e058a13e513f151c3ac83d022006e57bd64745e520d170cd7a0a38bd7973241279449c56d1eb49b53f2d206a2a\"\n  } ]\n}',1),('af2e0a1451ab43d990814caca5d003a9','03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\0*�PV��zUB\��k��ى�Y\�+�Y�Z\n\�\�:**�PV��zUB\��k��ى�Y\�+�Y�Z\n\�\�:*�\�`�V!eN�c\�[\0b\�\�y�x\�&���\�ϲ+\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0���$�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!�=��^̂�\�\�\�\��Z��e�f�7\�\�D	XGR!�=��^̂�\�\�\�\��Z��e�f�7\�\�D	X!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"BTC\",\n    \"description\" : \"BTC\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"BTC\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0b\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"tokenindex\" : 0,\n    \"address\" : \"192roAcsA9rRFBLDA6bgVZipteDQN7RcFG\",\n    \"publickey\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"signature\" : \"3045022100a761f055ed9f40552ee5bc195d63a97479eb07a0a636d2a4f223c90e2e544568022066ca57c8ea5482d07d47d9c343c77a01d16318dc3cf8851528f96910dd0bd257\"\n  }, {\n    \"tokenid\" : \"03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"30450221008cc4453a2bd8966c043e23f6d4ab4e33643b747066e058a13e513f151c3ac83d022006e57bd64745e520d170cd7a0a38bd7973241279449c56d1eb49b53f2d206a2a\"\n  } ]\n}',1),('b93d1f6c163b4641adba8a5c879d89a4','02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\0��\�0%-\�f�k�U\��Ո��l&q\"���?̈�/$��\�0%-\�f�k�U\��Ո��l&q\"���?̈�/$�T�2��ү@�)�ٗ�5\�=)j����=\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0xʪ�쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!\�\�hr곌\\[UZ�\�\�\�[1��/\���\�Kv\�GR!\�\�hr곌\\[UZ�\�\�\�[1��/\���\�Kv\�!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\n\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"EUR\",\n    \"description\" : \"EUR\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"EUR\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0^\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"tokenindex\" : 0,\n    \"address\" : \"18qgE7fustjfp3uZknPVT18c1TqCzvh9ao\",\n    \"publickey\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"signature\" : \"304402207dfe4e631c4cd48a967347cd75a76f75ace9b894793d5dc931d9729f263aad51022058c8ff349ae860cfe8e8016d907c24d0c2e600d662e841aeeeade5b9f4ff0bbd\"\n  }, {\n    \"tokenid\" : \"02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402202e6aa087736f4ba178140fc3965fcd32d8b61f29bc0708cd826dec4bbcd44cb902204fdc5539925d2312a987a394ad7b8c22fe087e4742fc90867b2b766f4019b2ae\"\n  } ]\n}',1),('e951cce441974b789a7bc6d93232b9f7','0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','\0\0\0�7ߚd\�\�\�\rP/t��耴\�g9�ds�\��r�\�{2�7ߚd\�\�\�\rP/t��耴\�g9�ds�\��r�\�{2a��\�\�Z\�b^\�\�B\�3�sY\�a�\�MWF�n�d}\�\�\�\�I]\0\0\0\0��? \0\0\0\0\0\0\0\0\0\0\0\0a�{��쓅�R�G\�*Jr�\�\�#�1D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0����\0\0\0\0 1w(\0\0\0\0!c\�ٍ�xl(�e��L+\Z\�{�\�6��^\"\��cGR!c\�ٍ�xl(�e��L+\Z\�{�\�6��^\"\��c!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0TOKEN\r\0\0{\n  \"version\" : 1,\n  \"token\" : {\n    \"confirmed\" : true,\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"tokenindex\" : 0,\n    \"tokenname\" : \"Gold\",\n    \"description\" : \"Gold\",\n    \"domainPredecessorBlockHash\" : \"8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239\",\n    \"signnumber\" : 2,\n    \"tokentype\" : 0,\n    \"tokenstop\" : false,\n    \"prevblockhash\" : \"\",\n    \"amount\" : 678900000,\n    \"decimals\" : 0,\n    \"revoked\" : false,\n    \"tokennameDisplay\" : \"Gold\"\n  },\n  \"multiSignAddresses\" : [ {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  }, {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"address\" : \"\",\n    \"pubKeyHex\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"posIndex\" : 0,\n    \"tokenHolder\" : 1\n  } ]\n}\0\0\0\0`\0\0{\n  \"multiSignBies\" : [ {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"tokenindex\" : 0,\n    \"address\" : \"1MQQTRrpCpiTUy2TrLUxKZtgK3LDnTX1D1\",\n    \"publickey\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"signature\" : \"3045022100d8f389df79ef5fafa2bc1d7d8445606496a00d5e03c3dc3dc2a60a5f7e654b4c02201eb9e583c7d76c6dee3968966d44943624b7ab0af9dd4ec85e42d7736ad6aab8\"\n  }, {\n    \"tokenid\" : \"0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363\",\n    \"tokenindex\" : 0,\n    \"address\" : \"14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE\",\n    \"publickey\" : \"02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975\",\n    \"signature\" : \"304402200da6e3ff3eb9465491d3501d920cdb69ded90a4b506b790fdc8bc51d52157ad402205cbb9f4f451e49384d977e61cd5872bb7719e26b40251f6807d78d49731c09c8\"\n  } ]\n}',1);
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
INSERT INTO `multisignaddress` VALUES ('242f9288cc3fb19cfd2271266cb58588d5fdcf55fb6bb766ce2d2530c88515f1','0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f','','0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f',0,1),('242f9288cc3fb19cfd2271266cb58588d5fdcf55fb6bb766ce2d2530c88515f1','0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('2a3a92eece0a5aa359b92be159f989d91193bc6bf916ce42557aa89a5650a72a','0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('2a3a92eece0a5aa359b92be159f989d91193bc6bf916ce42557aa89a5650a72a','0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363','','0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363',0,1),('2bc0c5fd1178385f0c3d92e8a305b9a567af26429d536d203ec9afe58e7b1db7','03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('2bc0c5fd1178385f0c3d92e8a305b9a567af26429d536d203ec9afe58e7b1db7','03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958','','03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958',0,1),('3208619847891dead5860646f101ca4a9c7eaa228261c48e0125028d950f1c09','02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('3208619847891dead5860646f101ca4a9c7eaa228261c48e0125028d950f1c09','02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860','','02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860',0,1),('327bc9fb7293e0f27364853967cab480e884fb742f500dc8cce8649adf371682','02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('327bc9fb7293e0f27364853967cab480e884fb742f500dc8cce8649adf371682','02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a','','02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a',0,1),('34205cabd973ca0a401e836153e8fd212628e0a2b43f367a187e86426ffa6aad','02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb','','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('34205cabd973ca0a401e836153e8fd212628e0a2b43f367a187e86426ffa6aad','02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb','','02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb',0,1),('8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239','bc01','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1),('a289f54b7f68910707a293b464577c78bc40c30a2ec50c3de20c3d5d0be40eff','bc','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE','02721b5eb0282e4bc86aab3380e2bba31d935cba386741c15447973432c61bc975',0,1);
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
INSERT INTO `myserverblocks` VALUES ('-5t�g�,\�i_9k\�B�\�و\�̽x��)��z','@Hk>\�]\�F\�>\�~J�}B\�Z���6�}%Ut\�',1565119703145),('$/��\�?���\"q&l���\��\�U�k�f\�-%0ȅ�','���\�i�\�I���;�\�^\�\n�\�v�$�\\�QVA�\�',1565119708418),('*:�\�\�\nZ�Y�+\�Y��\���k�\�BUz��VP�*','�5\�\�>O��!���ŦOm�\����4j�}�:P�$',1565119705732),('+�\��x8_=�\���g�&B�Sm >ɯ\�{�','0|�O\�(IMX7#\�:z�Ph��\�6��f-���\�',1565119706655),('2a�G�\�ՆF�\�J�~�\"�aĎ%��	','��B��S���*>.٦�r���\�u\�t\�v{-',1565119707612),('2{\��r�\��sd�9gʴ�\��t/P\r\�\�\�d�\�7�','��}q0?Cily\"��@�\\\�p���H���>\���',1565119704472),('4 \\�\�s\�\n@�aS\��!&(ࢴ?6z~�Bo�j�','�\0\�u�����\�\�\�Xe��Gc\�\�)\�ܣ�R��!�',1565120956654);
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
INSERT INTO `outputs` VALUES ('=����j)=\�5��ن)�@�ґ�2�T�',0,678900000,'R!\�\�hr곌\\[UZ�\�\�\�[1��/\���\�Kv\�!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,'4 \\�\�s\�\n@�aS\��!&(ࢴ?6z~�Bo�j�','02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb','',NULL,0,1,0,0,NULL,1565119708),('+�\�\����&\�x�y\�\�b\0[\�c�Ne!V�`\��',0,678900000,'R!�=��^̂�\�\�\�\��Z��e�f�7\�\�D	X!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,'+�\��x8_=�\���g�&B�Sm >ɯ\�{�','03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958','',NULL,0,1,0,0,NULL,1565119706),('F�<j��YZ�Dn�{\�)q� 6h\�\�3cI\�\�\�',0,10000000000000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,1,'�\�$\�\�\�-Q�C)fs^-,o[kD\�m\�9-\�\�\�\�9','bc','',NULL,1,1,1,1565117896938,'-5t�g�,\�i_9k\�B�\�و\�̽x��)��z',0),('r-q[�Q葦�˿Ԋ\�\�D16�5]`���\�\�s\�',0,678900000,'R!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,'2{\��r�\��sd�9gʴ�\��t/P\r\�\�\�d�\�7�','02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a','',NULL,0,1,0,0,NULL,1565119703),('xړw=�6��I��\��\�g\�nl��\�u�\�Zq*{\n�',0,350000,'v���g��Q\"\�7�B;_ș\�S��','12LpQvmTUaN3izAQR8vidTBPeVS8ouyJD7',1,0,'-5t�g�,\�i_9k\�B�\�و\�̽x��)��z','bc','',NULL,0,1,0,0,NULL,1565117896),('xړw=�6��I��\��\�g\�nl��\�u�\�Zq*{\n�',1,9999999650000,'!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�u�','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2,0,'-5t�g�,\�i_9k\�B�\�و\�̽x��)��z','bc','',NULL,0,1,0,0,NULL,1565117896),('\�\�}d�n�FWM\��a\�Ys�3\�B\�\�^b\�Z\�咹a',0,678900000,'R!c\�ٍ�xl(�e��L+\Z\�{�\�6��^\"\��c!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,'*:�\�\�\nZ�Y�+\�Y��\���k�\�BUz��VP�*','0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363','',NULL,0,1,0,0,NULL,1565119705),('\�qPw\��\�\�+�\�\�%��󞏍�Z.*��Q',0,678900000,'R!��Oه6Z\�j\�ὂ�V`/LJ3ϐ&�o!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,'$/��\�?���\"q&l���\��\�U�k�f\�-%0ȅ�','0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f','',NULL,0,1,0,0,NULL,1565119708),('�<H]�u��|;GҎ\�Mg#�K\�rN�\�3�^\�S�',0,678900000,'R!\��\�6a9\������;�\�u\�_�t?kՏEX`!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�','',0,1,'2a�G�\�ՆF�\�J�~�\"�aĎ%��	','02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860','',NULL,0,1,0,0,NULL,1565119707);
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
INSERT INTO `outputsmulti` VALUES ('=����j)=\�5��ن)�@�ґ�2�T�',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('=����j)=\�5��ن)�@�ґ�2�T�',0,'18qgE7fustjfp3uZknPVT18c1TqCzvh9ao',2),('+�\�\����&\�x�y\�\�b\0[\�c�Ne!V�`\��',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('+�\�\����&\�x�y\�\�b\0[\�c�Ne!V�`\��',0,'192roAcsA9rRFBLDA6bgVZipteDQN7RcFG',2),('r-q[�Q葦�˿Ԋ\�\�D16�5]`���\�\�s\�',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('r-q[�Q葦�˿Ԋ\�\�D16�5]`���\�\�s\�',0,'18TiXgUW913VFs3nqak6QAadTS7EYL6mGg',2),('\�\�}d�n�FWM\��a\�Ys�3\�B\�\�^b\�Z\�咹a',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('\�\�}d�n�FWM\��a\�Ys�3\�B\�\�^b\�Z\�咹a',0,'1MQQTRrpCpiTUy2TrLUxKZtgK3LDnTX1D1',2),('\�qPw\��\�\�+�\�\�%��󞏍�Z.*��Q',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('\�qPw\��\�\�+�\�\�%��󞏍�Z.*��Q',0,'1SXsB7CdTdbiY2ivFX6cnKnvPJbibKwgh',2),('�<H]�u��|;GҎ\�Mg#�K\�rN�\�3�^\�S�',0,'14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',2),('�<H]�u��|;GҎ\�Mg#�K\�rN�\�3�^\�S�',0,'1966QgSJZu5pScZahtjaJASCmhjg5JPvAf',2);
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
INSERT INTO `paymultisign` VALUES ('9cf9429c889241f0a7e01518fd4700ba','02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a','1PBqtfkgqJu1U6tD2Z2jtTD3pEmFkNpJaD','\0\0\0\�s\�\����`]5�61D\�ފԿˮ��\�Q�[q-r\0\0\0\0\0����\0\0\0 1w(\0\0\0\0!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:GR!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR� 1w(\0\0\0\0!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:v��_�&�UH��zog�\'\ZY���\0\0\0\0\0\0\0\0!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:GR!��\�,jM�[�\�\��\0+~*�\�uFD�\�/��:!r^�(.K\�j�3�⻣�\\�8gA�TG�42\�\�uR�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',678900000,2,'722d715bc151e891a6aecbbfd48adec2443136af355d0f609cf4f9eae573dd0e',0);
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
INSERT INTO `paymultisignaddress` VALUES ('9cf9429c889241f0a7e01518fd4700ba','14a4YnkmSCBGUqcmN2PX3tzxFthrDmyDXE',1,0,'0D �.h\�\�I؛9\�.Us?/N��\��\���\���� *\�U{�&<a\�\�>\����΍\�\'\�\���h��\�_w�'),('9cf9429c889241f0a7e01518fd4700ba','18TiXgUW913VFs3nqak6QAadTS7EYL6mGg',1,1,'0E!\0զ\�P���/B�\�>h�OD\'\�\�;	B�	\r�\\�`\�z� D\�~w��g\n`P�/��o�!�.�À(j=|��\�\�g');
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
INSERT INTO `tips` VALUES ('4 \\�\�s\�\n@�aS\��!&(ࢴ?6z~�Bo�j�');
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
INSERT INTO `tokens` VALUES ('242f9288cc3fb19cfd2271266cb58588d5fdcf55fb6bb766ce2d2530c88515f1',1,'0211a0fe4fd987365ad26a1010e791e1bd829b56602f0c4c104a3318cf9026ae6f',0,678900000,'USD','USD',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('2a3a92eece0a5aa359b92be159f989d91193bc6bf916ce42557aa89a5650a72a',1,'0363c605d98d08f288a8786c28a065b7fc4c2b1aeea67bb0e0368a9b5e22cbf363',0,678900000,'Gold','Gold',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('2bc0c5fd1178385f0c3d92e8a305b9a567af26429d536d203ec9afe58e7b1db7',1,'03f63da4ab5ecc828e1bc8d0e5afea08b15aae141891659d66ad37e9aad5440958',0,678900000,'BTC','BTC',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('3208619847891dead5860646f101ca4a9c7eaa228261c48e0125028d950f1c09',1,'02eef3c6366139c9f9feb17f84911d3b01c0eb7503c55fa410743f6bd58f455860',0,678900000,'ETH','ETH',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('327bc9fb7293e0f27364853967cab480e884fb742f500dc8cce8649adf371682',1,'02a717921ede2c066a4da05b9cdce203f1002b7e2abeee7546194498ef2fa9b13a',0,678900000,'人民币','人民币',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('34205cabd973ca0a401e836153e8fd212628e0a2b43f367a187e86426ffa6aad',1,'02c5da687208eab38c5c5b555a04bfd4cec95b310699b32fed931f9fbed34b76cb',0,678900000,'EUR','EUR',NULL,2,0,0,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',0),('8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',1,'bc01',0,1,'bc','BigTangle Domain','bc',1,3,1,'',0,NULL,NULL,0,NULL,NULL,'',2),('a289f54b7f68910707a293b464577c78bc40c30a2ec50c3de20c3d5d0be40eff',1,'bc',0,10000000000000,'BIG','BigTangle Currency',NULL,1,0,1,'',0,NULL,NULL,0,NULL,NULL,'8507e624e7ebc82d51f7432966735e2d2c6f5b6b44ebb46dd8392deccbcac239',2);
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

-- Dump completed on 2019-08-16  2:10:01
