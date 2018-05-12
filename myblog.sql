CREATE DATABASE  IF NOT EXISTS `myblog` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `myblog`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: myblog
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `content` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `seolink` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `seolink_UNIQUE` (`seolink`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (4,'How I live comfortably in a resort town on $35,000 a year','<p>My dad taught me to live within my means.&nbsp;I take that lesson pretty seriously and never spend more than I can afford. This can be challenging on my&nbsp;budget&nbsp;- I make $35,000 a year - but by spending carefully I make it work.</p>\n\n<p><img alt=\"\" src=\"https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAwI0iR.img?h=416&amp;w=799&amp;m=6&amp;q=60&amp;u=t&amp;o=f&amp;l=f&amp;x=938&amp;y=1157\" style=\"height:543px; width:725px\" /></p>\n\n<p>I live a pretty thrifty lifestyle and while my income doesn&#39;t allow for a lot of saving, I still try to save a couple hundred dollars and contribute to my 401k every month. I love traveling, so I also try to put aside some cash every month so I can buy plane tickets to go visit my friends and family and explore new cities.</p>\n\n<p>My boyfriend and I share the expense of living at our resort apartment on Hilton Head Island in South Carolina, which keeps my rent affordable. The resort is extremely quiet in the winter and we get to enjoy the vacation amenities like hot tubs and tennis courts regularly, especially during the off season for tourism. On days when I don&#39;t spend any money, I&#39;m still able to enjoy indoor workouts, swimming, or a friendly game of tennis, which is an added bonus.</p>\n','Man Nguyen','how-i-live-comfortably-in-a-resort-town-on-$35000-a-year','2018-05-04 21:17:53','2018-05-05 06:04:34'),(3,'Amsterdam Destination Guide','<p>Tối 4-5, người ph&aacute;t ng&ocirc;n Bộ Ngoại giao Việt Nam L&ecirc; Thị Thu Hằng đ&atilde; trả lời c&acirc;u hỏi của ph&oacute;ng vi&ecirc;n đề nghị cho biết phản ứng của Việt Nam về B&aacute;o c&aacute;o nh&acirc;n quyền thường ni&ecirc;n năm 2017 của Bộ Ngoại giao Hoa Kỳ được c&ocirc;ng bố mới đ&acirc;y.</p>\n\n<p>&nbsp;</p>\n','Man Nguyen','amsterdam-destination-guide','2018-05-04 09:49:31','2018-05-05 06:10:25'),(7,'A pregnant black woman is in prison for defending herself. Mainstream gun groups are silent','<p>A pregnant black woman is in prison for defending herself. Mainstream gun groups are silentA pregnant black woman is in prison for defending herself. Mainstream gun groups are silentA pregnant black woman is in prison for defending herself. Mainstream gun groups are silentA pregnant black woman is in prison for defending herself. Mainstream gun groups are silentA pregnant black woman is in prison for Tối 4-5, người phát ngôn Bộ Ngoại giao Việt Nam Lê Thị Thu Hằng đã trả lời câu hỏi của phóng viên đề nghị cho biết phản ứng của Việt Nam về Báo cáo nhân quyền thường niên năm 2017 của Bộ Ngoại giao Hoa Kỳ được công bố mới đây.herself. Mainstream gun groups are silent</p>\r ','Man Nguyen','a-pregnant-black-woman-is-in-prison-for-defending-herself-mainstream-gun-groups-are-silent','2018-05-05 05:51:39','2018-05-05 06:00:49');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` longtext,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,'nlmman@myblog.com','$2b$10$8cqpfgOVWwdwwplSeEN14.FsgbgztyRL/LNSqCSYBCypV0oZt1L3.','Man','Nguyen Ly Minh',NULL,NULL),(8,'nguyenlyminhman@gmail.com','$2b$10$OIAdl7EBmQ8UOe66r.K.uusu.pKEhIAW.dEgViPHkD5vqYWCbsh7O','Man','Nguyen','2018-05-03 00:00:00','2018-05-03 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-05 21:22:05

--username: nlmman@myblog.com  
--password: man
