-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.3.10-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 sleeve 的数据库结构
DROP DATABASE IF EXISTS `sleeve`;
CREATE DATABASE IF NOT EXISTS `sleeve` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sleeve`;

-- 导出  表 sleeve.activity 结构
DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start_time` datetime(3) NOT NULL,
  `end_time` datetime(3) NOT NULL,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `remark` varchar(60) DEFAULT NULL,
  `online` tinyint(3) unsigned DEFAULT 1,
  `entrance_img` varchar(255) DEFAULT NULL,
  `internal_top_img` varchar(255) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.activity 的数据：~0 rows (大约)
DELETE FROM `activity`;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;

-- 导出  表 sleeve.activity_category 结构
DROP TABLE IF EXISTS `activity_category`;
CREATE TABLE IF NOT EXISTS `activity_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.activity_category 的数据：~0 rows (大约)
DELETE FROM `activity_category`;
/*!40000 ALTER TABLE `activity_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_category` ENABLE KEYS */;

-- 导出  表 sleeve.activity_coupon 结构
DROP TABLE IF EXISTS `activity_coupon`;
CREATE TABLE IF NOT EXISTS `activity_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) unsigned NOT NULL,
  `activity_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.activity_coupon 的数据：~0 rows (大约)
DELETE FROM `activity_coupon`;
/*!40000 ALTER TABLE `activity_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_coupon` ENABLE KEYS */;

-- 导出  表 sleeve.activity_spu 结构
DROP TABLE IF EXISTS `activity_spu`;
CREATE TABLE IF NOT EXISTS `activity_spu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(10) unsigned NOT NULL,
  `spu_id` int(10) unsigned NOT NULL,
  `participation` tinyint(3) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.activity_spu 的数据：~0 rows (大约)
DELETE FROM `activity_spu`;
/*!40000 ALTER TABLE `activity_spu` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_spu` ENABLE KEYS */;

-- 导出  表 sleeve.banner 结构
DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL COMMENT '部分banner可能有标题图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.banner 的数据：~1 rows (大约)
DELETE FROM `banner`;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`id`, `name`, `description`, `create_time`, `update_time`, `delete_time`, `title`, `img`) VALUES
	(1, 'b-1', '首页顶部主banner', '2020-09-15 13:58:45.000', '2020-09-15 13:59:04.794', NULL, NULL, NULL),
	(2, 'b-2', '热销商品banner', '2020-09-15 13:59:59.000', '2020-09-16 21:03:21.651', NULL, NULL, NULL);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;

-- 导出  表 sleeve.banner_item 结构
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE IF NOT EXISTS `banner_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `keyword` varchar(50) DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.banner_item 的数据：~5 rows (大约)
DELETE FROM `banner_item`;
/*!40000 ALTER TABLE `banner_item` DISABLE KEYS */;
INSERT INTO `banner_item` (`id`, `img`, `keyword`, `type`, `create_time`, `update_time`, `delete_time`, `banner_id`, `name`) VALUES
	(5, 'http://i2.sleve.7yue.pro/m6.png', '28', 1, '2020-09-15 14:06:19.000', '2020-09-15 14:06:21.000', NULL, 2, 'left'),
	(6, 'http://i2.sleeve.7yue.pro/m7.png', '26', 1, '2020-09-15 14:07:32.000', '2020-09-15 14:11:51.047', NULL, 2, 'right-top'),
	(7, 'http://i2.sleeve.7yue.pro/m8.png', '27', 1, '2020-09-15 14:11:08.796', '2020-09-15 14:11:34.100', NULL, 2, 'right-bottom'),
	(12, 'http://i2.sleeve.7yue.pro/m2.png', '25', 3, '2020-09-15 14:08:05.000', '2020-09-16 21:05:07.237', NULL, 1, NULL),
	(13, 'http://i1.sleeve.7yue.pro/assets/702f2ce9-5729-4aa4-aeb3-921513327747.png', '23', 1, '2020-09-15 14:08:51.000', '2020-09-15 14:08:52.000', NULL, 1, NULL),
	(14, 'http://i1.sleeve.7yue.pro/assets/b8e510a1-8340-43c2-a4b0-0e56a40256f9.png', '24', 1, '2020-09-15 14:09:43.000', '2020-09-15 14:09:44.000', NULL, 1, NULL);
/*!40000 ALTER TABLE `banner_item` ENABLE KEYS */;

-- 导出  表 sleeve.brand 结构
DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT current_timestamp(),
  `update_time` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.brand 的数据：~0 rows (大约)
DELETE FROM `brand`;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;

-- 导出  表 sleeve.category 结构
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `is_root` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `index` int(10) unsigned DEFAULT NULL,
  `online` int(10) unsigned DEFAULT 1,
  `level` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.category 的数据：~0 rows (大约)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- 导出  表 sleeve.coupon 结构
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE IF NOT EXISTS `coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `full_money` decimal(10,2) DEFAULT NULL,
  `minus` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `type` smallint(6) NOT NULL COMMENT '1. 满减券 2.折扣券 3.无门槛券 4.满金额折扣券',
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `activity_id` int(10) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `whole_store` tinyint(3) unsigned DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.coupon 的数据：~0 rows (大约)
DELETE FROM `coupon`;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;

-- 导出  表 sleeve.coupon_category 结构
DROP TABLE IF EXISTS `coupon_category`;
CREATE TABLE IF NOT EXISTS `coupon_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `coupon_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.coupon_category 的数据：~0 rows (大约)
DELETE FROM `coupon_category`;
/*!40000 ALTER TABLE `coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_category` ENABLE KEYS */;

-- 导出  表 sleeve.coupon_template 结构
DROP TABLE IF EXISTS `coupon_template`;
CREATE TABLE IF NOT EXISTS `coupon_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `full_money` decimal(10,2) DEFAULT NULL,
  `minus` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `type` smallint(6) NOT NULL COMMENT '1. 满减券 2.折扣券 3.无门槛券 4.满金额折扣券',
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.coupon_template 的数据：~0 rows (大约)
DELETE FROM `coupon_template`;
/*!40000 ALTER TABLE `coupon_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_template` ENABLE KEYS */;

-- 导出  表 sleeve.coupon_type 结构
DROP TABLE IF EXISTS `coupon_type`;
CREATE TABLE IF NOT EXISTS `coupon_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `code` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT current_timestamp(),
  `update_time` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.coupon_type 的数据：~0 rows (大约)
DELETE FROM `coupon_type`;
/*!40000 ALTER TABLE `coupon_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_type` ENABLE KEYS */;

-- 导出  表 sleeve.grid_category 结构
DROP TABLE IF EXISTS `grid_category`;
CREATE TABLE IF NOT EXISTS `grid_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `root_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.grid_category 的数据：~0 rows (大约)
DELETE FROM `grid_category`;
/*!40000 ALTER TABLE `grid_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `grid_category` ENABLE KEYS */;

-- 导出  表 sleeve.order 结构
DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL COMMENT 'user表外键',
  `total_price` decimal(10,2) DEFAULT 0.00,
  `total_count` int(11) unsigned DEFAULT 0,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `expired_time` datetime(3) DEFAULT NULL,
  `placed_time` datetime(3) DEFAULT NULL,
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `snap_img` varchar(255) DEFAULT NULL,
  `snap_title` varchar(255) DEFAULT NULL,
  `snap_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `snap_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `prepay_id` varchar(255) DEFAULT NULL,
  `final_total_price` decimal(10,2) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uni_order_no` (`order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.order 的数据：~0 rows (大约)
DELETE FROM `order`;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- 导出  表 sleeve.sale_explain 结构
DROP TABLE IF EXISTS `sale_explain`;
CREATE TABLE IF NOT EXISTS `sale_explain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fixed` tinyint(3) unsigned DEFAULT 0,
  `text` varchar(100) NOT NULL,
  `spu_id` int(11) DEFAULT NULL,
  `index` int(10) unsigned DEFAULT NULL,
  `replace_id` int(10) unsigned DEFAULT NULL,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.sale_explain 的数据：~0 rows (大约)
DELETE FROM `sale_explain`;
/*!40000 ALTER TABLE `sale_explain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_explain` ENABLE KEYS */;

-- 导出  表 sleeve.sku 结构
DROP TABLE IF EXISTS `sku`;
CREATE TABLE IF NOT EXISTS `sku` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) unsigned NOT NULL,
  `discount_price` decimal(10,2) unsigned DEFAULT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `spu_id` int(10) unsigned NOT NULL,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `specs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `stock` int(10) unsigned NOT NULL DEFAULT 0,
  `category_id` int(10) unsigned DEFAULT NULL,
  `root_category_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.sku 的数据：~0 rows (大约)
DELETE FROM `sku`;
/*!40000 ALTER TABLE `sku` DISABLE KEYS */;
/*!40000 ALTER TABLE `sku` ENABLE KEYS */;

-- 导出  表 sleeve.sku_spec 结构
DROP TABLE IF EXISTS `sku_spec`;
CREATE TABLE IF NOT EXISTS `sku_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spu_id` int(10) unsigned NOT NULL,
  `sku_id` int(10) unsigned NOT NULL,
  `key_id` int(10) unsigned NOT NULL,
  `value_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.sku_spec 的数据：~0 rows (大约)
DELETE FROM `sku_spec`;
/*!40000 ALTER TABLE `sku_spec` DISABLE KEYS */;
/*!40000 ALTER TABLE `sku_spec` ENABLE KEYS */;

-- 导出  表 sleeve.spec_key 结构
DROP TABLE IF EXISTS `spec_key`;
CREATE TABLE IF NOT EXISTS `spec_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `standard` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `create_time` datetime DEFAULT current_timestamp(),
  `update_time` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.spec_key 的数据：~0 rows (大约)
DELETE FROM `spec_key`;
/*!40000 ALTER TABLE `spec_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `spec_key` ENABLE KEYS */;

-- 导出  表 sleeve.spec_value 结构
DROP TABLE IF EXISTS `spec_value`;
CREATE TABLE IF NOT EXISTS `spec_value` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `spec_id` int(10) unsigned NOT NULL,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `extend` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.spec_value 的数据：~0 rows (大约)
DELETE FROM `spec_value`;
/*!40000 ALTER TABLE `spec_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `spec_value` ENABLE KEYS */;

-- 导出  表 sleeve.spu 结构
DROP TABLE IF EXISTS `spu`;
CREATE TABLE IF NOT EXISTS `spu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(800) DEFAULT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `root_category_id` int(11) DEFAULT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `price` varchar(20) NOT NULL COMMENT '文本型价格，有时候SPU需要展示的是一个范围，或者自定义平均价格',
  `sketch_spec_id` int(10) unsigned DEFAULT NULL COMMENT '某种规格可以直接附加单品图片',
  `default_sku_id` int(11) DEFAULT NULL COMMENT '默认选中的sku',
  `img` varchar(255) DEFAULT NULL,
  `discount_price` varchar(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `tags` varchar(30) DEFAULT NULL,
  `is_test` tinyint(3) unsigned DEFAULT 0,
  `spu_theme_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `for_theme_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.spu 的数据：~2 rows (大约)
DELETE FROM `spu`;
/*!40000 ALTER TABLE `spu` DISABLE KEYS */;
INSERT INTO `spu` (`id`, `title`, `subtitle`, `category_id`, `root_category_id`, `online`, `create_time`, `update_time`, `delete_time`, `price`, `sketch_spec_id`, `default_sku_id`, `img`, `discount_price`, `description`, `tags`, `is_test`, `spu_theme_img`, `for_theme_img`) VALUES
	(1, '青峰大腕', '大碗主要用来盛宽面，凡凡倾情推荐', 28, 27, 1, '2020-09-17 22:02:55.000', '2020-09-17 22:02:56.000', '2020-09-17 22:02:57.000', '12.99', 1, 0, 'http://i2.sleeve.7yue.pro/n9.png', '11.11', 'NULL', '林白推荐', 1, NULL, NULL),
	(10, 'titletest', 'subtitletest', 333, 3434, 1, '2020-09-16 23:34:44.000', '2020-09-17 22:01:27.255', '2020-09-16 23:34:45.000', '777', 999, 888, 'ji;liwjer', '8329', 'descriptiontest', 'tagstest', 0, NULL, NULL);
/*!40000 ALTER TABLE `spu` ENABLE KEYS */;

-- 导出  表 sleeve.spu_detail_img 结构
DROP TABLE IF EXISTS `spu_detail_img`;
CREATE TABLE IF NOT EXISTS `spu_detail_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `spu_id` int(10) unsigned DEFAULT NULL,
  `index` int(10) unsigned NOT NULL,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.spu_detail_img 的数据：~0 rows (大约)
DELETE FROM `spu_detail_img`;
/*!40000 ALTER TABLE `spu_detail_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `spu_detail_img` ENABLE KEYS */;

-- 导出  表 sleeve.spu_img 结构
DROP TABLE IF EXISTS `spu_img`;
CREATE TABLE IF NOT EXISTS `spu_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `spu_id` int(10) unsigned DEFAULT NULL,
  `delete_time` datetime(3) DEFAULT NULL,
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.spu_img 的数据：~0 rows (大约)
DELETE FROM `spu_img`;
/*!40000 ALTER TABLE `spu_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `spu_img` ENABLE KEYS */;

-- 导出  表 sleeve.spu_key 结构
DROP TABLE IF EXISTS `spu_key`;
CREATE TABLE IF NOT EXISTS `spu_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spu_id` int(10) unsigned NOT NULL,
  `spec_key_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.spu_key 的数据：~0 rows (大约)
DELETE FROM `spu_key`;
/*!40000 ALTER TABLE `spu_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `spu_key` ENABLE KEYS */;

-- 导出  表 sleeve.spu_tag 结构
DROP TABLE IF EXISTS `spu_tag`;
CREATE TABLE IF NOT EXISTS `spu_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spu_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.spu_tag 的数据：~0 rows (大约)
DELETE FROM `spu_tag`;
/*!40000 ALTER TABLE `spu_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `spu_tag` ENABLE KEYS */;

-- 导出  表 sleeve.tag 结构
DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL COMMENT '中文限制6个，英文限制12个，由逻辑层控制',
  `description` varchar(255) DEFAULT NULL,
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `highlight` tinyint(4) unsigned DEFAULT 0,
  `type` tinyint(3) unsigned DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.tag 的数据：~0 rows (大约)
DELETE FROM `tag`;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;

-- 导出  表 sleeve.theme 结构
DROP TABLE IF EXISTS `theme`;
CREATE TABLE IF NOT EXISTS `theme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `tpl_name` varchar(30) DEFAULT NULL,
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  `entrance_img` varchar(255) DEFAULT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `internal_top_img` varchar(255) DEFAULT NULL,
  `title_img` varchar(255) DEFAULT NULL,
  `online` tinyint(3) unsigned DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.theme 的数据：~0 rows (大约)
DELETE FROM `theme`;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;

-- 导出  表 sleeve.theme_spu 结构
DROP TABLE IF EXISTS `theme_spu`;
CREATE TABLE IF NOT EXISTS `theme_spu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) unsigned NOT NULL,
  `spu_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.theme_spu 的数据：~0 rows (大约)
DELETE FROM `theme_spu`;
/*!40000 ALTER TABLE `theme_spu` DISABLE KEYS */;
/*!40000 ALTER TABLE `theme_spu` ENABLE KEYS */;

-- 导出  表 sleeve.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) DEFAULT NULL,
  `nickname` varchar(60) DEFAULT NULL,
  `unify_uid` int(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `wx_profile` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_openid` (`openid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.user 的数据：~0 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 导出  表 sleeve.user_coupon 结构
DROP TABLE IF EXISTS `user_coupon`;
CREATE TABLE IF NOT EXISTS `user_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `coupon_id` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1:未使用，2：已使用， 3：已过期',
  `create_time` datetime(3) DEFAULT current_timestamp(3),
  `order_id` int(10) unsigned DEFAULT NULL,
  `update_time` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_user_coupon` (`user_id`,`coupon_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  sleeve.user_coupon 的数据：~0 rows (大约)
DELETE FROM `user_coupon`;
/*!40000 ALTER TABLE `user_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_coupon` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
