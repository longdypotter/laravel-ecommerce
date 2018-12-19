/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : laravel_ecommerce

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-12-19 13:20:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', null, '1', 'Category 1', 'category-1', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `categories` VALUES ('2', null, '1', 'Category 2', 'category-2', '2018-12-16 15:48:52', '2018-12-16 15:48:52');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name_unique` (`name`),
  UNIQUE KEY `category_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Laptops', 'laptosp', '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `category` VALUES ('2', 'Desktops', 'desktops', '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `category` VALUES ('3', 'Mobile Phones', 'mobile-phones', '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `category` VALUES ('4', 'Tablets', 'tablets', '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `category` VALUES ('5', 'TVs', 'tvs', '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `category` VALUES ('6', 'Digital Cameras', 'digital-cameras', '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `category` VALUES ('7', 'Appliances', 'appliances', '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `category` VALUES ('8', 'fff', 'f', '2018-12-16 17:10:24', '2018-12-16 17:10:24');

-- ----------------------------
-- Table structure for `category_product`
-- ----------------------------
DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_product_product_id_foreign` (`product_id`),
  KEY `category_product_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of category_product
-- ----------------------------
INSERT INTO `category_product` VALUES ('1', '1', '1', null, null);
INSERT INTO `category_product` VALUES ('2', '2', '1', null, null);
INSERT INTO `category_product` VALUES ('3', '3', '1', null, null);
INSERT INTO `category_product` VALUES ('4', '4', '1', null, null);
INSERT INTO `category_product` VALUES ('5', '5', '1', null, null);
INSERT INTO `category_product` VALUES ('6', '6', '1', null, null);
INSERT INTO `category_product` VALUES ('7', '7', '1', null, null);
INSERT INTO `category_product` VALUES ('8', '8', '1', null, null);
INSERT INTO `category_product` VALUES ('9', '9', '1', null, null);
INSERT INTO `category_product` VALUES ('10', '10', '1', null, null);
INSERT INTO `category_product` VALUES ('11', '11', '1', null, null);
INSERT INTO `category_product` VALUES ('12', '12', '1', null, null);
INSERT INTO `category_product` VALUES ('13', '13', '1', null, null);
INSERT INTO `category_product` VALUES ('14', '14', '1', null, null);
INSERT INTO `category_product` VALUES ('15', '15', '1', null, null);
INSERT INTO `category_product` VALUES ('16', '16', '1', null, null);
INSERT INTO `category_product` VALUES ('17', '17', '1', null, null);
INSERT INTO `category_product` VALUES ('18', '18', '1', null, null);
INSERT INTO `category_product` VALUES ('19', '19', '1', null, null);
INSERT INTO `category_product` VALUES ('20', '20', '1', null, null);
INSERT INTO `category_product` VALUES ('21', '21', '1', null, null);
INSERT INTO `category_product` VALUES ('22', '22', '1', null, null);
INSERT INTO `category_product` VALUES ('23', '23', '1', null, null);
INSERT INTO `category_product` VALUES ('24', '24', '1', null, null);
INSERT INTO `category_product` VALUES ('25', '25', '1', null, null);
INSERT INTO `category_product` VALUES ('26', '26', '1', null, null);
INSERT INTO `category_product` VALUES ('27', '27', '1', null, null);
INSERT INTO `category_product` VALUES ('28', '28', '1', null, null);
INSERT INTO `category_product` VALUES ('29', '29', '1', null, null);
INSERT INTO `category_product` VALUES ('30', '30', '1', null, null);
INSERT INTO `category_product` VALUES ('31', '1', '2', null, null);
INSERT INTO `category_product` VALUES ('32', '31', '2', null, null);
INSERT INTO `category_product` VALUES ('33', '32', '2', null, null);
INSERT INTO `category_product` VALUES ('34', '33', '2', null, null);
INSERT INTO `category_product` VALUES ('35', '34', '2', null, null);
INSERT INTO `category_product` VALUES ('36', '35', '2', null, null);
INSERT INTO `category_product` VALUES ('37', '36', '2', null, null);
INSERT INTO `category_product` VALUES ('38', '37', '2', null, null);
INSERT INTO `category_product` VALUES ('39', '38', '2', null, null);
INSERT INTO `category_product` VALUES ('40', '39', '2', null, null);
INSERT INTO `category_product` VALUES ('41', '40', '3', null, null);
INSERT INTO `category_product` VALUES ('42', '41', '3', null, null);
INSERT INTO `category_product` VALUES ('43', '42', '3', null, null);
INSERT INTO `category_product` VALUES ('44', '43', '3', null, null);
INSERT INTO `category_product` VALUES ('45', '44', '3', null, null);
INSERT INTO `category_product` VALUES ('46', '45', '3', null, null);
INSERT INTO `category_product` VALUES ('47', '46', '3', null, null);
INSERT INTO `category_product` VALUES ('48', '47', '3', null, null);
INSERT INTO `category_product` VALUES ('49', '48', '3', null, null);
INSERT INTO `category_product` VALUES ('50', '49', '4', null, null);
INSERT INTO `category_product` VALUES ('51', '50', '4', null, null);
INSERT INTO `category_product` VALUES ('52', '51', '4', null, null);
INSERT INTO `category_product` VALUES ('53', '52', '4', null, null);
INSERT INTO `category_product` VALUES ('54', '53', '4', null, null);
INSERT INTO `category_product` VALUES ('55', '54', '4', null, null);
INSERT INTO `category_product` VALUES ('56', '55', '4', null, null);
INSERT INTO `category_product` VALUES ('57', '56', '4', null, null);
INSERT INTO `category_product` VALUES ('58', '57', '4', null, null);
INSERT INTO `category_product` VALUES ('59', '58', '5', null, null);
INSERT INTO `category_product` VALUES ('60', '59', '5', null, null);
INSERT INTO `category_product` VALUES ('61', '60', '5', null, null);
INSERT INTO `category_product` VALUES ('62', '61', '5', null, null);
INSERT INTO `category_product` VALUES ('63', '62', '5', null, null);
INSERT INTO `category_product` VALUES ('64', '63', '5', null, null);
INSERT INTO `category_product` VALUES ('65', '64', '5', null, null);
INSERT INTO `category_product` VALUES ('66', '65', '5', null, null);
INSERT INTO `category_product` VALUES ('67', '66', '5', null, null);
INSERT INTO `category_product` VALUES ('68', '67', '6', null, null);
INSERT INTO `category_product` VALUES ('69', '68', '6', null, null);
INSERT INTO `category_product` VALUES ('70', '69', '6', null, null);
INSERT INTO `category_product` VALUES ('71', '70', '6', null, null);
INSERT INTO `category_product` VALUES ('72', '71', '6', null, null);
INSERT INTO `category_product` VALUES ('73', '72', '6', null, null);
INSERT INTO `category_product` VALUES ('74', '73', '6', null, null);
INSERT INTO `category_product` VALUES ('75', '74', '6', null, null);
INSERT INTO `category_product` VALUES ('76', '75', '6', null, null);
INSERT INTO `category_product` VALUES ('77', '76', '7', null, null);
INSERT INTO `category_product` VALUES ('78', '77', '7', null, null);
INSERT INTO `category_product` VALUES ('79', '78', '7', null, null);
INSERT INTO `category_product` VALUES ('80', '79', '7', null, null);
INSERT INTO `category_product` VALUES ('81', '80', '7', null, null);
INSERT INTO `category_product` VALUES ('82', '81', '7', null, null);
INSERT INTO `category_product` VALUES ('83', '82', '7', null, null);
INSERT INTO `category_product` VALUES ('84', '83', '7', null, null);
INSERT INTO `category_product` VALUES ('85', '84', '7', null, null);

-- ----------------------------
-- Table structure for `coupons`
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES ('1', 'ABC123', 'fixed', '3000', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `coupons` VALUES ('2', 'DEF456', 'percent', null, '50', '2018-12-16 15:47:19', '2018-12-16 15:47:19');

-- ----------------------------
-- Table structure for `data_rows`
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
INSERT INTO `data_rows` VALUES ('1', '1', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('2', '1', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('3', '1', 'email', 'text', 'Email', '1', '1', '1', '1', '1', '1', null, '3');
INSERT INTO `data_rows` VALUES ('4', '1', 'password', 'password', 'Password', '1', '0', '0', '1', '1', '0', null, '4');
INSERT INTO `data_rows` VALUES ('5', '1', 'remember_token', 'text', 'Remember Token', '0', '0', '0', '0', '0', '0', null, '5');
INSERT INTO `data_rows` VALUES ('6', '1', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '0', null, '6');
INSERT INTO `data_rows` VALUES ('7', '1', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '7');
INSERT INTO `data_rows` VALUES ('8', '1', 'avatar', 'image', 'Avatar', '0', '1', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('9', '1', 'user_belongsto_role_relationship', 'relationship', 'Role', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', '10');
INSERT INTO `data_rows` VALUES ('10', '1', 'user_belongstomany_role_relationship', 'relationship', 'Roles', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', '11');
INSERT INTO `data_rows` VALUES ('11', '1', 'locale', 'text', 'Locale', '0', '1', '1', '1', '1', '0', null, '12');
INSERT INTO `data_rows` VALUES ('12', '1', 'settings', 'hidden', 'Settings', '0', '0', '0', '0', '0', '0', null, '12');
INSERT INTO `data_rows` VALUES ('13', '2', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('14', '2', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('15', '2', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', null, '3');
INSERT INTO `data_rows` VALUES ('16', '2', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '4');
INSERT INTO `data_rows` VALUES ('17', '3', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('18', '3', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('19', '3', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', null, '3');
INSERT INTO `data_rows` VALUES ('20', '3', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '4');
INSERT INTO `data_rows` VALUES ('21', '3', 'display_name', 'text', 'Display Name', '1', '1', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('22', '1', 'role_id', 'text', 'Role', '1', '1', '1', '1', '1', '1', null, '9');
INSERT INTO `data_rows` VALUES ('23', '4', 'id', 'hidden', 'ID', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('24', '4', 'parent_id', 'select_dropdown', 'Parent', '0', '0', '1', '1', '1', '1', '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', '2');
INSERT INTO `data_rows` VALUES ('25', '4', 'order', 'text', 'Order', '1', '1', '1', '1', '1', '1', '{\"default\":1}', '3');
INSERT INTO `data_rows` VALUES ('26', '4', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('27', '4', 'slug', 'text', 'Slug', '1', '1', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"}}', '5');
INSERT INTO `data_rows` VALUES ('28', '4', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '0', '{}', '6');
INSERT INTO `data_rows` VALUES ('29', '4', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '7');
INSERT INTO `data_rows` VALUES ('30', '5', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('31', '5', 'author_id', 'text', 'Author', '1', '0', '1', '1', '0', '1', null, '2');
INSERT INTO `data_rows` VALUES ('32', '5', 'category_id', 'text', 'Category', '1', '0', '1', '1', '1', '0', null, '3');
INSERT INTO `data_rows` VALUES ('33', '5', 'title', 'text', 'Title', '1', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('34', '5', 'excerpt', 'text_area', 'Excerpt', '1', '0', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('35', '5', 'body', 'rich_text_box', 'Body', '1', '0', '1', '1', '1', '1', null, '6');
INSERT INTO `data_rows` VALUES ('36', '5', 'image', 'image', 'Post Image', '0', '1', '1', '1', '1', '1', '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', '7');
INSERT INTO `data_rows` VALUES ('37', '5', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', '8');
INSERT INTO `data_rows` VALUES ('38', '5', 'meta_description', 'text_area', 'Meta Description', '1', '0', '1', '1', '1', '1', null, '9');
INSERT INTO `data_rows` VALUES ('39', '5', 'meta_keywords', 'text_area', 'Meta Keywords', '1', '0', '1', '1', '1', '1', null, '10');
INSERT INTO `data_rows` VALUES ('40', '5', 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', '11');
INSERT INTO `data_rows` VALUES ('41', '5', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '0', null, '12');
INSERT INTO `data_rows` VALUES ('42', '5', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '13');
INSERT INTO `data_rows` VALUES ('43', '5', 'seo_title', 'text', 'SEO Title', '0', '1', '1', '1', '1', '1', null, '14');
INSERT INTO `data_rows` VALUES ('44', '5', 'featured', 'checkbox', 'Featured', '1', '1', '1', '1', '1', '1', null, '15');
INSERT INTO `data_rows` VALUES ('45', '6', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('46', '6', 'author_id', 'text', 'Author', '1', '0', '0', '0', '0', '0', null, '2');
INSERT INTO `data_rows` VALUES ('47', '6', 'title', 'text', 'Title', '1', '1', '1', '1', '1', '1', null, '3');
INSERT INTO `data_rows` VALUES ('48', '6', 'excerpt', 'text_area', 'Excerpt', '1', '0', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('49', '6', 'body', 'rich_text_box', 'Body', '1', '0', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('50', '6', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', '6');
INSERT INTO `data_rows` VALUES ('51', '6', 'meta_description', 'text', 'Meta Description', '1', '0', '1', '1', '1', '1', null, '7');
INSERT INTO `data_rows` VALUES ('52', '6', 'meta_keywords', 'text', 'Meta Keywords', '1', '0', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('53', '6', 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', '9');
INSERT INTO `data_rows` VALUES ('54', '6', 'created_at', 'timestamp', 'Created At', '1', '1', '1', '0', '0', '0', null, '10');
INSERT INTO `data_rows` VALUES ('55', '6', 'updated_at', 'timestamp', 'Updated At', '1', '0', '0', '0', '0', '0', null, '11');
INSERT INTO `data_rows` VALUES ('56', '6', 'image', 'image', 'Page Image', '0', '1', '1', '1', '1', '1', null, '12');
INSERT INTO `data_rows` VALUES ('57', '7', 'id', 'hidden', 'Id', '1', '1', '1', '1', '1', '1', '{}', '1');
INSERT INTO `data_rows` VALUES ('58', '7', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('59', '7', 'slug', 'text', 'Slug', '1', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('60', '7', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', '{}', '4');
INSERT INTO `data_rows` VALUES ('61', '7', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '5');
INSERT INTO `data_rows` VALUES ('62', '8', 'id', 'text', 'Id', '1', '1', '1', '1', '1', '1', '{}', '1');
INSERT INTO `data_rows` VALUES ('63', '8', 'product_id', 'number', 'Product Id', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('64', '8', 'category_id', 'number', 'Category Id', '0', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('65', '8', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', '{}', '4');
INSERT INTO `data_rows` VALUES ('66', '8', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '5');
INSERT INTO `data_rows` VALUES ('67', '9', 'id', 'hidden', 'Id', '1', '1', '1', '1', '1', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('68', '9', 'code', 'text', 'Code', '1', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('69', '9', 'type', 'text', 'Type', '1', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('70', '9', 'value', 'number', 'Value', '0', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('71', '9', 'percent_off', 'number', 'Percent Off', '0', '1', '1', '1', '1', '1', '{}', '5');
INSERT INTO `data_rows` VALUES ('72', '9', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', '{}', '6');
INSERT INTO `data_rows` VALUES ('73', '9', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '7');
INSERT INTO `data_rows` VALUES ('74', '10', 'id', 'hidden', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('75', '10', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"validation\":{\"rule\":\"required|max:5\"}}', '2');
INSERT INTO `data_rows` VALUES ('76', '10', 'slug', 'text', 'Slug', '1', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('77', '10', 'details', 'text', 'Details', '0', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('78', '10', 'price', 'number', 'Price', '1', '1', '1', '1', '1', '1', '{}', '5');
INSERT INTO `data_rows` VALUES ('79', '10', 'description', 'rich_text_box', 'Description', '1', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('80', '10', 'featured', 'number', 'Featured', '1', '1', '1', '1', '1', '1', '{\"on\":\"Yes\",\"off\":\"No\"}', '7');
INSERT INTO `data_rows` VALUES ('81', '10', 'images', 'image', 'Images', '0', '1', '1', '1', '1', '1', '{}', '8');
INSERT INTO `data_rows` VALUES ('82', '10', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', '{}', '9');
INSERT INTO `data_rows` VALUES ('83', '10', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '10');
INSERT INTO `data_rows` VALUES ('84', '11', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('85', '11', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('86', '11', 'slug', 'text', 'Slug', '1', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('87', '11', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('88', '11', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '5');
INSERT INTO `data_rows` VALUES ('89', '12', 'id', 'hidden', 'Id', '1', '1', '1', '1', '1', '1', '{}', '1');
INSERT INTO `data_rows` VALUES ('90', '12', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('91', '12', 'slug', 'text', 'Slug', '1', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('92', '12', 'details', 'text', 'Details', '0', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('93', '12', 'price', 'number', 'Price', '1', '1', '1', '1', '1', '1', '{}', '5');
INSERT INTO `data_rows` VALUES ('94', '12', 'description', 'rich_text_box', 'Description', '1', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('95', '12', 'featured', 'checkbox', 'Featured', '1', '1', '1', '1', '1', '1', '{\"on\":\"Yes\",\"off\":\"No\"}', '7');
INSERT INTO `data_rows` VALUES ('96', '12', 'images', 'image', 'Images', '0', '1', '1', '1', '1', '1', '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":false,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', '8');
INSERT INTO `data_rows` VALUES ('97', '12', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', '{}', '9');
INSERT INTO `data_rows` VALUES ('98', '12', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '10');
INSERT INTO `data_rows` VALUES ('99', '12', 'imagess', 'multiple_images', 'Imagess', '0', '1', '1', '1', '1', '1', '{}', '9');

-- ----------------------------
-- Table structure for `data_types`
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_types
-- ----------------------------
INSERT INTO `data_types` VALUES ('1', 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', '1', '0', null, '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `data_types` VALUES ('2', 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', null, '', '', '1', '0', null, '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `data_types` VALUES ('3', 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', null, '', '', '1', '0', null, '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `data_types` VALUES ('4', 'categories', 'categories', 'Category', 'Categories', null, 'TCG\\Voyager\\Models\\Category', null, null, null, '1', '1', '{\"order_column\":null,\"order_display_column\":null}', '2018-12-16 15:48:52', '2018-12-16 16:35:08');
INSERT INTO `data_types` VALUES ('5', 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', '1', '0', null, '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `data_types` VALUES ('6', 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', null, '', '', '1', '0', null, '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `data_types` VALUES ('8', 'category_product', 'category-product', 'Category Product', 'Category Products', 'voyager-tag', 'App\\CategoryProduct', null, null, null, '1', '1', '{\"order_column\":null,\"order_display_column\":null}', '2018-12-16 16:16:30', '2018-12-16 16:16:30');
INSERT INTO `data_types` VALUES ('9', 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-dollar', 'App\\Coupon', null, null, null, '1', '1', '{\"order_column\":null,\"order_display_column\":null}', '2018-12-16 16:19:17', '2018-12-16 16:19:17');
INSERT INTO `data_types` VALUES ('12', 'products', 'products', 'Product', 'Products', null, 'App\\Product', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-12-16 17:04:26', '2018-12-17 14:46:09');
INSERT INTO `data_types` VALUES ('11', 'category', 'category', 'Category', 'Categories', 'voyager-categories', 'App\\Category', null, null, null, '1', '1', '{\"order_column\":null,\"order_display_column\":null}', '2018-12-16 16:47:10', '2018-12-16 16:47:10');

-- ----------------------------
-- Table structure for `menus`
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'admin', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `menus` VALUES ('2', 'main', '2018-12-16 16:08:06', '2018-12-16 16:08:06');
INSERT INTO `menus` VALUES ('3', 'footer', '2018-12-16 16:10:10', '2018-12-16 16:10:10');

-- ----------------------------
-- Table structure for `menu_items`
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES ('1', '1', 'Dashboard', '', '_self', 'voyager-boat', null, null, '1', '2018-12-16 15:48:52', '2018-12-16 15:48:52', 'voyager.dashboard', null);
INSERT INTO `menu_items` VALUES ('2', '1', 'Media', '', '_self', 'voyager-images', null, null, '8', '2018-12-16 15:48:52', '2018-12-16 16:48:07', 'voyager.media.index', null);
INSERT INTO `menu_items` VALUES ('3', '1', 'Users', '', '_self', 'voyager-person', null, null, '7', '2018-12-16 15:48:52', '2018-12-16 16:48:07', 'voyager.users.index', null);
INSERT INTO `menu_items` VALUES ('4', '1', 'Roles', '', '_self', 'voyager-lock', null, null, '6', '2018-12-16 15:48:52', '2018-12-16 16:48:07', 'voyager.roles.index', null);
INSERT INTO `menu_items` VALUES ('5', '1', 'Tools', '', '_self', 'voyager-tools', null, null, '12', '2018-12-16 15:48:52', '2018-12-16 16:30:17', null, null);
INSERT INTO `menu_items` VALUES ('6', '1', 'Menu Builder', '', '_self', 'voyager-list', null, '5', '1', '2018-12-16 15:48:52', '2018-12-16 16:29:32', 'voyager.menus.index', null);
INSERT INTO `menu_items` VALUES ('7', '1', 'Database', '', '_self', 'voyager-data', null, '5', '2', '2018-12-16 15:48:52', '2018-12-16 16:29:37', 'voyager.database.index', null);
INSERT INTO `menu_items` VALUES ('8', '1', 'Compass', '', '_self', 'voyager-compass', null, '5', '3', '2018-12-16 15:48:52', '2018-12-16 16:29:37', 'voyager.compass.index', null);
INSERT INTO `menu_items` VALUES ('9', '1', 'BREAD', '', '_self', 'voyager-bread', null, '5', '4', '2018-12-16 15:48:52', '2018-12-16 16:29:37', 'voyager.bread.index', null);
INSERT INTO `menu_items` VALUES ('10', '1', 'Settings', '', '_self', 'voyager-settings', null, null, '13', '2018-12-16 15:48:52', '2018-12-16 16:30:17', 'voyager.settings.index', null);
INSERT INTO `menu_items` VALUES ('11', '1', 'Categories', '', '_self', 'voyager-images', '#000000', null, '11', '2018-12-16 15:48:52', '2018-12-16 16:38:00', 'voyager.categories.index', 'null');
INSERT INTO `menu_items` VALUES ('12', '1', 'Posts', '', '_self', 'voyager-news', null, null, '9', '2018-12-16 15:48:53', '2018-12-16 16:48:07', 'voyager.posts.index', null);
INSERT INTO `menu_items` VALUES ('13', '1', 'Pages', '', '_self', 'voyager-file-text', null, null, '10', '2018-12-16 15:48:53', '2018-12-16 16:48:07', 'voyager.pages.index', null);
INSERT INTO `menu_items` VALUES ('14', '1', 'Hooks', '', '_self', 'voyager-hook', null, '5', '5', '2018-12-16 15:48:53', '2018-12-16 16:29:37', 'voyager.hooks', null);
INSERT INTO `menu_items` VALUES ('15', '2', 'Shop', '', '_self', null, '#000000', null, '15', '2018-12-16 16:08:43', '2018-12-16 16:08:43', 'shop.index', null);
INSERT INTO `menu_items` VALUES ('17', '2', 'About', '#', '_self', null, '#000000', null, '17', '2018-12-16 16:09:32', '2018-12-16 16:09:32', null, '');
INSERT INTO `menu_items` VALUES ('18', '2', 'Blog', '#', '_self', null, '#000000', null, '18', '2018-12-16 16:09:47', '2018-12-16 16:09:47', null, '');
INSERT INTO `menu_items` VALUES ('20', '3', 'fa-globe', 'https://andremadarang.com', '_self', null, '#000000', null, '2', '2018-12-16 16:10:39', '2018-12-16 16:11:45', null, '');
INSERT INTO `menu_items` VALUES ('21', '3', 'fa-youtube', 'https://www.youtube.com/drehimself', '_self', null, '#000000', null, '3', '2018-12-16 16:11:02', '2018-12-16 16:11:45', null, '');
INSERT INTO `menu_items` VALUES ('22', '3', 'fa-github', 'https://www.github.com/drehimself', '_self', null, '#000000', null, '4', '2018-12-16 16:11:14', '2018-12-16 16:11:45', null, '');
INSERT INTO `menu_items` VALUES ('23', '3', 'fa-twitter', 'https://twitter.com/drehimself', '_self', null, '#000000', null, '5', '2018-12-16 16:11:27', '2018-12-16 16:11:45', null, '');
INSERT INTO `menu_items` VALUES ('24', '3', 'Follow Me:', '', '_self', null, '#000000', null, '1', '2018-12-16 16:11:41', '2018-12-16 16:11:45', null, '');
INSERT INTO `menu_items` VALUES ('29', '1', 'Categories', '', '_self', 'voyager-categories', null, null, '4', '2018-12-16 16:47:10', '2018-12-16 16:48:48', 'voyager.category.index', null);
INSERT INTO `menu_items` VALUES ('26', '1', 'Category Products', '', '_self', 'voyager-tag', null, null, '5', '2018-12-16 16:16:30', '2018-12-16 16:48:48', 'voyager.category-product.index', null);
INSERT INTO `menu_items` VALUES ('27', '1', 'Coupons', '', '_self', 'voyager-dollar', null, null, '3', '2018-12-16 16:19:17', '2018-12-16 16:48:01', 'voyager.coupons.index', null);
INSERT INTO `menu_items` VALUES ('28', '1', 'Products', '', '_self', 'voyager-shop', null, null, '2', '2018-12-16 16:22:23', '2018-12-16 16:30:00', 'voyager.products.index', null);

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('117', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('118', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('119', '2016_01_01_000000_add_voyager_user_fields', '1');
INSERT INTO `migrations` VALUES ('120', '2016_01_01_000000_create_data_types_table', '1');
INSERT INTO `migrations` VALUES ('121', '2016_01_01_000000_create_pages_table', '1');
INSERT INTO `migrations` VALUES ('122', '2016_01_01_000000_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('123', '2016_02_15_204651_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('124', '2016_05_19_173453_create_menu_table', '1');
INSERT INTO `migrations` VALUES ('125', '2016_10_21_190000_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('126', '2016_10_21_190000_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('127', '2016_11_30_135954_create_permission_table', '1');
INSERT INTO `migrations` VALUES ('128', '2016_11_30_141208_create_permission_role_table', '1');
INSERT INTO `migrations` VALUES ('129', '2016_12_26_201236_data_types__add__server_side', '1');
INSERT INTO `migrations` VALUES ('130', '2017_01_13_000000_add_route_to_menu_items_table', '1');
INSERT INTO `migrations` VALUES ('131', '2017_01_14_005015_create_translations_table', '1');
INSERT INTO `migrations` VALUES ('132', '2017_01_15_000000_make_table_name_nullable_in_permissions_table', '1');
INSERT INTO `migrations` VALUES ('133', '2017_03_06_000000_add_controller_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('134', '2017_04_11_000000_alter_post_nullable_fields_table', '1');
INSERT INTO `migrations` VALUES ('135', '2017_04_21_000000_add_order_to_data_rows_table', '1');
INSERT INTO `migrations` VALUES ('136', '2017_07_05_210000_add_policyname_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('137', '2017_08_05_000000_add_group_to_settings_table', '1');
INSERT INTO `migrations` VALUES ('138', '2017_11_26_013050_add_user_role_relationship', '1');
INSERT INTO `migrations` VALUES ('139', '2017_11_26_015000_create_user_roles_table', '1');
INSERT INTO `migrations` VALUES ('140', '2018_03_11_000000_add_user_settings', '1');
INSERT INTO `migrations` VALUES ('141', '2018_03_14_000000_add_details_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('142', '2018_03_16_000000_make_settings_value_nullable', '1');
INSERT INTO `migrations` VALUES ('143', '2018_11_04_075803_create_products_table', '1');
INSERT INTO `migrations` VALUES ('144', '2018_12_09_134646_create_category_product_table', '1');
INSERT INTO `migrations` VALUES ('145', '2018_12_14_133821_create_coupons_table', '1');
INSERT INTO `migrations` VALUES ('146', '2018_12_16_153604_create_table_category', '1');
INSERT INTO `migrations` VALUES ('147', '2018_12_17_143802_add_imagess_to_products_table', '2');

-- ----------------------------
-- Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', '0', 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-12-16 15:48:53', '2018-12-16 15:48:53');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('admin@admin.com', '$2y$10$2P2AUFvwPdBM72lBKWMrb.F9aPV2SUfdIOdB1jzlKpxbWSuje0gWO', '2018-12-18 13:51:45');

-- ----------------------------
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'browse_admin', null, '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('2', 'browse_bread', null, '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('3', 'browse_database', null, '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('4', 'browse_media', null, '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('5', 'browse_compass', null, '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('6', 'browse_menus', 'menus', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('7', 'read_menus', 'menus', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('8', 'edit_menus', 'menus', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('9', 'add_menus', 'menus', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('10', 'delete_menus', 'menus', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('11', 'browse_roles', 'roles', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('12', 'read_roles', 'roles', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('13', 'edit_roles', 'roles', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('14', 'add_roles', 'roles', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('15', 'delete_roles', 'roles', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('16', 'browse_users', 'users', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('17', 'read_users', 'users', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('18', 'edit_users', 'users', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('19', 'add_users', 'users', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('20', 'delete_users', 'users', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('21', 'browse_settings', 'settings', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('22', 'read_settings', 'settings', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('23', 'edit_settings', 'settings', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('24', 'add_settings', 'settings', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('25', 'delete_settings', 'settings', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('26', 'browse_categories', 'categories', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('27', 'read_categories', 'categories', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('28', 'edit_categories', 'categories', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('29', 'add_categories', 'categories', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('30', 'delete_categories', 'categories', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `permissions` VALUES ('31', 'browse_posts', 'posts', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `permissions` VALUES ('32', 'read_posts', 'posts', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `permissions` VALUES ('33', 'edit_posts', 'posts', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `permissions` VALUES ('34', 'add_posts', 'posts', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `permissions` VALUES ('35', 'delete_posts', 'posts', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `permissions` VALUES ('36', 'browse_pages', 'pages', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `permissions` VALUES ('37', 'read_pages', 'pages', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `permissions` VALUES ('38', 'edit_pages', 'pages', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `permissions` VALUES ('39', 'add_pages', 'pages', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `permissions` VALUES ('40', 'delete_pages', 'pages', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `permissions` VALUES ('41', 'browse_hooks', null, '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `permissions` VALUES ('66', 'delete_category', 'category', '2018-12-16 16:47:10', '2018-12-16 16:47:10');
INSERT INTO `permissions` VALUES ('65', 'add_category', 'category', '2018-12-16 16:47:10', '2018-12-16 16:47:10');
INSERT INTO `permissions` VALUES ('64', 'edit_category', 'category', '2018-12-16 16:47:10', '2018-12-16 16:47:10');
INSERT INTO `permissions` VALUES ('63', 'read_category', 'category', '2018-12-16 16:47:10', '2018-12-16 16:47:10');
INSERT INTO `permissions` VALUES ('62', 'browse_category', 'category', '2018-12-16 16:47:10', '2018-12-16 16:47:10');
INSERT INTO `permissions` VALUES ('47', 'browse_category_product', 'category_product', '2018-12-16 16:16:30', '2018-12-16 16:16:30');
INSERT INTO `permissions` VALUES ('48', 'read_category_product', 'category_product', '2018-12-16 16:16:30', '2018-12-16 16:16:30');
INSERT INTO `permissions` VALUES ('49', 'edit_category_product', 'category_product', '2018-12-16 16:16:30', '2018-12-16 16:16:30');
INSERT INTO `permissions` VALUES ('50', 'add_category_product', 'category_product', '2018-12-16 16:16:30', '2018-12-16 16:16:30');
INSERT INTO `permissions` VALUES ('51', 'delete_category_product', 'category_product', '2018-12-16 16:16:30', '2018-12-16 16:16:30');
INSERT INTO `permissions` VALUES ('52', 'browse_coupons', 'coupons', '2018-12-16 16:19:17', '2018-12-16 16:19:17');
INSERT INTO `permissions` VALUES ('53', 'read_coupons', 'coupons', '2018-12-16 16:19:17', '2018-12-16 16:19:17');
INSERT INTO `permissions` VALUES ('54', 'edit_coupons', 'coupons', '2018-12-16 16:19:17', '2018-12-16 16:19:17');
INSERT INTO `permissions` VALUES ('55', 'add_coupons', 'coupons', '2018-12-16 16:19:17', '2018-12-16 16:19:17');
INSERT INTO `permissions` VALUES ('56', 'delete_coupons', 'coupons', '2018-12-16 16:19:17', '2018-12-16 16:19:17');
INSERT INTO `permissions` VALUES ('71', 'delete_products', 'products', '2018-12-16 17:04:26', '2018-12-16 17:04:26');
INSERT INTO `permissions` VALUES ('70', 'add_products', 'products', '2018-12-16 17:04:26', '2018-12-16 17:04:26');
INSERT INTO `permissions` VALUES ('69', 'edit_products', 'products', '2018-12-16 17:04:26', '2018-12-16 17:04:26');
INSERT INTO `permissions` VALUES ('68', 'read_products', 'products', '2018-12-16 17:04:26', '2018-12-16 17:04:26');
INSERT INTO `permissions` VALUES ('67', 'browse_products', 'products', '2018-12-16 17:04:26', '2018-12-16 17:04:26');

-- ----------------------------
-- Table structure for `permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES ('1', '1');
INSERT INTO `permission_role` VALUES ('2', '1');
INSERT INTO `permission_role` VALUES ('3', '1');
INSERT INTO `permission_role` VALUES ('4', '1');
INSERT INTO `permission_role` VALUES ('5', '1');
INSERT INTO `permission_role` VALUES ('6', '1');
INSERT INTO `permission_role` VALUES ('7', '1');
INSERT INTO `permission_role` VALUES ('8', '1');
INSERT INTO `permission_role` VALUES ('9', '1');
INSERT INTO `permission_role` VALUES ('10', '1');
INSERT INTO `permission_role` VALUES ('11', '1');
INSERT INTO `permission_role` VALUES ('12', '1');
INSERT INTO `permission_role` VALUES ('13', '1');
INSERT INTO `permission_role` VALUES ('14', '1');
INSERT INTO `permission_role` VALUES ('15', '1');
INSERT INTO `permission_role` VALUES ('16', '1');
INSERT INTO `permission_role` VALUES ('17', '1');
INSERT INTO `permission_role` VALUES ('18', '1');
INSERT INTO `permission_role` VALUES ('19', '1');
INSERT INTO `permission_role` VALUES ('20', '1');
INSERT INTO `permission_role` VALUES ('21', '1');
INSERT INTO `permission_role` VALUES ('22', '1');
INSERT INTO `permission_role` VALUES ('23', '1');
INSERT INTO `permission_role` VALUES ('24', '1');
INSERT INTO `permission_role` VALUES ('25', '1');
INSERT INTO `permission_role` VALUES ('26', '1');
INSERT INTO `permission_role` VALUES ('27', '1');
INSERT INTO `permission_role` VALUES ('28', '1');
INSERT INTO `permission_role` VALUES ('29', '1');
INSERT INTO `permission_role` VALUES ('30', '1');
INSERT INTO `permission_role` VALUES ('31', '1');
INSERT INTO `permission_role` VALUES ('32', '1');
INSERT INTO `permission_role` VALUES ('33', '1');
INSERT INTO `permission_role` VALUES ('34', '1');
INSERT INTO `permission_role` VALUES ('35', '1');
INSERT INTO `permission_role` VALUES ('36', '1');
INSERT INTO `permission_role` VALUES ('37', '1');
INSERT INTO `permission_role` VALUES ('38', '1');
INSERT INTO `permission_role` VALUES ('39', '1');
INSERT INTO `permission_role` VALUES ('40', '1');
INSERT INTO `permission_role` VALUES ('41', '1');
INSERT INTO `permission_role` VALUES ('42', '1');
INSERT INTO `permission_role` VALUES ('43', '1');
INSERT INTO `permission_role` VALUES ('44', '1');
INSERT INTO `permission_role` VALUES ('45', '1');
INSERT INTO `permission_role` VALUES ('46', '1');
INSERT INTO `permission_role` VALUES ('47', '1');
INSERT INTO `permission_role` VALUES ('48', '1');
INSERT INTO `permission_role` VALUES ('49', '1');
INSERT INTO `permission_role` VALUES ('50', '1');
INSERT INTO `permission_role` VALUES ('51', '1');
INSERT INTO `permission_role` VALUES ('52', '1');
INSERT INTO `permission_role` VALUES ('53', '1');
INSERT INTO `permission_role` VALUES ('54', '1');
INSERT INTO `permission_role` VALUES ('55', '1');
INSERT INTO `permission_role` VALUES ('56', '1');
INSERT INTO `permission_role` VALUES ('57', '1');
INSERT INTO `permission_role` VALUES ('58', '1');
INSERT INTO `permission_role` VALUES ('59', '1');
INSERT INTO `permission_role` VALUES ('60', '1');
INSERT INTO `permission_role` VALUES ('61', '1');
INSERT INTO `permission_role` VALUES ('62', '1');
INSERT INTO `permission_role` VALUES ('63', '1');
INSERT INTO `permission_role` VALUES ('64', '1');
INSERT INTO `permission_role` VALUES ('65', '1');
INSERT INTO `permission_role` VALUES ('66', '1');
INSERT INTO `permission_role` VALUES ('67', '1');
INSERT INTO `permission_role` VALUES ('68', '1');
INSERT INTO `permission_role` VALUES ('69', '1');
INSERT INTO `permission_role` VALUES ('70', '1');
INSERT INTO `permission_role` VALUES ('71', '1');

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '0', null, 'Lorem Ipsum Post', null, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `posts` VALUES ('2', '0', null, 'My Sample Post', null, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `posts` VALUES ('3', '0', null, 'Latest Post', null, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `posts` VALUES ('4', '0', null, 'Yarr Post', null, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2018-12-16 15:48:53', '2018-12-16 15:48:53');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `imagess` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Laptop 1', 'laptop-1', '15 inch, 1 TB SSD, 32GB RAM', '240030', '<p>Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', '0', 'products\\December2018\\laptop-1.jpg', '[\"products\\\\December2018\\\\Svt7G0iii21bukA260ym.jpg\",\"products\\\\December2018\\\\8IXlOVT1VyFaSdF7FPCH.jpg\",\"products\\\\December2018\\\\i4qir7N11lRC9ctw9O4X.jpg\",\"products\\\\December2018\\\\eFiUwn228GFwhSrueUhA.jpg\",\"products\\\\December2018\\\\n0AvxPdO7NrhbPoPobis.jpg\",\"products\\\\December2018\\\\zZWGDwPeMNo7k7dMw4uy.jpg\"]', '2018-12-16 15:47:19', '2018-12-17 16:35:45');
INSERT INTO `products` VALUES ('2', 'Laptop 2', 'laptop-2', '13 inch, 3 TB SSD, 32GB RAM', '187101', 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\laptop-2.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('3', 'Laptop 3', 'laptop-3', '13 inch, 1 TB SSD, 32GB RAM', '165431', 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '1', 'products\\December2018\\laptop-3.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('4', 'Laptop 4', 'laptop-4', '14 inch, 1 TB SSD, 32GB RAM', '246783', 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\laptop-4.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('5', 'Laptop 5', 'laptop-5', '14 inch, 2 TB SSD, 32GB RAM', '167744', 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('6', 'Laptop 6', 'laptop-6', '14 inch, 2 TB SSD, 32GB RAM', '216690', 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('7', 'Laptop 7', 'laptop-7', '13 inch, 2 TB SSD, 32GB RAM', '230793', 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('8', 'Laptop 8', 'laptop-8', '15 inch, 2 TB SSD, 32GB RAM', '207093', 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('9', 'Laptop 9', 'laptop-9', '13 inch, 3 TB SSD, 32GB RAM', '223337', 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('10', 'Laptop 10', 'laptop-10', '14 inch, 1 TB SSD, 32GB RAM', '196975', 'Lorem 10 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('11', 'Laptop 11', 'laptop-11', '15 inch, 2 TB SSD, 32GB RAM', '211567', 'Lorem 11 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('12', 'Laptop 12', 'laptop-12', '13 inch, 1 TB SSD, 32GB RAM', '235728', 'Lorem 12 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('13', 'Laptop 13', 'laptop-13', '14 inch, 2 TB SSD, 32GB RAM', '173147', 'Lorem 13 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('14', 'Laptop 14', 'laptop-14', '13 inch, 2 TB SSD, 32GB RAM', '204630', 'Lorem 14 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('15', 'Laptop 15', 'laptop-15', '15 inch, 2 TB SSD, 32GB RAM', '192071', 'Lorem 15 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('16', 'Laptop 16', 'laptop-16', '15 inch, 3 TB SSD, 32GB RAM', '150921', 'Lorem 16 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('17', 'Laptop 17', 'laptop-17', '13 inch, 1 TB SSD, 32GB RAM', '158660', 'Lorem 17 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('18', 'Laptop 18', 'laptop-18', '15 inch, 2 TB SSD, 32GB RAM', '225417', 'Lorem 18 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('19', 'Laptop 19', 'laptop-19', '13 inch, 1 TB SSD, 32GB RAM', '150135', 'Lorem 19 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('20', 'Laptop 20', 'laptop-20', '13 inch, 2 TB SSD, 32GB RAM', '170595', 'Lorem 20 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('21', 'Laptop 21', 'laptop-21', '15 inch, 2 TB SSD, 32GB RAM', '211959', 'Lorem 21 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('22', 'Laptop 22', 'laptop-22', '15 inch, 3 TB SSD, 32GB RAM', '174377', 'Lorem 22 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('23', 'Laptop 23', 'laptop-23', '13 inch, 3 TB SSD, 32GB RAM', '185024', 'Lorem 23 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('24', 'Laptop 24', 'laptop-24', '14 inch, 1 TB SSD, 32GB RAM', '168900', 'Lorem 24 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('25', 'Laptop 25', 'laptop-25', '13 inch, 2 TB SSD, 32GB RAM', '244841', 'Lorem 25 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('26', 'Laptop 26', 'laptop-26', '13 inch, 3 TB SSD, 32GB RAM', '208792', 'Lorem 26 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('27', 'Laptop 27', 'laptop-27', '14 inch, 3 TB SSD, 32GB RAM', '174490', 'Lorem 27 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('28', 'Laptop 28', 'laptop-28', '13 inch, 1 TB SSD, 32GB RAM', '151310', 'Lorem 28 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('29', 'Laptop 29', 'laptop-29', '15 inch, 2 TB SSD, 32GB RAM', '184803', 'Lorem 29 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('30', 'Laptop 30', 'laptop-30', '15 inch, 1 TB SSD, 32GB RAM', '151028', 'Lorem 30 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('31', 'Desktop 1', 'desktop-1', '27 inch, 2 TB SSD, 32GB RAM', '338467', 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\desktop-1.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('32', 'Desktop 2', 'desktop-2', '27 inch, 1 TB SSD, 32GB RAM', '268490', 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\desktop-2.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('33', 'Desktop 3', 'desktop-3', '25 inch, 3 TB SSD, 32GB RAM', '273787', 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('34', 'Desktop 4', 'desktop-4', '27 inch, 2 TB SSD, 32GB RAM', '349257', 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('35', 'Desktop 5', 'desktop-5', '24 inch, 3 TB SSD, 32GB RAM', '295831', 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('36', 'Desktop 6', 'desktop-6', '27 inch, 3 TB SSD, 32GB RAM', '431890', 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('37', 'Desktop 7', 'desktop-7', '27 inch, 2 TB SSD, 32GB RAM', '259647', 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('38', 'Desktop 8', 'desktop-8', '27 inch, 2 TB SSD, 32GB RAM', '329734', 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('39', 'Desktop 9', 'desktop-9', '24 inch, 3 TB SSD, 32GB RAM', '437628', 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('40', 'Phone 1', 'phone-1', '16GB, 5.8 inch screen, 4GHz Quad Core', '81525', 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\phone-1.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('41', 'Phone 2', 'phone-2', '16GB, 5.7 inch screen, 4GHz Quad Core', '130991', 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\phone-2.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('42', 'Phone 3', 'phone-3', '16GB, 5.9 inch screen, 4GHz Quad Core', '86920', 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('43', 'Phone 4', 'phone-4', '16GB, 5.9 inch screen, 4GHz Quad Core', '111369', 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('44', 'Phone 5', 'phone-5', '32GB, 5.8 inch screen, 4GHz Quad Core', '144650', 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('45', 'Phone 6', 'phone-6', '16GB, 5.8 inch screen, 4GHz Quad Core', '112989', 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('46', 'Phone 7', 'phone-7', '16GB, 5.7 inch screen, 4GHz Quad Core', '82020', 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('47', 'Phone 8', 'phone-8', '32GB, 5.9 inch screen, 4GHz Quad Core', '137431', 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('48', 'Phone 9', 'phone-9', '32GB, 5.8 inch screen, 4GHz Quad Core', '121236', 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('49', 'Tablet 1', 'tablet-1', '64GB, 5.12 inch screen, 4GHz Quad Core', '146764', 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\tablet-1.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('50', 'Tablet 2', 'tablet-2', '32GB, 5.12 inch screen, 4GHz Quad Core', '115671', 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\tablet-2.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('51', 'Tablet 3', 'tablet-3', '32GB, 5.12 inch screen, 4GHz Quad Core', '61080', 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('52', 'Tablet 4', 'tablet-4', '64GB, 5.11 inch screen, 4GHz Quad Core', '133234', 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('53', 'Tablet 5', 'tablet-5', '64GB, 5.10 inch screen, 4GHz Quad Core', '69023', 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('54', 'Tablet 6', 'tablet-6', '32GB, 5.10 inch screen, 4GHz Quad Core', '126657', 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('55', 'Tablet 7', 'tablet-7', '16GB, 5.11 inch screen, 4GHz Quad Core', '77565', 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('56', 'Tablet 8', 'tablet-8', '32GB, 5.12 inch screen, 4GHz Quad Core', '132723', 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('57', 'Tablet 9', 'tablet-9', '64GB, 5.11 inch screen, 4GHz Quad Core', '69749', 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('58', 'TV 1', 'tv-1', '46 inch screen, Smart TV, 4K', '148847', 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\tv-1.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('59', 'TV 2', 'tv-2', '46 inch screen, Smart TV, 4K', '130741', 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\tv-2.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('60', 'TV 3', 'tv-3', '50 inch screen, Smart TV, 4K', '110582', 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('61', 'TV 4', 'tv-4', '60 inch screen, Smart TV, 4K', '107085', 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('62', 'TV 5', 'tv-5', '50 inch screen, Smart TV, 4K', '83432', 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('63', 'TV 6', 'tv-6', '46 inch screen, Smart TV, 4K', '88534', 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('64', 'TV 7', 'tv-7', '46 inch screen, Smart TV, 4K', '141826', 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('65', 'TV 8', 'tv-8', '46 inch screen, Smart TV, 4K', '144179', 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('66', 'TV 9', 'tv-9', '50 inch screen, Smart TV, 4K', '93077', 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('67', 'Camera 1', 'camera-1', 'Full Frame DSLR, with 18-55mm kit lens.', '206587', 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\camera-1.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('68', 'Camera 2', 'camera-2', 'Full Frame DSLR, with 18-55mm kit lens.', '130823', 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\camera-2.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('69', 'Camera 3', 'camera-3', 'Full Frame DSLR, with 18-55mm kit lens.', '136662', 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('70', 'Camera 4', 'camera-4', 'Full Frame DSLR, with 18-55mm kit lens.', '105943', 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('71', 'Camera 5', 'camera-5', 'Full Frame DSLR, with 18-55mm kit lens.', '96076', 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('72', 'Camera 6', 'camera-6', 'Full Frame DSLR, with 18-55mm kit lens.', '100673', 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('73', 'Camera 7', 'camera-7', 'Full Frame DSLR, with 18-55mm kit lens.', '196699', 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('74', 'Camera 8', 'camera-8', 'Full Frame DSLR, with 18-55mm kit lens.', '170561', 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('75', 'Camera 9', 'camera-9', 'Full Frame DSLR, with 18-55mm kit lens.', '139657', 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('76', 'Appliance 1', 'appliance-1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', '129302', 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\appliance-1.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('77', 'Appliance 2', 'appliance-2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', '107511', 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', 'products\\December2018\\appliance-2.jpg', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('78', 'Appliance 3', 'appliance-3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', '120306', 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('79', 'Appliance 4', 'appliance-4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', '104861', 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('80', 'Appliance 5', 'appliance-5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', '105931', 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('81', 'Appliance 6', 'appliance-6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', '147421', 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('82', 'Appliance 7', 'appliance-7', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', '87492', 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('83', 'Appliance 8', 'appliance-8', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', '145068', 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('84', 'Appliance 9', 'appliance-9', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', '137857', 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', '0', '[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]', null, '2018-12-16 15:47:19', '2018-12-16 15:47:19');
INSERT INTO `products` VALUES ('88', 'g', 'dg', 'gs', '90', '<p>sg</p>', '1', 'products\\December2018\\16Rg7gG4rWtCisuQxRdq.jpg', '[\"products\\\\December2018\\\\g7tTaXa5GmnZOa4VopGT.png\",\"products\\\\December2018\\\\TyfhcNLr39Ubk9kpItdp.jpg\"]', '2018-12-17 09:16:49', '2018-12-17 14:48:17');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin', 'Administrator', '2018-12-16 15:48:52', '2018-12-16 15:48:52');
INSERT INTO `roles` VALUES ('2', 'user', 'Normal User', '2018-12-16 15:48:52', '2018-12-16 15:48:52');

-- ----------------------------
-- Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'site.title', 'Site Title', 'Site Title', '', 'text', '1', 'Site');
INSERT INTO `settings` VALUES ('2', 'site.description', 'Site Description', 'Site Description', '', 'text', '2', 'Site');
INSERT INTO `settings` VALUES ('3', 'site.logo', 'Site Logo', '', '', 'image', '3', 'Site');
INSERT INTO `settings` VALUES ('4', 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', null, '', 'text', '4', 'Site');
INSERT INTO `settings` VALUES ('5', 'admin.bg_image', 'Admin Background Image', 'settings\\December2018\\hP1LDgFQ7zjfPJJgLZN1.jpg', '', 'image', '5', 'Admin');
INSERT INTO `settings` VALUES ('6', 'admin.title', 'Admin Title', 'Voyager', '', 'text', '1', 'Admin');
INSERT INTO `settings` VALUES ('7', 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', '2', 'Admin');
INSERT INTO `settings` VALUES ('8', 'admin.loader', 'Admin Loader', '', '', 'image', '3', 'Admin');
INSERT INTO `settings` VALUES ('9', 'admin.icon_image', 'Admin Icon Image', '', '', 'image', '4', 'Admin');
INSERT INTO `settings` VALUES ('10', 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', null, '', 'text', '1', 'Admin');

-- ----------------------------
-- Table structure for `translations`
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translations
-- ----------------------------
INSERT INTO `translations` VALUES ('1', 'data_types', 'display_name_singular', '5', 'pt', 'Post', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('2', 'data_types', 'display_name_singular', '6', 'pt', 'Página', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('3', 'data_types', 'display_name_singular', '1', 'pt', 'Utilizador', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('4', 'data_types', 'display_name_singular', '4', 'pt', 'Categoria', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('5', 'data_types', 'display_name_singular', '2', 'pt', 'Menu', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('6', 'data_types', 'display_name_singular', '3', 'pt', 'Função', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('7', 'data_types', 'display_name_plural', '5', 'pt', 'Posts', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('8', 'data_types', 'display_name_plural', '6', 'pt', 'Páginas', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('9', 'data_types', 'display_name_plural', '1', 'pt', 'Utilizadores', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('10', 'data_types', 'display_name_plural', '4', 'pt', 'Categorias', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('11', 'data_types', 'display_name_plural', '2', 'pt', 'Menus', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('12', 'data_types', 'display_name_plural', '3', 'pt', 'Funções', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('13', 'categories', 'slug', '1', 'pt', 'categoria-1', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('14', 'categories', 'name', '1', 'pt', 'Categoria 1', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('15', 'categories', 'slug', '2', 'pt', 'categoria-2', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('16', 'categories', 'name', '2', 'pt', 'Categoria 2', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('17', 'pages', 'title', '1', 'pt', 'Olá Mundo', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('18', 'pages', 'slug', '1', 'pt', 'ola-mundo', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('19', 'pages', 'body', '1', 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('20', 'menu_items', 'title', '1', 'pt', 'Painel de Controle', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('21', 'menu_items', 'title', '2', 'pt', 'Media', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('22', 'menu_items', 'title', '12', 'pt', 'Publicações', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('23', 'menu_items', 'title', '3', 'pt', 'Utilizadores', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('24', 'menu_items', 'title', '11', 'pt', 'Categorias', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('25', 'menu_items', 'title', '13', 'pt', 'Páginas', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('26', 'menu_items', 'title', '4', 'pt', 'Funções', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('27', 'menu_items', 'title', '5', 'pt', 'Ferramentas', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('28', 'menu_items', 'title', '6', 'pt', 'Menus', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('29', 'menu_items', 'title', '7', 'pt', 'Base de dados', '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `translations` VALUES ('30', 'menu_items', 'title', '10', 'pt', 'Configurações', '2018-12-16 15:48:53', '2018-12-16 15:48:53');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$MGgwXPWyachRHARAVN7kDe9xV7nYT56ScttlLrfSlrjMBr5AjusXm', 'IIQOAGgPHehncVEKXs653mPQsgkb2T8gHSCoJTdErjBrWEoLvSMamOJWoYmR', null, '2018-12-16 15:48:53', '2018-12-16 15:48:53');
INSERT INTO `users` VALUES ('2', '2', 'User', 'user@user.com', 'users/default.png', '$2y$10$G1xsOp5xPRehZaATjcQG2e0C0uyOPWkhNpApS6htO3aomwoPdpAQe', 'yqvrzwGiz3rrGL8CtDbvkC6f5WCfplJnOzS0gjWNVbT3ped2yXwsHHhKSGO8', null, '2018-12-18 13:37:07', '2018-12-18 14:14:36');
INSERT INTO `users` VALUES ('3', '2', 'user2', 'user2@user2.com', 'users/default.png', '$2y$10$.SvzeiWOuNx13jAKVwiFWeecj6dmKh1fYvvvSHgMyVwt9NHDQiPO.', 'r7ckItKVppDxRO4Kayyxh1Bq5mJZGvnRSbZaLSdJ56hnCvs1TrsbJnxK8zZW', null, '2018-12-18 15:24:36', '2018-12-18 15:24:36');
INSERT INTO `users` VALUES ('4', '2', 'user3', 'user3@user3.com', 'users/default.png', '$2y$10$qG//Y3Ya0E3ot3zVjdaj2e/sJaUFJDD20KlAXtWGqoZIuRJb1a0Xy', 'nlJ08F3z6DlZi9tEOJ23uhFdGJvpigbX0jZ9ALUkROMYviwXQe3UZwNzZHOs', null, '2018-12-18 15:27:13', '2018-12-18 15:27:13');
INSERT INTO `users` VALUES ('5', '2', 'kk', 'kk@gmail.com', 'users/default.png', '$2y$10$hHHZ1cFD7tEbAur4YOl9N.Y/hfeLgmw.SMmXAqKMkbpbYbEBQpeNO', '8kT0VqCdBNqH5wragKuReMA4EDGbFcUAtDTKyWlYjb3oxbpIiOJEOoCGHjCt', null, '2018-12-18 15:27:42', '2018-12-18 15:27:42');

-- ----------------------------
-- Table structure for `user_roles`
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
