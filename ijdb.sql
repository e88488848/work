-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-12-18 17:37:50
-- 服务器版本： 5.7.26
-- PHP 版本： 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `ijdb`
--

-- --------------------------------------------------------

--
-- 表的结构 `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `author`
--

INSERT INTO `author` (`id`, `name`, `email`) VALUES
(1, 'z', '1@163.com'),
(2, 'zz', '2@qq.com'),
(3, 'aa', '1234@163.com'),
(4, 'qq', 'qq@qq.com');

-- --------------------------------------------------------

--
-- 表的结构 `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `bookdate` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book`
--

INSERT INTO `book` (`id`, `title`, `text`, `bookdate`) VALUES
(1, NULL, '', '2020-11-06 10:46:16'),
(2, NULL, '', '2020-11-06 10:48:53'),
(3, 'qq  pop3  iam pass', 'jldndmobqiqfdgbe  pop3 yvrwkbriitradcgb imap', '2020-11-06 20:54:46'),
(4, 'mysql zhongwen no ok?', ' update  `joke`  set `joketext`=\"amituofo\"  where `joketext` is null;', '2020-11-06 21:11:34'),
(5, 'mysql setchar', '修改mysqlutf8 ge ci', '2020-11-07 06:35:59'),
(6, 'php.ini 没改变字符集', 'd:/soft/wamp/bin/apache/apache2.4.23/bin/php.ini', '2020-11-07 06:42:17'),
(7, 'mysql 字符集  改变database字符集', ' set character_set_database=utf8;', '2020-11-07 06:50:18'),
(8, 'mysql:查看当前用户信息;', ' show processlist;', '2020-11-07 06:52:07'),
(9, '当前字符集;', 'select charset();', '2020-11-07 06:52:38'),
(10, '字符串排列方式;', ' select collation(\"abc\");', '2020-11-07 06:52:55'),
(11, '当前用户;', 'select user();', '2020-11-07 06:53:12'),
(12, 'mysql  字符集', '在【mysqld】选项组中加入：character_set_server=utf8;在【mysql】选项组中加入：default-character-set=utf8', '2020-11-07 06:59:03');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'z'),
(2, 'll'),
(3, 'alibaba');

-- --------------------------------------------------------

--
-- 表的结构 `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `email`
--

INSERT INTO `email` (`id`, `email`) VALUES
(1, '1@163.com'),
(2, '2@qq.com');

-- --------------------------------------------------------

--
-- 表的结构 `joke`
--

CREATE TABLE `joke` (
  `id` int(11) NOT NULL,
  `bt` varchar(255) DEFAULT NULL,
  `joketext` varchar(255) DEFAULT NULL,
  `jokedate` varchar(45) DEFAULT NULL,
  `authorid` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `joke`
--

INSERT INTO `joke` (`id`, `bt`, `joketext`, `jokedate`, `authorid`) VALUES
(246, 'zz', '大悲咒', '2020-12-15 08:11:36', 1),
(254, 'qw', 'ry', '2020-12-16 11:08:11', 1),
(256, '2', '大悲咒', '2020-12-16 23:02:47', 1),
(257, '12345', '123', '2020-12-17 09:15:16', 1),
(258, '', '大悲咒', '2020-12-17 09:15:49', 1),
(260, '', '', '2020-12-17 09:17:56', 1),
(262, '12', '大悲咒', '2020-12-18 16:41:55', 1),
(264, '', '', '2020-12-18 17:30:38', 1),
(265, '21', '大悲咒', '2020-12-18 17:33:08', 1),
(267, '12', '大悲咒', '2020-12-18 17:36:05', 1);

-- --------------------------------------------------------

--
-- 表的结构 `jokekategory`
--

CREATE TABLE `jokekategory` (
  `jokeid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jokekategory`
--

INSERT INTO `jokekategory` (`jokeid`, `categoryid`) VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 3);

-- --------------------------------------------------------

--
-- 表的结构 `mycomments`
--

CREATE TABLE `mycomments` (
  `id` int(11) NOT NULL,
  `post_id` int(10) NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mycomments`
--

INSERT INTO `mycomments` (`id`, `post_id`, `content`, `user_id`, `created_at`) VALUES
(30, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(31, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(32, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(33, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(34, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(35, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(36, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(37, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(38, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(39, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(40, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(41, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(42, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(43, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(44, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(45, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(46, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(47, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(48, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(49, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(50, 2, '大悲咒', 4, '2020-10-31 11:11:11'),
(51, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(52, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(53, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(54, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(55, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(56, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(57, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(58, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(59, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(60, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(61, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(62, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(63, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(64, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(65, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(66, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(67, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(68, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(69, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(70, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(71, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(72, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(73, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(74, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(75, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(76, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(77, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(78, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(79, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(80, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(81, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(82, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(83, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(84, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(85, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(86, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(87, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(88, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(89, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(90, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(91, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(92, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(93, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(94, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(95, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(96, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(97, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(98, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(99, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(100, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(101, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(102, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(103, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(104, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(105, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(106, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(107, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(108, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(109, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(110, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(111, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(112, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(113, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(114, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(115, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(116, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(117, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(118, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(119, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(120, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(121, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(122, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(123, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(124, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(125, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(126, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(127, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(128, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(129, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(130, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(131, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(132, 2, 'hello how a y ok', 4, '2020-10-31 11:11:11'),
(133, 2, 'hello how a y ok', 4, '2020-11-02 07:35:41'),
(134, 2, 'hello how a y ok', 4, '2020-11-02 07:37:52'),
(135, 2, 'hello how a y ok', 4, '2020-11-02 07:38:17'),
(136, 2, 'hello how a y ok', 4, '2020-11-02 07:39:07'),
(137, 2, 'hello how a y ok', 4, '2020-11-02 07:40:02'),
(138, 2, 'hello 大悲咒how a y ok', 4, '2020-11-02 07:41:55'),
(139, 2, 'hello 大悲咒how a y ok', 4, '2020-11-02 07:42:01'),
(140, 2, 'Hello，啦啦啦', 21, '2020-11-05 12:01:26'),
(141, 2, 'Hello，啦啦啦', 21, '2020-11-05 12:01:39'),
(142, 2, '大悲咒', 4, '2020-11-05 20:03:35'),
(143, 2, 'Hello，啦啦啦', 21, '2020-11-05 12:03:43');

-- --------------------------------------------------------

--
-- 表的结构 `新表`
--

CREATE TABLE `新表` (
  `Id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转储表的索引
--

--
-- 表的索引 `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- 表的索引 `joke`
--
ALTER TABLE `joke`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `jokekategory`
--
ALTER TABLE `jokekategory`
  ADD PRIMARY KEY (`jokeid`,`categoryid`);

--
-- 表的索引 `mycomments`
--
ALTER TABLE `mycomments`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `新表`
--
ALTER TABLE `新表`
  ADD PRIMARY KEY (`Id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `joke`
--
ALTER TABLE `joke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- 使用表AUTO_INCREMENT `mycomments`
--
ALTER TABLE `mycomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- 使用表AUTO_INCREMENT `新表`
--
ALTER TABLE `新表`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
