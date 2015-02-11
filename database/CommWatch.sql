-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 26, 2015 at 04:36 AM
-- Server version: 5.5.40-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mikespux_wasca1`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminuser`
--

CREATE TABLE IF NOT EXISTS `adminuser` (
  `userid` int(3) NOT NULL,
  `eid` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` char(40) NOT NULL,
  `posid` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminuser`
--

INSERT INTO `adminuser` (`userid`, `eid`, `fname`, `lname`, `username`, `password`, `posid`) VALUES
(1, 2600874, 'samuel', 'ndirangu', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'AD-1'),
(8, 2600123, 'Nyongesa', 'John', 'director', '235acfdf1375f5efd80203aca782a2f5e0f135ab', 'DR-2'),
(7, 2600847, 'Purity', 'Joan', 'manager', '5cee1c23e1604e9ae4f2c0e93bbb4c6eb72b5f2c', 'PE-5'),
(0, 27272479, 'man', 'yhj', 'nmbg', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'FC-3'),
(0, 27272478, 'head of section', 'jonathan', 'Sam', '360d20736eefda7d81e77f019b24dd474d12ea78', 'DR-2'),
(0, 0, 'sam', 'ndirangu', 'samuel', 'f16bed56189e249fe4ca8ed10a1ecae60e8ceac0', 'PR-4');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Education'),
(2, 'Sports'),
(3, 'WIFI hotspots'),
(4, 'health'),
(5, 'Fee increment'),
(6, 'Bus fee'),
(7, 'Entertainment'),
(8, 'books'),
(9, 'closing school');

-- --------------------------------------------------------

--
-- Table structure for table `commented`
--

CREATE TABLE IF NOT EXISTS `commented` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` varchar(64) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `message_comment` varchar(255) DEFAULT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `commented`
--

INSERT INTO `commented` (`id`, `post_id`, `username`, `message_comment`, `date`) VALUES
(28, 'Strike all along', 'mikespux', 'criasly', '2014-11-09'),
(29, ' whatsup', 'denar', 'hey there', '2014-11-22'),
(30, ' ako town?', 'denar', 'sindio', '2014-11-23'),
(31, ' whatsapp', 'ben', '', '2014-11-23'),
(32, ' Topic: whatsup', 'ben', 'yap', '2014-11-23'),
(33, ' Topic: we won ', 'ben', 'its ok', '2014-11-24'),
(34, ' Topic: stupid guys wrecked it', 'ben', 'vgg', '2014-11-24'),
(35, ' Topic: stupid guys wrecked it', 'ben', 'cool', '2014-11-25'),
(36, ' Topic: WIFI hotspots', 'ben', 'sawa', '2014-11-25'),
(37, ' Topic: Fee increment', 'ben', 'tap', '2014-11-26'),
(38, ' Topic: books', 'ben', '', '2014-11-26'),
(39, ' anon', 'ben', 'sure', '2015-01-11'),
(40, ' 39', 'ben', 'yap', '2015-01-11'),
(41, ' 38', 'ben', 'too bad', '2015-01-11'),
(42, ' anon', 'ben', '', '2015-01-12'),
(43, ' 38', 'ben', 'yap', '2015-01-12'),
(44, ' 46', 'ben', 'sure', '2015-01-12'),
(45, ' 23', 'ben', 'ooh yeah', '2015-01-13'),
(46, ' anon', 'Mon', 'Jihba', '2015-01-19'),
(47, ' anon', 'Mon', 'Twende ', '2015-01-19'),
(48, ' anon', 'Mon', 'Not working', '2015-01-19'),
(49, ' anon', 'Mon', 'Twende ', '2015-01-19'),
(50, ' anon', 'Mon', 'Ghhh', '0000-00-00'),
(51, ' 47', 'anon', 'au sio', '0000-00-00'),
(52, ' anon', 'anon', 'ndivyo', '0000-00-00'),
(53, ' anon', 'anon', 'mik', '0000-00-00'),
(54, ' 23', 'anon', 'right', '0000-00-00'),
(55, ' anon', 'anon', 'mm', '0000-00-00'),
(56, ' 23', 'anon', 'mm', '0000-00-00'),
(57, ' 23', 'anon', 'mm', '0000-00-00'),
(58, ' anon', 'anon', 'mm', '0000-00-00'),
(59, ' anon', 'anon', 'nmm', '0000-00-00'),
(60, ' anon', 'anon', 'ccgg', '0000-00-00'),
(61, ' anon', 'anon', 'ccc', '0000-00-00'),
(62, ' 23', 'anon', 'ccc', '0000-00-00'),
(63, ' 43', 'ben', '', '0000-00-00'),
(64, ' 44', 'eva', '', '0000-00-00'),
(65, ' 52', 'ben', 'Now', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `path` varchar(150) NOT NULL,
  `pathfull` varchar(150) NOT NULL,
  `category` varchar(120) NOT NULL,
  `title` varchar(120) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `status` varchar(100) NOT NULL,
  UNIQUE KEY `post_id` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`post_id`, `username`, `path`, `pathfull`, `category`, `title`, `message`, `date`, `status`) VALUES
(23, ' denar', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-mike.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-mike.jpg', '', 'niggaz been killing them', 'its ok', '2014-11-24', 'Resolved'),
(38, ' ben', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'Education', 'Education', 'This is a post', '2014-11-28', 'Resolved'),
(45, ' ben', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'Fee increment', 'fees', 'too inappropriate', '2015-01-11', 'Resolved'),
(48, ' anon', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'Education', 'watu wasome', 'sindio', '2015-01-23', 'pending'),
(49, ' anon', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'health', 'sio health', 'rada', '2015-01-23', 'pending'),
(50, ' ben', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'Education', 'jiggah', 'gigo', '2015-01-23', 'pending'),
(51, ' eva', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'Education', 'engimeers', 'husle', '2015-01-24', 'pending'),
(52, ' ben', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'Education', 'Sunday ', 'Today is Sunday ', '2015-01-25', 'pending');




-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE IF NOT EXISTS `issues` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `path` varchar(150) NOT NULL,
  `pathfull` varchar(150) NOT NULL,
  `category` varchar(120) NOT NULL,
  `title` varchar(120) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `status` varchar(100) NOT NULL,
  UNIQUE KEY `post_id` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`post_id`, `username`, `path`, `pathfull`, `category`, `title`, `message`, `date`, `status`) VALUES
(43, ' ben', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'Education', 'we need books', 'library is closed', '2014-12-01', 'Resolved'),
(44, ' ben', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'Entertainment', 'we need events', 'good music', '2014-12-02', 'Resolved'),
(47, ' ben', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'WIFI hotspots', 'wifi', 'we need wifi', '2015-01-11', 'Resolved'),
(49, ' Mon', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'Sports', 'Pitches ', 'The pitches need to be fixed ', '2015-01-19', 'Resolved'),
(50, ' Mon', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'Education', 'Daro ', 'Hakuna daro', '2015-01-19', 'pending'),
(51, ' ben', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', 'books', 'Kuna books ', 'Yes', '2015-01-21', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `Likes`
--

CREATE TABLE IF NOT EXISTS `Likes` (
  `Id` int(11) NOT NULL,
  `Likes` varchar(50) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Post` varchar(80) NOT NULL,
  `syncsts` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Likes`
--

INSERT INTO `Likes` (`Id`, `Likes`, `Username`, `Post`, `syncsts`) VALUES
(1, '0', 'ben', '43', 0),
(2, '0', 'ben', '44', 0),
(3, '0', 'eva', '43', 0),
(4, '0', 'eva', '44', 0),
(5, '0', 'ben', '47', 0),
(6, '0', 'ben', '51', 0),
(7, '0', 'ben', '23', 0),
(8, '0', 'ben', '38', 0),
(9, '0', 'ben', '45', 0);

-- --------------------------------------------------------





--
-- Table structure for table `user`
--



CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `posid` varchar(100) NOT NULL,
  `unique_id` varchar(23) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `encrypted_password` varchar(80) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `path` varchar(150) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `unique_id` (`unique_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `posid`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `path`, `created_at`, `updated_at`) VALUES
(1, '', '5463d38d530874.56392120', 'Michael Orenge', 'orengemichael12@gmail.com', 'JjUXm2/tfq8inP1/fmEUFh6/7zA5ZDc2ZjI0YzIz', '9d76f24c23', '', '2014-11-12 14:39:25', NULL),
(2, '', '5463d3a949a6a3.14956953', 'kev', 'kev', 'U23qrvRxCg/zMk8QfUvrd8MrnbkyMmI2MjVmZmNj', '22b625ffcc', '', '2014-11-12 14:39:53', NULL),
(3, 'AD-1', '5463d4df72a0d8.89358288', 'ben@me.com', 'ben', 'R2SXoQbr1vX4+gDc+xJWsDD5mXsyNzgyOTNiYzYy', '278293bc62', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-mike.jpg', '2014-11-12 14:45:03', NULL),
(4, '', '5463dcc0c7aea0.62968134', 'brian@yahoo.com', 'brian', 'cpzemvR9hDBt3m8ISsp0BQRpenQzYzRmN2VmNmU5', '3c4f7ef6e9', '', '2014-11-12 15:18:40', NULL),
(5, '', '5463f4b2810ec9.02426934', 'kevin', 'kevin', 'B3gTrtQvbt+6RWZXO31vvlllKH0xMmI4MzMyODc2', '12b8332876', '', '2014-11-12 17:00:50', NULL),
(6, '', '5463f5d07ffc47.75139468', 'judy', 'judy', 'orXLQ7bImdmqSsZSwuxQB1JCM5VkMWVmYTJlNDQw', 'd1efa2e440', '', '2014-11-12 17:05:36', NULL),
(7, '', '5463fcb80e9839.02619765', 'juliet@yahoo.com', 'juliet', 'MK5o/1+edzC4eee/0Yk0O99FIXM0Y2Y1ZTg0NDNj', '4cf5e8443c', '', '2014-11-12 17:35:04', NULL),
(8, '', '54643ea03d2b48.42524966', 'ben.muiruri13@gmail.com \n\n', 'Benten', 'ncqlB1FUJM7DlYFPf+gt0bHFn1MwN2I2NjMzMDZh', '07b663306a', '', '2014-11-12 22:16:16', NULL),
(9, '', '5470e2344cc688.93203864', 'sofia@gmail.com', 'sofia', 'yRqHBBuHkurL2mZ/XGeHQbZJHkc0YjM5OTM5MTVl', '4b3993915e', '', '2014-11-22 12:21:24', NULL),
(10, '', '5470e41d159834.14625117', 'denar@ymail.com', 'denar', 'xi4u0fPk3mnmqr2BxP2nQ9Hq0DhiZDc3YTY1NGY4', 'bd77a654f8', 'http://mikespux.5gbfree.com/webservice/uploads/greencard-lewis.jpg', '2014-11-22 12:29:33', NULL),
(11, '', '5473083e05e0e4.82715058', 'ben.muiruri13@gmail.com ', 'Benben', '2wkCW6obalMpf1KdqlMvPDdaEkJhMmIyNDM5M2Yy', 'a2b24393f2', '', '2014-11-24 03:28:14', NULL),
(12, '', '54736d7ce7b616.90884788', 'Bkauab@yahoo.com', 'Bkha', 'B5sWVGFiehlCVYlC9UzLcN3G2sY3ZDAyZjRhZmFj', '7d02f4afac', '', '2014-11-24 10:40:12', NULL),
(13, '', '54782c94aa8af5.09455607', 'Ben@gmail.com ', 'Bentens', '5WT096jD0o0f0A9/C3iH+s/YYdlhYzhjMjc4NDQw', 'ac8c278440', '', '2014-11-28 01:04:36', NULL),
(14, '', '54817f3d3699c7.08510295', 'bob.mamdesh@gmail.com', 'Bob', 'TwAO4jjlbAhL/TnUikaUuld2FAZjZWRmY2VlZDll', 'cedfceed9e', '', '2014-12-05 02:47:41', NULL),
(15, '', '548d5b3abbd210.32919428', 'Asdf@gmail.com', 'Abcd ', 'blTIKfmhqX7Wt2iARSI/MQ+3tH5mOWY3MjZkM2E5', 'f9f726d3a9', '', '2014-12-14 02:41:14', NULL),
(16, '', '54bd42409ffe47.94268208', 'Monica', 'Mon', '7Z2xnpBm+1ngIIPWssI3WkTA7j00MzYwMzQ3MTk5', '4360347199', '', '2015-01-19 10:43:28', NULL),
(17, '', '54c3ae571a3229.54151691', 'eva@yahoo.com', 'eva', 'U1ItnkDDf/C01VSQ+i2PybWLXoQ4NzYwMmMxNDk1', '87602c1495', '', '2015-01-24 07:38:15', NULL),
(18, '', '54c4b98d4924d6.79894688', 'jack@gmail.com', 'Jack', '3FSv0aDzzCKShPpbmyGKvwgLKX82MGY5MjhkYWY1', '60f928daf5', '', '2015-01-25 02:38:21', NULL);

-- --------------------------------------------------------

