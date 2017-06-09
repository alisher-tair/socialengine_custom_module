--
-- Table structure for table `engine4_guest_guests`
--

DROP TABLE IF EXISTS `engine4_guest_guests`;
CREATE TABLE `engine4_guest_guests` (
  `guest_id` int(11) unsigned NOT NULL auto_increment,
  `visitor_id` int(11) unsigned NOT NULL,
  `viewed_user_id` int(11) unsigned NOT NULL,
  `visit_date` datetime NOT NULL,
  `blocked` tinyint(1) NOT NULL default '0',
  `is_hidden` tinyint(1) NOT NULL default '0',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

--
-- Table structure for table `engine4_guest_blockedusers`
--

DROP TABLE IF EXISTS `engine4_guest_blockedusers`;
CREATE TABLE `engine4_guest_blockedusers` (
  `blockeduser_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `blocked_user_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`blockeduser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

--
-- Table structure for table `engine4_guest_settings`
--

DROP TABLE IF EXISTS `engine4_guest_settings`;
CREATE TABLE `engine4_guest_settings` (
  `settings_id` int(11) unsigned NOT NULL auto_increment,
  `guest_enabled` tinyint(1) NOT NULL default '1',
  `record_admin_enabled` tinyint(1) NOT NULL default '1',
  `blocking` tinyint(1) NOT NULL default '1',
  PRIMARY KEY (`settings_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

--
-- Table structure for table `engine4_guest_allow`
--

DROP TABLE IF EXISTS `engine4_guest_allow`;
CREATE TABLE `engine4_guest_allow` (
  `allow_id` int(11) unsigned NOT NULL auto_increment,
  `level_id` int(11) NOT NULL,
  `display_widgets_enabled` tinyint(1) NOT NULL default '1',
  `collect_data_enabled` tinyint(1) NOT NULL default '1',
  `guests_manage_enabled` tinyint(1) NOT NULL default '1',
  PRIMARY KEY (`allow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

--
-- Dumping data for table `engine4_guest_settings`
--

INSERT IGNORE INTO `engine4_guest_settings`(`guest_enabled`,`record_admin_enabled`,`blocking`) VALUES (1,1,1);

--
-- Dumping data for table `engine4_core_modules`
--

INSERT IGNORE INTO `engine4_core_modules` (`name`, `title`, `description`, `version`, `enabled`, `type`) VALUES ('guest', 'Guests', 'Guests', '4.0.0', 1, 'extra');

--
-- Dumping data for table engine4_core_menuitems
--

INSERT IGNORE INTO `engine4_core_menuitems` (`name`, `module`, `label`, `plugin`, `params`, `menu`, `submenu`, `order`) VALUES
  ('guest_admin_main_settings', 'guest', 'Global Settings', '', '{"route":"admin_default","module":"guest","controller":"index","action":"index"}', 'guest_admin_main', '', 1),

  ('guest_admin_main_levels', 'guest', 'Levels Settings', '', '{"route":"admin_default","module":"guest","controller":"index","action":"levels"}', 'guest_admin_main', '', 2),

  ('core_admin_main_plugins_guest', 'guest', 'HE - Guests', '', '{"route":"admin_default","module":"guest","controller":"index"}', 'core_admin_main_plugins', '', 999);