-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.2


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--
-- Definition of table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE  `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
LOCK TABLES `accounts` WRITE;
INSERT INTO `accounts` VALUES  ('136d3e7a-98ce-3eaf-fd7d-51cb1512cc25','aaaaaaaaaaaaaaa',NULL,'2013-06-13 09:30:28',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',NULL,'AA',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',NULL,'AA',NULL,'',NULL,NULL,NULL),
 ('8a340bfb-91f9-fbba-f6ce-51cb15db8265','Cliente 01',NULL,'2013-06-13 09:30:28',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Rua das alamedas',NULL,'PR',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rua das alamedas',NULL,'PR',NULL,'',NULL,NULL,NULL),
 ('966ffe28-a3a3-4bf5-a291-51cb15bbfeac','wersdfds',NULL,'2013-06-13 09:30:28',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'fsdf',NULL,'SP',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fsdf',NULL,'SP',NULL,'',NULL,NULL,NULL),
 ('ef3d1748-d9de-f9ce-fc64-51cb155f61dd','sdfsd',NULL,'2013-06-13 09:30:28',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'dfsdf',NULL,'DF',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dfsdf',NULL,'DF',NULL,'',NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;


--
-- Definition of table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
CREATE TABLE  `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_audit`
--

/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
LOCK TABLES `accounts_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;


--
-- Definition of table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
CREATE TABLE  `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_bugs`
--

/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
LOCK TABLES `accounts_bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;


--
-- Definition of table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
CREATE TABLE  `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_cases`
--

/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
LOCK TABLES `accounts_cases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;


--
-- Definition of table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
CREATE TABLE  `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_contacts`
--

/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
LOCK TABLES `accounts_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;


--
-- Definition of table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
CREATE TABLE  `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `cpf_cnpj_c` varchar(255) DEFAULT NULL,
  `orcamento_c` varchar(255) DEFAULT 'http://portalintegracao.ebs.com.br/Site/Interface/0.0/Faturamento/PesquisaCRM.html?Tipo=Orcamento&Nome={name}',
  `pedidos_c` varchar(255) DEFAULT 'http://portalintegracao.ebs.com.br/Site/Interface/0.0/Faturamento/PesquisaCRM.html?Tipo=Pedido&Nome={name}',
  `faturamentos_c` varchar(255) DEFAULT 'http://portalintegracao.ebs.com.br/Site/Interface/0.0/Faturamento/PesquisaCRM.html?Tipo=NotaFiscal&Nome={name}',
  `titulos_c` varchar(255) DEFAULT 'http://portalintegracao.ebs.com.br/Site/Interface/0.0/Faturamento/PesquisaCRM.html?Tipo=Titulo&Nome={name}',
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_cstm`
--

/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
LOCK TABLES `accounts_cstm` WRITE;
INSERT INTO `accounts_cstm` VALUES  ('136d3e7a-98ce-3eaf-fd7d-51cb1512cc25','23.423.423/4234-23',NULL,NULL,NULL,NULL),
 ('966ffe28-a3a3-4bf5-a291-51cb15bbfeac','58.118.283/0001-50',NULL,NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;


--
-- Definition of table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
CREATE TABLE  `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_opportunities`
--

/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
LOCK TABLES `accounts_opportunities` WRITE;
INSERT INTO `accounts_opportunities` VALUES  ('1638ff96-dada-770e-2b1e-51c9ebf2bd2d','16355c9e-d350-4150-5baa-51c9ebfa8f6a','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:12:10',1),
 ('1a4a794b-fe6a-4eb7-fdd5-51c9ea6ce715','1a46e331-38e4-9799-9ffd-51c9ea847b10','','2013-06-25 15:15:13',0),
 ('1b91ca7e-3ff5-87d2-baa2-51c9ea5fccfb','1b8e0567-3f3d-caa4-d4e6-51c9eaf9c42b','55','2013-06-17 14:57:44',0),
 ('27dc902f-c36b-7cc3-7cec-51c9eb72fa48','27d9259a-abfc-7d57-5303-51c9ebf78cb5','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:12:10',1),
 ('2bc98115-14d2-53a8-874b-51c9ea781af7','2bc5dd48-c03c-9cfb-6aa4-51c9eaf4ee5d','55','2013-06-18 14:26:05',0),
 ('2d216de3-f221-97f2-4d1b-51c9ebaae391','2d1dd997-8c3f-4673-06d5-51c9eb601ca4','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:12:10',1),
 ('322bddec-4ca5-45cf-b925-51c9e859b10c','32282157-1bd3-8841-b9af-51c9e8c46278','','2013-06-25 15:01:06',0),
 ('3eb307aa-3f00-b7b1-aa03-51c9ea22604f','3eaf36f8-f6ef-a6d0-380b-51c9ea4ab4e5','55','2013-06-21 09:44:19',0),
 ('4761c35d-5d3b-ef6f-5b45-50ae263712d4','45902b7e-6922-8881-32ba-50ae26a50a68','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2012-11-22 13:21:24',0),
 ('4b248245-f81b-957e-4e35-51c9e80a7695','4b20fba9-3289-746f-c781-51c9e8e58da2','','2013-06-25 15:15:13',0),
 ('4ee83583-14f9-d6fb-9329-51c9ea6d9586','4ee405cb-6ee1-80c2-9948-51c9ea500697','54','2013-06-21 10:10:26',0),
 ('5f26a0bc-27b3-a080-1d0b-51c9eaed0c2a','5f22e823-1ad9-5c0d-ad67-51c9eab5f7a9','55','2013-06-24 11:16:40',0),
 ('5fb30246-8d58-76c5-d4e4-51c9eae2d155','5f760d48-e6fa-509d-c0e6-51c9eaabeacf','55','2013-06-17 14:56:37',0),
 ('62bfec3b-7123-60fa-ea77-51cc93c844ca','63d4a5b3-9b27-b74c-f7e4-50ae26b2fc3b','8a340bfb-91f9-fbba-f6ce-51cb15db8265','2013-06-27 19:32:44',0),
 ('65490b60-effa-8685-7de3-50ae26cdee85','63d4a5b3-9b27-b74c-f7e4-50ae26b2fc3b','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2012-11-22 13:21:15',0),
 ('720c438d-ace4-f4d0-2be6-51c9eac7c740','72089d2c-85dd-2364-7594-51c9eae719b4','55','2013-06-25 12:07:24',0),
 ('7d5387ff-f1cf-97b7-e6fc-51c9e89b9f9c','7d4f9091-2cc7-8007-6b07-51c9e8c18bd8','','2013-06-25 15:01:06',0),
 ('87abb561-065a-abce-e7a9-51c9ea58b5e3','87a7b53a-dff1-7662-25ef-51c9eaed7eb7','55','2013-06-25 12:08:46',0),
 ('896af3fd-877b-ab9b-f004-51c9e9352963','89675c53-bfd6-5eaa-7201-51c9e91c538c','','2013-06-25 15:01:06',0),
 ('92cc7514-d85b-f7e6-502a-51c9e88450e9','92c8c602-45dc-6d7a-014c-51c9e8af7750','','2013-06-25 15:15:13',0),
 ('9a097a7b-3a28-6d77-6eb1-51c9e920a678','9a0507bc-8dd7-0868-42b2-51c9e9ae1f00','','2013-06-25 15:15:13',0),
 ('9b935a7a-314e-a819-9982-51c9ebe6fc03','9b8fc491-ef30-ca35-d3a2-51c9eb3373ea','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:14:27',1),
 ('9d41bf64-f33b-f42e-fe79-51c9ea7fa4f6','9d3e0633-c8dc-96b7-868a-51c9ea9e37cd','55','2013-06-25 12:11:04',0),
 ('9f4c21b8-aaeb-9a3c-adb5-51c9ea60747b','9f48544b-3d7c-6cf2-4fee-51c9ea6b1585','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:05:57',1),
 ('a2bc8ea1-40a5-48fe-6cce-51c9e9bb6564','a2b7be19-9c8b-d1f0-7eb6-51c9e95fb300','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:05:57',1),
 ('a33d3b0f-317d-12ae-4caa-51c9ea2ec693','a339851f-163c-1564-f18e-51c9ea120f6e','55','2013-06-17 09:16:12',0),
 ('afcefda4-a496-8147-fd84-51c9ebeada89','afcb16db-41e0-c79d-694c-51c9eba995f8','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:14:27',1),
 ('b2dde597-c42c-e9e4-9823-51c9ea139085','b2d9d8c4-dab0-2f79-279f-51c9eaab00fe','55','2013-06-25 14:33:50',0),
 ('b824d6c8-fcd3-78a0-b889-51c9ea321518','b820d099-cdf8-28c7-31e9-51c9eabf894e','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:05:57',1),
 ('b9300a61-01c9-6c48-b112-51c9ec8d6356','b8ef027b-bb45-ed0e-8ba7-51c9ec9dbe5d','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:14:27',1),
 ('b95183e9-d297-d65c-7d20-51c9ea65e447','b94dbfdb-24a8-2442-6269-51c9ead18ed9','54','2013-06-17 09:18:37',0),
 ('bbb6367d-8a05-df25-0588-51c9e93924c4','bbb2befa-af6c-1ded-d3d0-51c9e953d8e4','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:05:57',1),
 ('c2c1d855-24a6-321d-5603-51c9e9e38073','c2be59b3-d266-8a9c-0f2b-51c9e9d37e82','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:02:26',1),
 ('ceeb0a4b-3fdc-df3e-ab29-51c9eabefb55','cee74e65-64c9-8054-6cbd-51c9eae55715','55','2013-06-17 09:25:13',0),
 ('d33c5838-5da7-cc63-36ed-51c9ea6d6199','d3388139-0815-41b2-61ea-51c9eae52a38','55','2013-06-25 15:03:07',0),
 ('d893f8cf-db4a-ff49-6d2a-51c9e9f7d271','d89068e1-beff-0801-6a84-51c9e9d5603e','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:02:26',1),
 ('d9482c32-555d-8c35-3759-51c9e736f650','d9414423-201a-a16e-593a-51c9e76e218c','','2013-06-25 15:01:06',0),
 ('e48520c0-1d8d-acd2-c254-51c9ea6e7ea3','e4815000-3933-6765-df5e-51c9ea0034c6','55','2013-06-17 14:54:29',0),
 ('e819a884-c6e5-1f20-a603-51c9ec465ee0','e813a6e7-9221-dcee-0157-51c9ec4b4d48','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:14:27',1),
 ('ec7e006a-909e-615c-2c38-51c9eb54c215','ec7a7163-d1c7-fb80-1a17-51c9ebbe51dc','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:10:48',1),
 ('f10004a1-b8fb-87b7-a8f9-51c9eb296c2c','f0c40aea-5237-09b8-6e3b-51c9ebd1afe3','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:12:10',1),
 ('f2273bb9-9679-a6a9-8e67-51c9ea14934b','f223b13d-0929-367e-301d-51c9ea690c02','','2013-06-25 15:01:06',0),
 ('f550081f-8cf1-f4f3-4be0-51c9ebbcdb71','f5150f84-c498-e29c-ee05-51c9eb4e36e3','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','2013-06-25 19:10:48',1),
 ('f76c0616-6245-0e85-88fa-51c9e72b0dfe','f7280b33-7987-0054-9694-51c9e7231448','','2013-06-25 15:15:13',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;


--
-- Definition of table `accounts_ra_ramos_atividade_1_c`
--

DROP TABLE IF EXISTS `accounts_ra_ramos_atividade_1_c`;
CREATE TABLE  `accounts_ra_ramos_atividade_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_ra_ramos_atividade_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_ra_ramos_atividade_1ra_ramos_atividade_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_ra_ramos_atividade_1_ida1` (`accounts_ra_ramos_atividade_1accounts_ida`),
  KEY `accounts_ra_ramos_atividade_1_idb2` (`accounts_ra_ramos_atividade_1ra_ramos_atividade_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_ra_ramos_atividade_1_c`
--

/*!40000 ALTER TABLE `accounts_ra_ramos_atividade_1_c` DISABLE KEYS */;
LOCK TABLES `accounts_ra_ramos_atividade_1_c` WRITE;
INSERT INTO `accounts_ra_ramos_atividade_1_c` VALUES  ('5c3d4231-44b2-87f1-c24e-51cb0272d582',NULL,0,'e6030746-2772-81e5-4824-51cb01f9258a','51a69ba527314a3fab4c10b6a876b030'),
 ('967452e4-b0bb-e683-0afd-51cb15cdb461',NULL,0,'d0d84676-ee12-8d37-0976-51cb02db7f54','51a69ba527314a3fab4c10b6a876b030'),
 ('c958f10c-013f-8051-f001-51cb15682f5c',NULL,0,'966ffe28-a3a3-4bf5-a291-51cb15bbfeac','51a69ba527314a3fab4c10b6a876b030'),
 ('d0dcaa08-18d5-1081-d832-51cb02952bec',NULL,0,'5c38f3d4-2e32-3272-1b67-51cb024c84b4','51a69ba527314a3fab4c10b6a876b030');
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_ra_ramos_atividade_1_c` ENABLE KEYS */;


--
-- Definition of table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
CREATE TABLE  `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_actions`
--

/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
LOCK TABLES `acl_actions` WRITE;
INSERT INTO `acl_actions` VALUES  ('125a25f8-f3c7-7f63-19f5-50ad12d48b27','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Opportunities','module',90,0),
 ('133e25c5-aa06-3609-f7d9-50ad12e511c3','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','ProspectLists','module',90,0),
 ('13c964f7-b3fa-8efc-bc45-50ad12fed22b','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Emails','module',90,0),
 ('153f159e-ea04-b0a7-320d-50ad120f5872','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','EmailTemplates','module',90,0),
 ('15ced6a1-9d1d-ec12-3bfc-50ad1250aca5','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Accounts','module',90,0),
 ('165d1f23-08d1-d956-efe8-50ad12b84032','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Documents','module',89,0),
 ('1669a2b2-624d-6827-ef06-50ad1218ecd5','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','EmailMarketing','module',90,0),
 ('179dc834-08e8-38a5-a5f1-50ad124c32af','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Project','module',90,0),
 ('1e6c03ab-fddb-5b9f-d8e7-50ad12e0a6f9','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Documents','module',90,0),
 ('1e92616b-02c7-b7aa-4e3f-50ad12f288ec','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Emails','module',90,0),
 ('1f122b5a-72b4-1b10-91cf-50ad124fa84a','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Contacts','module',90,0),
 ('203badd5-66c3-aadc-18b5-50ad12070654','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Opportunities','module',90,0),
 ('2046ef4c-ca71-2a98-eac1-50ad127cb2ba','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','EmailTemplates','module',90,0),
 ('211b0b8f-bdc7-5777-27ae-50ad12c9fa4f','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Project','module',90,0),
 ('2181a8c0-bcf5-a722-9b98-51cae5b79304','2013-06-26 12:56:36','2013-06-26 12:56:36','1','1','massupdate','RA_Ramos_Atividade','module',90,0),
 ('2679a69c-042f-4f4a-e052-50ad120158ad','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','EmailMarketing','module',90,0),
 ('2682bf3e-9383-3a9c-90eb-50ad1272e1c6','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Documents','module',90,0),
 ('29618943-e373-c755-95bb-50ad1223ed6f','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Emails','module',90,0),
 ('2adecfdb-65ed-2a28-327a-50ad1242b003','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','EmailTemplates','module',90,0),
 ('2b026437-3a69-e602-ffd1-50ad12614636','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Opportunities','module',90,0),
 ('3431061a-1868-243e-5c30-50ad12bddb16','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Emails','module',90,0),
 ('35c6d72a-9e9f-b1a4-2182-50ad126d6bd6','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Opportunities','module',90,0),
 ('3b2de97f-31b6-a36f-7377-50ad12167574','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','EmailMarketing','module',90,0),
 ('3ddf8949-b06e-a430-0acd-50ad1286f5c9','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Opportunities','module',90,0),
 ('41bb50fc-4269-1f9b-4a14-50ad12f10f8b','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Emails','module',90,0),
 ('42a22923-9615-6263-836b-50ad124b2997','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Calls','module',89,0),
 ('45ffafb3-0b2e-b9b0-aa2b-50ad124116e2','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Opportunities','module',90,0),
 ('4698c060-918b-3220-5800-50ad121c73dc','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Cases','module',90,0),
 ('4c824b0d-64e1-5324-72e0-50ad129bc899','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Emails','module',90,0),
 ('4d6ea589-2379-a927-5fc3-50ad12d5a4e1','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Calls','module',90,0),
 ('4e1c4e14-d8a9-5415-7206-50ad123478fe','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Opportunities','module',90,0),
 ('4edd102c-74dd-9ca9-e682-50ad1239373f','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Prospects','module',89,0),
 ('4eff2b4a-48ad-a410-4701-50ad123d00f3','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','EmailMarketing','module',90,0),
 ('583bbc78-53a0-4638-52f1-50ad128dfc59','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Calls','module',90,0),
 ('59bb0809-502a-4d98-af7d-50ad126ddc5f','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Prospects','module',90,0),
 ('59ca3b37-3c8c-0921-50c1-50ad12f31bee','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','EmailMarketing','module',90,0),
 ('5f042500-7000-5ba2-31a7-50ad12e257d3','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Leads','module',89,0),
 ('6163cf2d-026e-971c-a4a9-50ad1203806e','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Meetings','module',90,0),
 ('6303dc8f-324c-ac6d-eec3-50ad12792ec6','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Calls','module',90,0),
 ('644dae47-b40f-23d5-6050-50ad1241f96a','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Tasks','module',89,0),
 ('6477a3d7-415c-fb35-26e8-50ad127c6c61','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Prospects','module',90,0),
 ('64b260db-834a-06fb-d7cd-50ad1268faad','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','EmailMarketing','module',90,0),
 ('6725310f-411c-05a9-1124-50ad12153422','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Documents','module',90,0),
 ('6910f761-1244-882d-2171-50ad12e4d1d2','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Leads','module',90,0),
 ('6dd676b5-c55b-00d4-ac26-50ad1261b398','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Calls','module',90,0),
 ('6f1725d8-cabd-ae94-49d8-50ad120fc8c5','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Tasks','module',90,0),
 ('73e035ce-0e5b-ee80-0703-50ad129c8dd2','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Leads','module',90,0),
 ('76a4f1ee-f738-2b96-e441-50ad1274d931','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Notes','module',89,0),
 ('76f635c1-5307-2aa8-69db-50ad12376327','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Cases','module',90,0),
 ('7759efc9-c490-8416-37b9-50ad1252c02a','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Documents','module',90,0),
 ('789e2fdf-d69b-20af-5a04-50ad127444db','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Calls','module',90,0),
 ('79e8006d-98a8-1574-8735-50ad12dfe95e','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Tasks','module',90,0),
 ('7a01ea61-7184-b9f5-d641-50ad12df36f7','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Prospects','module',90,0),
 ('7b790b4d-59ba-8f8e-2507-50ad12ec1cae','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Opportunities','module',89,0),
 ('7e3d1636-08aa-741a-c688-50ad126fd64e','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','EAPM','module',89,0),
 ('7eabd2e0-bb2b-8ae7-a4b4-50ad124cbdac','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Leads','module',90,0),
 ('828309db-06d7-697b-a3d6-50ad125b4673','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Users','module',90,0),
 ('836e9b6a-293f-5003-53f2-50ad12451387','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Calls','module',90,0),
 ('84b27be8-2753-a430-d655-50ad12701b93','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Tasks','module',90,0),
 ('84cd3da8-7b67-cfbc-89af-50ad12158661','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Prospects','module',90,0),
 ('85f4538f-d6ed-490b-d502-50ad1206f6c7','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Accounts','module',89,0),
 ('8656b5c5-b934-1dcb-ab01-50ad122a17a6','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','EAPM','module',90,0),
 ('86e3075c-4647-5a1e-f3ae-50ad12264c74','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','ProspectLists','module',90,0),
 ('878c0241-3a04-7119-d580-50ad122fe959','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Documents','module',90,0),
 ('897c628c-c76f-ba15-2618-50ad12f1f467','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Leads','module',90,0),
 ('8b4567d5-f4bf-d2aa-e19e-50ad125b2db4','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Contacts','module',89,0),
 ('8e1bee1c-cbe5-c6a7-b4d7-50ad12bd4542','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Cases','module',89,0),
 ('8e372bb4-c128-9966-7484-50ad128efa46','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Calls','module',90,0),
 ('8f8187e3-ff4c-f640-55e6-50ad125c491d','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Tasks','module',90,0),
 ('8fab0ae0-4d50-8749-ba47-50ad12359cbb','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Prospects','module',90,0),
 ('8fd00a48-5d0e-578c-d8df-50ad1282b7ba','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Emails','module',90,0),
 ('912b218e-192a-c664-f64b-50ad125ea477','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','EAPM','module',90,0),
 ('91c737c6-75bc-0374-85f3-50ad12b6fbbb','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Meetings','module',90,0),
 ('924eda28-a408-c29c-70b8-50ad1273ced2','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Documents','module',90,0),
 ('94460033-e5cc-1bec-a323-50ad120377df','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Leads','module',90,0),
 ('960f3063-a4df-36a8-cd3b-50ad12d242a2','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Contacts','module',90,0),
 ('98ecea4d-cfb9-6708-6e82-50ad12ffee64','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Cases','module',90,0),
 ('9948c47d-65b3-cf07-f3b3-50ad123c7772','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','EAPM','module',90,0),
 ('99a4f6b0-f71c-8e50-6634-50ad1291aef7','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Notes','module',90,0),
 ('9a5bbb13-6403-fdc9-c48f-50ad12ffbf2c','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Tasks','module',90,0),
 ('9a6761ac-fc68-d692-d768-50ad1258ebae','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Prospects','module',90,0),
 ('9d1c4afd-d1f6-28d8-2afe-50ad128df685','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Documents','module',90,0),
 ('9e777b92-3ec4-fa10-07ab-50ad12f87900','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Campaigns','module',89,0),
 ('9f155fdb-2bf3-1f14-7d92-50ad127f058f','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Leads','module',90,0),
 ('a0a878f6-a9e2-3827-1d5e-50ad12b6f346','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Accounts','module',90,0),
 ('a0d57a05-69df-6bfb-b8d2-50ad127fdd86','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Contacts','module',90,0),
 ('a164342d-2b49-233b-1c72-50ad123cdd68','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','EAPM','module',90,0),
 ('a51acd4a-db6e-234f-932b-50ad126e8056','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Tasks','module',90,0),
 ('a531a1b7-8a29-3837-7421-50ad124af48a','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Prospects','module',90,0),
 ('a6647a43-edc2-c405-bc24-50ad121e8652','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Cases','module',90,0),
 ('a71b2bda-d88e-97ea-dc4b-50ad1273a11b','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Notes','module',90,0),
 ('a7940f2b-796b-9ad7-a9c5-51cae581f4f7','2013-06-26 12:56:36','2013-06-26 12:56:36','1','1','export','RA_Ramos_Atividade','module',90,0),
 ('a8e17aac-ef3b-f08e-158d-50ad12e5f9c1','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Bugs','module',89,0),
 ('a94365a0-6c11-6fa1-cfb9-50ad12cbe371','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Campaigns','module',90,0),
 ('a980ac95-f522-ac52-5d63-50ad1297bf0f','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','EAPM','module',90,0),
 ('a9e4a4db-430a-fb92-a220-50ad12e8a2ce','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Leads','module',90,0),
 ('aa4c0075-1176-a431-a985-50ad128111eb','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','EmailTemplates','module',90,0),
 ('ab257efb-383e-74c3-d4f1-50ad12717a55','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','EmailTemplates','module',89,0),
 ('abaa7a71-58a6-b49e-6a58-50ad12187f76','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Contacts','module',90,0),
 ('acbb7dd6-061f-b385-87ea-50ad128fd66a','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','ProjectTask','module',89,0),
 ('ad59eb62-eb95-12fa-bc8f-50ad1208f46f','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Project','module',89,0),
 ('ae6bbd3e-fe57-7d88-0c90-50ad12c4a6e0','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Meetings','module',89,0),
 ('ae770271-a833-4a56-89b0-50ad12fcd545','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Cases','module',90,0),
 ('afe4015e-d7f9-1f43-3c95-50ad12f2b258','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Tasks','module',90,0),
 ('afed055c-2bcd-dffc-6354-50ad1268301c','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Accounts','module',90,0),
 ('b0b670de-51fb-84f9-01da-50ad12ad3ff3','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Users','module',89,0),
 ('b19d99c3-1bff-17d3-1c08-50ad12a1be3a','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','EAPM','module',90,0),
 ('b3bb3f51-3db5-169d-d9ca-50ad124e1bca','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Bugs','module',90,0),
 ('b3bc606d-b823-a174-891b-50ad1280ab41','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Accounts','module',90,0),
 ('b41bb57f-9c37-2579-17be-50ad128408e9','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Campaigns','module',90,0),
 ('b78a6446-f5ef-82ed-c9bf-50ad1297b961','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','ProjectTask','module',90,0),
 ('b936e06e-d217-f4f8-6ec5-50ad12ed9309','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Meetings','module',90,0),
 ('b99f0fde-3d5d-a9d4-be53-50ad12770277','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','EmailMarketing','module',90,0),
 ('b9b439d0-c5b4-525d-8cf7-50ad12955efc','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','EAPM','module',90,0),
 ('bb839021-946f-285c-ea8a-50ad1232ee0b','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Users','module',90,0),
 ('bbc4d4b2-5c9e-2bc5-42e9-50ad12c36ed8','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','ProspectLists','module',89,0),
 ('bbc75c70-fc9c-c9e8-75cd-50ad12a121fa','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','Project','module',90,0),
 ('bbc9e927-b3f4-c0bb-0259-50ad12bdfadf','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Bugs','module',90,0),
 ('bcd108d1-a489-aa9a-b7dd-50ad1238578c','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Notes','module',90,0),
 ('be1cc7de-8db2-d6fd-5285-51cae5743465','2013-06-26 12:56:36','2013-06-26 12:56:36','1','1','access','RA_Ramos_Atividade','module',89,0),
 ('be7fa7e6-c32b-2795-e101-50ad127f6fdc','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Contacts','module',90,0),
 ('be8187e4-56f4-d779-bce7-50ad12820e93','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Accounts','module',90,0),
 ('bee402b8-eee6-4a83-e26b-50ad128a96bf','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Campaigns','module',90,0),
 ('c2622768-a301-b872-db4d-50ad12b8a79c','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','ProjectTask','module',90,0),
 ('c435b766-a32d-39b1-e6cf-50ad12a2ac2a','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Bugs','module',90,0),
 ('c68a151d-f892-f2c9-0265-50ad12656084','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Users','module',90,0),
 ('c691e0ea-acb0-c9eb-4874-50ad12fd003b','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','ProspectLists','module',90,0),
 ('c6c28a77-34f1-ce2d-abf1-50ad12af283b','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Meetings','module',90,0),
 ('c7739522-e08d-3edf-9bfc-50ad1272db12','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Notes','module',90,0),
 ('c91daf8a-d20a-2959-5efc-51cae54d3a8f','2013-06-26 12:56:36','2013-06-26 12:56:36','1','1','view','RA_Ramos_Atividade','module',90,0),
 ('c94b22e3-3881-8b4a-18e9-50ad129bc858','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Accounts','module',90,0),
 ('c9ba2263-f6fc-bd6c-dd51-50ad12f66901','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Campaigns','module',90,0),
 ('cc090c94-c217-ec51-a0c7-50ad123f54ad','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Bugs','module',90,0),
 ('ccdb01a6-0afe-83cb-f297-50ad121e5f80','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Project','module',90,0),
 ('cd1e67a1-25cf-5289-2fcb-50ad12918c09','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','ProjectTask','module',90,0),
 ('ce26ebb5-3521-4438-f9ca-50ad1285b4c7','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','view','EmailTemplates','module',90,0),
 ('d00b6c4a-fa20-1c80-d3b1-50ad125ac8f2','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Contacts','module',90,0),
 ('d120e2c0-a6e1-61a6-95d1-50ad12459a95','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Users','module',90,0),
 ('d15df537-73e0-4edc-3102-50ad12644922','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','ProspectLists','module',90,0),
 ('d29e9de2-b2d4-b0cc-cc0d-50ad123a41e4','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Notes','module',90,0),
 ('d3656044-16a3-036f-86dc-51cae5865e9c','2013-06-26 12:56:36','2013-06-26 12:56:36','1','1','list','RA_Ramos_Atividade','module',90,0),
 ('d39009e0-dc67-2371-894c-50ad123d6905','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','EmailMarketing','module',89,0),
 ('d427ac1d-b102-a58a-6690-50ad12afc0bd','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Bugs','module',90,0),
 ('d476c052-505e-3937-d4e1-50ad1272b4a5','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Campaigns','module',90,0),
 ('d53f8505-80bc-a062-67a2-50ad12ff8b7f','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','ProjectTask','module',90,0),
 ('d5c452f0-2b96-8fdd-4963-50ad12dc03e5','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Cases','module',90,0),
 ('d5cb3597-b859-205a-473f-50ad127be238','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','Project','module',90,0),
 ('dab1166c-5a2f-078e-93ee-50ad1228f7eb','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Notes','module',90,0),
 ('dbeae14d-392d-548b-ea1f-50ad1275e415','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Users','module',90,0),
 ('dc304144-6028-0d85-5753-50ad12f8c3e3','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','ProspectLists','module',90,0),
 ('dc42ca9a-b5cd-b9f6-5147-50ad121a3893','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Bugs','module',90,0),
 ('dd5892d6-5a8c-c3fc-527b-50ad12bc8f5a','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','ProjectTask','module',90,0),
 ('dd7a2551-7841-e4bb-1758-50ad1205e0e9','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Meetings','module',90,0),
 ('de35bdc1-177b-caf0-6296-51cae57403fb','2013-06-26 12:56:36','2013-06-26 12:56:36','1','1','edit','RA_Ramos_Atividade','module',90,0),
 ('df47fcfc-cdd0-6455-a7ba-50ad12f29a97','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Campaigns','module',90,0),
 ('e09322ce-9a8f-fb02-a583-50ad122d12b4','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','Project','module',90,0),
 ('e23635fa-25a4-434c-a8e6-50ad12907641','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Accounts','module',90,0),
 ('e2dd9b6f-0cd4-cf79-37d5-50ad12f48fe0','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Notes','module',90,0),
 ('e45f6772-448d-7612-d848-50ad1222911f','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Bugs','module',90,0),
 ('e5717024-4aa4-c6f4-8dea-50ad12ca86e2','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Meetings','module',90,0),
 ('e57a35e8-bb1e-f0e0-1145-50ad129ed496','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','ProjectTask','module',90,0),
 ('e6b8edc2-6dba-5735-ae11-50ad12191200','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','Users','module',90,0),
 ('e6f975fc-71fe-531b-950d-50ad12f22ef7','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','ProspectLists','module',90,0),
 ('e90b8e3c-854d-c64d-de88-50ad128ef754','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','list','EmailTemplates','module',90,0),
 ('e920fd3d-da65-418a-54fb-51cae5bd1db6','2013-06-26 12:56:36','2013-06-26 12:56:36','1','1','delete','RA_Ramos_Atividade','module',90,0),
 ('ea0f3160-e0f8-52c5-a618-50ad12c3072c','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','Campaigns','module',90,0),
 ('eb6492c9-0025-2858-b174-50ad1274b86a','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Project','module',90,0),
 ('ec7224e0-a86c-5009-6c3e-50ad1231daa2','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Cases','module',90,0),
 ('ed95d6b8-897c-543f-a4aa-50ad122f0272','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','massupdate','ProjectTask','module',90,0),
 ('ef8a30e1-76b6-8eab-428e-50ad12ea17d7','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','delete','Meetings','module',90,0),
 ('f1815484-d821-a4ec-1d92-50ad1293837f','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Users','module',90,0),
 ('f1c2b0cf-d509-e9fd-6411-50ad1288c4b6','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','import','ProspectLists','module',90,0),
 ('f24f5051-58b9-1cd8-5bd9-50ad124ba437','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','access','Emails','module',89,0),
 ('f3a47233-74f8-c51e-bace-50ad12387a9b','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','export','Contacts','module',90,0),
 ('f3cea499-a4b6-79d4-7eb7-50ad12bca316','2012-11-21 17:40:16','2012-11-21 17:40:16','1','','edit','EmailTemplates','module',90,0),
 ('f3d16a0c-e549-963f-4d53-51cae520c212','2013-06-26 12:56:36','2013-06-26 12:56:36','1','1','import','RA_Ramos_Atividade','module',90,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;


--
-- Definition of table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
CREATE TABLE  `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_roles`
--

/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
LOCK TABLES `acl_roles` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;


--
-- Definition of table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
CREATE TABLE  `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_roles_actions`
--

/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
LOCK TABLES `acl_roles_actions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;


--
-- Definition of table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
CREATE TABLE  `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_roles_users`
--

/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
LOCK TABLES `acl_roles_users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;


--
-- Definition of table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
CREATE TABLE  `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address_book`
--

/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
LOCK TABLES `address_book` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;


--
-- Definition of table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
CREATE TABLE  `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bugs`
--

/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
LOCK TABLES `bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;


--
-- Definition of table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
CREATE TABLE  `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bugs_audit`
--

/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
LOCK TABLES `bugs_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;


--
-- Definition of table `calls`
--

DROP TABLE IF EXISTS `calls`;
CREATE TABLE  `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calls`
--

/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
LOCK TABLES `calls` WRITE;
INSERT INTO `calls` VALUES  ('e2b01660-e71f-9f1a-5be1-50ae1f46ee14','Liagação','2012-11-22 12:51:38','2012-11-22 12:54:22','1','1',NULL,0,'1',0,15,'2012-11-28 12:00:00','2012-11-28 12:15:00','Accounts','Planned','Inbound','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1',1800,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;


--
-- Definition of table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
CREATE TABLE  `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calls_contacts`
--

/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
LOCK TABLES `calls_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;


--
-- Definition of table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
CREATE TABLE  `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calls_leads`
--

/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
LOCK TABLES `calls_leads` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;


--
-- Definition of table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
CREATE TABLE  `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calls_users`
--

/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
LOCK TABLES `calls_users` WRITE;
INSERT INTO `calls_users` VALUES  ('1b100389-b952-ff0a-99ea-50ae1f5d86a2','e2b01660-e71f-9f1a-5be1-50ae1f46ee14','1','1','none','2012-11-22 12:51:38',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;


--
-- Definition of table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
CREATE TABLE  `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaign_log`
--

/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
LOCK TABLES `campaign_log` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;


--
-- Definition of table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
CREATE TABLE  `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaign_trkrs`
--

/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
LOCK TABLES `campaign_trkrs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;


--
-- Definition of table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
CREATE TABLE  `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaigns`
--

/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
LOCK TABLES `campaigns` WRITE;
INSERT INTO `campaigns` VALUES  ('7f6c9cdf-388a-2b0a-1061-50ae27a59e9d','Email marketing natal','2012-11-22 13:23:54','2012-11-22 13:23:54','1','1',0,'1',3,0,'http://',NULL,'2012-11-03','2012-11-24','Planning',0,'-99',NULL,NULL,NULL,NULL,'Email',NULL,NULL,''),
 ('8f3fe15f-c58c-f579-52b5-50ae2686ee01','sdsd','2012-11-22 13:17:56','2012-11-22 13:17:56','1','1',0,'1',1,0,'http://',NULL,NULL,'2012-11-03','Active',0,'-99',0,0,0,0,'Telesales','','',''),
 ('c3a828ff-2629-aa8a-e8c0-50ae26a104ea','Radio','2012-11-22 13:18:29','2012-11-22 13:20:06','1','1',0,'1',2,0,'http://',NULL,'2012-11-01','2012-11-30','Active',20,'-99',50,45,47,200,'Radio',NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;


--
-- Definition of table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
CREATE TABLE  `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaigns_audit`
--

/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
LOCK TABLES `campaigns_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;


--
-- Definition of table `cases`
--

DROP TABLE IF EXISTS `cases`;
CREATE TABLE  `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cases`
--

/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
LOCK TABLES `cases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;


--
-- Definition of table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
CREATE TABLE  `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cases_audit`
--

/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
LOCK TABLES `cases_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;


--
-- Definition of table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
CREATE TABLE  `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cases_bugs`
--

/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
LOCK TABLES `cases_bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;


--
-- Definition of table `conf_cron`
--

DROP TABLE IF EXISTS `conf_cron`;
CREATE TABLE  `conf_cron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `data_ultima_execucao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conf_cron`
--

/*!40000 ALTER TABLE `conf_cron` DISABLE KEYS */;
LOCK TABLES `conf_cron` WRITE;
INSERT INTO `conf_cron` VALUES  (1,'RetornarClientes','2013-06-28 15:44:34'),
 (2,'RetornarOrcamentos','2013-06-28 15:43:11'),
 (3,'RetornarRamosAtividades','2013-06-28 15:43:11'),
 (4,'RetornarUsuarios','2013-06-28 15:43:11');
UNLOCK TABLES;
/*!40000 ALTER TABLE `conf_cron` ENABLE KEYS */;


--
-- Definition of table `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE  `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

/*!40000 ALTER TABLE `config` DISABLE KEYS */;
LOCK TABLES `config` WRITE;
INSERT INTO `config` VALUES  ('notify','fromaddress','do_not_reply@example.com'),
 ('notify','fromname','SugarCRM'),
 ('notify','send_by_default','1'),
 ('notify','on','1'),
 ('notify','send_from_assigning_user','0'),
 ('info','sugar_version','6.5.2'),
 ('MySettings','tab','YToxNzp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6NToiQ2FzZXMiO3M6NToiQ2FzZXMiO3M6OToiUHJvc3BlY3RzIjtzOjk6IlByb3NwZWN0cyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czoxODoiUkFfUmFtb3NfQXRpdmlkYWRlIjtzOjE4OiJSQV9SYW1vc19BdGl2aWRhZGUiO30='),
 ('portal','on','0'),
 ('tracker','Tracker','1'),
 ('system','skypeout_on','1'),
 ('sugarfeed','enabled','1'),
 ('sugarfeed','module_UserFeed','1'),
 ('sugarfeed','module_Leads','1'),
 ('sugarfeed','module_Opportunities','1'),
 ('sugarfeed','module_Contacts','1'),
 ('sugarfeed','module_Cases','1'),
 ('Update','CheckUpdates','automatic'),
 ('system','name','SugarCRM'),
 ('license','msg_admin',''),
 ('license','msg_all',''),
 ('license','last_validation','no_connection'),
 ('license','latest_versions',''),
 ('Update','last_check_date','1373380436'),
 ('Update','last_check_version','6.5.5'),
 ('system','adminwizard','1'),
 ('proxy','on','0'),
 ('proxy','host',''),
 ('proxy','port',''),
 ('proxy','auth','0'),
 ('proxy','username',''),
 ('proxy','password',''),
 ('license','last_connection_fail','2013-07-09 14:33:55'),
 ('license','vk_end_date','2013-07-01 16:30:03'),
 ('license','validation_key','YToxOntzOjg6InZlcmlmaWVkIjtiOjA7fQ==');
UNLOCK TABLES;
/*!40000 ALTER TABLE `config` ENABLE KEYS */;


--
-- Definition of table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE  `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
LOCK TABLES `contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;


--
-- Definition of table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
CREATE TABLE  `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_audit`
--

/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
LOCK TABLES `contacts_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;


--
-- Definition of table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
CREATE TABLE  `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_bugs`
--

/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
LOCK TABLES `contacts_bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;


--
-- Definition of table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
CREATE TABLE  `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_cases`
--

/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
LOCK TABLES `contacts_cases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;


--
-- Definition of table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
CREATE TABLE  `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_users`
--

/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
LOCK TABLES `contacts_users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;


--
-- Definition of table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE  `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
LOCK TABLES `currencies` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;


--
-- Definition of table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE  `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_fields`
--

/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
LOCK TABLES `custom_fields` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;


--
-- Definition of table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
CREATE TABLE  `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `document_revisions`
--

/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
LOCK TABLES `document_revisions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;


--
-- Definition of table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE  `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents`
--

/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
LOCK TABLES `documents` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;


--
-- Definition of table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
CREATE TABLE  `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_accounts`
--

/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
LOCK TABLES `documents_accounts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;


--
-- Definition of table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
CREATE TABLE  `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_bugs`
--

/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
LOCK TABLES `documents_bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;


--
-- Definition of table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
CREATE TABLE  `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_cases`
--

/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
LOCK TABLES `documents_cases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;


--
-- Definition of table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
CREATE TABLE  `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_contacts`
--

/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
LOCK TABLES `documents_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;


--
-- Definition of table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
CREATE TABLE  `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_opportunities`
--

/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
LOCK TABLES `documents_opportunities` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;


--
-- Definition of table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
CREATE TABLE  `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eapm`
--

/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
LOCK TABLES `eapm` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;


--
-- Definition of table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
CREATE TABLE  `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addr_bean_rel`
--

/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
LOCK TABLES `email_addr_bean_rel` WRITE;
INSERT INTO `email_addr_bean_rel` VALUES  ('101ac884-b221-9005-911f-50ae1f6cbdee','103508e7-47f0-8ebd-f187-50ae1f0aa9b8','1','Users',1,0,'2012-11-22 12:50:56','2012-11-22 12:50:56',0),
 ('7c02767a-3de7-1dd6-1489-51caf57842fc','7c1e73e9-42bd-ff9b-8cf6-51caf51e8a36','687146d4-d722-d18b-eb0d-51caf5e88e4b','Users',1,0,'2013-06-26 14:07:02','2013-06-26 14:07:02',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;


--
-- Definition of table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
CREATE TABLE  `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addresses`
--

/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
LOCK TABLES `email_addresses` WRITE;
INSERT INTO `email_addresses` VALUES  ('103508e7-47f0-8ebd-f187-50ae1f0aa9b8','rafaela@ambientelivre.com.br','RAFAELA@AMBIENTELIVRE.COM.BR',0,0,'2012-11-22 12:50:56','2012-11-22 12:50:56',0),
 ('7c1e73e9-42bd-ff9b-8cf6-51caf51e8a36','weiberlan@ambientelivre.com.br','WEIBERLAN@AMBIENTELIVRE.COM.BR',0,0,'2013-06-26 14:07:02','2013-06-26 14:08:46',0),
 ('a9c163e3-db9a-44c3-799d-50ae22ae660e','treinamento@ambientelivre.com.br','TREINAMENTO@AMBIENTELIVRE.COM.BR',0,0,'2012-11-22 13:03:07','2012-11-22 13:03:07',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;


--
-- Definition of table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
CREATE TABLE  `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_cache`
--

/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
LOCK TABLES `email_cache` WRITE;
INSERT INTO `email_cache` VALUES  ('ef5c84eb-4309-8776-1826-50ae22fd6e15','INBOX','teste','Rafaela Raganham <rafaela@ambientelivre.com.br>','treinamento@ambientelivre.com.br','2012-11-22 13:02:23','<807f7f07a60ea25d01af8beb1eaf76d7@ambientelivre.com.br>',2974,1,1,0,0,0,0,1,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;


--
-- Definition of table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
CREATE TABLE  `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_marketing`
--

/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
LOCK TABLES `email_marketing` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;


--
-- Definition of table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
CREATE TABLE  `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
LOCK TABLES `email_marketing_prospect_lists` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;


--
-- Definition of table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE  `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
LOCK TABLES `email_templates` WRITE;
INSERT INTO `email_templates` VALUES  ('42ec11af-3465-75d8-c775-50ad129d2ca4','2012-11-21 17:40:16','2012-11-21 17:40:16','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),
 ('5e0a03e1-6ef9-559f-28c2-50ad128c741e','2012-11-21 17:40:16','2012-11-21 17:40:16','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;


--
-- Definition of table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
CREATE TABLE  `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailman`
--

/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
LOCK TABLES `emailman` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;


--
-- Definition of table `emails`
--

DROP TABLE IF EXISTS `emails`;
CREATE TABLE  `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails`
--

/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
LOCK TABLES `emails` WRITE;
INSERT INTO `emails` VALUES  ('7bb694c5-3f82-9cad-8b80-50ae2293ab9c','2012-11-22 13:03:07','2012-11-22 13:03:07','1','1','1',0,'2012-11-22 13:02:00','0014b3b916e1bf377d2f66e3a0b81dcf','teste','inbound','unread',NULL,NULL,'pick','ef5c84eb-4309-8776-1826-50ae22fd6e15','Accounts','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;


--
-- Definition of table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
CREATE TABLE  `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails_beans`
--

/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
LOCK TABLES `emails_beans` WRITE;
INSERT INTO `emails_beans` VALUES  ('8f95b375-7c66-9861-8e71-50ae22bebf4c','7bb694c5-3f82-9cad-8b80-50ae2293ab9c','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','Accounts','','2012-11-22 13:03:07',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;


--
-- Definition of table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
CREATE TABLE  `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails_email_addr_rel`
--

/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
LOCK TABLES `emails_email_addr_rel` WRITE;
INSERT INTO `emails_email_addr_rel` VALUES  ('9e355a27-c3d1-0bc3-3f93-50ae22b25084','7bb694c5-3f82-9cad-8b80-50ae2293ab9c','from','103508e7-47f0-8ebd-f187-50ae1f0aa9b8',0),
 ('b48dc4ff-bd92-ebf0-176c-50ae2260fa72','7bb694c5-3f82-9cad-8b80-50ae2293ab9c','to','a9c163e3-db9a-44c3-799d-50ae22ae660e',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;


--
-- Definition of table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
CREATE TABLE  `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails_text`
--

/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
LOCK TABLES `emails_text` WRITE;
INSERT INTO `emails_text` VALUES  ('7bb694c5-3f82-9cad-8b80-50ae2293ab9c','Rafaela Raganham <rafaela@ambientelivre.com.br>','Rafaela Raganham <rafaela@ambientelivre.com.br>','treinamento@ambientelivre.com.br','','','  \r\n\r\n-- \r\n\r\n_RAFAELA RAGANHAM _\r\n_Desenvolvimento_\r\n_3308 - 3438 /\r\n9611-5059_\r\n  ','\n<p> </p>\n<div>-- <br /><pre><strong><em>Rafaela Raganham </em></strong><br /><em>Desenvolvimento</em><br /><em>3308 - 3438 / 9611-5059</em></pre>\n</div>\n',NULL,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;


--
-- Definition of table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
CREATE TABLE  `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields_meta_data`
--

/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
LOCK TABLES `fields_meta_data` WRITE;
INSERT INTO `fields_meta_data` VALUES  ('Accountscpf_cnpj_c','cpf_cnpj_c','LBL_CPF_CNPJ','','','Accounts','varchar',255,0,'','2013-06-25 19:43:21',0,0,0,0,1,'true','','','',''),
 ('Accountsfaturamentos_c','faturamentos_c','LBL_FATURAMENTOS',NULL,NULL,'Accounts','iframe',255,0,'http://portalintegracao.ebs.com.br/Site/Interface/0.0/Faturamento/PesquisaCRM.html?Tipo=NotaFiscal&Nome={name}','2013-07-09 14:38:03',0,0,0,0,1,'true',NULL,NULL,'1','200'),
 ('Accountsorcamento_c','orcamento_c','LBL_ORCAMENTO',NULL,'Or&Atilde;&sect;amentos cliente','Accounts','iframe',255,0,'http://portalintegracao.ebs.com.br/Site/Interface/0.0/Faturamento/PesquisaCRM.html?Tipo=Orcamento&Nome={name}','2013-07-09 14:38:27',0,0,0,0,1,'true',NULL,NULL,'1','200'),
 ('Accountspedidos_c','pedidos_c','LBL_PEDIDOS',NULL,NULL,'Accounts','iframe',255,0,'http://portalintegracao.ebs.com.br/Site/Interface/0.0/Faturamento/PesquisaCRM.html?Tipo=Pedido&Nome={name}','2013-07-09 14:38:53',0,0,0,0,1,'true',NULL,NULL,'1','200'),
 ('Accountstitulos_c','titulos_c','LBL_TITULOS',NULL,NULL,'Accounts','iframe',255,0,'http://portalintegracao.ebs.com.br/Site/Interface/0.0/Faturamento/PesquisaCRM.html?Tipo=Titulo&Nome={name}','2013-07-09 14:39:17',0,0,0,0,1,'true',NULL,NULL,'1','200');
UNLOCK TABLES;
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;


--
-- Definition of table `folders`
--

DROP TABLE IF EXISTS `folders`;
CREATE TABLE  `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `folders`
--

/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
LOCK TABLES `folders` WRITE;
INSERT INTO `folders` VALUES  ('202a8c3d-0a76-f592-9638-50ae21d13fa5','My Archived Emails','archived','b92bdf17-2a35-4335-cdfc-50ae21fa09ee',0,0,1,'','','1','1',0),
 ('b92bdf17-2a35-4335-cdfc-50ae21fa09ee','My Email','inbound','',1,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'inbound\' OR status = \'inbound\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'sent\', \'archived\', \'draft\') AND type NOT IN (\'out\', \'archived\', \'draft\')','','1','1',0),
 ('d38c3583-dc58-397a-41fb-50ae21021e9a','My Drafts','draft','b92bdf17-2a35-4335-cdfc-50ae21fa09ee',0,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'draft\' OR status = \'draft\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')','','1','1',0),
 ('f3f0a189-33db-6552-0082-50ae217589c7','Sent Emails','sent','b92bdf17-2a35-4335-cdfc-50ae21fa09ee',0,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'out\' OR status = \'sent\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')','','1','1',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;


--
-- Definition of table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
CREATE TABLE  `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `folders_rel`
--

/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
LOCK TABLES `folders_rel` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;


--
-- Definition of table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
CREATE TABLE  `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `folders_subscriptions`
--

/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
LOCK TABLES `folders_subscriptions` WRITE;
INSERT INTO `folders_subscriptions` VALUES  ('202eb81e-6b74-9a6c-746a-50ae21b9c46a','202a8c3d-0a76-f592-9638-50ae21d13fa5','1'),
 ('b934eb8a-3345-1073-cc21-50ae21843b82','b92bdf17-2a35-4335-cdfc-50ae21fa09ee','1'),
 ('d3931d2a-63b3-f610-f3e2-50ae21c05ad0','d38c3583-dc58-397a-41fb-50ae21021e9a','1'),
 ('f3f784f9-2e77-e430-7192-50ae21feca1c','f3f0a189-33db-6552-0082-50ae217589c7','1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;


--
-- Definition of table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
CREATE TABLE  `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `import_maps`
--

/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
LOCK TABLES `import_maps` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;


--
-- Definition of table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
CREATE TABLE  `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inbound_email`
--

/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
LOCK TABLES `inbound_email` WRITE;
INSERT INTO `inbound_email` VALUES  ('ef5c84eb-4309-8776-1826-50ae22fd6e15',0,'2012-11-22 13:01:14','2012-11-22 13:01:56','1','1','treinamento','Active','mail.ambientelivre.com.br','treinamento@ambientelivre.com.br','nlCJNdvVNb9HF/zsHuMLrg==',993,'::::ssl::imap::novalidate-cert::notls::','INBOX',0,'pick','','YTo4OntzOjk6ImZyb21fbmFtZSI7czoxMzoiQWRtaW5pc3RyYXRvciI7czo5OiJmcm9tX2FkZHIiO3M6Mjg6InJhZmFlbGFAYW1iaWVudGVsaXZyZS5jb20uYnIiO3M6MTM6InJlcGx5X3RvX2FkZHIiO3M6MDoiIjtzOjExOiJ0cmFzaEZvbGRlciI7czoxMDoiSU5CT1gubGl4byI7czoxMDoic2VudEZvbGRlciI7czowOiIiO3M6MTA6Im9ubHlfc2luY2UiO2I6MDtzOjEzOiJmaWx0ZXJfZG9tYWluIjtzOjA6IiI7czoxNDoib3V0Ym91bmRfZW1haWwiO3M6MzY6ImUyMWJjOGQ1LWZlNWQtNjMyMy1kMGRjLTUwYWUyMjYyMDBjZSI7fQ==','1',1,'');
UNLOCK TABLES;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;


--
-- Definition of table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
CREATE TABLE  `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inbound_email_autoreply`
--

/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
LOCK TABLES `inbound_email_autoreply` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;


--
-- Definition of table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
CREATE TABLE  `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inbound_email_cache_ts`
--

/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
LOCK TABLES `inbound_email_cache_ts` WRITE;
INSERT INTO `inbound_email_cache_ts` VALUES  ('ef5c84eb-4309-8776-1826-50ae22fd6e15_INBOX',1353589347);
UNLOCK TABLES;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;


--
-- Definition of table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
CREATE TABLE  `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_queue`
--

/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
LOCK TABLES `job_queue` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;


--
-- Definition of table `leads`
--

DROP TABLE IF EXISTS `leads`;
CREATE TABLE  `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leads`
--

/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
LOCK TABLES `leads` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;


--
-- Definition of table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
CREATE TABLE  `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leads_audit`
--

/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
LOCK TABLES `leads_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;


--
-- Definition of table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
CREATE TABLE  `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `linked_documents`
--

/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
LOCK TABLES `linked_documents` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;


--
-- Definition of table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
CREATE TABLE  `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetings`
--

/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
LOCK TABLES `meetings` WRITE;
INSERT INTO `meetings` VALUES  ('c28839e3-81a8-2f1a-385d-50ae1f24b584','Reuniao','2012-11-22 12:51:48','2012-11-22 12:54:16','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,30,'2012-11-19 11:30:00','2012-11-19 12:00:00','Accounts','Planned','Sugar','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1',1800,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,'',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;


--
-- Definition of table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
CREATE TABLE  `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetings_contacts`
--

/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
LOCK TABLES `meetings_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;


--
-- Definition of table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
CREATE TABLE  `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetings_leads`
--

/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
LOCK TABLES `meetings_leads` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;


--
-- Definition of table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
CREATE TABLE  `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetings_users`
--

/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
LOCK TABLES `meetings_users` WRITE;
INSERT INTO `meetings_users` VALUES  ('d281ea61-aa9c-7391-2cb9-50ae1f57dc8c','c28839e3-81a8-2f1a-385d-50ae1f24b584','1','1','none','2012-11-22 12:51:48',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;


--
-- Definition of table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE  `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notes`
--

/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
LOCK TABLES `notes` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;


--
-- Definition of table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
CREATE TABLE  `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth_consumer`
--

/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
LOCK TABLES `oauth_consumer` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;


--
-- Definition of table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
CREATE TABLE  `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth_nonce`
--

/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
LOCK TABLES `oauth_nonce` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;


--
-- Definition of table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
CREATE TABLE  `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth_tokens`
--

/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
LOCK TABLES `oauth_tokens` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;


--
-- Definition of table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
CREATE TABLE  `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  `id_sistema_integracao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opportunities`
--

/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
LOCK TABLES `opportunities` WRITE;
INSERT INTO `opportunities` VALUES  ('','{nome}',NULL,'2013-06-25 15:15:13',NULL,NULL,'{description}',0,'{usuario}','{tipo}','{campanha}','{fonte}',39.5,NULL,'{moeda}','0000-00-00','{proximo_passo}','Closed Won',0,'37dd586e546d4923a241813a560308fb'),
 ('16355c9e-d350-4150-5baa-51c9ebfa8f6a','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:12:10','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('1a46e331-38e4-9799-9ffd-51c9ea847b10','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:10:48','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('1b8e0567-3f3d-caa4-d4e6-51c9eaf9c42b','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,379,NULL,NULL,NULL,NULL,'Closed Lost',NULL,'007933fe211b49f58a8d8f13c4c462b8'),
 ('27d9259a-abfc-7d57-5303-51c9ebf78cb5','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:12:10','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('2bc5dd48-c03c-9cfb-6aa4-51c9eaf4ee5d','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,127,NULL,NULL,NULL,NULL,'Closed Won',NULL,'98ad9865d56c41339ed64d954d396a79'),
 ('2d1dd997-8c3f-4673-06d5-51c9eb601ca4','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:12:10','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('32282157-1bd3-8841-b9af-51c9e8c46278','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:02:26','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('3eaf36f8-f6ef-a6d0-380b-51c9ea4ab4e5','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,127,NULL,NULL,NULL,NULL,'Closed Lost',NULL,'d9c64701eaaa451fa6548609e028baef'),
 ('45902b7e-6922-8881-32ba-50ae26a50a68','Venda produto B','2012-11-22 13:19:06','2012-11-22 13:21:24','1','1',NULL,0,'1',NULL,'c3a828ff-2629-aa8a-e8c0-50ae26a104ea',NULL,120,120,'-99','2012-11-01',NULL,'Closed Won',100,NULL),
 ('4b20fba9-3289-746f-c781-51c9e8e58da2','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:02:26','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('4ee405cb-6ee1-80c2-9948-51c9ea500697','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,127,NULL,NULL,NULL,NULL,'Closed Won',NULL,'414691c01a604a3680ba1c61b7f577ce'),
 ('5f22e823-1ad9-5c0d-ad67-51c9eab5f7a9','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,127,NULL,NULL,NULL,NULL,'Closed Lost',NULL,'876ab4c404294c1d914d5300fee7bc8c'),
 ('5f760d48-e6fa-509d-c0e6-51c9eaabeacf','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,379,NULL,NULL,NULL,NULL,'Closed Won',NULL,'4afb1568dd7e46dab06580cd93b73091'),
 ('63d4a5b3-9b27-b74c-f7e4-50ae26b2fc3b','Venda produto B','2012-11-22 13:19:32','2013-06-27 19:32:44','1','1',NULL,0,'1',NULL,'c3a828ff-2629-aa8a-e8c0-50ae26a104ea',NULL,89,89,'-99','2012-11-02',NULL,'Closed Won',100,NULL),
 ('72089d2c-85dd-2364-7594-51c9eae719b4','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,14262,NULL,NULL,NULL,NULL,'Closed Lost',NULL,'a989e6077ca343ab881f619d96819eca'),
 ('7d4f9091-2cc7-8007-6b07-51c9e8c18bd8',NULL,NULL,'2013-06-25 18:59:13','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('87a7b53a-dff1-7662-25ef-51c9eaed7eb7','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,NULL,'Closed Lost',NULL,'20b1c0f374a844f1bbf2c4fe2d9b1b36'),
 ('89675c53-bfd6-5eaa-7201-51c9e91c538c','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:05:57','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('92c8c602-45dc-6d7a-014c-51c9e8af7750',NULL,NULL,'2013-06-25 18:59:13','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('9a0507bc-8dd7-0868-42b2-51c9e9ae1f00','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:05:57','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('9b8fc491-ef30-ca35-d3a2-51c9eb3373ea','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:14:27','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('9d3e0633-c8dc-96b7-868a-51c9ea9e37cd','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,127,NULL,NULL,NULL,NULL,'Closed Lost',NULL,'129891270874418cb7b9f4260de4b1b5'),
 ('9f48544b-3d7c-6cf2-4fee-51c9ea6b1585','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:05:57','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('a2b7be19-9c8b-d1f0-7eb6-51c9e95fb300','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:05:57','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('a339851f-163c-1564-f18e-51c9ea120f6e','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,379,NULL,NULL,NULL,NULL,'Closed Lost',NULL,'c1db61bc4c9e416383434e324bbdbc10'),
 ('afcb16db-41e0-c79d-694c-51c9eba995f8','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:14:27','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('b2d9d8c4-dab0-2f79-279f-51c9eaab00fe','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,NULL,'Closed Lost',NULL,'2cf3330243b54f8d849c1d29c83f1732'),
 ('b820d099-cdf8-28c7-31e9-51c9eabf894e','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:05:57','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('b8ef027b-bb45-ed0e-8ba7-51c9ec9dbe5d','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:14:27','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('b94dbfdb-24a8-2442-6269-51c9ead18ed9','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,19,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2dda57af8adc4b9096c5510e140898fc'),
 ('bbb2befa-af6c-1ded-d3d0-51c9e953d8e4','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:05:57','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('c2be59b3-d266-8a9c-0f2b-51c9e9d37e82','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:02:26','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('cee74e65-64c9-8054-6cbd-51c9eae55715','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,379,NULL,NULL,NULL,NULL,'Closed Lost',NULL,'48d2447442bf4cad8bb2aa347ca14834'),
 ('d3388139-0815-41b2-61ea-51c9eae52a38','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'498b212ec85744a8bb3b6c94809dde80'),
 ('d89068e1-beff-0801-6a84-51c9e9d5603e','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:02:26','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('d9414423-201a-a16e-593a-51c9e76e218c',NULL,NULL,'2013-06-25 18:59:04','1',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('e4815000-3933-6765-df5e-51c9ea0034c6','Gerado automÃ¡ticamente a partir do sistema Fox',NULL,'2013-06-25 19:09:14','1',NULL,NULL,1,NULL,NULL,NULL,NULL,379,NULL,NULL,NULL,NULL,'Closed Won',NULL,'ffeef4bcd5ae45069f719ae2ba38953c'),
 ('e813a6e7-9221-dcee-0157-51c9ec4b4d48','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:14:27','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('ec7a7163-d1c7-fb80-1a17-51c9ebbe51dc','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:10:48','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('f0c40aea-5237-09b8-6e3b-51c9ebd1afe3','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:12:10','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('f223b13d-0929-367e-301d-51c9ea690c02','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:10:48','1',NULL,NULL,1,NULL,NULL,NULL,NULL,7.95,NULL,NULL,NULL,NULL,'Closed Won',NULL,'2f27dd912c6e4b5bbea0a2950a4d8707'),
 ('f5150f84-c498-e29c-ee05-51c9eb4e36e3','Gerado autom&aacute;ticamente a partir do sistema ',NULL,'2013-06-25 19:10:48','1',NULL,NULL,1,NULL,NULL,NULL,NULL,39.5,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb'),
 ('f7280b33-7987-0054-9694-51c9e7231448',NULL,NULL,'2013-06-25 18:59:04','1',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Closed Won',NULL,'37dd586e546d4923a241813a560308fb');
UNLOCK TABLES;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;


--
-- Definition of table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
CREATE TABLE  `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opportunities_audit`
--

/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
LOCK TABLES `opportunities_audit` WRITE;
INSERT INTO `opportunities_audit` VALUES  ('1ca20465-1d42-2e10-0256-50ae2672bd56','45902b7e-6922-8881-32ba-50ae26a50a68','2012-11-22 13:20:47','1','sales_stage','enum','Prospecting','Closed Won',NULL,NULL),
 ('39258e0c-96a7-784b-127e-50ae26512eb0','63d4a5b3-9b27-b74c-f7e4-50ae26b2fc3b','2012-11-22 13:20:35','1','sales_stage','enum','Prospecting','Closed Won',NULL,NULL),
 ('4471c24f-99bd-b76f-fe36-50ae268ec398','63d4a5b3-9b27-b74c-f7e4-50ae26b2fc3b','2012-11-22 13:20:35','1','probability','int','10','100',NULL,NULL),
 ('a43e5109-3967-5c32-6e58-50ae26c268bb','63d4a5b3-9b27-b74c-f7e4-50ae26b2fc3b','2012-11-22 13:21:15','1','amount_usdollar','currency','89999999','89',NULL,NULL),
 ('c3574fa9-7ab7-e5d6-808c-50ae2642aa6c','45902b7e-6922-8881-32ba-50ae26a50a68','2012-11-22 13:21:24','1','amount_usdollar','currency','2000000','120',NULL,NULL),
 ('ca140cb2-e831-2b54-7fa0-50ae26373840','45902b7e-6922-8881-32ba-50ae26a50a68','2012-11-22 13:20:47','1','probability','int','10','100',NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;


--
-- Definition of table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
CREATE TABLE  `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opportunities_contacts`
--

/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
LOCK TABLES `opportunities_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;


--
-- Definition of table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
CREATE TABLE  `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outbound_email`
--

/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
LOCK TABLES `outbound_email` WRITE;
INSERT INTO `outbound_email` VALUES  ('47304977-7c33-6e45-6c5a-50ae21842772','system','system-override','1','SMTP','other','',25,'','',1,0),
 ('98040f0c-9c6b-2829-fa32-50ad12ec60b0','system','system','1','SMTP','other','',25,'','',1,0),
 ('9cb80048-267d-0717-9647-51caf50163e0','system','system-override','687146d4-d722-d18b-eb0d-51caf5e88e4b','SMTP','other','',25,'weiberlan@ambientelivre.com.br','r+hoPA6UH/FeixWtdNOQVQ==',1,0),
 ('e21bc8d5-fe5d-6323-d0dc-50ae226200ce','teste','user','1','SMTP','other','mail.ambientelivre.com.br',25,'','',0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;


--
-- Definition of table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE  `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

/*!40000 ALTER TABLE `project` DISABLE KEYS */;
LOCK TABLES `project` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;


--
-- Definition of table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
CREATE TABLE  `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_task`
--

/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
LOCK TABLES `project_task` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;


--
-- Definition of table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
CREATE TABLE  `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_task_audit`
--

/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
LOCK TABLES `project_task_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;


--
-- Definition of table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
CREATE TABLE  `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_accounts`
--

/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
LOCK TABLES `projects_accounts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;


--
-- Definition of table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
CREATE TABLE  `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_bugs`
--

/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
LOCK TABLES `projects_bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;


--
-- Definition of table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
CREATE TABLE  `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_cases`
--

/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
LOCK TABLES `projects_cases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;


--
-- Definition of table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
CREATE TABLE  `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_contacts`
--

/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
LOCK TABLES `projects_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;


--
-- Definition of table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
CREATE TABLE  `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_opportunities`
--

/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
LOCK TABLES `projects_opportunities` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;


--
-- Definition of table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
CREATE TABLE  `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_products`
--

/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
LOCK TABLES `projects_products` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;


--
-- Definition of table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
CREATE TABLE  `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prospect_list_campaigns`
--

/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
LOCK TABLES `prospect_list_campaigns` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;


--
-- Definition of table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
CREATE TABLE  `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prospect_lists`
--

/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
LOCK TABLES `prospect_lists` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;


--
-- Definition of table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
CREATE TABLE  `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prospect_lists_prospects`
--

/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
LOCK TABLES `prospect_lists_prospects` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;


--
-- Definition of table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
CREATE TABLE  `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prospects`
--

/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
LOCK TABLES `prospects` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;


--
-- Definition of table `ra_ramos_atividade`
--

DROP TABLE IF EXISTS `ra_ramos_atividade`;
CREATE TABLE  `ra_ramos_atividade` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `id_sistema_integracao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ra_ramos_atividade`
--

/*!40000 ALTER TABLE `ra_ramos_atividade` DISABLE KEYS */;
LOCK TABLES `ra_ramos_atividade` WRITE;
INSERT INTO `ra_ramos_atividade` VALUES  ('51a69ba527314a3fab4c10b6a876b030','Venda de Comida',NULL,NULL,NULL,NULL,NULL,0,NULL,'51a69ba527314a3fab4c10b6a876b030'),
 ('a578eed2bca945b1b39fde04ec2344d6','Venda de Materiais',NULL,NULL,NULL,NULL,NULL,0,NULL,'a578eed2bca945b1b39fde04ec2344d6');
UNLOCK TABLES;
/*!40000 ALTER TABLE `ra_ramos_atividade` ENABLE KEYS */;


--
-- Definition of table `ra_ramos_atividade_audit`
--

DROP TABLE IF EXISTS `ra_ramos_atividade_audit`;
CREATE TABLE  `ra_ramos_atividade_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ra_ramos_atividade_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ra_ramos_atividade_audit`
--

/*!40000 ALTER TABLE `ra_ramos_atividade_audit` DISABLE KEYS */;
LOCK TABLES `ra_ramos_atividade_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `ra_ramos_atividade_audit` ENABLE KEYS */;


--
-- Definition of table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
CREATE TABLE  `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
LOCK TABLES `relationships` WRITE;
INSERT INTO `relationships` VALUES  ('10b60ac8-320f-488e-5ff1-51dc2082531c','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
 ('12114ee1-4a23-047b-dd15-51dc20680ac8','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('1341e431-7dba-c7b7-da17-51dc2074dff5','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('1447348a-7883-6f01-84b2-51dc20e4e486','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),
 ('14715970-d66b-5d3d-8f65-51dc2081ca28','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('14d0ce5e-74a6-fb38-5255-51dc20f8c8aa','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('163b88e0-14ec-9a81-f34a-51dc2034cbcd','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('16ab52a2-9963-5630-b97d-51dc20291369','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
 ('17349f21-31cb-17c2-b00e-51dc20baa4ab','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),
 ('1957096d-00db-eaaf-7408-51dc20ffa8ef','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('1ac91481-09fc-3e15-90fc-51dc206676d9','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
 ('1acb43d9-fdfc-6977-8db8-51dc20b47ba9','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),
 ('1ce1107d-a055-d810-1ddb-51dc200516f0','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('1e2057e8-f6fb-20c8-cfdb-51dc20a182f3','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('1f171944-83fd-5626-9e72-51dc205bcbe7','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),
 ('1f405809-9fbc-ae68-7918-51dc20f95240','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('1f505f0b-ad09-562f-ec58-51dc20e0fe67','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),
 ('1f8ad302-06f0-be08-5c95-51dc20997258','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('1f9b9356-9485-fbee-cc3f-51dc207d138c','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('21077e1b-c8b9-4f31-8400-51dc2081a005','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),
 ('2177d907-864a-e72e-a9a6-51dc203f0c60','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
 ('25956b41-0973-346a-a585-51dc206c66fb','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
 ('276ee416-c5b6-f3c8-8a8f-51dc201b556e','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),
 ('281b6045-8d9e-e6c1-d128-51dc203998cb','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('28dbd377-58b3-4bcf-440e-51dc20b44b34','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('29e13318-ffbb-d79f-9391-51dc206e9d94','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),
 ('2a17927e-cba0-7388-fe88-51dc202bf0f2','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('2a7b326c-2125-6b74-ecf2-51dc20ba9e9d','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
 ('2bd1eb1e-c66f-9a9e-a062-51dc20be28da','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
 ('2d02b51d-18c4-f501-2b33-51dc200dbd44','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('2f48b5f4-fca6-3243-f441-51dc208cba48','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('2f89dabb-e178-6005-f2fd-51dc205fb478','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),
 ('30603461-ea17-e4f8-54fd-51dc205a3015','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
 ('327a3070-f2aa-fd2f-8bfb-51dc20c3c4c9','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),
 ('33a511bc-42cd-fe78-adb6-51dc209206da','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),
 ('34abe5b0-950c-36d8-4c00-51dc205da4a8','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),
 ('34d07718-df65-8778-7a2a-51dc204ed691','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('3537cd93-3c61-ec33-d5fd-51dc2092a07c','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
 ('36a1cdc9-c149-f640-07ab-51dc20547e10','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
 ('37acd880-e409-4968-9cd5-51dc2069fc2b','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),
 ('37ce2b3e-9ecf-ed2b-9f34-51dc20510409','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('3a0e0851-52e1-53ca-140c-51dc20578978','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('3b3c153e-a5ff-b9d5-dc79-51dc2082335a','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('3d60036a-38cd-69d0-d1b1-51dc204a90b2','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
 ('3dc704b4-5d71-674f-5f9e-51dc2015ab55','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
 ('3e73bcf7-5070-723c-4002-51dc200ba58e','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('3f7b7ed6-8db8-5693-9052-51dc205f4fd7','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),
 ('4004ca82-4362-b29f-6fe1-51dc20698416','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
 ('416c37b9-0233-03e0-d328-51dc20da4f44','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
 ('422621a7-e27a-6359-a5d3-51dc20cc3086','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('4246532e-8eb1-933c-5c71-51dc20465e2a','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('42709cd8-3844-7c84-acf3-51dc20e7d442','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),
 ('4603121b-ce78-65ce-550e-51dc20e4c6eb','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),
 ('47e69739-2ad0-e2dd-ba6d-51dc20bcfc80','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('483ed1b6-d245-5d8f-f57d-51dc2082ca54','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('48e1b88f-3ea2-1785-0b69-51dc20cf381f','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('49dce0b1-be3a-6150-d091-51dc2057a389','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('4a4c92d9-3b1a-c587-d551-51dc20dc1bf0','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),
 ('4ac7fc34-bbc0-2704-1438-51dc20ca3fd8','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
 ('4c4132db-7afa-a459-bf1e-51dc20f265d3','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
 ('4c9851e5-c5a4-ec73-862f-51dc203f3662','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('4d35adeb-8bdf-48a4-2e17-51dc209e4823','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),
 ('4feb132c-b4d6-d2d4-af98-51dc2011dc7e','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('52ef9b8d-ce1e-8905-abda-51dc2086e623','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('52f0030c-3b18-f04f-126f-51dc20f3e89f','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
 ('53b42edc-1384-3b1d-f570-51dc20770380','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),
 ('540b10ac-4b94-55f3-251e-51dc20805543','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('5516e53a-3b19-c720-4085-51dc20739bd9','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),
 ('55967f2f-7248-fc17-b136-51dc208da8c1','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
 ('559e6514-301f-72da-779c-51dc20d67e88','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('570657c5-bb54-d924-cf75-51dc20791a09','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
 ('580328b7-97bc-a14a-0ea7-51dc20c71e42','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),
 ('595e984c-94e6-402c-cb28-51dc20e7888a','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('5a9b657d-5d77-afe3-6c80-51dc20bbafdf','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('5ab9bc28-dad5-8a39-979e-51dc2084fea5','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('5c0ea0c7-e4f7-69d7-a3c0-51dc20132d80','ra_ramos_atividade_assigned_user','Users','users','id','RA_Ramos_Atividade','ra_ramos_atividade','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('5dbf81d9-d93a-4357-764f-51dc20fbb211','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('5eeb7cb2-e397-4b38-3872-51dc207d5190','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('5feb835e-cf34-7119-2b96-51dc20795ffe','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),
 ('606529ca-3c68-5b32-97d3-51dc202a4d2a','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('606bf670-a409-3535-7d1b-51dc200ac1fb','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('60bc0cbe-c3cc-98b7-ac98-51dc20f648cd','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('61d3a975-cdd5-272b-05ec-51dc204c2254','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
 ('62cf79e1-e7a4-da84-b0fa-51dc20d801e8','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),
 ('6425bff9-d193-754e-0650-51dc2061aac8','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('65692412-3610-08ac-25e2-51dc201a835c','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('6584a8f0-5b63-6041-a13e-51dc2089dea3','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),
 ('6885e595-d210-96ad-1a27-51dc2089f24a','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('68a10c22-9714-3f45-7cec-51dc2012442d','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('69a6cf56-4328-062b-cdf4-51dc2039b85d','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),
 ('6aaf4ff9-fce3-f088-d301-51dc205f3322','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('6b2e1275-3370-b9d7-4ba6-51dc20b3d5c4','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('6ca0f2d8-1d83-07d2-30f8-51dc2017d1a1','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('6cd33555-d575-e310-ce6b-51dc20e1d668','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauthkeys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('6d9f24ee-50ab-cf9a-109b-51dc208ab5cf','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),
 ('6ef2bd1e-e3c2-6fbf-1c0d-51dc20cc8f1f','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
 ('703a27eb-7568-ab1e-07ff-51dc2088bca8','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('7228d484-bcdf-77d7-857a-51dc202adb16','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('735a69fc-6e1b-40f3-02de-51dc2052f4d9','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('741c013e-18bb-f338-c887-51dc20517f78','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
 ('747ba75b-ac14-3f25-d584-51dc206b140d','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
 ('757bd325-ad4b-0244-4b9f-51dc2046000a','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),
 ('7604c538-d452-9200-4d43-51dc2077baf8','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('782469a5-2d42-b13f-3d9a-51dc2009e6b5','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('7b07a1b2-582e-07cc-a709-51dc20b0eead','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('7b97bf76-8f24-9603-e1fd-51dc202e1953','oauthkeys_created_by','Users','users','id','OAuthKeys','oauthkeys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('7c74668d-f7ee-4d2d-648d-51dc203adaf0','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
 ('7f3b8fd2-9601-6057-c4bf-51dc2037fcd4','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('7fdfc8a9-f0eb-f913-0b04-51dc20291759','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
 ('804bac87-77d9-e282-769e-51dc2023a12d','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),
 ('80a9c5a8-6aea-1dcb-b796-51dc2060fd12','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('8187e157-5e6d-b3f9-ec9f-51dc20384a90','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),
 ('820694af-3c5f-c83f-2959-51dc2062c7c1','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('82ec1695-7c41-2d50-921a-51dc2005abdb','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('85cd91d6-35e4-8a41-2f66-51dc205dee15','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('86617f69-0699-d3a5-4c71-51dc20ab7690','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauthkeys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('875106a5-7768-3eb2-0f3b-51dc200b42d7','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('8b12d6ac-e364-0ff8-42bb-51dc207692d0','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),
 ('8b783111-e0c1-45df-8285-51dc2083939c','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('8cc35c4a-fd9d-cf89-657a-51dc20bf99c6','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('8e7e88f6-cad1-c9fa-284a-51dc20e35f68','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
 ('8f4aa1d3-5889-dccb-57bf-51dc20d13f46','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
 ('909bc8d7-d244-a559-2e69-51dc2086efd6','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9139379c-c034-ded3-a341-51dc2001d4c2','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
 ('921145c4-4de0-2c99-274b-51dc207e81a0','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('929ea797-5325-64a9-d06f-51dc20b12d8e','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('95e2ab46-8e6d-caea-65a2-51dc20a01911','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),
 ('963a337c-a647-7585-24f2-51dc20d86111','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9764766f-ac9b-3d45-2e3b-51dc205fdcac','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
 ('97f2080f-5071-fd25-97e6-51dc207663e2','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),
 ('996c633d-a00b-f386-a16e-51dc20525d21','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
 ('9b6a8f00-3758-3421-f2ae-51dc207b410d','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9c0888d6-39dd-9e72-c82b-51dc2021222d','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9eca2a81-4b3a-c71a-e9eb-51dc20b23e69','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9fa39524-682d-ee3e-0501-51dc20d11d2a','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
 ('9fb74f5f-91ff-4a18-75ea-51dc20b762ed','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
 ('a05ab678-87b4-ce95-b0fd-51dc208caf25','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('a0b2a797-6fbf-414b-a717-51dc20183c61','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),
 ('a42a55d1-31fc-a003-25c0-51dc20360a49','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
 ('a48b9870-ded7-980b-2967-51dc20b398be','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),
 ('a63933e1-bdc1-7f14-4c1c-51dc20f620dc','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('a8020ce5-2d09-4f69-a94b-51dc20387624','ra_ramos_atividade_modified_user','Users','users','id','RA_Ramos_Atividade','ra_ramos_atividade','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('aa61fe2e-e2ef-28fb-27e2-51dc20286b88','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ab2a0bf4-56db-58cd-5289-51dc20742335','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ab7ec9c5-cd24-916b-2a83-51dc20c81bb3','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),
 ('ac9d9919-7664-d4cb-3896-51dc206b7c63','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('adbb3ff2-0a4d-87c3-5eb4-51dc20e66844','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ae4f4c66-996b-b851-9031-51dc202dcf2c','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('aefbf216-d035-a5fa-e1d0-51dc2083d4a2','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
 ('b109e856-2519-e307-b848-51dc2036f406','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b64e74d9-6c23-e405-b784-51dc206c8fcf','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('b7140cfd-5c96-0fb5-f88a-51dc20973f9c','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b7396ee3-8ca3-d041-dc64-51dc20d71969','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
 ('b931dcb1-cb22-8f5b-ae7d-51dc2042d2b3','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','schedulersjobs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b9ac3e60-7536-b8a2-50f4-51dc2030bd62','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b9b72d6f-fac8-828a-982b-51dc20b12af3','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('bab18a56-fc4f-4950-2005-51dc20980e5e','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('bd61167f-7faa-7cf1-ce81-51dc204c5048','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),
 ('bea08070-1cf5-cfad-9a51-51dc209c1ea7','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('beb00421-e7e9-28b1-c520-51dc2029ee3d','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
 ('c0c2dfce-950a-5f80-4bec-51dc207656eb','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c1272599-00ab-14b8-5b54-51dc20d00e40','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),
 ('c29b3609-6bc5-3ca9-32cd-51dc206a521a','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
 ('c473d5cd-e526-b783-872a-51dc208ae242','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c4751aa4-d97b-a61b-89e4-51dc20216abe','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c483e643-5774-43f1-a1e5-51dc20f85cb4','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c48aadd6-f130-fcbd-1091-51dc20175f3b','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c5726ed3-d434-31c3-40c4-51dc20da47ff','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c6570187-9f8a-3611-2d18-51dc20ede08d','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),
 ('c736703e-069a-1d86-024f-51dc20b8991f','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),
 ('c7add3cc-73f1-0eba-75dd-51dc2007e44c','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('c94ca389-3adf-d112-5ee4-51dc20c4bbed','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('cbde4ccb-808f-93ed-688d-51dc206426fc','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),
 ('cd72397e-ea87-aa53-29bc-51dc20172cf2','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
 ('ce210568-0abe-e3e4-85f7-51dc20b7f3e7','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('cf46085c-bdc1-f079-3c14-51dc20400ecc','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('cf68063b-8c13-2646-87e0-51dc20a4f9eb','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('d035c0ce-b768-cb1a-81d2-51dc20e32126','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
 ('d165217c-c0ff-e080-7c43-51dc20e5e6f7','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('d272ed73-13d1-f1a0-1e28-51dc202458ba','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),
 ('d27bff83-5ff0-66ca-e1f6-51dc208f1458','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('d417b759-3cae-e926-f7bc-51dc203f8acf','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('d6aadc3e-f7bd-8fb3-fa97-51dc20f2ea25','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),
 ('d8379b08-edfa-555c-f7c3-51dc204d8aec','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
 ('d8f9b810-a20e-d767-48fd-51dc20a538ed','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),
 ('da10890a-c628-da7f-ed7c-51dc20bc6b34','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('dad9ee37-9d33-0445-41c7-51dc20bca05c','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('db034f02-c5e5-370f-6f86-51dc20d2a153','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
 ('dc39200b-066e-d992-c010-51dc208f0403','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('dd47953b-3d30-4f56-7225-51dc20e104b9','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),
 ('dd50b908-d1b4-0500-9ac1-51dc20134b7d','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('e02fe4f1-b057-8791-ba96-51dc20a0bf25','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('e098aee6-cfe4-fdc2-090f-51dc20aaf163','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('e16faf62-444d-44c0-ca58-51dc20805481','accounts_ra_ramos_atividade_1','Accounts','accounts','id','RA_Ramos_Atividade','ra_ramos_atividade','id','accounts_ra_ramos_atividade_1_c','accounts_ra_ramos_atividade_1accounts_ida','accounts_ra_ramos_atividade_1ra_ramos_atividade_idb','many-to-many',NULL,NULL,0,0),
 ('e303b60e-d43e-b7c3-9b7c-51dc2080fe0a','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('e3bbc3da-50df-7a91-b4a4-51dc20c0aba5','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
 ('e5cde8ce-fd81-fa85-33d5-51dc20fa3350','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
 ('e66d6c5a-1fd2-18ba-a726-51dc200c7c20','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
 ('e7021457-70b2-2b9f-cd59-51dc209fd94f','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),
 ('e808d3bb-ef4f-c4b8-250c-51dc2063b061','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('e9d9ca56-1ee3-0ad3-d46b-51dc203c8657','ra_ramos_atividade_created_by','Users','users','id','RA_Ramos_Atividade','ra_ramos_atividade','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ea884e34-b49a-4d16-2078-51dc20e074e4','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
 ('eabea5f9-ca86-cc19-06f9-51dc20c944d6','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),
 ('eaf28825-7814-554d-1901-51dc204ca743','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),
 ('edd09903-309e-fbc4-0633-51dc207ef9de','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ee8c51f1-4fe0-87c0-91bc-51dc2002ab30','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('f09a77e0-a669-6ead-dab8-51dc20b29a09','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
 ('f1a4cd51-6f75-3368-c0a6-51dc20d77457','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('f1ce6684-c4f6-edae-4f9b-51dc201f03ba','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
 ('f2d90fb4-12a6-bfb6-6fd8-51dc20d94975','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),
 ('fc9f0f7f-2f10-2102-18db-51dc20cd978b','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ffc60e47-8dd7-e61b-2b9d-51dc205c1fd6','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;


--
-- Definition of table `releases`
--

DROP TABLE IF EXISTS `releases`;
CREATE TABLE  `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `releases`
--

/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
LOCK TABLES `releases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;


--
-- Definition of table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE  `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
LOCK TABLES `roles` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Definition of table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
CREATE TABLE  `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_modules`
--

/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
LOCK TABLES `roles_modules` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;


--
-- Definition of table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE  `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_users`
--

/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
LOCK TABLES `roles_users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;


--
-- Definition of table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
CREATE TABLE  `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saved_search`
--

/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
LOCK TABLES `saved_search` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;


--
-- Definition of table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
CREATE TABLE  `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedulers`
--

/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
LOCK TABLES `schedulers` WRITE;
INSERT INTO `schedulers` VALUES  ('1ef4bceb-f8ff-de3f-c343-50ad12aa9cfa',0,'2012-11-21 17:40:16','2012-11-21 17:40:16','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 12:30:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),
 ('3ec26aa6-e77a-dc40-5bb0-50ad12949b92',0,'2012-11-21 17:40:16','2012-11-21 17:40:16','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 07:45:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),
 ('499a3faf-e999-00cb-c754-50ad126b9251',0,'2012-11-21 17:40:16','2012-11-21 17:40:16','1','1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 11:15:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),
 ('5457fa8f-2128-a70c-2093-50ad12ba1446',0,'2012-11-21 17:40:16','2012-11-21 17:40:16','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2008-01-01 14:00:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),
 ('5f2d2fa8-a862-f0a0-24e7-50ad125db83e',0,'2012-11-21 17:40:16','2012-11-21 17:40:16','1','1','Clean Jobs Queue','function::cleanJobQueue','2012-01-01 10:45:01','2030-12-31 23:59:59','0::5::*::*::*',NULL,NULL,NULL,'Active',0),
 ('ca5f0a63-6dbe-ea04-8591-50ad12e83458',0,'2012-11-21 17:40:16','2012-11-21 17:40:16','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 11:00:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),
 ('ee5d0aba-4506-a6fd-6071-50ad12f7cc3c',0,'2012-11-21 17:40:16','2012-11-21 17:40:16','1','1','Prune Tracker Tables','function::trimTracker','2005-01-01 15:15:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;


--
-- Definition of table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
CREATE TABLE  `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sugarfeed`
--

/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
LOCK TABLES `sugarfeed` WRITE;
INSERT INTO `sugarfeed` VALUES  ('21cca071-062f-b93e-4f5e-50ae26d76710','<b>{this.CREATED_BY}</b> {SugarFeed.WON_OPPORTUNITY} [Opportunities:63d4a5b3-9b27-b74c-f7e4-50ae26b2fc3b:Venda produto B] {SugarFeed.WITH} [Accounts:6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1:Teste] {SugarFeed.FOR} $89,999,999.00','2012-11-22 13:20:35','2012-11-22 13:20:35','1','1',NULL,0,'1','Opportunities','63d4a5b3-9b27-b74c-f7e4-50ae26b2fc3b',NULL,NULL),
 ('5fda00a0-faef-1796-7e56-50ae264a9061','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:45902b7e-6922-8881-32ba-50ae26a50a68:Venda produto B] {SugarFeed.WITH} [Accounts:6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1:Teste] {SugarFeed.FOR} $2,000,000.00','2012-11-22 13:19:06','2012-11-22 13:19:06','1','1',NULL,0,'1','Opportunities','45902b7e-6922-8881-32ba-50ae26a50a68',NULL,NULL),
 ('7be8616c-ff1d-e09a-d444-50ae26d76708','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:63d4a5b3-9b27-b74c-f7e4-50ae26b2fc3b:Venda produto B] {SugarFeed.WITH} [Accounts:6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1:Teste] {SugarFeed.FOR} $89,999,999.00','2012-11-22 13:19:32','2012-11-22 13:19:32','1','1',NULL,0,'1','Opportunities','63d4a5b3-9b27-b74c-f7e4-50ae26b2fc3b',NULL,NULL),
 ('e0e1b169-5a1a-c75e-b69e-50ae26438f26','<b>{this.CREATED_BY}</b> {SugarFeed.WON_OPPORTUNITY} [Opportunities:45902b7e-6922-8881-32ba-50ae26a50a68:Venda produto B] {SugarFeed.WITH} [Accounts:6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1:Teste] {SugarFeed.FOR} $2,000,000.00','2012-11-22 13:20:47','2012-11-22 13:20:47','1','1',NULL,0,'1','Opportunities','45902b7e-6922-8881-32ba-50ae26a50a68',NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;


--
-- Definition of table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE  `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
LOCK TABLES `tasks` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;


--
-- Definition of table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
CREATE TABLE  `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=853 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracker`
--

/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
LOCK TABLES `tracker` WRITE;
INSERT INTO `tracker` VALUES  (5,'d42882e7-12d9-2869-46f2-50ae227d8a2c','1','InboundEmail','ef5c84eb-4309-8776-1826-50ae22fd6e15','treinamento','2012-11-22 13:01:56','save','9tv8033h92bl3qibrk0olq0bl6',1,0),
 (6,'11900da2-23ee-693e-db66-50ae22e6f737','1','Emails','7bb694c5-3f82-9cad-8b80-50ae2293ab9c','teste','2012-11-22 13:03:07','save','9tv8033h92bl3qibrk0olq0bl6',1,0),
 (7,'cc34a84a-4942-d506-1223-50ae26831535','1','Campaigns','8f3fe15f-c58c-f579-52b5-50ae2686ee01','sdsd','2012-11-22 13:17:56','detailview','9tv8033h92bl3qibrk0olq0bl6',1,0),
 (18,'72de0c1d-3ea2-7176-d322-50ae26eafaa8','1','Campaigns','c3a828ff-2629-aa8a-e8c0-50ae26a104ea','Radio','2012-11-22 13:20:55','detailview','9tv8033h92bl3qibrk0olq0bl6',1,0),
 (22,'7ef400ba-a260-527a-79ae-50ae265370f5','1','Opportunities','45902b7e-6922-8881-32ba-50ae26a50a68','Venda produto B','2012-11-22 13:21:24','detailview','9tv8033h92bl3qibrk0olq0bl6',1,0),
 (24,'a09f491c-cffb-ded5-ea63-50ae27372306','1','Campaigns','7f6c9cdf-388a-2b0a-1061-50ae27a59e9d','Email marketing natal','2012-11-22 13:24:14','detailview','9tv8033h92bl3qibrk0olq0bl6',1,0),
 (28,'dcc20f17-44b6-447e-ce88-51c9e87b7eda','1','Opportunities','4b20fba9-3289-746f-c781-51c9e8e58da2','Gerado automÃ¡ticamente a partir do sistema Fox','2013-06-25 19:00:07','detailview','hgud3sk83entcaft5dudp8m786',0,0),
 (29,'5967ba4d-366b-e659-74f0-51c9e80e3691','1','Opportunities','32282157-1bd3-8841-b9af-51c9e8c46278','Gerado automÃ¡ticamente a partir do sistema Fox','2013-06-25 19:00:35','detailview','hgud3sk83entcaft5dudp8m786',0,0),
 (40,'daf0a696-65c8-27d5-82b7-51cae712e806','1','Accounts','6a6bf941-dd2f-4d26-e081-50ae1fb9d1e1','Teste','2013-06-26 13:07:42','editview','hlfdf0ndjduae6sgs4bebpq5j1',1,0),
 (47,'bb69ac66-547f-2005-8584-51cafd584db0','1','Accounts','6808d003-366e-5125-08d6-51cafd752b05','Cliente 01','2013-06-26 14:43:06','detailview','5bjmpn2s1nji5pq44n5641pu66',1,0),
 (48,'53769cf4-14fd-39fd-f660-51cafebb2641','1','Accounts','72d407e4-fdac-e1c5-54fb-51cafd345c38','aaaaaaaaaaaaaaa','2013-06-26 14:43:13','detailview','5bjmpn2s1nji5pq44n5641pu66',1,0),
 (49,'b0500624-b265-93cf-910b-51cafeb7aef8','1','Accounts','886c0765-6c76-6d35-1e98-51cafd5bb865','wersdfds','2013-06-26 14:43:17','detailview','5bjmpn2s1nji5pq44n5641pu66',1,0),
 (50,'b80145b9-3bf8-3b21-6122-51cafe9fad2b','1','Accounts','d94c748a-ded1-6efe-2f2a-51cafe70819e','Cliente 01','2013-06-26 14:46:44','detailview','5bjmpn2s1nji5pq44n5641pu66',1,0),
 (51,'38a1db9d-62ec-5167-a099-51cafe80a49a','1','Accounts','58df009f-5de4-105a-e25a-51cafe452a0c','wersdfds','2013-06-26 14:46:53','detailview','5bjmpn2s1nji5pq44n5641pu66',1,0),
 (52,'47e50bdd-9d93-784e-6390-51caff96a1c4','1','Accounts','99cac056-5774-32e0-3ed7-51caff9bfdbd','wersdfds','2013-06-26 14:49:23','detailview','5bjmpn2s1nji5pq44n5641pu66',1,0),
 (54,'574801bb-f566-019e-5b86-51caffea4e15','1','RA_Ramos_Atividade','e16b7f3a-c17d-ce25-68b0-51cafb07551b','Venda de Comida','2013-06-26 14:50:00','detailview','5bjmpn2s1nji5pq44n5641pu66',1,0),
 (55,'5787cec6-ee4b-6efb-af83-51caff4bad96','1','Accounts','7eefd3cd-d281-1757-6589-51caff0636d1','wersdfds','2013-06-26 14:50:04','detailview','5bjmpn2s1nji5pq44n5641pu66',1,0),
 (57,'32796a8b-31fe-1676-020e-51cb0051038e','1','Accounts','772d4da4-cb3c-7322-ba23-51cb0030f0ba','wersdfds','2013-06-26 14:53:09','detailview','5bjmpn2s1nji5pq44n5641pu66',1,0),
 (60,'1542d03b-d1a6-ed5f-50d6-51cb00dbe7fa','1','Accounts','5e638db6-68a7-6e00-4e30-51cb00c71398','wersdfds','2013-06-26 14:54:33','detailview','5bjmpn2s1nji5pq44n5641pu66',1,0),
 (61,'a6adc9ae-a759-7fcb-8ba5-51cb02869155','1','Accounts','d0d84676-ee12-8d37-0976-51cb02db7f54','wersdfds','2013-06-26 15:01:51','detailview','5bjmpn2s1nji5pq44n5641pu66',1,0),
 (760,'18914434-c106-349f-d62a-51cc76984ca2','1','Accounts','966ffe28-a3a3-4bf5-a291-51cb15bbfeac','wersdfds','2013-06-27 17:30:49','detailview','3r52vs8r706orcm4hrv3cb78m0',1,0),
 (805,'1626ff3e-c6f2-61bd-997d-51cc87fc923b','1','Users','1','Administrator','2013-06-27 18:42:09','detailview','2a0aaa7vod98v94rc5j1b17p07',1,0),
 (830,'c9a40c5d-ea97-80d8-f250-51cdb9e86f2f','1','Accounts','136d3e7a-98ce-3eaf-fd7d-51cb1512cc25','aaaaaaaaaaaaaaa','2013-06-28 16:29:11','detailview','2akp71d8vpgmclreper2pcipp7',1,0),
 (849,'87bb55a5-1e16-2ec2-d496-51cdc069935c','1','Opportunities','63d4a5b3-9b27-b74c-f7e4-50ae26b2fc3b','Venda produto B','2013-06-28 16:58:00','detailview','2akp71d8vpgmclreper2pcipp7',1,0),
 (850,'e614f09b-5e28-4f5b-ccf9-51cdc9b49b1f','1','Accounts','8a340bfb-91f9-fbba-f6ce-51cb15db8265','Cliente 01','2013-06-28 17:37:27','detailview','2akp71d8vpgmclreper2pcipp7',1,0),
 (852,'5e98d044-9b40-a9c9-04ed-51dc2462c5ad','1','Users','687146d4-d722-d18b-eb0d-51caf5e88e4b','Teste Teste','2013-07-09 14:54:09','editview','jb93k0t34i6o5egooa3nrlnls7',1,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;


--
-- Definition of table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
CREATE TABLE  `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upgrade_history`
--

/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
LOCK TABLES `upgrade_history` WRITE;
INSERT INTO `upgrade_history` VALUES  ('256b2d32-bb66-17d9-7538-51cae5b4c5ab','upload/upgrades/module/Ramos_Atividades2013_06_26_095636.zip','804e743d1778086d153d6a7c9ab06941','module','installed','1372251396','Ramos_Atividades','Armazena os ramos de atividades das contas','Ramos_Atividades','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiUkEiO3M6NjoiYXV0aG9yIjtzOjA6IiI7czoxMToiZGVzY3JpcHRpb24iO3M6NDI6IkFybWF6ZW5hIG9zIHJhbW9zIGRlIGF0aXZpZGFkZXMgZGFzIGNvbnRhcyI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoxNjoiUmFtb3NfQXRpdmlkYWRlcyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTMtMDYtMjYgMTI6NTY6MzYiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxMzcyMjUxMzk2O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czoxNjoiUmFtb3NfQXRpdmlkYWRlcyI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxODoiUkFfUmFtb3NfQXRpdmlkYWRlIjtzOjU6ImNsYXNzIjtzOjE4OiJSQV9SYW1vc19BdGl2aWRhZGUiO3M6NDoicGF0aCI7czo0OToibW9kdWxlcy9SQV9SYW1vc19BdGl2aWRhZGUvUkFfUmFtb3NfQXRpdmlkYWRlLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjUwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL1JBX1JhbW9zX0F0aXZpZGFkZSI7czoyOiJ0byI7czoyNjoibW9kdWxlcy9SQV9SYW1vc19BdGl2aWRhZGUiO319czo4OiJsYW5ndWFnZSI7YToxOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9','2013-06-26 12:56:36',1),
 ('f1f3b349-8da2-fd45-f618-51cd992f1f75','upload/upgrades/langpack/SugarCE-6.5.3 (1).zip','81ece44ab2a3a8662de06ddeab375cda','langpack','installed','6.5.3','Portugues (BR) - Language Pack','Language Pack Portugues Brasil - <a href=\"http://www.lampadaglobal.com/index.php/pt/sugarcrm\">LAMPADA GLOBAL SERVICES</a>','pt_BR','YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czozMDoiUG9ydHVndWVzIChCUikgLSBMYW5ndWFnZSBQYWNrIjtzOjExOiJkZXNjcmlwdGlvbiI7czoxMzc6Ikxhbmd1YWdlIFBhY2sgUG9ydHVndWVzIEJyYXNpbCAtIDxhIGhyZWY9Imh0dHA6Ly93d3cubGFtcGFkYWdsb2JhbC5jb20vaW5kZXgucGhwL3B0L3N1Z2FyY3JtIiB0YXJnZXQ9Il9ibGFuayI+TEFNUEFEQSBHTE9CQUwgU0VSVklDRVM8L2E+IjtzOjQ6InR5cGUiO3M6ODoibGFuZ3BhY2siO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO3M6MzoiWWVzIjtzOjc6InZlcnNpb24iO3M6NToiNi41LjMiO3M6MjQ6ImFjY2VwdGFibGVfc3VnYXJfZmxhdm9ycyI7YToxOntpOjA7czoyOiJDRSI7fXM6NjoiYXV0aG9yIjtzOjIzOiJMQU1QQURBIEdMT0JBTCBTRVJWSUNFUyI7czoyNToiYWNjZXB0YWJsZV9zdWdhcl92ZXJzaW9ucyI7YToxOntzOjEzOiJyZWdleF9tYXRjaGVzIjthOjE6e2k6MDtzOjk6IjYuNS5bMC05XSI7fX1zOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjMtMDgtMjAxMiI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjM6e3M6MjoiaWQiO3M6NToicHRfQlIiO3M6OToiaW1hZ2VfZGlyIjtzOjE3OiI8YmFzZXBhdGg+L2ltYWdlcyI7czo0OiJjb3B5IjthOjQ6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9pbmNsdWRlIjtzOjI6InRvIjtzOjc6ImluY2x1ZGUiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vbW9kdWxlcyI7czoyOiJ0byI7czo3OiJtb2R1bGVzIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjIxOiI8YmFzZXBhdGg+L2pzY2FsZW5kYXIiO3M6MjoidG8iO3M6MTA6ImpzY2FsZW5kYXIiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5zdGFsbCI7czoyOiJ0byI7czo3OiJpbnN0YWxsIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2013-06-28 14:09:24',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;


--
-- Definition of table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
CREATE TABLE  `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_preferences`
--

/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
LOCK TABLES `user_preferences` WRITE;
INSERT INTO `user_preferences` VALUES  ('25704b5e-b87c-29e5-4c05-50ae1f9a6155','ETag',0,'2012-11-22 12:50:56','2013-06-26 12:56:36','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),
 ('27507daf-98a7-1d34-dc31-51c7c5cc1900','Prospects2_PROSPECT',0,'2013-06-24 04:06:34','2013-06-24 04:06:34','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('368f2e86-12cb-3183-7892-50ae1f737185','Home',0,'2012-11-22 12:50:57','2012-11-22 12:50:57','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6ImE5YWFlNTY4LTBjNDEtN2UwZC0xYjQwLTUwYWUxZjI1MzZkMiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MToiaHR0cDovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvZ29wcm8iO3M6NjoiaGVpZ2h0IjtpOjMxNTt9fXM6MzY6ImE5YWU4YzZkLWZkMzUtMTdlNi1jZTBiLTUwYWUxZjM3ZGY5YSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImE5YjBlNGE1LWFmZDgtM2RmNy0zMGYzLTUwYWUxZmVmYjBmMiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czoyMjoiTEJMX0RBU0hMRVRfU1VHQVJfTkVXUyI7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L25ld3MiO3M6NjoiaGVpZ2h0IjtpOjMxNTt9fXM6MzY6ImFhN2I3NWM5LTZhYmItNzI2My1jNDZlLTUwYWUxZjNlZTJhNyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImFiNmQwN2UxLWYzNWQtMzMyNy0xMDM3LTUwYWUxZjZjODk4NCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImFjMGZhNzg0LWEzODAtODk3Mi04ZWVjLTUwYWUxZjVmYWM0YSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYWNkYTNiYzAtZGQxZS0zNjU2LTBjZjYtNTBhZTFmMjNjZTUwIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYWRkMTA5YTktYWI1Zi1hMjI3LTNmNjQtNTBhZTFmMTAxYzQ4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjY6e2k6MDtzOjM2OiJhOWFhZTU2OC0wYzQxLTdlMGQtMWI0MC01MGFlMWYyNTM2ZDIiO2k6MTtzOjM2OiJhYTdiNzVjOS02YWJiLTcyNjMtYzQ2ZS01MGFlMWYzZWUyYTciO2k6MjtzOjM2OiJhYjZkMDdlMS1mMzVkLTMzMjctMTAzNy01MGFlMWY2Yzg5ODQiO2k6MztzOjM2OiJhYzBmYTc4NC1hMzgwLTg5NzItOGVlYy01MGFlMWY1ZmFjNGEiO2k6NDtzOjM2OiJhY2RhM2JjMC1kZDFlLTM2NTYtMGNmNi01MGFlMWYyM2NlNTAiO2k6NTtzOjM2OiJhZGQxMDlhOS1hYjVmLWEyMjctM2Y2NC01MGFlMWYxMDFjNDgiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6Mjp7aTowO3M6MzY6ImE5YWU4YzZkLWZkMzUtMTdlNi1jZTBiLTUwYWUxZjM3ZGY5YSI7aToxO3M6MzY6ImE5YjBlNGE1LWFmZDgtM2RmNy0zMGYzLTUwYWUxZmVmYjBmMiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
 ('36bf03fe-2c61-17c0-f5d8-50b4f2f205dc','Users2_USER',0,'2012-11-27 17:04:18','2012-11-27 17:04:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('437fb3a2-f0a1-cedc-d325-51caf59c8112','ETag',0,'2013-06-26 14:08:46','2013-06-26 14:08:46','687146d4-d722-d18b-eb0d-51caf5e88e4b','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
 ('45742e23-21f2-5079-6eb9-50ae1fc7ca4f','Home2_CALL',0,'2012-11-22 12:50:57','2012-11-22 12:50:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('50249393-cad9-fb99-c0f7-50ae1ffa2158','Home2_MEETING',0,'2012-11-22 12:50:57','2012-11-22 12:50:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('5af80d8c-6841-381c-46ce-50ae1f4dd8e8','Home2_OPPORTUNITY',0,'2012-11-22 12:50:57','2012-11-22 12:50:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('65d95b8e-ff41-84bd-160a-50ae1f871c37','Home2_ACCOUNT',0,'2012-11-22 12:50:57','2012-11-22 12:50:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('703d1fb8-6150-c10a-e4a9-50ae214e7d88','Emails',0,'2012-11-22 13:00:17','2012-11-22 13:01:23','1','YTo1OntzOjE1OiJlbWFpbDJQcmVmbGlnaHQiO2I6MTtzOjExOiJmb2N1c0ZvbGRlciI7czo4NjoiYToyOntzOjQ6ImllSWQiO3M6MzY6ImVmNWM4NGViLTQzMDktODc3Ni0xODI2LTUwYWUyMmZkNmUxNSI7czo2OiJmb2xkZXIiO3M6NToiSU5CT1giO30iO3M6MTY6ImRlZmF1bHRJRUFjY291bnQiO3M6MzY6ImVmNWM4NGViLTQzMDktODc3Ni0xODI2LTUwYWUyMmZkNmUxNSI7czoxMToic2hvd0ZvbGRlcnMiO3M6NzI6IllUb3hPbnRwT2pBN2N6b3pOam9pWldZMVl6ZzBaV0l0TkRNd09TMDROemMyTFRFNE1qWXROVEJoWlRJeVptUTJaVEUxSWp0OSI7czoxMzoiZW1haWxTZXR0aW5ncyI7YTo1OntzOjE4OiJlbWFpbENoZWNrSW50ZXJ2YWwiO3M6MjoiLTEiO3M6MTg6ImFsd2F5c1NhdmVPdXRib3VuZCI7czoxOiIxIjtzOjEzOiJzZW5kUGxhaW5UZXh0IjtzOjE6IjAiO3M6MTM6InNob3dOdW1Jbkxpc3QiO3M6MjoiMjAiO3M6MjI6ImRlZmF1bHRPdXRib3VuZENoYXJzZXQiO3M6NToiVVRGLTgiO319'),
 ('70831d16-5819-2309-d801-50ae1feed0a4','Home2_LEAD',0,'2012-11-22 12:50:57','2012-11-22 12:50:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('74501de2-e836-f4c8-5a79-50ae25b4e02a','Campaigns2_CAMPAIGN',0,'2012-11-22 13:17:26','2012-11-22 13:17:26','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('74caa3e6-eef8-d9f6-2bc0-50ae1fd819a9','global',0,'2012-11-22 12:50:46','2013-06-28 14:23:39','1','YToyOTp7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTc6IkFtZXJpY2EvU2FvX1BhdWxvIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6LTE7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czo1OiJUb2RvcyI7czoxNzoic2lnbmF0dXJlX2RlZmF1bHQiO3M6MDoiIjtzOjE3OiJzaWduYXR1cmVfcHJlcGVuZCI7YjowO3M6MTI6InVzZXJQcml2R3VpZCI7czozNjoiMmZmNDgyYmMtNjFkMC02Nzg5LTAxNTEtNTBhZTI2Yzg5N2YxIjt9'),
 ('79c57091-e853-38a8-c29a-51cae5581ea4','RA_Ramos_Atividade2_RA_RAMOS_ATIVIDADE',0,'2013-06-26 12:59:45','2013-06-26 12:59:45','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('7b55dcff-99a2-2149-2ef6-50ae1f2e97a5','Home2_SUGARFEED',0,'2012-11-22 12:50:57','2012-11-22 12:50:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('85f75ea8-5eb8-166f-f65c-50ae250d82c2','Import2_ACCOUNT',0,'2012-11-22 13:17:23','2012-11-22 13:17:23','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('916c9532-ba44-713e-0635-51caf5426bbb','global',0,'2013-06-26 14:07:02','2013-06-26 14:12:07','687146d4-d722-d18b-eb0d-51caf5e88e4b','YTozNDp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7aToxODAwO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6LTE7czo4OiJ0aW1lem9uZSI7czoxNzoiQW1lcmljYS9TYW9fUGF1bG8iO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjMwOiJ3ZWliZXJsYW5AYW1iaWVudGVsaXZyZS5jb20uYnIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MTI6InNlamFsaXZyZTEyMyI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjt9'),
 ('986e150d-9561-e363-dac1-51c8607c68de','Employees2_EMPLOYEE',0,'2013-06-24 15:06:03','2013-06-24 15:06:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('c715ae50-93d0-f761-5428-50ae2638bb64','Leads2_LEAD',0,'2012-11-22 13:18:33','2012-11-22 13:18:33','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('d25708ec-6650-2be5-f88a-50ae1f6f6b3c','Accounts2_ACCOUNT',0,'2012-11-22 12:51:17','2012-11-22 12:51:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('ed45a8c8-3403-9e10-da48-50ae254f8891','Opportunities2_OPPORTUNITY',0,'2012-11-22 13:15:13','2012-11-22 13:15:13','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('f283e97e-e196-97e2-4280-50ae25ac8b7e','import',0,'2012-11-22 13:15:26','2012-11-22 13:15:26','1','YToxOntzOjEyOiJmaWVsZF92YWx1ZXMiO3M6NDI2OiJ7ImN1c3RvbV9kZWxpbWl0ZXIiOiIsIiwiY3VzdG9tX2VuY2xvc3VyZSI6IiZxdW90OyIsImltcG9ydF90eXBlIjoiaW1wb3J0Iiwic291cmNlIjoiY3N2Iiwic291cmNlX2lkIjoiIiwiaW1wb3J0X21vZHVsZSI6Ik9wcG9ydHVuaXRpZXMiLCJpbXBvcnRsb2NhbGVfY2hhcnNldCI6IlVURi04IiwiaW1wb3J0bG9jYWxlX2RhdGVmb3JtYXQiOiJtXC9kXC9ZIiwiaW1wb3J0bG9jYWxlX3RpbWVmb3JtYXQiOiJoOmkgYSIsImltcG9ydGxvY2FsZV90aW1lem9uZSI6IkFtZXJpY2FcL1Nhb19QYXVsbyIsImltcG9ydGxvY2FsZV9jdXJyZW5jeSI6Ii05OSIsImltcG9ydGxvY2FsZV9kZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI6IjIiLCJpbXBvcnRsb2NhbGVfbnVtX2dycF9zZXAiOiIsIiwiaW1wb3J0bG9jYWxlX2RlY19zZXAiOiIuIn0iO30=');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE  `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `id_sistema_integracao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES  ('1','admin','21232f297a57a5a743894a0e4a801fc3',0,NULL,NULL,1,NULL,'Administrator',1,0,1,NULL,'2012-11-21 17:40:16','2013-06-20 11:07:08','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,'ca17cf2165d54cf3b48371d2a3eb53f6'),
 ('658b66c2-d779-cc58-da51-51c9b4f35bc3','teste','21232f297a57a5a743894a0e4a801fc3',NULL,NULL,NULL,1,NULL,NULL,0,0,1,NULL,NULL,'2013-06-13 09:30:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,'858b9ce608444555894d208721905653'),
 ('687146d4-d722-d18b-eb0d-51caf5e88e4b','Teste','56907837717d94199c7d91742eb0e22f',0,NULL,NULL,1,'Teste','Teste',1,0,1,NULL,'2013-06-26 14:07:02','2013-06-26 14:08:46','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,NULL),
 ('73ba637c-a30e-d94a-85ef-51caddbcfc78','',NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,NULL,NULL,'2013-06-13 09:30:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,''),
 ('8cf04f14-8f80-b244-9df2-51cae3e23841','',NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,NULL,NULL,'2013-06-13 09:30:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,'1'),
 ('9e09dbe7-641c-1d3b-cc3b-51cae3ba71e8','',NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,1,NULL,NULL,'2013-06-13 09:30:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,'2');
UNLOCK TABLES;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


--
-- Definition of table `users_cstm`
--

DROP TABLE IF EXISTS `users_cstm`;
CREATE TABLE  `users_cstm` (
  `id_c` char(36) NOT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_cstm`
--

/*!40000 ALTER TABLE `users_cstm` DISABLE KEYS */;
LOCK TABLES `users_cstm` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `users_cstm` ENABLE KEYS */;


--
-- Definition of table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
CREATE TABLE  `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_feeds`
--

/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
LOCK TABLES `users_feeds` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;


--
-- Definition of table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
CREATE TABLE  `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_last_import`
--

/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
LOCK TABLES `users_last_import` WRITE;
INSERT INTO `users_last_import` VALUES  ('74ff04ab-ca5b-2b40-d3cb-50ae25d73706','1','Opportunities','Account','f19d81df-17a9-2f43-6e8c-50ae2527aaf3',0),
 ('97760f73-a346-c0a9-a4d1-50ae251590ce','1','Opportunities','Account','898c6144-1f0a-0759-d9cc-50ae25a9fd2b',0),
 ('b7887f7d-f9b4-0eb8-0b4c-50ae254720dc','1','Opportunities','Account','ad85e253-81bc-c12f-e0d7-50ae2535591a',0),
 ('dafdb8fd-50ac-dd57-21b5-50ae254c4d8e','1','Opportunities','Account','d0de9b34-d9e0-9c06-1ee4-50ae255e1b26',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;


--
-- Definition of table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
CREATE TABLE  `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_password_link`
--

/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
LOCK TABLES `users_password_link` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;


--
-- Definition of table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
CREATE TABLE  `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_signatures`
--

/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
LOCK TABLES `users_signatures` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;


--
-- Definition of table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
CREATE TABLE  `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vcals`
--

/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
LOCK TABLES `vcals` WRITE;
INSERT INTO `vcals` VALUES  ('fcef0991-cb4e-b93a-3d39-50ae1f836f79',0,'2012-11-22 12:51:38','2012-11-22 12:54:22','1','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN=Administrator:rafaela@ambientelivre.com.br\nDTSTART:2012-11-21 02:00:00\nDTEND:2013-01-21 02:00:00\nFREEBUSY:20121128T120000Z/20121128T121500Z\nDTSTAMP:2012-11-22 12:54:22\nEND:VFREEBUSY\nEND:VCALENDAR\n');
UNLOCK TABLES;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;


--
-- Definition of table `versions`
--

DROP TABLE IF EXISTS `versions`;
CREATE TABLE  `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `versions`
--

/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
LOCK TABLES `versions` WRITE;
INSERT INTO `versions` VALUES  ('23711d98-5b76-c9ad-8508-51dc202575f2',0,'2013-07-09 14:39:30','2013-07-09 14:39:30','1','1','Rebuild Extensions','4.0.0','4.0.0'),
 ('2ed80ea8-cd14-f93c-05bb-51dc20262ea4',0,'2013-07-09 14:39:30','2013-07-09 14:39:30','1','1','Rebuild Relationships','4.0.0','4.0.0'),
 ('91140b7b-25d5-953a-e03c-50ad1235be0c',0,'2012-11-21 17:40:16','2012-11-21 17:40:16','1','1','htaccess','3.5.1','3.5.1'),
 ('e955d22f-79e9-ca68-307e-50ad12d4ae63',0,'2012-11-21 17:40:16','2012-11-21 17:40:16','1','1','Chart Data Cache','3.5.1','3.5.1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
