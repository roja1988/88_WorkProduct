CREATE DATABASE  IF NOT EXISTS `stockdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `stockdb`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: stockdb
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data_inout`
--

DROP TABLE IF EXISTS `data_inout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_inout` (
  `inout_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `inout_quantity` int DEFAULT NULL,
  `out_area_id` int DEFAULT NULL,
  `in_area_id` int DEFAULT NULL,
  `inout_datetime` datetime DEFAULT NULL,
  `inout_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `delete_flg` int DEFAULT NULL,
  `register_datetime` datetime DEFAULT NULL,
  `register_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`inout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_inout`
--

LOCK TABLES `data_inout` WRITE;
/*!40000 ALTER TABLE `data_inout` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_inout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_stock`
--

DROP TABLE IF EXISTS `data_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_stock` (
  `item_id` int NOT NULL,
  `area_id` int NOT NULL,
  `stock_quantity` int DEFAULT NULL,
  `delete_flg` int DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `register_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`item_id`,`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_stock`
--

LOCK TABLES `data_stock` WRITE;
/*!40000 ALTER TABLE `data_stock` DISABLE KEYS */;
INSERT INTO `data_stock` VALUES (1,1,0,0,'2024-01-29 10:10:11','admin','2024-01-29 10:10:11','admin'),(1,2,0,0,'2024-01-29 10:10:11','admin','2024-01-29 10:10:11','admin'),(1,3,0,0,'2024-01-29 10:10:11','admin','2024-01-29 10:10:11','admin'),(1,4,0,0,'2024-01-29 10:10:11','admin','2024-01-29 10:10:11','admin'),(1,5,0,0,'2024-01-29 10:10:11','admin','2024-01-29 10:10:11','admin'),(1,6,0,0,'2024-01-29 10:10:11','admin','2024-01-29 10:10:11','admin'),(1,7,0,0,'2024-01-29 10:10:11','admin','2024-01-29 10:10:11','admin'),(2,1,0,0,'2024-01-29 10:10:53','admin','2024-01-29 10:10:53','admin'),(2,2,0,0,'2024-01-29 10:10:53','admin','2024-01-29 10:10:53','admin'),(2,3,0,0,'2024-01-29 10:10:53','admin','2024-01-29 10:10:53','admin'),(2,4,0,0,'2024-01-29 10:10:53','admin','2024-01-29 10:10:53','admin'),(2,5,0,0,'2024-01-29 10:10:53','admin','2024-01-29 10:10:53','admin'),(2,6,0,0,'2024-01-29 10:10:53','admin','2024-01-29 10:10:53','admin'),(2,7,0,0,'2024-01-29 10:10:53','admin','2024-01-29 10:10:53','admin'),(3,1,0,0,'2024-01-29 10:11:20','admin','2024-01-29 10:11:20','admin'),(3,2,0,0,'2024-01-29 10:11:20','admin','2024-01-29 10:11:20','admin'),(3,3,0,0,'2024-01-29 10:11:20','admin','2024-01-29 10:11:20','admin'),(3,4,0,0,'2024-01-29 10:11:20','admin','2024-01-29 10:11:20','admin'),(3,5,0,0,'2024-01-29 10:11:20','admin','2024-01-29 10:11:20','admin'),(3,6,0,0,'2024-01-29 10:11:20','admin','2024-01-29 10:11:20','admin'),(3,7,0,0,'2024-01-29 10:11:20','admin','2024-01-29 10:11:20','admin'),(4,1,0,0,'2024-01-29 10:11:51','admin','2024-01-29 10:11:51','admin'),(4,2,0,0,'2024-01-29 10:11:51','admin','2024-01-29 10:11:51','admin'),(4,3,0,0,'2024-01-29 10:11:51','admin','2024-01-29 10:11:51','admin'),(4,4,0,0,'2024-01-29 10:11:51','admin','2024-01-29 10:11:51','admin'),(4,5,0,0,'2024-01-29 10:11:51','admin','2024-01-29 10:11:51','admin'),(4,6,0,0,'2024-01-29 10:11:51','admin','2024-01-29 10:11:51','admin'),(4,7,0,0,'2024-01-29 10:11:51','admin','2024-01-29 10:11:51','admin'),(5,1,0,0,'2024-01-29 10:12:41','admin','2024-01-29 10:12:41','admin'),(5,2,0,0,'2024-01-29 10:12:41','admin','2024-01-29 10:12:41','admin'),(5,3,0,0,'2024-01-29 10:12:41','admin','2024-01-29 10:12:41','admin'),(5,4,0,0,'2024-01-29 10:12:41','admin','2024-01-29 10:12:41','admin'),(5,5,0,0,'2024-01-29 10:12:41','admin','2024-01-29 10:12:41','admin'),(5,6,0,0,'2024-01-29 10:12:41','admin','2024-01-29 10:12:41','admin'),(5,7,0,0,'2024-01-29 10:12:41','admin','2024-01-29 10:12:41','admin'),(6,1,0,0,'2024-01-29 10:13:06','admin','2024-01-29 10:13:06','admin'),(6,2,0,0,'2024-01-29 10:13:06','admin','2024-01-29 10:13:06','admin'),(6,3,0,0,'2024-01-29 10:13:06','admin','2024-01-29 10:13:06','admin'),(6,4,0,0,'2024-01-29 10:13:06','admin','2024-01-29 10:13:06','admin'),(6,5,0,0,'2024-01-29 10:13:06','admin','2024-01-29 10:13:06','admin'),(6,6,0,0,'2024-01-29 10:13:06','admin','2024-01-29 10:13:06','admin'),(6,7,0,0,'2024-01-29 10:13:06','admin','2024-01-29 10:13:06','admin'),(7,1,0,0,'2024-01-29 10:13:30','admin','2024-01-29 10:13:30','admin'),(7,2,0,0,'2024-01-29 10:13:30','admin','2024-01-29 10:13:30','admin'),(7,3,0,0,'2024-01-29 10:13:30','admin','2024-01-29 10:13:30','admin'),(7,4,0,0,'2024-01-29 10:13:30','admin','2024-01-29 10:13:30','admin'),(7,5,0,0,'2024-01-29 10:13:30','admin','2024-01-29 10:13:30','admin'),(7,6,0,0,'2024-01-29 10:13:30','admin','2024-01-29 10:13:30','admin'),(7,7,0,0,'2024-01-29 10:13:30','admin','2024-01-29 10:13:30','admin'),(8,1,0,0,'2024-01-29 10:14:07','admin','2024-01-29 10:14:07','admin'),(8,2,0,0,'2024-01-29 10:14:07','admin','2024-01-29 10:14:07','admin'),(8,3,0,0,'2024-01-29 10:14:07','admin','2024-01-29 10:14:07','admin'),(8,4,0,0,'2024-01-29 10:14:07','admin','2024-01-29 10:14:07','admin'),(8,5,0,0,'2024-01-29 10:14:07','admin','2024-01-29 10:14:07','admin'),(8,6,0,0,'2024-01-29 10:14:07','admin','2024-01-29 10:14:07','admin'),(8,7,0,0,'2024-01-29 10:14:07','admin','2024-01-29 10:14:07','admin');
/*!40000 ALTER TABLE `data_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_area`
--

DROP TABLE IF EXISTS `master_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_area` (
  `area_id` int NOT NULL AUTO_INCREMENT,
  `area` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `stock_flg` int DEFAULT NULL,
  `delete_flg` int DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `register_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_area`
--

LOCK TABLES `master_area` WRITE;
/*!40000 ALTER TABLE `master_area` DISABLE KEYS */;
INSERT INTO `master_area` VALUES (1,'入荷',1,0,'2024-01-29 09:45:27','admin','2024-01-29 09:45:27','admin'),(2,'販売',2,0,'2024-01-29 09:45:27','admin','2024-01-29 09:45:27','admin'),(3,'廃棄',2,0,'2024-01-29 09:45:27','admin','2024-01-29 09:45:27','admin'),(4,'倉庫',0,0,'2024-01-29 09:45:27','admin','2024-01-29 09:45:27','admin'),(5,'新宿店',0,0,'2024-01-29 09:45:27','admin','2024-01-29 09:45:27','admin'),(6,'池袋店',0,0,'2024-01-29 09:45:27','admin','2024-01-29 09:45:27','admin'),(7,'上野店',0,0,'2024-01-29 09:45:27','admin','2024-01-29 09:45:27','admin');
/*!40000 ALTER TABLE `master_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_genre`
--

DROP TABLE IF EXISTS `master_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_genre` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flg` int DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `register_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_genre`
--

LOCK TABLES `master_genre` WRITE;
/*!40000 ALTER TABLE `master_genre` DISABLE KEYS */;
INSERT INTO `master_genre` VALUES (1,'飛行機',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin'),(2,'艦船',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin'),(3,'AFV',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin'),(4,'カーモデル',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin'),(5,'ガンダム',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin'),(6,'ロボット',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin'),(7,'キャラクター',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin'),(8,'特撮',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin'),(9,'SF',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin'),(10,'建築',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin'),(11,'情景',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin'),(12,'工作キット',0,'2024-01-29 09:39:49','admin','2024-01-29 09:39:49','admin');
/*!40000 ALTER TABLE `master_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_item`
--

DROP TABLE IF EXISTS `master_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `model_number` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `item_name` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `maker_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  `scale_id` int DEFAULT NULL,
  `series` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `original` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `note` text COLLATE utf8mb4_general_ci,
  `delete_flg` int DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `register_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_item`
--

LOCK TABLES `master_item` WRITE;
/*!40000 ALTER TABLE `master_item` DISABLE KEYS */;
INSERT INTO `master_item` VALUES (1,'No.12-B','ランボルギーニ アヴェンタドールS (パールイエロー)',1,4,4,'ザ・スナップキット','',1980,'',0,'2024-01-29 10:10:11','admin','2024-01-29 10:10:11','admin'),(2,'No.12-C','ランボルギーニ アヴェンタドールS (パールレッド)',1,4,4,'ザ・スナップキット','',1980,'',0,'2024-01-29 10:10:53','admin','2024-01-29 10:10:53','admin'),(3,'35329','陸上自衛隊 10式戦車 ',4,3,5,'ミリタリーミニチュアシリーズ','',5060,'',0,'2024-01-29 10:11:20','admin','2024-01-29 10:11:20','admin'),(4,'35194','ドイツ重戦車 タイガーI型 中期生産型',4,3,5,'ミリタリーミニチュアシリーズ','',4400,'',0,'2024-01-29 10:11:51','admin','2024-01-29 10:11:51','admin'),(5,'JT49','愛知 B7A2 艦上攻撃機 流星 改',6,1,7,'JTシリーズ','',3080,'',0,'2024-01-29 10:12:41','admin','2024-01-29 10:12:41','admin'),(6,'D11','川崎 T-4“ブルーインパルス”',6,1,9,'Dシリーズ','',1320,'',0,'2024-01-29 10:13:06','admin','2024-01-29 10:13:06','admin'),(7,'GV1','紅の豚 アジトのポルコ',9,7,NULL,'','紅の豚',4180,'',0,'2024-01-29 10:13:30','admin','2024-01-29 10:13:30','admin'),(8,'FG9','飛行戦艦 ゴリアテ',9,7,NULL,'','天空の城ラピュタ',4180,'',0,'2024-01-29 10:14:07','admin','2024-01-29 10:14:07','admin');
/*!40000 ALTER TABLE `master_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_maker`
--

DROP TABLE IF EXISTS `master_maker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_maker` (
  `maker_id` int NOT NULL AUTO_INCREMENT,
  `maker` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flg` int DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `register_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`maker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_maker`
--

LOCK TABLES `master_maker` WRITE;
/*!40000 ALTER TABLE `master_maker` DISABLE KEYS */;
INSERT INTO `master_maker` VALUES (1,'青島文化教材社',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(2,'壽屋',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(3,'GSIクレオス',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(4,'タミヤ',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(5,'トミーテック',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(6,'ハセガワ',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(7,'BANDAI SPIRITS',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(8,'ビーバーコーポレーション',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(9,'ファインモールド',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(10,'プラッツ',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(11,'ボークス',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(12,'ホビージャパン',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(13,'マイクロエース',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(14,'モデリウム',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(15,'モデルアート社',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin'),(16,'ヤマシタホビー',0,'2024-01-24 09:20:47','admin','2024-01-24 09:20:47','admin');
/*!40000 ALTER TABLE `master_maker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_scale`
--

DROP TABLE IF EXISTS `master_scale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_scale` (
  `scale_id` int NOT NULL AUTO_INCREMENT,
  `scale` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flg` int DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `register_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`scale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_scale`
--

LOCK TABLES `master_scale` WRITE;
/*!40000 ALTER TABLE `master_scale` DISABLE KEYS */;
INSERT INTO `master_scale` VALUES (1,'1/16',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(2,'1/20',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(3,'1/24',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(4,'1/32',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(5,'1/35',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(6,'1/43',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(7,'1/48',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(8,'1/60',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(9,'1/72',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(10,'1/100',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(11,'1/144',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(12,'1/200',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(13,'1/350',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(14,'1/450',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(15,'1/500',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin'),(16,'1/700',0,'2024-01-24 09:21:12','admin','2024-01-24 09:21:12','admin');
/*!40000 ALTER TABLE `master_scale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_user`
--

DROP TABLE IF EXISTS `master_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_user` (
  `user_id` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `unit_id` int DEFAULT NULL,
  `password` char(60) COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flg` int DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `register_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_user`
--

LOCK TABLES `master_user` WRITE;
/*!40000 ALTER TABLE `master_user` DISABLE KEYS */;
INSERT INTO `master_user` VALUES ('admin','管理者',1,'$2a$08$asaV0Mu.2sq3BitiCrDty.0.yNhnzOjYtc21OsBG.Snw5U4sE9e92',0,'2024-01-29 09:43:22','admin','2024-01-29 09:43:22','admin'),('i001','池袋店001',1,'$2a$08$asaV0Mu.2sq3BitiCrDty.0.yNhnzOjYtc21OsBG.Snw5U4sE9e92',0,'2024-01-29 09:43:22','admin','2024-01-29 09:43:22','admin'),('i002','池袋店001',1,'$2a$08$asaV0Mu.2sq3BitiCrDty.0.yNhnzOjYtc21OsBG.Snw5U4sE9e92',0,'2024-01-29 09:43:22','admin','2024-01-29 09:43:22','admin'),('l001','物流課001',1,'$2a$08$asaV0Mu.2sq3BitiCrDty.0.yNhnzOjYtc21OsBG.Snw5U4sE9e92',0,'2024-01-29 09:43:22','admin','2024-01-29 09:43:22','admin'),('l002','物流課002',1,'$2a$08$asaV0Mu.2sq3BitiCrDty.0.yNhnzOjYtc21OsBG.Snw5U4sE9e92',0,'2024-01-29 09:43:22','admin','2024-01-29 09:43:22','admin'),('p001','購買課001',1,'$2a$08$asaV0Mu.2sq3BitiCrDty.0.yNhnzOjYtc21OsBG.Snw5U4sE9e92',0,'2024-01-29 09:43:22','admin','2024-01-29 09:43:22','admin'),('p002','購買課002',1,'$2a$08$asaV0Mu.2sq3BitiCrDty.0.yNhnzOjYtc21OsBG.Snw5U4sE9e92',0,'2024-01-29 09:43:22','admin','2024-01-29 09:43:22','admin'),('s001','新宿店001',1,'$2a$08$asaV0Mu.2sq3BitiCrDty.0.yNhnzOjYtc21OsBG.Snw5U4sE9e92',0,'2024-01-29 09:43:22','admin','2024-01-29 09:43:22','admin'),('s002','新宿店002',1,'$2a$08$asaV0Mu.2sq3BitiCrDty.0.yNhnzOjYtc21OsBG.Snw5U4sE9e92',0,'2024-01-29 09:43:22','admin','2024-01-29 09:43:22','admin'),('u001','上野店001',1,'$2a$08$asaV0Mu.2sq3BitiCrDty.0.yNhnzOjYtc21OsBG.Snw5U4sE9e92',0,'2024-01-29 09:43:22','admin','2024-01-29 09:43:22','admin'),('u002','上野店001',1,'$2a$08$asaV0Mu.2sq3BitiCrDty.0.yNhnzOjYtc21OsBG.Snw5U4sE9e92',0,'2024-01-29 09:43:22','admin','2024-01-29 09:43:22','admin');
/*!40000 ALTER TABLE `master_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-29 10:36:51
