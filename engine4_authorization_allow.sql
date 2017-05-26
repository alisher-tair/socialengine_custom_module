-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 26 2017 г., 12:50
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

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `engine4_authorization_allow`
--
ALTER TABLE `engine4_authorization_allow`
  ADD PRIMARY KEY (`resource_type`,`resource_id`,`action`,`role`,`role_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
