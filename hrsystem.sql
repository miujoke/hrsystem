/*
Navicat MySQL Data Transfer

Source Server         : laravelDB
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : hrsystem

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-07-24 19:39:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '主机管理权限');
INSERT INTO `auth_group` VALUES ('2', '员工管理权限');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES ('1', '1', '25');
INSERT INTO `auth_group_permissions` VALUES ('2', '1', '26');
INSERT INTO `auth_group_permissions` VALUES ('3', '1', '27');
INSERT INTO `auth_group_permissions` VALUES ('4', '2', '19');
INSERT INTO `auth_group_permissions` VALUES ('5', '2', '20');
INSERT INTO `auth_group_permissions` VALUES ('6', '2', '21');
INSERT INTO `auth_group_permissions` VALUES ('7', '2', '22');
INSERT INTO `auth_group_permissions` VALUES ('8', '2', '23');
INSERT INTO `auth_group_permissions` VALUES ('9', '2', '24');

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 部门信息表', '7', 'add_deptinfo');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 部门信息表', '7', 'change_deptinfo');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 部门信息表', '7', 'delete_deptinfo');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 员工信息表', '8', 'add_employeeinfo');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 员工信息表', '8', 'change_employeeinfo');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 员工信息表', '8', 'delete_employeeinfo');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 主机', '9', 'add_serverinfo');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 主机', '9', 'change_serverinfo');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 主机', '9', 'delete_serverinfo');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$36000$MycLg20uaohQ$FXZFgvSkdEtAurcK04N6blKN7t4WlsjXXYuRqBQs6A4=', '2020-07-23 17:40:24.434057', '1', 'admin', '', '', 'admin@qq.com', '1', '1', '2020-07-21 06:32:55.863120');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$36000$7wm0lZiMtLmU$ApX0B+u+lJqxqeMXuz3MIpZXOHNwkQb1ovQQLH24SL0=', '2020-07-23 17:45:10.568843', '0', 'asinhost', '主机管理', 'miujoke', '741414544@qq.com', '1', '1', '2020-07-21 10:40:00.000000');
INSERT INTO `auth_user` VALUES ('3', 'pbkdf2_sha256$36000$o2wIMdqlA3zb$0ZCAexcBMGg1SjDKew7Ys9Xfc/tXxETylq5YTAi5wFY=', '2020-07-23 17:39:00.000000', '0', 'asin', '员工管理', 'miujoke', '', '1', '1', '2020-07-23 17:38:00.000000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO `auth_user_groups` VALUES ('1', '2', '1');
INSERT INTO `auth_user_groups` VALUES ('2', '3', '2');

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2020-07-21 09:47:00.344638', '1', '技术部', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2020-07-21 09:47:22.642006', '2', '财务部', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2020-07-21 09:47:33.550845', '3', '销售部', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2020-07-21 10:11:10.235189', '4', '办公室', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2020-07-21 10:40:18.062364', '2', 'asin', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2020-07-21 10:41:47.716811', '2', 'asin', '2', '[{\"changed\": {\"fields\": [\"is_superuser\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2020-07-21 10:48:44.437253', '5', '后勤', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2020-07-21 11:10:08.955605', '14', '张子枫', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2020-07-21 11:14:18.284132', '15', '刘雯', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2020-07-21 11:14:55.839761', '2', 'asin', '2', '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"is_staff\", \"is_superuser\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2020-07-21 11:15:38.924612', '2', 'asin', '2', '[{\"changed\": {\"fields\": [\"is_superuser\", \"last_login\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2020-07-21 13:57:34.096694', '1', '辛', '2', '[{\"changed\": {\"fields\": [\"em_telephone\", \"dept_name\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2020-07-21 14:02:41.006674', '16', '鹏', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2020-07-21 14:03:21.463357', '17', '薪然', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2020-07-21 14:03:55.829241', '18', '志伟', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2020-07-21 14:04:16.700623', '19', '瑞飞', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2020-07-21 14:04:49.115828', '20', '博予', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2020-07-21 14:05:03.227153', '1', '辛', '2', '[{\"changed\": {\"fields\": [\"dept_name\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2020-07-21 14:05:28.463666', '20', '博予', '2', '[{\"changed\": {\"fields\": [\"dept_name\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2020-07-23 10:54:01.525683', '5', '计划营销部', '2', '[{\"changed\": {\"fields\": [\"dept_name\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('21', '2020-07-23 10:54:17.700452', '4', '总经理办公室', '2', '[{\"changed\": {\"fields\": [\"dept_name\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('22', '2020-07-23 10:54:32.227657', '3', '行政部', '2', '[{\"changed\": {\"fields\": [\"dept_name\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('23', '2020-07-23 10:54:47.150745', '1', '生产技术部', '2', '[{\"changed\": {\"fields\": [\"dept_name\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('24', '2020-07-23 17:17:39.435535', '1', 'ServerInfo object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2020-07-23 17:18:10.845589', '2', 'ServerInfo object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2020-07-23 17:29:00.346625', '3', 'ServerInfo object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2020-07-23 17:31:17.285743', '21', '张阿猫', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2020-07-23 17:33:40.311492', '1', '主机管理权限', '1', '[{\"added\": {}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2020-07-23 17:34:31.711122', '2', '员工管理权限', '1', '[{\"added\": {}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2020-07-23 17:35:18.921946', '2', 'asin', '2', '[{\"changed\": {\"fields\": [\"is_superuser\", \"groups\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2020-07-23 17:38:10.470089', '3', 'asins', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2020-07-23 17:38:46.110836', '3', 'asins', '2', '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"is_staff\", \"groups\", \"last_login\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2020-07-23 17:41:36.588422', '4', 'ServerInfo object', '1', '[{\"added\": {}}]', '9', '2');
INSERT INTO `django_admin_log` VALUES ('34', '2020-07-23 17:43:41.937720', '2', 'asin', '2', '[{\"changed\": {\"fields\": [\"first_name\", \"last_login\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2020-07-23 17:43:57.449263', '2', 'asin', '2', '[{\"changed\": {\"fields\": [\"last_name\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2020-07-23 17:44:09.546930', '2', 'asinhost', '2', '[{\"changed\": {\"fields\": [\"username\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2020-07-23 17:44:23.505664', '3', 'asin', '2', '[{\"changed\": {\"fields\": [\"username\", \"last_login\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2020-07-24 09:39:46.794683', '5', 'ServerInfo object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2020-07-24 09:40:54.270342', '2', 'ServerInfo object', '2', '[{\"changed\": {\"fields\": [\"sbrand\", \"sip\", \"stdisk\", \"sfdisk\", \"stmemory\", \"screate_date\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2020-07-24 09:41:30.288083', '6', 'ServerInfo object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('41', '2020-07-24 09:42:11.264568', '7', 'ServerInfo object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('42', '2020-07-24 09:42:36.576919', '8', 'ServerInfo object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('43', '2020-07-24 10:56:04.724190', '9', 'ServerInfo object', '1', '[{\"added\": {}}]', '9', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'employee', 'deptinfo');
INSERT INTO `django_content_type` VALUES ('8', 'employee', 'employeeinfo');
INSERT INTO `django_content_type` VALUES ('9', 'hostmanagement', 'serverinfo');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-07-21 06:32:10.940180');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2020-07-21 06:32:11.504672');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2020-07-21 06:32:11.650283');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2020-07-21 06:32:11.660299');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2020-07-21 06:32:11.723089');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2020-07-21 06:32:11.815846');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2020-07-21 06:32:11.901649');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2020-07-21 06:32:11.912582');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2020-07-21 06:32:11.967472');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2020-07-21 06:32:11.972422');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2020-07-21 06:32:11.982397');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2020-07-21 06:32:12.075193');
INSERT INTO `django_migrations` VALUES ('13', 'employee', '0001_initial', '2020-07-21 06:32:12.186870');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2020-07-21 06:32:12.224748');
INSERT INTO `django_migrations` VALUES ('15', 'hostmanagement', '0001_initial', '2020-07-23 17:13:19.907089');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('dxrnt4z1ozv11v56f0ekh2u80vm6b7pq', 'Y2ZmOTRiN2NhMDBjY2NhOWMyOGUzOWU2NzViNjQ0ZmM1YWE4ZjkzOTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MTIyYjA0ZmYzNTY0YTdhZjhiMmVhMDIxOTVjNTVmNjRmY2M3NTdlIn0=', '2020-08-04 11:15:09.402511');
INSERT INTO `django_session` VALUES ('eto3a6l8rjbmwqfqq37k6xb57ebw6swp', 'NjI1ZDE1NGJmYzhmZjc3ZjYzNjc1N2RlOTljNGM0MzkxOGUyN2IzOTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NTZlZjVlMGVkMTE5ZjI0YzQ0OTNhZmJmNjYzODUzNTI0NzYwOWZjIn0=', '2020-08-06 17:45:10.572833');
INSERT INTO `django_session` VALUES ('tkeafcsekts7lbwiysaypnwzaivsgq47', 'YmQ1ZGUzNGNhYjY0YTQ4N2VkY2JmNTFlMDIwYTZjNGNkNTQ1NmM0Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYzI5MjMyYjBkZjQ4MzljMmY4ZDRhNGRkZDE3NTc4ZTEzNmM0ODQ0In0=', '2020-08-04 09:44:21.294668');
INSERT INTO `django_session` VALUES ('vzqprtzupm36zaej3g9ueiyd93rfeezd', 'YmQ1ZGUzNGNhYjY0YTQ4N2VkY2JmNTFlMDIwYTZjNGNkNTQ1NmM0Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYzI5MjMyYjBkZjQ4MzljMmY4ZDRhNGRkZDE3NTc4ZTEzNmM0ODQ0In0=', '2020-08-06 17:40:24.441037');

-- ----------------------------
-- Table structure for tb_dept
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO `tb_dept` VALUES ('1', '生产技术部');
INSERT INTO `tb_dept` VALUES ('2', '财务部');
INSERT INTO `tb_dept` VALUES ('3', '行政部');
INSERT INTO `tb_dept` VALUES ('4', '总经理办公室');
INSERT INTO `tb_dept` VALUES ('5', '计划营销部');

-- ----------------------------
-- Table structure for tb_employee
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `em_name` varchar(255) NOT NULL,
  `em_sex` varchar(6) NOT NULL,
  `em_age` int(11) NOT NULL,
  `em_telephone` varchar(15) NOT NULL,
  `entry_time` date NOT NULL,
  `dept_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_employee_dept_name_id_0bd874f9_fk_tb_dept_id` (`dept_name_id`),
  CONSTRAINT `tb_employee_dept_name_id_0bd874f9_fk_tb_dept_id` FOREIGN KEY (`dept_name_id`) REFERENCES `tb_dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_employee
-- ----------------------------
INSERT INTO `tb_employee` VALUES ('1', '辛', '男', '22', '15111222222', '2020-07-20', '1');
INSERT INTO `tb_employee` VALUES ('14', '子枫', '女', '18', '15514444444444', '2020-07-21', '1');
INSERT INTO `tb_employee` VALUES ('15', '刘雯', '女', '36', '155444444444', '2020-07-21', '2');
INSERT INTO `tb_employee` VALUES ('16', '鹏', '男', '18', '18288424476', '2020-05-06', '5');
INSERT INTO `tb_employee` VALUES ('17', '薪然', '男', '21', '13784575252', '2020-05-01', '4');
INSERT INTO `tb_employee` VALUES ('18', '志伟', '女', '22', '12585788879', '2020-07-07', '4');
INSERT INTO `tb_employee` VALUES ('19', '瑞飞', '女', '18', '13784575252', '2020-07-07', '3');
INSERT INTO `tb_employee` VALUES ('20', '博予', '男', '18', '18288847476', '2020-05-06', '5');
INSERT INTO `tb_employee` VALUES ('21', '张阿猫', '女', '19', '13784575252', '2020-07-01', '1');

-- ----------------------------
-- Table structure for tb_servers
-- ----------------------------
DROP TABLE IF EXISTS `tb_servers`;
CREATE TABLE `tb_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) NOT NULL,
  `sbrand` varchar(200) NOT NULL,
  `sip` varchar(40) NOT NULL,
  `stdisk` int(11) NOT NULL,
  `sfdisk` int(11) NOT NULL,
  `stmemory` int(11) NOT NULL,
  `sfmemory` int(11) NOT NULL,
  `screate_date` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_servers
-- ----------------------------
INSERT INTO `tb_servers` VALUES ('1', 'host1', '戴尔', '127.0.0.1', '5', '5', '5', '5', '2020-07-24', '0');
INSERT INTO `tb_servers` VALUES ('2', 'host2', 'ASUS', '192.168.0.2', '256', '128', '8', '5', '2020-05-06', '0');
INSERT INTO `tb_servers` VALUES ('3', 'host3', '小米', '127.0.0.3', '16', '6', '8', '5', '2020-07-01', '0');
INSERT INTO `tb_servers` VALUES ('4', 'host4', '小米', '127.0.0.6', '64', '8', '8', '5', '2020-07-24', '0');
INSERT INTO `tb_servers` VALUES ('5', 'host4', '戴尔', '192.168.0.4', '56', '6', '8', '5', '2020-03-04', '0');
INSERT INTO `tb_servers` VALUES ('6', 'host5', '联想', '127.0.0.1', '5', '5', '5', '5', '2020-07-24', '0');
INSERT INTO `tb_servers` VALUES ('7', 'host6', 'ASUS', '127.0.0.6', '5', '5', '5', '5', '2020-07-24', '0');
INSERT INTO `tb_servers` VALUES ('8', 'host7', 'ASUS', '127.0.0.7', '5', '5', '5', '5', '2020-07-24', '0');
INSERT INTO `tb_servers` VALUES ('9', 'host10', 'mac', '192.168.2.1', '65', '8', '9', '4', '2020-07-26', '0');
