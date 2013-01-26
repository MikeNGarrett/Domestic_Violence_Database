-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: phpmyadmin
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.10.2

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
-- Table structure for table `org_servicecost`
--

DROP TABLE IF EXISTS `org_servicecost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_servicecost` (
  `fk_organization_name` varchar(45) NOT NULL,
  `fk_organization_city` varchar(45) NOT NULL,
  `fk_organization_state` varchar(45) NOT NULL,
  `fk_servicecost_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fk_organization_name`,`fk_organization_city`,`fk_organization_state`),
  KEY `fk_org_servicecost_1` (`fk_servicecost_id`),
  CONSTRAINT `fk_org_servicecost_1` FOREIGN KEY (`fk_organization_name`, `fk_organization_city`, `fk_organization_state`) REFERENCES `organizations` (`name`, `city`, `state_province`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_servicecost`
--

LOCK TABLES `org_servicecost` WRITE;
/*!40000 ALTER TABLE `org_servicecost` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_servicecost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_servicetype`
--

DROP TABLE IF EXISTS `org_servicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_servicetype` (
  `fk_organization_name` varchar(45) NOT NULL,
  `fk_organization_city` varchar(45) NOT NULL,
  `fk_organization_state` varchar(45) NOT NULL,
  `fk_servicetype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fk_organization_name`,`fk_organization_city`,`fk_organization_state`),
  KEY `fk_org_servicetype_1` (`fk_servicetype_id`),
  CONSTRAINT `fk_org_servicetype_1` FOREIGN KEY (`fk_organization_name`, `fk_organization_city`, `fk_organization_state`) REFERENCES `organizations` (`name`, `city`, `state_province`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_servicetype`
--

LOCK TABLES `org_servicetype` WRITE;
/*!40000 ALTER TABLE `org_servicetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_servicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_specialization`
--

DROP TABLE IF EXISTS `org_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_specialization` (
  `fk_organization_name` varchar(45) NOT NULL,
  `fk_organization_city` varchar(45) NOT NULL,
  `fk_organization_state` varchar(45) NOT NULL,
  `fk_specialization_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fk_organization_name`,`fk_organization_city`,`fk_organization_state`),
  KEY `fk_org_specialization_1` (`fk_specialization_id`),
  CONSTRAINT `fk_org_specialization_1` FOREIGN KEY (`fk_organization_name`, `fk_organization_city`, `fk_organization_state`) REFERENCES `organizations` (`name`, `city`, `state_province`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_specialization`
--

LOCK TABLES `org_specialization` WRITE;
/*!40000 ALTER TABLE `org_specialization` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_updates`
--

DROP TABLE IF EXISTS `org_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_updates` (
  `fk_organization_name` varchar(45) NOT NULL,
  `fk_organization_city` varchar(45) NOT NULL,
  `fk_organization_state` varchar(45) NOT NULL,
  `fk_updates_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fk_organization_name`,`fk_organization_city`,`fk_organization_state`),
  KEY `fk_org_updates_1` (`fk_updates_id`),
  CONSTRAINT `fk_org_updates_1` FOREIGN KEY (`fk_organization_name`, `fk_organization_city`, `fk_organization_state`) REFERENCES `organizations` (`name`, `city`, `state_province`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_updates`
--

LOCK TABLES `org_updates` WRITE;
/*!40000 ALTER TABLE `org_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations` (
  `name` varchar(45) NOT NULL,
  `street` varchar(45) DEFAULT NULL,
  `neighborhood` varchar(45) DEFAULT NULL,
  `county` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state_province` varchar(45) NOT NULL,
  `zip_postalcode` varchar(45) DEFAULT NULL,
  `nation` varchar(45) DEFAULT NULL,
  `cross_streets` varchar(45) DEFAULT NULL,
  `latitute` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `confidential` int(11) DEFAULT NULL,
  `contact_name` varchar(45) CHARACTER SET cp850 DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `fk_service_type` int(11) DEFAULT NULL,
  `fk_specialization` int(11) DEFAULT NULL,
  `fk_service_cost` int(11) DEFAULT NULL,
  `fk_updated_on` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`,`city`,`state_province`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_bookmark`
--

DROP TABLE IF EXISTS `pma_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_bookmark`
--

LOCK TABLES `pma_bookmark` WRITE;
/*!40000 ALTER TABLE `pma_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_column_info`
--

DROP TABLE IF EXISTS `pma_column_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_column_info`
--

LOCK TABLES `pma_column_info` WRITE;
/*!40000 ALTER TABLE `pma_column_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_column_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_designer_coords`
--

DROP TABLE IF EXISTS `pma_designer_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_designer_coords`
--

LOCK TABLES `pma_designer_coords` WRITE;
/*!40000 ALTER TABLE `pma_designer_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_designer_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_history`
--

DROP TABLE IF EXISTS `pma_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_history`
--

LOCK TABLES `pma_history` WRITE;
/*!40000 ALTER TABLE `pma_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_pdf_pages`
--

DROP TABLE IF EXISTS `pma_pdf_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_pdf_pages`
--

LOCK TABLES `pma_pdf_pages` WRITE;
/*!40000 ALTER TABLE `pma_pdf_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_pdf_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_relation`
--

DROP TABLE IF EXISTS `pma_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_relation`
--

LOCK TABLES `pma_relation` WRITE;
/*!40000 ALTER TABLE `pma_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_coords`
--

DROP TABLE IF EXISTS `pma_table_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_coords`
--

LOCK TABLES `pma_table_coords` WRITE;
/*!40000 ALTER TABLE `pma_table_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_info`
--

DROP TABLE IF EXISTS `pma_table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_info`
--

LOCK TABLES `pma_table_info` WRITE;
/*!40000 ALTER TABLE `pma_table_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_tracking`
--

DROP TABLE IF EXISTS `pma_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_tracking`
--

LOCK TABLES `pma_tracking` WRITE;
/*!40000 ALTER TABLE `pma_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_userconfig`
--

DROP TABLE IF EXISTS `pma_userconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_userconfig`
--

LOCK TABLES `pma_userconfig` WRITE;
/*!40000 ALTER TABLE `pma_userconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_userconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicecost`
--

DROP TABLE IF EXISTS `servicecost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicecost` (
  `servicecost_id` int(11) NOT NULL,
  `servicecost_desc` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`servicecost_id`),
  KEY `fk_servicecost_1` (`servicecost_id`),
  CONSTRAINT `fk_servicecost_1` FOREIGN KEY (`servicecost_id`) REFERENCES `org_servicecost` (`fk_servicecost_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecost`
--

LOCK TABLES `servicecost` WRITE;
/*!40000 ALTER TABLE `servicecost` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicecost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicetype`
--

DROP TABLE IF EXISTS `servicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicetype` (
  `servicetype_id` int(11) NOT NULL,
  `servicetype_desc` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`servicetype_id`),
  KEY `fk_servicetype_1` (`servicetype_id`),
  CONSTRAINT `fk_servicetype_1` FOREIGN KEY (`servicetype_id`) REFERENCES `org_servicetype` (`fk_servicetype_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicetype`
--

LOCK TABLES `servicetype` WRITE;
/*!40000 ALTER TABLE `servicetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialization` (
  `specialization_id` int(11) NOT NULL,
  `specialization_desc` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`specialization_id`),
  KEY `fk_specialization_1` (`specialization_id`),
  CONSTRAINT `fk_specialization_1` FOREIGN KEY (`specialization_id`) REFERENCES `org_specialization` (`fk_specialization_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updates`
--

DROP TABLE IF EXISTS `updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updates` (
  `updates_id` int(11) NOT NULL,
  `updates_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`updates_id`),
  KEY `fk_updates_1` (`updates_id`),
  CONSTRAINT `fk_updates_1` FOREIGN KEY (`updates_id`) REFERENCES `org_updates` (`fk_updates_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updates`
--

LOCK TABLES `updates` WRITE;
/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-26 16:12:13
