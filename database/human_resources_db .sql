-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-03-16 14:00:05
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `human_resources_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `com_data`
--

CREATE TABLE IF NOT EXISTS `com_data` (
  `com_id` varchar(20) NOT NULL,
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `people_ago` int(11) NOT NULL,
  `people_now` int(11) NOT NULL,
  `other_reson` varchar(100) NOT NULL,
  `time_id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `1_reason` varchar(100) DEFAULT NULL,
  `2_reason` varchar(100) DEFAULT NULL,
  `3_reason` varchar(100) DEFAULT NULL,
  `1_explain` varchar(100) DEFAULT NULL,
  `2_explain` varchar(100) DEFAULT NULL,
  `3_explain` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`table_id`),
  KEY `comiffk` (`com_id`),
  KEY `timeidfk` (`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `com_info`
--

CREATE TABLE IF NOT EXISTS `com_info` (
  `com_id` varchar(20) NOT NULL,
  `com_area` varchar(30) NOT NULL,
  `com_name` varchar(30) NOT NULL,
  `com_ property` varchar(20) NOT NULL,
  `com_ industry` varchar(20) NOT NULL,
  `com_ business` varchar(100) NOT NULL,
  `com_people` varchar(30) NOT NULL,
  `com_address` varchar(100) NOT NULL,
  `com_postalcode` varchar(10) NOT NULL,
  `com_fax` varchar(20) NOT NULL,
  `com_tel` varchar(20) NOT NULL,
  `com_email` varchar(50) NOT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `role_table`
--

CREATE TABLE IF NOT EXISTS `role_table` (
  `user_role` varchar(10) NOT NULL,
  PRIMARY KEY (`user_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `time_table`
--

CREATE TABLE IF NOT EXISTS `time_table` (
  `time_id` int(11) NOT NULL AUTO_INCREMENT,
  `time_start` date NOT NULL,
  `time_end` date NOT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_table`
--

CREATE TABLE IF NOT EXISTS `user_table` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `user_role` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_row` (`user_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 限制导出的表
--

--
-- 限制表 `com_data`
--
ALTER TABLE `com_data`
  ADD CONSTRAINT `com_data_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `com_info` (`com_id`),
  ADD CONSTRAINT `com_data_ibfk_2` FOREIGN KEY (`time_id`) REFERENCES `time_table` (`time_id`);

--
-- 限制表 `user_table`
--
ALTER TABLE `user_table`
  ADD CONSTRAINT `user_table_ibfk_1` FOREIGN KEY (`user_role`) REFERENCES `role_table` (`user_role`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
