--
-- Table structure for table `#__sexy_forms`
--
CREATE TABLE IF NOT EXISTS `#__sexy_forms` (
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
) ENGINE=MyISAM CHARACTER SET = `utf8`;

--
-- Dumping data for table `#__sexy_forms`
--

INSERT IGNORE INTO `#__sexy_forms` (`id`, `shake_count`, `shake_distanse`, `shake_duration`, `id_template`, `name`, `top_text`, `pre_text`, `thank_you_text`, `send_text`, `send_new_text`, `published`) VALUES
(1, 3, 10, 300, 1, 'Contact Form Example', 'Contact Us', 'Contact us, if you have any questions', 'Message successfully sent', 'Send', 'New email', 1);


--
-- Table structure for table `#__sexy_fields`
--

CREATE TABLE IF NOT EXISTS `#__sexy_fields` (
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
) ENGINE=MyISAM CHARACTER SET = `utf8`;

--
-- Dumping data for table `#__sexy_fields`
--

INSERT IGNORE INTO `#__sexy_fields` (`id`, `id_form`, `name`, `id_type`, `published`, `ordering`, `required`) VALUES
(1, 1, 'Name', 3, 1, 1, '1'),
(2, 1, 'Email', 4, 1, 2, '0'),
(3, 1, 'Phone', 6, 1, 3, '0'),
(4, 1, 'Website', 8, 1, 4, '0'),
(5, 1, 'Message', 2, 1, 5, '1');

--
-- Table structure for table `#__sexy_field_types`
--

CREATE TABLE IF NOT EXISTS `#__sexy_field_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM CHARACTER SET = `utf8`;

--
-- Dumping data for table  `#__sexy_field_types`
--

INSERT IGNORE INTO `#__sexy_field_types` (`id`, `name`) VALUES
(1, 'Simple Text'),
(2, 'Text Area'),
(3, 'Name'),
(4, 'E-mail'),
(5, 'Address'),
(6, 'Phone'),
(7, 'Number'),
(8, 'Url');

--
-- Table structure for table `#__contact_templates`
--

CREATE TABLE IF NOT EXISTS `#__contact_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM CHARACTER SET = `utf8`;

--
-- Dumping data for table  `#__contact_templates`
--

INSERT IGNORE INTO `#__contact_templates` (`id`, `name`) VALUES
(1, 'Gray'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Red'),
(5, 'Orange'),
(6, 'Poison Green');