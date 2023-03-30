/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_logistics

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-05-31 22:18:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`),
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('148', '2', '35');
INSERT INTO `authority` VALUES ('149', '2', '36');
INSERT INTO `authority` VALUES ('150', '2', '25');
INSERT INTO `authority` VALUES ('151', '2', '1');
INSERT INTO `authority` VALUES ('152', '2', '14');
INSERT INTO `authority` VALUES ('153', '2', '15');
INSERT INTO `authority` VALUES ('344', '1', '1');
INSERT INTO `authority` VALUES ('345', '1', '5');
INSERT INTO `authority` VALUES ('346', '1', '17');
INSERT INTO `authority` VALUES ('347', '1', '18');
INSERT INTO `authority` VALUES ('348', '1', '19');
INSERT INTO `authority` VALUES ('349', '1', '20');
INSERT INTO `authority` VALUES ('350', '1', '13');
INSERT INTO `authority` VALUES ('351', '1', '21');
INSERT INTO `authority` VALUES ('352', '1', '22');
INSERT INTO `authority` VALUES ('353', '1', '23');
INSERT INTO `authority` VALUES ('354', '1', '35');
INSERT INTO `authority` VALUES ('355', '1', '36');
INSERT INTO `authority` VALUES ('356', '1', '14');
INSERT INTO `authority` VALUES ('357', '1', '15');
INSERT INTO `authority` VALUES ('358', '1', '24');
INSERT INTO `authority` VALUES ('359', '1', '25');
INSERT INTO `authority` VALUES ('360', '1', '26');
INSERT INTO `authority` VALUES ('361', '1', '31');
INSERT INTO `authority` VALUES ('362', '1', '32');
INSERT INTO `authority` VALUES ('363', '1', '33');
INSERT INTO `authority` VALUES ('364', '1', '34');
INSERT INTO `authority` VALUES ('365', '1', '42');
INSERT INTO `authority` VALUES ('366', '1', '43');
INSERT INTO `authority` VALUES ('367', '1', '44');
INSERT INTO `authority` VALUES ('368', '1', '45');
INSERT INTO `authority` VALUES ('369', '1', '46');
INSERT INTO `authority` VALUES ('370', '1', '55');
INSERT INTO `authority` VALUES ('371', '1', '49');
INSERT INTO `authority` VALUES ('372', '1', '56');
INSERT INTO `authority` VALUES ('373', '1', '50');
INSERT INTO `authority` VALUES ('374', '1', '51');
INSERT INTO `authority` VALUES ('375', '1', '52');
INSERT INTO `authority` VALUES ('376', '1', '53');
INSERT INTO `authority` VALUES ('377', '1', '54');
INSERT INTO `authority` VALUES ('378', '1', '37');

-- ----------------------------
-- Table structure for `c3p0testtable`
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c3p0testtable
-- ----------------------------

-- ----------------------------
-- Table structure for `leave_msg`
-- ----------------------------
DROP TABLE IF EXISTS `leave_msg`;
CREATE TABLE `leave_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `tel` varchar(32) NOT NULL,
  `content` varchar(512) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `newsId` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave_msg
-- ----------------------------
INSERT INTO `leave_msg` VALUES ('19', '张二愣子', '13656564652', '你们能定制个性化的托运服务吗？', '2020-03-29 19:59:37');
INSERT INTO `leave_msg` VALUES ('20', '马三炮', '18816565626', '菜鸟物流最近怎么这么慢，你们可以合作吗？', '2020-03-29 20:17:13');
INSERT INTO `leave_msg` VALUES ('21', '赵世光', '18856952635', '上次我的物品有损坏怎么办？', '2020-03-29 20:17:19');
INSERT INTO `leave_msg` VALUES ('22', '李先生', '13989895626', '请问你们可以长期合作么？有优惠么？有的话联系我。', '2020-03-29 20:17:27');
INSERT INTO `leave_msg` VALUES ('23', '张先生', '13898558562', '你好，我想托运超大件请问怎么弄？', '2020-03-29 20:17:37');
INSERT INTO `leave_msg` VALUES ('24', '徐东香', '19945458565', '你好？', '2020-03-29 20:21:13');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('13', '用户名为admin的用户登录时输入验证码错误!', '2018-12-16 18:17:30');
INSERT INTO `log` VALUES ('14', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:22:56');
INSERT INTO `log` VALUES ('15', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:37:15');
INSERT INTO `log` VALUES ('16', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:40:21');
INSERT INTO `log` VALUES ('17', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 19:11:49');
INSERT INTO `log` VALUES ('18', '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:13:32');
INSERT INTO `log` VALUES ('19', '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:14:01');
INSERT INTO `log` VALUES ('21', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-20 21:51:57');
INSERT INTO `log` VALUES ('22', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-20 21:58:51');
INSERT INTO `log` VALUES ('23', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 20:14:49');
INSERT INTO `log` VALUES ('24', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 20:22:49');
INSERT INTO `log` VALUES ('25', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 20:23:43');
INSERT INTO `log` VALUES ('26', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 21:07:39');
INSERT INTO `log` VALUES ('27', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 21:18:38');
INSERT INTO `log` VALUES ('28', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:03:27');
INSERT INTO `log` VALUES ('29', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:31:49');
INSERT INTO `log` VALUES ('30', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:32:58');
INSERT INTO `log` VALUES ('31', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:38:50');
INSERT INTO `log` VALUES ('32', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 10:26:00');
INSERT INTO `log` VALUES ('33', '用户名为admin的用户登录时输入验证码错误!', '2018-12-22 10:36:53');
INSERT INTO `log` VALUES ('34', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 10:37:04');
INSERT INTO `log` VALUES ('35', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 11:08:04');
INSERT INTO `log` VALUES ('36', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 11:59:39');
INSERT INTO `log` VALUES ('37', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 12:06:29');
INSERT INTO `log` VALUES ('38', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 12:17:20');
INSERT INTO `log` VALUES ('39', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 12:21:20');
INSERT INTO `log` VALUES ('40', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 13:05:44');
INSERT INTO `log` VALUES ('41', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 13:07:30');
INSERT INTO `log` VALUES ('42', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 13:16:00');
INSERT INTO `log` VALUES ('43', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 14:28:56');
INSERT INTO `log` VALUES ('44', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 14:33:41');
INSERT INTO `log` VALUES ('45', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 15:31:07');
INSERT INTO `log` VALUES ('46', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 15:35:02');
INSERT INTO `log` VALUES ('47', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 15:36:32');
INSERT INTO `log` VALUES ('48', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:06:20');
INSERT INTO `log` VALUES ('49', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:09:48');
INSERT INTO `log` VALUES ('50', '用户名为admin的用户登录时输入验证码错误!', '2018-12-22 16:19:05');
INSERT INTO `log` VALUES ('51', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:19:20');
INSERT INTO `log` VALUES ('52', '用户名为admin的用户登录时输入验证码错误!', '2018-12-22 16:20:47');
INSERT INTO `log` VALUES ('53', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:20:59');
INSERT INTO `log` VALUES ('54', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 11:10:10');
INSERT INTO `log` VALUES ('55', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 12:38:51');
INSERT INTO `log` VALUES ('56', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 14:39:48');
INSERT INTO `log` VALUES ('57', '用户名为admin的用户登录时输入验证码错误!', '2018-12-23 21:29:13');
INSERT INTO `log` VALUES ('58', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 21:29:23');
INSERT INTO `log` VALUES ('59', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 21:39:25');
INSERT INTO `log` VALUES ('60', '用户名为admin的用户登录时输入验证码错误!', '2020-03-26 20:56:23');
INSERT INTO `log` VALUES ('61', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-26 20:56:35');
INSERT INTO `log` VALUES ('62', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 10:59:19');
INSERT INTO `log` VALUES ('63', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 11:05:32');
INSERT INTO `log` VALUES ('64', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 11:18:02');
INSERT INTO `log` VALUES ('65', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 11:20:04');
INSERT INTO `log` VALUES ('66', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 11:21:18');
INSERT INTO `log` VALUES ('67', '用户名为admin的用户登录时输入验证码错误!', '2020-03-29 11:58:56');
INSERT INTO `log` VALUES ('68', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 11:59:04');
INSERT INTO `log` VALUES ('69', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 17:50:30');
INSERT INTO `log` VALUES ('70', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 18:03:35');
INSERT INTO `log` VALUES ('71', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 18:21:43');
INSERT INTO `log` VALUES ('72', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 20:05:32');
INSERT INTO `log` VALUES ('73', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 20:07:44');
INSERT INTO `log` VALUES ('74', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 20:16:50');
INSERT INTO `log` VALUES ('75', '用户名为admin的用户登录时输入验证码错误!', '2020-03-29 21:23:14');
INSERT INTO `log` VALUES ('76', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-03-29 21:23:22');
INSERT INTO `log` VALUES ('77', '用户名为admin的用户登录时输入密码错误!', '2020-05-31 21:54:20');
INSERT INTO `log` VALUES ('78', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-31 21:54:31');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', '系统设置', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES ('5', '1', '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES ('13', '1', '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES ('14', '0', '用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES ('15', '14', '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES ('17', '5', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('18', '5', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('19', '5', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('20', '5', '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES ('21', '13', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('22', '13', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('23', '13', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('24', '15', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('25', '15', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('26', '15', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('31', '0', '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES ('32', '31', '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES ('33', '32', '添加日志', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES ('34', '32', '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('35', '1', '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('36', '35', '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('37', '0', '新闻管理', '', 'icon-feed');
INSERT INTO `menu` VALUES ('38', '37', '分类管理', '../admin/news_category/list', 'icon-feed-star');
INSERT INTO `menu` VALUES ('39', '38', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('40', '38', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('41', '38', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('42', '37', '新闻管理', '../admin/news/list', 'icon-feed-edit');
INSERT INTO `menu` VALUES ('43', '42', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('44', '42', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('45', '42', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('46', '0', '留言管理', '', 'icon-comment');
INSERT INTO `menu` VALUES ('49', '55', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('50', '0', '订单管理', '', 'icon-database-yellow');
INSERT INTO `menu` VALUES ('51', '50', '订单列表', '../admin/order/list', 'icon-database-table');
INSERT INTO `menu` VALUES ('52', '51', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('53', '51', '编辑', 'openEdit()', 'icon-add');
INSERT INTO `menu` VALUES ('54', '51', '更新状态', 'openAddStatus()', 'icon-advancedsettings');
INSERT INTO `menu` VALUES ('55', '46', '留言列表', '../admin/leave_msg/list', 'icon-comments');
INSERT INTO `menu` VALUES ('56', '55', '编辑', 'openEdit()', 'icon-comment-edit');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `abstrs` varchar(512) NOT NULL,
  `tags` varchar(128) NOT NULL,
  `photo` varchar(64) NOT NULL,
  `author` varchar(32) NOT NULL,
  `content` longtext NOT NULL,
  `viewNumber` int(8) NOT NULL DEFAULT '0',
  `commentNumber` int(5) NOT NULL DEFAULT '0',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `news_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('2', '5', '戚哥是个小宝宝淘宝店铺JAVA项目', '戚哥是个小宝宝淘宝店', '项目源码,开发教程', '/News/resources/upload/news-pic.jpg', '戚哥是个小宝宝', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\">猿来入此</h1><p>网站网址：<a href=\"http://programmer.ischoolbar.com\" target=\"_blank\">http://programmer.ischoolbar.com</a></p><p><br/></p><p>网站名称：猿来入此</p><p><br/></p><p>网站内容：主要是Java实战项目教程，也有很多Java经典项目，可用作毕业设计、大作业等等。</p><p><br/></p><p>面向对象：Java爱好者、大学生、程序员。</p><p><br/></p><p>目前有人在倒卖我的项目，淘宝官方店铺：沐伊科技和沐伊科技一分店。不是这两个店铺那就是倒卖的。</p><p><br/></p><p>建议从官网获取项目源码和教程！</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0058.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/></p><p></p>', '28', '13', '2018-12-22 14:36:24');
INSERT INTO `news` VALUES ('3', '10', '如何查询寄件或目的地地址是否收送？', '如何查询寄件或目的地地址是否收送？', '旅游', '/News/resources/upload/1545466407090.jpg', '戚哥是个小宝宝', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(241, 241, 241);\">您好！您在我们这里是不需要自己填写运单号的，我司开完单后会有正式的快递运单，您到时可以在快递运单上看到相关的运单号。</span></p>', '4', '2', '2018-12-22 16:13:40');
INSERT INTO `news` VALUES ('4', '10', '如果快件在运输途中遗失或损坏，你们会怎么处理？', '如果快件在运输途中遗失或损坏，你们会怎么处理？', '国际新闻', '/News/resources/upload/1545467059497.jpg', '戚哥是个小宝宝', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(241, 241, 241);\">如果发生此类情况，请您及时拨打我们全国服务热线400X00X00X联系反馈，我们受理后将第一时间安排专人负责跟进处理，并随时与您联系沟通的。</span></p>', '3', '0', '2018-12-22 16:24:32');
INSERT INTO `news` VALUES ('5', '10', '如何查询有哪些物品不能收送？', '如何查询有哪些物品不能收送？', '如何查询有哪些物品不能收送？', '/News/resources/upload/1545534731624.jpeg', '戚哥是个小宝宝', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(241, 241, 241);\">您可以登陆我公司官网www.XXXX.com.cn，在首页选择客户自助服务中的自助查询，点击违法违规禁寄物品查询，可查询到各类快件类型禁止收寄的范围。</span></p>', '2', '0', '2018-12-23 11:12:19');
INSERT INTO `news` VALUES ('6', '10', '快件已经寄出，为何网上查单查不到这个单号？', '快件已经寄出，为何网上查单查不到这个单号？', '查询单号', '/News/resources/upload/1545534872142.jpg', '戚哥是个小宝宝', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2;\">正常情况下，快件发出后半个工作日左右可以在网上查到该件的状态。如果您在半个工作日后查询不到，可能存在单号不正确或网络异常等情况，请您提供单号致电我们公司全国服务热线400-x00-000x，我们的客服代表将为您跟进处理。</p>', '1', '0', '2018-12-23 11:14:36');
INSERT INTO `news` VALUES ('7', '10', '如何查询快件价格？', '如何查询快件价格？', '价格', '/News/resources/upload/1545540045917.jpeg', '戚哥是个小宝宝', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(241, 241, 241);\">选择客户自助服务中的自助查询，点击运费查询，可依据寄件地进入，选择原寄地、目的地，输入验证码（小写）及快件重量后，按“查询”键，即可了解我公司寄往各地的价格；您也可以致电我公司全国服务热线400x-000-00x根据语音提示索取《价格表》或转人工服务索取全峰报价表单。</span></p>', '5', '1', '2018-12-23 12:40:51');
INSERT INTO `news` VALUES ('8', '10', '什么是运单号？', '什么是运单号？', '运单号', '/News/resources/upload/1545540107934.jpg', '戚哥是个小宝宝', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(241, 241, 241);\">运单号是快递运单上的唯一编码，我们可以通过单号在我们公司的网站上查询快件运输状态， 一般是有多位数字和字母组成。</span></p>', '1', '0', '2018-12-23 12:42:21');
INSERT INTO `news` VALUES ('9', '10', '如何填写运单号？', '如何填写运单号？', '运单号', '/News/resources/upload/1545540199679.jpeg', '戚哥是个小宝宝', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(241, 241, 241);\">您好！您在我们这里是不需要自己填写运单号的，我司开完单后会有正式的快递运单，您到时可以在快递运单上看到相关的运单号。</span></p>', '2', '0', '2018-12-23 12:43:58');
INSERT INTO `news` VALUES ('10', '5', '快递引领电商快递新风向上海站沙龙成功举办', '8月20日下午，某某快递集团“引领电商快递新风向”沙龙上海站活动圆满落幕，来自上海地区及周边城市四十余家电商企业出席了本次活动。其中，某某快递集团副总裁刘某某、品牌总监戴某某、上海公司浦西总经理许某、浦东公司副总经理王某某等代表应邀参会。来自各方的企业代表纷纷各抒己见，共同探讨电商与快递之间发展的诸多关键要素。', '沙龙', '/News/resources/upload/1545540305810.png', '戚哥是个小宝宝', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">8月20日下午，某某快递集团“引领电商快递新风向”沙龙上海站活动圆满落幕，来自上海地区及周边城市四十余家电商企业出席了本次活动。其中，某某快递集团副总裁刘某某、品牌总监戴某某、上海公司浦西总经理许某、浦东公司副总经理王某某等代表应邀参会。来自各方的企业代表纷纷各抒己见，共同探讨电商与快递之间发展的诸多关键要素。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">活动上，某某快递同在座的各位电商大佬分享了近期将推出的多款产品和服务，其中“限时快件肯定到”“代收货款”“全峰优盾“”电子面单“等产品将为商家快递过程遇到的诸多问题提供综合解决方案。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">来自天猫家居频道销售额排名第一的企业负责人万总结合自身经营中出现的多个快递问题抛出观点和疑问，多位参会代表纷纷出谋划策，与此，也将活动推向了高潮。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">“本次活动我们希望为更多的企业和客户提供一个交流的平台，为大家提供更多的交流合作和互动的机会。当然，这也是某某快递上海区域的第一站活动，后续我们也将积极探索更多的合作方式。”集团副总裁刘某某表示。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">某某快递沙龙活动以交流电商和快递发展的心得，分享拓展业务经验，开拓创新服务思路为出发点，并以此达到线下企业增进感情，促进相互理解，建立信任为目的。对于这次的活动，某某快递网参会代表表示，某某快递此次沙龙活动生动有趣，将活动的大部分时间交给了在座的参会代表，并且拥有足够的时间用以交流和互动，这也不同于传统沙龙的形式，活动整体轻松、愉快、充满了自由感。</p>', '4', '0', '2018-12-23 12:45:10');
INSERT INTO `news` VALUES ('11', '5', '快递一周年：有你就有力量', '一个特殊的日子，猿来入此快递品牌成立一周年。北京、上海、东莞三地同时启动“有你就有力量”某某快递一周年庆典，某某快递数千名员工代表齐聚一堂共同同庆祝公司1周岁生日。', '赵丽颖,冯绍峰', '/News/resources/upload/1545540424773.jpg', '戚哥是个小宝宝', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">一个特殊的日子，某某快递品牌成立一周年。北京、上海、东莞三地同时启动“有你就有力量”某某快递一周年庆典，某某快递数千名员工代表齐聚一堂共同同庆祝公司1周岁生日。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">1年风雨；1载沧桑；1个春秋。风雨一载辛酸路，喜摘硕果贺周年。似乎在弹指一挥间，某某快递品牌已走向成熟。从起初不知名的小快递，到一家全国覆盖、在业界中有初步影响力的品牌百强物流企业；从最初几人奔波筹建，见证物流建设发展的步履开始，到如今全网千万人力量汇聚，亲历物流业巨大变革，某某快递品牌始终坚持着自己的特色，执著着自己的追求。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">1年，万物初始，又一个新希望，又一段新征程。某某快递将一如既往的秉承“诚信责任 高效 奉献”的企业精神，“致力成为中国快递企业知名品牌”的企业愿景，“取信于人 送信与人”品牌口号，与客户共同进退，用真诚的热心、无限的动力促进客户的发展与成功。某某快递将在中国大地这个宽广的舞台上，齐心协力，锐意改革，创新思路，开拓市场，继续书写一段崭新的历史。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">同时，某某快递的发展离不开上万名某某员工的辛勤付出与努力，更离不开各级领导、媒体、客户以及社会各界朋友的支持与呵护，因此，某某快递向他们致以最诚挚的祝福和最衷心的感谢。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">11月18日，某某快递品牌又站在新了的历史起点上，1周年的庆典，也将成为他们迈向新的征程、续写新篇章的见证。我们，感谢与你同行，某某，有你就有力量！</p>', '5', '1', '2018-12-23 12:47:10');
INSERT INTO `news` VALUES ('12', '5', '快递集团恭祝全国人民佳节愉快', '月朗星疏，金秋送爽。值此国庆佳节和中秋佳节来临之际，某某快递集团向一直以来支持、关心某某快递成长的各级领导、合作伙伴、客户、媒体及社会各界朋友，致以深深的祝福和衷心的感谢！同时向节日期间坚守在工作岗位上的各位同仁们表示诚挚问候，并致以崇高的敬意。', '佳节愉快', '/News/resources/upload/1545540517752.jpg', '戚哥是个小宝宝', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">月朗星疏，金秋送爽。值此国庆佳节和中秋佳节来临之际，某某快递集团向一直以来支持、关心某某快递成长的各级领导、合作伙伴、客户、媒体及社会各界朋友，致以深深的祝福和衷心的感谢！同时向节日期间坚守在工作岗位上的各位同仁们表示诚挚问候，并致以崇高的敬意。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">昨天的成绩造就今天的辉煌，今天的辉煌又是明天新的起点。一直以来，某某快递秉承“取信于人送信与人” 的理念，积极响应国家邮政局提出快递服务“全年无休”的工作要求，勤劳诚恳的某某人齐心协力，同舟同济，以严谨扎实的工作作风和热情充沛的劲头，不断推进公司各项工作的提升，某某快递快件时效及服务质量提升效果显著。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">共同的事业，大家的某某快递。某某深知成绩来之不易，“传递世界文明 铸就美好生活”，是某某人肩负的历史使命，点滴的进步是客户对我们的眷顾和支持。随着快递旺季的到来，某某将以高度的责任感和强烈的使命感，凝心聚力，认真履职，确保每一票快件的时效与安全。我们将通过不懈的努力，不断优化网络环境，加强管控力度，提升服务质量。我们也将拓展和深化各领域务实合作，提升企业核心竞争力，用更加优质的客户体验回报用户。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">月是中秋明，情是中秋浓，在这象征收获、团圆和喜庆的日子里，某某快递集团真诚祝愿大家节日愉快，阖家欢乐，幸福安康！</p>', '2', '0', '2018-12-23 12:48:42');
INSERT INTO `news` VALUES ('13', '5', '国家邮政局发通告要求严格落实收寄验视制度', '新华网北京8月1日电国家邮政局近日会同公安部、国家安全部联合发出通告，要求切实维护南京青奥会期间的寄递物品安全，严格落实收寄验视制度.', '新华网', '/News/resources/upload/1545572813382.jpeg', '戚哥是个小宝宝', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">新华网北京8月1日电国家邮政局近日会同公安部、国家安全部联合发出通告，要求切实维护南京青奥会期间的寄递物品安全，严格落实收寄验视制度.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">《通告》要求邮政企业、快递企业严格执行关于禁止、限制寄递物品的规定，严格落实收寄验视制度。对用户交寄的除信件以外的邮件、快件，寄递企业要当面验视内件，确认安全并加盖收寄验视戳记后方可收寄；对国家明令禁止寄递的物品、不能确认安全的物品（如不明机电装置、粉末、装有不明气体或液体的密闭装置等）或用户拒绝验视的，寄递企业不予收寄。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">《通告》要求，在南京青奥会期间，寄递企业对寄往南京的邮件、快件，应要求用户出示有效身份证件，认真登记寄递物品、收件人和寄件人信息。对未出示有效身份证件的，要重点查验，确认安全后方可收寄。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">按照有关规定，南京青奥会期间，未经南京青奥会组委会专门许可，寄递企业不得进入运动员村、总部酒店、比赛场馆、媒体中心等涉奥场所从事寄递服务。对发往涉奥场所的邮件、快件，寄递企业应交由邮政管理、公安、国家安全等部门指定的地点统一签收分发。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; color: rgb(119, 119, 119); text-indent: 2em; line-height: 2; font-size: 14px; white-space: normal; background-color: rgb(241, 241, 241);\">《通告》要求各级邮政管理部门加大对寄递市场的监管力度，依法查处无证经营、超范围经营和不执行收寄验视制度等违反《邮政法》的行为；各级公安、国家安全机关要严厉打击利用寄递渠道从事危害国家安全、公共安全和社会政治稳定的违法犯罪行为。</p>', '8', '1', '2018-12-23 21:44:20');

-- ----------------------------
-- Table structure for `news_category`
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `sort` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_category
-- ----------------------------
INSERT INTO `news_category` VALUES ('5', '新闻资讯', '0');
INSERT INTO `news_category` VALUES ('10', '常见问题', '1');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(32) NOT NULL,
  `sender` varchar(32) NOT NULL,
  `senderMobile` varchar(32) NOT NULL,
  `senderTel` varchar(32) DEFAULT NULL,
  `senderAddress` varchar(128) NOT NULL,
  `reciever` varchar(32) NOT NULL,
  `recieverMobile` varchar(32) NOT NULL,
  `recieverTel` varchar(32) DEFAULT NULL,
  `recieverAddress` varchar(128) DEFAULT NULL,
  `goodsName` varchar(128) NOT NULL,
  `goodsPrice` varchar(32) NOT NULL,
  `goodsWeight` varchar(32) NOT NULL,
  `goodsVolum` varchar(32) NOT NULL,
  `remark` varchar(512) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sn` (`sn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1585401745223', '张大大小', '13656564545', '021-25565545', '上海市浦东新区陆家嘴环路', '李四', '18656566325', '021-78485565', '南京市雨花台路88号', '化妆品', '1000', '2Kg', '55cm*60cm*100cm', '高档化妆品，请谨慎快递！', '2020-03-28 21:22:25');
INSERT INTO `orders` VALUES ('2', '1585453733175', '张六六', '13918621568', '', '湖北武当山', '张无忌', '13856563265', '', '明教神殿光明顶', '太极拳秘诀', '999999999', '1Kg', '100xm*100cm*2cm', '这是老夫的秘诀', '2020-03-29 11:48:53');
INSERT INTO `orders` VALUES ('3', '1585477690343', '马云', '16816816888', '010-25152215', '江苏省杭州市西溪湿地888号', '特朗普', '13545455656', '021-56564523', '美国华盛顿三号花园游泳池', '100万只口罩', '10亿美元', '5000kg', '100M*100M*200M', '这是赠送给美国人民的口罩。', '2020-03-29 18:28:10');
INSERT INTO `orders` VALUES ('4', '1585477843674', '赵四', '18816816888', '010-25152215', '辽宁省铁林市西溪湿地888号', '宋小宝', '13945455656', '021-56564523', '北京市刘老根大舞台剧院', '防晒用品', '500元', '5kg', '1M*1M*2M', '老弟注意防晒！', '2020-03-29 18:30:43');
INSERT INTO `orders` VALUES ('5', '1585478427150', '吴二愣子', '18816816888', '010-25152215', '北京市朝阳区朝阳大道399号', '赵大宝', '13945455656', '021-56564523', '西安市兵马俑大道8888号', '拳击用品', '5000元', '50kg', '1M*1M*2M', '注意不能偷懒哦！', '2020-03-29 18:40:27');
INSERT INTO `orders` VALUES ('6', '1585478633672', '李先生', '13918621562', '010-25152215', '上海市浦东新区世纪大道300号', '李女士', '13893281058', '0931-56564523', '甘肃省兰州市七里河区五山路299号', '衣服', '500元', '1.5kg', '1M*1M*2M', '我不穿的鞋子', '2020-03-29 18:43:53');
INSERT INTO `orders` VALUES ('7', '1585479376761', '张先生', '13913621562', '010-25152215', '上海市浦东新区世纪大道320号', '马先生', '13893281058', '0931-56564523', '河南省洛阳市七里河区五山路299号', '衣服', '200元', '1.5kg', '1CM*1CM*2CM', '我不穿的鞋子', '2020-03-29 18:56:16');
INSERT INTO `orders` VALUES ('8', '1585479390742', '朱博', '13913621562', '010-25152215', '上海市浦东新区世纪大道320号', '马先生', '13893281058', '0931-56564523', '河南省洛阳市七里河区五山路299号', '衣服', '200元', '1.5kg', '1CM*1CM*2CM', '我不穿的鞋子', '2020-03-29 18:56:30');
INSERT INTO `orders` VALUES ('9', '1585479393964', '赵先生', '13913621562', '010-25152215', '上海市浦东新区世纪大道320号', '马先生', '13893281058', '0931-56564523', '河南省洛阳市七里河区五山路299号', '衣服', '200元', '1.5kg', '1CM*1CM*2CM', '我不穿的鞋子', '2020-03-29 18:56:33');
INSERT INTO `orders` VALUES ('10', '1585479397972', '刘先生', '13913621562', '010-25152215', '上海市浦东新区世纪大道320号', '马先生', '13893281058', '0931-56564523', '河南省洛阳市七里河区五山路299号', '衣服', '200元', '1.5kg', '1CM*1CM*2CM', '我不穿的鞋子', '2020-03-29 18:56:37');
INSERT INTO `orders` VALUES ('11', '1585479406647', '张先生', '13913621562', '010-25152215', '上海市浦东新区世纪大道320号', '马先生', '13893281058', '0931-56564523', '河南省洛阳市七里河区五山路299号', '衣服', '200元', '1.5kg', '1CM*1CM*2CM', '我不穿的鞋子', '2020-03-29 18:56:46');
INSERT INTO `orders` VALUES ('12', '1585479496651', '李先生', '13913621562', '010-25152215', '上海市浦东新区世纪大道320号', '薛女士', '17317560369', '0231-56564523', '河南省洛阳市三门峡市五山路299号', '支票', '30万元', '0.5kg', '1CM*1CM*2CM', '去买个甲壳虫吧，我知道你喜欢！', '2020-03-29 18:58:16');

-- ----------------------------
-- Table structure for `order_status`
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderSn` varchar(32) NOT NULL,
  `content` varchar(512) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderSn` (`orderSn`),
  CONSTRAINT `order_status_ibfk_1` FOREIGN KEY (`orderSn`) REFERENCES `orders` (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_status
-- ----------------------------
INSERT INTO `order_status` VALUES ('1', '1585401745223', '您的订单已完成分拣分配，等待出库！', '2020-03-28 21:52:40');
INSERT INTO `order_status` VALUES ('2', '1585401745223', '订单已出库，下一站江苏集散中心。', '2020-03-29 18:04:04');
INSERT INTO `order_status` VALUES ('3', '1585453733175', '订单已出库，下一站武当山脚下集散中心。', '2020-03-29 18:05:48');
INSERT INTO `order_status` VALUES ('4', '1585401745223', '您的快件已到达南京市。', '2020-03-29 19:00:06');
INSERT INTO `order_status` VALUES ('5', '1585401745223', '您的快件已到达南京市玄武区集散点，等待装车。', '2020-03-29 19:00:40');
INSERT INTO `order_status` VALUES ('6', '1585401745223', '您的快件已从达南京市玄武区集散点发车，下一站鼓楼区集散点。', '2020-03-29 19:01:48');
INSERT INTO `order_status` VALUES ('7', '1585401745223', '您的快件已到达鼓楼区集散点。', '2020-03-29 19:02:25');
INSERT INTO `order_status` VALUES ('8', '1585401745223', '您的快件已从鼓楼区集散点发车，下一站雨花台区集散点。', '2020-03-29 19:03:09');
INSERT INTO `order_status` VALUES ('9', '1585401745223', '您的快件已到达雨花台集散点，马上开始配送。', '2020-03-29 19:03:43');
INSERT INTO `order_status` VALUES ('10', '1585401745223', '您的快件已开始配送，配送员【马云】电话【13616886565】，请您保持电话畅通。', '2020-03-29 19:04:25');
INSERT INTO `order_status` VALUES ('11', '1585401745223', '您的快件已经签收，感谢您。', '2020-03-29 19:04:46');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '超级管理员拥有一切权限！');
INSERT INTO `role` VALUES ('2', '普通用户', '普通用户，请自由授权！');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1', '/Logistics/resources/upload/1585488311213.jpg', '1', '1', '上海市浦东新区浦东南路1835号');
INSERT INTO `user` VALUES ('13', '戚哥小宝宝', '123456', '2', '/Logistics/resources/upload/1585488323853.png', '1', '1', '火星');
