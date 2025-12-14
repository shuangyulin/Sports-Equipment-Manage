-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmydina806
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssmydina806`
--

/*!40000 DROP DATABASE IF EXISTS `ssmydina806`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmydina806` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmydina806`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '副标题',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `picture1` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片1',
  `picture2` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片2',
  `picture3` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2025-03-07 12:26:06','关于我们','ABOUT US','当你设想门外是寒冷可怕的世界时，你还应该开门出去看看，是否真的如此。如果你有信心，你对前途就不犹豫了。如果你有勇气，你就不怕前途是否有困难或危险了每个人心中都应有两盏灯，一盏是希望的灯，一盏是勇气的灯。有了这两盏灯，我们就不怕海上的黑暗和风涛的险恶了。人的一生很像是在雾中行走。远远望去，只是迷蒙一片，辨不出方向和吉凶。可是，当你鼓起勇气，放下恐惧和怀疑，一步一步向前走去的时候，你就会发现，每走一步，你都能把下一步路看得清楚一点。“往前走，别站在远远的地方观望！”你就可以找到你的方向。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COLLATE utf8mb4_unicode_ci COMMENT '提问',
  `reply` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  `isread` int(11) DEFAULT '0' COMMENT '已读/未读(1:已读,0:未读)',
  `uname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `uimage` longtext COLLATE utf8mb4_unicode_ci COMMENT '用户名',
  `type` int(11) DEFAULT '1' COMMENT '内容类型(1:文本,2:图片,3:视频,4:文件,5:表情)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='智能AI';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2025-03-07 12:26:05',1,1,'提问1','回复1',1,1,'用户头像1','upload/chat_uimage1.jpg,upload/chat_uimage2.jpg,upload/chat_uimage3.jpg',1),(2,'2025-03-07 12:26:05',2,2,'提问2','回复2',2,2,'用户头像2','upload/chat_uimage2.jpg,upload/chat_uimage3.jpg,upload/chat_uimage4.jpg',2),(3,'2025-03-07 12:26:05',3,3,'提问3','回复3',3,3,'用户头像3','upload/chat_uimage3.jpg,upload/chat_uimage4.jpg,upload/chat_uimage5.jpg',3),(4,'2025-03-07 12:26:05',4,4,'提问4','回复4',4,4,'用户头像4','upload/chat_uimage4.jpg,upload/chat_uimage5.jpg,upload/chat_uimage6.jpg',4),(5,'2025-03-07 12:26:05',5,5,'提问5','回复5',5,5,'用户头像5','upload/chat_uimage5.jpg,upload/chat_uimage6.jpg,upload/chat_uimage7.jpg',5),(6,'2025-03-07 12:26:05',6,6,'提问6','回复6',6,6,'用户头像6','upload/chat_uimage6.jpg,upload/chat_uimage7.jpg,upload/chat_uimage8.jpg',6),(7,'2025-03-07 12:26:05',7,7,'提问7','回复7',7,7,'用户头像7','upload/chat_uimage7.jpg,upload/chat_uimage8.jpg,upload/chat_uimage1.jpg',7),(8,'2025-03-07 12:26:05',8,8,'提问8','回复8',8,8,'用户头像8','upload/chat_uimage8.jpg,upload/chat_uimage1.jpg,upload/chat_uimage2.jpg',8);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqicaixinxi`
--

DROP TABLE IF EXISTS `discussqicaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqicaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `nickname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `reply` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `istop` int(11) DEFAULT '0' COMMENT '置顶(1:置顶,0:非置顶)',
  `tuserids` longtext COLLATE utf8mb4_unicode_ci COMMENT '赞用户ids',
  `cuserids` longtext COLLATE utf8mb4_unicode_ci COMMENT '踩用户ids',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='器材信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqicaixinxi`
--

LOCK TABLES `discussqicaixinxi` WRITE;
/*!40000 ALTER TABLE `discussqicaixinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussqicaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '留言内容',
  `cpicture` longtext COLLATE utf8mb4_unicode_ci COMMENT '留言图片',
  `reply` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  `rpicture` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='留言反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'2025-03-07 12:26:06',1,'用户名1','upload/messages_avatarurl1.jpg','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(2,'2025-03-07 12:26:06',2,'用户名2','upload/messages_avatarurl2.jpg','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(3,'2025-03-07 12:26:06',3,'用户名3','upload/messages_avatarurl3.jpg','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(4,'2025-03-07 12:26:06',4,'用户名4','upload/messages_avatarurl4.jpg','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(5,'2025-03-07 12:26:06',5,'用户名5','upload/messages_avatarurl5.jpg','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(6,'2025-03-07 12:26:06',6,'用户名6','upload/messages_avatarurl6.jpg','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(7,'2025-03-07 12:26:06',7,'用户名7','upload/messages_avatarurl7.jpg','留言内容7','upload/messages_cpicture7.jpg','回复内容7','upload/messages_rpicture7.jpg'),(8,'2025-03-07 12:26:06',8,'用户名8','upload/messages_avatarurl8.jpg','留言内容8','upload/messages_cpicture8.jpg','回复内容8','upload/messages_rpicture8.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicaicaigou`
--

DROP TABLE IF EXISTS `qicaicaigou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicaicaigou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaibianhao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '器材编号',
  `qicaimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '器材类型',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `caigouriqi` date DEFAULT NULL COMMENT '采购日期',
  `shuliang` int(11) DEFAULT NULL COMMENT '采购数量',
  `beizhu` longtext COLLATE utf8mb4_unicode_ci COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='器材采购';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicaicaigou`
--

LOCK TABLES `qicaicaigou` WRITE;
/*!40000 ALTER TABLE `qicaicaigou` DISABLE KEYS */;
INSERT INTO `qicaicaigou` VALUES (1,'2025-03-07 12:26:05','器材编号1','器材名称1','器材类型1','upload/qicaicaigou_tupian1.jpg,upload/qicaicaigou_tupian2.jpg,upload/qicaicaigou_tupian3.jpg','2025-03-07',1,'采购后库存数量自动加'),(2,'2025-03-07 12:26:05','器材编号2','器材名称2','器材类型2','upload/qicaicaigou_tupian2.jpg,upload/qicaicaigou_tupian3.jpg,upload/qicaicaigou_tupian4.jpg','2025-03-07',2,'采购后库存数量自动加'),(3,'2025-03-07 12:26:05','器材编号3','器材名称3','器材类型3','upload/qicaicaigou_tupian3.jpg,upload/qicaicaigou_tupian4.jpg,upload/qicaicaigou_tupian5.jpg','2025-03-07',3,'采购后库存数量自动加'),(4,'2025-03-07 12:26:05','器材编号4','器材名称4','器材类型4','upload/qicaicaigou_tupian4.jpg,upload/qicaicaigou_tupian5.jpg,upload/qicaicaigou_tupian6.jpg','2025-03-07',4,'采购后库存数量自动加'),(5,'2025-03-07 12:26:05','器材编号5','器材名称5','器材类型5','upload/qicaicaigou_tupian5.jpg,upload/qicaicaigou_tupian6.jpg,upload/qicaicaigou_tupian7.jpg','2025-03-07',5,'采购后库存数量自动加'),(6,'2025-03-07 12:26:05','器材编号6','器材名称6','器材类型6','upload/qicaicaigou_tupian6.jpg,upload/qicaicaigou_tupian7.jpg,upload/qicaicaigou_tupian8.jpg','2025-03-07',6,'采购后库存数量自动加'),(7,'2025-03-07 12:26:05','器材编号7','器材名称7','器材类型7','upload/qicaicaigou_tupian7.jpg,upload/qicaicaigou_tupian8.jpg,upload/qicaicaigou_tupian1.jpg','2025-03-07',7,'采购后库存数量自动加'),(8,'2025-03-07 12:26:05','器材编号8','器材名称8','器材类型8','upload/qicaicaigou_tupian8.jpg,upload/qicaicaigou_tupian1.jpg,upload/qicaicaigou_tupian2.jpg','2025-03-07',8,'采购后库存数量自动加');
/*!40000 ALTER TABLE `qicaicaigou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicaiguihai`
--

DROP TABLE IF EXISTS `qicaiguihai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicaiguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaibianhao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '器材编号',
  `qicaimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '器材类型',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `shuliang` int(11) DEFAULT NULL COMMENT '租赁数量',
  `yonghuzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户姓名',
  `guihaibeizhu` longtext COLLATE utf8mb4_unicode_ci COMMENT '归还备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='器材归还';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicaiguihai`
--

LOCK TABLES `qicaiguihai` WRITE;
/*!40000 ALTER TABLE `qicaiguihai` DISABLE KEYS */;
INSERT INTO `qicaiguihai` VALUES (1,'2025-03-07 12:26:05','器材编号1','器材名称1','器材类型1','upload/qicaiguihai_tupian1.jpg,upload/qicaiguihai_tupian2.jpg,upload/qicaiguihai_tupian3.jpg','2025-03-07',1,'用户账号1','用户姓名1','归还备注1'),(2,'2025-03-07 12:26:05','器材编号2','器材名称2','器材类型2','upload/qicaiguihai_tupian2.jpg,upload/qicaiguihai_tupian3.jpg,upload/qicaiguihai_tupian4.jpg','2025-03-07',2,'用户账号2','用户姓名2','归还备注2'),(3,'2025-03-07 12:26:05','器材编号3','器材名称3','器材类型3','upload/qicaiguihai_tupian3.jpg,upload/qicaiguihai_tupian4.jpg,upload/qicaiguihai_tupian5.jpg','2025-03-07',3,'用户账号3','用户姓名3','归还备注3'),(4,'2025-03-07 12:26:05','器材编号4','器材名称4','器材类型4','upload/qicaiguihai_tupian4.jpg,upload/qicaiguihai_tupian5.jpg,upload/qicaiguihai_tupian6.jpg','2025-03-07',4,'用户账号4','用户姓名4','归还备注4'),(5,'2025-03-07 12:26:05','器材编号5','器材名称5','器材类型5','upload/qicaiguihai_tupian5.jpg,upload/qicaiguihai_tupian6.jpg,upload/qicaiguihai_tupian7.jpg','2025-03-07',5,'用户账号5','用户姓名5','归还备注5'),(6,'2025-03-07 12:26:05','器材编号6','器材名称6','器材类型6','upload/qicaiguihai_tupian6.jpg,upload/qicaiguihai_tupian7.jpg,upload/qicaiguihai_tupian8.jpg','2025-03-07',6,'用户账号6','用户姓名6','归还备注6'),(7,'2025-03-07 12:26:05','器材编号7','器材名称7','器材类型7','upload/qicaiguihai_tupian7.jpg,upload/qicaiguihai_tupian8.jpg,upload/qicaiguihai_tupian1.jpg','2025-03-07',7,'用户账号7','用户姓名7','归还备注7'),(8,'2025-03-07 12:26:05','器材编号8','器材名称8','器材类型8','upload/qicaiguihai_tupian8.jpg,upload/qicaiguihai_tupian1.jpg,upload/qicaiguihai_tupian2.jpg','2025-03-07',8,'用户账号8','用户姓名8','归还备注8');
/*!40000 ALTER TABLE `qicaiguihai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicaileixing`
--

DROP TABLE IF EXISTS `qicaileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicaileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaileixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '器材类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='器材类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicaileixing`
--

LOCK TABLES `qicaileixing` WRITE;
/*!40000 ALTER TABLE `qicaileixing` DISABLE KEYS */;
INSERT INTO `qicaileixing` VALUES (1,'2025-03-07 12:26:05','器材类型1'),(2,'2025-03-07 12:26:05','器材类型2'),(3,'2025-03-07 12:26:05','器材类型3'),(4,'2025-03-07 12:26:05','器材类型4'),(5,'2025-03-07 12:26:05','器材类型5'),(6,'2025-03-07 12:26:05','器材类型6'),(7,'2025-03-07 12:26:05','器材类型7'),(8,'2025-03-07 12:26:05','器材类型8');
/*!40000 ALTER TABLE `qicaileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicaixinxi`
--

DROP TABLE IF EXISTS `qicaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaibianhao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '器材编号',
  `qicaimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '器材类型',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `qicaixiangqing` longtext COLLATE utf8mb4_unicode_ci COMMENT '器材详情',
  `gengxinriqi` date DEFAULT NULL COMMENT '更新日期',
  `shuliang` int(11) DEFAULT NULL COMMENT '库存数量',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='器材信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicaixinxi`
--

LOCK TABLES `qicaixinxi` WRITE;
/*!40000 ALTER TABLE `qicaixinxi` DISABLE KEYS */;
INSERT INTO `qicaixinxi` VALUES (1,'2025-03-07 12:26:05','器材编号1','器材名称1','器材类型1','upload/qicaixinxi_tupian1.jpg,upload/qicaixinxi_tupian2.jpg,upload/qicaixinxi_tupian3.jpg','器材详情1','2025-03-07',1,1,1,0,1),(2,'2025-03-07 12:26:05','器材编号2','器材名称2','器材类型2','upload/qicaixinxi_tupian2.jpg,upload/qicaixinxi_tupian3.jpg,upload/qicaixinxi_tupian4.jpg','器材详情2','2025-03-07',2,2,2,0,2),(3,'2025-03-07 12:26:05','器材编号3','器材名称3','器材类型3','upload/qicaixinxi_tupian3.jpg,upload/qicaixinxi_tupian4.jpg,upload/qicaixinxi_tupian5.jpg','器材详情3','2025-03-07',3,3,3,0,3),(4,'2025-03-07 12:26:05','器材编号4','器材名称4','器材类型4','upload/qicaixinxi_tupian4.jpg,upload/qicaixinxi_tupian5.jpg,upload/qicaixinxi_tupian6.jpg','器材详情4','2025-03-07',4,4,4,0,4),(5,'2025-03-07 12:26:05','器材编号5','器材名称5','器材类型5','upload/qicaixinxi_tupian5.jpg,upload/qicaixinxi_tupian6.jpg,upload/qicaixinxi_tupian7.jpg','器材详情5','2025-03-07',5,5,5,0,5),(6,'2025-03-07 12:26:05','器材编号6','器材名称6','器材类型6','upload/qicaixinxi_tupian6.jpg,upload/qicaixinxi_tupian7.jpg,upload/qicaixinxi_tupian8.jpg','器材详情6','2025-03-07',6,6,6,0,6),(7,'2025-03-07 12:26:05','器材编号7','器材名称7','器材类型7','upload/qicaixinxi_tupian7.jpg,upload/qicaixinxi_tupian8.jpg,upload/qicaixinxi_tupian1.jpg','器材详情7','2025-03-07',7,7,7,0,7),(8,'2025-03-07 12:26:05','器材编号8','器材名称8','器材类型8','upload/qicaixinxi_tupian8.jpg,upload/qicaixinxi_tupian1.jpg,upload/qicaixinxi_tupian2.jpg','器材详情8','2025-03-07',8,8,8,0,8);
/*!40000 ALTER TABLE `qicaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicaizulin`
--

DROP TABLE IF EXISTS `qicaizulin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicaizulin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaibianhao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '器材编号',
  `qicaimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '器材类型',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `zulinriqi` date DEFAULT NULL COMMENT '租赁日期',
  `shuliang` int(11) DEFAULT NULL COMMENT '租赁数量',
  `yonghuzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户姓名',
  `zulinbeizhu` longtext COLLATE utf8mb4_unicode_ci COMMENT '租赁备注',
  `zulinzhuangtai` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '租赁状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='器材租赁';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicaizulin`
--

LOCK TABLES `qicaizulin` WRITE;
/*!40000 ALTER TABLE `qicaizulin` DISABLE KEYS */;
INSERT INTO `qicaizulin` VALUES (1,'2025-03-07 12:26:05','器材编号1','器材名称1','器材类型1','upload/qicaizulin_tupian1.jpg,upload/qicaizulin_tupian2.jpg,upload/qicaizulin_tupian3.jpg','2025-03-07',1,'用户账号1','用户姓名1','租赁备注1','已归还'),(2,'2025-03-07 12:26:05','器材编号2','器材名称2','器材类型2','upload/qicaizulin_tupian2.jpg,upload/qicaizulin_tupian3.jpg,upload/qicaizulin_tupian4.jpg','2025-03-07',2,'用户账号2','用户姓名2','租赁备注2','已归还'),(3,'2025-03-07 12:26:05','器材编号3','器材名称3','器材类型3','upload/qicaizulin_tupian3.jpg,upload/qicaizulin_tupian4.jpg,upload/qicaizulin_tupian5.jpg','2025-03-07',3,'用户账号3','用户姓名3','租赁备注3','已归还'),(4,'2025-03-07 12:26:05','器材编号4','器材名称4','器材类型4','upload/qicaizulin_tupian4.jpg,upload/qicaizulin_tupian5.jpg,upload/qicaizulin_tupian6.jpg','2025-03-07',4,'用户账号4','用户姓名4','租赁备注4','已归还'),(5,'2025-03-07 12:26:05','器材编号5','器材名称5','器材类型5','upload/qicaizulin_tupian5.jpg,upload/qicaizulin_tupian6.jpg,upload/qicaizulin_tupian7.jpg','2025-03-07',5,'用户账号5','用户姓名5','租赁备注5','已归还'),(6,'2025-03-07 12:26:05','器材编号6','器材名称6','器材类型6','upload/qicaizulin_tupian6.jpg,upload/qicaizulin_tupian7.jpg,upload/qicaizulin_tupian8.jpg','2025-03-07',6,'用户账号6','用户姓名6','租赁备注6','已归还'),(7,'2025-03-07 12:26:05','器材编号7','器材名称7','器材类型7','upload/qicaizulin_tupian7.jpg,upload/qicaizulin_tupian8.jpg,upload/qicaizulin_tupian1.jpg','2025-03-07',7,'用户账号7','用户姓名7','租赁备注7','已归还'),(8,'2025-03-07 12:26:05','器材编号8','器材名称8','器材类型8','upload/qicaizulin_tupian8.jpg,upload/qicaizulin_tupian1.jpg,upload/qicaizulin_tupian2.jpg','2025-03-07',8,'用户账号8','用户姓名8','租赁备注8','已归还');
/*!40000 ALTER TABLE `qicaizulin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `picture` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog`
--

DROP TABLE IF EXISTS `syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `operation` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户操作',
  `method` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请求方法',
  `params` longtext COLLATE utf8mb4_unicode_ci COMMENT '请求参数',
  `time` bigint(20) DEFAULT NULL COMMENT '请求时长(毫秒)',
  `ip` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'IP地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog`
--

LOCK TABLES `syslog` WRITE;
/*!40000 ALTER TABLE `syslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '副标题',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `picture1` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片1',
  `picture2` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片2',
  `picture3` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统简介';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2025-03-07 12:26:06','系统简介','SYSTEM INTRODUCTION','在平静的海平面上，每个人都可以成为领航员。但如果只有阳光而没有阴影，只有欢乐而没有痛苦，那就不是完整的人生。就拿最幸福的人来说吧——他的幸福是一团纠结的纱线。痛苦和幸福轮番而至，让我们悲喜交集，甚至死亡都让人生更加可爱。人在生命的严肃时刻，在悲伤与丧亲的阴影下，才最接近真实的自我。在生活和事业的各个方面，才智的功能远不如性格，头脑的功能远不如心性，天分远不如自制力、毅力与教养。我始终认为内心开始过严肃生活的人，他外在的生活会开始变得更为俭朴。在一个奢侈浪费的年代，但愿我能让世人了解：人类真正的需求是多么的稀少。不重蹈覆辙才是真正的醒悟。比别人优秀并无任何高贵之处，真正的高贵在于超越从前的自我。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2025-03-07 12:26:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户账号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shengao` double DEFAULT NULL COMMENT '身高(cm)',
  `tizhong` double DEFAULT NULL COMMENT '体重(kg)',
  `diqu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地区',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2025-03-07 12:26:05','用户账号1','123456','用户姓名1','upload/yonghu_touxiang1.jpg','男',1,1,1,'地区1','13823888881'),(12,'2025-03-07 12:26:05','用户账号2','123456','用户姓名2','upload/yonghu_touxiang2.jpg','男',2,2,2,'地区2','13823888882'),(13,'2025-03-07 12:26:05','用户账号3','123456','用户姓名3','upload/yonghu_touxiang3.jpg','男',3,3,3,'地区3','13823888883'),(14,'2025-03-07 12:26:05','用户账号4','123456','用户姓名4','upload/yonghu_touxiang4.jpg','男',4,4,4,'地区4','13823888884'),(15,'2025-03-07 12:26:05','用户账号5','123456','用户姓名5','upload/yonghu_touxiang5.jpg','男',5,5,5,'地区5','13823888885'),(16,'2025-03-07 12:26:05','用户账号6','123456','用户姓名6','upload/yonghu_touxiang6.jpg','男',6,6,6,'地区6','13823888886'),(17,'2025-03-07 12:26:05','用户账号7','123456','用户姓名7','upload/yonghu_touxiang7.jpg','男',7,7,7,'地区7','13823888887'),(18,'2025-03-07 12:26:05','用户账号8','123456','用户姓名8','upload/yonghu_touxiang8.jpg','男',8,8,8,'地区8','13823888888');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-08 21:48:49
