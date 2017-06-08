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
-- Dumping data for table `engine4_core_modules`
--

INSERT IGNORE INTO `engine4_core_modules` (`name`, `title`, `description`, `version`, `enabled`, `type`) VALUES ('guest', 'Guests', 'Guests', '4.0.0', 1, 'extra');