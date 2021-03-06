-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gnet
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderitem` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OrderItemGuid` varchar(64) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `UnitPriceInclTax` decimal(18,4) NOT NULL,
  `UnitPriceExclTax` decimal(18,4) NOT NULL,
  `PriceInclTax` decimal(18,4) NOT NULL,
  `PriceExclTax` decimal(18,4) NOT NULL,
  `DiscountAmountInclTax` decimal(18,4) NOT NULL,
  `DiscountAmountExclTax` decimal(18,4) NOT NULL,
  `OriginalProductCost` decimal(18,4) NOT NULL,
  `AttributeDescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `AttributesXml` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `DownloadCount` int(11) NOT NULL,
  `IsDownloadActivated` bit(1) NOT NULL,
  `LicenseDownloadId` int(11) DEFAULT NULL,
  `ItemWeight` decimal(18,4) DEFAULT NULL,
  `RentalStartDateUtc` datetime(6) DEFAULT NULL,
  `RentalEndDateUtc` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `OrderItemGuid` (`OrderItemGuid`),
  KEY `IX_OrderItem_OrderId` (`OrderId`),
  KEY `IX_OrderItem_ProductId` (`ProductId`),
  CONSTRAINT `FK_OrderItem_Order_OrderId` FOREIGN KEY (`OrderId`) REFERENCES `order` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_OrderItem_Product_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (1,'3FB84E4A-EFFF-4D79-AFF8-1F81A3F5D7C8',1,17,1,1300.0000,1300.0000,1300.0000,1300.0000,0.0000,0.0000,0.0000,'','',0,0,0,NULL,NULL,NULL),(2,'68345ACC-1A39-4C8F-A524-A8F029B729C6',1,16,1,530.0000,530.0000,530.0000,530.0000,0.0000,0.0000,0.0000,'','',0,0,0,NULL,NULL,NULL),(3,'8E06EAC3-B895-4DF4-B0A9-20C4A21ABF59',1,43,1,25.0000,25.0000,25.0000,25.0000,0.0000,0.0000,0.0000,'From: Steve Gates &lt;steve_gates@nopCommerce.com&gt;<br />For: Brenda Lindgren &lt;brenda_lindgren@nopCommerce.com&gt;','<Attributes><GiftCardInfo><RecipientName>Brenda Lindgren</RecipientName><RecipientEmail>brenda_lindgren@nopCommerce.com</RecipientEmail><SenderName>Steve Gates</SenderName><SenderEmail>steve_gates@gmail.com</SenderEmail><Message></Message></GiftCardInfo></Attributes>',0,0,0,NULL,NULL,NULL),(4,'C03AD9DB-6FD6-49A5-8F97-77F073502E7B',2,42,1,2100.0000,2100.0000,2100.0000,2100.0000,0.0000,0.0000,0.0000,'','',0,0,0,NULL,NULL,NULL),(5,'B7FC59C8-276C-4C8A-AF98-19977E3B38DA',2,41,1,360.0000,360.0000,360.0000,360.0000,0.0000,0.0000,0.0000,'','',0,0,0,NULL,NULL,NULL),(6,'34AE72BB-9A20-46EB-8841-F05D6389DA01',3,35,1,3.0000,3.0000,3.0000,3.0000,0.0000,0.0000,0.0000,'','',0,0,0,NULL,NULL,NULL),(7,'2D86D001-9FCE-4793-ADBA-9AD6B91D0700',3,34,1,2.8000,2.8000,2.8000,2.8000,0.0000,0.0000,0.0000,'','',0,0,0,NULL,NULL,NULL),(8,'6FB78AAF-FB4D-4F5A-B34A-E24431958717',3,36,1,3.0000,3.0000,3.0000,3.0000,0.0000,0.0000,0.0000,'','',0,0,0,NULL,NULL,NULL),(9,'812A4815-E870-4B10-84CC-AEBF26DC0E37',4,39,1,24.0000,24.0000,24.0000,24.0000,0.0000,0.0000,0.0000,'','',0,0,0,NULL,NULL,NULL),(10,'C098DADA-1311-4307-B399-83098E3CF3A5',4,38,1,51.0000,51.0000,51.0000,51.0000,0.0000,0.0000,0.0000,'','',0,0,0,NULL,NULL,NULL),(11,'8CB8CA4C-CE38-4C79-9C6D-62238F9DDB83',4,37,1,27.0000,27.0000,27.0000,27.0000,0.0000,0.0000,0.0000,'','',0,0,0,NULL,NULL,NULL),(12,'925B8524-E391-4FE6-9E03-9925FDA66385',5,30,1,43.5000,43.5000,43.5000,43.5000,0.0000,0.0000,0.0000,'','',0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-31 12:15:38
