/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Version : 50529
 Source Host           : localhost
 Source Database       : ontherocks

 Target Server Version : 50529
 File Encoding         : utf-8

 Date: 03/19/2013 16:46:46 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `craft_assetfiles`
-- ----------------------------
DROP TABLE IF EXISTS `craft_assetfiles`;
CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` smallint(6) unsigned DEFAULT NULL,
  `height` smallint(6) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  KEY `craft_assetfiles_folderId_fk` (`folderId`),
  KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_assetfiles`
-- ----------------------------
BEGIN;
INSERT INTO `craft_assetfiles` VALUES ('159', '1', '3', 'Beer1.jpg', 'image', '680', '1024', '427914', '2012-10-12 21:34:02', '2013-03-19 22:19:37', '2013-03-19 22:21:46', 'dabab4b4-156a-428c-8533-a0e56de5ad4d'), ('160', '1', '3', 'Champagne.jpg', 'image', '600', '800', '95513', '2012-10-12 21:46:10', '2013-03-19 22:19:38', '2013-03-19 22:21:46', '496249bf-2e09-4e83-9ccf-a7cf4af8d521'), ('161', '1', '3', 'Beer3.jpg', 'image', '2592', '1944', '1688801', '2013-01-16 01:06:46', '2013-03-19 22:19:38', '2013-03-19 22:21:46', '8ae44933-f3a2-4a3b-9f0f-141488ec6475'), ('162', '1', '3', 'Beer2.jpg', 'image', '612', '612', '103184', '2013-01-16 00:58:37', '2013-03-19 22:19:38', '2013-03-19 22:21:46', 'a5cf3fbe-cbb9-40dc-a7cc-3951f5a93911'), ('163', '1', '3', 'ChampagneWithStrawberry.jpg', 'image', '612', '612', '109860', '2013-01-14 23:42:54', '2013-03-19 22:19:38', '2013-03-19 22:21:46', '5ffee3a4-8c6d-4751-95e2-f4df30e78b6f'), ('164', '1', '3', 'Cosmopolitan.jpg', 'image', '1024', '765', '418148', '2012-10-13 03:19:58', '2013-03-19 22:19:38', '2013-03-19 22:21:46', '18e2ac3b-a7c4-4c2e-b67d-760b08f58412'), ('165', '1', '3', 'EspressoMartini1.jpg', 'image', '1024', '727', '309627', '2012-10-12 09:20:54', '2013-03-19 22:19:38', '2013-03-19 22:21:46', 'a024ebca-6a52-4979-b2c1-3bc018285639'), ('166', '1', '3', 'EspressoMartini2.jpg', 'image', '1280', '956', '412123', '2012-10-12 22:57:57', '2013-03-19 22:19:38', '2013-03-19 22:21:46', 'd8f99d13-b3d8-4c78-850a-4bb9d414da78'), ('167', '1', '3', 'GinAndTonic1.jpg', 'image', '791', '1024', '91134', '2012-10-12 22:58:44', '2013-03-19 22:19:38', '2013-03-19 22:21:46', 'c7bb3619-0f8b-42af-abb0-f9a677b1371f'), ('168', '1', '3', 'GinAndTonic2.jpg', 'image', '1767', '1440', '327357', '2013-01-16 00:52:47', '2013-03-19 22:19:38', '2013-03-19 22:21:46', 'c2e4c9bf-0464-47dc-8978-b63463179816'), ('169', '1', '3', 'GinAndTonic3.jpg', 'image', '2592', '1936', '2161429', '2013-01-16 00:59:11', '2013-03-19 22:19:39', '2013-03-19 22:21:47', 'd8b8d7c7-913f-4256-b164-02bf84712183'), ('170', '1', '3', 'MaiKaiMartini1.jpg', 'image', '683', '1024', '106367', '2012-10-12 22:57:24', '2013-03-19 22:19:39', '2013-03-19 22:21:47', '05566a56-aedb-4b9d-a971-7dc133331f38'), ('171', '1', '3', 'MaiKaiMartini2.jpg', 'image', '5184', '3456', '4352065', '2013-01-16 00:53:58', '2013-03-19 22:19:39', '2013-03-19 22:21:47', 'c77166f7-d110-4381-9968-6bd094ef3563'), ('172', '1', '3', 'Mojito.jpg', 'image', '1280', '854', '281283', '2012-10-12 21:51:51', '2013-03-19 22:19:39', '2013-03-19 22:21:47', '83a9c033-7c59-4b56-afe7-ee17306d5c70'), ('173', '1', '3', 'Shots.jpg', 'image', '1000', '667', '484474', '2013-01-16 01:07:12', '2013-03-19 22:19:39', '2013-03-19 22:21:47', '6f16d83c-6e0b-4ffa-978a-181a81ebbdc9'), ('174', '1', '3', 'TahoeDrink.jpg', 'image', '612', '612', '94715', '2013-01-16 00:57:04', '2013-03-19 22:19:39', '2013-03-19 22:21:47', 'fcd158e5-39dc-440a-b635-be654e22a5ae'), ('175', '1', '3', 'Tequila.jpg', 'image', '1000', '667', '484474', '2012-10-12 21:41:47', '2013-03-19 22:19:39', '2013-03-19 22:21:47', '84a0f042-ad56-4ebc-8d55-3c8befe0d175'), ('176', '1', '3', 'Vodka.jpg', 'image', '678', '1024', '139108', '2012-10-12 23:01:18', '2013-03-19 22:19:39', '2013-03-19 22:21:47', '16e7e281-e983-498b-92ed-3173c4fdc470'), ('177', '1', '3', 'VodkaMidoriSplice.jpg', 'image', '1280', '956', '351922', '2012-10-12 22:59:45', '2013-03-19 22:19:39', '2013-03-19 22:21:47', 'b3e89cef-60d7-41fd-82ea-c6f18ebbdbed'), ('178', '1', '3', 'Whiskey1.jpg', 'image', '1024', '681', '113920', '2012-10-12 21:41:11', '2013-03-19 22:19:40', '2013-03-19 22:21:47', 'fffaf090-3074-4cfa-93c8-fb7bc318a486'), ('179', '1', '3', 'Whiskey2.jpg', 'image', '1000', '667', '467753', '2012-10-12 21:41:35', '2013-03-19 22:19:40', '2013-03-19 22:21:47', '14536b60-8649-418c-ae7b-d7608f89ea47'), ('180', '1', '3', 'WhiskeySour1.jpg', 'image', '1000', '667', '493718', '2012-10-12 21:41:41', '2013-03-19 22:19:40', '2013-03-19 22:21:48', '3efd817f-b888-46d2-b197-c06cf431e208'), ('181', '1', '3', 'WhiskeySour2.jpg', 'image', '1000', '667', '483013', '2013-01-16 01:07:26', '2013-03-19 22:19:40', '2013-03-19 22:21:48', 'd3196491-ab42-433d-8bff-0947d57be227'), ('182', '1', '3', 'Wine1.jpg', 'image', '960', '960', '84822', '2012-10-12 21:39:58', '2013-03-19 22:19:40', '2013-03-19 22:21:48', 'd56e1ce4-0e4a-4f13-9e26-09529a7862d3'), ('183', '1', '3', 'Wine2.jpg', 'image', '612', '612', '125261', '2013-01-16 00:57:17', '2013-03-19 22:19:40', '2013-03-19 22:21:48', '27a90be4-db39-4369-80d8-8e6fe8d4d2dd');
COMMIT;

-- ----------------------------
--  Table structure for `craft_assetfolders`
-- ----------------------------
DROP TABLE IF EXISTS `craft_assetfolders`;
CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  KEY `craft_assetfolders_sourceId_fk` (`sourceId`),
  KEY `craft_assetfolders_parentId_fk` (`parentId`),
  CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_assetfolders`
-- ----------------------------
BEGIN;
INSERT INTO `craft_assetfolders` VALUES ('3', null, '1', 'Drinks', '', '2013-03-19 22:16:59', '2013-03-19 22:16:59', 'a62c983d-c088-4087-bd77-680f04e7629c');
COMMIT;

-- ----------------------------
--  Table structure for `craft_assetindexdata`
-- ----------------------------
DROP TABLE IF EXISTS `craft_assetindexdata`;
CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  KEY `craft_assetindexdata_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `craft_assetsources`
-- ----------------------------
DROP TABLE IF EXISTS `craft_assetsources`;
CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_assetsources`
-- ----------------------------
BEGIN;
INSERT INTO `craft_assetsources` VALUES ('1', 'Drinks', 'Local', '{\"path\":\"..\\/public\\/images\\/drinks\\/\",\"url\":\"\\/images\\/drinks\\/\"}', '1', '2012-10-12 22:28:01', '2013-03-19 22:20:38', '29d9a013-b5fb-4d8d-a7f9-15edec759da7');
COMMIT;

-- ----------------------------
--  Table structure for `craft_assettransformindex`
-- ----------------------------
DROP TABLE IF EXISTS `craft_assettransformindex`;
CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) NOT NULL,
  `fileExists` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `craft_assettransformindex`
-- ----------------------------
BEGIN;
INSERT INTO `craft_assettransformindex` VALUES ('1', '167', '_AUTOx150_crop', '1', '1', '0', '2013-03-19 23:26:26', '2013-03-19 23:26:26', '2013-03-19 23:26:36', '656adbcd-31b4-4653-964a-c6d3d9bfb950'), ('2', '168', '_AUTOx150_crop', '1', '1', '0', '2013-03-19 23:26:26', '2013-03-19 23:26:26', '2013-03-19 23:26:36', '6537ab74-4670-41b4-80d7-0f155ded920d'), ('3', '169', '_AUTOx150_crop', '1', '1', '0', '2013-03-19 23:26:26', '2013-03-19 23:26:26', '2013-03-19 23:26:36', '7bc93f71-a12e-4a80-b82c-751345d484eb');
COMMIT;

-- ----------------------------
--  Table structure for `craft_assettransforms`
-- ----------------------------
DROP TABLE IF EXISTS `craft_assettransforms`;
CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`) USING BTREE,
  UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `craft_content`
-- ----------------------------
DROP TABLE IF EXISTS `craft_content`;
CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteIntro` text COLLATE utf8_unicode_ci,
  `summary` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `metaDescription` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_content_locale_fk` (`locale`),
  CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_content`
-- ----------------------------
BEGIN;
INSERT INTO `craft_content` VALUES ('1', '1', 'en_us', 'Tales from the Cocktail', '<p>Welcome to <i>On the Rocks</i>, a breathtaking adventure through… a&nbsp;Craft demo site!</p>\r\n', null, null, null, null, '2013-02-23 00:15:02', '2013-03-19 23:24:28', '3c1b16e2-87e9-4268-92fe-c424908958b5'), ('5', '3', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '69969241-dd7c-4ac2-bdaf-6a5b4ca3c087'), ('6', '4', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'b0e99106-dbfc-4cdf-82cc-a7ddbe6ace78'), ('7', '5', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '171292d0-4765-43f1-9a78-f51d240f4460'), ('8', '6', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '1b2bf87c-c9b3-4343-9363-8a2844331d9d'), ('9', '7', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-03-19 23:01:14', '3486d4a7-506a-47f4-8206-14a72be76a46'), ('10', '8', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '1949b068-8804-4fef-ba3a-2742e139c876'), ('11', '9', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-03-19 22:52:38', '594e258c-a791-487a-b60d-978314788209'), ('12', '10', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '716e1835-cc1f-4365-9e78-3d9e66270063'), ('13', '11', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '4f34c9ef-ad02-48e4-a45e-c9c7f2fa55b4'), ('14', '12', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '141aa33a-e679-4924-9f03-3d72ed4e9bb2'), ('15', '13', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '47a3526a-6c33-4365-a1e6-f31e80859ee9'), ('16', '14', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '9d428e4d-6eef-4448-ba3a-1ab3aea98bad'), ('17', '15', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'fe5aa8a3-3769-4a43-840f-22edb908c956'), ('18', '16', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'ebaab56f-afdb-4e54-9de0-ac18314f1c62'), ('19', '17', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'a25b70e6-7d11-4dfc-a49b-759d53d30148'), ('20', '18', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'a779274c-45b0-4ef9-8d5b-f2f38adfa277'), ('21', '19', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '46697c5b-4506-4faf-b633-f66b7a831188'), ('22', '20', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'e26f9967-6710-4950-9d24-497e26feeddb'), ('23', '21', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '243cd229-57d6-4052-a555-6b68ea6d4351'), ('24', '22', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '5ff5a57a-d3a8-4a92-9a0c-1d93e4b5af2d'), ('25', '23', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-03-19 23:02:47', '676e91ce-b9a3-480c-b5c1-8f1a128a4a06'), ('26', '24', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '8a3683a2-f131-4222-ab59-ed86837248a1'), ('27', '25', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '4f1b3d81-cf39-444a-80c4-8d8eccb37500'), ('28', '26', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '8e4d3988-5b28-4431-a06a-8eac5725fbf0'), ('29', '27', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '01489103-3632-4f99-9a19-63d1d20c47b4'), ('30', '28', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '9cc502e1-7434-443b-8796-0d689441107e'), ('31', '29', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '08820a53-dcab-4de1-b64a-a198cff9500b'), ('32', '30', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '6f027fdf-f106-442b-ad01-2b6ac328d0e7'), ('33', '31', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'cb325c09-93ba-44e9-bc5a-9f826594152e'), ('34', '32', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '68b8381d-6259-49e0-a595-053e0399fae2'), ('35', '33', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '19f40ba1-bbbf-481a-8734-5b604f589e88'), ('36', '34', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '8e41b98b-239a-45ec-b5fd-4831f1e04253'), ('37', '35', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f1592784-5c38-4aae-8109-aea892e6171b'), ('38', '36', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f981bc45-ee10-4460-bfa7-3e8b2971b9c6'), ('39', '37', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-03-19 23:00:14', '80f7ab63-f08a-43c5-a8ab-312b7aa27ce7'), ('40', '38', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '73564933-c81d-4623-8b43-e703a802ec36'), ('41', '39', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-03-19 23:00:29', '8dcaad51-fa8c-4a10-a280-274a1735e723'), ('42', '40', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'a87b9c45-3785-41df-8f83-d64adbecf2ef'), ('43', '41', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '5094d26b-dcb0-4999-bdbe-dd4f21148864'), ('44', '42', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '2d0d076e-d82b-4748-ab2a-448378d1ff48'), ('45', '43', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '45db1f80-0511-4c7f-952a-696804c86b43'), ('46', '44', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '72f542de-b88f-4aef-a11a-56bf3e332f6b'), ('47', '45', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'c0705a7c-13c3-478f-99cf-89d9c0307c05'), ('48', '46', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'c4bdee72-d1c6-4a75-bcf7-b46171a04f68'), ('49', '47', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'c6ccefa5-464c-4bd6-9f84-50b693e1d22b'), ('50', '48', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '3f1aba9d-9ccf-4cc9-be91-0f10f733deaf'), ('51', '49', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'df4a7aed-7c3c-443a-b89f-a614142ed722'), ('52', '50', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '218cb5bd-4de7-4be3-a2fb-732420413935'), ('53', '51', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'd45ad4e3-dca3-46d8-9317-770f34b903fd'), ('54', '52', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '10ea5654-f221-46c2-bf72-4b9a7fa19099'), ('55', '53', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'c261c64a-7cc2-4977-a876-81fb623c3680'), ('56', '54', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '8ac1f769-6e7b-4e08-97c3-cc8f45d5567a'), ('57', '55', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '786c0ab3-ea31-4a2b-a9b0-da1490159908'), ('58', '56', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '2758e79c-39b3-4ac2-a315-bd7e85c4c7d2'), ('59', '57', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '5ee1a83d-d4b7-4495-b529-847ae0880639'), ('60', '58', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '320fb4f9-f724-470c-bf2e-c3cef34a117f'), ('61', '59', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'c3e9ddb4-65e0-40e4-a259-a40a35195fef'), ('62', '60', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '5d7a578d-aa4d-4cbd-82a7-f61f6b221822'), ('63', '61', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'c749d6aa-a09e-40bd-9a3a-439c4806cb1f'), ('64', '62', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'bfc2dfab-2770-49da-a9c2-06d40564ab29'), ('65', '63', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '71ad70c5-9b8b-4f89-acb4-c303a752e722'), ('66', '64', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '70c2d00f-43d8-4d3a-8416-0e0d38435822'), ('67', '118', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-03-19 22:28:03', '78fc4bbf-5c6a-4559-9aec-7987e217e481'), ('68', '119', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-03-19 23:01:33', '57a5b780-b6b3-4494-8bd3-0130d84d6400'), ('69', '120', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-03-19 23:02:33', 'ab0ee202-20ed-4e00-a8fd-142bb774d013'), ('70', '121', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-03-19 22:29:37', '5eed83db-0b54-41a8-9f9c-af77cbac7c14'), ('73', '65', 'en_us', null, null, null, null, '<p>The <b>Alexander</b> is a gin cocktail consisting of gin, Chocolate Liqueur (Crème de cacao), and Cream.</p><p><br></p><p>The most common variation of the Alexander is the Brandy Alexander, made with brandy instead of gin. Similarly, a Coffee Alexander substitutes coffee liqueur (such as Kahlúa) for gin, and a Blue Alexander substitutes blue curacao for crème de cacao. Other variations exist.</p><p><br></p><p>In Jack\'s Manual (1910) there is another cocktail called The Alexander, this is a mixture of Rye Whisky and Bénédictine it is unclear whether or not this has any relation to the cream-based version.</p>\r\n', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '38352529-5e82-4ef9-98c5-d264fbf5503a'), ('74', '66', 'en_us', null, null, null, null, '<p><p>The Americano is an IBA Official Cocktail composed of Campari, sweet vermouth, and club soda. The cocktail was first served in creator Gaspare Campari\'s bar, Caffè Campari, in the 1860s. It was originally known as the \"Milano-Torino\" because of its ingredients: Campari, the bitter liqueur, is from Milan and Cinzano, the vermouth, is from Turin (Torino). It is popular belief that in the early 1900s, the Italians noticed a surge of Americans who enjoyed the cocktail. As a compliment to the Americans, the cocktail later became known as the \"Americano\". A more unlikely explanation is that the name was derived from the word \"amaro\", which means \"bitter\" in Italian.</p><p><br></p><p>It is the first drink ordered by James Bond in the first novel in Ian Fleming\'s series, Casino Royale. In the short story \"From a View to a Kill\" Bond chooses an Americano as an appropriate drink for a mere café; suggesting that \"in cafés you have to drink the least offensive of the musical comedy drinks that go with them.\" Bond always stipulates Perrier, for in his opinion expensive soda water was the cheapest way to improve a poor drink.</p></p>', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '7530f984-896c-475c-ac25-40f6b725d488'), ('75', '67', 'en_us', null, null, null, null, '<p>An apple martini (appletini for short) is a cocktail containing vodka and one or more of apple juice, apple cider, apple liqueur, or apple brandy. Optionally, vermouth may be included, as in a regular martini. Typically, the apple vodka is shaken or stirred with a sweet and sour mix and then strained into a cocktail glass.</p><p><br></p><p>A common variation of the appletini is the \"Rumpletini\", with a light rum in place of the vodka.</p><p></p><p><br></p><p>The appletini can also be made with \"martini bianco\" in a long drink glass and filled with apple juice.</p><p></p>\r\n', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'ee14731a-5ca3-4146-bdbd-e45c1464657d'), ('76', '68', 'en_us', null, null, null, null, '<p><p>The B-52 (also B52 or Bifi) cocktail is a layered shot composed of a coffee liqueur (Kahlúa), an Irish Cream (Baileys Irish Cream), and a triple sec (Grand Marnier). When prepared properly, the ingredients separate into three distinctly visible layers. The layering is due to the relative densities of the ingredients.</p><p><br></p><p>The name refers to the US B-52 Stratofortress long-range bomber. This bomber was used in the Vietnam War for the release of incendiary bombs, which likely inspired today\'s flaming variant of the cocktail; another hypothesis centers on B-52 combat losses (\"Burns like a B-52 over Hanoi\").</p><p><br></p><p>One story behind the B-52 is that it was invented by Peter Fich, a head bartender at the Banff Springs Hotel in Banff, Alberta. He named all of his new drinks after favourite bands, albums and songs. This drink was, of course, named after the band of the same name. One of his first customers for a B-52 owned restaurants in various cities in Alberta and liked the drink so much that he put it on the menu. This is why this, the first shooter, is commonly believed to originate at the Keg Steakhouse in Calgary, Alberta in 1977. The B-52 is also rumored to have been created by Adam Honigman, a bartender at New York City\'s Maxwell Plum.</p><p><br></p><p>The B-52\'s widespread popularity has resulted in many variations, each earning a slightly different designation. All together, the drinks are referred to as the B-50 series of layered cocktails.</p><p><br></p><p>The drink became a North London favourite in late 2009 when Arsenal&nbsp;striker Nicklas Bendtner changed his shirt number from 26 to 52, earning himself the nickname \"B52\" in the process. After the tall Dane scored the winner in a league cup tie with Liverpool on 28 October 2009, local Islington bars reported a huge surge in the popularity of the shooter. A barmaid at The Bailey pub on Holloway Road recounted a story from the night: \"It was mayhem. One lanky bloke ordered shots for the whole bar after he [Bendtner] scored. I didn\'t even know how to make a B52.\"</p><p><br></p><p>There are special machines that can prepare a B-52 (or other multi-layered cocktails) in only a few seconds. However, an experienced bartender usually relies on the traditional, hand-made preparation. This method of the preparation is called \"building\", as opposed to blending or shaking, thus, B-52s are \"built\".</p><p><br></p><p>B-52s are usually served in a shot glass or sherry glass, although a heatproof glass is required when a \"flaming B-52\" is served. First, a coffee liqueur, such as Tia Maria or Kahlúa, is poured into the glass. Next, Bailey\'s Irish Cream is poured very slowly over the back of a cold bar spoon, taking care to avoid disturbing the lower layer as the second liquor is poured on top. Just as carefully, Grand Marnier is poured atop the Irish Cream using the bar spoon.</p></p>', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '9c8055ee-4277-4c2a-a631-f82d1e5ac0d0'), ('77', '69', 'en_us', null, null, null, null, '<p><p>The Bacardi cocktail is an IBA Official Cocktail made primarily with Bacardi Superior. It is served as a \"pre-dinner\" cocktail.</p><p><br></p><p>The Bacardi Cocktail was originally the same as the Daiquiri, containing rum, lime juice, and sugar; The Grenadine version of the Bacardi Cocktail originated in the US, while the original non-red Bacardi company recipe originated from Cuba.</p></p>', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '6f4fdbb5-2fed-44c1-a921-5e4233219dbb'), ('78', '70', 'en_us', null, null, null, null, '<p><p>The name Daiquirí is also the name of a beach near Santiago, Cuba, and an iron mine in that area, and it is a word of Taíno origin. The daiquiri was&nbsp;supposedly invented by an American mining engineer, named Jennings Cox, who happened to be in Cuba at the time of the Spanish-American War.</p><p><br></p><p>Originally the drink was served in a tall glass packed with cracked ice. A teaspoon of sugar was poured over the ice and the juice of one or two limes was squeezed over the sugar. Two or three ounces of Bacardi rum completed the mixture. The glass was then frosted by stirring with a long-handled spoon. Later the Daiquirí evolved to be mixed in a shaker with the same ingredients but with shaved ice. After a thorough shaking, it was poured into a chilled flute glass. An article in the March 14, 1937 edition of the Miami Herald as well as private correspondence of J.F. Linthicum, one of the American engineers working for the Spanish American Ore Company near the town of Daiquirí who was present during the evolution of the recipe, both confirm the recipe and early history. Mr. Linthicum told his children that the rum came at least in part from the ration provided by the British Navy to some of his fellow engineers working at the nearby bauxite mines.</p><p><br></p><p>Consumption of the drink remained localized until 1909, when Admiral Lucius W. Johnson, a U.S. Navy medical officer, tried Cox\'s drink. Johnson subsequently introduced it to the Army and Navy Club in Washington, D.C., and drinkers of the daiquirí increased over the space of a few decades. The daiquirí was one of the favorite drinks of writer Ernest Hemingway and president John F. Kennedy.</p><p><br></p><p>The drink became popular in the 1940s. Wartime rationing made whiskey, vodka, etc., hard to come by, yet because of Roosevelt\'s Good Neighbor policy (which opened up trade and travel relations with Latin America, Cuba and the Caribbean), rum was easily obtainable. The Good Neighbor Policy (also known as \'The Pan-American program\'), helped make Latin America seem fashionable. Consequently, rum-based drinks (once frowned upon as being the domain of sailors and down-and-outs), also became fashionable, and the Daiquirí saw a tremendous rise in popularity in the US.</p><p><br></p><p>The basic recipe for a Daiquirí is also similar to the grog British sailors drank aboard ship from the 1740s onwards. By 1795 the Royal Navy daily grog ration contained rum, water, ¾ ounce of lemon or lime juice, and 2 ounces of sugar. This was a common drink across the Caribbean, and as soon as ice became available this was included instead of the water.</p><p><br></p><p>Variations include the Banana Daiquiri, which is the same as a regular daiquiri, except half of a banana is placed in the drink.</p></p>', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '0084d13b-8c00-4ef5-93cc-36439f5290b4'), ('79', '71', 'en_us', null, null, null, null, '<p><p>A Bellini cocktail is a mixture of Prosecco sparkling wine and peach purée. Originating in Venice, it is one of Italy\'s most popular long drinks.</p><p><br></p><p>The Bellini was invented sometime between 1934 and 1948 by Giuseppe Cipriani, founder of Harry\'s Bar in Venice, Italy. Because of its unique pink color, which reminded Cipriani of the color of the toga of a saint in a painting by 15th-century Venetian artist Giovanni Bellini, he named the drink the Bellini.</p><p><br></p><p>The drink started as a seasonal specialty at Harry\'s Bar, a favorite haunt of Ernest Hemingway, Sinclair Lewis and Orson Welles. Later, it also became popular at the bar\'s New York counterpart. After an entrepreneurial Frenchman set up a business to ship fresh white peach pureé to both locations, it was a year-round favorite.</p><p><br></p><p>Today the Bellini is an IBA Official Cocktail, thus indicating its popularity and making it a well-known cocktail to many professional bartenders.</p><p><br></p><p>The Bellini consists of puréed white peaches and Prosecco, an Italian sparkling wine. Marinating fresh peaches in wine is an Italian tradition. The original recipe was made with a bit of raspberry or cherry juice to give the drink a pink glow. Due, in part, to the limited availability of both white peaches and Prosecco, several variations exist.</p><p><br></p><p>California produces a white peach that works well, and yellow peaches or peach nectar can be substituted, especially if peaches are out of season and the flavor would be very bland. Other fruits or even flavored liqueurs (peach schnapps, for example) are sometimes substituted for the peach puree.</p><p><br></p><p>The Cipriani family produces Bellini Base for the signature cocktail of the Harry\'s Bar restaurants.</p><p><br></p><p>Other sparkling wines are commonly used in place of Prosecco, though richly flavored French champagne does not pair well with the light, fruity flavor of the Bellini. For a non-alcoholic version, sparkling juice or seltzer is used in place of the champagne.</p></p>', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f203cd1c-4dd4-463b-abca-0cbac583e30b'), ('80', '72', 'en_us', null, null, null, null, '<p><p>The Black Russian is a cocktail of vodka and coffee liqueur. It contains either three parts vodka and two parts coffee liqueur, per the Kahlúa bottle\'s label, or five parts vodka to two parts coffee liqueur, per IBA specified ingredients. It is sometimes made with cola, in which case it is referred to as a Dirty Black Russian, as opposed to Clean when without it. Traditionally the drink is made by pouring the vodka over ice cubes or cracked ice in an old-fashioned glass, followed by the coffee liqueur.</p><p><br></p><p>This combination first appeared in 1949, and is ascribed to Gustave Tops, a Belgian barman, who created it at the Hotel Metropole in Brussels in honor of Perle Mesta, then U.S. ambassador to Luxembourg. The cocktail owes its name to the use of vodka, a stereotypical Russian spirit, and the blackness of the coffee liqueur.</p></p>', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'cee9c9c7-94ba-47ea-8152-92beee587c84'), ('81', '73', 'en_us', null, null, null, null, '<p><p>A Bloody Mary is a popular cocktail containing vodka, tomato juice, and usually other spices or flavorings such as Worcestershire sauce, Tabasco sauce, piri piri sauce, beef consomme or bouillon, horseradish, celery, olive, salt, black pepper, cayenne pepper, lemon juice, and celery salt. It has been called \"the world\'s most complex cocktail.\"</p><p><br></p><p>The Bloody Mary\'s origin is unclear. Fernand Petiot claimed to have invented the drink in 1921 while working at the New York Bar in Paris, which later became Harry\'s New York Bar, a frequent Paris hangout for Ernest Hemingway and other American expatriates. Two other claims have some plausibility. The first is that it was invented in the 1930s at New York’s 21 Club by a bartender named Henry Zbikiewicz, who was charged with mixing Bloody Marys. A second claim attributes its invention to the comedian George Jessel, who frequented the 21 Club. In 1939, Lucius Beebe printed in his gossip column This New York one of the earliest U.S. references to this drink, along with the original recipe: \"George Jessel’s newest pick-me-up which is receiving attention from the town’s paragraphers is called a Bloody Mary: half tomato juice, half vodka.\"</p><p><br></p><p>Fernand Petiot seemed to corroborate Jessel\'s claim when the bartender spoke to The New Yorker magazine in July 1964, saying:</p><p><br></p><p>\"I initiated the Bloody Mary of today,\" he told us. \"Jessel said he created it, but it was really nothing but vodka and tomato juice when I took it over. I cover the bottom of the shaker with four large dashes of salt, two dashes of black pepper, two dashes of cayenne pepper, and a layer of Worcestershire sauce; I then add a dash of lemon juice and some cracked ice, put in two ounces of vodka and two ounces of thick tomato juice, shake, strain, and pour. We serve a hundred to a hundred and fifty Bloody Marys a day here in the King Cole Room and in the other restaurants and the banquet rooms.\"\"</p><p><br></p><p>The name \"Bloody Mary\" is associated with a number of historical figures—particularly Queen Mary I of England (whose 16th-century persecution of Protestants earned her the nickname)—and fictional women from folklore. Some drink aficionados believe the inspiration for the name was Hollywood star Mary Pickford. Others trace the name to a waitress named Mary who worked at a Chicago bar called the Bucket of Blood.</p></p>', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '44930935-519e-4765-b978-aa184682beae'), ('82', '74', 'en_us', null, null, null, null, '<p><p>The Blue Hawaii is a tropical cocktail made of rum, pineapple juice, Curacao, sweet and sour mix, and sometimes vodka as well. It should not be confused with the similarly named Blue Hawaiian cocktail that contains creme of coconut instead of sweet and sour mix.</p><p><br></p><p>The Blue Hawaii was invented in 1957 by Harry Yee, legendary head bartender of the Hilton Hawaiian Village (formerly the Kaiser Hawaiian Village) in Waikiki, Hawaii when a sales representative of Dutch distiller Bols asked him to design a drink that featured their blue color of Curaçao liqueur. After experimenting with several variations he settled on a version somewhat different than the most popular version today, but with the signature blue color, pineapple wedge, and cocktail umbrella.</p><p><br></p><p>The name \"Blue Hawaii\" is related only indirectly to the 1961 Elvis Presley film of the same name, and apparently derives instead from the film\'s title song, a hit composed by Leo Robin for the 1937 Bing Crosby film Waikiki Wedding. It was Yee who named the drink which, along with the films and songs, many other tropical drinks he invented, and tiki bars such as Trader Vic, did much to popularize a faux Hawaiian tiki culture, both in Hawaii itself and on the Mainland. The era was immediately pre-statehood, a time when Hawaii was thought of by most Americans as playground for the rich. Tourism and development was already significant, but all centered around Waikiki and at only a small fraction of today\'s levels – about 100,000 visitors per year then, compared to seven million today.</p><p><br></p><p>A Blue Hawaii is typically served on the rocks. As with most tropical drinks, there are many variations in preparation, presentation, and ingredients. Hence, it is often blended with ice, margarita-like, to be served as a frozen cocktail. Many variations of glassware are used, the more whimsical the better: tiki mugs, cocktail glasses, parfait glasses, or carved out coconuts or pineapples.</p><p><br></p><p>The base liquor is usually light rum but vodka may be partially or completely substituted as a matter of taste. Similarly, a flavored rum or vodka such as Malibu Rum may eliminate the need for crème of coconut, or the coconut flavor may be omitted entirely (coconut milk, a very different product, should not be used). Even the pineapple juice is sometimes left out in favor of sour mix. The only constant, in fact, is the name and the blue Curaçao.</p><p><br></p><p>Because it is easy and inexpensive to make, it is often served as a punch. At its simplest, it is a bottle or two of plain or coconut-flavored light rum, a bottle of blue curacao, a can of pineapple juice, and a bag of ice, mixed together in a punchbowl. The Blue Hawaii is seasonal, often considered a summer or warm weather drink. Occasionally, because it contains yellow pineapple juice, the Blue Hawaii will have a green coloration instead.</p></p>', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'b8ebbd6b-457b-4514-becc-586a91604550'), ('83', '75', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '6a885f55-c768-4203-90e9-ecfea2768095'), ('84', '76', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '382831dc-2235-4504-8a05-4245d8eed11d'), ('85', '77', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '91bec4aa-174c-41ad-8374-508d2ba3f51d'), ('86', '78', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-03-19 22:54:49', '950db886-afc5-4b87-a22e-56915c62c455'), ('87', '79', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '71974c1b-96f4-48b0-bf29-d4c40fd73203'), ('88', '80', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '85d2b60f-ad2e-4d17-b0ef-37e2e03b4391'), ('89', '81', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '539fa74c-1e06-4b7d-b4ff-4b5bd0a6b9ec'), ('90', '82', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-03-19 22:54:01', '384322c5-4a08-431b-abdb-221d011be95d'), ('91', '83', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '5dac0be5-6262-4201-9801-a59f941c99e1'), ('92', '84', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '96a103a9-4dd8-4733-a14f-85040623a0fa'), ('93', '85', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'c5b1f9f2-8753-4a6c-9638-0f0618efeb89'), ('94', '86', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '9644d4ce-72b0-4ca8-85b1-c746c8e6288b'), ('95', '87', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '25e7c573-aaff-45ac-ae57-a3b3ed04f353'), ('96', '89', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'ab34803d-e768-4a15-93b8-f42cfdb1101b'), ('97', '90', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'c39eff71-321a-4d42-86d0-844605f17fe1'), ('98', '91', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'c416fb2a-22aa-43e2-ab38-e9562ec974d6'), ('99', '92', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'dce8d80d-13a3-466a-81e7-438350e2bd69'), ('100', '93', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '9823effb-942f-40d2-ad6a-1b9bdacc254b'), ('101', '94', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '4a8785b0-e9f7-4122-a190-17864d6f408a'), ('102', '95', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'dd00e963-9e6c-49f6-9362-efbab97fcdde'), ('103', '96', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f52d34ff-b994-4bec-bf6a-ad1d85d24766'), ('104', '97', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'a5552385-d960-4516-b52a-46c808498469'), ('105', '98', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '59943912-7dbf-4470-90e0-3851d92f1262'), ('106', '99', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '76e8f202-99fb-4fe3-a218-e3af4821751a'), ('107', '100', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'e698ce48-b40c-4098-96b1-3999e85eab36'), ('108', '101', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '48f13a0f-902f-45cd-b525-f3e050033a3a'), ('109', '102', 'en_us', null, null, null, null, '', null, '2013-02-23 00:15:05', '2013-02-24 04:22:10', 'dd85a7dd-4eb2-4a5a-8f76-289768883f92'), ('110', '103', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '9fcfda13-45de-4466-816c-f1aee900fb92'), ('111', '104', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '5f496ef8-c567-450a-bfb8-f7718d592106'), ('112', '105', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '79731b0f-f497-48d0-b75c-15b3e99bb977'), ('113', '106', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '6cfa771c-415c-426a-9b5f-0fd2be8fd962'), ('114', '107', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f5479b78-395b-4e0a-934c-f5846ac673b4'), ('115', '108', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '185e5a13-08aa-4ad7-a066-9fc19c29f1f5'), ('116', '109', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '0ee48fad-382a-4479-a6d3-da0dbe0d903f'), ('117', '110', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '317976ba-6940-4dfb-8b73-fabca673fc24'), ('118', '111', 'en_us', null, null, null, null, '<p>Salty Dogs are great.</p>', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '8b53a48f-c668-4942-89ad-03c0af4d237d'), ('119', '112', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'ba44f715-b66b-4404-8a30-1c919e2d3d80'), ('120', '113', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'dd213b29-4df7-429e-8c58-3e7df17baed5'), ('121', '114', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'b54ba365-1756-4e31-9d4b-403863699d1a'), ('122', '115', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'd1760a0b-df58-4b16-826d-c6d011bf8b12'), ('123', '116', 'en_us', null, null, null, null, '<p><p>The whiskey sour is a mixed drink containing whiskey (often Bourbon), lemon juice, sugar, and optionally, a dash of egg white to make it a Boston Sour. It is shaken and served either straight or over ice.</p><p><br></p><p>The traditional garnish is half an orange slice and a maraschino cherry.</p><p><br></p><p>A notable variant of the whiskey sour is the Ward 8, which often is based either in Bourbon or rye whiskey, with both lemon and orange juices, and grenadine syrup as the sweetener. The egg white sometimes employed in other whiskey sours is generally not included in this variation.</p><p><br></p><p>In 1962, the Universidad del Cuyo published a story which cited a Peruvian newspaper called El Comercio de Iquique as indicating that Eliott Stubb created the \"whisky sour\" in 1872. El Comercio de Iquique was published by Modesto Molina between 1874 and 1879. However, the oldest historical mention of a whisky sour prepared in the world comes from a newspaper published in Wisconsin in 1870.</p></p>', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'b88322fe-ed50-45f1-bade-9c63b2229630'), ('124', '117', 'en_us', null, null, null, null, '<p>Description</p>', null, '2013-02-23 00:15:05', '2013-02-23 00:15:05', '0e839912-8a55-4529-812d-324547457d49'), ('125', '122', 'en_us', null, null, null, null, '<p></p><p>The martini is a cocktail made with gin and vermouth, and garnished with an olive or a lemon twist. Over the years, the martini has become one of the best-known mixed alcoholic beverages. H. L. Mencken called the martini \"the only American invention as perfect as the sonnet\" and E. B. White called it \"the elixir of quietude\"</p><p>Pouring all ingredients into a mixing glass with ice cubes, the ingredients are mixed then strained and served \"straight up\" (without ice) in a chilled cocktail glass and garnished with either a green olive or a twist of lemon (a strip of the peel, usually squeezed or twisted to express volatile oils onto the surface of the drink).[citation needed]</p><p>A martini may also be made on the rocks, that is, with the ingredients poured over ice cubes and served in an old-fashioned glass.</p><p>Although there are many variations, in modern practice the standard martini is a mix of gin coupled with dry vermouth usually in a five-to-one ratio. Shaker mixing is common due to influences of popular culture, notably the fictional spy James Bond, who sometimes asked for his vodka martini to be \"shaken, not stirred\". However, stirring has a long history. Harry Craddock\'s Savoy Cocktail Book (1930) prescribes stirring for all its martini recipes. Somerset Maugham\'s opinion was that \"a Martini should always be stirred, not shaken, so that the molecules lie sensuously on top of one another\".</p><p>Noël Coward suggested that a perfect martini should be made by \"filling a glass with gin then waving it in the general direction of Italy\" (which along with France is a major producer of vermouth). Luis Buñuel considered it enough to hold up a glass of gin next to a bottle of vermouth and let a beam of sunlight pass through. Winston Churchill was said to whisper the word \'Vermouth\' to a freshly poured glass of gin. Dorothy Parker expressed her opinion: \"I like to have a martini/two at the very most./Three, I\'m under the table./Four, I\'m under my host\".</p><p>The martini was originally made with sweet vermouth. A person who wanted a \"dry martini\" asked for one made with white vermouth. Until World War II the standard proportion was 1 part vermouth to 3 to 3 ½ parts gin. These days the dryness of a martini refers to the amount of vermouth used in the drink, with a very dry martini having little or none. Conversely, a wet martini has a significant amount of vermouth added.</p><p>A dirty martini contains a splash of olive brine or olive juice.</p><p><span style=\"font-family: Arial, Helvetica, Verdana, Tahoma, sans-serif; font-size: 15px; line-height: 1.45em;\">If you prefer cocktail onion (on skewer) instead of olives in your martini, you would order a Gibson. Other people bypass the gin completely and use vodka instead, creating a kangaroo cocktail, or \"vodka martini\".</span></p><p>The exact origin of the martini is unclear. Numerous cocktails with names and ingredients similar to the modern-day martini were first seen in bartending guides of the late 19th century. For example, in the 1888 Bartender\'s Manual there was a recipe for a drink that consisted of half a wine glass of Old Tom Gin and a half a wine glass of vermouth. In 1863, an Italian vermouth maker started marketing their product under the brand name of Martini. This product is still available today, although it is now better known as Martini & Rossi.</p><p><span style=\"font-family: Arial, Helvetica, Verdana, Tahoma, sans-serif; font-size: 15px; line-height: 1.45em;\">Another popular theory suggests it evolved from a cocktail called the Martinez served at the Occidental Hotel in San Francisco sometime in the early 1860s, which people frequented before taking an evening ferry to the nearby town of Martinez. Alternatively, the people of Martinez say the drink was first created by a bartender in their town. Another theory links the first dry martini to the name of a bartender who concocted the drink at the Knickerbocker Hotel in New York City in 1911 or 1912. The self-styled Court of Historical Review in San Francisco ruled that the martini was invented in San Francisco. A court in Martinez, California, recently overturned this decision. (These \"courts\" have neither legal nor academic authority and are primarily for entertainment.)</span></p><p>But it was Prohibition and the relative ease of illegal gin manufacture that led to the martini\'s rise as the predominant cocktail of the mid 20th century in the United States. With the repeal of Prohibition, and the ready availability of quality gin, the drink became progressively dryer. In the 1970s and 80s, the martini came to be seen as old-fashioned and was replaced by more intricate cocktails and wine spritzers, but the mid-1990s saw a resurgence in the drink and an explosion of new versions.</p><p>Some newer drinks include the word \"martini\" or the suffix \"-tini\" in the name (e.g., appletini, peach martini, chocolate martini, espresso martini). These are named after the martini cocktail glass they use and generally contain vodka like the kangaroo cocktail, but share little else with the drink.</p><p></p>\r\n', null, '2013-02-23 00:15:05', '2013-03-19 22:56:22', '8e1c7c89-d723-4d2f-86f5-f9e9a7b5e202'), ('126', '123', 'en_us', null, null, null, null, '<p><p>Traditionally, a mojito is a cocktail that consists of five ingredients: white rum, sugar (traditionally sugar cane juice), lime juice, sparkling water and mint. The original Cuban recipe uses spearmint or yerba buena, a mint variety very popular on the island. Its combination of sweetness, refreshing citrus and mint flavors is intended to complement the potent kick of the rum, and have made this clear highball a popular summer drink. The cocktail has a relatively low alcohol content (about 10 percent alcohol by volume).</p><p><br></p><p>When preparing a mojito, lime juice is added to sugar (or syrup) and mint leaves. The mixture is then gently mashed with a muddler. The mint leaves should only be bruised to release the essential oils and should not be shredded. Then rum is added and the mixture is briefly stirred to dissolve the sugar and to lift the mint leaves up from the bottom for better presentation. Finally, the drink is topped with whole ice cubes and sparkling soda water. Mint leaves and lime wedges are used to garnish the glass.</p><p><br></p><p>The mojito is one of the most famous rum-based highballs. There are several versions of the mojito.</p><p><br></p><p>Cuba is the birthplace of the Mojito, although the exact origin of this classic cocktail is the subject of debate. One story traces the Mojito to a similar 19th century drink known as \"El Draque\", after Francis Drake. It was made initially with tafia/aguardiente, a primitive predecessor of rum, but rum was used as soon as it became widely available to the British (ca. 1650). Mint, lime and sugar were also helpful in hiding the harsh taste of this spirit. While this drink was not called a Mojito at this time, it was still the original combination of these ingredients.</p><p><br></p><p>Some historians contend that African slaves who worked in the Cuban sugar cane fields during the 19th century were instrumental in the cocktail\'s origin. Guarapo, the sugar cane juice often used in Mojitos, was a popular drink amongst the slaves who helped coin the name of the sweet nectar.</p><p><br></p><p>There are several theories behind the origin of the name Mojito; one such theory holds that name relates to mojo, a Cuban seasoning made from lime and used to flavour dishes. Another theory is that the name Mojito is simply a derivative of mojadito (Spanish for \"a little wet\") or simply the diminutive of mojado (\"wet\"). Due to the vast influence of immigration from the Canary Islands, the term probably came from the mojo creole marinades adapted in Cuba using citrus vs traditional Isleno types. In the US Marine Corps there is a drink called mojo derived from mixing any liquor you have and fresh fruits, oranges, lemons, etc. and is called \"MOJO\".</p><p><br></p><p>The Mojito was a favorite drink of author Ernest Hemingway. Ernest Hemingway made the bar called La Bodeguita del Medio famous as he became one of its regulars and he wrote \"My mojito in La Bodeguita, My daiquiri in El Floridita.\" This expression in English can still be read on the wall of the bar today, in his handwriting.</p></p>', null, '2013-02-23 00:15:05', '2013-03-19 22:59:51', '7e3289bf-87d7-4ef1-8c1c-605086df7ae8'), ('127', '124', 'en_us', null, null, null, null, '<p><p>To “splice” something means to join or unite it with something else.</p><p>And the Midori Splice does exactly that, achieving a perfectly balanced union of coconut-flavored rum, pineapple juice and cream.</p><p>It takes the same flavors from the Midori Pina Colada and rounds them into a slightly milder finish.</p><p>In flair bartending circles, the same drink is known as an “Alien Secretion.”</p><p>Made in a blender and served in a beer mug, the Midori Splice can also be great for a party trick.</p></p>', null, '2013-02-23 00:15:05', '2013-03-19 23:03:37', 'a0032ad8-32c9-4853-a7a6-cb0ec4e0da6a'), ('128', '125', 'en_us', null, null, null, null, '<p>Combine the pineapple juice, blue curacao, vodka, rum, vermouth and lime wedge in a shaker. Shake for 1 minute. Serve cold. Repeat for additional servings.<br></p>\r\n', null, '2013-02-23 00:15:05', '2013-03-19 22:57:58', '8e6ea1fb-41dd-46eb-b099-28683b08d83e'), ('129', '141', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', '6c1d56e8-4993-429e-b4c4-7d6c28077c0a'), ('130', '135', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', '343add3e-1e20-4da2-8f7e-8d9fe4494094'), ('131', '132', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', '4d06579a-b3aa-439e-9eac-90efc80eeea6'), ('132', '134', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', '2f29db35-d832-471e-ae9c-d6133f2d2d41'), ('133', '139', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', '7a71dc64-438d-4c62-bcfd-14b044a64a10'), ('134', '138', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'd348fba0-3ab1-4eb5-9422-4b7ef0972fe7'), ('135', '137', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', '02b5139a-f994-45b6-af92-c8f897818571'), ('136', '140', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', '0ef844cc-7e3e-4827-97e3-8885415564f2'), ('137', '136', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'c4ae1d04-fc53-4f06-b5a5-1e608e51faeb'), ('138', '142', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', '9a598188-830d-4840-81f0-9e2a548d3d06'), ('139', '131', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', '9744a0be-4baa-43d3-86b9-230554d51a0a'), ('140', '133', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', '78101664-da44-45ea-9cb1-2a8809c6b888'), ('141', '130', 'en_us', null, null, null, null, null, null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'deb1a862-b82f-41bb-b4ce-865b870bf778'), ('142', '157', 'en_us', null, null, null, null, null, 'On the Rocks is a demo site built with Craft.', '2013-02-23 00:15:06', '2013-03-19 23:11:21', '52556ab5-8a69-4f9d-a940-a96ae976127f'), ('144', '184', 'en_us', null, null, null, null, '', null, '2013-03-19 22:57:24', '2013-03-19 23:28:54', '5004f5f3-4343-48a4-88ec-bc3609098927');
COMMIT;

-- ----------------------------
--  Table structure for `craft_elements`
-- ----------------------------
DROP TABLE IF EXISTS `craft_elements`;
CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_idx` (`archived`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_elements`
-- ----------------------------
BEGIN;
INSERT INTO `craft_elements` VALUES ('1', 'GlobalSet', '1', '0', '2013-02-23 00:15:02', '2013-03-08 20:47:42', '99d92cd6-4a9b-44e8-b487-7c1cbcfc3caa'), ('3', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '2397673a-3389-42b3-ae8c-a22e7be9ba00'), ('4', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '7b921aa9-dc5e-4f2b-8b0d-5d86377436f7'), ('5', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '8ea5f50a-0446-4678-83e8-8a7c0344371c'), ('6', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '0a680d11-8b6e-4168-874e-352b28826cc1'), ('7', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-03-19 23:01:14', '22b9f104-0d86-4b14-9550-59f5d23ddfa9'), ('8', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'c51c1b8d-f32c-4ae2-a56f-b7b15dc5d67c'), ('9', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-03-19 22:52:38', 'a5b3ded8-fe9d-487e-a679-1042020ef854'), ('10', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '67040bcb-6b78-44f5-89ab-3f06b8d17be9'), ('11', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '85cd97f8-4977-4c00-a818-ab0c1ddae173'), ('12', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'fcf95f40-1070-4c31-a595-ba475cc8121d'), ('13', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'a913dc4e-2795-4cb8-83d0-cbd56191c0ac'), ('14', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '384fefc2-093a-4602-8156-1afa8e42690f'), ('15', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'e914a399-5c0f-4f00-8381-6fa22fe88cf2'), ('16', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '3a2aaa6e-5433-468f-9b45-9e29b9af9462'), ('17', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'c0f25939-19e2-4b24-ba51-c76a155cc72b'), ('18', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '2a42aa8c-d885-4943-ad00-7383241c7a07'), ('19', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '873a3d75-d7d7-4cf8-a706-bc52f90b54bc'), ('20', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '75458d17-11f3-4c4f-9311-a7c30e61eed2'), ('21', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'b7f814b8-34fc-4f6e-ae59-2e94c3c77e17'), ('22', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '1f46638e-ef90-4e95-a216-9fbe0c0e6f68'), ('23', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-03-19 23:02:47', 'f57e91e3-6a10-402e-95e8-ae08e3ec5b8b'), ('24', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '8b018e0e-2e1a-41ba-bd93-ae2cca3e8204'), ('25', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '6b7993b8-998d-4999-989a-f527dd239b0a'), ('26', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '397f88b0-15ff-4a5a-9d88-f92d2eebefee'), ('27', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'd4a93dae-8131-4e1b-b1dd-afe0bf7343a5'), ('28', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '4356afa1-eaaf-4279-af20-c7f262968b83'), ('29', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'f8a2ce40-d1d7-4c06-b981-b46d1f6ee354'), ('30', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '782921ca-b2b2-4b2f-852b-3999abcdbbb7'), ('31', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '9897b5d9-e948-4d0b-91e7-a5403f0c26f2'), ('32', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '145d5d12-e1c7-4eda-8b8c-02a240752458'), ('33', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '536dd42e-4210-494a-9143-b75e2e9516d5'), ('34', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '9a001c25-2c4a-43d2-9e20-d54a74d2c24a'), ('35', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '6361bdea-4b6f-4349-a791-107551a1fa81'), ('36', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '11855460-009e-4dd3-88c2-f1ece45b1e44'), ('37', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-03-19 23:00:14', 'ad7cc31f-068c-419e-a1e8-c1109cb7b19c'), ('38', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '0a7c2b46-00b9-422b-9dbe-9c22261dfce6'), ('39', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-03-19 23:00:29', '47943380-2a33-451f-86eb-662e24e6a99e'), ('40', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '22b045f2-1d75-4457-8350-d5a464e155f7'), ('41', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '11b4494e-4657-488c-b56a-b3b2993f6c23'), ('42', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '297633b3-26ff-4708-9380-9070889b8973'), ('43', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '9f6aefb7-bd51-4681-a5cc-7707219fc079'), ('44', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '4de7d0a2-66de-41dc-af1b-6fc02627432b'), ('45', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '26782c8f-ba5d-4cbc-ac0e-5c6a13cdaee1'), ('46', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '6441d73c-cb05-4ad3-a1dc-f2152d97be23'), ('47', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '71cbd794-9515-4f06-9091-256e89073e9f'), ('48', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '6728b9f7-7a48-4fbe-948e-b1dbdcab4be2'), ('49', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '4732f229-3f65-40e8-b829-c26fe3084d07'), ('50', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'a17949dc-2dbf-4fe4-bf4b-65b440c715a1'), ('51', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '13bc760e-5a23-4f17-bd12-6ec31ec97c9c'), ('52', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '2763ca47-72e1-48f3-b8d5-2b6c779547d9'), ('53', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '376b3f61-f630-4a6c-94d7-2ae4403be82f'), ('54', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'f88f4a34-08e1-45bf-9030-a644fa059f1c'), ('55', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '0d12f6b8-fdfb-4524-a385-56b56bddbde2'), ('56', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'c8d4158e-dee4-4162-8ed2-c395079806e5'), ('57', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'f35f9a9d-b9ee-441f-bed7-fdd73f849fc7'), ('58', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '78132129-e7e7-43cb-b4eb-9270e58bd711'), ('59', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '5287a912-9de2-4c00-ab2d-bc0bf50f7909'), ('60', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '185e9547-944c-4787-abb5-37a161b964a6'), ('61', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'ef15e037-a7a1-458e-b80a-391375c940b2'), ('62', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'f03e71c9-0e73-4eef-ad50-286207eefa0f'), ('63', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'e513c928-8bbe-4250-b536-20f583ee2e48'), ('64', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'be5c3e20-00a3-4b89-a03a-3e3d12aca331'), ('65', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'a1c4a9f8-798d-4aea-ab82-6ef305754834'), ('66', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '8480d35e-b2a5-4c16-aef9-324a61484366'), ('67', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'ae1be1d9-d8d8-44a4-95e4-cc1a81e221c8'), ('68', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '6f6b8bb3-248c-4016-a561-0c083708219f'), ('69', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '38a3813c-b5eb-4ce2-bc00-9d5a0a544e96'), ('70', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '591233dc-75d6-4d6f-a6a9-cbbf91f1cdee'), ('71', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '74f13b88-c926-4e8d-9152-4b3a0431f006'), ('72', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '1a2f6119-03c9-4636-8efe-d2d62accf269'), ('73', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'e3a3be00-e04e-46d2-99d2-c50ab03911bd'), ('74', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '5ff687bd-95eb-4682-b4ca-924d9837754d'), ('75', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '8803d5dd-9fbd-47c1-b181-807a330e8f15'), ('76', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'ec995e11-6284-4e07-a79a-9866117252d5'), ('77', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'dfb29504-470f-4709-96ae-12e05cb57d48'), ('78', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-03-19 22:54:49', 'c6e4b2c2-a95e-4189-b1d7-319595b492f7'), ('79', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '1d3d261f-8caa-4d55-a3ee-37aa1dfd3c81'), ('80', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', 'ffa03961-5648-4ebe-9c5d-8634bb202e53'), ('81', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-02-23 00:15:03', '58e90d05-269a-4c74-b868-8b731c41ac52'), ('82', 'Entry', '1', '0', '2013-02-23 00:15:03', '2013-03-19 22:54:01', 'a20793a6-4c4d-4d58-8a8b-5e8a5a197801'), ('83', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '5ed97805-bee0-4c1e-ba26-9661bc9766a3'), ('84', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'a75c0a95-f70b-411c-a13d-f9ff27287bdb'), ('85', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'ae44df3c-45ef-44f5-a050-a44398e98bfc'), ('86', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '4f438a72-fce2-47ba-a537-0b16376f48f5'), ('87', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'f5b23436-dc9a-498e-b605-584509c8748e'), ('88', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '5547a270-81bf-4628-9534-3c77895f48ea'), ('89', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '2c1c76c5-a413-4df1-8d2d-5cffc66e0963'), ('90', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '1d9f5c90-2e44-41ae-9bc2-b9ec59ec0069'), ('91', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'ad2415fa-7193-4c7e-8fc9-0b6b0f14e766'), ('92', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'e18c466d-3266-4659-9230-77cf97238125'), ('93', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '26d1550b-f1a5-46d8-abc6-59c23541d004'), ('94', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'a6fb9c1b-aa1c-4cab-a539-4027fa9c6e2e'), ('95', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '4f1d032b-ba06-4f6c-b8d4-498e880fd3f6'), ('96', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'efe6295d-9a59-4f82-8f9b-cb12f40ae897'), ('97', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'fd1d6753-0657-4d9a-81e3-33dda38da799'), ('98', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '60067934-be5f-477d-88bd-e150cc80c86a'), ('99', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '543948d6-ef8e-4371-8506-ee5f60c68744'), ('100', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'fee3c6c8-271c-4fc3-bfab-bc12a18dd5d5'), ('101', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '0985b4a7-b1e7-4283-a254-0757d5694415'), ('102', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-24 04:22:10', '46525e0f-75a7-48f9-9c8b-b88bc81230f4'), ('103', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '12fea100-2ada-4a61-ab7b-914916e7a256'), ('104', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '2bdb11f9-8705-48e4-98bc-79cd23e6196b'), ('105', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '15273fd2-a98d-4d49-921a-ede7448dccb4'), ('106', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '4b2798b6-4a48-4d76-b4c2-97a3cff4a6ac'), ('107', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '89fb739e-df8f-4b0e-9a50-6d4b2ea2410b'), ('108', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'c63d9ee3-e2c5-4a88-a0b6-d6eae9dda049'), ('109', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '6a88467b-c5d2-438c-a0bc-685e0cec052f'), ('110', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '064cd1d5-889d-41d5-99b0-9a622c89ee17'), ('111', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'b37ec777-62c2-433b-89ad-85bd85f195e2'), ('112', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '6bc72a50-d0dc-49db-8300-a4f3b290679d'), ('113', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'a789cb5d-57d8-472a-a844-2dad17fe3ba8'), ('114', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '6e708b1f-3272-4b06-9ec5-ca7b7c22f582'), ('115', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '9872581d-7585-4c19-9e41-3dd9a6169897'), ('116', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', '1b986193-da62-4d20-85d4-d8c4a4ec676a'), ('117', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-02-23 00:15:04', 'a38189b8-0b75-4ee6-87cf-506f965f427e'), ('118', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-03-19 22:28:03', '3a167fea-2961-4d12-b94a-10d1237bc3ad'), ('119', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-03-19 23:01:33', '477e7d1e-6aff-449d-a7f9-98125b146434'), ('120', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-03-19 23:02:33', 'c0baaef6-e8de-4977-be5c-290775d9ac82'), ('121', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-03-19 22:29:37', '2dc29149-27cc-40ea-bb94-1193480884a8'), ('122', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-03-19 22:56:22', 'c30eefc4-14de-4c92-aa38-97c4e45a9cbb'), ('123', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-03-19 22:59:51', '6bd454ab-d7d9-4c5b-839c-d9b9d6ad7119'), ('124', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-03-19 23:03:37', '36d1755c-5be8-4c14-a9e3-e5566bfb11e1'), ('125', 'Entry', '1', '0', '2013-02-23 00:15:04', '2013-03-19 22:57:58', '59ff4237-89dc-4318-a0f8-8ae6bfd85cdb'), ('130', 'User', '1', '0', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'a0f598bb-bbb3-47f9-81f5-82e184ab1a4e'), ('131', 'User', '1', '0', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '27e85c3b-beed-46f9-95ba-9bc574b26716'), ('132', 'User', '1', '0', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '03990684-f662-4480-9ec5-ea0b3a495b12'), ('133', 'User', '1', '0', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'df5d01dd-a85c-4c00-a37f-a83245e3facc'), ('134', 'User', '1', '0', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'a016242f-4c3b-4797-87bf-f7d1a1be0ad5'), ('135', 'User', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '9a417b1d-d821-4e22-a8bc-699a30e0b701'), ('136', 'User', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '5feb6006-5c58-42c8-b06c-d845e47fb9e6'), ('137', 'User', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '03b79e39-aee6-41c7-92e8-60f57b3f8b79'), ('138', 'User', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '560a69a3-8a1d-46c5-bd94-cfa1d5fdaa07'), ('139', 'User', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'c5022abc-9fe0-4567-b67f-9a3263f953a9'), ('140', 'User', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '9400ff1b-3083-4134-8505-d2b806081e38'), ('141', 'User', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '18f0bbe3-0425-479e-bdbc-00d9c1d8326a'), ('142', 'User', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '2bcca3f4-479a-427a-bbc5-6c99739c1460'), ('143', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '46910dab-dd40-4188-94fc-20a4f1a3edf8'), ('144', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'fbeb7c49-63a6-441a-85a1-50eb21f61567'), ('145', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '482e071f-b8dc-4f1b-89c5-59623d70bf8d'), ('146', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '472ba931-27ea-4e03-a236-ab67130a48dc'), ('147', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '26ec0d83-9851-44a2-b8b0-d3a4724cf678'), ('148', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'a6198f93-473c-44c0-a325-d7e06feb51a9'), ('149', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '79c342af-5517-4953-bd66-cfd030675ac4'), ('150', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '3e6d9c3b-dd59-4672-81e2-e6ad2af42d45'), ('151', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '6d2936c2-70f7-4cb1-aee8-8b72eaae4412'), ('152', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '9fb2b36c-4986-455f-aca1-21890c91b6e7'), ('153', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'cdc50ff2-7d1f-4580-87ef-8b041ddb9774'), ('154', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'bef1b45a-6f28-47dc-9f43-bd8cebf61b01'), ('155', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'b3d1f70b-fcc3-4c0f-8abb-f12f1981785e'), ('156', 'Asset', '1', '0', '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'b12590ce-3675-44cb-8915-7da39ff7714c'), ('157', 'GlobalSet', '1', '0', '2013-02-23 00:15:06', '2013-03-08 20:47:42', 'd10b8f6f-36b4-410c-995a-701a0b00ee30'), ('159', 'Asset', '1', '0', '2013-03-19 22:19:37', '2013-03-19 22:19:37', '6b52ba52-1bcd-4329-982f-6ccefb761e46'), ('160', 'Asset', '1', '0', '2013-03-19 22:19:38', '2013-03-19 22:19:38', 'd78982de-c01a-43d3-9f06-8a4e4d0bf25b'), ('161', 'Asset', '1', '0', '2013-03-19 22:19:38', '2013-03-19 22:19:38', '7976a9ed-71ae-4001-bcaa-0af99f5ff3a4'), ('162', 'Asset', '1', '0', '2013-03-19 22:19:38', '2013-03-19 22:19:38', '72ebfd1b-c05a-4289-96d4-86683ad6813b'), ('163', 'Asset', '1', '0', '2013-03-19 22:19:38', '2013-03-19 22:19:38', '57063e91-9601-43b8-bb31-e423f6e7aff3'), ('164', 'Asset', '1', '0', '2013-03-19 22:19:38', '2013-03-19 22:19:38', 'fac38bb5-81c9-4448-b480-9a002926211d'), ('165', 'Asset', '1', '0', '2013-03-19 22:19:38', '2013-03-19 22:19:38', '7894f736-8ce6-4d94-8b72-cbb7ee88d407'), ('166', 'Asset', '1', '0', '2013-03-19 22:19:38', '2013-03-19 22:19:38', '39943e2b-6760-49f5-abcc-60b92c0c61e6'), ('167', 'Asset', '1', '0', '2013-03-19 22:19:38', '2013-03-19 22:19:38', '67c474f2-7dfd-47fc-aea8-8166fcb58688'), ('168', 'Asset', '1', '0', '2013-03-19 22:19:38', '2013-03-19 22:19:38', 'ee18869f-b09b-44e8-9500-11d29fc58354'), ('169', 'Asset', '1', '0', '2013-03-19 22:19:39', '2013-03-19 22:19:39', '82230280-cbb0-4303-accd-3fcb93ffb634'), ('170', 'Asset', '1', '0', '2013-03-19 22:19:39', '2013-03-19 22:19:39', '00c47bc4-0f3a-41a4-a030-84537a973d6e'), ('171', 'Asset', '1', '0', '2013-03-19 22:19:39', '2013-03-19 22:19:39', '7631e23d-a169-48ee-9ceb-a7bc4164cbc3'), ('172', 'Asset', '1', '0', '2013-03-19 22:19:39', '2013-03-19 22:19:39', '3db70e80-e0bf-415c-9834-a060f8af300e'), ('173', 'Asset', '1', '0', '2013-03-19 22:19:39', '2013-03-19 22:19:39', '3798eced-c371-4896-9401-8c2ac8a0a887'), ('174', 'Asset', '1', '0', '2013-03-19 22:19:39', '2013-03-19 22:19:39', '3424875b-7b0b-4780-aeaf-fbec4d473b47'), ('175', 'Asset', '1', '0', '2013-03-19 22:19:39', '2013-03-19 22:19:39', '7bd921c9-f955-4ae2-9ff7-59e72ef2ef9b'), ('176', 'Asset', '1', '0', '2013-03-19 22:19:39', '2013-03-19 22:19:39', '19dd2ec4-36ee-48c6-a1a7-28801b448c42'), ('177', 'Asset', '1', '0', '2013-03-19 22:19:39', '2013-03-19 22:19:39', '3868ff28-e3cb-4f3c-b367-36333c2b3906'), ('178', 'Asset', '1', '0', '2013-03-19 22:19:39', '2013-03-19 22:19:39', '65e4be34-cb8e-41ea-809b-24655a159b56'), ('179', 'Asset', '1', '0', '2013-03-19 22:19:40', '2013-03-19 22:19:40', '277e22ff-152d-45e3-9141-0c2b57ca8539'), ('180', 'Asset', '1', '0', '2013-03-19 22:19:40', '2013-03-19 22:19:40', 'e55cfda1-355e-4036-8462-bc27c610fffb'), ('181', 'Asset', '1', '0', '2013-03-19 22:19:40', '2013-03-19 22:19:40', '6097c2b0-dc6d-4af4-9ad1-25011336c41a'), ('182', 'Asset', '1', '0', '2013-03-19 22:19:40', '2013-03-19 22:19:40', 'c33d68d3-9dbe-433d-9bb0-3ef5d06b0ea1'), ('183', 'Asset', '1', '0', '2013-03-19 22:19:40', '2013-03-19 22:19:40', '4c3aca86-8f37-4e4e-b470-67953c6414bd'), ('184', 'Entry', '1', '0', '2013-03-19 22:57:24', '2013-03-19 23:28:54', 'b31fca49-b90a-4e29-878f-33128bd98477');
COMMIT;

-- ----------------------------
--  Table structure for `craft_elements_i18n`
-- ----------------------------
DROP TABLE IF EXISTS `craft_elements_i18n`;
CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  KEY `craft_elements_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_elements_i18n`
-- ----------------------------
BEGIN;
INSERT INTO `craft_elements_i18n` VALUES ('1', '1', 'en_us', '', '2013-02-23 00:15:02', '2013-02-23 00:15:02', 'a7da68fd-1caf-4341-85b5-2d3b80387468'), ('3', '3', 'en_us', 'ingredients/amaretto', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '925a1bfa-89c0-4b64-8eca-ec044243ab41'), ('4', '4', 'en_us', 'ingredients/apricot-brandy', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '2bd1aa7d-c599-4e3d-b128-537c13df099f'), ('5', '5', 'en_us', 'ingredients/bailey-s-irish-cream', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '2144a53c-0efa-457c-a6ca-83ae5263eae9'), ('6', '6', 'en_us', 'ingredients/bourbon', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'ad65be88-8cdb-441f-bc7e-18c2a64493f7'), ('7', '7', 'en_us', 'ingredients/whiskey', '2013-02-23 00:15:05', '2013-03-19 23:01:14', '56f31818-3c58-48c5-9b1c-3321f6d5ed51'), ('8', '8', 'en_us', 'ingredients/cachaa', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'b36aeb80-eb8f-4780-9c11-48bbf72c0a2a'), ('9', '9', 'en_us', 'ingredients/champagne', '2013-02-23 00:15:05', '2013-03-19 22:52:38', '83b14c6e-bd29-49ad-9a23-3ec65b920156'), ('10', '10', 'en_us', 'ingredients/apple-schnapps', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f7c8f05b-26dc-42cb-810e-ab7b2b7660ad'), ('11', '11', 'en_us', 'ingredients/white-rum', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'fb69b72d-7b1d-426d-9825-c6793272547a'), ('12', '12', 'en_us', 'ingredients/blue-curaao', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'fae90504-dd85-4ce1-abf9-1e9fb481f4ad'), ('13', '13', 'en_us', 'ingredients/brandy', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '04186689-b4b1-45d3-8de8-f59852ef4198'), ('14', '14', 'en_us', 'ingredients/campari', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '511bbb15-fcf9-4bc8-aa68-9c38fb506608'), ('15', '15', 'en_us', 'ingredients/cherry-brandy', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '70ebc994-e0bd-4dde-95f0-4efccf10b431'), ('16', '16', 'en_us', 'ingredients/cognac', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'dcce8b42-6669-40b7-8cd6-a684962479b0'), ('17', '17', 'en_us', 'ingredients/cointreau', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'e1694b71-14eb-47f5-b3fa-40c3eadd4b03'), ('18', '18', 'en_us', 'ingredients/crme-de-cacao', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '439c46ee-a276-4e8c-a350-97f80f67c334'), ('19', '19', 'en_us', 'ingredients/crme-de-cassis', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '09b6f449-5ddd-439e-a072-4c41e7fa788b'), ('20', '20', 'en_us', 'ingredients/crme-de-yvette', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f4b6e330-2cc4-4a1d-8441-0356f99656eb'), ('21', '21', 'en_us', 'ingredients/demerara-rum', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f604e50f-d7e2-491a-b743-125e42d39429'), ('22', '22', 'en_us', 'ingredients/drambuie', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '9d364b60-5e56-430e-bc81-55e6dffa74c6'), ('23', '23', 'en_us', 'ingredients/white-wine', '2013-02-23 00:15:05', '2013-03-19 23:02:47', '0b157fd0-b430-4443-bd17-82b45ae68b52'), ('24', '24', 'en_us', 'ingredients/dry-vermouth', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'dae92a04-1017-4e20-ac56-638c697e780a'), ('25', '25', 'en_us', 'ingredients/galliano-liqueur', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'ea426a4d-1add-4e97-951f-4992d24ea5e3'), ('26', '26', 'en_us', 'ingredients/gin', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '27f9dfd6-10bd-48cc-be90-b4f51a2316b0'), ('27', '27', 'en_us', 'ingredients/grand-marnier', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'c34163f0-e8fb-4e55-b869-bf40c7622955'), ('28', '28', 'en_us', 'ingredients/green-chartreuse', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '29c8049d-de3a-4f1c-8da8-4d35ba9721e7'), ('29', '29', 'en_us', 'ingredients/sweet-vermouth', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '79dd4b2f-fb5a-4fa1-97c0-2875b074a6b3'), ('30', '30', 'en_us', 'ingredients/kahla', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '55e1f54b-161d-47b7-8374-9134d3be3f30'), ('31', '31', 'en_us', 'ingredients/kirsch', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '8774c439-d19a-4bcd-943a-72476b11065a'), ('32', '32', 'en_us', 'ingredients/midori', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'fbfcd2fc-f19a-40fd-9009-22823db16760'), ('33', '33', 'en_us', 'ingredients/peach-brandy', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'cd4bc9a2-521f-4fa4-b57f-75d2773de10e'), ('34', '34', 'en_us', 'ingredients/port', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '64fe7b4a-c195-4110-8cc2-085ea6d7e8b2'), ('35', '35', 'en_us', 'ingredients/scotch', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'e989e94f-1e4c-4d7d-b0f3-1d22d25f1fce'), ('36', '36', 'en_us', 'ingredients/sloe-gin', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '77bd59e7-c27f-483a-bbc9-31abf49b9ace'), ('37', '37', 'en_us', 'ingredients/tequila', '2013-02-23 00:15:05', '2013-03-19 23:00:14', '91a5b8ac-29d0-4440-8924-815f3e9a87c5'), ('38', '38', 'en_us', 'ingredients/triple-sec', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '03f2cdf0-a605-4dc9-a760-52f093c94e08'), ('39', '39', 'en_us', 'ingredients/vodka', '2013-02-23 00:15:05', '2013-03-19 23:00:29', 'a1bdbd60-dd69-47d7-8bf7-a6d5c9c7787c'), ('40', '40', 'en_us', 'ingredients/vodka-citron', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '7f5626df-c112-49f8-898f-c34a2a350476'), ('41', '41', 'en_us', 'ingredients/yellow-chartreuse', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '4cd6da25-6d31-4b40-a1cc-4d34ec7be519'), ('42', '42', 'en_us', 'ingredients/coconut-cream', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'bf9db3d7-6918-4aeb-b2f2-c1159b810ca5'), ('43', '43', 'en_us', 'ingredients/coke', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '82e1f607-2d8e-43d6-8b8a-8a904126fcc5'), ('44', '44', 'en_us', 'ingredients/cranberry-juice', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '558bbbbf-aff0-40d9-94d4-44634345f7ba'), ('45', '45', 'en_us', 'ingredients/egg-yolk', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '3f1b3fc5-b73b-46d8-8069-8760364ff445'), ('46', '46', 'en_us', 'ingredients/cream', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '95d9d327-0506-4635-b20a-a7a1c846f116'), ('47', '47', 'en_us', 'ingredients/milk', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'e5953181-5d7d-4936-ad1a-3194319f8a62'), ('48', '48', 'en_us', 'ingredients/peach-puree', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'a023423f-40c8-43ef-9d3d-ac5775a8c943'), ('49', '49', 'en_us', 'ingredients/ginger-ale', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '14baff7f-2aa4-45ed-8eae-0ffe2da3bbe5'), ('50', '50', 'en_us', 'ingredients/gomme-syrup', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f42002b6-5d07-4480-9830-6de7be3e1428'), ('51', '51', 'en_us', 'ingredients/grapefruit', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'b0a50363-ac52-4805-b3c7-236d1b59c669'), ('52', '52', 'en_us', 'ingredients/grenadine', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '3ba2afe7-4602-40f0-a36a-57c6fa09601f'), ('53', '53', 'en_us', 'ingredients/iced-tea', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '08bd8aec-f2f4-4ad4-afa1-850559847f2f'), ('54', '54', 'en_us', 'ingredients/lemon-juice', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'cb11fa92-e6c6-4454-bb89-e35496e6f9b9'), ('55', '55', 'en_us', 'ingredients/lime-juice', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'afebf28a-5dce-4223-834c-272a9e560c22'), ('56', '56', 'en_us', 'ingredients/orange-juice', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '03ae29fe-5949-4fb6-882a-40f32d2e9734'), ('57', '57', 'en_us', 'ingredients/passion-fruit-juice', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'db95638a-47b3-4abd-8da2-792591926c75'), ('58', '58', 'en_us', 'ingredients/pineapple-juice', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'ca40faf9-5c23-4c17-9895-5b52157c94a4'), ('59', '59', 'en_us', 'ingredients/club-soda', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'b2508192-632b-4314-95a7-19c5e6c168d8'), ('60', '60', 'en_us', 'ingredients/simple-syrup', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'e6e8f576-bb5f-40b9-800c-1f55966ef52b'), ('61', '61', 'en_us', 'ingredients/sweet-sour-mix', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'cf1f4615-aa2a-40eb-b340-4037f521ff1b'), ('62', '62', 'en_us', 'ingredients/tomato-juice', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '3f0ace9a-b9de-4dd3-9ab8-a48f41fa40d1'), ('63', '63', 'en_us', 'ingredients/tonic-water', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'bcff1c7e-48f3-4dc3-bbdf-3fda90290ce5'), ('64', '64', 'en_us', 'ingredients/water', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '3f04c383-dc37-44b4-9f88-f1434fa61a10'), ('65', '65', 'en_us', 'cocktails/alexander', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '8ee33f85-a541-4ac0-8810-787cb6c04f96'), ('66', '66', 'en_us', 'cocktails/americano', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '78181f3f-8f47-44f5-8386-f4ae2977d2b2'), ('67', '67', 'en_us', 'cocktails/apple-martini', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'b95a2264-1d2e-48ac-a6e2-55acc2fe3014'), ('68', '68', 'en_us', 'cocktails/b-52', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '73d522b7-5d38-4d8c-8ae9-3a5a57f6252a'), ('69', '69', 'en_us', 'cocktails/bacardi-cocktail', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '7f71fd7c-10cb-47a9-b18b-62fe19d09fff'), ('70', '70', 'en_us', 'cocktails/banana-daiquiti', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'fd473c83-b785-458a-8d52-6e63d297e569'), ('71', '71', 'en_us', 'cocktails/bellini', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '6f78f3c3-518a-4e77-b8ee-019f2ce341fe'), ('72', '72', 'en_us', 'cocktails/black-russian', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '46e6a40c-a99e-4f07-b58a-2162ac3011af'), ('73', '73', 'en_us', 'cocktails/bloody-mary', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '3e88edc8-8868-4da5-b657-6ca97da9dd0f'), ('74', '74', 'en_us', 'cocktails/blue-hawaii', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '446a1481-0be3-4d82-8818-bcbf944b3079'), ('75', '75', 'en_us', 'cocktails/brandy-alexander', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '3aeccb1f-f5ca-42bd-ad3f-d5f0f43277d5'), ('76', '76', 'en_us', 'cocktails/brandy-egg-nog', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '83e8a0ea-6739-4b01-96b0-7b37fe44b5f1'), ('77', '77', 'en_us', 'cocktails/bronx', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '347faef4-90ec-4cae-9738-b74d783970f8'), ('78', '78', 'en_us', 'cocktails/mimosa', '2013-02-23 00:15:05', '2013-03-19 22:54:49', '5645adcf-851f-4056-85f9-c6036c7f3bfe'), ('79', '79', 'en_us', 'cocktails/caipirinha', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'ba7ed73c-3fd1-4eb8-b2a8-e16e1dd5abd1'), ('80', '80', 'en_us', 'cocktails/champagne-cooler', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'a69fa4b6-c170-4daf-aaaa-4531a019542c'), ('81', '81', 'en_us', 'cocktails/christmas-cocktail', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '2a1ea260-cde2-47de-826d-eb23647753c6'), ('82', '82', 'en_us', 'cocktails/cosmopolitan', '2013-02-23 00:15:05', '2013-03-19 22:54:01', '7068e2fa-264e-4b89-9b2e-60e350cbc818'), ('83', '83', 'en_us', 'cocktails/cuba-libre', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '92474fd1-8259-49e9-afb2-6a675c6b52d7'), ('84', '84', 'en_us', 'cocktails/daiquiri', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f08180a6-3f3e-4bb2-9ab6-69bd031580ee'), ('85', '85', 'en_us', 'cocktails/french-connection', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '0554669e-6d5f-4219-8da8-17542021cdda'), ('86', '86', 'en_us', 'cocktails/gibson', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'a8bf0285-8368-4bf2-a262-0d0ef69d712e'), ('87', '87', 'en_us', 'cocktails/gimlet', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '8b240537-6bc5-4193-90c1-455152cc8e95'), ('88', '88', 'en_us', 'cocktails/gin-tonic', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '8b06180b-dfee-469c-8e40-8564b9e09e24'), ('89', '89', 'en_us', 'cocktails/gin-fizz', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'b441f38b-294e-4d0e-8b3a-156eaa074f83'), ('90', '90', 'en_us', 'cocktails/gin-rickey', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '8041c623-3100-4add-b0dc-adf0a34ee26a'), ('91', '91', 'en_us', 'cocktails/godfather', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '4e6b0788-0e72-4ce6-956a-6a21b2cc81b8'), ('92', '92', 'en_us', 'cocktails/godmother', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'd9ae2066-ea2d-4b1e-82a9-68d291a9c495'), ('93', '93', 'en_us', 'cocktails/golden-cadillac', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'af2597e9-cf4d-456d-bef4-cee6cafb5397'), ('94', '94', 'en_us', 'cocktails/harvey-wallbanger', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '17aac964-d397-44b7-8ec0-966a5de33e47'), ('95', '95', 'en_us', 'cocktails/horse-s-neck', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '2ea4d11d-a38f-4a0f-9719-4022b5fceb9c'), ('96', '96', 'en_us', 'cocktails/ice-pick', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '4872b10a-e5ad-48ab-acd8-d53919959408'), ('97', '97', 'en_us', 'cocktails/japanese-slipper', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'a4dfc4ec-2fe1-4bd0-8978-f5d1505e772e'), ('98', '98', 'en_us', 'cocktails/john-collins', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '86ad6ea7-4432-4cec-b6e8-b9100f7086d3'), ('99', '99', 'en_us', 'cocktails/kamikaze', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '6c29e027-dde2-4190-96da-913f7e7956a8'), ('100', '100', 'en_us', 'cocktails/kir', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'b34b1d50-06f1-4039-bcf2-99601b528f66'), ('101', '101', 'en_us', 'cocktails/kir-royale', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '02a4832b-3c7d-491e-84e0-385cc614b1f0'), ('102', '102', 'en_us', 'cocktails/long-island-iced-tea', '2013-02-23 00:15:05', '2013-02-24 04:22:10', '6ce85c37-b61b-44b7-9e0b-4cbab006db18'), ('103', '103', 'en_us', 'cocktails/manhattan', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f196031f-808e-4490-8a5e-0e31a679869f'), ('104', '104', 'en_us', 'cocktails/margarita', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '531a89a0-76bd-4cb9-9e32-7e662321f365'), ('105', '105', 'en_us', 'cocktails/martini', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '1be29bd5-af96-4dc1-8861-01697a5decdc'), ('106', '106', 'en_us', 'cocktails/negroni', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '0e15a7cd-d0fc-4d43-93a3-f4a92f6662f2'), ('107', '107', 'en_us', 'cocktails/pina-colada', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '420a07c7-89a8-451c-967b-01b778687dc9'), ('108', '108', 'en_us', 'cocktails/porto-flip', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '3ef53075-3f80-42ca-81c8-4ad3313101c3'), ('109', '109', 'en_us', 'cocktails/rob-roy', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '15e46076-e93d-40c0-b2b7-3edbdb965b60'), ('110', '110', 'en_us', 'cocktails/rusty-nail', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'f19716e1-2c6a-4005-a8d7-c72519b1f4a0'), ('111', '111', 'en_us', 'cocktails/salty-dog', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'ca0f0dee-b3e6-4b8a-b470-ffa45c378ec3'), ('112', '112', 'en_us', 'cocktails/screwdriver', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'efc258a6-0f2b-4b03-b3b5-edefc89be4ff'), ('113', '113', 'en_us', 'cocktails/sex-on-the-beach', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'ddecf8f1-eadc-4441-8b27-4666b2f1eca8'), ('114', '114', 'en_us', 'cocktails/singapore-sling', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '2b0223f5-c77d-44c6-bbd2-7d9883b0c0cb'), ('115', '115', 'en_us', 'cocktails/tequila-sunrise', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '9b5feb47-8606-4e0e-aeef-70128637799c'), ('116', '116', 'en_us', 'cocktails/whiskey-sour', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '1c69286d-86a2-4b60-86b1-25e9763450f4'), ('117', '117', 'en_us', 'cocktails/white-russian', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'd12b5a97-e911-45ee-a3b2-0a51495b1e5c'), ('118', '118', 'en_us', 'ingredients/beer', '2013-02-23 00:15:05', '2013-03-19 22:28:03', '9b08cc74-b6ea-4bd6-a4c7-d19c9dcbbd2d'), ('119', '119', 'en_us', 'ingredients/irish-whiskey', '2013-02-23 00:15:05', '2013-03-19 23:01:33', '47f7aa5a-c2cf-4be7-94ac-e3f837e1b647'), ('120', '120', 'en_us', 'ingredients/red-wine', '2013-02-23 00:15:05', '2013-03-19 23:02:33', '5c37d373-a4ca-48c5-87f3-56aa237a0bea'), ('121', '121', 'en_us', 'ingredients/espresso', '2013-02-23 00:15:05', '2013-03-19 22:29:37', '50b090d5-d903-4702-bd2d-d12ce13606a2'), ('122', '122', 'en_us', 'cocktails/espresso-martini', '2013-02-23 00:15:05', '2013-03-19 22:56:22', 'f6eda844-7188-4e89-af0f-16aa6aa047df'), ('123', '123', 'en_us', 'cocktails/mojito', '2013-02-23 00:15:05', '2013-03-19 22:59:51', 'dcca3ace-b382-4633-8813-51182afad971'), ('124', '124', 'en_us', 'cocktails/midori-splice', '2013-02-23 00:15:05', '2013-03-19 23:03:37', 'b12cd752-f64b-409a-9198-b35ce732cb1c'), ('125', '125', 'en_us', 'cocktails/mai-kai-martini', '2013-02-23 00:15:05', '2013-03-19 22:57:58', '5f83a1c5-351e-48c0-ad7d-074079dc2fae'), ('130', '157', 'en_us', null, '2013-02-23 00:15:06', '2013-02-23 00:15:06', '2b75c16b-2689-441a-acb0-3e08969c6689'), ('132', '184', 'en_us', 'cocktails/gin-and-tonic', '2013-03-19 22:57:24', '2013-03-19 23:28:54', '59103a05-1624-4787-9566-41bba0f48e7d');
COMMIT;

-- ----------------------------
--  Table structure for `craft_emailmessages`
-- ----------------------------
DROP TABLE IF EXISTS `craft_emailmessages`;
CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `htmlBody` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `craft_entries`
-- ----------------------------
DROP TABLE IF EXISTS `craft_entries`;
CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `postDate` datetime NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_fk` (`authorId`),
  KEY `craft_entries_sectionId_idx` (`sectionId`) USING BTREE,
  CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_entries`
-- ----------------------------
BEGIN;
INSERT INTO `craft_entries` VALUES ('3', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:43:00', '2013-02-23 00:15:06', '91d5e0f2-dffe-4c00-b5e9-f241fc068c05'), ('4', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:43:19', '2013-02-23 00:15:06', '6f360525-6c81-4321-84ce-3d550773ad1b'), ('5', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:44:21', '2013-02-23 00:15:06', 'a258991a-43ff-43cd-99bf-03a1f9e09149'), ('6', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:44:36', '2013-02-23 00:15:06', '17e74901-c33a-46f2-b6b8-645ab47806ec'), ('7', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:44:40', '2013-03-19 23:01:14', '472e1e20-9a51-4d06-a076-43e8336bdd66'), ('8', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:45:10', '2013-02-23 00:15:06', '6628f67d-16be-4154-b6d8-ad95e4dbdc16'), ('9', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:45:15', '2013-03-19 22:52:38', '49056222-8ef8-45c4-bb08-aa2b9ac3e887'), ('10', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:45:24', '2013-02-23 00:15:06', '0803dcb5-2bcc-4605-b8c3-6e095df9d997'), ('11', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:45:36', '2013-02-23 00:15:06', 'fcdd80e5-5def-4583-bc9b-a6785709c1de'), ('12', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:46:01', '2013-02-23 00:15:06', '3afce547-7f8f-49f5-af86-f578ffae230d'), ('13', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:46:05', '2013-02-23 00:15:06', '90f5e0ca-783f-47c3-a0d9-ad25d3f182d5'), ('14', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:46:08', '2013-02-23 00:15:06', '083b9b64-2107-489f-bc88-aa1338a145c9'), ('15', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:46:41', '2013-02-23 00:15:06', 'fc7130c7-3b36-421b-aebf-3c8d2a0b6eb2'), ('16', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:46:48', '2013-02-23 00:15:06', 'f2838ef0-324e-406b-b32e-6a5d6478ea3a'), ('17', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:46:55', '2013-02-23 00:15:06', '002789ef-eb55-4a5f-a161-0ab1a1549c55'), ('18', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:47:50', '2013-02-23 00:15:06', 'b6edf3ba-2174-47ae-87e2-5e8903b970da'), ('19', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:48:15', '2013-02-23 00:15:06', '1b2698e3-b9ba-430b-a11f-46fcd5422ad4'), ('20', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:48:33', '2013-02-23 00:15:06', 'a1c89fbd-313f-47ad-bf8b-0084df9e7b5e'), ('21', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:48:51', '2013-02-23 00:15:06', '4130179d-c2c2-458a-91f8-f1d96bd5d269'), ('22', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:48:55', '2013-02-23 00:15:06', 'a7ee86b0-fb52-44bf-8c4b-61b0b389b60d'), ('23', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:49:08', '2013-03-19 23:02:47', '8093f8a9-35ba-426b-86e2-feab2817e839'), ('24', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:49:15', '2013-02-23 00:15:06', '61e8aa27-e698-4d87-937b-7e3bbb611ac4'), ('25', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:49:25', '2013-02-23 00:15:06', '5b0cb907-4d18-4c2e-8994-f24219366399'), ('26', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:49:29', '2013-02-23 00:15:06', '5fda7a59-ad68-4686-8d6e-d6fd0b0718de'), ('27', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:49:34', '2013-02-23 00:15:06', '5fa7878e-83ee-407b-99ec-de44c2fbbcc6'), ('28', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:49:45', '2013-02-23 00:15:06', '907ecb39-182c-4cfd-ab6a-f34f9256f6ed'), ('29', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:49:51', '2013-02-23 00:15:06', 'b329f169-097d-434a-854a-57d7b14caeb9'), ('30', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:50:15', '2013-02-23 00:15:06', '0ee162d6-7875-44cf-b971-70238b96af13'), ('31', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:50:22', '2013-02-23 00:15:06', '3bc9c524-5a58-4d35-8600-0df762bc077f'), ('32', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:50:32', '2013-02-23 00:15:06', '54fc55db-8796-4e48-88c8-016a38ce8b0a'), ('33', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:50:36', '2013-02-23 00:15:06', 'dc9822b5-03a8-477b-9d25-8f1bd6abc575'), ('34', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:50:44', '2013-02-23 00:15:06', 'f78dce9e-072f-4a14-a142-fdec58fa8655'), ('35', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:50:48', '2013-02-23 00:15:06', 'afb776e6-c8fe-44f5-873d-1630dc409c54'), ('36', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:50:51', '2013-02-23 00:15:06', 'ae4a9dde-ac21-41a2-8bc6-3d9c4d9caaf1'), ('37', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:51:16', '2013-03-19 23:00:14', '28e2672a-3f38-46e7-9ef6-7e343ab3f507'), ('38', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:51:27', '2013-02-23 00:15:06', '7ca682e0-1b13-4f8f-8745-86c4f255a8ee'), ('39', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:51:31', '2013-03-19 23:00:29', '48d44882-cb4a-4416-a2e1-ff225d692957'), ('40', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:51:34', '2013-02-23 00:15:06', 'f7c16231-b068-49ff-82b0-64d73939c329'), ('41', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 19:51:48', '2013-02-23 00:15:06', 'f84d5698-3c79-486f-bfbe-03236b49affa'), ('42', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:37:11', '2013-02-23 00:15:06', '80c9dc16-9eff-40eb-bac6-208345691c77'), ('43', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:38:01', '2013-02-23 00:15:06', '5323c279-8402-454b-8d5e-e0d6573b3bfb'), ('44', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:38:52', '2013-02-23 00:15:06', 'e40a8078-b39a-43a3-bd1d-c289f9f38bb6'), ('45', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:39:08', '2013-02-23 00:15:06', '44e5a5ec-793c-449b-bc57-8b44a892c3d5'), ('46', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:39:28', '2013-02-23 00:15:06', '008b46c8-9d75-41e7-a12e-7f1b1e6595ac'), ('47', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:40:06', '2013-02-23 00:15:06', '3bb9ff14-6cc1-4abd-aca2-e6b50212fd0e'), ('48', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:40:33', '2013-02-23 00:15:06', '5bbdfffe-f9fc-4dfb-abf6-7ac42febad4d'), ('49', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:41:10', '2013-02-23 00:15:06', 'dc6ca89f-b1df-44fc-9311-89b3d8a2dea8'), ('50', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:42:35', '2013-02-23 00:15:06', '693edc7c-09a7-4902-b076-c7022f97b165'), ('51', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:42:54', '2013-02-23 00:15:06', 'f666319d-bca1-47c1-9a50-54430726c059'), ('52', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:43:17', '2013-02-23 00:15:06', 'c9929fcd-5c8d-471d-aec3-dca0c32822cb'), ('53', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:45:07', '2013-02-23 00:15:06', 'a5c9e67d-9db7-4a13-bc8b-8a4cd94ec102'), ('54', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:45:24', '2013-02-23 00:15:06', '8fc19396-6ef1-432f-b8b5-511e2ed29298'), ('55', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:45:41', '2013-02-23 00:15:06', '698eac6a-2a47-4721-8f68-cfc390319bf6'), ('56', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:47:03', '2013-02-23 00:15:06', '0709d584-c502-4f41-8501-ac2f51ad9c63'), ('57', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:47:24', '2013-02-23 00:15:06', 'a479ff6c-51dc-41cc-a8b4-038874f387c3'), ('58', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:47:45', '2013-02-23 00:15:06', '2d17de98-ab62-4a19-bba0-eac84e0710cf'), ('59', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:48:16', '2013-02-23 00:15:06', '7ec5dcd4-bab0-4498-8bae-6e5b1f2f71b5'), ('60', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:49:35', '2013-02-23 00:15:06', '1b1b969c-7150-44c6-82db-c6c7626b2d0f'), ('61', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:50:00', '2013-02-23 00:15:06', 'd40dc053-47d1-4134-b678-873baf8eb751'), ('62', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:50:17', '2013-02-23 00:15:06', '2a455ca2-ae8a-4f60-8e80-fbec9cb81d11'), ('63', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:50:34', '2013-02-23 00:15:06', 'e4182bc7-8e5e-4f5c-aca8-b71470e336ee'), ('64', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:51:31', '2013-02-23 00:15:06', '3c5e426c-cb0e-4b73-8af7-cbbe664897ef'), ('65', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:54:03', '2013-02-23 00:15:06', '995335ae-35bc-4e3b-a556-35bd3826caa1'), ('66', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:55:18', '2013-02-23 00:15:06', 'c05e8c0b-88b6-40b8-a4c8-8c08e4a1b48e'), ('67', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:57:12', '2013-02-23 00:15:06', '6b59ad11-779c-4012-9746-13661fce72a8'), ('68', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:59:11', '2013-02-23 00:15:06', 'b25090a7-de9c-4936-b3b2-9239a1d372f7'), ('69', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 20:59:55', '2013-02-23 00:15:06', '18014f67-daab-4c80-887d-891a1de47cb8'), ('70', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:01:24', '2013-02-23 00:15:06', '29de1776-7410-4146-a5cc-1076a69d9411'), ('71', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:02:58', '2013-02-23 00:15:06', '7ffe93e0-e3bd-4c42-adee-ca0684433e87'), ('72', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:03:48', '2013-02-23 00:15:06', 'de49e057-94ca-441a-9c4e-28c4ffdbb6e3'), ('73', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:04:42', '2013-02-23 00:15:06', 'd24fa4c1-87b7-4dd5-a8ee-4a69ade5c434'), ('74', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:05:28', '2013-02-23 00:15:06', '5bf15566-b559-476f-9c44-100b7bf3bc39'), ('75', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:06:25', '2013-02-23 00:15:06', '61335844-d7b8-444d-a326-4547fe42de68'), ('76', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:27:00', '2013-02-23 00:15:06', 'd3fef410-0dc9-4856-873c-d2cb6c51fe8c'), ('77', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:29:23', '2013-02-23 00:15:06', '94c396ca-047f-4022-9979-317fcf132591'), ('78', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:31:19', '2013-03-19 22:54:49', '35704cfe-e723-4aed-be01-8cfb7cf61abb'), ('79', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:32:49', '2013-02-23 00:15:06', '7171f1d8-203a-44b1-9992-5468ddcb2670'), ('80', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:34:03', '2013-02-23 00:15:06', 'fb7a4fba-df74-49fb-806a-c05b74b7932e'), ('81', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:35:14', '2013-02-23 00:15:06', 'ac5b46ac-6ae2-4b2c-bcb0-9b6476568d5f'), ('82', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:37:33', '2013-03-19 22:54:01', 'd78dc6c7-116e-47cc-aa12-4ecf7f5886dd'), ('83', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:38:09', '2013-02-23 00:15:06', '13da7bfe-5923-4402-9d8d-232f7bce058d'), ('84', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:38:55', '2013-02-23 00:15:06', 'e0894d28-d410-48c8-8639-33bbe1aeac27'), ('85', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:39:52', '2013-02-23 00:15:06', 'deef61fc-dcae-4f7f-b630-e19d6e673d9d'), ('86', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:41:09', '2013-02-23 00:15:06', '3bfbb867-0954-429c-9cec-2d08959e4789'), ('87', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:41:40', '2013-02-23 00:15:06', 'd9aea58b-40ba-45bb-82b6-573343ccb92b'), ('88', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:42:09', '2013-02-23 00:15:06', '44ff2573-ee1c-42d4-81d7-eba8643e6e4e'), ('89', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:44:00', '2013-02-23 00:15:06', 'bb0647c5-b4f2-425c-a2bf-e662db0f0a0d'), ('90', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:45:42', '2013-02-23 00:15:06', 'fceddbe9-4942-4801-a373-6f1ed563feb8'), ('91', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:46:50', '2013-02-23 00:15:06', '819bfb84-5b46-4e8a-b8e7-cd43de75dc4b'), ('92', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:55:05', '2013-02-23 00:15:06', 'd3d3e930-7664-41ea-a3bf-780b2f75cea2'), ('93', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:55:38', '2013-02-23 00:15:06', '6711d3e3-a6a8-41fc-bd77-a97dae94f39b'), ('94', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:57:06', '2013-02-23 00:15:06', '0b6d2f77-e315-45fb-9118-85fd4085f1c0'), ('95', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:57:50', '2013-02-23 00:15:06', 'abaae65c-26d6-41f3-ba2d-6a79200a4d68'), ('96', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:58:30', '2013-02-23 00:15:06', 'e8b5486a-0613-4ba0-aba0-ba0d0c3be37c'), ('97', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:59:05', '2013-02-23 00:15:06', '43619ec8-6aa3-4789-9b75-92bbfa614848'), ('98', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 21:59:42', '2013-02-23 00:15:06', '64a21dd1-597f-4c1f-abc3-629309555111'), ('99', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:00:15', '2013-02-23 00:15:06', 'e8a77688-01e3-4ac4-8308-9359bced3af6'), ('100', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:01:12', '2013-02-23 00:15:06', '1d844e50-26ea-4f9b-9ec5-a86a98b6a628'), ('101', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:01:49', '2013-02-23 00:15:06', '9358cc28-c7b1-482c-945d-b42eb39e8346'), ('102', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:03:44', '2013-02-24 04:22:10', 'c33df851-f2d9-4958-846f-6826318471c2'), ('103', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:04:11', '2013-02-23 00:15:06', '2a28dbfa-67e6-4b0a-ade0-b19b071ef99b'), ('104', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:04:59', '2013-02-23 00:15:06', 'ebc82ee8-7c5c-4669-b35f-95a1ff04e7c5'), ('105', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:05:37', '2013-02-23 00:15:06', 'bf6634db-fcd1-4fca-9e47-acf1bbd2ccc5'), ('106', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:06:23', '2013-02-23 00:15:06', '9ca50334-4f2e-4bbf-a166-4d1c659c62d1'), ('107', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:09:45', '2013-02-23 00:15:06', '5fb1475e-9466-4c0f-9383-7da8a261760b'), ('108', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:10:36', '2013-02-23 00:15:06', '4515ece3-44a4-49e6-8f64-7119690cc1a7'), ('109', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:11:13', '2013-02-23 00:15:06', 'eafb0b32-7470-42fb-894d-27697b414b92'), ('110', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:11:45', '2013-02-23 00:15:06', 'b34e3ae0-ee96-4fc2-abf6-5746d94650a1'), ('111', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:12:40', '2013-02-23 00:15:06', 'e75d4041-16a9-4d7e-b841-3119f867bea9'), ('112', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:13:28', '2013-02-23 00:15:06', 'd8898a06-3b71-458d-b88f-6b463f172417'), ('113', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:14:54', '2013-02-23 00:15:06', 'dbb4b382-9086-44ae-9b0a-75beceea8aea'), ('114', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:16:38', '2013-02-23 00:15:06', '08c09eea-d91e-4c7c-a872-4fda3e4ca2de'), ('115', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:17:49', '2013-02-23 00:15:06', '2ff641da-3780-4d21-a6ee-80e95f2e7222'), ('116', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:18:43', '2013-02-23 00:15:06', 'a2e7538c-6014-4cf5-8285-f38c80ca5a17'), ('117', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 22:20:52', '2013-02-23 00:15:06', '05dce56e-b2e9-4928-980d-99df5eedb185'), ('118', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 23:30:51', '2013-03-19 22:28:03', '2eeae44b-969f-4bbd-87a9-a92e92c58003'), ('119', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 23:31:51', '2013-03-19 23:01:33', '3a3a81a3-207b-4bd5-9f12-1644a29a2bc1'), ('120', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 23:33:52', '2013-03-19 23:02:33', 'eef6720b-107c-4798-82d9-f81184166fce'), ('121', '2', '130', '2012-10-12 00:00:00', null, '2012-10-12 23:35:05', '2013-03-19 22:29:37', '8901f195-b563-4c94-8460-1bf82146b97f'), ('122', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 23:40:47', '2013-03-19 22:56:22', 'dc635aa6-2c0e-4737-a73f-43ec9382fb29'), ('123', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 23:42:22', '2013-03-19 22:59:51', '421d8916-6c77-4f3d-aa47-4fd2067ab090'), ('124', '3', '130', '2012-10-12 00:00:00', null, '2012-10-12 23:43:37', '2013-03-19 23:03:37', 'a7087d24-b688-43e1-8563-5e6db8411190'), ('125', '3', '130', '2012-10-12 00:00:00', null, '2012-10-14 17:17:45', '2013-03-19 22:57:58', '5d80ffd7-c828-4c4c-8ca7-3cd415445272'), ('184', '3', '130', '2013-03-19 00:00:00', null, '2013-03-19 22:57:24', '2013-03-19 23:28:54', 'bb1e344d-b55a-49fc-81b8-cfdce4c5c9bd');
COMMIT;

-- ----------------------------
--  Table structure for `craft_entries_i18n`
-- ----------------------------
DROP TABLE IF EXISTS `craft_entries_i18n`;
CREATE TABLE `craft_entries_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_entries_i18n_entryId_locale_unq_idx` (`entryId`,`locale`),
  UNIQUE KEY `craft_entries_i18n_slug_sectionId_locale_unq_idx` (`slug`,`sectionId`,`locale`),
  KEY `craft_entries_i18n_title_idx` (`title`),
  KEY `craft_entries_i18n_locale_fk` (`locale`),
  KEY `craft_entries_i18n_sectionId_fk` (`sectionId`),
  CONSTRAINT `craft_entries_i18n_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entries_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_entries_i18n`
-- ----------------------------
BEGIN;
INSERT INTO `craft_entries_i18n` VALUES ('1', '3', '2', 'en_us', 'Amaretto', 'amaretto', '2012-10-12 19:43:00', '2013-02-23 00:15:04', 'f4e61801-7ae4-4b2f-a9ba-e1ea12011a53'), ('2', '4', '2', 'en_us', 'Apricot Brandy', 'apricot-brandy', '2012-10-12 19:43:19', '2013-02-23 00:15:04', '929339fd-517a-4b1b-a03a-18d929f63599'), ('3', '5', '2', 'en_us', 'Bailey\'s Irish Cream', 'bailey-s-irish-cream', '2012-10-12 19:44:21', '2013-02-23 00:15:04', '6e0b210c-7cd8-496e-a2e1-b345941fcb25'), ('4', '6', '2', 'en_us', 'Bourbon', 'bourbon', '2012-10-12 19:44:36', '2013-02-23 00:15:04', 'ceb224ea-67a8-4fe6-9b1e-525efbf58e16'), ('5', '7', '2', 'en_us', 'Whiskey', 'whiskey', '2012-10-12 19:44:40', '2013-03-19 23:01:14', 'be1d3983-39a5-4171-9c91-bbfa9146a728'), ('6', '8', '2', 'en_us', 'Cachaça', 'cachaa', '2012-10-12 19:45:10', '2013-02-23 00:15:04', '49c3bcfb-7af5-4621-836e-64326fb4b3f3'), ('7', '9', '2', 'en_us', 'Champagne', 'champagne', '2012-10-12 19:45:15', '2013-03-19 22:52:38', '61205256-7816-4be4-b7ff-19c6ed3d5731'), ('8', '10', '2', 'en_us', 'Apple Schnapps', 'apple-schnapps', '2012-10-12 19:45:24', '2013-02-23 00:15:04', '43226bbd-b0c1-42d2-990a-d112a800bdc4'), ('9', '11', '2', 'en_us', 'White Rum', 'white-rum', '2012-10-12 19:45:36', '2013-02-23 00:15:04', '5881fc5b-ce07-43d0-8c0d-47a3e8225464'), ('10', '12', '2', 'en_us', 'Blue Curaçao', 'blue-curaao', '2012-10-12 19:46:01', '2013-02-23 00:15:04', 'b347bbf2-b180-4dde-86d7-fe240400f8d3'), ('11', '13', '2', 'en_us', 'Brandy', 'brandy', '2012-10-12 19:46:05', '2013-02-23 00:15:04', 'a02987a9-ff14-40ff-8616-031b6b0062f2'), ('12', '14', '2', 'en_us', 'Campari', 'campari', '2012-10-12 19:46:08', '2013-02-23 00:15:04', '85952089-2cf3-4496-8f81-98ac0016637c'), ('13', '15', '2', 'en_us', 'Cherry Brandy', 'cherry-brandy', '2012-10-12 19:46:41', '2013-02-23 00:15:04', '24e71888-888f-45c9-9c92-f4c68397dedc'), ('14', '16', '2', 'en_us', 'Cognac', 'cognac', '2012-10-12 19:46:48', '2013-02-23 00:15:04', '0e901fab-d521-41e9-99d1-b3f9c57feb1e'), ('15', '17', '2', 'en_us', 'Cointreau', 'cointreau', '2012-10-12 19:46:55', '2013-02-23 00:15:04', '399d613d-a6d9-49e0-bb9f-5f9f8c672b2b'), ('16', '18', '2', 'en_us', 'Crème de Cacao', 'crme-de-cacao', '2012-10-12 19:47:50', '2013-02-23 00:15:04', '7ebcaf4d-b492-4f26-95ac-bf2952077c03'), ('17', '19', '2', 'en_us', 'Crème de Cassis', 'crme-de-cassis', '2012-10-12 19:48:15', '2013-02-23 00:15:04', '5e548ba0-ac9b-4ec1-8f67-9defd03211af'), ('18', '20', '2', 'en_us', 'Crème de Yvette', 'crme-de-yvette', '2012-10-12 19:48:33', '2013-02-23 00:15:04', '55235cac-01fc-46fa-8246-a1537aa8e8d6'), ('19', '21', '2', 'en_us', 'Demerara Rum', 'demerara-rum', '2012-10-12 19:48:51', '2013-02-23 00:15:04', 'e6ee5017-99bf-46dd-ac38-2da413f1237a'), ('20', '22', '2', 'en_us', 'Drambuie', 'drambuie', '2012-10-12 19:48:55', '2013-02-23 00:15:04', 'd7457997-d161-4a9c-8421-da25cfca0d33'), ('21', '23', '2', 'en_us', 'White Wine', 'white-wine', '2012-10-12 19:49:08', '2013-03-19 23:02:47', '3970bfd1-9690-449f-bef1-a719198c3f13'), ('22', '24', '2', 'en_us', 'Dry Vermouth', 'dry-vermouth', '2012-10-12 19:49:15', '2013-02-23 00:15:04', '896600ea-9184-4ad0-bbbf-fb20521e0c9c'), ('23', '25', '2', 'en_us', 'Galliano Liqueur', 'galliano-liqueur', '2012-10-12 19:49:25', '2013-02-23 00:15:04', '052ba6c8-4fcd-466b-9c14-4e29bb5db701'), ('24', '26', '2', 'en_us', 'Gin', 'gin', '2012-10-12 19:49:29', '2013-02-23 00:15:04', '4cb2d053-ecf3-4725-95f6-904c5329efb7'), ('25', '27', '2', 'en_us', 'Grand Marnier', 'grand-marnier', '2012-10-12 19:49:34', '2013-02-23 00:15:04', '66d72e9d-f631-4199-aaf7-f149186daf78'), ('26', '28', '2', 'en_us', 'Green Chartreuse', 'green-chartreuse', '2012-10-12 19:49:45', '2013-02-23 00:15:04', 'cca19f8a-95d5-4c02-b872-92d194aab4ba'), ('27', '29', '2', 'en_us', 'Sweet Vermouth', 'sweet-vermouth', '2012-10-12 19:49:51', '2013-02-23 00:15:04', 'd4e16f9a-16cc-485b-9fbb-f901e1176990'), ('28', '30', '2', 'en_us', 'Kahlúa', 'kahla', '2012-10-12 19:50:15', '2013-02-23 00:15:04', '72454713-8867-42fe-8390-d5edafaf3b12'), ('29', '31', '2', 'en_us', 'Kirsch', 'kirsch', '2012-10-12 19:50:22', '2013-02-23 00:15:04', 'b91c94d2-0652-45ab-83ac-278d166a8812'), ('30', '32', '2', 'en_us', 'Midori', 'midori', '2012-10-12 19:50:32', '2013-02-23 00:15:04', 'd27178db-1037-4788-b5bc-beb70da4e12e'), ('31', '33', '2', 'en_us', 'Peach Brandy', 'peach-brandy', '2012-10-12 19:50:36', '2013-02-23 00:15:04', '085f9613-90ff-4a99-8072-609341eb694e'), ('32', '34', '2', 'en_us', 'Port', 'port', '2012-10-12 19:50:44', '2013-02-23 00:15:04', 'dc1d0108-687e-4e99-9947-1c97e65833f6'), ('33', '35', '2', 'en_us', 'Scotch', 'scotch', '2012-10-12 19:50:48', '2013-02-23 00:15:04', 'f26d318f-0387-4a05-987f-f5c577f6142e'), ('34', '36', '2', 'en_us', 'Sloe Gin', 'sloe-gin', '2012-10-12 19:50:51', '2013-02-23 00:15:04', '6be55391-7cae-4698-b487-34bfd9434f4c'), ('35', '37', '2', 'en_us', 'Tequila', 'tequila', '2012-10-12 19:51:16', '2013-03-19 23:00:14', '93260b80-166d-40d1-a5aa-efcaf6c24cec'), ('36', '38', '2', 'en_us', 'Triple Sec', 'triple-sec', '2012-10-12 19:51:27', '2013-02-23 00:15:04', '86b59a9d-c9f4-454d-908f-6da3748e7a20'), ('37', '39', '2', 'en_us', 'Vodka', 'vodka', '2012-10-12 19:51:31', '2013-03-19 23:00:29', '8f528327-6195-469d-a97d-1a267926af31'), ('38', '40', '2', 'en_us', 'Vodka Citron', 'vodka-citron', '2012-10-12 19:51:34', '2013-02-23 00:15:04', '5329724e-ad87-40a0-b02a-c5a5f28d731d'), ('39', '41', '2', 'en_us', 'Yellow Chartreuse', 'yellow-chartreuse', '2012-10-12 19:51:48', '2013-02-23 00:15:04', 'c62e54f0-df30-4921-969c-ca8c64603bc3'), ('40', '42', '2', 'en_us', 'Coconut Cream', 'coconut-cream', '2012-10-12 20:37:11', '2013-02-23 00:15:04', '946305b6-4a84-4faa-a776-a238ba7248f3'), ('41', '43', '2', 'en_us', 'Coke', 'coke', '2012-10-12 20:38:01', '2013-02-23 00:15:04', 'c3de17ab-e53e-49e6-ae7d-39b15e68f03c'), ('42', '44', '2', 'en_us', 'Cranberry Juice', 'cranberry-juice', '2012-10-12 20:38:52', '2013-02-23 00:15:04', 'c9a9be5a-af21-4299-95f1-a75026011931'), ('43', '45', '2', 'en_us', 'Egg Yolk', 'egg-yolk', '2012-10-12 20:39:08', '2013-02-23 00:15:04', 'c2035058-65cf-4903-9844-f9acb289c943'), ('44', '46', '2', 'en_us', 'Cream', 'cream', '2012-10-12 20:39:28', '2013-02-23 00:15:04', '41bd373d-2a7d-4acc-a150-373c099a3961'), ('45', '47', '2', 'en_us', 'Milk', 'milk', '2012-10-12 20:40:06', '2013-02-23 00:15:04', '2c17b255-e34f-491b-9a9b-23fd68671580'), ('46', '48', '2', 'en_us', 'Peach Puree', 'peach-puree', '2012-10-12 20:40:33', '2013-02-23 00:15:04', 'b8a57eda-85f5-4571-8fe4-03702151c2db'), ('47', '49', '2', 'en_us', 'Ginger Ale', 'ginger-ale', '2012-10-12 20:41:10', '2013-02-23 00:15:04', '14f52a80-bdd0-41e3-a157-76cb807e52c2'), ('48', '50', '2', 'en_us', 'Gomme Syrup', 'gomme-syrup', '2012-10-12 20:42:35', '2013-02-23 00:15:04', '8daad97b-78be-4713-aadf-317dee8dc321'), ('49', '51', '2', 'en_us', 'Grapefruit', 'grapefruit', '2012-10-12 20:42:54', '2013-02-23 00:15:04', '7b864044-ce99-4303-8b45-2822a81864ea'), ('50', '52', '2', 'en_us', 'Grenadine', 'grenadine', '2012-10-12 20:43:17', '2013-02-23 00:15:04', '72f9b204-a05f-439d-b9b8-1ea1812dd546'), ('51', '53', '2', 'en_us', 'Iced Tea', 'iced-tea', '2012-10-12 20:45:07', '2013-02-23 00:15:04', '00c28698-f744-4026-ba45-db5219c0a800'), ('52', '54', '2', 'en_us', 'Lemon Juice', 'lemon-juice', '2012-10-12 20:45:24', '2013-02-23 00:15:04', '79c87bfc-4bea-45fa-9455-1d5cc4d4f38b'), ('53', '55', '2', 'en_us', 'Lime Juice', 'lime-juice', '2012-10-12 20:45:41', '2013-02-23 00:15:04', 'c45038eb-ad76-491c-9eab-2d6c8361153b'), ('54', '56', '2', 'en_us', 'Orange Juice', 'orange-juice', '2012-10-12 20:47:03', '2013-02-23 00:15:04', 'dc4f39ab-9ebf-41ad-8e61-9a4d27f1b9c8'), ('55', '57', '2', 'en_us', 'Passion Fruit Juice', 'passion-fruit-juice', '2012-10-12 20:47:24', '2013-02-23 00:15:04', '95f727f8-5378-4659-aad7-fafb86e8a94f'), ('56', '58', '2', 'en_us', 'Pineapple Juice', 'pineapple-juice', '2012-10-12 20:47:45', '2013-02-23 00:15:04', 'b14fa450-e645-4374-9d36-6454169ed042'), ('57', '59', '2', 'en_us', 'Club Soda', 'club-soda', '2012-10-12 20:48:16', '2013-02-23 00:15:04', 'ab5d42ff-f9e6-472d-b1f9-c1cde873605e'), ('58', '60', '2', 'en_us', 'Simple Syrup', 'simple-syrup', '2012-10-12 20:49:35', '2013-02-23 00:15:04', '1faaa367-9e4d-461a-8dcd-1301ed299acb'), ('59', '61', '2', 'en_us', 'Sweet & Sour Mix', 'sweet-sour-mix', '2012-10-12 20:50:00', '2013-02-23 00:15:04', '9937af17-2aef-4690-a3fa-61b2d776eeaf'), ('60', '62', '2', 'en_us', 'Tomato Juice', 'tomato-juice', '2012-10-12 20:50:17', '2013-02-23 00:15:04', '13f41c7b-d03a-4899-b7ab-4dd3eb64b843'), ('61', '63', '2', 'en_us', 'Tonic Water', 'tonic-water', '2012-10-12 20:50:34', '2013-02-23 00:15:04', '5793c6f8-4145-43b7-b045-562e59ac9f8f'), ('62', '64', '2', 'en_us', 'Water', 'water', '2012-10-12 20:51:31', '2013-02-23 00:15:04', '0512606c-b7c3-4a4b-a40c-7d3a748f33b0'), ('63', '65', '3', 'en_us', 'Alexander', 'alexander', '2012-10-12 20:54:03', '2013-02-23 00:15:04', '3a829714-0a2b-4fe3-8713-fe88d87c9697'), ('64', '66', '3', 'en_us', 'Americano', 'americano', '2012-10-12 20:55:18', '2013-02-23 00:15:04', '00777b0e-c74b-401b-ab07-b91a06f5f620'), ('65', '67', '3', 'en_us', 'Apple Martini', 'apple-martini', '2012-10-12 20:57:12', '2013-02-23 00:15:04', '3d74e8f5-9740-4775-aa29-fc15505510cd'), ('66', '68', '3', 'en_us', 'B-52', 'b-52', '2012-10-12 20:59:11', '2013-02-23 00:15:04', '39996748-c4ed-45a7-a28f-b411fd49bc6b'), ('67', '69', '3', 'en_us', 'Bacardi Cocktail', 'bacardi-cocktail', '2012-10-12 20:59:55', '2013-02-23 00:15:04', 'c103319b-348b-46a1-861c-963f4f7ffa5a'), ('68', '70', '3', 'en_us', 'Banana Daiquiri', 'banana-daiquiti', '2012-10-12 21:01:24', '2013-02-23 00:15:04', 'b3720480-7a82-4939-a2ee-7eb579723f29'), ('69', '71', '3', 'en_us', 'Bellini', 'bellini', '2012-10-12 21:02:58', '2013-02-23 00:15:04', '6fe4b6a3-82a3-43fd-bb58-7942a157271e'), ('70', '72', '3', 'en_us', 'Black Russian', 'black-russian', '2012-10-12 21:03:48', '2013-02-23 00:15:04', '6c007267-39bf-4946-8a4a-d58dc88e1872'), ('71', '73', '3', 'en_us', 'Bloody Mary', 'bloody-mary', '2012-10-12 21:04:42', '2013-02-23 00:15:04', 'c7cdafff-fb9e-4fd6-810c-5049097726b3'), ('72', '74', '3', 'en_us', 'Blue Hawaii', 'blue-hawaii', '2012-10-12 21:05:28', '2013-02-23 00:15:04', 'f8258f07-24dc-480a-840a-c716096e5d33'), ('73', '75', '3', 'en_us', 'Brandy Alexander', 'brandy-alexander', '2012-10-12 21:06:25', '2013-02-23 00:15:04', 'c84a6f9f-064f-45bb-8cb4-a190eb6f606e'), ('74', '76', '3', 'en_us', 'Brandy Egg Nog', 'brandy-egg-nog', '2012-10-12 21:27:00', '2013-02-23 00:15:04', 'f11232c3-8785-4e38-919d-3adad462603f'), ('75', '77', '3', 'en_us', 'Bronx', 'bronx', '2012-10-12 21:29:23', '2013-02-23 00:15:04', '173f1fc5-c719-40b3-8fa9-a65c792b7cc3'), ('76', '78', '3', 'en_us', 'Mimosa', 'mimosa', '2012-10-12 21:31:19', '2013-03-19 22:54:49', '10988320-0e16-43ac-859d-83fcfe79ee02'), ('77', '79', '3', 'en_us', 'Caipirinha', 'caipirinha', '2012-10-12 21:32:49', '2013-02-23 00:15:04', 'fb213384-1d53-4aad-90be-e018b167e586'), ('78', '80', '3', 'en_us', 'Champagne Cooler', 'champagne-cooler', '2012-10-12 21:34:03', '2013-02-23 00:15:04', '086f97a6-c8fe-45bd-b64d-5933a540a01f'), ('79', '81', '3', 'en_us', 'Christmas Cocktail', 'christmas-cocktail', '2012-10-12 21:35:14', '2013-02-23 00:15:04', '5e582877-202e-40d2-b27f-f380a6e57ef9'), ('80', '82', '3', 'en_us', 'Cosmopolitan', 'cosmopolitan', '2012-10-12 21:37:33', '2013-03-19 22:54:01', 'dcb29c93-b012-4d62-b4bd-8414347fff30'), ('81', '83', '3', 'en_us', 'Cuba Libre', 'cuba-libre', '2012-10-12 21:38:09', '2013-02-23 00:15:05', '9f901023-fea8-4559-be31-00fffb6d7348'), ('82', '84', '3', 'en_us', 'Daiquiri', 'daiquiri', '2012-10-12 21:38:55', '2013-02-23 00:15:05', '6ebffa14-d0f6-4b61-80c7-2d6311d02268'), ('83', '85', '3', 'en_us', 'French Connection', 'french-connection', '2012-10-12 21:39:52', '2013-02-23 00:15:05', 'a248f4ac-a327-481b-afd0-6deb3852413b'), ('84', '86', '3', 'en_us', 'Gibson', 'gibson', '2012-10-12 21:41:09', '2013-02-23 00:15:05', 'd7c8bc12-7f26-4c6f-ba03-6996d8ef8aef'), ('85', '87', '3', 'en_us', 'Gimlet', 'gimlet', '2012-10-12 21:41:40', '2013-02-23 00:15:05', '04b0a991-c455-41fa-b602-c4a54435f936'), ('87', '89', '3', 'en_us', 'Gin Fizz', 'gin-fizz', '2012-10-12 21:44:00', '2013-02-23 00:15:05', '5270be91-dedf-4b66-a81d-757b40f4b13c'), ('88', '90', '3', 'en_us', 'Gin Rickey', 'gin-rickey', '2012-10-12 21:45:42', '2013-02-23 00:15:05', '12c414d4-bfbd-476e-a955-3fcc241937bc'), ('89', '91', '3', 'en_us', 'Godfather', 'godfather', '2012-10-12 21:46:50', '2013-02-23 00:15:05', 'a2a39f1b-ab29-42eb-926f-c52958f6c907'), ('90', '92', '3', 'en_us', 'Godmother', 'godmother', '2012-10-12 21:55:05', '2013-02-23 00:15:05', 'ddc2336b-7b38-4219-8a43-461d002c4f0a'), ('91', '93', '3', 'en_us', 'Golden Cadillac', 'golden-cadillac', '2012-10-12 21:55:38', '2013-02-23 00:15:05', '9179a0f9-1d75-49ff-ba27-ab8290cf57aa'), ('92', '94', '3', 'en_us', 'Harvey Wallbanger', 'harvey-wallbanger', '2012-10-12 21:57:06', '2013-02-23 00:15:05', '698d1f81-641f-43f4-8bce-595caf55f9e9'), ('93', '95', '3', 'en_us', 'Horse\'s Neck', 'horse-s-neck', '2012-10-12 21:57:50', '2013-02-23 00:15:05', 'fda8e2fa-ceef-4e28-a3f7-37abff10b144'), ('94', '96', '3', 'en_us', 'Ice Pick', 'ice-pick', '2012-10-12 21:58:30', '2013-02-23 00:15:05', '2f77372c-b85d-48e3-b6ce-0dc543f22817'), ('95', '97', '3', 'en_us', 'Japanese Slipper', 'japanese-slipper', '2012-10-12 21:59:05', '2013-02-23 00:15:05', '9154f46d-87cd-4b9b-a116-6c497cfb50cd'), ('96', '98', '3', 'en_us', 'John Collins', 'john-collins', '2012-10-12 21:59:42', '2013-02-23 00:15:05', '45138db1-086a-473d-9355-42dab1126c88'), ('97', '99', '3', 'en_us', 'Kamikaze', 'kamikaze', '2012-10-12 22:00:15', '2013-02-23 00:15:05', '594ed41b-85eb-46a8-83ff-1ba29034a9b4'), ('98', '100', '3', 'en_us', 'Kir', 'kir', '2012-10-12 22:01:12', '2013-02-23 00:15:05', '6266e290-180a-45db-9396-947c41d8225b'), ('99', '101', '3', 'en_us', 'Kir Royale', 'kir-royale', '2012-10-12 22:01:49', '2013-02-23 00:15:05', 'b2530261-557d-4359-900b-38d3dbe57811'), ('100', '102', '3', 'en_us', 'Long Island Iced Tea', 'long-island-iced-tea', '2012-10-12 22:03:44', '2013-02-24 04:22:10', '6708bdbf-bb3f-475a-ac72-5790d3ff50a7'), ('101', '103', '3', 'en_us', 'Manhattan', 'manhattan', '2012-10-12 22:04:11', '2013-02-23 00:15:05', '7414c1a4-d57e-495a-a2e2-3b8d8215925b'), ('102', '104', '3', 'en_us', 'Margarita', 'margarita', '2012-10-12 22:04:59', '2013-02-23 00:15:05', '74d53aa6-d8c9-43f7-b9d5-2688ddc97257'), ('103', '105', '3', 'en_us', 'Martini', 'martini', '2012-10-12 22:05:37', '2013-02-23 00:15:05', '7cc1876d-7faa-4a1b-9a62-efbc2cca4261'), ('104', '106', '3', 'en_us', 'Negroni', 'negroni', '2012-10-12 22:06:23', '2013-02-23 00:15:05', '7f20f957-0eff-43e6-afd8-31990b88a979'), ('105', '107', '3', 'en_us', 'Piña Colada', 'pina-colada', '2012-10-12 22:09:45', '2013-02-23 00:15:05', 'b3ff49aa-c118-4bbf-a3bb-2920bbdb23bb'), ('106', '108', '3', 'en_us', 'Porto Flip', 'porto-flip', '2012-10-12 22:10:36', '2013-02-23 00:15:05', 'ebda5dd5-8883-4d40-b2e4-b9710ccb48ba'), ('107', '109', '3', 'en_us', 'Rob Roy', 'rob-roy', '2012-10-12 22:11:13', '2013-02-23 00:15:05', '884ad7b6-112e-46ec-8ae9-5ed8e36ae780'), ('108', '110', '3', 'en_us', 'Rusty Nail', 'rusty-nail', '2012-10-12 22:11:45', '2013-02-23 00:15:05', '1574c016-85a3-401c-920a-01bb564fb987'), ('109', '111', '3', 'en_us', 'Salty Dog', 'salty-dog', '2012-10-12 22:12:40', '2013-02-23 00:15:05', '33324a7e-0178-4ca6-8d8d-849729c7429c'), ('110', '112', '3', 'en_us', 'Screwdriver', 'screwdriver', '2012-10-12 22:13:28', '2013-02-23 00:15:05', '14d73f54-04b9-4bf4-9ce3-ee0870f97f14'), ('111', '113', '3', 'en_us', 'Sex on the Beach', 'sex-on-the-beach', '2012-10-12 22:14:54', '2013-02-23 00:15:05', 'ef9d08fc-15fa-42d8-a6a8-451ff95eca7e'), ('112', '114', '3', 'en_us', 'Singapore Sling', 'singapore-sling', '2012-10-12 22:16:38', '2013-02-23 00:15:05', 'bc90beda-0b5f-4418-b0c9-2fcb780ccfa3'), ('113', '115', '3', 'en_us', 'Tequila Sunrise', 'tequila-sunrise', '2012-10-12 22:17:49', '2013-02-23 00:15:05', 'f801c7b9-6727-4336-abe7-7284e82f56de'), ('114', '116', '3', 'en_us', 'Whiskey Sour', 'whiskey-sour', '2012-10-12 22:18:43', '2013-02-23 00:15:05', '6b8f5d1f-67bd-45ea-b50e-b1ae9492997b'), ('115', '117', '3', 'en_us', 'White Russian', 'white-russian', '2012-10-12 22:20:52', '2013-02-23 00:15:05', '8cf40d00-81d0-4417-9cb0-47733413e3c6'), ('116', '118', '2', 'en_us', 'Beer', 'beer', '2012-10-12 23:30:51', '2013-03-19 22:28:03', '88269504-0125-4bf0-96ac-767189ba43b9'), ('117', '119', '2', 'en_us', 'Irish Whiskey', 'irish-whiskey', '2012-10-12 23:31:51', '2013-03-19 23:01:33', '48297068-7ba6-4a26-b33c-6267a7c6aec1'), ('118', '120', '2', 'en_us', 'Red Wine', 'red-wine', '2012-10-12 23:33:52', '2013-03-19 23:02:33', '3be1a4d4-9ec5-4e09-8c71-79e0606891d1'), ('119', '121', '2', 'en_us', 'Espresso', 'espresso', '2012-10-12 23:35:05', '2013-03-19 22:29:37', 'b1f014a0-7854-4860-be6e-727ee282f94b'), ('120', '122', '3', 'en_us', 'Espresso Martini', 'espresso-martini', '2012-10-12 23:40:47', '2013-03-19 22:56:22', 'd17992d1-3173-4718-8e26-132d89576a89'), ('121', '123', '3', 'en_us', 'Mojito', 'mojito', '2012-10-12 23:42:22', '2013-03-19 22:59:51', '700addfe-9ece-460b-b23b-6e099486587a'), ('122', '124', '3', 'en_us', 'Midori Splice', 'midori-splice', '2012-10-12 23:43:37', '2013-03-19 23:03:37', 'b7ea1d29-9dc1-4b22-999a-bae53317cc9c'), ('123', '125', '3', 'en_us', 'Mai Kai Martini', 'mai-kai-martini', '2012-10-14 17:17:45', '2013-03-19 22:57:58', 'eb22b644-7e95-4109-a6c5-3f92a38b1094'), ('129', '184', '3', 'en_us', 'Gin and Tonic', 'gin-and-tonic', '2013-03-19 22:57:24', '2013-03-19 23:28:54', '16857f5c-25ea-4bca-9503-2e3b4974a697');
COMMIT;

-- ----------------------------
--  Table structure for `craft_entrydrafts`
-- ----------------------------
DROP TABLE IF EXISTS `craft_entrydrafts`;
CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entrydrafts_locale_fk` (`locale`),
  KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`),
  CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `craft_entrytags`
-- ----------------------------
DROP TABLE IF EXISTS `craft_entrytags`;
CREATE TABLE `craft_entrytags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(10) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_entrytags_name_unq_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `craft_entrytags_entries`
-- ----------------------------
DROP TABLE IF EXISTS `craft_entrytags_entries`;
CREATE TABLE `craft_entrytags_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagId` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrytags_entries_tagId_fk` (`tagId`),
  KEY `craft_entrytags_entries_entryId_fk` (`entryId`),
  CONSTRAINT `craft_entrytags_entries_tagId_fk` FOREIGN KEY (`tagId`) REFERENCES `craft_entrytags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrytags_entries_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `craft_entryversions`
-- ----------------------------
DROP TABLE IF EXISTS `craft_entryversions`;
CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entryversions_locale_fk` (`locale`),
  KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`),
  CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `craft_fieldgroups`
-- ----------------------------
DROP TABLE IF EXISTS `craft_fieldgroups`;
CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_fieldgroups`
-- ----------------------------
BEGIN;
INSERT INTO `craft_fieldgroups` VALUES ('1', 'Homepage', '2013-02-23 00:15:02', '2013-03-19 23:12:05', '00e72c35-11d0-4115-b325-708aa052a3ee'), ('3', 'Blog', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '323e3656-657b-46be-a23b-f7fe75633b8e'), ('5', 'Drinks', '2013-02-23 00:15:05', '2013-03-19 23:16:48', 'ddaf27c8-48e7-429b-ad53-e2beb14bb540'), ('7', 'Assets', '2013-02-23 00:15:06', '2013-02-23 00:15:06', '08fa8b8f-cdd9-44a7-ad0b-eff1ce9cecdb'), ('8', 'Globals', '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'ce487019-fff5-4fc9-b1b8-97d421790d24');
COMMIT;

-- ----------------------------
--  Table structure for `craft_fieldlayoutfields`
-- ----------------------------
DROP TABLE IF EXISTS `craft_fieldlayoutfields`;
CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) DEFAULT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`),
  CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_fieldlayoutfields`
-- ----------------------------
BEGIN;
INSERT INTO `craft_fieldlayoutfields` VALUES ('1', '1', null, '1', '0', '1', '2013-02-23 00:15:02', '2013-03-08 20:47:42', '4d5ac589-33b8-4844-9613-250723bec3c5'), ('2', '1', null, '2', '0', '2', '2013-02-23 00:15:02', '2013-03-08 20:47:42', '5185fe8a-a591-43ce-9a7b-27abec5e9b82'), ('4', '3', '3', '4', '0', '1', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '6aab327e-56f2-4694-8665-40864c74cf25'), ('5', '3', '3', '5', '1', '2', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '8fb6cf14-b1d7-43dc-baa9-ebb58ecd3b0b'), ('13', '7', null, '13', '0', '1', '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'c66f0e0e-03e3-476c-8340-0a8add58f647'), ('21', '10', '8', '10', '0', '1', '2013-02-24 06:01:31', '2013-02-24 06:01:31', '2bc78b0b-05ae-46ca-a218-66177334cba5'), ('22', '10', '8', '6', '0', '2', '2013-02-24 06:01:31', '2013-02-24 06:01:31', 'b8ca4c75-cbd1-4ff1-b6c2-be56ce1f61c3'), ('23', '11', '9', '8', '0', '1', '2013-03-19 23:16:18', '2013-03-19 23:16:18', '8db51c0a-bc66-4eb6-9e57-432060b71ef3'), ('24', '11', '9', '6', '0', '2', '2013-03-19 23:16:18', '2013-03-19 23:16:18', '335ae0ae-1cfe-43bd-b7ab-421f503cedf7'), ('25', '11', '9', '10', '0', '3', '2013-03-19 23:16:18', '2013-03-19 23:16:18', 'af3fe61b-64b9-42ff-b3e3-8efe7cb30679');
COMMIT;

-- ----------------------------
--  Table structure for `craft_fieldlayouts`
-- ----------------------------
DROP TABLE IF EXISTS `craft_fieldlayouts`;
CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_fieldlayouts`
-- ----------------------------
BEGIN;
INSERT INTO `craft_fieldlayouts` VALUES ('1', 'GlobalSet', '2013-02-23 00:15:02', '2013-03-08 20:47:42', 'ae287a3f-a10a-4cd6-8fab-2755c17d5147'), ('3', 'Entry', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '277af4b2-f280-4e70-ac62-8ca0961244ab'), ('7', 'GlobalSet', '2013-02-23 00:15:06', '2013-03-08 20:47:42', '7a35ce95-6141-4f56-8103-6442a687f48d'), ('10', 'Entry', '2013-02-24 06:01:31', '2013-02-24 06:01:31', '495a71e8-4b88-4f55-bf92-5a96a7b7714d'), ('11', 'Entry', '2013-03-19 23:16:18', '2013-03-19 23:16:18', 'e3e3a510-9849-451b-b5be-7956f64e218c');
COMMIT;

-- ----------------------------
--  Table structure for `craft_fieldlayouttabs`
-- ----------------------------
DROP TABLE IF EXISTS `craft_fieldlayouttabs`;
CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`),
  CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_fieldlayouttabs`
-- ----------------------------
BEGIN;
INSERT INTO `craft_fieldlayouttabs` VALUES ('3', '3', 'Content', '1', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '182ed9cc-f82c-4bb5-809e-580276484b2a'), ('8', '10', 'Content', '1', '2013-02-24 06:01:31', '2013-02-24 06:01:31', '4efd2fd3-be27-481c-b80a-518cbc8e39ff'), ('9', '11', 'Content', '1', '2013-03-19 23:16:18', '2013-03-19 23:16:18', 'a23aca56-dc18-40fa-8374-e7b4e4a41f0c');
COMMIT;

-- ----------------------------
--  Table structure for `craft_fields`
-- ----------------------------
DROP TABLE IF EXISTS `craft_fields`;
CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `handle` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fields_handle_unq_idx` (`handle`),
  KEY `craft_fields_groupId_fk` (`groupId`),
  CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_fields`
-- ----------------------------
BEGIN;
INSERT INTO `craft_fields` VALUES ('1', '1', 'Heading', 'heading', '', '0', 'PlainText', '{\"hint\":\"Enter text\\u2026\",\"maxLength\":\"\",\"maxLengthUnit\":\"words\",\"initialRows\":\"4\"}', '2013-02-23 00:15:02', '2013-02-23 00:15:02', '7cab3a97-c808-41d8-932d-b0745696a718'), ('2', '1', 'Site Intro', 'siteIntro', '', '0', 'RichText', '{\"minHeight\":\"100\"}', '2013-02-23 00:15:02', '2013-02-23 00:15:02', '1f743a26-7704-41aa-84f5-65086252a93e'), ('4', '3', 'Summary', 'summary', '', '0', 'RichText', '{\"minHeight\":\"100\"}', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '2cbc38b4-0d32-4499-a86a-6d383649ee46'), ('5', '3', 'Body', 'body', 'This is what shows up on the main entry page.', '1', 'RichText', '{\"minHeight\":\"200\"}', '2013-02-23 00:15:05', '2013-02-23 00:15:05', '3dec8c6e-98ac-4d94-921f-e835dda41186'), ('6', '5', 'Photos', 'photos', '', '0', 'Links', '{\"criteriaId\":\"9\",\"addLabel\":\"Add Photos\",\"removeLabel\":\"Remove Photos\",\"limit\":\"12\"}', '2013-02-23 00:15:05', '2013-03-19 23:16:59', 'a17a43e8-e563-4269-bdfe-1a509ab3c2b7'), ('8', '5', 'Ingredients', 'ingredients', 'Select the ingredients in this cocktail.', '0', 'Links', '{\"addLabel\":\"Add Ingredients\",\"removeLabel\":\"Remove Ingredients\",\"limit\":\"\",\"reverseHandle\":\"\",\"criteriaId\":\"5\"}', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'aea29374-87b5-4994-920a-9788be303402'), ('10', '5', 'Description', 'description', '', '0', 'RichText', '{\"minHeight\":\"100\"}', '2013-02-23 00:15:05', '2013-02-23 00:15:05', 'cde26465-debe-497a-b43f-397e7e1b4b21'), ('13', '8', 'Meta Description', 'metaDescription', '', '0', 'PlainText', '{\"hint\":\"Enter text\\u2026\",\"maxLength\":\"\",\"maxLengthUnit\":\"words\",\"multiline\":\"1\",\"initialRows\":\"4\"}', '2013-02-23 00:15:06', '2013-02-23 00:15:06', 'c56b7915-be54-4f12-ac78-fb1cf2bd1bb7');
COMMIT;

-- ----------------------------
--  Table structure for `craft_globalsets`
-- ----------------------------
DROP TABLE IF EXISTS `craft_globalsets`;
CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `handle` char(45) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_globalsets`
-- ----------------------------
BEGIN;
INSERT INTO `craft_globalsets` VALUES ('1', 'Homepage', 'homepage', '1', '2013-03-08 20:47:42', '2013-03-08 20:47:42', '1c4f6c49-9d59-42b3-96d2-b555df2dc4ee'), ('157', 'Globals', 'globals', '7', '2013-03-08 20:47:42', '2013-03-08 20:47:42', '8201dee6-970f-4ac7-bbeb-95a652789a6c');
COMMIT;

-- ----------------------------
--  Table structure for `craft_info`
-- ----------------------------
DROP TABLE IF EXISTS `craft_info`;
CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `build` int(11) unsigned NOT NULL,
  `packages` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `releaseDate` datetime NOT NULL,
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_info`
-- ----------------------------
BEGIN;
INSERT INTO `craft_info` VALUES ('1', '0.9', '2194', 'PublishPro,Users', '2013-03-19 02:30:50', 'On the Rocks', 'http://ontherocks.dev', '1', '0', '1970-01-01 00:33:32', '2013-03-19 23:09:30', '9915844a-dd8c-4227-80a7-ef05f5c7572c');
COMMIT;

-- ----------------------------
--  Table structure for `craft_linkcriteria`
-- ----------------------------
DROP TABLE IF EXISTS `craft_linkcriteria`;
CREATE TABLE `craft_linkcriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ltrHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rtlHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leftElementType` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `rightElementType` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `leftSettings` text COLLATE utf8_unicode_ci,
  `rightSettings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_linkcriteria_ltrHandle_idx` (`ltrHandle`),
  KEY `craft_linkcriteria_rtlHandle_idx` (`rtlHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_linkcriteria`
-- ----------------------------
BEGIN;
INSERT INTO `craft_linkcriteria` VALUES ('5', 'ingredients', null, 'Entry', 'Entry', null, '{\"sectionId\":[\"2\"]}', '2012-12-10 15:47:22', '2012-12-10 15:47:22', '303e477a-c600-45e0-a717-5dcc7ae4a03f'), ('9', 'photos', null, 'Field', 'Asset', '[]', '{\"sourceId\":[\"1\"]}', '2012-12-21 19:05:40', '2013-03-19 23:16:59', 'acae0010-641b-42bf-a024-3bfd365de271');
COMMIT;

-- ----------------------------
--  Table structure for `craft_links`
-- ----------------------------
DROP TABLE IF EXISTS `craft_links`;
CREATE TABLE `craft_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `criteriaId` int(11) NOT NULL,
  `leftElementId` int(11) NOT NULL,
  `rightElementId` int(11) NOT NULL,
  `leftSortOrder` tinyint(4) DEFAULT NULL,
  `rightSortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_links_criteriaId_leftElementId_rightElementId_unq_idx` (`criteriaId`,`leftElementId`,`rightElementId`),
  KEY `craft_links_leftElementId_fk` (`leftElementId`),
  KEY `craft_links_rightElementId_fk` (`rightElementId`),
  CONSTRAINT `craft_links_criteriaId_fk` FOREIGN KEY (`criteriaId`) REFERENCES `craft_linkcriteria` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_links_leftElementId_fk` FOREIGN KEY (`leftElementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_links_rightElementId_fk` FOREIGN KEY (`rightElementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_links`
-- ----------------------------
BEGIN;
INSERT INTO `craft_links` VALUES ('302', '5', '111', '51', null, '1', '2012-12-10 15:48:48', '2013-02-23 00:15:04', 'f5bb059e-1988-45f1-a606-ede1b982c5e6'), ('303', '5', '111', '39', null, '3', '2012-12-10 15:48:48', '2013-02-23 00:15:04', '5735b391-19da-49c7-a3d5-a9fe5602d318'), ('307', '5', '117', '39', null, '2', '2012-12-11 12:38:09', '2013-02-23 00:15:04', '44555d40-eb07-447d-b46a-acd98960a2ef'), ('330', '5', '78', '9', null, '1', '2013-03-19 22:54:49', '2013-03-19 22:54:49', 'dec63f60-01c3-440a-9fdf-fd602aa73dbe'), ('331', '5', '78', '56', null, '1', '2013-03-19 22:54:49', '2013-03-19 22:54:49', 'ba768a7a-195b-431c-b08f-91091de4ef0a'), ('334', '5', '122', '121', null, '1', '2013-03-19 22:56:22', '2013-03-19 22:56:22', 'b196485b-f384-4511-8fa8-6bb51da12129'), ('342', '5', '125', '13', null, '1', '2013-03-19 22:57:58', '2013-03-19 22:57:58', 'b5726dc2-9eb3-41a1-8d3e-976e0fc2aef2'), ('345', '5', '123', '11', null, '1', '2013-03-19 22:59:51', '2013-03-19 22:59:51', '1d260583-eeff-4440-bbf5-0f2f6df7af6b'), ('346', '5', '123', '55', null, '1', '2013-03-19 22:59:51', '2013-03-19 22:59:51', '2e94a93f-085a-486c-a490-07808756474f'), ('347', '5', '123', '59', null, '1', '2013-03-19 22:59:51', '2013-03-19 22:59:51', '011f502f-c20d-4da1-b40b-9d33871ae787'), ('359', '5', '124', '39', null, '1', '2013-03-19 23:03:37', '2013-03-19 23:03:37', '97524b1e-3376-492e-9a97-5bafd5b139dc'), ('381', '5', '184', '26', null, '2', '2013-03-19 23:28:54', '2013-03-19 23:28:54', '3343eb84-c66d-47b7-a53d-634688db9176'), ('382', '5', '184', '63', null, '3', '2013-03-19 23:28:54', '2013-03-19 23:28:54', 'b9758871-5ade-4ece-99db-431c6afe256a'), ('383', '9', '184', '167', null, '2', '2013-03-19 23:28:54', '2013-03-19 23:28:54', '1c6cb986-c8e0-408a-a476-65d9288cacff'), ('384', '9', '184', '168', null, '3', '2013-03-19 23:28:54', '2013-03-19 23:28:54', 'bf6a71e4-a6d6-4c63-a052-d04fc5073229'), ('385', '9', '184', '169', null, '4', '2013-03-19 23:28:54', '2013-03-19 23:28:54', 'd747db9d-f774-4ac8-9c24-8057a7ba7e01');
COMMIT;

-- ----------------------------
--  Table structure for `craft_locales`
-- ----------------------------
DROP TABLE IF EXISTS `craft_locales`;
CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `craft_locales`
-- ----------------------------
BEGIN;
INSERT INTO `craft_locales` VALUES ('en_us', '1', '2013-02-23 00:15:01', '2013-02-23 00:15:01', '626ac316-2b76-4c36-9fd2-44fdf90a44d7');
COMMIT;

-- ----------------------------
--  Table structure for `craft_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `craft_migrations`;
CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  KEY `craft_migrations_pluginId_fk` (`pluginId`),
  CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_migrations`
-- ----------------------------
BEGIN;
INSERT INTO `craft_migrations` VALUES ('1', null, 'm000000_000000_base', '2012-12-01 06:30:04', '2012-12-01 06:30:04', '2012-12-01 06:30:04', '631aba67-769f-4d7e-858f-1e0390fbaff1');
COMMIT;

-- ----------------------------
--  Table structure for `craft_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `craft_plugins`;
CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `craft_routes`
-- ----------------------------
DROP TABLE IF EXISTS `craft_routes`;
CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_routes_urlPattern_unq_idx` (`urlPattern`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `craft_sections`
-- ----------------------------
DROP TABLE IF EXISTS `craft_sections`;
CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `handle` char(45) COLLATE utf8_unicode_ci NOT NULL,
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Title',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  KEY `craft_sections_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_sections_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_sections`
-- ----------------------------
BEGIN;
INSERT INTO `craft_sections` VALUES ('1', 'Blog', 'blog', 'Title', '1', 'blog/_entry', '3', '2012-10-12 19:24:30', '2013-02-23 00:15:05', 'c651e939-5d0b-4bdb-bc0d-9c372389eafc'), ('2', 'Ingredients', 'ingredients', 'Title', '1', 'ingredients/_entry', '10', '2012-10-12 19:25:06', '2013-02-24 06:01:31', '3699243a-bb14-4059-ae3f-595a6d476b24'), ('3', 'Cocktails', 'cocktails', 'Title', '1', 'cocktails/_entry', '11', '2012-10-12 19:26:20', '2013-03-19 23:16:18', '3516f9f0-262a-4682-9fcd-077757fc22da');
COMMIT;

-- ----------------------------
--  Table structure for `craft_sections_i18n`
-- ----------------------------
DROP TABLE IF EXISTS `craft_sections_i18n`;
CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  KEY `craft_sections_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_sections_i18n`
-- ----------------------------
BEGIN;
INSERT INTO `craft_sections_i18n` VALUES ('1', '1', 'en_us', 'blog/{slug}', '2013-02-23 00:15:02', '2013-02-23 00:15:02', '80d68b73-9872-4e44-853f-f56f7520ccf5'), ('2', '2', 'en_us', 'ingredients/{slug}', '2013-02-23 00:15:02', '2013-02-23 00:15:02', '0cd6f153-303b-4383-a9bc-26db689581ce'), ('3', '3', 'en_us', 'cocktails/{slug}', '2013-02-23 00:15:02', '2013-02-23 00:15:02', 'f79bb555-4c2e-48af-8714-66d82409348b');
COMMIT;

-- ----------------------------
--  Table structure for `craft_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `craft_sessions`;
CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_fk` (`userId`),
  CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_sessions`
-- ----------------------------
BEGIN;
INSERT INTO `craft_sessions` VALUES ('26', '130', '$2a$08$MiuvYdbvTQN5dGtiDYA91e0CifsiV.y66M9nBa1b5rDLZBOPoJGSW', '2013-03-19 23:46:24', '2013-03-19 23:46:24', 'efd47a9b-baf5-4a83-a0e7-64553b763414');
COMMIT;

-- ----------------------------
--  Table structure for `craft_systemsettings`
-- ----------------------------
DROP TABLE IF EXISTS `craft_systemsettings`;
CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_systemsettings`
-- ----------------------------
BEGIN;
INSERT INTO `craft_systemsettings` VALUES ('1', 'email', '{\"protocol\":\"php\",\"emailAddress\":\"support@buildwithcraft.com\",\"senderName\":\"On the Rocks\",\"template\":\"\"}', '2012-10-12 19:24:30', '2013-03-19 23:08:02', '9dd1f5ee-4f0b-4676-bd73-a794c652a288'), ('2', 'users', '{\"allowPublicRegistration\":true}', '2013-03-19 23:46:34', '2013-03-19 23:46:34', 'e0b084c0-e090-42cd-9ab7-f1bdb2797c1c');
COMMIT;

-- ----------------------------
--  Table structure for `craft_usergroups`
-- ----------------------------
DROP TABLE IF EXISTS `craft_usergroups`;
CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `handle` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `craft_usergroups_users`
-- ----------------------------
DROP TABLE IF EXISTS `craft_usergroups_users`;
CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_fk` (`userId`),
  CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `craft_userpermissions`
-- ----------------------------
DROP TABLE IF EXISTS `craft_userpermissions`;
CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `craft_userpermissions_usergroups`
-- ----------------------------
DROP TABLE IF EXISTS `craft_userpermissions_usergroups`;
CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`),
  CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `craft_userpermissions_users`
-- ----------------------------
DROP TABLE IF EXISTS `craft_userpermissions_users`;
CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_fk` (`userId`),
  CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `craft_users`
-- ----------------------------
DROP TABLE IF EXISTS `craft_users`;
CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encType` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailFormat` enum('text','html') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` enum('locked','suspended','pending','active','archived') COLLATE utf8_unicode_ci DEFAULT 'pending',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_preferredLocale_fk` (`preferredLocale`),
  CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_users`
-- ----------------------------
BEGIN;
INSERT INTO `craft_users` VALUES ('130', 'admin', null, '', '', 'support@buildwithcraft.com', '$2a$08$4YI.LHEoHtlNxlM4KEClD.8Ovw/RKHl8AKvrO9XdTd./5eWTyIcjO', 'blowfish', 'en_us', 'html', '1', 'active', '2013-03-19 23:46:24', '127.0.0.1', null, null, '2013-03-19 23:37:45', '2013-03-19 23:37:29', null, null, '0', '2012-10-14 06:06:43', '2012-10-14 06:06:43', '2013-03-19 23:46:24', '0d9c0018-3dc3-47c0-b102-7ae94c061c52');
COMMIT;

-- ----------------------------
--  Table structure for `craft_widgets`
-- ----------------------------
DROP TABLE IF EXISTS `craft_widgets`;
CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_fk` (`userId`),
  CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `craft_widgets`
-- ----------------------------
BEGIN;
INSERT INTO `craft_widgets` VALUES ('6', '130', 'QuickPost', '3', '{\"section\":\"3\",\"fields\":[\"8\"]}', '2012-10-15 14:09:01', '2013-03-19 23:39:22', 'fea9448e-f77d-40f2-a2e2-023ad9e4b767'), ('7', '130', 'QuickPost', '2', '{\"section\":\"2\",\"fields\":[\"10\"]}', '2012-10-15 14:10:39', '2013-03-19 23:39:22', '0f20af75-4767-48b4-bdde-229f0428824a'), ('8', '130', 'RecentEntries', '4', '{\"section\":\"*\",\"limit\":\"5\"}', '2012-10-15 14:10:53', '2013-03-19 23:39:22', '6659c4e2-65f4-4229-8d8d-8d0896b0a124'), ('10', '130', 'Updates', '1', '[]', '2012-12-11 12:06:00', '2013-03-19 23:39:22', '90543902-8355-4b6d-a6ff-865d3bd9546e');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
