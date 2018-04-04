--用户表 t_user
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  	`id` int(11) NOT NULL AUTO_INCREMENT,
  	`account` varchar(25) DEFAULT NULL COMMENT '登录账号：邮箱or英文字符串',
  	`password` varchar(50) DEFAULT NULL COMMENT '登录密码',
  	`name` 	varchar(25) DEFAULT NULL COMMENT '真实姓名',
  	`sex` 	int(11) DEFAULT NULL COMMENT '性别：1男2女',
  	`visable` int(11) DEFAULT NULL DEFAULT 1 COMMENT '是否有效 1有效 2无效 3空角色用户',
  	`phone` 	varchar(20) DEFAULT NULL COMMENT '手机号',
  	`idCard` 	varchar(20) DEFAULT NULL COMMENT '身份证号',
  	`email` 	varchar(50) DEFAULT NULL COMMENT '邮箱',
  	`remark` 	varchar(100) DEFAULT NULL COMMENT '备注',
  	`createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4;
--用户组 t_user_group
DROP TABLE IF EXISTS `t_user_group`;
CREATE TABLE `t_user_group` (
  	`id` int(11) NOT NULL AUTO_INCREMENT,
  	`name` 	varchar(25) DEFAULT NULL COMMENT '组名',
  	`visable` int(11) DEFAULT NULL DEFAULT 1 COMMENT '是否有效 1有效 2无效',
  	`remark` 	varchar(100) DEFAULT NULL COMMENT '备注',
  	`createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4;
--用户组关系 t_user_group_relation
DROP TABLE IF EXISTS `t_user_group_relation`;
CREATE TABLE `t_user_group_relation` (
  	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` 	varchar(25) DEFAULT NULL COMMENT 'name',
	`userId` int(11) DEFAULT 0 DEFAULT 1 COMMENT '用户id',
	`userGroupId` int(11) DEFAULT 0 DEFAULT 1 COMMENT '用户组id',
  	`visable` int(11) DEFAULT NULL DEFAULT 1 COMMENT '是否有效 1有效 2无效',
  	`remark` 	varchar(100) DEFAULT NULL COMMENT '备注',
  	`createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4;
--角色表 t_role
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  	`id` int(11) NOT NULL AUTO_INCREMENT,
  	`name` 	varchar(25) DEFAULT NULL COMMENT '角色名',
  	`visable` int(11) DEFAULT NULL DEFAULT 1 COMMENT '是否有效 1有效 2无效',
  	`remark` 	varchar(100) DEFAULT NULL COMMENT '备注',
  	`createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4;
--角色关系 t_user_group_relation
DROP TABLE IF EXISTS `t_user_role_relation`;
CREATE TABLE `t_user_role_relation` (
  	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` 	varchar(25) DEFAULT NULL COMMENT 'name',
	`userId` int(11) DEFAULT 0 COMMENT '用户id',
	`roleId` int(11) DEFAULT 0 COMMENT '角色id',
  	`visable` int(11) DEFAULT 1 COMMENT '是否有效 1有效 2无效',
  	`remark` 	varchar(100) DEFAULT NULL COMMENT '备注',
  	`createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4;
--权限定义表 t_priority
DROP TABLE IF EXISTS `t_priority`;
CREATE TABLE `t_priority` (
  	`id` int(11) NOT NULL AUTO_INCREMENT,
	`priorityType` int(11) DEFAULT 0 COMMENT '权限类型 1-角色权限，2-组权限',
  	`name` 	varchar(25) DEFAULT NULL COMMENT '权限名',
  	`visable` int(11) DEFAULT 1 COMMENT '是否有效 1有效 2无效',
  	`remark` 	varchar(100) DEFAULT NULL COMMENT '备注',
  	`createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4;
--权限内容表 t_priority_content
DROP TABLE IF EXISTS `t_priority_content`;
CREATE TABLE `t_priority_content` (
  	`id` int(11) NOT NULL AUTO_INCREMENT,
	`contentType` int(11) DEFAULT 0 COMMENT '内容类型 1-菜单，2-action',
	`name` 	varchar(25) DEFAULT NULL COMMENT 'name',
	`contentId` int(11) DEFAULT 0 COMMENT '内容id（菜单id或action id）',
  	`visable` int(11) DEFAULT 1 COMMENT '是否有效 1有效 2无效',
  	`remark` 	varchar(100) DEFAULT NULL COMMENT '备注',
  	`createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4;


































































































