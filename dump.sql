-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: phpmyadmin
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.10.1

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
  `fk_organization_name` varchar(128) NOT NULL,
  `fk_organization_city` varchar(45) NOT NULL,
  `fk_organization_state` varchar(45) NOT NULL,
  `fk_servicecost_id` int(11) NOT NULL,
  PRIMARY KEY (`fk_organization_name`,`fk_organization_city`,`fk_organization_state`,`fk_servicecost_id`),
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
  `fk_organization_name` varchar(128) NOT NULL,
  `fk_organization_city` varchar(45) NOT NULL,
  `fk_organization_state` varchar(45) NOT NULL,
  `fk_servicetype_id` int(11) NOT NULL,
  PRIMARY KEY (`fk_organization_name`,`fk_organization_city`,`fk_organization_state`,`fk_servicetype_id`),
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
  `fk_organization_name` varchar(128) NOT NULL,
  `fk_organization_city` varchar(45) NOT NULL,
  `fk_organization_state` varchar(45) NOT NULL,
  `fk_specialization_id` int(11) NOT NULL,
  PRIMARY KEY (`fk_organization_name`,`fk_organization_city`,`fk_organization_state`,`fk_specialization_id`),
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
  `fk_organization_name` varchar(128) NOT NULL,
  `fk_organization_city` varchar(45) NOT NULL,
  `fk_organization_state` varchar(45) NOT NULL,
  `fk_updates_id` int(11) NOT NULL,
  PRIMARY KEY (`fk_organization_name`,`fk_organization_city`,`fk_organization_state`,`fk_updates_id`),
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
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
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
  `phone` varchar(128) DEFAULT NULL,
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
INSERT INTO `organizations` VALUES ('00e78d39-2e5f-4085-9d33-8412a6c61621.SOME (So Others Might Eat)','Offers food, clothing, and health care, as well as services such as affordable housing, job training, addiction treatment, and counseling.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-797-8806',NULL,'www.some.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('01d6fc58-70c9-4e65-971c-354d2f264f54.National Gay and Lesbian Hotline','The Gay and Lesbian National Hotline offers free and confidential peer counseling, information, and local resources for cities and towns throughout the United States. The Gay and Lesbian National Hotline maintains over 18,000 resources for cities and towns all across the United Sates.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'?',NULL,'www.glnh.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('0459b440-c0db-4f99-bbaf-af042c6c65d3.Change ','Housing Support Center provides rental assistance to prevent eviction as well as utility bill assistance. Soup kitchen Monday- Friday 9:00AM-12:00PM. SHARE Program provides a week’s supply of food for $15. Employment referrals and counseling.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-387-3725',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('047ec931-a6f0-4479-94c9-02b54abe56c1.Bread for the City','Provides food pantry, clothing closet, housing, and public benefits assistance. Legal services related to housing, employment, child support/child custody, domestic violence and medical clinic.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-561-8587',NULL,'www.breadforthecity.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('04d9506a-6822-4ac4-9777-99330ccd089b.Johenning Baptist Community Center','Provides emergency food (approximately three days worth of food per person). Clothing service is also available daily from 10:30AM-6:00PM. GED classes are provided from 6:00PM-9:30PM Monday, Wednesday and Friday.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-561-5113',NULL,'www.dcbaptist.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('064b06c6-3b5b-4ab3-862f-3ba4b19969b3.Douglas Memorial United Methodist Church','Provides food bags, clothing, employment counseling, housing and rental search assistance and referrals. Hours for clothing are Tuesday and Wednesday 9:00AM-11:00AM.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-397-1562',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('0669b13e-bcbe-4507-8a68-3381cd4e1cc6.Mary House','Provides free housing for homeless families, transitional housing program, pre and post-natal services for women, a food pantry, clothing and furniture programs, crisis intervention, mothering classes, and employment search assistance. Also provides adult tutoring, after-school programs for children, and computer tutoring. ',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-635-0534',NULL,'www.maryhouse.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('071de881-bc0c-462a-9729-19042bc1a89b.National Center for Children and Families','Provides adolescent, community-based, family and foster care/adoption services',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-543-3217',NULL,'www.nccf-cares.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('07eae880-f69d-4838-89fa-ea2aee03153d.For the Love of Children (FLOC)','Provides foster care and family support for children in Washington who have been removed from their homes by DC\'s Child and Family Services Agency due to abuse or neglect.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-462-8686',NULL,'www.flocdc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('07effb68-3b53-4e6c-882b-3eb34604f041.DC Rape Crisis Center (DCRCC)','24-hour hotline; group and individual counseling services for rape and incest survivors and their families and friends; a companion program to accompany survivors to hospitals, courts and police proceedings; low-cost self-defense classes; training for professionals working with survivors.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-232-0789 ',NULL,'www.dcrcc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('08fadcbe-3f9b-4d33-8cbe-3fe446e6a890.WOFF (Women of Freedom Foundation)','They provide services to clients transitioning from abortion, depression, divorce, domestic violence, HIV/AIDS, loneliness, low self-esteem, rape, or rejection. Their services include a 30-day residential shelter, monthly domestic violence and self-esteem support groups, and life skills training.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202- 250-1699',NULL,'www.womenoffreedomfoundation.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('0a78d598-0b86-49df-a387-82a5f009fbef.Assumption Parish Outreach Roman Catholic Church','Provides emergency food, transportation funds and small amounts of emergency cash assistance as funds are available. Clothing room.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-561-4178',NULL,'www.assumptionchurch-dc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('0ba76758-c787-4ab8-93a9-14e5c4946fe9.Asian Women’s Self-Help Association','Provides culturally-specific, multi-lingual support and referral services to women of South Asian descent. Support group for survivors; toll-free help line for South Asian women; confidential, multi-lingual peer support in matters involving domestic and sexual violence, divorce, custody, abandonment, and acculturation; referrals to community resources; court accompaniment and advocacy; translation assistance in Hindi, Punjabi, Bengali, Gujrati, and Urdu; and emergency financial assistance.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-207-1248',NULL,'www.ashaforwomen.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('0d2b517c-d650-4a98-bb1a-b6c328517644.Bethany Women’s Center','Day shelter that provides breakfast, lunch, snack, activity programs, crafts, laundry, showers, clothing, counseling, referrals for other services, mental health and substance abuse referrals.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-483-3739',NULL,'www.bwhcbirthcenter.com',NULL,NULL,1,NULL,NULL,NULL,NULL),('0de224d7-277b-4e2f-97e7-cc5ed3321e2a.Johenning Baptist Community Center','Provides emergency food (approximately three days worth of food per person). Clothing service is also available daily from 10:30AM-6:00PM. GED classes are provided from 6:00PM-9:30PM Monday, Wednesday and Friday',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-561-5113',NULL,'www.dcbaptist.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('0fd20111-140a-4bde-87ef-96bf8043fce2.DC Senior Services Lead Agency Ward 5  Greater Washington Urban League, Aging Division','Comprehensive senior services for the District’s elderly residents and their caregivers. Each ward has one or more Lead Agencies that provide services to seniors in the ward, funded by the DC Office on Aging.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-529-8701',NULL,'www.gwul.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('11653791-b0f1-44df-812e-62ae102404f4.Sasha Bruce Youthwork ','Shelter and emergency services for adolescents, crisis/emergency shelter for children between the ages of 12-17 years old; independent living program for people ages 16-18; transitional living program for ages 18-21; and home-based counseling, crisis intervention and case management.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-675-9340 ',NULL,'www.sashabruce.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('11d9b265-70d7-451b-8827-084d9e6f99ff.Carl Vogel Center','Provides case management and mental health counseling, nutrition, treatment and education information for people living with HIV/AIDS. Also provides free HIV tests.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-638-0750',NULL,'www.carlvogelcenter.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('145effdb-5e8a-4331-a7ec-7749725aa9e1.Break the Cycle','Domestic violence prevention and early intervention services to youths between the ages of 12 and 24. Offers a domestic violence curriculum as a tool for decreasing crime and violence amongst the youth. Outreach and trainings on dating, domestic violence, and laws are conducted for the adult community. Legal assistance is available to adolescents at no cost. Services are also available in Spanish.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-654-4039 or 800-258-8840',NULL,'www.breakthecycle.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('15b0b4cd-1bc6-4b09-9fb4-caea413327ce.Covenant House','Job training, GED programs, housing, emergency shelter, and transitional living program, legal services, life skills and nutrition classes.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-610-9630',NULL,'www.covenanthouse.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('15b78454-29d1-4ed7-8f76-3a8fd2379916.Dinner Program for Homeless Women','Hot meals are served Monday-Friday 6:00PM daily for women and their children in the basement of the First Congregational Church. Also provides employment counseling; a Computer Workshop to teach computer skills, create cover letters and resumes and teach basic typing; free HIV testing; housing and shelter referrals; legal assistance once a week through the Washington Legal Clinic for the Homeless; and gives out toiletries.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-737-9311',NULL,'www.dphw.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('16be4867-4923-44f9-acfc-d2de8cf95f87.Suited For Change','Gives one set of professional clothing and training to women re-entering the workforce.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-293-0351',NULL,'www.suitedforchange.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('17cbf577-de2c-4229-b668-6617ddd3f1f7.Church of the Brethren Nutrition Program','Soup kitchen program providing lunch Monday-Friday, 11:30AM-1:30PM. Provides hot lunch and toiletries.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-546-8706',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('1815395d-b1e9-4029-806f-b2692dd60c23.Neighbors Consejo','Provides English as a Second Language (ESL) classes, employment counseling and job search assistance, computer classes, emergency food, clothing and financial assistance. Also provides drug and alcohol abuse counseling and treatment through Programa de Paz y Libertad, an inpatient treatment program that includes transitional housing, case management, counseling, and life skills classes.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-234-6855',NULL,'www.neigborsconsejo.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('1894b1d1-1bfa-48e6-b935-b83bae2c8022.The Women\'s Center','Provides case management, legal support and other support, psychotherapy for individuals, couples and families; support groups for survivors of sexual abuse (co-sponsored by the D.C. Rape Crisis Center); career counseling; and educational programs for self-development and personal growth.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-293-4580',NULL,'www.thewomenscenter.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('18c475b4-93dd-4280-abea-57788cae7d94.Lutheran Church of the Reformation Southeast Ministry','Offers GED classes, 3-week job readiness classes and job placement. Ex-offender support group meets Wednesday evenings at 6:00PM.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-562-2636',NULL,'www.southeastministry.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('18e5a4fe-a820-42fe-af0a-3d2fbc4dd640.Perry School Community Services Center ','Food bank, clothing bank, job training and placement program, daycare center, domestic violence counseling and advocacy, health clinic, GED classes, summer camp and after school programs.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-289-5874',NULL,'www.perryschool.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('1b1f43ec-e147-42b3-8514-ffadff033a64.The Women\'s Center','Provides case management, legal support and other support, psychotherapy for individuals, couples and families; support groups for survivors of sexual abuse (co-sponsored by the D.C. Rape Crisis Center); career counseling; and educational programs for self-development and personal growth.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-293-4580',NULL,'www.thewomenscenter.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('1e68118d-39a2-44f4-be5f-ccb30272ea2b.Perry School Community Services Center ','Food bank, clothing bank, job training and placement program, daycare center, domestic violence counseling and advocacy, health clinic, GED classes, summer camp and after school programs.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-289-5874',NULL,'www.perryschool.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('20d3b0cc-3299-4b5d-a622-6f85f54d5977.Benning Park Recreation Center ','Children two to five-years old are able to play in an organized and supervised environment.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-645-3957',NULL,'www.app.dpr.dc.gov/DPR/information/rec_center',NULL,NULL,1,NULL,NULL,NULL,NULL),('20f8cfe6-7903-49b9-a669-888cca90881a.DC Senior Services Lead AgencyWard 6UPO Senior Life Center Senior Services','Comprehensive senior services for the District’s elderly residents and their caregivers. Each ward has one or more Lead Agencies that provide services to seniors in the ward, funded by the DC Office on Aging.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-547-0569',NULL,'www.upo.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('2229b328-019a-4529-bde4-d458d6228db7.Iona Senior Services','Elder care program that provides assessment, planning and counseling, nutrition counseling, meals for homebound seniors, bus transportation, accompaniment to medical appointments, discount taxi vouchers, exercise and computer classes, flu shots and blood pressure screenings. Also provides information and referrals by telephone.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-895-9448',NULL,'www.iona.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('23050ad5-e287-435c-a119-1e2d7e691c8e.Healthy Babies Project','Provides parenting, childbirth education and health classes, prenatal yoga, book club, Parents Anonymous support groups as well as home visits. Teen empowerment programs (ages 12-21) motivate young adults to finish their education and care for children. Free immunization clinic on the 2nd and 4th Tuesday of every month.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-396-2809',NULL,'www.healthybabiesproject.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('23914f93-f3f9-4b27-b82e-bd19fbab3d60.Miriam’s Kitchen','Provides free hot breakfast Monday-Friday beginning at 6:30AM. Other services include an Alcoholics Anonymous meeting on Thursdays, a legal clinic on Wednesdays, and a doctor available on Fridays after breakfast. Case managers are available for counseling and referrals to other programs and resources in the city. ',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-452-8926',NULL,'www.miriamskitchen.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('2443aa21-4d6f-45c9-868e-2231925a7a9a.DC Department of Human Services- Office of Early Childhood Development Child Care Services ','Provides detailed list of licensed childcare providers in DC, as well as information on how to become a childcare provider. Also provides full fee assistance for unemployed TANF or disabled parents, disabled children, children in DC foster care, and teen parents attending school. Languages include Spanish, and printed materials in Korean, Vietnamese, and Chinese.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-727-0284',NULL,'www.acf.hhs.gov',NULL,NULL,1,NULL,NULL,NULL,NULL),('25f2171e-e078-45a2-894a-09600a349a70.Dinner Program for Homeless Women','Hot meals are served Monday-Friday 6:00PM daily for women and their children in the basement of the First Congregational Church. Also provides employment counseling; a Computer Workshop to teach computer skills, create cover letters and resumes and teach basic typing; free HIV testing; housing and shelter referrals; legal assistance once a week through the Washington Legal Clinic for the Homeless; and gives out toiletries.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-737-9311',NULL,'www.dphw.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('269b45c3-7932-4689-a3f7-8a454aecd61e.Rachel Women’s Center','Provides showers, laundry and referrals through Street Outreach Program. The Day Center provides breakfast and lunch, laundry and showers, and a Narcotics Anonymous meeting every day at 10:00AM. Permanent housing is available through the day program or other referral for single women with disabilities, including substance abuse or mental illness disabilities.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-682-1005',NULL,'www.rachaels.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('269e9054-f540-4e85-82da-1dd94bdc2304.District of Columbia Coalition Against Domestic Violence (DCCADV)','Provides education and training within the community, individual and systems advocacy, resource information, conducts research, and serves as a local and national resource on domestic violence.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-299-1181',NULL,'www.dccadv.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('272fd321-155a-4fe1-80cb-f7442a470452.Men Can Stop Rape','Provides educational workshops to teen audiences on gender equity and male violence.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-265-6530',NULL,'www.meancanstoprape.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('277f778f-5799-45ab-87b6-f7142c68e4ba.Johenning Baptist Community Center','Provides emergency food (approximately three days worth of food per person). Clothing service is also available daily from 10:30AM-6:00PM. GED classes are provided from 6:00PM-9:30PM Monday, Wednesday and Friday.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-561-5113',NULL,'www.dcbaptist.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('28761d5e-37ae-44ac-85e0-402dd48a67c6.Assumption Parish Outreach Roman Catholic Church','Provides emergency food, transportation funds and small amounts of emergency cash assistance as funds are available. Clothing room.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-561-4178',NULL,'www.assumptionchurch-dc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('289742de-4a44-4a23-a7d6-2d65076de8fe.Deaf Abused Women’s Network (DAWN)','Provides advocacy, referrals, individual and group support, and a 24 hour TTY crisis hotline for deaf, hard of hearing and deaf and blind victims of domestic violence and sexual assault.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-721-8293',NULL,'www.deafdawn.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('2988b7bb-bfc1-45aa-acbb-f57685f82890.Perry School Community Services Center ','Food bank, clothing bank, job training and placement program, daycare center, domestic violence counseling and advocacy, health clinic, GED classes, summer camp and after school programs.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-289-5874',NULL,'www.perryschool.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('2a13af0f-6e79-4178-97ce-be2bace38585.Perry School Community Services Center ','Food bank, clothing bank, job training and placement program, daycare center, domestic violence counseling and advocacy, health clinic, GED classes, summer camp and after school programs.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-289-5874',NULL,'www.perryschool.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('2d9d5684-70d7-4fb7-8df9-6129165de751.Georgetown Ministry Center','Mental and physical healthcare including a psychiatrist available one night per week, legal assistance, case management, help with disability and benefits applications, and information and referrals to other programs such as job training and placement programs, shelters and transitional housing.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-338-8301',NULL,' www.georgetownministrycenter.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('2e5ac988-2668-418d-96b7-21468d0f792f.7-2-9 Club','Support and social groups for those with a history of mental illness who have been admitted at some time in the past to St. Elizabeth’s Hospital. Two groups meet Wednesday nights from 7:00-9:00PM: persons who are currently in St. Elizabeth’s; and those who have been discharged but live in a community residential facility or their own apartments. The groups are free.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-547-7012',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('314ddf80-57cf-4ff9-aa21-32516ec2cc59.Near Northwest Community Improvement Corporation','Provides food bags, clothing, employment counseling, housing and rental search assistance and referrals. Hours for clothing are Tuesday and Wednesday 9:00AM-11:00AM.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-399-6900',NULL,'www.nwscdc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('31a458d9-5d7f-412c-8bc9-f0729de16083.Asian/Pacific Islander Domestic Violence Resource Project (DVRP)','Multi-lingual Advocacy, case management, civil legal representation, economic/financial advocacy, emergency assistance, immigration services, lesbian, gay, bisexual and transgender services, peer adult assistance, teen outreach services. DVRP has advocates who speak Cantonese, Farsi, Hindi, Hmong, Japanese, Korean, Mandarin, Nepali, Punjabi, Tagalog, Thai, Urdu, and Vietnamese.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-464-4477',NULL,'www.dvrp.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('3239f0c6-12bf-4c25-9ac2-c59ff39f1653.The DC Office on Aging','Carries out a comprehensive and coordinated system of health, education, employment, and social services for the District\'s elderly population.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-724-5622',NULL,'www.dcoa.dc.gov',NULL,NULL,1,NULL,NULL,NULL,NULL),('33305b44-7909-4ac6-8f18-14b7206d76a3.Hope Manna of Greater Washington','GED programs, social services, job networking, food and clothing distribution, worship services, Bible study, vacation Bible school and youth summer camp.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-388-0062',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('34e31d4c-e7bf-4b8c-8d64-1f661542a107.Perry School Community Services Center ','Food bank, clothing bank, job training and placement program, daycare center, domestic violence counseling and advocacy, health clinic, GED classes, summer camp and after school programs.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-289-5874',NULL,'www.perryschool.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('39e3dbd2-5a11-4919-86a7-26974930a15f.Mary House','Provides free housing for homeless families, transitional housing program, pre and post-natal services for women, a food pantry, clothing and furniture programs, crisis intervention, mothering classes, and employment search assistance. Also provides adult tutoring, after-school programs for children, and computer tutoring. ',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-635-0534',NULL,'www.maryhouse.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('3b2961d8-27f8-4d4d-ba5e-f0152abac438.Anacostia Community Service Center','Comprehensive case management assessments for senior citizens (60+) to determine the individual’s needs. The food pantry is open Monday-Friday, 9:00AM-12:00PM.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-610-0466',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('406b07b5-b4e8-4593-89a6-1991f94138b6.Near Northwest Community Improvement Corporation','Provides food bags, clothing, employment counseling, housing and rental search assistance and referrals. Hours for clothing are Tuesday and Wednesday 9:00AM-11:00AM.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-399-6900',NULL,'www.nwscdc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('40cbbf89-8937-4b77-bf67-430fe3aee440.Change ','Housing Support Center provides rental assistance to prevent eviction as well as utility bill assistance. Soup kitchen Monday- Friday 9:00AM-12:00PM. SHARE Program provides a week’s supply of food for $15. Employment referrals and counseling.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-387-3725',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('41979302-9447-45fb-832f-0cd4116da2c9.Brainfood','After-school programs teaching life skills, self-reliance, and empowerment through culinary arts for high school students. Program begins in October and lasts for one year; meets twice a week for two hours. Free.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-667-5515',NULL,'www.brain-food.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('45886b78-facf-4923-96ab-9acdddbafb2c.La Clinica del Pueblo','Provides free medical services, counseling and support for Hispanic and immigrant women who are experiencing domestic violence. Also offers substance abuse counseling, HIV/AIDS information and testing, and social services.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-462-4788',NULL,'www.lcdp.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('46d4b389-7498-420e-bf01-7aaf9c9a8cc6.Ramona\'s Way','Counseling, case management, and information and referral services are offered to chemically dependent battered women survivors of emotion, physical, and/or sexual abuse. Women receive admission assistance to treatment facilities. Open: Mondays, Wednesdays, and Fridays.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-561-3000 or 202-257-6790',NULL,'www.ramonasway.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('4b6cc6d7-16ea-4a9b-9906-fc2a6f6350d9.Bethany Women’s Center','Day shelter that provides breakfast, lunch, snack, activity programs, crafts, laundry, showers, clothing, counseling, referrals for other services, mental health and substance abuse referrals.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-483-3739',NULL,'www.bwhcbirthcenter.com',NULL,NULL,1,NULL,NULL,NULL,NULL),('4fcf9c2a-7804-444d-816e-6bbeb29a7d83.Adult Protective Services','Adult Protective Services (APS) investigates reports of abuse, neglect and exploitation of frail, elderly and disabled adults in the District of Columbia. APS also provides case management, counseling, and support services to vulnerable adults who have been abused, neglected or exploited.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-541-3950',NULL,'www.dhs.dc.gov',NULL,NULL,1,NULL,NULL,NULL,NULL),('503841a3-47f3-4d18-8af4-666b83ebd994.Dinner Program for Homeless Women','Hot meals are served Monday-Friday 6:00PM daily for women and their children in the basement of the First Congregational Church. Also provides employment counseling; a Computer Workshop to teach computer skills, create cover letters and resumes and teach basic typing; free HIV testing; housing and shelter referrals; legal assistance once a week through the Washington Legal Clinic for the Homeless; and gives out toiletries.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-737-9311',NULL,'www.dphw.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('50f31313-2d39-47d1-9e69-82bfd8bb5f64.Community Connections Mental Health Center','Provides sexual abuse, trauma, domestic violence, substance abuse, HIV/AIDS counseling as well as case management, parenting, and life skills assistance.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-546-1512',NULL,'www.atcommunityconnections.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('5131204a-2aae-4b25-bc96-506e4ffb15fd.Johenning Baptist Community Center','Provides emergency food (approximately three days worth of food per person). Clothing service is also available daily from 10:30AM-6:00PM. GED classes are provided from 6:00PM-9:30PM Monday, Wednesday and Friday.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-561-5113',NULL,'www.dcbaptist.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('53e24312-9227-404c-a25c-f5f8dea885ed.Capital Area Food Bank','Distributes food.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-526-5344',NULL,'www.capitalareafoodbank.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('59788078-ddd8-43ba-a79b-e1bca8f1590f.DAWN (Deaf Abused Women\'s Network)','Provides a 24-hour TTY crisis hotline for deaf, hard of hearing, and deaf/blind victims of domestic violence, sexual assault, and stalking. Educates the deaf organizations, agencies, and hearing service providers on domestic violence, sexual abuse, and stalking issues in the deaf community. Crisis intervention, advocacy, and referrals to resources are also provided. Advocates and ASL Therapists are on staff.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-721-8293 or  866-290-3296',NULL,'www.deafdawn.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('5a5f5844-8914-4a8c-a30c-d9536c516f50.Afro-American Counseling & Psychotherapy Institute  ','Provides a multitude of counseling services specially geared to African-American clients.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-723-0030',NULL,'www.afroamericancounseling.com',NULL,NULL,1,NULL,NULL,NULL,NULL),('61851abb-77bc-4a75-a4b0-90587e5e89d2.Bright Beginnings','Provides classroom for homeless children, on-site therapeutic services, preventative health screenings, coordinates with community partners to provide free vision, dental, lead, speech and hearing screenings twice a year, educational opportunities for parents including weekly support groups, monthly family forums, and a life long learning coach. Evening care program is available to all families for a fee of $40 per child, per day.  Bright Beginnings will also accept DC Department of Human Services (DHS) child care vouchers from families living in shelters or transitional housing programs. ',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-842-9090',NULL,'www.brightbeginnings.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('623f0d8b-10eb-42bd-9b4d-c8ed147da8cc.Sasha Bruce Youthwork ','Shelter and emergency services for adolescents, crisis/emergency shelter for children between the ages of 12-17 years old; independent living program for people ages 16-18; transitional living program for ages 18-21; and home-based counseling, crisis intervention and case management.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'?',NULL,'www.sashabruce.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('6516d842-df7e-407a-9a68-7308b7d7fcf6.Food For All','Food programs.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-829-2278',NULL,'www.amurt.net',NULL,NULL,1,NULL,NULL,NULL,NULL),('6577b0e9-eab1-450b-ba12-7562f4a30440.My Sister’s House','Provides clothing, utility assistance, budgeting and parenting classes.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-678-4024',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('66ab60fa-ea6e-493e-aca2-b6b663969bf6.Hope Manna of Greater Washington','GED programs, social services, job networking, food and clothing distribution, worship services, Bible study, vacation Bible school and youth summer camp.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-388-0062',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('680ad925-755b-4ea5-a3f5-8b8ca2a9de27.Family and Child Services of Washington DC ','Provides support groups, therapy and referrals for abused women, children, and adolescents. Senior social services for DC residents over age 60 including in-home case management, escorts to medical appointments, and counseling. Services also include: a network of in-home daycare providers, therapeutic and traditional foster care, summer and winter camping programs for underprivileged children, and anger management and batterer intervention programs.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-289-1510',NULL,'www.familyandchildrenservices.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('69aa24d4-9977-41da-91c0-5b9db719be63.Center for Mental Health-Anacostia','Low-cost counseling services.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-678-3000',NULL,'www.cmh.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('69bec750-9721-4ee2-ad00-12d6688b3e59.The Wendt Center for Loss and Healing','Provides mental health services, training, and education to ease the impact of illness, loss, and bereavement.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-624-0010',NULL,'www.wendtcenter.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('6bce089c-4885-40df-bc76-a832e8ec69da.Georgetown Ministry Center','Mental and physical healthcare including a psychiatrist available one night per week, legal assistance, case management, help with disability and benefits applications, and information and referrals to other programs such as job training and placement programs, shelters and transitional housing.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-338-8301',NULL,' www.georgetownministrycenter.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('6fee87bb-0576-444f-8b16-b6c92b89870d.Bread for the City','Provides food pantry, clothing closet, housing, and public benefits assistance. Legal services related to housing, employment, child support/child custody, domestic violence and medical clinic.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-561-8587',NULL,'www.breadforthecity.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('700eeec7-a889-4f04-ad31-4c5bcef95d63.St. Martin’s Catholic Church','Serves sandwiches Monday-Friday 9:30AM-12:00PM and provides canned goods, household items and clothing at that time. Holds Alcoholics Anonymous (AA) and Narcotics Anonymous (NA) meetings every day at 6:30PM except Mondays and Fridays. Also holds women only AA and NA meetings on Saturdays at 11:00AM. Al-Anon meetings on Sundays at 3:00PM.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-232-1144',NULL,'www.stmartinsdc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('7073dc5d-4232-41d1-b5f5-4ac2fc7e1e27.District Alliance for Safe Housing, Inc. (DASH)','Provides safe housing programs, housing resources, and technical assistance and training.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-462-3274',NULL,'www.dashdc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('70750c51-be24-47b9-a688-75427e2860a1.The Asian Pacific American Legal Resource Center (APALRC)','A multi-lingual legal referral hotline, a legal interpreter project, a legal assistance project for victims of domestic violence, and other multi-lingual services.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-393-3572',NULL,'www.apalrc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('723abafc-033a-400a-894d-3bc585d5c8dd.Adult Protective Services','Adult Protective Services (APS) investigates reports of abuse, neglect and exploitation of frail, elderly and disabled adults in the District of Columbia. APS also provides case management, counseling, and support services to vulnerable adults who have been abused, neglected or exploited.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-541-3950',NULL,'www.dhs.dc.gov',NULL,NULL,1,NULL,NULL,NULL,NULL),('72cdcf6c-b0cb-4611-99f1-f8ccaf5a1fec.My Sister\'s Place (DC)','Offers shelter/safe house program for battered women and their children with support groups, bilingual (Spanish) advocates, case management, community education, mental health services and children’s services. ',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-529-5261',NULL,'www.mysistersplacedc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('7363d899-bb21-4a77-855e-c944100e6cac.Women’s Growth and Therapy Center','Provides Psychotherapy specializing in sexual abuse, depression, anxiety disorders, and general relationship issues. ASL.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-483-9376',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('7494cdc4-7a77-4771-bf0d-a89181667820.St. Martin’s Catholic Church','Serves sandwiches Monday-Friday 9:30AM-12:00PM and provides canned goods, household items and clothing at that time. Holds Alcoholics Anonymous (AA) and Narcotics Anonymous (NA) meetings every day at 6:30PM except Mondays and Fridays. Also holds women only AA and NA meetings on Saturdays at 11:00AM. Al-Anon meetings on Sundays at 3:00PM.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-232-1144',NULL,'www.stmartinsdc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('74d52a3b-e6e6-481f-b0b6-7211bacfc403.Lutheran Church of the Reformation Southeast Ministry','Offers GED classes, 3-week job readiness classes and job placement. Ex-offender support group meets Wednesday evenings at 6:00PM.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-562-2636',NULL,'www.reformationdc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('788e31e4-f47c-45a3-af7d-be446edf9032.Bridges','Ninety-day outpatient program for women with a history of prostitution. Provides group counseling, case management around issues of prostitution, substance abuse, sexual assault and domestic violence.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-216-9199 Attn: Judy Ashburn',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('7be3906d-77bc-435f-9f1d-df234acb5ba1.DC Children\'s Advocacy Center: Safe Shores','Provides therapy, forensic interviews, and case management for children ages 3-18 who have experienced sexual or physical abuse. The Center’s Emergency Child and Adolescent Victim Crisis Fund (EVCF) offers immediate financial relief for survivors who lack resources for such things as transportation costs, school supplies, school uniforms, summer camp fees, and other specific needs to child survivors.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-638-2575',NULL,'www.safeshores.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('7c579287-047d-468e-9a69-ecb44d3180a1.Friendship House','Aids in the search for housing and clothing. Youth Opportunity Program entertains children after school.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-675-9050',NULL,'www.friendshiphouse.net',NULL,NULL,1,NULL,NULL,NULL,NULL),('7d48c9d9-94f5-4e94-8b98-d1bcd6ed90d7.Center for Child Protection and Family Support','Offers therapeutic services, parent education and referrals to children and the families of children who have been physically abused, neglected, sexually abused or assaulted, or who have witnessed domestic violence. Also provides professional training on various child welfare issues.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-544-3144',NULL,'www.stopchildabusenow.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('7e0ae983-69b2-452f-95b3-1bb639a940ee.Family and Child Services of Washington DC ','Provides support groups, therapy and referrals for abused women, children, and adolescents. Senior social services for DC residents over age 60 including in-home case management, escorts to medical appointments, and counseling. Services also include: a network of in-home daycare providers, therapeutic and traditional foster care, summer and winter camping programs for underprivileged children, and anger management and batterer intervention programs.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-289-1510',NULL,'www.familyandchildrenservices.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('7e2e8530-7f38-4ac9-a380-d409e5570639.DC Senior Services Lead Agency Ward 1  Barney Neighborhood House Senior Program ','Comprehensive senior services for the District’s elderly residents and their caregivers. Each ward has one or more Lead Agencies that provide services to seniors in the ward, funded by the DC Office on Aging.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-939-9020 ',NULL,'www.barneyneighborhoodhouse.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('7e5a2603-782c-40f6-a1d1-96181e703453.Naylor Road One Stop Career Center (DC Department of Employment)','Temporary job placement on a first come, first served basis. Client must be there at 8:00AM and caseworkers will take the first 15 people in line. Center provides job search assistance for temporary and permanent work; job training and help with TANF, Medicaid, food stamps, or substance abuse issues. Also go here to file an unemployment claim.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-645-3413',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('7f2748c8-f905-474c-9fdb-221934808d85.Community Family Life Services','Provides job counseling, support groups, employment programs, GED, and job training.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-347-0511',NULL,'www.cflsl.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('817f110e-292e-420a-a5c9-4e3cb4eeee4e.Nation’s Capital Child and Family Development Center','Provides childcare for children ages six weeks to 12 years at 24 centers citywide. Fees vary according to parent’s income and vouchers are accepted. Also offers free GED and computer classes. ',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-397-3800',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('8281e451-cc02-41ae-a229-d0248c678979.Springfield Baptist Church','Provides food and clothing on the 2nd Saturday of every month. In November, giveaway is conducted on Thanksgiving, with Thanksgiving dinner provided.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-234-0648',NULL,'www.sbconline.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('8554ef4b-359b-4d4b-bf18-f5b1afc82285.Emmaus Services for the Aging','Provides social services for elderly (over age 65) in the Shaw and Thomas Circle area. Case management, support groups, and nutrition counseling are available.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-467-6677',NULL,'www.emmausservices.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('856bab9b-79a2-4019-ba54-d013bac42a59.WEAVE (Women Empowered Against Violence)','Provides case management, counseling, credit repair and financial education, small loans, and legal representation in domestic violence cases. Also helps survivors of domestic violence obtain protection orders through the Emergency Domestic Relations Project. Emergency Civil Legal Protection Assistance, Safety and Needs Assessments, Full Legal Representation, Advice and Mentoring for Self Representation, Group and Individual Counseling, Clinical Case Management, Economic Empowerment, Teen Dating Violence Services, Education, and Training, Technical Assistance for Attorneys and Referrals for Other Services.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-452-9550',NULL,'www.weaveincorp.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('85a2b4ea-8d33-4f21-8ae4-fd8891017179.Change ','Housing Support Center provides rental assistance to prevent eviction as well as utility bill assistance. Food pantry available five days a week and hot meal programs are held periodically. Employment referrals and counseling. Information and enrollment in GEL programs and referrals to vocational training programs and college opportunities are provided. Income management, nutrition and health counseling also available.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-387-3725',NULL,'www.innercity.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('868fb30a-b9b0-4e1c-b294-ff7a7631f3f1.DC Department of Human Services- Office of Early Childhood Development Child Care Services','Provides detailed list of licensed childcare providers in DC, as well as information on how to become a childcare provider. Also provides full fee assistance for unemployed TANF or disabled parents, disabled children, children in DC foster care, and teen parents attending school. Languages include Spanish, and printed materials in Korean, Vietnamese, and Chinese.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-727-0284',NULL,'www.acf.hhs.gov',NULL,NULL,1,NULL,NULL,NULL,NULL),('88861587-491f-4cc2-8c39-aaa6bc77a9a8.Zacchaeus Kitchen','Hot meal served Monday through Saturday in the basement of the First Congregational Church.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-682-0690',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('8917d13a-823b-4bbc-8330-88f0094ce085.Ayuda','Bilingual legal domestic violence, family law and immigration services to members of the immigrant community and social services programs to members of the immigrant community who are victims of domestic violence and their children. Ayuda assists battered immigrants with accessing shelters, daycare, housing, employment, food, clothing, public benefits, English classes and health care for themselves and their children. Services are available in Spanish and other languages available through an interpreter.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-387-4848',NULL,'www.ayudainc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('89f33273-b015-4aeb-9492-0a0b238ffc9c.DC Adult Protective Services (APS) ','APS investigates reports of and intervenes to reduce the incidence of abuse, neglect and exploitation of frail, elderly and physically or mentally impaired adults in the District of Columbia. APS also provides case management, counseling and support services to vulnerable adults who have been abused, neglected or exploited.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-541-3950',NULL,'www.dhs.dc.gov',NULL,NULL,1,NULL,NULL,NULL,NULL),('8ec6b4b8-0017-4172-8f79-b0b4bd551637.Church of the Epiphany','The Welcome Table Breakfast and Outreach Program provides counseling, outreach services and a hot breakfast each Sunday morning?beginning at 8:00AM. Also has Alcoholics Anonymous and Narcotics Anonymous meetings, social security and disability information, tokens when in need of travel to a doctor’s appointment, and job placement. Also open to the homeless during the week.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-347-2635',NULL,'www.epiphanydc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('907c03e6-57de-45dc-a67e-fd98d4d6586b.Grandma\'s House','Grandma\'s Houses are special homes in Washington, DC, for fragile infants and children, including those who have been exposed to HIV/AIDS, are homeless, or have been abandoned, abused, or neglected.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-234-4128',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('90d83e34-c538-413c-ad63-05c37662f962.Asian Women’s Self-Help Association','Provides culturally-specific, multi-lingual support and referral services to women of South Asian descent. Support group for survivors; confidential, multi-lingual peer support for domestic and sexual violence, divorce, custody, abandonment, and acculturation; referrals to community resources; court accompaniment and advocacy; translation assistance in Hindi, Punjabi, Bengali, Gujrati, and Urdu; and emergency financial assistance.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-207-1248',NULL,'www.ashaforwomen.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('914515c0-5484-405d-a67f-9c03b4c876af.Bethany Women’s Center','Day shelter that provides breakfast, lunch, snack, activity programs, crafts, laundry, showers, clothing, counseling, referrals for other services, mental health and substance abuse referrals.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-483-3739',NULL,'www.bwhcbirthcenter.com',NULL,NULL,1,NULL,NULL,NULL,NULL),('92fbae67-7b1d-43b5-a3fc-1b627714b07c.Miriam’s Kitchen','Provides free hot breakfast Monday-Friday beginning at 6:30AM. Other services include an Alcoholics Anonymous meeting on Thursdays, a legal clinic on Wednesdays, and a doctor available on Fridays after breakfast. Case managers are available for counseling and referrals to other programs and resources in the city. ',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-452-8926',NULL,'www.miriamskitchen.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('95306ff7-22ea-48f3-b4a0-870f9c7c42c1.Washington Child Development Council Child Care Resource and Referral Service','Service provides free computerized data on all licensed childcare facilities located in DC. WCDC has information on services for handicapped child as well. All counseling is done over the phone, providing immediate help to the parent or guardian, and additional information is faxed and/or mailed to callers.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-387-0002',NULL,'www.daycareindc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('9548f9d1-c80e-41d3-9479-9fb0f07c1216.SOME (Southeast Food Club)','Program provides $60 of groceries per month. To receive groceries there is a monthly fee of $3 and recipients must serve the community for three hours within three months. Also provides a two-week job readiness program offering help with resumes, cover letters, interviewing skills, salary negotiation, conflict resolution, self-esteem issues and employee rights.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-581-1800',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('97ee2ed4-c70c-47ef-a76c-0431314def2b.Third Street Church of God','Serves breakfast Monday-Friday from 7:30AM-9:00AM with church service following meal. Breakfast is located at the Miles Memorial CME Church, 501 N Street, NW. Food is distributed at 1204 3rd Street, NW on Thursdays, but call first.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-347-5889',NULL,'www.thirdstreet.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('994b7213-63fa-4272-9fcf-84c597e90f0e.DC Senior Services Lead Agency Ward 3  Iona Senior Services','Comprehensive senior services for the District’s elderly residents and their caregivers. Each ward has one or more Lead Agencies that provide services to seniors in the ward, funded by the DC Office on Aging.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-966-1055',NULL,'www.iona.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('9a77e37f-1652-448f-ae01-c1f89c223b2c.Family and Child Services of Washington DC','Provides support groups, therapy and referrals for abused women, children, and adolescents. Senior social services for DC residents over age 60 including in-home case management, escorts to medical appointments, and counseling. Services also include: a network of in-home daycare providers, therapeutic and traditional foster care, summer and winter camping programs for underprivileged children, and anger management and batterer intervention programs.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-289-1510',NULL,'www.familyandchildrenservices.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('9be7d723-dc60-4e34-9d3a-8d011be46102.United Planning Organization','Provides clothing and emergency food assistance through a voucher system and supplemental food distribution; crisis intervention; individual and family counseling; financial assistance with mortgage, rent and utilities; case management; advocacy and referrals in employment, housing, health care, and day care. ACOC also provides basic adult education and computer training and a summer tutorial and enrichment program for children ages 6-13',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-889-4193',NULL,'www.upo.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('9cfd1db6-0cac-479d-92fb-a31cec236e00.Boat People SOS','BPSOS has 17 branch offices nationally and offers a range of services and support including youth mentoring, financial literacy training, education and assistance in accessing health care, and legal and social services for domestic violence and human trafficking survivors. The Survivor Services Department includes the Community Against Domestic Violence (CADV) Program and the Victims of Exploitation and Trafficking Assistance (VETA) Program. Both programs provide community outreach and education, training and technical assistance for service providers, and direct services for survivors. The CADV Program serves primarily Vietnamese women and their children residing throughout the US.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'703-538-2190',NULL,'www.bspsos.com',NULL,NULL,1,NULL,NULL,NULL,NULL),('9def49bc-264e-4ff7-92b5-6fe3e0cda884.The Adele Lebowitz Center for Youth & Families','Mental health services. Fees are determined on a sliding scale according to ability to pay. Many insurance plans cover most or part of the fee.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-537-6050',NULL,'www.wspdc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('9edb2682-acfd-4b2a-8577-913f0e00ad49.Living Wages','Provides GED, EDP programs for ages 17 and over. Classes for pre-GED are held Monday-Thursday 9:00AM-12:00PM. GED classes are Monday-Friday: 9:00AM-4:00PM. Open program: classes take as long as necessary. $20 intake fee, $10 instruction fee.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-574-3961',NULL,'www.livingwages.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('a59d8d14-d635-40de-92bc-d30eb07b14e9.Covenant House','Job training, GED programs, housing, emergency shelter, and transitional living program, legal services, life skills and nutrition classes.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-610-9600',NULL,'www.covenanthouse.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('a5cfc882-1c9b-43ea-bd99-1a8e0c9a1c04.My Sister’s House','Provides clothing, utility assistance, budgeting and parenting classes.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-678-4024',NULL,'www.my-sisters-house.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('a7608bdd-9afa-4c4e-9b31-9bf95560b55a.Center for Child Protection and Family Support','Offers therapeutic services, parent education and referrals to children and the families of children who have been physically abused, neglected, sexually abused or assaulted, or who have witnessed domestic violence. Also provides professional training on various child welfare issues.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-544-3144',NULL,'www.stopchildabusenow.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('a7fc45c7-ebc8-46e4-a110-4e197f832d99.SOME (So Others Might Eat)','Offers food, clothing, and health care, as well as services such as affordable housing, job training, addiction treatment, and counseling.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-797-8806',NULL,'www.some.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('b1bcbf15-183b-4de1-a37a-f27b811d3b2e.My Sister’s House','Provides clothing, utility assistance, budgeting and parenting classes.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-678-4024',NULL,'www.my-sisters-house.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('b369e950-b2b9-408a-b573-3e415706e9ad.Hope Manna of Greater Washington','GED programs, social services, job networking, food and clothing distribution, worship services, Bible study, vacation Bible school and youth summer camp.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-388-0062',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('b36d6f1c-bc3f-49c9-b21d-0821e2283584.My Sister’s House','Provides clothing, utility assistance, budgeting and parenting classes.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-678-4024',NULL,'www.my-sisters-house.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('b4f8adf1-661d-402c-8b2d-598198489965.DC Department of Human Services Temporary Aid for Needy Families (TANF)/Food Stamps/Medicai','Temporary cash assistance for families with children for up to 60 months. Benefits are based on income, family size and resources.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-698-3900',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('b64507f3-671f-4d0a-b6c2-b965b2470613.Douglas Memorial United Methodist Church','Provides food bags, clothing, employment counseling, housing and rental search assistance and referrals. Hours for clothing are Tuesday and Wednesday 9:00AM-11:00AM.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-397-1562',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('b6668b0a-9962-4ccf-9ff7-c350a711cacb.DC Senior Services Lead Agency Ward 8  Greater Washington Urban League, Aging Division','Comprehensive senior services for the District’s elderly residents and their caregivers. Each ward has one or more Lead Agencies that provide services to seniors in the ward, funded by the DC Office on Aging.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-610-6103',NULL,'www.gwul.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('b6b03c1e-59b9-44a2-8494-f927a15efce7.Georgetown Ministry Center','Mental and physical healthcare including a psychiatrist available one night per week, legal assistance, case management, help with disability and benefits applications, and information and referrals to other programs such as job training and placement programs, shelters and transitional housing.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-338-8301',NULL,'www.georgetownministrycenter.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('b718b3d0-c4ad-4c55-af0f-45ec74486916.Low Income Taxpayer Clinic','Provides assistance for those who need to file a tax return, or have not filed a return in several years and have received a notice from the IRS. The Clinic can assist taxpayers with federal or state income tax return problems, including Examination notices received from the Internal Revenue Service (IRS). The Clinic can also offer assistance in bringing your case before the US Tax Court, if necessary.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-274-7300',NULL,'www.irs.gov',NULL,NULL,1,NULL,NULL,NULL,NULL),('b9faa3a0-98c8-4d4a-9a02-13c6b26e0f0d.DC Senior Services Lead Agency Ward 2  Greater Washington Urban League, Aging Division','Comprehensive senior services for the District’s elderly residents and their caregivers. Each ward has one or more Lead Agencies that provide services to seniors in the ward, funded by the DC Office on Aging.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-529-8701',NULL,'www.gwul.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('ba564d49-5223-4505-8e07-2d4e660f0798.Kidspace Child and Family Development Center','Provides therapeutic daycare for children ages six-weeks to five-years old and case management for those who are homeless, living in a shelter or transitional program, children with special needs, or children coping with trauma from domestic violence, sexual assault or who have mental health issues. Accepts vouchers through DHS or employment training program, sliding fee scale: $0-$600/month (infants: $30-$676/month).',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-584-2290',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('ba82bb01-bfee-448d-8ba8-03d573ec5ffd.House of Ruth','Offers 24-hour shelter/safe house program for battered women and their children with support groups, case management, children\'s program, and transitional housing. Domestic Violence Support Center offers counseling for women both living in and out of the shelter.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-667-7001',NULL,'www.houseofruth.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('bc65104d-1ef4-4f07-b468-cd0f2ea6aa25.Eldercare Locator ','Eldercare Locator is a public service of the U.S. Administration on Aging. Find resources for older adults in any U.S. community on their website or by calling the toll-free number. Information available in Spanish over the phone.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'800-677-1116  9:00AM to 8:00PM  Spanish-speaking  Information Specialists  are on duty. ',NULL,'www.eldercare.gov',NULL,NULL,1,NULL,NULL,NULL,NULL),('bcd2f237-c276-4a1c-ae56-99541b857555.House of Ruth\'s Domestic Violence Support Center ','Free group and individual counseling for battered women.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-347-0390',NULL,'www.houseofruth.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('bea7002c-fcd0-4620-becb-615215d1b3c5.DC Children\'s Advocacy Center: Safe Shores','Provides therapy, forensic interviews, and case management for children ages 3-18 who have experienced sexual or physical abuse. The Center’s Emergency Child and Adolescent Victim Crisis Fund (EVCF) offers immediate financial relief for survivors who lack resources for such things as transportation costs, school supplies, school uniforms, summer camp fees, and other specific needs to child survivors.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-638-2575',NULL,'www.safeshores.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('c05758a9-1f3c-423e-a1bf-29cbfa845ada.DV LEAP','Provides technical assistance, litigation assistance, trainings and presentations and consultations.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'?',NULL,'www.dvleap.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('c12d0277-f777-4234-bb05-a5bbf915687e.Second Chance Employment Services','Provides job placement',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-331-7451',NULL,'www.scesnet.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('c46c3a50-a7cc-4ad1-83f7-f5a2c9020453.Community of Hope','Provides housing and social services, health services, educational enrichment, and spiritual support.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-232-7356',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('c6cc1a76-54b3-42fa-8a2f-855addf621a7.Georgetown Ministry Center','Mental and physical healthcare including a psychiatrist available one night per week, legal assistance, case management, help with disability and benefits applications, and information and referrals to other programs such as job training and placement programs, shelters and transitional housing.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-338-8301',NULL,'www.georgetownministrycenter.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('c71a935c-09c4-4df6-b496-5a14dd546f18.Next Step Kitchen (A program of St. Luke’s Shelter)','Job training program for men and women with a six-week course to prepare for food handler’s exam. Also provides life skills training. Classes held Monday-Friday 9:00AM-1:00PM. A 12-week culinary arts program. Provides flash passes and other assistance to make attendance possible.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-337-4275',NULL,'www.nextstepkitchen.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('cadd0332-a1b5-4c21-82ac-3b9fa81fd4e5.Near Northwest Community Improvement Corporation','Provides food bags, clothing, employment counseling, housing and rental search assistance and referrals. Hours for clothing are Tuesday and Wednesday 9:00AM-11:00AM.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-399-6900',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('cb151287-da17-459d-bc1e-c5142b5481ac.Grandma\'s House','Grandma\'s Houses are special homes in Washington, DC, for fragile infants and children, including those who have been exposed to HIV/AIDS, are homeless, or have been abandoned, abused, or neglected.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-234-4128',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('cd94b7ca-fefd-4efd-9847-62f817e740b4.My Sister\'s Place','Emergency shelter for battered women and their children. Women receive assistance with jobs, housing, public assistance, and other referrals. Free support groups, advocacy, education, and counseling for women and their children through the Counseling Center. Case management, referrals to social services, emergency support, and financial assistance is offered. Services are also available in Spanish.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'24-Hour Crisis  Hotline:  202-529-5991   Office/Non-emergency 202-529-5261',NULL,'www.mysistersplacedc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('ce8dfabb-8e0a-4021-8cad-c1df9a433b18.Foundry United Methodist Church','Provides vouchers for photo identification for the first ten people in line every Friday morning at 9:30AM. Line begins forming at 8:00AM. Clothing provided for the first 25 people in line at 9:30AM. Daycare center that accepts vouchers is available. ',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-332-4010',NULL,'www.foundryumc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('cef235c3-51ac-45d6-b130-14798dcd69cd.Boat People SOS','Provides free immigration legal assistance, case management and referrals for Vietnamese speakers.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'703-538-2190',NULL,'www.bspsos.com',NULL,NULL,1,NULL,NULL,NULL,NULL),('cefcdb76-9224-44a3-bdb9-2a0c3cc6965d.Dinner Program for Homeless Women','Hot meals are served Monday-Friday 6:00PM daily for women and their children in the basement of the First Congregational Church. Also provides employment counseling; a Computer Workshop to teach computer skills, create cover letters and resumes and teach basic typing; free HIV testing; housing and shelter referrals; legal assistance once a week through the Washington Legal Clinic for the Homeless; and gives out toiletries.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-737-9311',NULL,'www.dphw.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('d19f891a-b0c5-4260-b6b9-b18c7e83f2c4.Covenant House','Job training, GED programs, housing, emergency shelter, and transitional living program, legal services, life skills and nutrition classes.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-610-9630',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('d3d365f9-dfbc-42c3-8dfc-f035ec1bcccc.Asian/Pacific Islander Domestic Violence Resource Project (DVRP)','Advocates provide free and confidential peer support, safety planning, interpretation and translation, court accompaniment, emergency transportation, financial empowerment and life skills development, assistance in applying for public benefits, referrals to shelters, legal and social services, and other support services. Services are available in Cantonese, Farsi, Hindi, Hmong, Japanese, Korean, Mandarin, Nepali, Punjabi, Tagalog, Thai, Urdu, and Vietnamese.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-464-4477',NULL,'www.dvrp.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('d54186c6-361f-4d8f-bbdd-682f335532d2.Empower Program, The','Provides resources and assistance regarding teenagers and bullying, harassment and safety as well as violence prevention for gay, lesbian, bisexual, transgender youth/allies.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-686-1908',NULL,'www.empowerprogram.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('d64cdb90-bf12-444c-a228-2746528de91b.Mary House','Provides free housing for homeless families, transitional housing program, pre and post-natal services for women, a food pantry, clothing and furniture programs, crisis intervention, mothering classes, and employment search assistance. Also provides adult tutoring, after-school programs for children, and computer tutoring. ',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-635-0534',NULL,'www.maryhouse.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('d6ae1b5a-54f5-4c30-bcef-c7b783d8dd16.Fulton House of Hope','One-year residential drug treatment program. Intakes three times per year: January, May and September.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-682-1190',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('d89744a7-98ca-4710-a7e8-31f4f3bd7943.DC Energy','Utility discounts for PEPCO (electric), Washington Gas (gas), WASA (water and sewer).  Economy Too Telephone Service reduces phone bills for basic service to $3 per month with unlimited calling for eligible persons under age 65 and to $1 per month for those 65 and older. The Low-income Energy Assistance Program provides a one-time payment on a heating bill to prevent disconnection.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-673-6750',NULL,'www.dc-energy.com',NULL,NULL,1,NULL,NULL,NULL,NULL),('d961d048-b513-4062-b864-76bfaac0d3e8.Iona Senior Services','Elder care program that provides assessment, planning and counseling, nutrition counseling, meals for homebound seniors, bus transportation, accompaniment to medical appointments, discount taxi vouchers, exercise and computer classes, flu shots and blood pressure screenings. Also provides information and referrals by telephone.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-895-9448',NULL,'www.iona.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('db86b0f9-d93e-4b11-a3d6-42cbce509a37.Asian Women’s Self-Help Association','Provides culturally-specific, multi-lingual support and referral services to women of South Asian descent. Support group for survivors; toll-free help line for South Asian women; confidential, multi-lingual peer support in matters involving domestic and sexual violence, divorce, custody, abandonment, and acculturation; referrals to community resources; court accompaniment and advocacy; translation assistance in Hindi, Punjabi, Bengali, Gujrati, and Urdu; and emergency financial assistance.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-207-1248',NULL,'www.ashaforwomen.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('dc0949c4-06d6-4ad9-922d-c1b2e3555f39.Marshall Heights Community Development Organization','Helps those in need of counseling to improve housing, money and home management. Homebuyer, renter, and eviction counseling provided. Emergency assistance for delinquent mortgages, utility bills, and rent. Documentation of the assistance requested is required. The Workforce Service provides job-training workshops, direct employment placement, and GED courses. Orientation for the GED course is required and held on Tuesdays and Thursdays at 9:30AM. The Housing and Economic service provides housing services and loans to first time homebuyers.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-396-3832',NULL,'www.mhcdo.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('ddd1ec64-73fb-42c6-82e9-a2bfd32527be.Church of the Epiphany','The Welcome Table Breakfast and Outreach Program provides counseling, outreach services and a hot breakfast each Sunday morning?beginning at 8:00AM. Also has Alcoholics Anonymous and Narcotics Anonymous meetings, social security and disability information, tokens when in need of travel to a doctor’s appointment, and job placement. Also open to the homeless during the week.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-347-2635',NULL,'www.epiphanydc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('de4c0949-1637-44db-964a-cdb1f22f514a.DC Senior Services Lead Agency Ward 7  UPO Senior Life Center Project KEEN','Comprehensive senior services for the District’s elderly residents and their caregivers. Each ward has one or more Lead Agencies that provide services to seniors in the ward, funded by the DC Office on Aging.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-583-8650',NULL,'www.upo.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('de5a3f21-c02d-4b1d-9505-0b19f5f284dd.Marshall Heights Community Development Organization','Helps those in need of counseling to improve housing, money and home management. Homebuyer, renter, and eviction counseling provided. Emergency assistance for delinquent mortgages, utility bills, and rent. Documentation of the assistance requested is required. The Workforce Service provides job-training workshops, direct employment placement, and GED courses. Orientation for the GED course is required and held on Tuesdays and Thursdays at 9:30AM. The Housing and Economic service provides housing services and loans to first time homebuyers.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-396-3832',NULL,'www.mhcdo.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('de983da6-abdc-4fb2-9677-07b6f80d202b.Break the Cycle','Provides free legal assistance to adolescents experiencing domestic violence or dating violence.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-824-0707',NULL,'www.breakthecycle.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('dea914b3-0715-470c-9e93-576bd7c78208.Sasha Bruce Youthwork ','Shelter and emergency services for adolescents, crisis/emergency shelter for children between the ages of 12-17 years old; independent living program for people ages 16-18; transitional living program for ages 18-21; and home-based counseling, crisis intervention and case management.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'?',NULL,'www.sashabruce.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('e06eb514-4085-40ec-9b86-d4a4ad1616e5.DC Senior Services Lead Agency Ward 4  Barney Neighborhood House Senior Program','Comprehensive senior services for the District’s elderly residents and their caregivers. Each ward has one or more Lead Agencies that provide services to seniors in the ward, funded by the DC Office on Aging.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-939-9020',NULL,'www.barneyneighborhoodhouse.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('e0de20d6-a1eb-4636-893b-28252aec27f3.Asian/Pacific Islander Domestic Violence Resource Project (DVRP)','Multi-lingual Advocacy, case management, civil legal representation, economic/financial advocacy, emergency assistance, immigration services, lesbian, gay, bisexual and transgender services, peer adult assistance, teen outreach services. Services in Cantonese, Farsi, Hindi, Hmong, Japanese, Korean, Mandarin, Nepali, Punjabi, Tagalog, Thai, Urdu, and Vietnamese.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-464-4477',NULL,'www.dvrp.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('e1dd10d8-a5a4-4cc3-80b4-27fc6cab6c7b.Next Step Kitchen (A program of St. Luke’s Shelter)','Job training program for men and women with a six-week course to prepare for food handler’s exam. Also provides life skills training. Classes held Monday-Friday 9:00AM-1:00PM. A 12-week culinary arts program begins in spring, 2005. Provides flash passes and other assistance to make attendance possible.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-337-4275',NULL,'www.nextstepkitchen.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('e269bf02-a019-4ea8-b399-1540e556b287.Center for Child Protection and Family Support','Offers therapeutic services, parent education and referrals to children and the families of children who have been physically abused, neglected, sexually abused or assaulted, or who have witnessed domestic violence. Also provides professional training on various child welfare issues.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-544-3144',NULL,'www.stopchildabusenow.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('e30e827d-2f9d-4daa-971d-69e6d05aa124.Neighbors Consejo','Provides English as a Second Language (ESL) classes, employment counseling and job search assistance, computer classes, emergency food, clothing and financial assistance. Also provides drug and alcohol abuse counseling and treatment through Programa de Paz y Libertad, an inpatient treatment program that includes transitional housing, case management, counseling, and life skills classes.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-234-6855',NULL,'www.neigborsconsejo.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('e31427e5-7270-436b-875d-7e8987a3163b.Friendship House Clothing Program','Clothing closet for families. Families can shop for free clothing after brief intake process and may return every two weeks. No metro nearby, but the X2 bus is convenient.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-675-9240',NULL,'www.friendshiphouse.net',NULL,NULL,1,NULL,NULL,NULL,NULL),('e328476b-aca7-4699-9d9f-cb5a3469aa5c.Church of the Epiphany','The Welcome Table Breakfast and Outreach Program provides counseling, outreach services and a hot breakfast each Sunday morning?beginning at 8:00AM. Also has Alcoholics Anonymous and Narcotics Anonymous meetings, social security and disability information, tokens when in need of travel to a doctor’s appointment, and job placement. Also open to the homeless during the week.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-347-2635',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('e372d002-3ed0-4d97-9bd6-af3fc92e53ed.Center for Child Protection and Family Support','The Center for Child Protection and Family Support has promoted healthy children and families since 1987. They are helping to ensure more children mature and develop free of maltreatment. The Center offers community-level services directly to children and their families, and trains professionals on child welfare issues. Most of their services are provided at no cost, and address the diverse cultures and ethnic backgrounds of families. Children are referred to the Center from schools, parents, public agencies, private organizations, citizens at large and many other sources.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-544-3144',NULL,'www.stopchildabusenow.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('e490ce4f-3718-4b93-9183-a85c8abaef6b.Bethany Women’s Center','Day shelter that provides breakfast, lunch, snack, activity programs, crafts, laundry, showers, clothing, counseling, referrals for other services, mental health and substance abuse referrals.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-483-3739',NULL,'www.bwhcbirthcenter.com',NULL,NULL,1,NULL,NULL,NULL,NULL),('e6d7ee0d-6527-4c0e-ae73-c4a9fc0ec3e2.Emmaus Services for the Aging','Provides social services for elderly (over age 65) in the Shaw and Thomas Circle area. Case management, support groups, and nutrition counseling are available.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-467-6677',NULL,'www.emmausservices.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('e830d939-afff-4052-b5ea-2286f2bc53fc.Iona Senior Services','Elder care program that provides assessment, planning and counseling, nutrition counseling, meals for homebound seniors, bus transportation, accompaniment to medical appointments, discount taxi vouchers, exercise and computer classes, flu shots and blood pressure screenings. Also provides information and referrals by telephone.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-895-9448',NULL,'www.iona.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('e8e64be5-f15d-4fef-8b55-6dfa87fa8d62.Ramona\'s Way','Provides holistic services.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-561-3000',NULL,'www.ramonasway.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('e9f48594-749e-4e6b-811c-85829bf74f56.Lutheran Church of the Reformation Southeast Ministry','Offers GED classes, 3-week job readiness classes and job placement. Ex-offender support group meets Wednesday evenings at 6:00PM.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-562-2636',NULL,'www.southeastministry.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('ea22bbca-47a1-46f9-b095-9856edb3f13e.Neighbors Consejo','Provides English as a Second Language (ESL) classes, employment counseling and job search assistance, computer classes, emergency food, clothing and financial assistance. Also provides drug and alcohol abuse counseling and treatment through Programa de Paz y Libertad, an inpatient treatment program that includes transitional housing, case management, counseling, and life skills classes.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-234-6855',NULL,'www.neigborsconsejo.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('ebb85a82-d69a-4268-888d-257edab6bc2a.House of Ruth','Offers 24-hour shelter/safe house program for battered women and their children with support groups, case management, children\'s program, economic/financial advocacy, services for men, mental health services, substance abuse services and emergency shelter. Counseling for women, living in or outside of the shelter, is offered by the Domestic Violence Support Center. Shelter Hours: Daily at 4:30PM (first-come, first-served).',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-667-7001 24-Hour Hotline: 202-347-2777 DV Support Center : 202-347-0390Recovery HousingHotline: 202-584-0544  DC Housing Hot',NULL,'www.houseofruth.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('ee38c9d4-8639-4753-a66f-9afcaf4f43fa.Hope Manna of Greater Washington','Provides literacy/GED preparation classes, emergency food, clothing and summer camp for youth. Also, offers referrals for job training, substance abuse counseling referrals and housing.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-388-0062',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('ef48bba2-4d94-4838-9930-d89785aefa0e.The Midnight Forum','Life skills, business training and community building activities through Hip-Hop for ages 14-21. Fourteen-week classes last three hours each and consist of one hour of hip hop training, one hour of life skills workshop, and one hour of working on the students’ creative statements/projects. Fifteen students per class, no charge. Classes held at Stead Recreation Center, 1625 P Street, NW, 2nd Floor.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'301-949-0698',NULL,'www.midnightforum.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('f1307a50-21a4-4d5b-9083-4d03c51dac9d.Crime Victims Compensation Program','Temporary emergency shelter provided to victims in area hotels, relocation assistance, medical and counseling bills resulting from the crime, crime-scene clean up, transportation, lost wages, and funeral expenses.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-879-4216',NULL,'www.dccourts.gov',NULL,NULL,1,NULL,NULL,NULL,NULL),('f2f78ea1-91ed-44af-b4b1-e0c4f348e517.Springfield Baptist Church','Provides food and clothing on the 2nd Saturday of every month. In November, giveaway is conducted on Thanksgiving, with Thanksgiving dinner provided.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-234-0648',NULL,'www.sbconline.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('f4be7d58-2b2d-44e1-ae3b-af4535cdeb2a.Friendship House','Community Services provides assistance finding emergency and permanent housing, budget and self-sufficiency counseling, and distribution of free bulk food. Child Development Center. Pre-Kindergarten Incentive Program. Job counseling, adult education, referral and training center. Youth and Adult Basic Education/GED Preparation Program, serves youth who have dropped out of school and adults with and opportunity to participate in adult basic education, obtain their GED, workforce literacy training, job readiness and basic typing/computer instruction, Monday through Friday from 9:00 am – 4:00 pm. The Friendship House Association\'s Youth Services Division serves in-school and out-of-school youth 14-24 years old. House has a Family-to-Family Mentoring Program that is sponsored by the District of Columbia Income Maintenance Administration.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-675-9050',NULL,'www.friendshiphouse.net',NULL,NULL,1,NULL,NULL,NULL,NULL),('f599ac53-2657-4c03-b820-01d45a06e3f1.Rachel Women’s Center','The Day Center provides breakfast and lunch, laundry and showers, and a Narcotics Anonymous meeting every day at 10:00AM Permanent housing is available through the day program or other referral for single women with disabilities, including substance abuse or mental illness disabilities.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-682-1005',NULL,'www.rachaels.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('f64e9d98-cb5f-4ed7-81e4-2984471f4137.Church of the Epiphany','The Welcome Table Breakfast and Outreach Program provides counseling, outreach services and a hot breakfast each Sunday morning?beginning at 8:00AM. Also has Alcoholics Anonymous and Narcotics Anonymous meetings, social security and disability information, tokens when in need of travel to a doctor’s appointment, and job placement. Also open to the homeless during the week.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-347-2635',NULL,'www.epiphanydc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('f6fe014f-8eb2-4ab1-b25e-75af9a1b4afc.DC Department of Human Services Temporary Aid for Needy Families (TANF)/Food Stamps/Medicai','Temporary cash assistance for families with children for up to 60 months. Benefits are based on income, family size and resources.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'General Customer Service: 202-698-3900',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('f78305ae-521e-4eb8-babe-480a8be09950.Neighbors Consejo','Provides English as a Second Language (ESL) classes, employment counseling and job search assistance, computer classes, emergency food, clothing and financial assistance. Also provides drug and alcohol abuse counseling and treatment through Programa de Paz y Libertad, an inpatient treatment program that includes transitional housing, case management, counseling, and life skills classes.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-234-6855',NULL,'www.neigborsconsejo.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('f9ad3dcc-b251-43c0-adb8-b7f753c9ee4d.For the Love of Children (FLOC)','Provides foster care and family support for children in Washington who have been removed from their homes by DC\'s Child and Family Services Agency due to abuse or neglect.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-462-8686',NULL,'www.flocdc.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('fa294dc3-16f9-4dd2-9660-d1f004fba01e.United Planning Organization','Provides clothing and emergency food assistance through a voucher system and supplemental food distribution; crisis intervention; individual and family counseling; financial assistance with mortgage, rent and utilities; case management; advocacy and referrals in employment, housing, health care, and day care. ACOC also provides basic adult education and computer training and a summer tutorial and enrichment program for children ages 6-13.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-889-4193',NULL,'www.upo.org',NULL,NULL,1,NULL,NULL,NULL,NULL),('fb4a5c57-cb57-4a29-9505-6b3ec1eb54b3.DC Department of Human Services- Office of Early Childhood Development Child Care Services','Provides detailed list of licensed childcare providers in DC, as well as information on how to become a childcare provider. Also provides full fee assistance for unemployed TANF or disabled parents, disabled children, children in DC foster care, and teen parents attending school. Languages include Spanish, and printed materials in Korean, Vietnamese, and Chinese.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-727-0284',NULL,'www.acf.hhs.gov',NULL,NULL,1,NULL,NULL,NULL,NULL),('fd9d6500-7517-4509-b737-f4086d48648f.National Center on Elder Abuse','The Center makes available news and resources, collaborates on research, provides consultation, education and training, identifies and provides information about promising practices and interventions, answers inquiries and requests for information, operates a listserve forum for professionals, and advises on program and policy development.',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-898-2586',NULL,'?',NULL,NULL,1,NULL,NULL,NULL,NULL),('ffb355a7-88e8-4436-8f50-bbdee4dc4b43.Mary House','Provides free housing for homeless families, transitional housing program, pre and post-natal services for women, a food pantry, clothing and furniture programs, crisis intervention, mothering classes, and employment search assistance. Also provides adult tutoring, after-school programs for children, and computer tutoring. ',NULL,NULL,NULL,'Washington','District of Columbia',NULL,'United States',NULL,NULL,NULL,'202-635-0534',NULL,'www.maryhouse.org',NULL,NULL,1,NULL,NULL,NULL,NULL);
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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
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

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(45) CHARACTER SET latin1 NOT NULL,
  `password` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `domain` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2013-01-27 11:52:08
