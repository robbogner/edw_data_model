-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for osx10.18 (x86_64)
--
-- Host: 192.168.0.4    Database: edwh
-- ------------------------------------------------------
-- Server version	10.3.32-MariaDB

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
-- Current Database: `edwh`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `edwh` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `edwh`;

--
-- Table structure for table `dim_academic_degree`
--

DROP TABLE IF EXISTS `dim_academic_degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_academic_degree` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_benefit`
--

DROP TABLE IF EXISTS `dim_benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_benefit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_company_size`
--

DROP TABLE IF EXISTS `dim_company_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_company_size` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_country`
--

DROP TABLE IF EXISTS `dim_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_country` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_date`
--

DROP TABLE IF EXISTS `dim_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_date` (
  `DateId` int(11) NOT NULL AUTO_INCREMENT,
  `DateAlternateKey` date NOT NULL,
  `holidayId` int(11) NOT NULL,
  `quarterNumber` tinyint(4) NOT NULL,
  `quarterName` varchar(10) NOT NULL,
  `monthNumber` tinyint(4) NOT NULL,
  `monthName` varchar(10) NOT NULL,
  `weekNumber` tinyint(4) NOT NULL,
  `weekName` varchar(10) NOT NULL,
  `year` smallint(6) NOT NULL,
  `yearAndMonth` varchar(7) NOT NULL,
  `yearAndWeek` varchar(7) NOT NULL,
  `dayNumberOfWeek` tinyint(4) NOT NULL,
  `dayNameOfWeek` varchar(20) NOT NULL,
  `dayNumberOfMonth` tinyint(4) NOT NULL,
  `dayNumberOfYear` smallint(6) NOT NULL,
  `workingDay` tinyint(4) NOT NULL,
  `ISO_weekNumber` tinyint(4) NOT NULL,
  `ISO_weekName` varchar(10) NOT NULL,
  `ISO_year` smallint(6) NOT NULL,
  `ISO_yearAndWeek` varchar(7) NOT NULL,
  `datePrevYear` date NOT NULL,
  `datePPY` date DEFAULT NULL,
  PRIMARY KEY (`DateId`)
) ENGINE=InnoDB AUTO_INCREMENT=2558 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_declined_by_company_reason`
--

DROP TABLE IF EXISTS `dim_declined_by_company_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_declined_by_company_reason` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_declined_by_user_reason`
--

DROP TABLE IF EXISTS `dim_declined_by_user_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_declined_by_user_reason` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_equipment`
--

DROP TABLE IF EXISTS `dim_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_equipment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_functional_area`
--

DROP TABLE IF EXISTS `dim_functional_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_functional_area` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_gender`
--

DROP TABLE IF EXISTS `dim_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_gender` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_graduation`
--

DROP TABLE IF EXISTS `dim_graduation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_graduation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_hard_skill_level`
--

DROP TABLE IF EXISTS `dim_hard_skill_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_hard_skill_level` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_hard_skill_name`
--

DROP TABLE IF EXISTS `dim_hard_skill_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_hard_skill_name` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_hard_skill_time`
--

DROP TABLE IF EXISTS `dim_hard_skill_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_hard_skill_time` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_hard_skill_time_and_level`
--

DROP TABLE IF EXISTS `dim_hard_skill_time_and_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_hard_skill_time_and_level` (
  `id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `period_of_time_id` int(11) DEFAULT NULL,
  `skill_level_id` int(11) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_industry`
--

DROP TABLE IF EXISTS `dim_industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_industry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_job_level`
--

DROP TABLE IF EXISTS `dim_job_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_job_level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_job_position`
--

DROP TABLE IF EXISTS `dim_job_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_job_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_job_site`
--

DROP TABLE IF EXISTS `dim_job_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_job_site` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_language_company`
--

DROP TABLE IF EXISTS `dim_language_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_language_company` (
  `id` bigint(20) NOT NULL,
  `level_id` int(11) DEFAULT NULL,
  `name_id` int(11) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_language_level`
--

DROP TABLE IF EXISTS `dim_language_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_language_level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_language_name`
--

DROP TABLE IF EXISTS `dim_language_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_language_name` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_marital_status`
--

DROP TABLE IF EXISTS `dim_marital_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_marital_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_methodical_competence`
--

DROP TABLE IF EXISTS `dim_methodical_competence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_methodical_competence` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_nationality`
--

DROP TABLE IF EXISTS `dim_nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_nationality` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_personal_competence`
--

DROP TABLE IF EXISTS `dim_personal_competence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_personal_competence` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_social_competence`
--

DROP TABLE IF EXISTS `dim_social_competence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_social_competence` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_soft_skill`
--

DROP TABLE IF EXISTS `dim_soft_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_soft_skill` (
  `id` bigint(20) NOT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_subject`
--

DROP TABLE IF EXISTS `dim_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_title`
--

DROP TABLE IF EXISTS `dim_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_title` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_travel_willingness`
--

DROP TABLE IF EXISTS `dim_travel_willingness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_travel_willingness` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_workplace`
--

DROP TABLE IF EXISTS `dim_workplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_workplace` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company`
--

DROP TABLE IF EXISTS `fct_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company` (
  `id` binary(16) NOT NULL,
  `cognito_id` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_company_name` varchar(255) DEFAULT NULL,
  `billing_street` varchar(255) DEFAULT NULL,
  `billing_zip_code` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_description` longtext DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `full_name` varchar(510) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `profile_picture_id` varchar(255) DEFAULT NULL,
  `profile_picture_url` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `academic_degree_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `billing_country_id` int(11) DEFAULT NULL,
  `company_size_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_benefits`
--

DROP TABLE IF EXISTS `fct_company_benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_benefits` (
  `company_id` binary(16) NOT NULL,
  `benefits_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`benefits_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_consent`
--

DROP TABLE IF EXISTS `fct_company_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_consent` (
  `id` bigint(20) NOT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `privacy_policy_accepted_at` datetime(6) DEFAULT NULL,
  `privacy_policy_version` varchar(255) DEFAULT NULL,
  `tos_accepted_at` datetime(6) DEFAULT NULL,
  `tos_version` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_core_values`
--

DROP TABLE IF EXISTS `fct_company_core_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_core_values` (
  `id` bigint(20) NOT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `autonomy_or_hierarchy` varchar(255) DEFAULT NULL,
  `career_or_work_life_balance` varchar(255) DEFAULT NULL,
  `casual_or_formal` varchar(255) DEFAULT NULL,
  `competition_or_reserved` varchar(255) DEFAULT NULL,
  `distance_or_closeness` varchar(255) DEFAULT NULL,
  `foreground_or_background` varchar(255) DEFAULT NULL,
  `freedom_or_specification` varchar(255) DEFAULT NULL,
  `goal_or_journey` varchar(255) DEFAULT NULL,
  `innovation_or_tradition` varchar(255) DEFAULT NULL,
  `international_or_local` varchar(255) DEFAULT NULL,
  `me_or_we` varchar(255) DEFAULT NULL,
  `risk_or_certainty` varchar(255) DEFAULT NULL,
  `specific_or_generic` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_equipments`
--

DROP TABLE IF EXISTS `fct_company_equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_equipments` (
  `company_id` binary(16) NOT NULL,
  `equipments_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`equipments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_industries`
--

DROP TABLE IF EXISTS `fct_company_industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_industries` (
  `company_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_search_mission`
--

DROP TABLE IF EXISTS `fct_company_search_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_search_mission` (
  `id` binary(16) NOT NULL,
  `activated` bit(1) DEFAULT NULL,
  `annual_vacation` int(11) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `department_description` longtext DEFAULT NULL,
  `duration_industry` int(11) DEFAULT NULL,
  `duration_job_level_work_experience` int(11) DEFAULT NULL,
  `duration_job_position` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `fixed_term_employment` bit(1) DEFAULT NULL,
  `head_count` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `job_location_latitude` double DEFAULT NULL,
  `job_location_longitude` double DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `matching_quote` int(11) DEFAULT NULL,
  `maximum_salary` int(11) DEFAULT NULL,
  `part_time_job` bit(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `task_description` longtext DEFAULT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `functional_area_id` int(11) DEFAULT NULL,
  `graduation_id` int(11) DEFAULT NULL,
  `job_level_id` int(11) DEFAULT NULL,
  `job_level_work_experience_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `job_position_id` bigint(20) DEFAULT NULL,
  `job_site_id` int(11) DEFAULT NULL,
  `travel_willingness_id` int(11) DEFAULT NULL,
  `deactivated_reason` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_search_mission_hard_skills`
--

DROP TABLE IF EXISTS `fct_company_search_mission_hard_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_search_mission_hard_skills` (
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `hard_skills_id` bigint(20) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`hard_skills_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_search_mission_hard_skills_rating`
--

DROP TABLE IF EXISTS `fct_company_search_mission_hard_skills_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_search_mission_hard_skills_rating` (
  `id` bigint(20) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_search_mission_industries`
--

DROP TABLE IF EXISTS `fct_company_search_mission_industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_search_mission_industries` (
  `search_mission_company_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_search_mission_job_positions`
--

DROP TABLE IF EXISTS `fct_company_search_mission_job_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_search_mission_job_positions` (
  `search_mission_company_id` binary(16) NOT NULL,
  `job_positions_id` bigint(20) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`job_positions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_search_mission_languages`
--

DROP TABLE IF EXISTS `fct_company_search_mission_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_search_mission_languages` (
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `languages_id` bigint(20) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`languages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_search_mission_methodical_competences`
--

DROP TABLE IF EXISTS `fct_company_search_mission_methodical_competences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_search_mission_methodical_competences` (
  `search_mission_company_id` binary(16) NOT NULL,
  `methodical_competences_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`methodical_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_search_mission_personal_competences`
--

DROP TABLE IF EXISTS `fct_company_search_mission_personal_competences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_search_mission_personal_competences` (
  `search_mission_company_id` binary(16) NOT NULL,
  `personal_competences_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`personal_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_search_mission_social_competences`
--

DROP TABLE IF EXISTS `fct_company_search_mission_social_competences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_search_mission_social_competences` (
  `search_mission_company_id` binary(16) NOT NULL,
  `social_competences_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`social_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_search_mission_subjects`
--

DROP TABLE IF EXISTS `fct_company_search_mission_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_search_mission_subjects` (
  `search_mission_company_id` binary(16) NOT NULL,
  `subjects_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`subjects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_company_workplaces`
--

DROP TABLE IF EXISTS `fct_company_workplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_company_workplaces` (
  `company_id` binary(16) NOT NULL,
  `workplaces_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`workplaces_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_matching`
--

DROP TABLE IF EXISTS `fct_matching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_matching` (
  `id` binary(16) NOT NULL,
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `search_mission_user_id` binary(16) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `data_last_modified` datetime(6) DEFAULT NULL,
  `last_matching` datetime(6) DEFAULT NULL,
  `accepted_by_company` datetime(6) DEFAULT NULL,
  `accepted_by_user` datetime(6) DEFAULT NULL,
  `declined_by_company_reason_id` int(11) DEFAULT NULL,
  `declined_by_company` datetime(6) DEFAULT NULL,
  `declined_by_user_reason_id` int(11) DEFAULT NULL,
  `declined_by_user` datetime(6) DEFAULT NULL,
  `overall_weighted_company_result` decimal(19,2) DEFAULT NULL,
  `overall_weighted_user_result` decimal(19,2) DEFAULT NULL,
  `work_experience_result` decimal(19,2) DEFAULT NULL,
  `education_result` decimal(19,2) DEFAULT NULL,
  `language_result` decimal(19,2) DEFAULT NULL,
  `hard_skill_result` decimal(19,2) DEFAULT NULL,
  `soft_skill_result` decimal(19,2) DEFAULT NULL,
  `core_values_result` decimal(19,2) DEFAULT NULL,
  `perks_result` decimal(19,2) DEFAULT NULL,
  `general_conditions_result` decimal(19,2) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user`
--

DROP TABLE IF EXISTS `fct_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user` (
  `id` binary(16) NOT NULL,
  `cognito_id` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `desired_salary` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `full_name` varchar(510) DEFAULT NULL,
  `motivation_speech` longtext DEFAULT NULL,
  `notice_period` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `profile_picture_id` varchar(255) DEFAULT NULL,
  `profile_picture_url` varchar(255) DEFAULT NULL,
  `academic_degree_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `marital_status_id` int(11) DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_consent`
--

DROP TABLE IF EXISTS `fct_user_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_consent` (
  `id` binary(16) NOT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `privacy_policy_accepted_at` datetime(6) DEFAULT NULL,
  `privacy_policy_version` varchar(255) DEFAULT NULL,
  `tos_accepted_at` datetime(6) DEFAULT NULL,
  `tos_version` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_core_values`
--

DROP TABLE IF EXISTS `fct_user_core_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_core_values` (
  `id` binary(16) NOT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `autonomy_or_hierarchy` varchar(255) DEFAULT NULL,
  `career_or_work_life_balance` varchar(255) DEFAULT NULL,
  `casual_or_formal` varchar(255) DEFAULT NULL,
  `competition_or_reserved` varchar(255) DEFAULT NULL,
  `distance_or_closeness` varchar(255) DEFAULT NULL,
  `foreground_or_background` varchar(255) DEFAULT NULL,
  `freedom_or_specification` varchar(255) DEFAULT NULL,
  `goal_or_journey` varchar(255) DEFAULT NULL,
  `innovation_or_tradition` varchar(255) DEFAULT NULL,
  `international_or_local` varchar(255) DEFAULT NULL,
  `me_or_we` varchar(255) DEFAULT NULL,
  `risk_or_certainty` varchar(255) DEFAULT NULL,
  `specific_or_generic` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_education`
--

DROP TABLE IF EXISTS `fct_user_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_education` (
  `id` bigint(20) NOT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `graduation_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_course` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_hard_skill`
--

DROP TABLE IF EXISTS `fct_user_hard_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_hard_skill` (
  `id` bigint(20) NOT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `period_of_time_and_level_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_language`
--

DROP TABLE IF EXISTS `fct_user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_language` (
  `id` bigint(20) NOT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `language_proficiency_examination` bit(1) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `name_id` int(11) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_search_mission`
--

DROP TABLE IF EXISTS `fct_user_search_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_search_mission` (
  `id` binary(16) NOT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `activated` bit(1) DEFAULT NULL,
  `annual_vacation` int(11) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `fixed_term_employment` bit(1) DEFAULT NULL,
  `matching_quote` int(11) DEFAULT NULL,
  `minimum_salary` int(11) DEFAULT NULL,
  `part_time_job` bit(1) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `zip_code_latitude` double DEFAULT NULL,
  `zip_code_longitude` double DEFAULT NULL,
  `job_site_id` int(11) DEFAULT NULL,
  `travel_willingness_id` int(11) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_search_mission_benefits`
--

DROP TABLE IF EXISTS `fct_user_search_mission_benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_search_mission_benefits` (
  `search_mission_user_id` binary(16) NOT NULL,
  `benefits_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`benefits_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_search_mission_company_sizes`
--

DROP TABLE IF EXISTS `fct_user_search_mission_company_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_search_mission_company_sizes` (
  `search_mission_user_id` binary(16) NOT NULL,
  `company_sizes_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`company_sizes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_search_mission_equipments`
--

DROP TABLE IF EXISTS `fct_user_search_mission_equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_search_mission_equipments` (
  `search_mission_user_id` binary(16) NOT NULL,
  `equipments_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`equipments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_search_mission_functional_areas`
--

DROP TABLE IF EXISTS `fct_user_search_mission_functional_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_search_mission_functional_areas` (
  `search_mission_user_id` binary(16) NOT NULL,
  `functional_areas_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`functional_areas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_search_mission_industries`
--

DROP TABLE IF EXISTS `fct_user_search_mission_industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_search_mission_industries` (
  `search_mission_user_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_search_mission_job_levels`
--

DROP TABLE IF EXISTS `fct_user_search_mission_job_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_search_mission_job_levels` (
  `search_mission_user_id` binary(16) NOT NULL,
  `job_levels_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`job_levels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_search_mission_job_positions`
--

DROP TABLE IF EXISTS `fct_user_search_mission_job_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_search_mission_job_positions` (
  `search_mission_user_id` binary(16) NOT NULL,
  `job_positions_id` bigint(20) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`job_positions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_search_mission_workplaces`
--

DROP TABLE IF EXISTS `fct_user_search_mission_workplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_search_mission_workplaces` (
  `search_mission_user_id` binary(16) NOT NULL,
  `workplaces_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`workplaces_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_soft_skill_methodical_competences`
--

DROP TABLE IF EXISTS `fct_user_soft_skill_methodical_competences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_soft_skill_methodical_competences` (
  `user_id` binary(16) NOT NULL,
  `methodical_competences_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`methodical_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_soft_skill_personal_competences`
--

DROP TABLE IF EXISTS `fct_user_soft_skill_personal_competences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_soft_skill_personal_competences` (
  `user_id` binary(16) NOT NULL,
  `personal_competences_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`personal_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_soft_skill_social_competences`
--

DROP TABLE IF EXISTS `fct_user_soft_skill_social_competences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_soft_skill_social_competences` (
  `user_id` binary(16) NOT NULL,
  `social_competences_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`social_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_work_experience`
--

DROP TABLE IF EXISTS `fct_user_work_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_work_experience` (
  `id` bigint(20) NOT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `job_position_id` bigint(20) DEFAULT NULL,
  `job_level_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `task_description` longtext DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fct_user_work_experience_industries`
--

DROP TABLE IF EXISTS `fct_user_work_experience_industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fct_user_work_experience_industries` (
  `work_experience_id` bigint(20) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `dataset_last_updated` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`work_experience_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `pbi_matchings`
--

DROP TABLE IF EXISTS `pbi_matchings`;
/*!50001 DROP VIEW IF EXISTS `pbi_matchings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_matchings` AS SELECT
 1 AS `Matching Id`,
  1 AS `Search Mission Company Id`,
  1 AS `Search Mission User Id`,
  1 AS `User Id`,
  1 AS `Company Name`,
  1 AS `Job Title`,
  1 AS `Job Position`,
  1 AS `Status`,
  1 AS `Date Last Modified`,
  1 AS `Last Matching`,
  1 AS `Accepted By Company`,
  1 AS `Declined By Company Reason`,
  1 AS `Delcined By Company`,
  1 AS `Accepted By User`,
  1 AS `Declined By User Reason`,
  1 AS `Declined By User`,
  1 AS `Overall Weighted Company Result`,
  1 AS `Overall Weighted User Result`,
  1 AS `Work Experience Result`,
  1 AS `Education Result`,
  1 AS `Language Result`,
  1 AS `Hard Skill Result`,
  1 AS `Soft Skill Result`,
  1 AS `Core Values Result`,
  1 AS `Perks Result`,
  1 AS `General Conditions Result` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users`
--

DROP TABLE IF EXISTS `pbi_users`;
/*!50001 DROP VIEW IF EXISTS `pbi_users`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users` AS SELECT
 1 AS `User Id`,
  1 AS `Cognito Id`,
  1 AS `Title`,
  1 AS `Academic Degree`,
  1 AS `Full Name`,
  1 AS `First Name`,
  1 AS `Last Name`,
  1 AS `Street`,
  1 AS `Zip Code`,
  1 AS `City`,
  1 AS `Country`,
  1 AS `Gender`,
  1 AS `Material Status`,
  1 AS `Date Of Birth`,
  1 AS `Nationality`,
  1 AS `Phone Number`,
  1 AS `Email`,
  1 AS `Notice Period`,
  1 AS `Desired Salary`,
  1 AS `Motiviation Speech`,
  1 AS `Profile Picture URL`,
  1 AS `Sign Up Date`,
  1 AS `Last Change Date`,
  1 AS `Count Search Missions`,
  1 AS `Has Search Missions`,
  1 AS `Count Matches`,
  1 AS `Has Matches` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_educations`
--

DROP TABLE IF EXISTS `pbi_users_educations`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_educations`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_educations` AS SELECT
 1 AS `Education Id`,
  1 AS `User Id`,
  1 AS `From`,
  1 AS `Until`,
  1 AS `Subject Course`,
  1 AS `Subject Name`,
  1 AS `Graduation`,
  1 AS `University`,
  1 AS `City` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_hard_skills`
--

DROP TABLE IF EXISTS `pbi_users_hard_skills`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_hard_skills`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_hard_skills` AS SELECT
 1 AS `Hard Skill Id`,
  1 AS `User Id`,
  1 AS `Hard Skill Name`,
  1 AS `Hard Skill Rating`,
  1 AS `Hard Skill Level`,
  1 AS `Hard Skill Period of Time` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_languages`
--

DROP TABLE IF EXISTS `pbi_users_languages`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_languages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_languages` AS SELECT
 1 AS `Language Id`,
  1 AS `User Id`,
  1 AS `Language Name`,
  1 AS `Language Level`,
  1 AS `Rating`,
  1 AS `Proficiency Examination` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_search_missions`
--

DROP TABLE IF EXISTS `pbi_users_search_missions`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_search_missions` AS SELECT
 1 AS `User Search Mission Id`,
  1 AS `User Id`,
  1 AS `Activated`,
  1 AS `Deleted`,
  1 AS `Matching Quote`,
  1 AS `Minimum Salary`,
  1 AS `Part Time Job`,
  1 AS `Annual Vacation`,
  1 AS `Fixed Term Employment`,
  1 AS `Zip Code`,
  1 AS `Zip Code Latitude`,
  1 AS `Zip Code longitude`,
  1 AS `Radius`,
  1 AS `Job Site`,
  1 AS `Travel Willingness`,
  1 AS `Start Date` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_search_missions_benefits`
--

DROP TABLE IF EXISTS `pbi_users_search_missions_benefits`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_benefits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_search_missions_benefits` AS SELECT
 1 AS `User Search Mission Id`,
  1 AS `Benefits` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_search_missions_company_sizes`
--

DROP TABLE IF EXISTS `pbi_users_search_missions_company_sizes`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_company_sizes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_search_missions_company_sizes` AS SELECT
 1 AS `User Search Mission Id`,
  1 AS `Company Sizes` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_search_missions_equipments`
--

DROP TABLE IF EXISTS `pbi_users_search_missions_equipments`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_equipments`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_search_missions_equipments` AS SELECT
 1 AS `User Search Mission Id`,
  1 AS `Equipments` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_search_missions_functional_areas`
--

DROP TABLE IF EXISTS `pbi_users_search_missions_functional_areas`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_functional_areas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_search_missions_functional_areas` AS SELECT
 1 AS `User Search Mission Id`,
  1 AS `Functional Areas` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_search_missions_industries`
--

DROP TABLE IF EXISTS `pbi_users_search_missions_industries`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_industries`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_search_missions_industries` AS SELECT
 1 AS `User Search Mission Id`,
  1 AS `Industries` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_search_missions_job_levels`
--

DROP TABLE IF EXISTS `pbi_users_search_missions_job_levels`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_job_levels`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_search_missions_job_levels` AS SELECT
 1 AS `User Search Mission Id`,
  1 AS `Job Levels` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_search_missions_job_positions`
--

DROP TABLE IF EXISTS `pbi_users_search_missions_job_positions`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_job_positions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_search_missions_job_positions` AS SELECT
 1 AS `User Search Mission Id`,
  1 AS `Job Positions` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_search_missions_workplaces`
--

DROP TABLE IF EXISTS `pbi_users_search_missions_workplaces`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_workplaces`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_search_missions_workplaces` AS SELECT
 1 AS `User Search Mission Id`,
  1 AS `Workplaces` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_soft_skills_methodical_competences`
--

DROP TABLE IF EXISTS `pbi_users_soft_skills_methodical_competences`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_soft_skills_methodical_competences`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_soft_skills_methodical_competences` AS SELECT
 1 AS `User Id`,
  1 AS `User Full Name`,
  1 AS `Methodical Competence` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_soft_skills_personal_competences`
--

DROP TABLE IF EXISTS `pbi_users_soft_skills_personal_competences`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_soft_skills_personal_competences`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_soft_skills_personal_competences` AS SELECT
 1 AS `User Id`,
  1 AS `User Full Name`,
  1 AS `Personal Competence` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_soft_skills_social_competences`
--

DROP TABLE IF EXISTS `pbi_users_soft_skills_social_competences`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_soft_skills_social_competences`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_soft_skills_social_competences` AS SELECT
 1 AS `User Id`,
  1 AS `User Full Name`,
  1 AS `Social Competences` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_values`
--

DROP TABLE IF EXISTS `pbi_users_values`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_values`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_values` AS SELECT
 1 AS `User Id`,
  1 AS `Autonomy or Hierarchy`,
  1 AS `Career or Work-Life-Balance`,
  1 AS `Casual or Formal`,
  1 AS `Competition or Reserved`,
  1 AS `Distance or Closeness`,
  1 AS `Foreground or Background`,
  1 AS `Freedom or Specification`,
  1 AS `Goal or Journey`,
  1 AS `Innovation or Tradition`,
  1 AS `International or Local`,
  1 AS `Me or We`,
  1 AS `Risk or Certainty`,
  1 AS `Specific or Generic` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pbi_users_work_experiences`
--

DROP TABLE IF EXISTS `pbi_users_work_experiences`;
/*!50001 DROP VIEW IF EXISTS `pbi_users_work_experiences`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_users_work_experiences` AS SELECT
 1 AS `Work Experience Id`,
  1 AS `User Id`,
  1 AS `From`,
  1 AS `Until`,
  1 AS `Job Title`,
  1 AS `Job Position`,
  1 AS `Job Level`,
  1 AS `Company`,
  1 AS `Industries`,
  1 AS `City`,
  1 AS `Task Description` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_company_search_mission_general_conditions`
--

DROP TABLE IF EXISTS `vw_company_search_mission_general_conditions`;
/*!50001 DROP VIEW IF EXISTS `vw_company_search_mission_general_conditions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_company_search_mission_general_conditions` AS SELECT
 1 AS `Search Mission Id`,
  1 AS `Company Id`,
  1 AS `Company Name`,
  1 AS `Industries`,
  1 AS `Company Size`,
  1 AS `Functioinal Area`,
  1 AS `Job Level`,
  1 AS `Travel Willingness`,
  1 AS `Annual Vacation`,
  1 AS `Fixed Term Employment` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_fct_company`
--

DROP TABLE IF EXISTS `vw_fct_company`;
/*!50001 DROP VIEW IF EXISTS `vw_fct_company`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_fct_company` AS SELECT
 1 AS `id`,
  1 AS `cognito_id`,
  1 AS `company_name`,
  1 AS `company_description`,
  1 AS `company_size`,
  1 AS `website`,
  1 AS `street`,
  1 AS `zip_code`,
  1 AS `city`,
  1 AS `country_name`,
  1 AS `billing_company_name`,
  1 AS `billing_street`,
  1 AS `billing_zip_code`,
  1 AS `billing_city`,
  1 AS `billing_country_name`,
  1 AS `contact_person_title`,
  1 AS `contact_person_academic_degree`,
  1 AS `contact_person_gender`,
  1 AS `contact_person_first_name`,
  1 AS `contact_person_last_name`,
  1 AS `contact_person_phone_number`,
  1 AS `contact_person_email`,
  1 AS `company_logo_url` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_fct_company_search_mission`
--

DROP TABLE IF EXISTS `vw_fct_company_search_mission`;
/*!50001 DROP VIEW IF EXISTS `vw_fct_company_search_mission`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_fct_company_search_mission` AS SELECT
 1 AS `search_mission_id`,
  1 AS `company_id`,
  1 AS `creation_date`,
  1 AS `expiration_date`,
  1 AS `activated`,
  1 AS `deactivated_reason`,
  1 AS `deleted`,
  1 AS `matching_quote`,
  1 AS `job_title`,
  1 AS `job_postion`,
  1 AS `job_level`,
  1 AS `job_description`,
  1 AS `department_name`,
  1 AS `department_head_count`,
  1 AS `department_description`,
  1 AS `functional_area`,
  1 AS `location_street_and_house_number`,
  1 AS `locaction_zip_code`,
  1 AS `location_city`,
  1 AS `location_latitude`,
  1 AS `location_longitude`,
  1 AS `job_site`,
  1 AS `travel_willingness`,
  1 AS `fixed_term_employment`,
  1 AS `part_time_job`,
  1 AS `maximum_salary`,
  1 AS `annual_vacation`,
  1 AS `start_date`,
  1 AS `graduation`,
  1 AS `graduation_rating`,
  1 AS `duration_job_position`,
  1 AS `job_position_job_level`,
  1 AS `duration_job_level_work_experience`,
  1 AS `duration_industry` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_fct_company_search_mission_industries`
--

DROP TABLE IF EXISTS `vw_fct_company_search_mission_industries`;
/*!50001 DROP VIEW IF EXISTS `vw_fct_company_search_mission_industries`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_fct_company_search_mission_industries` AS SELECT
 1 AS `search_mission_id`,
  1 AS `industries` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_user_search_mission_general_conditions`
--

DROP TABLE IF EXISTS `vw_user_search_mission_general_conditions`;
/*!50001 DROP VIEW IF EXISTS `vw_user_search_mission_general_conditions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_user_search_mission_general_conditions` AS SELECT
 1 AS `Search Mission Id`,
  1 AS `User Id`,
  1 AS `User Full Name`,
  1 AS `Industries`,
  1 AS `Company Sizes`,
  1 AS `Functional Areas`,
  1 AS `Job Levels`,
  1 AS `Travel Willingness`,
  1 AS `Annual Vacation`,
  1 AS `Fixed Term Employment` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_user_search_mission_without_matching`
--

DROP TABLE IF EXISTS `vw_user_search_mission_without_matching`;
/*!50001 DROP VIEW IF EXISTS `vw_user_search_mission_without_matching`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_user_search_mission_without_matching` AS SELECT
 1 AS `Search Mission Id`,
  1 AS `User Id`,
  1 AS `User Full Name`,
  1 AS `Activated`,
  1 AS `Deleted` */;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `meta`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `meta` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `meta`;

--
-- Table structure for table `etl_activity_log`
--

DROP TABLE IF EXISTS `etl_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etl_activity_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lsn` bigint(20) DEFAULT NULL,
  `source_schema` varchar(100) DEFAULT NULL,
  `source_table` varchar(100) DEFAULT NULL,
  `target_schema` varchar(100) DEFAULT NULL,
  `target_table` varchar(100) DEFAULT NULL,
  `etl_operation` varchar(1) DEFAULT NULL,
  `row_count` bigint(20) DEFAULT NULL,
  `log_message` varchar(1000) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `log_time` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30637 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `excellentrecruit_dump_log`
--

DROP TABLE IF EXISTS `excellentrecruit_dump_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `excellentrecruit_dump_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dump_file` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `load_sessions`
--

DROP TABLE IF EXISTS `load_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `load_sessions` (
  `lsn` int(11) NOT NULL AUTO_INCREMENT,
  `start` datetime DEFAULT current_timestamp(),
  `stop` datetime DEFAULT NULL,
  `dump_date` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`lsn`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `pbi_last_etl`
--

DROP TABLE IF EXISTS `pbi_last_etl`;
/*!50001 DROP VIEW IF EXISTS `pbi_last_etl`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pbi_last_etl` AS SELECT
 1 AS `lsn`,
  1 AS `START`,
  1 AS `stop`,
  1 AS `dump_date`,
  1 AS `status` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_last_etl`
--

DROP TABLE IF EXISTS `vw_last_etl`;
/*!50001 DROP VIEW IF EXISTS `vw_last_etl`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_last_etl` AS SELECT
 1 AS `lsn`,
  1 AS `start`,
  1 AS `stop`,
  1 AS `dump_date`,
  1 AS `status` */;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `staging`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `staging` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `staging`;

--
-- Table structure for table `academic_degree_audit`
--

DROP TABLE IF EXISTS `academic_degree_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic_degree_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `academic_degree_master`
--

DROP TABLE IF EXISTS `academic_degree_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic_degree_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `academic_degree_origin`
--

DROP TABLE IF EXISTS `academic_degree_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic_degree_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benefit_audit`
--

DROP TABLE IF EXISTS `benefit_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benefit_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benefit_master`
--

DROP TABLE IF EXISTS `benefit_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benefit_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benefit_origin`
--

DROP TABLE IF EXISTS `benefit_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benefit_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_audit`
--

DROP TABLE IF EXISTS `company_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_audit` (
  `id` binary(16) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_company_name` varchar(255) DEFAULT NULL,
  `billing_street` varchar(255) DEFAULT NULL,
  `billing_zip_code` varchar(255) DEFAULT NULL,
  `cognito_id` varchar(255) DEFAULT NULL,
  `company_description` longtext DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `profile_picture_id` varchar(255) DEFAULT NULL,
  `profile_picture_url` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `academic_degree_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `billing_country_id` int(11) DEFAULT NULL,
  `company_size_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_benefits_audit`
--

DROP TABLE IF EXISTS `company_benefits_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_benefits_audit` (
  `company_id` binary(16) NOT NULL,
  `benefits_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`benefits_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_benefits_master`
--

DROP TABLE IF EXISTS `company_benefits_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_benefits_master` (
  `company_id` binary(16) NOT NULL,
  `benefits_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`benefits_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_benefits_origin`
--

DROP TABLE IF EXISTS `company_benefits_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_benefits_origin` (
  `company_id` binary(16) NOT NULL,
  `benefits_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`company_id`,`benefits_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_equipments_audit`
--

DROP TABLE IF EXISTS `company_equipments_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_equipments_audit` (
  `company_id` binary(16) NOT NULL,
  `equipments_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`equipments_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_equipments_master`
--

DROP TABLE IF EXISTS `company_equipments_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_equipments_master` (
  `company_id` binary(16) NOT NULL,
  `equipments_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`equipments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_equipments_origin`
--

DROP TABLE IF EXISTS `company_equipments_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_equipments_origin` (
  `company_id` binary(16) NOT NULL,
  `equipments_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`company_id`,`equipments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_industries_audit`
--

DROP TABLE IF EXISTS `company_industries_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_industries_audit` (
  `company_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`industries_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_industries_master`
--

DROP TABLE IF EXISTS `company_industries_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_industries_master` (
  `company_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_industries_origin`
--

DROP TABLE IF EXISTS `company_industries_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_industries_origin` (
  `company_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`company_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_master`
--

DROP TABLE IF EXISTS `company_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_master` (
  `id` binary(16) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_company_name` varchar(255) DEFAULT NULL,
  `billing_street` varchar(255) DEFAULT NULL,
  `billing_zip_code` varchar(255) DEFAULT NULL,
  `cognito_id` varchar(255) DEFAULT NULL,
  `company_description` longtext DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `profile_picture_id` varchar(255) DEFAULT NULL,
  `profile_picture_url` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `academic_degree_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `billing_country_id` int(11) DEFAULT NULL,
  `company_size_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_origin`
--

DROP TABLE IF EXISTS `company_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_origin` (
  `id` binary(16) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_company_name` varchar(255) DEFAULT NULL,
  `billing_street` varchar(255) DEFAULT NULL,
  `billing_zip_code` varchar(255) DEFAULT NULL,
  `cognito_id` varchar(255) DEFAULT NULL,
  `company_description` longtext DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `profile_picture_id` varchar(255) DEFAULT NULL,
  `profile_picture_url` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `academic_degree_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `billing_country_id` int(11) DEFAULT NULL,
  `company_size_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_size_audit`
--

DROP TABLE IF EXISTS `company_size_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_size_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_size_master`
--

DROP TABLE IF EXISTS `company_size_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_size_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_size_origin`
--

DROP TABLE IF EXISTS `company_size_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_size_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_workplaces_audit`
--

DROP TABLE IF EXISTS `company_workplaces_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_workplaces_audit` (
  `company_id` binary(16) NOT NULL,
  `workplaces_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`workplaces_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_workplaces_master`
--

DROP TABLE IF EXISTS `company_workplaces_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_workplaces_master` (
  `company_id` binary(16) NOT NULL,
  `workplaces_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`,`workplaces_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_workplaces_origin`
--

DROP TABLE IF EXISTS `company_workplaces_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_workplaces_origin` (
  `company_id` binary(16) NOT NULL,
  `workplaces_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`company_id`,`workplaces_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consent_audit`
--

DROP TABLE IF EXISTS `consent_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consent_audit` (
  `reference_type` varchar(31) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `privacy_policy_accepted_at` datetime(6) DEFAULT NULL,
  `privacy_policy_version` varchar(255) DEFAULT NULL,
  `tos_accepted_at` datetime(6) DEFAULT NULL,
  `tos_version` varchar(255) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consent_master`
--

DROP TABLE IF EXISTS `consent_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consent_master` (
  `reference_type` varchar(31) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `privacy_policy_accepted_at` datetime(6) DEFAULT NULL,
  `privacy_policy_version` varchar(255) DEFAULT NULL,
  `tos_accepted_at` datetime(6) DEFAULT NULL,
  `tos_version` varchar(255) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consent_origin`
--

DROP TABLE IF EXISTS `consent_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consent_origin` (
  `reference_type` varchar(31) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `privacy_policy_accepted_at` datetime(6) DEFAULT NULL,
  `privacy_policy_version` varchar(255) DEFAULT NULL,
  `tos_accepted_at` datetime(6) DEFAULT NULL,
  `tos_version` varchar(255) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_values_audit`
--

DROP TABLE IF EXISTS `core_values_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_values_audit` (
  `reference_type` varchar(31) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `autonomy_or_hierarchy` varchar(255) DEFAULT NULL,
  `career_or_work_life_balance` varchar(255) DEFAULT NULL,
  `casual_or_formal` varchar(255) DEFAULT NULL,
  `competition_or_reserved` varchar(255) DEFAULT NULL,
  `distance_or_closeness` varchar(255) DEFAULT NULL,
  `foreground_or_background` varchar(255) DEFAULT NULL,
  `freedom_or_specification` varchar(255) DEFAULT NULL,
  `goal_or_journey` varchar(255) DEFAULT NULL,
  `innovation_or_tradition` varchar(255) DEFAULT NULL,
  `international_or_local` varchar(255) DEFAULT NULL,
  `me_or_we` varchar(255) DEFAULT NULL,
  `risk_or_certainty` varchar(255) DEFAULT NULL,
  `specific_or_generic` varchar(255) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_values_master`
--

DROP TABLE IF EXISTS `core_values_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_values_master` (
  `reference_type` varchar(31) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `autonomy_or_hierarchy` varchar(255) DEFAULT NULL,
  `career_or_work_life_balance` varchar(255) DEFAULT NULL,
  `casual_or_formal` varchar(255) DEFAULT NULL,
  `competition_or_reserved` varchar(255) DEFAULT NULL,
  `distance_or_closeness` varchar(255) DEFAULT NULL,
  `foreground_or_background` varchar(255) DEFAULT NULL,
  `freedom_or_specification` varchar(255) DEFAULT NULL,
  `goal_or_journey` varchar(255) DEFAULT NULL,
  `innovation_or_tradition` varchar(255) DEFAULT NULL,
  `international_or_local` varchar(255) DEFAULT NULL,
  `me_or_we` varchar(255) DEFAULT NULL,
  `risk_or_certainty` varchar(255) DEFAULT NULL,
  `specific_or_generic` varchar(255) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_values_origin`
--

DROP TABLE IF EXISTS `core_values_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_values_origin` (
  `reference_type` varchar(31) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `autonomy_or_hierarchy` varchar(255) DEFAULT NULL,
  `career_or_work_life_balance` varchar(255) DEFAULT NULL,
  `casual_or_formal` varchar(255) DEFAULT NULL,
  `competition_or_reserved` varchar(255) DEFAULT NULL,
  `distance_or_closeness` varchar(255) DEFAULT NULL,
  `foreground_or_background` varchar(255) DEFAULT NULL,
  `freedom_or_specification` varchar(255) DEFAULT NULL,
  `goal_or_journey` varchar(255) DEFAULT NULL,
  `innovation_or_tradition` varchar(255) DEFAULT NULL,
  `international_or_local` varchar(255) DEFAULT NULL,
  `me_or_we` varchar(255) DEFAULT NULL,
  `risk_or_certainty` varchar(255) DEFAULT NULL,
  `specific_or_generic` varchar(255) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_audit`
--

DROP TABLE IF EXISTS `country_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_audit` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_master`
--

DROP TABLE IF EXISTS `country_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_master` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_origin`
--

DROP TABLE IF EXISTS `country_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_origin` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `declined_by_company_reason_audit`
--

DROP TABLE IF EXISTS `declined_by_company_reason_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declined_by_company_reason_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `declined_by_company_reason_master`
--

DROP TABLE IF EXISTS `declined_by_company_reason_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declined_by_company_reason_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `declined_by_company_reason_origin`
--

DROP TABLE IF EXISTS `declined_by_company_reason_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declined_by_company_reason_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `declined_by_user_reason_audit`
--

DROP TABLE IF EXISTS `declined_by_user_reason_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declined_by_user_reason_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `declined_by_user_reason_master`
--

DROP TABLE IF EXISTS `declined_by_user_reason_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declined_by_user_reason_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `declined_by_user_reason_origin`
--

DROP TABLE IF EXISTS `declined_by_user_reason_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declined_by_user_reason_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `education_audit`
--

DROP TABLE IF EXISTS `education_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_audit` (
  `id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `subject_course` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `graduation_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `education_master`
--

DROP TABLE IF EXISTS `education_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_master` (
  `id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `subject_course` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `graduation_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `education_origin`
--

DROP TABLE IF EXISTS `education_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_origin` (
  `id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `subject_course` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `graduation_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equipment_audit`
--

DROP TABLE IF EXISTS `equipment_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equipment_master`
--

DROP TABLE IF EXISTS `equipment_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equipment_origin`
--

DROP TABLE IF EXISTS `equipment_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `functional_area_audit`
--

DROP TABLE IF EXISTS `functional_area_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `functional_area_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `functional_area_master`
--

DROP TABLE IF EXISTS `functional_area_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `functional_area_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `functional_area_origin`
--

DROP TABLE IF EXISTS `functional_area_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `functional_area_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gender_audit`
--

DROP TABLE IF EXISTS `gender_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gender_master`
--

DROP TABLE IF EXISTS `gender_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gender_origin`
--

DROP TABLE IF EXISTS `gender_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `graduation_audit`
--

DROP TABLE IF EXISTS `graduation_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graduation_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `graduation_master`
--

DROP TABLE IF EXISTS `graduation_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graduation_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `graduation_origin`
--

DROP TABLE IF EXISTS `graduation_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graduation_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_audit`
--

DROP TABLE IF EXISTS `hard_skill_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_audit` (
  `id` bigint(20) NOT NULL,
  `period_of_time_and_level_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_company_search_audit`
--

DROP TABLE IF EXISTS `hard_skill_company_search_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_company_search_audit` (
  `id` bigint(20) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_company_search_master`
--

DROP TABLE IF EXISTS `hard_skill_company_search_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_company_search_master` (
  `id` bigint(20) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_company_search_origin`
--

DROP TABLE IF EXISTS `hard_skill_company_search_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_company_search_origin` (
  `id` bigint(20) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_level_audit`
--

DROP TABLE IF EXISTS `hard_skill_level_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_level_audit` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_level_master`
--

DROP TABLE IF EXISTS `hard_skill_level_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_level_master` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_level_origin`
--

DROP TABLE IF EXISTS `hard_skill_level_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_level_origin` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_master`
--

DROP TABLE IF EXISTS `hard_skill_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_master` (
  `id` bigint(20) NOT NULL,
  `period_of_time_and_level_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_name_audit`
--

DROP TABLE IF EXISTS `hard_skill_name_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_name_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_name_master`
--

DROP TABLE IF EXISTS `hard_skill_name_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_name_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_name_origin`
--

DROP TABLE IF EXISTS `hard_skill_name_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_name_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_origin`
--

DROP TABLE IF EXISTS `hard_skill_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_origin` (
  `id` bigint(20) NOT NULL,
  `period_of_time_and_level_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_time_and_level_audit`
--

DROP TABLE IF EXISTS `hard_skill_time_and_level_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_time_and_level_audit` (
  `id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `period_of_time_id` int(11) DEFAULT NULL,
  `skill_level_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_time_and_level_master`
--

DROP TABLE IF EXISTS `hard_skill_time_and_level_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_time_and_level_master` (
  `id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `period_of_time_id` int(11) DEFAULT NULL,
  `skill_level_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_time_and_level_origin`
--

DROP TABLE IF EXISTS `hard_skill_time_and_level_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_time_and_level_origin` (
  `id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `period_of_time_id` int(11) DEFAULT NULL,
  `skill_level_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_time_audit`
--

DROP TABLE IF EXISTS `hard_skill_time_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_time_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_time_master`
--

DROP TABLE IF EXISTS `hard_skill_time_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_time_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hard_skill_time_origin`
--

DROP TABLE IF EXISTS `hard_skill_time_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hard_skill_time_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `industry_audit`
--

DROP TABLE IF EXISTS `industry_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `industry_master`
--

DROP TABLE IF EXISTS `industry_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `industry_origin`
--

DROP TABLE IF EXISTS `industry_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_level_audit`
--

DROP TABLE IF EXISTS `job_level_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_level_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_level_master`
--

DROP TABLE IF EXISTS `job_level_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_level_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_level_origin`
--

DROP TABLE IF EXISTS `job_level_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_level_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_position_audit`
--

DROP TABLE IF EXISTS `job_position_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_position_audit` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_position_master`
--

DROP TABLE IF EXISTS `job_position_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_position_master` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_position_origin`
--

DROP TABLE IF EXISTS `job_position_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_position_origin` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_site_audit`
--

DROP TABLE IF EXISTS `job_site_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_site_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_site_master`
--

DROP TABLE IF EXISTS `job_site_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_site_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_site_origin`
--

DROP TABLE IF EXISTS `job_site_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_site_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_company_audit`
--

DROP TABLE IF EXISTS `language_company_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_company_audit` (
  `id` bigint(20) NOT NULL,
  `level_id` int(11) DEFAULT NULL,
  `name_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_company_master`
--

DROP TABLE IF EXISTS `language_company_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_company_master` (
  `id` bigint(20) NOT NULL,
  `level_id` int(11) DEFAULT NULL,
  `name_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_company_origin`
--

DROP TABLE IF EXISTS `language_company_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_company_origin` (
  `id` bigint(20) NOT NULL,
  `level_id` int(11) DEFAULT NULL,
  `name_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_level_audit`
--

DROP TABLE IF EXISTS `language_level_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_level_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_level_master`
--

DROP TABLE IF EXISTS `language_level_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_level_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_level_origin`
--

DROP TABLE IF EXISTS `language_level_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_level_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_name_audit`
--

DROP TABLE IF EXISTS `language_name_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_name_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_name_master`
--

DROP TABLE IF EXISTS `language_name_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_name_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_name_origin`
--

DROP TABLE IF EXISTS `language_name_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_name_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_user_audit`
--

DROP TABLE IF EXISTS `language_user_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_user_audit` (
  `id` bigint(20) NOT NULL,
  `language_proficiency_examination` bit(1) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `name_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_user_master`
--

DROP TABLE IF EXISTS `language_user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_user_master` (
  `id` bigint(20) NOT NULL,
  `language_proficiency_examination` bit(1) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `name_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language_user_origin`
--

DROP TABLE IF EXISTS `language_user_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_user_origin` (
  `id` bigint(20) NOT NULL,
  `language_proficiency_examination` bit(1) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `name_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marital_status_audit`
--

DROP TABLE IF EXISTS `marital_status_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marital_status_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marital_status_master`
--

DROP TABLE IF EXISTS `marital_status_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marital_status_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marital_status_origin`
--

DROP TABLE IF EXISTS `marital_status_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marital_status_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matching_audit`
--

DROP TABLE IF EXISTS `matching_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matching_audit` (
  `id` binary(16) NOT NULL,
  `accepted_by_company` datetime(6) DEFAULT NULL,
  `accepted_by_user` datetime(6) DEFAULT NULL,
  `core_values_result` decimal(19,2) DEFAULT NULL,
  `data_last_modified` datetime(6) DEFAULT NULL,
  `declined_by_company` datetime(6) DEFAULT NULL,
  `declined_by_user` datetime(6) DEFAULT NULL,
  `education_result` decimal(19,2) DEFAULT NULL,
  `general_conditions_result` decimal(19,2) DEFAULT NULL,
  `hard_skill_result` decimal(19,2) DEFAULT NULL,
  `language_result` decimal(19,2) DEFAULT NULL,
  `last_matching` datetime(6) DEFAULT NULL,
  `overall_weighted_company_result` decimal(19,2) DEFAULT NULL,
  `overall_weighted_user_result` decimal(19,2) DEFAULT NULL,
  `perks_result` decimal(19,2) DEFAULT NULL,
  `soft_skill_result` decimal(19,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `work_experience_result` decimal(19,2) DEFAULT NULL,
  `declined_by_company_reason_id` int(11) DEFAULT NULL,
  `declined_by_user_reason_id` int(11) DEFAULT NULL,
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `search_mission_user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matching_master`
--

DROP TABLE IF EXISTS `matching_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matching_master` (
  `id` binary(16) NOT NULL,
  `accepted_by_company` datetime(6) DEFAULT NULL,
  `accepted_by_user` datetime(6) DEFAULT NULL,
  `core_values_result` decimal(19,2) DEFAULT NULL,
  `data_last_modified` datetime(6) DEFAULT NULL,
  `declined_by_company` datetime(6) DEFAULT NULL,
  `declined_by_user` datetime(6) DEFAULT NULL,
  `education_result` decimal(19,2) DEFAULT NULL,
  `general_conditions_result` decimal(19,2) DEFAULT NULL,
  `hard_skill_result` decimal(19,2) DEFAULT NULL,
  `language_result` decimal(19,2) DEFAULT NULL,
  `last_matching` datetime(6) DEFAULT NULL,
  `overall_weighted_company_result` decimal(19,2) DEFAULT NULL,
  `overall_weighted_user_result` decimal(19,2) DEFAULT NULL,
  `perks_result` decimal(19,2) DEFAULT NULL,
  `soft_skill_result` decimal(19,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `work_experience_result` decimal(19,2) DEFAULT NULL,
  `declined_by_company_reason_id` int(11) DEFAULT NULL,
  `declined_by_user_reason_id` int(11) DEFAULT NULL,
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `search_mission_user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matching_origin`
--

DROP TABLE IF EXISTS `matching_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matching_origin` (
  `id` binary(16) NOT NULL,
  `accepted_by_company` datetime(6) DEFAULT NULL,
  `accepted_by_user` datetime(6) DEFAULT NULL,
  `core_values_result` decimal(19,2) DEFAULT NULL,
  `data_last_modified` datetime(6) DEFAULT NULL,
  `declined_by_company` datetime(6) DEFAULT NULL,
  `declined_by_user` datetime(6) DEFAULT NULL,
  `education_result` decimal(19,2) DEFAULT NULL,
  `general_conditions_result` decimal(19,2) DEFAULT NULL,
  `hard_skill_result` decimal(19,2) DEFAULT NULL,
  `language_result` decimal(19,2) DEFAULT NULL,
  `last_matching` datetime(6) DEFAULT NULL,
  `overall_weighted_company_result` decimal(19,2) DEFAULT NULL,
  `overall_weighted_user_result` decimal(19,2) DEFAULT NULL,
  `perks_result` decimal(19,2) DEFAULT NULL,
  `soft_skill_result` decimal(19,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `work_experience_result` decimal(19,2) DEFAULT NULL,
  `declined_by_company_reason_id` int(11) DEFAULT NULL,
  `declined_by_user_reason_id` int(11) DEFAULT NULL,
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `search_mission_user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `methodical_competence_audit`
--

DROP TABLE IF EXISTS `methodical_competence_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `methodical_competence_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `methodical_competence_master`
--

DROP TABLE IF EXISTS `methodical_competence_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `methodical_competence_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `methodical_competence_origin`
--

DROP TABLE IF EXISTS `methodical_competence_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `methodical_competence_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nationality_audit`
--

DROP TABLE IF EXISTS `nationality_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationality_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nationality_master`
--

DROP TABLE IF EXISTS `nationality_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationality_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nationality_origin`
--

DROP TABLE IF EXISTS `nationality_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationality_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personal_competence_audit`
--

DROP TABLE IF EXISTS `personal_competence_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_competence_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personal_competence_master`
--

DROP TABLE IF EXISTS `personal_competence_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_competence_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personal_competence_origin`
--

DROP TABLE IF EXISTS `personal_competence_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_competence_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_audit`
--

DROP TABLE IF EXISTS `search_mission_company_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_audit` (
  `id` binary(16) NOT NULL,
  `activated` bit(1) DEFAULT NULL,
  `annual_vacation` int(11) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `deactivated_reason` varchar(255) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `department_description` longtext DEFAULT NULL,
  `duration_industry` int(11) DEFAULT NULL,
  `duration_job_level_work_experience` int(11) DEFAULT NULL,
  `duration_job_position` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `fixed_term_employment` bit(1) DEFAULT NULL,
  `head_count` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `job_location_latitude` double DEFAULT NULL,
  `job_location_longitude` double DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `matching_quote` int(11) DEFAULT NULL,
  `maximum_salary` int(11) DEFAULT NULL,
  `part_time_job` bit(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `task_description` longtext DEFAULT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `functional_area_id` int(11) DEFAULT NULL,
  `graduation_id` int(11) DEFAULT NULL,
  `job_level_id` int(11) DEFAULT NULL,
  `job_level_work_experience_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `job_position_id` bigint(20) DEFAULT NULL,
  `job_site_id` int(11) DEFAULT NULL,
  `travel_willingness_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_hard_skills_audit`
--

DROP TABLE IF EXISTS `search_mission_company_hard_skills_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_hard_skills_audit` (
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `hard_skills_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`hard_skills_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_hard_skills_master`
--

DROP TABLE IF EXISTS `search_mission_company_hard_skills_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_hard_skills_master` (
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `hard_skills_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`hard_skills_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_hard_skills_origin`
--

DROP TABLE IF EXISTS `search_mission_company_hard_skills_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_hard_skills_origin` (
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `hard_skills_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`hard_skills_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_industries_audit`
--

DROP TABLE IF EXISTS `search_mission_company_industries_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_industries_audit` (
  `search_mission_company_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`industries_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_industries_master`
--

DROP TABLE IF EXISTS `search_mission_company_industries_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_industries_master` (
  `search_mission_company_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_industries_origin`
--

DROP TABLE IF EXISTS `search_mission_company_industries_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_industries_origin` (
  `search_mission_company_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_job_positions_audit`
--

DROP TABLE IF EXISTS `search_mission_company_job_positions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_job_positions_audit` (
  `search_mission_company_id` binary(16) NOT NULL,
  `job_positions_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`job_positions_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_job_positions_master`
--

DROP TABLE IF EXISTS `search_mission_company_job_positions_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_job_positions_master` (
  `search_mission_company_id` binary(16) NOT NULL,
  `job_positions_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`job_positions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_job_positions_origin`
--

DROP TABLE IF EXISTS `search_mission_company_job_positions_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_job_positions_origin` (
  `search_mission_company_id` binary(16) NOT NULL,
  `job_positions_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`job_positions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_languages_audit`
--

DROP TABLE IF EXISTS `search_mission_company_languages_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_languages_audit` (
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `languages_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`languages_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_languages_master`
--

DROP TABLE IF EXISTS `search_mission_company_languages_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_languages_master` (
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `languages_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`languages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_languages_origin`
--

DROP TABLE IF EXISTS `search_mission_company_languages_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_languages_origin` (
  `search_mission_company_id` binary(16) DEFAULT NULL,
  `languages_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`languages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_master`
--

DROP TABLE IF EXISTS `search_mission_company_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_master` (
  `id` binary(16) NOT NULL,
  `activated` bit(1) DEFAULT NULL,
  `annual_vacation` int(11) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `deactivated_reason` varchar(255) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `department_description` longtext DEFAULT NULL,
  `duration_industry` int(11) DEFAULT NULL,
  `duration_job_level_work_experience` int(11) DEFAULT NULL,
  `duration_job_position` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `fixed_term_employment` bit(1) DEFAULT NULL,
  `head_count` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `job_location_latitude` double DEFAULT NULL,
  `job_location_longitude` double DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `matching_quote` int(11) DEFAULT NULL,
  `maximum_salary` int(11) DEFAULT NULL,
  `part_time_job` bit(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `task_description` longtext DEFAULT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `functional_area_id` int(11) DEFAULT NULL,
  `graduation_id` int(11) DEFAULT NULL,
  `job_level_id` int(11) DEFAULT NULL,
  `job_level_work_experience_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `job_position_id` bigint(20) DEFAULT NULL,
  `job_site_id` int(11) DEFAULT NULL,
  `travel_willingness_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_methodical_competences_audit`
--

DROP TABLE IF EXISTS `search_mission_company_methodical_competences_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_methodical_competences_audit` (
  `search_mission_company_id` binary(16) NOT NULL,
  `methodical_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`methodical_competences_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_methodical_competences_master`
--

DROP TABLE IF EXISTS `search_mission_company_methodical_competences_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_methodical_competences_master` (
  `search_mission_company_id` binary(16) NOT NULL,
  `methodical_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`methodical_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_methodical_competences_origin`
--

DROP TABLE IF EXISTS `search_mission_company_methodical_competences_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_methodical_competences_origin` (
  `search_mission_company_id` binary(16) NOT NULL,
  `methodical_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`methodical_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_origin`
--

DROP TABLE IF EXISTS `search_mission_company_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_origin` (
  `id` binary(16) NOT NULL,
  `activated` bit(1) DEFAULT NULL,
  `annual_vacation` int(11) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `deactivated_reason` varchar(255) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `department_description` longtext DEFAULT NULL,
  `duration_industry` int(11) DEFAULT NULL,
  `duration_job_level_work_experience` int(11) DEFAULT NULL,
  `duration_job_position` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `fixed_term_employment` bit(1) DEFAULT NULL,
  `head_count` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `job_location_latitude` double DEFAULT NULL,
  `job_location_longitude` double DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `matching_quote` int(11) DEFAULT NULL,
  `maximum_salary` int(11) DEFAULT NULL,
  `part_time_job` bit(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `task_description` longtext DEFAULT NULL,
  `company_id` binary(16) DEFAULT NULL,
  `functional_area_id` int(11) DEFAULT NULL,
  `graduation_id` int(11) DEFAULT NULL,
  `job_level_id` int(11) DEFAULT NULL,
  `job_level_work_experience_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `job_position_id` bigint(20) DEFAULT NULL,
  `job_site_id` int(11) DEFAULT NULL,
  `travel_willingness_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_personal_competences_audit`
--

DROP TABLE IF EXISTS `search_mission_company_personal_competences_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_personal_competences_audit` (
  `search_mission_company_id` binary(16) NOT NULL,
  `personal_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`personal_competences_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_personal_competences_master`
--

DROP TABLE IF EXISTS `search_mission_company_personal_competences_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_personal_competences_master` (
  `search_mission_company_id` binary(16) NOT NULL,
  `personal_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`personal_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_personal_competences_origin`
--

DROP TABLE IF EXISTS `search_mission_company_personal_competences_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_personal_competences_origin` (
  `search_mission_company_id` binary(16) NOT NULL,
  `personal_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`personal_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_social_competences_audit`
--

DROP TABLE IF EXISTS `search_mission_company_social_competences_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_social_competences_audit` (
  `search_mission_company_id` binary(16) NOT NULL,
  `social_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`social_competences_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_social_competences_master`
--

DROP TABLE IF EXISTS `search_mission_company_social_competences_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_social_competences_master` (
  `search_mission_company_id` binary(16) NOT NULL,
  `social_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`social_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_social_competences_origin`
--

DROP TABLE IF EXISTS `search_mission_company_social_competences_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_social_competences_origin` (
  `search_mission_company_id` binary(16) NOT NULL,
  `social_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`social_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_subjects_audit`
--

DROP TABLE IF EXISTS `search_mission_company_subjects_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_subjects_audit` (
  `search_mission_company_id` binary(16) NOT NULL,
  `subjects_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`subjects_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_subjects_master`
--

DROP TABLE IF EXISTS `search_mission_company_subjects_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_subjects_master` (
  `search_mission_company_id` binary(16) NOT NULL,
  `subjects_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`subjects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_company_subjects_origin`
--

DROP TABLE IF EXISTS `search_mission_company_subjects_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_company_subjects_origin` (
  `search_mission_company_id` binary(16) NOT NULL,
  `subjects_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_company_id`,`subjects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_audit`
--

DROP TABLE IF EXISTS `search_mission_user_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_audit` (
  `id` binary(16) NOT NULL,
  `activated` bit(1) DEFAULT NULL,
  `annual_vacation` int(11) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `fixed_term_employment` bit(1) DEFAULT NULL,
  `matching_quote` int(11) DEFAULT NULL,
  `minimum_salary` int(11) DEFAULT NULL,
  `part_time_job` bit(1) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `zip_code_latitude` double DEFAULT NULL,
  `zip_code_longitude` double DEFAULT NULL,
  `job_site_id` int(11) DEFAULT NULL,
  `travel_willingness_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_benefits_audit`
--

DROP TABLE IF EXISTS `search_mission_user_benefits_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_benefits_audit` (
  `search_mission_user_id` binary(16) NOT NULL,
  `benefits_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`benefits_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_benefits_master`
--

DROP TABLE IF EXISTS `search_mission_user_benefits_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_benefits_master` (
  `search_mission_user_id` binary(16) NOT NULL,
  `benefits_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`benefits_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_benefits_origin`
--

DROP TABLE IF EXISTS `search_mission_user_benefits_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_benefits_origin` (
  `search_mission_user_id` binary(16) NOT NULL,
  `benefits_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`benefits_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_company_sizes_audit`
--

DROP TABLE IF EXISTS `search_mission_user_company_sizes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_company_sizes_audit` (
  `search_mission_user_id` binary(16) NOT NULL,
  `company_sizes_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`company_sizes_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_company_sizes_master`
--

DROP TABLE IF EXISTS `search_mission_user_company_sizes_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_company_sizes_master` (
  `search_mission_user_id` binary(16) NOT NULL,
  `company_sizes_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`company_sizes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_company_sizes_origin`
--

DROP TABLE IF EXISTS `search_mission_user_company_sizes_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_company_sizes_origin` (
  `search_mission_user_id` binary(16) NOT NULL,
  `company_sizes_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`company_sizes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_equipments_audit`
--

DROP TABLE IF EXISTS `search_mission_user_equipments_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_equipments_audit` (
  `search_mission_user_id` binary(16) NOT NULL,
  `equipments_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`equipments_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_equipments_master`
--

DROP TABLE IF EXISTS `search_mission_user_equipments_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_equipments_master` (
  `search_mission_user_id` binary(16) NOT NULL,
  `equipments_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`equipments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_equipments_origin`
--

DROP TABLE IF EXISTS `search_mission_user_equipments_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_equipments_origin` (
  `search_mission_user_id` binary(16) NOT NULL,
  `equipments_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`equipments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_functional_areas_audit`
--

DROP TABLE IF EXISTS `search_mission_user_functional_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_functional_areas_audit` (
  `search_mission_user_id` binary(16) NOT NULL,
  `functional_areas_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`functional_areas_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_functional_areas_master`
--

DROP TABLE IF EXISTS `search_mission_user_functional_areas_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_functional_areas_master` (
  `search_mission_user_id` binary(16) NOT NULL,
  `functional_areas_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`functional_areas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_functional_areas_origin`
--

DROP TABLE IF EXISTS `search_mission_user_functional_areas_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_functional_areas_origin` (
  `search_mission_user_id` binary(16) NOT NULL,
  `functional_areas_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`functional_areas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_industries_audit`
--

DROP TABLE IF EXISTS `search_mission_user_industries_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_industries_audit` (
  `search_mission_user_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`industries_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_industries_master`
--

DROP TABLE IF EXISTS `search_mission_user_industries_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_industries_master` (
  `search_mission_user_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_industries_origin`
--

DROP TABLE IF EXISTS `search_mission_user_industries_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_industries_origin` (
  `search_mission_user_id` binary(16) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_job_levels_audit`
--

DROP TABLE IF EXISTS `search_mission_user_job_levels_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_job_levels_audit` (
  `search_mission_user_id` binary(16) NOT NULL,
  `job_levels_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`job_levels_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_job_levels_master`
--

DROP TABLE IF EXISTS `search_mission_user_job_levels_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_job_levels_master` (
  `search_mission_user_id` binary(16) NOT NULL,
  `job_levels_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`job_levels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_job_levels_origin`
--

DROP TABLE IF EXISTS `search_mission_user_job_levels_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_job_levels_origin` (
  `search_mission_user_id` binary(16) NOT NULL,
  `job_levels_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`job_levels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_job_positions_audit`
--

DROP TABLE IF EXISTS `search_mission_user_job_positions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_job_positions_audit` (
  `search_mission_user_id` binary(16) NOT NULL,
  `job_positions_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`job_positions_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_job_positions_master`
--

DROP TABLE IF EXISTS `search_mission_user_job_positions_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_job_positions_master` (
  `search_mission_user_id` binary(16) NOT NULL,
  `job_positions_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`job_positions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_job_positions_origin`
--

DROP TABLE IF EXISTS `search_mission_user_job_positions_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_job_positions_origin` (
  `search_mission_user_id` binary(16) NOT NULL,
  `job_positions_id` bigint(20) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`job_positions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_master`
--

DROP TABLE IF EXISTS `search_mission_user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_master` (
  `id` binary(16) NOT NULL,
  `activated` bit(1) DEFAULT NULL,
  `annual_vacation` int(11) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `fixed_term_employment` bit(1) DEFAULT NULL,
  `matching_quote` int(11) DEFAULT NULL,
  `minimum_salary` int(11) DEFAULT NULL,
  `part_time_job` bit(1) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `zip_code_latitude` double DEFAULT NULL,
  `zip_code_longitude` double DEFAULT NULL,
  `job_site_id` int(11) DEFAULT NULL,
  `travel_willingness_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_origin`
--

DROP TABLE IF EXISTS `search_mission_user_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_origin` (
  `id` binary(16) NOT NULL,
  `activated` bit(1) DEFAULT NULL,
  `annual_vacation` int(11) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `fixed_term_employment` bit(1) DEFAULT NULL,
  `matching_quote` int(11) DEFAULT NULL,
  `minimum_salary` int(11) DEFAULT NULL,
  `part_time_job` bit(1) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `zip_code_latitude` double DEFAULT NULL,
  `zip_code_longitude` double DEFAULT NULL,
  `job_site_id` int(11) DEFAULT NULL,
  `travel_willingness_id` int(11) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_workplaces_audit`
--

DROP TABLE IF EXISTS `search_mission_user_workplaces_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_workplaces_audit` (
  `search_mission_user_id` binary(16) NOT NULL,
  `workplaces_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`workplaces_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_workplaces_master`
--

DROP TABLE IF EXISTS `search_mission_user_workplaces_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_workplaces_master` (
  `search_mission_user_id` binary(16) NOT NULL,
  `workplaces_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`workplaces_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `search_mission_user_workplaces_origin`
--

DROP TABLE IF EXISTS `search_mission_user_workplaces_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_mission_user_workplaces_origin` (
  `search_mission_user_id` binary(16) NOT NULL,
  `workplaces_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`search_mission_user_id`,`workplaces_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `social_competence_audit`
--

DROP TABLE IF EXISTS `social_competence_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_competence_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `social_competence_master`
--

DROP TABLE IF EXISTS `social_competence_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_competence_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `social_competence_origin`
--

DROP TABLE IF EXISTS `social_competence_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_competence_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_audit`
--

DROP TABLE IF EXISTS `soft_skill_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_audit` (
  `id` bigint(20) NOT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_master`
--

DROP TABLE IF EXISTS `soft_skill_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_master` (
  `id` bigint(20) NOT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_methodical_competences_audit`
--

DROP TABLE IF EXISTS `soft_skill_methodical_competences_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_methodical_competences_audit` (
  `soft_skill_id` bigint(20) NOT NULL,
  `methodical_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`soft_skill_id`,`methodical_competences_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_methodical_competences_master`
--

DROP TABLE IF EXISTS `soft_skill_methodical_competences_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_methodical_competences_master` (
  `soft_skill_id` bigint(20) NOT NULL,
  `methodical_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`soft_skill_id`,`methodical_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_methodical_competences_origin`
--

DROP TABLE IF EXISTS `soft_skill_methodical_competences_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_methodical_competences_origin` (
  `soft_skill_id` bigint(20) NOT NULL,
  `methodical_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`soft_skill_id`,`methodical_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_origin`
--

DROP TABLE IF EXISTS `soft_skill_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_origin` (
  `id` bigint(20) NOT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_personal_competences_audit`
--

DROP TABLE IF EXISTS `soft_skill_personal_competences_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_personal_competences_audit` (
  `soft_skill_id` bigint(20) NOT NULL,
  `personal_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`soft_skill_id`,`personal_competences_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_personal_competences_master`
--

DROP TABLE IF EXISTS `soft_skill_personal_competences_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_personal_competences_master` (
  `soft_skill_id` bigint(20) NOT NULL,
  `personal_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`soft_skill_id`,`personal_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_personal_competences_origin`
--

DROP TABLE IF EXISTS `soft_skill_personal_competences_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_personal_competences_origin` (
  `soft_skill_id` bigint(20) NOT NULL,
  `personal_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`soft_skill_id`,`personal_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_social_competences_audit`
--

DROP TABLE IF EXISTS `soft_skill_social_competences_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_social_competences_audit` (
  `soft_skill_id` bigint(20) NOT NULL,
  `social_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`soft_skill_id`,`social_competences_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_social_competences_master`
--

DROP TABLE IF EXISTS `soft_skill_social_competences_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_social_competences_master` (
  `soft_skill_id` bigint(20) NOT NULL,
  `social_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`soft_skill_id`,`social_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soft_skill_social_competences_origin`
--

DROP TABLE IF EXISTS `soft_skill_social_competences_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_skill_social_competences_origin` (
  `soft_skill_id` bigint(20) NOT NULL,
  `social_competences_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`soft_skill_id`,`social_competences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subject_audit`
--

DROP TABLE IF EXISTS `subject_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subject_master`
--

DROP TABLE IF EXISTS `subject_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subject_origin`
--

DROP TABLE IF EXISTS `subject_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `title_audit`
--

DROP TABLE IF EXISTS `title_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `title_master`
--

DROP TABLE IF EXISTS `title_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `title_origin`
--

DROP TABLE IF EXISTS `title_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `travel_willingness_audit`
--

DROP TABLE IF EXISTS `travel_willingness_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travel_willingness_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `travel_willingness_master`
--

DROP TABLE IF EXISTS `travel_willingness_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travel_willingness_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `travel_willingness_origin`
--

DROP TABLE IF EXISTS `travel_willingness_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travel_willingness_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_audit`
--

DROP TABLE IF EXISTS `user_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_audit` (
  `id` binary(16) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `cognito_id` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `desired_salary` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `motivation_speech` longtext DEFAULT NULL,
  `notice_period` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `profile_picture_id` varchar(255) DEFAULT NULL,
  `profile_picture_url` varchar(255) DEFAULT NULL,
  `academic_degree_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `marital_status_id` int(11) DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_master` (
  `id` binary(16) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `cognito_id` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `desired_salary` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `motivation_speech` longtext DEFAULT NULL,
  `notice_period` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `profile_picture_id` varchar(255) DEFAULT NULL,
  `profile_picture_url` varchar(255) DEFAULT NULL,
  `academic_degree_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `marital_status_id` int(11) DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_origin`
--

DROP TABLE IF EXISTS `user_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_origin` (
  `id` binary(16) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `cognito_id` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `desired_salary` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `motivation_speech` longtext DEFAULT NULL,
  `notice_period` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `profile_picture_id` varchar(255) DEFAULT NULL,
  `profile_picture_url` varchar(255) DEFAULT NULL,
  `academic_degree_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `marital_status_id` int(11) DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `work_experience_audit`
--

DROP TABLE IF EXISTS `work_experience_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_experience_audit` (
  `id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `task_description` longtext DEFAULT NULL,
  `job_level_id` int(11) DEFAULT NULL,
  `job_position_id` bigint(20) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `work_experience_industries_audit`
--

DROP TABLE IF EXISTS `work_experience_industries_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_experience_industries_audit` (
  `work_experience_id` bigint(20) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`work_experience_id`,`industries_id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `work_experience_industries_master`
--

DROP TABLE IF EXISTS `work_experience_industries_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_experience_industries_master` (
  `work_experience_id` bigint(20) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`work_experience_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `work_experience_industries_origin`
--

DROP TABLE IF EXISTS `work_experience_industries_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_experience_industries_origin` (
  `work_experience_id` bigint(20) NOT NULL,
  `industries_id` int(11) NOT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`work_experience_id`,`industries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `work_experience_master`
--

DROP TABLE IF EXISTS `work_experience_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_experience_master` (
  `id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `task_description` longtext DEFAULT NULL,
  `job_level_id` int(11) DEFAULT NULL,
  `job_position_id` bigint(20) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `work_experience_origin`
--

DROP TABLE IF EXISTS `work_experience_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_experience_origin` (
  `id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `task_description` longtext DEFAULT NULL,
  `job_level_id` int(11) DEFAULT NULL,
  `job_position_id` bigint(20) DEFAULT NULL,
  `user_id` binary(16) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workplace_audit`
--

DROP TABLE IF EXISTS `workplace_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workplace_audit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workplace_master`
--

DROP TABLE IF EXISTS `workplace_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workplace_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workplace_origin`
--

DROP TABLE IF EXISTS `workplace_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workplace_origin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zip_code_audit`
--

DROP TABLE IF EXISTS `zip_code_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_code_audit` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zip_code_master`
--

DROP TABLE IF EXISTS `zip_code_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_code_master` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zip_code_origin`
--

DROP TABLE IF EXISTS `zip_code_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_code_origin` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zip_code_position_audit`
--

DROP TABLE IF EXISTS `zip_code_position_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_code_position_audit` (
  `id` bigint(20) NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) NOT NULL,
  `etl_lsn` bigint(20) NOT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT current_timestamp(),
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`etl_row_checksum`,`etl_lsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zip_code_position_master`
--

DROP TABLE IF EXISTS `zip_code_position_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_code_position_master` (
  `id` bigint(20) NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  `etl_lsn` bigint(20) DEFAULT NULL,
  `etl_last_operation` varchar(1) DEFAULT NULL,
  `etl_timestamp` datetime DEFAULT NULL,
  `dataset_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zip_code_position_origin`
--

DROP TABLE IF EXISTS `zip_code_position_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_code_position_origin` (
  `id` bigint(20) NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `etl_row_checksum` binary(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `edwh`
--

USE `edwh`;

--
-- Final view structure for view `pbi_matchings`
--

/*!50001 DROP VIEW IF EXISTS `pbi_matchings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_matchings` AS select hex(`fm`.`id`) AS `Matching Id`,hex(`fm`.`search_mission_company_id`) AS `Search Mission Company Id`,hex(`fm`.`search_mission_user_id`) AS `Search Mission User Id`,hex(`usm`.`user_id`) AS `User Id`,`c`.`company_name` AS `Company Name`,`csm`.`job_title` AS `Job Title`,ifnull(group_concat(`jp`.`name` separator ', '),'None') AS `Job Position`,`fm`.`status` AS `Status`,`fm`.`data_last_modified` AS `Date Last Modified`,`fm`.`last_matching` AS `Last Matching`,`fm`.`accepted_by_company` AS `Accepted By Company`,`ddbcr`.`name` AS `Declined By Company Reason`,`fm`.`declined_by_company` AS `Delcined By Company`,`fm`.`accepted_by_user` AS `Accepted By User`,`ddbur`.`name` AS `Declined By User Reason`,`fm`.`declined_by_user` AS `Declined By User`,`fm`.`overall_weighted_company_result` / 100 AS `Overall Weighted Company Result`,`fm`.`overall_weighted_user_result` / 100 AS `Overall Weighted User Result`,`fm`.`work_experience_result` / 100 AS `Work Experience Result`,`fm`.`education_result` / 100 AS `Education Result`,`fm`.`language_result` / 100 AS `Language Result`,`fm`.`hard_skill_result` / 100 AS `Hard Skill Result`,`fm`.`soft_skill_result` / 100 AS `Soft Skill Result`,`fm`.`core_values_result` / 100 AS `Core Values Result`,`fm`.`perks_result` / 100 AS `Perks Result`,`fm`.`general_conditions_result` / 100 AS `General Conditions Result` from (((((((`fct_matching` `fm` left join `dim_declined_by_company_reason` `ddbcr` on(`fm`.`declined_by_company_reason_id` = `ddbcr`.`id`)) left join `dim_declined_by_user_reason` `ddbur` on(`fm`.`declined_by_user_reason_id` = `ddbur`.`id`)) left join `fct_user_search_mission` `usm` on(`fm`.`search_mission_user_id` = `usm`.`id`)) left join `fct_user_search_mission_job_positions` `usmjp` on(`usm`.`id` = `usmjp`.`search_mission_user_id`)) left join `dim_job_position` `jp` on(`usmjp`.`job_positions_id` = `jp`.`id`)) left join `fct_company_search_mission` `csm` on(`fm`.`search_mission_company_id` = `csm`.`id`)) left join `fct_company` `c` on(`csm`.`company_id` = `c`.`id`)) group by `fm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users` AS select hex(`edwh`.`fct_user`.`id`) AS `User Id`,`edwh`.`fct_user`.`cognito_id` AS `Cognito Id`,`edwh`.`dim_title`.`name` AS `Title`,ifnull(`edwh`.`dim_academic_degree`.`name`,'') AS `Academic Degree`,concat(`edwh`.`fct_user`.`first_name`,' ',`edwh`.`fct_user`.`last_name`) AS `Full Name`,`edwh`.`fct_user`.`first_name` AS `First Name`,`edwh`.`fct_user`.`last_name` AS `Last Name`,`edwh`.`fct_user`.`street` AS `Street`,`edwh`.`fct_user`.`zip_code` AS `Zip Code`,`edwh`.`fct_user`.`city` AS `City`,`edwh`.`dim_country`.`name` AS `Country`,`edwh`.`dim_gender`.`name` AS `Gender`,`edwh`.`dim_marital_status`.`name` AS `Material Status`,`edwh`.`fct_user`.`date_of_birth` AS `Date Of Birth`,`edwh`.`dim_nationality`.`name` AS `Nationality`,`edwh`.`fct_user`.`phone_number` AS `Phone Number`,`edwh`.`fct_user`.`email` AS `Email`,`edwh`.`fct_user`.`notice_period` AS `Notice Period`,`edwh`.`fct_user`.`desired_salary` AS `Desired Salary`,`edwh`.`fct_user`.`motivation_speech` AS `Motiviation Speech`,`edwh`.`fct_user`.`profile_picture_url` AS `Profile Picture URL`,`edwh`.`fct_user`.`dataset_created` AS `Sign Up Date`,`edwh`.`fct_user`.`dataset_last_updated` AS `Last Change Date`,coalesce(`search_missions_count`.`Count`,0) AS `Count Search Missions`,if(coalesce(`search_missions_count`.`Count`,0) > 0,'Yes','No') AS `Has Search Missions`,coalesce(`matches_count`.`Count`,0) AS `Count Matches`,if(coalesce(`matches_count`.`Count`,0) > 0,'Yes','No') AS `Has Matches` from ((((((((`edwh`.`fct_user` left join `edwh`.`dim_academic_degree` on(`edwh`.`fct_user`.`academic_degree_id` = `edwh`.`dim_academic_degree`.`id`)) left join `edwh`.`dim_country` on(`edwh`.`fct_user`.`country_id` = `edwh`.`dim_country`.`id`)) left join `edwh`.`dim_gender` on(`edwh`.`fct_user`.`gender_id` = `edwh`.`dim_gender`.`id`)) left join `edwh`.`dim_marital_status` on(`edwh`.`fct_user`.`marital_status_id` = `edwh`.`dim_marital_status`.`id`)) left join `edwh`.`dim_nationality` on(`edwh`.`fct_user`.`nationality_id` = `edwh`.`dim_nationality`.`id`)) left join `edwh`.`dim_title` on(`edwh`.`fct_user`.`title_id` = `edwh`.`dim_title`.`id`)) left join (select hex(`usm`.`user_id`) AS `User Id`,count(`fm`.`id`) AS `Count` from (`edwh`.`fct_matching` `fm` left join `edwh`.`fct_user_search_mission` `usm` on(`fm`.`search_mission_user_id` = `usm`.`id`)) group by `usm`.`user_id`) `matches_count` on(hex(`edwh`.`fct_user`.`id`) = `matches_count`.`User Id`)) left join (select hex(`edwh`.`fct_user_search_mission`.`user_id`) AS `User Id`,count(`edwh`.`fct_user_search_mission`.`id`) AS `Count` from `edwh`.`fct_user_search_mission` group by `edwh`.`fct_user_search_mission`.`user_id`) `search_missions_count` on(hex(`edwh`.`fct_user`.`id`) = `search_missions_count`.`User Id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_educations`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_educations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_educations` AS select `edu`.`id` AS `Education Id`,hex(`edu`.`user_id`) AS `User Id`,date_format(`edu`.`start_date`,'%d.%m.%Y') AS `From`,ifnull(date_format(`edu`.`end_date`,'%d.%m.%Y'),'now') AS `Until`,`edu`.`subject_course` AS `Subject Course`,`sub`.`name` AS `Subject Name`,`grad`.`name` AS `Graduation`,`edu`.`university` AS `University`,ifnull(`edu`.`city`,'') AS `City` from ((`fct_user_education` `edu` left join `dim_graduation` `grad` on(`edu`.`graduation_id` = `grad`.`id`)) left join `dim_subject` `sub` on(`edu`.`subject_id` = `sub`.`id`)) order by `edu`.`start_date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_hard_skills`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_hard_skills`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_hard_skills` AS select `uhs`.`id` AS `Hard Skill Id`,hex(`uhs`.`user_id`) AS `User Id`,`hsn`.`name` AS `Hard Skill Name`,`hstal`.`rating` AS `Hard Skill Rating`,`hsl`.`name` AS `Hard Skill Level`,`hst`.`name` AS `Hard Skill Period of Time` from ((((`fct_user_hard_skill` `uhs` left join `dim_hard_skill_name` `hsn` on(`uhs`.`skill_id` = `hsn`.`id`)) left join `dim_hard_skill_time_and_level` `hstal` on(`uhs`.`period_of_time_and_level_id` = `hstal`.`id`)) left join `dim_hard_skill_level` `hsl` on(`hstal`.`skill_level_id` = `hsl`.`id`)) left join `dim_hard_skill_time` `hst` on(`hstal`.`period_of_time_id` = `hst`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_languages`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_languages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_languages` AS select `ul`.`id` AS `Language Id`,hex(`ul`.`user_id`) AS `User Id`,`ln`.`name` AS `Language Name`,`ll`.`name` AS `Language Level`,`ll`.`rating` AS `Rating`,`ul`.`language_proficiency_examination` AS `Proficiency Examination` from ((`fct_user_language` `ul` left join `dim_language_name` `ln` on(`ul`.`name_id` = `ln`.`id`)) left join `dim_language_level` `ll` on(`ul`.`level_id` = `ll`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_search_missions`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_search_missions` AS select hex(`fusm`.`id`) AS `User Search Mission Id`,hex(`fusm`.`user_id`) AS `User Id`,case when `fusm`.`activated` = 0 then 'No' else 'Yes' end AS `Activated`,case when `fusm`.`deleted` = 0 then 'No' else 'Yes' end AS `Deleted`,`fusm`.`matching_quote` AS `Matching Quote`,`fusm`.`minimum_salary` AS `Minimum Salary`,case when `fusm`.`part_time_job` = 0 then 'No' else 'Yes' end AS `Part Time Job`,`fusm`.`annual_vacation` AS `Annual Vacation`,case when `fusm`.`fixed_term_employment` = 0 then 'No' else 'Yes' end AS `Fixed Term Employment`,`fusm`.`zip_code` AS `Zip Code`,`fusm`.`zip_code_latitude` AS `Zip Code Latitude`,`fusm`.`zip_code_longitude` AS `Zip Code longitude`,`fusm`.`radius` AS `Radius`,ifnull(`djs`.`name`,'') AS `Job Site`,ifnull(`dtw`.`name`,'') AS `Travel Willingness`,ifnull(`fusm`.`start_date`,'') AS `Start Date` from ((`fct_user_search_mission` `fusm` left join `dim_job_site` `djs` on(`fusm`.`job_site_id` = `djs`.`id`)) left join `dim_travel_willingness` `dtw` on(`fusm`.`travel_willingness_id` = `dtw`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_search_missions_benefits`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_benefits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_search_missions_benefits` AS select hex(`fusm`.`id`) AS `User Search Mission Id`,group_concat(`db`.`name` separator ', ') AS `Benefits` from ((`fct_user_search_mission` `fusm` left join `fct_user_search_mission_benefits` `fusmb` on(`fusmb`.`search_mission_user_id` = `fusm`.`id`)) left join `dim_benefit` `db` on(`fusmb`.`benefits_id` = `db`.`id`)) group by `fusm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_search_missions_company_sizes`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_company_sizes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_search_missions_company_sizes` AS select hex(`fusm`.`id`) AS `User Search Mission Id`,group_concat(`dcs`.`name` separator ', ') AS `Company Sizes` from ((`fct_user_search_mission` `fusm` left join `fct_user_search_mission_company_sizes` `fusmcs` on(`fusmcs`.`search_mission_user_id` = `fusm`.`id`)) left join `dim_company_size` `dcs` on(`fusmcs`.`company_sizes_id` = `dcs`.`id`)) group by `fusm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_search_missions_equipments`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_equipments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_search_missions_equipments` AS select hex(`fusm`.`id`) AS `User Search Mission Id`,group_concat(`de`.`name` separator ', ') AS `Equipments` from ((`fct_user_search_mission` `fusm` left join `fct_user_search_mission_equipments` `fusme` on(`fusme`.`search_mission_user_id` = `fusm`.`id`)) left join `dim_equipment` `de` on(`fusme`.`equipments_id` = `de`.`id`)) group by `fusm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_search_missions_functional_areas`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_functional_areas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_search_missions_functional_areas` AS select hex(`fusm`.`id`) AS `User Search Mission Id`,group_concat(`dfa`.`name` separator ', ') AS `Functional Areas` from ((`fct_user_search_mission` `fusm` left join `fct_user_search_mission_functional_areas` `fusmfa` on(`fusmfa`.`search_mission_user_id` = `fusm`.`id`)) left join `dim_functional_area` `dfa` on(`fusmfa`.`functional_areas_id` = `dfa`.`id`)) group by `fusm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_search_missions_industries`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_industries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_search_missions_industries` AS select hex(`fusm`.`id`) AS `User Search Mission Id`,group_concat(`di`.`name` separator ', ') AS `Industries` from ((`fct_user_search_mission` `fusm` left join `fct_user_search_mission_industries` `fusmi` on(`fusmi`.`search_mission_user_id` = `fusm`.`id`)) left join `dim_industry` `di` on(`fusmi`.`industries_id` = `di`.`id`)) group by `fusm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_search_missions_job_levels`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_job_levels`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_search_missions_job_levels` AS select hex(`fusm`.`id`) AS `User Search Mission Id`,group_concat(`djl`.`name` separator ', ') AS `Job Levels` from ((`fct_user_search_mission` `fusm` left join `fct_user_search_mission_job_levels` `fusmjl` on(`fusm`.`id` = `fusmjl`.`search_mission_user_id`)) left join `dim_job_level` `djl` on(`fusmjl`.`job_levels_id` = `djl`.`id`)) group by `fusm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_search_missions_job_positions`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_job_positions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_search_missions_job_positions` AS select hex(`fusm`.`id`) AS `User Search Mission Id`,ifnull(group_concat(`djp`.`name` separator ', '),'None') AS `Job Positions` from ((`fct_user_search_mission` `fusm` left join `fct_user_search_mission_job_positions` `smujp` on(`fusm`.`id` = `smujp`.`search_mission_user_id`)) left join `dim_job_position` `djp` on(`smujp`.`job_positions_id` = `djp`.`id`)) group by `fusm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_search_missions_workplaces`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_search_missions_workplaces`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_search_missions_workplaces` AS select hex(`fusm`.`id`) AS `User Search Mission Id`,group_concat(`dw`.`name` separator ', ') AS `Workplaces` from ((`fct_user_search_mission` `fusm` left join `fct_user_search_mission_workplaces` `fusmw` on(`fusm`.`id` = `fusmw`.`search_mission_user_id`)) left join `dim_workplace` `dw` on(`fusmw`.`workplaces_id` = `dw`.`id`)) group by `fusm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_soft_skills_methodical_competences`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_soft_skills_methodical_competences`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_soft_skills_methodical_competences` AS select hex(`fussmc`.`user_id`) AS `User Id`,`fu`.`full_name` AS `User Full Name`,`dmc`.`name` AS `Methodical Competence` from ((`fct_user_soft_skill_methodical_competences` `fussmc` left join `fct_user` `fu` on(`fu`.`id` = `fussmc`.`user_id`)) left join `dim_methodical_competence` `dmc` on(`fussmc`.`methodical_competences_id` = `dmc`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_soft_skills_personal_competences`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_soft_skills_personal_competences`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_soft_skills_personal_competences` AS select hex(`fusspc`.`user_id`) AS `User Id`,`fu`.`full_name` AS `User Full Name`,`dpc`.`name` AS `Personal Competence` from ((`fct_user_soft_skill_personal_competences` `fusspc` left join `fct_user` `fu` on(`fu`.`id` = `fusspc`.`user_id`)) left join `dim_personal_competence` `dpc` on(`fusspc`.`personal_competences_id` = `dpc`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_soft_skills_social_competences`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_soft_skills_social_competences`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_soft_skills_social_competences` AS select hex(`usssc`.`user_id`) AS `User Id`,`fu`.`full_name` AS `User Full Name`,`dsc`.`name` AS `Social Competences` from ((`fct_user_soft_skill_social_competences` `usssc` left join `fct_user` `fu` on(`usssc`.`user_id` = `fu`.`id`)) left join `dim_social_competence` `dsc` on(`usssc`.`social_competences_id` = `dsc`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_values`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_values`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_values` AS select hex(`fct_user_core_values`.`user_id`) AS `User Id`,ifnull(`fct_user_core_values`.`autonomy_or_hierarchy`,'None') AS `Autonomy or Hierarchy`,ifnull(`fct_user_core_values`.`career_or_work_life_balance`,'None') AS `Career or Work-Life-Balance`,ifnull(`fct_user_core_values`.`casual_or_formal`,'None') AS `Casual or Formal`,ifnull(`fct_user_core_values`.`competition_or_reserved`,'None') AS `Competition or Reserved`,ifnull(`fct_user_core_values`.`distance_or_closeness`,'None') AS `Distance or Closeness`,ifnull(`fct_user_core_values`.`foreground_or_background`,'None') AS `Foreground or Background`,ifnull(`fct_user_core_values`.`freedom_or_specification`,'None') AS `Freedom or Specification`,ifnull(`fct_user_core_values`.`goal_or_journey`,'None') AS `Goal or Journey`,ifnull(`fct_user_core_values`.`innovation_or_tradition`,'None') AS `Innovation or Tradition`,ifnull(`fct_user_core_values`.`international_or_local`,'None') AS `International or Local`,ifnull(`fct_user_core_values`.`me_or_we`,'None') AS `Me or We`,ifnull(`fct_user_core_values`.`risk_or_certainty`,'None') AS `Risk or Certainty`,ifnull(`fct_user_core_values`.`specific_or_generic`,'None') AS `Specific or Generic` from `fct_user_core_values` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pbi_users_work_experiences`
--

/*!50001 DROP VIEW IF EXISTS `pbi_users_work_experiences`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_users_work_experiences` AS select `woex`.`id` AS `Work Experience Id`,hex(`woex`.`user_id`) AS `User Id`,date_format(`woex`.`start_date`,'%d.%m.%Y') AS `From`,ifnull(date_format(`woex`.`end_date`,'%d.%m.%Y'),'now') AS `Until`,`woex`.`job_title` AS `Job Title`,`pos`.`name` AS `Job Position`,`lvl`.`name` AS `Job Level`,`woex`.`company` AS `Company`,group_concat(`ind`.`name` separator ', ') AS `Industries`,ifnull(`woex`.`city`,'') AS `City`,ifnull(`woex`.`task_description`,'') AS `Task Description` from ((((`fct_user_work_experience` `woex` left join `dim_job_position` `pos` on(`woex`.`job_position_id` = `pos`.`id`)) left join `dim_job_level` `lvl` on(`woex`.`job_level_id` = `lvl`.`id`)) left join `fct_user_work_experience_industries` `woexi` on(`woex`.`id` = `woexi`.`work_experience_id`)) left join `dim_industry` `ind` on(`woexi`.`industries_id` = `ind`.`id`)) group by `woex`.`id` order by `woex`.`start_date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_company_search_mission_general_conditions`
--

/*!50001 DROP VIEW IF EXISTS `vw_company_search_mission_general_conditions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_company_search_mission_general_conditions` AS select hex(`csm`.`id`) AS `Search Mission Id`,hex(`csm`.`company_id`) AS `Company Id`,`c`.`company_name` AS `Company Name`,ifnull(group_concat(distinct `i`.`name` separator ', '),'None') AS `Industries`,`cz`.`name` AS `Company Size`,`fa`.`name` AS `Functioinal Area`,`jl`.`name` AS `Job Level`,`tw`.`name` AS `Travel Willingness`,`csm`.`annual_vacation` AS `Annual Vacation`,case when `csm`.`fixed_term_employment` = 1 then 'Yes' else 'No' end AS `Fixed Term Employment` from (((((((`fct_company_search_mission` `csm` join `fct_company` `c` on(`c`.`id` = `csm`.`company_id`)) left join `fct_company_search_mission_industries` `csmi` on(`csmi`.`search_mission_company_id` = `csm`.`id`)) left join `dim_industry` `i` on(`i`.`id` = `csmi`.`industries_id`)) left join `dim_company_size` `cz` on(`cz`.`id` = `c`.`company_size_id`)) left join `dim_functional_area` `fa` on(`fa`.`id` = `csm`.`functional_area_id`)) left join `dim_job_level` `jl` on(`jl`.`id` = `csm`.`job_level_id`)) left join `dim_travel_willingness` `tw` on(`tw`.`id` = `csm`.`travel_willingness_id`)) group by `csm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_fct_company`
--

/*!50001 DROP VIEW IF EXISTS `vw_fct_company`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_fct_company` AS select hex(`fct_company`.`id`) AS `id`,`fct_company`.`cognito_id` AS `cognito_id`,`fct_company`.`company_name` AS `company_name`,ifnull(`fct_company`.`company_description`,'') AS `company_description`,`dim_company_size`.`name` AS `company_size`,ifnull(`fct_company`.`website`,'') AS `website`,`fct_company`.`street` AS `street`,`fct_company`.`zip_code` AS `zip_code`,`fct_company`.`city` AS `city`,`dim_country`.`name` AS `country_name`,`fct_company`.`billing_company_name` AS `billing_company_name`,`fct_company`.`billing_street` AS `billing_street`,`fct_company`.`billing_zip_code` AS `billing_zip_code`,`fct_company`.`billing_city` AS `billing_city`,`dim_country`.`name` AS `billing_country_name`,`dim_title`.`name` AS `contact_person_title`,ifnull(`dim_academic_degree`.`name`,'') AS `contact_person_academic_degree`,ifnull(`dim_gender`.`name`,'') AS `contact_person_gender`,`fct_company`.`first_name` AS `contact_person_first_name`,`fct_company`.`last_name` AS `contact_person_last_name`,`fct_company`.`phone_number` AS `contact_person_phone_number`,`fct_company`.`email` AS `contact_person_email`,`fct_company`.`profile_picture_url` AS `company_logo_url` from (((((`fct_company` left join `dim_academic_degree` on(`fct_company`.`academic_degree_id` = `dim_academic_degree`.`id`)) left join `dim_country` on(`fct_company`.`country_id` = `dim_country`.`id`)) left join `dim_company_size` on(`fct_company`.`company_size_id` = `dim_company_size`.`id`)) left join `dim_gender` on(`fct_company`.`gender_id` = `dim_gender`.`id`)) left join `dim_title` on(`fct_company`.`title_id` = `dim_title`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_fct_company_search_mission`
--

/*!50001 DROP VIEW IF EXISTS `vw_fct_company_search_mission`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_fct_company_search_mission` AS select hex(`fcsm`.`id`) AS `search_mission_id`,hex(`fcsm`.`company_id`) AS `company_id`,`fcsm`.`creation_date` AS `creation_date`,`fcsm`.`expiration_date` AS `expiration_date`,`fcsm`.`activated` AS `activated`,ifnull(`fcsm`.`deactivated_reason`,'') AS `deactivated_reason`,`fcsm`.`deleted` AS `deleted`,`fcsm`.`matching_quote` AS `matching_quote`,`fcsm`.`job_title` AS `job_title`,`djp`.`name` AS `job_postion`,`djl`.`name` AS `job_level`,ifnull(`fcsm`.`task_description`,'') AS `job_description`,ifnull(`fcsm`.`department`,'') AS `department_name`,`fcsm`.`head_count` AS `department_head_count`,ifnull(`fcsm`.`department_description`,'') AS `department_description`,`dfa`.`name` AS `functional_area`,`fcsm`.`street` AS `location_street_and_house_number`,`fcsm`.`zip_code` AS `locaction_zip_code`,`fcsm`.`city` AS `location_city`,`fcsm`.`job_location_latitude` AS `location_latitude`,`fcsm`.`job_location_longitude` AS `location_longitude`,`djs`.`name` AS `job_site`,`dtw`.`name` AS `travel_willingness`,`fcsm`.`fixed_term_employment` AS `fixed_term_employment`,`fcsm`.`part_time_job` AS `part_time_job`,`fcsm`.`maximum_salary` AS `maximum_salary`,`fcsm`.`annual_vacation` AS `annual_vacation`,`fcsm`.`start_date` AS `start_date`,ifnull(`dg`.`name`,'') AS `graduation`,ifnull(`dg`.`rating`,'') AS `graduation_rating`,`fcsm`.`duration_job_position` AS `duration_job_position`,ifnull(`djlwe`.`name`,'') AS `job_position_job_level`,`fcsm`.`duration_job_level_work_experience` AS `duration_job_level_work_experience`,`fcsm`.`duration_industry` AS `duration_industry` from (((((((`fct_company_search_mission` `fcsm` left join `dim_job_position` `djp` on(`fcsm`.`job_position_id` = `djp`.`id`)) left join `dim_job_level` `djl` on(`fcsm`.`job_level_id` = `djl`.`id`)) left join `dim_job_level` `djlwe` on(`fcsm`.`job_level_work_experience_id` = `djlwe`.`id`)) left join `dim_functional_area` `dfa` on(`fcsm`.`functional_area_id` = `dfa`.`id`)) left join `dim_job_site` `djs` on(`fcsm`.`job_site_id` = `djs`.`id`)) left join `dim_travel_willingness` `dtw` on(`fcsm`.`travel_willingness_id` = `dtw`.`id`)) left join `dim_graduation` `dg` on(`fcsm`.`graduation_id` = `dg`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_fct_company_search_mission_industries`
--

/*!50001 DROP VIEW IF EXISTS `vw_fct_company_search_mission_industries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_fct_company_search_mission_industries` AS select hex(`fcsm`.`id`) AS `search_mission_id`,group_concat(`di`.`name` separator ', ') AS `industries` from ((`fct_company_search_mission` `fcsm` left join `fct_company_search_mission_industries` `fcsmi` on(`fcsmi`.`search_mission_company_id` = `fcsm`.`id`)) left join `dim_industry` `di` on(`di`.`id` = `fcsmi`.`industries_id`)) group by `fcsm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_user_search_mission_general_conditions`
--

/*!50001 DROP VIEW IF EXISTS `vw_user_search_mission_general_conditions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_user_search_mission_general_conditions` AS select hex(`usm`.`id`) AS `Search Mission Id`,hex(`usm`.`user_id`) AS `User Id`,`u`.`full_name` AS `User Full Name`,ifnull(group_concat(distinct `i`.`name` separator ', '),'None') AS `Industries`,ifnull(group_concat(distinct `cz`.`name` separator ', '),'None') AS `Company Sizes`,ifnull(group_concat(distinct `fa`.`name` separator ', '),'None') AS `Functional Areas`,ifnull(group_concat(distinct `jl`.`name` separator ', '),'None') AS `Job Levels`,ifnull(`tw`.`name`,'None') AS `Travel Willingness`,`usm`.`annual_vacation` AS `Annual Vacation`,case when `usm`.`fixed_term_employment` = 1 then 'Yes' else 'No' end AS `Fixed Term Employment` from ((((((((((`fct_user_search_mission` `usm` join `fct_user` `u` on(`u`.`id` = `usm`.`user_id`)) left join `fct_user_search_mission_industries` `usmi` on(`usmi`.`search_mission_user_id` = `usm`.`id`)) left join `dim_industry` `i` on(`i`.`id` = `usmi`.`industries_id`)) left join `fct_user_search_mission_company_sizes` `usmcz` on(`usmcz`.`search_mission_user_id` = `usm`.`id`)) left join `dim_company_size` `cz` on(`cz`.`id` = `usmcz`.`company_sizes_id`)) left join `fct_user_search_mission_functional_areas` `usmfa` on(`usmfa`.`search_mission_user_id` = `usm`.`id`)) left join `dim_functional_area` `fa` on(`fa`.`id` = `usmfa`.`functional_areas_id`)) left join `fct_user_search_mission_job_levels` `usmjl` on(`usmjl`.`search_mission_user_id` = `usm`.`id`)) left join `dim_job_level` `jl` on(`jl`.`id` = `usmjl`.`job_levels_id`)) left join `dim_travel_willingness` `tw` on(`tw`.`id` = `usm`.`travel_willingness_id`)) group by `usm`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_user_search_mission_without_matching`
--

/*!50001 DROP VIEW IF EXISTS `vw_user_search_mission_without_matching`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_user_search_mission_without_matching` AS select hex(`usm`.`id`) AS `Search Mission Id`,hex(`usm`.`user_id`) AS `User Id`,`u`.`full_name` AS `User Full Name`,`usm`.`activated` AS `Activated`,`usm`.`deleted` AS `Deleted` from ((`fct_user_search_mission` `usm` left join `fct_matching` `m` on(`m`.`search_mission_user_id` = `usm`.`id`)) left join `fct_user` `u` on(`u`.`id` = `usm`.`user_id`)) where `m`.`search_mission_user_id` is null */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `meta`
--

USE `meta`;

--
-- Final view structure for view `pbi_last_etl`
--

/*!50001 DROP VIEW IF EXISTS `pbi_last_etl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pbi_last_etl` AS select `load_sessions`.`lsn` AS `lsn`,`load_sessions`.`start` AS `START`,`load_sessions`.`stop` AS `stop`,`load_sessions`.`dump_date` AS `dump_date`,`load_sessions`.`status` AS `status` from `load_sessions` where `load_sessions`.`lsn` = (select max(`load_sessions`.`lsn`) from `load_sessions`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_last_etl`
--

/*!50001 DROP VIEW IF EXISTS `vw_last_etl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rob@matchcrowd`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_last_etl` AS select `load_sessions`.`lsn` AS `lsn`,`load_sessions`.`start` AS `start`,`load_sessions`.`stop` AS `stop`,`load_sessions`.`dump_date` AS `dump_date`,`load_sessions`.`status` AS `status` from `load_sessions` where `load_sessions`.`lsn` = (select max(`load_sessions`.`lsn`) from `load_sessions`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `staging`
--

USE `staging`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23 14:57:56
