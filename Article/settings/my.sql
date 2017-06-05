--
-- Table structure for table `engine4_article_articles`
--

DROP TABLE IF EXISTS `engine4_article_articles`;
CREATE TABLE `engine4_article_articles` (
  `article_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `views` int(11) unsigned NOT NULL default '0',
  `comment_count` int(11) unsigned NOT NULL default '0',
    PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;


--
-- Dumping data for table `engine_core4_menus`
--

INSERT IGNORE INTO `engine4_core_menus` (`name`, `type`, `title`) VALUES
('article_quick', 'standard', 'Article Quick Navigation Menu');

-- ------------------------------------------------

--
-- Dumping data for table `engine4_core_menuitems`
--

INSERT IGNORE INTO `engine4_core_menuitems` (`name`, `module`, `label`, `plugin`, `params`, `menu`, `submenu`, `order`) VALUES
  ('core_main_article', 'article', 'Articles', '', '{"route":"browse-articles"}', 'core_main', '', 999),

  ('article_main_browse', 'article', 'Browse Articles', 'Article_Plugin_Menus::canViewArticles', '{"route":"article_home"}', 'article_main', '', 1),

  ('article_main_manage', 'article', 'My Articles', 'Article_Plugin_Menus::canCreateArticles', '{"route":"article_manage","module":"article","controller":"index","action":"manage"}', 'article_main', '', 2),

  ('article_photos_list', 'article', 'View Photos', 'Article_Plugin_Menus', '{"route":"article_extended","controller":"photo","action":"list","class":"buttonlink icon_article_photos_list"}', 'article_photos', '', 1),

  ('article_photos_manage', 'article', 'Manage Photos', 'Article_Plugin_Menus', '{"route":"article_extended","controller":"photo","action":"manage","class":"buttonlink icon_article_photos_manage"}', 'article_photos', '', 2),

  ('article_photos_upload', 'article', 'Upload Photos', 'Article_Plugin_Menus', '{"route":"article_extended","controller":"photo","action":"upload","class":"buttonlink icon_article_photos_upload"}', 'article_photos', '', 3),

  ('article_main_create', 'article', 'Post New Article', 'Article_Plugin_Menus::canCreateArticles', '{"route":"article_create","module":"article","controller":"index","action":"create"}', 'article_quick', '', 3),

  ('quick_menu_article_new', 'core', 'Write Article', '', '{"uri":"create-article","icon":""}', 'article_quick', '', 3),
  ('quick_menu_article_manage', 'core', 'My Articles', '', '{"uri":"my-articles","icon":""}', 'article_quick', '', 2),
  ('quick_menu_article_browse', 'core', 'Browse Articles', '', '{"uri":"browse-articles","icon":""}', 'article_quick', '', 1),

  ('article_tab_comments', 'article', 'Comments', 'Apptouch_Plugin_Tabs', '', 'article_tab', '', 1),

  ('article_tab_details', 'article', 'Details', 'Apptouch_Plugin_Tabs', '', 'article_tab', '', 2),

  ('article_tab_photos', 'article', 'Photos', 'Apptouch_Plugin_Tabs', '', 'article_tab', '', 3),

  ('core_dashboard_article', 'article', 'Articles', '', '{"route":"article_home"}', 'core_dashboard', '', 9),

  ('article_admin_main_manage', 'article', 'View Articles', '', '{"route":"admin_default","module":"article","controller":"manage"}', 'article_admin_main', '', 1),

  ('core_admin_main_plugins_article', 'article', 'Articles', '', '{"route":"admin_default","module":"article","controller":"manage"}', 'core_admin_main_plugins', '', 999),

  ('user_tab_articles', 'article', 'Articles', 'Apptouch_Plugin_Tabs', '', 'user_tab', '', 15);

-- ---------------

--
-- Dumping data for table `engine4_activity_actiontypes`
--

INSERT IGNORE INTO `engine4_activity_actiontypes` (`type`, `module`, `body`, `enabled`, `displayable`, `attachable`, `commentable`, `shareable`, `is_generated`) VALUES
('article_new', 'article', '{item:$subject} wrote a new article:', 1, 5, 1, 3, 1, 1),
('comment_article', 'article', '{item:$subject} commented on {item:$owner}''s {item:$object:article entry}: {body:$body}', 1, 1, 1, 1, 1, 0);

-- ---------------------------

--
-- Dumping data for table `engine4_activity_mailtemplates`
--

INSERT IGNORE INTO `engine4_core_mailtemplates` (`type`, `module`, `vars`) VALUES
('article_message_new', 'article', '[sender],[title],[body]');

-- --------------------------------

--
-- Dumping data for table `engine4_authorization_premissions`
--

-- All
-- auth_view, auth_comment, auth_html
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'auth_view' as `name`,
    5 as `value`,
    '["everyone","owner_network","owner_member_member","owner_member","owner"]' as `params`
  FROM `engine4_authorization_levels` WHERE `type` NOT IN('public');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'auth_comment' as `name`,
    5 as `value`,
    '["everyone","owner_network","owner_member_member","owner_member","owner"]' as `params`
  FROM `engine4_authorization_levels` WHERE `type` NOT IN('public');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'auth_html' as `name`,
    3 as `value`,
    'strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe' as `params`
  FROM `engine4_authorization_levels` WHERE `type` NOT IN('public');

-- Admin, Moderator
-- create, delete, edit, view, comment, css, style, max
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'create' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'delete' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'edit' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'view' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'comment' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'style' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'max' as `name`,
    3 as `value`,
    1000 as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');

-- User
-- create, delete, edit, view, comment, css, style, max
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'create' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'delete' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'edit' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'view' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'comment' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'style' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');

INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'max' as `name`,
    3 as `value`,
    50 as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');


-- Public
-- view
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'article' as `type`,
    'view' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('public');