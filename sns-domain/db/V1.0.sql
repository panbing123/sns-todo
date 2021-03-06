/*
Navicat MySQL Data Transfer

Source Server         : todolist
Source Server Version : 50637
Source Host           : localhost:3306
Source Database       : sns-todo-prod

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2017-09-03 20:39:42
*/
CREATE DATABASE `sns-todo-dev`  DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;

SET FOREIGN_KEY_CHECKS=0;



-- ----------------------------
-- Table structure for sns_todo_category
-- ----------------------------
DROP TABLE IF EXISTS `sns_todo_category`;
CREATE TABLE `sns_todo_category` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `create_ip` varchar(50) DEFAULT NULL,
  `update_ip` varchar(50) DEFAULT NULL,
  `status` tinyint(2) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for sns_todo_detail
-- ----------------------------
DROP TABLE IF EXISTS `sns_todo_detail`;
CREATE TABLE `sns_todo_detail` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) unsigned DEFAULT NULL,
  `user_name` varchar(190) NOT NULL,
  `category_id` bigint(19) NOT NULL,
  `digest` varchar(200) NOT NULL,
  `content` text,
  `weight` int(10) unsigned NOT NULL,
  `expect_finish_time` datetime DEFAULT NULL,
  `finished` tinyint(1) NOT NULL,
  `create_ip` varchar(50) DEFAULT NULL,
  `update_ip` varchar(50) DEFAULT NULL,
  `status` tinyint(2) NOT NULL,
  `create_date` date NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `finish_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
