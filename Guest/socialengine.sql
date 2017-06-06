-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 06 2017 г., 11:31
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `socialengine`
--

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_activity_actions`
--

CREATE TABLE `engine4_activity_actions` (
  `action_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `subject_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subject_id` int(11) UNSIGNED NOT NULL,
  `object_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `object_id` int(11) UNSIGNED NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `date` datetime NOT NULL,
  `attachment_count` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `comment_count` mediumint(5) UNSIGNED NOT NULL DEFAULT '0',
  `like_count` mediumint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_activity_actions`
--

INSERT INTO `engine4_activity_actions` (`action_id`, `type`, `subject_type`, `subject_id`, `object_type`, `object_id`, `body`, `params`, `date`, `attachment_count`, `comment_count`, `like_count`) VALUES
(1, 'signup', 'user', 2, 'user', 2, '', '[]', '2017-05-22 03:45:05', 0, 0, 1),
(2, 'status', 'user', 2, 'user', 2, 'post something', '[]', '2017-05-22 03:45:18', 0, 0, 1),
(3, 'signup', 'user', 3, 'user', 3, '', '[]', '2017-05-22 03:54:06', 0, 0, 1),
(4, 'blog_new', 'user', 1, 'blog', 1, '', '[]', '2017-05-22 03:56:10', 1, 0, 0),
(5, 'group_create', 'user', 3, 'group', 1, '', '[]', '2017-05-22 04:08:42', 1, 0, 0),
(6, 'group_join', 'user', 1, 'group', 1, '', '[]', '2017-05-22 04:09:16', 0, 0, 0),
(7, 'event_create', 'user', 1, 'event', 1, '', '[]', '2017-05-22 04:11:53', 1, 0, 1),
(8, 'post', 'user', 1, 'event', 1, 'new event', '[]', '2017-05-22 04:12:04', 0, 0, 1),
(9, 'profile_photo_update', 'user', 1, 'user', 1, '{item:$subject} added a new profile photo.', '[]', '2017-05-22 05:31:25', 1, 0, 1),
(11, 'comment_blog', 'user', 3, 'blog', 1, '', '{"owner":"user_1","body":"comment"}', '2017-05-22 07:33:29', 0, 0, 0),
(12, 'friends', 'user', 3, 'user', 1, '{item:$object} is now friends with {item:$subject}.', '[]', '2017-05-22 07:34:43', 0, 0, 0),
(13, 'friends', 'user', 1, 'user', 3, '{item:$object} is now friends with {item:$subject}.', '[]', '2017-05-22 07:34:44', 0, 0, 0),
(14, 'video_new', 'user', 3, 'video', 2, '', '[]', '2017-05-22 07:44:24', 1, 0, 0),
(15, 'video_new', 'user', 3, 'video', 3, '', '[]', '2017-05-22 07:48:20', 1, 0, 0),
(16, 'blog_new', 'user', 1, 'blog', 2, '', '[]', '2017-05-26 05:03:43', 1, 0, 0),
(17, 'article_new', 'user', 1, 'article', 2, '', '[]', '2017-05-26 05:03:43', 1, 0, 0),
(18, 'comment_blog', 'user', 1, 'blog', 1, '', '{"owner":"user_1","body":"new comment"}', '2017-05-26 09:32:37', 0, 0, 0),
(19, 'article_new', 'user', 1, 'article', 38, '', '[]', '2017-05-26 10:14:34', 0, 0, 0),
(20, 'article_new', 'user', 1, 'article', 39, 'some info', '[]', '2017-05-26 10:16:00', 0, 0, 0),
(62, 'blog_new', 'user', 1, 'blog', 3, '', '[]', '2017-05-29 10:01:24', 1, 0, 0),
(69, 'article_new', 'user', 3, 'article', 135, '', '[]', '2017-05-29 11:03:12', 1, 0, 0),
(70, 'article_new', 'user', 3, 'article', 136, '', '[]', '2017-05-29 11:05:38', 1, 0, 0),
(71, 'comment_article', 'user', 3, 'article', 136, '', '{"owner":"user_3","body":"comment"}', '2017-05-29 11:08:14', 0, 0, 0),
(75, 'blog_new', 'user', 3, 'blog', 4, '', '[]', '2017-05-30 02:54:39', 1, 0, 0),
(76, 'comment_blog', 'user', 1, 'blog', 4, '', '{"owner":"user_3","body":"new comment"}', '2017-05-30 02:56:17', 0, 0, 0),
(77, 'signup', 'user', 4, 'user', 4, '', '[]', '2017-05-30 03:04:30', 0, 0, 0),
(78, 'signup', 'user', 5, 'user', 5, '', '[]', '2017-05-30 09:18:08', 0, 0, 0),
(79, 'article_new', 'user', 5, 'article', 139, '', '[]', '2017-05-30 09:20:53', 1, 0, 0),
(80, 'comment_article', 'user', 1, 'article', 139, '', '{"owner":"user_5","body":"new comment"}', '2017-05-31 02:26:12', 0, 0, 0),
(83, 'article_new', 'user', 1, 'article', 142, '', '[]', '2017-05-31 03:54:16', 1, 0, 0),
(84, 'article_new', 'user', 1, 'article', 143, '', '[]', '2017-05-31 03:56:16', 1, 0, 0),
(85, 'article_new', 'user', 1, 'article', 144, '', '[]', '2017-05-31 04:02:38', 1, 0, 0),
(86, 'article_new', 'user', 1, 'article', 145, '', '[]', '2017-05-31 04:04:27', 1, 0, 0),
(87, 'article_new', 'user', 1, 'article', 146, '', '[]', '2017-05-31 04:05:02', 1, 0, 0),
(88, 'signup', 'user', 6, 'user', 6, '', '[]', '2017-06-06 03:17:44', 0, 0, 0),
(89, 'signup', 'user', 7, 'user', 7, '', '[]', '2017-06-06 03:22:09', 0, 0, 0),
(90, 'signup', 'user', 8, 'user', 8, '', '[]', '2017-06-06 03:24:51', 0, 0, 0),
(91, 'signup', 'user', 9, 'user', 9, '', '[]', '2017-06-06 03:28:27', 0, 0, 0),
(92, 'signup', 'user', 10, 'user', 10, '', '[]', '2017-06-06 03:32:10', 0, 0, 0),
(93, 'signup', 'user', 11, 'user', 11, '', '[]', '2017-06-06 03:34:01', 0, 0, 0),
(94, 'signup', 'user', 12, 'user', 12, '', '[]', '2017-06-06 03:35:55', 0, 0, 0),
(95, 'signup', 'user', 13, 'user', 13, '', '[]', '2017-06-06 03:39:15', 0, 0, 0),
(96, 'signup', 'user', 14, 'user', 14, '', '[]', '2017-06-06 04:12:28', 0, 0, 0),
(97, 'signup', 'user', 15, 'user', 15, '', '[]', '2017-06-06 04:14:34', 0, 0, 0),
(98, 'signup', 'user', 16, 'user', 16, '', '[]', '2017-06-06 08:29:35', 0, 0, 0),
(99, 'signup', 'user', 17, 'user', 17, '', '[]', '2017-06-06 08:31:54', 0, 0, 0),
(100, 'signup', 'user', 18, 'user', 18, '', '[]', '2017-06-06 08:35:33', 0, 0, 0),
(101, 'signup', 'user', 19, 'user', 19, '', '[]', '2017-06-06 08:38:31', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_activity_actionsettings`
--

CREATE TABLE `engine4_activity_actionsettings` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_activity_actiontypes`
--

CREATE TABLE `engine4_activity_actiontypes` (
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `displayable` tinyint(1) NOT NULL DEFAULT '3',
  `attachable` tinyint(1) NOT NULL DEFAULT '1',
  `commentable` tinyint(1) NOT NULL DEFAULT '1',
  `shareable` tinyint(1) NOT NULL DEFAULT '1',
  `is_generated` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_activity_actiontypes`
--

INSERT INTO `engine4_activity_actiontypes` (`type`, `module`, `body`, `enabled`, `displayable`, `attachable`, `commentable`, `shareable`, `is_generated`) VALUES
('article_new', 'article', '{item:$subject} wrote a new article:', 1, 5, 1, 3, 1, 1),
('blog_new', 'blog', '{item:$subject} wrote a new blog entry:', 1, 5, 1, 3, 1, 1),
('comment_article', 'article', '{item:$subject} commented on {item:$owner}''s {item:$object:article entry}: {body:$body}', 1, 1, 1, 1, 1, 0),
('comment_blog', 'blog', '{item:$subject} commented on {item:$owner}''s {item:$object:blog entry}: {body:$body}', 1, 1, 1, 1, 1, 0),
('comment_classified_photo', 'apptouch', '{item:$subject} commented on {item:$owner}''s {item:$object:classified photo}: {body:$body}', 1, 7, 1, 1, 1, 1),
('comment_video', 'video', '{item:$subject} commented on {item:$owner}''s {item:$object:video}: {body:$body}', 1, 1, 1, 1, 1, 0),
('event_create', 'event', '{item:$subject} created a new event:', 1, 5, 1, 1, 1, 1),
('event_join', 'event', '{item:$subject} joined the event {item:$object}', 1, 3, 1, 1, 1, 1),
('event_photo_upload', 'event', '{item:$subject} added {var:$count} photo(s).', 1, 3, 2, 1, 1, 1),
('event_topic_create', 'event', '{item:$subject} posted a {item:$object:topic} in the event {itemParent:$object:event}: {body:$body}', 1, 3, 1, 1, 1, 1),
('event_topic_reply', 'event', '{item:$subject} replied to a {item:$object:topic} in the event {itemParent:$object:event}: {body:$body}', 1, 3, 1, 1, 1, 1),
('friends', 'user', '{item:$subject} is now friends with {item:$object}.', 1, 3, 0, 1, 1, 1),
('friends_follow', 'user', '{item:$subject} is now following {item:$object}.', 1, 3, 0, 1, 1, 1),
('group_create', 'group', '{item:$subject} created a new group:', 1, 5, 1, 1, 1, 1),
('group_join', 'group', '{item:$subject} joined the group {item:$object}', 1, 3, 1, 1, 1, 1),
('group_photo_upload', 'group', '{item:$subject} added {var:$count} photo(s).', 1, 3, 2, 1, 1, 1),
('group_promote', 'group', '{item:$subject} has been made an officer for the group {item:$object}', 1, 3, 1, 1, 1, 1),
('group_topic_create', 'group', '{item:$subject} posted a {itemChild:$object:topic:$child_id} in the group {item:$object}: {body:$body}', 1, 3, 1, 1, 1, 1),
('group_topic_reply', 'group', '{item:$subject} replied to a {itemChild:$object:topic:$child_id} in the group {item:$object}: {body:$body}', 1, 3, 1, 1, 1, 1),
('hecontest_begins', 'hecontest', '{item:$object} just started! Take part!', 1, 7, 1, 1, 1, 1),
('hecontest_participate', 'hecontest', '{item:$subject} has joined to contest {item:$object}', 1, 7, 1, 1, 1, 1),
('hecontest_win', 'hecontest', '{item:$subject} won the {item:$object} contest.', 1, 7, 1, 1, 1, 1),
('login', 'user', '{item:$subject} has signed in.', 0, 1, 0, 1, 1, 1),
('logout', 'user', '{item:$subject} has signed out.', 0, 1, 0, 1, 1, 1),
('network_join', 'network', '{item:$subject} joined the network {item:$object}', 1, 3, 1, 1, 1, 1),
('new_article', 'article', '{item:$subject} wrote a new article', 1, 5, 1, 3, 1, 1),
('post', 'user', '{actors:$subject:$object}: {body:$body}', 1, 7, 1, 4, 1, 0),
('post_self', 'user', '{item:$subject} {body:$body}', 1, 5, 1, 4, 1, 0),
('profile_photo_update', 'user', '{item:$subject} has added a new profile photo.', 1, 5, 1, 4, 1, 1),
('share', 'activity', '{item:$subject} shared {item:$object}''s {var:$type}. {body:$body}', 1, 5, 1, 1, 0, 1),
('signup', 'user', '{item:$subject} has just signed up. Say hello!', 1, 5, 0, 1, 1, 1),
('status', 'user', '{item:$subject} {body:$body}', 1, 5, 0, 1, 4, 0),
('tagged', 'user', '{item:$subject} tagged {item:$object} in a {var:$label}:', 1, 7, 1, 1, 0, 1),
('video_new', 'video', '{item:$subject} posted a new video:', 1, 5, 1, 3, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_activity_attachments`
--

CREATE TABLE `engine4_activity_attachments` (
  `attachment_id` int(11) UNSIGNED NOT NULL,
  `action_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `mode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_activity_attachments`
--

INSERT INTO `engine4_activity_attachments` (`attachment_id`, `action_id`, `type`, `id`, `mode`) VALUES
(1, 4, 'blog', 1, 1),
(2, 5, 'group', 1, 1),
(3, 7, 'event', 1, 1),
(4, 9, 'storage_file', 104, 1),
(6, 14, 'video', 2, 1),
(7, 15, 'video', 3, 1),
(8, 16, 'blog', 2, 1),
(9, 62, 'blog', 3, 1),
(10, 69, 'article', 135, 1),
(11, 70, 'article', 136, 1),
(14, 75, 'blog', 4, 1),
(15, 79, 'article', 139, 1),
(18, 83, 'article', 142, 1),
(19, 84, 'article', 143, 1),
(20, 85, 'article', 144, 1),
(21, 86, 'article', 145, 1),
(22, 87, 'article', 146, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_activity_comments`
--

CREATE TABLE `engine4_activity_comments` (
  `comment_id` int(11) UNSIGNED NOT NULL,
  `resource_id` int(11) UNSIGNED NOT NULL,
  `poster_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `poster_id` int(11) UNSIGNED NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `like_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_activity_likes`
--

CREATE TABLE `engine4_activity_likes` (
  `like_id` int(11) UNSIGNED NOT NULL,
  `resource_id` int(11) UNSIGNED NOT NULL,
  `poster_type` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `poster_id` int(11) UNSIGNED NOT NULL,
  `emotion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_activity_likes`
--

INSERT INTO `engine4_activity_likes` (`like_id`, `resource_id`, `poster_type`, `poster_id`, `emotion`) VALUES
(1, 2, 'user', 3, NULL),
(2, 3, 'user', 3, NULL),
(3, 1, 'user', 3, NULL),
(4, 9, 'user', 3, NULL),
(5, 8, 'user', 3, NULL),
(6, 7, 'user', 3, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_activity_notifications`
--

CREATE TABLE `engine4_activity_notifications` (
  `notification_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `subject_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subject_id` int(11) UNSIGNED NOT NULL,
  `object_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `object_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `mitigated` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `is_shown` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_activity_notifications`
--

INSERT INTO `engine4_activity_notifications` (`notification_id`, `user_id`, `subject_type`, `subject_id`, `object_type`, `object_id`, `type`, `params`, `read`, `mitigated`, `date`, `is_shown`) VALUES
(1, 2, 'user', 3, 'activity_action', 2, 'liked', '{"label":"post"}', 0, 0, '2017-05-22 03:57:13', 0),
(2, 2, 'user', 3, 'activity_action', 1, 'liked', '{"label":"post"}', 0, 0, '2017-05-22 03:57:20', 0),
(3, 1, 'user', 1, 'hebadge_creditbadge', 1, 'hebadgecredit_new', NULL, 1, 0, '2017-05-22 05:43:56', 1),
(4, 1, 'user', 3, 'activity_action', 10, 'liked', '{"label":"post"}', 0, 0, '2017-05-22 05:47:06', 1),
(5, 1, 'user', 3, 'activity_action', 9, 'liked', '{"label":"post"}', 0, 0, '2017-05-22 05:47:09', 1),
(6, 1, 'user', 3, 'activity_action', 8, 'liked', '{"label":"post"}', 0, 0, '2017-05-22 05:47:15', 1),
(7, 1, 'user', 3, 'activity_action', 7, 'liked', '{"label":"post"}', 0, 0, '2017-05-22 05:47:17', 1),
(8, 1, 'user', 3, 'user', 1, 'friend_request', NULL, 1, 1, '2017-05-22 07:21:37', 1),
(9, 3, 'user', 3, 'hebadge_creditbadge', 1, 'hebadgecredit_new', NULL, 0, 0, '2017-05-22 07:33:22', 1),
(10, 1, 'user', 3, 'blog', 1, 'liked', '{"label":"blog"}', 0, 0, '2017-05-22 07:33:23', 1),
(11, 1, 'user', 3, 'blog', 1, 'commented', '{"label":"blog"}', 0, 0, '2017-05-22 07:33:30', 1),
(12, 3, 'user', 1, 'user', 3, 'friend_accepted', NULL, 0, 0, '2017-05-22 07:34:44', 1),
(13, 1, 'user', 3, 'activity_action', 10, 'liked', '{"label":"post"}', 0, 0, '2017-05-22 07:37:00', 1),
(14, 1, 'user', 3, 'messages_conversation', 1, 'message_new', NULL, 0, 0, '2017-05-22 07:54:55', 1),
(15, 3, 'user', 1, 'messages_conversation', 1, 'message_new', NULL, 0, 0, '2017-05-22 07:55:19', 1),
(16, 3, 'user', 1, 'blog', 1, 'commented_commented', '{"label":"blog"}', 0, 0, '2017-05-26 09:32:37', 1),
(17, 3, 'user', 1, 'activity_action', 15, 'liked', '{"label":"post"}', 0, 0, '2017-05-26 10:57:29', 1),
(18, 3, 'user', 1, 'activity_action', 15, 'commented', '{"label":"post"}', 0, 0, '2017-05-26 10:58:42', 1),
(19, 3, 'user', 3, 'hebadge_creditbadge', 2, 'hebadgecredit_new', NULL, 0, 0, '2017-05-29 11:05:38', 1),
(21, 1, 'user', 1, 'hebadge_creditbadge', 2, 'hebadgecredit_new', NULL, 0, 0, '2017-05-30 02:52:19', 1),
(23, 3, 'user', 1, 'blog', 4, 'commented', '{"label":"blog"}', 0, 0, '2017-05-30 02:56:17', 1),
(24, 5, 'user', 5, 'hebadge_creditbadge', 1, 'hebadgecredit_new', NULL, 0, 0, '2017-05-30 09:20:53', 1),
(25, 5, 'user', 1, 'messages_conversation', 2, 'message_new', NULL, 0, 0, '2017-05-31 02:21:18', 0),
(26, 5, 'user', 1, 'messages_conversation', 3, 'message_new', NULL, 0, 0, '2017-05-31 02:24:31', 0),
(27, 5, 'user', 1, 'messages_conversation', 4, 'message_new', NULL, 0, 0, '2017-05-31 02:25:27', 0),
(28, 5, 'user', 1, 'article', 139, 'commented', '{"label":"article"}', 0, 0, '2017-05-31 02:26:12', 0),
(29, 5, 'user', 3, 'messages_conversation', 5, 'message_new', NULL, 0, 0, '2017-05-31 02:38:44', 0),
(30, 5, 'user', 3, 'messages_conversation', 5, 'message_new', NULL, 0, 0, '2017-05-31 02:40:45', 0),
(31, 5, 'user', 3, 'messages_conversation', 6, 'message_new', NULL, 0, 0, '2017-05-31 02:43:28', 0),
(32, 5, 'user', 1, 'messages_conversation', 7, 'message_new', NULL, 0, 0, '2017-05-31 02:49:08', 0),
(33, 5, 'user', 1, 'messages_conversation', 8, 'message_new', NULL, 0, 0, '2017-05-31 02:51:15', 0),
(34, 5, 'user', 1, 'messages_conversation', 9, 'message_new', NULL, 0, 0, '2017-05-31 02:53:38', 0),
(35, 5, 'user', 1, 'messages_conversation', 10, 'message_new', NULL, 0, 0, '2017-05-31 02:53:56', 0),
(36, 5, 'user', 1, 'messages_conversation', 11, 'message_new', NULL, 0, 0, '2017-05-31 02:58:01', 0),
(37, 5, 'user', 1, 'messages_conversation', 13, 'message_new', NULL, 0, 0, '2017-05-31 03:12:30', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_activity_notificationsettings`
--

CREATE TABLE `engine4_activity_notificationsettings` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_activity_notificationtypes`
--

CREATE TABLE `engine4_activity_notificationtypes` (
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_request` tinyint(1) NOT NULL DEFAULT '0',
  `handler` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_activity_notificationtypes`
--

INSERT INTO `engine4_activity_notificationtypes` (`type`, `module`, `body`, `is_request`, `handler`, `default`) VALUES
('blog_subscribed_new', 'blog', '{item:$subject} has posted a new blog entry: {item:$object}.', 0, '', 1),
('commented', 'activity', '{item:$subject} has commented on your {item:$object:$label}.', 0, '', 1),
('commented_commented', 'activity', '{item:$subject} has commented on a {item:$object:$label} you commented on.', 0, '', 1),
('event_accepted', 'event', 'Your request to join the event {item:$object} has been approved.', 0, '', 1),
('event_approve', 'event', '{item:$subject} has requested to join the event {item:$object}.', 0, '', 1),
('event_discussion_reply', 'event', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::event topic} you posted on.', 0, '', 1),
('event_discussion_response', 'event', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::event topic} you created.', 0, '', 1),
('event_invite', 'event', '{item:$subject} has invited you to the event {item:$object}.', 1, 'event.widget.request-event', 1),
('friend_accepted', 'user', 'You and {item:$subject} are now friends.', 0, '', 1),
('friend_follow', 'user', '{item:$subject} is now following you.', 0, '', 1),
('friend_follow_accepted', 'user', 'You are now following {item:$subject}.', 0, '', 1),
('friend_follow_request', 'user', '{item:$subject} has requested to follow you.', 1, 'user.friends.request-follow', 1),
('friend_request', 'user', '{item:$subject} has requested to be your friend.', 1, 'user.friends.request-friend', 1),
('group_accepted', 'group', 'Your request to join the group {item:$object} has been approved.', 0, '', 1),
('group_approve', 'group', '{item:$subject} has requested to join the group {item:$object}.', 0, '', 1),
('group_discussion_reply', 'group', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you posted on.', 0, '', 1),
('group_discussion_response', 'group', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you created.', 0, '', 1),
('group_invite', 'group', '{item:$subject} has invited you to the group {item:$object}.', 1, 'group.widget.request-group', 1),
('group_promote', 'group', 'You were promoted to officer in the group {item:$object}.', 0, '', 1),
('hebadgecredit_new', 'hebadge', 'HEBADGE_NOTIFICATION_HEBADGECREDIT_NEW', 0, '', 1),
('hebadgepage_new', 'hebadge', 'HEBADGE_NOTIFICATION_HEBADGEPAGE_NEW', 0, '', 1),
('hebadge_new', 'hebadge', 'HEBADGE_NOTIFICATION_HEBADGE_NEW', 0, '', 1),
('he_comment_tag', 'activity', '{item:$subject} has taged your on comment in {item:$object:$label}.', 0, '', 1),
('he_reply_commented', 'activity', '{item:$subject} has replied on your comment in {item:$object:$label}.', 0, '', 1),
('liked', 'activity', '{item:$subject} likes your {item:$object:$label}.', 0, '', 1),
('liked_commented', 'activity', '{item:$subject} has commented on a {item:$object:$label} you liked.', 0, '', 1),
('message_new', 'messages', '{item:$subject} has sent you a {item:$object:message}.', 0, '', 1),
('post_user', 'user', '{item:$subject} has posted on your {item:$object:profile}.', 0, '', 1),
('send_credits', 'credit', '{item:$subject} give you {item:$object:$amount} credits. Check it {item:$object:$label:$action}.', 0, '', 1),
('set_credits', 'credit', '{item:$subject} set you {item:$object:$amount} credits. Check it {item:$object:$label:$action}.', 0, '', 1),
('shared', 'activity', '{item:$subject} has shared your {item:$object:$label}.', 0, '', 1),
('suggest_hecontest_photo', 'hecontest', '{item:$subject} has suggested to you a {item:$object:hecontest photo}.', 1, 'suggest.handler.request', 1),
('tagged', 'user', '{item:$subject} tagged you in a {item:$object:$label}.', 0, '', 1),
('video_processed', 'video', 'Your {item:$object:video} is ready to be viewed.', 0, '', 1),
('video_processed_failed', 'video', 'Your {item:$object:video} has failed to process.', 0, '', 1),
('wall_tag', 'wall', 'WALL_NOTIFICATION_TAG', 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_activity_stream`
--

CREATE TABLE `engine4_activity_stream` (
  `target_type` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `target_id` int(11) UNSIGNED NOT NULL,
  `subject_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subject_id` int(11) UNSIGNED NOT NULL,
  `object_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `object_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `action_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_activity_stream`
--

INSERT INTO `engine4_activity_stream` (`target_type`, `target_id`, `subject_type`, `subject_id`, `object_type`, `object_id`, `type`, `action_id`) VALUES
('event', 1, 'user', 1, 'event', 1, 'event_create', 7),
('event', 1, 'user', 1, 'event', 1, 'post', 8),
('everyone', 0, 'user', 2, 'user', 2, 'signup', 1),
('everyone', 0, 'user', 2, 'user', 2, 'status', 2),
('everyone', 0, 'user', 3, 'user', 3, 'signup', 3),
('everyone', 0, 'user', 1, 'blog', 1, 'blog_new', 4),
('everyone', 0, 'user', 1, 'event', 1, 'event_create', 7),
('everyone', 0, 'user', 1, 'event', 1, 'post', 8),
('everyone', 0, 'user', 1, 'user', 1, 'profile_photo_update', 9),
('everyone', 0, 'user', 3, 'blog', 1, 'comment_blog', 11),
('everyone', 0, 'user', 3, 'user', 1, 'friends', 12),
('everyone', 0, 'user', 1, 'user', 3, 'friends', 13),
('everyone', 0, 'user', 3, 'video', 2, 'video_new', 14),
('everyone', 0, 'user', 3, 'video', 3, 'video_new', 15),
('everyone', 0, 'user', 1, 'blog', 2, 'blog_new', 16),
('everyone', 0, 'user', 1, 'blog', 1, 'comment_blog', 18),
('everyone', 0, 'user', 1, 'blog', 3, 'blog_new', 62),
('everyone', 0, 'user', 4, 'user', 4, 'signup', 77),
('everyone', 0, 'user', 5, 'user', 5, 'signup', 78),
('everyone', 0, 'user', 1, 'article', 145, 'article_new', 86),
('everyone', 0, 'user', 1, 'article', 146, 'article_new', 87),
('everyone', 0, 'user', 6, 'user', 6, 'signup', 88),
('everyone', 0, 'user', 7, 'user', 7, 'signup', 89),
('everyone', 0, 'user', 8, 'user', 8, 'signup', 90),
('everyone', 0, 'user', 9, 'user', 9, 'signup', 91),
('everyone', 0, 'user', 10, 'user', 10, 'signup', 92),
('everyone', 0, 'user', 11, 'user', 11, 'signup', 93),
('everyone', 0, 'user', 12, 'user', 12, 'signup', 94),
('everyone', 0, 'user', 13, 'user', 13, 'signup', 95),
('everyone', 0, 'user', 14, 'user', 14, 'signup', 96),
('everyone', 0, 'user', 15, 'user', 15, 'signup', 97),
('everyone', 0, 'user', 16, 'user', 16, 'signup', 98),
('everyone', 0, 'user', 17, 'user', 17, 'signup', 99),
('everyone', 0, 'user', 18, 'user', 18, 'signup', 100),
('everyone', 0, 'user', 19, 'user', 19, 'signup', 101),
('group', 1, 'user', 3, 'group', 1, 'group_create', 5),
('group', 1, 'user', 1, 'group', 1, 'group_join', 6),
('members', 1, 'user', 1, 'blog', 1, 'blog_new', 4),
('members', 1, 'user', 1, 'event', 1, 'event_create', 7),
('members', 1, 'user', 1, 'event', 1, 'post', 8),
('members', 1, 'user', 1, 'user', 1, 'profile_photo_update', 9),
('members', 1, 'user', 3, 'blog', 1, 'comment_blog', 11),
('members', 1, 'user', 3, 'user', 1, 'friends', 12),
('members', 1, 'user', 1, 'blog', 2, 'blog_new', 16),
('members', 1, 'user', 1, 'blog', 1, 'comment_blog', 18),
('members', 1, 'user', 1, 'blog', 3, 'blog_new', 62),
('members', 2, 'user', 2, 'user', 2, 'signup', 1),
('members', 2, 'user', 2, 'user', 2, 'status', 2),
('members', 3, 'user', 3, 'user', 3, 'signup', 3),
('members', 3, 'user', 1, 'user', 3, 'friends', 13),
('members', 3, 'user', 3, 'video', 2, 'video_new', 14),
('members', 3, 'user', 3, 'video', 3, 'video_new', 15),
('members', 4, 'user', 4, 'user', 4, 'signup', 77),
('members', 5, 'user', 5, 'user', 5, 'signup', 78),
('members', 6, 'user', 6, 'user', 6, 'signup', 88),
('members', 7, 'user', 7, 'user', 7, 'signup', 89),
('members', 8, 'user', 8, 'user', 8, 'signup', 90),
('members', 9, 'user', 9, 'user', 9, 'signup', 91),
('members', 10, 'user', 10, 'user', 10, 'signup', 92),
('members', 11, 'user', 11, 'user', 11, 'signup', 93),
('members', 12, 'user', 12, 'user', 12, 'signup', 94),
('members', 13, 'user', 13, 'user', 13, 'signup', 95),
('members', 14, 'user', 14, 'user', 14, 'signup', 96),
('members', 15, 'user', 15, 'user', 15, 'signup', 97),
('members', 16, 'user', 16, 'user', 16, 'signup', 98),
('members', 17, 'user', 17, 'user', 17, 'signup', 99),
('members', 18, 'user', 18, 'user', 18, 'signup', 100),
('members', 19, 'user', 19, 'user', 19, 'signup', 101),
('owner', 1, 'user', 1, 'blog', 1, 'blog_new', 4),
('owner', 1, 'user', 1, 'group', 1, 'group_join', 6),
('owner', 1, 'user', 1, 'event', 1, 'event_create', 7),
('owner', 1, 'user', 1, 'event', 1, 'post', 8),
('owner', 1, 'user', 1, 'user', 1, 'profile_photo_update', 9),
('owner', 1, 'user', 1, 'user', 3, 'friends', 13),
('owner', 1, 'user', 1, 'blog', 2, 'blog_new', 16),
('owner', 1, 'user', 1, 'blog', 1, 'comment_blog', 18),
('owner', 1, 'user', 1, 'blog', 3, 'blog_new', 62),
('owner', 1, 'user', 1, 'blog', 4, 'comment_blog', 76),
('owner', 1, 'user', 1, 'article', 139, 'comment_article', 80),
('owner', 1, 'user', 1, 'article', 142, 'article_new', 83),
('owner', 1, 'user', 1, 'article', 143, 'article_new', 84),
('owner', 1, 'user', 1, 'article', 144, 'article_new', 85),
('owner', 1, 'user', 1, 'article', 145, 'article_new', 86),
('owner', 1, 'user', 1, 'article', 146, 'article_new', 87),
('owner', 2, 'user', 2, 'user', 2, 'signup', 1),
('owner', 2, 'user', 2, 'user', 2, 'status', 2),
('owner', 3, 'user', 3, 'user', 3, 'signup', 3),
('owner', 3, 'user', 3, 'group', 1, 'group_create', 5),
('owner', 3, 'user', 3, 'blog', 1, 'comment_blog', 11),
('owner', 3, 'user', 3, 'user', 1, 'friends', 12),
('owner', 3, 'user', 3, 'video', 2, 'video_new', 14),
('owner', 3, 'user', 3, 'video', 3, 'video_new', 15),
('owner', 3, 'user', 3, 'article', 135, 'article_new', 69),
('owner', 3, 'user', 3, 'article', 136, 'article_new', 70),
('owner', 3, 'user', 3, 'article', 136, 'comment_article', 71),
('owner', 3, 'user', 3, 'blog', 4, 'blog_new', 75),
('owner', 4, 'user', 4, 'user', 4, 'signup', 77),
('owner', 5, 'user', 5, 'user', 5, 'signup', 78),
('owner', 5, 'user', 5, 'article', 139, 'article_new', 79),
('owner', 6, 'user', 6, 'user', 6, 'signup', 88),
('owner', 7, 'user', 7, 'user', 7, 'signup', 89),
('owner', 8, 'user', 8, 'user', 8, 'signup', 90),
('owner', 9, 'user', 9, 'user', 9, 'signup', 91),
('owner', 10, 'user', 10, 'user', 10, 'signup', 92),
('owner', 11, 'user', 11, 'user', 11, 'signup', 93),
('owner', 12, 'user', 12, 'user', 12, 'signup', 94),
('owner', 13, 'user', 13, 'user', 13, 'signup', 95),
('owner', 14, 'user', 14, 'user', 14, 'signup', 96),
('owner', 15, 'user', 15, 'user', 15, 'signup', 97),
('owner', 16, 'user', 16, 'user', 16, 'signup', 98),
('owner', 17, 'user', 17, 'user', 17, 'signup', 99),
('owner', 18, 'user', 18, 'user', 18, 'signup', 100),
('owner', 19, 'user', 19, 'user', 19, 'signup', 101),
('parent', 1, 'user', 1, 'blog', 1, 'blog_new', 4),
('parent', 1, 'user', 1, 'event', 1, 'event_create', 7),
('parent', 1, 'user', 1, 'event', 1, 'post', 8),
('parent', 1, 'user', 1, 'user', 1, 'profile_photo_update', 9),
('parent', 1, 'user', 3, 'blog', 1, 'comment_blog', 11),
('parent', 1, 'user', 3, 'user', 1, 'friends', 12),
('parent', 1, 'user', 1, 'blog', 2, 'blog_new', 16),
('parent', 1, 'user', 1, 'blog', 1, 'comment_blog', 18),
('parent', 1, 'user', 1, 'blog', 3, 'blog_new', 62),
('parent', 2, 'user', 2, 'user', 2, 'signup', 1),
('parent', 2, 'user', 2, 'user', 2, 'status', 2),
('parent', 3, 'user', 3, 'user', 3, 'signup', 3),
('parent', 3, 'user', 3, 'group', 1, 'group_create', 5),
('parent', 3, 'user', 1, 'group', 1, 'group_join', 6),
('parent', 3, 'user', 1, 'user', 3, 'friends', 13),
('parent', 3, 'user', 3, 'video', 2, 'video_new', 14),
('parent', 3, 'user', 3, 'video', 3, 'video_new', 15),
('parent', 3, 'user', 3, 'blog', 4, 'blog_new', 75),
('parent', 3, 'user', 1, 'blog', 4, 'comment_blog', 76),
('parent', 4, 'user', 4, 'user', 4, 'signup', 77),
('parent', 5, 'user', 5, 'user', 5, 'signup', 78),
('parent', 6, 'user', 6, 'user', 6, 'signup', 88),
('parent', 7, 'user', 7, 'user', 7, 'signup', 89),
('parent', 8, 'user', 8, 'user', 8, 'signup', 90),
('parent', 9, 'user', 9, 'user', 9, 'signup', 91),
('parent', 10, 'user', 10, 'user', 10, 'signup', 92),
('parent', 11, 'user', 11, 'user', 11, 'signup', 93),
('parent', 12, 'user', 12, 'user', 12, 'signup', 94),
('parent', 13, 'user', 13, 'user', 13, 'signup', 95),
('parent', 14, 'user', 14, 'user', 14, 'signup', 96),
('parent', 15, 'user', 15, 'user', 15, 'signup', 97),
('parent', 16, 'user', 16, 'user', 16, 'signup', 98),
('parent', 17, 'user', 17, 'user', 17, 'signup', 99),
('parent', 18, 'user', 18, 'user', 18, 'signup', 100),
('parent', 19, 'user', 19, 'user', 19, 'signup', 101),
('registered', 0, 'user', 2, 'user', 2, 'signup', 1),
('registered', 0, 'user', 2, 'user', 2, 'status', 2),
('registered', 0, 'user', 3, 'user', 3, 'signup', 3),
('registered', 0, 'user', 1, 'blog', 1, 'blog_new', 4),
('registered', 0, 'user', 3, 'group', 1, 'group_create', 5),
('registered', 0, 'user', 1, 'group', 1, 'group_join', 6),
('registered', 0, 'user', 1, 'event', 1, 'event_create', 7),
('registered', 0, 'user', 1, 'event', 1, 'post', 8),
('registered', 0, 'user', 1, 'user', 1, 'profile_photo_update', 9),
('registered', 0, 'user', 3, 'blog', 1, 'comment_blog', 11),
('registered', 0, 'user', 3, 'user', 1, 'friends', 12),
('registered', 0, 'user', 1, 'user', 3, 'friends', 13),
('registered', 0, 'user', 3, 'video', 2, 'video_new', 14),
('registered', 0, 'user', 3, 'video', 3, 'video_new', 15),
('registered', 0, 'user', 1, 'blog', 2, 'blog_new', 16),
('registered', 0, 'user', 1, 'blog', 1, 'comment_blog', 18),
('registered', 0, 'user', 1, 'blog', 3, 'blog_new', 62),
('registered', 0, 'user', 4, 'user', 4, 'signup', 77),
('registered', 0, 'user', 5, 'user', 5, 'signup', 78),
('registered', 0, 'user', 1, 'article', 145, 'article_new', 86),
('registered', 0, 'user', 1, 'article', 146, 'article_new', 87),
('registered', 0, 'user', 6, 'user', 6, 'signup', 88),
('registered', 0, 'user', 7, 'user', 7, 'signup', 89),
('registered', 0, 'user', 8, 'user', 8, 'signup', 90),
('registered', 0, 'user', 9, 'user', 9, 'signup', 91),
('registered', 0, 'user', 10, 'user', 10, 'signup', 92),
('registered', 0, 'user', 11, 'user', 11, 'signup', 93),
('registered', 0, 'user', 12, 'user', 12, 'signup', 94),
('registered', 0, 'user', 13, 'user', 13, 'signup', 95),
('registered', 0, 'user', 14, 'user', 14, 'signup', 96),
('registered', 0, 'user', 15, 'user', 15, 'signup', 97),
('registered', 0, 'user', 16, 'user', 16, 'signup', 98),
('registered', 0, 'user', 17, 'user', 17, 'signup', 99),
('registered', 0, 'user', 18, 'user', 18, 'signup', 100),
('registered', 0, 'user', 19, 'user', 19, 'signup', 101);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_advbilling_donatesettings`
--

CREATE TABLE `engine4_advbilling_donatesettings` (
  `donatesettings_id` int(11) NOT NULL,
  `donate_id` int(11) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `publish_key` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_announcement_announcements`
--

CREATE TABLE `engine4_announcement_announcements` (
  `announcement_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `networks` text COLLATE utf8_unicode_ci,
  `member_levels` text COLLATE utf8_unicode_ci,
  `profile_types` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_appmanager_filehashes`
--

CREATE TABLE `engine4_appmanager_filehashes` (
  `rel_path` varchar(255) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `revision` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `platform` enum('ios','android') NOT NULL DEFAULT 'ios'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `engine4_appmanager_filehashes`
--

INSERT INTO `engine4_appmanager_filehashes` (`rel_path`, `hash`, `revision`, `priority`, `platform`) VALUES
('audios/DingLing.mp3', '215377dd900f591c8fc3568688b1a3ce', 1, 1, 'ios'),
('audios/DingLing.wav', '10924494fd831c66db071ce18d505fef', 1, 1, 'ios'),
('audios/drip.wav', '5ac9c3119f5f1817a84339e7d1ef77be', 1, 1, 'ios'),
('cordova.js', 'c55b8fc34b512f07e762524b619572a9', 1, 1, 'ios'),
('cordova_plugins.js', '708bd17ded16f15fdc94ca056c845845', 1, 1, 'ios'),
('fonts/icons.eot', 'f09e04895c35846791c509bdf2ef5fec', 1, 1, 'ios'),
('fonts/icons.svg', '56c11b11a9b40956255baa933c5129dc', 1, 1, 'ios'),
('fonts/icons.ttf', '94cbe4c7c3b47e362d73c0c0dd5e2b5b', 1, 1, 'ios'),
('fonts/icons.woff', '9226de60dae928a7ecff140a598fcca5', 1, 1, 'ios'),
('fonts/Rajdhani.woff', '79a1734e827120fdeea581bdd4565273', 1, 1, 'ios'),
('fs.js', 'dbf18d61dab74c2c648859cb5f8e8245', 1, 1, 'ios'),
('images/ajax-loader.gif', '08a3028fda91d443f4d5e93307c96fcd', 1, 1, 'ios'),
('images/ajax-loader.png', 'd66e82db53d9d7e63b00fb02a271dedd', 1, 1, 'ios'),
('images/chat/status_away.png', '5cfaee34212e627eb18f10b0cd6d6653', 1, 1, 'ios'),
('images/chat/status_idle.png', '06d345566cf9e0f97a23bb07ab3d50d9', 1, 1, 'ios'),
('images/chat/status_offline.png', 'd24ba377f08a9c74b32e28488a0f56a2', 1, 1, 'ios'),
('images/chat/status_online.png', '0aa5b2cba78b529ca35edf2a1315b753', 1, 1, 'ios'),
('images/credits.png', 'a0763720947e9c1c7b7e436192030b12', 1, 1, 'ios'),
('images/fake.gif', '18b3e43abad26bdac6f4cea944777b62', 1, 1, 'ios'),
('images/folder.png', '1f322ded2b05f5370d4fda995ee8e8e0', 1, 1, 'ios'),
('images/icons/credit.png', '82479c8b9bf3ee5ac65a0a03aa59997d', 1, 1, 'ios'),
('images/icons/lists/nophoto.gif', 'a5f2409fea4faa88fac94f1f1fd9fea5', 1, 1, 'ios'),
('images/icons/paypal.png', 'cddb81aba92c7b740187ab92a9cf6187', 1, 1, 'ios'),
('images/nophoto_user_thumb_profile.png', '27383190ff83e1f72b295730276dac8b', 1, 1, 'ios'),
('images/photoswipe/error.gif', 'ba74ee750dba610732a5160df3c37df1', 1, 1, 'ios'),
('images/photoswipe/icons.png', 'fd9479c719fbb3057c383832be86906d', 1, 1, 'ios'),
('images/photoswipe/icons@2x.png', 'feaac34e0454adac63f34484d6aa2102', 1, 1, 'ios'),
('images/photoswipe/loader.gif', '37e24e0370847870c1c43ea9ce19b1f4', 1, 1, 'ios'),
('images/photoswipe/new_icons.png', '9ff3661b7d11f1b910b9efc0b6aed209', 1, 1, 'ios'),
('images/photoswipe/new_icons@2x.png', 'b38e86173ab31675fcc1b0a1a745b9f6', 1, 1, 'ios'),
('images/rate_stars.png', '4ab6d27347bcd5804d6602e32e7836c3', 1, 1, 'ios'),
('images/rate_stars_small.png', '3688b06437dcc0b3ae265dac1814c51f', 1, 1, 'ios'),
('images/sitelogo.png', '4cd125fc6024e82fd3980a6a3a9cb6c2', 1, 1, 'ios'),
('images/tabs.png', '49fa64bd5aacb7e721db107e78ca55a7', 1, 1, 'ios'),
('images/Thumbs.db', 'e0b944d250db9d2663b1522e67daecc3', 1, 1, 'ios'),
('index.html', '252f457bf6e5207953821e6c346c8569', 1, 1, 'ios'),
('mobile.html', '0e291a5f0538922a45ce649e6aaa9328', 1, 1, 'ios'),
('plugins/hire.experts/www/ios/applicationPreferences.js', '8f2aaf60e231c82ad66321a4ca49c672', 1, 1, 'ios'),
('plugins/hire.experts/www/ios/FacebookIntegration.js', '8015605c456363ddca999a77544d2224', 1, 1, 'ios'),
('plugins/hire.experts/www/ios/FileUploader.js', '327e66b9a69ea9cb5d10e7395a6f47b9', 1, 1, 'ios'),
('plugins/hire.experts/www/ios/LeftViewController.js', '180b3f129b2717c12d11ce3f0f3b7d7b', 1, 1, 'ios'),
('plugins/hire.experts/www/ios/Loader.js', '700ceb9067468bf5e0587df001dbe1a3', 1, 1, 'ios'),
('plugins/hire.experts/www/ios/PushNotification.js', '409ca71274be3b08b79f69665fff46b2', 1, 1, 'ios'),
('plugins/hire.experts/www/ios/TwitterIntegration.js', 'f53a2eefcbe72d27c75ec73642c276be', 1, 1, 'ios'),
('plugins/org.apache.cordova.battery-status/www/battery.js', '4ce68774c12c9ade5a075f86a2b2dcc1', 1, 1, 'ios'),
('plugins/org.apache.cordova.camera/www/Camera.js', '8f04c6125730b4e932b91cc3826670bf', 1, 1, 'ios'),
('plugins/org.apache.cordova.camera/www/CameraConstants.js', '1500d85304e0d6b7850027e44e535746', 1, 1, 'ios'),
('plugins/org.apache.cordova.camera/www/CameraPopoverOptions.js', '4e2ced3f0f57f4031f9795ab6b98fd36', 1, 1, 'ios'),
('plugins/org.apache.cordova.camera/www/ios/CameraPopoverHandle.js', '33f87ce076e93af3bbcb39feb44289c4', 1, 1, 'ios'),
('plugins/org.apache.cordova.console/www/console-via-logger.js', 'a967769d1097ebfaf974ac4f36214629', 1, 1, 'ios'),
('plugins/org.apache.cordova.console/www/logger.js', 'e27fd8013c4f2dfe657eebd7bb8e6099', 1, 1, 'ios'),
('plugins/org.apache.cordova.contacts/www/Contact.js', '7e873febb688f9bd70137e44f1bf4544', 1, 1, 'ios'),
('plugins/org.apache.cordova.contacts/www/ContactAddress.js', '99fa6c16d14952038fe27c31be21ec10', 1, 1, 'ios'),
('plugins/org.apache.cordova.contacts/www/ContactError.js', 'e8ee107099c8cc7c3496802030e87003', 1, 1, 'ios'),
('plugins/org.apache.cordova.contacts/www/ContactField.js', '63c94204f41dd4e7f7f30c5a1ac97dce', 1, 1, 'ios'),
('plugins/org.apache.cordova.contacts/www/ContactFieldType.js', '87cbd2c7f6f0a288b33707a726266621', 1, 1, 'ios'),
('plugins/org.apache.cordova.contacts/www/ContactFindOptions.js', 'ad334fc1cecc80bfcd2da53dfd453918', 1, 1, 'ios'),
('plugins/org.apache.cordova.contacts/www/ContactName.js', '28a59a5d8a23b7093b923daefbf23000', 1, 1, 'ios'),
('plugins/org.apache.cordova.contacts/www/ContactOrganization.js', '022863d2b598b184d2d67767ce4d300f', 1, 1, 'ios'),
('plugins/org.apache.cordova.contacts/www/contacts.js', '3e7b832e17435536d2241e4f75d2b758', 1, 1, 'ios'),
('plugins/org.apache.cordova.contacts/www/ios/Contact.js', 'be81194ec381e8bc28aee33cb25da0d4', 1, 1, 'ios'),
('plugins/org.apache.cordova.contacts/www/ios/contacts.js', 'f130c9c7e9866071fdba79d2f47aa85a', 1, 1, 'ios'),
('plugins/org.apache.cordova.device-motion/www/Acceleration.js', '1434a0b42f7f9cda34c372c1b79bf7c9', 1, 1, 'ios'),
('plugins/org.apache.cordova.device-motion/www/accelerometer.js', 'd3d467f0b8e0c9fa24176469ad6b8881', 1, 1, 'ios'),
('plugins/org.apache.cordova.device-orientation/www/compass.js', 'd0ba9f83929358d76d467386ac7ec944', 1, 1, 'ios'),
('plugins/org.apache.cordova.device-orientation/www/CompassError.js', '751b96f7bc2e1bcf48882c7c6afa491f', 1, 1, 'ios'),
('plugins/org.apache.cordova.device-orientation/www/CompassHeading.js', 'dda856b6ec98abf2484cf0abb679803c', 1, 1, 'ios'),
('plugins/org.apache.cordova.device/www/device.js', 'f1cad6b15ffecb8809a0c8c86be98da3', 1, 1, 'ios'),
('plugins/org.apache.cordova.dialogs/www/notification.js', 'c2f83a6e5d9e2c3f3bec6c82d4cfdb81', 1, 1, 'ios'),
('plugins/org.apache.cordova.file-transfer/www/FileTransfer.js', '851b035521d7edb9234a109139af7014', 1, 1, 'ios'),
('plugins/org.apache.cordova.file-transfer/www/FileTransferError.js', 'f635144e1a3597c04066f302e951b8a3', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/DirectoryEntry.js', 'f3f427aab3bb597f61e89cb33d4a36de', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/DirectoryReader.js', '3f832c52e9fb51005f7f630de86a9770', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/Entry.js', '404c9a5100b72ce861198c305432a174', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/File.js', '2c958b953fd2b624199d292c54fec438', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/FileEntry.js', '7d3025d24482c73c4c87dacbdbbd8fe3', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/FileError.js', '282dc0f58de8e73934157733aa6f71e2', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/FileReader.js', '8acd51f7a7510827b27f327e89563c3f', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/FileSystem.js', 'c54f4680502a08522e24ed81e34b1647', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/fileSystemPaths.js', '9d73a5faa24e46dbedd6dadf5be7e152', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/fileSystems-roots.js', 'ea6d9f9a9d86113eb3eb8f35d63aed6c', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/fileSystems.js', 'b2488044913fa67a4c9e09bc7e15cc03', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/FileUploadOptions.js', '10cf90d455f6738228982cb0e3dedd44', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/FileUploadResult.js', 'de8598bee40a06707b4f7e70cc95fa7b', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/FileWriter.js', '365b5facc8e29388b2f84248a38e4a33', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/Flags.js', '1dee76ba958f321f6cf858b5d68e0455', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/ios/FileSystem.js', 'ae7b7d8e324d83ac89ef84d972fd7f5c', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/LocalFileSystem.js', 'dae075819a9986c6cf126a419f8be3bd', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/Metadata.js', '8ebcccb77b9edf285d5879232b1946f6', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/ProgressEvent.js', 'bbddf2f6323ea816c5f0f77273146d56', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/requestFileSystem.js', 'd76599c020a672aea39a38ac28d550fb', 1, 1, 'ios'),
('plugins/org.apache.cordova.file/www/resolveLocalFileSystemURI.js', '3eb4ff1e490542ecb22ef88f33edf317', 1, 1, 'ios'),
('plugins/org.apache.cordova.geolocation/www/Coordinates.js', 'dc962b7ee510658e96624873c4c740c6', 1, 1, 'ios'),
('plugins/org.apache.cordova.geolocation/www/geolocation.js', 'cbec2214a819e57ece712f7b1a92536c', 1, 1, 'ios'),
('plugins/org.apache.cordova.geolocation/www/Position.js', 'a483852f4f4f7155befe0111e667ae9a', 1, 1, 'ios'),
('plugins/org.apache.cordova.geolocation/www/PositionError.js', '639fe7f99bac9b733e43b1d8cd9de7e2', 1, 1, 'ios'),
('plugins/org.apache.cordova.globalization/www/globalization.js', 'df7acf87e42e7a9007e528f629a27441', 1, 1, 'ios'),
('plugins/org.apache.cordova.globalization/www/GlobalizationError.js', '77cb0d0a22b5e03d2c319a764927e8cf', 1, 1, 'ios'),
('plugins/org.apache.cordova.inappbrowser/www/inappbrowser.js', '23fac7ecfd1553b33e49bf4eac0acfcf', 1, 1, 'ios'),
('plugins/org.apache.cordova.media-capture/www/capture.js', 'ac46e54b8b03e9c059269f89ed283aa1', 1, 1, 'ios'),
('plugins/org.apache.cordova.media-capture/www/CaptureAudioOptions.js', '9d2347260d12b7e1a986aa821b4d775f', 1, 1, 'ios'),
('plugins/org.apache.cordova.media-capture/www/CaptureError.js', '4b0075eba1014afd3e044d6f8c2a27d2', 1, 1, 'ios'),
('plugins/org.apache.cordova.media-capture/www/CaptureImageOptions.js', 'b54e9302550f0dbf21c92a38c3abdc81', 1, 1, 'ios'),
('plugins/org.apache.cordova.media-capture/www/CaptureVideoOptions.js', '1ee28c30abfaa530af723db55473ea03', 1, 1, 'ios'),
('plugins/org.apache.cordova.media-capture/www/MediaFile.js', 'c693b2be205f11b7c663de627f86f00f', 1, 1, 'ios'),
('plugins/org.apache.cordova.media-capture/www/MediaFileData.js', 'df138318c83b6fd676574e6c1206fe25', 1, 1, 'ios'),
('plugins/org.apache.cordova.media/www/Media.js', 'dfd428438fb16a540072bb5da9c1ea85', 1, 1, 'ios'),
('plugins/org.apache.cordova.media/www/MediaError.js', 'f5bb8178e3d0de389fce1072c191d1ed', 1, 1, 'ios'),
('plugins/org.apache.cordova.network-information/www/Connection.js', 'ed253c7d843c2c5d936610e4fffb72c4', 1, 1, 'ios'),
('plugins/org.apache.cordova.network-information/www/network.js', '67b99aa4330b3b6f3a142dbb3ccd226c', 1, 1, 'ios'),
('plugins/org.apache.cordova.splashscreen/www/splashscreen.js', '4102b7030844bdeaf17c47bb6a3f2778', 1, 1, 'ios'),
('plugins/org.apache.cordova.vibration/www/vibration.js', 'e5777d8460d0a33e80ab0a9acb2e8a0a', 1, 1, 'ios'),
('scripts/activity.js', '2660fe7372ca6bcfaa4c595940087aa7', 1, 1, 'ios'),
('scripts/chat.js', 'caca7b7acb3afdcbe34f8b5442122c9c', 1, 1, 'ios'),
('scripts/components.js', '7c5455776535db82c049c33bc1aecd6c', 1, 1, 'ios'),
('scripts/core.js', '46f3b64f08b1523533659cd7797a4793', 1, 1, 'ios'),
('scripts/datepicker/jQuery.ui.datepicker.js', 'c393db60bc8e526264de83bc0a32e02f', 1, 1, 'ios'),
('scripts/datepicker/jquery.ui.datepicker.mobile.js', '43be8735b1cc2289950082d974d88218', 1, 1, 'ios'),
('scripts/eikooc.js', 'c11588653e3d9c8b0fed3987274a0e97', 1, 1, 'ios'),
('scripts/FileSelector.js', 'd2cd9a84d1290a2ed3645d249fa9187e', 1, 1, 'ios'),
('scripts/initializers.js', '5ff997ac65983910b5a84feb10cde651', 1, 1, 'ios'),
('scripts/iscroll.js', 'd254dc82dd5cda98f5b77f9e0bee770e', 1, 1, 'ios'),
('scripts/jqmWidgets.js', 'a816a3b758ffa7a0c49469c175339e37', 1, 1, 'ios'),
('scripts/jquery.js', 'ba608de813fee7e31c168fc57bae56a9', 1, 1, 'ios'),
('scripts/jquery.mobile-1.2.0.js', 'db523576fbeeb7705752c6755c089adb', 1, 1, 'ios'),
('scripts/phonegap.js', '1fc45cb409cfa2d7719fbf068ec29621', 1, 1, 'ios'),
('scripts/photoswipe/code.photoswipe.jquery-3.0.4.js', '8521c0d848ec77cc7414a77b2419493b', 1, 1, 'ios'),
('scripts/photoswipe/lib/klass.min.js', '19ce9b3bee2ef1cba4a4c2d2e2f86f3a', 1, 1, 'ios'),
('scripts/picup.js', '50d7acb6eb34c47cb19db8b886c75d30', 1, 1, 'ios'),
('settings.js', '82ddb8316bbb48b18ae9165d5c170258', 1, 1, 'ios'),
('styles/app.css', 'b4df86d721a08f2d16e3d6b5392aba67', 1, 1, 'ios'),
('styles/components.css', 'd3e54c2833ca021b6552c6fcc989e268', 1, 1, 'ios'),
('styles/core.css', 'a2e9c4258a907b0146460fed74937474', 1, 1, 'ios'),
('styles/custom.css', 'd77f8adf7b8a35e11a6e75b9fd10eb81', 1, 1, 'ios'),
('styles/jqm-icon-pack-2.0-original.css', 'bc4c802f76b0dca3b4f17d6abf45485e', 1, 1, 'ios'),
('styles/jquery.ui.datepicker.mobile.css', '5cf19f522fa4d00233e3211582af7138', 1, 1, 'ios'),
('styles/photoswipe.css', 'ebcb976fc49d1d0cd106944c8d4007a7', 1, 1, 'ios'),
('tablet.html', '0b3c2a05e8d5ff58298976ba637e17c6', 1, 1, 'ios'),
('tablet/scripts/activity.js', '6e2aa0d24941a21f80e5e4e156801fb9', 1, 1, 'ios'),
('tablet/scripts/components.js', '17ec65bbd7d42468c449c7050adf5ffe', 1, 1, 'ios'),
('tablet/scripts/core.js', '4543376a695995d20376a5dc3bd70a37', 1, 1, 'ios'),
('tablet/scripts/initializers.js', 'd5ee98407f0020b27a662cbb6bea90d1', 1, 1, 'ios'),
('tablet/scripts/jquery.lazyload.min.js', 'b7d6f6a5ab329f550725df6bd7be319c', 1, 1, 'ios'),
('tablet/styles/activity.css', 'e649478dc39a636d59636af624934e50', 1, 1, 'ios'),
('tablet/styles/components.css', '517b0a22f8eab66f78c2eb3665ec9506', 1, 1, 'ios'),
('tablet/styles/core.css', 'ae1d823879a26ec9bf232ffce968c398', 1, 1, 'ios'),
('tablet/styles/custom.css', '8ba8c1dd082fa47397fbb8841e027ce7', 1, 1, 'ios'),
('tablet/themes/default/theme.css', '499dd932b02c4fc84d193f0594ccf442', 1, 1, 'ios'),
('tablet/themes/gray/theme.css', '9c5bb53d5a8106c72219a3e22d48c559', 1, 1, 'ios'),
('tablet/themes/green/theme.css', '18c3bb1d1613c72f4bfbc84cc6da72e2', 1, 1, 'ios'),
('tablet/themes/orange/theme.css', '18c3bb1d1613c72f4bfbc84cc6da72e2', 1, 1, 'ios'),
('tablet/themes/pinkbox/theme.css', 'ec71eb093c9aedc1e748a37abd9ede46', 1, 1, 'ios'),
('tablet/themes/purplebox/theme.css', 'ec71eb093c9aedc1e748a37abd9ede46', 1, 1, 'ios'),
('tablet/themes/skyblue/theme.css', '2153fdd4143ad59a25bd6b27d14a9e7e', 1, 1, 'ios'),
('tablet/themes/yellow/theme.css', '18c3bb1d1613c72f4bfbc84cc6da72e2', 1, 1, 'ios'),
('themes/default/images/dashboard.png', 'c9ee3e083cafba43fc4259488381516f', 1, 1, 'ios'),
('themes/default/images/dashboard@2x.png', '720c1521a020e8d7bbaaeb8ea6bf8253', 1, 1, 'ios'),
('themes/default/images/hf-pattern-c.png', '725fcdacb84245318fd32788cfdbae4d', 1, 1, 'ios'),
('themes/default/images/pattern-c.png', '6e3f5c13cdf98410b75a8eca1b1c3817', 1, 1, 'ios'),
('themes/default/images/pattern-d.png', 'd4c2008c6bdf01ce2c9fa5e670e2c696', 1, 1, 'ios'),
('themes/default/theme.css', '2327f9dae27acc3872ce886ff7a0d189', 1, 1, 'ios'),
('themes/gray/images/pattern-c.png', '265f522d6e537ab2570d71de6a978ddc', 1, 1, 'ios'),
('themes/gray/theme.css', '97dd03554878fb45365628521d23af29', 1, 1, 'ios'),
('themes/green/theme.css', '3c8107f86be1146448885669e61ab03c', 1, 1, 'ios'),
('themes/orange/theme.css', '09d95e124b095b83e8ce4f7b43910020', 1, 1, 'ios'),
('themes/pinkbox/theme.css', 'cc70eadbcc5f1417398a96ce1f2032ba', 1, 1, 'ios'),
('themes/purplebox/theme.css', '075353de54dec0d54355ad597e943cdf', 1, 1, 'ios'),
('themes/skyblue/images/pattern-c.png', '74f7cdffc9b2c3f62771c7acac3f512d', 1, 1, 'ios'),
('themes/skyblue/theme.css', 'df616c01a259fd8198b87d646fa13a39', 1, 1, 'ios'),
('themes/yellow/theme.css', '8db6fc278a0e295c134bfd408ba9dfe6', 1, 1, 'ios');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_appmanager_notifications`
--

CREATE TABLE `engine4_appmanager_notifications` (
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `body` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `params` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_appmanager_notifications`
--

INSERT INTO `engine4_appmanager_notifications` (`name`, `module`, `body`, `params`, `enabled`) VALUES
('commented', 'activity', 'someone has commented on your content', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('event_accepted', 'event', 'Your request to join the event has been approved.', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('forum_topic_response', 'forum', 'Someone has posted on a topic forum you created.', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('friend_accepted', 'user', 'Someone has accepted your friend request', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('friend_request', 'user', 'Someone has requested to be your friend.', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('group_accepted', 'group', 'Your request to join the group has been approved.', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('hebadge_new', 'hebadge', 'Congratulations! You have got a badge.', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('message_new', 'messages', 'Someone has sent you a message', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('post_page', 'page', 'Someone has posted on your page.', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('post_pagereview', 'rate', 'Someone has posted review on your page.', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('post_user', 'user', 'Someone has posted on your profile', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('send_gift', 'hegift', 'Surprise! Someone sent you a gift.', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('suggest_page', 'suggest', 'Someone has suggested to you a page.', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('suggest_user', 'suggest', 'Someone has suggested to you an user', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1),
('wall_tag', 'wall', 'You have been tagged in a post', 'a:2:{s:6:"iphone";a:4:{s:5:"alert";s:1:"1";s:6:"banner";s:1:"1";s:5:"badge";i:0;s:5:"sound";i:0;}s:7:"android";a:4:{s:5:"alert";s:1:"1";s:6:"banner";i:0;s:5:"badge";i:0;s:5:"sound";i:0;}}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_appmanager_themes`
--

CREATE TABLE `engine4_appmanager_themes` (
  `theme_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `engine4_appmanager_themes`
--

INSERT INTO `engine4_appmanager_themes` (`theme_id`, `name`, `params`) VALUES
(1, 'default', '{"board.menu.bg":{"red":"22","green":"22","blue":"23","alpha":"100"},"board.menu.active.bg":{"red":"15","green":"16","blue":"16","alpha":"100"},"board.menu.active.color":{"red":"80","green":"80","blue":"80","alpha":"100"},"board.menu.color":{"red":"80","green":"80","blue":"80","alpha":"100"},"board.menu.shadow.color":{"red":"7","green":"7","blue":"7","alpha":"100"},"board.divider.bg":{"red":"14","green":"14","blue":"14","alpha":"100"},"board.divider.color":{"red":"60","green":"61","blue":"61","alpha":"100"},"board.menu.borderLeft.color":{"red":"15","green":"16","blue":"16","alpha":"100"},"board.menu.seperator.color":{"red":"0","green":"0","blue":"0","alpha":"35"},"header.bg":{"red":"15","green":"16","blue":"16","alpha":"100"},"header.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"search.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"search.bg":{"red":"20","green":"20","blue":"20","alpha":"100"},"search.input.bg":{"red":"13","green":"13","blue":"13","alpha":"100"},"verticalSeperator":{"red":"33","green":"33","blue":"33","alpha":"100"},"font":"Helvetica Neue"}'),
(2, 'skyblue', '{"board.menu.bg":{"red":"100","green":"100","blue":"100","alpha":"100"},"board.menu.active.bg":{"red":"33","green":"67","blue":"86","alpha":"100"},"board.menu.active.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"board.menu.color":{"red":"38","green":"38","blue":"38","alpha":"100"},"board.menu.shadow.color":{"red":"87","green":"87","blue":"87","alpha":"100"},"board.divider.bg":{"red":"93","green":"93","blue":"93","alpha":"100"},"board.divider.color":{"red":"26","green":"26","blue":"26","alpha":"100"},"board.menu.borderLeft.color":{"red":"33","green":"67","blue":"86","alpha":"100"},"board.menu.seperator.color":{"red":"93","green":"93","blue":"93","alpha":"100"},"header.bg":{"red":"33","green":"67","blue":"86","alpha":"100"},"header.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"search.color":{"red":"26","green":"26","blue":"26","alpha":"100"},"search.bg":{"red":"98","green":"98","blue":"98","alpha":"100"},"search.input.bg":{"red":"100","green":"100","blue":"100","alpha":"100"},"verticalSeperator":{"red":"67","green":"67","blue":"67","alpha":"100"},"font":"Helvetica Neue"}'),
(3, 'gray', '{"board.menu.bg":{"red":"100","green":"100","blue":"100","alpha":"100"},"board.menu.active.bg":{"red":"27","green":"27","blue":"27","alpha":"100"},"board.menu.active.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"board.menu.color":{"red":"38","green":"38","blue":"38","alpha":"100"},"board.menu.shadow.color":{"red":"87","green":"87","blue":"87","alpha":"100"},"board.divider.bg":{"red":"93","green":"93","blue":"93","alpha":"100"},"board.divider.color":{"red":"25","green":"25","blue":"25","alpha":"100"},"board.menu.borderLeft.color":{"red":"27","green":"27","blue":"27","alpha":"100"},"board.menu.seperator.color":{"red":"87","green":"87","blue":"87","alpha":"100"},"header.bg":{"red":"27","green":"27","blue":"27","alpha":"100"},"header.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"search.color":{"red":"63","green":"63","blue":"63","alpha":"100"},"search.bg":{"red":"83","green":"83","blue":"83","alpha":"100"},"search.input.bg":{"red":"100","green":"100","blue":"100","alpha":"100"},"verticalSeperator":{"red":"33","green":"33","blue":"33","alpha":"100"},"font":"Helvetica Neue"}'),
(4, 'orange', '{"board.menu.bg":{"red":"21","green":"21","blue":"21","alpha":"100"},"board.menu.active.bg":{"red":"94","green":"37","blue":"24","alpha":"100"},"board.menu.active.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"board.menu.color":{"red":"60","green":"60","blue":"60","alpha":"100"},"board.menu.shadow.color":{"red":"0","green":"0","blue":"0","alpha":"100"},"board.divider.bg":{"red":"30","green":"30","blue":"30","alpha":"100"},"board.divider.color":{"red":"73","green":"73","blue":"73","alpha":"100"},"board.menu.borderLeft.color":{"red":"94","green":"37","blue":"24","alpha":"100"},"board.menu.seperator.color":{"red":"33","green":"33","blue":"33","alpha":"100"},"header.bg":{"red":"94","green":"37","blue":"24","alpha":"100"},"header.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"search.color":{"red":"70","green":"70","blue":"70","alpha":"100"},"search.bg":{"red":"21","green":"21","blue":"21","alpha":"100"},"search.input.bg":{"red":"30","green":"30","blue":"30","alpha":"100"},"verticalSeperator":{"red":"21","green":"21","blue":"21","alpha":"100"},"font":"Helvetica Neue"}'),
(5, 'pinkbox', '{"board.menu.bg":{"red":"5","green":"5","blue":"5","alpha":"100"},"board.menu.active.bg":{"red":"27","green":"27","blue":"27","alpha":"100"},"board.menu.active.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"board.menu.color":{"red":"60","green":"60","blue":"60","alpha":"100"},"board.menu.shadow.color":{"red":"7","green":"7","blue":"7","alpha":"100"},"board.divider.bg":{"red":"66","green":"20","blue":"43","alpha":"100"},"board.divider.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"board.menu.borderLeft.color":{"red":"3","green":"3","blue":"3","alpha":"100"},"board.menu.seperator.color":{"red":"14","green":"14","blue":"14","alpha":"100"},"header.bg":{"red":"3","green":"3","blue":"3","alpha":"100"},"header.color":{"red":"51","green":"56","blue":"60","alpha":"100"},"search.color":{"red":"60","green":"60","blue":"60","alpha":"100"},"search.bg":{"red":"10","green":"10","blue":"10","alpha":"100"},"search.input.bg":{"red":"6","green":"6","blue":"6","alpha":"100"},"verticalSeperator":{"red":"33","green":"33","blue":"33","alpha":"100"},"font":"Rajdhani"}'),
(6, 'green', '{"board.menu.bg":{"red":"21","green":"21","blue":"21","alpha":"100"},"board.menu.active.bg":{"red":"23","green":"65","blue":"37","alpha":"100"},"board.menu.active.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"board.menu.color":{"red":"60","green":"60","blue":"60","alpha":"100"},"board.menu.shadow.color":{"red":"0","green":"0","blue":"0","alpha":"100"},"board.divider.bg":{"red":"30","green":"30","blue":"30","alpha":"100"},"board.divider.color":{"red":"73","green":"73","blue":"73","alpha":"100"},"board.menu.borderLeft.color":{"red":"23","green":"65","blue":"37","alpha":"100"},"board.menu.seperator.color":{"red":"33","green":"33","blue":"33","alpha":"100"},"header.bg":{"red":"23","green":"65","blue":"37","alpha":"100"},"header.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"search.color":{"red":"70","green":"70","blue":"70","alpha":"100"},"search.bg":{"red":"21","green":"21","blue":"21","alpha":"100"},"search.input.bg":{"red":"30","green":"30","blue":"30","alpha":"100"},"verticalSeperator":{"red":"21","green":"21","blue":"21","alpha":"100"},"font":"Helvetica Neue"}'),
(7, 'purplebox', '{"board.menu.bg":{"red":"5","green":"5","blue":"5","alpha":"100"},"board.menu.active.bg":{"red":"27","green":"27","blue":"27","alpha":"100"},"board.menu.active.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"board.menu.color":{"red":"60","green":"60","blue":"60","alpha":"100"},"board.menu.shadow.color":{"red":"0","green":"0","blue":"0","alpha":"100"},"board.divider.bg":{"red":"46","green":"22","blue":"66","alpha":"100"},"board.divider.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"board.menu.borderLeft.color":{"red":"5","green":"5","blue":"5","alpha":"100"},"board.menu.seperator.color":{"red":"14","green":"14","blue":"14","alpha":"100"},"header.bg":{"red":"3","green":"3","blue":"3","alpha":"100"},"header.color":{"red":"36","green":"39","blue":"42","alpha":"100"},"search.color":{"red":"35","green":"42","blue":"44","alpha":"100"},"search.bg":{"red":"24","green":"15","blue":"33","alpha":"100"},"search.input.bg":{"red":"6","green":"6","blue":"6","alpha":"100"},"verticalSeperator":{"red":"60","green":"60","blue":"60","alpha":"100"},"font":"Rajdhani"}'),
(8, 'yellow', '{"board.menu.bg":{"red":"21","green":"21","blue":"21","alpha":"100"},"board.menu.active.bg":{"red":"29","green":"56","blue":"82","alpha":"100"},"board.menu.active.color":{"red":"100","green":"100","blue":"100","alpha":"100"},"board.menu.color":{"red":"60","green":"60","blue":"60","alpha":"100"},"board.menu.shadow.color":{"red":"0","green":"0","blue":"0","alpha":"100"},"board.divider.bg":{"red":"30","green":"30","blue":"30","alpha":"100"},"board.divider.color":{"red":"73","green":"73","blue":"73","alpha":"100"},"board.menu.borderLeft.color":{"red":"85","green":"92","blue":"33","alpha":"100"},"board.menu.seperator.color":{"red":"33","green":"33","blue":"33","alpha":"100"},"header.bg":{"red":"85","green":"92","blue":"33","alpha":"100"},"header.color":{"red":"68","green":"74","blue":"17","alpha":"100"},"search.color":{"red":"52","green":"52","blue":"52","alpha":"100"},"search.bg":{"red":"85","green":"92","blue":"33","alpha":"100"},"search.input.bg":{"red":"30","green":"30","blue":"30","alpha":"100"},"verticalSeperator":{"red":"21","green":"21","blue":"21","alpha":"100"},"font":"Helvetica Neue"}');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_appmanager_tokens`
--

CREATE TABLE `engine4_appmanager_tokens` (
  `token_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `ppmecl_token` varchar(255) NOT NULL,
  `type` enum('apns','gcm') NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_apptouch_adphotos`
--

CREATE TABLE `engine4_apptouch_adphotos` (
  `adphoto_id` int(11) UNSIGNED NOT NULL,
  `ad_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_id` int(11) UNSIGNED NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_apptouch_ads`
--

CREATE TABLE `engine4_apptouch_ads` (
  `ad_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `ad_campaign` int(11) UNSIGNED NOT NULL,
  `views` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `clicks` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `media_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fixed` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `anim_delay` float UNSIGNED NOT NULL DEFAULT '10',
  `anim_duration` float UNSIGNED NOT NULL DEFAULT '0.5',
  `anim_type` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `position` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `html_code` text COLLATE utf8_unicode_ci NOT NULL,
  `photo_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_apptouch_components`
--

CREATE TABLE `engine4_apptouch_components` (
  `component_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `engine4_apptouch_components`
--

INSERT INTO `engine4_apptouch_components` (`component_id`, `name`) VALUES
(17, 'badgeProfile'),
(16, 'badgesList'),
(15, 'badgesUsersList'),
(38, 'chatRoom'),
(26, 'checkinMap'),
(27, 'comments'),
(36, 'crumb'),
(2, 'dashboard'),
(9, 'date'),
(35, 'discussion'),
(25, 'feed'),
(30, 'fieldsValues'),
(3, 'footerMenu'),
(1, 'form'),
(24, 'gallery'),
(39, 'heEventCover'),
(8, 'html'),
(10, 'inviter'),
(12, 'inviterContactsList'),
(11, 'inviterInvitesList'),
(14, 'itemList'),
(13, 'itemSearch'),
(29, 'like'),
(37, 'map'),
(6, 'mediaControls'),
(5, 'navigation'),
(23, 'page'),
(22, 'paginator'),
(32, 'playlist'),
(18, 'profileBadgesList'),
(4, 'quickLinks'),
(28, 'rate'),
(7, 'subjectPhoto'),
(31, 'tabs'),
(19, 'timelineCover'),
(20, 'timelineCoverAlbums'),
(21, 'timelineCoverPhotos'),
(34, 'tip'),
(33, 'video');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_apptouch_content`
--

CREATE TABLE `engine4_apptouch_content` (
  `content_id` int(10) NOT NULL,
  `page_id` int(10) NOT NULL,
  `component_name` varchar(128) NOT NULL,
  `order` smallint(6) NOT NULL,
  `parent_content` enum('header','content','footer') NOT NULL DEFAULT 'content',
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `engine4_apptouch_content`
--

INSERT INTO `engine4_apptouch_content` (`content_id`, `page_id`, `component_name`, `order`, `parent_content`, `enabled`) VALUES
(1, 1, 'form', 0, 'content', 1),
(2, 2, 'feed', 1, 'content', 1),
(4, 3, 'rate', 1, 'content', 1),
(5, 3, 'like', 2, 'content', 1),
(6, 3, 'tabs', 3, 'content', 1),
(7, 4, 'form', 0, 'content', 1),
(8, 5, 'html', 0, 'content', 1),
(9, 6, 'html', 0, 'content', 1),
(10, 7, 'form', 0, 'content', 1),
(11, 8, 'form', 1, 'content', 1),
(12, 9, 'form', 0, 'content', 1),
(13, 10, 'html', 0, 'content', 1),
(14, 10, 'inviter', 1, 'content', 1),
(15, 10, 'navigation', 2, 'content', 1),
(16, 10, 'form', 3, 'content', 1),
(17, 11, 'navigation', 0, 'content', 1),
(18, 11, 'html', 1, 'content', 1),
(19, 11, 'itemList', 2, 'content', 1),
(20, 11, 'paginator', 3, 'content', 1),
(21, 12, 'navigation', 0, 'content', 1),
(22, 12, 'html', 1, 'content', 1),
(23, 12, 'html', 2, 'content', 1),
(24, 12, 'itemList', 3, 'content', 1),
(25, 12, 'paginator', 4, 'content', 1),
(26, 13, 'gallery', 0, 'content', 1),
(27, 13, 'comments', 1, 'content', 1),
(28, 14, 'navigation', 0, 'content', 1),
(29, 14, 'itemSearch', 1, 'content', 1),
(30, 14, 'itemList', 2, 'content', 1),
(31, 14, 'paginator', 3, 'content', 1),
(32, 15, 'navigation', 0, 'content', 1),
(33, 15, 'itemSearch', 1, 'content', 1),
(34, 15, 'itemList', 2, 'content', 1),
(35, 15, 'paginator', 3, 'content', 1),
(36, 16, 'html', 0, 'content', 1),
(37, 16, 'html', 1, 'content', 1),
(38, 16, 'form', 2, 'content', 1),
(39, 16, 'html', 3, 'content', 1),
(40, 16, 'html', 4, 'content', 1),
(41, 17, 'navigation', 0, 'content', 1),
(42, 17, 'itemSearch', 1, 'content', 1),
(43, 17, 'itemList', 2, 'content', 1),
(44, 17, 'paginator', 3, 'content', 1),
(46, 18, 'html', 1, 'content', 1),
(47, 18, 'playlist', 2, 'content', 1),
(48, 18, 'html', 3, 'content', 1),
(49, 18, 'comments', 4, 'content', 1),
(50, 19, 'navigation', 0, 'content', 1),
(51, 19, 'itemSearch', 1, 'content', 1),
(52, 19, 'itemList', 2, 'content', 1),
(53, 19, 'paginator', 3, 'content', 1),
(54, 20, 'html', 0, 'content', 1),
(55, 20, 'video', 1, 'content', 1),
(56, 20, 'html', 2, 'content', 1),
(57, 20, 'comments', 3, 'content', 1),
(58, 21, 'navigation', 0, 'content', 1),
(59, 21, 'itemSearch', 1, 'content', 1),
(60, 21, 'itemList', 2, 'content', 1),
(61, 21, 'paginator', 3, 'content', 1),
(63, 22, 'rate', 1, 'content', 1),
(64, 22, 'like', 2, 'content', 1),
(65, 22, 'html', 3, 'content', 1),
(66, 22, 'tabs', 4, 'content', 1),
(67, 23, 'navigation', 0, 'content', 1),
(68, 23, 'itemSearch', 1, 'content', 1),
(69, 23, 'itemList', 2, 'content', 1),
(70, 23, 'paginator', 3, 'content', 1),
(71, 24, 'navigation', 0, 'content', 1),
(72, 24, 'html', 1, 'content', 1),
(74, 24, 'html', 3, 'content', 1),
(75, 24, 'comments', 4, 'content', 1),
(76, 25, 'chatRoom', 0, 'content', 1),
(77, 26, 'navigation', 0, 'content', 1),
(78, 26, 'itemSearch', 1, 'content', 1),
(79, 26, 'itemList', 2, 'content', 1),
(80, 26, 'paginator', 3, 'content', 1),
(81, 27, 'html', 0, 'content', 1),
(82, 27, 'html', 1, 'content', 1),
(83, 27, 'html', 2, 'content', 1),
(84, 27, 'gallery', 3, 'content', 1),
(85, 27, 'comments', 4, 'content', 1),
(86, 28, 'navigation', 0, 'content', 1),
(87, 28, 'itemSearch', 1, 'content', 1),
(88, 28, 'itemList', 2, 'content', 1),
(89, 28, 'paginator', 3, 'content', 1),
(91, 29, 'rate', 1, 'content', 1),
(92, 29, 'like', 2, 'content', 1),
(93, 29, 'html', 3, 'content', 1),
(94, 29, 'html', 4, 'content', 1),
(95, 29, 'tabs', 5, 'content', 1),
(96, 30, 'timelineCover', 0, 'content', 1),
(97, 30, 'like', 1, 'content', 1),
(98, 30, 'rate', 2, 'content', 1),
(99, 30, 'tabs', 3, 'content', 1),
(100, 31, 'navigation', 0, 'content', 1),
(101, 31, 'itemSearch', 1, 'content', 1),
(102, 31, 'itemList', 2, 'content', 1),
(103, 31, 'paginator', 3, 'content', 1),
(104, 32, 'navigation', 0, 'content', 1),
(105, 32, 'itemSearch', 1, 'content', 1),
(106, 32, 'itemList', 2, 'content', 1),
(107, 32, 'paginator', 3, 'content', 1),
(108, 33, 'navigation', 0, 'content', 1),
(109, 33, 'itemSearch', 1, 'content', 1),
(110, 33, 'itemList', 2, 'content', 1),
(111, 33, 'paginator', 3, 'content', 1),
(112, 34, 'navigation', 0, 'content', 1),
(113, 34, 'itemSearch', 1, 'content', 1),
(114, 34, 'itemList', 2, 'content', 1),
(115, 34, 'paginator', 3, 'content', 1),
(116, 35, 'navigation', 0, 'content', 1),
(117, 35, 'itemSearch', 1, 'content', 1),
(118, 35, 'itemList', 2, 'content', 1),
(119, 35, 'paginator', 3, 'content', 1),
(120, 36, 'navigation', 0, 'content', 1),
(121, 36, 'itemSearch', 1, 'content', 1),
(122, 36, 'itemList', 2, 'content', 1),
(123, 36, 'paginator', 3, 'content', 1),
(124, 37, 'navigation', 0, 'content', 1),
(125, 37, 'itemSearch', 1, 'content', 1),
(126, 37, 'itemList', 2, 'content', 1),
(127, 37, 'paginator', 3, 'content', 1),
(128, 38, 'navigation', 0, 'content', 1),
(129, 38, 'itemSearch', 1, 'content', 1),
(130, 38, 'itemList', 2, 'content', 1),
(131, 38, 'paginator', 3, 'content', 1),
(132, 39, 'navigation', 0, 'content', 1),
(133, 39, 'itemSearch', 1, 'content', 1),
(134, 39, 'itemList', 2, 'content', 1),
(135, 39, 'paginator', 3, 'content', 1),
(136, 40, 'navigation', 0, 'content', 1),
(137, 40, 'itemSearch', 1, 'content', 1),
(138, 40, 'itemList', 2, 'content', 1),
(139, 40, 'paginator', 3, 'content', 1),
(140, 41, 'navigation', 0, 'content', 1),
(141, 41, 'itemSearch', 1, 'content', 1),
(142, 41, 'itemList', 2, 'content', 1),
(143, 41, 'paginator', 3, 'content', 1),
(144, 42, 'navigation', 0, 'content', 1),
(145, 42, 'html', 1, 'content', 1),
(146, 42, 'itemList', 2, 'content', 1),
(147, 42, 'paginator', 3, 'content', 1),
(148, 43, 'navigation', 0, 'content', 1),
(149, 43, 'html', 1, 'content', 1),
(150, 43, 'html', 2, 'content', 1),
(151, 43, 'html', 3, 'content', 1),
(152, 43, 'html', 4, 'content', 1),
(153, 43, 'paginator', 5, 'content', 1),
(154, 44, 'navigation', 0, 'content', 1),
(155, 44, 'html', 1, 'content', 1),
(156, 44, 'badgesList', 2, 'content', 1),
(157, 44, 'html', 3, 'content', 1),
(158, 45, 'navigation', 0, 'content', 1),
(159, 45, 'manageBadgesList', 1, 'content', 1),
(160, 46, 'badgeProfile', 0, 'content', 1),
(161, 46, 'html', 1, 'content', 1),
(162, 46, 'html', 2, 'content', 1),
(163, 46, 'html', 3, 'content', 1),
(164, 47, 'navigation', 0, 'content', 1),
(165, 47, 'itemSearch', 1, 'content', 1),
(166, 47, 'itemList', 2, 'content', 1),
(167, 47, 'paginator', 3, 'content', 1),
(168, 48, 'html', 0, 'content', 1),
(169, 48, 'inviter', 1, 'content', 1),
(170, 48, 'navigation', 2, 'content', 1),
(171, 48, 'form', 3, 'content', 1),
(172, 49, 'html', 0, 'content', 1),
(173, 49, 'itemList', 1, 'content', 1),
(174, 50, 'html', 0, 'content', 1),
(175, 50, 'html', 1, 'content', 1),
(176, 50, 'itemList', 2, 'content', 1),
(177, 51, 'html', 0, 'header', 1),
(178, 51, 'navigation', 0, 'content', 1),
(179, 51, 'itemSearch', 1, 'content', 1),
(180, 51, 'itemList', 2, 'content', 1),
(181, 51, 'paginator', 3, 'content', 1),
(182, 52, 'navigation', 0, 'content', 1),
(183, 52, 'itemSearch', 1, 'content', 1),
(184, 52, 'itemList', 2, 'content', 1),
(185, 52, 'paginator', 3, 'content', 1),
(186, 53, 'navigation', 0, 'content', 1),
(188, 53, 'rate', 2, 'content', 1),
(189, 53, 'like', 3, 'content', 1),
(190, 53, 'tabs', 4, 'content', 1),
(191, 54, 'itemSearch', 1, 'content', 1),
(192, 54, 'itemList', 2, 'content', 1),
(193, 54, 'paginator', 3, 'content', 1),
(194, 55, 'html', 0, 'content', 1),
(195, 55, 'html', 1, 'content', 1),
(196, 55, 'html', 2, 'content', 1),
(197, 55, 'html', 3, 'content', 1),
(198, 55, 'html', 4, 'content', 1),
(199, 55, 'comments', 5, 'content', 1),
(200, 54, 'navigation', 0, 'content', 1),
(201, 56, 'navigation', 0, 'content', 1),
(202, 56, 'itemSearch', 1, 'content', 1),
(203, 56, 'itemList', 2, 'content', 1),
(204, 56, 'paginator', 3, 'content', 1),
(205, 57, 'navigation', 0, 'content', 1),
(206, 57, 'itemSearch', 1, 'content', 1),
(207, 57, 'itemList', 2, 'content', 1),
(208, 57, 'paginator', 3, 'content', 1),
(209, 58, 'navigation', 0, 'content', 1),
(210, 58, 'itemSearch', 1, 'content', 1),
(211, 58, 'itemList', 2, 'content', 1),
(212, 58, 'paginator', 3, 'content', 1),
(213, 59, 'navigation', 0, 'content', 1),
(215, 59, 'rate', 2, 'content', 1),
(216, 59, 'like', 3, 'content', 1),
(217, 59, 'html', 4, 'content', 1),
(218, 59, 'html', 5, 'content', 1),
(219, 59, 'html', 6, 'content', 1),
(220, 59, 'tabs', 7, 'content', 1),
(221, 60, 'navigation', 0, 'content', 1),
(222, 60, 'itemSearch', 1, 'content', 1),
(223, 60, 'itemList', 2, 'content', 1),
(224, 60, 'paginator', 3, 'content', 1),
(225, 61, 'navigation', 0, 'content', 1),
(227, 61, 'like', 2, 'content', 1),
(228, 61, 'tabs', 3, 'content', 1),
(229, 61, 'navigation', 0, 'content', 1),
(231, 61, 'like', 2, 'content', 1),
(232, 61, 'tabs', 3, 'content', 1),
(233, 59, 'comments', 8, 'content', 1),
(234, 59, 'comments', 8, 'content', 1),
(235, 16, 'comments', 5, 'content', 1),
(236, 62, 'form', 0, 'content', 1),
(237, 8, 'html', 0, 'content', 1),
(238, 13, 'html', 2, 'content', 1),
(239, 53, 'gallery', 5, 'content', 1),
(240, 53, 'html', 6, 'content', 1),
(241, 53, 'playlist', 7, 'content', 1),
(242, 53, 'mediaControls', 8, 'content', 1),
(243, 53, 'html', 9, 'content', 1),
(244, 53, 'html', 10, 'content', 1),
(245, 53, 'tip', 11, 'content', 1),
(246, 53, 'video', 12, 'content', 1),
(247, 29, 'heEventCover', 1, 'content', 1),
(248, 8, 'recaptcha', 2, 'content', 1),
(249, 9, 'recaptcha', 2, 'content', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_apptouch_faces`
--

CREATE TABLE `engine4_apptouch_faces` (
  `id` int(10) NOT NULL,
  `file_id` int(10) NOT NULL,
  `data` text NOT NULL,
  `parsed` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_apptouch_menuitems`
--

CREATE TABLE `engine4_apptouch_menuitems` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `label` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `plugin` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `data_attrs` text COLLATE utf8_unicode_ci,
  `menu` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `submenu` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `appenabled` tinyint(1) NOT NULL DEFAULT '1',
  `custom` tinyint(1) NOT NULL DEFAULT '0',
  `order` smallint(6) NOT NULL DEFAULT '999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_apptouch_menuitems`
--

INSERT INTO `engine4_apptouch_menuitems` (`id`, `name`, `module`, `label`, `plugin`, `params`, `data_attrs`, `menu`, `submenu`, `enabled`, `appenabled`, `custom`, `order`) VALUES
(1515, 'album_main_browse', 'album', 'Browse Albums', 'Album_Plugin_Menus::canViewAlbums', '{"route":"album_general","action":"browse"}', '', 'album_main', '', 1, 1, 0, 1),
(1516, 'album_main_manage', 'album', 'My Albums', 'Album_Plugin_Menus::canCreateAlbums', '{"route":"album_general","action":"manage"}', '', 'album_main', '', 1, 1, 0, 2),
(1517, 'album_main_upload', 'album', 'Add New Photos', 'Album_Plugin_Menus::canCreateAlbums', '{"route":"album_general","action":"upload"}', '', 'album_main', '', 1, 1, 0, 3),
(1518, 'album_quick_upload', 'album', 'Add New Photos', 'Album_Plugin_Menus::canCreateAlbums', '{"route":"album_general","action":"upload","class":"buttonlink icon_photos_new"}', '', 'album_quick', '', 1, 1, 0, 1),
(1519, 'article_main_browse', 'article', 'Browse Articles', 'Article_Plugin_Menus::canViewArticles', '{"route":"article_home"}', NULL, 'article_main', NULL, 1, 1, 0, 1),
(1520, 'article_main_manage', 'article', 'My Articles', 'Article_Plugin_Menus::canCreateArticles', '{"route":"article_manage","module":"article","controller":"index","action":"manage"}', NULL, 'article_main', '', 1, 1, 0, 2),
(1521, 'article_photos_list', 'article', 'View Photos', 'Article_Plugin_Menus', '{"route":"article_extended","controller":"photo","action":"list","class":"buttonlink icon_article_photos_list"}', NULL, 'article_photos', '', 1, 1, 0, 1),
(1522, 'article_photos_manage', 'article', 'Manage Photos', 'Article_Plugin_Menus', '{"route":"article_extended","controller":"photo","action":"manage","class":"buttonlink icon_article_photos_manage"}', NULL, 'article_photos', '', 1, 1, 0, 2),
(1523, 'article_photos_upload', 'article', 'Upload Photos', 'Article_Plugin_Menus', '{"route":"article_extended","controller":"photo","action":"upload","class":"buttonlink icon_article_photos_upload"}', NULL, 'article_photos', '', 1, 1, 0, 3),
(1524, 'article_main_create', 'article', 'Post New Article', 'Article_Plugin_Menus::canCreateArticles', '{"route":"article_create","module":"article","controller":"index","action":"create"}', NULL, 'article_quick', '', 1, 1, 0, 3),
(1525, 'article_tab_comments', 'article', 'Comments', 'Apptouch_Plugin_Tabs', '', NULL, 'article_tab', NULL, 1, 1, 0, 1),
(1526, 'article_tab_details', 'article', 'Details', 'Apptouch_Plugin_Tabs', '', NULL, 'article_tab', NULL, 1, 1, 0, 2),
(1527, 'article_tab_likebox', 'like', 'Members Like', 'Apptouch_Plugin_Tabs', '', NULL, 'article_tab', NULL, 1, 1, 0, 3),
(1528, 'article_tab_photos', 'article', 'Photos', 'Apptouch_Plugin_Tabs', '', '', 'article_tab', NULL, 1, 1, 0, 3),
(1530, 'blog_gutter_delete', 'blog', 'Delete This Entry', 'Blog_Plugin_Menus', '{"route":"blog_specific","action":"delete","class":"buttonlink smoothbox icon_blog_delete"}', '', 'blog_gutter', '', 1, 1, 0, 5),
(1533, 'blog_gutter_report', 'blog', 'Report', 'Blog_Plugin_Menus', '{"route":"default","module":"core","controller":"report","action":"create","class":"buttonlink smoothbox icon_report"}', '', 'blog_gutter', '', 1, 1, 0, 7),
(1534, 'blog_gutter_share', 'blog', 'Share', 'Blog_Plugin_Menus', '{"route":"default","module":"activity","controller":"index","action":"share","class":"buttonlink smoothbox icon_comments"}', '', 'blog_gutter', '', 1, 1, 0, 6),
(1535, 'blog_gutter_subscribe', 'blog', 'Subscribe', 'Blog_Plugin_Menus', '{"route":"default","module":"blog","controller":"subscription","action":"add","class":"buttonlink smoothbox icon_blog_subscribe"}', '', 'blog_gutter', '', 1, 1, 0, 8),
(1536, 'blog_gutter_suggest', 'suggest', 'Suggest To Friends', 'Apptouch_Plugin_Menus', '', '{"data-rel":"dialog"}', 'blog_gutter', '', 1, 1, 0, 11),
(1537, 'blog_main_browse', 'blog', 'Browse Entries', 'Blog_Plugin_Menus::canViewBlogs', '{"route":"blog_general"}', '', 'blog_main', '', 1, 1, 0, 1),
(1539, 'blog_main_manage', 'blog', 'My Entries', 'Blog_Plugin_Menus::canCreateBlogs', '{"route":"blog_general","action":"manage"}', '', 'blog_main', '', 1, 1, 0, 2),
(1541, 'classified_gutter_suggest', 'suggest', 'Suggest To Friends', 'Apptouch_Plugin_Menus', '', '{"data-rel":"dialog"}', 'classified_gutter', '', 1, 1, 0, 11),
(1542, 'classified_main_browse', 'classified', 'Browse Listings', 'Classified_Plugin_Menus::canViewClassifieds', '{"route":"classified_general"}', '', 'classified_main', '', 1, 1, 0, 1),
(1543, 'classified_main_create', 'classified', 'Post a New Listing', 'Classified_Plugin_Menus::canCreateClassifieds', '{"route":"classified_general","action":"create"}', '', 'classified_main', '', 1, 1, 0, 3),
(1544, 'classified_main_manage', 'classified', 'My Listings', 'Classified_Plugin_Menus::canCreateClassifieds', '{"route":"classified_general","action":"manage"}', '', 'classified_main', '', 1, 1, 0, 2),
(1545, 'classified_quick_create', 'classified', 'Post a New Listing', 'Classified_Plugin_Menus::canCreateClassifieds', '{"route":"classified_general","action":"create","class":"buttonlink icon_classified_new"}', '', 'classified_quick', '', 1, 1, 0, 1),
(1546, 'core_dashbaord_classified', 'classified', 'Classifieds', '', '{"route":"classified_general"}', '{"data-icon":"tags","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 20),
(1547, 'core_dashboard_album', 'apptouch', 'Albums', 'Apptouch_Plugin_Menus', '{"route":"album_general","action":"browse"}', '{"data-icon":"picture","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 8),
(1548, 'core_dashboard_article', 'article', 'Articles', '', '{"route":"article_home"}', '{"data-icon":"file","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 9),
(1549, 'core_dashboard_blog', 'blog', 'Blogs', '', '{"route":"blog_general"}', '{"data-icon":"book","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 11),
(1550, 'core_dashboard_event', 'event', 'Events', '', '{"route":"event_general"}', '{"data-icon":"calendar","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 15),
(1551, 'core_dashboard_forum', 'forum', 'Forum', NULL, '{"route":"forum_general"}', '{"data-icon":"bullhorn","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 16),
(1552, 'core_dashboard_group', 'group', 'Groups', '', '{"route":"group_general"}', '{"data-icon":"group","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 18),
(1553, 'core_dashboard_invite', 'invite', 'Invite', 'Apptouch_Plugin_Menus::canInvite', '{"route":"default","module":"invite"}', '{"data-icon":"circle-arrow-right","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 19),
(1554, 'core_dashboard_members', 'user', 'Members', '', '{"route":"user_general","action":"browse"}', '{"data-icon":"group","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 6),
(1555, 'core_dashboard_messages', 'messages', 'Messages', 'Apptouch_Plugin_Menus', '', '{"data-icon":"envelope","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 4),
(1556, 'core_dashboard_music', 'music', 'Music', '', '{"route":"music_general","action":"browse"}', '{"data-icon":"music","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 20),
(1557, 'core_dashboard_offers', 'offers', 'OFFERS_Offers', NULL, '{"route":"offers_upcoming"}', '{"data-icon":"asterisk","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 21),
(1558, 'core_dashboard_page', 'page', 'Pages', '', '{"route":"page_browse"}', '{"data-icon":"map-marker","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 22),
(1559, 'core_dashboard_poll', 'poll', 'Polls', '', '{"route":"poll_general","action":"browse"}', '{"data-icon":"bar-chart","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 23),
(1560, 'core_dashboard_profile', 'user', 'My Profile', 'Apptouch_Plugin_Menus', '', '{"data-icon":"user","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 3),
(1562, 'core_dashboard_search', 'core', 'Search', 'Apptouch_Plugin_Menus', '', '{"data-icon":"search","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 8),
(1563, 'core_dashboard_store', 'store', 'Stores', 'Apptouch_Plugin_Menus', '{"route":"store_general"}', '{"data-icon":"shopping-cart","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 25),
(1564, 'core_dashboard_updates', 'core', 'Updates', 'Apptouch_Plugin_Menus', '', '{"data-icon":"flag","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 5),
(1565, 'core_dashboard_video', 'video', 'Videos', '', '{"route":"video_general"}', '{"data-icon":"facetime-video","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 26),
(1566, 'core_dashboard_credit', 'credit', 'Credits', '', '{"route":"credit_general"}', '{"data-icon":"money","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 19),
(1567, 'core_dashboard_hegift', 'hegift', 'HEGIFT_Gifts', NULL, '{"route":"hegift_general"}', '{"data-icon":"gift","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 22),
(1568, 'core_dashboard_home', 'core', 'Home', 'Apptouch_Plugin_Menus', '{"route":"default"}', '{"data-icon":"home","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 1),
(1569, 'core_mini_settings', 'user', 'Profile Settings', 'User_Plugin_Menus', '', '{"data-icon":"cog","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 30),
(1570, 'core_dashboard_contact', 'core', 'Contact', '', '{"route":"default","module":"core","controller":"help","action":"contact"}', '{"data-icon":"phone"}', 'core_dashboard', '', 1, 1, 0, 29),
(1571, 'core_dashboard_privacy', 'core', 'Privacy', '', '{"route":"default","module":"core","controller":"help","action":"privacy"}', '{"data-icon":"lock"}', 'core_dashboard', '', 1, 1, 0, 31),
(1572, 'core_dashboard_auth', 'user', 'Auth', 'Apptouch_Plugin_Menus', '', '{"data-icon":"off","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 32),
(1573, 'core_dashboard_signup', 'user', 'Signup', 'Apptouch_Plugin_Menus', '', '{"data-icon":"signin","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 28),
(1576, 'core_dashboard_chat', 'chat', 'Chat', 'Apptouch_Plugin_Menus', '{"route":"default","module":"chat"}', '{"data-icon":"comments","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 16),
(1589, 'core_sitemap_album', 'album', 'Albums', '', '{"route":"album_general","action":"browse"}', '', 'core_sitemap', '', 1, 1, 0, 3),
(1590, 'core_sitemap_blog', 'blog', 'Blogs', '', '{"route":"blog_general"}', '', 'core_sitemap', '', 1, 1, 0, 4),
(1591, 'core_sitemap_chat', 'chat', 'Chat', '', '{"route":"default","module":"chat"}', '', 'core_sitemap', '', 1, 1, 0, 5),
(1592, 'core_sitemap_classified', 'classified', 'Classifieds', '', '{"route":"classified_general"}', '', 'core_sitemap', '', 1, 1, 0, 4),
(1593, 'core_sitemap_event', 'event', 'Events', '', '{"route":"event_general"}', '', 'core_sitemap', '', 1, 1, 0, 6),
(1594, 'core_sitemap_forum', 'forum', 'Forum', '', '{"route":"forum_general"}', '', 'core_sitemap', '', 1, 1, 0, 5),
(1595, 'core_sitemap_group', 'group', 'Groups', '', '{"route":"group_general"}', '', 'core_sitemap', '', 1, 1, 0, 6),
(1596, 'core_sitemap_home', 'core', 'Home', '', '{"route":"default"}', '', 'core_sitemap', '', 1, 1, 0, 1),
(1597, 'core_sitemap_music', 'music', 'Music', '', '{"route":"music_general","action":"browse"}', '', 'core_sitemap', '', 1, 1, 0, 100),
(1598, 'core_sitemap_page', 'page', 'Pages', '', '{"route":"page_browse"}', NULL, 'core_sitemap', '', 1, 1, 0, 6),
(1599, 'core_sitemap_poll', 'poll', 'Polls', '', '{"route":"poll_general","action":"browse"}', '', 'core_sitemap', '', 1, 1, 0, 5),
(1601, 'core_sitemap_user', 'user', 'Members', '', '{"route":"user_general","action":"browse"}', '', 'core_sitemap', '', 1, 1, 0, 2),
(1602, 'core_sitemap_video', 'video', 'Videos', '', '{"route":"video_general"}', '', 'core_sitemap', '', 1, 1, 0, 7),
(1603, 'credit_main_credit', 'credit', 'Credit Home', 'Credit_Plugin_Menus', '{"route":"credit_general"}', NULL, 'credit_main', '', 1, 1, 0, 1),
(1604, 'credit_main_faq', 'credit', 'FAQ', '', '{"route":"credit_general","action":"faq"}', NULL, 'credit_main', '', 1, 1, 0, 3),
(1605, 'credit_main_manage', 'credit', 'My Credits', 'Credit_Plugin_Menus', '{"route":"credit_general","action":"manage"}', NULL, 'credit_main', '', 1, 1, 0, 2),
(1607, 'event_main_manage', 'event', 'My Events', 'Event_Plugin_Menus', '{"route":"event_general","action":"manage"}', '', 'event_main', '', 1, 1, 0, 3),
(1608, 'event_main_past', 'event', 'APPTOUCH_Past', '', '{"route":"event_past"}', '', 'event_main', '', 1, 1, 0, 2),
(1609, 'event_main_upcoming', 'event', 'APPTOUCH_Upcoming', '', '{"route":"event_upcoming"}', '', 'event_main', '', 1, 1, 0, 1),
(1610, 'event_profile_delete', 'event', 'Delete Event', 'Event_Plugin_Menus', '', '', 'event_profile', '', 1, 1, 0, 8),
(1612, 'event_profile_invite', 'event', 'Invite', 'Event_Plugin_Menus', '', '', 'event_profile', '', 1, 1, 0, 6),
(1613, 'event_profile_member', 'event', 'Member', 'Event_Plugin_Menus', '', '', 'event_profile', '', 1, 1, 0, 3),
(1614, 'event_profile_message', 'event', 'Message Members', 'Event_Plugin_Menus', '', '', 'event_profile', '', 1, 1, 0, 7),
(1615, 'event_profile_report', 'event', 'Report Event', 'Event_Plugin_Menus', '', '', 'event_profile', '', 1, 1, 0, 4),
(1616, 'event_profile_share', 'event', 'Share', 'Event_Plugin_Menus', '', '', 'event_profile', '', 1, 1, 0, 5),
(1618, 'event_profile_suggest', 'suggest', 'Suggest To Friends', 'Apptouch_Plugin_Menus', '', '{"data-rel":"dialog"}', 'event_profile', '', 1, 1, 0, 11),
(1620, 'event_tab_discussions', 'event', 'Discussions', 'Apptouch_Plugin_Tabs', '', '', 'event_tab', '', 1, 1, 0, 4),
(1621, 'event_tab_guests', 'event', 'Guests', 'Apptouch_Plugin_Tabs', '', '', 'event_tab', '', 1, 1, 0, 2),
(1622, 'event_tab_likebox', 'like', 'Members Like', 'Apptouch_Plugin_Tabs', '', NULL, 'event_tab', NULL, 1, 1, 0, 999),
(1623, 'event_tab_links', 'event', 'Links', 'Apptouch_Plugin_Tabs', '', '', 'event_tab', '', 1, 1, 0, 5),
(1624, 'event_tab_photos', 'event', 'Photos', 'Apptouch_Plugin_Tabs', '', '', 'event_tab', '', 1, 1, 0, 444),
(1625, 'event_tab_updates', 'event', 'Updates', 'Apptouch_Plugin_Tabs', '', '', 'event_tab', '', 1, 1, 0, 1),
(1626, 'group_main_browse', 'group', 'Browse Groups', '', '{"route":"group_general","action":"browse"}', '', 'group_main', '', 1, 1, 0, 1),
(1628, 'group_main_manage', 'group', 'My Groups', 'Group_Plugin_Menus', '{"route":"group_general","action":"manage"}', '', 'group_main', '', 1, 1, 0, 2),
(1630, 'group_profile_invite', 'group', 'Invite', 'Group_Plugin_Menus', '', '', 'group_profile', '', 1, 1, 0, 6),
(1631, 'group_profile_member', 'group', 'Member', 'Group_Plugin_Menus', '', '', 'group_profile', '', 1, 1, 0, 3),
(1632, 'group_profile_message', 'group', 'Message Members', 'Group_Plugin_Menus', '', '', 'group_profile', '', 1, 1, 0, 7),
(1633, 'group_profile_report', 'group', 'Report Group', 'Group_Plugin_Menus', '', '', 'group_profile', '', 1, 1, 0, 4),
(1634, 'group_profile_share', 'group', 'Share', 'Group_Plugin_Menus', '', '', 'group_profile', '', 1, 1, 0, 5),
(1636, 'group_profile_suggest', 'suggest', 'Suggest To Friends', 'Apptouch_Plugin_Menus', '', '{"data-rel":"dialog"}', 'group_profile', '', 1, 1, 0, 11),
(1638, 'group_tab_discussions', 'group', 'Discussions', 'Apptouch_Plugin_Tabs', '', '', 'group_tab', '', 1, 1, 0, 4),
(1639, 'group_tab_events', 'group', 'Events', 'Apptouch_Plugin_Tabs', '', '', 'group_tab', '', 1, 1, 0, 6),
(1640, 'group_tab_likebox', 'like', 'Members Like', 'Apptouch_Plugin_Tabs', '', NULL, 'group_tab', NULL, 1, 1, 0, 999),
(1641, 'group_tab_links', 'group', 'Links', 'Apptouch_Plugin_Tabs', '', '', 'group_tab', '', 1, 1, 0, 5),
(1642, 'group_tab_members', 'group', 'Members', 'Apptouch_Plugin_Tabs', '', '', 'group_tab', '', 1, 1, 0, 2),
(1643, 'group_tab_photos', 'group', 'Photos', 'Apptouch_Plugin_Tabs', '', '', 'group_tab', '', 1, 1, 0, 3),
(1644, 'group_tab_updates', 'group', 'Updates', 'Apptouch_Plugin_Tabs', '', '', 'group_tab', '', 1, 1, 0, 1),
(1645, 'hegift_main_index', 'hegift', 'Browse Gifts', NULL, '{"route":"hegift_general"}', NULL, 'hegift_main', NULL, 1, 1, 0, 1),
(1646, 'hegift_main_manage', 'hegift', 'Inbox/Sent', 'Hegift_Plugin_Menus', '{"route":"hegift_general","action":"manage"}', NULL, 'hegift_main', NULL, 1, 1, 0, 2),
(1647, 'hegift_main_own', 'hegift', 'Send Own Gift', 'Hegift_Plugin_Menus', '{"route":"hegift_own","action":"mine"}', NULL, 'hegift_main', NULL, 1, 1, 0, 3),
(1648, 'hegift_main_temp', 'hegift', 'Temporary', 'Hegift_Plugin_Menus', '{"route":"hegift_temp"}', NULL, 'hegift_main', NULL, 1, 1, 0, 4),
(1649, 'messages_main_compose', 'messages', 'APPTOUCH_Compose', '', '{"route":"messages_general","action":"compose"}', '', 'messages_main', '', 1, 1, 0, 3),
(1650, 'messages_main_inbox', 'messages', 'Inbox', '', '{"route":"messages_general","action":"inbox"}', '', 'messages_main', '', 1, 1, 0, 1),
(1651, 'messages_main_outbox', 'messages', 'APPTOUCH_Sent', '', '{"route":"messages_general","action":"outbox"}', '', 'messages_main', '', 1, 1, 0, 2),
(1652, 'mobi_browse_album', 'album', 'Albums', '', '{"route":"album_general","action":"browse"}', '', 'mobi_browse', '', 1, 1, 0, 2),
(1653, 'mobi_browse_blog', 'blog', 'Blogs', '', '{"route":"blog_general"}', '', 'mobi_browse', '', 1, 1, 0, 3),
(1654, 'mobi_browse_classified', 'classified', 'Classifieds', '', '{"route":"classified_general"}', '', 'mobi_browse', '', 1, 1, 0, 4),
(1655, 'mobi_browse_event', 'event', 'Events', '', '{"route":"event_general"}', '', 'mobi_browse', '', 1, 1, 0, 7),
(1656, 'mobi_browse_forum', 'forum', 'Forum', '', '{"route":"forum_general"}', '', 'mobi_browse', '', 1, 1, 0, 5),
(1657, 'mobi_browse_group', 'group', 'Groups', '', '{"route":"group_general"}', '', 'mobi_browse', '', 1, 1, 0, 8),
(1658, 'mobi_browse_music', 'music', 'Music', '', '{"route":"music_general","action":"browse"}', '', 'mobi_browse', '', 1, 1, 0, 10),
(1659, 'mobi_browse_poll', 'poll', 'Polls', '', '{"route":"poll_general","action":"browse"}', '', 'mobi_browse', '', 1, 1, 0, 6),
(1660, 'mobi_browse_video', 'video', 'Videos', '', '{"route":"video_general"}', '', 'mobi_browse', '', 1, 1, 0, 9),
(1661, 'music_main_browse', 'music', 'Browse Music', 'Music_Plugin_Menus::canViewPlaylists', '{"route":"music_general","action":"browse"}', '', 'music_main', '', 1, 1, 0, 1),
(1663, 'music_main_manage', 'music', 'My Music', 'Music_Plugin_Menus::canCreatePlaylists', '{"route":"music_general","action":"manage"}', '', 'music_main', '', 1, 1, 0, 2),
(1665, 'rate_offerreview_create', 'rate', 'Create New Review', 'Apptouch_Plugin_OfferMenus', '{"route":"offer_review","action":"create-review"}', NULL, 'offerreview_create', '', 1, 1, 0, 1),
(1666, 'offers_main_manage', 'offers', 'OFFERS_offers_manage', 'Offers_Plugin_Menus', '{"route":"offers_mine"}', NULL, 'offers_main', NULL, 1, 1, 0, 3),
(1667, 'offers_main_past', 'offers', 'OFFERS_past_offers', NULL, '{"route":"offers_past"}', NULL, 'offers_main', NULL, 1, 1, 0, 2),
(1668, 'offers_main_upcoming', 'offers', 'OFFERS_upcoming_offers', NULL, '{"route":"offers_upcoming"}', NULL, 'offers_main', NULL, 1, 1, 0, 1),
(1669, 'offers_tab_details', 'offers', 'Offer Details', 'Apptouch_Plugin_Tabs', '', NULL, 'offers_tab', NULL, 1, 1, 0, 1),
(1670, 'offers_tab_likebox', 'like', 'Members Like', 'Apptouch_Plugin_Tabs', '', NULL, 'offers_tab', NULL, 1, 1, 0, 999),
(1671, 'offers_tab_reviews', 'offers', 'Offer Reviews', 'Apptouch_Plugin_Tabs', '', NULL, 'offers_tab', NULL, 1, 1, 0, 3),
(1672, 'offers_tab_subscribers', 'offers', 'OFFERS_Participants', 'Apptouch_Plugin_Tabs', '', NULL, 'offers_tab', NULL, 1, 1, 0, 4),
(1673, 'offers_tab_updates', 'offers', 'What''s New', 'Apptouch_Plugin_Tabs', '', NULL, 'offers_tab', NULL, 1, 1, 0, 2),
(1674, 'offers_mine', 'offers', 'OFFERS_manage_offers', 'Apptouch_Plugin_PageMenus', '{"route":"offers_page","action":"manage"}', NULL, 'offer_profile_page', NULL, 1, 1, 0, 3),
(1675, 'offers_past', 'offers', 'OFFERS_past_offers', 'Apptouch_Plugin_PageMenus', '{"route":"offers_page","action":"past"}', NULL, 'offer_profile_page', NULL, 1, 1, 0, 2),
(1676, 'offers_upcoming', 'offers', 'APPTOUCH_Upcoming', 'Apptouch_Plugin_PageMenus', '{"route":"offers_page"}', NULL, 'offer_profile_page', NULL, 1, 1, 0, 1),
(1677, 'offer_profile_delete', 'offers', 'OFFERS_delete_offer', 'Offers_Plugin_Menus', '', NULL, 'offer_profile_quick', NULL, 1, 1, 0, 2),
(1678, 'offer_profile_favorite', 'offers', 'OFFERS_Make As Favorite', 'Offers_Plugin_Menus', '', NULL, 'offer_profile_quick', NULL, 1, 1, 0, 3),
(1679, 'offer_profile_follow', 'offers', 'OFFERS_FOLLOW_Follow_Offer', 'Offers_Plugin_Menus', '', NULL, 'offer_profile_quick', NULL, 1, 1, 0, 4),
(1680, 'offer_profile_share', 'offers', '', 'Offers_Plugin_Menus', '', NULL, 'offer_profile_quick', NULL, 1, 1, 0, 5),
(1681, 'pagealbum_all', 'pagealbum', 'Browse Albums', 'Apptouch_Plugin_PageMenus', '{"route":"page_album","action":"index"}', NULL, 'pagealbum', NULL, 1, 1, 0, 1),
(1682, 'pagealbum_create', 'pagealbum', 'Add New Photos', 'Apptouch_Plugin_PageMenus', '{"route":"page_album","action":"upload"}', NULL, 'pagealbum', NULL, 1, 1, 0, 3),
(1683, 'pagealbum_mine', 'pagealbum', 'My Albums', 'Apptouch_Plugin_PageMenus', '{"route":"page_album","action":"mine"}', NULL, 'pagealbum', NULL, 1, 1, 0, 2),
(1684, 'pagealbum_main_browse', 'pagealbum', 'Browse Albums', '', '{"route":"page_albums","action":"browse"}', NULL, 'pagealbum_main', NULL, 1, 1, 0, 997),
(1685, 'pagealbum_main_create', 'pagealbum', 'Add New Photos', 'Album_Plugin_Menus::canCreateAlbums', '{"route":"album_general","action":"upload"}', NULL, 'pagealbum_main', NULL, 1, 1, 0, 999),
(1686, 'pagealbum_main_manage', 'pagealbum', 'My Albums', '', '{"route":"page_albums", "action":"manage"}', NULL, 'pagealbum_main', NULL, 1, 1, 0, 998),
(1687, 'pagealbum_quick_create', 'pagealbum', 'Add New Photos', 'Apptouch_Plugin_PageMenus', '{"route":"page_album","action":"upload"}', NULL, 'pagealbum_quick', NULL, 1, 1, 0, 1),
(1688, 'pageblog_all', 'pageblog', 'All', 'Apptouch_Plugin_PageMenus', '{"route":"page_blog","action":"index"}', NULL, 'pageblog', '', 1, 1, 0, 1),
(1690, 'pageblog_mine', 'pageblog', 'Mine', 'Apptouch_Plugin_PageMenus', '{"route":"page_blog","action":"mine"}', NULL, 'pageblog', '', 1, 1, 0, 2),
(1691, 'pageblog_main_browse', 'pageblog', 'Browse Entries', '', '{"route":"page_blogs","action":"browse"}', NULL, 'pageblog_main', '', 1, 1, 0, 997),
(1693, 'pageblog_main_manage', 'pageblog', 'My Entries', '', '{"route":"page_blogs","action":"manage"}', NULL, 'pageblog_main', '', 1, 1, 0, 998),
(1697, 'pageevent_mine', 'pageevent', 'Mine', 'Apptouch_Plugin_PageMenus', '{"route":"page_event","action":"mine"}', NULL, 'pageevent', NULL, 1, 1, 0, 4),
(1698, 'pageevent_past', 'pageevent', 'Past', 'Apptouch_Plugin_PageMenus', '{"route":"page_event","action":"past"}', NULL, 'pageevent', NULL, 1, 1, 0, 2),
(1699, 'pageevent_upcoming', 'pageevent', 'Upcoming', 'Apptouch_Plugin_PageMenus', '{"route":"page_event","action":"upcoming"}', NULL, 'pageevent', NULL, 1, 1, 0, 1),
(1701, 'pageevent_main_manage', 'pageevent', 'My Events', '', '{"route":"pageevent_manage"}', NULL, 'pageevent_main', '', 1, 1, 0, 998),
(1702, 'pageevent_main_past', 'pageevent', 'Past Events', '', '{"route":"pageevent_past"}', NULL, 'pageevent_main', '', 1, 1, 0, 997),
(1703, 'pageevent_main_upcoming', 'pageevent', 'Upcoming Events', '', '{"route":"pageevent_upcoming"}', NULL, 'pageevent_main', '', 1, 1, 0, 996),
(1705, 'pageevent_quick_cancel', 'pageevent', 'PAGEEVENT_CANCEL', 'Apptouch_Plugin_PageeventMenus', '{"route":"page_event","action":"member-approve"}', '{''data-cache'':''false''}', 'pageevent_quick_view', NULL, 1, 1, 0, 6),
(1706, 'pageevent_quick_delete', 'pageevent', 'Delete', 'Apptouch_Plugin_PageeventMenus', '{"route":"page_event","action":"delete"}', '{''data-cache'':''false''}', 'pageevent_quick_view', NULL, 1, 1, 0, 2),
(1708, 'pageevent_quick_invite', 'pageevent', 'PAGEEVENT_INVITE', 'Apptouch_Plugin_PageeventMenus', '{"route":"page_event","action":"invite"}', '{"data-rel":"dialog"}', 'pageevent_quick_view', NULL, 1, 1, 0, 3),
(1709, 'pageevent_quick_leave', 'pageevent', 'PAGEEVENT_LEAVE', 'Apptouch_Plugin_PageeventMenus', '{"route":"page_event","action":"member-approve"}', '{''data-cache'':''false''}', 'pageevent_quick_view', NULL, 1, 1, 0, 4),
(1710, 'pageevent_quick_request', 'pageevent', 'PAGEEVENT_REQUEST_INVITE', 'Apptouch_Plugin_PageeventMenus', '{"route":"page_event","action":"rsvp"}', '{''data-cache'':''false''}', 'pageevent_quick_view', NULL, 1, 1, 0, 7),
(1711, 'pageevent_quick_waiting', 'pageevent', 'PAGEEVENT_WAITING', 'Apptouch_Plugin_PageeventMenus', '{"route":"page_event","action":"waiting"}', '{''data-cache'':''false''}', 'pageevent_quick_view', NULL, 1, 1, 0, 5),
(1712, 'pagemusic_all', 'pagemusic', 'Browse Music', 'Apptouch_Plugin_PageMenus', '{"route":"page_music","action":"index"}', NULL, 'pagemusic', '', 1, 1, 0, 1),
(1714, 'pagemusic_manage', 'pagemusic', 'Manage Playlists', 'Apptouch_Plugin_PageMenus', '{"route":"page_music","action":"manage"}', NULL, 'pagemusic', '', 1, 1, 0, 2),
(1716, 'pagevideo_all', 'pagevideo', 'Browse Videos', 'Apptouch_Plugin_PageMenus', '{"route":"page_video","action":"index"}', NULL, 'pagevideo', NULL, 1, 1, 0, 1),
(1717, 'pagevideo_create', 'pagevideo', 'Post New Video', 'Apptouch_Plugin_PageMenus', '{"route":"page_video","action":"create"}', NULL, 'pagevideo', NULL, 1, 1, 0, 3),
(1718, 'pagevideo_manage', 'pagevideo', 'My Videos', 'Apptouch_Plugin_PageMenus', '{"route":"page_video","action":"manage"}', NULL, 'pagevideo', NULL, 1, 1, 0, 2),
(1719, 'pagevideo_main_browse', 'pagevideo', 'Browse Videos', '', '{"route":"page_videos","action":"browse"}', NULL, 'pagevideo_main', NULL, 1, 1, 0, 997),
(1720, 'pagevideo_main_create', 'pagevideo', 'Post New Video', 'Video_Plugin_Menus::canCreateVideos', '{"route":"video_general","action":"create"}', NULL, 'pagevideo_main', NULL, 1, 1, 0, 999),
(1721, 'pagevideo_main_manage', 'pagevideo', 'My Videos', '', '{"route":"page_videos","action":"manage"}', NULL, 'pagevideo_main', NULL, 1, 1, 0, 998),
(1722, 'pagevideo_quick_create', 'pagevideo', 'Post New Video', 'Apptouch_Plugin_PageMenus', '{"route":"page_video","action":"create"}', NULL, 'pagevideo_quick', NULL, 1, 1, 0, 1),
(1724, 'page_main_manage', 'page', 'My Pages', 'Page_Plugin_Menus', '{"route":"page_manage","action":"manage"}', NULL, 'page_main', NULL, 1, 1, 0, 2),
(1725, 'page_main_pages', 'page', 'Browse Pages', 'Page_Plugin_Menus', '{"route":"page_browse"}', NULL, 'page_main', NULL, 1, 1, 0, 1),
(1729, 'page_profile_share', 'page', 'Share', 'Page_Plugin_Menus', '', '{"data-icon":"share"}', 'page_profile', NULL, 1, 1, 0, 5),
(1730, 'page_profile_store', 'page', 'Manage Products', 'Page_Plugin_Menus', '{"route":"store_settings", "action":"products"}', '{"data-icon":"shopping-cart"}', 'page_profile', NULL, 1, 1, 0, 7),
(1731, 'page_profile_suggest', 'suggest', 'Suggest', 'Apptouch_Plugin_Menus', '', '{"data-icon":"users", "data-rel":"dialog"}', 'page_profile', '', 1, 1, 0, 11),
(1733, 'page_tab_albums', 'pagealbum', 'Albums', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 4),
(1734, 'page_tab_blogs', 'pageblog', 'Blogs', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 5),
(1735, 'page_tab_contact', 'pagecontact', 'Contacts', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 15),
(1736, 'page_tab_discussion', 'pagediscussion', 'Discussions', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 6),
(1737, 'page_tab_event', 'pageevent', 'Events', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 8),
(1738, 'page_tab_faq', 'pagefaq', 'FAQ', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 14),
(1739, 'page_tab_fields', 'page', 'Info', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 2),
(1740, 'page_tab_likebox', 'like', 'Members Like', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 999),
(1741, 'page_tab_links', 'page', 'Page Links', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 12),
(1742, 'page_tab_map', 'page', 'Map', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 3),
(1743, 'page_tab_music', 'pagemusic', 'Music', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 9),
(1744, 'page_tab_offers', 'offers', 'Offers', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 17),
(1745, 'page_tab_reviews', 'page', 'Reviews', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 13),
(1746, 'page_tab_staff', 'page', 'Staff', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 16),
(1747, 'page_tab_store', 'store', 'Store', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 11),
(1748, 'page_tab_updates', 'page', 'Updates', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 1),
(1749, 'page_tab_video', 'pagevideo', 'Videos', 'Apptouch_Plugin_Tabs', '', '', 'page_tab', NULL, 1, 1, 0, 10),
(1750, 'poll_main_browse', 'poll', 'Browse Polls', 'Poll_Plugin_Menus::canViewPolls', '{"route":"poll_general","action":"browse"}', '', 'poll_main', '', 1, 1, 0, 1),
(1752, 'poll_main_manage', 'poll', 'My Polls', 'Poll_Plugin_Menus::canCreatePolls', '{"route":"poll_general","action":"manage"}', '', 'poll_main', '', 1, 1, 0, 2),
(1754, 'rate_review_create', 'rate', 'Create New Review', 'Apptouch_Plugin_PageMenus', '{"route":"page_review","action":"create-review"}', NULL, 'review_create', NULL, 1, 1, 0, 1),
(1755, 'store_main_cart', 'store', 'Cart', 'Store_Plugin_Menus', '{"route":"store_extended","controller":"cart"}', NULL, 'store_main', NULL, 1, 1, 0, 11),
(1756, 'store_main_faq', 'store', 'FAQ', NULL, '{"route":"store_general","action":"faq"}', NULL, 'store_main', NULL, 1, 1, 0, 3),
(1757, 'store_main_panel', 'store', 'STORE_My Panel', 'Store_Plugin_Menus', '{"route":"store_panel"}', NULL, 'store_main', NULL, 1, 1, 0, 10),
(1758, 'store_main_products', 'store', 'STORE_Browse Products', NULL, '{"route":"store_general"}', NULL, 'store_main', NULL, 1, 1, 0, 1),
(1759, 'store_main_stores', 'store', 'STORE_Browse Stores', 'Store_Plugin_Menus', '{"route":"store_general","action":"stores"}', NULL, 'store_main', NULL, 1, 1, 0, 2),
(1760, 'store_product_profile_delete', 'store', 'Delete Product', 'Store_Plugin_Menus', '', '', 'store_product_quick', NULL, 1, 1, 0, 4),
(1761, 'store_product_profile_edit', 'store', 'STORE_Edit Product', 'Store_Plugin_Menus', '', NULL, 'store_product_quick', NULL, 1, 1, 0, 2),
(1762, 'store_product_profile_share', 'store', 'Share Product', 'Store_Plugin_Menus', '', '', 'store_product_quick', NULL, 1, 1, 0, 3),
(1763, 'store_product_profile_store', 'store', 'STORE_Back to Store', 'Store_Plugin_Menus', '', NULL, 'store_product_quick', NULL, 1, 1, 0, 5),
(1764, 'store_tab_audios', 'store', 'Audios', 'Apptouch_Plugin_Tabs', '', NULL, 'store_tab', NULL, 1, 1, 0, 2),
(1765, 'store_tab_likebox', 'like', 'Members Like', 'Apptouch_Plugin_Tabs', '', NULL, 'store_tab', NULL, 1, 1, 0, 999),
(1766, 'store_tab_photos', 'store', 'Photos', 'Apptouch_Plugin_Tabs', '', NULL, 'store_tab', NULL, 1, 1, 0, 1),
(1767, 'store_tab_video', 'store', 'Video', 'Apptouch_Plugin_Tabs', '', NULL, 'store_tab', NULL, 1, 1, 0, 3),
(1769, 'timeline_profile_edit', 'timeline', 'Update Info', 'Timeline_Plugin_Menus', '', '', 'timeline_profile', NULL, 1, 1, 0, 1),
(1770, 'timeline_profile_friend', 'timeline', 'Friends', 'Timeline_Plugin_Menus', '', '', 'timeline_profile', NULL, 1, 1, 0, 3),
(1771, 'timeline_profile_report', 'timeline', 'Report User', 'Timeline_Plugin_Menus', '', '', 'timeline_profile', NULL, 1, 1, 0, 5),
(1773, 'user_edit_photo', 'user', 'Edit My Photo', '', '{"route":"user_extended","module":"user","controller":"edit","action":"photo"}', '', 'user_edit', '', 1, 1, 0, 2),
(1774, 'user_edit_profile', 'user', 'Personal Info', '', '{"route":"user_extended","module":"user","controller":"edit","action":"profile"}', '', 'user_edit', '', 1, 1, 0, 1),
(1777, 'user_footer_contact', 'core', 'Contact', '', '{"route":"default","module":"core","controller":"help","action":"contact"}', '', 'user_footer', '', 1, 1, 0, 3),
(1778, 'user_footer_privacy', 'core', 'Privacy', '', '{"route":"default","module":"core","controller":"help","action":"privacy"}', '', 'user_footer', '', 1, 1, 0, 1),
(1779, 'user_footer_terms', 'core', 'Terms of Service', '', '{"route":"default","core":"user","controller":"help","action":"terms"}', '', 'user_footer', '', 1, 1, 0, 2),
(1780, 'user_home_edit', 'user', 'Edit My Profile', 'User_Plugin_Menus', '{"route":"user_extended","module":"user","controller":"edit","action":"profile","icon":"application/modules/User/externals/images/links/edit.png"}', '', 'user_home', '', 1, 1, 0, 3),
(1781, 'user_home_friends', 'user', 'Browse Members', '', '{"route":"user_general","controller":"index","action":"browse","icon":"application/modules/User/externals/images/links/search.png"}', '', 'user_home', '', 1, 1, 0, 4),
(1782, 'user_home_invite', 'invite', 'Invite Your Friends', 'Invite_Plugin_Menus::canInvite', '{"route":"default","module":"invite","icon":"application/modules/Invite/externals/images/invite.png"}', '', 'user_home', '', 1, 1, 0, 5),
(1783, 'user_home_updates', 'user', 'View Recent Updates', '', '{"route":"recent_activity","icon":"application/modules/User/externals/images/links/updates.png"}', '', 'user_home', '', 1, 1, 0, 1),
(1784, 'user_home_view', 'user', 'View My Profile', 'User_Plugin_Menus', '{"route":"user_profile_self","icon":"application/modules/User/externals/images/links/profile.png"}', '', 'user_home', '', 1, 1, 0, 2),
(1787, 'user_profile_edit', 'user', 'Edit Profile', 'User_Plugin_Menus', '', '', 'user_profile', '', 1, 1, 0, 1),
(1788, 'user_profile_friend', 'user', 'Friends', 'User_Plugin_Menus', '', '', 'user_profile', '', 1, 1, 0, 3),
(1789, 'user_profile_message', 'messages', 'Send Message', 'Messages_Plugin_Menus', '', '', 'user_profile', '', 1, 1, 0, 2),
(1790, 'user_profile_report', 'user', 'Report User', 'User_Plugin_Menus', '', '', 'user_profile', '', 1, 1, 0, 5),
(1791, 'user_profile_suggest', 'suggest', 'Suggest To Friends', 'Apptouch_Plugin_Menus', '', '{"data-rel":"dialog"}', 'user_profile', '', 1, 1, 0, 11),
(1792, 'user_settings_delete', 'user', 'Delete Account', 'User_Plugin_Menus::canDelete', '{"route":"user_extended", "module":"user", "controller":"settings", "action":"delete"}', '', 'user_settings', '', 1, 1, 0, 6),
(1793, 'user_settings_general', 'user', 'General', '', '{"route":"user_extended","module":"user","controller":"settings","action":"general"}', '', 'user_settings', '', 1, 1, 0, 1),
(1795, 'user_settings_notifications', 'user', 'Notifications', '', '{"route":"user_extended","module":"user","controller":"settings","action":"notifications"}', '', 'user_settings', '', 1, 1, 0, 3),
(1796, 'user_settings_password', 'user', 'Change Password', '', '{"route":"user_extended", "module":"user", "controller":"settings", "action":"password"}', '', 'user_settings', '', 1, 1, 0, 5),
(1797, 'user_settings_payment', 'user', 'Subscription', 'Payment_Plugin_Menus', '{"route":"default", "module":"payment", "controller":"settings", "action":"index"}', '', 'user_settings', '', 1, 1, 0, 4),
(1798, 'user_settings_privacy', 'user', 'Privacy', '', '{"route":"user_extended","module":"user","controller":"settings","action":"privacy"}', '', 'user_settings', '', 1, 1, 0, 2),
(1799, 'user_settings_timeline', 'timeline', 'Timeline', 'Timeline_Plugin_Menus', '{"route":"timeline_user_settings"}', '', 'user_settings', NULL, 1, 1, 0, 3),
(1800, 'user_tab_albums', 'album', 'Albums', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 12),
(1801, 'user_tab_articles', 'article', 'Articles', 'Apptouch_Plugin_Tabs', '', NULL, 'user_tab', NULL, 1, 1, 0, 15),
(1802, 'user_tab_blogs', 'blog', 'Blogs', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 10),
(1803, 'user_tab_classifieds', 'classified', 'Classifieds', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 11),
(1804, 'user_tab_events', 'event', 'Events', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 9),
(1805, 'user_tab_fields', 'user', 'Info', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', NULL, 1, 1, 0, 2),
(1806, 'user_tab_forum_posts', 'forum', 'Forum Posts', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 8),
(1807, 'user_tab_friends', 'user', 'Friends', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 2),
(1808, 'user_tab_gifts', 'hegift', 'Gifts', 'Apptouch_Plugin_Tabs', '', NULL, 'user_tab', NULL, 1, 1, 0, 14),
(1809, 'user_tab_groups', 'group', 'Groups', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 4),
(1810, 'user_tab_likebox', 'like', 'Members Like', 'Apptouch_Plugin_Tabs', '', NULL, 'user_tab', NULL, 1, 1, 0, 999),
(1811, 'user_tab_likes', 'like', 'Likes', 'Apptouch_Plugin_Tabs', '', NULL, 'user_tab', NULL, 1, 1, 0, 999),
(1812, 'user_tab_links', 'core', 'Links', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 3),
(1813, 'user_tab_music', 'music', 'Music', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 5),
(1814, 'user_tab_pages', 'page', 'Pages', 'Apptouch_Plugin_Tabs', '', NULL, 'user_tab', '', 1, 1, 0, 13),
(1815, 'user_tab_polls', 'poll', 'Polls', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 6),
(1816, 'user_tab_updates', 'activity', 'Updates', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 1),
(1817, 'user_tab_videos', 'video', 'Videos', 'Apptouch_Plugin_Tabs', '', '', 'user_tab', '', 1, 1, 0, 7),
(1818, 'video_main_browse', 'video', 'Browse Videos', '', '{"route":"video_general"}', '', 'video_main', '', 1, 1, 0, 1),
(1819, 'video_main_create', 'video', 'Post New Video', 'Video_Plugin_Menus', '{"route":"video_general","action":"create"}', '', 'video_main', '', 1, 1, 0, 3),
(1820, 'video_main_manage', 'video', 'My Videos', 'Video_Plugin_Menus', '{"route":"video_general","action":"manage"}', '', 'video_main', '', 1, 1, 0, 2),
(1821, 'video_quick_create', 'video', 'Post New Video', 'Video_Plugin_Menus::canCreateVideos', '{"route":"video_general","action":"create","class":"buttonlink icon_video_new"}', '', 'video_quick', '', 1, 1, 0, 1),
(1822, 'core_plugin_divider', 'apptouch', 'APPTOUCH_Apps', '', '{"route":"default"}', '{"role":"list-divider"}', 'core_dashboard', NULL, 1, 1, 0, 7),
(1823, 'core_favorites_divider', 'apptouch', 'APPTOUCH_Favorites', '', '{"route":"default"}', '{"role":"list-divider"}', 'core_dashboard', NULL, 0, 0, 0, 2),
(1824, 'core_options_divider', 'apptouch', 'APPTOUCH_Options', '', '{"route":"default"}', '{"role":"list-divider"}', 'core_dashboard', NULL, 1, 1, 0, 26),
(1829, 'core_dashboard_fullsite', 'apptouch', 'Full Site', 'Apptouch_Plugin_Menus', '', '{"data-icon":"external-link","data-ajax":"false"}', 'core_dashboard', NULL, 1, 1, 0, 33),
(1830, 'user_profile_send_credits', 'credit', 'Send Credit', 'Credit_Plugin_Menus', '{"route":"credit_general"}', NULL, 'user_profile', '', 1, 1, 0, 999),
(1831, 'hebadge_main_home', 'hebadge', 'Home', NULL, '{"route":"hebadge_general", "module": "hebadge", "controller": "index", "action": "index"}', NULL, 'hebadge_main', NULL, 1, 1, 0, 999),
(1832, 'hebadge_main_manage', 'hebadge', 'Manage Badges', 'Hebadge_Plugin_Menus', '{"route":"hebadge_general", "module": "hebadge", "controller": "index", "action": "manage"}', NULL, 'hebadge_main', NULL, 1, 1, 0, 999),
(1833, 'hequestion_main_browse', 'hequestion', 'HEQUESTION_BROWSE', NULL, '{"route":"hequestion_general"}', NULL, 'hequestion_main', NULL, 1, 1, 0, 1),
(1834, 'hequestion_main_manage', 'hequestion', 'HEQUESTION_MY', 'Hequestion_Plugin_Menus', '{"route":"hequestion_general", "action": "manage"}', NULL, 'hequestion_main', NULL, 1, 1, 0, 2),
(1835, 'inviter_main_inviter', 'inviter', 'Invite Friends', NULL, '{"route":"inviter_general","module":"inviter","controller":"index","action":"index"}', NULL, 'inviter_main', NULL, 1, 1, 0, 999),
(1836, 'inviter_main_invites', 'inviter', 'Invitations', NULL, '{"route":"inviter_invitations","module":"inviter","controller":"invitiations", "action":"index"}', NULL, 'inviter_main', NULL, 1, 1, 0, 999),
(1837, 'inviter_main_referrals', 'inviter', 'My Referrals', NULL, '{"route":"inviter_referrals","module":"inviter","controller":"referrals", "action":"index"}', NULL, 'inviter_main', NULL, 1, 1, 0, 999),
(1838, 'core_dashboard_hequestion', 'hequestion', 'Questions', '', '{"route":"hequestion_general"}', '{"data-icon":"question-sign","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 24),
(1840, 'core_dashboard_badge', 'hebadge', 'Badges', '', '{"route":"hebadge_general", "module": "hebadge", "controller": "index", "action": "index"}', '{"data-icon":"certificate","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 9),
(1842, 'core_dashboard_cometchat', 'apptouch', 'Chat', 'Apptouch_Plugin_Menus', '', '{"data-icon":"comments","data-ajax":"false"}', 'core_dashboard', '', 1, 1, 0, 16),
(1843, 'core_dashboard_terms', 'core', 'Terms', NULL, '{"route":"default","module":"core","controller":"help","action":"terms"}', '{"data-icon":"file","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 28),
(1844, 'user_settings_updates', 'updates', 'Newsletter Updates', 'Updates_Plugin_Core', '{"route":"upadtes","module":"updates","controller":"settings"}', NULL, 'user_settings', '', 1, 1, 0, 3),
(1845, 'core_dashboard_news', 'ultimatenews', 'News', NULL, '{"route":"ultimatenews_extended"}', '{"data-icon":"rss","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 15),
(1846, 'donation_main_browse_charity', 'donation', 'Charities', 'Donation_Plugin_Menus', '{"route":"donation_charity_browse"}', NULL, 'donation_main', '', 1, 1, 0, 1),
(1847, 'donation_main_browse_project', 'donation', 'Projects', 'Donation_Plugin_Menus', '{"route":"donation_project_browse"}', NULL, 'donation_main', '', 1, 1, 0, 2),
(1848, 'donation_main_browse_fundraise', 'donation', 'Fundraisings', 'Donation_Plugin_Menus', '{"route":"donation_fundraise_browse"}', NULL, 'donation_main', '', 1, 1, 0, 3),
(1849, 'donation_main_manage_donations', 'donation', 'My Donations', 'Donation_Plugin_Menus', '{"route":"donation_manage_donations"}', NULL, 'donation_main', '', 1, 1, 0, 4),
(1850, 'donation_profile_edit', 'donation', 'Donation Edit', 'Apptouch_Plugin_Menus', '', NULL, 'donation_profile', NULL, 1, 1, 0, 1),
(1851, 'donation_profile_delete', 'donation', 'Donation Delete', 'Apptouch_Plugin_Menus', '', NULL, 'donation_profile', '', 1, 1, 0, 4),
(1852, 'donation_profile_share', 'donation', 'Donation Share', 'Apptouch_Plugin_Menus', '', NULL, 'donation_profile', '', 1, 1, 0, 2),
(1853, 'donation_profile_promote', 'donation', 'Donation Promote', 'Apptouch_Plugin_Menus', '', NULL, 'donation_profile', NULL, 1, 1, 0, 3),
(1854, 'donation_profile_statistics', 'donation', 'DONATION_Profile_statistic', 'Apptouch_Plugin_Menus', '', NULL, 'donation_profile', '', 1, 1, 0, 5),
(1855, 'donation_profile_donation', 'donation', 'Back to Donations', 'Apptouch_Plugin_Menus', '', NULL, 'donation_profile', '', 1, 1, 0, 999),
(1856, 'donation_profile_fundraise', 'donation', 'Raise Money for Us', 'Apptouch_Plugin_Menus', '', NULL, 'donation_profile', '', 1, 1, 0, 0),
(1857, 'donation_profile_suggest', 'donation', 'Suggest To Friends', 'Apptouch_Plugin_Menus', '', NULL, 'donation_profile', NULL, 1, 1, 0, 999),
(1858, 'donation_profile_fininfo', 'donation', 'Edit Financial Information', 'Apptouch_Plugin_Menus', '', NULL, 'donation_profile', NULL, 1, 1, 0, 6),
(1859, 'core_dashboard_donation', 'donation', 'Donations', '', '{"route":"donation_charity_browse"}', '{"data-icon":"heart-o","data-ajax":"true"}', 'core_dashboard', '', 1, 1, 0, 15),
(1860, 'page_tab_donation', 'donation', 'Donations', 'Apptouch_Plugin_Tabs', '', NULL, 'page_tab', NULL, 1, 1, 0, 999),
(1861, 'donation_page_browse_charity', 'donation', 'Charity', 'Apptouch_Plugin_PageMenus', '', NULL, 'donation_page', NULL, 1, 1, 0, 1),
(1862, 'donation_page_browse_project', 'donation', 'Projects', 'Apptouch_Plugin_PageMenus', '', NULL, 'donation_page', NULL, 1, 1, 0, 2),
(1863, 'core_dashboard_advalbum', 'advalbum', 'Albums', '', '{"route":"album_general","action":"browse"}', '{"data-icon":"picture","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 7),
(1864, 'advalbum_main_upload', 'advalbum', 'Add New Photos', 'Advalbum_Plugin_Menus::canCreateAlbums', '{"route":"album_general","action":"upload"}', '', 'advalbum_main', '', 1, 1, 0, 3),
(1865, 'advalbum_main_manage', 'advalbum', 'My Albums', 'Advalbum_Plugin_Menus::canCreateAlbums', '{"route":"album_general","action":"manage"}', '', 'advalbum_main', '', 1, 1, 0, 2),
(1866, 'advalbum_main_browse', 'advalbum', 'Browse Albums', 'Advalbum_Plugin_Menus::canViewAlbums', '{"route":"album_general","action":"browse"}', '', 'advalbum_main', '', 1, 1, 0, 1),
(1867, 'user_tab_advalbum', 'advalbum', 'Albums', 'Apptouch_Plugin_Tabs', '', '{"data-icon":"picture"}', 'user_tab', '', 1, 1, 0, 12),
(1868, 'event_main_tickets', 'event', 'My Tickets', 'Apptouch_Plugin_Menus', '{"route":"heevent_general","action":"tickets"}', '', 'event_main', '', 1, 1, 0, 5),
(1869, 'core_dashboard_ynblog', 'ynblog', 'Blogs', 'Apptouch_Plugin_Menus', '{"route":"blog_general"}', '{"data-icon":"book","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 17),
(1870, 'ynblog_main_browse', 'ynblog', 'Browse Entries', 'Ynblog_Plugin_Menus::canViewBlogs', '{"route":"blog_general"}', NULL, 'ynblog_main', NULL, 1, 1, 0, 999),
(1871, 'ynblog_main_manage', 'ynblog', 'My Entries', 'Ynblog_Plugin_Menus::canCreateBlogs', '{"route":"blog_general","action":"manage"}', NULL, 'ynblog_main', NULL, 1, 1, 0, 999),
(1872, 'core_dashboard_advgroup', 'advgroup', 'Groups', NULL, '{"route":"group_general"}', '{"data-icon":"group","data-ajax":"true"}', 'core_dashboard', NULL, 1, 1, 0, 15),
(1873, 'advgroup_main_browse', 'advgroup', 'Browse Groups', NULL, '	{"route":"group_general","action":"browse"}', NULL, 'advgroup_main', NULL, 1, 1, 0, 1),
(1874, 'advgroup_main_manage', 'advgroup', 'My Groups', NULL, '	{"route":"group_general","action":"manage"}', NULL, 'advgroup_main', NULL, 1, 1, 0, 1),
(1875, 'advgroup_profile_member', 'advgroup', 'Member', 'Apptouch_Plugin_Menus', '', NULL, 'advgroup_profile', NULL, 1, 1, 0, 999),
(1876, 'advgroup_tab_members', 'advgroup', 'Members', 'Apptouch_Plugin_Tabs', '', NULL, 'advgroup_tab', NULL, 1, 1, 0, 2),
(1877, 'advgroup_tab_events', 'advgroup', 'Events', 'Apptouch_Plugin_Tabs', '', NULL, 'advgroup_tab', NULL, 1, 1, 0, 6),
(1878, 'advgroup_tab_discussions', 'advgroup', 'Discussions', 'Apptouch_Plugin_Tabs', '', NULL, 'advgroup_tab', NULL, 1, 1, 0, 1),
(1879, 'advgroup_tab_photos', 'advgroup', 'Photos', 'Apptouch_Plugin_Tabs', '', NULL, 'advgroup_tab', NULL, 1, 1, 0, 2),
(1880, 'advgroup_profile_share', 'advgroup', 'Share', 'Apptouch_Plugin_Menus', '', NULL, 'advgroup_profile', NULL, 1, 1, 0, 999),
(1881, 'advgroup_tab_updates', 'advgroup', 'Updates', 'Apptouch_Plugin_Tabs', '', NULL, 'advgroup_tab', NULL, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_apptouch_menus`
--

CREATE TABLE `engine4_apptouch_menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('standard','hidden','custom') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'standard',
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(3) NOT NULL DEFAULT '999',
  `module` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'apptouch',
  `kind` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_apptouch_menus`
--

INSERT INTO `engine4_apptouch_menus` (`id`, `name`, `type`, `title`, `order`, `module`, `kind`) VALUES
(95, 'album_main', 'standard', 'Album Main Navigation Menu', 999, 'album', 'main'),
(96, 'album_quick', 'standard', 'Album Quick Navigation Menu', 999, 'album', 'quick'),
(97, 'core_dashboard', 'standard', 'Dashboard', 4, 'apptouch', 'main'),
(98, 'blog_gutter', 'standard', 'Blog Gutter Navigation Menu', 999, 'blog', 'gutter'),
(99, 'blog_main', 'standard', 'Blog Main Navigation Menu', 999, 'blog', 'main'),
(100, 'blog_quick', 'standard', 'Blog Quick Navigation Menu', 999, 'blog', 'quick'),
(101, 'classified_main', 'standard', 'Classified Main Navigation Menu', 999, 'classified', 'main'),
(102, 'classified_quick', 'standard', 'Classified Quick Navigation Menu', 999, 'classified', 'quick'),
(103, 'core_footer', 'standard', 'Footer Menu', 3, 'core', 'footer'),
(104, 'core_main', 'standard', 'Main Navigation Menu', 1, 'core', 'main'),
(105, 'event_main', 'standard', 'Event Main Navigation Menu', 999, 'event', 'main'),
(106, 'event_profile', 'standard', 'Event Profile Options Menu', 999, 'event', 'profile'),
(107, 'event_tab', 'standard', 'APPTOUCH_Event Profile Tabs Menu', 999, 'event', 'tab'),
(108, 'group_main', 'standard', 'Group Main Navigation Menu', 999, 'group', 'main'),
(109, 'group_profile', 'standard', 'Group Profile Options Menu', 999, 'group', 'profile'),
(110, 'group_tab', 'standard', 'APPTOUCH_Group Profile Tabs Menu', 999, 'group', 'tab'),
(111, 'messages_main', 'standard', 'Messages Main Navigation Menu', 999, 'messages', 'main'),
(112, 'music_main', 'standard', 'Music Main Navigation Menu', 999, 'music', 'main'),
(113, 'music_quick', 'standard', 'Music Quick Navigation Menu', 999, 'music', 'quick'),
(114, 'page_main', 'standard', 'Page Main Navigation Menu', 999, 'page', 'main'),
(115, 'page_profile', 'standard', 'Page Profile Options Menu', 999, 'page', 'profile'),
(116, 'page_quick', 'standard', 'Page Quick Navigation Menu', 999, 'page', 'quick'),
(117, 'page_tab', 'standard', 'APPTOUCH_Page Profile Tabs Menu', 999, 'page', 'tab'),
(118, 'poll_main', 'standard', 'Poll Main Navigation Menu', 999, 'poll', 'main'),
(119, 'poll_quick', 'standard', 'Poll Quick Navigation Menu', 999, 'poll', 'quick'),
(120, 'user_edit', 'standard', 'Member Edit Profile Navigation Menu', 999, 'user', 'edit'),
(121, 'user_home', 'standard', 'Member Home Quick Links Menu', 999, 'user', 'main'),
(122, 'user_profile', 'standard', 'Member Profile Options Menu', 999, 'user', 'profile'),
(123, 'user_settings', 'standard', 'Member Settings Navigation Menu', 999, 'user', 'settings'),
(124, 'user_tab', 'standard', 'APPTOUCH_User Profile Tabs Menu', 999, 'user', 'tab'),
(125, 'video_main', 'standard', 'Video Main Navigation Menu', 999, 'video', 'main'),
(126, 'ynblog_gutter', 'standard', 'Blog Gutter Navigation Menu', 999, 'ynblog', 'gutter'),
(127, 'advgroup_profile 	', 'standard', 'Group Profile Options Menu', 999, 'advgroup', 'profile'),
(128, 'advgroup_tab', 'standard', 'APPTOUCH_Group Profile Tabs Menu', 999, 'advgroup', 'tab'),
(129, 'article_quick', 'standard', 'Article Quick Navigation Menu', 999, 'article', 'quick');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_apptouch_pages`
--

CREATE TABLE `engine4_apptouch_pages` (
  `page_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `displayname` varchar(128) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `adcampaign_id` int(11) DEFAULT NULL,
  `enable_ad` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `engine4_apptouch_pages`
--

INSERT INTO `engine4_apptouch_pages` (`page_id`, `name`, `displayname`, `title`, `description`, `adcampaign_id`, `enable_ad`) VALUES
(1, 'core_index_index', 'Home Page', 'Home Page', 'This is the home page.', NULL, 0),
(2, 'user_index_home', 'Member Home Page', 'Member Home Page', 'This is the home page for members.', NULL, 0),
(3, 'user_profile_index', 'Member Profile', 'Member Profile', 'This is a member''s profile.', NULL, 0),
(4, 'core_help_contact', 'Contact Page', 'Contact Us', 'This is the contact page', NULL, 0),
(5, 'core_help_privacy', 'Privacy Page', 'Privacy Policy', 'This is the privacy policy page', NULL, 0),
(6, 'core_help_terms', 'Terms of Service Page', 'Terms of Service', 'This is the terms of service page', NULL, 0),
(7, 'core_error_requireuser', 'Sign-in Required Page', 'Sign-in Required', '', NULL, 0),
(8, 'user_auth_login', 'Sign-in Page', 'Sign-in', 'This is the site sign-in page.', NULL, 0),
(9, 'user_signup_index', 'Sign-up Page', 'Sign-up', 'This is the site sign-up page.', NULL, 0),
(10, 'invite_index_index', 'Invite Page', 'Invite', '', NULL, 0),
(11, 'messages_messages_inbox', 'Messages Inbox Page', 'Inbox', '', NULL, 0),
(12, 'messages_messages_outbox', 'Messages Outbox Page', 'Inbox', '', NULL, 0),
(13, 'album_album_view', 'Album View Page', 'Album View', 'This page displays an album''s photos.', NULL, 0),
(14, 'album_index_browse', 'Album Browse Page', 'Album Browse', 'This page lists album entries.', NULL, 0),
(15, 'poll_index_browse', 'Poll Browse Page', 'Poll Browse', 'This page lists polls.', NULL, 0),
(16, 'poll_poll_view', 'Poll View Page', 'View Poll', 'This is the view page for a poll.', NULL, 0),
(17, 'music_index_browse', 'Music Browse Page', 'Music Browse', 'This page lists music.', NULL, 0),
(18, 'music_playlist_view', 'Music Playlist View Page', 'Music View', 'This page displays a playlist.', NULL, 0),
(19, 'video_index_browse', 'Video Browse Page', 'Video Browse', 'This page lists videos.', NULL, 0),
(20, 'video_index_view', 'Video View Page', 'View Video', 'This is the view page for a video.', NULL, 0),
(21, 'group_index_browse', 'Group Browse Page', 'Group Browse', 'This page lists groups.', NULL, 0),
(22, 'group_profile_index', 'Group Profile', 'Group Profile', 'This is the profile for an group.', NULL, 0),
(23, 'blog_index_index', 'Blog Browse Page', 'Blog Browse', 'This page lists blog entries.', NULL, 0),
(24, 'blog_index_view', 'Blog View Page', 'Blog View', 'This page displays a blog entry.', NULL, 0),
(25, 'chat_index_index', 'Chat Main Page', 'Chat', 'This is the chat room.', NULL, 0),
(26, 'classified_index_index', 'Classified Browse Page', 'Classified Browse', 'This page lists classifieds.', NULL, 0),
(27, 'classified_index_view', 'Classified View Page', 'View Classified', 'This is the view page for a classified.', NULL, 0),
(28, 'event_index_browse', 'Event Browse Page', 'Event Browse', 'This page lists events.', NULL, 0),
(29, 'event_profile_index', 'Event Profile', 'Event Profile', 'This is the profile for an event.', NULL, 0),
(30, 'timeline_profile_index', 'Timeline', 'Member Profile', 'This is a member''s timeline profile', NULL, 0),
(31, 'page_index_index', 'Browse Pages', 'Browse Pages', 'This is the browse page for pages', NULL, 0),
(32, 'pagevideo_videos_browse', 'All Videos Browse Page', 'Video Browse', 'This page displays all videos', NULL, 0),
(33, 'pagevideo_videos_manage', 'All Videos Manage Page', 'Videos Manage', 'This page displays all viewers videos', NULL, 0),
(34, 'pagemusic_musics_browse', 'All Music Browse Page', 'Music Browse', 'This page displays all playlists', NULL, 0),
(35, 'pagemusic_musics_manage', 'All Music Manage Page', 'Music Manage', 'This page displays viewers playlists', NULL, 0),
(36, 'pagealbum_albums_browse', 'All Albums Browse Page', 'Album Browse', 'This page displays all albums', NULL, 0),
(37, 'pagealbum_albums_manage', 'All Albums Manage Page', 'Album Manage', 'This page displays a viewers albums ', NULL, 0),
(38, 'pageevent_events_browse', 'All Events Browse Page', 'Events Browse', 'This page displays all events', NULL, 0),
(39, 'pageevent_events_manage', 'All Events Manage Page', 'Events Manage', 'This page displays viewers events', NULL, 0),
(40, 'pageblog_blogs_browse', 'All Blogs Browse Page', 'Blog Browse', 'This page displays a page blogs', NULL, 0),
(41, 'pageblog_blogs_manage', 'All Blogs Manage Page', 'Blogs Manage', 'This page displays viewers blogs', NULL, 0),
(42, 'credit_index_index', 'Credit Home', 'Credit Home', 'This page displays all users who scored more points', NULL, 0),
(43, 'credit_index_manage', 'My Credits', 'My Credits', 'This page displays all credits of current user', NULL, 0),
(44, 'hebadge_index_index', 'Badges Home', 'Badges Home', 'Badges Home', NULL, 0),
(45, 'hebadge_index_manage', 'Badges Manage', 'Badges Manage', 'Badges Manage', NULL, 0),
(46, 'hebadge_index_view', 'Badges Profile', 'Badges Profile', 'Badges Profile', NULL, 0),
(47, 'hegift_index_index', 'Browse Gifts', 'Browse Gifts', 'This is the browse page for Virtual Gifts', NULL, 0),
(48, 'inviter_index_index', 'Friends Inviter', 'Friends Inviter', 'Frends Inviter main page', NULL, 0),
(49, 'forum_index_index', 'Forum Main Page', 'Forum Main', 'This is the main forum page.', NULL, 0),
(50, 'forum_forum_view', 'Forum View Page', 'Forum View', 'This is the view forum page.', NULL, 0),
(51, 'store_index_index', 'Browse Products', 'STORE_Browse Products', 'This is the browse page for products', NULL, 0),
(52, 'store_index_stores', 'Browse Stores', 'STORE_Browse Stores', 'This is the browse page for stores', NULL, 0),
(53, 'store_product_index', 'Product Profile', 'Product Profile', 'This is a store product''s profile.', NULL, 0),
(54, 'hequestion_index_index', 'Questions Home', 'Browse Questions', NULL, NULL, 0),
(55, 'hequestion_index_view', 'Question Profile', 'Question', NULL, NULL, 0),
(56, 'hequestion_index_manage', 'Questions Manage', 'My Questions', NULL, NULL, 0),
(57, 'article_index_index', 'Article Browse Page', 'Article Browse Page', 'This is the browse page for articles.', NULL, 0),
(58, 'article_index_manage', 'Article Manage Page', 'Article Manage Page', 'This is the manage page for articles.', NULL, 0),
(59, 'article_profile_index', 'Article Profile', 'Article Profile', 'This is the profile for an article.', NULL, 0),
(60, 'offers_index_browse', 'Offers Browse Page', 'Offers Home', 'This page displays all offers', NULL, 0),
(61, 'offers_offer_view', 'Offer Profile Page', 'Offer Profile', 'This is the view page for a offer', NULL, 0),
(62, 'user_settings_network', 'Network Settings', 'Network Settings', '', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_apptouch_signup`
--

CREATE TABLE `engine4_apptouch_signup` (
  `signup_id` int(11) UNSIGNED NOT NULL,
  `class` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT '999',
  `enable` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_apptouch_signup`
--

INSERT INTO `engine4_apptouch_signup` (`signup_id`, `class`, `order`, `enable`) VALUES
(1, 'Apptouch_Plugin_Signup_Account', 1, 1),
(2, 'Apptouch_Plugin_Signup_Fields', 2, 1),
(3, 'Apptouch_Plugin_Signup_Photo', 3, 1),
(4, 'User_Plugin_Signup_Invite', 4, 0),
(5, 'Payment_Plugin_Signup_Subscription', 0, 1),
(6, 'Inviter_Plugin_Signup_Invite', 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_apptouch_themes`
--

CREATE TABLE `engine4_apptouch_themes` (
  `theme_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_apptouch_themes`
--

INSERT INTO `engine4_apptouch_themes` (`theme_id`, `name`, `title`, `description`, `active`) VALUES
(1, 'default', 'Default', '', 0),
(2, 'pinkbox', 'Pink Box', '', 0),
(3, 'skyblue', 'Sky Blue', '', 1),
(4, 'gray', 'Gray', '', 0),
(5, 'orange', 'Orange', '', 0),
(6, 'yellow', 'Yellow', '', 0),
(7, 'green', 'Green', '', 0),
(8, 'purplebox', 'Purple Box', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_article_articles`
--

CREATE TABLE `engine4_article_articles` (
  `article_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `views` int(6) UNSIGNED NOT NULL,
  `comment_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `engine4_article_articles`
--

INSERT INTO `engine4_article_articles` (`article_id`, `title`, `description`, `file_id`, `user_id`, `views`, `comment_count`, `creation_date`, `modified_date`) VALUES
(29, 'another article', '<p>here s new description</p>', 121, 1, 0, 0, '2017-05-26 04:51:10', '2017-05-30 04:04:18'),
(30, 'new article 10:51', 'new description 10:51', 123, 1, 0, 0, '2017-05-26 04:52:05', '2017-05-26 04:52:06'),
(31, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut delectus deserunt dolorum et excepturi itaque nesciunt officiis quam reiciendis tenetur. Atque odio veritatis voluptatibus? Alias beatae dolorem ducimus earum ex fugit impedit incidunt iusto maiores nisi omnis, perferendis possimus quae, quam quod tempore vel? A ad dicta est ipsam, nulla obcaecati odit perspiciatis quibusdam velit voluptate! Aliquid aspernatur, consequatur distinctio ducimus placeat ratione repellendus unde. Accusamus ad alias consectetur cumque delectus dicta dolor dolore doloremque ducimus eum eveniet excepturi facilis illo illum itaque iure laboriosam laborum maiores natus nemo neque nostrum officiis quaerat quas, recusandae reiciendis sapiente sint totam veritatis voluptate? A ab alias aliquid animi, aperiam aspernatur at consequatur deserunt doloribus, earum et harum laboriosam nobis nostrum nulla odio quaerat quibusdam recusandae reprehenderit sit soluta veniam veritatis. Accusantium adipisci, alias aliquid delectus dolor ducimus enim fugiat ipsum laborum minima minus molestiae porro qui quo repellat sapiente sequi, sunt tenetur voluptate voluptatum? Assumenda labore mollitia obcaecati odio repellat. Ad alias aspernatur beatae eius esse, omnis quidem sunt vel velit veniam. Adipisci amet consequatur cupiditate dolores error eum fugit itaque modi nam nulla placeat praesentium quaerat quidem recusandae, reiciendis repudiandae rerum saepe similique totam voluptatibus. Dolore fuga natus, nihil recusandae tempora totam ut! Ad corporis doloribus facere illo in ipsa libero magni, molestiae molestias nam nisi odit officia optio pariatur praesentium provident quae quasi quo saepe sint sit tempore veniam voluptas. Delectus dolorum eaque enim, eos esse est expedita facilis fugiat hic illo ipsum minus molestias nulla perferendis tempore ullam voluptatum? Accusantium adipisci alias aliquam aspernatur commodi deserunt expedita fugit harum hic in libero magnam magni maiores maxime minima nihil nisi pariatur perferendis quam quibusdam quo rerum saepe sint totam ullam, vitae voluptate voluptatem? At cupiditate laudantium libero non provident reiciendis repellendus. Aliquam hic nobis numquam quas, quod saepe sit voluptatum.', 125, 1, 0, 0, '2017-05-26 04:54:09', '2017-05-26 04:54:09'),
(32, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab, quidem.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut culpa doloremque ducimus expedita id modi odit pariatur quas quasi, quidem sequi suscipit velit voluptates? Corporis doloribus, inventore numquam repellendus sequi sint temporibus! Aliquid blanditiis, doloremque est hic illum iste laborum natus optio quidem sit. Alias amet atque aut commodi consequatur cumque deleniti dolor dolorem eveniet ex exercitationem, incidunt, iure maxime nulla numquam obcaecati officiis, porro quas quidem quis repellat rerum sequi similique sit temporibus ullam voluptatibus! Ipsa, possimus, sunt. Consequuntur enim fugiat ipsa non odit rerum voluptas. A autem dolorum eligendi fugiat maiores minima mollitia, odit placeat quidem rem saepe similique soluta tempore! Autem ea, esse facere fuga officiis provident quis quos rerum ut voluptatum. Deleniti dicta dolorum minima nam perferendis reiciendis totam ut vel! Consequatur cum earum enim laboriosam necessitatibus nihil nobis possimus quidem quisquam recusandae sed tempora, voluptatem voluptatum. At autem consequatur doloremque earum, facere ipsam ipsum minima officiis voluptates! Ad consequatur cumque, ea earum ex, explicabo facere id, illum itaque pariatur possimus quisquam rerum sapiente. Accusamus accusantium adipisci consequatur corporis culpa cum deserunt dicta distinctio, doloremque doloribus dolorum eaque earum eligendi enim harum inventore ipsa iste itaque maiores natus nemo nihil nulla obcaecati officiis perferendis provident qui, quis quisquam repellat repellendus sed sit soluta tenetur ullam veritatis vitae voluptates. Amet, dolores ducimus expedita quasi quod voluptas voluptate. Accusantium consectetur culpa doloremque doloribus dolorum expedita explicabo hic sit tenetur voluptas! Animi aperiam consequuntur dolorum error exercitationem fuga maxime minima nostrum omnis praesentium quibusdam, quidem quo sapiente unde ut. Alias animi debitis dolor ducimus ea eligendi magni maiores nobis, omnis porro qui vitae? Dicta, necessitatibus sed! Accusantium adipisci aperiam architecto assumenda at atque blanditiis commodi consequuntur, distinctio dolorum ea earum eum illum in itaque labore minima nam nostrum odit omnis possimus quae quidem quos rerum sapiente sed sequi sit ullam ut vel veniam vitae voluptas voluptates. A adipisci dignissimos earum eos repudiandae. Ad aperiam, atque corporis cum delectus ea eius est illo minima molestias mollitia non officia praesentium provident quaerat, quisquam tempora veritatis voluptates? Ab accusantium aliquid asperiores beatae commodi dicta illum, impedit ipsam laborum libero maxime officiis perspiciatis vel voluptatem voluptatibus. Consectetur id illum molestias nesciunt nihil, obcaecati perspiciatis praesentium quae quos sunt suscipit, temporibus, voluptatem. Aliquid amet at consequuntur culpa doloremque ducimus ea eligendi eos in inventore ipsa iste iure labore laborum, modi nam nemo nisi nostrum quis ratione reprehenderit rerum veritatis. A accusamus ad animi, ducimus error exercitationem fugit illum labore nam numquam provident repellendus tempore. Accusamus eos eum hic quaerat quos. Blanditiis dolorem ea eveniet harum ipsa iste mollitia nobis provident quae, quisquam repudiandae temporibus velit! At perspiciatis soluta voluptates? Aperiam enim error, facere itaque omnis repellat sapiente veritatis! Blanditiis cum inventore iure laborum nemo non officia quod, saepe voluptatum. Asperiores delectus eveniet incidunt minima, modi nostrum nulla officiis porro quae repellat? Alias animi distinctio dolores eligendi facere ipsum laboriosam minus, necessitatibus nulla odio officia, possimus praesentium ratione reprehenderit sed tempore, tenetur ut. Adipisci deserunt doloribus eveniet expedita nisi omnis quis sed tempora ut vitae.', 127, 3, 0, 0, '2017-05-26 04:55:12', '2017-05-26 04:55:12'),
(33, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi odio pariatur vitae?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A consequuntur dolores error et ipsam iusto labore necessitatibus, obcaecati officia optio perferendis perspiciatis tenetur vitae. Ad aspernatur at commodi consequuntur dolor dolorem doloremque, dolores excepturi expedita facere harum id, impedit ipsum modi natus nihil nisi nostrum, nulla obcaecati perferendis possimus quae quaerat quidem quisquam quo quos rem reprehenderit rerum saepe suscipit ut vel velit voluptates. Aperiam architecto assumenda consequatur deleniti eos, et facere fugiat fugit hic minima mollitia nihil odit vitae. Alias amet architecto atque, doloribus fugit ipsum magnam natus non, numquam ratione, rerum tenetur vitae voluptas. Aliquid consectetur dolorem doloribus, eius expedita fugiat, harum, id illum nemo obcaecati qui quia ratione recusandae vitae voluptas! Atque dolores ex in nemo nesciunt qui quisquam ratione! Consectetur eligendi ex illum laudantium non pariatur, perspiciatis quia unde. Ab atque culpa ipsa mollitia quis. Accusantium ad alias aliquid amet aperiam aspernatur assumenda aut autem corporis culpa cupiditate, dolor ducimus earum eligendi et facilis harum illum itaque iure magni minus necessitatibus neque nesciunt nisi nulla numquam odio odit officiis qui quibusdam ratione reiciendis repellendus repudiandae sit sunt velit veniam? Dolorem, dolorum esse illo in itaque iusto molestias natus numquam quia rerum, vel vitae voluptatem. Accusantium adipisci amet aspernatur consectetur cupiditate eaque eius error est eum fuga hic id inventore ipsa laboriosam libero maxime molestias nam, optio, pariatur perspiciatis porro provident quam quas quidem quo reiciendis repellendus, saepe sint soluta tempore totam ullam vel vitae. Aliquam aspernatur debitis earum, eligendi facilis in minus molestias necessitatibus numquam praesentium repellat sunt suscipit. Adipisci alias aliquid animi assumenda, atque, autem beatae dignissimos dolore dolorem ea earum eius eum exercitationem expedita harum illum ipsa iste itaque iure laboriosam obcaecati odit possimus quaerat quia quis quod sequi similique sit, unde voluptas. A at dolore laboriosam libero magnam pariatur perferendis, placeat soluta! A aperiam asperiores aut autem consectetur corporis culpa cumque cupiditate dicta dignissimos dolor doloremque earum eveniet ex, exercitationem expedita fugit illo laudantium, maxime minus neque pariatur provident quas quod, ratione recusandae reprehenderit rerum velit veritatis voluptatum? Aliquid aspernatur deserunt ea iste rerum. Distinctio enim nisi optio provident repudiandae. Accusamus, aperiam assumenda commodi corporis culpa debitis deleniti distinctio dolorem eligendi enim esse est explicabo fugiat laboriosam laborum minima molestiae nam neque nulla odit omnis porro possimus quae, quibusdam quis quos rem sequi sint suscipit, tempore totam vel velit veniam! Delectus explicabo maiores modi necessitatibus nisi porro ratione. Cum delectus labore voluptas! Animi aperiam architecto, consequatur deserunt dolore doloribus eaque earum id minus molestiae molestias neque, nostrum officia omnis optio perspiciatis possimus quam quas sed, voluptatibus! Beatae, cupiditate delectus, et facere harum itaque iure laborum minima modi omnis pariatur perferendis quidem, totam unde vitae voluptates voluptatibus! At expedita explicabo ipsa labore maiores non officiis optio soluta temporibus voluptatem! At aut consequatur cupiditate enim error exercitationem hic impedit iusto, libero, nam odit optio possimus quae quaerat rem rerum voluptates. Debitis ea nam qui tempore veniam! Animi aspernatur doloribus eaque excepturi, hic, inventore necessitatibus nostrum officia porro quo reiciendis sed voluptate voluptatem! Autem beatae cupiditate harum illum laboriosam, libero natus, numquam optio reiciendis sunt suscipit ut, voluptas! Accusamus culpa odio quidem recusandae sequi! A accusantium architecto aspernatur assumenda at consectetur cum deleniti dicta, dolore doloremque ducimus excepturi id inventore ipsa natus nulla optio quam quod rem repellat sunt veniam voluptatibus. Accusamus alias animi aperiam architecto consequatur dolore, fuga, incidunt laborum mollitia porro possimus provident quia quod repudiandae similique unde voluptatum! Consequatur cupiditate debitis delectus distinctio doloribus enim esse exercitationem impedit, molestias nostrum obcaecati recusandae reprehenderit suscipit tempora temporibus unde voluptatum. Animi architecto, assumenda aut autem corporis earum eligendi ex exercitationem fuga incidunt ipsum molestiae mollitia?', 129, 3, 1, 0, '2017-05-26 04:57:12', '2017-05-26 04:57:12'),
(34, 'new article 11:11', 'new description 11:11', 131, 3, 7, 0, '2017-05-26 05:11:34', '2017-05-26 05:11:34'),
(35, 'title 11:16', 'description 11:16', 133, 1, 0, 0, '2017-05-26 05:17:07', '2017-05-26 05:17:07'),
(36, 'new article title 16:02', 'new description some info about this article', 135, 3, 0, 0, '2017-05-26 10:03:00', '2017-05-26 10:03:00'),
(37, 'new article 16:03', 'new description 16:03', 137, 3, 0, 0, '2017-05-26 10:04:16', '2017-05-26 10:04:16'),
(38, 'new title 16:14', 'new description 16:14', 139, 1, 0, 0, '2017-05-26 10:14:34', '2017-05-26 10:14:34'),
(39, 'new title 16:14', 'new description 16:14', 141, 1, 0, 0, '2017-05-26 10:15:59', '2017-05-26 10:15:59'),
(40, 'new title 16:14', 'new description 16:14', 143, 1, 0, 0, '2017-05-26 10:16:10', '2017-05-26 10:16:10'),
(69, 'article title', '<p>article description</p>', 191, 1, 0, 0, '2017-05-29 05:47:28', '2017-05-29 05:47:29'),
(72, 'title 11:55', '<p>description 11:55</p>', 197, 1, 0, 0, '2017-05-29 05:55:57', '2017-05-29 05:55:58'),
(86, 'new article', '<p>description</p>', 223, 1, 0, 0, '2017-05-29 08:04:18', '2017-05-29 08:04:19'),
(118, 'new title', '<p>new description</p>', 261, 1, 0, 0, '2017-05-29 10:29:05', '2017-05-29 10:29:05'),
(119, 'new title', '<p>new description</p>', 263, 1, 0, 0, '2017-05-29 10:30:00', '2017-05-29 10:30:01'),
(120, 'new title', '<p>new description</p>', 265, 1, 0, 0, '2017-05-29 10:30:46', '2017-05-29 10:30:47'),
(121, 'new title', '<p>new description</p>', 267, 1, 0, 0, '2017-05-29 10:31:09', '2017-05-29 10:31:09'),
(122, 'new title', '<p>new description</p>', 269, 1, 0, 0, '2017-05-29 10:31:37', '2017-05-29 10:31:37'),
(123, 'new title', '<p>new description</p>', 271, 1, 0, 0, '2017-05-29 10:32:04', '2017-05-29 10:32:04'),
(135, 'ne warticle', '<p>kjk;lj;kjk;j</p>', 281, 3, 0, 0, '2017-05-29 11:03:12', '2017-05-29 11:03:13'),
(136, 'new article 17:05', '<p>description</p>', 283, 3, 2, 1, '2017-05-29 11:05:38', '2017-05-29 11:05:39'),
(139, 'new title', '<p>photo&nbsp;</p>', 309, 5, 14, 1, '2017-05-30 09:20:53', '2017-05-30 09:20:55'),
(142, 'new article', '<p>new description</p>', 313, 1, 0, 0, '2017-05-31 03:54:16', '2017-05-31 03:54:17'),
(143, 'my new article', '<p>my new content</p>', 315, 1, 0, 0, '2017-05-31 03:56:15', '2017-05-31 03:56:16'),
(144, 'new article 10:02', '<p>new description 10:02</p>', 0, 1, 0, 0, '2017-05-31 04:02:38', '2017-05-31 04:02:38'),
(145, 'new title 10:43', '<p>new content</p>', 319, 1, 0, 0, '2017-05-31 04:04:27', '2017-05-31 04:43:45');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_authorization_allow`
--

CREATE TABLE `engine4_authorization_allow` (
  `resource_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `resource_id` int(11) UNSIGNED NOT NULL,
  `action` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `role` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `role_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_authorization_allow`
--

INSERT INTO `engine4_authorization_allow` (`resource_type`, `resource_id`, `action`, `role`, `role_id`, `value`, `params`) VALUES
('article', 29, 'view', 'everyone', 0, 1, NULL),
('article', 29, 'view', 'owner_member', 0, 1, NULL),
('article', 29, 'view', 'owner_member_member', 0, 1, NULL),
('article', 29, 'view', 'owner_network', 0, 1, NULL),
('article', 29, 'view', 'registered', 0, 1, NULL),
('article', 139, 'comment', 'owner_member', 0, 1, NULL),
('article', 139, 'comment', 'owner_member_member', 0, 1, NULL),
('article', 139, 'comment', 'owner_network', 0, 1, NULL),
('article', 139, 'view', 'owner_member', 0, 1, NULL),
('article', 139, 'view', 'owner_member_member', 0, 1, NULL),
('article', 139, 'view', 'owner_network', 0, 1, NULL),
('article', 142, 'comment', 'everyone', 0, 1, NULL),
('article', 142, 'comment', 'owner_member', 0, 1, NULL),
('article', 142, 'comment', 'owner_member_member', 0, 1, NULL),
('article', 142, 'comment', 'owner_network', 0, 1, NULL),
('article', 142, 'comment', 'registered', 0, 1, NULL),
('article', 142, 'view', 'everyone', 0, 1, NULL),
('article', 142, 'view', 'owner_member', 0, 1, NULL),
('article', 142, 'view', 'owner_member_member', 0, 1, NULL),
('article', 142, 'view', 'owner_network', 0, 1, NULL),
('article', 142, 'view', 'registered', 0, 1, NULL),
('article', 143, 'comment', 'everyone', 0, 1, NULL),
('article', 143, 'comment', 'owner_member', 0, 1, NULL),
('article', 143, 'comment', 'owner_member_member', 0, 1, NULL),
('article', 143, 'comment', 'owner_network', 0, 1, NULL),
('article', 143, 'comment', 'registered', 0, 1, NULL),
('article', 143, 'view', 'everyone', 0, 1, NULL),
('article', 143, 'view', 'owner_member', 0, 1, NULL),
('article', 143, 'view', 'owner_member_member', 0, 1, NULL),
('article', 143, 'view', 'owner_network', 0, 1, NULL),
('article', 143, 'view', 'registered', 0, 1, NULL),
('article', 144, 'comment', 'everyone', 0, 1, NULL),
('article', 144, 'comment', 'owner_member', 0, 1, NULL),
('article', 144, 'comment', 'owner_member_member', 0, 1, NULL),
('article', 144, 'comment', 'owner_network', 0, 1, NULL),
('article', 144, 'comment', 'registered', 0, 1, NULL),
('article', 144, 'view', 'everyone', 0, 1, NULL),
('article', 144, 'view', 'owner_member', 0, 1, NULL),
('article', 144, 'view', 'owner_member_member', 0, 1, NULL),
('article', 144, 'view', 'owner_network', 0, 1, NULL),
('article', 144, 'view', 'registered', 0, 1, NULL),
('article', 145, 'comment', 'everyone', 0, 1, NULL),
('article', 145, 'comment', 'owner_member', 0, 1, NULL),
('article', 145, 'comment', 'owner_member_member', 0, 1, NULL),
('article', 145, 'comment', 'owner_network', 0, 1, NULL),
('article', 145, 'comment', 'registered', 0, 1, NULL),
('article', 145, 'view', 'everyone', 0, 1, NULL),
('article', 145, 'view', 'owner_member', 0, 1, NULL),
('article', 145, 'view', 'owner_member_member', 0, 1, NULL),
('article', 145, 'view', 'owner_network', 0, 1, NULL),
('article', 145, 'view', 'registered', 0, 1, NULL),
('article', 146, 'comment', 'everyone', 0, 1, NULL),
('article', 146, 'comment', 'owner_member', 0, 1, NULL),
('article', 146, 'comment', 'owner_member_member', 0, 1, NULL),
('article', 146, 'comment', 'owner_network', 0, 1, NULL),
('article', 146, 'comment', 'registered', 0, 1, NULL),
('article', 146, 'view', 'everyone', 0, 1, NULL),
('article', 146, 'view', 'owner_member', 0, 1, NULL),
('article', 146, 'view', 'owner_member_member', 0, 1, NULL),
('article', 146, 'view', 'owner_network', 0, 1, NULL),
('article', 146, 'view', 'registered', 0, 1, NULL),
('blog', 1, 'comment', 'everyone', 0, 1, NULL),
('blog', 1, 'comment', 'owner_member', 0, 1, NULL),
('blog', 1, 'comment', 'owner_member_member', 0, 1, NULL),
('blog', 1, 'comment', 'owner_network', 0, 1, NULL),
('blog', 1, 'comment', 'registered', 0, 1, NULL),
('blog', 1, 'view', 'everyone', 0, 1, NULL),
('blog', 1, 'view', 'owner_member', 0, 1, NULL),
('blog', 1, 'view', 'owner_member_member', 0, 1, NULL),
('blog', 1, 'view', 'owner_network', 0, 1, NULL),
('blog', 1, 'view', 'registered', 0, 1, NULL),
('blog', 2, 'comment', 'everyone', 0, 1, NULL),
('blog', 2, 'comment', 'owner_member', 0, 1, NULL),
('blog', 2, 'comment', 'owner_member_member', 0, 1, NULL),
('blog', 2, 'comment', 'owner_network', 0, 1, NULL),
('blog', 2, 'comment', 'registered', 0, 1, NULL),
('blog', 2, 'view', 'everyone', 0, 1, NULL),
('blog', 2, 'view', 'owner_member', 0, 1, NULL),
('blog', 2, 'view', 'owner_member_member', 0, 1, NULL),
('blog', 2, 'view', 'owner_network', 0, 1, NULL),
('blog', 2, 'view', 'registered', 0, 1, NULL),
('blog', 3, 'view', 'everyone', 0, 1, NULL),
('blog', 3, 'view', 'owner_member', 0, 1, NULL),
('blog', 3, 'view', 'owner_member_member', 0, 1, NULL),
('blog', 3, 'view', 'owner_network', 0, 1, NULL),
('blog', 3, 'view', 'registered', 0, 1, NULL),
('event', 1, 'comment', 'everyone', 0, 1, NULL),
('event', 1, 'comment', 'member', 0, 1, NULL),
('event', 1, 'comment', 'owner_member', 0, 1, NULL),
('event', 1, 'comment', 'owner_member_member', 0, 1, NULL),
('event', 1, 'comment', 'owner_network', 0, 1, NULL),
('event', 1, 'comment', 'registered', 0, 1, NULL),
('event', 1, 'invite', 'member', 0, 1, NULL),
('event', 1, 'photo', 'everyone', 0, 1, NULL),
('event', 1, 'photo', 'member', 0, 1, NULL),
('event', 1, 'photo', 'owner_member', 0, 1, NULL),
('event', 1, 'photo', 'owner_member_member', 0, 1, NULL),
('event', 1, 'photo', 'owner_network', 0, 1, NULL),
('event', 1, 'photo', 'registered', 0, 1, NULL),
('event', 1, 'view', 'everyone', 0, 1, NULL),
('event', 1, 'view', 'member', 0, 1, NULL),
('event', 1, 'view', 'member_requested', 0, 1, NULL),
('event', 1, 'view', 'owner_member', 0, 1, NULL),
('event', 1, 'view', 'owner_member_member', 0, 1, NULL),
('event', 1, 'view', 'owner_network', 0, 1, NULL),
('event', 1, 'view', 'registered', 0, 1, NULL),
('group', 1, 'comment', 'group_list', 1, 1, NULL),
('group', 1, 'comment', 'member', 0, 1, NULL),
('group', 1, 'comment', 'registered', 0, 1, NULL),
('group', 1, 'event', 'group_list', 1, 1, NULL),
('group', 1, 'event', 'member', 0, 1, NULL),
('group', 1, 'event', 'registered', 0, 1, NULL),
('group', 1, 'invite', 'group_list', 1, 1, NULL),
('group', 1, 'invite', 'member', 0, 1, NULL),
('group', 1, 'photo', 'group_list', 1, 1, NULL),
('group', 1, 'photo', 'member', 0, 1, NULL),
('group', 1, 'photo', 'registered', 0, 1, NULL),
('group', 1, 'photo.edit', 'group_list', 1, 1, NULL),
('group', 1, 'topic.edit', 'group_list', 1, 1, NULL),
('group', 1, 'view', 'group_list', 1, 1, NULL),
('group', 1, 'view', 'member', 0, 1, NULL),
('group', 1, 'view', 'member_requested', 0, 1, NULL),
('group', 1, 'view', 'registered', 0, 1, NULL),
('user', 1, 'comment', 'everyone', 0, 1, NULL),
('user', 1, 'comment', 'member', 0, 1, NULL),
('user', 1, 'comment', 'network', 0, 1, NULL),
('user', 1, 'comment', 'registered', 0, 1, NULL),
('user', 1, 'view', 'everyone', 0, 1, NULL),
('user', 1, 'view', 'member', 0, 1, NULL),
('user', 1, 'view', 'network', 0, 1, NULL),
('user', 1, 'view', 'registered', 0, 1, NULL),
('user', 2, 'comment', 'everyone', 0, 1, NULL),
('user', 2, 'comment', 'member', 0, 1, NULL),
('user', 2, 'comment', 'network', 0, 1, NULL),
('user', 2, 'comment', 'registered', 0, 1, NULL),
('user', 2, 'view', 'everyone', 0, 1, NULL),
('user', 2, 'view', 'member', 0, 1, NULL),
('user', 2, 'view', 'network', 0, 1, NULL),
('user', 2, 'view', 'registered', 0, 1, NULL),
('user', 3, 'comment', 'everyone', 0, 1, NULL),
('user', 3, 'comment', 'member', 0, 1, NULL),
('user', 3, 'comment', 'network', 0, 1, NULL),
('user', 3, 'comment', 'registered', 0, 1, NULL),
('user', 3, 'view', 'everyone', 0, 1, NULL),
('user', 3, 'view', 'member', 0, 1, NULL),
('user', 3, 'view', 'network', 0, 1, NULL),
('user', 3, 'view', 'registered', 0, 1, NULL),
('user', 4, 'comment', 'everyone', 0, 1, NULL),
('user', 4, 'comment', 'member', 0, 1, NULL),
('user', 4, 'comment', 'network', 0, 1, NULL),
('user', 4, 'comment', 'registered', 0, 1, NULL),
('user', 4, 'view', 'everyone', 0, 1, NULL),
('user', 4, 'view', 'member', 0, 1, NULL),
('user', 4, 'view', 'network', 0, 1, NULL),
('user', 4, 'view', 'registered', 0, 1, NULL),
('user', 5, 'comment', 'everyone', 0, 1, NULL),
('user', 5, 'comment', 'member', 0, 1, NULL),
('user', 5, 'comment', 'network', 0, 1, NULL),
('user', 5, 'comment', 'registered', 0, 1, NULL),
('user', 5, 'view', 'everyone', 0, 1, NULL),
('user', 5, 'view', 'member', 0, 1, NULL),
('user', 5, 'view', 'network', 0, 1, NULL),
('user', 5, 'view', 'registered', 0, 1, NULL),
('user', 6, 'comment', 'everyone', 0, 1, NULL),
('user', 6, 'comment', 'member', 0, 1, NULL),
('user', 6, 'comment', 'network', 0, 1, NULL),
('user', 6, 'comment', 'registered', 0, 1, NULL),
('user', 6, 'view', 'everyone', 0, 1, NULL),
('user', 6, 'view', 'member', 0, 1, NULL),
('user', 6, 'view', 'network', 0, 1, NULL),
('user', 6, 'view', 'registered', 0, 1, NULL),
('user', 7, 'comment', 'everyone', 0, 1, NULL),
('user', 7, 'comment', 'member', 0, 1, NULL),
('user', 7, 'comment', 'network', 0, 1, NULL),
('user', 7, 'comment', 'registered', 0, 1, NULL),
('user', 7, 'view', 'everyone', 0, 1, NULL),
('user', 7, 'view', 'member', 0, 1, NULL),
('user', 7, 'view', 'network', 0, 1, NULL),
('user', 7, 'view', 'registered', 0, 1, NULL),
('user', 8, 'comment', 'everyone', 0, 1, NULL),
('user', 8, 'comment', 'member', 0, 1, NULL),
('user', 8, 'comment', 'network', 0, 1, NULL),
('user', 8, 'comment', 'registered', 0, 1, NULL),
('user', 8, 'view', 'everyone', 0, 1, NULL),
('user', 8, 'view', 'member', 0, 1, NULL),
('user', 8, 'view', 'network', 0, 1, NULL),
('user', 8, 'view', 'registered', 0, 1, NULL),
('user', 9, 'comment', 'everyone', 0, 1, NULL),
('user', 9, 'comment', 'member', 0, 1, NULL),
('user', 9, 'comment', 'network', 0, 1, NULL),
('user', 9, 'comment', 'registered', 0, 1, NULL),
('user', 9, 'view', 'everyone', 0, 1, NULL),
('user', 9, 'view', 'member', 0, 1, NULL),
('user', 9, 'view', 'network', 0, 1, NULL),
('user', 9, 'view', 'registered', 0, 1, NULL),
('user', 10, 'comment', 'everyone', 0, 1, NULL),
('user', 10, 'comment', 'member', 0, 1, NULL),
('user', 10, 'comment', 'network', 0, 1, NULL),
('user', 10, 'comment', 'registered', 0, 1, NULL),
('user', 10, 'view', 'everyone', 0, 1, NULL),
('user', 10, 'view', 'member', 0, 1, NULL),
('user', 10, 'view', 'network', 0, 1, NULL),
('user', 10, 'view', 'registered', 0, 1, NULL),
('user', 11, 'comment', 'everyone', 0, 1, NULL),
('user', 11, 'comment', 'member', 0, 1, NULL),
('user', 11, 'comment', 'network', 0, 1, NULL),
('user', 11, 'comment', 'registered', 0, 1, NULL),
('user', 11, 'view', 'everyone', 0, 1, NULL),
('user', 11, 'view', 'member', 0, 1, NULL),
('user', 11, 'view', 'network', 0, 1, NULL),
('user', 11, 'view', 'registered', 0, 1, NULL),
('user', 12, 'comment', 'everyone', 0, 1, NULL),
('user', 12, 'comment', 'member', 0, 1, NULL),
('user', 12, 'comment', 'network', 0, 1, NULL),
('user', 12, 'comment', 'registered', 0, 1, NULL),
('user', 12, 'view', 'everyone', 0, 1, NULL),
('user', 12, 'view', 'member', 0, 1, NULL),
('user', 12, 'view', 'network', 0, 1, NULL),
('user', 12, 'view', 'registered', 0, 1, NULL),
('user', 13, 'comment', 'everyone', 0, 1, NULL),
('user', 13, 'comment', 'member', 0, 1, NULL),
('user', 13, 'comment', 'network', 0, 1, NULL),
('user', 13, 'comment', 'registered', 0, 1, NULL),
('user', 13, 'view', 'everyone', 0, 1, NULL),
('user', 13, 'view', 'member', 0, 1, NULL),
('user', 13, 'view', 'network', 0, 1, NULL),
('user', 13, 'view', 'registered', 0, 1, NULL),
('user', 14, 'comment', 'everyone', 0, 1, NULL),
('user', 14, 'comment', 'member', 0, 1, NULL),
('user', 14, 'comment', 'network', 0, 1, NULL),
('user', 14, 'comment', 'registered', 0, 1, NULL),
('user', 14, 'view', 'everyone', 0, 1, NULL),
('user', 14, 'view', 'member', 0, 1, NULL),
('user', 14, 'view', 'network', 0, 1, NULL),
('user', 14, 'view', 'registered', 0, 1, NULL),
('user', 15, 'comment', 'everyone', 0, 1, NULL),
('user', 15, 'comment', 'member', 0, 1, NULL),
('user', 15, 'comment', 'network', 0, 1, NULL),
('user', 15, 'comment', 'registered', 0, 1, NULL),
('user', 15, 'view', 'everyone', 0, 1, NULL),
('user', 15, 'view', 'member', 0, 1, NULL),
('user', 15, 'view', 'network', 0, 1, NULL),
('user', 15, 'view', 'registered', 0, 1, NULL),
('user', 16, 'comment', 'everyone', 0, 1, NULL),
('user', 16, 'comment', 'member', 0, 1, NULL),
('user', 16, 'comment', 'network', 0, 1, NULL),
('user', 16, 'comment', 'registered', 0, 1, NULL),
('user', 16, 'view', 'everyone', 0, 1, NULL),
('user', 16, 'view', 'member', 0, 1, NULL),
('user', 16, 'view', 'network', 0, 1, NULL),
('user', 16, 'view', 'registered', 0, 1, NULL),
('user', 17, 'comment', 'everyone', 0, 1, NULL),
('user', 17, 'comment', 'member', 0, 1, NULL),
('user', 17, 'comment', 'network', 0, 1, NULL),
('user', 17, 'comment', 'registered', 0, 1, NULL),
('user', 17, 'view', 'everyone', 0, 1, NULL),
('user', 17, 'view', 'member', 0, 1, NULL),
('user', 17, 'view', 'network', 0, 1, NULL),
('user', 17, 'view', 'registered', 0, 1, NULL),
('user', 18, 'comment', 'everyone', 0, 1, NULL),
('user', 18, 'comment', 'member', 0, 1, NULL),
('user', 18, 'comment', 'network', 0, 1, NULL),
('user', 18, 'comment', 'registered', 0, 1, NULL),
('user', 18, 'view', 'everyone', 0, 1, NULL),
('user', 18, 'view', 'member', 0, 1, NULL),
('user', 18, 'view', 'network', 0, 1, NULL),
('user', 18, 'view', 'registered', 0, 1, NULL),
('user', 19, 'comment', 'everyone', 0, 1, NULL),
('user', 19, 'comment', 'member', 0, 1, NULL),
('user', 19, 'comment', 'network', 0, 1, NULL),
('user', 19, 'comment', 'registered', 0, 1, NULL),
('user', 19, 'view', 'everyone', 0, 1, NULL),
('user', 19, 'view', 'member', 0, 1, NULL),
('user', 19, 'view', 'network', 0, 1, NULL),
('user', 19, 'view', 'registered', 0, 1, NULL),
('video', 2, 'comment', 'everyone', 0, 1, NULL),
('video', 2, 'comment', 'owner_member', 0, 1, NULL),
('video', 2, 'comment', 'owner_member_member', 0, 1, NULL),
('video', 2, 'comment', 'owner_network', 0, 1, NULL),
('video', 2, 'comment', 'registered', 0, 1, NULL),
('video', 2, 'view', 'everyone', 0, 1, NULL),
('video', 2, 'view', 'owner_member', 0, 1, NULL),
('video', 2, 'view', 'owner_member_member', 0, 1, NULL),
('video', 2, 'view', 'owner_network', 0, 1, NULL),
('video', 2, 'view', 'registered', 0, 1, NULL),
('video', 3, 'comment', 'everyone', 0, 1, NULL),
('video', 3, 'comment', 'owner_member', 0, 1, NULL),
('video', 3, 'comment', 'owner_member_member', 0, 1, NULL),
('video', 3, 'comment', 'owner_network', 0, 1, NULL),
('video', 3, 'comment', 'registered', 0, 1, NULL),
('video', 3, 'view', 'everyone', 0, 1, NULL),
('video', 3, 'view', 'owner_member', 0, 1, NULL),
('video', 3, 'view', 'owner_member_member', 0, 1, NULL),
('video', 3, 'view', 'owner_network', 0, 1, NULL),
('video', 3, 'view', 'registered', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_authorization_levels`
--

CREATE TABLE `engine4_authorization_levels` (
  `level_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('public','user','moderator','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `flag` enum('default','superadmin','public') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_authorization_levels`
--

INSERT INTO `engine4_authorization_levels` (`level_id`, `title`, `description`, `type`, `flag`) VALUES
(1, 'Superadmins', 'Users of this level can modify all of your settings and data.  This level cannot be modified or deleted.', 'admin', 'superadmin'),
(2, 'Admins', 'Users of this level have full access to all of your network settings and data.', 'admin', ''),
(3, 'Moderators', 'Users of this level may edit user-side content.', 'moderator', ''),
(4, 'Default Level', 'This is the default user level.  New users are assigned to it automatically.', 'user', 'default'),
(5, 'Public', 'Settings for this level apply to users who have not logged in.', 'public', 'public');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_authorization_permissions`
--

CREATE TABLE `engine4_authorization_permissions` (
  `level_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `name` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `value` tinyint(3) NOT NULL DEFAULT '0',
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_authorization_permissions`
--

INSERT INTO `engine4_authorization_permissions` (`level_id`, `type`, `name`, `value`, `params`) VALUES
(1, 'admin', 'view', 1, NULL),
(1, 'announcement', 'create', 1, NULL),
(1, 'announcement', 'delete', 2, NULL),
(1, 'announcement', 'edit', 2, NULL),
(1, 'announcement', 'view', 2, NULL),
(1, 'article', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(1, 'article', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(1, 'article', 'comment', 2, NULL),
(1, 'article', 'create', 1, NULL),
(1, 'article', 'delete', 2, NULL),
(1, 'article', 'edit', 2, NULL),
(1, 'article', 'max', 3, '1000'),
(1, 'article', 'view', 2, NULL),
(1, 'blog', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(1, 'blog', 'auth_html', 3, 'strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(1, 'blog', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(1, 'blog', 'comment', 2, NULL),
(1, 'blog', 'create', 1, NULL),
(1, 'blog', 'delete', 2, NULL),
(1, 'blog', 'edit', 2, NULL),
(1, 'blog', 'max', 3, '1000'),
(1, 'blog', 'style', 1, NULL),
(1, 'blog', 'view', 2, NULL),
(1, 'core_link', 'create', 1, NULL),
(1, 'core_link', 'delete', 2, NULL),
(1, 'core_link', 'view', 2, NULL),
(1, 'credit', 'view_credit_faq', 2, NULL),
(1, 'credit', 'view_credit_home', 2, NULL),
(1, 'event', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(1, 'event', 'auth_photo', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(1, 'event', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(1, 'event', 'comment', 2, NULL),
(1, 'event', 'commentHtml', 3, 'blockquote, strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(1, 'event', 'create', 1, NULL),
(1, 'event', 'delete', 2, NULL),
(1, 'event', 'edit', 2, NULL),
(1, 'event', 'invite', 1, NULL),
(1, 'event', 'photo', 1, NULL),
(1, 'event', 'style', 1, NULL),
(1, 'event', 'view', 2, NULL),
(1, 'general', 'activity', 2, NULL),
(1, 'general', 'style', 2, NULL),
(1, 'group', 'auth_comment', 5, '["registered", "member", "officer"]'),
(1, 'group', 'auth_event', 5, '["registered", "member", "officer"]'),
(1, 'group', 'auth_photo', 5, '["registered", "member", "officer"]'),
(1, 'group', 'auth_view', 5, '["everyone", "registered", "member"]'),
(1, 'group', 'comment', 2, NULL),
(1, 'group', 'commentHtml', 3, 'blockquote, strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(1, 'group', 'create', 1, NULL),
(1, 'group', 'delete', 2, NULL),
(1, 'group', 'edit', 2, NULL),
(1, 'group', 'event', 1, NULL),
(1, 'group', 'invite', 1, NULL),
(1, 'group', 'photo', 1, NULL),
(1, 'group', 'photo.edit', 2, NULL),
(1, 'group', 'style', 1, NULL),
(1, 'group', 'topic.edit', 2, NULL),
(1, 'group', 'view', 2, NULL),
(1, 'guest', 'view', 2, NULL),
(1, 'headvmessages', 'use', 1, NULL),
(1, 'hecontest', 'participate', 1, NULL),
(1, 'hecontest', 'view', 1, NULL),
(1, 'hecontest', 'vote', 1, NULL),
(1, 'hecontest_photo', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(1, 'hecontest_photo', 'auth_tag', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(1, 'hecontest_photo', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(1, 'hecontest_photo', 'comment', 2, NULL),
(1, 'hecontest_photo', 'create', 1, NULL),
(1, 'hecontest_photo', 'delete', 2, NULL),
(1, 'hecontest_photo', 'edit', 2, NULL),
(1, 'hecontest_photo', 'tag', 2, NULL),
(1, 'hecontest_photo', 'view', 1, NULL),
(1, 'messages', 'auth', 3, 'friends'),
(1, 'messages', 'create', 1, NULL),
(1, 'messages', 'editor', 3, 'plaintext'),
(1, 'user', 'activity', 1, NULL),
(1, 'user', 'auth_comment', 5, '["everyone","registered","network","member","owner"]'),
(1, 'user', 'auth_view', 5, '["everyone","registered","network","member","owner"]'),
(1, 'user', 'block', 1, NULL),
(1, 'user', 'comment', 2, NULL),
(1, 'user', 'create', 1, NULL),
(1, 'user', 'delete', 2, NULL),
(1, 'user', 'edit', 2, NULL),
(1, 'user', 'search', 1, NULL),
(1, 'user', 'status', 1, NULL),
(1, 'user', 'style', 2, NULL),
(1, 'user', 'username', 2, NULL),
(1, 'user', 'view', 2, NULL),
(1, 'video', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(1, 'video', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(1, 'video', 'comment', 2, NULL),
(1, 'video', 'create', 1, NULL),
(1, 'video', 'delete', 2, NULL),
(1, 'video', 'edit', 2, NULL),
(1, 'video', 'max', 3, '20'),
(1, 'video', 'upload', 1, NULL),
(1, 'video', 'view', 2, NULL),
(2, 'admin', 'view', 1, NULL),
(2, 'announcement', 'create', 1, NULL),
(2, 'announcement', 'delete', 2, NULL),
(2, 'announcement', 'edit', 2, NULL),
(2, 'announcement', 'view', 2, NULL),
(2, 'article', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(2, 'article', 'auth_html', 3, 'strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(2, 'article', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(2, 'article', 'comment', 2, NULL),
(2, 'article', 'create', 1, NULL),
(2, 'article', 'delete', 2, NULL),
(2, 'article', 'edit', 2, NULL),
(2, 'article', 'max', 3, '1000'),
(2, 'article', 'style', 1, NULL),
(2, 'article', 'view', 2, NULL),
(2, 'blog', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(2, 'blog', 'auth_html', 3, 'strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(2, 'blog', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(2, 'blog', 'comment', 2, NULL),
(2, 'blog', 'create', 1, NULL),
(2, 'blog', 'delete', 2, NULL),
(2, 'blog', 'edit', 2, NULL),
(2, 'blog', 'max', 3, '1000'),
(2, 'blog', 'style', 1, NULL),
(2, 'blog', 'view', 2, NULL),
(2, 'core_link', 'create', 1, NULL),
(2, 'core_link', 'delete', 2, NULL),
(2, 'core_link', 'view', 2, NULL),
(2, 'credit', 'view_credit_faq', 2, NULL),
(2, 'credit', 'view_credit_home', 2, NULL),
(2, 'event', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(2, 'event', 'auth_photo', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(2, 'event', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(2, 'event', 'comment', 2, NULL),
(2, 'event', 'commentHtml', 3, 'blockquote, strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(2, 'event', 'create', 1, NULL),
(2, 'event', 'delete', 2, NULL),
(2, 'event', 'edit', 2, NULL),
(2, 'event', 'invite', 1, NULL),
(2, 'event', 'photo', 1, NULL),
(2, 'event', 'style', 1, NULL),
(2, 'event', 'view', 2, NULL),
(2, 'general', 'activity', 2, NULL),
(2, 'general', 'style', 2, NULL),
(2, 'group', 'auth_comment', 5, '["registered", "member", "officer"]'),
(2, 'group', 'auth_event', 5, '["registered", "member", "officer"]'),
(2, 'group', 'auth_photo', 5, '["registered", "member", "officer"]'),
(2, 'group', 'auth_view', 5, '["everyone", "registered", "member"]'),
(2, 'group', 'comment', 2, NULL),
(2, 'group', 'commentHtml', 3, 'blockquote, strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(2, 'group', 'create', 1, NULL),
(2, 'group', 'delete', 2, NULL),
(2, 'group', 'edit', 2, NULL),
(2, 'group', 'event', 1, NULL),
(2, 'group', 'invite', 1, NULL),
(2, 'group', 'photo', 1, NULL),
(2, 'group', 'photo.edit', 2, NULL),
(2, 'group', 'style', 1, NULL),
(2, 'group', 'topic.edit', 2, NULL),
(2, 'group', 'view', 2, NULL),
(2, 'headvmessages', 'use', 1, NULL),
(2, 'hecontest', 'participate', 1, NULL),
(2, 'hecontest', 'view', 1, NULL),
(2, 'hecontest', 'vote', 1, NULL),
(2, 'hecontest_photo', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(2, 'hecontest_photo', 'auth_tag', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(2, 'hecontest_photo', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(2, 'hecontest_photo', 'comment', 2, NULL),
(2, 'hecontest_photo', 'create', 1, NULL),
(2, 'hecontest_photo', 'delete', 2, NULL),
(2, 'hecontest_photo', 'edit', 2, NULL),
(2, 'hecontest_photo', 'tag', 2, NULL),
(2, 'hecontest_photo', 'view', 1, NULL),
(2, 'messages', 'auth', 3, 'friends'),
(2, 'messages', 'create', 1, NULL),
(2, 'messages', 'editor', 3, 'plaintext'),
(2, 'user', 'activity', 1, NULL),
(2, 'user', 'auth_comment', 5, '["everyone","registered","network","member","owner"]'),
(2, 'user', 'auth_view', 5, '["everyone","registered","network","member","owner"]'),
(2, 'user', 'block', 1, NULL),
(2, 'user', 'comment', 2, NULL),
(2, 'user', 'create', 1, NULL),
(2, 'user', 'delete', 2, NULL),
(2, 'user', 'edit', 2, NULL),
(2, 'user', 'search', 1, NULL),
(2, 'user', 'status', 1, NULL),
(2, 'user', 'style', 2, NULL),
(2, 'user', 'username', 2, NULL),
(2, 'user', 'view', 2, NULL),
(2, 'video', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(2, 'video', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(2, 'video', 'comment', 2, NULL),
(2, 'video', 'create', 1, NULL),
(2, 'video', 'delete', 2, NULL),
(2, 'video', 'edit', 2, NULL),
(2, 'video', 'max', 3, '20'),
(2, 'video', 'upload', 1, NULL),
(2, 'video', 'view', 2, NULL),
(3, 'announcement', 'view', 1, NULL),
(3, 'article', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(3, 'article', 'auth_html', 3, 'strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(3, 'article', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(3, 'article', 'comment', 2, NULL),
(3, 'article', 'create', 1, NULL),
(3, 'article', 'delete', 2, NULL),
(3, 'article', 'edit', 2, NULL),
(3, 'article', 'max', 3, '1000'),
(3, 'article', 'style', 1, NULL),
(3, 'article', 'view', 2, NULL),
(3, 'blog', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(3, 'blog', 'auth_html', 3, 'strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(3, 'blog', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(3, 'blog', 'comment', 2, NULL),
(3, 'blog', 'create', 1, NULL),
(3, 'blog', 'delete', 2, NULL),
(3, 'blog', 'edit', 2, NULL),
(3, 'blog', 'max', 3, '1000'),
(3, 'blog', 'style', 1, NULL),
(3, 'blog', 'view', 2, NULL),
(3, 'core_link', 'create', 1, NULL),
(3, 'core_link', 'delete', 2, NULL),
(3, 'core_link', 'view', 2, NULL),
(3, 'credit', 'view_credit_faq', 2, NULL),
(3, 'credit', 'view_credit_home', 2, NULL),
(3, 'event', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(3, 'event', 'auth_photo', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(3, 'event', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(3, 'event', 'comment', 2, NULL),
(3, 'event', 'commentHtml', 3, 'blockquote, strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(3, 'event', 'create', 1, NULL),
(3, 'event', 'delete', 2, NULL),
(3, 'event', 'edit', 2, NULL),
(3, 'event', 'invite', 1, NULL),
(3, 'event', 'photo', 1, NULL),
(3, 'event', 'style', 1, NULL),
(3, 'event', 'view', 2, NULL),
(3, 'general', 'activity', 2, NULL),
(3, 'general', 'style', 2, NULL),
(3, 'group', 'auth_comment', 5, '["registered", "member", "officer"]'),
(3, 'group', 'auth_event', 5, '["registered", "member", "officer"]'),
(3, 'group', 'auth_photo', 5, '["registered", "member", "officer"]'),
(3, 'group', 'auth_view', 5, '["everyone", "registered", "member"]'),
(3, 'group', 'comment', 2, NULL),
(3, 'group', 'commentHtml', 3, 'blockquote, strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(3, 'group', 'create', 1, NULL),
(3, 'group', 'delete', 2, NULL),
(3, 'group', 'edit', 2, NULL),
(3, 'group', 'event', 1, NULL),
(3, 'group', 'invite', 1, NULL),
(3, 'group', 'photo', 1, NULL),
(3, 'group', 'photo.edit', 2, NULL),
(3, 'group', 'style', 1, NULL),
(3, 'group', 'topic.edit', 2, NULL),
(3, 'group', 'view', 2, NULL),
(3, 'headvmessages', 'use', 1, NULL),
(3, 'hecontest', 'participate', 1, NULL),
(3, 'hecontest', 'view', 1, NULL),
(3, 'hecontest', 'vote', 1, NULL),
(3, 'hecontest_photo', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(3, 'hecontest_photo', 'auth_tag', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(3, 'hecontest_photo', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(3, 'hecontest_photo', 'comment', 2, NULL),
(3, 'hecontest_photo', 'create', 1, NULL),
(3, 'hecontest_photo', 'delete', 2, NULL),
(3, 'hecontest_photo', 'edit', 2, NULL),
(3, 'hecontest_photo', 'tag', 2, NULL),
(3, 'hecontest_photo', 'view', 1, NULL),
(3, 'messages', 'auth', 3, 'friends'),
(3, 'messages', 'create', 1, NULL),
(3, 'messages', 'editor', 3, 'plaintext'),
(3, 'user', 'activity', 1, NULL),
(3, 'user', 'auth_comment', 5, '["everyone","registered","network","member","owner"]'),
(3, 'user', 'auth_view', 5, '["everyone","registered","network","member","owner"]'),
(3, 'user', 'block', 1, NULL),
(3, 'user', 'comment', 2, NULL),
(3, 'user', 'create', 1, NULL),
(3, 'user', 'delete', 2, NULL),
(3, 'user', 'edit', 2, NULL),
(3, 'user', 'search', 1, NULL),
(3, 'user', 'status', 1, NULL),
(3, 'user', 'style', 2, NULL),
(3, 'user', 'username', 2, NULL),
(3, 'user', 'view', 2, NULL),
(3, 'video', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(3, 'video', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(3, 'video', 'comment', 2, NULL),
(3, 'video', 'create', 1, NULL),
(3, 'video', 'delete', 2, NULL),
(3, 'video', 'edit', 2, NULL),
(3, 'video', 'max', 3, '20'),
(3, 'video', 'upload', 1, NULL),
(3, 'video', 'view', 2, NULL),
(4, 'announcement', 'view', 1, NULL),
(4, 'article', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(4, 'article', 'auth_html', 3, 'strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(4, 'article', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(4, 'article', 'comment', 1, NULL),
(4, 'article', 'create', 1, NULL),
(4, 'article', 'delete', 1, NULL),
(4, 'article', 'edit', 1, NULL),
(4, 'article', 'max', 3, '50'),
(4, 'article', 'style', 1, NULL),
(4, 'article', 'view', 1, NULL),
(4, 'blog', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(4, 'blog', 'auth_html', 3, 'strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(4, 'blog', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(4, 'blog', 'comment', 1, NULL),
(4, 'blog', 'create', 1, NULL),
(4, 'blog', 'delete', 1, NULL),
(4, 'blog', 'edit', 1, NULL),
(4, 'blog', 'max', 3, '50'),
(4, 'blog', 'style', 1, NULL),
(4, 'blog', 'view', 1, NULL),
(4, 'core_link', 'create', 1, NULL),
(4, 'core_link', 'delete', 1, NULL),
(4, 'core_link', 'view', 1, NULL),
(4, 'credit', 'view_credit_faq', 1, NULL),
(4, 'credit', 'view_credit_home', 1, NULL),
(4, 'event', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(4, 'event', 'auth_photo', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(4, 'event', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(4, 'event', 'comment', 1, NULL),
(4, 'event', 'commentHtml', 3, 'blockquote, strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(4, 'event', 'create', 1, NULL),
(4, 'event', 'delete', 1, NULL),
(4, 'event', 'edit', 1, NULL),
(4, 'event', 'invite', 1, NULL),
(4, 'event', 'photo', 1, NULL),
(4, 'event', 'style', 1, NULL),
(4, 'event', 'view', 1, NULL),
(4, 'general', 'style', 1, NULL),
(4, 'group', 'auth_comment', 5, '["registered", "member", "officer"]'),
(4, 'group', 'auth_event', 5, '["registered", "member", "officer"]'),
(4, 'group', 'auth_photo', 5, '["registered", "member", "officer"]'),
(4, 'group', 'auth_view', 5, '["everyone", "registered", "member"]'),
(4, 'group', 'comment', 1, NULL),
(4, 'group', 'commentHtml', 3, 'blockquote, strong, b, em, i, u, strike, sub, sup, p, div, pre, address, h1, h2, h3, h4, h5, h6, span, ol, li, ul, a, img, embed, br, hr, iframe'),
(4, 'group', 'create', 1, NULL),
(4, 'group', 'delete', 1, NULL),
(4, 'group', 'edit', 1, NULL),
(4, 'group', 'event', 1, NULL),
(4, 'group', 'invite', 1, NULL),
(4, 'group', 'photo', 1, NULL),
(4, 'group', 'photo.edit', 1, NULL),
(4, 'group', 'style', 1, NULL),
(4, 'group', 'topic.edit', 1, NULL),
(4, 'group', 'view', 1, NULL),
(4, 'headvmessages', 'use', 1, NULL),
(4, 'hecontest', 'participate', 1, NULL),
(4, 'hecontest', 'view', 1, NULL),
(4, 'hecontest', 'vote', 1, NULL),
(4, 'hecontest_photo', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(4, 'hecontest_photo', 'auth_tag', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(4, 'hecontest_photo', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(4, 'hecontest_photo', 'comment', 2, NULL),
(4, 'hecontest_photo', 'create', 1, NULL),
(4, 'hecontest_photo', 'delete', 2, NULL),
(4, 'hecontest_photo', 'edit', 2, NULL),
(4, 'hecontest_photo', 'tag', 2, NULL),
(4, 'hecontest_photo', 'view', 1, NULL),
(4, 'messages', 'auth', 3, 'friends'),
(4, 'messages', 'create', 1, NULL),
(4, 'messages', 'editor', 3, 'plaintext'),
(4, 'user', 'auth_comment', 5, '["everyone","registered","network","member","owner"]'),
(4, 'user', 'auth_view', 5, '["everyone","registered","network","member","owner"]'),
(4, 'user', 'block', 1, NULL),
(4, 'user', 'comment', 1, NULL),
(4, 'user', 'create', 1, NULL),
(4, 'user', 'delete', 1, NULL),
(4, 'user', 'edit', 1, NULL),
(4, 'user', 'search', 1, NULL),
(4, 'user', 'status', 1, NULL),
(4, 'user', 'style', 1, NULL),
(4, 'user', 'username', 1, NULL),
(4, 'user', 'view', 1, NULL),
(4, 'video', 'auth_comment', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(4, 'video', 'auth_view', 5, '["everyone","owner_network","owner_member_member","owner_member","owner"]'),
(4, 'video', 'comment', 1, NULL),
(4, 'video', 'create', 1, NULL),
(4, 'video', 'delete', 1, NULL),
(4, 'video', 'edit', 1, NULL),
(4, 'video', 'max', 3, '20'),
(4, 'video', 'upload', 1, NULL),
(4, 'video', 'view', 1, NULL),
(5, 'announcement', 'view', 1, NULL),
(5, 'article', 'view', 1, NULL),
(5, 'blog', 'view', 1, NULL),
(5, 'core_link', 'view', 1, NULL),
(5, 'credit', 'view_credit_faq', 1, NULL),
(5, 'credit', 'view_credit_home', 1, NULL),
(5, 'event', 'view', 1, NULL),
(5, 'group', 'view', 1, NULL),
(5, 'headvmessages', 'use', 0, NULL),
(5, 'user', 'view', 1, NULL),
(5, 'video', 'view', 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_avatarstyler_images`
--

CREATE TABLE `engine4_avatarstyler_images` (
  `images_id` int(10) NOT NULL,
  `photo_id` int(10) NOT NULL DEFAULT '0',
  `photo_url` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_blog_blogs`
--

CREATE TABLE `engine4_blog_blogs` (
  `blog_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `owner_type` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `owner_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `comment_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `draft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_blog_blogs`
--

INSERT INTO `engine4_blog_blogs` (`blog_id`, `title`, `body`, `owner_type`, `owner_id`, `category_id`, `creation_date`, `modified_date`, `view_count`, `comment_count`, `search`, `draft`) VALUES
(1, 'My new blog', '<div>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet mi enim. Suspendisse ut nunc risus. Mauris quis eleifend leo. Nulla mollis eros ac sem interdum, eget fermentum purus fringilla. Donec aliquet tincidunt mi, non malesuada libero cursus sed. Donec rhoncus nulla vel ornare scelerisque. Integer nisl odio, egestas vel est ac, fringilla sollicitudin sapien. Maecenas in massa sed sapien convallis eleifend.</p>\r\n<p>Praesent scelerisque id augue fermentum feugiat. Praesent placerat eros a pharetra aliquam. Nunc molestie, ligula nec dignissim dapibus, lacus turpis convallis nibh, eget elementum felis velit sit amet ligula. Nunc mattis justo non urna iaculis varius. Sed placerat nisl sit amet porta pulvinar. Duis eu sagittis sapien, non mattis metus. Fusce auctor bibendum nunc, ac dapibus dolor mollis ut. Aliquam convallis sapien libero, ut luctus nisi egestas at. Aliquam euismod ac ante non blandit. In congue felis quis sapien sollicitudin, vitae dapibus turpis efficitur. Mauris accumsan, est eu tincidunt commodo, turpis dui iaculis odio, quis dignissim lorem ante quis quam. Fusce quam lacus, pulvinar a eros id, mollis aliquet nulla.</p>\r\n<p>Integer vel posuere nisl. Donec lacinia ipsum vel nunc condimentum luctus. Morbi velit felis, tempor vitae aliquam ut, aliquam id lectus. Cras posuere nibh non augue luctus, sit amet semper eros elementum. Curabitur in diam ex. Aliquam hendrerit nulla ligula, sit amet dapibus erat blandit mollis. Quisque quis vulputate lorem. Sed libero tellus, pulvinar a neque at, ultricies venenatis lacus. Pellentesque eget purus nec nulla vestibulum tristique eget eu erat. Ut fringilla id erat ac elementum. Fusce ultrices, purus id placerat dictum, nibh mi molestie est, a consequat lacus nunc eu nisi. Curabitur convallis mi ut erat volutpat ultricies.</p>\r\n<p>Nulla quis enim pulvinar, rutrum risus vitae, sagittis nulla. Cras sit amet cursus quam. Duis aliquet cursus tempor. Sed diam turpis, ultrices sit amet eleifend non, tempor et lectus. Vestibulum ut dolor ac diam egestas molestie. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris in rutrum libero, id luctus nibh. Nullam dignissim tortor dui, eget iaculis ligula mollis vulputate. Praesent felis nisl, pellentesque nec lobortis vitae, varius at erat. Donec quis fringilla ipsum. Nunc ac pellentesque sem. Nulla dui nulla, placerat ut venenatis ac, rhoncus nec tortor. Donec egestas ac purus quis semper. Suspendisse ligula urna, ullamcorper vel dolor vel, tincidunt blandit arcu. Pellentesque pretium molestie eros at venenatis.</p>\r\n<p>Nam eu malesuada magna. Etiam et libero nec sapien convallis sagittis. Proin viverra dolor quis quam aliquet, quis vestibulum metus feugiat. Aenean ut arcu varius, maximus tellus id, placerat orci. Duis varius augue at arcu vehicula sagittis. Pellentesque rhoncus velit ornare, rhoncus ex at, tincidunt dolor. Maecenas auctor pretium ex, ut pretium massa lacinia in. Etiam eget feugiat leo. Nulla facilisi.</p>\r\n</div>', 'user', 1, 12, '2017-05-22 03:56:10', '2017-05-22 03:56:10', 5, 2, 1, 0),
(2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excep', '<pre style="background-color: #ffffff; color: #000000; font-family: ''Courier New''; font-size: 9,0pt;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque cum dolorem est? Accusantium eius natus nisi reprehenderit rerum voluptatem! Ab ad asperiores assumenda consequatur deserunt dolorem doloremque dolorum eos eum eveniet expedita facere fugiat incidunt ipsum itaque labore laudantium maiores molestiae nemo neque nostrum omnis optio perferendis quaerat quam quos ratione, reiciendis rem repellat, saepe sapiente tenetur velit veniam veritatis vitae voluptas voluptatibus. Architecto at cum debitis distinctio eligendi eos est, facere quas quis recusandae saepe sapiente unde? Animi cumque delectus deleniti exercitationem explicabo facilis harum impedit quam quibusdam veniam? Magni placeat tempore tenetur? At commodi ducimus fugit maxime nam perferendis, quibusdam repellat sed voluptate? Accusantium at est et iste minima, minus non omnis qui velit vitae. Aspernatur, doloribus ipsum itaque iusto maiores numquam odit pariatur perspiciatis quae quam rem repellendus tempora, ullam vero voluptatem? Accusamus deleniti eius eligendi exercitationem facilis obcaecati recusandae, saepe tempora? Aliquam laudantium magni necessitatibus odit quas quasi, sapiente tempore. Aut consequuntur error explicabo facilis, harum ipsam iure minus quia quo quod quos rem sit, ut. A ab, aliquid animi aperiam autem corporis dignissimos earum eligendi error esse eum, ex fugit harum, impedit in ipsum minus modi mollitia neque non nulla optio perferendis quaerat quo quod quos ratione repellendus sequi sint tempora. Accusamus accusantium aliquid architecto beatae commodi consectetur deleniti dolores eligendi error exercitationem explicabo facilis harum hic illum incidunt, ipsa ipsam iste itaque minus, mollitia necessitatibus nesciunt placeat porro possimus quod reiciendis rem repellat sint suscipit unde ut vitae voluptas voluptatibus! Accusamus ad aliquam aliquid animi aperiam aut beatae blanditiis consequuntur cumque dolor ducimus eaque enim harum id illo impedit in iusto maiores minus modi necessitatibus nemo, nesciunt nisi non perferendis placeat possimus quae quo reprehenderit rerum suscipit tenetur totam vel velit veritatis vero voluptatum. Accusamus ad at distinctio ducimus ea, exercitationem fuga harum molestiae molestias odit officia placeat, sapiente sit voluptate voluptatem. A aut consectetur consequuntur debitis delectus dicta ducimus et expedita explicabo facere harum ipsa, ipsam magni maxime molestias mollitia nam nesciunt officia placeat porro quaerat quas quia, quibusdam repellat rerum sapiente soluta tempora totam ullam veniam vero voluptate voluptatem voluptatibus? Assumenda consequatur cumque cupiditate ex maxime placeat repellat voluptates. Ab asperiores consequatur culpa ducimus, earum eveniet ipsum itaque minima mollitia neque obcaecati porro quam quisquam reprehenderit temporibus velit veritatis vero voluptas? Accusantium, distinctio, dolore, doloribus impedit incidunt inventore ipsam nam recusandae repellendus sapiente voluptates voluptatum! Consequatur deleniti dolores ea eaque eligendi, esse eveniet excepturi fuga fugiat fugit itaque laudantium libero magni minus mollitia omnis perspiciatis praesentium quaerat quas qui quia quis repellat reprehenderit, rerum sint tempore tenetur veniam vero voluptate voluptatum? Ab aliquam aliquid architecto corporis dolores doloribus illo impedit in ipsam iste itaque laborum libero, minima molestiae molestias mollitia natus nesciunt nihil nulla optio praesentium quas reiciendis rem repellat tempore ullam voluptatum! Cumque eaque incidunt, laudantium nam quidem tempore? Deleniti incidunt, magnam minus perspiciatis quasi reprehenderit vero. Eum, officiis.</pre>', 'user', 1, 1, '2017-05-26 05:03:43', '2017-05-26 05:03:43', 0, 0, 1, 0),
(3, 'long title', '<p>long description</p>', 'user', 1, 1, '2017-05-29 10:01:24', '2017-05-30 03:52:26', 0, 0, 1, 0),
(4, 'new article title', '<p>description</p>', 'user', 3, 1, '2017-05-30 02:54:38', '2017-05-30 02:54:38', 2, 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_blog_categories`
--

CREATE TABLE `engine4_blog_categories` (
  `category_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_blog_categories`
--

INSERT INTO `engine4_blog_categories` (`category_id`, `user_id`, `category_name`) VALUES
(1, 1, 'Arts & Culture'),
(2, 1, 'Business'),
(3, 1, 'Entertainment'),
(5, 1, 'Family & Home'),
(6, 1, 'Health'),
(7, 1, 'Recreation'),
(8, 1, 'Personal'),
(9, 1, 'Shopping'),
(10, 1, 'Society'),
(11, 1, 'Sports'),
(12, 1, 'Technology'),
(13, 1, 'Other');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_blog_subscriptions`
--

CREATE TABLE `engine4_blog_subscriptions` (
  `subscription_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscriber_user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_checkin_checks`
--

CREATE TABLE `engine4_checkin_checks` (
  `check_id` int(10) NOT NULL,
  `action_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `place_id` int(10) DEFAULT '0',
  `creation_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_checkin_places`
--

CREATE TABLE `engine4_checkin_places` (
  `place_id` int(10) NOT NULL,
  `google_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_id` int(10) DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vicinity` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `types` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_adcampaigns`
--

CREATE TABLE `engine4_core_adcampaigns` (
  `adcampaign_id` int(11) UNSIGNED NOT NULL,
  `end_settings` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `limit_view` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `limit_click` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `limit_ctr` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `network` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `clicks` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_adphotos`
--

CREATE TABLE `engine4_core_adphotos` (
  `adphoto_id` int(11) UNSIGNED NOT NULL,
  `ad_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_id` int(11) UNSIGNED NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_ads`
--

CREATE TABLE `engine4_core_ads` (
  `ad_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `ad_campaign` int(11) UNSIGNED NOT NULL,
  `views` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `clicks` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `media_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html_code` text COLLATE utf8_unicode_ci NOT NULL,
  `photo_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_auth`
--

CREATE TABLE `engine4_core_auth` (
  `id` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `expires` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_bannedemails`
--

CREATE TABLE `engine4_core_bannedemails` (
  `bannedemail_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_bannedips`
--

CREATE TABLE `engine4_core_bannedips` (
  `bannedip_id` int(10) UNSIGNED NOT NULL,
  `start` varbinary(16) NOT NULL,
  `stop` varbinary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_bannedusernames`
--

CREATE TABLE `engine4_core_bannedusernames` (
  `bannedusername_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_bannedwords`
--

CREATE TABLE `engine4_core_bannedwords` (
  `bannedword_id` int(10) UNSIGNED NOT NULL,
  `word` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_comments`
--

CREATE TABLE `engine4_core_comments` (
  `comment_id` int(11) UNSIGNED NOT NULL,
  `resource_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `resource_id` int(11) UNSIGNED NOT NULL,
  `poster_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `poster_id` int(11) UNSIGNED NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `like_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_comments`
--

INSERT INTO `engine4_core_comments` (`comment_id`, `resource_type`, `resource_id`, `poster_type`, `poster_id`, `body`, `creation_date`, `like_count`) VALUES
(1, 'blog', 1, 'user', 3, 'comment', '2017-05-22 07:33:29', 0),
(2, 'blog', 1, 'user', 1, 'new comment', '2017-05-26 09:32:36', 0),
(3, 'video', 3, 'user', 1, 'clouds ', '2017-05-26 10:58:41', 0),
(4, 'article', 136, 'user', 3, 'comment', '2017-05-29 11:08:14', 0),
(6, 'blog', 4, 'user', 1, 'new comment', '2017-05-30 02:56:16', 0),
(7, 'article', 139, 'user', 1, 'new comment', '2017-05-31 02:26:12', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_content`
--

CREATE TABLE `engine4_core_content` (
  `content_id` int(11) UNSIGNED NOT NULL,
  `page_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'widget',
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `parent_content_id` int(11) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `params` text COLLATE utf8_unicode_ci,
  `attribs` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_content`
--

INSERT INTO `engine4_core_content` (`content_id`, `page_id`, `type`, `name`, `parent_content_id`, `order`, `params`, `attribs`) VALUES
(100, 1, 'container', 'main', NULL, 2, '[""]', NULL),
(110, 1, 'widget', 'advancedsearch.mini-menu', 100, 2, '[""]', NULL),
(111, 1, 'widget', 'daylogo.day-logo', 100, 3, '{"name":"daylogo.day-logo","logo":"","nomobile":"0","logo_id":0,"default":""}', NULL),
(112, 1, 'widget', 'core.menu-main', 100, 4, '[""]', NULL),
(200, 2, 'container', 'main', NULL, 1, '', NULL),
(210, 2, 'widget', 'core.menu-footer', 200, 2, '', NULL),
(300, 3, 'container', 'main', NULL, 1, '', NULL),
(310, 3, 'container', 'left', 300, 1, '', NULL),
(311, 3, 'container', 'right', 300, 2, '', NULL),
(312, 3, 'container', 'middle', 300, 3, '', NULL),
(320, 3, 'widget', 'user.login-or-signup', 310, 1, '', NULL),
(321, 3, 'widget', 'user.list-online', 310, 2, '{"title":"%s Members Online"}', NULL),
(322, 3, 'widget', 'core.statistics', 310, 3, '{"title":"Network Stats"}', NULL),
(330, 3, 'widget', 'user.list-signups', 311, 1, '{"title":"Newest Members"}', NULL),
(331, 3, 'widget', 'user.list-popular', 311, 2, '{"title":"Popular Members"}', NULL),
(340, 3, 'widget', 'announcement.list-announcements', 312, 1, '', NULL),
(341, 3, 'widget', 'activity.feed', 312, 2, '{"title":"What''s New"}', NULL),
(400, 4, 'container', 'main', NULL, 2, '[""]', NULL),
(410, 4, 'container', 'left', 400, 4, '[""]', NULL),
(411, 4, 'container', 'right', 400, 5, '[""]', NULL),
(412, 4, 'container', 'middle', 400, 6, '[""]', NULL),
(420, 4, 'widget', 'user.home-photo', 410, 3, '[""]', NULL),
(421, 4, 'widget', 'user.home-links', 410, 4, '[""]', NULL),
(422, 4, 'widget', 'user.list-online', 411, 17, '{"title":"%s Members Online"}', NULL),
(423, 4, 'widget', 'core.statistics', 411, 19, '{"title":"Network Stats"}', NULL),
(430, 4, 'widget', 'activity.list-requests', 411, 15, '{"title":"Requests"}', NULL),
(432, 4, 'widget', 'user.list-popular', 411, 18, '{"title":"Popular Members"}', NULL),
(440, 4, 'widget', 'announcement.list-announcements', 412, 10, '{"0":"","title":"Announcements"}', NULL),
(441, 4, 'widget', 'activity.feed', 991, 12, '{"title":"What''s New"}', NULL),
(500, 5, 'container', 'main', NULL, 2, '[""]', NULL),
(510, 5, 'container', 'left', 500, 4, '[""]', NULL),
(511, 5, 'container', 'middle', 500, 6, '[""]', NULL),
(520, 5, 'widget', 'user.profile-photo', 510, 3, '[""]', NULL),
(521, 5, 'widget', 'user.profile-options', 510, 6, '[""]', NULL),
(522, 5, 'widget', 'user.profile-friends-common', 510, 7, '{"title":"Mutual Friends"}', NULL),
(523, 5, 'widget', 'user.profile-info', 510, 8, '{"title":"Member Info"}', NULL),
(530, 5, 'widget', 'user.profile-status', 511, 11, '[""]', NULL),
(531, 5, 'widget', 'core.container-tabs', 511, 12, '{"max":"6"}', NULL),
(540, 5, 'widget', 'activity.feed', 531, 13, '{"title":"Updates"}', NULL),
(541, 5, 'widget', 'user.profile-fields', 531, 14, '{"title":"Info"}', NULL),
(542, 5, 'widget', 'user.profile-friends', 531, 15, '{"title":"Friends","titleCount":true}', NULL),
(546, 5, 'widget', 'core.profile-links', 531, 17, '{"title":"Links","titleCount":true}', NULL),
(547, 6, 'container', 'main', NULL, 1, NULL, NULL),
(548, 6, 'container', 'middle', 547, 2, NULL, NULL),
(549, 6, 'widget', 'core.content', 548, 1, NULL, NULL),
(550, 7, 'container', 'main', NULL, 1, NULL, NULL),
(551, 7, 'container', 'middle', 550, 2, NULL, NULL),
(552, 7, 'widget', 'core.content', 551, 1, NULL, NULL),
(553, 8, 'container', 'main', NULL, 1, NULL, NULL),
(554, 8, 'container', 'middle', 553, 2, NULL, NULL),
(555, 8, 'widget', 'core.content', 554, 1, NULL, NULL),
(556, 9, 'container', 'main', NULL, 1, NULL, NULL),
(557, 9, 'container', 'middle', 556, 1, NULL, NULL),
(558, 9, 'widget', 'core.content', 557, 1, NULL, NULL),
(559, 10, 'container', 'main', NULL, 1, NULL, NULL),
(560, 10, 'container', 'middle', 559, 1, NULL, NULL),
(561, 10, 'widget', 'core.content', 560, 1, NULL, NULL),
(562, 11, 'container', 'main', NULL, 1, NULL, NULL),
(563, 11, 'container', 'middle', 562, 1, NULL, NULL),
(564, 11, 'widget', 'core.content', 563, 1, NULL, NULL),
(565, 12, 'container', 'main', NULL, 1, NULL, NULL),
(566, 12, 'container', 'middle', 565, 1, NULL, NULL),
(567, 12, 'widget', 'core.content', 566, 1, NULL, NULL),
(568, 13, 'container', 'main', NULL, 1, NULL, NULL),
(569, 13, 'container', 'middle', 568, 1, NULL, NULL),
(570, 13, 'widget', 'core.content', 569, 1, NULL, NULL),
(571, 14, 'container', 'top', NULL, 1, NULL, NULL),
(572, 14, 'container', 'main', NULL, 2, NULL, NULL),
(573, 14, 'container', 'middle', 571, 1, NULL, NULL),
(574, 14, 'container', 'middle', 572, 2, NULL, NULL),
(575, 14, 'widget', 'user.settings-menu', 573, 1, NULL, NULL),
(576, 14, 'widget', 'core.content', 574, 1, NULL, NULL),
(577, 15, 'container', 'top', NULL, 1, NULL, NULL),
(578, 15, 'container', 'main', NULL, 2, NULL, NULL),
(579, 15, 'container', 'middle', 577, 1, NULL, NULL),
(580, 15, 'container', 'middle', 578, 2, NULL, NULL),
(581, 15, 'widget', 'user.settings-menu', 579, 1, NULL, NULL),
(582, 15, 'widget', 'core.content', 580, 1, NULL, NULL),
(583, 16, 'container', 'top', NULL, 1, NULL, NULL),
(584, 16, 'container', 'main', NULL, 2, NULL, NULL),
(585, 16, 'container', 'middle', 583, 1, NULL, NULL),
(586, 16, 'container', 'middle', 584, 2, NULL, NULL),
(587, 16, 'widget', 'user.settings-menu', 585, 1, NULL, NULL),
(588, 16, 'widget', 'core.content', 586, 1, NULL, NULL),
(589, 17, 'container', 'top', NULL, 1, NULL, NULL),
(590, 17, 'container', 'main', NULL, 2, NULL, NULL),
(591, 17, 'container', 'middle', 589, 1, NULL, NULL),
(592, 17, 'container', 'middle', 590, 2, NULL, NULL),
(593, 17, 'widget', 'user.settings-menu', 591, 1, NULL, NULL),
(594, 17, 'widget', 'core.content', 592, 1, NULL, NULL),
(595, 18, 'container', 'top', NULL, 1, NULL, NULL),
(596, 18, 'container', 'main', NULL, 2, NULL, NULL),
(597, 18, 'container', 'middle', 595, 1, NULL, NULL),
(598, 18, 'container', 'middle', 596, 2, NULL, NULL),
(599, 18, 'widget', 'user.settings-menu', 597, 1, NULL, NULL),
(600, 18, 'widget', 'core.content', 598, 1, NULL, NULL),
(601, 19, 'container', 'top', NULL, 1, NULL, NULL),
(602, 19, 'container', 'main', NULL, 2, NULL, NULL),
(603, 19, 'container', 'middle', 601, 1, NULL, NULL),
(604, 19, 'container', 'middle', 602, 2, NULL, NULL),
(605, 19, 'widget', 'user.settings-menu', 603, 1, NULL, NULL),
(606, 19, 'widget', 'core.content', 604, 1, NULL, NULL),
(607, 20, 'container', 'top', NULL, 1, NULL, NULL),
(608, 20, 'container', 'main', NULL, 2, NULL, NULL),
(609, 20, 'container', 'middle', 607, 1, NULL, NULL),
(610, 20, 'container', 'middle', 608, 2, NULL, NULL),
(611, 20, 'container', 'left', 608, 1, NULL, NULL),
(612, 20, 'widget', 'user.browse-menu', 609, 1, NULL, NULL),
(613, 20, 'widget', 'core.content', 610, 1, NULL, NULL),
(614, 20, 'widget', 'user.browse-search', 611, 1, NULL, NULL),
(615, 21, 'container', 'main', NULL, 1, NULL, NULL),
(616, 21, 'container', 'middle', 615, 1, NULL, NULL),
(617, 21, 'widget', 'core.content', 616, 1, NULL, NULL),
(618, 22, 'container', 'main', NULL, 1, NULL, NULL),
(619, 22, 'container', 'middle', 618, 1, NULL, NULL),
(620, 22, 'widget', 'core.content', 619, 2, NULL, NULL),
(621, 22, 'widget', 'messages.menu', 619, 1, NULL, NULL),
(622, 23, 'container', 'main', NULL, 1, NULL, NULL),
(623, 23, 'container', 'middle', 622, 1, NULL, NULL),
(624, 23, 'widget', 'core.content', 623, 2, NULL, NULL),
(625, 23, 'widget', 'messages.menu', 623, 1, NULL, NULL),
(626, 24, 'container', 'main', NULL, 1, NULL, NULL),
(627, 24, 'container', 'middle', 626, 1, NULL, NULL),
(628, 24, 'widget', 'core.content', 627, 2, NULL, NULL),
(629, 24, 'widget', 'messages.menu', 627, 1, NULL, NULL),
(630, 25, 'container', 'main', NULL, 1, NULL, NULL),
(631, 25, 'container', 'middle', 630, 1, NULL, NULL),
(632, 25, 'widget', 'core.content', 631, 2, NULL, NULL),
(633, 25, 'widget', 'messages.menu', 631, 1, NULL, NULL),
(634, 26, 'container', 'main', NULL, 1, NULL, NULL),
(635, 26, 'container', 'middle', 634, 1, NULL, NULL),
(636, 26, 'widget', 'core.content', 635, 2, NULL, NULL),
(637, 26, 'widget', 'messages.menu', 635, 1, NULL, NULL),
(638, 5, 'widget', 'video.profile-videos', 531, 20, '{"title":"Videos","titleCount":true}', NULL),
(639, 27, 'container', 'main', NULL, 1, '', NULL),
(640, 27, 'container', 'right', 639, 1, '', NULL),
(641, 27, 'container', 'middle', 639, 3, '', NULL),
(642, 27, 'widget', 'core.content', 641, 1, '', NULL),
(643, 27, 'widget', 'core.comments', 641, 2, '', NULL),
(644, 27, 'widget', 'video.show-same-tags', 640, 1, '', NULL),
(645, 27, 'widget', 'video.show-also-liked', 640, 2, '', NULL),
(646, 27, 'widget', 'video.show-same-poster', 640, 3, '', NULL),
(647, 28, 'container', 'top', NULL, 1, NULL, NULL),
(648, 28, 'container', 'main', NULL, 2, NULL, NULL),
(649, 28, 'container', 'middle', 647, 1, NULL, NULL),
(650, 28, 'container', 'middle', 648, 2, NULL, NULL),
(651, 28, 'container', 'right', 648, 1, NULL, NULL),
(652, 28, 'widget', 'video.browse-menu', 649, 1, NULL, NULL),
(653, 28, 'widget', 'core.content', 650, 1, NULL, NULL),
(654, 28, 'widget', 'video.browse-search', 651, 1, NULL, NULL),
(655, 28, 'widget', 'video.browse-menu-quick', 651, 2, NULL, NULL),
(656, 29, 'container', 'top', NULL, 1, NULL, NULL),
(657, 29, 'container', 'main', NULL, 2, NULL, NULL),
(658, 29, 'container', 'middle', 656, 1, NULL, NULL),
(659, 29, 'container', 'middle', 657, 2, NULL, NULL),
(660, 29, 'widget', 'video.browse-menu', 658, 1, NULL, NULL),
(661, 29, 'widget', 'core.content', 659, 1, NULL, NULL),
(662, 30, 'container', 'top', NULL, 1, NULL, NULL),
(663, 30, 'container', 'main', NULL, 2, NULL, NULL),
(664, 30, 'container', 'middle', 662, 1, NULL, NULL),
(665, 30, 'container', 'middle', 663, 2, NULL, NULL),
(666, 30, 'container', 'right', 663, 1, NULL, NULL),
(667, 30, 'widget', 'video.browse-menu', 664, 1, NULL, NULL),
(668, 30, 'widget', 'core.content', 665, 1, NULL, NULL),
(669, 30, 'widget', 'video.browse-search', 666, 1, NULL, NULL),
(670, 30, 'widget', 'video.browse-menu-quick', 666, 2, NULL, NULL),
(671, 5, 'widget', 'group.profile-groups', 531, 19, '{"title":"Groups","titleCount":true}', NULL),
(672, 31, 'container', 'main', NULL, 1, '', NULL),
(673, 31, 'container', 'middle', 672, 3, '', NULL),
(674, 31, 'container', 'left', 672, 1, '', NULL),
(675, 31, 'widget', 'core.container-tabs', 673, 2, '{"max":"6"}', NULL),
(676, 31, 'widget', 'group.profile-status', 673, 1, '', NULL),
(677, 31, 'widget', 'group.profile-photo', 674, 1, '', NULL),
(678, 31, 'widget', 'group.profile-options', 674, 2, '', NULL),
(679, 31, 'widget', 'group.profile-info', 674, 3, '', NULL),
(680, 31, 'widget', 'activity.feed', 675, 1, '{"title":"Updates"}', NULL),
(681, 31, 'widget', 'group.profile-members', 675, 2, '{"title":"Members","titleCount":true}', NULL),
(682, 31, 'widget', 'group.profile-photos', 675, 3, '{"title":"Photos","titleCount":true}', NULL),
(683, 31, 'widget', 'group.profile-discussions', 675, 4, '{"title":"Discussions","titleCount":true}', NULL),
(684, 31, 'widget', 'core.profile-links', 675, 5, '{"title":"Links","titleCount":true}', NULL),
(685, 31, 'widget', 'group.profile-events', 675, 6, '{"title":"Events","titleCount":true}', NULL),
(686, 32, 'container', 'main', NULL, 1, '', NULL),
(687, 32, 'container', 'middle', 686, 2, '', NULL),
(688, 32, 'widget', 'group.profile-status', 687, 3, '', NULL),
(689, 32, 'widget', 'group.profile-photo', 687, 4, '', NULL),
(690, 32, 'widget', 'group.profile-info', 687, 5, '', NULL),
(691, 32, 'widget', 'core.container-tabs', 687, 6, '{"max":6}', NULL),
(692, 32, 'widget', 'activity.feed', 691, 7, '{"title":"What''s New"}', NULL),
(693, 32, 'widget', 'group.profile-members', 691, 8, '{"title":"Members","titleCount":true}', NULL),
(694, 33, 'container', 'top', NULL, 1, NULL, NULL),
(695, 33, 'container', 'main', NULL, 2, NULL, NULL),
(696, 33, 'container', 'middle', 694, 1, NULL, NULL),
(697, 33, 'container', 'middle', 695, 2, NULL, NULL),
(698, 33, 'container', 'right', 695, 1, NULL, NULL),
(699, 33, 'widget', 'group.browse-menu', 696, 1, NULL, NULL),
(700, 33, 'widget', 'core.content', 697, 1, NULL, NULL),
(701, 33, 'widget', 'group.browse-search', 698, 1, NULL, NULL),
(702, 33, 'widget', 'group.browse-menu-quick', 698, 2, NULL, NULL),
(703, 34, 'container', 'top', NULL, 1, NULL, NULL),
(704, 34, 'container', 'main', NULL, 2, NULL, NULL),
(705, 34, 'container', 'middle', 703, 1, NULL, NULL),
(706, 34, 'container', 'middle', 704, 2, NULL, NULL),
(707, 34, 'widget', 'group.browse-menu', 705, 1, NULL, NULL),
(708, 34, 'widget', 'core.content', 706, 1, NULL, NULL),
(709, 35, 'container', 'top', NULL, 1, NULL, NULL),
(710, 35, 'container', 'main', NULL, 2, NULL, NULL),
(711, 35, 'container', 'middle', 709, 1, NULL, NULL),
(712, 35, 'container', 'middle', 710, 2, NULL, NULL),
(713, 35, 'container', 'right', 710, 1, NULL, NULL),
(714, 35, 'widget', 'group.browse-menu', 711, 1, NULL, NULL),
(715, 35, 'widget', 'core.content', 712, 1, NULL, NULL),
(716, 35, 'widget', 'group.browse-search', 713, 1, NULL, NULL),
(717, 35, 'widget', 'group.browse-menu-quick', 713, 2, NULL, NULL),
(718, 36, 'container', 'main', NULL, 1, '', NULL),
(719, 36, 'container', 'middle', 718, 2, '', NULL),
(720, 36, 'widget', 'event.profile-status', 719, 3, '', NULL),
(721, 36, 'widget', 'event.profile-photo', 719, 4, '', NULL),
(722, 36, 'widget', 'event.profile-info', 719, 5, '', NULL),
(723, 36, 'widget', 'event.profile-rsvp', 719, 6, '', NULL),
(724, 36, 'widget', 'core.container-tabs', 719, 7, '{"max":6}', NULL),
(725, 36, 'widget', 'activity.feed', 724, 8, '{"title":"What''s New"}', NULL),
(726, 36, 'widget', 'event.profile-members', 724, 9, '{"title":"Guests","titleCount":true}', NULL),
(727, 37, 'container', 'main', NULL, 1, '', NULL),
(728, 37, 'container', 'middle', 727, 3, '', NULL),
(729, 37, 'container', 'left', 727, 1, '', NULL),
(730, 37, 'widget', 'core.container-tabs', 728, 2, '{"max":"6"}', NULL),
(731, 37, 'widget', 'event.profile-status', 728, 1, '', NULL),
(732, 37, 'widget', 'event.profile-photo', 729, 1, '', NULL),
(733, 37, 'widget', 'event.profile-options', 729, 2, '', NULL),
(734, 37, 'widget', 'event.profile-info', 729, 3, '', NULL),
(735, 37, 'widget', 'event.profile-rsvp', 729, 4, '', NULL),
(736, 37, 'widget', 'activity.feed', 730, 1, '{"title":"Updates"}', NULL),
(737, 37, 'widget', 'event.profile-members', 730, 2, '{"title":"Guests","titleCount":true}', NULL),
(738, 37, 'widget', 'event.profile-photos', 730, 3, '{"title":"Photos","titleCount":true}', NULL),
(739, 37, 'widget', 'event.profile-discussions', 730, 4, '{"title":"Discussions","titleCount":true}', NULL),
(740, 37, 'widget', 'core.profile-links', 730, 5, '{"title":"Links","titleCount":true}', NULL),
(741, 4, 'widget', 'event.home-upcoming', 411, 16, '{"title":"Upcoming Events","titleCount":true}', NULL),
(742, 5, 'widget', 'event.profile-events', 531, 18, '{"title":"Events","titleCount":true}', NULL),
(743, 38, 'container', 'top', NULL, 1, NULL, NULL),
(744, 38, 'container', 'main', NULL, 2, NULL, NULL),
(745, 38, 'container', 'middle', 743, 1, NULL, NULL),
(746, 38, 'container', 'middle', 744, 2, NULL, NULL),
(747, 38, 'container', 'right', 744, 1, NULL, NULL),
(748, 38, 'widget', 'event.browse-menu', 745, 1, NULL, NULL),
(749, 38, 'widget', 'core.content', 746, 1, NULL, NULL),
(750, 38, 'widget', 'event.browse-search', 747, 1, NULL, NULL),
(751, 38, 'widget', 'event.browse-menu-quick', 747, 2, NULL, NULL),
(752, 39, 'container', 'top', NULL, 1, NULL, NULL),
(753, 39, 'container', 'main', NULL, 2, NULL, NULL),
(754, 39, 'container', 'middle', 752, 1, NULL, NULL),
(755, 39, 'container', 'middle', 753, 2, NULL, NULL),
(756, 39, 'widget', 'event.browse-menu', 754, 1, NULL, NULL),
(757, 39, 'widget', 'core.content', 755, 1, NULL, NULL),
(758, 40, 'container', 'top', NULL, 1, NULL, NULL),
(759, 40, 'container', 'main', NULL, 2, NULL, NULL),
(760, 40, 'container', 'middle', 758, 1, NULL, NULL),
(761, 40, 'container', 'middle', 759, 2, NULL, NULL),
(762, 40, 'container', 'right', 759, 1, NULL, NULL),
(763, 40, 'widget', 'event.browse-menu', 760, 1, NULL, NULL),
(764, 40, 'widget', 'core.content', 761, 1, NULL, NULL),
(765, 40, 'widget', 'event.browse-search', 762, 1, NULL, NULL),
(766, 40, 'widget', 'event.browse-menu-quick', 762, 2, NULL, NULL),
(767, 5, 'widget', 'blog.profile-blogs', 531, 16, '{"title":"Blogs","titleCount":true}', NULL),
(768, 41, 'container', 'main', NULL, 1, NULL, NULL),
(769, 41, 'container', 'left', 768, 1, NULL, NULL),
(770, 41, 'container', 'middle', 768, 2, NULL, NULL),
(771, 41, 'widget', 'blog.gutter-photo', 769, 1, NULL, NULL),
(772, 41, 'widget', 'blog.gutter-menu', 769, 2, NULL, NULL),
(773, 41, 'widget', 'blog.gutter-search', 769, 3, NULL, NULL),
(774, 41, 'widget', 'core.content', 770, 1, NULL, NULL),
(775, 42, 'container', 'main', NULL, 1, NULL, NULL),
(776, 42, 'container', 'left', 775, 1, NULL, NULL),
(777, 42, 'container', 'middle', 775, 2, NULL, NULL),
(778, 42, 'widget', 'blog.gutter-photo', 776, 1, NULL, NULL),
(779, 42, 'widget', 'blog.gutter-menu', 776, 2, NULL, NULL),
(780, 42, 'widget', 'blog.gutter-search', 776, 3, NULL, NULL),
(781, 42, 'widget', 'core.content', 777, 1, NULL, NULL),
(782, 42, 'widget', 'core.comments', 777, 2, NULL, NULL),
(783, 43, 'container', 'top', NULL, 1, '["[]"]', NULL),
(784, 43, 'container', 'main', NULL, 2, '["[]"]', NULL),
(785, 43, 'container', 'middle', 783, 6, '["[]"]', NULL),
(786, 43, 'container', 'middle', 784, 6, '["[]"]', NULL),
(787, 43, 'container', 'right', 784, 5, '["[]"]', NULL),
(788, 43, 'widget', 'blog.browse-menu', 785, 3, '["[]"]', NULL),
(789, 43, 'widget', 'core.content', 786, 7, '["[]"]', NULL),
(790, 43, 'widget', 'blog.browse-search', 787, 9, '["[]"]', NULL),
(791, 43, 'widget', 'blog.browse-menu-quick', 787, 10, '["[]"]', NULL),
(792, 44, 'container', 'top', NULL, 1, NULL, NULL),
(793, 44, 'container', 'main', NULL, 2, NULL, NULL),
(794, 44, 'container', 'middle', 792, 1, NULL, NULL),
(795, 44, 'container', 'middle', 793, 2, NULL, NULL),
(796, 44, 'widget', 'blog.browse-menu', 794, 1, NULL, NULL),
(797, 44, 'widget', 'core.content', 795, 1, NULL, NULL),
(798, 45, 'container', 'top', NULL, 1, NULL, NULL),
(799, 45, 'container', 'main', NULL, 2, NULL, NULL),
(800, 45, 'container', 'middle', 798, 1, NULL, NULL),
(801, 45, 'container', 'middle', 799, 2, NULL, NULL),
(802, 45, 'container', 'right', 799, 1, NULL, NULL),
(803, 45, 'widget', 'blog.browse-menu', 800, 1, NULL, NULL),
(804, 45, 'widget', 'core.content', 801, 1, NULL, NULL),
(805, 45, 'widget', 'blog.browse-search', 802, 1, NULL, NULL),
(806, 45, 'widget', 'blog.browse-menu-quick', 802, 2, NULL, NULL),
(807, 46, 'container', 'top', NULL, 1, NULL, NULL),
(808, 46, 'container', 'middle', 807, 6, NULL, NULL),
(809, 46, 'widget', 'credit.navigation-tabs', 808, 3, NULL, NULL),
(810, 46, 'container', 'main', NULL, 2, NULL, NULL),
(811, 46, 'container', 'left', 810, 4, NULL, NULL),
(812, 46, 'widget', 'credit.faq', 811, 6, '{"title":"FAQ"}', NULL),
(813, 46, 'container', 'right', 810, 5, NULL, NULL),
(814, 46, 'widget', 'credit.buy-credits', 813, 10, '{"title":"Buy Credits"}', NULL),
(815, 46, 'container', 'middle', 810, 6, NULL, NULL),
(816, 46, 'widget', 'credit.browse-users', 815, 8, '{"title":"Top Members"}', NULL),
(817, 47, 'container', 'top', NULL, 1, NULL, NULL),
(818, 47, 'container', 'middle', 817, 6, NULL, NULL),
(819, 47, 'widget', 'credit.navigation-tabs', 818, 3, NULL, NULL),
(820, 47, 'container', 'main', NULL, 2, NULL, NULL),
(821, 47, 'container', 'left', 820, 4, NULL, NULL),
(822, 47, 'widget', 'credit.my-credits', 821, 6, '{"title":"My Credits"}', NULL),
(823, 47, 'container', 'right', 820, 5, NULL, NULL),
(824, 47, 'widget', 'credit.send-credits', 823, 10, '{"title":"Send Credits"}', NULL),
(825, 47, 'widget', 'credit.create-items', 823, 11, '{"title":"Quick Links"}', NULL),
(826, 47, 'container', 'middle', 820, 6, NULL, NULL),
(827, 47, 'widget', 'credit.transaction-list', 826, 8, '{"title":"Transaction List"}', NULL),
(828, 48, 'container', 'main', 0, 2, '["[]"]', NULL),
(829, 48, 'container', 'middle', 828, 6, '["[]"]', NULL),
(830, 48, 'widget', 'core.content', 829, 3, '["[]"]', NULL),
(831, 48, 'container', 'right', 828, 5, '["[]"]', NULL),
(832, 49, 'container', 'main', 0, 2, '["[]"]', NULL),
(833, 49, 'container', 'middle', 832, 6, '["[]"]', NULL),
(834, 49, 'widget', 'inviter.home-inviter', 833, 5, '{"title":"WALL_WELCOME_INVITER","name":"inviter.home-inviter"}', NULL),
(835, 49, 'widget', 'wall.upload-photo', 833, 6, '{"title":"WALL_WELCOME_UPLOAD_PHOTO","name":"wall.upload-photo"}', NULL),
(836, 49, 'widget', 'wall.welcome', 833, 3, '{"title":"WALL_WELCOME_WELCOME","name":"wall.welcome"}', NULL),
(837, 49, 'widget', 'wall.people-know', 833, 12, '{"title":"WALL_WELCOME_PEOPLE_KNOW","name":"wall.people-know"}', NULL),
(838, 49, 'widget', 'credit.faq', 833, 8, '{"title":"WALL_WELCOME_CREDIT_FAQ","name":"credit.faq"}', NULL),
(839, 49, 'widget', 'suggest.autorecommendations', 833, 7, '{"title":"WALL_WELCOME_SUGGESTION","titleCount":true,"name":"suggest.autorecommendations"}', NULL),
(840, 49, 'widget', 'wall.most-liked', 833, 9, '{"title":"WALL_WELCOME_LIKES"}', NULL),
(841, 49, 'widget', 'hegift.birthdays', 833, 10, '{"title":"WALL_WELCOME_BIRTHDAYS","name":"hegift.birthdays"}', NULL),
(842, 49, 'widget', 'wall.gift-actual', 833, 11, '{"title":"WALL_WELCOME_GIFTACTUAL"}', NULL),
(843, 49, 'widget', 'wall.new-wall', 833, 4, '{"title":"WALL_WELCOME_NEWWALL"}', NULL),
(844, 50, 'container', 'main', NULL, 1, NULL, NULL),
(845, 50, 'container', 'middle', 844, 1, NULL, NULL),
(846, 50, 'widget', 'core.content', 845, 3, '[]', NULL),
(847, 5, 'widget', 'headvancedmembers.verify', 510, 4, '["[]"]', NULL),
(848, 51, 'container', 'top', 0, 1, '["[]"]', NULL),
(849, 51, 'container', 'middle', 848, 6, '["[]"]', NULL),
(850, 51, 'widget', 'hebadge.browse-menu', 849, 3, '["[]"]', NULL),
(851, 51, 'container', 'main', 0, 2, '["[]"]', NULL),
(852, 51, 'container', 'middle', 851, 6, '["[]"]', NULL),
(853, 51, 'widget', 'hebadge.badges-next', 852, 9, '{"title":"HEBADGE_WIDGET_TITLE_BADGES_NEXT","paginator_type":"all","nomobile":"0","itemCountPerPage":"4","name":"hebadge.badges-next"}', NULL),
(854, 51, 'widget', 'hebadge.browse-search', 852, 10, '["[]"]', NULL),
(855, 51, 'widget', 'core.container-tabs', 852, 11, '{"max":6}', NULL),
(856, 51, 'widget', 'hebadge.badges', 855, 12, '{"title":"HEBADGE_WIDGET_TITLE_BADGES"}', NULL),
(857, 51, 'widget', 'hebadge.badges-friend', 855, 13, '{"title":"HEBADGE_WIDGET_TITLE_BADGES_FRIEND"}', NULL),
(858, 51, 'widget', 'hebadge.badges-recent', 855, 14, '{"title":"HEBADGE_WIDGET_TITLE_BADGES_RECENT"}', NULL),
(859, 51, 'container', 'right', 851, 5, '["[]"]', NULL),
(860, 51, 'widget', 'hebadge.last-members', 859, 16, '{"title":"HEBADGE_WIDGET_TITLE_BADGES_LAST_MEMBERS","paginator_type":"hide","nomobile":"0","itemCountPerPage":"","name":"hebadge.last-members"}', NULL),
(861, 51, 'container', 'left', 851, 4, '["[]"]', NULL),
(862, 51, 'widget', 'hebadge.best-members', 861, 6, '{"title":"HEBADGE_WIDGET_TITLE_BEST_MEMBERS","paginator_type":"hide","nomobile":"0","itemCountPerPage":"","name":"hebadge.best-members"}', NULL),
(863, 51, 'widget', 'hebadge.info', 861, 7, '{"title":"HEBADGE_WIDGET_TITLE_INFO"}', NULL),
(864, 52, 'container', 'main', 0, 2, '["[]"]', NULL),
(865, 52, 'container', 'middle', 864, 6, '["[]"]', NULL),
(866, 52, 'widget', 'core.container-tabs', 865, 8, '{"max":6}', NULL),
(867, 52, 'widget', 'hebadge.profile-require', 866, 9, '{"title":"HEBADGE_WIDGET_TITLE_PROFILE_REQUIRE"}', NULL),
(868, 52, 'widget', 'hebadge.profile-info', 866, 10, '{"title":"HEBADGE_WIDGET_TITLE_PROFILE_INFO"}', NULL),
(869, 52, 'widget', 'hebadge.profile-members', 866, 11, '{"title":"HEBADGE_WIDGET_TITLE_PROFILE_MEMBERS"}', NULL),
(870, 52, 'container', 'left', 864, 4, '["[]"]', NULL),
(871, 52, 'widget', 'hebadge.profile-status', 870, 3, '[]', NULL),
(872, 52, 'widget', 'hebadge.profile-approved', 870, 4, '[]', NULL),
(873, 52, 'widget', 'hebadge.profile-body', 870, 5, '{"title":"HEBADGE_WIDGET_TITLE_PROFILE_BODY"}', NULL),
(874, 52, 'widget', 'hebadge.profile-loader', 870, 6, '{"title":"HEBADGE_WIDGET_TITLE_PROFILE_LOADER"}', NULL),
(875, 53, 'container', 'top', 0, 1, '["[]"]', NULL),
(876, 53, 'container', 'middle', 875, 6, '["[]"]', NULL),
(877, 53, 'widget', 'hebadge.browse-menu', 876, 3, '[]', NULL),
(878, 53, 'container', 'main', 0, 2, '["[]"]', NULL),
(879, 53, 'container', 'middle', 878, 6, '["[]"]', NULL),
(880, 53, 'widget', 'hebadge.badges-manage', 879, 8, '{"title":"HEBADGE_WIDGET_TITLE_BADGES_MANAGE"}', NULL),
(881, 53, 'widget', 'hebadge.badges-next', 879, 9, '{"title":"HEBADGE_WIDGET_TITLE_BADGES_NEXT"}', NULL),
(882, 53, 'container', 'left', 878, 4, '["[]"]', NULL),
(883, 53, 'widget', 'hebadge.info', 882, 6, '{"title":"HEBADGE_WIDGET_TITLE_INFO"}', NULL),
(884, 54, 'container', 'top', 0, 1, '["[]"]', NULL),
(885, 54, 'container', 'middle', 884, 6, '["[]"]', NULL),
(886, 54, 'widget', 'hebadge.browse-menu', 885, 3, '["[]"]', NULL),
(887, 54, 'container', 'main', 0, 2, '["[]"]', NULL),
(888, 54, 'container', 'middle', 887, 6, '["[]"]', NULL),
(889, 54, 'widget', 'hebadge.credit-badges', 888, 8, '["[]"]', NULL),
(890, 54, 'container', 'left', 887, 4, '["[]"]', NULL),
(891, 54, 'widget', 'hebadge.credit-loader', 890, 6, '{"title":"HEBADGE_WIDGET_TITLE_CREDIT_LOADER"}', NULL),
(892, 4, 'widget', 'hebadge.profile-badgeicons', 410, 7, '["[]"]', NULL),
(893, 5, 'widget', 'hebadge.profile-badgeicons', 510, 5, '["[]"]', NULL),
(894, 5, 'widget', 'hebadge.profile-badges', 531, 21, '{"title":"HEBADGE_WIDGET_TITLE_PROFILE_BADGES","titleCount":true}', NULL),
(896, 4, 'widget', 'hebadge.credit-loader', 410, 6, '{"title":"HEBADGE_WIDGET_TITLE_CREDIT_LOADER"}', NULL),
(897, 55, 'container', 'main', NULL, 1, NULL, NULL),
(898, 55, 'container', 'right', 897, 1, NULL, NULL),
(899, 55, 'container', 'middle', 897, 2, NULL, NULL),
(900, 55, 'widget', 'hecontest.browse-menu', 899, 3, NULL, NULL),
(901, 55, 'widget', 'core.content', 899, 4, NULL, NULL),
(902, 56, 'container', 'main', NULL, 1, NULL, NULL),
(903, 56, 'container', 'right', 902, 1, NULL, NULL),
(904, 56, 'widget', 'hecontest.contest-info', 903, 6, NULL, NULL),
(905, 56, 'widget', 'hecontest.contest-participants', 903, 7, NULL, NULL),
(906, 56, 'widget', 'hecontest.contest-winner', 903, 8, NULL, NULL),
(907, 56, 'widget', 'hecontest.contest-partners', 903, 9, NULL, NULL),
(908, 56, 'container', 'middle', 902, 2, NULL, NULL),
(909, 56, 'widget', 'hecontest.browse-menu', 908, 3, NULL, NULL),
(910, 56, 'widget', 'core.content', 908, 4, NULL, NULL),
(911, 57, 'container', 'main', NULL, 2, '[]', NULL),
(912, 57, 'container', 'middle', 911, 6, '[]', NULL),
(913, 57, 'container', 'right', 911, 5, '[]', NULL),
(914, 57, 'widget', 'hecontest.contest-info', 913, 7, '[]', NULL),
(915, 57, 'widget', 'hecontest.contest-participants', 913, 8, '[]', NULL),
(916, 57, 'widget', 'hecontest.contest-partners', 913, 9, '[]', NULL),
(917, 57, 'widget', 'hecontest.contest-countdown', 912, 3, '["[]"]', NULL),
(918, 57, 'widget', 'core.content', 912, 5, '[]', NULL),
(919, 4, 'widget', 'core.comments', 410, 5, '{"title":"Comments"}', NULL),
(923, 43, 'widget', 'blog.profile-blogs', 785, 4, '{"title":"Blogs","titleCount":true}', NULL),
(924, 58, 'container', 'main', NULL, 2, '["[]"]', NULL),
(925, 58, 'container', 'middle', 924, 6, '["[]"]', NULL),
(928, 58, 'container', 'right', 924, 5, '["[]"]', NULL),
(930, 58, 'widget', 'user.profile-friends-following', 925, 3, '{"title":"Following","titleCount":true}', NULL),
(931, 58, 'widget', 'user.profile-friends-followers', 925, 4, '{"title":"Followers","titleCount":true}', NULL),
(932, 58, 'widget', 'user.list-popular', 928, 6, '{"title":"Popular Members"}', NULL),
(933, 58, 'widget', 'user.list-online', 928, 7, '{"title":"%d Members Online"}', NULL),
(935, 59, 'container', 'main', NULL, 2, '["[]"]', NULL),
(939, 59, 'container', 'top', NULL, 1, '["[]"]', NULL),
(940, 59, 'container', 'middle', 939, 6, '["[]"]', NULL),
(941, 59, 'widget', 'article.browse-menu-quick', 940, 3, '["[]"]', NULL),
(942, 59, 'widget', 'article.list-recent-articles', 943, 8, '{"title":"Recent Articles"}', NULL),
(943, 59, 'container', 'right', 935, 5, '["[]"]', NULL),
(944, 59, 'widget', 'core.content', 945, 6, '["[]"]', NULL),
(945, 59, 'container', 'middle', 935, 6, '["[]"]', NULL),
(946, 62, 'container', 'top', NULL, 1, '["[]"]', NULL),
(947, 62, 'container', 'main', NULL, 2, '["[]"]', NULL),
(948, 62, 'container', 'middle', 946, 6, '["[]"]', NULL),
(949, 62, 'container', 'middle', 947, 6, '["[]"]', NULL),
(950, 62, 'container', 'right', 947, 5, '["[]"]', NULL),
(954, 61, 'container', 'main', NULL, 2, '["[]"]', NULL),
(955, 61, 'container', 'top', NULL, 1, '["[]"]', NULL),
(956, 61, 'container', 'middle', 954, 6, '["[]"]', NULL),
(957, 61, 'container', 'middle', 955, 6, '["[]"]', NULL),
(958, 61, 'container', 'right', 954, 5, '["[]"]', NULL),
(959, 61, 'widget', 'article.browse-menu-quick', 957, 3, '["[]"]', NULL),
(960, 61, 'widget', 'core.content', 956, 6, '["[]"]', NULL),
(963, 61, 'widget', 'article.list-recent-articles', 958, 8, '{"title":"Recent Articles"}', NULL),
(966, 59, 'widget', 'article.list-popular-articles', 943, 9, '{"title":"Popular Articles"}', NULL),
(968, 62, 'widget', 'article.browse-menu-quick', 948, 3, '["[]"]', NULL),
(969, 62, 'widget', 'core.content', 949, 6, '["[]"]', NULL),
(971, 62, 'widget', 'article.list-recent-articles', 950, 8, '{"title":"Recent Articles"}', NULL),
(972, 63, 'container', 'top', NULL, 1, '["[]"]', NULL),
(973, 63, 'container', 'main', NULL, 2, '["[]"]', NULL),
(974, 63, 'container', 'middle', 972, 6, '["[]"]', NULL),
(975, 63, 'container', 'middle', 973, 6, '["[]"]', NULL),
(976, 63, 'container', 'right', 973, 5, '["[]"]', NULL),
(977, 63, 'widget', 'article.browse-menu-quick', 974, 3, '["[]"]', NULL),
(978, 63, 'widget', 'core.content', 975, 6, '["[]"]', NULL),
(980, 63, 'widget', 'article.list-recent-articles', 976, 9, '{"title":"Recent Articles"}', NULL),
(981, 63, 'widget', 'article.list-popular-articles', 976, 10, '{"title":"Popular Articles"}', NULL),
(987, 63, 'widget', 'core.comments', 975, 7, '{"title":"Comments"}', NULL),
(988, 5, 'widget', 'article.list-users-articles', 531, 22, '{"title":"Profile Articles"}', NULL),
(989, 61, 'widget', 'article.list-popular-articles', 958, 9, '{"title":"Popular Articles"}', NULL),
(990, 5, 'widget', 'guest.profile-guests', 510, 9, '{"title":"Recent Guests"}', NULL),
(991, 4, 'widget', 'core.container-tabs', 412, 11, '{"max":6}', NULL),
(992, 4, 'widget', 'guest.guests-manage', 991, 13, '{"title":"Guests Manage"}', NULL),
(993, 4, 'widget', 'guest.profile-guests', 410, 8, '{"title":"Recent Guests"}', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_geotags`
--

CREATE TABLE `engine4_core_geotags` (
  `geotag_id` int(11) UNSIGNED NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_jobs`
--

CREATE TABLE `engine4_core_jobs` (
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `jobtype_id` int(10) UNSIGNED NOT NULL,
  `state` enum('pending','active','sleeping','failed','cancelled','completed','timeout') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `is_complete` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `progress` decimal(5,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `started_date` datetime DEFAULT NULL,
  `completion_date` datetime DEFAULT NULL,
  `priority` mediumint(9) NOT NULL DEFAULT '100',
  `data` text COLLATE utf8_unicode_ci,
  `messages` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_jobs`
--

INSERT INTO `engine4_core_jobs` (`job_id`, `jobtype_id`, `state`, `is_complete`, `progress`, `creation_date`, `modified_date`, `started_date`, `completion_date`, `priority`, `data`, `messages`) VALUES
(1, 13, 'completed', 1, '1.0000', '2017-05-22 05:44:26', '2017-05-22 05:44:33', '2017-05-22 05:44:28', '2017-05-22 05:44:33', 100, '{"total":3,"progress":3,"position":3}', ''),
(2, 13, 'completed', 1, '1.0000', '2017-05-22 07:33:40', '2017-05-22 07:33:49', '2017-05-22 07:33:45', '2017-05-22 07:33:49', 100, '{"total":3,"progress":3,"position":3}', ''),
(3, 13, 'completed', 1, '1.0000', '2017-05-22 15:03:45', '2017-05-22 15:03:56', '2017-05-22 15:03:48', '2017-05-22 15:03:56', 100, '{"total":3,"progress":3,"position":3}', ''),
(4, 13, 'completed', 1, '1.0000', '2017-05-23 00:09:18', '2017-05-23 00:09:32', '2017-05-23 00:09:25', '2017-05-23 00:09:32', 100, '{"total":3,"progress":3,"position":3}', ''),
(5, 13, 'completed', 1, '1.0000', '2017-05-24 05:26:33', '2017-05-24 05:26:42', '2017-05-24 05:26:36', '2017-05-24 05:26:42', 100, '{"total":3,"progress":3,"position":3}', ''),
(6, 13, 'completed', 1, '1.0000', '2017-05-26 10:54:36', '2017-05-26 10:54:56', '2017-05-26 10:54:52', '2017-05-26 10:54:56', 100, '{"total":3,"progress":3,"position":3}', ''),
(7, 13, 'completed', 1, '1.0000', '2017-06-05 09:23:19', '2017-06-05 09:23:50', '2017-06-05 09:23:44', '2017-06-05 09:23:50', 100, '{"total":5,"progress":5,"position":5}', '');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_jobtypes`
--

CREATE TABLE `engine4_core_jobtypes` (
  `jobtype_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `plugin` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `form` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `priority` mediumint(9) NOT NULL DEFAULT '100',
  `multi` tinyint(3) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_jobtypes`
--

INSERT INTO `engine4_core_jobtypes` (`jobtype_id`, `title`, `type`, `module`, `plugin`, `form`, `enabled`, `priority`, `multi`) VALUES
(1, 'Download File', 'file_download', 'core', 'Core_Plugin_Job_FileDownload', 'Core_Form_Admin_Job_FileDownload', 1, 100, 1),
(2, 'Upload File', 'file_upload', 'core', 'Core_Plugin_Job_FileUpload', 'Core_Form_Admin_Job_FileUpload', 1, 100, 1),
(3, 'Rebuild Activity Privacy', 'activity_maintenance_rebuild_privacy', 'activity', 'Activity_Plugin_Job_Maintenance_RebuildPrivacy', NULL, 1, 50, 1),
(4, 'Rebuild Member Privacy', 'user_maintenance_rebuild_privacy', 'user', 'User_Plugin_Job_Maintenance_RebuildPrivacy', NULL, 1, 50, 1),
(5, 'Rebuild Network Membership', 'network_maintenance_rebuild_membership', 'network', 'Network_Plugin_Job_Maintenance_RebuildMembership', NULL, 1, 50, 1),
(6, 'Storage Transfer', 'storage_transfer', 'core', 'Storage_Plugin_Job_Transfer', 'Core_Form_Admin_Job_Generic', 1, 100, 1),
(7, 'Storage Cleanup', 'storage_cleanup', 'core', 'Storage_Plugin_Job_Cleanup', 'Core_Form_Admin_Job_Generic', 1, 100, 1),
(8, 'Video Encode', 'video_encode', 'video', 'Video_Plugin_Job_Encode', NULL, 1, 75, 2),
(9, 'Rebuild Video Privacy', 'video_maintenance_rebuild_privacy', 'video', 'Video_Plugin_Job_Maintenance_RebuildPrivacy', NULL, 1, 50, 1),
(10, 'Rebuild Group Privacy', 'group_maintenance_rebuild_privacy', 'group', 'Group_Plugin_Job_Maintenance_RebuildPrivacy', NULL, 1, 50, 1),
(11, 'Rebuild Event Privacy', 'event_maintenance_rebuild_privacy', 'event', 'Event_Plugin_Job_Maintenance_RebuildPrivacy', NULL, 1, 50, 1),
(12, 'Rebuild Blog Privacy', 'blog_maintenance_rebuild_privacy', 'blog', 'Blog_Plugin_Job_Maintenance_RebuildPrivacy', NULL, 1, 50, 1),
(13, 'Rebuild User Badges', 'hebadge_maintenance_rebuild_user', 'hebadge', 'Hebadge_Plugin_Job_Maintenance_RebuildUser', NULL, 1, 50, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_languages`
--

CREATE TABLE `engine4_core_languages` (
  `language_id` int(11) UNSIGNED NOT NULL,
  `code` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fallback` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `order` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_languages`
--

INSERT INTO `engine4_core_languages` (`language_id`, `code`, `name`, `fallback`, `order`) VALUES
(1, 'en', 'English', 'en', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_likes`
--

CREATE TABLE `engine4_core_likes` (
  `like_id` int(11) UNSIGNED NOT NULL,
  `resource_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `resource_id` int(11) UNSIGNED NOT NULL,
  `poster_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `poster_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_likes`
--

INSERT INTO `engine4_core_likes` (`like_id`, `resource_type`, `resource_id`, `poster_type`, `poster_id`) VALUES
(2, 'blog', 1, 'user', 3),
(3, 'video', 3, 'user', 1),
(4, 'blog', 1, 'user', 1),
(6, 'article', 136, 'user', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_links`
--

CREATE TABLE `engine4_core_links` (
  `link_id` int(11) UNSIGNED NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `parent_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL,
  `owner_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `owner_id` int(11) UNSIGNED NOT NULL,
  `view_count` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_listitems`
--

CREATE TABLE `engine4_core_listitems` (
  `listitem_id` int(11) UNSIGNED NOT NULL,
  `list_id` int(11) UNSIGNED NOT NULL,
  `child_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_lists`
--

CREATE TABLE `engine4_core_lists` (
  `list_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `owner_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `owner_id` int(11) UNSIGNED NOT NULL,
  `child_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `child_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_log`
--

CREATE TABLE `engine4_core_log` (
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `domain` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `plugin` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `priority` smallint(2) NOT NULL DEFAULT '6',
  `priorityName` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INFO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_mail`
--

CREATE TABLE `engine4_core_mail` (
  `mail_id` int(11) UNSIGNED NOT NULL,
  `type` enum('system','zend') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `priority` smallint(3) DEFAULT '100',
  `recipient_count` int(11) UNSIGNED DEFAULT '0',
  `recipient_total` int(10) NOT NULL DEFAULT '0',
  `creation_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_mailrecipients`
--

CREATE TABLE `engine4_core_mailrecipients` (
  `recipient_id` int(11) UNSIGNED NOT NULL,
  `mail_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `email` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_mailtemplates`
--

CREATE TABLE `engine4_core_mailtemplates` (
  `mailtemplate_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vars` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_mailtemplates`
--

INSERT INTO `engine4_core_mailtemplates` (`mailtemplate_id`, `type`, `module`, `vars`) VALUES
(1, 'header', 'core', ''),
(2, 'footer', 'core', ''),
(3, 'header_member', 'core', ''),
(4, 'footer_member', 'core', ''),
(5, 'core_contact', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_name],[sender_email],[sender_link],[sender_photo],[message]'),
(6, 'core_verification', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link]'),
(7, 'core_verification_password', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link],[password]'),
(8, 'core_welcome', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link]'),
(9, 'core_welcome_password', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link],[password]'),
(10, 'notify_admin_user_signup', 'core', '[host],[email],[date],[recipient_title],[object_title],[object_link]'),
(11, 'core_lostpassword', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link]'),
(12, 'notify_commented', 'activity', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(13, 'notify_commented_commented', 'activity', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(14, 'notify_liked', 'activity', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(15, 'notify_liked_commented', 'activity', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(16, 'user_account_approved', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo]'),
(17, 'notify_friend_accepted', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(18, 'notify_friend_request', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(19, 'notify_friend_follow_request', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(20, 'notify_friend_follow_accepted', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(21, 'notify_friend_follow', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(22, 'notify_post_user', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(23, 'notify_tagged', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(24, 'notify_message_new', 'messages', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(25, 'invite', 'invite', '[host],[email],[sender_email],[sender_title],[sender_link],[sender_photo],[message],[object_link],[code]'),
(26, 'invite_code', 'invite', '[host],[email],[sender_email],[sender_title],[sender_link],[sender_photo],[message],[object_link],[code]'),
(27, 'payment_subscription_active', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(28, 'payment_subscription_cancelled', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(29, 'payment_subscription_expired', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(30, 'payment_subscription_overdue', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(31, 'payment_subscription_pending', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(32, 'payment_subscription_recurrence', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(33, 'payment_subscription_refunded', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(34, 'notify_video_processed', 'video', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(35, 'notify_video_processed_failed', 'video', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(36, 'notify_group_accepted', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(37, 'notify_group_approve', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(38, 'notify_group_discussion_reply', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(39, 'notify_group_discussion_response', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(40, 'notify_group_invite', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(41, 'notify_group_promote', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(42, 'notify_event_accepted', 'event', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(43, 'notify_event_approve', 'event', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(44, 'notify_event_discussion_response', 'event', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(45, 'notify_event_discussion_reply', 'event', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(46, 'notify_event_invite', 'event', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(47, 'notify_blog_subscribed_new', 'blog', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(48, 'credit_transaction_overdue', 'credit', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[store_title],[store_description],[object_link]'),
(49, 'credit_transaction_success', 'credit', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[store_title],[store_description],[object_link]'),
(50, 'notify_wall_tag', 'wall', '[host],[email],[recipient_title],[object_title],[object_link]'),
(51, 'notify_hebadge_new', 'hebadge', '[host],[email],[recipient_title],[object_title],[object_link]'),
(52, 'notify_hebadgepage_new', 'hebadge', '[host],[email],[recipient_title],[object_title],[object_link]'),
(53, 'notify_hebadgecredit_new', 'hebadge', '[host],[email],[recipient_title],[object_title],[object_link]'),
(54, 'hecontest_approve', 'hecontest', '[user],[contest_name],[contest_link]'),
(55, 'hecontest_reject', 'hecontest', '[user],[contest_name],[contest_link]'),
(56, 'article_message_new', 'article', '[sender],[title],[body]');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_menuitems`
--

CREATE TABLE `engine4_core_menuitems` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `label` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `plugin` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `menu` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `submenu` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `custom` tinyint(1) NOT NULL DEFAULT '0',
  `order` smallint(6) NOT NULL DEFAULT '999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_menuitems`
--

INSERT INTO `engine4_core_menuitems` (`id`, `name`, `module`, `label`, `plugin`, `params`, `menu`, `submenu`, `enabled`, `custom`, `order`) VALUES
(1, 'core_main_home', 'core', 'Home', 'User_Plugin_Menus', '', 'core_main', '', 1, 0, 1),
(2, 'core_sitemap_home', 'core', 'Home', '', '{"route":"default"}', 'core_sitemap', '', 1, 0, 1),
(3, 'core_footer_privacy', 'core', 'Privacy', '', '{"route":"default","module":"core","controller":"help","action":"privacy"}', 'core_footer', '', 1, 0, 1),
(4, 'core_footer_terms', 'core', 'Terms of Service', '', '{"route":"default","module":"core","controller":"help","action":"terms"}', 'core_footer', '', 1, 0, 2),
(5, 'core_footer_contact', 'core', 'Contact', '', '{"route":"default","module":"core","controller":"help","action":"contact"}', 'core_footer', '', 1, 0, 3),
(6, 'core_mini_admin', 'core', 'Admin', 'User_Plugin_Menus', '', 'core_mini', '', 1, 0, 6),
(7, 'core_mini_profile', 'user', 'My Profile', 'User_Plugin_Menus', '', 'core_mini', '', 1, 0, 5),
(8, 'core_mini_settings', 'user', 'Settings', 'User_Plugin_Menus', '', 'core_mini', '', 1, 0, 3),
(9, 'core_mini_auth', 'user', 'Auth', 'User_Plugin_Menus', '', 'core_mini', '', 1, 0, 2),
(10, 'core_mini_signup', 'user', 'Signup', 'User_Plugin_Menus', '', 'core_mini', '', 1, 0, 1),
(11, 'core_admin_main_home', 'core', 'Home', '', '{"route":"admin_default"}', 'core_admin_main', '', 1, 0, 1),
(12, 'core_admin_main_manage', 'core', 'Manage', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_manage', 1, 0, 2),
(13, 'core_admin_main_settings', 'core', 'Settings', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_settings', 1, 0, 3),
(14, 'core_admin_main_plugins', 'core', 'Plugins', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_plugins', 1, 0, 4),
(15, 'core_admin_main_layout', 'core', 'Layout', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_layout', 1, 0, 5),
(16, 'core_admin_main_ads', 'core', 'Ads', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_ads', 1, 0, 6),
(17, 'core_admin_main_stats', 'core', 'Stats', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_stats', 1, 0, 8),
(18, 'core_admin_main_manage_levels', 'core', 'Member Levels', '', '{"route":"admin_default","module":"authorization","controller":"level"}', 'core_admin_main_manage', '', 1, 0, 2),
(19, 'core_admin_main_manage_networks', 'network', 'Networks', '', '{"route":"admin_default","module":"network","controller":"manage"}', 'core_admin_main_manage', '', 1, 0, 3),
(20, 'core_admin_main_manage_announcements', 'announcement', 'Announcements', '', '{"route":"admin_default","module":"announcement","controller":"manage"}', 'core_admin_main_manage', '', 1, 0, 4),
(21, 'core_admin_message_mail', 'core', 'Email All Members', '', '{"route":"admin_default","module":"core","controller":"message","action":"mail"}', 'core_admin_main_manage', '', 1, 0, 5),
(22, 'core_admin_main_manage_reports', 'core', 'Abuse Reports', '', '{"route":"admin_default","module":"core","controller":"report"}', 'core_admin_main_manage', '', 1, 0, 6),
(23, 'core_admin_main_manage_packages', 'core', 'Packages & Plugins', '', '{"route":"admin_default","module":"core","controller":"packages"}', 'core_admin_main_manage', '', 1, 0, 7),
(24, 'core_admin_main_settings_general', 'core', 'General Settings', '', '{"route":"core_admin_settings","action":"general"}', 'core_admin_main_settings', '', 1, 0, 1),
(25, 'core_admin_main_settings_locale', 'core', 'Locale Settings', '', '{"route":"core_admin_settings","action":"locale"}', 'core_admin_main_settings', '', 1, 0, 1),
(26, 'core_admin_main_settings_fields', 'fields', 'Profile Questions', '', '{"route":"admin_default","module":"user","controller":"fields"}', 'core_admin_main_settings', '', 1, 0, 2),
(27, 'core_admin_main_wibiya', 'core', 'Wibiya Integration', '', '{"route":"admin_default", "action":"wibiya", "controller":"settings", "module":"core"}', 'core_admin_main_settings', '', 1, 0, 4),
(28, 'core_admin_main_settings_spam', 'core', 'Spam & Banning Tools', '', '{"route":"core_admin_settings","action":"spam"}', 'core_admin_main_settings', '', 1, 0, 5),
(29, 'core_admin_main_settings_mailtemplates', 'core', 'Mail Templates', '', '{"route":"admin_default","controller":"mail","action":"templates"}', 'core_admin_main_settings', '', 1, 0, 6),
(30, 'core_admin_main_settings_mailsettings', 'core', 'Mail Settings', '', '{"route":"admin_default","controller":"mail","action":"settings"}', 'core_admin_main_settings', '', 1, 0, 7),
(31, 'core_admin_main_settings_performance', 'core', 'Performance & Caching', '', '{"route":"core_admin_settings","action":"performance"}', 'core_admin_main_settings', '', 1, 0, 8),
(32, 'core_admin_main_settings_password', 'core', 'Admin Password', '', '{"route":"core_admin_settings","action":"password"}', 'core_admin_main_settings', '', 1, 0, 9),
(33, 'core_admin_main_settings_tasks', 'core', 'Task Scheduler', '', '{"route":"admin_default","controller":"tasks"}', 'core_admin_main_settings', '', 1, 0, 10),
(34, 'core_admin_main_layout_content', 'core', 'Layout Editor', '', '{"route":"admin_default","controller":"content"}', 'core_admin_main_layout', '', 1, 0, 1),
(35, 'core_admin_main_layout_themes', 'core', 'Theme Editor', '', '{"route":"admin_default","controller":"themes"}', 'core_admin_main_layout', '', 1, 0, 2),
(36, 'core_admin_main_layout_files', 'core', 'File & Media Manager', '', '{"route":"admin_default","controller":"files"}', 'core_admin_main_layout', '', 1, 0, 3),
(37, 'core_admin_main_layout_language', 'core', 'Language Manager', '', '{"route":"admin_default","controller":"language"}', 'core_admin_main_layout', '', 1, 0, 4),
(38, 'core_admin_main_layout_menus', 'core', 'Menu Editor', '', '{"route":"admin_default","controller":"menus"}', 'core_admin_main_layout', '', 1, 0, 5),
(39, 'core_admin_main_ads_manage', 'core', 'Manage Ad Campaigns', '', '{"route":"admin_default","controller":"ads"}', 'core_admin_main_ads', '', 1, 0, 1),
(40, 'core_admin_main_ads_create', 'core', 'Create New Campaign', '', '{"route":"admin_default","controller":"ads","action":"create"}', 'core_admin_main_ads', '', 1, 0, 2),
(41, 'core_admin_main_ads_affiliate', 'core', 'SE Affiliate Program', '', '{"route":"admin_default","controller":"settings","action":"affiliate"}', 'core_admin_main_ads', '', 1, 0, 3),
(42, 'core_admin_main_ads_viglink', 'core', 'VigLink', '', '{"route":"admin_default","controller":"settings","action":"viglink"}', 'core_admin_main_ads', '', 1, 0, 4),
(43, 'core_admin_main_stats_statistics', 'core', 'Site-wide Statistics', '', '{"route":"admin_default","controller":"stats"}', 'core_admin_main_stats', '', 1, 0, 1),
(44, 'core_admin_main_stats_url', 'core', 'Referring URLs', '', '{"route":"admin_default","controller":"stats","action":"referrers"}', 'core_admin_main_stats', '', 1, 0, 2),
(45, 'core_admin_main_stats_resources', 'core', 'Server Information', '', '{"route":"admin_default","controller":"system"}', 'core_admin_main_stats', '', 1, 0, 3),
(46, 'core_admin_main_stats_logs', 'core', 'Log Browser', '', '{"route":"admin_default","controller":"log","action":"index"}', 'core_admin_main_stats', '', 1, 0, 3),
(47, 'core_admin_banning_general', 'core', 'Spam & Banning Tools', '', '{"route":"core_admin_settings","action":"spam"}', 'core_admin_banning', '', 1, 0, 1),
(48, 'adcampaign_admin_main_edit', 'core', 'Edit Settings', '', '{"route":"admin_default","module":"core","controller":"ads","action":"edit"}', 'adcampaign_admin_main', '', 1, 0, 1),
(49, 'adcampaign_admin_main_manageads', 'core', 'Manage Advertisements', '', '{"route":"admin_default","module":"core","controller":"ads","action":"manageads"}', 'adcampaign_admin_main', '', 1, 0, 2),
(50, 'core_admin_main_settings_activity', 'activity', 'Activity Feed Settings', '', '{"route":"admin_default","module":"activity","controller":"settings","action":"index"}', 'core_admin_main_settings', '', 1, 0, 4),
(51, 'core_admin_main_settings_notifications', 'activity', 'Default Email Notifications', '', '{"route":"admin_default","module":"activity","controller":"settings","action":"notifications"}', 'core_admin_main_settings', '', 1, 0, 11),
(52, 'authorization_admin_main_manage', 'authorization', 'View Member Levels', '', '{"route":"admin_default","module":"authorization","controller":"level"}', 'authorization_admin_main', '', 1, 0, 1),
(53, 'authorization_admin_main_level', 'authorization', 'Member Level Settings', '', '{"route":"admin_default","module":"authorization","controller":"level","action":"edit"}', 'authorization_admin_main', '', 1, 0, 3),
(54, 'authorization_admin_level_main', 'authorization', 'Level Info', '', '{"route":"admin_default","module":"authorization","controller":"level","action":"edit"}', 'authorization_admin_level', '', 1, 0, 1),
(55, 'core_main_user', 'user', 'Members', '', '{"route":"user_general","action":"browse"}', 'core_main', '', 1, 0, 2),
(56, 'core_sitemap_user', 'user', 'Members', '', '{"route":"user_general","action":"browse"}', 'core_sitemap', '', 1, 0, 2),
(57, 'user_home_updates', 'user', 'View Recent Updates', '', '{"route":"recent_activity","icon":"application/modules/User/externals/images/links/updates.png"}', 'user_home', '', 1, 0, 1),
(58, 'user_home_view', 'user', 'View My Profile', 'User_Plugin_Menus', '{"route":"user_profile_self","icon":"application/modules/User/externals/images/links/profile.png"}', 'user_home', '', 1, 0, 2),
(59, 'user_home_edit', 'user', 'Edit My Profile', 'User_Plugin_Menus', '{"route":"user_extended","module":"user","controller":"edit","action":"profile","icon":"application/modules/User/externals/images/links/edit.png"}', 'user_home', '', 1, 0, 3),
(60, 'user_home_friends', 'user', 'Browse Members', '', '{"route":"user_general","controller":"index","action":"browse","icon":"application/modules/User/externals/images/links/search.png"}', 'user_home', '', 1, 0, 4),
(61, 'user_profile_edit', 'user', 'Edit Profile', 'User_Plugin_Menus', '', 'user_profile', '', 1, 0, 1),
(62, 'user_profile_friend', 'user', 'Friends', 'User_Plugin_Menus', '', 'user_profile', '', 1, 0, 3),
(63, 'user_profile_block', 'user', 'Block', 'User_Plugin_Menus', '', 'user_profile', '', 1, 0, 4),
(64, 'user_profile_report', 'user', 'Report User', 'User_Plugin_Menus', '', 'user_profile', '', 1, 0, 5),
(65, 'user_profile_admin', 'user', 'Admin Settings', 'User_Plugin_Menus', '', 'user_profile', '', 1, 0, 9),
(66, 'user_edit_profile', 'user', 'Personal Info', '', '{"route":"user_extended","module":"user","controller":"edit","action":"profile"}', 'user_edit', '', 1, 0, 1),
(67, 'user_edit_photo', 'user', 'Edit My Photo', '', '{"route":"user_extended","module":"user","controller":"edit","action":"photo"}', 'user_edit', '', 1, 0, 2),
(68, 'user_edit_style', 'user', 'Profile Style', 'User_Plugin_Menus', '{"route":"user_extended","module":"user","controller":"edit","action":"style"}', 'user_edit', '', 1, 0, 3),
(69, 'user_settings_general', 'user', 'General', '', '{"route":"user_extended","module":"user","controller":"settings","action":"general"}', 'user_settings', '', 1, 0, 1),
(70, 'user_settings_privacy', 'user', 'Privacy', '', '{"route":"user_extended","module":"user","controller":"settings","action":"privacy"}', 'user_settings', '', 1, 0, 2),
(71, 'user_settings_notifications', 'user', 'Notifications', '', '{"route":"user_extended","module":"user","controller":"settings","action":"notifications"}', 'user_settings', '', 1, 0, 3),
(72, 'user_settings_password', 'user', 'Change Password', '', '{"route":"user_extended", "module":"user", "controller":"settings", "action":"password"}', 'user_settings', '', 1, 0, 5),
(73, 'user_settings_delete', 'user', 'Delete Account', 'User_Plugin_Menus::canDelete', '{"route":"user_extended", "module":"user", "controller":"settings", "action":"delete"}', 'user_settings', '', 1, 0, 6),
(74, 'core_admin_main_manage_members', 'user', 'Members', '', '{"route":"admin_default","module":"user","controller":"manage"}', 'core_admin_main_manage', '', 1, 0, 1),
(75, 'core_admin_main_signup', 'user', 'Signup Process', '', '{"route":"admin_default", "controller":"signup", "module":"user"}', 'core_admin_main_settings', '', 1, 0, 3),
(76, 'core_admin_main_facebook', 'user', 'Facebook Integration', '', '{"route":"admin_default", "action":"facebook", "controller":"settings", "module":"user"}', 'core_admin_main_settings', '', 1, 0, 4),
(77, 'core_admin_main_twitter', 'user', 'Twitter Integration', '', '{"route":"admin_default", "action":"twitter", "controller":"settings", "module":"user"}', 'core_admin_main_settings', '', 1, 0, 4),
(78, 'core_admin_main_janrain', 'user', 'Janrain Integration', '', '{"route":"admin_default", "action":"janrain", "controller":"settings", "module":"user"}', 'core_admin_main_settings', '', 1, 0, 4),
(79, 'core_admin_main_settings_friends', 'user', 'Friendship Settings', '', '{"route":"admin_default","module":"user","controller":"settings","action":"friends"}', 'core_admin_main_settings', '', 1, 0, 6),
(80, 'user_admin_banning_logins', 'user', 'Login History', '', '{"route":"admin_default","module":"user","controller":"logins","action":"index"}', 'core_admin_banning', '', 1, 0, 2),
(81, 'authorization_admin_level_user', 'user', 'Members', '', '{"route":"admin_default","module":"user","controller":"settings","action":"level"}', 'authorization_admin_level', '', 1, 0, 2),
(82, 'core_mini_messages', 'messages', 'Messages', 'Messages_Plugin_Menus', '', 'core_mini', '', 1, 0, 4),
(83, 'user_profile_message', 'messages', 'Send Message', 'Messages_Plugin_Menus', '', 'user_profile', '', 1, 0, 2),
(84, 'authorization_admin_level_messages', 'messages', 'Messages', '', '{"route":"admin_default","module":"messages","controller":"settings","action":"level"}', 'authorization_admin_level', '', 1, 0, 3),
(85, 'messages_main_inbox', 'messages', 'Inbox', '', '{"route":"messages_general","action":"inbox"}', 'messages_main', '', 1, 0, 1),
(86, 'messages_main_outbox', 'messages', 'Sent Messages', '', '{"route":"messages_general","action":"outbox"}', 'messages_main', '', 1, 0, 2),
(87, 'messages_main_compose', 'messages', 'Compose Message', '', '{"route":"messages_general","action":"compose"}', 'messages_main', '', 1, 0, 3),
(88, 'user_settings_network', 'network', 'Networks', '', '{"route":"user_extended", "module":"user", "controller":"settings", "action":"network"}', 'user_settings', '', 1, 0, 3),
(89, 'core_main_invite', 'invite', 'Invite', 'Invite_Plugin_Menus::canInvite', '{"route":"default","module":"invite"}', 'core_main', '', 1, 0, 1),
(90, 'user_home_invite', 'invite', 'Invite Your Friends', 'Invite_Plugin_Menus::canInvite', '{"route":"default","module":"invite","icon":"application/modules/Invite/externals/images/invite.png"}', 'user_home', '', 1, 0, 5),
(91, 'core_admin_main_settings_storage', 'core', 'Storage System', '', '{"route":"admin_default","module":"storage","controller":"services","action":"index"}', 'core_admin_main_settings', '', 1, 0, 11),
(92, 'user_settings_payment', 'user', 'Subscription', 'Payment_Plugin_Menus', '{"route":"default", "module":"payment", "controller":"settings", "action":"index"}', 'user_settings', '', 1, 0, 4),
(93, 'core_admin_main_payment', 'payment', 'Billing', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_payment', 1, 0, 7),
(94, 'core_admin_main_payment_transactions', 'payment', 'Transactions', '', '{"route":"admin_default","module":"payment","controller":"index","action":"index"}', 'core_admin_main_payment', '', 1, 0, 1),
(95, 'core_admin_main_payment_settings', 'payment', 'Settings', '', '{"route":"admin_default","module":"payment","controller":"settings","action":"index"}', 'core_admin_main_payment', '', 1, 0, 2),
(96, 'core_admin_main_payment_gateways', 'payment', 'Gateways', '', '{"route":"admin_default","module":"payment","controller":"gateway","action":"index"}', 'core_admin_main_payment', '', 1, 0, 3),
(97, 'core_admin_main_payment_packages', 'payment', 'Plans', '', '{"route":"admin_default","module":"payment","controller":"package","action":"index"}', 'core_admin_main_payment', '', 1, 0, 4),
(98, 'core_admin_main_payment_subscriptions', 'payment', 'Subscriptions', '', '{"route":"admin_default","module":"payment","controller":"subscription","action":"index"}', 'core_admin_main_payment', '', 1, 0, 5),
(99, 'core_main_video', 'video', 'Videos', '', '{"route":"video_general"}', 'core_main', '', 1, 0, 7),
(100, 'core_sitemap_video', 'video', 'Videos', '', '{"route":"video_general"}', 'core_sitemap', '', 1, 0, 7),
(101, 'core_admin_main_plugins_video', 'video', 'Videos', '', '{"route":"admin_default","module":"video","controller":"manage"}', 'core_admin_main_plugins', '', 1, 0, 999),
(102, 'video_main_browse', 'video', 'Browse Videos', '', '{"route":"video_general"}', 'video_main', '', 1, 0, 1),
(103, 'video_main_manage', 'video', 'My Videos', 'Video_Plugin_Menus', '{"route":"video_general","action":"manage"}', 'video_main', '', 1, 0, 2),
(104, 'video_main_create', 'video', 'Post New Video', 'Video_Plugin_Menus', '{"route":"video_general","action":"create"}', 'video_main', '', 1, 0, 3),
(105, 'video_quick_create', 'video', 'Post New Video', 'Video_Plugin_Menus::canCreateVideos', '{"route":"video_general","action":"create","class":"buttonlink icon_video_new"}', 'video_quick', '', 1, 0, 1),
(106, 'video_admin_main_manage', 'video', 'Manage Videos', '', '{"route":"admin_default","module":"video","controller":"manage"}', 'video_admin_main', '', 1, 0, 1),
(107, 'video_admin_main_utility', 'video', 'Video Utilities', '', '{"route":"admin_default","module":"video","controller":"settings","action":"utility"}', 'video_admin_main', '', 1, 0, 2),
(108, 'video_admin_main_settings', 'video', 'Global Settings', '', '{"route":"admin_default","module":"video","controller":"settings"}', 'video_admin_main', '', 1, 0, 3),
(109, 'video_admin_main_level', 'video', 'Member Level Settings', '', '{"route":"admin_default","module":"video","controller":"settings","action":"level"}', 'video_admin_main', '', 1, 0, 4),
(110, 'video_admin_main_categories', 'video', 'Categories', '', '{"route":"admin_default","module":"video","controller":"settings","action":"categories"}', 'video_admin_main', '', 1, 0, 5),
(111, 'authorization_admin_level_video', 'video', 'Videos', '', '{"route":"admin_default","module":"video","controller":"settings","action":"level"}', 'authorization_admin_level', '', 1, 0, 999),
(112, 'mobi_browse_video', 'video', 'Videos', '', '{"route":"video_general"}', 'mobi_browse', '', 1, 0, 9),
(113, 'core_main_group', 'group', 'Groups', '', '{"route":"group_general"}', 'core_main', '', 1, 0, 6),
(114, 'core_sitemap_group', 'group', 'Groups', '', '{"route":"group_general"}', 'core_sitemap', '', 1, 0, 6),
(115, 'group_main_browse', 'group', 'Browse Groups', '', '{"route":"group_general","action":"browse"}', 'group_main', '', 1, 0, 1),
(116, 'group_main_manage', 'group', 'My Groups', 'Group_Plugin_Menus', '{"route":"group_general","action":"manage"}', 'group_main', '', 1, 0, 2),
(117, 'group_main_create', 'group', 'Create New Group', 'Group_Plugin_Menus', '{"route":"group_general","action":"create"}', 'group_main', '', 1, 0, 3),
(118, 'group_quick_create', 'group', 'Create New Group', 'Group_Plugin_Menus::canCreateGroups', '{"route":"group_general","action":"create","class":"buttonlink icon_group_new"}', 'group_quick', '', 1, 0, 1),
(119, 'group_profile_edit', 'group', 'Edit Profile', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 1),
(120, 'group_profile_style', 'group', 'Edit Styles', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 2),
(121, 'group_profile_member', 'group', 'Member', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 3),
(122, 'group_profile_report', 'group', 'Report Group', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 4),
(123, 'group_profile_share', 'group', 'Share', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 5),
(124, 'group_profile_invite', 'group', 'Invite', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 6),
(125, 'group_profile_message', 'group', 'Message Members', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 7),
(126, 'core_admin_main_plugins_group', 'group', 'Groups', '', '{"route":"admin_default","module":"group","controller":"manage"}', 'core_admin_main_plugins', '', 1, 0, 999),
(127, 'group_admin_main_manage', 'group', 'Manage Groups', '', '{"route":"admin_default","module":"group","controller":"manage"}', 'group_admin_main', '', 1, 0, 1),
(128, 'group_admin_main_settings', 'group', 'Global Settings', '', '{"route":"admin_default","module":"group","controller":"settings"}', 'group_admin_main', '', 1, 0, 2),
(129, 'group_admin_main_level', 'group', 'Member Level Settings', '', '{"route":"admin_default","module":"group","controller":"settings","action":"level"}', 'group_admin_main', '', 1, 0, 3),
(130, 'group_admin_main_categories', 'group', 'Categories', '', '{"route":"admin_default","module":"group","controller":"settings","action":"categories"}', 'group_admin_main', '', 1, 0, 4),
(131, 'authorization_admin_level_group', 'group', 'Groups', '', '{"route":"admin_default","module":"group","controller":"settings","action":"level"}', 'authorization_admin_level', '', 1, 0, 999),
(132, 'mobi_browse_group', 'group', 'Groups', '', '{"route":"group_general"}', 'mobi_browse', '', 1, 0, 8),
(133, 'core_main_event', 'event', 'Events', '', '{"route":"event_general"}', 'core_main', '', 1, 0, 6),
(134, 'core_sitemap_event', 'event', 'Events', '', '{"route":"event_general"}', 'core_sitemap', '', 1, 0, 6),
(135, 'event_main_upcoming', 'event', 'Upcoming Events', '', '{"route":"event_upcoming"}', 'event_main', '', 1, 0, 1),
(136, 'event_main_past', 'event', 'Past Events', '', '{"route":"event_past"}', 'event_main', '', 1, 0, 2),
(137, 'event_main_manage', 'event', 'My Events', 'Event_Plugin_Menus', '{"route":"event_general","action":"manage"}', 'event_main', '', 1, 0, 3),
(138, 'event_main_create', 'event', 'Create New Event', 'Event_Plugin_Menus', '{"route":"event_general","action":"create"}', 'event_main', '', 1, 0, 4),
(139, 'event_quick_create', 'event', 'Create New Event', 'Event_Plugin_Menus::canCreateEvents', '{"route":"event_general","action":"create","class":"buttonlink icon_event_new"}', 'event_quick', '', 1, 0, 1),
(140, 'event_profile_edit', 'event', 'Edit Profile', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 1),
(141, 'event_profile_style', 'event', 'Edit Styles', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 2),
(142, 'event_profile_member', 'event', 'Member', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 3),
(143, 'event_profile_report', 'event', 'Report Event', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 4),
(144, 'event_profile_share', 'event', 'Share', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 5),
(145, 'event_profile_invite', 'event', 'Invite', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 6),
(146, 'event_profile_message', 'event', 'Message Members', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 7),
(147, 'event_profile_delete', 'event', 'Delete Event', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 8),
(148, 'core_admin_main_plugins_event', 'event', 'Events', '', '{"route":"admin_default","module":"event","controller":"manage"}', 'core_admin_main_plugins', '', 1, 0, 999),
(149, 'event_admin_main_manage', 'event', 'Manage Events', '', '{"route":"admin_default","module":"event","controller":"manage"}', 'event_admin_main', '', 1, 0, 1),
(150, 'event_admin_main_settings', 'event', 'Global Settings', '', '{"route":"admin_default","module":"event","controller":"settings"}', 'event_admin_main', '', 1, 0, 2),
(151, 'event_admin_main_level', 'event', 'Member Level Settings', '', '{"route":"admin_default","module":"event","controller":"settings","action":"level"}', 'event_admin_main', '', 1, 0, 3),
(152, 'event_admin_main_categories', 'event', 'Categories', '', '{"route":"admin_default","module":"event","controller":"settings","action":"categories"}', 'event_admin_main', '', 1, 0, 4),
(153, 'authorization_admin_level_event', 'event', 'Events', '', '{"route":"admin_default","module":"event","controller":"level","action":"index"}', 'authorization_admin_level', '', 1, 0, 999),
(154, 'mobi_browse_event', 'event', 'Events', '', '{"route":"event_general"}', 'mobi_browse', '', 1, 0, 7),
(155, 'core_main_blog', 'blog', 'Blogs', '', '{"route":"blog_general"}', 'core_main', '', 1, 0, 4),
(156, 'core_sitemap_blog', 'blog', 'Blogs', '', '{"route":"blog_general"}', 'core_sitemap', '', 1, 0, 4),
(157, 'blog_main_browse', 'blog', 'Browse Entries', 'Blog_Plugin_Menus::canViewBlogs', '{"route":"blog_general"}', 'blog_main', '', 1, 0, 1),
(158, 'blog_main_manage', 'blog', 'My Entries', 'Blog_Plugin_Menus::canCreateBlogs', '{"route":"blog_general","action":"manage"}', 'blog_main', '', 1, 0, 2),
(159, 'blog_main_create', 'blog', 'Write New Entry', 'Blog_Plugin_Menus::canCreateBlogs', '{"route":"blog_general","action":"create"}', 'blog_main', '', 1, 0, 3),
(160, 'blog_quick_create', 'blog', 'Write New Entry', 'Blog_Plugin_Menus::canCreateBlogs', '{"route":"blog_general","action":"create","class":"buttonlink icon_blog_new"}', 'blog_quick', '', 1, 0, 1),
(161, 'blog_quick_style', 'blog', 'Edit Blog Style', 'Blog_Plugin_Menus', '{"route":"blog_general","action":"style","class":"smoothbox buttonlink icon_blog_style"}', 'blog_quick', '', 1, 0, 2),
(162, 'blog_gutter_list', 'blog', 'View All Entries', 'Blog_Plugin_Menus', '{"route":"blog_view","class":"buttonlink icon_blog_viewall"}', 'blog_gutter', '', 1, 0, 1),
(163, 'blog_gutter_create', 'blog', 'Write New Entry', 'Blog_Plugin_Menus', '{"route":"blog_general","action":"create","class":"buttonlink icon_blog_new"}', 'blog_gutter', '', 1, 0, 2),
(164, 'blog_gutter_style', 'blog', 'Edit Blog Style', 'Blog_Plugin_Menus', '{"route":"blog_general","action":"style","class":"smoothbox buttonlink icon_blog_style"}', 'blog_gutter', '', 1, 0, 3),
(165, 'blog_gutter_edit', 'blog', 'Edit This Entry', 'Blog_Plugin_Menus', '{"route":"blog_specific","action":"edit","class":"buttonlink icon_blog_edit"}', 'blog_gutter', '', 1, 0, 4),
(166, 'blog_gutter_delete', 'blog', 'Delete This Entry', 'Blog_Plugin_Menus', '{"route":"blog_specific","action":"delete","class":"buttonlink smoothbox icon_blog_delete"}', 'blog_gutter', '', 1, 0, 5),
(167, 'blog_gutter_share', 'blog', 'Share', 'Blog_Plugin_Menus', '{"route":"default","module":"activity","controller":"index","action":"share","class":"buttonlink smoothbox icon_comments"}', 'blog_gutter', '', 1, 0, 6),
(168, 'blog_gutter_report', 'blog', 'Report', 'Blog_Plugin_Menus', '{"route":"default","module":"core","controller":"report","action":"create","class":"buttonlink smoothbox icon_report"}', 'blog_gutter', '', 1, 0, 7),
(169, 'blog_gutter_subscribe', 'blog', 'Subscribe', 'Blog_Plugin_Menus', '{"route":"default","module":"blog","controller":"subscription","action":"add","class":"buttonlink smoothbox icon_blog_subscribe"}', 'blog_gutter', '', 1, 0, 8),
(170, 'core_admin_main_plugins_blog', 'blog', 'Blogs', '', '{"route":"admin_default","module":"blog","controller":"manage"}', 'core_admin_main_plugins', '', 1, 0, 999),
(171, 'blog_admin_main_manage', 'blog', 'View Blogs', '', '{"route":"admin_default","module":"blog","controller":"manage"}', 'blog_admin_main', '', 1, 0, 1),
(172, 'blog_admin_main_settings', 'blog', 'Global Settings', '', '{"route":"admin_default","module":"blog","controller":"settings"}', 'blog_admin_main', '', 1, 0, 2),
(173, 'blog_admin_main_level', 'blog', 'Member Level Settings', '', '{"route":"admin_default","module":"blog","controller":"level"}', 'blog_admin_main', '', 1, 0, 3),
(174, 'blog_admin_main_categories', 'blog', 'Categories', '', '{"route":"admin_default","module":"blog","controller":"settings", "action":"categories"}', 'blog_admin_main', '', 1, 0, 4),
(175, 'authorization_admin_level_blog', 'blog', 'Blogs', '', '{"route":"admin_default","module":"blog","controller":"level","action":"index"}', 'authorization_admin_level', '', 1, 0, 999),
(176, 'mobi_browse_blog', 'blog', 'Blogs', '', '{"route":"blog_general"}', 'mobi_browse', '', 1, 0, 3),
(177, 'core_admin_main_plugins_hecore', 'hecore', 'Hire-Experts', '', '{"route":"admin_default","module":"hecore","controller":"index"}', 'core_admin_main_plugins', '', 1, 0, 887),
(178, 'hecore_admin_main_settings', 'hecore', 'hecore_Global Settings', '', '{"route":"admin_default","module":"hecore","controller":"settings"}', 'hecore_admin_main', '', 1, 0, 2),
(179, 'hecore_admin_main_plugins', 'hecore', 'hecore_Plugins', '', '{"route":"admin_default","module":"hecore","controller":"index"}', 'hecore_admin_main', '', 1, 0, 3),
(180, 'hecore_admin_main_featureds', 'hecore', 'hecore_Featured Members', '', '{"route":"admin_default","module":"hecore","controller":"featureds"}', 'hecore_admin_main', '', 1, 0, 1),
(181, 'advancedsearch_admin_main_types', 'advancedsearch', 'AS_Search types', NULL, '{"route":"admin_default","module":"advancedsearch","controller":"index"}', 'advancedsearch_admin_main', '', 1, 0, 999),
(182, 'core_admin_main_plugins_advancedsearch', 'advancedsearch', 'AS_Advanced Search', NULL, '{"route":"admin_default","module":"advancedsearch","controller":"index"}', 'core_admin_main_plugins', '', 1, 0, 888),
(183, 'core_admin_main_plugins_advbilling', 'advbilling', 'HE Advanced Billing', '', '{"route":"advbilling_admin_index"}', 'core_admin_main_plugins', '', 1, 0, 888),
(184, 'advbilling_admin_main_transactions', 'advbilling', 'Transactions', '', '{"route":"advbilling_admin_index", "action":"transaction"}', 'advbilling_admin_main', '', 1, 0, 1),
(185, 'advbilling_admin_main_settings', 'advbilling', 'Settings', '', '{"route":"advbilling_admin_index"}', 'advbilling_admin_main', '', 1, 0, 2),
(186, 'apptouch_admin_layout_content', 'apptouch', 'Layout Editor', NULL, '{"route":"admin_default","module":"apptouch","controller":"content","action":"index"}', 'apptouch_admin_layout', NULL, 0, 0, 1),
(187, 'apptouch_admin_main_content', 'apptouch', 'Menu Editor', '', '{"route":"admin_default","module":"apptouch","controller":"menus","action":"index"}', 'apptouch_admin_main', 'apptouch_admin_layout', 1, 0, 2),
(188, 'apptouch_admin_main_home', 'apptouch', 'Home', NULL, '{"route":"admin_default","module":"apptouch","controller":"index","action":"index"}', 'apptouch_admin_main', NULL, 1, 0, 1),
(189, 'apptouch_admin_main_layout', 'apptouch', 'Layout', NULL, '{"route":"admin_default","module":"apptouch","controller":"layout","action":"index"}', 'apptouch_admin_main', NULL, 1, 0, 999),
(190, 'apptouch_admin_main_menus', 'apptouch', 'Menu Editor', '', '{"route":"admin_default","module":"apptouch","controller":"menus","action":"index"}', 'apptouch_admin_layout', '', 0, 0, 4),
(191, 'apptouch_admin_main_settings', 'apptouch', 'Settings', '', '{"route":"admin_default","module":"apptouch","controller":"settings","action":"index"}', 'apptouch_admin_main', 'apptouch_admin_settings', 1, 0, 5),
(192, 'apptouch_admin_main_statistics', 'apptouch', 'Stats', NULL, '{"route":"admin_default","module":"apptouch","controller":"stats","action":"index"}', 'apptouch_admin_main', '', 1, 0, 999),
(193, 'apptouch_admin_main_themes', 'apptouch', 'Theme Editor', NULL, '{"route":"admin_default","module":"apptouch","controller":"themes","action":"index"}', 'apptouch_admin_main', NULL, 1, 0, 3),
(194, 'apptouch_admin_settings_general', 'apptouch', 'General Settings', NULL, '{"route":"admin_default","module":"apptouch","controller":"settings","action":"index"}', 'apptouch_admin_settings', '', 1, 0, 1),
(195, 'apptouch_admin_settings_iconset', 'apptouch', 'APPTOUCH_Set Home Screen Icon', NULL, '{"route":"admin_default","module":"apptouch","controller":"settings","action":"app-icon-set"}', 'apptouch_admin_settings', NULL, 1, 0, 4),
(196, 'apptouch_admin_settings_performance', 'apptouch', 'Performance & Caching', NULL, '{"route":"admin_default","module":"apptouch","controller":"settings","action":"performance"}', 'apptouch_admin_settings', NULL, 0, 0, 2),
(197, 'apptouch_admin_settings_rate', 'apptouch', 'APPTOUCH_Rate settings', NULL, '{"route":"admin_default","module":"apptouch","controller":"plugin-settings","action":"index"}', 'apptouch_admin_settings', NULL, 0, 0, 3),
(198, 'apptouch_admin_stats_general', 'apptouch', 'APPTOUCH_Compare Actitvity Stats', NULL, '{"route":"admin_default","module":"apptouch","controller":"stats","action":"index"}', 'apptouch_admin_stats', NULL, 1, 0, 1),
(199, 'apptouch_admin_stats_global', 'apptouch', 'APPTOUCH_Stats Counter Global', NULL, '{"route":"admin_default","module":"apptouch","controller":"stats","action":"global-stats"}', 'apptouch_admin_stats', NULL, 1, 0, 2),
(200, 'core_admin_main_plugins_apptouch', 'apptouch', 'HE-APPTOUCH', NULL, '{"route":"admin_default","module":"apptouch","controller":"index","action":"index"}', 'core_admin_main_plugins', '', 1, 0, 888),
(201, 'core_footer_apptouch', 'apptouch', 'APPTOUCH_Mobile Site', 'Apptouch_Plugin_Menus', '', 'core_footer', NULL, 1, 0, 999),
(202, 'apptouch_admin_settings_sitelogo', 'apptouch', 'APPTOUCH_Set Site Logo', NULL, '{"route":"admin_default","module":"apptouch","controller":"settings","action":"site-logo"}', 'apptouch_admin_settings', NULL, 1, 0, 3),
(203, 'core_footer_apptablet', 'apptablet', 'APPTABLET_Tablet Site', 'Apptouch_Plugin_Menus', '', 'core_footer', NULL, 1, 0, 999),
(204, 'apptouch_admin_settings_faceapi', 'apptouch', 'APPTOUCH_Face Detection API', NULL, '{"route":"admin_default","module":"apptouch","controller":"settings","action":"face-api","class":"new-feature-item"}', 'apptouch_admin_settings', NULL, 1, 0, 5),
(205, 'adcampaign_admin_main_manage_mobileads', 'apptouch', 'APPTOUCH_Manage Mobile Banners', NULL, '{"route":"admin_default","module":"apptouch","controller":"ads","action":"manage","class":"new-feature-item"}', 'adcampaign_admin_main', NULL, 1, 0, 3),
(206, 'core_admin_main_mobile_ads', 'apptouch', 'APPTOUCH_Mobile Ads', NULL, '{"route":"admin_default","module":"apptouch","controller":"ads","action":"index","class":"new-feature-item"}', 'core_admin_main_ads', NULL, 1, 0, 3),
(207, 'apptouch_admin_ads_create', 'apptouch', 'APPTOUCH_Create New Ad', NULL, '{"route":"admin_default","module":"apptouch","controller":"ads","action":"create"}', 'apptouch_admin_ads', NULL, 1, 0, 2),
(208, 'apptouch_admin_ads_manage', 'apptouch', 'APPTOUCH_Manage Ads', NULL, '{"route":"admin_default","module":"apptouch","controller":"ads","action":"manage"}', 'apptouch_admin_ads', NULL, 1, 0, 3),
(209, 'apptouch_admin_main_admanage', 'apptouch', 'APPTOUCH_Ad Campaign Manager', NULL, '{"route":"admin_default","module":"apptouch","controller":"ads","action":"index"}', 'apptouch_admin_ads', NULL, 1, 0, 1),
(210, 'apptouch_admin_main_ads', 'apptouch', 'APPTOUCH_Mobile Ads', NULL, '{"route":"admin_default","module":"apptouch","controller":"ads","action":"index","class":"new-feature-item"}', 'apptouch_admin_main', 'apptouch_admin_ads', 1, 0, 999),
(211, 'appmanager_admin_main_iphone', 'appmanager', 'IOS Settings', NULL, '{"route":"admin_default","module":"appmanager","controller":"ios","action":"index"}', 'appmanager_admin_main', NULL, 1, 0, 3),
(212, 'appmanager_admin_main_android', 'appmanager', 'Android Settings', NULL, '{"route":"admin_default","module":"appmanager","controller":"index","action":"android"}', 'appmanager_admin_main', NULL, 1, 0, 4),
(213, 'appmanager_admin_main_general', 'appmanager', 'General Settings', NULL, '{"route":"admin_default","module":"appmanager","controller":"index","action":"index"}', 'appmanager_admin_main', NULL, 1, 0, 1),
(214, 'appmanager_admin_main_notification', 'appmanager', 'Notificatoin Settings', NULL, '{"route":"admin_default","module":"appmanager","controller":"index","action":"notification"}', 'appmanager_admin_main', NULL, 0, 0, 2),
(215, 'apptouch_admin_main_application', 'appmanager', 'Application Settings', NULL, '{"route":"admin_default","module":"appmanager","controller":"index","action":"index"}', 'apptouch_admin_main', NULL, 1, 0, 7),
(216, 'core_admin_main_plugins_avatarstyler', 'avatarstyler', 'HE - Avatar Styler', NULL, '{"route":"admin_default","module":"avatarstyler","controller":"index"}', 'core_admin_main_plugins', NULL, 1, 0, 999),
(217, 'user_profile_avatar', 'avatarstyler', 'Style your avatar', 'Avatarstyler_Plugin_Menus', '', 'user_profile', NULL, 1, 0, 999),
(218, 'core_admin_main_plugins_credit', 'credit', 'CREDIT_Credit', '', '{"route":"admin_default","module":"credit","controller":"index"}', 'core_admin_main_plugins', '', 1, 0, 888),
(219, 'credit_admin_main_index', 'credit', 'Credit Transactions', '', '{"route":"admin_default","module":"credit","controller":"index"}', 'credit_admin_main', '', 1, 0, 2),
(220, 'credit_admin_main_assignCredits', 'credit', 'Assign Credits', '', '{"route":"admin_default","module":"credit","controller":"assign-credits"}', 'credit_admin_main', '', 1, 0, 3),
(221, 'credit_admin_main_members', 'credit', 'View Members', '', '{"route":"admin_default","module":"credit","controller":"members"}', 'credit_admin_main', '', 1, 0, 4),
(222, 'core_main_credit', 'credit', 'Credits', '', '{"route":"credit_general"}', 'core_main', '', 1, 0, 10),
(223, 'credit_main_credit', 'credit', 'Credit Home', 'Credit_Plugin_Menus', '{"route":"credit_general"}', 'credit_main', '', 1, 0, 1),
(224, 'credit_main_manage', 'credit', 'My Credits', 'Credit_Plugin_Menus', '{"route":"credit_general","action":"manage"}', 'credit_main', '', 1, 0, 2),
(225, 'credit_admin_main_giveCredits', 'credit', 'Give Mass Credits', '', '{"route":"admin_default","module":"credit","controller":"give-credits"}', 'credit_admin_main', '', 1, 0, 5),
(226, 'credit_main_faq', 'credit', 'FAQ', '', '{"route":"credit_general","action":"faq"}', 'credit_main', '', 1, 0, 3),
(227, 'credit_admin_main_payments', 'credit', 'Payment Settings', '', '{"route":"admin_default","module":"credit","controller":"payments"}', 'credit_admin_main', '', 1, 0, 6),
(228, 'credit_admin_main_stats', 'credit', 'Statistics', '', '{"route":"admin_default","module":"credit","controller":"stats"}', 'credit_admin_main', '', 1, 0, 7),
(229, 'credit_admin_main_settings', 'credit', 'Settings', '', '{"route":"admin_default","module":"credit","controller":"settings"}', 'credit_admin_main', '', 1, 0, 1),
(230, 'user_profile_send_credits', 'credit', 'Send Credit', 'Credit_Plugin_Menus', '{"route":"credit_general"}', 'user_profile', '', 1, 0, 999),
(231, 'wall_admin_main_setting', 'wall', 'WALL_ADMIN_MAIN_SETTING', '', '{"route":"admin_default", "module": "wall", "controller": "setting", "action": "index"}', 'wall_admin_main', NULL, 1, 0, 999),
(232, 'wall_admin_feed_setting', 'wall', 'WALL_ADMIN_FEED_SETTING', '', '{"route":"admin_default", "module": "wall", "controller": "setting", "action": "feed"}', 'wall_admin_main', NULL, 1, 0, 999),
(233, 'wall_admin_social_setting', 'wall', 'WALL_ADMIN_SOCIAL_SETTING', '', '{"route":"admin_default", "module": "wall", "controller": "setting", "action": "social"}', 'wall_admin_main', NULL, 1, 0, 999),
(234, 'wall_admin_main_activity', 'wall', 'WALL_ADMIN_MAIN_ACTIVITY', '', '{"route":"admin_default","module":"activity","controller":"settings","action":"index"}', 'wall_admin_main', NULL, 1, 0, 999),
(235, 'wall_admin_main_plugins_wall', 'wall', 'WALL_ADMIN_MAIN_PLUGINS_WALL', '', '{"route":"admin_default", "module": "wall", "controller": "setting", "action": "index"}', 'core_admin_main_plugins', NULL, 1, 0, 999),
(236, 'core_admin_main_plugins_checkin', 'checkin', 'HE - Checkin', '', '{"route":"admin_default","module":"checkin","controller":"index"}', 'core_admin_main_plugins', '', 1, 0, 888),
(237, 'daylogo_admin_main_settings', 'daylogo', 'Settings', NULL, '{"route":"daylogo_admin_index","module":"daylogo","controller":"settings"}', 'daylogo_admin_main', NULL, 1, 0, 2),
(238, 'core_admin_main_plugins_daylogo', 'daylogo', 'HE - Daylogo', NULL, '{"route":"daylogo_admin_index","module":"daylogo","controller":"index"}', 'core_admin_main_plugins', NULL, 1, 0, 888),
(239, 'daylogo_admin_main_index', 'daylogo', 'Manage Logo', NULL, '{"route":"daylogo_admin_index","module":"daylogo","controller":"index"}', 'daylogo_admin_main', NULL, 1, 0, 1),
(240, 'core_admin_main_plugins_hashtag', 'hashtag', 'HE - Hashtags', NULL, '{"route":"admin_default","module":"hashtag","controller":"index"}', 'core_admin_main_plugins', NULL, 1, 0, 888),
(241, 'hashtag_admin_settings', 'hashtag', 'Settings', NULL, '{"route":"admin_default","module":"hashtag","controller":"index","action":"index"}', 'hashtag_admin_main', NULL, 1, 0, 1),
(242, 'hashtag_admin_blacklist', 'hashtag', 'Black List', NULL, '{"route":"admin_default","module":"hashtag","controller":"index","action":"blacklist"}', 'hashtag_admin_main', NULL, 1, 0, 2),
(243, 'headvancedmembers_admin_general', 'headvancedmembers', 'General', NULL, '{"route":"admin_default","module":"headvancedmembers","controller":"index","action":"index"}', 'headvancedmembers_admin_main', NULL, 1, 0, 1),
(244, 'headvancedmembers_admin_members', 'headvancedmembers', 'Members', NULL, '{"route":"admin_default","module":"headvancedmembers","controller":"index","action":"members"}', 'headvancedmembers_admin_main', NULL, 1, 0, 1),
(245, 'core_admin_main_plugins_headvancedmembers', 'headvancedmembers', 'HE - Advanced Members', NULL, '{"route":"admin_default","module":"headvancedmembers","controller":"index","action":"index"}', 'core_admin_main_plugins', NULL, 1, 0, 888),
(246, 'headvancedmembers_settings', 'headvancedmembers', 'My location', '', '{"route":"headvancedmembers_settings"}', 'user_settings', '', 1, 0, 2),
(247, 'headvancedmembers_admin_apikey', 'headvancedmembers', 'Api key', NULL, '{"route":"admin_default","module":"headvancedmembers","controller":"index","action":"apikey"}', 'headvancedmembers_admin_main', NULL, 1, 0, 2),
(248, 'core_admin_main_plugins_hecomment', 'hecomment', 'He - Advanced Comments', '', '{"route":"admin_default","module":"hecomment","controller":"manage"}', 'core_admin_main_plugins', '', 1, 0, 888),
(249, 'hebadge_plugins_badges', 'hebadge', 'HEBADGE_PLUGINS_BADGES', NULL, '{"route":"admin_default", "module": "hebadge", "controller": "badges", "action": "index"}', 'core_admin_main_plugins', NULL, 1, 0, 889),
(250, 'hebadge_main', 'hebadge', 'HEBADGE_MAIN', NULL, '{"route":"hebadge_general", "module": "hebadge", "controller": "index", "action": "index"}', 'core_main', NULL, 1, 0, 999),
(251, 'hebadge_badges', 'hebadge', 'HEBADGE_BADGES', NULL, '{"route":"admin_default", "module": "hebadge", "controller": "badges", "action": "index"}', 'hebadge_admin_main', NULL, 1, 0, 1),
(252, 'hebadge_setting', 'hebadge', 'HEBADGE_SETTING', NULL, '{"route":"admin_default", "module": "hebadge", "controller": "setting", "action": "index"}', 'hebadge_admin_main', NULL, 1, 0, 2),
(253, 'hebadge_main_home', 'hebadge', 'HEBADGE_MAIN_HOME', NULL, '{"route":"hebadge_general", "module": "hebadge", "controller": "index", "action": "index"}', 'hebadge_main', NULL, 1, 0, 1),
(254, 'hebadge_main_manage', 'hebadge', 'HEBADGE_MAIN_MANAGE', 'Hebadge_Plugin_Menus', '{"route":"hebadge_general", "module": "hebadge", "controller": "index", "action": "manage"}', 'hebadge_main', NULL, 1, 0, 2),
(255, 'hebadge_main_credit', 'hebadge', 'HEBADGE_MAIN_CREDIT', 'Hebadge_Plugin_Menus', '{"route":"hebadge_general",  "module":  "hebadge",  "controller":  "credit",  "action":  "index"}', 'credit_main', NULL, 1, 0, 2),
(257, 'core_admin_main_plugins_hecontest', 'hecontest', 'HECONTEST_He Contest', NULL, '{"route":"admin_default","module":"hecontest","controller":"index","action":"index"}', 'core_admin_main_plugins', NULL, 1, 0, 888),
(258, 'hecontest_admin_main_level_settings', 'hecontest', 'Level Settings', NULL, '{"route":"admin_default","module":"hecontest","controller":"index","action":"level-settings"}', 'hecontest_admin_main', NULL, 1, 0, 3),
(259, 'hecontest_admin_main_settings', 'hecontest', 'Settings', NULL, '{"route":"admin_default","module":"hecontest","controller":"index","action":"settings"}', 'hecontest_admin_main', NULL, 1, 0, 2),
(260, 'hecontest_admin_main_create', 'hecontest', 'Create', NULL, '{"route":"admin_default","module":"hecontest","controller":"index","action":"create"}', 'hecontest_admin_main', NULL, 1, 0, 3),
(261, 'hecontest_admin_main_contests', 'hecontest', 'Contests', '', '{"route":"admin_default","module":"hecontest","controller":"index","action":"index"}', 'hecontest_admin_main', NULL, 1, 0, 1),
(262, 'hecontest_main_active', 'hecontest', 'Active Contest', NULL, '{"route":"hecontest_general"}', 'hecontest_main', NULL, 1, 0, 888),
(263, 'hecontest_main_recent', 'hecontest', 'Recent Contest', NULL, '{"route":"hecontest_general","action":"recent"}', 'hecontest_main', NULL, 1, 0, 999),
(264, 'core_main_hecontest', 'hecontest', 'Contests', NULL, '{"route":"hecontest_general"}', 'core_main', NULL, 1, 0, 999),
(265, 'core_admin_main_plugins_headvmessages', 'headvmessages', 'HE - Advanced Messages', NULL, '{"route":"admin_default","module":"headvmessages","controller":"index"}', 'core_admin_main_plugins', NULL, 1, 0, 888),
(266, 'headvmessages_admin_main_index', 'headvmessages', 'Global Settings', NULL, '{"route":"admin_default","module":"headvmessages","controller":"index","action":"index"}', 'headvmessages_admin_main', NULL, 1, 0, 1),
(267, 'headvmessages_admin_main_levels', 'headvmessages', 'Levels Settings', NULL, '{"route":"admin_default","module":"headvmessages","controller":"index","action":"levels"}', 'headvmessages_admin_main', NULL, 1, 0, 2),
(268, 'custom_268', 'core', 'Articles', '', '{"uri":"\\/socialengine\\/browse-articles","icon":""}', 'core_main', '', 1, 1, 999),
(270, 'custom_270', 'core', 'Write Article', '', '{"uri":"create-article","icon":""}', 'article_quick', '', 1, 1, 3),
(271, 'custom_271', 'core', 'My Articles', '', '{"uri":"my-articles","icon":""}', 'article_quick', '', 1, 1, 2),
(272, 'custom_272', 'core', 'Browse Articles', '', '{"uri":"browse-articles","icon":""}', 'article_quick', '', 1, 1, 1),
(273, 'article_admin_main_manage', 'article', 'View Articles', '', '{"route":"admin_default","module":"article","controller":"manage"}', 'article_admin_main', '', 1, 0, 1),
(274, 'core_admin_main_plugins_article', 'article', 'Articles', '', '{"route":"admin_default","module":"article","controller":"manage"}', 'core_admin_main_plugins', '', 1, 0, 999);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_menus`
--

CREATE TABLE `engine4_core_menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `type` enum('standard','hidden','custom') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'standard',
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(3) NOT NULL DEFAULT '999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_menus`
--

INSERT INTO `engine4_core_menus` (`id`, `name`, `type`, `title`, `order`) VALUES
(1, 'core_main', 'standard', 'Main Navigation Menu', 1),
(2, 'core_mini', 'standard', 'Mini Navigation Menu', 2),
(3, 'core_footer', 'standard', 'Footer Menu', 3),
(4, 'core_sitemap', 'standard', 'Sitemap', 4),
(5, 'user_home', 'standard', 'Member Home Quick Links Menu', 999),
(6, 'user_profile', 'standard', 'Member Profile Options Menu', 999),
(7, 'user_edit', 'standard', 'Member Edit Profile Navigation Menu', 999),
(8, 'user_browse', 'standard', 'Member Browse Navigation Menu', 999),
(9, 'user_settings', 'standard', 'Member Settings Navigation Menu', 999),
(10, 'messages_main', 'standard', 'Messages Main Navigation Menu', 999),
(11, 'video_main', 'standard', 'Video Main Navigation Menu', 999),
(12, 'group_main', 'standard', 'Group Main Navigation Menu', 999),
(13, 'group_profile', 'standard', 'Group Profile Options Menu', 999),
(14, 'event_main', 'standard', 'Event Main Navigation Menu', 999),
(15, 'event_profile', 'standard', 'Event Profile Options Menu', 999),
(16, 'blog_main', 'standard', 'Blog Main Navigation Menu', 999),
(17, 'blog_quick', 'standard', 'Blog Quick Navigation Menu', 999),
(18, 'blog_gutter', 'standard', 'Blog Gutter Navigation Menu', 999),
(19, 'credit_main', 'standard', 'Credit Main Navigation Menu', 999),
(20, 'hashtag_admin_main', 'standard', 'Hashtag Admin Navigation Menu', 999),
(21, 'headvancedmembers_admin_main', 'standard', 'Headvancedmembers Admin Navigation Menu', 999),
(22, 'hecontest_main', 'standard', 'Hecontest Main Navigation Menu', 999),
(23, 'article_quick', 'standard', 'Article Quick Navigation Menu', 999);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_migrations`
--

CREATE TABLE `engine4_core_migrations` (
  `package` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `current` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_modules`
--

CREATE TABLE `engine4_core_modules` (
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `version` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('core','standard','extra') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'extra'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_modules`
--

INSERT INTO `engine4_core_modules` (`name`, `title`, `description`, `version`, `enabled`, `type`) VALUES
('activity', 'Activity', 'Activity', '4.8.12', 1, 'core'),
('advancedsearch', 'Advanced Search Plugin', 'Hire-Experts Advanced Search Plugin', '4.5.5p8', 1, 'extra'),
('advbilling', 'Advanced Billing system', 'Advanced Billing system', '4.8.12p3', 1, 'extra'),
('advnotifications', 'Advanced Notifications', 'Advanced Notifications Plugin from Hire-Express LLC', '4.8.9p4', 1, 'extra'),
('announcement', 'Announcements', 'Announcements', '4.8.0', 1, 'standard'),
('appmanager', 'Touch Mobile - App Manager Extension', 'Application Manager', '4.2.4p2', 1, 'extra'),
('apptouch', 'New Touch-Mobile', 'New Touch-Mobile', '4.3.1p3', 1, 'extra'),
('apptouch-cometchat', 'Cometchat for New Touch-Mobile', '', '4.8.9p1', 1, 'extra'),
('article', 'Article', '', '4.0.0', 1, 'extra'),
('authorization', 'Authorization', 'Authorization', '4.7.0', 1, 'core'),
('avatarstyler', 'HE - Avatar Styler', 'Hire-Experts Avatar Styler', '4.8.10', 1, 'extra'),
('blog', 'Blogs', 'Blogs', '4.8.12', 1, 'extra'),
('checkin', 'Checkin', 'Checkin', '4.1.5p6', 1, 'extra'),
('core', 'Core', 'Core', '4.8.13', 1, 'core'),
('credit', 'Credits Plugin', 'Hire-Experts Credits Plugin', '4.3.1p5', 1, 'extra'),
('daylogo', 'Day-logo Plugin', 'Day-logo Plugin', '4.2.1p3', 0, 'extra'),
('event', 'Events', 'Events', '4.8.12', 1, 'extra'),
('fields', 'Fields', 'Fields', '4.8.13', 1, 'core'),
('group', 'Groups', 'Groups', '4.8.12', 1, 'extra'),
('guest', 'Guest', 'information about guests', '4.0.0', 1, 'extra'),
('hashtag', 'Hashtag', 'Hashtag', '4.5.3p1', 1, 'extra'),
('headvancedmembers', 'Advanced Members', 'Advanced Members', '4.8.10p4', 0, 'extra'),
('headvmessages', 'Advanced Messages', 'Advanced Messages Plugin from Hire-Express LLC', '4.8.9p5', 1, 'extra'),
('hebadge', 'Badges', 'Badges', '4.2.2p1', 1, 'extra'),
('hecomment', 'HE-Comment', 'Comment', '4.0.0p4', 1, 'extra'),
('hecontest', 'HE - Contest', 'Contest Plugin', '4.5.3', 1, 'extra'),
('hecore', 'Hire-Experts Core Module', 'Hire-Experts Core Module', '4.2.4p6', 1, 'extra'),
('invite', 'Invite', 'Invite', '4.8.7', 1, 'standard'),
('messages', 'Messages', 'Messages', '4.8.12', 1, 'standard'),
('network', 'Networks', 'Networks', '4.8.6', 1, 'standard'),
('payment', 'Payment', 'Payment', '4.8.11', 1, 'standard'),
('storage', 'Storage', 'Storage', '4.8.9', 1, 'core'),
('user', 'Members', 'Members', '4.8.13', 1, 'core'),
('video', 'Videos', 'Videos', '4.8.12', 1, 'extra'),
('wall', 'Wall', 'Wall', '4.3.4p2', 1, 'extra');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_nodes`
--

CREATE TABLE `engine4_core_nodes` (
  `node_id` int(10) UNSIGNED NOT NULL,
  `signature` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `first_seen` datetime NOT NULL,
  `last_seen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_pages`
--

CREATE TABLE `engine4_core_pages` (
  `page_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `displayname` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `custom` tinyint(1) NOT NULL DEFAULT '1',
  `fragment` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `levels` text COLLATE utf8_unicode_ci,
  `provides` text COLLATE utf8_unicode_ci,
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `search` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_pages`
--

INSERT INTO `engine4_core_pages` (`page_id`, `name`, `displayname`, `url`, `title`, `description`, `keywords`, `custom`, `fragment`, `layout`, `levels`, `provides`, `view_count`, `search`) VALUES
(1, 'header', 'Site Header', NULL, '', '', '', 0, 1, '', NULL, 'header-footer', 0, 0),
(2, 'footer', 'Site Footer', NULL, '', '', '', 0, 1, '', NULL, 'header-footer', 0, 0),
(3, 'core_index_index', 'Landing Page', NULL, 'Landing Page', 'This is your site''s landing page.', '', 0, 0, '', NULL, 'no-viewer;no-subject', 0, 0),
(4, 'user_index_home', 'Member Home Page', NULL, 'Member Home Page', 'This is the home page for members.', '', 0, 0, '', NULL, 'viewer;no-subject', 0, 0),
(5, 'user_profile_index', 'Member Profile', NULL, 'Member Profile', 'This is a member''s profile.', '', 0, 0, '', NULL, 'subject=user', 0, 0),
(6, 'core_help_contact', 'Contact Page', NULL, 'Contact Us', 'This is the contact page', '', 0, 0, '', NULL, 'no-viewer;no-subject', 0, 0),
(7, 'core_help_privacy', 'Privacy Page', NULL, 'Privacy Policy', 'This is the privacy policy page', '', 0, 0, '', NULL, 'no-viewer;no-subject', 0, 0),
(8, 'core_help_terms', 'Terms of Service Page', NULL, 'Terms of Service', 'This is the terms of service page', '', 0, 0, '', NULL, 'no-viewer;no-subject', 0, 0),
(9, 'core_error_requireuser', 'Sign-in Required Page', NULL, 'Sign-in Required', '', '', 0, 0, '', NULL, NULL, 0, 0),
(10, 'core_search_index', 'Search Page', NULL, 'Search Results', '', '', 0, 0, '', NULL, NULL, 0, 0),
(11, 'user_auth_login', 'Sign-in Page', NULL, 'Sign-in', 'This is the site sign-in page.', '', 0, 0, '', NULL, NULL, 0, 0),
(12, 'user_signup_index', 'Sign-up Page', NULL, 'Sign-up', 'This is the site sign-up page.', '', 0, 0, '', NULL, NULL, 0, 0),
(13, 'user_auth_forgot', 'Forgot Password Page', NULL, 'Forgot Password', 'This is the site forgot password page.', '', 0, 0, '', NULL, NULL, 0, 0),
(14, 'user_settings_general', 'User General Settings Page', NULL, 'General', 'This page is the user general settings page.', '', 0, 0, '', NULL, NULL, 0, 0),
(15, 'user_settings_privacy', 'User Privacy Settings Page', NULL, 'Privacy', 'This page is the user privacy settings page.', '', 0, 0, '', NULL, NULL, 0, 0),
(16, 'user_settings_network', 'User Networks Settings Page', NULL, 'Networks', 'This page is the user networks settings page.', '', 0, 0, '', NULL, NULL, 0, 0),
(17, 'user_settings_notifications', 'User Notifications Settings Page', NULL, 'Notifications', 'This page is the user notification settings page.', '', 0, 0, '', NULL, NULL, 0, 0),
(18, 'user_settings_password', 'User Change Password Settings Page', NULL, 'Change Password', 'This page is the change password page.', '', 0, 0, '', NULL, NULL, 0, 0),
(19, 'user_settings_delete', 'User Delete Account Settings Page', NULL, 'Delete Account', 'This page is the delete accout page.', '', 0, 0, '', NULL, NULL, 0, 0),
(20, 'user_index_browse', 'Member Browse Page', NULL, 'Member Browse', 'This page show member lists.', '', 0, 0, '', NULL, NULL, 0, 0),
(21, 'invite_index_index', 'Invite Page', NULL, 'Invite', '', '', 0, 0, '', NULL, NULL, 0, 0),
(22, 'messages_messages_compose', 'Messages Compose Page', NULL, 'Compose', '', '', 0, 0, '', NULL, NULL, 0, 0),
(23, 'messages_messages_inbox', 'Messages Inbox Page', NULL, 'Inbox', '', '', 0, 0, '', NULL, NULL, 0, 0),
(24, 'messages_messages_outbox', 'Messages Outbox Page', NULL, 'Inbox', '', '', 0, 0, '', NULL, NULL, 0, 0),
(25, 'messages_messages_search', 'Messages Search Page', NULL, 'Search', '', '', 0, 0, '', NULL, NULL, 0, 0),
(26, 'messages_messages_view', 'Messages View Page', NULL, 'My Message', '', '', 0, 0, '', NULL, NULL, 0, 0),
(27, 'video_index_view', 'Video View Page', NULL, 'View Video', 'This is the view page for a video.', '', 0, 0, '', NULL, 'subject=video', 0, 0),
(28, 'video_index_browse', 'Video Browse Page', NULL, 'Video Browse', 'This page lists videos.', '', 0, 0, '', NULL, NULL, 0, 0),
(29, 'video_index_create', 'Video Create Page', NULL, 'Video Create', 'This page allows video to be added.', '', 0, 0, '', NULL, NULL, 0, 0),
(30, 'video_index_manage', 'Video Manage Page', NULL, 'My Videos', 'This page lists a user''s videos.', '', 0, 0, '', NULL, NULL, 0, 0),
(31, 'group_profile_index', 'Group Profile', NULL, 'Group Profile', 'This is the profile for an group.', '', 0, 0, '', NULL, 'subject=group', 0, 0),
(32, 'mobi_group_profile', 'Mobile Group Profile', NULL, 'Mobile Group Profile', 'This is the mobile verison of a group profile.', '', 0, 0, '', NULL, NULL, 0, 0),
(33, 'group_index_browse', 'Group Browse Page', NULL, 'Group Browse', 'This page lists groups.', '', 0, 0, '', NULL, NULL, 0, 0),
(34, 'group_index_create', 'Group Create Page', NULL, 'Group Create', 'This page allows users to create groups.', '', 0, 0, '', NULL, NULL, 0, 0),
(35, 'group_index_manage', 'Group Manage Page', NULL, 'My Groups', 'This page lists a user''s groups.', '', 0, 0, '', NULL, NULL, 0, 0),
(36, 'mobi_event_profile', 'Mobile Event Profile', NULL, 'Mobile Event Profile', 'This is the mobile verison of an event profile.', '', 0, 0, '', NULL, NULL, 0, 0),
(37, 'event_profile_index', 'Event Profile', NULL, 'Event Profile', 'This is the profile for an event.', '', 0, 0, '', NULL, 'subject=event', 0, 0),
(38, 'event_index_browse', 'Event Browse Page', NULL, 'Event Browse', 'This page lists events.', '', 0, 0, '', NULL, NULL, 0, 0),
(39, 'event_index_create', 'Event Create Page', NULL, 'Event Create', 'This page allows users to create events.', '', 0, 0, '', NULL, NULL, 0, 0),
(40, 'event_index_manage', 'Event Manage Page', NULL, 'My Events', 'This page lists a user''s events.', '', 0, 0, '', NULL, NULL, 0, 0),
(41, 'blog_index_list', 'Blog List Page', NULL, 'Blog List', 'This page lists a member''s blog entries.', '', 0, 0, '', NULL, 'subject=user', 0, 0),
(42, 'blog_index_view', 'Blog View Page', NULL, 'Blog View', 'This page displays a blog entry.', '', 0, 0, '', NULL, 'subject=blog', 0, 0),
(43, 'blog_index_index', 'Blog Browse Page', NULL, 'Blog Browse', 'This page lists blog entries.', '', 0, 0, '', NULL, NULL, 0, 0),
(44, 'blog_index_create', 'Blog Create Page', NULL, 'Write New Entry', 'This page is the blog create page.', '', 0, 0, '', NULL, NULL, 0, 0),
(45, 'blog_index_manage', 'Blog Manage Page', NULL, 'My Entries', 'This page lists a user''s blog entries.', '', 0, 0, '', NULL, NULL, 0, 0),
(46, 'credit_index_index', 'Credit Home', NULL, 'Credit Home', 'This page displays all users who scored more points', '', 1, 0, '', NULL, 'no-subject', 0, 0),
(47, 'credit_index_manage', 'My Credits', NULL, 'My Credits', 'This page displays all credits of current user', '', 1, 0, '', NULL, 'no-subject', 0, 0),
(48, 'wall_index_view', 'Wall Posts', NULL, 'Posts', '', '', 0, 0, '', '["1","2","3","4","5"]', 'no-subject', 0, 0),
(49, 'wall_index_welcome', 'Wall Welcome', NULL, 'Welcome', '', '', 0, 0, '', NULL, 'no-subject', 0, 0),
(50, 'headvancedmembers_index_browse', 'Headvancedmembers  list', NULL, 'Advanced members', 'Advanced members', '', 1, 0, '', NULL, NULL, 0, 0),
(51, 'hebadge_index_index', 'Badges  Home', NULL, 'Badges  Home', 'Badges  Home', '', 0, 0, '', NULL, 'no-subject', 0, 0),
(52, 'hebadge_index_view', 'Badges  Profile', NULL, 'Badges  Profile', 'Badges  Profile', '', 0, 0, '', NULL, 'no-subject', 0, 0),
(53, 'hebadge_index_manage', 'Badges  Manage', NULL, 'Badges  Manage', 'Badges  Manage', '', 0, 0, '', NULL, 'no-subject', 0, 0),
(54, 'hebadge_credit_index', 'Credit  Ranks', NULL, 'Credit  Ranks', 'Credit  Ranks', '', 0, 0, '', NULL, 'no-subject', 0, 0),
(55, 'hecontest_index_index', 'Contest Main Page', NULL, 'Contest Main Page', 'Contest Main Page', '', 0, 0, '', NULL, 'subject=hecontest', 0, 0),
(56, 'hecontest_index_recent', 'Contest Recent Page', NULL, 'Contest RecentPage', 'Contest RecentPage', '', 0, 0, '', NULL, 'subject=hecontest', 0, 0),
(57, 'hecontest_index_contestview', 'Contest view Page', NULL, 'Contest view Page', 'Contest viewPage', '', 0, 0, '', NULL, 'subject=hecontest', 0, 0),
(58, NULL, 'Trend', 'trend', 'Trend', '', '', 1, 0, '', '["1","2","3","4","5"]', 'no-subject', 0, 0),
(59, 'article_index_index', 'Article Browse Page', NULL, 'Article Browse', 'This page lists article entries.', '', 0, 0, '', NULL, NULL, 0, 0),
(61, 'article_index_manage', 'Article Manage Page', NULL, 'My Articles', 'This page lists a user''s articles.', '', 0, 0, '', NULL, NULL, 0, 0),
(62, 'article_index_create', 'Article Create Page', NULL, 'Create Article', 'This page for create new article.', '', 0, 0, '', NULL, NULL, 0, 0),
(63, 'article_index_show', 'Article Show Page', NULL, 'Show Article', 'This page displays article.', '', 0, 0, '', NULL, 'subject=article', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_processes`
--

CREATE TABLE `engine4_core_processes` (
  `pid` int(10) UNSIGNED NOT NULL,
  `parent_pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `system_pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `started` int(10) UNSIGNED NOT NULL,
  `timeout` mediumint(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_referrers`
--

CREATE TABLE `engine4_core_referrers` (
  `host` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `query` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `value` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_reports`
--

CREATE TABLE `engine4_core_reports` (
  `report_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `subject_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_routes`
--

CREATE TABLE `engine4_core_routes` (
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_search`
--

CREATE TABLE `engine4_core_search` (
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hidden` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_search`
--

INSERT INTO `engine4_core_search` (`type`, `id`, `title`, `description`, `keywords`, `hidden`) VALUES
('user', 2, 'New Member', '', '', ''),
('user', 3, 'John Smith', '', '', ''),
('blog', 1, 'My new blog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet mi enim. Suspendisse ut nunc risus. Mauris quis eleifend leo. Nulla mollis eros ac sem interdum, eget fermentum purus fringilla. Donec aliquet tincidunt mi, non malesuada libero cu..', '', ''),
('group', 1, 'New Group', 'some info', '', ''),
('event', 1, 'New event', 'event description', '', ''),
('video', 3, 'vimeo video', '', '', ''),
('video', 2, 'new video', 'You have to be brave to cook one of Ramsay''s dishes for him.\n\nIf you liked this clip check out the rest of Gordon''s channels:\n\nhttp://www.youtube.com/gordonramsay\nhttp://www.youtube.com/thefword\nhttp://www.youtube.com/kitchennightmares\n\nMore Gordon Ramsay', '', ''),
('blog', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excep', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque cum dolorem est? Accusantium eius natus nisi reprehenderit rerum voluptatem! Ab ad asperiores assumenda consequatur deserunt dolorem doloremque dolorum eos eum eveniet expedita facere fugiat ', '', ''),
('article', 58, 'new title', '<p>new description</p>', '', ''),
('article', 52, 'new title 8:31', 'new description', '', ''),
('article', 53, 'new title 8:52', '<p>new description</p>', '', ''),
('article', 54, 'new title', '<p>new description</p>', '', ''),
('article', 55, 'title', '<p>description</p>', '', ''),
('article', 56, 'title', '<p>description</p>', '', ''),
('article', 57, 'title', '<p>description</p>', '', ''),
('article', 59, 'new title', '<p>new description</p>', '', ''),
('article', 60, 'new title', 'new description', '', ''),
('article', 61, 'new titel', '<p>ne wdescription</p>', '', ''),
('article', 62, 'ne warticle', '<p>new desc</p>', '', ''),
('article', 63, 'new title', '<p>new description</p>', '', ''),
('article', 64, 'new title', '<p>new description</p>', '', ''),
('article', 66, 'new title', '<p>new description</p>', '', ''),
('article', 67, 'new title', '<p>new description</p>', '', ''),
('article', 73, 'title 11:55', '<p>description 11:55</p>', '', ''),
('article', 69, 'article title', '<p>article description</p>', '', ''),
('article', 70, 'title 11:49', '<p>description 11:49 article description</p>', '', ''),
('article', 71, 'title 11:52', '<p>description 11:52</p>', '', ''),
('article', 72, 'title 11:55', '<p>description 11:55</p>', '', ''),
('article', 74, 'new title290517 1308', '<p>new description 290517 1308</p>', '', ''),
('article', 75, 'title', '<p>description</p>', '', ''),
('article', 76, 'new article 13:56', '<p>new description 13:56</p>', '', ''),
('article', 77, 'new article 13:56', '<p>new description 13:56</p>', '', ''),
('article', 78, 'new article 13:56', '<p>new description 13:56</p>', '', ''),
('article', 79, 'new article', '<p>article</p>', '', ''),
('article', 80, 'article', '<p>description</p>', '', ''),
('article', 81, 'article', '<p>description</p>', '', ''),
('article', 82, 'article', '<p>description</p>', '', ''),
('article', 83, 'article title', '<p>description</p>', '', ''),
('article', 84, 'new article', '<p>description</p>', '', ''),
('article', 85, 'new article', '<p>description</p>', '', ''),
('article', 86, 'new article', '<p>description</p>', '', ''),
('article', 87, 'new article', '<p>new description</p>', '', ''),
('article', 88, 'articcle', '<p>description</p>', '', ''),
('article', 89, 'articcle', '<p>description</p>', '', ''),
('article', 90, 'articcle', '<p>description</p>', '', ''),
('article', 91, 'new title', '<p>new description</p>', '', ''),
('article', 92, 'new title', '<p>new description</p>', '', ''),
('article', 93, 'new article', '<p>description</p>', '', ''),
('article', 94, 'new article', '<p>description</p>', '', ''),
('article', 95, 'new article', '<p>description</p>', '', ''),
('article', 96, 'new article', '<p>description</p>', '', ''),
('article', 97, 'new article', '<p>description</p>', '', ''),
('article', 98, 'article', '<p>description</p>', '', ''),
('article', 99, 'article', '<p>description</p>', '', ''),
('article', 100, 'article', '<p>description</p>', '', ''),
('article', 101, 'article', '<p>description</p>', '', ''),
('article', 102, 'article', '<p>description</p>', '', ''),
('article', 103, 'article', '<p>description</p>', '', ''),
('article', 104, 'title', '<p>description</p>', '', ''),
('article', 105, 'title', '<p>description</p>', '', ''),
('article', 106, 'article', '<p>description</p>', '', ''),
('article', 107, 'article', '<p>description</p>', '', ''),
('article', 108, 'article', '<p>description</p>', '', ''),
('article', 109, 'article', '<p>description</p>', '', ''),
('article', 110, 'article', '<p>description</p>', '', ''),
('article', 111, 'article', '<p>description</p>', '', ''),
('article', 112, 'article', '<p>description</p>', '', ''),
('article', 113, 'article', '<p>description</p>', '', ''),
('blog', 3, 'long title', 'long description', 'new title blog', ''),
('article', 114, 'new title', '<p>new description</p>', '', ''),
('article', 115, 'new title', '<p>new description</p>', '', ''),
('article', 116, 'article', '<p>description</p>', '', ''),
('article', 117, 'article', '<p>description</p>', '', ''),
('article', 118, 'new title', '<p>new description</p>', '', ''),
('article', 119, 'new title', '<p>new description</p>', '', ''),
('article', 120, 'new title', '<p>new description</p>', '', ''),
('article', 121, 'new title', '<p>new description</p>', '', ''),
('article', 122, 'new title', '<p>new description</p>', '', ''),
('article', 123, 'new title', '<p>new description</p>', '', ''),
('article', 142, 'new article', '<p>new description</p>', '', ''),
('article', 125, 'new article', '<p>new description</p>', '', ''),
('article', 143, 'my new article', '<p>my new content</p>', '', ''),
('article', 144, 'new article 10:02', '<p>new description 10:02</p>', '', ''),
('article', 129, 'new title', '<p>new description</p>', '', ''),
('article', 130, 'ne warticle', '<p>kjk;lj;kjk;j</p>', '', ''),
('article', 131, 'new article', '<p>new description</p>', '', ''),
('article', 132, 'ne warticle', '<p>kjk;lj;kjk;j</p>', '', ''),
('article', 133, 'ne warticle', '<p>kjk;lj;kjk;j</p>', '', ''),
('article', 134, 'ne warticle', '<p>kjk;lj;kjk;j</p>', '', ''),
('article', 135, 'ne warticle', '<p>kjk;lj;kjk;j</p>', '', ''),
('article', 136, 'new article 17:05', '<p>description</p>', '', ''),
('article', 137, 'new article with privace', '<p>description here</p>', '', ''),
('article', 146, 'article wihout image', '<p>article description</p>', '', ''),
('blog', 4, 'new article title', 'description', '', ''),
('user', 4, 'Ivan Ivanov', '', '', ''),
('article', 29, 'another article', '<p>here s new description</p>', '', ''),
('user', 5, 'Alisher T', '', '', ''),
('article', 139, 'new title', '<p>photo&nbsp;</p>', '', ''),
('article', 140, 'heheehehehe', '<p>Создать свой модуль article. В этом модуле юзера могут создавать свои статьи. В каждой статье будет Заголовок, описание и фото(размеры - по ста', '', ''),
('article', 145, 'new title 10:43', '<p>new content</p>', '', ''),
('user', 6, 'Paladin Victor', '', '', ''),
('user', 7, 'Paladin Seris', '', '', ''),
('user', 8, 'Palading Drogoz', '', '', ''),
('user', 9, 'Bruce Wayne', '', '', ''),
('user', 10, 'Frodo Baggins', '', '', ''),
('user', 11, 'Gandalf The Grey', '', '', ''),
('user', 12, 'Sam Gemgee', '', '', ''),
('user', 13, 'Bigby Wolf', '', '', ''),
('user', 14, 'Homer Simpson', '', '', ''),
('user', 15, 'Luffy D. Monkey', '', '', ''),
('user', 16, 'Bob Sponge', '', '', ''),
('user', 17, 'Mickey Mouse', '', '', ''),
('user', 18, 'Lion King', '', '', ''),
('user', 19, 'Jon Bon jovi', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_serviceproviders`
--

CREATE TABLE `engine4_core_serviceproviders` (
  `serviceprovider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `class` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_serviceproviders`
--

INSERT INTO `engine4_core_serviceproviders` (`serviceprovider_id`, `title`, `type`, `name`, `class`, `enabled`) VALUES
(1, 'MySQL', 'database', 'mysql', 'Engine_ServiceLocator_Plugin_Database_Mysql', 1),
(2, 'PDO MySQL', 'database', 'mysql_pdo', 'Engine_ServiceLocator_Plugin_Database_MysqlPdo', 1),
(3, 'MySQLi', 'database', 'mysqli', 'Engine_ServiceLocator_Plugin_Database_Mysqli', 1),
(4, 'File', 'cache', 'file', 'Engine_ServiceLocator_Plugin_Cache_File', 1),
(5, 'APC', 'cache', 'apc', 'Engine_ServiceLocator_Plugin_Cache_Apc', 1),
(6, 'Memcache', 'cache', 'memcached', 'Engine_ServiceLocator_Plugin_Cache_Memcached', 1),
(7, 'Simple', 'captcha', 'image', 'Engine_ServiceLocator_Plugin_Captcha_Image', 1),
(8, 'ReCaptcha', 'captcha', 'recaptcha', 'Engine_ServiceLocator_Plugin_Captcha_Recaptcha', 1),
(9, 'SMTP', 'mail', 'smtp', 'Engine_ServiceLocator_Plugin_Mail_Smtp', 1),
(10, 'Sendmail', 'mail', 'sendmail', 'Engine_ServiceLocator_Plugin_Mail_Sendmail', 1),
(11, 'GD', 'image', 'gd', 'Engine_ServiceLocator_Plugin_Image_Gd', 1),
(12, 'Imagick', 'image', 'imagick', 'Engine_ServiceLocator_Plugin_Image_Imagick', 1),
(13, 'Akismet', 'akismet', 'standard', 'Engine_ServiceLocator_Plugin_Akismet', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_services`
--

CREATE TABLE `engine4_core_services` (
  `service_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `profile` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'default',
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_servicetypes`
--

CREATE TABLE `engine4_core_servicetypes` (
  `servicetype_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `interface` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_servicetypes`
--

INSERT INTO `engine4_core_servicetypes` (`servicetype_id`, `title`, `type`, `interface`, `enabled`) VALUES
(1, 'Database', 'database', 'Zend_Db_Adapter_Abstract', 1),
(2, 'Cache', 'cache', 'Zend_Cache_Backend', 1),
(3, 'Captcha', 'captcha', 'Zend_Captcha_Adapter', 1),
(4, 'Mail Transport', 'mail', 'Zend_Mail_Transport_Abstract', 1),
(5, 'Image', 'image', 'Engine_Image_Adapter_Abstract', 1),
(6, 'Akismet', 'akismet', 'Zend_Service_Akismet', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_session`
--

CREATE TABLE `engine4_core_session` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_session`
--

INSERT INTO `engine4_core_session` (`id`, `modified`, `lifetime`, `data`, `user_id`) VALUES
('01s6tatjc7polferqcg7hu6f27', 1496660296, 86400, '', NULL),
('03n2535r1pj8rfras2t25bp3u5', 1496707895, 86400, '', NULL),
('062j82flqmqbuk6ph4jrncq964', 1496715336, 86400, '', NULL),
('09jd1sp3f5235b1p2j3b07k607', 1496723435, 86400, '', NULL),
('0amee1ukk8des2m46qa5345j10', 1496717207, 86400, '', NULL),
('0b3vhrtvaj7aco8muuo81jo3r2', 1496722154, 86400, '', NULL),
('0dca7dk9uf726grlva8gvhla76', 1496728509, 86400, '', NULL),
('0fv5tkc950fbbk0ub234r5gi40', 1496727313, 86400, '', NULL),
('0gjj3racdvpns9hmbgonffqo71', 1496735935, 86400, '', NULL),
('0i7tha0qq4ubbilmabjsf83ul6', 1496658356, 86400, '', NULL),
('0phtlii7st6ne9rg4671vl5q66', 1496736250, 86400, '', NULL),
('0po0cgkjjvr1h1b0lpfd525rr6', 1496724007, 86400, '', NULL),
('0r32jlmhlj4lsco8hoh65a97s3', 1496730551, 86400, '', NULL),
('0rimi4ki20fdspc3p2luce9us3', 1496656374, 86400, '', NULL),
('0tp4aiks0p8uusq4kdhfh0vhh1', 1496720086, 86400, '', NULL),
('120otp2patpeaimvvjm8m7q4n7', 1496714592, 86400, '', NULL),
('12e8kgunkebcfjkii8ibrdmbm5', 1496716576, 86400, '', NULL),
('12o9pj1qjjh6bobid5bh4fgl96', 1496727501, 86400, '', NULL),
('13ln6ae1rl1h32ni7623cdpvi0', 1496719511, 86400, '', NULL),
('14104grr3fcgf70q449jhfi786', 1496656193, 86400, '', NULL),
('14q83c6jert2glkqidi0smvkm0', 1496720280, 86400, '', NULL),
('1581v0a0cvisdrppvfeq2r6l72', 1496734942, 86400, '', NULL),
('18t8p83ceqtmq817k41dv671e0', 1496720027, 86400, '', NULL),
('193aap0cksuvovjhpk76gn3a47', 1496729925, 86400, '', NULL),
('197khumst76ciilenkbp9mq5n2', 1496724266, 86400, '', NULL),
('1d90hguevgciqp4aogv9no2ao3', 1496721346, 86400, '', NULL),
('1ghptmoj2ea540agbdp7o6l7v2', 1496659533, 86400, '', NULL),
('1gkr7edq1gm8nkp8of1j0q53v4', 1496740694, 86400, '', NULL),
('1jnfergf1qd5hf39hti7hpgme5', 1496720407, 86400, '', NULL),
('1lcag2mn8h8e4vlfnvmuo3q1t6', 1496725174, 86400, '', NULL),
('1nin1p7ol3iqanfupplcfklh55', 1496725235, 86400, '', NULL),
('1o4aihvmj8i0eabu70mqqi5ui0', 1496659091, 86400, '', NULL),
('1vjjtrvlsq91861d4gstapmk33', 1496716035, 86400, '', NULL),
('1vpp141tjgfbd3284okhik9tt1', 1496652664, 86400, '', NULL),
('21ovnttb2e4ns5oh3f2povarj1', 1496735141, 86400, '', NULL),
('21p6vpbiaihbfr8tfqv83sg8r7', 1496658717, 86400, '', NULL),
('22iastf9p1j1fhmkjf059qu2c7', 1496656313, 86400, '', NULL),
('238o8lbu05g93knvtdiuc4aep6', 1496729032, 86400, '', NULL),
('23vdvs9qhcen2fnrti6d1b54m1', 1496729484, 86400, '', NULL),
('2846ro9gg080tlss4ek3nqqcf5', 1496728121, 86400, '', NULL),
('2ap20k6bq8b0fbktvbuo01bf90', 1496735455, 86400, '', NULL),
('2bcns9tf4p43mjttj9i6e4q066', 1496740454, 86400, '', NULL),
('2cmnhushr02gsjajb8t4rc6g32', 1496725856, 86400, '', NULL),
('2cq72vpbcpf509mcuj4fqabva7', 1496655235, 86400, '', NULL),
('2cqhhesttk6c5768qaql8d71f6', 1496729091, 86400, '', NULL),
('2dh25q1bpb8g3dpkb64p90lf54', 1496738186, 86400, '', NULL),
('2ect4r70uo3cv9pvipt33mn5s4', 1496720218, 86400, '', NULL),
('2i1igu6jpa5537ji9jsdlde7n0', 1496705405, 86400, '', NULL),
('2i2822gjuk1uh83datrprhajb1', 1496714718, 86400, '', NULL),
('2j8g5bfm7772ck2qui4ntrk5t4', 1496713393, 86400, '', NULL),
('2jhb43ct0uvbdtscga5575d740', 1496735005, 86400, '', NULL),
('2mp5ika6k8065rggscdqp3ar42', 1496739375, 86400, '', NULL),
('2nsjbskupv453d6ufqrjacs6d7', 1496716821, 86400, '', NULL),
('2p0dmtu78c50add29mkb72uqo0', 1496706696, 86400, '', NULL),
('2p5dslrpkjkkjporqaevpm26o2', 1496725295, 86400, '', NULL),
('2qllu9nut5msht4evk24uss8e5', 1496714782, 86400, '', NULL),
('2rpdtk284up5m5rc2t8det8b11', 1496709594, 86400, 'redirectURL|s:19:"/socialengine/login";ActivityFormToken|a:1:{s:5:"token";s:32:"f86c8cc5f490961075e28aa5685706ff";}mobile|a:1:{s:6:"mobile";N;}Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:2:"26";', 1),
('2s6vk1iea2gdim945o4aje78d3', 1496707454, 86400, '', NULL),
('2v94jkdf4i0dlh146cjrsu6lg1', 1496737518, 86400, '', NULL),
('32ntjmo2uau8irt4am49do2e42', 1496706945, 86400, '', NULL),
('34ppsi1qlhjjrf60gg0kst9m41', 1496724587, 86400, '', NULL),
('36fv8rm6hv7anoh6gdi7k4bm44', 1496715716, 86400, '', NULL),
('371jact6cb35ijkr8gqs6ns4s6', 1496705525, 86400, '', NULL),
('37p3tihvh9213n3mv622bblv44', 1496715272, 86400, '', NULL),
('382tgii8k5hov7p4m4l1ip2ds2', 1496706306, 86400, '', NULL),
('3e0bse3bil9qjfika0djo7pum6', 1496722033, 86400, '', NULL),
('3fjd8rg5dd7876t7ba8heqcd12', 1496713322, 86400, '', NULL),
('3goq2sb70lpomu3di3o9rn4a83', 1496726421, 86400, '', NULL),
('3h22aptbuu4iijd8gargbep7k3', 1496735754, 86400, '', NULL),
('3h4fblhhkfk8qkr9n7tn9vf1o1', 1496657646, 86400, '', NULL),
('3icubh9qptuprv6afc18ojj8b3', 1496705843, 86400, 'ActivityFormToken|a:1:{s:5:"token";s:32:"adebd65efac266171d74277ccc8f0ca8";}', NULL),
('3j9ptqb0diorup1dclm07eloa7', 1496736578, 86400, '', NULL),
('3jg3hbao6fh6nltjuer5gtl1g2', 1496724716, 86400, '', NULL),
('3mb1bcb12h9h4vtc318sjscdv4', 1496653890, 86400, '', NULL),
('3qdost8j9vorqumvb7knhpnk97', 1496729796, 86400, '', NULL),
('3r2sta0m05a3ljr704pa7khia2', 1496729416, 86400, '', NULL),
('3rlicv7ago8stuoeb6ipkdqvr6', 1496719266, 86400, '', NULL),
('3spl147rrqp0os18q7rnokuct3', 1496730613, 86400, '', NULL),
('3tkppongiia4ous2ctn7du6r03', 1496737585, 86400, '', NULL),
('3v9en2b1acqq47uhlhh5qh20p4', 1496655690, 86400, '', NULL),
('42np50fo9koj4q6d6ndd2h2kl6', 1496739821, 86400, '', NULL),
('42v0bk4gfoti5deh851n758l62', 1496654687, 86400, '', NULL),
('450d1koj9lktfe3pbbo3s9d3u4', 1496705944, 86400, '', NULL),
('477nice3rnf4ueofe274gm8na7', 1496708022, 86400, '', NULL),
('48qr6tk61r0b415m4uamn0v1a5', 1496738814, 86400, '', NULL),
('4ah13r15ad1l8tvuk95f9182c4', 1496713892, 86400, '', NULL),
('4dai0b5h6l2ketlap0a3255d15', 1496717869, 86400, '', NULL),
('4j4djj39rlf79ec45l91olas71', 1496736505, 86400, '', NULL),
('4lec4lsfhddob5fpiuj0s4lv04', 1496656007, 86400, '', NULL),
('4mqqi85oe97o7tbf9i1n6aeun0', 1496654075, 86400, '', NULL),
('4n53nuc02llb1d3eqnc3e86l70', 1496727564, 86400, '', NULL),
('4pgnaduf58rbp664hjossko7m1', 1496705886, 86400, '', NULL),
('4rlsc7kdbp0vbr74hivu0om7m4', 1496655174, 86400, '', NULL),
('4u1m2tnvcslou4bjkokug54pb4', 1496719770, 86400, '', NULL),
('4v6vpgsnske2kki0mnvcca90u5', 1496659032, 86400, '', NULL),
('514q276ub55hg5iupkjev3ego1', 1496737766, 86400, '', NULL),
('52epdmmnnqai2chs882arf4fm7', 1496721154, 86400, '', NULL),
('55kbnijeptmbhro5c9fqieq213', 1496654505, 86400, '', NULL),
('573k2cdqi0b14l35egv1us34r5', 1496652483, 86400, '', NULL),
('57tlbagfpcmaresbou4souhkq3', 1496714081, 86400, '', NULL),
('5da815jnfveb4ppjgq7v22sjr4', 1496659922, 86400, '', NULL),
('5e7orukhoo97v555omkklisl17', 1496717568, 86400, '', NULL),
('5f5dircrnk4n29uoh2ccbgf6p7', 1496728320, 86400, '', NULL),
('5fbb60geri3qth4al91f9trqj3', 1496717630, 86400, '', NULL),
('5ha88rrqh74900rajmrb389od3', 1496659792, 86400, '', NULL),
('5naamd3jtd8e55komnkn2ep9r5', 1496716635, 86400, '', NULL),
('5o35200njoje1b0d8t17iref03', 1496726173, 86400, '', NULL),
('5oh9b6b9jl7uttlnidec87nfk0', 1496714845, 86400, '', NULL),
('5pdlq037ktj83b1v4qfq97jg64', 1496655491, 86400, '', NULL),
('5r8e64cnhmk0j6nfp2orrnlpr4', 1496721831, 86400, '', NULL),
('5sjov1jfl6aqudman89378k1c4', 1496656986, 86400, '', NULL),
('6145d9t5dj60qbmdle25tp7pd0', 1496739948, 86400, '', NULL),
('634hp4sjd4e7plp4af17irk6d1', 1496740075, 86400, '', NULL),
('63v44t71clnrtsviau4krhspr2', 1496714145, 86400, '', NULL),
('65qkqlcfoqh15aduvc6g71fli7', 1496740905, 86400, '', NULL),
('69it6e6gih07eb2rj42ia5ab57', 1496719326, 86400, '', NULL),
('6cv76c42qklp9fg8o64fit9h06', 1496709274, 86400, '', NULL),
('6dkcok2engngjte1j0co0o6vd4', 1496721216, 86400, '', NULL),
('6f7vkkbq6l8tepc6g25bae3ch4', 1496706374, 86400, '', NULL),
('6gfe3tgkvijb5unimmph34ipd1', 1496727871, 86400, '', NULL),
('6iro8s3blkcpk60am12em28lq6', 1496656134, 86400, '', NULL),
('6l24muo18hcakl7a4910fsi2k6', 1496659598, 86400, '', NULL),
('6ot5arsag50ebctakqi1hjtsf2', 1496739126, 86400, '', NULL),
('6q7bss05n2vk22crru0ttpj8u6', 1496734383, 86400, '', NULL),
('6qagmuggtj9j54n9bdgretn7j0', 1496739691, 86400, '', NULL),
('6qdmlbcjlo57k6abq0hppnlv82', 1496706817, 86400, '', NULL),
('6ra9ahm68qbv1pn6pdpf19brr6', 1496652907, 86400, '', NULL),
('6thdoqg4jngb17d2n1k8jql1s5', 1496735815, 86400, '', NULL),
('71ajqi61pe5ac01pn0q8qdckq3', 1496726859, 86400, '', NULL),
('72do6mq2in7s2v3e2488qfsqm1', 1496724333, 86400, '', NULL),
('760nv3huup74ckbq4s2bjbrv97', 1496721711, 86400, '', NULL),
('7a1mvhaktq97vb6v0qsbk68a86', 1496720718, 86400, '', NULL),
('7b184d7lmf85kj1rf6q30futv3', 1496723686, 86400, '', NULL),
('7bedbmihfo4h4jbiujdnqsj934', 1496707268, 86400, '', NULL),
('7e13l2h94hsmkgsk582se03j00', 1496721650, 86400, '', NULL),
('7g74ukm58i1qvupp1os3mftfn3', 1496723000, 86400, '', NULL),
('7g97fko2nnvihg39a3nhgii5k2', 1496657705, 86400, '', NULL),
('7gicfepmc6p71k5rkbntaj4lv2', 1496724780, 86400, '', NULL),
('7hr3nbftsjoi3fcv259kl6tsr1', 1496739631, 86400, '', NULL),
('7hvqjd6qpmrno00thsphruv084', 1496707643, 86400, '', NULL),
('7lgspt7j8pu199ih0vdndrlgr2', 1496705645, 86400, '', NULL),
('7nvi3ru6naktcbrhq605188ui6', 1496727175, 86400, '', NULL),
('7p5pkprki6fp47t64b01r916g7', 1496719079, 86400, '', NULL),
('7t9tbu0c14bag9i9cthbih3jd6', 1496658596, 86400, '', NULL),
('80jqsin9nvj4e9gi64aougcjk0', 1496723187, 86400, '', NULL),
('818tnq0tdkqgi8ssl9vrfhbvg4', 1496740635, 86400, '', NULL),
('81upl63kqu5u7fuqivlm1c6581', 1496722698, 86400, '', NULL),
('85m7onlp22lamgljku0l53l691', 1496660483, 86400, '', NULL),
('86d62g78paunlnltg9c8fjrck5', 1496741030, 86400, '', NULL),
('86r4jm16pfr3mnicjvp5b7k9m0', 1496659733, 86400, '', NULL),
('8773j887d1oehfv28b5npr2lt2', 1496719901, 86400, '', NULL),
('87ped78keikapfjdkjk4704bn7', 1496726740, 86400, '', NULL),
('87rvus7pc0tdpoca9t8e5jr6c2', 1496653395, 86400, '', NULL),
('89p3ahd5c4e04vp113mevu8b33', 1496715210, 86400, '', NULL),
('8a2ehqdl4puk0js9pioq3fl5n2', 1496737946, 86400, '', NULL),
('8a346dbq80nn2ivg2jdofdb714', 1496653520, 86400, '', NULL),
('8a87nmgt6aig48dj0c0robibq5', 1496736312, 86400, '', NULL),
('8ait1tddr8vn898jf00vroel16', 1496721771, 86400, '', NULL),
('8d26p1d6ig0drr0p85enjfdf93', 1496654565, 86400, '', NULL),
('8f87s7objkc7l8o3r0h35jmk02', 1496659152, 86400, '', NULL),
('8g7b8ljvjumpdsvqgp26acehm2', 1496739439, 86400, '', NULL),
('8ghg09vd4v16e8ontnmh6jrim3', 1496705764, 86400, '', NULL),
('8gvgdagcjthp448if66hitt0h2', 1496740770, 86400, '', NULL),
('8hr0ljse2iatja0uh49hei1t83', 1496718841, 86400, '', NULL),
('8is1hh2kll7imknuaqrjmcii02', 1496722760, 86400, '', NULL),
('8lgh26v01vtn01jiia4d2nqk71', 1496718108, 86400, '', NULL),
('8n42pdd064mhfjun93tqlauoo5', 1496727744, 86400, '', NULL),
('8nc3lq0pdl1skocia72re5esd1', 1496717387, 86400, '', NULL),
('8oeooq7culdo76j1ggrnrdfqs4', 1496737331, 86400, '', NULL),
('8rl6hm5svabtdao69r35k6q9o0', 1496717688, 86400, '', NULL),
('8sktbc784c2hk3ktl08ru152o6', 1496724397, 86400, '', NULL),
('8t0n5f5f7j2agntp3i0mnuime1', 1496735204, 86400, '', NULL),
('8tk2np3p6bqmttt82u7ob57gq3', 1496714204, 86400, '', NULL),
('8tv0mlutoicnaculvdm50gm4v7', 1496722641, 86400, '', NULL),
('8u11j49rgq1ns645b97fnqgkl3', 1496722334, 86400, '', NULL),
('8vfjuf9jtbpcia379n92tg5bp6', 1496722455, 86400, '', NULL),
('9083ova3m9o9dam7c4pipqg972', 1496658105, 86400, '', NULL),
('93pcp7cir6dmm47p9v5at5i574', 1496723560, 86400, '', NULL),
('9430tiuhf2eh22iu8ucmkado33', 1496652364, 86400, '', NULL),
('954v1kvt37n3p10nq89p6a4ng5', 1496716881, 86400, '', NULL),
('968ftbutuhm70nv8rh1474e727', 1496707578, 86400, '', NULL),
('96s5c2hgp66su148ib5bg1b1l3', 1496715151, 86400, '', NULL),
('97cloqb53rn4n3ipp25tt1udb0', 1496708085, 86400, '', NULL),
('97ol3uqhn6ou2co8npsjhp3sk5', 1496719641, 86400, '', NULL),
('9b9knhn8vnnf4jl9trsf7q3bp4', 1496734380, 86400, '', NULL),
('9bcjd9f4hp1d8n52rv22fbvoc0', 1496737705, 86400, '', NULL),
('9c43e2d8891f0c5d0657de469c4e11f9', 1496719107, 86400, 'ActivityFormToken|a:1:{s:5:"token";s:32:"44105503de6009e5bbd91c82054fe79c";}redirectURL|s:19:"/socialengine/login";Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:2:"18";twitter_lock|i:1;twitter_uid|b:0;mobile|a:1:{s:6:"mobile";N;}', 1),
('9g6j5ini3bsp7enl0c40lsutk0', 1496713827, 86400, '', NULL),
('9g97rhuoir7qv7mvs9u13qr5b7', 1496738574, 86400, '', NULL),
('9h0pbsgp3bt0o94ulp8j392nc4', 1496730121, 86400, '', NULL),
('9j4n6puvgla1nv2u7q6ltb4607', 1496660112, 86400, '', NULL),
('9lahkv6klbfheku8b5v19t5rh0', 1496716336, 86400, '', NULL),
('9lu3oql8k9i4qlvbbdb1h454a5', 1496722276, 86400, '', NULL),
('9nkeonbdnv6jlnt6mn5fmoar97', 1496724139, 86400, '', NULL),
('9npkcofbroapbcnqgp6756lqd5', 1496739003, 86400, '', NULL),
('9orb2set8840gal1i6o3r9ht82', 1496740575, 86400, '', NULL),
('9rik977fial4v8joninvboji05', 1496741347, 86400, '', NULL),
('9u0e8t3utkvp40gtki8eunmo62', 1496714906, 86400, '', NULL),
('9vvj2rjsgqp2uu2r09inqvaic6', 1496653215, 86400, '', NULL),
('a1vhbv9afid721uospt76bcqi5', 1496714457, 86400, '', NULL),
('a35b8npsuhkk6pnb0gn1e7qvf7', 1496734446, 86400, '', NULL),
('a4p663c6c1o82lfkeabi9pa346', 1496653029, 86400, '', NULL),
('a69uu62635mk6f6tbtcajr9rk5', 1496738693, 86400, '', NULL),
('a7k1dact5vosruu772q6bfvqg3', 1496656434, 86400, '', NULL),
('a81klnpfc1s8qosocvk2rbfiu0', 1496659662, 86400, '', NULL),
('abnah85105mfnmbd0rgcqd8v95', 1496740201, 86400, '', NULL),
('acbj3uj2nmk7defgv4tispld57', 1496659331, 86400, '', NULL),
('agjp75p0jh4l4h7lehm5efqdf6', 1496722513, 86400, '', NULL),
('aifbg4j75teompb1q22v85ouh6', 1496726484, 86400, '', NULL),
('akot7ip3rmbij0h2te9if2q3n7', 1496715587, 86400, '', NULL),
('anpelmgjv2lh3qfn658t6mt5j7', 1496725604, 86400, '', NULL),
('b1h9057gctoga9eerose3itgf2', 1496660359, 86400, '', NULL),
('b21t9o6plc723484gr65i8ur31', 1496655877, 86400, '', NULL),
('b34fnnm0ni4krlvvi9r8s4uia2', 1496721592, 86400, '', NULL),
('b4gs3mkoe3g127co93kmo5pol1', 1496658849, 86400, '', NULL),
('b8vrcq1manicjhd5124f94i785', 1496714326, 86400, '', NULL),
('b9q9tnt3p0moiq1fp2ghlf6957', 1496718778, 86400, '', NULL),
('bavrckat6g2gpper8130fmc5p7', 1496718534, 86400, '', NULL),
('bgtu5976cvjhng3k2317nkg3k4', 1496655564, 86400, '', NULL),
('bido6g1adqbudo2optukpbmq52', 1496727111, 86400, '', NULL),
('bjsb6esa348nojpo81gmio6bm7', 1496723944, 86400, '', NULL),
('bmq0ber201d28a5fv1vvu68f06', 1496721026, 86400, '', NULL),
('bopumrbt344am8qchd9eb00rn4', 1496653640, 86400, '', NULL),
('br74u1st8t3ar4ud7rq6dg11e2', 1496718348, 86400, '', NULL),
('brj4aqnffu4ps7ub9vtgnqcpv6', 1496718720, 86400, '', NULL),
('bsgokjrqru0kerc3g510bj7nr5', 1496656066, 86400, '', NULL),
('btksu3p60nn07rvd2uhd4b5t64', 1496737270, 86400, '', NULL),
('bu5a20607rssgubmo2tvee2qg4', 1496734638, 86400, '', NULL),
('bvdmi7aipcaoatea8ouegpsin1', 1496723497, 86400, '', NULL),
('c39d9cefokh5l3c1f7pndflbf0', 1496725545, 86400, '', NULL),
('cbnjnbpq8i28pk1fso7hr7ohr7', 1496740514, 86400, '', NULL),
('cbo5pd2tvv8utqt0l5j787n3p3', 1496724461, 86400, '', NULL),
('cd2u0t06a6b2vrh0q463ihp3e2', 1496715028, 86400, '', NULL),
('cgd54oqki526trpvvhi8481ih7', 1496719387, 86400, '', NULL),
('clk1ph3ovq1p8b1urehlk7u276', 1496724651, 86400, '', NULL),
('cm9jgtscs9s6ieqsbfktjck1u0', 1496655626, 86400, '', NULL),
('cn5027oflvuu8i1hgcktmv5240', 1496735394, 86400, '', NULL),
('copm5vm4lvrh587p0lifaph8t2', 1496716948, 86400, '', NULL),
('cp220akrs690e545f2sr25dj13', 1496722093, 86400, '', NULL),
('cpoqf8kfh6c7s897vsenfp5hk6', 1496725983, 86400, '', NULL),
('cvdh4jak1eqf8ghv6h14pkvgi7', 1496720656, 86400, '', NULL),
('cvsb0prvq5s2cpa4miicd65l46', 1496653579, 86400, '', NULL),
('d0hmt9h744f477rkgf87v3k104', 1496656554, 86400, '', NULL),
('d0vgo19kd0vh0ib5env88hr0u3', 1496716277, 86400, '', NULL),
('d4ukkdvs11m63ndn787ai2cb20', 1496726236, 86400, '', NULL),
('d78f1eejdn5nqs3da7n8ou47c5', 1496720596, 86400, '', NULL),
('d7n2rdsg7p281dbfc2n6vo0nv7', 1496715459, 86400, '', NULL),
('d8ci10kmlflif7ona31dvnjmu5', 1496719570, 86400, '', NULL),
('d8d9v6ouus779m7jkf6m7l94t5', 1496726799, 86400, '', NULL),
('d9bqtootthne602bljjgnui506', 1496718658, 86400, '', NULL),
('dc4garrh46majpgocuj6n54cv6', 1496719701, 86400, '', NULL),
('dgfeeg64jdt38spj9nqibk0ua4', 1496716761, 86400, '', NULL),
('dhmgj3cctg78ksu4vsdgi2bt63', 1496658777, 86400, '', NULL),
('dj7sd1hh4emknjbr3j5jvt5365', 1496736444, 86400, '', NULL),
('djc3j40cejokp28tkd03bg3bu0', 1496707832, 86400, '', NULL),
('dje304hl1d7pgkiamme7vee896', 1496707146, 86400, '', NULL),
('dqg2qeg2vrferju3i2t14e3ns7', 1496728837, 86400, '', NULL),
('dvalgvdpqe5maq4s3ou7dvokn3', 1496659469, 86400, '', NULL),
('e1sdmro9oubti2v4cpje2q00f1', 1496660234, 86400, '', NULL),
('e4b3rdaseec9rrubd4frfdu561', 1496658477, 86400, '', NULL),
('e4fe38mvhlitovervm8kmjunc0', 1496714393, 86400, '', NULL),
('e5q9r3t77866mhid289pndnin6', 1496736831, 86400, '', NULL),
('ecb4t9bnfhjscccp84u0rjgan4', 1496707016, 86400, '', NULL),
('ed5r5vdirs2me0o3tr20eeu1d7', 1496737144, 86400, '', NULL),
('edrqftho0tpl9sjn6ifn5dbrh3', 1496729985, 86400, '', NULL),
('ee408l2qrusngd5q7u0db48q00', 1496726612, 86400, '', NULL),
('eemlnt9nitad0f4j791pgq67n3', 1496653954, 86400, '', NULL),
('ef391tuark4ld65n7nh8dvl3r3', 1496740137, 86400, '', NULL),
('eg07pv9aqkd49k6eqac374lmq0', 1496653822, 86400, '', NULL),
('eh4r6ce44irq20ahfa3lb8n243', 1496709466, 86400, '', NULL),
('eif5jrfp22416u8frjrnvr8935', 1496721092, 86400, '', NULL),
('eilepiv94jns4qsbq5qc7p2jo3', 1496734759, 86400, '', NULL),
('ejsmi4fe4qi9hcnf166hmo9qi2', 1496705333, 86400, '', NULL),
('eljfhuodgek8bs2vuc50c6uco4', 1496715394, 86400, '', NULL),
('em4ke06jtis445jogot604ntk4', 1496658417, 86400, '', NULL),
('eqe5aelm6kc0aj7n7s5pkuovp5', 1496728639, 86400, '', NULL),
('eshcqrtm3fsj1fe4gqb26molk3', 1496655945, 86400, '', NULL),
('evmfuqaqgq5vr4p6d6c7rj2541', 1496736114, 86400, '', NULL),
('evslvek584d5d95l12tohmavf3', 1496660562, 86400, 'redirectURL|s:19:"/socialengine/login";ActivityFormToken|a:1:{s:5:"token";s:32:"ae31d1e9e352719d7c0397ca4bc8684a";}mobile|a:1:{s:6:"mobile";N;}Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:2:"22";twitter_lock|i:1;twitter_uid|b:0;', 1),
('f1f8ia21sjudc3pij1lafijfa1', 1496652666, 86400, '', NULL),
('f21kr15o68do6snf26li8h1qk7', 1496718898, 86400, '', NULL),
('f4akvo0455b6ovbdb3jd821so5', 1496723881, 86400, '', NULL),
('f4e9u6org1als9kj4lvu8dobo7', 1496734576, 86400, '', NULL),
('f7ika60qhaprmbv1cn4ohven73', 1496653458, 86400, '', NULL),
('f7k8fhsap7sfhvqrtc2gaajri1', 1496729152, 86400, '', NULL),
('f8nabossarjhdqg9n4hk1mcli5', 1496715338, 86400, 'ActivityFormToken|a:1:{s:5:"token";s:32:"842b3e9748dc3674fb6d17b8b8b6b566";}redirectURL|s:19:"/socialengine/login";Zend_Auth|a:1:{s:7:"storage";i:3;}login_id|s:2:"28";twitter_lock|i:3;twitter_uid|b:0;', 3),
('fbt194dmsaiohohlk45j32m181', 1496658286, 86400, '', NULL),
('fd2anakkkaoei8ofdaek9k8cr6', 1496722395, 86400, '', NULL),
('fd53cq9cgc6skfbqg3iv9fl951', 1496739067, 86400, '', NULL),
('ffq1qggkqi62irof3jkmffgf43', 1496716100, 86400, '', NULL),
('fgp85kuqbkau4481fnalkjs056', 1496716516, 86400, '', NULL),
('fhd0rti62c9kfd6umrks3njt12', 1496725665, 86400, '', NULL),
('fhms3uv8f1ungbvq6duq8uu923', 1496727932, 86400, '', NULL),
('fj59o6k1tickqpcohjta0l6vn4', 1496717447, 86400, '', NULL),
('fj61bu1vjf48p4fc2hl8jjl4a1', 1496736377, 86400, '', NULL),
('fjiduupp5rm7jqnmr4cj1jjlk4', 1496717079, 86400, '', NULL),
('fl5ufhc3ea7j7tupb0id8si1f2', 1496727245, 86400, '', NULL),
('fnahh88ti2o2l3ajnkr1tfqbv4', 1496730304, 86400, '', NULL),
('fnoelr7420sgfq616mf96dtlk3', 1496737825, 86400, '', NULL),
('fo68sjk88h1q3oecgjc35v1cp4', 1496713576, 86400, '', NULL),
('fpk24q7t7v1dqevqu9dr49css5', 1496739247, 86400, '', NULL),
('fpt57hbrttgf1kcr96ki1erg56', 1496656917, 86400, '', NULL),
('fqvtm22e609ipuh3od1kjp3i14', 1496727374, 86400, '', NULL),
('ft0hcb957hq9j4lqo3jo07ra40', 1496726298, 86400, '', NULL),
('g344um66c9spu316qb1sk3ksn3', 1496730422, 86400, '', NULL),
('g3sa6718229qtpt909ibklvdr7', 1496738634, 86400, '', NULL),
('g62b2u5f5b1vu778vf67gdjta2', 1496728445, 86400, '', NULL),
('g70tlr6sncj5klc6fu227764t3', 1496741093, 86400, '', NULL),
('g8g0cm5suveae2n7n7bu91cej2', 1496727682, 86400, '', NULL),
('g8g95gd68eofnn7b2ufj0s6771', 1496724072, 86400, '', NULL),
('ge6t3eiboiceog272ma3dotk75', 1496717748, 86400, '', NULL),
('ghlm5eqha3jim9284hc3ka7qj7', 1496741411, 86400, '', NULL),
('gi58jfpqrnh3gb4tennvnrubc2', 1496718228, 86400, '', NULL),
('gncb9pmm2gvvqlanq1gtdr0qb6', 1496654255, 86400, '', NULL),
('go10il4b8mroqhavr83blhahq4', 1496730242, 86400, '', NULL),
('go8h7jfe84fgac9iifhvc49rq1', 1496659984, 86400, '', NULL),
('gp26p1fjb0k5edepfv8r80i7n3', 1496652727, 86400, '', NULL),
('gq5bv4nbbhaqsej2m39gjttio1', 1496720837, 86400, '', NULL),
('gqc3fslhoqtrnl934acgodbcc4', 1496659272, 86400, '', NULL),
('gtft18il1br06cv3j2d3na1j45', 1496713453, 86400, '', NULL),
('guhms6lv2m5higjgfmtebn1v62', 1496715782, 86400, '', NULL),
('h078rfsjlqmd6u7bq4bd7ib9t3', 1496708961, 86400, '', NULL),
('h0tna0ll7gnk62q9mdj8obgrt6', 1496655819, 86400, '', NULL),
('h1qs1klbj29lb34aphpo08c5f2', 1496657045, 86400, '', NULL),
('h2fgk7g6dt9puouhb2vn15lnn6', 1496716158, 86400, '', NULL),
('h3ftie75a0h01lg97dk5b4agm4', 1496655051, 86400, '', NULL),
('h6gis83u1o3tak4ivb4mfks5p0', 1496726109, 86400, '', NULL),
('h6prvbn9lajo4hft9av9bmmhk0', 1496738322, 86400, '', NULL),
('h794fukpccrgv9op7r06cjkt25', 1496724207, 86400, '', NULL),
('h7hh79rloptri4gdtbprtmp3e0', 1496735074, 86400, '', NULL),
('h7sqqjgrl67ikv4upr17ar47s4', 1496657525, 86400, '', NULL),
('h8isjadip62npbe6ea7naoopm1', 1496705834, 86400, '', NULL),
('hbbf6d11ormv9ja8ijh958q643', 1496719019, 86400, '', NULL),
('hbju1nului1i2u3t494o9selp2', 1496728903, 86400, '', NULL),
('hc04bifvgsrcv66ihgb5s5kus6', 1496720896, 86400, '', NULL),
('hjibu323roq3unpus79i78ijc5', 1496729666, 86400, '', NULL),
('hk19fn7jtb7m0g0ebcrvc0m001', 1496715091, 86400, '', NULL),
('hk2hi41bnf76sf4k5sbs3ijju1', 1496656857, 86400, '', NULL),
('hlt00v2kq862lo660dmq3ljci2', 1496728381, 86400, '', NULL),
('ho4l7rpd5is617itur90511081', 1496717928, 86400, '', NULL),
('hr2va930920j7aoebr4aio2mp7', 1496709084, 86400, '', NULL),
('htaamocri7dg32d5u8tthikrd7', 1496723088, 86400, 'ActivityFormToken|a:1:{s:5:"token";s:32:"64b816f7878931a8d32a674a458be88f";}redirectURL|s:14:"/socialengine/";twitter_uid|b:0;mobile|a:1:{s:6:"mobile";N;}Zend_Auth|a:1:{s:7:"storage";i:15;}twitter_lock|i:15;', 15),
('hvtdu909875c6mec82mdvd4eu0', 1496705468, 86400, '', NULL),
('i1tpuvdm157c76788t98lvuo22', 1496658045, 86400, '', NULL),
('i8ja2oqu6klorjq274sru3g8b7', 1496727622, 86400, '', NULL),
('i9kgah5hkb4hrucneh5nhippr0', 1496723060, 86400, '', NULL),
('i9oeebfq5go4m544oea861bl36', 1496658225, 86400, '', NULL),
('ide56co2pr0v057iuncukq4q50', 1496722881, 86400, '', NULL),
('ie6cvkufto9ln1vos0jrhmauc0', 1496739311, 86400, '', NULL),
('ieueoqiuild0dq1g60i7fpooo3', 1496736056, 86400, '', NULL),
('if7sdhq619outs2mil5qm3e6g3', 1496735875, 86400, '', NULL),
('igf2j48pjjf1hskse8ekdngjd0', 1496728193, 86400, '', NULL),
('il0n8vbhs06oflcdvn9lpb9sb4', 1496717073, 86400, '', NULL),
('imfn66navtp6ejc9sd38t4fkq4', 1496656494, 86400, '', NULL),
('io6ummuvh32r2ene6umrmisj93', 1496657225, 86400, '', NULL),
('ion36vncq17rs6pq53sh8fmoh2', 1496723819, 86400, '', NULL),
('ipkd41mn7g0qktgfi739jja1h1', 1496656254, 86400, '', NULL),
('iq8ejchgk01e038hqgomgqpet6', 1496734509, 86400, '', NULL),
('iqbj2vr52rfek09md83sl87r93', 1496652787, 86400, '', NULL),
('iud8mcie60v6evmrm3v3jtt8t1', 1496725919, 86400, '', NULL),
('j1eh3bsjqte7g6uur616eu7nk0', 1496658164, 86400, '', NULL),
('j2srvh6vk5g004957f877mtko7', 1496717988, 86400, '', NULL),
('j3ngattllojj39v6eelgfjgg90', 1496656798, 86400, '', NULL),
('j5702alfng75kk1gn7ip02q2b5', 1496716218, 86400, '', NULL),
('j9172b0sdbfjkqoquuu2jgkej3', 1496719837, 86400, '', NULL),
('jb0b43n9me1np89vdcnnbi6hd5', 1496728256, 86400, '', NULL),
('jeh67hmplp8thii966p6dl2ba2', 1496717808, 86400, '', NULL),
('jinloei1df1lt073b5hss8tt41', 1496659212, 86400, '', NULL),
('jjg8ujotj65ufqvachgrmkdnb2', 1496729226, 86400, '', NULL),
('jjr7emq9jjd9eqnjer9gq64lq6', 1496654630, 86400, '', NULL),
('jkrt09bujd2u8mahluj22637b1', 1496723251, 86400, '', NULL),
('jmu62htg569uaeiqp18bjvvmi0', 1496739186, 86400, '', NULL),
('jp5fbmajj7486ku2jgm2250m20', 1496726674, 86400, '', NULL),
('jr1vjsik54heb77rv87qhickj6', 1496728062, 86400, '', NULL),
('jtk7l1n95q1kf8gsh88hr5k742', 1496653154, 86400, '', NULL),
('jttdq6kfig1nch07vtgsg2l3h4', 1496716456, 86400, '', NULL),
('jubc6uv9so33241k3e1gilp6o1', 1496657345, 86400, '', NULL),
('jv7ellepafi5ig4lv4kn9onk81', 1496740965, 86400, '', NULL),
('k27gvif03o6f5om3gjhhadevi0', 1496653274, 86400, '', NULL),
('k4o8dfdkntcv0usf7ej85oqvi5', 1496717326, 86400, '', NULL),
('k5sgoruqilbqc41ehbrqjah3h7', 1496722939, 86400, '', NULL),
('k6iov3i1lqd1jc6s3dt0mqemd3', 1496728574, 86400, '', NULL),
('k7om78p2jsultd7mjubjp58881', 1496707207, 86400, '', NULL),
('k89rpjku0ehr1glahvv2r1au63', 1496709593, 86400, '', NULL),
('kgbfea9b4aao8jhmv4i1qv90i0', 1496740265, 86400, '', NULL),
('kgt2f3b5tijj009ej1qocftlo0', 1496739755, 86400, '', NULL),
('khcstfg88rvlasp3cnkkachs92', 1496741284, 86400, '', NULL),
('kj3j3ke42nis54js5lp3nre160', 1496718408, 86400, '', NULL),
('kmgof70f9up58nkpv0mavsj4c4', 1496736956, 86400, '', NULL),
('kof0dglef6l3tabmf995m40940', 1496720477, 86400, '', NULL),
('kpbeh22c9o08fvjovact5p9852', 1496657986, 86400, '', NULL),
('ks8clsniv5arkqti2au1oma9i3', 1496705586, 86400, '', NULL),
('ksiq7041g9qqu0t1iv6o4ii7s0', 1496735574, 86400, '', NULL),
('kslqav5rb9rkch08t3o64p6g80', 1496715845, 86400, '', NULL),
('ktcorbii8ol96cblf3j5kvsta0', 1496708954, 86400, '', NULL),
('kulfn1e1k3v5m66s1f9g9gloh7', 1496713701, 86400, '', NULL),
('kvuepj2kkim2l4p9h68a87ehg4', 1496725792, 86400, '', NULL),
('l0gfv99u5v3stooprum21mrsp2', 1496737210, 86400, '', NULL),
('l31u933lr2856nhmilq9i2on21', 1496658536, 86400, '', NULL),
('l39kbjgqb8mce0jsgbo33hhc16', 1496657926, 86400, '', NULL),
('l5c0veq6vltji8hl40fp7f6fd6', 1496736639, 86400, '', NULL),
('l5pi8p1993akenguoa3bknj963', 1496707769, 86400, '', NULL),
('l5v0cg71oa6pks9snht210sld3', 1496741477, 86400, '', NULL),
('l8jttuohd544s1dnud6cqb47o3', 1496728963, 86400, '', NULL),
('lb98o2khusslm20hki2ivjbnh1', 1496735695, 86400, '', NULL),
('lbvd9o8jusop2dmv8sfd4f1hl1', 1496660546, 86400, '', NULL),
('ld8jk6fqdd4q02n9o5tjp40gs6', 1496740844, 86400, '', NULL),
('legp9tofjo2e2ifcbq3jnk62f6', 1496706504, 86400, '', NULL),
('lkf9o6r561a427tmj583o39k90', 1496729287, 86400, '', NULL),
('lkng4tt7e7lv4jrcelj67961j6', 1496654750, 86400, '', NULL),
('llb5mqe8r5up6fg2nl0eb8ad41', 1496720344, 86400, '', NULL),
('llnmvnucpg8i5l252csf8ehjq0', 1496730049, 86400, '', NULL),
('lmu0n4879gs5cbh1klmqa4rat0', 1496723375, 86400, '', NULL),
('ln8jfil7blmebbo73d28vdr8i3', 1496730741, 86400, '', NULL),
('lnedim3rkfngep1p7579k997c1', 1496721275, 86400, '', NULL),
('lnhqfosn31fop13dii69uibsi5', 1496736890, 86400, '', NULL),
('lpb1u68guctliik3lqtlj24252', 1496735515, 86400, '', NULL),
('lpm1r4d7i3oc1no468hqp0guf2', 1496739886, 86400, '', NULL),
('lsv9tog3k9fv1i8tv704jvdh03', 1496738383, 86400, '', NULL),
('lvdt8q6t4masj4stne1fn6qhc7', 1496737077, 86400, '', NULL),
('m441sl9f8km12onp2i2kbeul14', 1496657796, 86400, '', NULL),
('m571qp6infeskjajh4s9tppm43', 1496654017, 86400, '', NULL),
('m695da273r1cujd4561opkru64', 1496655489, 86400, '', NULL),
('m7ceqvdmcnnefhlgomhvgiqa81', 1496734819, 86400, '', NULL),
('ma1fjju7a2gh65h5k0ojs7ds71', 1496726358, 86400, '', NULL),
('mcpa3addl0cu458ve8cu413uq5', 1496717146, 86400, '', NULL),
('mdhevam8k9s1t78h4pohl0hco7', 1496657044, 86400, '', NULL),
('mea1ojp9g2devvut8nsimfq2l2', 1496657166, 86400, '', NULL),
('mi9if9l1oqku7ud2qfc32e6gi5', 1496653087, 86400, '', NULL),
('mlcik11o3boc3vqt4of6m9e197', 1496735267, 86400, '', NULL),
('mn3ude2l8m8ra63hgru70bj3p6', 1496738514, 86400, '', NULL),
('moa2k1r7icogefkfdq277q6q12', 1496723622, 86400, '', NULL),
('mpsth10s7tvuc1rrsn2iucpk20', 1496738874, 86400, '', NULL),
('mpvn1daiqkgild8k7p9ilj13e4', 1496652603, 86400, '', NULL),
('mr6siqo42huru8shcgta7gooe5', 1496726920, 86400, '', NULL),
('msfh4rqri8bhsjuoeg26qegde7', 1496741477, 86400, 'redirectURL|s:19:"/socialengine/login";ActivityFormToken|a:1:{s:5:"token";s:32:"567ca307dd77b6bf37a88fc59b82d2cd";}mobile|a:1:{s:6:"mobile";N;}Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:2:"27";twitter_lock|i:1;twitter_uid|b:0;', 1),
('mvlftmtln4hic2r51vp25kipv6', 1496734883, 86400, '', NULL),
('n08pue1shojs3l8aasqrf0lln2', 1496656675, 86400, '', NULL),
('n3bljbravlsjronk8obmgr4r47', 1496726047, 86400, '', NULL),
('n5tqsicseeib7thg2r54e92337', 1496738066, 86400, '', NULL),
('n8vck58aq12ijmoh4vlrs0daj5', 1496657466, 86400, '', NULL),
('ndpuibmpj1ghvib0ri1tha0653', 1496739498, 86400, '', NULL),
('nefrjfioq2f0hg3kv8181jnf05', 1496725424, 86400, '', NULL),
('nf6mdk2646i65914dstf1fd4d5', 1496653335, 86400, '', NULL),
('nfbtavmaduvnvk41ddc97nn9v5', 1496658912, 86400, '', NULL),
('nh4hoetenk77liuvcm4eauibt5', 1496718169, 86400, '', NULL),
('nhn6e1huja1dnuk1e1o7dev183', 1496738973, 86400, 'ActivityFormToken|a:1:{s:5:"token";s:32:"517c5999b266ab2b88b1e005fb37d718";}redirectURL|s:14:"/socialengine/";twitter_uid|b:0;Zend_Auth|a:1:{s:7:"storage";i:19;}twitter_lock|i:19;', 19),
('ni337a7m5rdt2ppcgvmaig8ul1', 1496657792, 86400, '', NULL),
('njvg2720uajln6q3g45ie73a03', 1496735635, 86400, '', NULL),
('nk3uckc6tehk9df7r3ampo81v2', 1496726983, 86400, '', NULL),
('nmgm93nfhpeqpm09fc98caee15', 1496737645, 86400, '', NULL),
('nq5cjrhpd2jsg2uvq79t2fpr07', 1496726547, 86400, '', NULL),
('nu9u852c3s0he28ah02p8tcve6', 1496719451, 86400, '', NULL),
('nuguamo2fbifl1rteu24igg2c3', 1496718048, 86400, '', NULL),
('o06fmp5ivb8ogpngajm16lppc5', 1496723314, 86400, '', NULL),
('o0n68agdeeus7ehqlosjli14s6', 1496730180, 86400, '', NULL),
('o2obfsgu4k8kks252dua445se2', 1496714967, 86400, '', NULL),
('o3lg27v5ells48712hdf0mccg5', 1496707960, 86400, '', NULL),
('o5qi02ohk6kb416vqrapnq1i90', 1496709529, 86400, '', NULL),
('o6f0q9l9icdv936fmqq4cdoi10', 1496740393, 86400, '', NULL),
('o8i29o7e7flhs6rtkg736ilms7', 1496713957, 86400, '', NULL),
('o90tjaoic1u02apm0utmqbp6k2', 1496719141, 86400, '', NULL),
('o94qddcu1ii52m8biocrmn1k44', 1496729356, 86400, '', NULL),
('oacjdimkhdctoup98nq9vjjlc1', 1496730677, 86400, '', NULL),
('ofae2lj1f9sega91r3285u66r0', 1496735995, 86400, '', NULL),
('oi7b6u0psmipr8ls5p9ms9r892', 1496724982, 86400, '', NULL),
('oia8c60bno6sv5v0qm79fceqf5', 1496730486, 86400, '', NULL),
('oir0o4gp7oklphhtkaut32aaa5', 1496738128, 86400, '', NULL),
('ojghcrv7ekmj9oa6ni8f264d74', 1496660172, 86400, '', NULL),
('okedpp1j69h4pun0teeqngto01', 1496652543, 86400, '', NULL),
('ol40ed8p1sqpgh3uu33lfq3k77', 1496659408, 86400, '', NULL),
('oo6km5dpaic1kp68up1ktaoq00', 1496716700, 86400, '', NULL),
('osss5hqr9u5jnj70hhr5c1c0t2', 1496724525, 86400, '', NULL),
('osu8b795rm9p25o577lhoe6sp3', 1496653760, 86400, '', NULL),
('otof3pl7pm30vecsv21n60u5d0', 1496715909, 86400, '', NULL),
('ov4adtq9g9hp52homihuam7bc7', 1496706633, 86400, '', NULL),
('ovb534n6khuip861hh0jktkmq4', 1496713515, 86400, '', NULL),
('p0tv9o3n9pa3c72b804omua604', 1496725115, 86400, '', NULL),
('p2rot6akh8gjjr7tm7n9kn0b73', 1496707330, 86400, '', NULL),
('p54p87dbaqejea4cb0iofn1mu3', 1496738451, 86400, '', NULL),
('pfpek9hd1l6l6hvbcti11oc8e5', 1496709020, 86400, '', NULL),
('pgqtvuh92jsls9u7outun0kq66', 1496654135, 86400, '', NULL),
('ph36jbur3q9c1bc1v1ldh7c4f4', 1496660421, 86400, '', NULL),
('pj9qql2kk0veret405uk9lkiq1', 1496654931, 86400, '', NULL),
('pktt7hdcu7h1s2m5qb3orkbek6', 1496729542, 86400, '', NULL),
('pmmjkrunskekeo5getfrdh1rq4', 1496738754, 86400, '', NULL),
('pmn4o0l1hc66eoai41f6af7af5', 1496654314, 86400, '', NULL),
('podh0btr10i77qf5jbsolhedp6', 1496717508, 86400, '', NULL),
('pojj3tqmt5dt0oegckmu8onjv3', 1496714654, 86400, '', NULL),
('pqg9t1jgujf4ektof20ctm9016', 1496654870, 86400, '', NULL),
('pqnic6ib3v8j7129hp7bioekq2', 1496721531, 86400, '', NULL),
('psd3hnc3u8gi1oi20dh3k5t3b3', 1496709211, 86400, '', NULL),
('pv629k8g7s42fkm61va1q7gv45', 1496736765, 86400, '', NULL),
('pvubbhgclgsk76rmp41m9fsbs0', 1496739567, 86400, '', NULL),
('q24mirdlkre6im2ptduqo9opm7', 1496729605, 86400, '', NULL),
('q7g8jjrhma110f88pkjsi5c2r5', 1496654375, 86400, '', NULL),
('q8je3a0h1uvii1l0ql1j42uc32', 1496654448, 86400, 'redirectURL|s:19:"/socialengine/login";ActivityFormToken|a:1:{s:5:"token";s:32:"e79598b65757b19786ccae3a2339dafa";}mobile|a:1:{s:6:"mobile";N;}twitter_uid|b:0;Zend_Auth|a:1:{s:7:"storage";i:3;}login_id|s:2:"25";twitter_lock|i:3;', 3),
('q9t9ao2mjatrughltb9thsto07', 1496655359, 86400, '', NULL),
('qaa4a6t9o4dui9t99c5fkprg52', 1496727436, 86400, '', NULL),
('qche4jedueuvbvqnv3gh56kv91', 1496658657, 86400, '', NULL),
('qf0ju77it6m3vq2pmndje32p37', 1496737017, 86400, '', NULL),
('qh4ck6dt7l2tpdlr33gcsit1i5', 1496738262, 86400, '', NULL),
('qk8rpg2p7a4ig5573hpgedrgd4', 1496717266, 86400, '', NULL),
('qlqglk36fjk1q2e9bu3s9q7ab1', 1496657585, 86400, '', NULL),
('qm96vb8f1304lb4gsl04bo9cn4', 1496722216, 86400, '', NULL),
('qnvavcvgg5dguuq80j7s3cjuo3', 1496722820, 86400, '', NULL),
('qpk0vl51emt9gug3r2pppof3t0', 1496723755, 86400, '', NULL),
('qu9un0hjopss83u88hibja9p65', 1496655427, 86400, '', NULL),
('r1ah5cpeu8cmihdhk8plhcm0d5', 1496741155, 86400, '', NULL),
('r1o1l8j44m0urluugb0998pk46', 1496727047, 86400, '', NULL),
('r2vattardbqtaqrgvgbh8lcoc6', 1496721890, 86400, '', NULL),
('r33fbiace9qi2qr9hf1uo66612', 1496721087, 86400, '', NULL),
('r35od87ks2jvjjutoa8qgj0hb4', 1496706439, 86400, '', NULL),
('r71cgidba4n64su37dftcgieo4', 1496705826, 86400, '', NULL),
('r92sufgsdo56pu8l93cda5op13', 1496719202, 86400, '', NULL),
('r950ilrd40ghp28d3qdv5ccud1', 1496709148, 86400, '', NULL),
('rd1qq1774o72inco5i5mhjlq05', 1496652968, 86400, '', NULL),
('rdvk8j10ek5o6ulfvvqnnjku70', 1496729727, 86400, '', NULL),
('re2ioc0nbj4e7fiol08enf6bi3', 1496709402, 86400, '', NULL),
('rhj1ue9n3c7lgamupg5ftsui31', 1496705705, 86400, '', NULL),
('rkpbr1s88emqu382875lqa0s01', 1496660044, 86400, '', NULL),
('rmgaimqbnmp5pr638m65d62m60', 1496716395, 86400, '', NULL),
('rmpncmtujjcpludlkm045bd963', 1496715971, 86400, '', NULL),
('rn1gemk0hca3ed5d8i7opb69c7', 1496720955, 86400, '', NULL),
('rnm3pdbac5jmbalafoogpl4u04', 1496657406, 86400, '', NULL),
('rpkdaa42blj6vhbepuib5c36v4', 1496653823, 86400, '', NULL),
('rqdq4ojhlk7kv3efpblulpgs32', 1496727807, 86400, '', NULL),
('rqrrpbol1l1tkjjt8m6nkigem7', 1496727990, 86400, '', NULL),
('rs52sulel0jhhk73kf65h3o3o3', 1496654435, 86400, '', NULL),
('rtjdgp5jpou4ifjckomkpq9730', 1496707085, 86400, '', NULL),
('ru1e44lj0305l36edht9s2ug75', 1496725365, 86400, '', NULL),
('rv5h4ebo6mmkj8bjesq10gkkv6', 1496721465, 86400, '', NULL),
('s0it8p6tlqfhlvihbj7lu4fj42', 1496707703, 86400, '', NULL),
('s1c72145usj9n2bq4gm0reusi3', 1496714265, 86400, '', NULL),
('s45ggh3n9b59ibbj0te3k3dq86', 1496707516, 86400, '', NULL),
('s470vlmco5m3lql8sj041q4us4', 1496652847, 86400, '', NULL),
('s6mrb4ma8d35ho9lstog5um0r2', 1496657106, 86400, '', NULL),
('s90281g0g2fo3ke8efj9ddt060', 1496718599, 86400, '', NULL),
('scgh0kmv63nmdnirjs9lf5ckl7', 1496655111, 86400, '', NULL),
('sd7ti5tdpdl0d7qtp4jflphrq6', 1496734446, 86400, '', NULL),
('sda0oqcf2iofb7ndh8cej0o8b0', 1496736175, 86400, '', NULL),
('sdf20btgse4bbum9fa1fa8lch1', 1496656614, 86400, '', NULL),
('sft42f505ob1d3moo7m0dj1o61', 1496741220, 86400, '', NULL),
('si69161djbof7isks6l9dvl822', 1496728702, 86400, '', NULL),
('sir840hkgecc4qovcps1oeuj35', 1496653700, 86400, '', NULL),
('sivubbi3tqi4k65el6ji5mnj00', 1496725729, 86400, '', NULL),
('skef410coh8ejlhidubi0l21l2', 1496713763, 86400, '', NULL),
('skht74minamhiglldp13nrje27', 1496709338, 86400, '', NULL),
('slk0ksjkbcmk5n4bm1m69ac9b0', 1496736705, 86400, '', NULL),
('slmja0o85fan2p54kvath2rbk4', 1496715651, 86400, '', NULL),
('sloa9lv0kd5b7vdsveo6ht8103', 1496722576, 86400, '', NULL),
('sm0r20l95dntgts9ko6ivcb0t7', 1496717010, 86400, '', NULL),
('smaqu29pno9mie5h4gjakanv94', 1496706758, 86400, '', NULL),
('smkdr2mgu0io5blp6ituei5ed7', 1496738938, 86400, '', NULL),
('snnto5648u62n8v46ard0j9pr1', 1496659854, 86400, '', NULL),
('srkdirm4bdj4bo5trg8oqpbr75', 1496721404, 86400, '', NULL),
('su1cv0i0psl3j0ueka3qudv2f1', 1496720776, 86400, '', NULL),
('sugce40bgcimvqiq2ifea0qe97', 1496718470, 86400, '', NULL),
('t0t3h77tiq9qlo28n5n3phug62', 1496655756, 86400, '', NULL),
('t1rg46gq59peqm7cfhdpbhblj1', 1496655296, 86400, '', NULL),
('t4kdvqa78emi7cucigr4v1jbk2', 1496706882, 86400, '', NULL),
('t7835lq0id0pfcvn738k7ndmt0', 1496715522, 86400, '', NULL),
('t7m1fsq0dt08fk5sjes3j45ft5', 1496706569, 86400, '', NULL),
('t869lv6sbpst9h3q65081s9185', 1496657286, 86400, '', NULL),
('t9n43l0dvocb8b6a189gdmjkj3', 1496654194, 86400, '', NULL),
('taoh0c281f9dulf77coru755i6', 1496714019, 86400, '', NULL),
('tbftih0hfpjho9tjakjr2ppd93', 1496737885, 86400, '', NULL),
('te5mfpitrgnpq1v045u6m63pa7', 1496728776, 86400, '', NULL),
('tepifmubi71uk4jqs236lb27q3', 1496730362, 86400, '', NULL),
('teqlsjc82vlfsn0p185b88g8t4', 1496724977, 86400, '', NULL),
('th1cdk3p6g2b43pcj2k27lvdr1', 1496720536, 86400, '', NULL),
('tjhqd4nntu2qajr6j03rv9vmv1', 1496718288, 86400, '', NULL),
('tkk2hodqcq2r5j0v5d8edc3q34', 1496725043, 86400, '', NULL),
('tlga24b5eqci8ulh87bdobhu45', 1496725484, 86400, '', NULL),
('tlrp957590ka6jt1oqmsospq72', 1496654990, 86400, '', NULL),
('tq5k7sbus99io1rdm7uoeqf2e2', 1496734698, 86400, '', NULL),
('tr2gvmp3jra7pa7kp5qn7oau40', 1496737455, 86400, '', NULL),
('ud4hfeib9v0gbrk74uei6gprl4', 1496707389, 86400, '', NULL),
('ufqn4c2p99f6emddk40lq220e2', 1496740330, 86400, '', NULL),
('unl84l3eo3bn09c7e845l4dpc2', 1496723122, 86400, '', NULL),
('unmssqem1posslabe88acjkig0', 1496720152, 86400, '', NULL),
('uo1iatv80kphlalq6fb001msn2', 1496740012, 86400, '', NULL),
('uqaj13f4kmbm6r3h8dai61p3r6', 1496654809, 86400, '', NULL),
('uquhq3rm4aac8k7nfrijuscb04', 1496713638, 86400, '', NULL),
('ur1grg1j5kk828lq1dvm7nqii5', 1496652422, 86400, '', NULL),
('us676nq0nf15tagef4t8dt8326', 1496722881, 86400, '', NULL),
('v6q3koc3acbrt0vv383319cpd0', 1496718959, 86400, '', NULL),
('v84dcoj2kj368mg4qv5lnlcnf6', 1496738006, 86400, '', NULL),
('va272t11tk9gfqtuqcaf7l16q0', 1496737390, 86400, '', NULL),
('vbgs57o4k9nm0scuthj9th0hm3', 1496735327, 86400, '', NULL),
('vburlo34b08m87c7gp17fc6qp4', 1496657866, 86400, '', NULL),
('vhri45k8su8u4i1mu8fc59dtk0', 1496656738, 86400, '', NULL),
('viiqk8jg7us12oko6oelbobca6', 1496719965, 86400, '', NULL),
('vm02tpqckribt41bnk3q8ok8n1', 1496721966, 86400, '', NULL),
('vm7dkhr6crp09esegqr7go52k3', 1496714531, 86400, '', NULL),
('vr7rp9vnt2hi4gefujoedlfbd2', 1496658971, 86400, '', NULL),
('vtbrne7evnh9lksn4kpasljis0', 1496729860, 86400, '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_settings`
--

CREATE TABLE `engine4_core_settings` (
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_settings`
--

INSERT INTO `engine4_core_settings` (`name`, `value`) VALUES
('activity.commentreverseorder', '0'),
('activity.content', 'everyone'),
('activity.disallowed', 'N'),
('activity.filter', '1'),
('activity.length', '15'),
('activity.liveupdate', '30000'),
('activity.publish', '1'),
('activity.userdelete', '1'),
('activity.userlength', '7'),
('advancedsearch.sort', 'user'),
('appmanager.sandbox.mode', '1'),
('apptouch.use.dev.scripts', '1'),
('avatarstyler.usage', 'allow'),
('core.admin.mode', 'none'),
('core.admin.password', ''),
('core.admin.reauthenticate', '0'),
('core.admin.timeout', '600'),
('core.doctype', 'XHTML1_STRICT'),
('core.facebook.enable', 'none'),
('core.facebook.key', ''),
('core.facebook.secret', ''),
('core.general.browse', '1'),
('core.general.commenthtml', ''),
('core.general.notificationupdate', '120000'),
('core.general.portal', '1'),
('core.general.profile', '1'),
('core.general.quota', '0'),
('core.general.search', '1'),
('core.general.site.title', 'My Community'),
('core.license.email', 'email@domain.com'),
('core.license.key', '1009-9317-9377-1323'),
('core.license.statistics', '0'),
('core.locale.locale', 'auto'),
('core.locale.timezone', 'US/Pacific'),
('core.log.adapter', 'file'),
('core.mail.contact', 'ur.alisher@mail.ru'),
('core.mail.count', '25'),
('core.mail.enabled', '1'),
('core.mail.from', 'ur.alisher@mail.ru'),
('core.mail.name', 'Site Admin'),
('core.mail.queueing', '1'),
('core.secret', '89af1e08747edf8bb67f78922228cedcbf903db9'),
('core.site.counter', '53'),
('core.site.creation', '2017-05-22 03:24:57'),
('core.site.title', 'Social Network'),
('core.spam.censor', ''),
('core.spam.comment', '0'),
('core.spam.contact', '0'),
('core.spam.email.antispam.login', '1'),
('core.spam.email.antispam.signup', '1'),
('core.spam.invite', '0'),
('core.spam.ipbans', ''),
('core.spam.login', '0'),
('core.spam.signup', '0'),
('core.tasks.count', '1'),
('core.tasks.interval', '60'),
('core.tasks.jobs', '3'),
('core.tasks.key', '73758e44'),
('core.tasks.last', '1496741474'),
('core.tasks.mode', 'curl'),
('core.tasks.pid', ''),
('core.tasks.processes', '2'),
('core.tasks.time', '120'),
('core.tasks.timeout', '900'),
('core.thumbnails.icon.height', '48'),
('core.thumbnails.icon.mode', 'crop'),
('core.thumbnails.icon.width', '48'),
('core.thumbnails.main.height', '720'),
('core.thumbnails.main.mode', 'resize'),
('core.thumbnails.main.width', '720'),
('core.thumbnails.normal.height', '160'),
('core.thumbnails.normal.mode', 'resize'),
('core.thumbnails.normal.width', '140'),
('core.thumbnails.profile.height', '400'),
('core.thumbnails.profile.mode', 'resize'),
('core.thumbnails.profile.width', '200'),
('core.translate.adapter', 'csv'),
('core.twitter.enable', 'none'),
('core.twitter.key', ''),
('core.twitter.secret', ''),
('daylogo.logosperpage', '33'),
('daylogo.maxheight', '150'),
('daylogo.maxwidth', '350'),
('event.bbcode', '1'),
('event.html', '1'),
('group.bbcode', '1'),
('group.html', '1'),
('headvancedmembers.gmapkey', ''),
('headvmessages.enabled', '1'),
('headvmessages.enter.send.enabled', '1'),
('hecore.featured.count', '9'),
('hecore.module.check.licenses', '1495429709'),
('invite.allowCustomMessage', '1'),
('invite.fromEmail', ''),
('invite.fromName', ''),
('invite.max', '10'),
('invite.message', 'You are being invited to join our social network.'),
('invite.subject', 'Join Us'),
('payment.benefit', 'all'),
('payment.currency', 'USD'),
('payment.secret', '6412bac458f387ece364664d2277de9d'),
('storage.service.mirrored.counter', '0'),
('storage.service.mirrored.index', '0'),
('storage.service.roundrobin.counter', '0'),
('user.friends.direction', '1'),
('user.friends.eligible', '2'),
('user.friends.lists', '1'),
('user.friends.verification', '1'),
('user.signup.approve', '1'),
('user.signup.checkemail', '1'),
('user.signup.inviteonly', '0'),
('user.signup.random', '0'),
('user.signup.terms', '1'),
('user.signup.username', '1'),
('user.signup.verifyemail', '0'),
('user.support.links', '1'),
('video.embeds', '1'),
('video.ffmpeg.path', ''),
('video.html5', ''),
('video.jobs', '2'),
('video.page', '10'),
('video.youtube.apikey', 'AIzaSyALxpzfwfK9vLI_Q_jDK1DGW4Q1FQaKyKw');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_statistics`
--

CREATE TABLE `engine4_core_statistics` (
  `type` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` datetime NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_statistics`
--

INSERT INTO `engine4_core_statistics` (`type`, `date`, `value`) VALUES
('core.comments', '2017-05-22 07:00:00', 1),
('core.comments', '2017-05-26 09:00:00', 1),
('core.comments', '2017-05-26 10:00:00', 1),
('core.comments', '2017-05-29 11:00:00', 1),
('core.comments', '2017-05-30 02:00:00', 2),
('core.comments', '2017-05-31 02:00:00', 1),
('core.emails', '2017-05-22 03:00:00', 2),
('core.emails', '2017-05-22 05:00:00', 5),
('core.emails', '2017-05-22 07:00:00', 8),
('core.emails', '2017-05-26 09:00:00', 1),
('core.emails', '2017-05-26 10:00:00', 2),
('core.emails', '2017-05-29 11:00:00', 1),
('core.emails', '2017-05-30 02:00:00', 3),
('core.emails', '2017-05-30 09:00:00', 17),
('core.emails', '2017-05-30 10:00:00', 15),
('core.emails', '2017-05-31 02:00:00', 22),
('core.emails', '2017-05-31 03:00:00', 2),
('core.likes', '2017-05-22 03:00:00', 3),
('core.likes', '2017-05-22 05:00:00', 4),
('core.likes', '2017-05-22 07:00:00', 2),
('core.likes', '2017-05-26 10:00:00', 1),
('core.likes', '2017-05-29 09:00:00', 1),
('core.likes', '2017-05-29 11:00:00', 2),
('core.views', '2017-05-22 03:00:00', 30),
('core.views', '2017-05-22 04:00:00', 27),
('core.views', '2017-05-22 05:00:00', 52),
('core.views', '2017-05-22 06:00:00', 9),
('core.views', '2017-05-22 07:00:00', 65),
('core.views', '2017-05-22 08:00:00', 29),
('core.views', '2017-05-22 09:00:00', 23),
('core.views', '2017-05-22 10:00:00', 39),
('core.views', '2017-05-22 11:00:00', 6),
('core.views', '2017-05-22 15:00:00', 2),
('core.views', '2017-05-23 00:00:00', 14),
('core.views', '2017-05-23 02:00:00', 21),
('core.views', '2017-05-23 03:00:00', 41),
('core.views', '2017-05-23 04:00:00', 2),
('core.views', '2017-05-23 05:00:00', 31),
('core.views', '2017-05-23 06:00:00', 3),
('core.views', '2017-05-23 07:00:00', 37),
('core.views', '2017-05-23 08:00:00', 48),
('core.views', '2017-05-23 09:00:00', 18),
('core.views', '2017-05-23 10:00:00', 5),
('core.views', '2017-05-24 01:00:00', 2),
('core.views', '2017-05-24 02:00:00', 46),
('core.views', '2017-05-24 03:00:00', 25),
('core.views', '2017-05-24 04:00:00', 27),
('core.views', '2017-05-24 05:00:00', 17),
('core.views', '2017-05-24 06:00:00', 1),
('core.views', '2017-05-24 07:00:00', 17),
('core.views', '2017-05-24 08:00:00', 4),
('core.views', '2017-05-24 09:00:00', 6),
('core.views', '2017-05-24 10:00:00', 21),
('core.views', '2017-05-25 07:00:00', 5),
('core.views', '2017-05-25 08:00:00', 13),
('core.views', '2017-05-25 09:00:00', 5),
('core.views', '2017-05-26 01:00:00', 2),
('core.views', '2017-05-26 02:00:00', 47),
('core.views', '2017-05-26 03:00:00', 59),
('core.views', '2017-05-26 04:00:00', 73),
('core.views', '2017-05-26 05:00:00', 33),
('core.views', '2017-05-26 07:00:00', 6),
('core.views', '2017-05-26 08:00:00', 16),
('core.views', '2017-05-26 09:00:00', 21),
('core.views', '2017-05-26 10:00:00', 23),
('core.views', '2017-05-26 11:00:00', 9),
('core.views', '2017-05-27 12:00:00', 2),
('core.views', '2017-05-27 13:00:00', 2),
('core.views', '2017-05-28 05:00:00', 50),
('core.views', '2017-05-28 09:00:00', 11),
('core.views', '2017-05-29 02:00:00', 6),
('core.views', '2017-05-29 03:00:00', 47),
('core.views', '2017-05-29 04:00:00', 13),
('core.views', '2017-05-29 05:00:00', 40),
('core.views', '2017-05-29 07:00:00', 24),
('core.views', '2017-05-29 08:00:00', 31),
('core.views', '2017-05-29 09:00:00', 44),
('core.views', '2017-05-29 10:00:00', 44),
('core.views', '2017-05-29 11:00:00', 12),
('core.views', '2017-05-29 12:00:00', 4),
('core.views', '2017-05-30 02:00:00', 35),
('core.views', '2017-05-30 03:00:00', 78),
('core.views', '2017-05-30 04:00:00', 33),
('core.views', '2017-05-30 05:00:00', 13),
('core.views', '2017-05-30 07:00:00', 5),
('core.views', '2017-05-30 08:00:00', 27),
('core.views', '2017-05-30 09:00:00', 22),
('core.views', '2017-05-30 10:00:00', 21),
('core.views', '2017-05-31 02:00:00', 10),
('core.views', '2017-05-31 03:00:00', 43),
('core.views', '2017-05-31 04:00:00', 71),
('core.views', '2017-05-31 05:00:00', 14),
('core.views', '2017-05-31 06:00:00', 1),
('core.views', '2017-05-31 07:00:00', 98),
('core.views', '2017-05-31 08:00:00', 26),
('core.views', '2017-05-31 09:00:00', 23),
('core.views', '2017-05-31 10:00:00', 70),
('core.views', '2017-05-31 11:00:00', 34),
('core.views', '2017-06-01 02:00:00', 10),
('core.views', '2017-06-01 03:00:00', 45),
('core.views', '2017-06-01 04:00:00', 45),
('core.views', '2017-06-01 05:00:00', 11),
('core.views', '2017-06-01 09:00:00', 2),
('core.views', '2017-06-02 02:00:00', 3),
('core.views', '2017-06-02 03:00:00', 30),
('core.views', '2017-06-02 04:00:00', 12),
('core.views', '2017-06-02 05:00:00', 1),
('core.views', '2017-06-02 14:00:00', 4),
('core.views', '2017-06-04 06:00:00', 17),
('core.views', '2017-06-04 11:00:00', 37),
('core.views', '2017-06-04 14:00:00', 28),
('core.views', '2017-06-04 23:00:00', 5),
('core.views', '2017-06-05 01:00:00', 13),
('core.views', '2017-06-05 02:00:00', 23),
('core.views', '2017-06-05 03:00:00', 18),
('core.views', '2017-06-05 04:00:00', 24),
('core.views', '2017-06-05 05:00:00', 29),
('core.views', '2017-06-05 06:00:00', 12),
('core.views', '2017-06-05 07:00:00', 16),
('core.views', '2017-06-05 08:00:00', 39),
('core.views', '2017-06-05 09:00:00', 36),
('core.views', '2017-06-05 10:00:00', 21),
('core.views', '2017-06-05 11:00:00', 4),
('core.views', '2017-06-05 23:00:00', 7),
('core.views', '2017-06-06 00:00:00', 4),
('core.views', '2017-06-06 01:00:00', 8),
('core.views', '2017-06-06 02:00:00', 33),
('core.views', '2017-06-06 03:00:00', 107),
('core.views', '2017-06-06 04:00:00', 38),
('core.views', '2017-06-06 05:00:00', 17),
('core.views', '2017-06-06 06:00:00', 10),
('core.views', '2017-06-06 07:00:00', 28),
('core.views', '2017-06-06 08:00:00', 60),
('messages.creations', '2017-05-22 07:00:00', 2),
('messages.creations', '2017-05-31 02:00:00', 11),
('messages.creations', '2017-05-31 03:00:00', 1),
('user.creations', '2017-05-22 03:00:00', 2),
('user.creations', '2017-05-30 03:00:00', 1),
('user.creations', '2017-05-30 09:00:00', 1),
('user.creations', '2017-06-06 03:00:00', 8),
('user.creations', '2017-06-06 04:00:00', 2),
('user.creations', '2017-06-06 08:00:00', 4),
('user.friendships', '2017-05-22 07:00:00', 1),
('user.logins', '2017-05-23 00:00:00', 1),
('user.logins', '2017-05-24 02:00:00', 1),
('user.logins', '2017-05-26 04:00:00', 1),
('user.logins', '2017-05-28 05:00:00', 3),
('user.logins', '2017-05-29 03:00:00', 1),
('user.logins', '2017-05-30 02:00:00', 1),
('user.logins', '2017-05-30 09:00:00', 2),
('user.logins', '2017-05-31 02:00:00', 1),
('user.logins', '2017-06-01 04:00:00', 1),
('user.logins', '2017-06-04 06:00:00', 1),
('user.logins', '2017-06-04 14:00:00', 2),
('user.logins', '2017-06-04 23:00:00', 1),
('user.logins', '2017-06-05 01:00:00', 1),
('user.logins', '2017-06-05 08:00:00', 1),
('user.logins', '2017-06-05 09:00:00', 1),
('user.logins', '2017-06-05 23:00:00', 1),
('user.logins', '2017-06-06 01:00:00', 1),
('user.logins', '2017-06-06 02:00:00', 2),
('user.logins', '2017-06-06 03:00:00', 1),
('user.logins', '2017-06-06 07:00:00', 1),
('user.logins', '2017-06-06 08:00:00', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_status`
--

CREATE TABLE `engine4_core_status` (
  `status_id` int(11) UNSIGNED NOT NULL,
  `resource_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `resource_id` int(11) UNSIGNED NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_status`
--

INSERT INTO `engine4_core_status` (`status_id`, `resource_type`, `resource_id`, `body`, `creation_date`) VALUES
(1, 'user', 2, 'post something', '2017-05-22 03:45:17');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_styles`
--

CREATE TABLE `engine4_core_styles` (
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `style` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_tagmaps`
--

CREATE TABLE `engine4_core_tagmaps` (
  `tagmap_id` int(11) UNSIGNED NOT NULL,
  `resource_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `resource_id` int(11) UNSIGNED NOT NULL,
  `tagger_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tagger_id` int(11) UNSIGNED NOT NULL,
  `tag_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tag_id` int(11) UNSIGNED NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `extra` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_tagmaps`
--

INSERT INTO `engine4_core_tagmaps` (`tagmap_id`, `resource_type`, `resource_id`, `tagger_type`, `tagger_id`, `tag_type`, `tag_id`, `creation_date`, `extra`) VALUES
(1, 'blog', 1, 'user', 1, 'core_tag', 1, '2017-05-22 03:56:10', NULL),
(4, 'video', 2, 'user', 3, 'core_tag', 4, '2017-05-22 07:44:24', NULL),
(5, 'video', 2, 'user', 3, 'core_tag', 3, '2017-05-22 07:44:24', NULL),
(6, 'video', 3, 'user', 3, 'core_tag', 5, '2017-05-22 07:48:20', NULL),
(7, 'video', 3, 'user', 3, 'core_tag', 3, '2017-05-22 07:48:20', NULL),
(8, 'blog', 2, 'user', 1, 'core_tag', 6, '2017-05-26 05:03:43', NULL),
(21, 'blog', 3, 'user', 1, 'core_tag', 13, '2017-05-29 10:01:24', NULL),
(22, 'blog', 3, 'user', 1, 'core_tag', 14, '2017-05-29 10:01:24', NULL),
(23, 'blog', 3, 'user', 1, 'core_tag', 4, '2017-05-29 10:01:24', NULL),
(24, 'blog', 4, 'user', 3, 'core_tag', 15, '2017-05-30 02:54:39', NULL),
(25, 'blog', 4, 'user', 3, 'core_tag', 4, '2017-05-30 02:54:39', NULL),
(26, 'blog', 4, 'user', 3, 'core_tag', 16, '2017-05-30 02:54:39', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_tags`
--

CREATE TABLE `engine4_core_tags` (
  `tag_id` int(11) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_tags`
--

INSERT INTO `engine4_core_tags` (`tag_id`, `text`) VALUES
(15, 'article'),
(14, 'blog'),
(1, 'blog new first'),
(2, 'first'),
(6, 'lorem'),
(4, 'new'),
(16, 'privacy'),
(13, 'title'),
(3, 'video'),
(5, 'vimeo');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_tasks`
--

CREATE TABLE `engine4_core_tasks` (
  `task_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plugin` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `timeout` int(11) UNSIGNED NOT NULL DEFAULT '60',
  `processes` smallint(3) UNSIGNED NOT NULL DEFAULT '1',
  `semaphore` smallint(3) NOT NULL DEFAULT '0',
  `started_last` int(11) NOT NULL DEFAULT '0',
  `started_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `completed_last` int(11) NOT NULL DEFAULT '0',
  `completed_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `failure_last` int(11) NOT NULL DEFAULT '0',
  `failure_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `success_last` int(11) NOT NULL DEFAULT '0',
  `success_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_tasks`
--

INSERT INTO `engine4_core_tasks` (`task_id`, `title`, `module`, `plugin`, `timeout`, `processes`, `semaphore`, `started_last`, `started_count`, `completed_last`, `completed_count`, `failure_last`, `failure_count`, `success_last`, `success_count`) VALUES
(1, 'Job Queue', 'core', 'Core_Plugin_Task_Jobs', 5, 1, 0, 1496741475, 4331, 1496741475, 4331, 0, 0, 1496741475, 4331),
(2, 'Background Mailer', 'core', 'Core_Plugin_Task_Mail', 15, 1, 0, 1496741476, 4319, 1496741476, 4319, 0, 0, 1496741476, 4319),
(3, 'Cache Prefetch', 'core', 'Core_Plugin_Task_Prefetch', 300, 1, 0, 1496741347, 910, 1496741347, 910, 0, 0, 1496741347, 910),
(4, 'Statistics', 'core', 'Core_Plugin_Task_Statistics', 43200, 1, 0, 1496705405, 15, 1496705405, 15, 0, 0, 1496705405, 15),
(5, 'Log Rotation', 'core', 'Core_Plugin_Task_LogRotation', 7200, 1, 0, 1496735074, 59, 1496735074, 59, 0, 0, 1496735074, 59),
(6, 'Member Data Maintenance', 'user', 'User_Plugin_Task_Cleanup', 60, 1, 0, 1496741476, 2856, 1496741477, 2856, 1496651374, 4, 1496741477, 2852),
(7, 'Payment Maintenance', 'user', 'Payment_Plugin_Task_Cleanup', 43200, 1, 0, 1496705468, 15, 1496705468, 15, 0, 0, 1496705468, 15),
(8, 'Subscription Recurring', 'credit', 'Credit_Plugin_Task_Recurring', 1800, 1, 0, 1496739885, 176, 1496739886, 176, 0, 0, 1496739886, 176),
(9, 'Hecontest Auto Update', 'hecontest', 'Hecontest_Plugin_Job_Maintenance_Update', 60, 1, 0, 1496741477, 2553, 1496741477, 2553, 0, 0, 1496741477, 2553);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_core_themes`
--

CREATE TABLE `engine4_core_themes` (
  `theme_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_core_themes`
--

INSERT INTO `engine4_core_themes` (`theme_id`, `name`, `title`, `description`, `active`) VALUES
(1, 'default', 'Default', '', 0),
(2, 'midnight', 'Midnight', '', 0),
(3, 'clean', 'Clean', '', 1),
(4, 'modern', 'Modern', '', 0),
(5, 'bamboo', 'Bamboo', '', 0),
(6, 'digita', 'Digita', '', 0),
(7, 'grid-blue', 'Grid Blue', '', 0),
(8, 'grid-brown', 'Grid Brown', '', 0),
(9, 'grid-dark', 'Grid Dark', '', 0),
(10, 'grid-gray', 'Grid Gray', '', 0),
(11, 'grid-green', 'Grid Green', '', 0),
(12, 'grid-pink', 'Grid Pink', '', 0),
(13, 'grid-purple', 'Grid Purple', '', 0),
(14, 'grid-red', 'Grid Red', '', 0),
(15, 'kandy-cappuccino', 'Kandy Cappuccino', '', 0),
(16, 'kandy-limeorange', 'Kandy Limeorange', '', 0),
(17, 'kandy-mangoberry', 'Kandy Mangoberry', '', 0),
(18, 'kandy-watermelon', 'Kandy Watermelon', '', 0),
(19, 'musicbox-blue', 'Musicbox Blue', '', 0),
(20, 'musicbox-brown', 'Musicbox Brown', '', 0),
(21, 'musicbox-gray', 'Musicbox Gray', '', 0),
(22, 'musicbox-green', 'Musicbox Green', '', 0),
(23, 'musicbox-pink', 'Musicbox Pink', '', 0),
(24, 'musicbox-purple', 'Musicbox Purple', '', 0),
(25, 'musicbox-red', 'Musicbox Red', '', 0),
(26, 'musicbox-yellow', 'Musicbox Yellow', '', 0),
(27, 'quantum-beige', 'Quantum Beige', '', 0),
(28, 'quantum-blue', 'Quantum Blue', '', 0),
(29, 'quantum-gray', 'Quantum Gray', '', 0),
(30, 'quantum-green', 'Quantum Green', '', 0),
(31, 'quantum-orange', 'Quantum Orange', '', 0),
(32, 'quantum-pink', 'Quantum Pink', '', 0),
(33, 'quantum-purple', 'Quantum Purple', '', 0),
(34, 'quantum-red', 'Quantum Red', '', 0),
(35, 'slipstream', 'Slipstream', '', 0),
(36, 'snowbot', 'Snowbot', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_credit_actiontypes`
--

CREATE TABLE `engine4_credit_actiontypes` (
  `action_id` int(11) UNSIGNED NOT NULL,
  `action_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_module` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `credit` decimal(16,0) NOT NULL DEFAULT '0',
  `max_credit` decimal(16,0) NOT NULL DEFAULT '0',
  `rollover_period` smallint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_credit_actiontypes`
--

INSERT INTO `engine4_credit_actiontypes` (`action_id`, `action_type`, `group_type`, `action_module`, `action_name`, `credit`, `max_credit`, `rollover_period`) VALUES
(1, 'album_photo_new', 'earn', 'album', 'Adding %d photo(s) to %s album', '2', '100', 1),
(2, 'album_photo', 'earn', 'album', 'Adding a photo', '2', '100', 1),
(3, 'blog_new', 'earn', 'blog', 'Writing %s blog entry', '5', '100', 1),
(4, 'video', 'earn', 'video', 'Posting %s video', '5', '100', 1),
(5, 'classified_new', 'earn', 'classified', 'Posting %s classified listing', '5', '100', 1),
(6, 'poll_new', 'earn', 'poll', 'Creating %s poll', '5', '100', 1),
(7, 'forum_topic_create', 'earn', 'forum', 'Posting %s topic in a forum', '3', '100', 1),
(8, 'page_create', 'earn', 'page', 'Creating %s page', '10', '100', 1),
(9, 'group_create', 'earn', 'group', 'Creating %s group', '10', '100', 1),
(10, 'event_create', 'earn', 'event', 'Creating %s event', '10', '100', 1),
(11, 'music_playlist_song', 'earn', 'music', 'Adding %s song to the playlist', '2', '100', 1),
(12, 'core_link', 'earn', 'core', 'Attaching %s link', '1', '100', 1),
(13, 'status', 'earn', 'core', 'Updating Status - %s %s', '1', '100', 1),
(14, 'signup', 'earn', 'core', 'Sign Up', '20', '0', 0),
(15, 'friends', 'earn', 'core', 'Adding a new friend - %s', '5', '100', 1),
(16, 'transfer_to', 'transfer', NULL, 'Sending credits to %s', '0', '0', 0),
(17, 'transfer_from', 'transfer', NULL, 'Receiving credits from %s', '0', '0', 0),
(18, 'core_like', 'earn', 'core', 'Like %s', '1', '100', 1),
(19, 'core_comment', 'earn', 'core', 'Commenting %s', '1', '100', 1),
(20, 'user_login', 'earn', 'core', 'Log in', '1', '100', 1),
(21, 'give_credits', 'transfer', NULL, 'Admin giving you credits', '0', '0', 0),
(22, 'set_credits', 'transfer', NULL, 'Admin set your credits, now you have an initial balance of %s', '0', '0', 0),
(23, 'buy_credits', 'buy', NULL, 'Buying credits %s', '0', '0', 0),
(24, 'forum_topic_reply', 'earn', 'forum', 'Posting message in %s topic', '2', '100', 1),
(25, 'event_join', 'earn', 'event', 'Joining %s event', '3', '100', 1),
(26, 'event_topic_create', 'earn', 'event', 'Creating %s event topic', '3', '100', 1),
(27, 'event_topic_reply', 'earn', 'event', 'Posting message in %s event topic', '2', '100', 1),
(28, 'pagedocument_new', 'earn', 'page', 'Creating a new document on %s page', '5', '100', 1),
(29, 'store_product_new', 'earn', 'store', 'Creating product %s', '5', '100', 1),
(30, 'rate', 'earn', 'rate', 'Rating %s', '1', '100', 1),
(31, 'group_join', 'earn', 'group', 'Joining %s group', '5', '100', 1),
(32, 'group_topic_create', 'earn', 'group', 'Creating %s group topic', '3', '100', 1),
(33, 'group_topic_reply', 'earn', 'group', 'Posting message in %s group topic', '2', '100', 1),
(34, 'checkin_check', 'earn', 'checkin', 'Check-in %s', '3', '100', 1),
(35, 'group_photo_upload', 'earn', 'group', 'Adding %d photo(s) to %s group', '2', '100', 1),
(36, 'event_photo_upload', 'earn', 'event', 'Adding %d photo(s) to %s event', '2', '100', 1),
(37, 'suggest', 'earn', 'suggest', 'Suggesting %s to friends', '1', '100', 1),
(38, 'network_join', 'earn', 'core', 'Joining in %s network', '1', '100', 1),
(39, 'refer', 'earn', 'inviter', 'Referrering %s to join Site', '5', '100', 1),
(40, 'invite', 'earn', 'inviter', 'Inviting %s to join Site', '1', '100', 1),
(41, 'quiz_new', 'earn', 'quiz', 'Creating %s quiz', '5', '100', 1),
(42, 'quiz_take', 'earn', 'quiz', 'Taking %s quiz', '3', '100', 1),
(43, 'article_new', 'earn', 'article', 'Creating %s article', '5', '100', 1),
(44, 'question_new', 'earn', 'question', 'Asking %s question', '1', '100', 1),
(45, 'answer_new', 'earn', 'question', 'Answering to %s question', '5', '100', 1),
(46, 'send_gift', 'spent', NULL, 'Sending Gift to %s users', '0', '0', 0),
(47, 'activity_like', 'earn', 'core', 'Like %s post', '1', '100', 1),
(48, 'activity_comment', 'earn', 'core', 'Comment %s post', '1', '100', 1),
(49, 'pagereview_new', 'earn', 'page', 'Writing review on %s page', '5', '100', 1),
(50, 'post', 'earn', 'page', 'Posting on %s page', '1', '100', 1),
(51, 'avp_video_new_upload', 'earn', 'avp', 'Posting %s video', '5', '100', 1),
(52, 'pagealbum_photo_new', 'earn', 'page', 'Adding %d photo(s) on %s page', '3', '100', 1),
(53, 'pageblog_new', 'earn', 'page', 'Writing a new blog entry on %s page', '5', '100', 1),
(54, 'pagevideo_new', 'earn', 'page', 'Posting a new video on %s page', '5', '100', 1),
(55, 'pagevent_create', 'earn', 'page', 'Creating a new event on %s page', '5', '100', 1),
(56, 'pagevent_join', 'earn', 'page', 'Joining an event on %s page', '5', '100', 1),
(57, 'page_topic_create', 'earn', 'page', 'Posting a new topic on %s page', '3', '100', 1),
(58, 'page_topic_reply', 'earn', 'page', 'Posting message to topic on %s page', '2', '100', 1),
(59, 'pagemusic_playlist_new', 'earn', 'page', 'Adding %d song(s) to %s page', '3', '100', 1),
(60, 'advgroup_create', 'earn', 'advgroup', 'Creating %s group', '10', '100', 1),
(61, 'advgroup_join', 'earn', 'advgroup', 'Joining %s group', '5', '100', 1),
(62, 'advgroup_photo_upload', 'earn', 'advgroup', 'Adding %d photo(s) to %s group', '2', '100', 1),
(63, 'advgroup_topic_create', 'earn', 'advgroup', 'Creating %s group topic', '3', '100', 1),
(64, 'advgroup_topic_reply', 'earn', 'advgroup', 'Posting message in %s group topic', '2', '100', 1),
(65, 'ynforum_topic_create', 'earn', 'ynforum', 'Posting %s topic in a forum', '3', '100', 1),
(66, 'ynforum_topic_reply', 'earn', 'ynforum', 'Posting message in %s topic', '2', '100', 1),
(67, 'ynforum_post_thank', 'earn', 'ynforum', 'Thanking to a post in %s topic', '1', '100', 1),
(68, 'avp_video_new_import', 'earn', 'avp', 'Importing %s video', '5', '100', 1),
(69, 'list_new', 'earn', 'list', 'Posting a new listing %s', '5', '100', 1),
(70, 'document_new', 'earn', 'document', 'Creating a new document %s', '5', '100', 1),
(71, 'list_photo_upload', 'earn', 'list', 'Uploading a %d photo(s) to %s list', '2', '100', 1),
(72, 'list_topic_create', 'earn', 'list', 'Posting a new listing topic %s', '2', '100', 1),
(73, 'list_topic_reply', 'earn', 'list', 'Replying the listing topic %s', '2', '100', 1),
(74, 'review_list', 'earn', 'list', 'Posting a review in the listing %s', '2', '100', 1),
(75, 'Poke', 'earn', 'poke', 'Poking %s', '3', '100', 1),
(76, 'artarticle', 'earn', 'advancedarticles', 'Creating article %s', '5', '100', 1),
(77, 'ynblog_new', 'earn', 'ynblog', 'Writing %s blog entry', '5', '100', 1),
(78, 'ynvideo_playlist_new', 'earn', 'ynvideo', 'Creating playlist %s', '5', '100', 1),
(79, 'ynvideo_playlist_add_video', 'earn', 'ynvideo', 'Adding video to playlist %s', '2', '100', 1),
(80, 'ynvideo_add_favorite', 'earn', 'ynvideo', 'Adding video to favorites', '2', '100', 1),
(81, 'ynvideo_add_video_new_playlist', 'earn', 'ynvideo', 'Adding video to new playlist %s', '2', '100', 1),
(82, 'ynvideo_video_new', 'earn', 'ynvideo', 'Posting new video %s', '5', '100', 1),
(83, 'mp3music_album_song', 'earn', 'mp3music', 'Adding new song to the %s album', '2', '100', 1),
(84, 'buy_products', 'spent', NULL, 'Buying products', '0', '0', 0),
(85, 'cancel_order', 'transfer', NULL, 'Admin canceling order and back credits', '0', '0', 0),
(86, 'page_view', 'earn', 'page', 'Visiting %s page', '2', '100', 1),
(87, 'job_new', 'earn', 'job', 'Posting new job %s', '5', '100', 1),
(88, 'buy_level', 'spent', NULL, 'Changing member level to %s', '0', '0', 0),
(89, 'buy_offer', 'spent', 'offers', 'Purchase offer %s', '1', '0', 0),
(90, 'buy_emoticon', 'spent', 'heemoticon', 'Buy emoticon %s', '1', '0', 0),
(91, 'donation_charity_new', 'earn', 'donation', 'Creating new charity %s', '10', '100', 1),
(92, 'donation_fundraise_new', 'earn', 'donation', 'Creating new fundraise %s', '10', '100', 1),
(93, 'donation_project_new', 'earn', 'donation', 'Creating new project %s', '10', '100', 1),
(94, 'donation_donating_new', 'earn', 'donation', 'New Donation to %s', '10', '100', 1),
(95, 'hequestion_answer', 'earn', 'hequestion', '%s answered %s with %s', '1', '100', 1),
(96, 'hequestion_ask', 'earn', 'hequestion', '%s arrow %s asked %s', '5', '100', 1),
(97, 'hequestion_ask_self', 'earn', 'hequestion', '%s asked %s', '5', '100', 1),
(98, 'user_profile_edit', 'earn', 'core', 'Editing %s''s profile', '1', '10', 1),
(99, 'ynevent_join', 'earn', 'ynevent', 'Joining %s event', '3', '100', 1),
(100, 'ynevent_create', 'earn', 'ynevent', 'Creating %s event', '10', '100', 1),
(101, 'ynevent_topic_reply', 'earn', 'ynevent', 'Posting message in %s event topic', '2', '100', 1),
(102, 'ynevent_photo_upload', 'earn', 'ynevent', 'Adding photo(s) to %s event', '2', '100', 1),
(103, 'ynevent_topic_create', 'earn', 'ynevent', 'Creating %s event topic', '3', '100', 1),
(104, 'share_post_facebook', 'earn', 'core', 'Sharing post on facebook', '1', '100', 1),
(105, 'share_post_twitter', 'earn', 'core', 'Sharing post on twitter', '1', '100', 1),
(106, 'share_post_linkedin', 'earn', 'core', 'Sharing post on linkedin', '1', '100', 1),
(107, 'buy_highlight', 'spent', NULL, 'Highlight Profile', '0', '0', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_credit_balances`
--

CREATE TABLE `engine4_credit_balances` (
  `balance_id` int(11) UNSIGNED NOT NULL,
  `current_credit` decimal(16,0) NOT NULL DEFAULT '0',
  `earned_credit` decimal(16,0) NOT NULL DEFAULT '0',
  `spent_credit` decimal(16,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_credit_balances`
--

INSERT INTO `engine4_credit_balances` (`balance_id`, `current_credit`, `earned_credit`, `spent_credit`) VALUES
(1, '88', '88', '0'),
(3, '66', '66', '0'),
(4, '22', '22', '0'),
(5, '27', '27', '0'),
(6, '21', '21', '0'),
(7, '20', '20', '0'),
(8, '20', '20', '0'),
(9, '20', '20', '0'),
(10, '20', '20', '0'),
(11, '20', '20', '0'),
(12, '20', '20', '0'),
(13, '21', '21', '0'),
(14, '21', '21', '0'),
(15, '20', '20', '0'),
(16, '20', '20', '0'),
(17, '20', '20', '0'),
(18, '20', '20', '0'),
(19, '20', '20', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_credit_logs`
--

CREATE TABLE `engine4_credit_logs` (
  `log_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `action_id` int(11) UNSIGNED NOT NULL,
  `object_type` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) UNSIGNED NOT NULL,
  `credit` decimal(16,0) NOT NULL DEFAULT '0',
  `body` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_credit_logs`
--

INSERT INTO `engine4_credit_logs` (`log_id`, `user_id`, `action_id`, `object_type`, `object_id`, `credit`, `body`, `creation_date`) VALUES
(1, 1, 14, 'signup', 1, '20', NULL, '2017-05-22 04:26:51'),
(2, 1, 4, 'video', 1, '5', NULL, '2017-05-22 05:43:56'),
(3, 3, 14, 'signup', 3, '20', NULL, '2017-05-22 05:45:50'),
(4, 3, 18, 'video', 1, '1', NULL, '2017-05-22 05:47:06'),
(5, 3, 47, 'activity_action', 9, '1', NULL, '2017-05-22 05:47:09'),
(6, 3, 47, 'activity_action', 8, '1', NULL, '2017-05-22 05:47:15'),
(7, 3, 47, 'activity_action', 7, '1', NULL, '2017-05-22 05:47:17'),
(8, 3, 18, 'blog', 1, '1', NULL, '2017-05-22 07:33:23'),
(9, 3, 19, 'blog', 1, '1', NULL, '2017-05-22 07:33:29'),
(10, 3, 15, 'user', 1, '5', NULL, '2017-05-22 07:34:43'),
(11, 1, 15, 'user', 3, '5', NULL, '2017-05-22 07:34:44'),
(12, 3, 4, 'video', 2, '5', NULL, '2017-05-22 07:44:20'),
(13, 3, 4, 'video', 1, '5', 'delete_credit', '2017-05-22 07:45:22'),
(14, 3, 4, 'video', 3, '5', NULL, '2017-05-22 07:48:15'),
(15, 3, 20, 'user', 3, '1', NULL, '2017-05-23 00:11:05'),
(16, 3, 20, 'user', 3, '1', NULL, '2017-05-24 02:05:45'),
(17, 3, 20, 'user', 3, '1', NULL, '2017-05-26 04:52:48'),
(18, 1, 3, 'blog', 2, '5', NULL, '2017-05-26 05:03:44'),
(19, 1, 19, 'blog', 1, '1', NULL, '2017-05-26 09:32:37'),
(20, 1, 18, 'video', 3, '1', NULL, '2017-05-26 10:57:29'),
(21, 1, 19, 'video', 3, '1', NULL, '2017-05-26 10:58:42'),
(22, 1, 20, 'user', 1, '1', NULL, '2017-05-28 05:17:49'),
(23, 3, 20, 'user', 3, '1', NULL, '2017-05-28 05:18:10'),
(24, 1, 20, 'user', 1, '1', NULL, '2017-05-28 05:19:23'),
(25, 3, 20, 'user', 3, '1', NULL, '2017-05-29 03:28:06'),
(26, 1, 18, 'blog', 1, '1', NULL, '2017-05-29 09:10:51'),
(27, 1, 3, 'blog', 3, '5', NULL, '2017-05-29 10:01:24'),
(31, 3, 43, 'article', 135, '5', NULL, '2017-05-29 11:03:12'),
(32, 3, 43, 'article', 136, '5', NULL, '2017-05-29 11:05:39'),
(33, 3, 18, 'article', 136, '1', NULL, '2017-05-29 11:07:24'),
(34, 3, 19, 'article', 136, '1', NULL, '2017-05-29 11:08:14'),
(36, 1, 43, 'article', 138, '5', NULL, '2017-05-30 02:52:19'),
(37, 3, 20, 'user', 3, '1', NULL, '2017-05-30 02:52:50'),
(38, 3, 19, 'article', 138, '1', NULL, '2017-05-30 02:53:21'),
(39, 3, 3, 'blog', 4, '5', NULL, '2017-05-30 02:54:39'),
(40, 1, 19, 'blog', 4, '1', NULL, '2017-05-30 02:56:16'),
(41, 4, 14, 'user', 4, '20', NULL, '2017-05-30 03:04:31'),
(42, 5, 14, 'user', 5, '20', NULL, '2017-05-30 09:18:08'),
(43, 5, 43, 'article', 139, '5', NULL, '2017-05-30 09:20:53'),
(44, 5, 20, 'user', 5, '1', NULL, '2017-05-30 09:26:24'),
(45, 5, 20, 'user', 5, '1', NULL, '2017-05-30 09:52:49'),
(46, 1, 19, 'article', 139, '1', NULL, '2017-05-31 02:26:12'),
(47, 3, 20, 'user', 3, '1', NULL, '2017-05-31 02:37:10'),
(49, 1, 43, 'article', 141, '5', NULL, '2017-05-31 03:38:06'),
(50, 1, 19, 'article', 138, '1', 'delete_credit', '2017-05-31 03:39:08'),
(51, 1, 43, 'article', 142, '5', NULL, '2017-05-31 03:54:17'),
(52, 1, 43, 'article', 143, '5', NULL, '2017-05-31 03:56:16'),
(53, 1, 43, 'article', 144, '5', NULL, '2017-05-31 04:02:39'),
(54, 1, 43, 'article', 145, '5', NULL, '2017-05-31 04:04:27'),
(55, 1, 43, 'article', 146, '5', NULL, '2017-05-31 04:05:02'),
(56, 3, 20, 'user', 3, '1', NULL, '2017-06-01 04:53:29'),
(57, 1, 20, 'user', 1, '1', NULL, '2017-06-04 06:45:22'),
(58, 3, 20, 'user', 3, '1', NULL, '2017-06-04 14:47:25'),
(59, 1, 20, 'user', 1, '1', NULL, '2017-06-04 14:48:35'),
(60, 1, 20, 'user', 1, '1', NULL, '2017-06-04 23:49:50'),
(61, 1, 20, 'user', 1, '1', NULL, '2017-06-05 01:49:20'),
(62, 4, 20, 'user', 4, '1', NULL, '2017-06-05 08:38:19'),
(63, 3, 20, 'user', 3, '1', NULL, '2017-06-05 09:10:15'),
(64, 1, 20, 'user', 1, '1', NULL, '2017-06-05 23:51:27'),
(65, 1, 20, 'user', 1, '1', NULL, '2017-06-06 01:42:21'),
(66, 3, 20, 'user', 3, '1', NULL, '2017-06-06 02:11:13'),
(67, 3, 20, 'user', 3, '1', NULL, '2017-06-06 02:28:20'),
(68, 4, 20, 'user', 4, '1', NULL, '2017-06-06 03:12:00'),
(69, 6, 14, 'user', 6, '20', NULL, '2017-06-06 03:17:45'),
(70, 7, 14, 'user', 7, '20', NULL, '2017-06-06 03:22:09'),
(71, 8, 14, 'user', 8, '20', NULL, '2017-06-06 03:24:52'),
(72, 9, 14, 'user', 9, '20', NULL, '2017-06-06 03:28:28'),
(73, 10, 14, 'user', 10, '20', NULL, '2017-06-06 03:32:10'),
(74, 11, 14, 'user', 11, '20', NULL, '2017-06-06 03:34:01'),
(75, 12, 14, 'user', 12, '20', NULL, '2017-06-06 03:35:55'),
(76, 13, 14, 'user', 13, '20', NULL, '2017-06-06 03:39:15'),
(77, 14, 14, 'user', 14, '20', NULL, '2017-06-06 04:12:29'),
(78, 15, 14, 'user', 15, '20', NULL, '2017-06-06 04:14:34'),
(79, 14, 20, 'user', 14, '1', NULL, '2017-06-06 07:33:44'),
(80, 6, 20, 'user', 6, '1', NULL, '2017-06-06 08:24:17'),
(81, 13, 20, 'user', 13, '1', NULL, '2017-06-06 08:24:53'),
(82, 16, 14, 'user', 16, '20', NULL, '2017-06-06 08:29:35'),
(83, 17, 14, 'user', 17, '20', NULL, '2017-06-06 08:31:54'),
(84, 18, 14, 'user', 18, '20', NULL, '2017-06-06 08:35:33'),
(85, 19, 14, 'user', 19, '20', NULL, '2017-06-06 08:38:31');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_credit_orders`
--

CREATE TABLE `engine4_credit_orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `gateway_id` int(10) UNSIGNED NOT NULL,
  `gateway_transaction_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `status` enum('pending','completed','cancelled','failed') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'pending',
  `creation_date` datetime NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `credit` decimal(16,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_credit_payments`
--

CREATE TABLE `engine4_credit_payments` (
  `payment_id` int(11) UNSIGNED NOT NULL,
  `credit` decimal(16,2) NOT NULL,
  `price` decimal(16,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_credit_transactions`
--

CREATE TABLE `engine4_credit_transactions` (
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway_id` int(10) UNSIGNED NOT NULL,
  `creation_date` datetime NOT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_transaction_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credits` float NOT NULL,
  `price` decimal(16,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `currency` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_daylogo_logos`
--

CREATE TABLE `engine4_daylogo_logos` (
  `logo_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `enabled` int(1) NOT NULL DEFAULT '1',
  `active` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_event_albums`
--

CREATE TABLE `engine4_event_albums` (
  `album_id` int(11) UNSIGNED NOT NULL,
  `event_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `photo_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `comment_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `collectible_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_event_albums`
--

INSERT INTO `engine4_event_albums` (`album_id`, `event_id`, `title`, `description`, `creation_date`, `modified_date`, `search`, `photo_id`, `view_count`, `comment_count`, `collectible_count`) VALUES
(1, 1, '', '', '2017-05-22 04:11:53', '2017-05-22 04:11:53', 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_event_categories`
--

CREATE TABLE `engine4_event_categories` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_event_categories`
--

INSERT INTO `engine4_event_categories` (`category_id`, `title`) VALUES
(1, 'Arts'),
(2, 'Business'),
(3, 'Conferences'),
(4, 'Festivals'),
(5, 'Food'),
(6, 'Fundraisers'),
(7, 'Galleries'),
(8, 'Health'),
(9, 'Just For Fun'),
(10, 'Kids'),
(11, 'Learning'),
(12, 'Literary'),
(13, 'Movies'),
(14, 'Museums'),
(15, 'Neighborhood'),
(16, 'Networking'),
(17, 'Nightlife'),
(18, 'On Campus'),
(19, 'Organizations'),
(20, 'Outdoors'),
(21, 'Pets'),
(22, 'Politics'),
(23, 'Sales'),
(24, 'Science'),
(25, 'Spirituality'),
(26, 'Sports'),
(27, 'Technology'),
(28, 'Theatre'),
(29, 'Other');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_event_events`
--

CREATE TABLE `engine4_event_events` (
  `event_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `parent_type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `host` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `member_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `approval` tinyint(1) NOT NULL DEFAULT '0',
  `invite` tinyint(1) NOT NULL DEFAULT '0',
  `photo_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_event_events`
--

INSERT INTO `engine4_event_events` (`event_id`, `title`, `description`, `user_id`, `parent_type`, `parent_id`, `search`, `creation_date`, `modified_date`, `starttime`, `endtime`, `host`, `location`, `view_count`, `member_count`, `approval`, `invite`, `photo_id`, `category_id`) VALUES
(1, 'New event', 'event description', 1, 'user', 1, 1, '2017-05-22 04:11:52', '2017-05-22 04:11:53', '2017-05-30 15:10:00', '2017-05-31 07:00:00', 'Admin', 'Social network', 3, 1, 0, 0, 13, 29);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_event_membership`
--

CREATE TABLE `engine4_event_membership` (
  `resource_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `resource_approved` tinyint(1) NOT NULL DEFAULT '0',
  `user_approved` tinyint(1) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `rsvp` tinyint(3) NOT NULL DEFAULT '3',
  `title` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_event_membership`
--

INSERT INTO `engine4_event_membership` (`resource_id`, `user_id`, `active`, `resource_approved`, `user_approved`, `message`, `rsvp`, `title`) VALUES
(1, 1, 1, 1, 1, NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_event_photos`
--

CREATE TABLE `engine4_event_photos` (
  `photo_id` int(11) UNSIGNED NOT NULL,
  `album_id` int(11) UNSIGNED NOT NULL,
  `event_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_id` int(11) UNSIGNED NOT NULL,
  `file_id` int(11) UNSIGNED NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `comment_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_event_photos`
--

INSERT INTO `engine4_event_photos` (`photo_id`, `album_id`, `event_id`, `user_id`, `title`, `description`, `collection_id`, `file_id`, `creation_date`, `modified_date`, `view_count`, `comment_count`) VALUES
(1, 1, 1, 1, '', '', 1, 13, '2017-05-22 04:11:53', '2017-05-22 04:11:53', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_event_posts`
--

CREATE TABLE `engine4_event_posts` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `topic_id` int(11) UNSIGNED NOT NULL,
  `event_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_event_topics`
--

CREATE TABLE `engine4_event_topics` (
  `topic_id` int(11) UNSIGNED NOT NULL,
  `event_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost_id` int(11) UNSIGNED NOT NULL,
  `lastposter_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_event_topicwatches`
--

CREATE TABLE `engine4_event_topicwatches` (
  `resource_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `watch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_group_albums`
--

CREATE TABLE `engine4_group_albums` (
  `album_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `photo_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `comment_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `collectible_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_group_albums`
--

INSERT INTO `engine4_group_albums` (`album_id`, `group_id`, `title`, `description`, `creation_date`, `modified_date`, `search`, `photo_id`, `view_count`, `comment_count`, `collectible_count`) VALUES
(1, 1, '', '', '2017-05-22 04:08:42', '2017-05-22 04:08:42', 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_group_categories`
--

CREATE TABLE `engine4_group_categories` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_group_categories`
--

INSERT INTO `engine4_group_categories` (`category_id`, `title`) VALUES
(1, 'Animals'),
(2, 'Business & Finance'),
(3, 'Computers & Internet'),
(4, 'Cultures & Community'),
(5, 'Dating & Relationships'),
(6, 'Entertainment & Arts'),
(7, 'Family & Home'),
(8, 'Games'),
(9, 'Government & Politics'),
(10, 'Health & Wellness'),
(11, 'Hobbies & Crafts'),
(12, 'Music'),
(13, 'Recreation & Sports'),
(14, 'Regional'),
(15, 'Religion & Beliefs'),
(16, 'Schools & Education'),
(17, 'Science');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_group_groups`
--

CREATE TABLE `engine4_group_groups` (
  `group_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `invite` tinyint(1) NOT NULL DEFAULT '1',
  `approval` tinyint(1) NOT NULL DEFAULT '0',
  `photo_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `member_count` smallint(6) UNSIGNED NOT NULL,
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_group_groups`
--

INSERT INTO `engine4_group_groups` (`group_id`, `user_id`, `title`, `description`, `category_id`, `search`, `invite`, `approval`, `photo_id`, `creation_date`, `modified_date`, `member_count`, `view_count`) VALUES
(1, 3, 'New Group', 'some info', 17, 1, 1, 0, 9, '2017-05-22 04:08:39', '2017-05-22 04:08:42', 2, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_group_listitems`
--

CREATE TABLE `engine4_group_listitems` (
  `listitem_id` int(11) UNSIGNED NOT NULL,
  `list_id` int(11) UNSIGNED NOT NULL,
  `child_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_group_lists`
--

CREATE TABLE `engine4_group_lists` (
  `list_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `owner_id` int(11) UNSIGNED NOT NULL,
  `child_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_group_lists`
--

INSERT INTO `engine4_group_lists` (`list_id`, `title`, `owner_id`, `child_count`) VALUES
(1, 'GROUP_OFFICERS', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_group_membership`
--

CREATE TABLE `engine4_group_membership` (
  `resource_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `resource_approved` tinyint(1) NOT NULL DEFAULT '0',
  `user_approved` tinyint(1) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_group_membership`
--

INSERT INTO `engine4_group_membership` (`resource_id`, `user_id`, `active`, `resource_approved`, `user_approved`, `message`, `title`) VALUES
(1, 1, 1, 1, 1, NULL, NULL),
(1, 3, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_group_photos`
--

CREATE TABLE `engine4_group_photos` (
  `photo_id` int(11) UNSIGNED NOT NULL,
  `album_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_id` int(11) UNSIGNED NOT NULL,
  `file_id` int(11) UNSIGNED NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `comment_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_group_photos`
--

INSERT INTO `engine4_group_photos` (`photo_id`, `album_id`, `group_id`, `user_id`, `title`, `description`, `collection_id`, `file_id`, `creation_date`, `modified_date`, `view_count`, `comment_count`) VALUES
(1, 1, 1, 3, '', '', 1, 9, '2017-05-22 04:08:42', '2017-05-22 04:08:42', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_group_posts`
--

CREATE TABLE `engine4_group_posts` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `topic_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_group_topics`
--

CREATE TABLE `engine4_group_topics` (
  `topic_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `post_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lastposter_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_group_topicwatches`
--

CREATE TABLE `engine4_group_topicwatches` (
  `resource_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `watch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_guest_blockedusers`
--

CREATE TABLE `engine4_guest_blockedusers` (
  `id` int(11) UNSIGNED NOT NULL,
  `guest_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `blocked_user_id` int(11) UNSIGNED NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_guest_guests`
--

CREATE TABLE `engine4_guest_guests` (
  `guest_id` int(11) UNSIGNED NOT NULL,
  `visitor_id` int(11) UNSIGNED NOT NULL,
  `viewed_user_id` int(11) UNSIGNED NOT NULL,
  `visit_date` datetime NOT NULL,
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `engine4_guest_guests`
--

INSERT INTO `engine4_guest_guests` (`guest_id`, `visitor_id`, `viewed_user_id`, `visit_date`, `blocked`, `is_hidden`, `creation_date`, `modified_date`) VALUES
(3, 4, 1, '2017-06-05 08:40:25', 1, 0, '2017-06-05 08:40:25', '2017-06-05 08:40:25'),
(4, 3, 1, '2017-06-06 03:11:38', 1, 0, '2017-06-06 02:11:16', '2017-06-06 02:11:16'),
(6, 1, 6, '2017-06-06 03:18:17', 0, 0, '2017-06-06 03:18:17', '2017-06-06 03:18:17'),
(7, 7, 1, '2017-06-06 03:22:19', 0, 0, '2017-06-06 03:22:19', '2017-06-06 03:22:19'),
(8, 8, 1, '2017-06-06 03:25:03', 0, 0, '2017-06-06 03:25:03', '2017-06-06 03:25:03'),
(9, 9, 1, '2017-06-06 03:28:38', 0, 0, '2017-06-06 03:28:38', '2017-06-06 03:28:38'),
(10, 10, 1, '2017-06-06 03:32:29', 0, 0, '2017-06-06 03:32:29', '2017-06-06 03:32:29'),
(11, 11, 1, '2017-06-06 03:34:11', 0, 0, '2017-06-06 03:34:11', '2017-06-06 03:34:11'),
(12, 12, 1, '2017-06-06 03:37:54', 0, 0, '2017-06-06 03:37:54', '2017-06-06 03:37:54'),
(14, 14, 1, '2017-06-06 04:12:38', 1, 0, '2017-06-06 04:12:38', '2017-06-06 04:12:38'),
(15, 15, 1, '2017-06-06 04:14:43', 0, 0, '2017-06-06 04:14:43', '2017-06-06 04:14:43'),
(16, 6, 1, '2017-06-06 08:24:30', 0, 0, '2017-06-06 08:24:30', '2017-06-06 08:24:30'),
(17, 13, 1, '2017-06-06 08:25:34', 0, 0, '2017-06-06 08:25:14', '2017-06-06 08:25:14'),
(18, 16, 1, '2017-06-06 08:29:46', 0, 0, '2017-06-06 08:29:46', '2017-06-06 08:29:46'),
(19, 17, 1, '2017-06-06 08:32:05', 0, 0, '2017-06-06 08:32:05', '2017-06-06 08:32:05'),
(20, 18, 1, '2017-06-06 08:35:48', 1, 0, '2017-06-06 08:35:48', '2017-06-06 08:35:48'),
(21, 19, 1, '2017-06-06 08:38:40', 1, 0, '2017-06-06 08:38:40', '2017-06-06 08:38:40');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hashtag_forbiddentags`
--

CREATE TABLE `engine4_hashtag_forbiddentags` (
  `forbiddentag_id` int(100) NOT NULL,
  `hashtag` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hashtag_maps`
--

CREATE TABLE `engine4_hashtag_maps` (
  `map_id` int(11) NOT NULL,
  `resource_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `resource_id` int(11) NOT NULL,
  `hashtagger_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hashtagger_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `comment` int(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_hashtag_maps`
--

INSERT INTO `engine4_hashtag_maps` (`map_id`, `resource_type`, `resource_id`, `hashtagger_type`, `hashtagger_id`, `creation_date`, `comment`) VALUES
(1, 'video', 10, 'user', 1, '2017-05-22 05:43:58', 0),
(2, 'video', 14, 'user', 3, '2017-05-22 07:44:24', 0),
(3, 'video', 15, 'user', 3, '2017-05-22 07:48:20', 0),
(4, 'blog', 16, 'user', 1, '2017-05-26 05:03:43', 0),
(5, 'blog', 62, 'user', 1, '2017-05-29 10:01:24', 0),
(6, 'blog', 75, 'user', 3, '2017-05-30 02:54:39', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hashtag_tags`
--

CREATE TABLE `engine4_hashtag_tags` (
  `tag_id` int(100) NOT NULL,
  `hashtag` varchar(250) DEFAULT NULL,
  `map_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `engine4_hashtag_tags`
--

INSERT INTO `engine4_hashtag_tags` (`tag_id`, `hashtag`, `map_id`) VALUES
(1, 'first', 1),
(2, 'video', 1),
(3, 'new', 2),
(4, 'video', 2),
(5, 'vimeo', 3),
(6, 'video', 3),
(7, 'lorem', 4),
(8, 'title', 5),
(9, 'blog', 5),
(10, 'new', 5),
(11, 'article', 6),
(12, 'new', 6),
(13, 'privacy', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_headvancedmembers_markers`
--

CREATE TABLE `engine4_headvancedmembers_markers` (
  `marker_id` int(11) NOT NULL,
  `adres` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_headvancedmembers_status`
--

CREATE TABLE `engine4_headvancedmembers_status` (
  `user_id` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `status_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_headvancedmembers_verification`
--

CREATE TABLE `engine4_headvancedmembers_verification` (
  `verification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `verified_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hebadge_badges`
--

CREATE TABLE `engine4_hebadge_badges` (
  `badge_id` int(11) NOT NULL,
  `title` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `photo_id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL,
  `member_count` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `level_type` tinyint(1) NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_hebadge_badges`
--

INSERT INTO `engine4_hebadge_badges` (`badge_id`, `title`, `description`, `body`, `photo_id`, `icon_id`, `member_count`, `enabled`, `level_type`, `creation_date`) VALUES
(1, 'Friendly Member', 'Given to friendly members who have a lot of friends', '<p>This badge is specially created for friendly members. <strong>Friendly Member Badge</strong> is given to members who have a lot friends.</p>\r\n<p> </p>\r\n<p>Terms to get this badge are simple:</p>\r\n<p>- make friendship with 50 members</p>\r\n<p>- send invitation to 10 contacts</p>\r\n<p>- like 5 members profile</p>\r\n<p>- get 5 members liked your profile</p>\r\n<p>- leave 10 comments</p>\r\n<p>- send 5 suggestions</p>', 29, 0, 0, 1, 0, '2012-04-29 08:25:52'),
(2, 'Blogger', 'Given to members who write many blog entries', '<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">This badge is specially created for members who create blog entries. <strong>Blogger</strong> <span style="font-weight: bold;">Badge</span> is given to members who write blog entries.</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US"> </p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">Terms to get this badge are simple:</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- post 25 blog entries</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- make friendship with 10 members</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send invitation to 5 contacts</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- join 3 groups</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send 10 wall posts</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- leave 10 comments</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send 5 suggestions to friends</p>', 32, 0, 0, 1, 0, '2012-04-29 08:32:29'),
(3, 'All-knowing Member', 'Given to active members who know right answer for any question', '<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">This badge is specially created for erudite members. <strong>All-knowing Member Badge</strong> is given to members who actively pass quizzes and polls.</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US"> </p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">Terms to get this badge are simple:</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- create 5 quizzes</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- pass 25 quizzes</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- create 5 polls</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- pass 25 polls</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- make friendship with 10 members</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send invitation to 5 contacts</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- leave 10 comments</p>', 35, 0, 0, 1, 0, '2012-04-29 08:43:41'),
(4, 'Top Poster', 'Given to members who post many interesting content in social network', '<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">This badge is specially created for active members. <strong>Top Posters</strong><span style="font-weight: bold;"> Badge</span> is given to members who create and post many interesting content in social network.</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US"> </p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">Terms to get this badge are simple:</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- upload 25 photos</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- post 25 videos</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- create 10 quizzes</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- post 10 polls</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- make friendship with 10 members</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send invitation to 5 contacts</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- leave 10 comments</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send 10 suggestions</p>', 38, 0, 0, 1, 0, '2012-04-30 03:59:59'),
(5, 'VIP Member', 'Given to most active members in social network', '<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">This badge is created for our active members. <strong>VIP</strong><span style="font-weight: bold;"> Member Badge</span> is given to most members who have a lot friends, participate in various discussions, events, groups, etc.</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US"> </p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">Terms to get this badge are simple:</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- make friendship with 25 members</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send invitation to 10 contacts</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- get 10 members liked your profile</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- leave 25 comments</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- post 25 wall posts</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- join 5 groups</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- attend in 5 events</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send 25 forum posts</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send 10 suggestions</p>', 41, 0, 0, 1, 0, '2012-04-30 04:08:15'),
(6, 'Music Lover', 'Given to music lover-members', '<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">This badge is specially created for music lover-members. <span style="font-weight: bold;">Music Lover Badge</span> is given to members who have uploaded a lot of music playlists.</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US"> </p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">Terms to get this badge are simple:</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- upload 50 music songs</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send 25 suggestions</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- make friendship with 10 members</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send invitation to 5 contacts</p>', 44, 0, 0, 1, 0, '2012-04-30 04:32:41'),
(7, 'Pathfinder', 'Given to active members who have checked-in many locations', '<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">This badge is specially created for active members. <span style="font-weight: bold;">Pathfinder Badge</span> is given to members who have checked-in many locations and shared his reviews.</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US"> </p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">Terms to get this badge are simple:</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- check-in 25 locations</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- review 10 pages</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- make friendship with 10 members</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send invitation to 5 contacts</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- get 5 members liked your profile</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- leave 10 comments</p>\r\n<p style="margin: 0in; font-family: Calibri; font-size: 11pt;" lang="en-US">- send 10 suggestions</p>', 47, 0, 0, 1, 0, '2012-04-30 05:17:00'),
(8, 'Super Admin', 'The owners of this badge have full rights in the site.', '', 92, 0, 1, 1, 1, '2012-04-30 05:17:00'),
(9, 'Admin', 'This badge is given to member who become Admin of the site.', '', 95, 0, 1, 1, 1, '2012-04-30 05:18:00'),
(10, 'Moderator', 'This badge is assigned to a member who has moderator rights.', '', 98, 0, 0, 1, 1, '2012-04-30 05:19:00'),
(11, 'Public Member', 'This Badge is given to a member who is on Default Member Level', '', 101, 0, 16, 1, 1, '2012-04-30 05:20:00');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hebadge_complete`
--

CREATE TABLE `engine4_hebadge_complete` (
  `require_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `object_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hebadge_creditbadges`
--

CREATE TABLE `engine4_hebadge_creditbadges` (
  `creditbadge_id` int(11) NOT NULL,
  `title` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo_id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL,
  `member_count` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_hebadge_creditbadges`
--

INSERT INTO `engine4_hebadge_creditbadges` (`creditbadge_id`, `title`, `description`, `photo_id`, `icon_id`, `member_count`, `credit`, `enabled`, `creation_date`) VALUES
(1, 'Starter Rank', 'Given to members who reach 25 credits for doing various activities in Social Network', 17, 0, 3, 25, 1, '2012-04-29 08:01:07'),
(2, 'Junior Rank', 'Given to members who reach 50 credits for doing various activities in Social Network', 20, 0, 2, 50, 1, '2012-04-29 08:04:03'),
(3, 'Senior Rank', 'Given to members who reach 100 credits for doing various activities in Social Network', 23, 0, 0, 100, 1, '2012-04-29 08:06:12'),
(4, 'Leader Rank', 'Given to members who reach 250 credits for doing various activities in Social Network', 26, 0, 0, 250, 1, '2012-04-29 08:06:55');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hebadge_creditmembers`
--

CREATE TABLE `engine4_hebadge_creditmembers` (
  `creditmember_id` int(11) NOT NULL,
  `creditbadge_id` int(11) NOT NULL,
  `object_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_hebadge_creditmembers`
--

INSERT INTO `engine4_hebadge_creditmembers` (`creditmember_id`, `creditbadge_id`, `object_type`, `object_id`, `creation_date`, `approved`) VALUES
(1, 1, 'user', 1, '2017-05-22 05:43:55', 1),
(2, 1, 'user', 3, '2017-05-22 07:33:22', 1),
(3, 2, 'user', 3, '2017-05-29 11:05:38', 1),
(5, 2, 'user', 1, '2017-05-30 02:52:19', 1),
(6, 1, 'user', 5, '2017-05-30 09:20:53', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hebadge_info`
--

CREATE TABLE `engine4_hebadge_info` (
  `user_id` int(11) NOT NULL,
  `friend` int(11) NOT NULL DEFAULT '0',
  `comment` int(11) NOT NULL DEFAULT '0',
  `login` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `photo` int(11) NOT NULL DEFAULT '0',
  `blog` int(11) NOT NULL DEFAULT '0',
  `event` int(11) NOT NULL DEFAULT '0',
  `group` int(11) NOT NULL DEFAULT '0',
  `forum` int(11) NOT NULL DEFAULT '0',
  `classified` int(11) NOT NULL DEFAULT '0',
  `invite` int(11) NOT NULL DEFAULT '0',
  `referral` int(11) NOT NULL DEFAULT '0',
  `poll` int(11) NOT NULL DEFAULT '0',
  `pollpassed` int(11) NOT NULL DEFAULT '0',
  `music` int(11) NOT NULL DEFAULT '0',
  `video` int(11) NOT NULL DEFAULT '0',
  `checkin` int(11) NOT NULL DEFAULT '0',
  `like` int(11) NOT NULL DEFAULT '0',
  `likeme` int(11) NOT NULL DEFAULT '0',
  `quiz` int(11) NOT NULL DEFAULT '0',
  `quizpassed` int(11) NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL DEFAULT '0',
  `review` int(11) NOT NULL DEFAULT '0',
  `store` int(11) NOT NULL DEFAULT '0',
  `storeorder` int(11) NOT NULL DEFAULT '0',
  `suggest` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_hebadge_info`
--

INSERT INTO `engine4_hebadge_info` (`user_id`, `friend`, `comment`, `login`, `status`, `photo`, `blog`, `event`, `group`, `forum`, `classified`, `invite`, `referral`, `poll`, `pollpassed`, `music`, `video`, `checkin`, `like`, `likeme`, `quiz`, `quizpassed`, `rate`, `review`, `store`, `storeorder`, `suggest`) VALUES
(1, 1, 4, 8, 0, 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 2, 12, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hebadge_levelsbadges`
--

CREATE TABLE `engine4_hebadge_levelsbadges` (
  `badge_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `engine4_hebadge_levelsbadges`
--

INSERT INTO `engine4_hebadge_levelsbadges` (`badge_id`, `level_id`) VALUES
(8, 1),
(9, 2),
(10, 3),
(11, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hebadge_members`
--

CREATE TABLE `engine4_hebadge_members` (
  `member_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `object_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_hebadge_members`
--

INSERT INTO `engine4_hebadge_members` (`member_id`, `badge_id`, `object_type`, `object_id`, `creation_date`, `approved`) VALUES
(1, 8, 'user', 1, '2017-05-22 05:14:31', 1),
(3, 9, 'user', 3, '2017-05-22 07:31:21', 1),
(4, 11, 'user', 4, '2017-05-30 03:04:33', 1),
(5, 11, 'user', 5, '2017-05-30 09:18:11', 1),
(6, 11, 'user', 6, '2017-06-06 03:17:46', 1),
(7, 11, 'user', 7, '2017-06-06 03:22:11', 1),
(8, 11, 'user', 8, '2017-06-06 03:24:53', 1),
(9, 11, 'user', 9, '2017-06-06 03:28:30', 1),
(10, 11, 'user', 10, '2017-06-06 03:32:12', 1),
(11, 11, 'user', 11, '2017-06-06 03:34:04', 1),
(12, 11, 'user', 12, '2017-06-06 03:35:57', 1),
(13, 11, 'user', 13, '2017-06-06 03:39:17', 1),
(14, 11, 'user', 14, '2017-06-06 04:12:30', 1),
(15, 11, 'user', 15, '2017-06-06 04:14:36', 1),
(16, 11, 'user', 16, '2017-06-06 08:29:37', 1),
(17, 11, 'user', 17, '2017-06-06 08:31:56', 1),
(18, 11, 'user', 18, '2017-06-06 08:35:35', 1),
(19, 11, 'user', 19, '2017-06-06 08:38:33', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hebadge_pagebadges`
--

CREATE TABLE `engine4_hebadge_pagebadges` (
  `pagebadge_id` int(11) NOT NULL,
  `title` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo_id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL,
  `member_count` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_hebadge_pagebadges`
--

INSERT INTO `engine4_hebadge_pagebadges` (`pagebadge_id`, `title`, `description`, `photo_id`, `icon_id`, `member_count`, `enabled`, `creation_date`) VALUES
(1, 'For Families', 'Check locations specialized for families', 50, 0, 0, 1, '2012-04-30 05:38:37'),
(2, 'Recommended', 'Check the recommended locations', 53, 0, 0, 1, '2012-04-30 05:40:39'),
(3, 'Users Choice', 'Check popular Users Choice locations', 56, 0, 0, 1, '2012-04-30 05:42:55'),
(4, 'No-Smoking', 'Check no-smoking locations', 59, 0, 0, 1, '2012-04-30 06:48:51'),
(5, 'Resorts', 'Check the best resorts', 59, 0, 0, 1, '2012-04-30 07:11:33'),
(6, 'Airline Tickets', 'Check the best airline tickets and online booking services', 62, 0, 0, 1, '2012-04-30 07:14:35'),
(7, 'Transportation and Delivery', 'Check the best transportation and delivery services', 65, 0, 0, 1, '2012-04-30 07:16:52'),
(8, 'Stores', 'Check the best stores', 71, 0, 0, 1, '2012-04-30 07:18:33'),
(9, 'Event Planning Service', 'Check the best event planning service for holidays, birthdays and wedding', 74, 0, 0, 1, '2012-04-30 08:10:45'),
(10, 'Translation Service', 'Check the best translation services', 77, 0, 0, 1, '2012-04-30 08:24:52'),
(11, 'Excursions and Tours', 'Check the best excursions and guided tours services', 80, 0, 0, 1, '2012-04-30 08:26:55'),
(12, 'Business Marketing Service', 'Check the best services for your business or brand marketing and promotions', 83, 0, 0, 1, '2012-04-30 08:31:02'),
(13, 'Beauty and Health', 'Check the best beauty and health locations', 86, 0, 0, 1, '2012-04-30 08:34:47'),
(14, 'Building and Repair', 'Check the best building and repair businesses', 89, 0, 0, 1, '2012-04-30 08:36:50');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hebadge_pagemembers`
--

CREATE TABLE `engine4_hebadge_pagemembers` (
  `pagemember_id` int(11) NOT NULL,
  `pagebadge_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hebadge_require`
--

CREATE TABLE `engine4_hebadge_require` (
  `require_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_hebadge_require`
--

INSERT INTO `engine4_hebadge_require` (`require_id`, `badge_id`, `type`, `params`) VALUES
(15, 3, 'friend', '{"count":"10"}'),
(16, 3, 'comment', '{"count":"10"}'),
(17, 3, 'invite', '{"count":"5"}'),
(18, 3, 'poll', '{"count":"5"}'),
(19, 3, 'pollpassed', '{"count":"25"}'),
(20, 3, 'quiz', '{"count":"5"}'),
(21, 3, 'quizpassed', '{"count":"20"}'),
(22, 1, 'friend', '{"count":"50"}'),
(23, 1, 'comment', '{"count":"10"}'),
(24, 1, 'invite', '{"count":"10"}'),
(25, 1, 'like', '{"count":"5"}'),
(26, 1, 'likeme', '{"count":"5"}'),
(27, 1, 'suggest', '{"count":"5"}'),
(28, 2, 'friend', '{"count":"10"}'),
(29, 2, 'comment', '{"count":"10"}'),
(30, 2, 'status', '{"count":"10"}'),
(31, 2, 'blog', '{"count":"25"}'),
(32, 2, 'group', '{"count":"3"}'),
(33, 2, 'invite', '{"count":"5"}'),
(34, 2, 'suggest', '{"count":"5"}'),
(36, 4, 'friend', '{"count":"10"}'),
(37, 4, 'comment', '{"count":"10"}'),
(38, 4, 'photo', '{"count":"25"}'),
(39, 4, 'invite', '{"count":"5"}'),
(40, 4, 'poll', '{"count":"10"}'),
(41, 4, 'video', '{"count":"25"}'),
(42, 4, 'quiz', '{"count":"10"}'),
(43, 4, 'suggest', '{"count":"10"}'),
(44, 5, 'friend', '{"count":"25"}'),
(45, 5, 'comment', '{"count":"25"}'),
(46, 5, 'status', '{"count":"25"}'),
(47, 5, 'event', '{"count":"5"}'),
(48, 5, 'group', '{"count":"5"}'),
(49, 5, 'forum', '{"count":"25"}'),
(50, 5, 'invite', '{"count":"10"}'),
(51, 5, 'likeme', '{"count":"10"}'),
(52, 5, 'suggest', '{"count":"10"}'),
(54, 6, 'friend', '{"count":"10"}'),
(55, 6, 'invite', '{"count":"5"}'),
(56, 6, 'music', '{"count":"50"}'),
(57, 6, 'suggest', '{"count":"25"}'),
(60, 7, 'friend', '{"count":"10"}'),
(61, 7, 'comment', '{"count":"10"}'),
(62, 7, 'invite', '{"count":"5"}'),
(63, 7, 'checkin', '{"count":"25"}'),
(64, 7, 'likeme', '{"count":"5"}'),
(65, 7, 'review', '{"count":"10"}'),
(66, 7, 'suggest', '{"count":"10"}');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hecontest_hecontests`
--

CREATE TABLE `engine4_hecontest_hecontests` (
  `hecontest_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `terms` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prize_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prize_photo` int(11) NOT NULL,
  `sponsor` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sponsor_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sponsor_href` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sponsor_type` tinyint(4) NOT NULL DEFAULT '1',
  `date_begin` datetime NOT NULL,
  `checkin` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_end` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `is_recent` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `price_credit` int(11) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hecontest_photos`
--

CREATE TABLE `engine4_hecontest_photos` (
  `photo_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL,
  `date_posted` datetime NOT NULL,
  `status` enum('approved','pending','decline') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hecontest_purchaseds`
--

CREATE TABLE `engine4_hecontest_purchaseds` (
  `purchaseds_id` int(10) NOT NULL,
  `contest_id` int(10) DEFAULT '0',
  `status` int(1) DEFAULT '0',
  `user_id` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hecontest_voters`
--

CREATE TABLE `engine4_hecontest_voters` (
  `voter_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hecore_featureds`
--

CREATE TABLE `engine4_hecore_featureds` (
  `featured_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hecore_log`
--

CREATE TABLE `engine4_hecore_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `plugin` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `error_code` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `trace` longtext COLLATE utf8_unicode_ci NOT NULL,
  `priority` smallint(2) NOT NULL DEFAULT '6',
  `priorityName` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INFO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hecore_modules`
--

CREATE TABLE `engine4_hecore_modules` (
  `module_id` int(10) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `version` varchar(32) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `modified_stamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `engine4_hecore_modules`
--

INSERT INTO `engine4_hecore_modules` (`module_id`, `name`, `version`, `key`, `installed`, `modified_stamp`) VALUES
(1, 'advancedsearch', '4.5.5p8', '123', 1, 1495426684),
(2, 'advbilling', '4.8.12p3', '123', 1, 1495426739),
(3, 'advnotifications', '4.8.9p4', '123', 1, 1495426786),
(4, 'apptouch', '4.3.1p3', '123', 1, 1495426910),
(5, 'iphoneapp', '4.2.4p2', '123', 1, 1495426989),
(6, 'avatarstyler', '4.8.10', '123', 1, 1495427033),
(7, 'credit', '4.3.1p5', '123', 1, 1495427129),
(8, 'wall', '4.3.4p2', '123', 1, 1495427253),
(9, 'checkin', '4.1.5p6', '123', 1, 1495427300),
(10, 'daylogo', '4.2.1p3', '123', 1, 1495427400),
(11, 'headvancedmembers', '4.8.10p4', '123', 1, 1495428907),
(12, 'hashtag', '4.5.3p1', '123', 1, 1495428868),
(13, 'hecomment', '4.0.0p4', '123', 1, 1495429381),
(14, 'badges', '4.2.2p1', '123', 1, 1495430045),
(15, 'hecontest', '4.5.3', '123', 1, 1495430109),
(16, 'headvmessages', '4.8.9p5', '123', 1, 1495430154);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_hecore_user_settings`
--

CREATE TABLE `engine4_hecore_user_settings` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `setting` varchar(255) DEFAULT '',
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_invites`
--

CREATE TABLE `engine4_invites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `recipient` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `send_request` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `new_user_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_messages_conversations`
--

CREATE TABLE `engine4_messages_conversations` (
  `conversation_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) UNSIGNED NOT NULL,
  `recipients` int(11) UNSIGNED NOT NULL,
  `modified` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `resource_type` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '',
  `resource_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_messages_conversations`
--

INSERT INTO `engine4_messages_conversations` (`conversation_id`, `title`, `user_id`, `recipients`, `modified`, `locked`, `resource_type`, `resource_id`) VALUES
(1, 'Greetings', 3, 1, '2017-05-22 07:55:19', 0, NULL, 0),
(2, 'Sending message', 1, 1, '2017-05-31 02:21:18', 0, NULL, 0),
(3, 'Conversation about article', 1, 1, '2017-05-31 02:24:31', 0, NULL, 0),
(4, 'Article conversation', 1, 1, '2017-05-31 02:25:27', 0, NULL, 0),
(5, 'message to owner', 3, 1, '2017-05-31 02:40:45', 0, NULL, 0),
(6, 'mesage title', 3, 1, '2017-05-31 02:43:28', 0, NULL, 0),
(7, 'message', 1, 1, '2017-05-31 02:49:08', 0, NULL, 0),
(8, 'new title', 1, 1, '2017-05-31 02:51:15', 0, NULL, 0),
(9, 'new title', 1, 1, '2017-05-31 02:53:38', 0, NULL, 0),
(10, 'title', 1, 1, '2017-05-31 02:53:56', 0, NULL, 0),
(11, 'new message', 1, 1, '2017-05-31 02:58:01', 0, NULL, 0),
(13, 'new title 9:12', 1, 1, '2017-05-31 03:12:30', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_messages_messages`
--

CREATE TABLE `engine4_messages_messages` (
  `message_id` int(11) UNSIGNED NOT NULL,
  `conversation_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `attachment_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '',
  `attachment_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_messages_messages`
--

INSERT INTO `engine4_messages_messages` (`message_id`, `conversation_id`, `user_id`, `title`, `body`, `date`, `attachment_type`, `attachment_id`) VALUES
(1, 1, 3, 'Greetings', 'Hi there', '2017-05-22 07:54:55', '', 0),
(2, 1, 1, '', 'hi', '2017-05-22 07:55:19', '', 0),
(3, 2, 1, 'Sending message', 'content', '2017-05-31 02:21:18', '', 0),
(4, 3, 1, 'Conversation about article', 'message', '2017-05-31 02:24:31', '', 0),
(5, 4, 1, 'Article conversation', 'let''s begin', '2017-05-31 02:25:27', '', 0),
(6, 5, 3, 'message to owner', 'message', '2017-05-31 02:38:43', '', 0),
(7, 5, 3, '', 'back', '2017-05-31 02:40:45', '', 0),
(8, 6, 3, 'mesage title', 'message content', '2017-05-31 02:43:28', '', 0),
(9, 7, 1, 'message', 'content', '2017-05-31 02:49:08', '', 0),
(10, 8, 1, 'new title', 'new message', '2017-05-31 02:51:15', '', 0),
(11, 9, 1, 'new title', 'new message', '2017-05-31 02:53:38', '', 0),
(12, 10, 1, 'title', 'message', '2017-05-31 02:53:56', '', 0),
(13, 11, 1, 'new message', 'new body', '2017-05-31 02:58:01', '', 0),
(15, 13, 1, 'new title 9:12', 'new message 9:12', '2017-05-31 03:12:30', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_messages_recipients`
--

CREATE TABLE `engine4_messages_recipients` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `conversation_id` int(11) UNSIGNED NOT NULL,
  `inbox_message_id` int(11) UNSIGNED DEFAULT NULL,
  `inbox_updated` datetime DEFAULT NULL,
  `inbox_read` tinyint(1) DEFAULT NULL,
  `inbox_deleted` tinyint(1) DEFAULT NULL,
  `outbox_message_id` int(11) UNSIGNED DEFAULT NULL,
  `outbox_updated` datetime DEFAULT NULL,
  `outbox_deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_messages_recipients`
--

INSERT INTO `engine4_messages_recipients` (`user_id`, `conversation_id`, `inbox_message_id`, `inbox_updated`, `inbox_read`, `inbox_deleted`, `outbox_message_id`, `outbox_updated`, `outbox_deleted`) VALUES
(1, 1, 1, '2017-05-22 07:54:55', 1, 0, 2, '2017-05-22 07:55:19', 0),
(1, 2, NULL, NULL, 1, 1, 3, '2017-05-31 02:21:18', 0),
(1, 3, NULL, NULL, 1, 1, 4, '2017-05-31 02:24:31', 0),
(1, 4, NULL, NULL, 1, 1, 5, '2017-05-31 02:25:27', 0),
(1, 7, NULL, NULL, 1, 1, 9, '2017-05-31 02:49:08', 0),
(1, 8, NULL, NULL, 1, 1, 10, '2017-05-31 02:51:15', 0),
(1, 9, NULL, NULL, 1, 1, 11, '2017-05-31 02:53:38', 0),
(1, 10, NULL, NULL, 1, 1, 12, '2017-05-31 02:53:56', 0),
(1, 11, NULL, NULL, 1, 1, 13, '2017-05-31 02:58:01', 0),
(1, 13, NULL, NULL, 1, 1, 15, '2017-05-31 03:12:30', 0),
(3, 1, 2, '2017-05-22 07:55:19', 1, 0, 1, '2017-05-22 07:54:55', 0),
(3, 5, NULL, NULL, 1, 1, 7, '2017-05-31 02:40:45', 0),
(3, 6, NULL, NULL, 1, 1, 8, '2017-05-31 02:43:28', 0),
(5, 2, 3, '2017-05-31 02:21:18', 0, 0, 0, NULL, 1),
(5, 3, 4, '2017-05-31 02:24:31', 0, 0, 0, NULL, 1),
(5, 4, 5, '2017-05-31 02:25:27', 0, 0, 0, NULL, 1),
(5, 5, 7, '2017-05-31 02:40:45', 0, 0, 0, NULL, 1),
(5, 6, 8, '2017-05-31 02:43:28', 0, 0, 0, NULL, 1),
(5, 7, 9, '2017-05-31 02:49:08', 0, 0, 0, NULL, 1),
(5, 8, 10, '2017-05-31 02:51:15', 0, 0, 0, NULL, 1),
(5, 9, 11, '2017-05-31 02:53:38', 0, 0, 0, NULL, 1),
(5, 10, 12, '2017-05-31 02:53:56', 0, 0, 0, NULL, 1),
(5, 11, 13, '2017-05-31 02:58:01', 0, 0, 0, NULL, 1),
(5, 13, 15, '2017-05-31 03:12:30', 0, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_network_membership`
--

CREATE TABLE `engine4_network_membership` (
  `resource_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `resource_approved` tinyint(1) NOT NULL DEFAULT '0',
  `user_approved` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_network_networks`
--

CREATE TABLE `engine4_network_networks` (
  `network_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pattern` text COLLATE utf8_unicode_ci,
  `member_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `assignment` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_network_networks`
--

INSERT INTO `engine4_network_networks` (`network_id`, `title`, `description`, `field_id`, `pattern`, `member_count`, `hide`, `assignment`) VALUES
(1, 'North America', '', 0, NULL, 0, 0, 0),
(2, 'South America', '', 0, NULL, 0, 0, 0),
(3, 'Europe', '', 0, NULL, 0, 0, 0),
(4, 'Asia', '', 0, NULL, 0, 0, 0),
(5, 'Africa', '', 0, NULL, 0, 0, 0),
(6, 'Australia', '', 0, NULL, 0, 0, 0),
(7, 'Antarctica', '', 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_payment_gateways`
--

CREATE TABLE `engine4_payment_gateways` (
  `gateway_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `plugin` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `config` mediumblob,
  `test_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_payment_gateways`
--

INSERT INTO `engine4_payment_gateways` (`gateway_id`, `title`, `description`, `enabled`, `plugin`, `config`, `test_mode`) VALUES
(1, '2Checkout', NULL, 0, 'Payment_Plugin_Gateway_2Checkout', NULL, 0),
(2, 'PayPal', NULL, 0, 'Payment_Plugin_Gateway_PayPal', NULL, 0),
(3, 'Testing', NULL, 0, 'Payment_Plugin_Gateway_Testing', NULL, 1),
(555, 'Stripe', NULL, 1, 'Advbilling_Plugin_Gateway_Stripemain', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_payment_orders`
--

CREATE TABLE `engine4_payment_orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `gateway_id` int(10) UNSIGNED NOT NULL,
  `gateway_order_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gateway_transaction_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `state` enum('pending','cancelled','failed','incomplete','complete') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'pending',
  `creation_date` datetime NOT NULL,
  `source_type` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `source_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_payment_packages`
--

CREATE TABLE `engine4_payment_packages` (
  `package_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `downgrade_level_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(16,2) UNSIGNED NOT NULL,
  `recurrence` int(11) UNSIGNED NOT NULL,
  `recurrence_type` enum('day','week','month','year','forever') COLLATE utf8_unicode_ci NOT NULL,
  `duration` int(11) UNSIGNED NOT NULL,
  `duration_type` enum('day','week','month','year','forever') COLLATE utf8_unicode_ci NOT NULL,
  `trial_duration` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `trial_duration_type` enum('day','week','month','year','forever') COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `signup` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `after_signup` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_payment_products`
--

CREATE TABLE `engine4_payment_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `extension_type` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `extension_id` int(10) UNSIGNED DEFAULT NULL,
  `sku` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(16,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_payment_subscriptions`
--

CREATE TABLE `engine4_payment_subscriptions` (
  `subscription_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `package_id` int(11) UNSIGNED NOT NULL,
  `status` enum('initial','trial','pending','active','cancelled','expired','overdue','refunded') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'initial',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `gateway_id` int(10) UNSIGNED DEFAULT NULL,
  `gateway_profile_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_payment_transactions`
--

CREATE TABLE `engine4_payment_transactions` (
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway_id` int(10) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `state` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gateway_transaction_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gateway_parent_transaction_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gateway_order_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL,
  `currency` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_storage_chunks`
--

CREATE TABLE `engine4_storage_chunks` (
  `chunk_id` bigint(20) UNSIGNED NOT NULL,
  `file_id` int(11) UNSIGNED NOT NULL,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_storage_files`
--

CREATE TABLE `engine4_storage_files` (
  `file_id` int(10) UNSIGNED NOT NULL,
  `parent_file_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `parent_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `storage_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_major` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `mime_minor` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `hash` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_storage_files`
--

INSERT INTO `engine4_storage_files` (`file_id`, `parent_file_id`, `type`, `parent_type`, `parent_id`, `user_id`, `creation_date`, `modified_date`, `service_id`, `storage_path`, `extension`, `name`, `mime_major`, `mime_minor`, `size`, `hash`) VALUES
(1, NULL, NULL, 'user', 2, NULL, '2017-05-22 03:45:00', '2017-05-22 03:45:00', 1, 'public/user/01/0001_dfec.jpg', 'jpg', 'm_StockSnap_B6GYMTH73U.jpg', 'image', 'jpeg', 31059, 'eb4fdfecb5e196b479b6f3816b6f6671'),
(2, 1, 'thumb.profile', 'user', 2, NULL, '2017-05-22 03:45:00', '2017-05-22 03:45:00', 1, 'public/user/02/0002_035e.jpg', 'jpg', 'p_StockSnap_B6GYMTH73U.jpg', 'image', 'jpeg', 5581, 'f0e5035e433c6d64b2d11d77eabc3a0b'),
(3, 1, 'thumb.normal', 'user', 2, NULL, '2017-05-22 03:45:01', '2017-05-22 03:45:01', 1, 'public/user/03/0003_8fea.jpg', 'jpg', 'n_StockSnap_B6GYMTH73U.jpg', 'image', 'jpeg', 1232, 'f7b08feaa983496b3f9a2478fcd64593'),
(4, 1, 'thumb.icon', 'user', 2, NULL, '2017-05-22 03:45:01', '2017-05-22 03:45:01', 1, 'public/user/04/0004_8850.jpg', 'jpg', 's_StockSnap_B6GYMTH73U.jpg', 'image', 'jpeg', 1370, 'f3ef885007852fbe9a33b66b7e424153'),
(5, NULL, NULL, 'user', 3, NULL, '2017-05-22 03:54:03', '2017-05-22 03:54:03', 1, 'public/user/05/0005_6581.jpg', 'jpg', 'm_StockSnap_BA9AFFE0BF.jpg', 'image', 'jpeg', 22541, 'e6f765815bed5a0367dcd364aaa0f925'),
(6, 5, 'thumb.profile', 'user', 3, NULL, '2017-05-22 03:54:04', '2017-05-22 03:54:04', 1, 'public/user/06/0006_8105.jpg', 'jpg', 'p_StockSnap_BA9AFFE0BF.jpg', 'image', 'jpeg', 3611, 'f6a48105700f4efb6997bb482c8a2504'),
(7, 5, 'thumb.normal', 'user', 3, NULL, '2017-05-22 03:54:04', '2017-05-22 03:54:04', 1, 'public/user/07/0007_26d3.jpg', 'jpg', 'n_StockSnap_BA9AFFE0BF.jpg', 'image', 'jpeg', 1059, '21f026d3e8a590e0adf6bd35e9f079ca'),
(8, 5, 'thumb.icon', 'user', 3, NULL, '2017-05-22 03:54:04', '2017-05-22 03:54:04', 1, 'public/user/08/0008_d6e5.jpg', 'jpg', 's_StockSnap_BA9AFFE0BF.jpg', 'image', 'jpeg', 1077, '378ed6e58940c9194adefbe22df2eee8'),
(9, NULL, NULL, 'group', 1, 3, '2017-05-22 04:08:42', '2017-05-22 04:08:42', 1, 'public/group/09/0009_da3b.jpg', 'jpg', 'm_StockSnap_O21OSVHS0E.jpg', 'image', 'jpeg', 30383, 'b489da3b9755d0b3da8e45a22bc39ef9'),
(10, 9, 'thumb.profile', 'group', 1, 3, '2017-05-22 04:08:42', '2017-05-22 04:08:42', 1, 'public/group/0a/000a_1953.jpg', 'jpg', 'p_StockSnap_O21OSVHS0E.jpg', 'image', 'jpeg', 3167, '23601953a9597590cc89fc0b6cdcbdbe'),
(11, 9, 'thumb.normal', 'group', 1, 3, '2017-05-22 04:08:42', '2017-05-22 04:08:42', 1, 'public/group/0b/000b_1e14.jpg', 'jpg', 'in_StockSnap_O21OSVHS0E.jpg', 'image', 'jpeg', 2012, '38dc1e142e1f2ed317b32195c8c2bda5'),
(12, 9, 'thumb.icon', 'group', 1, 3, '2017-05-22 04:08:42', '2017-05-22 04:08:42', 1, 'public/group/0c/000c_a8e8.jpg', 'jpg', 'is_StockSnap_O21OSVHS0E.jpg', 'image', 'jpeg', 1011, 'f51aa8e827aee46a9b183f282d947e9c'),
(13, NULL, NULL, 'event', 1, 1, '2017-05-22 04:11:53', '2017-05-22 04:11:53', 1, 'public/event/0d/000d_a05f.jpg', 'jpg', 'm_batman is a god now.jpg', 'image', 'jpeg', 108917, '9261a05f365840669a434489686a30e4'),
(14, 13, 'thumb.profile', 'event', 1, 1, '2017-05-22 04:11:53', '2017-05-22 04:11:53', 1, 'public/event/0e/000e_8199.jpg', 'jpg', 'p_batman is a god now.jpg', 'image', 'jpeg', 9981, 'e5458199ec1f5e67bf8e3d499e0a5e13'),
(15, 13, 'thumb.normal', 'event', 1, 1, '2017-05-22 04:11:53', '2017-05-22 04:11:53', 1, 'public/event/0f/000f_9863.jpg', 'jpg', 'in_batman is a god now.jpg', 'image', 'jpeg', 5765, '63cf986376f9fe44f735dba0ac14da03'),
(16, 13, 'thumb.icon', 'event', 1, 1, '2017-05-22 04:11:53', '2017-05-22 04:11:53', 1, 'public/event/10/0010_cd33.jpg', 'jpg', 'is_batman is a god now.jpg', 'image', 'jpeg', 1589, '54e6cd334bf90fbce775ca709684fb0e'),
(17, NULL, NULL, 'hebadge_creditbadge', 1, 1, '2012-04-29 08:01:07', '2012-04-29 08:01:07', 1, 'public/hebadge_creditbadge/9d/009d_8d04.png', 'png', 'm_orange_grunge_sticker_badges_039.png', 'image', 'png', 56967, '79778d04288a26c9ca76969219fbe2df'),
(18, 17, 'thumb.icon', 'hebadge_creditbadge', 1, 1, '2012-04-29 08:01:07', '2012-04-29 08:01:07', 1, 'public/hebadge_creditbadge/a0/00a0_c7e5.png', 'png', 'is_orange_grunge_sticker_badges_039.png', 'image', 'png', 2006, '3bcac7e583624097d54ce06453c91710'),
(19, 17, 'thumb.profile', 'hebadge_creditbadge', 1, 1, '2012-04-29 08:01:07', '2012-04-29 08:01:07', 1, 'public/hebadge_creditbadge/9e/009e_6641.png', 'png', 'p_orange_grunge_sticker_badges_039.png', 'image', 'png', 16322, '22f9664167e112c1dfda5001734bd15b'),
(20, NULL, NULL, 'hebadge_creditbadge', 2, 1, '2012-04-29 08:04:03', '2012-04-29 08:04:03', 1, 'public/hebadge_creditbadge/a1/00a1_ff7b.png', 'png', 'm_orange_grunge_sticker_badges_037.png', 'image', 'png', 63445, 'bf92ff7b0b07290fbceec3ebb2954f4b'),
(21, 20, 'thumb.icon', 'hebadge_creditbadge', 2, 1, '2012-04-29 08:04:03', '2012-04-29 08:04:03', 1, 'public/hebadge_creditbadge/a4/00a4_9dd5.png', 'png', 'is_orange_grunge_sticker_badges_037.png', 'image', 'png', 2104, '12d59dd560ad922d3b867adeaab45d54'),
(22, 20, 'thumb.profile', 'hebadge_creditbadge', 2, 1, '2012-04-29 08:04:03', '2012-04-29 08:04:03', 1, 'public/hebadge_creditbadge/a2/00a2_a183.png', 'png', 'p_orange_grunge_sticker_badges_037.png', 'image', 'png', 17999, '8532a183ec343ef540216983349bd0c9'),
(23, NULL, NULL, 'hebadge_creditbadge', 3, 1, '2012-04-29 08:06:12', '2012-04-29 08:06:12', 1, 'public/hebadge_creditbadge/a5/00a5_9605.png', 'png', 'm_orange_grunge_sticker_badges_112.png', 'image', 'png', 59282, '4ef796050eebb3752927e919a36e4cda'),
(24, 23, 'thumb.icon', 'hebadge_creditbadge', 3, 1, '2012-04-29 08:06:12', '2012-04-29 08:06:12', 1, 'public/hebadge_creditbadge/a8/00a8_e21b.png', 'png', 'is_orange_grunge_sticker_badges_112.png', 'image', 'png', 2060, '4db5e21bd206ad1b1f44c807634b6659'),
(25, 23, 'thumb.profile', 'hebadge_creditbadge', 3, 1, '2012-04-29 08:06:12', '2012-04-29 08:06:12', 1, 'public/hebadge_creditbadge/a6/00a6_20e1.png', 'png', 'p_orange_grunge_sticker_badges_112.png', 'image', 'png', 16825, '866820e118254464d7905bb525469aef'),
(26, NULL, NULL, 'hebadge_creditbadge', 4, 1, '2012-04-29 08:06:56', '2012-04-29 08:06:56', 1, 'public/hebadge_creditbadge/a9/00a9_c4b2.png', 'png', 'm_orange_grunge_sticker_badges_036.png', 'image', 'png', 70911, '7911c4b210be516cf843f623fd01cf6c'),
(27, 26, 'thumb.icon', 'hebadge_creditbadge', 4, 1, '2012-04-29 08:06:56', '2012-04-29 08:06:56', 1, 'public/hebadge_creditbadge/ac/00ac_f4ac.png', 'png', 'is_orange_grunge_sticker_badges_036.png', 'image', 'png', 2195, '5652f4acedcc2b7fc19d054524f890b1'),
(28, 26, 'thumb.profile', 'hebadge_creditbadge', 4, 1, '2012-04-29 08:06:56', '2012-04-29 08:06:56', 1, 'public/hebadge_creditbadge/aa/00aa_84eb.png', 'png', 'p_orange_grunge_sticker_badges_036.png', 'image', 'png', 19586, 'c38684eb025b8507f24f6aab485ee30c'),
(29, NULL, NULL, 'hebadge_badge', 1, 1, '2012-04-29 08:25:53', '2012-04-29 08:25:53', 1, 'public/hebadge_badge/ad/00ad_6181.png', 'png', 'm_orange_grunge_sticker_badges_109.png', 'image', 'png', 61013, '01e461818ec0e4ebbd5285a5ddce37a6'),
(30, 29, 'thumb.icon', 'hebadge_badge', 1, 1, '2012-04-29 08:25:53', '2012-04-29 08:25:53', 1, 'public/hebadge_badge/b0/00b0_88f3.png', 'png', 'is_orange_grunge_sticker_badges_109.png', 'image', 'png', 2076, '296588f32ec51e7e99d5806b8db6c0f0'),
(31, 29, 'thumb.profile', 'hebadge_badge', 1, 1, '2012-04-29 08:25:53', '2012-04-29 08:25:53', 1, 'public/hebadge_badge/ae/00ae_a33f.png', 'png', 'p_orange_grunge_sticker_badges_109.png', 'image', 'png', 17195, 'ae7aa33fc8310b9fb9f505040856c375'),
(32, NULL, NULL, 'hebadge_badge', 2, 1, '2012-04-29 08:32:29', '2012-04-29 08:32:29', 1, 'public/hebadge_badge/b1/00b1_2cce.png', 'png', 'm_orange_grunge_sticker_badges_073.png', 'image', 'png', 57071, 'fdc32ccea5dcb1cd66c74fbc33c9cdb9'),
(33, 32, 'thumb.icon', 'hebadge_badge', 2, 1, '2012-04-29 08:32:29', '2012-04-29 08:32:29', 1, 'public/hebadge_badge/b4/00b4_c71e.png', 'png', 'is_orange_grunge_sticker_badges_073.png', 'image', 'png', 2003, '3e48c71ea6c40a9d8f12f1da778f8bbf'),
(34, 32, 'thumb.profile', 'hebadge_badge', 2, 1, '2012-04-29 08:32:29', '2012-04-29 08:32:29', 1, 'public/hebadge_badge/b2/00b2_ec73.png', 'png', 'p_orange_grunge_sticker_badges_073.png', 'image', 'png', 16336, 'a0d5ec735ddc3f49fceb16e993b7bfde'),
(35, NULL, NULL, 'hebadge_badge', 3, 1, '2012-04-29 08:43:41', '2012-04-29 08:43:41', 1, 'public/hebadge_badge/b5/00b5_f16e.png', 'png', 'm_orange_grunge_sticker_badges_499.png', 'image', 'png', 60429, '32cef16e12531d6a7c1953e65d47c1fb'),
(36, 35, 'thumb.icon', 'hebadge_badge', 3, 1, '2012-04-29 08:43:42', '2012-04-29 08:43:42', 1, 'public/hebadge_badge/b8/00b8_d1b5.png', 'png', 'is_orange_grunge_sticker_badges_499.png', 'image', 'png', 2042, 'bed3d1b5c97291865d159490def47120'),
(37, 35, 'thumb.profile', 'hebadge_badge', 3, 1, '2012-04-29 08:43:41', '2012-04-29 08:43:41', 1, 'public/hebadge_badge/b6/00b6_a92d.png', 'png', 'p_orange_grunge_sticker_badges_499.png', 'image', 'png', 17146, '7351a92da3cb361409164329ea0559c8'),
(38, NULL, NULL, 'hebadge_badge', 4, 1, '2012-04-30 04:00:00', '2012-04-30 04:00:00', 1, 'public/hebadge_badge/d7/00d7_19da.png', 'png', 'm_orange_grunge_sticker_badges_139.png', 'image', 'png', 54593, '639519daad9c879ac9bfc5794ac6e2e8'),
(39, 38, 'thumb.icon', 'hebadge_badge', 4, 1, '2012-04-30 04:00:00', '2012-04-30 04:00:00', 1, 'public/hebadge_badge/da/00da_5973.png', 'png', 'is_orange_grunge_sticker_badges_139.png', 'image', 'png', 1954, '636c597323c9454a12892b33074d7535'),
(40, 38, 'thumb.profile', 'hebadge_badge', 4, 1, '2012-04-30 04:00:00', '2012-04-30 04:00:00', 1, 'public/hebadge_badge/d8/00d8_23b8.png', 'png', 'p_orange_grunge_sticker_badges_139.png', 'image', 'png', 15660, 'e97623b8cb705c904b1d179f0c2769e5'),
(41, NULL, NULL, 'hebadge_badge', 5, 1, '2012-04-30 04:08:15', '2012-04-30 04:08:15', 1, 'public/hebadge_badge/db/00db_e27d.png', 'png', 'm_orange_grunge_sticker_badges_145.png', 'image', 'png', 60571, '64ece27df8cf17326d669cc7facae180'),
(42, 41, 'thumb.icon', 'hebadge_badge', 5, 1, '2012-04-30 04:08:15', '2012-04-30 04:08:15', 1, 'public/hebadge_badge/de/00de_cfdb.png', 'png', 'is_orange_grunge_sticker_badges_145.png', 'image', 'png', 2079, '299ecfdb3e8f59d87a94f00546d125bd'),
(43, 41, 'thumb.profile', 'hebadge_badge', 5, 1, '2012-04-30 04:08:15', '2012-04-30 04:08:15', 1, 'public/hebadge_badge/dc/00dc_2190.png', 'png', 'p_orange_grunge_sticker_badges_145.png', 'image', 'png', 17309, '969c21902908e5e8680df482336aade1'),
(44, NULL, NULL, 'hebadge_badge', 6, 1, '2012-04-30 04:32:41', '2012-04-30 04:32:41', 1, 'public/hebadge_badge/df/00df_0944.png', 'png', 'm_orange_grunge_sticker_badges_325.png', 'image', 'png', 61634, 'd97a09443001de20a16e1269dae4358c'),
(45, 44, 'thumb.icon', 'hebadge_badge', 6, 1, '2012-04-30 04:32:41', '2012-04-30 04:32:41', 1, 'public/hebadge_badge/e2/00e2_1b24.png', 'png', 'is_orange_grunge_sticker_badges_325.png', 'image', 'png', 2052, '10b41b24f3424f34c7bbf6673acc02fa'),
(46, 44, 'thumb.profile', 'hebadge_badge', 6, 1, '2012-04-30 04:32:41', '2012-04-30 04:32:41', 1, 'public/hebadge_badge/e0/00e0_df25.png', 'png', 'p_orange_grunge_sticker_badges_325.png', 'image', 'png', 17275, '1a08df259a11a1d595c9b41d09ae9f55'),
(47, NULL, NULL, 'hebadge_badge', 7, 1, '2012-04-30 05:17:00', '2012-04-30 05:17:00', 1, 'public/hebadge_badge/e3/00e3_873b.png', 'png', 'm_orange_grunge_sticker_badges_071.png', 'image', 'png', 56050, '096a873b733acd3ab13af2febc552f12'),
(48, 47, 'thumb.icon', 'hebadge_badge', 7, 1, '2012-04-30 05:17:01', '2012-04-30 05:17:01', 1, 'public/hebadge_badge/e6/00e6_6301.png', 'png', 'is_orange_grunge_sticker_badges_071.png', 'image', 'png', 1988, '26df6301ba5b519fa7e435c20d83b7c1'),
(49, 47, 'thumb.profile', 'hebadge_badge', 7, 1, '2012-04-30 05:17:00', '2012-04-30 05:17:00', 1, 'public/hebadge_badge/e4/00e4_97e4.png', 'png', 'p_orange_grunge_sticker_badges_071.png', 'image', 'png', 16058, '8f3097e426bf7437854b148cb07e4b24'),
(50, NULL, NULL, 'hebadge_pagebadge', 1, 1, '2012-04-30 05:38:37', '2012-04-30 05:38:37', 1, 'public/hebadge_pagebadge/e7/00e7_e11c.png', 'png', 'm_orange_grunge_sticker_badges_068.png', 'image', 'png', 62479, 'e453e11c2187391bfa5f559db07dccf4'),
(51, 50, 'thumb.icon', 'hebadge_pagebadge', 1, 1, '2012-04-30 05:38:37', '2012-04-30 05:38:37', 1, 'public/hebadge_pagebadge/ea/00ea_987f.png', 'png', 'is_orange_grunge_sticker_badges_068.png', 'image', 'png', 2014, 'd40a987f8e7271cd2e64f6335c4cc993'),
(52, 50, 'thumb.profile', 'hebadge_pagebadge', 1, 1, '2012-04-30 05:38:37', '2012-04-30 05:38:37', 1, 'public/hebadge_pagebadge/e8/00e8_24d7.png', 'png', 'p_orange_grunge_sticker_badges_068.png', 'image', 'png', 17339, 'dbcb24d7300e71b52b1179f3e91922bc'),
(53, NULL, NULL, 'hebadge_pagebadge', 2, 1, '2012-04-30 05:40:39', '2012-04-30 05:40:39', 1, 'public/hebadge_pagebadge/eb/00eb_1993.png', 'png', 'm_orange_grunge_sticker_badges_043.png', 'image', 'png', 54405, 'ed911993e9847472b8baefc2ebef7cc0'),
(54, 53, 'thumb.icon', 'hebadge_pagebadge', 2, 1, '2012-04-30 05:40:39', '2012-04-30 05:40:39', 1, 'public/hebadge_pagebadge/ee/00ee_a753.png', 'png', 'is_orange_grunge_sticker_badges_043.png', 'image', 'png', 1935, 'e0d0a75338e04dc048d4ec86e42295ef'),
(55, 53, 'thumb.profile', 'hebadge_pagebadge', 2, 1, '2012-04-30 05:40:39', '2012-04-30 05:40:39', 1, 'public/hebadge_pagebadge/ec/00ec_bab6.png', 'png', 'p_orange_grunge_sticker_badges_043.png', 'image', 'png', 15746, '1d8dbab6942611c533fdfd253521567b'),
(56, NULL, NULL, 'hebadge_pagebadge', 3, 1, '2012-04-30 05:42:55', '2012-04-30 05:42:55', 1, 'public/hebadge_pagebadge/ef/00ef_2b5e.png', 'png', 'm_orange_grunge_sticker_badges_256.png', 'image', 'png', 57945, 'ce812b5e1eec07c6cb2e0f3d0a8b976a'),
(57, 56, 'thumb.icon', 'hebadge_pagebadge', 3, 1, '2012-04-30 05:42:55', '2012-04-30 05:42:55', 1, 'public/hebadge_pagebadge/f2/00f2_3878.png', 'png', 'is_orange_grunge_sticker_badges_256.png', 'image', 'png', 1975, '6ee13878dca8e62834c6a0f98fd47d82'),
(58, 56, 'thumb.profile', 'hebadge_pagebadge', 3, 1, '2012-04-30 05:42:55', '2012-04-30 05:42:55', 1, 'public/hebadge_pagebadge/f0/00f0_6bdc.png', 'png', 'p_orange_grunge_sticker_badges_256.png', 'image', 'png', 16725, 'd0f16bdc1e7425f8f1ce1e3287ea5db5'),
(59, NULL, NULL, 'hebadge_pagebadge', 4, 1, '2012-04-30 06:48:52', '2012-04-30 06:48:52', 1, 'public/hebadge_pagebadge/f3/00f3_a384.png', 'png', 'm_orange_grunge_sticker_badges_222.png', 'image', 'png', 62429, '01e1a38435111a59391f536558e0ad50'),
(60, 59, 'thumb.icon', 'hebadge_pagebadge', 4, 1, '2012-04-30 06:48:52', '2012-04-30 06:48:52', 1, 'public/hebadge_pagebadge/f6/00f6_afe9.png', 'png', 'is_orange_grunge_sticker_badges_222.png', 'image', 'png', 2076, 'cc23afe9f8eb022575fcbf48d6df8389'),
(61, 59, 'thumb.profile', 'hebadge_pagebadge', 4, 1, '2012-04-30 06:48:52', '2012-04-30 06:48:52', 1, 'public/hebadge_pagebadge/f4/00f4_b8e7.png', 'png', 'p_orange_grunge_sticker_badges_222.png', 'image', 'png', 17683, '17bab8e71386b50b8501817b830bd3bb'),
(62, NULL, NULL, 'hebadge_pagebadge', 5, 1, '2012-04-30 07:11:33', '2012-04-30 07:11:33', 1, 'public/hebadge_pagebadge/f7/00f7_227d.png', 'png', 'm_orange_grunge_sticker_badges_179.png', 'image', 'png', 60558, 'c65b227ddabb52fed0ae93480e0f0db8'),
(63, 62, 'thumb.icon', 'hebadge_pagebadge', 5, 1, '2012-04-30 07:11:34', '2012-04-30 07:11:34', 1, 'public/hebadge_pagebadge/fa/00fa_053e.png', 'png', 'is_orange_grunge_sticker_badges_179.png', 'image', 'png', 2022, '9ca3053eb4d605c8e60e52941d93ca00'),
(64, 62, 'thumb.profile', 'hebadge_pagebadge', 5, 1, '2012-04-30 07:11:34', '2012-04-30 07:11:34', 1, 'public/hebadge_pagebadge/f8/00f8_7950.png', 'png', 'p_orange_grunge_sticker_badges_179.png', 'image', 'png', 17172, '37b1795059d918a37245a5f52d30df97'),
(65, NULL, NULL, 'hebadge_pagebadge', 6, 1, '2012-04-30 07:14:35', '2012-04-30 07:14:35', 1, 'public/hebadge_pagebadge/fb/00fb_efee.png', 'png', 'm_orange_grunge_sticker_badges_291.png', 'image', 'png', 59098, '0902efee371ce07d32d96996d6658365'),
(66, 65, 'thumb.icon', 'hebadge_pagebadge', 6, 1, '2012-04-30 07:14:35', '2012-04-30 07:14:35', 1, 'public/hebadge_pagebadge/fe/00fe_2628.png', 'png', 'is_orange_grunge_sticker_badges_291.png', 'image', 'png', 2002, '794d2628643275fdb32093f7d29b18e5'),
(67, 65, 'thumb.profile', 'hebadge_pagebadge', 6, 1, '2012-04-30 07:14:35', '2012-04-30 07:14:35', 1, 'public/hebadge_pagebadge/fc/00fc_a6f0.png', 'png', 'p_orange_grunge_sticker_badges_291.png', 'image', 'png', 16828, '6065a6f0e3185c9fb8c59b8fd58d3b3e'),
(68, NULL, NULL, 'hebadge_pagebadge', 7, 1, '2012-04-30 07:16:52', '2012-04-30 07:16:52', 1, 'public/hebadge_pagebadge/00/01/00ff_b56b.png', 'png', 'm_orange_grunge_sticker_badges_215.png', 'image', 'png', 57309, '9bfcb56bbcc936888ce115a3941896df'),
(69, 68, 'thumb.icon', 'hebadge_pagebadge', 7, 1, '2012-04-30 07:16:53', '2012-04-30 07:16:53', 1, 'public/hebadge_pagebadge/03/01/0102_0e52.png', 'png', 'is_orange_grunge_sticker_badges_215.png', 'image', 'png', 2108, '28550e523c9d20333728366233e62771'),
(70, 68, 'thumb.profile', 'hebadge_pagebadge', 7, 1, '2012-04-30 07:16:52', '2012-04-30 07:16:52', 1, 'public/hebadge_pagebadge/01/01/0100_2df2.png', 'png', 'p_orange_grunge_sticker_badges_215.png', 'image', 'png', 16627, '8c0d2df2019b57f3b44dd4e63bcf679a'),
(71, NULL, NULL, 'hebadge_pagebadge', 8, 1, '2012-04-30 07:18:33', '2012-04-30 07:18:33', 1, 'public/hebadge_pagebadge/04/01/0103_b7da.png', 'png', 'm_orange_grunge_sticker_badges_124.png', 'image', 'png', 60412, '8b69b7da58eaf462743a6051beb3c803'),
(72, 71, 'thumb.icon', 'hebadge_pagebadge', 8, 1, '2012-04-30 07:18:33', '2012-04-30 07:18:33', 1, 'public/hebadge_pagebadge/07/01/0106_4277.png', 'png', 'is_orange_grunge_sticker_badges_124.png', 'image', 'png', 2157, 'f93142777ccdd2b12dce22bf941e9e3a'),
(73, 71, 'thumb.profile', 'hebadge_pagebadge', 8, 1, '2012-04-30 07:18:33', '2012-04-30 07:18:33', 1, 'public/hebadge_pagebadge/05/01/0104_f6ba.png', 'png', 'p_orange_grunge_sticker_badges_124.png', 'image', 'png', 17338, '8cd9f6ba15bb21d480204f889abce536'),
(74, NULL, NULL, 'hebadge_pagebadge', 9, 1, '2012-04-30 08:10:45', '2012-04-30 08:10:45', 1, 'public/hebadge_pagebadge/08/01/0107_2717.png', 'png', 'm_orange_grunge_sticker_badges_166.png', 'image', 'png', 55324, '97f32717f385015329b99ea4295e7a6a'),
(75, 74, 'thumb.icon', 'hebadge_pagebadge', 9, 1, '2012-04-30 08:10:45', '2012-04-30 08:10:45', 1, 'public/hebadge_pagebadge/0b/01/010a_21c3.png', 'png', 'is_orange_grunge_sticker_badges_166.png', 'image', 'png', 2036, '6b4c21c399800bc5a216239c456679e2'),
(76, 74, 'thumb.profile', 'hebadge_pagebadge', 9, 1, '2012-04-30 08:10:45', '2012-04-30 08:10:45', 1, 'public/hebadge_pagebadge/09/01/0108_fc77.png', 'png', 'p_orange_grunge_sticker_badges_166.png', 'image', 'png', 16103, 'c561fc77cf36ebc7225cfb48cc549dfd'),
(77, NULL, NULL, 'hebadge_pagebadge', 10, 1, '2012-04-30 08:24:52', '2012-04-30 08:24:52', 1, 'public/hebadge_pagebadge/0f/01/010e_2fd3.png', 'png', 'm_orange_grunge_sticker_badges_292.png', 'image', 'png', 58584, '98c52fd372f7246295bb28cb17f59950'),
(78, 77, 'thumb.icon', 'hebadge_pagebadge', 10, 1, '2012-04-30 08:24:52', '2012-04-30 08:24:52', 1, 'public/hebadge_pagebadge/12/01/0111_a190.png', 'png', 'is_orange_grunge_sticker_badges_292.png', 'image', 'png', 2125, '1658a19059d588045d6315896b27f57e'),
(79, 77, 'thumb.profile', 'hebadge_pagebadge', 10, 1, '2012-04-30 08:24:52', '2012-04-30 08:24:52', 1, 'public/hebadge_pagebadge/10/01/010f_0837.png', 'png', 'p_orange_grunge_sticker_badges_292.png', 'image', 'png', 16944, '977c0837266be1bda6734b702e7abd13'),
(80, NULL, NULL, 'hebadge_pagebadge', 11, 1, '2012-04-30 08:26:55', '2012-04-30 08:26:55', 1, 'public/hebadge_pagebadge/13/01/0112_8575.png', 'png', 'm_orange_grunge_sticker_badges_196.png', 'image', 'png', 58515, 'fe378575e156522f2dbe4e96e62a7052'),
(81, 80, 'thumb.icon', 'hebadge_pagebadge', 11, 1, '2012-04-30 08:26:55', '2012-04-30 08:26:55', 1, 'public/hebadge_pagebadge/16/01/0115_3d6f.png', 'png', 'is_orange_grunge_sticker_badges_196.png', 'image', 'png', 2141, '32833d6f93373a16301a6c31a93b36c1'),
(82, 80, 'thumb.profile', 'hebadge_pagebadge', 11, 1, '2012-04-30 08:26:55', '2012-04-30 08:26:55', 1, 'public/hebadge_pagebadge/14/01/0113_0858.png', 'png', 'p_orange_grunge_sticker_badges_196.png', 'image', 'png', 16958, '18e308580c3e6abf7d3380f121419aea'),
(83, NULL, NULL, 'hebadge_pagebadge', 12, 1, '2012-04-30 08:31:03', '2012-04-30 08:31:03', 1, 'public/hebadge_pagebadge/17/01/0116_d708.png', 'png', 'm_orange_grunge_sticker_badges_213.png', 'image', 'png', 55281, '91e3d708f006d87086d4a221bd53a730'),
(84, 83, 'thumb.icon', 'hebadge_pagebadge', 12, 1, '2012-04-30 08:31:03', '2012-04-30 08:31:03', 1, 'public/hebadge_pagebadge/1a/01/0119_e73b.png', 'png', 'is_orange_grunge_sticker_badges_213.png', 'image', 'png', 2083, '07ede73b76a36f872befd1ef91c9efb6'),
(85, 83, 'thumb.profile', 'hebadge_pagebadge', 12, 1, '2012-04-30 08:31:03', '2012-04-30 08:31:03', 1, 'public/hebadge_pagebadge/18/01/0117_cb40.png', 'png', 'p_orange_grunge_sticker_badges_213.png', 'image', 'png', 16196, 'a37acb40ce4aeb3d73be746c1fbcd5a4'),
(86, NULL, NULL, 'hebadge_pagebadge', 13, 1, '2012-04-30 08:34:48', '2012-04-30 08:34:48', 1, 'public/hebadge_pagebadge/1b/01/011a_2644.png', 'png', 'm_orange_grunge_sticker_badges_154.png', 'image', 'png', 60105, 'd3482644083070fcb4d33c51a65c931b'),
(87, 86, 'thumb.icon', 'hebadge_pagebadge', 13, 1, '2012-04-30 08:34:48', '2012-04-30 08:34:48', 1, 'public/hebadge_pagebadge/1e/01/011d_bbe9.png', 'png', 'is_orange_grunge_sticker_badges_154.png', 'image', 'png', 2123, '8b27bbe92027e49e2cff6eaca81c4bd2'),
(88, 86, 'thumb.profile', 'hebadge_pagebadge', 13, 1, '2012-04-30 08:34:48', '2012-04-30 08:34:48', 1, 'public/hebadge_pagebadge/1c/01/011b_27f5.png', 'png', 'p_orange_grunge_sticker_badges_154.png', 'image', 'png', 17357, 'e1a927f53600a4d1053a292e9c7fa774'),
(89, NULL, NULL, 'hebadge_pagebadge', 14, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_pagebadge/1f/01/011e_c84f.png', 'png', 'm_orange_grunge_sticker_badges_142.png', 'image', 'png', 64070, '6a6bc84fde9281de8ce55bfe8c5ee141'),
(90, 89, 'thumb.icon', 'hebadge_pagebadge', 14, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_pagebadge/22/01/0121_c4a7.png', 'png', 'is_orange_grunge_sticker_badges_142.png', 'image', 'png', 2266, '12d1c4a78d50380d1cf828e70b3af3bf'),
(91, 89, 'thumb.profile', 'hebadge_pagebadge', 14, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_pagebadge/20/01/011f_eb61.png', 'png', 'p_orange_grunge_sticker_badges_142.png', 'image', 'png', 18295, '1eb9eb61425a53a99d9797ba1b896164'),
(92, NULL, NULL, 'hebadge_badge', 8, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/47/01/0146_b670.png', 'png', 'm_SUPER ADMIN.png', 'image', 'png', 12445, '979cb670af5631efbf130c06254f006c'),
(93, 92, 'thumb.profile', 'hebadge_badge', 8, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/48/01/0147_b670.png', 'png', 'p_SUPER ADMIN.png', 'image', 'png', 12445, '979cb670af5631efbf130c06254f006c'),
(94, 92, 'thumb.icon', 'hebadge_badge', 8, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/4a/01/0149_ddee.png', 'png', 'is_super admin_.png', 'image', 'png', 2337, '70d1ddee2de7a9f21b041c1df67cd7c5'),
(95, NULL, NULL, 'hebadge_badge', 9, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/4b/01/014a_2376.png', 'png', 'm_ADMIN.png', 'image', 'png', 14484, '95142376b55427e81d496a19f4fa2ff1'),
(96, 95, 'thumb.profile', 'hebadge_badge', 9, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/4c/01/014b_2376.png', 'png', 'p_ADMIN.png', 'image', 'png', 14484, '95142376b55427e81d496a19f4fa2ff1'),
(97, 95, 'thumb.icon', 'hebadge_badge', 9, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/4e/01/014d_ce08.png', 'png', 'is_admin_.png', 'image', 'png', 2464, 'b4d0ce087dfdac706ccb76ef0fd10c42'),
(98, NULL, NULL, 'hebadge_badge', 10, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/4f/01/014e_6985.png', 'png', 'm_MODERATOR.png', 'image', 'png', 14792, '54106985aeead7758f425fe50b7f6892'),
(99, 98, 'thumb.profile', 'hebadge_badge', 10, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/4c/01/014b_2376.png', 'png', 'p_MODERATOR.png', 'image', 'png', 14792, '54106985aeead7758f425fe50b7f6892'),
(100, 98, 'thumb.icon', 'hebadge_badge', 10, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/4e/01/014d_ce08.png', 'png', 'is_moderator_.png', 'image', 'png', 2354, '15f6261bdea5e2a38f1d5439870bad2b'),
(101, NULL, NULL, 'hebadge_badge', 11, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/53/01/0152_a0d7.png', 'png', 'm_PUBLIC.png', 'image', 'png', 14143, 'fe7aa0d7add7c14c5e12bbefc3b6f217'),
(102, 101, 'thumb.profile', 'hebadge_badge', 11, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/54/01/0153_a0d7.png', 'png', 'p_PUBLIC.png', 'image', 'png', 14143, 'fe7aa0d7add7c14c5e12bbefc3b6f217'),
(103, 101, 'thumb.icon', 'hebadge_badge', 11, 1, '2012-04-30 08:36:51', '2012-04-30 08:36:51', 1, 'public/hebadge_badge/56/01/0155_dad7.png', 'png', 'is_public_.png', 'image', 'png', 2415, '9412dad75d1d56387cc5a198bc225f11'),
(104, NULL, NULL, 'user', 1, 1, '2017-05-22 05:31:25', '2017-05-22 05:31:25', 1, 'public/user/68/0068_1a4a.jpg', 'jpg', 'Penguins_m.jpg', 'image', 'jpeg', 53345, '74021a4a3d448835db58b78957a2e200'),
(105, 104, 'thumb.profile', 'user', 1, 1, '2017-05-22 05:31:25', '2017-05-22 05:31:25', 1, 'public/user/69/0069_123d.jpg', 'jpg', 'Penguins_p.jpg', 'image', 'jpeg', 6868, '32db123d8578a409a557487f5fb7d660'),
(106, 104, 'thumb.normal', 'user', 1, 1, '2017-05-22 05:31:25', '2017-05-22 05:31:25', 1, 'public/user/6a/006a_138e.jpg', 'jpg', 'Penguins_in.jpg', 'image', 'jpeg', 4362, '93c2138e8940e16c180a5ffc6a40cfba'),
(107, 104, 'thumb.icon', 'user', 1, 1, '2017-05-22 05:31:25', '2017-05-22 05:31:25', 1, 'public/user/6b/006b_ecad.jpg', 'jpg', 'Penguins_is.jpg', 'image', 'jpeg', 1597, '9244ecad1abf40e938093fd37b55f1d2'),
(108, NULL, NULL, 'user', 1, 1, '2017-05-22 05:32:25', '2017-05-22 05:32:25', 1, 'public/user/6c/006c_3fa3.jpg', 'jpg', '0068_1a4a_m.jpg', 'image', 'jpeg', 53269, '36633fa3b9b941ec18387ef2a4705070'),
(109, NULL, NULL, 'user', 1, 1, '2017-05-22 05:32:25', '2017-05-22 05:32:25', 1, 'public/user/6d/006d_bd3f.jpg', 'jpg', '0068_1a4a_p.jpg', 'image', 'jpeg', 6786, '8d1abd3fa08e631d8cf84617626d7408'),
(110, NULL, NULL, 'user', 1, 1, '2017-05-22 05:32:25', '2017-05-22 05:32:25', 1, 'public/user/6e/006e_26cc.jpg', 'jpg', '0068_1a4a_in.jpg', 'image', 'jpeg', 4332, 'b52f26cca3a48bce5a48ad71555af7c9'),
(111, NULL, NULL, 'user', 1, 1, '2017-05-22 05:32:25', '2017-05-22 05:32:25', 1, 'public/user/6f/006f_b7d4.jpg', 'jpg', '0068_1a4a_is.jpg', 'image', 'jpeg', 1590, '2871b7d410ad6777981332c34fd22ddb'),
(113, NULL, NULL, 'video', 2, 3, '2017-05-22 07:44:22', '2017-05-22 07:44:22', 1, 'public/video/71/0071_b7da.jpg', 'jpg', 'link_thumb_5d0ee72e4c33c1d94f83dc937b4e77cd.jpg', 'image', 'jpeg', 3414, '48fbb7daffa766ffcac59c7926107fe5'),
(114, NULL, NULL, 'video', 3, 3, '2017-05-22 07:48:18', '2017-05-22 07:48:18', 1, 'public/video/72/0072_98cc.jpg', 'jpg', 'link_thumb_f63b4fa1dc8a80b45f41dfde2d096eea.jpg', 'image', 'jpeg', 2577, '36bf98cc79c716d9adea45174b121214'),
(117, NULL, NULL, 'article', 27, 1, '2017-05-26 02:34:33', '2017-05-26 02:34:33', 1, 'public/article/75/0075_682d.jpg', 'jpg', 'laptop-wallpapers-screensavers_m.jpg', 'image', 'jpeg', 32375, '4b3c682d9b0cab3cc6e93cdb3627b475'),
(118, 117, 'thumb.normal', 'article', 27, 1, '2017-05-26 02:34:33', '2017-05-26 02:34:33', 1, 'public/article/76/0076_be33.jpg', 'jpg', 'laptop-wallpapers-screensavers_in.jpg', 'image', 'jpeg', 2599, '6f01be33c997cb2bf0baa518855b7109'),
(121, NULL, NULL, 'article', 29, 1, '2017-05-26 04:51:11', '2017-05-26 04:51:11', 1, 'public/article/79/0079_6525.jpg', 'jpg', 'Lighthouse_m.jpg', 'image', 'jpeg', 47886, '63a76525133cbc152c223344fab15775'),
(122, 121, 'thumb.normal', 'article', 29, 1, '2017-05-26 04:51:11', '2017-05-26 04:51:11', 1, 'public/article/7a/007a_9dcb.jpg', 'jpg', 'Lighthouse_in.jpg', 'image', 'jpeg', 3324, 'ed4f9dcbf75cf7857129bb5b96500589'),
(123, NULL, NULL, 'article', 30, 1, '2017-05-26 04:52:06', '2017-05-26 04:52:06', 1, 'public/article/7b/007b_eeca.jpg', 'jpg', '0Tz2Gry88WY_m.jpg', 'image', 'jpeg', 52017, '8569eeca021e4a242e309c9ce6edbc89'),
(124, 123, 'thumb.normal', 'article', 30, 1, '2017-05-26 04:52:06', '2017-05-26 04:52:06', 1, 'public/article/7c/007c_1609.jpg', 'jpg', '0Tz2Gry88WY_in.jpg', 'image', 'jpeg', 4118, '04a31609affdb96cf0ce85926c6a4e26'),
(125, NULL, NULL, 'article', 31, 1, '2017-05-26 04:54:09', '2017-05-26 04:54:09', 1, 'public/article/7d/007d_6f7f.jpg', 'jpg', 'Bi-_wL_2PLg_m.jpg', 'image', 'jpeg', 35825, 'd5d16f7fbf7da645832a63c54beabcca'),
(126, 125, 'thumb.normal', 'article', 31, 1, '2017-05-26 04:54:09', '2017-05-26 04:54:09', 1, 'public/article/7e/007e_be7b.jpg', 'jpg', 'Bi-_wL_2PLg_in.jpg', 'image', 'jpeg', 3396, '398bbe7bc913139d95120e5ff2680e27'),
(127, NULL, NULL, 'article', 32, 3, '2017-05-26 04:55:12', '2017-05-26 04:55:12', 1, 'public/article/7f/007f_a134.jpg', 'jpg', 'yNDsaTdbuDc_m.jpg', 'image', 'jpeg', 52660, '2b49a1343bdc55967ab47ecf52bed3ae'),
(128, 127, 'thumb.normal', 'article', 32, 3, '2017-05-26 04:55:12', '2017-05-26 04:55:12', 1, 'public/article/80/0080_300a.jpg', 'jpg', 'yNDsaTdbuDc_in.jpg', 'image', 'jpeg', 5404, '4dc9300aafb1b6cd0b48db5c3e136956'),
(129, NULL, NULL, 'article', 33, 3, '2017-05-26 04:57:12', '2017-05-26 04:57:12', 1, 'public/article/81/0081_e8a9.jpg', 'jpg', 'tVnJtn3LK2E_m.jpg', 'image', 'jpeg', 29898, '8f85e8a900d64c431053daa2ce3da27e'),
(130, 129, 'thumb.normal', 'article', 33, 3, '2017-05-26 04:57:12', '2017-05-26 04:57:12', 1, 'public/article/82/0082_747c.jpg', 'jpg', 'tVnJtn3LK2E_in.jpg', 'image', 'jpeg', 3120, '1497747c5aec635d14893194d1dd2f4c'),
(131, NULL, NULL, 'article', 34, 3, '2017-05-26 05:11:34', '2017-05-26 05:11:34', 1, 'public/article/83/0083_c303.jpg', 'jpg', 'Dt0HlgRGCKY_m.jpg', 'image', 'jpeg', 21720, '9668c30345cdabc6a6693ad8a24481da'),
(132, 131, 'thumb.normal', 'article', 34, 3, '2017-05-26 05:11:34', '2017-05-26 05:11:34', 1, 'public/article/84/0084_a691.jpg', 'jpg', 'Dt0HlgRGCKY_in.jpg', 'image', 'jpeg', 2525, 'bfc0a691424f8c4440b5b5785aa954e9'),
(133, NULL, NULL, 'article', 35, 1, '2017-05-26 05:17:07', '2017-05-26 05:17:07', 1, 'public/article/85/0085_2659.jpg', 'jpg', 'Fv2DGVe_3AU_m.jpg', 'image', 'jpeg', 17099, '0d8f26596579c56199697f4a79dd19a8'),
(134, 133, 'thumb.normal', 'article', 35, 1, '2017-05-26 05:17:07', '2017-05-26 05:17:07', 1, 'public/article/86/0086_6e12.jpg', 'jpg', 'Fv2DGVe_3AU_in.jpg', 'image', 'jpeg', 3855, '23526e123c9dd5ccde25eb9174f652f5'),
(135, NULL, NULL, 'article', 36, 3, '2017-05-26 10:03:00', '2017-05-26 10:03:00', 1, 'public/article/87/0087_4410.jpg', 'jpg', 'asoT9XycuA4_m.jpg', 'image', 'jpeg', 59523, 'fc234410ebf215be77545d8567ca9d6e'),
(136, 135, 'thumb.normal', 'article', 36, 3, '2017-05-26 10:03:00', '2017-05-26 10:03:00', 1, 'public/article/88/0088_c286.jpg', 'jpg', 'asoT9XycuA4_in.jpg', 'image', 'jpeg', 5202, 'f036c286adbafe8ea13c9250442ff1d0'),
(137, NULL, NULL, 'article', 37, 3, '2017-05-26 10:04:16', '2017-05-26 10:04:16', 1, 'public/article/89/0089_6d54.jpg', 'jpg', 'v175EALqw0U_m.jpg', 'image', 'jpeg', 75905, '20996d54e495464c180e36f1dab635b3'),
(138, 137, 'thumb.normal', 'article', 37, 3, '2017-05-26 10:04:16', '2017-05-26 10:04:16', 1, 'public/article/8a/008a_b53a.jpg', 'jpg', 'v175EALqw0U_in.jpg', 'image', 'jpeg', 6627, '14c0b53ae2b52b99ec3539d14a8fb8bd'),
(139, NULL, NULL, 'article', 38, 1, '2017-05-26 10:14:34', '2017-05-26 10:14:34', 1, 'public/article/8b/008b_85a7.jpg', 'jpg', 'n6Jg_6SDxXQ_m.jpg', 'image', 'jpeg', 28223, '28c885a7e739c923365850c074a03f5a'),
(140, 139, 'thumb.normal', 'article', 38, 1, '2017-05-26 10:14:34', '2017-05-26 10:14:34', 1, 'public/article/8c/008c_b6f6.jpg', 'jpg', 'n6Jg_6SDxXQ_in.jpg', 'image', 'jpeg', 5002, '254eb6f65205b50d105d519b1aa93fd0'),
(141, NULL, NULL, 'article', 39, 1, '2017-05-26 10:15:59', '2017-05-26 10:15:59', 1, 'public/article/8d/008d_85a7.jpg', 'jpg', 'n6Jg_6SDxXQ_m.jpg', 'image', 'jpeg', 28223, '28c885a7e739c923365850c074a03f5a'),
(142, 141, 'thumb.normal', 'article', 39, 1, '2017-05-26 10:15:59', '2017-05-26 10:15:59', 1, 'public/article/8e/008e_b6f6.jpg', 'jpg', 'n6Jg_6SDxXQ_in.jpg', 'image', 'jpeg', 5002, '254eb6f65205b50d105d519b1aa93fd0'),
(143, NULL, NULL, 'article', 40, 1, '2017-05-26 10:16:10', '2017-05-26 10:16:10', 1, 'public/article/8f/008f_85a7.jpg', 'jpg', 'n6Jg_6SDxXQ_m.jpg', 'image', 'jpeg', 28223, '28c885a7e739c923365850c074a03f5a'),
(144, 143, 'thumb.normal', 'article', 40, 1, '2017-05-26 10:16:10', '2017-05-26 10:16:10', 1, 'public/article/90/0090_b6f6.jpg', 'jpg', 'n6Jg_6SDxXQ_in.jpg', 'image', 'jpeg', 5002, '254eb6f65205b50d105d519b1aa93fd0'),
(191, NULL, NULL, 'article', 69, 1, '2017-05-29 05:47:29', '2017-05-29 05:47:29', 1, 'public/article/bf/00bf_4dd7.jpeg', 'jpeg', '9d7e62b9fc5aee5d8f3efb4f979fe97f_large_m.jpeg', 'image', 'jpeg', 39653, '71e24dd7dce1cbc14657649011122796'),
(192, 191, 'thumb.normal', 'article', 69, 1, '2017-05-29 05:47:29', '2017-05-29 05:47:29', 1, 'public/article/c0/00c0_c8f1.jpeg', 'jpeg', '9d7e62b9fc5aee5d8f3efb4f979fe97f_large_in.jpeg', 'image', 'jpeg', 2887, 'c500c8f1ad294e2be45ce420b0cee57d'),
(197, NULL, NULL, 'article', 72, 1, '2017-05-29 05:55:58', '2017-05-29 05:55:58', 1, 'public/article/c5/00c5_355b.jpg', 'jpg', '27064_m.jpg', 'image', 'jpeg', 27708, '6693355b2b2b8da8ca12d82f014912b9'),
(198, 197, 'thumb.normal', 'article', 72, 1, '2017-05-29 05:55:58', '2017-05-29 05:55:58', 1, 'public/article/c6/00c6_b0f3.jpg', 'jpg', '27064_in.jpg', 'image', 'jpeg', 3010, 'ce30b0f377ae8cbfb8c4fae8247fc957'),
(223, NULL, NULL, 'article', 86, 1, '2017-05-29 08:04:19', '2017-05-29 08:04:19', 1, 'public/article/df/00df_db10.jpg', 'jpg', '5UMkhtF7jq8_m.jpg', 'image', 'jpeg', 46618, '7066db10a586d346991d5b6d50cbf5ba'),
(224, 223, 'thumb.normal', 'article', 86, 1, '2017-05-29 08:04:19', '2017-05-29 08:04:19', 1, 'public/article/e0/00e0_3c40.jpg', 'jpg', '5UMkhtF7jq8_in.jpg', 'image', 'jpeg', 3339, '397b3c403d1dd7b0c88e5547aad595d4'),
(225, NULL, NULL, 'article', 87, 1, '2017-05-29 08:05:47', '2017-05-29 08:05:47', 1, 'public/article/e1/00e1_9a64.jpg', 'jpg', '426080_m.jpg', 'image', 'jpeg', 66662, 'e4149a64b0c09733f29390c1a7a51bfc'),
(226, 225, 'thumb.normal', 'article', 87, 1, '2017-05-29 08:05:47', '2017-05-29 08:05:47', 1, 'public/article/e2/00e2_f483.jpg', 'jpg', '426080_in.jpg', 'image', 'jpeg', 3275, 'e9cff483fd475d6f3a10751fb647137c'),
(245, NULL, NULL, 'article', 110, 1, '2017-05-29 09:47:17', '2017-05-29 09:47:17', 1, 'public/article/f5/00f5_9a64.jpg', 'jpg', '426080_m.jpg', 'image', 'jpeg', 66662, 'e4149a64b0c09733f29390c1a7a51bfc'),
(246, 245, 'thumb.normal', 'article', 110, 1, '2017-05-29 09:47:17', '2017-05-29 09:47:17', 1, 'public/article/f6/00f6_f483.jpg', 'jpg', '426080_in.jpg', 'image', 'jpeg', 3275, 'e9cff483fd475d6f3a10751fb647137c'),
(247, NULL, NULL, 'article', 111, 1, '2017-05-29 09:49:43', '2017-05-29 09:49:43', 1, 'public/article/f7/00f7_9a64.jpg', 'jpg', '426080_m.jpg', 'image', 'jpeg', 66662, 'e4149a64b0c09733f29390c1a7a51bfc'),
(248, 247, 'thumb.normal', 'article', 111, 1, '2017-05-29 09:49:43', '2017-05-29 09:49:43', 1, 'public/article/f8/00f8_f483.jpg', 'jpg', '426080_in.jpg', 'image', 'jpeg', 3275, 'e9cff483fd475d6f3a10751fb647137c'),
(249, NULL, NULL, 'article', 112, 1, '2017-05-29 09:50:15', '2017-05-29 09:50:15', 1, 'public/article/f9/00f9_9a64.jpg', 'jpg', '426080_m.jpg', 'image', 'jpeg', 66662, 'e4149a64b0c09733f29390c1a7a51bfc'),
(250, 249, 'thumb.normal', 'article', 112, 1, '2017-05-29 09:50:15', '2017-05-29 09:50:15', 1, 'public/article/fa/00fa_f483.jpg', 'jpg', '426080_in.jpg', 'image', 'jpeg', 3275, 'e9cff483fd475d6f3a10751fb647137c'),
(251, NULL, NULL, 'article', 113, 1, '2017-05-29 09:50:29', '2017-05-29 09:50:29', 1, 'public/article/fb/00fb_9a64.jpg', 'jpg', '426080_m.jpg', 'image', 'jpeg', 66662, 'e4149a64b0c09733f29390c1a7a51bfc'),
(252, 251, 'thumb.normal', 'article', 113, 1, '2017-05-29 09:50:29', '2017-05-29 09:50:29', 1, 'public/article/fc/00fc_f483.jpg', 'jpg', '426080_in.jpg', 'image', 'jpeg', 3275, 'e9cff483fd475d6f3a10751fb647137c'),
(253, NULL, NULL, 'article', 114, 1, '2017-05-29 10:06:08', '2017-05-29 10:06:08', 1, 'public/article/fd/00fd_1043.png', 'png', '587777_m.png', 'image', 'png', 18326, 'fb1c1043661d75cbcca728631cbdbfb3'),
(254, 253, 'thumb.normal', 'article', 114, 1, '2017-05-29 10:06:08', '2017-05-29 10:06:08', 1, 'public/article/fe/00fe_ca20.png', 'png', '587777_in.png', 'image', 'png', 3178, 'bc40ca20815985eadfa141067ed53c9f'),
(255, NULL, NULL, 'article', 115, 1, '2017-05-29 10:10:09', '2017-05-29 10:10:09', 1, 'public/article/00/01/00ff_db10.jpg', 'jpg', '5UMkhtF7jq8_m.jpg', 'image', 'jpeg', 46618, '7066db10a586d346991d5b6d50cbf5ba'),
(256, 255, 'thumb.normal', 'article', 115, 1, '2017-05-29 10:10:09', '2017-05-29 10:10:09', 1, 'public/article/01/01/0100_3c40.jpg', 'jpg', '5UMkhtF7jq8_in.jpg', 'image', 'jpeg', 3339, '397b3c403d1dd7b0c88e5547aad595d4'),
(257, NULL, NULL, 'article', 116, 1, '2017-05-29 10:11:20', '2017-05-29 10:11:20', 1, 'public/article/02/01/0101_db10.jpg', 'jpg', '5UMkhtF7jq8_m.jpg', 'image', 'jpeg', 46618, '7066db10a586d346991d5b6d50cbf5ba'),
(258, 257, 'thumb.normal', 'article', 116, 1, '2017-05-29 10:11:20', '2017-05-29 10:11:20', 1, 'public/article/03/01/0102_3c40.jpg', 'jpg', '5UMkhtF7jq8_in.jpg', 'image', 'jpeg', 3339, '397b3c403d1dd7b0c88e5547aad595d4'),
(259, NULL, NULL, 'article', 117, 1, '2017-05-29 10:15:08', '2017-05-29 10:15:08', 1, 'public/article/04/01/0103_355b.jpg', 'jpg', '27064_m.jpg', 'image', 'jpeg', 27708, '6693355b2b2b8da8ca12d82f014912b9'),
(260, 259, 'thumb.normal', 'article', 117, 1, '2017-05-29 10:15:08', '2017-05-29 10:15:08', 1, 'public/article/05/01/0104_b0f3.jpg', 'jpg', '27064_in.jpg', 'image', 'jpeg', 3010, 'ce30b0f377ae8cbfb8c4fae8247fc957'),
(261, NULL, NULL, 'article', 118, 1, '2017-05-29 10:29:05', '2017-05-29 10:29:05', 1, 'public/article/06/01/0105_fbd9.jpg', 'jpg', '35_Ultimate_HQ_Wallpapers_Pack-3__1600x1200__-21-900x675_m.jpg', 'image', 'jpeg', 20572, '6e4cfbd9b6180e04971a1ce92e5e618c'),
(262, 261, 'thumb.normal', 'article', 118, 1, '2017-05-29 10:29:05', '2017-05-29 10:29:05', 1, 'public/article/07/01/0106_70b9.jpg', 'jpg', '35_Ultimate_HQ_Wallpapers_Pack-3__1600x1200__-21-900x675_in.jpg', 'image', 'jpeg', 2708, 'c06770b917aec2e1eeb297ea4437d6d9'),
(263, NULL, NULL, 'article', 119, 1, '2017-05-29 10:30:01', '2017-05-29 10:30:01', 1, 'public/article/08/01/0107_355b.jpg', 'jpg', '27064_m.jpg', 'image', 'jpeg', 27708, '6693355b2b2b8da8ca12d82f014912b9'),
(264, 263, 'thumb.normal', 'article', 119, 1, '2017-05-29 10:30:01', '2017-05-29 10:30:01', 1, 'public/article/09/01/0108_b0f3.jpg', 'jpg', '27064_in.jpg', 'image', 'jpeg', 3010, 'ce30b0f377ae8cbfb8c4fae8247fc957'),
(265, NULL, NULL, 'article', 120, 1, '2017-05-29 10:30:47', '2017-05-29 10:30:47', 1, 'public/article/0a/01/0109_9a64.jpg', 'jpg', '426080_m.jpg', 'image', 'jpeg', 66662, 'e4149a64b0c09733f29390c1a7a51bfc'),
(266, 265, 'thumb.normal', 'article', 120, 1, '2017-05-29 10:30:47', '2017-05-29 10:30:47', 1, 'public/article/0b/01/010a_f483.jpg', 'jpg', '426080_in.jpg', 'image', 'jpeg', 3275, 'e9cff483fd475d6f3a10751fb647137c'),
(267, NULL, NULL, 'article', 121, 1, '2017-05-29 10:31:09', '2017-05-29 10:31:09', 1, 'public/article/0c/01/010b_355b.jpg', 'jpg', '27064_m.jpg', 'image', 'jpeg', 27708, '6693355b2b2b8da8ca12d82f014912b9'),
(268, 267, 'thumb.normal', 'article', 121, 1, '2017-05-29 10:31:09', '2017-05-29 10:31:09', 1, 'public/article/0d/01/010c_b0f3.jpg', 'jpg', '27064_in.jpg', 'image', 'jpeg', 3010, 'ce30b0f377ae8cbfb8c4fae8247fc957'),
(269, NULL, NULL, 'article', 122, 1, '2017-05-29 10:31:37', '2017-05-29 10:31:37', 1, 'public/article/0e/01/010d_fbd9.jpg', 'jpg', '35_Ultimate_HQ_Wallpapers_Pack-3__1600x1200__-21-900x675_m.jpg', 'image', 'jpeg', 20572, '6e4cfbd9b6180e04971a1ce92e5e618c'),
(270, 269, 'thumb.normal', 'article', 122, 1, '2017-05-29 10:31:37', '2017-05-29 10:31:37', 1, 'public/article/0f/01/010e_70b9.jpg', 'jpg', '35_Ultimate_HQ_Wallpapers_Pack-3__1600x1200__-21-900x675_in.jpg', 'image', 'jpeg', 2708, 'c06770b917aec2e1eeb297ea4437d6d9'),
(271, NULL, NULL, 'article', 123, 1, '2017-05-29 10:32:04', '2017-05-29 10:32:04', 1, 'public/article/10/01/010f_9a64.jpg', 'jpg', '426080_m.jpg', 'image', 'jpeg', 66662, 'e4149a64b0c09733f29390c1a7a51bfc'),
(272, 271, 'thumb.normal', 'article', 123, 1, '2017-05-29 10:32:04', '2017-05-29 10:32:04', 1, 'public/article/11/01/0110_f483.jpg', 'jpg', '426080_in.jpg', 'image', 'jpeg', 3275, 'e9cff483fd475d6f3a10751fb647137c'),
(281, NULL, NULL, 'article', 135, 3, '2017-05-29 11:03:13', '2017-05-29 11:03:13', 1, 'public/article/1a/01/0119_fbd9.jpg', 'jpg', '35_Ultimate_HQ_Wallpapers_Pack-3__1600x1200__-21-900x675_m.jpg', 'image', 'jpeg', 20572, '6e4cfbd9b6180e04971a1ce92e5e618c'),
(282, 281, 'thumb.normal', 'article', 135, 3, '2017-05-29 11:03:13', '2017-05-29 11:03:13', 1, 'public/article/1b/01/011a_70b9.jpg', 'jpg', '35_Ultimate_HQ_Wallpapers_Pack-3__1600x1200__-21-900x675_in.jpg', 'image', 'jpeg', 2708, 'c06770b917aec2e1eeb297ea4437d6d9'),
(283, NULL, NULL, 'article', 136, 3, '2017-05-29 11:05:39', '2017-05-29 11:05:39', 1, 'public/article/1c/01/011b_db10.jpg', 'jpg', '5UMkhtF7jq8_m.jpg', 'image', 'jpeg', 46618, '7066db10a586d346991d5b6d50cbf5ba'),
(284, 283, 'thumb.normal', 'article', 136, 3, '2017-05-29 11:05:39', '2017-05-29 11:05:39', 1, 'public/article/1d/01/011c_3c40.jpg', 'jpg', '5UMkhtF7jq8_in.jpg', 'image', 'jpeg', 3339, '397b3c403d1dd7b0c88e5547aad595d4'),
(289, NULL, NULL, 'user', 4, NULL, '2017-05-30 03:04:23', '2017-05-30 03:04:23', 1, 'public/user/22/01/0121_a05f.jpg', 'jpg', 'm_batman is a god now.jpg', 'image', 'jpeg', 108917, '9261a05f365840669a434489686a30e4'),
(290, 289, 'thumb.profile', 'user', 4, NULL, '2017-05-30 03:04:23', '2017-05-30 03:04:23', 1, 'public/user/23/01/0122_8199.jpg', 'jpg', 'p_batman is a god now.jpg', 'image', 'jpeg', 9981, 'e5458199ec1f5e67bf8e3d499e0a5e13'),
(291, 289, 'thumb.normal', 'user', 4, NULL, '2017-05-30 03:04:24', '2017-05-30 03:04:24', 1, 'public/user/24/01/0123_b6bf.jpg', 'jpg', 'n_batman is a god now.jpg', 'image', 'jpeg', 1456, '021bb6bf23b74ee888a551019d184830'),
(292, 289, 'thumb.icon', 'user', 4, NULL, '2017-05-30 03:04:24', '2017-05-30 03:04:24', 1, 'public/user/25/01/0124_cd33.jpg', 'jpg', 's_batman is a god now.jpg', 'image', 'jpeg', 1589, '54e6cd334bf90fbce775ca709684fb0e'),
(305, NULL, NULL, 'user', 5, NULL, '2017-05-30 09:18:00', '2017-05-30 09:18:00', 1, 'public/user/32/01/0131_9f3f.jpg', 'jpg', 'm_Koala.jpg', 'image', 'jpeg', 73348, '97f69f3ff2b4832d435c5c03107c89f5'),
(306, 305, 'thumb.profile', 'user', 5, NULL, '2017-05-30 09:18:00', '2017-05-30 09:18:00', 1, 'public/user/33/01/0132_d085.jpg', 'jpg', 'p_Koala.jpg', 'image', 'jpeg', 8308, 'd6b6d085ff637afc8789288feff15959'),
(307, 305, 'thumb.normal', 'user', 5, NULL, '2017-05-30 09:18:00', '2017-05-30 09:18:00', 1, 'public/user/34/01/0133_147a.jpg', 'jpg', 'n_Koala.jpg', 'image', 'jpeg', 1357, '57d0147a9720ebd82365b6646958d9ef'),
(308, 305, 'thumb.icon', 'user', 5, NULL, '2017-05-30 09:18:00', '2017-05-30 09:18:00', 1, 'public/user/35/01/0134_a893.jpg', 'jpg', 's_Koala.jpg', 'image', 'jpeg', 1447, 'f956a893e9d9eeb9cedafd282911f0d5'),
(309, NULL, NULL, 'article', 139, 5, '2017-05-30 09:20:55', '2017-05-30 09:20:55', 1, 'public/article/36/01/0135_dfec.jpg', 'jpg', 'StockSnap_B6GYMTH73U_m.jpg', 'image', 'jpeg', 31059, 'eb4fdfecb5e196b479b6f3816b6f6671'),
(310, 309, 'thumb.normal', 'article', 139, 5, '2017-05-30 09:20:55', '2017-05-30 09:20:55', 1, 'public/article/37/01/0136_5b22.jpg', 'jpg', 'StockSnap_B6GYMTH73U_in.jpg', 'image', 'jpeg', 3572, '58275b22b5ca9cffbf0317199e544549'),
(313, NULL, NULL, 'article', 142, 1, '2017-05-31 03:54:17', '2017-05-31 03:54:17', 1, 'public/article/3a/01/0139_fbd9.jpg', 'jpg', '35_Ultimate_HQ_Wallpapers_Pack-3__1600x1200__-21-900x675_m.jpg', 'image', 'jpeg', 20572, '6e4cfbd9b6180e04971a1ce92e5e618c'),
(314, 313, 'thumb.normal', 'article', 142, 1, '2017-05-31 03:54:17', '2017-05-31 03:54:17', 1, 'public/article/3b/01/013a_70b9.jpg', 'jpg', '35_Ultimate_HQ_Wallpapers_Pack-3__1600x1200__-21-900x675_in.jpg', 'image', 'jpeg', 2708, 'c06770b917aec2e1eeb297ea4437d6d9'),
(315, NULL, NULL, 'article', 143, 1, '2017-05-31 03:56:16', '2017-05-31 03:56:16', 1, 'public/article/3c/01/013b_1043.png', 'png', '587777_m.png', 'image', 'png', 18326, 'fb1c1043661d75cbcca728631cbdbfb3'),
(316, 315, 'thumb.normal', 'article', 143, 1, '2017-05-31 03:56:16', '2017-05-31 03:56:16', 1, 'public/article/3d/01/013c_ca20.png', 'png', '587777_in.png', 'image', 'png', 3178, 'bc40ca20815985eadfa141067ed53c9f'),
(317, NULL, NULL, 'article', 145, 1, '2017-05-31 04:04:28', '2017-05-31 04:04:28', 1, 'public/article/3e/01/013d_355b.jpg', 'jpg', '27064_m.jpg', 'image', 'jpeg', 27708, '6693355b2b2b8da8ca12d82f014912b9'),
(318, 317, 'thumb.normal', 'article', 145, 1, '2017-05-31 04:04:28', '2017-05-31 04:04:28', 1, 'public/article/3f/01/013e_b0f3.jpg', 'jpg', '27064_in.jpg', 'image', 'jpeg', 3010, 'ce30b0f377ae8cbfb8c4fae8247fc957'),
(319, NULL, NULL, 'article', 145, 1, '2017-05-31 04:43:45', '2017-05-31 04:43:45', 1, 'public/article/40/01/013f_9a64.jpg', 'jpg', '426080_m.jpg', 'image', 'jpeg', 66662, 'e4149a64b0c09733f29390c1a7a51bfc'),
(320, 319, 'thumb.normal', 'article', 145, 1, '2017-05-31 04:43:45', '2017-05-31 04:43:45', 1, 'public/article/41/01/0140_f483.jpg', 'jpg', '426080_in.jpg', 'image', 'jpeg', 3275, 'e9cff483fd475d6f3a10751fb647137c'),
(321, NULL, NULL, 'article', 146, 1, '2017-05-31 04:49:49', '2017-05-31 04:49:49', 1, 'public/article/42/01/0141_fbd9.jpg', 'jpg', '35_Ultimate_HQ_Wallpapers_Pack-3__1600x1200__-21-900x675_m.jpg', 'image', 'jpeg', 20572, '6e4cfbd9b6180e04971a1ce92e5e618c'),
(322, 321, 'thumb.normal', 'article', 146, 1, '2017-05-31 04:49:49', '2017-05-31 04:49:49', 1, 'public/article/43/01/0142_70b9.jpg', 'jpg', '35_Ultimate_HQ_Wallpapers_Pack-3__1600x1200__-21-900x675_in.jpg', 'image', 'jpeg', 2708, 'c06770b917aec2e1eeb297ea4437d6d9'),
(323, NULL, NULL, 'user', 6, NULL, '2017-06-06 03:17:37', '2017-06-06 03:17:37', 1, 'public/user/44/01/0143_a5ed.jpg', 'jpg', 'm_victor.jpg', 'image', 'jpeg', 8338, 'd3aea5ede1746674eb42fe67d63e2aef'),
(324, 323, 'thumb.profile', 'user', 6, NULL, '2017-06-06 03:17:37', '2017-06-06 03:17:37', 1, 'public/user/45/01/0144_ba01.jpg', 'jpg', 'p_victor.jpg', 'image', 'jpeg', 6624, 'cceeba010ba77518a74339f249099d7b'),
(325, 323, 'thumb.normal', 'user', 6, NULL, '2017-06-06 03:17:37', '2017-06-06 03:17:37', 1, 'public/user/46/01/0145_6731.jpg', 'jpg', 'n_victor.jpg', 'image', 'jpeg', 1433, '069267319ff277a7ba6a7b6abc332773'),
(326, 323, 'thumb.icon', 'user', 6, NULL, '2017-06-06 03:17:38', '2017-06-06 03:17:38', 1, 'public/user/47/01/0146_6731.jpg', 'jpg', 's_victor.jpg', 'image', 'jpeg', 1433, '069267319ff277a7ba6a7b6abc332773'),
(327, NULL, NULL, 'user', 7, NULL, '2017-06-06 03:22:01', '2017-06-06 03:22:01', 1, 'public/user/48/01/0147_2f09.jpg', 'jpg', 'm_seris.jpg', 'image', 'jpeg', 31245, 'c9062f09d43c6e57fbed85d2f88ba935'),
(328, 327, 'thumb.profile', 'user', 7, NULL, '2017-06-06 03:22:01', '2017-06-06 03:22:01', 1, 'public/user/49/01/0148_721e.jpg', 'jpg', 'p_seris.jpg', 'image', 'jpeg', 5580, '342f721e6146ba9ef5aca2403b13e9f8'),
(329, 327, 'thumb.normal', 'user', 7, NULL, '2017-06-06 03:22:01', '2017-06-06 03:22:01', 1, 'public/user/4a/01/0149_5d9d.jpg', 'jpg', 'n_seris.jpg', 'image', 'jpeg', 1199, 'e5935d9d31e798c7d3c875cefd4891e8'),
(330, 327, 'thumb.icon', 'user', 7, NULL, '2017-06-06 03:22:02', '2017-06-06 03:22:02', 1, 'public/user/4b/01/014a_5d9d.jpg', 'jpg', 's_seris.jpg', 'image', 'jpeg', 1199, 'e5935d9d31e798c7d3c875cefd4891e8'),
(331, NULL, NULL, 'user', 8, NULL, '2017-06-06 03:24:44', '2017-06-06 03:24:44', 1, 'public/user/4c/01/014b_a5e0.jpg', 'jpg', 'm_drogoz.jpg', 'image', 'jpeg', 9964, '82eaa5e01795761e58ba7ff9a50b374a'),
(332, 331, 'thumb.profile', 'user', 8, NULL, '2017-06-06 03:24:44', '2017-06-06 03:24:44', 1, 'public/user/4d/01/014c_7b74.jpg', 'jpg', 'p_drogoz.jpg', 'image', 'jpeg', 7887, '43e27b74b5ae6567cfd0b391413b467b'),
(333, 331, 'thumb.normal', 'user', 8, NULL, '2017-06-06 03:24:44', '2017-06-06 03:24:44', 1, 'public/user/4e/01/014d_7081.jpg', 'jpg', 'n_drogoz.jpg', 'image', 'jpeg', 1500, 'b23670813281debf1bb939ca255e1e47'),
(334, 331, 'thumb.icon', 'user', 8, NULL, '2017-06-06 03:24:45', '2017-06-06 03:24:45', 1, 'public/user/4f/01/014e_7081.jpg', 'jpg', 's_drogoz.jpg', 'image', 'jpeg', 1500, 'b23670813281debf1bb939ca255e1e47'),
(335, NULL, NULL, 'user', 9, NULL, '2017-06-06 03:28:20', '2017-06-06 03:28:20', 1, 'public/user/50/01/014f_8788.jpg', 'jpg', 'm_batman.jpg', 'image', 'jpeg', 63913, '3a988788ff7be12aabddab85b0bf3687'),
(336, 335, 'thumb.profile', 'user', 9, NULL, '2017-06-06 03:28:21', '2017-06-06 03:28:21', 1, 'public/user/51/01/0150_c29c.jpg', 'jpg', 'p_batman.jpg', 'image', 'jpeg', 9074, 'f8c8c29c464a221e77d25fc5151fe523'),
(337, 335, 'thumb.normal', 'user', 9, NULL, '2017-06-06 03:28:21', '2017-06-06 03:28:21', 1, 'public/user/52/01/0151_6428.jpg', 'jpg', 'n_batman.jpg', 'image', 'jpeg', 1384, 'e3aa64289b3a5ea7035926d524ed9135'),
(338, 335, 'thumb.icon', 'user', 9, NULL, '2017-06-06 03:28:21', '2017-06-06 03:28:21', 1, 'public/user/53/01/0152_465c.jpg', 'jpg', 's_batman.jpg', 'image', 'jpeg', 1380, 'af97465c26c72bfc36c7835985135d3e'),
(339, NULL, NULL, 'user', 10, NULL, '2017-06-06 03:32:02', '2017-06-06 03:32:02', 1, 'public/user/54/01/0153_cd99.jpg', 'jpg', 'm_baggins.jpg', 'image', 'jpeg', 9763, '3a57cd996d87abb833505f67fb7198d3'),
(340, 339, 'thumb.profile', 'user', 10, NULL, '2017-06-06 03:32:03', '2017-06-06 03:32:03', 1, 'public/user/55/01/0154_cd99.jpg', 'jpg', 'p_baggins.jpg', 'image', 'jpeg', 9763, '3a57cd996d87abb833505f67fb7198d3'),
(341, 339, 'thumb.normal', 'user', 10, NULL, '2017-06-06 03:32:03', '2017-06-06 03:32:03', 1, 'public/user/56/01/0155_466b.jpg', 'jpg', 'n_baggins.jpg', 'image', 'jpeg', 1604, 'c211466b0d06cc5ca3fc5b9d1bb4f98f');
INSERT INTO `engine4_storage_files` (`file_id`, `parent_file_id`, `type`, `parent_type`, `parent_id`, `user_id`, `creation_date`, `modified_date`, `service_id`, `storage_path`, `extension`, `name`, `mime_major`, `mime_minor`, `size`, `hash`) VALUES
(342, 339, 'thumb.icon', 'user', 10, NULL, '2017-06-06 03:32:03', '2017-06-06 03:32:03', 1, 'public/user/57/01/0156_4113.jpg', 'jpg', 's_baggins.jpg', 'image', 'jpeg', 1411, '7d1f411325c50cf54c77a8b9c0fd6292'),
(343, NULL, NULL, 'user', 11, NULL, '2017-06-06 03:33:53', '2017-06-06 03:33:53', 1, 'public/user/58/01/0157_b0e8.jpg', 'jpg', 'm_gandalf.jpg', 'image', 'jpeg', 10393, '2906b0e8d144b013999abc16af3e04eb'),
(344, 343, 'thumb.profile', 'user', 11, NULL, '2017-06-06 03:33:54', '2017-06-06 03:33:54', 1, 'public/user/59/01/0158_d80c.jpg', 'jpg', 'p_gandalf.jpg', 'image', 'jpeg', 7804, '3a4ed80c13651651f51acdafad157516'),
(345, 343, 'thumb.normal', 'user', 11, NULL, '2017-06-06 03:33:54', '2017-06-06 03:33:54', 1, 'public/user/5a/01/0159_d48c.jpg', 'jpg', 'n_gandalf.jpg', 'image', 'jpeg', 1386, 'dfcad48c39e57dd5645824e24447e777'),
(346, 343, 'thumb.icon', 'user', 11, NULL, '2017-06-06 03:33:54', '2017-06-06 03:33:54', 1, 'public/user/5b/01/015a_5928.jpg', 'jpg', 's_gandalf.jpg', 'image', 'jpeg', 1396, 'fccd5928579704971e9d0b74795000f9'),
(347, NULL, NULL, 'user', 12, NULL, '2017-06-06 03:35:48', '2017-06-06 03:35:48', 1, 'public/user/5c/01/015b_937a.jpg', 'jpg', 'm_sam.jpg', 'image', 'jpeg', 16734, 'aaf7937ada58e6d27e1981d03eb0f521'),
(348, 347, 'thumb.profile', 'user', 12, NULL, '2017-06-06 03:35:49', '2017-06-06 03:35:49', 1, 'public/user/5d/01/015c_937a.jpg', 'jpg', 'p_sam.jpg', 'image', 'jpeg', 16734, 'aaf7937ada58e6d27e1981d03eb0f521'),
(349, 347, 'thumb.normal', 'user', 12, NULL, '2017-06-06 03:35:49', '2017-06-06 03:35:49', 1, 'public/user/5e/01/015d_39c6.jpg', 'jpg', 'n_sam.jpg', 'image', 'jpeg', 1930, '283339c644e1430dc651fb2c6d098c5c'),
(350, 347, 'thumb.icon', 'user', 12, NULL, '2017-06-06 03:35:49', '2017-06-06 03:35:49', 1, 'public/user/5f/01/015e_cce0.jpg', 'jpg', 's_sam.jpg', 'image', 'jpeg', 1649, '2639cce00425e54f7c141eb9df7ca27b'),
(351, NULL, NULL, 'user', 13, NULL, '2017-06-06 03:39:09', '2017-06-06 03:39:09', 1, 'public/user/60/01/015f_3799.jpg', 'jpg', 'm_bigby.jpg', 'image', 'jpeg', 9649, 'fef73799a3554928e46e0af876f0eb6e'),
(352, 351, 'thumb.profile', 'user', 13, NULL, '2017-06-06 03:39:09', '2017-06-06 03:39:09', 1, 'public/user/61/01/0160_3799.jpg', 'jpg', 'p_bigby.jpg', 'image', 'jpeg', 9649, 'fef73799a3554928e46e0af876f0eb6e'),
(353, 351, 'thumb.normal', 'user', 13, NULL, '2017-06-06 03:39:09', '2017-06-06 03:39:09', 1, 'public/user/62/01/0161_26ab.jpg', 'jpg', 'n_bigby.jpg', 'image', 'jpeg', 1641, 'cd3b26abcc2184985cc9aab2a44beaa2'),
(354, 351, 'thumb.icon', 'user', 13, NULL, '2017-06-06 03:39:09', '2017-06-06 03:39:09', 1, 'public/user/63/01/0162_a643.jpg', 'jpg', 's_bigby.jpg', 'image', 'jpeg', 1497, '67c7a64389d1b793d0cb081f9570cceb'),
(355, NULL, NULL, 'user', 14, NULL, '2017-06-06 04:12:20', '2017-06-06 04:12:20', 1, 'public/user/64/01/0163_d8a2.png', 'png', 'm_homer.png', 'image', 'png', 93729, '7545d8a29d47af1732a442ca7f5cb6d8'),
(356, 355, 'thumb.profile', 'user', 14, NULL, '2017-06-06 04:12:20', '2017-06-06 04:12:20', 1, 'public/user/65/01/0164_8e40.png', 'png', 'p_homer.png', 'image', 'png', 31014, 'dbd18e4066ff9912125f84dcc98e410e'),
(357, 355, 'thumb.normal', 'user', 14, NULL, '2017-06-06 04:12:20', '2017-06-06 04:12:20', 1, 'public/user/66/01/0165_5c3e.png', 'png', 'n_homer.png', 'image', 'png', 3735, 'ce385c3e0c0fd08df2af9218601e6cf9'),
(358, 355, 'thumb.icon', 'user', 14, NULL, '2017-06-06 04:12:20', '2017-06-06 04:12:20', 1, 'public/user/67/01/0166_0c8c.png', 'png', 's_homer.png', 'image', 'png', 3959, '64a30c8c8c94162ca8cdf4b383fa56e3'),
(359, NULL, NULL, 'user', 15, NULL, '2017-06-06 04:14:28', '2017-06-06 04:14:28', 1, 'public/user/68/01/0167_9b43.png', 'png', 'm_luffy.png', 'image', 'png', 314693, 'e6719b437a7cf859af505f73eaadca64'),
(360, 359, 'thumb.profile', 'user', 15, NULL, '2017-06-06 04:14:28', '2017-06-06 04:14:28', 1, 'public/user/69/01/0168_a062.png', 'png', 'p_luffy.png', 'image', 'png', 67234, 'e6afa06285f602aee466595506b6b6db'),
(361, 359, 'thumb.normal', 'user', 15, NULL, '2017-06-06 04:14:28', '2017-06-06 04:14:28', 1, 'public/user/6a/01/0169_b5ec.png', 'png', 'n_luffy.png', 'image', 'png', 5682, 'f804b5ec00d1c6dd093b09c574ce939e'),
(362, 359, 'thumb.icon', 'user', 15, NULL, '2017-06-06 04:14:28', '2017-06-06 04:14:28', 1, 'public/user/6b/01/016a_b5ec.png', 'png', 's_luffy.png', 'image', 'png', 5682, 'f804b5ec00d1c6dd093b09c574ce939e'),
(363, NULL, NULL, 'user', 16, NULL, '2017-06-06 08:29:24', '2017-06-06 08:29:24', 1, 'public/user/6c/01/016b_feb7.jpg', 'jpg', 'm_bob.jpg', 'image', 'jpeg', 27704, '4ba7feb76308489925f4bd6e84a79550'),
(364, 363, 'thumb.profile', 'user', 16, NULL, '2017-06-06 08:29:25', '2017-06-06 08:29:25', 1, 'public/user/6d/01/016c_1f42.jpg', 'jpg', 'p_bob.jpg', 'image', 'jpeg', 6779, '265a1f42ee950d893fdfbd159d298b5d'),
(365, 363, 'thumb.normal', 'user', 16, NULL, '2017-06-06 08:29:25', '2017-06-06 08:29:25', 1, 'public/user/6e/01/016d_cec7.jpg', 'jpg', 'n_bob.jpg', 'image', 'jpeg', 1251, '2624cec79aa04764b3ef41376884a943'),
(366, 363, 'thumb.icon', 'user', 16, NULL, '2017-06-06 08:29:25', '2017-06-06 08:29:25', 1, 'public/user/6f/01/016e_664b.jpg', 'jpg', 's_bob.jpg', 'image', 'jpeg', 1336, 'c7b3664bbb11a306c5042228813c14d7'),
(367, NULL, NULL, 'user', 17, NULL, '2017-06-06 08:31:47', '2017-06-06 08:31:47', 1, 'public/user/70/01/016f_fd55.jpg', 'jpg', 'm_mouse.jpg', 'image', 'jpeg', 54172, '4f41fd557a6a19ea4dde8c20bf1d98ef'),
(368, 367, 'thumb.profile', 'user', 17, NULL, '2017-06-06 08:31:47', '2017-06-06 08:31:47', 1, 'public/user/71/01/0170_727c.jpg', 'jpg', 'p_mouse.jpg', 'image', 'jpeg', 8186, 'b7b1727c551833e220a988c1d279cf70'),
(369, 367, 'thumb.normal', 'user', 17, NULL, '2017-06-06 08:31:47', '2017-06-06 08:31:47', 1, 'public/user/72/01/0171_3769.jpg', 'jpg', 'n_mouse.jpg', 'image', 'jpeg', 1438, 'a9e6376941ccc203d42f725a32e166b1'),
(370, 367, 'thumb.icon', 'user', 17, NULL, '2017-06-06 08:31:47', '2017-06-06 08:31:47', 1, 'public/user/73/01/0172_558b.jpg', 'jpg', 's_mouse.jpg', 'image', 'jpeg', 1396, 'bbb8558b5cfdf03890e4a01f48090ed0'),
(371, NULL, NULL, 'user', 18, NULL, '2017-06-06 08:35:25', '2017-06-06 08:35:25', 1, 'public/user/74/01/0173_7c12.jpg', 'jpg', 'm_lion.jpg', 'image', 'jpeg', 11851, '66497c125abe03ac19000cb0fc79f4fd'),
(372, 371, 'thumb.profile', 'user', 18, NULL, '2017-06-06 08:35:25', '2017-06-06 08:35:25', 1, 'public/user/75/01/0174_20d3.jpg', 'jpg', 'p_lion.jpg', 'image', 'jpeg', 2343, 'bdf020d321aef25bce59a31bedec0fb3'),
(373, 371, 'thumb.normal', 'user', 18, NULL, '2017-06-06 08:35:25', '2017-06-06 08:35:25', 1, 'public/user/76/01/0175_d0c0.jpg', 'jpg', 'n_lion.jpg', 'image', 'jpeg', 878, 'ffb8d0c0f83688c5568103568847fcf3'),
(374, 371, 'thumb.icon', 'user', 18, NULL, '2017-06-06 08:35:25', '2017-06-06 08:35:25', 1, 'public/user/77/01/0176_2ea5.jpg', 'jpg', 's_lion.jpg', 'image', 'jpeg', 1075, 'eeb62ea5cc9de3faa5d7c921a9a36199'),
(375, NULL, NULL, 'user', 19, NULL, '2017-06-06 08:38:25', '2017-06-06 08:38:25', 1, 'public/user/78/01/0177_3933.jpg', 'jpg', 'm_bonjovi.jpg', 'image', 'jpeg', 57416, 'd9cc3933dd3ba9498f15409d5c1a4f00'),
(376, 375, 'thumb.profile', 'user', 19, NULL, '2017-06-06 08:38:25', '2017-06-06 08:38:25', 1, 'public/user/79/01/0178_0ee4.jpg', 'jpg', 'p_bonjovi.jpg', 'image', 'jpeg', 8739, '4cdb0ee47ba905053754631c623b0d96'),
(377, 375, 'thumb.normal', 'user', 19, NULL, '2017-06-06 08:38:25', '2017-06-06 08:38:25', 1, 'public/user/7a/01/0179_c022.jpg', 'jpg', 'n_bonjovi.jpg', 'image', 'jpeg', 1453, 'b6d9c022a415bea964588ba4ff2f4cdb'),
(378, 375, 'thumb.icon', 'user', 19, NULL, '2017-06-06 08:38:25', '2017-06-06 08:38:25', 1, 'public/user/7b/01/017a_c022.jpg', 'jpg', 's_bonjovi.jpg', 'image', 'jpeg', 1453, 'b6d9c022a415bea964588ba4ff2f4cdb');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_storage_mirrors`
--

CREATE TABLE `engine4_storage_mirrors` (
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_storage_services`
--

CREATE TABLE `engine4_storage_services` (
  `service_id` int(10) UNSIGNED NOT NULL,
  `servicetype_id` int(10) UNSIGNED NOT NULL,
  `config` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_storage_services`
--

INSERT INTO `engine4_storage_services` (`service_id`, `servicetype_id`, `config`, `enabled`, `default`) VALUES
(1, 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_storage_servicetypes`
--

CREATE TABLE `engine4_storage_servicetypes` (
  `servicetype_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `plugin` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `form` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_storage_servicetypes`
--

INSERT INTO `engine4_storage_servicetypes` (`servicetype_id`, `title`, `plugin`, `form`, `enabled`) VALUES
(1, 'Local Storage', 'Storage_Service_Local', 'Storage_Form_Admin_Service_Local', 1),
(2, 'Database Storage', 'Storage_Service_Db', 'Storage_Form_Admin_Service_Db', 0),
(3, 'Amazon S3', 'Storage_Service_S3', 'Storage_Form_Admin_Service_S3', 1),
(4, 'Virtual File System', 'Storage_Service_Vfs', 'Storage_Form_Admin_Service_Vfs', 1),
(5, 'Round-Robin', 'Storage_Service_RoundRobin', 'Storage_Form_Admin_Service_RoundRobin', 0),
(6, 'Mirrored', 'Storage_Service_Mirrored', 'Storage_Form_Admin_Service_Mirrored', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_users`
--

CREATE TABLE `engine4_users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `photo_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` text COLLATE utf8_unicode_ci,
  `status_date` datetime DEFAULT NULL,
  `password` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `salt` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'auto',
  `language` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'en_US',
  `timezone` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'America/Los_Angeles',
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `show_profileviewers` tinyint(1) NOT NULL DEFAULT '1',
  `level_id` int(11) UNSIGNED NOT NULL,
  `invites_used` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `extra_invites` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `creation_date` datetime NOT NULL,
  `creation_ip` varbinary(16) NOT NULL,
  `modified_date` datetime NOT NULL,
  `lastlogin_date` datetime DEFAULT NULL,
  `lastlogin_ip` varbinary(16) DEFAULT NULL,
  `update_date` int(11) DEFAULT NULL,
  `member_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_users`
--

INSERT INTO `engine4_users` (`user_id`, `email`, `username`, `displayname`, `photo_id`, `status`, `status_date`, `password`, `salt`, `locale`, `language`, `timezone`, `search`, `show_profileviewers`, `level_id`, `invites_used`, `extra_invites`, `enabled`, `verified`, `approved`, `creation_date`, `creation_ip`, `modified_date`, `lastlogin_date`, `lastlogin_ip`, `update_date`, `member_count`, `view_count`) VALUES
(1, 'admin@mail.com', 'admin', 'admin', 104, NULL, NULL, 'a98d5fc24becb1ad87bf134f6a396cc7', '6047943', 'auto', 'en_US', 'US/Pacific', 1, 1, 1, 0, 0, 1, 1, 1, '2017-05-22 03:26:37', 0x32313330373036343333, '2017-05-31 04:05:02', '2017-06-06 01:42:20', 0x00000000000000000000000000000001, NULL, 1, 104),
(2, 'newmember@mail.com', 'newmember', 'New Member', 1, 'post something', '2017-05-22 03:45:18', '04e15a0bc92381ef9305a1321f286bd1', '2193664', 'English', 'English', 'Asia/Omsk', 1, 1, 3, 0, 0, 1, 1, 1, '2017-05-22 03:45:04', 0x00000000000000000000000000000001, '2017-05-22 03:45:18', '2017-05-22 03:45:06', 0x00000000000000000000000000000001, NULL, 0, 0),
(3, 'smith@mail.com', 'smith', 'John Smith', 5, NULL, NULL, 'b6880c517c2265d12efaf5e5aa8d71c3', '3204956', 'English', 'English', 'US/Pacific', 1, 1, 2, 0, 0, 1, 1, 1, '2017-05-22 03:54:06', 0x00000000000000000000000000000001, '2017-05-30 02:54:39', '2017-06-06 02:28:18', 0x00000000000000000000000000000001, NULL, 1, 5),
(4, 'ivanov@mail.com', 'ivanov', 'Ivan Ivanov', 289, NULL, NULL, '8f473f298398a4b3314e6471be150827', '7675018', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-05-30 03:04:30', 0x00000000000000000000000000000001, '2017-05-30 03:04:31', '2017-06-06 03:11:59', 0x00000000000000000000000000000001, NULL, 0, 3),
(5, 'ur.alisher@mail.ru', 'alisher', 'Alisher T', 305, NULL, NULL, 'ada9e3bb800f9f782bdcb325f5b787b0', '2662780', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-05-30 09:18:07', 0x00000000000000000000000000000001, '2017-05-30 09:20:54', '2017-05-30 09:52:48', 0x00000000000000000000000000000001, NULL, 0, 1),
(6, 'victor@mail.com', 'victor', 'Paladin Victor', 323, NULL, NULL, '9432fddcd19bafc93e6aefed3cf7e5fe', '3591949', 'auto', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 03:17:44', 0x00000000000000000000000000000001, '2017-06-06 03:17:45', '2017-06-06 08:24:17', 0x00000000000000000000000000000001, NULL, 0, 1),
(7, 'seris@mail.com', 'seris', 'Paladin Seris', 327, NULL, NULL, '8837c5af0562bb28aa19d996880ed61f', '4960021', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 03:22:08', 0x00000000000000000000000000000001, '2017-06-06 03:22:09', '2017-06-06 03:22:09', 0x00000000000000000000000000000001, NULL, 0, 0),
(8, 'drogoz@mail.com', 'drogoz', 'Palading Drogoz', 331, NULL, NULL, '49a8f53783b1f039b0b677ce3070e9a6', '5715606', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 03:24:50', 0x00000000000000000000000000000001, '2017-06-06 03:24:52', '2017-06-06 03:24:52', 0x00000000000000000000000000000001, NULL, 0, 0),
(9, 'wayne@mail.com', 'wayne', 'Bruce Wayne', 335, NULL, NULL, '235d7ea0751c8655826159bd89feb8b8', '3956695', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 03:28:27', 0x00000000000000000000000000000001, '2017-06-06 03:28:28', '2017-06-06 03:28:29', 0x00000000000000000000000000000001, NULL, 0, 0),
(10, 'baggins@mail.com', 'baggins', 'Frodo Baggins', 339, NULL, NULL, 'a177f2f9dbec404df335af7129b3cb10', '4208282', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 03:32:10', 0x00000000000000000000000000000001, '2017-06-06 03:32:10', '2017-06-06 03:32:11', 0x00000000000000000000000000000001, NULL, 0, 0),
(11, 'gandalf@mail.com', 'gandalf', 'Gandalf The Grey', 343, NULL, NULL, '1428a9d95ab796670e93a53595cc85e8', '5683471', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 03:34:00', 0x00000000000000000000000000000001, '2017-06-06 03:34:02', '2017-06-06 03:34:03', 0x00000000000000000000000000000001, NULL, 0, 0),
(12, 'gamgee@mail.com', 'gamgee', 'Sam Gemgee', 347, NULL, NULL, '79071e69c13d976d25a132fa965297e3', '2451568', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 03:35:55', 0x00000000000000000000000000000001, '2017-06-06 03:35:55', '2017-06-06 03:35:56', 0x00000000000000000000000000000001, NULL, 0, 0),
(13, 'wolf@mail.com', 'wolf', 'Bigby Wolf', 351, NULL, NULL, 'c00271dc316acbbb4eafdc8504f0c5c9', '2680084', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 03:39:15', 0x00000000000000000000000000000001, '2017-06-06 03:39:16', '2017-06-06 08:24:53', 0x00000000000000000000000000000001, NULL, 0, 0),
(14, 'simpson@mail.com', 'simpson', 'Homer Simpson', 355, NULL, NULL, 'a3843eb4bbaef2d06a92a030ac6b9e26', '4389831', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 04:12:27', 0x00000000000000000000000000000001, '2017-06-06 04:12:29', '2017-06-06 07:33:44', 0x00000000000000000000000000000001, NULL, 0, 0),
(15, 'monkey@mail.com', 'monkey', 'Luffy D. Monkey', 359, NULL, NULL, 'a7b152eaf2de5f74f3d8b2e40a157e15', '6186920', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 04:14:34', 0x00000000000000000000000000000001, '2017-06-06 04:14:34', '2017-06-06 04:14:35', 0x00000000000000000000000000000001, NULL, 0, 0),
(16, 'spongebob@mail.com', 'spongebob', 'Bob Sponge', 363, NULL, NULL, '00729af32385eac12176c170ec7c376d', '4558746', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 08:29:34', 0x00000000000000000000000000000001, '2017-06-06 08:29:36', '2017-06-06 08:29:36', 0x00000000000000000000000000000001, NULL, 0, 0),
(17, 'mouse@mail.com', 'mouse', 'Mickey Mouse', 367, NULL, NULL, '9b3383daeba1a2d9c64bcce5a272bb73', '7750549', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 08:31:53', 0x00000000000000000000000000000001, '2017-06-06 08:31:55', '2017-06-06 08:31:55', 0x00000000000000000000000000000001, NULL, 0, 0),
(18, 'lion@mail.com', 'lion', 'Lion King', 371, NULL, NULL, '6ee070cc494e2596aa9b25ea3e620bb8', '4854278', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 08:35:33', 0x00000000000000000000000000000001, '2017-06-06 08:35:33', '2017-06-06 08:35:34', 0x00000000000000000000000000000001, NULL, 0, 0),
(19, 'jovi@mail.com', 'jovi', 'Jon Bon jovi', 375, NULL, NULL, 'e68eccb3af552e77f0d7edbf8c936c78', '4169281', 'English', 'English', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2017-06-06 08:38:31', 0x00000000000000000000000000000001, '2017-06-06 08:38:31', '2017-06-06 08:38:32', 0x00000000000000000000000000000001, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_block`
--

CREATE TABLE `engine4_user_block` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `blocked_user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_facebook`
--

CREATE TABLE `engine4_user_facebook` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `facebook_uid` bigint(20) UNSIGNED NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_fields_maps`
--

CREATE TABLE `engine4_user_fields_maps` (
  `field_id` int(11) UNSIGNED NOT NULL,
  `option_id` int(11) UNSIGNED NOT NULL,
  `child_id` int(11) UNSIGNED NOT NULL,
  `order` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_user_fields_maps`
--

INSERT INTO `engine4_user_fields_maps` (`field_id`, `option_id`, `child_id`, `order`) VALUES
(0, 0, 1, 1),
(1, 1, 2, 2),
(1, 1, 3, 3),
(1, 1, 4, 4),
(1, 1, 5, 5),
(1, 1, 6, 6),
(1, 1, 7, 7),
(1, 1, 8, 8),
(1, 1, 9, 9),
(1, 1, 10, 10),
(1, 1, 11, 11),
(1, 1, 12, 12),
(1, 1, 13, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_fields_meta`
--

CREATE TABLE `engine4_user_fields_meta` (
  `field_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `label` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `display` tinyint(1) UNSIGNED NOT NULL,
  `publish` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `search` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `show` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `order` smallint(3) UNSIGNED NOT NULL DEFAULT '999',
  `config` text COLLATE utf8_unicode_ci,
  `validators` text COLLATE utf8_unicode_ci,
  `filters` text COLLATE utf8_unicode_ci,
  `style` text COLLATE utf8_unicode_ci,
  `error` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_user_fields_meta`
--

INSERT INTO `engine4_user_fields_meta` (`field_id`, `type`, `label`, `description`, `alias`, `required`, `display`, `publish`, `search`, `show`, `order`, `config`, `validators`, `filters`, `style`, `error`) VALUES
(1, 'profile_type', 'Profile Type', '', 'profile_type', 1, 0, 0, 2, 1, 999, '', NULL, NULL, NULL, NULL),
(2, 'heading', 'Personal Information', '', '', 0, 1, 0, 0, 1, 999, '', NULL, NULL, NULL, NULL),
(3, 'first_name', 'First Name', '', 'first_name', 1, 1, 0, 2, 1, 999, '', '[["StringLength",false,[1,32]]]', NULL, NULL, NULL),
(4, 'last_name', 'Last Name', '', 'last_name', 1, 1, 0, 2, 1, 999, '', '[["StringLength",false,[1,32]]]', NULL, NULL, NULL),
(5, 'gender', 'Gender', '', 'gender', 0, 1, 0, 1, 1, 999, '', NULL, NULL, NULL, NULL),
(6, 'birthdate', 'Birthday', '', 'birthdate', 0, 1, 0, 1, 1, 999, '', NULL, NULL, NULL, NULL),
(7, 'heading', 'Contact Information', '', '', 0, 1, 0, 0, 1, 999, '', NULL, NULL, NULL, NULL),
(8, 'website', 'Website', '', '', 0, 1, 0, 0, 1, 999, '', NULL, NULL, NULL, NULL),
(9, 'twitter', 'Twitter', '', '', 0, 1, 0, 0, 1, 999, '', NULL, NULL, NULL, NULL),
(10, 'facebook', 'Facebook', '', '', 0, 1, 0, 0, 1, 999, '', NULL, NULL, NULL, NULL),
(11, 'aim', 'AIM', '', '', 0, 1, 0, 0, 1, 999, '', NULL, NULL, NULL, NULL),
(12, 'heading', 'Personal Details', '', '', 0, 1, 0, 0, 1, 999, '', NULL, NULL, NULL, NULL),
(13, 'about_me', 'About Me', '', '', 0, 1, 0, 0, 1, 999, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_fields_options`
--

CREATE TABLE `engine4_user_fields_options` (
  `option_id` int(11) UNSIGNED NOT NULL,
  `field_id` int(11) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT '999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_user_fields_options`
--

INSERT INTO `engine4_user_fields_options` (`option_id`, `field_id`, `label`, `order`) VALUES
(1, 1, 'Regular Member', 1),
(2, 5, 'Male', 1),
(3, 5, 'Female', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_fields_search`
--

CREATE TABLE `engine4_user_fields_search` (
  `item_id` int(11) UNSIGNED NOT NULL,
  `profile_type` smallint(11) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` smallint(6) UNSIGNED DEFAULT NULL,
  `birthdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_user_fields_search`
--

INSERT INTO `engine4_user_fields_search` (`item_id`, `profile_type`, `first_name`, `last_name`, `gender`, `birthdate`) VALUES
(2, 1, 'New', 'Member', 2, '1993-03-10'),
(3, 1, 'John', 'Smith', 0, '0000-00-00'),
(4, 1, 'Ivan', 'Ivanov', 2, '1990-04-30'),
(5, 1, 'Alisher', 'T', 2, '1989-03-17'),
(6, 1, 'Paladin', 'Victor', 2, '1972-00-16'),
(7, 1, 'Paladin', 'Seris', 3, '1990-02-16'),
(8, 1, 'Palading', 'Drogoz', 2, '1944-06-16'),
(9, 1, 'Bruce', 'Wayne', 2, '1983-03-30'),
(10, 1, 'Frodo', 'Baggins', 2, '1987-08-11'),
(11, 1, 'Gandalf', 'The Grey', 2, '1918-12-19'),
(12, 1, 'Sam', 'Gemgee', 2, '1988-04-17'),
(13, 1, 'Bigby', 'Wolf', 2, '1979-12-10'),
(14, 1, 'Homer', 'Simpson', 2, '1963-07-29'),
(15, 1, 'Luffy', 'D. Monkey', 2, '1990-07-18'),
(16, 1, 'Bob', 'Sponge', 2, '1989-03-15'),
(17, 1, 'Mickey', 'Mouse', 2, '1987-07-18'),
(18, 1, 'Lion', 'King', 2, '1992-04-17'),
(19, 1, 'Jon', 'Bon jovi', 2, '1974-06-17');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_fields_values`
--

CREATE TABLE `engine4_user_fields_values` (
  `item_id` int(11) UNSIGNED NOT NULL,
  `field_id` int(11) UNSIGNED NOT NULL,
  `index` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `privacy` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_user_fields_values`
--

INSERT INTO `engine4_user_fields_values` (`item_id`, `field_id`, `index`, `value`, `privacy`) VALUES
(1, 1, 0, '1', NULL),
(2, 1, 0, '1', NULL),
(2, 3, 0, 'New', NULL),
(2, 4, 0, 'Member', NULL),
(2, 5, 0, '2', NULL),
(2, 6, 0, '1993-3-10', NULL),
(2, 8, 0, '', NULL),
(2, 9, 0, '', NULL),
(2, 10, 0, '', NULL),
(2, 11, 0, '', NULL),
(2, 13, 0, '', NULL),
(3, 1, 0, '1', NULL),
(3, 3, 0, 'John', NULL),
(3, 4, 0, 'Smith', NULL),
(3, 5, 0, '', NULL),
(3, 6, 0, '', NULL),
(3, 8, 0, '', NULL),
(3, 9, 0, '', NULL),
(3, 10, 0, '', NULL),
(3, 11, 0, '', NULL),
(3, 13, 0, '', NULL),
(4, 1, 0, '1', NULL),
(4, 3, 0, 'Ivan', NULL),
(4, 4, 0, 'Ivanov', NULL),
(4, 5, 0, '2', NULL),
(4, 6, 0, '1990-4-30', NULL),
(4, 8, 0, '', NULL),
(4, 9, 0, '', NULL),
(4, 10, 0, '', NULL),
(4, 11, 0, '', NULL),
(4, 13, 0, '', NULL),
(5, 1, 0, '1', NULL),
(5, 3, 0, 'Alisher', NULL),
(5, 4, 0, 'T', NULL),
(5, 5, 0, '2', NULL),
(5, 6, 0, '1989-3-17', NULL),
(5, 8, 0, '', NULL),
(5, 9, 0, '', NULL),
(5, 10, 0, '', NULL),
(5, 11, 0, '', NULL),
(5, 13, 0, '', NULL),
(6, 1, 0, '1', NULL),
(6, 3, 0, 'Paladin', NULL),
(6, 4, 0, 'Victor', NULL),
(6, 5, 0, '2', NULL),
(6, 6, 0, '1972-0-16', NULL),
(6, 8, 0, '', NULL),
(6, 9, 0, '', NULL),
(6, 10, 0, '', NULL),
(6, 11, 0, '', NULL),
(6, 13, 0, '', NULL),
(7, 1, 0, '1', NULL),
(7, 3, 0, 'Paladin', NULL),
(7, 4, 0, 'Seris', NULL),
(7, 5, 0, '3', NULL),
(7, 6, 0, '1990-2-16', NULL),
(7, 8, 0, '', NULL),
(7, 9, 0, '', NULL),
(7, 10, 0, '', NULL),
(7, 11, 0, '', NULL),
(7, 13, 0, '', NULL),
(8, 1, 0, '1', NULL),
(8, 3, 0, 'Palading', NULL),
(8, 4, 0, 'Drogoz', NULL),
(8, 5, 0, '2', NULL),
(8, 6, 0, '1944-6-16', NULL),
(8, 8, 0, '', NULL),
(8, 9, 0, '', NULL),
(8, 10, 0, '', NULL),
(8, 11, 0, '', NULL),
(8, 13, 0, '', NULL),
(9, 1, 0, '1', NULL),
(9, 3, 0, 'Bruce', NULL),
(9, 4, 0, 'Wayne', NULL),
(9, 5, 0, '2', NULL),
(9, 6, 0, '1983-3-30', NULL),
(9, 8, 0, '', NULL),
(9, 9, 0, '', NULL),
(9, 10, 0, '', NULL),
(9, 11, 0, '', NULL),
(9, 13, 0, '', NULL),
(10, 1, 0, '1', NULL),
(10, 3, 0, 'Frodo', NULL),
(10, 4, 0, 'Baggins', NULL),
(10, 5, 0, '2', NULL),
(10, 6, 0, '1987-8-11', NULL),
(10, 8, 0, '', NULL),
(10, 9, 0, '', NULL),
(10, 10, 0, '', NULL),
(10, 11, 0, '', NULL),
(10, 13, 0, '', NULL),
(11, 1, 0, '1', NULL),
(11, 3, 0, 'Gandalf', NULL),
(11, 4, 0, 'The Grey', NULL),
(11, 5, 0, '2', NULL),
(11, 6, 0, '1918-12-19', NULL),
(11, 8, 0, '', NULL),
(11, 9, 0, '', NULL),
(11, 10, 0, '', NULL),
(11, 11, 0, '', NULL),
(11, 13, 0, '', NULL),
(12, 1, 0, '1', NULL),
(12, 3, 0, 'Sam', NULL),
(12, 4, 0, 'Gemgee', NULL),
(12, 5, 0, '2', NULL),
(12, 6, 0, '1988-4-17', NULL),
(12, 8, 0, '', NULL),
(12, 9, 0, '', NULL),
(12, 10, 0, '', NULL),
(12, 11, 0, '', NULL),
(12, 13, 0, '', NULL),
(13, 1, 0, '1', NULL),
(13, 3, 0, 'Bigby', NULL),
(13, 4, 0, 'Wolf', NULL),
(13, 5, 0, '2', NULL),
(13, 6, 0, '1979-12-10', NULL),
(13, 8, 0, '', NULL),
(13, 9, 0, '', NULL),
(13, 10, 0, '', NULL),
(13, 11, 0, '', NULL),
(13, 13, 0, '', NULL),
(14, 1, 0, '1', NULL),
(14, 3, 0, 'Homer', NULL),
(14, 4, 0, 'Simpson', NULL),
(14, 5, 0, '2', NULL),
(14, 6, 0, '1963-7-29', NULL),
(14, 8, 0, '', NULL),
(14, 9, 0, '', NULL),
(14, 10, 0, '', NULL),
(14, 11, 0, '', NULL),
(14, 13, 0, '', NULL),
(15, 1, 0, '1', NULL),
(15, 3, 0, 'Luffy', NULL),
(15, 4, 0, 'D. Monkey', NULL),
(15, 5, 0, '2', NULL),
(15, 6, 0, '1990-7-18', NULL),
(15, 8, 0, '', NULL),
(15, 9, 0, '', NULL),
(15, 10, 0, '', NULL),
(15, 11, 0, '', NULL),
(15, 13, 0, '', NULL),
(16, 1, 0, '1', NULL),
(16, 3, 0, 'Bob', NULL),
(16, 4, 0, 'Sponge', NULL),
(16, 5, 0, '2', NULL),
(16, 6, 0, '1989-3-15', NULL),
(16, 8, 0, '', NULL),
(16, 9, 0, '', NULL),
(16, 10, 0, '', NULL),
(16, 11, 0, '', NULL),
(16, 13, 0, '', NULL),
(17, 1, 0, '1', NULL),
(17, 3, 0, 'Mickey', NULL),
(17, 4, 0, 'Mouse', NULL),
(17, 5, 0, '2', NULL),
(17, 6, 0, '1987-7-18', NULL),
(17, 8, 0, '', NULL),
(17, 9, 0, '', NULL),
(17, 10, 0, '', NULL),
(17, 11, 0, '', NULL),
(17, 13, 0, '', NULL),
(18, 1, 0, '1', NULL),
(18, 3, 0, 'Lion', NULL),
(18, 4, 0, 'King', NULL),
(18, 5, 0, '2', NULL),
(18, 6, 0, '1992-4-17', NULL),
(18, 8, 0, '', NULL),
(18, 9, 0, '', NULL),
(18, 10, 0, '', NULL),
(18, 11, 0, '', NULL),
(18, 13, 0, '', NULL),
(19, 1, 0, '1', NULL),
(19, 3, 0, 'Jon', NULL),
(19, 4, 0, 'Bon jovi', NULL),
(19, 5, 0, '2', NULL),
(19, 6, 0, '1974-6-17', NULL),
(19, 8, 0, '', NULL),
(19, 9, 0, '', NULL),
(19, 10, 0, '', NULL),
(19, 11, 0, '', NULL),
(19, 13, 0, '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_forgot`
--

CREATE TABLE `engine4_user_forgot` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `code` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_janrain`
--

CREATE TABLE `engine4_user_janrain` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_listitems`
--

CREATE TABLE `engine4_user_listitems` (
  `listitem_id` int(11) UNSIGNED NOT NULL,
  `list_id` int(11) UNSIGNED NOT NULL,
  `child_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_lists`
--

CREATE TABLE `engine4_user_lists` (
  `list_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `owner_id` int(11) UNSIGNED NOT NULL,
  `child_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_logins`
--

CREATE TABLE `engine4_user_logins` (
  `login_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varbinary(16) NOT NULL,
  `timestamp` datetime NOT NULL,
  `state` enum('success','no-member','bad-password','disabled','unpaid','third-party','v3-migration','unknown') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'unknown',
  `source` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_user_logins`
--

INSERT INTO `engine4_user_logins` (`login_id`, `user_id`, `email`, `ip`, `timestamp`, `state`, `source`, `active`) VALUES
(1, NULL, 'newmember@mail.com', 0x00000000000000000000000000000001, '2017-05-22 03:43:31', 'no-member', NULL, 0),
(2, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-05-23 00:11:04', 'success', NULL, 1),
(3, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-05-24 02:05:44', 'success', NULL, 1),
(4, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-05-26 04:52:48', 'success', NULL, 1),
(5, 1, 'admin@mail.com', 0x00000000000000000000000000000001, '2017-05-28 05:17:48', 'success', NULL, 0),
(6, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-05-28 05:18:09', 'success', NULL, 1),
(7, 1, 'admin@mail.com', 0x7f000001, '2017-05-28 05:19:23', 'success', NULL, 1),
(8, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-05-29 03:28:05', 'success', NULL, 1),
(9, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-05-30 02:52:49', 'success', NULL, 1),
(10, NULL, 'ivanov@mail.com', 0x00000000000000000000000000000001, '2017-05-30 03:02:25', 'no-member', NULL, 0),
(11, NULL, 'ivanov@mail.ru', 0x00000000000000000000000000000001, '2017-05-30 03:02:44', 'no-member', NULL, 0),
(12, NULL, 'ivan@mail.com', 0x00000000000000000000000000000001, '2017-05-30 03:03:01', 'no-member', NULL, 0),
(13, NULL, 'ivanov@mail.com', 0x00000000000000000000000000000001, '2017-05-30 03:03:12', 'no-member', NULL, 0),
(14, 5, 'ur.alisher@mail.ru', 0x00000000000000000000000000000001, '2017-05-30 09:26:23', 'success', NULL, 0),
(15, 5, 'ur.alisher@mail.ru', 0x00000000000000000000000000000001, '2017-05-30 09:52:48', 'success', NULL, 1),
(16, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-05-31 02:37:09', 'success', NULL, 1),
(17, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-06-01 04:53:28', 'success', NULL, 1),
(18, 1, 'admin@mail.com', 0x7f000001, '2017-06-04 06:45:22', 'success', NULL, 1),
(19, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-06-04 14:47:25', 'success', NULL, 0),
(20, 1, 'admin@mail.com', 0x00000000000000000000000000000001, '2017-06-04 14:48:34', 'success', NULL, 1),
(21, 1, 'admin@mail.com', 0x00000000000000000000000000000001, '2017-06-04 23:49:48', 'success', NULL, 1),
(22, 1, 'admin@mail.com', 0x00000000000000000000000000000001, '2017-06-05 01:49:20', 'success', NULL, 1),
(23, NULL, 'ivan@mail.com', 0x00000000000000000000000000000001, '2017-06-05 08:38:04', 'no-member', NULL, 0),
(24, 4, 'ivanov@mail.com', 0x00000000000000000000000000000001, '2017-06-05 08:38:17', 'success', NULL, 0),
(25, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-06-05 09:10:15', 'success', NULL, 1),
(26, 1, 'admin@mail.com', 0x00000000000000000000000000000001, '2017-06-05 23:51:26', 'success', NULL, 1),
(27, 1, 'admin@mail.com', 0x00000000000000000000000000000001, '2017-06-06 01:42:20', 'success', NULL, 1),
(28, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-06-06 02:11:12', 'success', NULL, 1),
(29, 3, 'smith@mail.com', 0x00000000000000000000000000000001, '2017-06-06 02:28:17', 'success', NULL, 0),
(30, 4, 'ivanov@mail.com', 0x00000000000000000000000000000001, '2017-06-06 03:11:59', 'success', NULL, 0),
(31, NULL, 'victor@mail.com', 0x00000000000000000000000000000001, '2017-06-06 03:16:01', 'no-member', NULL, 0),
(32, 14, 'simpson@mail.com', 0x00000000000000000000000000000001, '2017-06-06 07:33:43', 'success', NULL, 0),
(33, 6, 'victor@mail.com', 0x00000000000000000000000000000001, '2017-06-06 08:24:17', 'success', NULL, 0),
(34, 13, 'wolf@mail.com', 0x00000000000000000000000000000001, '2017-06-06 08:24:53', 'success', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_membership`
--

CREATE TABLE `engine4_user_membership` (
  `resource_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `resource_approved` tinyint(1) NOT NULL DEFAULT '0',
  `user_approved` tinyint(1) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_user_membership`
--

INSERT INTO `engine4_user_membership` (`resource_id`, `user_id`, `active`, `resource_approved`, `user_approved`, `message`, `description`) VALUES
(1, 3, 1, 1, 1, NULL, NULL),
(3, 1, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_online`
--

CREATE TABLE `engine4_user_online` (
  `ip` varbinary(16) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `active` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_user_online`
--

INSERT INTO `engine4_user_online` (`ip`, `user_id`, `active`) VALUES
(0x00000000000000000000000000000001, 1, '2017-06-06 09:31:14'),
(0x7f000001, 0, '2017-06-06 09:31:15');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_settings`
--

CREATE TABLE `engine4_user_settings` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_signup`
--

CREATE TABLE `engine4_user_signup` (
  `signup_id` int(11) UNSIGNED NOT NULL,
  `class` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT '999',
  `enable` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_user_signup`
--

INSERT INTO `engine4_user_signup` (`signup_id`, `class`, `order`, `enable`) VALUES
(1, 'User_Plugin_Signup_Account', 1, 1),
(2, 'User_Plugin_Signup_Fields', 2, 1),
(3, 'User_Plugin_Signup_Photo', 3, 1),
(4, 'User_Plugin_Signup_Invite', 4, 0),
(5, 'Payment_Plugin_Signup_Subscription', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_twitter`
--

CREATE TABLE `engine4_user_twitter` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `twitter_uid` bigint(20) UNSIGNED NOT NULL,
  `twitter_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_user_verify`
--

CREATE TABLE `engine4_user_verify` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `code` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_video_categories`
--

CREATE TABLE `engine4_video_categories` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_video_categories`
--

INSERT INTO `engine4_video_categories` (`category_id`, `user_id`, `category_name`) VALUES
(1, 0, 'Autos & Vehicles'),
(2, 0, 'Comedy'),
(3, 0, 'Education'),
(4, 0, 'Entertainment'),
(5, 0, 'Film & Animation'),
(6, 0, 'Gaming'),
(7, 0, 'Howto & Style'),
(8, 0, 'Music'),
(9, 0, 'News & Politics'),
(10, 0, 'Nonprofits & Activism'),
(11, 0, 'People & Blogs'),
(12, 0, 'Pets & Animals'),
(13, 0, 'Science & Technology'),
(14, 0, 'Sports'),
(15, 0, 'Travel & Events');

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_video_ratings`
--

CREATE TABLE `engine4_video_ratings` (
  `video_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(9) UNSIGNED NOT NULL,
  `rating` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_video_videos`
--

CREATE TABLE `engine4_video_videos` (
  `video_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `owner_type` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `parent_type` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `view_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `comment_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL,
  `code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `photo_id` int(11) UNSIGNED DEFAULT NULL,
  `rating` float NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `file_id` int(11) UNSIGNED NOT NULL,
  `duration` int(9) UNSIGNED NOT NULL,
  `rotation` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_video_videos`
--

INSERT INTO `engine4_video_videos` (`video_id`, `title`, `description`, `search`, `owner_type`, `owner_id`, `parent_type`, `parent_id`, `creation_date`, `modified_date`, `view_count`, `comment_count`, `type`, `code`, `photo_id`, `rating`, `category_id`, `status`, `file_id`, `duration`, `rotation`) VALUES
(2, 'new video', 'You have to be brave to cook one of Ramsay''s dishes for him.\n\nIf you liked this clip check out the rest of Gordon''s channels:\n\nhttp://www.youtube.com/gordonramsay\nhttp://www.youtube.com/thefword\nhttp://www.youtube.com/kitchennightmares\n\nMore Gordon Ramsay:\nWebsite: http://www.gordonramsay.com\nFacebook: http://www.facebook.com/GordonRamsay01\nTwitter: http://www.twitter.com/GordonRamsay', 1, '', 3, NULL, NULL, '2017-05-22 07:44:20', '2017-05-22 07:44:24', 2, 0, 1, 'aaU67brhu8s', 113, 0, 12, 1, 0, 348, 0),
(3, 'vimeo video', '', 1, '', 3, NULL, NULL, '2017-05-22 07:48:15', '2017-05-22 07:48:20', 0, 1, 2, '152477009', 114, 0, 2, 1, 0, 723, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_wall_fbpages`
--

CREATE TABLE `engine4_wall_fbpages` (
  `id` int(11) NOT NULL,
  `fbpage_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(200) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_wall_listitems`
--

CREATE TABLE `engine4_wall_listitems` (
  `item_id` int(11) NOT NULL,
  `object_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_wall_lists`
--

CREATE TABLE `engine4_wall_lists` (
  `list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `label` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_wall_mute`
--

CREATE TABLE `engine4_wall_mute` (
  `mute_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_wall_privacy`
--

CREATE TABLE `engine4_wall_privacy` (
  `action_id` int(11) NOT NULL,
  `privacy` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_wall_smiles`
--

CREATE TABLE `engine4_wall_smiles` (
  `smile_id` int(11) NOT NULL,
  `tag` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `file_src` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `engine4_wall_smiles`
--

INSERT INTO `engine4_wall_smiles` (`smile_id`, `tag`, `title`, `file_id`, `file_src`, `default`, `enabled`) VALUES
(1, ' :) ', 'Smile', NULL, 'application/modules/Wall/externals/images/smiles/smile.png', 1, 1),
(2, ' :)) ', 'Big Smile', NULL, 'application/modules/Wall/externals/images/smiles/smile-big.png', 1, 1),
(3, ' :D ', 'Grin', NULL, 'application/modules/Wall/externals/images/smiles/grin.png', 1, 1),
(4, ' :laugh: ', 'Laugh', NULL, 'application/modules/Wall/externals/images/smiles/laugh.png', 1, 1),
(5, ' :-( ', 'Frown', NULL, 'application/modules/Wall/externals/images/smiles/frown.png', 1, 1),
(6, ' :-(( ', 'Big Frown', NULL, 'application/modules/Wall/externals/images/smiles/frown-big.png', 1, 1),
(7, ' :( ', 'Cry', NULL, 'application/modules/Wall/externals/images/smiles/crying.png', 1, 1),
(8, ' :| ', 'Neutral', NULL, 'application/modules/Wall/externals/images/smiles/neutral.png', 1, 1),
(9, ' ;) ', 'Wink', NULL, 'application/modules/Wall/externals/images/smiles/wink.png', 1, 1),
(10, ' :-* ', 'Kiss', NULL, 'application/modules/Wall/externals/images/smiles/kiss.png', 1, 1),
(11, ' :P ', 'Razz', NULL, 'application/modules/Wall/externals/images/smiles/razz.png', 1, 1),
(12, ' :chic: ', 'Chic', NULL, 'application/modules/Wall/externals/images/smiles/chic.png', 1, 1),
(13, ' 8-) ', 'Cool', NULL, 'application/modules/Wall/externals/images/smiles/cool.png', 1, 1),
(14, ' :-X ', 'Angry', NULL, 'application/modules/Wall/externals/images/smiles/angry.png', 1, 1),
(15, ' :reallyangry: ', 'Really Angry', NULL, 'application/modules/Wall/externals/images/smiles/really-angry.png', 1, 1),
(16, ' :-? ', 'Confused', NULL, 'application/modules/Wall/externals/images/smiles/confused.png', 1, 1),
(17, ' ?:-) ', 'Question', NULL, 'application/modules/Wall/externals/images/smiles/question.png', 1, 1),
(18, ' :-/ ', 'Thinking', NULL, 'application/modules/Wall/externals/images/smiles/thinking.png', 1, 1),
(19, ' :pain: ', 'Pain', NULL, 'application/modules/Wall/externals/images/smiles/pain.png', 1, 1),
(20, ' :shock: ', 'Shock', NULL, 'application/modules/Wall/externals/images/smiles/shock.png', 1, 1),
(21, ' :yes: ', 'Yes', NULL, 'application/modules/Wall/externals/images/smiles/thumbs-up.png', 1, 1),
(22, ' :no: ', 'No', NULL, 'application/modules/Wall/externals/images/smiles/thumbs-down.png', 1, 1),
(23, ' :rotfl: ', 'LOL', NULL, 'application/modules/Wall/externals/images/smiles/rotfl.png', 1, 1),
(24, ' :silly: ', 'Silly', NULL, 'application/modules/Wall/externals/images/smiles/silly.png', 1, 1),
(25, ' :beauty: ', 'Beauty', NULL, 'application/modules/Wall/externals/images/smiles/beauty.png', 1, 1),
(26, ' :lashes: ', 'Lashes', NULL, 'application/modules/Wall/externals/images/smiles/lashes.png', 1, 1),
(27, ' :cute: ', 'Cute', NULL, 'application/modules/Wall/externals/images/smiles/cute.png', 1, 1),
(28, ' :shy: ', 'Shy', NULL, 'application/modules/Wall/externals/images/smiles/bashful.png', 1, 1),
(29, ' :blush: ', 'Blush', NULL, 'application/modules/Wall/externals/images/smiles/blush.png', 1, 1),
(30, ' :kissed: ', 'Kissed', NULL, 'application/modules/Wall/externals/images/smiles/kissed.png', 1, 1),
(31, ' :inlove: ', 'In Love', NULL, 'application/modules/Wall/externals/images/smiles/in-love.png', 1, 1),
(32, ' :drool: ', 'Drool', NULL, 'application/modules/Wall/externals/images/smiles/drool.png', 1, 1),
(33, ' :giggle: ', 'Giggle', NULL, 'application/modules/Wall/externals/images/smiles/giggle.png', 1, 1),
(34, ' :snicker: ', 'Snicker', NULL, 'application/modules/Wall/externals/images/smiles/snicker.png', 1, 1),
(35, ' :heh: ', 'Heh!', NULL, 'application/modules/Wall/externals/images/smiles/curl-lip.png', 1, 1),
(36, ' :smirk: ', 'Smirk', NULL, 'application/modules/Wall/externals/images/smiles/smirk.png', 1, 1),
(37, ' :wilt: ', 'Wilt', NULL, 'application/modules/Wall/externals/images/smiles/wilt.png', 1, 1),
(38, ' :weep: ', 'Weep', NULL, 'application/modules/Wall/externals/images/smiles/weep.png', 1, 1),
(39, ' :idk: ', 'IDK', NULL, 'application/modules/Wall/externals/images/smiles/dont-know.png', 1, 1),
(40, ' :struggle: ', 'Struggle', NULL, 'application/modules/Wall/externals/images/smiles/struggle.png', 1, 1),
(41, ' :sidefrown: ', 'Side Frown', NULL, 'application/modules/Wall/externals/images/smiles/sidefrown.png', 1, 1),
(42, ' :dazed: ', 'Dazed', NULL, 'application/modules/Wall/externals/images/smiles/dazed.png', 1, 1),
(43, ' :hypnotized: ', 'Hypnotized', NULL, 'application/modules/Wall/externals/images/smiles/hypnotized.png', 1, 1),
(44, ' :sweat: ', 'Sweat', NULL, 'application/modules/Wall/externals/images/smiles/sweat.png', 1, 1),
(45, ' :eek: ', 'Eek!', NULL, 'application/modules/Wall/externals/images/smiles/bug-eyes.png', 1, 1),
(46, ' :roll: ', 'Roll Eyes', NULL, 'application/modules/Wall/externals/images/smiles/eyeroll.png', 1, 1),
(47, ' :sarcasm: ', 'Sarcasm', NULL, 'application/modules/Wall/externals/images/smiles/sarcastic.png', 1, 1),
(48, ' :disdain: ', 'Disdain', NULL, 'application/modules/Wall/externals/images/smiles/disdain.png', 1, 1),
(49, ' :smug: ', 'Smug', NULL, 'application/modules/Wall/externals/images/smiles/arrogant.png', 1, 1),
(50, ' :-$ ', 'Money Mouth', NULL, 'application/modules/Wall/externals/images/smiles/moneymouth.png', 1, 1),
(51, ' :footmouth: ', 'Foot in Mouth', NULL, 'application/modules/Wall/externals/images/smiles/foot-in-mouth.png', 1, 1),
(52, ' :shutmouth: ', 'Shut Mouth', NULL, 'application/modules/Wall/externals/images/smiles/shut-mouth.png', 1, 1),
(53, ' :quiet: ', 'Quiet', NULL, 'application/modules/Wall/externals/images/smiles/quiet.png', 1, 1),
(54, ' :shame: ', 'Shame', NULL, 'application/modules/Wall/externals/images/smiles/shame.png', 1, 1),
(55, ' :beatup: ', 'Beat Up', NULL, 'application/modules/Wall/externals/images/smiles/beat-up.png', 1, 1),
(56, ' :mean: ', 'Mean', NULL, 'application/modules/Wall/externals/images/smiles/mean.png', 1, 1),
(57, ' :evilgrin: ', 'Evil Grin', NULL, 'application/modules/Wall/externals/images/smiles/evil-grin.png', 1, 1),
(58, ' :teeth: ', 'Grit Teeth', NULL, 'application/modules/Wall/externals/images/smiles/teeth.png', 1, 1),
(59, ' :shout: ', 'Shout', NULL, 'application/modules/Wall/externals/images/smiles/shout.png', 1, 1),
(60, ' :pissedoff: ', 'Pissed Off', NULL, 'application/modules/Wall/externals/images/smiles/pissed-off.png', 1, 1),
(61, ' :reallypissed: ', 'Really Pissed', NULL, 'application/modules/Wall/externals/images/smiles/really-pissed.png', 1, 1),
(62, ' :razzmad: ', 'Mad Razz', NULL, 'application/modules/Wall/externals/images/smiles/razz-mad.png', 1, 1),
(63, ' :X-P: ', 'Drunken Razz', NULL, 'application/modules/Wall/externals/images/smiles/razz-drunk.png', 1, 1),
(64, ' :sick: ', 'Sick', NULL, 'application/modules/Wall/externals/images/smiles/sick.png', 1, 1),
(65, ' :yawn: ', 'Yawn', NULL, 'application/modules/Wall/externals/images/smiles/yawn.png', 1, 1),
(66, ' :ZZZ: ', 'Sleepy', NULL, 'application/modules/Wall/externals/images/smiles/sleepy.png', 1, 1),
(67, ' :dance: ', 'Dance', NULL, 'application/modules/Wall/externals/images/smiles/dance.png', 1, 1),
(68, ' :clap: ', 'Clap', NULL, 'application/modules/Wall/externals/images/smiles/clap.png', 1, 1),
(69, ' :jump: ', 'Jump', NULL, 'application/modules/Wall/externals/images/smiles/jump.png', 1, 1),
(70, ' :handshake: ', 'Handshake', NULL, 'application/modules/Wall/externals/images/smiles/handshake.png', 1, 1),
(71, ' :highfive: ', 'High Five', NULL, 'application/modules/Wall/externals/images/smiles/highfive.png', 1, 1),
(72, ' :hugleft: ', 'Hug Left', NULL, 'application/modules/Wall/externals/images/smiles/hug-left.png', 1, 1),
(73, ' :hugright: ', 'Hug Right', NULL, 'application/modules/Wall/externals/images/smiles/hug-right.png', 1, 1),
(74, ' :kissblow: ', 'Kiss Blow', NULL, 'application/modules/Wall/externals/images/smiles/kiss-blow.png', 1, 1),
(75, ' :kissing: ', 'Kissing', NULL, 'application/modules/Wall/externals/images/smiles/kissing.png', 1, 1),
(76, ' :bye: ', 'Bye', NULL, 'application/modules/Wall/externals/images/smiles/bye.png', 1, 1),
(77, ' :goaway: ', 'Go Away', NULL, 'application/modules/Wall/externals/images/smiles/go-away.png', 1, 1),
(78, ' :callme: ', 'Call Me', NULL, 'application/modules/Wall/externals/images/smiles/call-me.png', 1, 1),
(79, ' :onthephone: ', 'On the Phone', NULL, 'application/modules/Wall/externals/images/smiles/on-the-phone.png', 1, 1),
(80, ' :secret: ', 'Secret', NULL, 'application/modules/Wall/externals/images/smiles/secret.png', 1, 1),
(81, ' :meeting: ', 'Meeting', NULL, 'application/modules/Wall/externals/images/smiles/meeting.png', 1, 1),
(82, ' :waving: ', 'Waving', NULL, 'application/modules/Wall/externals/images/smiles/waving.png', 1, 1),
(83, ' :stop: ', 'Stop', NULL, 'application/modules/Wall/externals/images/smiles/stop.png', 1, 1),
(84, ' :timeout: ', 'Time Out', NULL, 'application/modules/Wall/externals/images/smiles/time-out.png', 1, 1),
(85, ' :talktothehand: ', 'Talk to the Hand', NULL, 'application/modules/Wall/externals/images/smiles/talktohand.png', 1, 1),
(86, ' :loser: ', 'Loser', NULL, 'application/modules/Wall/externals/images/smiles/loser.png', 1, 1),
(87, ' :lying: ', 'Lying', NULL, 'application/modules/Wall/externals/images/smiles/lying.png', 1, 1),
(88, ' :doh: ', 'DOH!', NULL, 'application/modules/Wall/externals/images/smiles/doh.png', 1, 1),
(89, ' :fingersxd: ', 'Fingers Crossed', NULL, 'application/modules/Wall/externals/images/smiles/fingers-xd.png', 1, 1),
(90, ' :waiting: ', 'Waiting', NULL, 'application/modules/Wall/externals/images/smiles/waiting.png', 1, 1),
(91, ' :suspense: ', 'Suspense', NULL, 'application/modules/Wall/externals/images/smiles/nailbiting.png', 1, 1),
(92, ' :tremble: ', 'Tremble', NULL, 'application/modules/Wall/externals/images/smiles/tremble.png', 1, 1),
(93, ' :pray: ', 'Pray', NULL, 'application/modules/Wall/externals/images/smiles/pray.png', 1, 1),
(94, ' :worship: ', 'Worship', NULL, 'application/modules/Wall/externals/images/smiles/worship.png', 1, 1),
(95, ' :starving: ', 'Starving', NULL, 'application/modules/Wall/externals/images/smiles/starving.png', 1, 1),
(96, ' :eat: ', 'Eat', NULL, 'application/modules/Wall/externals/images/smiles/eat.png', 1, 1),
(97, ' :victory: ', 'Victory', NULL, 'application/modules/Wall/externals/images/smiles/victory.png', 1, 1),
(98, ' :curse: ', 'Curse', NULL, 'application/modules/Wall/externals/images/smiles/curse.png', 1, 1),
(99, ' :alien: ', 'Alien', NULL, 'application/modules/Wall/externals/images/smiles/alien.png', 1, 1),
(100, ' O:-) ', 'Angel', NULL, 'application/modules/Wall/externals/images/smiles/angel.png', 1, 1),
(101, ' :clown: ', 'Clown', NULL, 'application/modules/Wall/externals/images/smiles/clown.png', 1, 1),
(102, ' :cowboy: ', 'Cowboy', NULL, 'application/modules/Wall/externals/images/smiles/cowboy.png', 1, 1),
(103, ' :cyclops: ', 'Cyclops', NULL, 'application/modules/Wall/externals/images/smiles/cyclops.png', 1, 1),
(104, ' :devil: ', 'Devil', NULL, 'application/modules/Wall/externals/images/smiles/devil.png', 1, 1),
(105, ' :doctor: ', 'Doctor', NULL, 'application/modules/Wall/externals/images/smiles/doctor.png', 1, 1),
(106, ' :fighterf: ', 'Female Fighter', NULL, 'application/modules/Wall/externals/images/smiles/fighter-f.png', 1, 1),
(107, ' :fighterm: ', 'Male Fighter', NULL, 'application/modules/Wall/externals/images/smiles/fighter-m.png', 1, 1),
(108, ' :mohawk: ', 'Mohawk', NULL, 'application/modules/Wall/externals/images/smiles/mohawk.png', 1, 1),
(109, ' :music: ', 'Music', NULL, 'application/modules/Wall/externals/images/smiles/music.png', 1, 1),
(110, ' :nerd: ', 'Nerd', NULL, 'application/modules/Wall/externals/images/smiles/nerd.png', 1, 1),
(111, ' :party: ', 'Party', NULL, 'application/modules/Wall/externals/images/smiles/party.png', 1, 1),
(112, ' :pirate: ', 'Pirate', NULL, 'application/modules/Wall/externals/images/smiles/pirate.png', 1, 1),
(113, ' :skywalker: ', 'Skywalker', NULL, 'application/modules/Wall/externals/images/smiles/skywalker.png', 1, 1),
(114, ' :snowman: ', 'Snowman', NULL, 'application/modules/Wall/externals/images/smiles/snowman.png', 1, 1),
(115, ' :soldier: ', 'Soldier', NULL, 'application/modules/Wall/externals/images/smiles/soldier.png', 1, 1),
(116, ' :vampire: ', 'Vampire', NULL, 'application/modules/Wall/externals/images/smiles/vampire.png', 1, 1),
(117, ' :zombiekiller: ', 'Zombie Killer', NULL, 'application/modules/Wall/externals/images/smiles/zombie-killer.png', 1, 1),
(118, ' :ghost: ', 'Ghost', NULL, 'application/modules/Wall/externals/images/smiles/ghost.png', 1, 1),
(119, ' :skeleton: ', 'Skeleton', NULL, 'application/modules/Wall/externals/images/smiles/skeleton.png', 1, 1),
(120, ' :bunny: ', 'Bunny', NULL, 'application/modules/Wall/externals/images/smiles/bunny.png', 1, 1),
(121, ' :cat: ', 'Cat', NULL, 'application/modules/Wall/externals/images/smiles/cat.png', 1, 1),
(122, ' :cat2: ', 'Cat 2', NULL, 'application/modules/Wall/externals/images/smiles/cat2.png', 1, 1),
(123, ' :chick: ', 'Chick', NULL, 'application/modules/Wall/externals/images/smiles/chick.png', 1, 1),
(124, ' :chicken: ', 'Chicken', NULL, 'application/modules/Wall/externals/images/smiles/chicken.png', 1, 1),
(125, ' :chicken2: ', 'Chicken 2', NULL, 'application/modules/Wall/externals/images/smiles/chicken2.png', 1, 1),
(126, ' :cow: ', 'Cow', NULL, 'application/modules/Wall/externals/images/smiles/cow.png', 1, 1),
(127, ' :cow2: ', 'Cow 2', NULL, 'application/modules/Wall/externals/images/smiles/cow2.png', 1, 1),
(128, ' :dog: ', 'Dog', NULL, 'application/modules/Wall/externals/images/smiles/dog.png', 1, 1),
(129, ' :dog2: ', 'Dog 2', NULL, 'application/modules/Wall/externals/images/smiles/dog2.png', 1, 1),
(130, ' :duck: ', 'Duck', NULL, 'application/modules/Wall/externals/images/smiles/duck.png', 1, 1),
(131, ' :goat: ', 'Goat', NULL, 'application/modules/Wall/externals/images/smiles/goat.png', 1, 1),
(132, ' :hippo: ', 'Hippo', NULL, 'application/modules/Wall/externals/images/smiles/hippo.png', 1, 1),
(133, ' :koala: ', 'Koala', NULL, 'application/modules/Wall/externals/images/smiles/koala.png', 1, 1),
(134, ' :lion: ', 'Lion', NULL, 'application/modules/Wall/externals/images/smiles/lion.png', 1, 1),
(135, ' :monkey: ', 'Monkey', NULL, 'application/modules/Wall/externals/images/smiles/monkey.png', 1, 1),
(136, ' :monkey2: ', 'Monkey 2', NULL, 'application/modules/Wall/externals/images/smiles/monkey2.png', 1, 1),
(137, ' :mouse: ', 'Mouse', NULL, 'application/modules/Wall/externals/images/smiles/mouse.png', 1, 1),
(138, ' :panda: ', 'Panda', NULL, 'application/modules/Wall/externals/images/smiles/panda.png', 1, 1),
(139, ' :pig: ', 'Pig', NULL, 'application/modules/Wall/externals/images/smiles/pig.png', 1, 1),
(140, ' :pig2: ', 'Pig 2', NULL, 'application/modules/Wall/externals/images/smiles/pig2.png', 1, 1),
(141, ' :sheep: ', 'Sheep', NULL, 'application/modules/Wall/externals/images/smiles/sheep.png', 1, 1),
(142, ' :sheep2: ', 'Sheep 2', NULL, 'application/modules/Wall/externals/images/smiles/sheep2.png', 1, 1),
(143, ' :reindeer: ', 'Reindeer', NULL, 'application/modules/Wall/externals/images/smiles/reindeer.png', 1, 1),
(144, ' :snail: ', 'Snail', NULL, 'application/modules/Wall/externals/images/smiles/snail.png', 1, 1),
(145, ' :tiger: ', 'Tiger', NULL, 'application/modules/Wall/externals/images/smiles/tiger.png', 1, 1),
(146, ' :turtle: ', 'Turtle', NULL, 'application/modules/Wall/externals/images/smiles/turtle.png', 1, 1),
(147, ' :beer: ', 'Beer', NULL, 'application/modules/Wall/externals/images/smiles/beer.png', 1, 1),
(148, ' :drink: ', 'Drink', NULL, 'application/modules/Wall/externals/images/smiles/drink.png', 1, 1),
(149, ' :liquor: ', 'Liquor', NULL, 'application/modules/Wall/externals/images/smiles/liquor.png', 1, 1),
(150, ' :coffee: ', 'Coffee', NULL, 'application/modules/Wall/externals/images/smiles/coffee.png', 1, 1),
(151, ' :cake: ', 'Cake', NULL, 'application/modules/Wall/externals/images/smiles/cake.png', 1, 1),
(152, ' :pizza: ', 'Pizza', NULL, 'application/modules/Wall/externals/images/smiles/pizza.png', 1, 1),
(153, ' :watermelon: ', 'Watermelon', NULL, 'application/modules/Wall/externals/images/smiles/watermelon.png', 1, 1),
(154, ' :bowl: ', 'Bowl', NULL, 'application/modules/Wall/externals/images/smiles/bowl.png', 1, 1),
(155, ' :plate: ', 'Plate', NULL, 'application/modules/Wall/externals/images/smiles/plate.png', 1, 1),
(156, ' :can: ', 'Can', NULL, 'application/modules/Wall/externals/images/smiles/can.png', 1, 1),
(157, ' :female: ', 'Female', NULL, 'application/modules/Wall/externals/images/smiles/female.png', 1, 1),
(158, ' :male: ', 'Male', NULL, 'application/modules/Wall/externals/images/smiles/male.png', 1, 1),
(159, ' :heart: ', 'Heart', NULL, 'application/modules/Wall/externals/images/smiles/heart.png', 1, 1),
(160, ' :brokenheart: ', 'Broken Heart', NULL, 'application/modules/Wall/externals/images/smiles/heart-broken.png', 1, 1),
(161, ' :rose: ', 'Rose', NULL, 'application/modules/Wall/externals/images/smiles/rose.png', 1, 1),
(162, ' :deadrose: ', 'Dead Rose', NULL, 'application/modules/Wall/externals/images/smiles/rose-dead.png', 1, 1),
(163, ' :peace: ', 'Peace', NULL, 'application/modules/Wall/externals/images/smiles/peace.png', 1, 1),
(165, ' :flagus: ', 'US Flag', NULL, 'application/modules/Wall/externals/images/smiles/flag-us.png', 1, 1),
(166, ' :moon: ', 'Moon', NULL, 'application/modules/Wall/externals/images/smiles/moon.png', 1, 1),
(167, ' :star: ', 'Star', NULL, 'application/modules/Wall/externals/images/smiles/star.png', 1, 1),
(168, ' :sun: ', 'Sun', NULL, 'application/modules/Wall/externals/images/smiles/sun.png', 1, 1),
(169, ' :cloudy: ', 'Cloudy', NULL, 'application/modules/Wall/externals/images/smiles/cloudy.png', 1, 1),
(170, ' :rain: ', 'Rain', NULL, 'application/modules/Wall/externals/images/smiles/rain.png', 1, 1),
(171, ' :thunder: ', 'Thunder', NULL, 'application/modules/Wall/externals/images/smiles/thunder.png', 1, 1),
(172, ' :umbrella: ', 'Umbrella', NULL, 'application/modules/Wall/externals/images/smiles/umbrella.png', 1, 1),
(173, ' :rainbow: ', 'Rainbow', NULL, 'application/modules/Wall/externals/images/smiles/rainbow.png', 1, 1),
(174, ' :musicnote: ', 'Music Note', NULL, 'application/modules/Wall/externals/images/smiles/music-note.png', 1, 1),
(175, ' :airplane: ', 'Airplane', NULL, 'application/modules/Wall/externals/images/smiles/airplane.png', 1, 1),
(176, ' :car: ', 'Car', NULL, 'application/modules/Wall/externals/images/smiles/car.png', 1, 1),
(177, ' :island: ', 'Island', NULL, 'application/modules/Wall/externals/images/smiles/island.png', 1, 1),
(178, ' :announce: ', 'Announce', NULL, 'application/modules/Wall/externals/images/smiles/announce.png', 1, 1),
(179, ' :brb: ', 'brb', NULL, 'application/modules/Wall/externals/images/smiles/brb.png', 1, 1),
(180, ' :mail: ', 'Mail', NULL, 'application/modules/Wall/externals/images/smiles/mail.png', 1, 1),
(181, ' :cell: ', 'Cell', NULL, 'application/modules/Wall/externals/images/smiles/mobile.png', 1, 1),
(182, ' :phone: ', 'Phone', NULL, 'application/modules/Wall/externals/images/smiles/phone.png', 1, 1),
(183, ' :camera: ', 'Camera', NULL, 'application/modules/Wall/externals/images/smiles/camera.png', 1, 1),
(184, ' :film: ', 'Film', NULL, 'application/modules/Wall/externals/images/smiles/film.png', 1, 1),
(185, ' :tv: ', 'TV', NULL, 'application/modules/Wall/externals/images/smiles/tv.png', 1, 1),
(186, ' :clock: ', 'Clock', NULL, 'application/modules/Wall/externals/images/smiles/clock.png', 1, 1),
(187, ' :lamp: ', 'Lamp', NULL, 'application/modules/Wall/externals/images/smiles/lamp.png', 1, 1),
(188, ' :search: ', 'Search', NULL, 'application/modules/Wall/externals/images/smiles/search.png', 1, 1),
(189, ' :coins: ', 'Coins', NULL, 'application/modules/Wall/externals/images/smiles/coins.png', 1, 1),
(190, ' :computer: ', 'Computer', NULL, 'application/modules/Wall/externals/images/smiles/computer.png', 1, 1),
(191, ' :console: ', 'Console', NULL, 'application/modules/Wall/externals/images/smiles/console.png', 1, 1),
(192, ' :present: ', 'Present', NULL, 'application/modules/Wall/externals/images/smiles/present.png', 1, 1),
(193, ' :soccer: ', 'Soccer', NULL, 'application/modules/Wall/externals/images/smiles/soccerball.png', 1, 1),
(194, ' :clover: ', 'Clover', NULL, 'application/modules/Wall/externals/images/smiles/clover.png', 1, 1),
(195, ' :pumpkin: ', 'Pumpkin', NULL, 'application/modules/Wall/externals/images/smiles/pumpkin.png', 1, 1),
(196, ' :bomb: ', 'Bomb', NULL, 'application/modules/Wall/externals/images/smiles/bomb.png', 1, 1),
(197, ' :hammer: ', 'Hammer', NULL, 'application/modules/Wall/externals/images/smiles/hammer.png', 1, 1),
(198, ' :knife: ', 'Knife', NULL, 'application/modules/Wall/externals/images/smiles/knife.png', 1, 1),
(199, ' :handcuffs: ', 'Handcuffs', NULL, 'application/modules/Wall/externals/images/smiles/handcuffs.png', 1, 1),
(200, ' :pill: ', 'Pill', NULL, 'application/modules/Wall/externals/images/smiles/pill.png', 1, 1),
(201, ' :poop: ', 'Poop', NULL, 'application/modules/Wall/externals/images/smiles/poop.png', 1, 1),
(202, ' :cigarette: ', 'Cigarette', NULL, 'application/modules/Wall/externals/images/smiles/cigarette.png', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_wall_tags`
--

CREATE TABLE `engine4_wall_tags` (
  `tag_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL DEFAULT '0',
  `object_id` int(11) NOT NULL DEFAULT '0',
  `object_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_people` tinyint(1) NOT NULL DEFAULT '0',
  `value` varchar(90) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_wall_tokens`
--

CREATE TABLE `engine4_wall_tokens` (
  `token_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `object_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `object_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_token` text CHARACTER SET utf8,
  `oauth_token_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `engine4_wall_usersettings`
--

CREATE TABLE `engine4_wall_usersettings` (
  `user_id` int(11) NOT NULL,
  `share_facebook_enabled` tinyint(1) NOT NULL,
  `share_twitter_enabled` tinyint(1) NOT NULL,
  `share_linkedin_enabled` tinyint(1) DEFAULT '0',
  `mode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `list_id` int(11) NOT NULL,
  `privacy_user` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `privacy_page` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `engine4_activity_actions`
--
ALTER TABLE `engine4_activity_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `SUBJECT` (`subject_type`,`subject_id`),
  ADD KEY `OBJECT` (`object_type`,`object_id`);

--
-- Индексы таблицы `engine4_activity_actionsettings`
--
ALTER TABLE `engine4_activity_actionsettings`
  ADD PRIMARY KEY (`user_id`,`type`);

--
-- Индексы таблицы `engine4_activity_actiontypes`
--
ALTER TABLE `engine4_activity_actiontypes`
  ADD PRIMARY KEY (`type`);

--
-- Индексы таблицы `engine4_activity_attachments`
--
ALTER TABLE `engine4_activity_attachments`
  ADD PRIMARY KEY (`attachment_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `type_id` (`type`,`id`);

--
-- Индексы таблицы `engine4_activity_comments`
--
ALTER TABLE `engine4_activity_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `resource_type` (`resource_id`),
  ADD KEY `poster_type` (`poster_type`,`poster_id`);

--
-- Индексы таблицы `engine4_activity_likes`
--
ALTER TABLE `engine4_activity_likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `resource_id` (`resource_id`),
  ADD KEY `poster_type` (`poster_type`,`poster_id`);

--
-- Индексы таблицы `engine4_activity_notifications`
--
ALTER TABLE `engine4_activity_notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `LOOKUP` (`user_id`,`date`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `object` (`object_type`,`object_id`);

--
-- Индексы таблицы `engine4_activity_notificationsettings`
--
ALTER TABLE `engine4_activity_notificationsettings`
  ADD PRIMARY KEY (`user_id`,`type`);

--
-- Индексы таблицы `engine4_activity_notificationtypes`
--
ALTER TABLE `engine4_activity_notificationtypes`
  ADD PRIMARY KEY (`type`);

--
-- Индексы таблицы `engine4_activity_stream`
--
ALTER TABLE `engine4_activity_stream`
  ADD PRIMARY KEY (`target_type`,`target_id`,`action_id`),
  ADD KEY `SUBJECT` (`subject_type`,`subject_id`,`action_id`),
  ADD KEY `OBJECT` (`object_type`,`object_id`,`action_id`);

--
-- Индексы таблицы `engine4_advbilling_donatesettings`
--
ALTER TABLE `engine4_advbilling_donatesettings`
  ADD PRIMARY KEY (`donatesettings_id`);

--
-- Индексы таблицы `engine4_announcement_announcements`
--
ALTER TABLE `engine4_announcement_announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_appmanager_filehashes`
--
ALTER TABLE `engine4_appmanager_filehashes`
  ADD PRIMARY KEY (`rel_path`,`platform`);

--
-- Индексы таблицы `engine4_appmanager_notifications`
--
ALTER TABLE `engine4_appmanager_notifications`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `engine4_appmanager_themes`
--
ALTER TABLE `engine4_appmanager_themes`
  ADD PRIMARY KEY (`theme_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `engine4_appmanager_tokens`
--
ALTER TABLE `engine4_appmanager_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_apptouch_adphotos`
--
ALTER TABLE `engine4_apptouch_adphotos`
  ADD PRIMARY KEY (`adphoto_id`),
  ADD KEY `ad_id` (`ad_id`);

--
-- Индексы таблицы `engine4_apptouch_ads`
--
ALTER TABLE `engine4_apptouch_ads`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `ad_campaign` (`ad_campaign`);

--
-- Индексы таблицы `engine4_apptouch_components`
--
ALTER TABLE `engine4_apptouch_components`
  ADD PRIMARY KEY (`component_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `engine4_apptouch_content`
--
ALTER TABLE `engine4_apptouch_content`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Индексы таблицы `engine4_apptouch_faces`
--
ALTER TABLE `engine4_apptouch_faces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`file_id`);

--
-- Индексы таблицы `engine4_apptouch_menuitems`
--
ALTER TABLE `engine4_apptouch_menuitems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `LOOKUP` (`name`,`order`);

--
-- Индексы таблицы `engine4_apptouch_menus`
--
ALTER TABLE `engine4_apptouch_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `order` (`order`);

--
-- Индексы таблицы `engine4_apptouch_pages`
--
ALTER TABLE `engine4_apptouch_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `engine4_apptouch_signup`
--
ALTER TABLE `engine4_apptouch_signup`
  ADD PRIMARY KEY (`signup_id`);

--
-- Индексы таблицы `engine4_apptouch_themes`
--
ALTER TABLE `engine4_apptouch_themes`
  ADD PRIMARY KEY (`theme_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `engine4_article_articles`
--
ALTER TABLE `engine4_article_articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_authorization_allow`
--
ALTER TABLE `engine4_authorization_allow`
  ADD PRIMARY KEY (`resource_type`,`resource_id`,`action`,`role`,`role_id`);

--
-- Индексы таблицы `engine4_authorization_levels`
--
ALTER TABLE `engine4_authorization_levels`
  ADD PRIMARY KEY (`level_id`);

--
-- Индексы таблицы `engine4_authorization_permissions`
--
ALTER TABLE `engine4_authorization_permissions`
  ADD PRIMARY KEY (`level_id`,`type`,`name`);

--
-- Индексы таблицы `engine4_avatarstyler_images`
--
ALTER TABLE `engine4_avatarstyler_images`
  ADD PRIMARY KEY (`images_id`);

--
-- Индексы таблицы `engine4_blog_blogs`
--
ALTER TABLE `engine4_blog_blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `owner_type` (`owner_type`,`owner_id`),
  ADD KEY `search` (`search`,`creation_date`),
  ADD KEY `owner_id` (`owner_id`,`draft`),
  ADD KEY `draft` (`draft`,`search`);

--
-- Индексы таблицы `engine4_blog_categories`
--
ALTER TABLE `engine4_blog_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`,`category_name`),
  ADD KEY `category_name` (`category_name`);

--
-- Индексы таблицы `engine4_blog_subscriptions`
--
ALTER TABLE `engine4_blog_subscriptions`
  ADD PRIMARY KEY (`subscription_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`subscriber_user_id`),
  ADD KEY `subscriber_user_id` (`subscriber_user_id`);

--
-- Индексы таблицы `engine4_checkin_checks`
--
ALTER TABLE `engine4_checkin_checks`
  ADD PRIMARY KEY (`check_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_checkin_places`
--
ALTER TABLE `engine4_checkin_places`
  ADD PRIMARY KEY (`place_id`),
  ADD KEY `object_id` (`object_id`);

--
-- Индексы таблицы `engine4_core_adcampaigns`
--
ALTER TABLE `engine4_core_adcampaigns`
  ADD PRIMARY KEY (`adcampaign_id`);

--
-- Индексы таблицы `engine4_core_adphotos`
--
ALTER TABLE `engine4_core_adphotos`
  ADD PRIMARY KEY (`adphoto_id`),
  ADD KEY `ad_id` (`ad_id`);

--
-- Индексы таблицы `engine4_core_ads`
--
ALTER TABLE `engine4_core_ads`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `ad_campaign` (`ad_campaign`);

--
-- Индексы таблицы `engine4_core_auth`
--
ALTER TABLE `engine4_core_auth`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `engine4_core_bannedemails`
--
ALTER TABLE `engine4_core_bannedemails`
  ADD PRIMARY KEY (`bannedemail_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `engine4_core_bannedips`
--
ALTER TABLE `engine4_core_bannedips`
  ADD PRIMARY KEY (`bannedip_id`),
  ADD UNIQUE KEY `start` (`start`,`stop`);

--
-- Индексы таблицы `engine4_core_bannedusernames`
--
ALTER TABLE `engine4_core_bannedusernames`
  ADD PRIMARY KEY (`bannedusername_id`),
  ADD KEY `username` (`username`);

--
-- Индексы таблицы `engine4_core_bannedwords`
--
ALTER TABLE `engine4_core_bannedwords`
  ADD PRIMARY KEY (`bannedword_id`);

--
-- Индексы таблицы `engine4_core_comments`
--
ALTER TABLE `engine4_core_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `resource_type` (`resource_type`,`resource_id`),
  ADD KEY `poster_type` (`poster_type`,`poster_id`);

--
-- Индексы таблицы `engine4_core_content`
--
ALTER TABLE `engine4_core_content`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `page_id` (`page_id`,`order`);

--
-- Индексы таблицы `engine4_core_geotags`
--
ALTER TABLE `engine4_core_geotags`
  ADD PRIMARY KEY (`geotag_id`),
  ADD KEY `latitude` (`latitude`,`longitude`);

--
-- Индексы таблицы `engine4_core_jobs`
--
ALTER TABLE `engine4_core_jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `jobtype_id` (`jobtype_id`),
  ADD KEY `state` (`state`),
  ADD KEY `is_complete` (`is_complete`,`priority`,`job_id`);

--
-- Индексы таблицы `engine4_core_jobtypes`
--
ALTER TABLE `engine4_core_jobtypes`
  ADD PRIMARY KEY (`jobtype_id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Индексы таблицы `engine4_core_languages`
--
ALTER TABLE `engine4_core_languages`
  ADD PRIMARY KEY (`language_id`);

--
-- Индексы таблицы `engine4_core_likes`
--
ALTER TABLE `engine4_core_likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `resource_type` (`resource_type`,`resource_id`),
  ADD KEY `poster_type` (`poster_type`,`poster_id`);

--
-- Индексы таблицы `engine4_core_links`
--
ALTER TABLE `engine4_core_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `owner` (`owner_type`,`owner_id`),
  ADD KEY `parent` (`parent_type`,`parent_id`);

--
-- Индексы таблицы `engine4_core_listitems`
--
ALTER TABLE `engine4_core_listitems`
  ADD PRIMARY KEY (`listitem_id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `child_id` (`child_id`);

--
-- Индексы таблицы `engine4_core_lists`
--
ALTER TABLE `engine4_core_lists`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `owner_type` (`owner_type`,`owner_id`);

--
-- Индексы таблицы `engine4_core_log`
--
ALTER TABLE `engine4_core_log`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `domain` (`domain`,`timestamp`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_core_mail`
--
ALTER TABLE `engine4_core_mail`
  ADD PRIMARY KEY (`mail_id`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `engine4_core_mailrecipients`
--
ALTER TABLE `engine4_core_mailrecipients`
  ADD PRIMARY KEY (`recipient_id`);

--
-- Индексы таблицы `engine4_core_mailtemplates`
--
ALTER TABLE `engine4_core_mailtemplates`
  ADD PRIMARY KEY (`mailtemplate_id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Индексы таблицы `engine4_core_menuitems`
--
ALTER TABLE `engine4_core_menuitems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `LOOKUP` (`name`,`order`);

--
-- Индексы таблицы `engine4_core_menus`
--
ALTER TABLE `engine4_core_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `order` (`order`);

--
-- Индексы таблицы `engine4_core_migrations`
--
ALTER TABLE `engine4_core_migrations`
  ADD PRIMARY KEY (`package`);

--
-- Индексы таблицы `engine4_core_modules`
--
ALTER TABLE `engine4_core_modules`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `engine4_core_nodes`
--
ALTER TABLE `engine4_core_nodes`
  ADD PRIMARY KEY (`node_id`),
  ADD UNIQUE KEY `signature` (`signature`);

--
-- Индексы таблицы `engine4_core_pages`
--
ALTER TABLE `engine4_core_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Индексы таблицы `engine4_core_processes`
--
ALTER TABLE `engine4_core_processes`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `engine4_core_referrers`
--
ALTER TABLE `engine4_core_referrers`
  ADD PRIMARY KEY (`host`,`path`,`query`),
  ADD KEY `value` (`value`);

--
-- Индексы таблицы `engine4_core_reports`
--
ALTER TABLE `engine4_core_reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `category` (`category`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `read` (`read`);

--
-- Индексы таблицы `engine4_core_routes`
--
ALTER TABLE `engine4_core_routes`
  ADD PRIMARY KEY (`name`),
  ADD KEY `order` (`order`);

--
-- Индексы таблицы `engine4_core_search`
--
ALTER TABLE `engine4_core_search`
  ADD PRIMARY KEY (`type`,`id`);
ALTER TABLE `engine4_core_search` ADD FULLTEXT KEY `LOOKUP` (`title`,`description`,`keywords`,`hidden`);

--
-- Индексы таблицы `engine4_core_serviceproviders`
--
ALTER TABLE `engine4_core_serviceproviders`
  ADD PRIMARY KEY (`serviceprovider_id`),
  ADD UNIQUE KEY `type` (`type`,`name`);

--
-- Индексы таблицы `engine4_core_services`
--
ALTER TABLE `engine4_core_services`
  ADD PRIMARY KEY (`service_id`),
  ADD UNIQUE KEY `type` (`type`,`profile`);

--
-- Индексы таблицы `engine4_core_servicetypes`
--
ALTER TABLE `engine4_core_servicetypes`
  ADD PRIMARY KEY (`servicetype_id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Индексы таблицы `engine4_core_session`
--
ALTER TABLE `engine4_core_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_core_settings`
--
ALTER TABLE `engine4_core_settings`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `engine4_core_statistics`
--
ALTER TABLE `engine4_core_statistics`
  ADD PRIMARY KEY (`type`,`date`);

--
-- Индексы таблицы `engine4_core_status`
--
ALTER TABLE `engine4_core_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Индексы таблицы `engine4_core_styles`
--
ALTER TABLE `engine4_core_styles`
  ADD PRIMARY KEY (`type`,`id`);

--
-- Индексы таблицы `engine4_core_tagmaps`
--
ALTER TABLE `engine4_core_tagmaps`
  ADD PRIMARY KEY (`tagmap_id`),
  ADD KEY `resource_type` (`resource_type`,`resource_id`),
  ADD KEY `tagger_type` (`tagger_type`,`tagger_id`),
  ADD KEY `tag_type` (`tag_type`,`tag_id`);

--
-- Индексы таблицы `engine4_core_tags`
--
ALTER TABLE `engine4_core_tags`
  ADD PRIMARY KEY (`tag_id`),
  ADD UNIQUE KEY `text` (`text`);

--
-- Индексы таблицы `engine4_core_tasks`
--
ALTER TABLE `engine4_core_tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD UNIQUE KEY `plugin` (`plugin`),
  ADD KEY `module` (`module`),
  ADD KEY `started_last` (`started_last`);

--
-- Индексы таблицы `engine4_core_themes`
--
ALTER TABLE `engine4_core_themes`
  ADD PRIMARY KEY (`theme_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `engine4_credit_actiontypes`
--
ALTER TABLE `engine4_credit_actiontypes`
  ADD PRIMARY KEY (`action_id`),
  ADD UNIQUE KEY `action_type` (`action_type`);

--
-- Индексы таблицы `engine4_credit_balances`
--
ALTER TABLE `engine4_credit_balances`
  ADD PRIMARY KEY (`balance_id`);

--
-- Индексы таблицы `engine4_credit_logs`
--
ALTER TABLE `engine4_credit_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `action_id` (`action_id`);

--
-- Индексы таблицы `engine4_credit_orders`
--
ALTER TABLE `engine4_credit_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `gateway_id` (`gateway_id`),
  ADD KEY `state` (`status`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Индексы таблицы `engine4_credit_payments`
--
ALTER TABLE `engine4_credit_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Индексы таблицы `engine4_credit_transactions`
--
ALTER TABLE `engine4_credit_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `gateway_id` (`gateway_id`),
  ADD KEY `state` (`state`),
  ADD KEY `gateway_transaction_id` (`gateway_transaction_id`);

--
-- Индексы таблицы `engine4_daylogo_logos`
--
ALTER TABLE `engine4_daylogo_logos`
  ADD PRIMARY KEY (`logo_id`);

--
-- Индексы таблицы `engine4_event_albums`
--
ALTER TABLE `engine4_event_albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `search` (`search`);

--
-- Индексы таблицы `engine4_event_categories`
--
ALTER TABLE `engine4_event_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `engine4_event_events`
--
ALTER TABLE `engine4_event_events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent_type` (`parent_type`,`parent_id`),
  ADD KEY `starttime` (`starttime`),
  ADD KEY `search` (`search`);

--
-- Индексы таблицы `engine4_event_membership`
--
ALTER TABLE `engine4_event_membership`
  ADD PRIMARY KEY (`resource_id`,`user_id`),
  ADD KEY `REVERSE` (`user_id`);

--
-- Индексы таблицы `engine4_event_photos`
--
ALTER TABLE `engine4_event_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `collection_id` (`collection_id`);

--
-- Индексы таблицы `engine4_event_posts`
--
ALTER TABLE `engine4_event_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_event_topics`
--
ALTER TABLE `engine4_event_topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_event_topicwatches`
--
ALTER TABLE `engine4_event_topicwatches`
  ADD PRIMARY KEY (`resource_id`,`topic_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_group_albums`
--
ALTER TABLE `engine4_group_albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Индексы таблицы `engine4_group_categories`
--
ALTER TABLE `engine4_group_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `engine4_group_groups`
--
ALTER TABLE `engine4_group_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `search` (`search`);

--
-- Индексы таблицы `engine4_group_listitems`
--
ALTER TABLE `engine4_group_listitems`
  ADD PRIMARY KEY (`listitem_id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `child_id` (`child_id`);

--
-- Индексы таблицы `engine4_group_lists`
--
ALTER TABLE `engine4_group_lists`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Индексы таблицы `engine4_group_membership`
--
ALTER TABLE `engine4_group_membership`
  ADD PRIMARY KEY (`resource_id`,`user_id`),
  ADD KEY `REVERSE` (`user_id`);

--
-- Индексы таблицы `engine4_group_photos`
--
ALTER TABLE `engine4_group_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_group_posts`
--
ALTER TABLE `engine4_group_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_group_topics`
--
ALTER TABLE `engine4_group_topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_group_topicwatches`
--
ALTER TABLE `engine4_group_topicwatches`
  ADD PRIMARY KEY (`resource_id`,`topic_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_guest_blockedusers`
--
ALTER TABLE `engine4_guest_blockedusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guest_id` (`guest_id`);

--
-- Индексы таблицы `engine4_guest_guests`
--
ALTER TABLE `engine4_guest_guests`
  ADD PRIMARY KEY (`guest_id`);

--
-- Индексы таблицы `engine4_hashtag_forbiddentags`
--
ALTER TABLE `engine4_hashtag_forbiddentags`
  ADD PRIMARY KEY (`forbiddentag_id`);

--
-- Индексы таблицы `engine4_hashtag_maps`
--
ALTER TABLE `engine4_hashtag_maps`
  ADD PRIMARY KEY (`map_id`);

--
-- Индексы таблицы `engine4_hashtag_tags`
--
ALTER TABLE `engine4_hashtag_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Индексы таблицы `engine4_headvancedmembers_markers`
--
ALTER TABLE `engine4_headvancedmembers_markers`
  ADD PRIMARY KEY (`marker_id`);

--
-- Индексы таблицы `engine4_headvancedmembers_status`
--
ALTER TABLE `engine4_headvancedmembers_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Индексы таблицы `engine4_headvancedmembers_verification`
--
ALTER TABLE `engine4_headvancedmembers_verification`
  ADD PRIMARY KEY (`verification_id`);

--
-- Индексы таблицы `engine4_hebadge_badges`
--
ALTER TABLE `engine4_hebadge_badges`
  ADD PRIMARY KEY (`badge_id`);

--
-- Индексы таблицы `engine4_hebadge_complete`
--
ALTER TABLE `engine4_hebadge_complete`
  ADD PRIMARY KEY (`require_id`,`object_type`,`object_id`);

--
-- Индексы таблицы `engine4_hebadge_creditbadges`
--
ALTER TABLE `engine4_hebadge_creditbadges`
  ADD PRIMARY KEY (`creditbadge_id`);

--
-- Индексы таблицы `engine4_hebadge_creditmembers`
--
ALTER TABLE `engine4_hebadge_creditmembers`
  ADD PRIMARY KEY (`creditmember_id`);

--
-- Индексы таблицы `engine4_hebadge_info`
--
ALTER TABLE `engine4_hebadge_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `engine4_hebadge_levelsbadges`
--
ALTER TABLE `engine4_hebadge_levelsbadges`
  ADD PRIMARY KEY (`badge_id`,`level_id`);

--
-- Индексы таблицы `engine4_hebadge_members`
--
ALTER TABLE `engine4_hebadge_members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `badge_id` (`badge_id`,`object_type`,`object_id`);

--
-- Индексы таблицы `engine4_hebadge_pagebadges`
--
ALTER TABLE `engine4_hebadge_pagebadges`
  ADD PRIMARY KEY (`pagebadge_id`);

--
-- Индексы таблицы `engine4_hebadge_pagemembers`
--
ALTER TABLE `engine4_hebadge_pagemembers`
  ADD PRIMARY KEY (`pagemember_id`);

--
-- Индексы таблицы `engine4_hebadge_require`
--
ALTER TABLE `engine4_hebadge_require`
  ADD PRIMARY KEY (`require_id`);

--
-- Индексы таблицы `engine4_hecontest_hecontests`
--
ALTER TABLE `engine4_hecontest_hecontests`
  ADD PRIMARY KEY (`hecontest_id`);

--
-- Индексы таблицы `engine4_hecontest_photos`
--
ALTER TABLE `engine4_hecontest_photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Индексы таблицы `engine4_hecontest_purchaseds`
--
ALTER TABLE `engine4_hecontest_purchaseds`
  ADD PRIMARY KEY (`purchaseds_id`);

--
-- Индексы таблицы `engine4_hecontest_voters`
--
ALTER TABLE `engine4_hecontest_voters`
  ADD PRIMARY KEY (`voter_id`);

--
-- Индексы таблицы `engine4_hecore_featureds`
--
ALTER TABLE `engine4_hecore_featureds`
  ADD PRIMARY KEY (`featured_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_hecore_log`
--
ALTER TABLE `engine4_hecore_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `engine4_hecore_modules`
--
ALTER TABLE `engine4_hecore_modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `engine4_hecore_user_settings`
--
ALTER TABLE `engine4_hecore_user_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `engine4_invites`
--
ALTER TABLE `engine4_invites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `recipient` (`recipient`);

--
-- Индексы таблицы `engine4_messages_conversations`
--
ALTER TABLE `engine4_messages_conversations`
  ADD PRIMARY KEY (`conversation_id`);

--
-- Индексы таблицы `engine4_messages_messages`
--
ALTER TABLE `engine4_messages_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD UNIQUE KEY `CONVERSATIONS` (`conversation_id`,`message_id`);

--
-- Индексы таблицы `engine4_messages_recipients`
--
ALTER TABLE `engine4_messages_recipients`
  ADD PRIMARY KEY (`user_id`,`conversation_id`),
  ADD KEY `INBOX_UPDATED` (`user_id`,`conversation_id`,`inbox_updated`),
  ADD KEY `OUTBOX_UPDATED` (`user_id`,`conversation_id`,`outbox_updated`);

--
-- Индексы таблицы `engine4_network_membership`
--
ALTER TABLE `engine4_network_membership`
  ADD PRIMARY KEY (`resource_id`,`user_id`);

--
-- Индексы таблицы `engine4_network_networks`
--
ALTER TABLE `engine4_network_networks`
  ADD PRIMARY KEY (`network_id`),
  ADD KEY `assignment` (`assignment`);

--
-- Индексы таблицы `engine4_payment_gateways`
--
ALTER TABLE `engine4_payment_gateways`
  ADD PRIMARY KEY (`gateway_id`),
  ADD KEY `enabled` (`enabled`);

--
-- Индексы таблицы `engine4_payment_orders`
--
ALTER TABLE `engine4_payment_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `gateway_id` (`gateway_id`,`gateway_order_id`),
  ADD KEY `state` (`state`),
  ADD KEY `source_type` (`source_type`,`source_id`);

--
-- Индексы таблицы `engine4_payment_packages`
--
ALTER TABLE `engine4_payment_packages`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `level_id` (`level_id`);

--
-- Индексы таблицы `engine4_payment_products`
--
ALTER TABLE `engine4_payment_products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `extension_type` (`extension_type`,`extension_id`);

--
-- Индексы таблицы `engine4_payment_subscriptions`
--
ALTER TABLE `engine4_payment_subscriptions`
  ADD PRIMARY KEY (`subscription_id`),
  ADD UNIQUE KEY `gateway_id` (`gateway_id`,`gateway_profile_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `status` (`status`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `engine4_payment_transactions`
--
ALTER TABLE `engine4_payment_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `gateway_id` (`gateway_id`),
  ADD KEY `type` (`type`),
  ADD KEY `state` (`state`),
  ADD KEY `gateway_transaction_id` (`gateway_transaction_id`),
  ADD KEY `gateway_parent_transaction_id` (`gateway_parent_transaction_id`);

--
-- Индексы таблицы `engine4_storage_chunks`
--
ALTER TABLE `engine4_storage_chunks`
  ADD PRIMARY KEY (`chunk_id`),
  ADD KEY `file_id` (`file_id`);

--
-- Индексы таблицы `engine4_storage_files`
--
ALTER TABLE `engine4_storage_files`
  ADD PRIMARY KEY (`file_id`),
  ADD UNIQUE KEY `parent_file_id` (`parent_file_id`,`type`),
  ADD KEY `PARENT` (`parent_type`,`parent_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Индексы таблицы `engine4_storage_mirrors`
--
ALTER TABLE `engine4_storage_mirrors`
  ADD PRIMARY KEY (`file_id`,`service_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Индексы таблицы `engine4_storage_services`
--
ALTER TABLE `engine4_storage_services`
  ADD PRIMARY KEY (`service_id`);

--
-- Индексы таблицы `engine4_storage_servicetypes`
--
ALTER TABLE `engine4_storage_servicetypes`
  ADD PRIMARY KEY (`servicetype_id`),
  ADD UNIQUE KEY `plugin` (`plugin`);

--
-- Индексы таблицы `engine4_users`
--
ALTER TABLE `engine4_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `EMAIL` (`email`),
  ADD UNIQUE KEY `USERNAME` (`username`),
  ADD KEY `MEMBER_COUNT` (`member_count`),
  ADD KEY `CREATION_DATE` (`creation_date`),
  ADD KEY `search` (`search`),
  ADD KEY `enabled` (`enabled`);

--
-- Индексы таблицы `engine4_user_block`
--
ALTER TABLE `engine4_user_block`
  ADD PRIMARY KEY (`user_id`,`blocked_user_id`),
  ADD KEY `REVERSE` (`blocked_user_id`);

--
-- Индексы таблицы `engine4_user_facebook`
--
ALTER TABLE `engine4_user_facebook`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `facebook_uid` (`facebook_uid`);

--
-- Индексы таблицы `engine4_user_fields_maps`
--
ALTER TABLE `engine4_user_fields_maps`
  ADD PRIMARY KEY (`field_id`,`option_id`,`child_id`);

--
-- Индексы таблицы `engine4_user_fields_meta`
--
ALTER TABLE `engine4_user_fields_meta`
  ADD PRIMARY KEY (`field_id`);

--
-- Индексы таблицы `engine4_user_fields_options`
--
ALTER TABLE `engine4_user_fields_options`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `field_id` (`field_id`);

--
-- Индексы таблицы `engine4_user_fields_search`
--
ALTER TABLE `engine4_user_fields_search`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `profile_type` (`profile_type`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `gender` (`gender`),
  ADD KEY `birthdate` (`birthdate`);

--
-- Индексы таблицы `engine4_user_fields_values`
--
ALTER TABLE `engine4_user_fields_values`
  ADD PRIMARY KEY (`item_id`,`field_id`,`index`);

--
-- Индексы таблицы `engine4_user_forgot`
--
ALTER TABLE `engine4_user_forgot`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `code` (`code`);

--
-- Индексы таблицы `engine4_user_janrain`
--
ALTER TABLE `engine4_user_janrain`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Индексы таблицы `engine4_user_listitems`
--
ALTER TABLE `engine4_user_listitems`
  ADD PRIMARY KEY (`listitem_id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `child_id` (`child_id`);

--
-- Индексы таблицы `engine4_user_lists`
--
ALTER TABLE `engine4_user_lists`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Индексы таблицы `engine4_user_logins`
--
ALTER TABLE `engine4_user_logins`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `engine4_user_membership`
--
ALTER TABLE `engine4_user_membership`
  ADD PRIMARY KEY (`resource_id`,`user_id`),
  ADD KEY `REVERSE` (`user_id`);

--
-- Индексы таблицы `engine4_user_online`
--
ALTER TABLE `engine4_user_online`
  ADD PRIMARY KEY (`ip`,`user_id`),
  ADD KEY `LOOKUP` (`active`);

--
-- Индексы таблицы `engine4_user_settings`
--
ALTER TABLE `engine4_user_settings`
  ADD PRIMARY KEY (`user_id`,`name`);

--
-- Индексы таблицы `engine4_user_signup`
--
ALTER TABLE `engine4_user_signup`
  ADD PRIMARY KEY (`signup_id`);

--
-- Индексы таблицы `engine4_user_twitter`
--
ALTER TABLE `engine4_user_twitter`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `twitter_uid` (`twitter_uid`);

--
-- Индексы таблицы `engine4_user_verify`
--
ALTER TABLE `engine4_user_verify`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `code` (`code`);

--
-- Индексы таблицы `engine4_video_categories`
--
ALTER TABLE `engine4_video_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `engine4_video_ratings`
--
ALTER TABLE `engine4_video_ratings`
  ADD PRIMARY KEY (`video_id`,`user_id`),
  ADD KEY `INDEX` (`video_id`);

--
-- Индексы таблицы `engine4_video_videos`
--
ALTER TABLE `engine4_video_videos`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `owner_id` (`owner_id`,`owner_type`),
  ADD KEY `search` (`search`),
  ADD KEY `creation_date` (`creation_date`),
  ADD KEY `view_count` (`view_count`);

--
-- Индексы таблицы `engine4_wall_fbpages`
--
ALTER TABLE `engine4_wall_fbpages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `engine4_wall_listitems`
--
ALTER TABLE `engine4_wall_listitems`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `object_type` (`object_type`,`object_id`,`list_id`);

--
-- Индексы таблицы `engine4_wall_lists`
--
ALTER TABLE `engine4_wall_lists`
  ADD PRIMARY KEY (`list_id`);

--
-- Индексы таблицы `engine4_wall_mute`
--
ALTER TABLE `engine4_wall_mute`
  ADD PRIMARY KEY (`mute_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`action_id`);

--
-- Индексы таблицы `engine4_wall_privacy`
--
ALTER TABLE `engine4_wall_privacy`
  ADD PRIMARY KEY (`action_id`);

--
-- Индексы таблицы `engine4_wall_smiles`
--
ALTER TABLE `engine4_wall_smiles`
  ADD PRIMARY KEY (`smile_id`);

--
-- Индексы таблицы `engine4_wall_tags`
--
ALTER TABLE `engine4_wall_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Индексы таблицы `engine4_wall_tokens`
--
ALTER TABLE `engine4_wall_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`object_id`,`provider`);

--
-- Индексы таблицы `engine4_wall_usersettings`
--
ALTER TABLE `engine4_wall_usersettings`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `engine4_activity_actions`
--
ALTER TABLE `engine4_activity_actions`
  MODIFY `action_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT для таблицы `engine4_activity_attachments`
--
ALTER TABLE `engine4_activity_attachments`
  MODIFY `attachment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `engine4_activity_comments`
--
ALTER TABLE `engine4_activity_comments`
  MODIFY `comment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_activity_likes`
--
ALTER TABLE `engine4_activity_likes`
  MODIFY `like_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `engine4_activity_notifications`
--
ALTER TABLE `engine4_activity_notifications`
  MODIFY `notification_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT для таблицы `engine4_advbilling_donatesettings`
--
ALTER TABLE `engine4_advbilling_donatesettings`
  MODIFY `donatesettings_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_announcement_announcements`
--
ALTER TABLE `engine4_announcement_announcements`
  MODIFY `announcement_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_appmanager_themes`
--
ALTER TABLE `engine4_appmanager_themes`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `engine4_appmanager_tokens`
--
ALTER TABLE `engine4_appmanager_tokens`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_apptouch_adphotos`
--
ALTER TABLE `engine4_apptouch_adphotos`
  MODIFY `adphoto_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_apptouch_ads`
--
ALTER TABLE `engine4_apptouch_ads`
  MODIFY `ad_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_apptouch_components`
--
ALTER TABLE `engine4_apptouch_components`
  MODIFY `component_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT для таблицы `engine4_apptouch_content`
--
ALTER TABLE `engine4_apptouch_content`
  MODIFY `content_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT для таблицы `engine4_apptouch_faces`
--
ALTER TABLE `engine4_apptouch_faces`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_apptouch_menuitems`
--
ALTER TABLE `engine4_apptouch_menuitems`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1882;
--
-- AUTO_INCREMENT для таблицы `engine4_apptouch_menus`
--
ALTER TABLE `engine4_apptouch_menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT для таблицы `engine4_apptouch_pages`
--
ALTER TABLE `engine4_apptouch_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT для таблицы `engine4_apptouch_signup`
--
ALTER TABLE `engine4_apptouch_signup`
  MODIFY `signup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `engine4_apptouch_themes`
--
ALTER TABLE `engine4_apptouch_themes`
  MODIFY `theme_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `engine4_article_articles`
--
ALTER TABLE `engine4_article_articles`
  MODIFY `article_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT для таблицы `engine4_authorization_levels`
--
ALTER TABLE `engine4_authorization_levels`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `engine4_avatarstyler_images`
--
ALTER TABLE `engine4_avatarstyler_images`
  MODIFY `images_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_blog_blogs`
--
ALTER TABLE `engine4_blog_blogs`
  MODIFY `blog_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `engine4_blog_categories`
--
ALTER TABLE `engine4_blog_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `engine4_blog_subscriptions`
--
ALTER TABLE `engine4_blog_subscriptions`
  MODIFY `subscription_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_checkin_checks`
--
ALTER TABLE `engine4_checkin_checks`
  MODIFY `check_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_checkin_places`
--
ALTER TABLE `engine4_checkin_places`
  MODIFY `place_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_adcampaigns`
--
ALTER TABLE `engine4_core_adcampaigns`
  MODIFY `adcampaign_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_adphotos`
--
ALTER TABLE `engine4_core_adphotos`
  MODIFY `adphoto_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_ads`
--
ALTER TABLE `engine4_core_ads`
  MODIFY `ad_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_bannedemails`
--
ALTER TABLE `engine4_core_bannedemails`
  MODIFY `bannedemail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_bannedips`
--
ALTER TABLE `engine4_core_bannedips`
  MODIFY `bannedip_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_bannedusernames`
--
ALTER TABLE `engine4_core_bannedusernames`
  MODIFY `bannedusername_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_bannedwords`
--
ALTER TABLE `engine4_core_bannedwords`
  MODIFY `bannedword_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_comments`
--
ALTER TABLE `engine4_core_comments`
  MODIFY `comment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `engine4_core_content`
--
ALTER TABLE `engine4_core_content`
  MODIFY `content_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=994;
--
-- AUTO_INCREMENT для таблицы `engine4_core_jobs`
--
ALTER TABLE `engine4_core_jobs`
  MODIFY `job_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `engine4_core_jobtypes`
--
ALTER TABLE `engine4_core_jobtypes`
  MODIFY `jobtype_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `engine4_core_languages`
--
ALTER TABLE `engine4_core_languages`
  MODIFY `language_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `engine4_core_likes`
--
ALTER TABLE `engine4_core_likes`
  MODIFY `like_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `engine4_core_links`
--
ALTER TABLE `engine4_core_links`
  MODIFY `link_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_listitems`
--
ALTER TABLE `engine4_core_listitems`
  MODIFY `listitem_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_lists`
--
ALTER TABLE `engine4_core_lists`
  MODIFY `list_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_log`
--
ALTER TABLE `engine4_core_log`
  MODIFY `message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_mail`
--
ALTER TABLE `engine4_core_mail`
  MODIFY `mail_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_mailrecipients`
--
ALTER TABLE `engine4_core_mailrecipients`
  MODIFY `recipient_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_mailtemplates`
--
ALTER TABLE `engine4_core_mailtemplates`
  MODIFY `mailtemplate_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT для таблицы `engine4_core_menuitems`
--
ALTER TABLE `engine4_core_menuitems`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;
--
-- AUTO_INCREMENT для таблицы `engine4_core_menus`
--
ALTER TABLE `engine4_core_menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `engine4_core_nodes`
--
ALTER TABLE `engine4_core_nodes`
  MODIFY `node_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_pages`
--
ALTER TABLE `engine4_core_pages`
  MODIFY `page_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT для таблицы `engine4_core_reports`
--
ALTER TABLE `engine4_core_reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_serviceproviders`
--
ALTER TABLE `engine4_core_serviceproviders`
  MODIFY `serviceprovider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `engine4_core_services`
--
ALTER TABLE `engine4_core_services`
  MODIFY `service_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_core_servicetypes`
--
ALTER TABLE `engine4_core_servicetypes`
  MODIFY `servicetype_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `engine4_core_status`
--
ALTER TABLE `engine4_core_status`
  MODIFY `status_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `engine4_core_tagmaps`
--
ALTER TABLE `engine4_core_tagmaps`
  MODIFY `tagmap_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `engine4_core_tags`
--
ALTER TABLE `engine4_core_tags`
  MODIFY `tag_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `engine4_core_tasks`
--
ALTER TABLE `engine4_core_tasks`
  MODIFY `task_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `engine4_core_themes`
--
ALTER TABLE `engine4_core_themes`
  MODIFY `theme_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `engine4_credit_actiontypes`
--
ALTER TABLE `engine4_credit_actiontypes`
  MODIFY `action_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT для таблицы `engine4_credit_logs`
--
ALTER TABLE `engine4_credit_logs`
  MODIFY `log_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT для таблицы `engine4_credit_orders`
--
ALTER TABLE `engine4_credit_orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_credit_payments`
--
ALTER TABLE `engine4_credit_payments`
  MODIFY `payment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_credit_transactions`
--
ALTER TABLE `engine4_credit_transactions`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_daylogo_logos`
--
ALTER TABLE `engine4_daylogo_logos`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_event_albums`
--
ALTER TABLE `engine4_event_albums`
  MODIFY `album_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `engine4_event_categories`
--
ALTER TABLE `engine4_event_categories`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `engine4_event_events`
--
ALTER TABLE `engine4_event_events`
  MODIFY `event_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `engine4_event_photos`
--
ALTER TABLE `engine4_event_photos`
  MODIFY `photo_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `engine4_event_posts`
--
ALTER TABLE `engine4_event_posts`
  MODIFY `post_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_event_topics`
--
ALTER TABLE `engine4_event_topics`
  MODIFY `topic_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_group_albums`
--
ALTER TABLE `engine4_group_albums`
  MODIFY `album_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `engine4_group_categories`
--
ALTER TABLE `engine4_group_categories`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `engine4_group_groups`
--
ALTER TABLE `engine4_group_groups`
  MODIFY `group_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `engine4_group_listitems`
--
ALTER TABLE `engine4_group_listitems`
  MODIFY `listitem_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_group_lists`
--
ALTER TABLE `engine4_group_lists`
  MODIFY `list_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `engine4_group_photos`
--
ALTER TABLE `engine4_group_photos`
  MODIFY `photo_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `engine4_group_posts`
--
ALTER TABLE `engine4_group_posts`
  MODIFY `post_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_group_topics`
--
ALTER TABLE `engine4_group_topics`
  MODIFY `topic_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_guest_blockedusers`
--
ALTER TABLE `engine4_guest_blockedusers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_guest_guests`
--
ALTER TABLE `engine4_guest_guests`
  MODIFY `guest_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `engine4_hashtag_forbiddentags`
--
ALTER TABLE `engine4_hashtag_forbiddentags`
  MODIFY `forbiddentag_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_hashtag_maps`
--
ALTER TABLE `engine4_hashtag_maps`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `engine4_hashtag_tags`
--
ALTER TABLE `engine4_hashtag_tags`
  MODIFY `tag_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `engine4_headvancedmembers_markers`
--
ALTER TABLE `engine4_headvancedmembers_markers`
  MODIFY `marker_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_headvancedmembers_status`
--
ALTER TABLE `engine4_headvancedmembers_status`
  MODIFY `status_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_headvancedmembers_verification`
--
ALTER TABLE `engine4_headvancedmembers_verification`
  MODIFY `verification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_hebadge_badges`
--
ALTER TABLE `engine4_hebadge_badges`
  MODIFY `badge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `engine4_hebadge_creditbadges`
--
ALTER TABLE `engine4_hebadge_creditbadges`
  MODIFY `creditbadge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `engine4_hebadge_creditmembers`
--
ALTER TABLE `engine4_hebadge_creditmembers`
  MODIFY `creditmember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `engine4_hebadge_members`
--
ALTER TABLE `engine4_hebadge_members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `engine4_hebadge_pagebadges`
--
ALTER TABLE `engine4_hebadge_pagebadges`
  MODIFY `pagebadge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `engine4_hebadge_pagemembers`
--
ALTER TABLE `engine4_hebadge_pagemembers`
  MODIFY `pagemember_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_hebadge_require`
--
ALTER TABLE `engine4_hebadge_require`
  MODIFY `require_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT для таблицы `engine4_hecontest_hecontests`
--
ALTER TABLE `engine4_hecontest_hecontests`
  MODIFY `hecontest_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_hecontest_photos`
--
ALTER TABLE `engine4_hecontest_photos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_hecontest_purchaseds`
--
ALTER TABLE `engine4_hecontest_purchaseds`
  MODIFY `purchaseds_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_hecontest_voters`
--
ALTER TABLE `engine4_hecontest_voters`
  MODIFY `voter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_hecore_featureds`
--
ALTER TABLE `engine4_hecore_featureds`
  MODIFY `featured_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_hecore_log`
--
ALTER TABLE `engine4_hecore_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_hecore_modules`
--
ALTER TABLE `engine4_hecore_modules`
  MODIFY `module_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `engine4_hecore_user_settings`
--
ALTER TABLE `engine4_hecore_user_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_invites`
--
ALTER TABLE `engine4_invites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_messages_conversations`
--
ALTER TABLE `engine4_messages_conversations`
  MODIFY `conversation_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `engine4_messages_messages`
--
ALTER TABLE `engine4_messages_messages`
  MODIFY `message_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `engine4_network_networks`
--
ALTER TABLE `engine4_network_networks`
  MODIFY `network_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `engine4_payment_gateways`
--
ALTER TABLE `engine4_payment_gateways`
  MODIFY `gateway_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;
--
-- AUTO_INCREMENT для таблицы `engine4_payment_orders`
--
ALTER TABLE `engine4_payment_orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_payment_packages`
--
ALTER TABLE `engine4_payment_packages`
  MODIFY `package_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_payment_products`
--
ALTER TABLE `engine4_payment_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_payment_subscriptions`
--
ALTER TABLE `engine4_payment_subscriptions`
  MODIFY `subscription_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_payment_transactions`
--
ALTER TABLE `engine4_payment_transactions`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_storage_chunks`
--
ALTER TABLE `engine4_storage_chunks`
  MODIFY `chunk_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_storage_files`
--
ALTER TABLE `engine4_storage_files`
  MODIFY `file_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;
--
-- AUTO_INCREMENT для таблицы `engine4_storage_services`
--
ALTER TABLE `engine4_storage_services`
  MODIFY `service_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `engine4_storage_servicetypes`
--
ALTER TABLE `engine4_storage_servicetypes`
  MODIFY `servicetype_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `engine4_users`
--
ALTER TABLE `engine4_users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `engine4_user_fields_meta`
--
ALTER TABLE `engine4_user_fields_meta`
  MODIFY `field_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `engine4_user_fields_options`
--
ALTER TABLE `engine4_user_fields_options`
  MODIFY `option_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `engine4_user_listitems`
--
ALTER TABLE `engine4_user_listitems`
  MODIFY `listitem_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_user_lists`
--
ALTER TABLE `engine4_user_lists`
  MODIFY `list_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_user_logins`
--
ALTER TABLE `engine4_user_logins`
  MODIFY `login_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT для таблицы `engine4_user_signup`
--
ALTER TABLE `engine4_user_signup`
  MODIFY `signup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `engine4_video_categories`
--
ALTER TABLE `engine4_video_categories`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `engine4_video_videos`
--
ALTER TABLE `engine4_video_videos`
  MODIFY `video_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `engine4_wall_fbpages`
--
ALTER TABLE `engine4_wall_fbpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_wall_listitems`
--
ALTER TABLE `engine4_wall_listitems`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_wall_lists`
--
ALTER TABLE `engine4_wall_lists`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_wall_mute`
--
ALTER TABLE `engine4_wall_mute`
  MODIFY `mute_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_wall_smiles`
--
ALTER TABLE `engine4_wall_smiles`
  MODIFY `smile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT для таблицы `engine4_wall_tags`
--
ALTER TABLE `engine4_wall_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `engine4_wall_tokens`
--
ALTER TABLE `engine4_wall_tokens`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
