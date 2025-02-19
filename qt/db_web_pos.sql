/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.4-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: db_web_pos
-- ------------------------------------------------------
-- Server version	11.4.4-MariaDB-3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `app_settings`
--

DROP TABLE IF EXISTS `app_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_settings`
--

LOCK TABLES `app_settings` WRITE;
/*!40000 ALTER TABLE `app_settings` DISABLE KEYS */;
INSERT INTO `app_settings` VALUES
(1,'Sweet Home','/logo/logo.png','097895734503','Yangon','2025-01-31 14:32:24','2025-02-01 09:49:44');
/*!40000 ALTER TABLE `app_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES
(1,'Tiger','DB',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,1,NULL,'2025-02-01 06:39:38','2025-02-01 06:39:38',NULL),
(2,'Apple','Apple',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,1,NULL,'2025-02-01 07:21:43','2025-02-01 07:21:43',NULL),
(3,'Samsung','Samsung',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,1,NULL,'2025-02-01 07:22:01','2025-02-01 07:22:01',NULL),
(4,'Nike','Nike',NULL,NULL,1,1,NULL,'2025-02-01 07:22:23','2025-02-01 07:22:23',NULL),
(5,'Adidas',NULL,NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,1,NULL,'2025-02-01 07:22:33','2025-02-01 07:22:33',NULL),
(6,'Samsung Note','Tech Company Ltd',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,1,NULL,'2025-02-01 08:24:10','2025-02-01 08:24:10',NULL),
(7,'Lenovo','Lenovo Company Ltd',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,1,NULL,'2025-02-01 09:36:15','2025-02-01 09:36:22',NULL),
(9,'Energy Drink','Coca Cola Company Ltd',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,1,NULL,'2025-02-01 10:21:11','2025-02-01 10:21:11',NULL);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,'Beer',NULL,1,1,NULL,'2025-02-01 06:39:50','2025-02-01 06:39:50',NULL),
(2,'Electronics',NULL,1,1,NULL,'2025-02-01 07:22:52','2025-02-01 07:22:52',NULL),
(3,'Footwear',NULL,1,1,NULL,'2025-02-01 07:23:03','2025-02-01 07:23:03',NULL),
(4,'Bag',NULL,1,1,NULL,'2025-02-01 08:09:16','2025-02-01 08:09:16',NULL),
(5,'Phone',NULL,1,1,NULL,'2025-02-01 08:24:29','2025-02-01 08:24:29',NULL),
(6,'သံဘူးအချိုရည်',NULL,1,1,NULL,'2025-02-01 10:21:38','2025-02-01 10:21:38',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_product_category_id_product_id_unique` (`category_id`,`product_id`),
  KEY `category_product_product_id_foreign` (`product_id`),
  CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES
(1,1,516880633442993,NULL,NULL),
(2,2,516891472069366,NULL,NULL),
(3,2,516891982711857,NULL,NULL),
(4,3,516892224032136,NULL,NULL),
(5,3,516892395111083,NULL,NULL),
(6,5,516906027976944,NULL,NULL),
(7,2,516922998923345,NULL,NULL),
(8,2,516923581839377,NULL,NULL),
(9,3,516925497612693,NULL,NULL),
(10,5,516935206237694,NULL,NULL);
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_sales`
--

DROP TABLE IF EXISTS `daily_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `total_voucher` varchar(255) NOT NULL,
  `total_actual_price` varchar(255) NOT NULL,
  `total_cash` varchar(255) NOT NULL,
  `tax_total` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_sales`
--

LOCK TABLES `daily_sales` WRITE;
/*!40000 ALTER TABLE `daily_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2023_09_26_085755_create_photos_table',1),
(6,'2024_12_02_181258_create_brands_table',1),
(7,'2024_12_02_181313_create_categories_table',1),
(8,'2024_12_02_182445_create_suppliers_table',1),
(9,'2024_12_02_182512_create_products_table',1),
(10,'2024_12_02_182527_create_stocks_table',1),
(11,'2024_12_03_160643_create_vouchers_table',1),
(12,'2024_12_03_160653_create_voucher_records_table',1),
(13,'2024_12_03_160942_create_sales_table',1),
(14,'2024_12_03_161116_create_daily_sales_table',1),
(15,'2024_12_03_171800_create_category_product_table',1),
(16,'2024_12_03_171827_create_supplier_product_table',1),
(17,'2025_01_21_204348_create_app_settings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES
(1,1,'public/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png','wallpaper','png','433906 KB',1,1,NULL,'2025-02-01 06:28:16','2025-02-01 06:28:16',NULL);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `actual_price` double NOT NULL DEFAULT 0,
  `sale_price` double NOT NULL DEFAULT 0,
  `total_stock` int(11) NOT NULL DEFAULT 0,
  `unit` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `brand_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(516880633442993,'Test',20000,20000,1000,'10','1111','http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,1,1,1,NULL,'2025-02-01 06:42:40','2025-02-01 08:05:18',NULL),
(516891472069366,'iPhone 15 Pro',6000000,6000000,170,'100',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,2,1,1,NULL,'2025-02-01 07:26:47','2025-02-01 08:21:26',NULL),
(516891982711857,'Samsung 65\" TV',3000000,2900000,20,'20',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,2,1,1,NULL,'2025-02-01 07:28:51','2025-02-01 09:35:35',NULL),
(516892224032136,'Air Jordan Sneakers',300000,300000,95,'100',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,4,1,1,NULL,'2025-02-01 07:29:50','2025-02-01 08:13:39',NULL),
(516892395111083,'Adidas Running Shoes',200000,200000,199,'pair',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,5,1,1,NULL,'2025-02-01 07:30:32','2025-02-01 08:08:18',NULL),
(516906027976944,'Samsung Note',3000000,2800000,18,'phone',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,3,1,1,NULL,'2025-02-01 08:26:00','2025-02-01 08:26:27',NULL),
(516922998923345,'Laser Printer',50000,50000,36,'test',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,3,1,1,NULL,'2025-02-01 09:35:04','2025-02-02 04:22:23',NULL),
(516923581839377,'Laptop',2000000,1900000,29,'one',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,7,1,1,NULL,'2025-02-01 09:37:26','2025-02-02 04:22:23',NULL),
(516925497612693,'Running Shoe',200000,195000,25,'pair',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,5,1,1,NULL,'2025-02-01 09:45:14','2025-02-02 04:22:23',NULL),
(516935206237694,'iPhone 16 Pro Max',6000000,5500000,0,'one',NULL,'http://backend.local/storage/photo/XHyMa0MW7K0QgJOA2Smv6CkrSom7A5W3zb1kdu1w.png',1,2,1,1,NULL,'2025-02-01 10:24:44','2025-02-01 10:24:44',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sale_close` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `movement_type` enum('stock_in','stock_out','return') NOT NULL,
  `quantity` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stocks_product_id_foreign` (`product_id`),
  KEY `stocks_user_id_foreign` (`user_id`),
  CONSTRAINT `stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stocks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES
(1,516880633442993,1,'stock_in',15,NULL,1,1,NULL,'2025-02-01 06:43:23','2025-02-01 06:43:23',NULL),
(2,516880633442993,1,'stock_out',11,'Product sold during checkout',1,1,NULL,'2025-02-01 06:44:46','2025-02-01 06:44:46',NULL),
(3,516880633442993,1,'stock_out',4,'Product sold during checkout',1,1,NULL,'2025-02-01 06:45:39','2025-02-01 06:45:39',NULL),
(4,516892395111083,1,'stock_in',200,NULL,1,1,NULL,'2025-02-01 08:04:40','2025-02-01 08:04:40',NULL),
(5,516892224032136,1,'stock_in',100,NULL,1,1,NULL,'2025-02-01 08:04:48','2025-02-01 08:04:48',NULL),
(6,516891982711857,1,'stock_in',30,NULL,1,1,NULL,'2025-02-01 08:04:56','2025-02-01 08:04:56',NULL),
(7,516891472069366,1,'stock_in',200,NULL,1,1,NULL,'2025-02-01 08:05:10','2025-02-01 08:05:10',NULL),
(8,516880633442993,1,'stock_in',1000,NULL,1,1,NULL,'2025-02-01 08:05:18','2025-02-01 08:05:18',NULL),
(9,516892395111083,1,'stock_out',1,'Product sold during checkout',1,1,NULL,'2025-02-01 08:08:18','2025-02-01 08:08:18',NULL),
(10,516892224032136,1,'stock_out',2,'Product sold during checkout',1,1,NULL,'2025-02-01 08:08:34','2025-02-01 08:08:34',NULL),
(11,516892224032136,1,'stock_out',3,'Product sold during checkout',1,1,NULL,'2025-02-01 08:13:39','2025-02-01 08:13:39',NULL),
(12,516891982711857,1,'stock_out',30,'Product sold during checkout',1,1,NULL,'2025-02-01 08:20:42','2025-02-01 08:20:42',NULL),
(13,516891472069366,1,'stock_out',30,'Product sold during checkout',1,1,NULL,'2025-02-01 08:21:26','2025-02-01 08:21:26',NULL),
(14,516906027976944,1,'stock_in',20,NULL,1,1,NULL,'2025-02-01 08:26:08','2025-02-01 08:26:08',NULL),
(15,516906027976944,1,'stock_out',2,'Product sold during checkout',1,1,NULL,'2025-02-01 08:26:27','2025-02-01 08:26:27',NULL),
(16,516922998923345,1,'stock_in',10,NULL,1,1,NULL,'2025-02-01 09:35:11','2025-02-01 09:35:11',NULL),
(17,516922998923345,1,'stock_in',30,NULL,1,1,NULL,'2025-02-01 09:35:21','2025-02-01 09:35:21',NULL),
(18,516891982711857,1,'stock_in',20,NULL,1,1,NULL,'2025-02-01 09:35:35','2025-02-01 09:35:35',NULL),
(19,516923581839377,1,'stock_in',10,NULL,1,1,NULL,'2025-02-01 09:37:32','2025-02-01 09:37:32',NULL),
(20,516923581839377,1,'stock_in',20,NULL,1,1,NULL,'2025-02-01 09:37:45','2025-02-01 09:37:45',NULL),
(21,516925497612693,1,'stock_in',30,NULL,1,1,NULL,'2025-02-01 09:45:37','2025-02-01 09:45:37',NULL),
(22,516925497612693,1,'stock_out',5,'Product sold during checkout',1,1,NULL,'2025-02-02 04:22:23','2025-02-02 04:22:23',NULL),
(23,516923581839377,1,'stock_out',1,'Product sold during checkout',1,1,NULL,'2025-02-02 04:22:23','2025-02-02 04:22:23',NULL),
(24,516922998923345,1,'stock_out',4,'Product sold during checkout',1,1,NULL,'2025-02-02 04:22:23','2025-02-02 04:22:23',NULL);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_product`
--

DROP TABLE IF EXISTS `supplier_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `supplier_product_supplier_id_product_id_unique` (`supplier_id`,`product_id`),
  KEY `supplier_product_product_id_foreign` (`product_id`),
  CONSTRAINT `supplier_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `supplier_product_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_product`
--

LOCK TABLES `supplier_product` WRITE;
/*!40000 ALTER TABLE `supplier_product` DISABLE KEYS */;
INSERT INTO `supplier_product` VALUES
(1,1,516880633442993,NULL,NULL),
(2,2,516891472069366,NULL,NULL),
(3,2,516891982711857,NULL,NULL),
(4,4,516892224032136,NULL,NULL),
(5,4,516892395111083,NULL,NULL),
(6,2,516906027976944,NULL,NULL),
(7,1,516922998923345,NULL,NULL),
(8,2,516923581839377,NULL,NULL),
(9,4,516925497612693,NULL,NULL),
(10,2,516935206237694,NULL,NULL);
/*!40000 ALTER TABLE `supplier_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `secondary_phone_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES
(1,'Test','DB','097827483278',NULL,NULL,'test@gmail.com',1,1,NULL,'2025-02-01 06:40:19','2025-02-01 06:40:19',NULL),
(2,'Tech','Tech Distributiors Ltd.','0978979879',NULL,NULL,NULL,1,1,NULL,'2025-02-01 07:23:50','2025-02-01 07:23:50',NULL),
(3,'Mega Electronics','Mega Electronics Pvt. Ltd',NULL,NULL,NULL,NULL,1,1,NULL,'2025-02-01 07:24:17','2025-02-01 07:24:17',NULL),
(4,'Global Fashion','Global Fashion  Supplies',NULL,NULL,NULL,NULL,1,1,NULL,'2025-02-01 07:24:48','2025-02-01 07:24:48',NULL),
(5,'Fashion','Fashion Ltd','09786247248',NULL,NULL,NULL,1,1,NULL,'2025-02-01 08:09:43','2025-02-01 08:09:43',NULL),
(6,'Samsung Note Series','Tech company','095672912',NULL,NULL,NULL,1,1,NULL,'2025-02-01 08:25:02','2025-02-01 08:25:02',NULL),
(7,'iPhone 16 Pro Max','Apple','0979837843',NULL,NULL,NULL,1,1,NULL,'2025-02-01 10:22:48','2025-02-01 10:22:48',NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `role` enum('admin','staff') NOT NULL DEFAULT 'staff',
  `password` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'admin','admin@gmail.com','091212112','admin','$2y$10$C.x3NpQGZio2V70Z/D5HU.ynpKgXzxv7IRzw3cSQV/vmfTHGGfc3q','2025-01-31 14:32:24','oc7u3bawUB',NULL,NULL,NULL,'2025-01-31 14:32:24','2025-01-31 14:32:24',NULL),
(2,'staff','staff@gmail.com','098899889','staff','$2y$10$.auFMVPsz6ueVZfd/uT6ZuwSYQwmkDXfgukX8cMIRN2Pvq9iuLmTu','2025-01-31 14:32:24','l4E2gPRiyQ',NULL,NULL,NULL,'2025-01-31 14:32:24','2025-01-31 14:32:24',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_records`
--

DROP TABLE IF EXISTS `voucher_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `voucher_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `actual_price` double NOT NULL,
  `sale_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` double NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `voucher_records_voucher_id_foreign` (`voucher_id`),
  CONSTRAINT `voucher_records_voucher_id_foreign` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_records`
--

LOCK TABLES `voucher_records` WRITE;
/*!40000 ALTER TABLE `voucher_records` DISABLE KEYS */;
INSERT INTO `voucher_records` VALUES
(1,1,516880633442993,20000,20000,11,220000,NULL,NULL,NULL,'2025-02-01 06:44:46','2025-02-01 06:44:46',NULL),
(2,2,516880633442993,20000,20000,4,80000,NULL,NULL,NULL,'2025-02-01 06:45:39','2025-02-01 06:45:39',NULL),
(3,3,516892395111083,200000,200000,1,200000,NULL,NULL,NULL,'2025-02-01 08:08:18','2025-02-01 08:08:18',NULL),
(4,4,516892224032136,300000,300000,2,600000,NULL,NULL,NULL,'2025-02-01 08:08:34','2025-02-01 08:08:34',NULL),
(5,5,516892224032136,300000,300000,3,900000,NULL,NULL,NULL,'2025-02-01 08:13:39','2025-02-01 08:13:39',NULL),
(6,6,516891982711857,3000000,2900000,30,87000000,NULL,NULL,NULL,'2025-02-01 08:20:42','2025-02-01 08:20:42',NULL),
(7,7,516891472069366,6000000,6000000,30,180000000,NULL,NULL,NULL,'2025-02-01 08:21:26','2025-02-01 08:21:26',NULL),
(8,8,516906027976944,3000000,2800000,2,5600000,NULL,NULL,NULL,'2025-02-01 08:26:27','2025-02-01 08:26:27',NULL),
(9,9,516925497612693,200000,195000,5,975000,NULL,NULL,NULL,'2025-02-02 04:22:23','2025-02-02 04:22:23',NULL),
(10,9,516923581839377,2000000,1900000,1,1900000,NULL,NULL,NULL,'2025-02-02 04:22:23','2025-02-02 04:22:23',NULL),
(11,9,516922998923345,50000,50000,4,200000,NULL,NULL,NULL,'2025-02-02 04:22:23','2025-02-02 04:22:23',NULL);
/*!40000 ALTER TABLE `voucher_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vouchers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `voucher_number` varchar(255) NOT NULL,
  `total_actual_price` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) NOT NULL DEFAULT 0,
  `net_total` int(11) NOT NULL DEFAULT 0,
  `payment_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
INSERT INTO `vouchers` VALUES
(1,'UBQXLOMN',220000,220000,0,220000,'Cash',1,1,1,NULL,'2025-02-01 06:44:46','2025-02-01 06:44:46',NULL),
(2,'PLERTYYU',80000,80000,0,80000,'K Pay',1,1,1,NULL,'2025-02-01 06:45:39','2025-02-01 06:45:39',NULL),
(3,'OKPV4DQA',200000,200000,0,200000,'Cash',1,1,1,NULL,'2025-02-01 08:08:18','2025-02-01 08:08:18',NULL),
(4,'FGTLJKDF',600000,600000,0,600000,'K Pay',1,1,1,NULL,'2025-02-01 08:08:34','2025-02-01 08:08:34',NULL),
(5,'XN8YMGXB',900000,900000,0,900000,'Wave Money',1,1,1,NULL,'2025-02-01 08:13:39','2025-02-01 08:13:39',NULL),
(6,'TS6ARMM0',90000000,87000000,0,87000000,'Cash',1,1,1,NULL,'2025-02-01 08:20:42','2025-02-01 08:20:42',NULL),
(7,'2HZPNG3H',180000000,180000000,0,180000000,'Cash',1,1,1,NULL,'2025-02-01 08:21:26','2025-02-01 08:21:26',NULL),
(8,'LDKSGPCG',6000000,5600000,0,5600000,'K Pay',1,1,1,NULL,'2025-02-01 08:26:27','2025-02-01 08:26:27',NULL),
(9,'SRWYCXXM',3200000,3075000,0,3075000,'Cash',1,1,1,NULL,'2025-02-02 04:22:23','2025-02-02 04:22:23',NULL);
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-02-02 23:09:26
