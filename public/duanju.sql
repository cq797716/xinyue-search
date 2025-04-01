-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2025-01-08 21:38:06
-- 服务器版本： 5.7.26
-- PHP 版本： 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `duanju`
--

-- --------------------------------------------------------

--
-- 表的结构 `qf_access`
--

CREATE TABLE `qf_access` (
  `access_id` int(11) NOT NULL,
  `access_admin` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `access_token` varchar(255) NOT NULL DEFAULT '' COMMENT 'AccessToken',
  `access_plat` varchar(255) NOT NULL DEFAULT 'all' COMMENT '登录平台',
  `access_ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'IP',
  `access_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `access_createtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `access_updatetime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='授权信息表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `qf_access`
--

INSERT INTO `qf_access` (`access_id`, `access_admin`, `access_token`, `access_plat`, `access_ip`, `access_status`, `access_createtime`, `access_updatetime`) VALUES
(1, 1, 'e87d3ab11608533d4ee0cb05a21aee6f8e44865c100000e87d3ab11608533d4ee0cb05a21aee6f8e44865c', 'admin', '127.0.0.1', 1, 1726298717, 1726303168),
(2, 1, '4d94793035d0b1e31c3262c3c3678c82dd78fa741000004d94793035d0b1e31c3262c3c3678c82dd78fa74', 'admin', '223.160.154.245', 1, 1728752467, 1728755607),
(3, 1, 'e0e6f0b73230721cc97d1699b30fb1417be1e3c999999e0e6f0b73230721cc97d1699b30fb1417be1e3c9', 'admin', '223.160.154.245', 1, 1728783431, 1728809323),
(4, 1, '5415d4a8928054a105077a6972b42ba1dd68248b1000005415d4a8928054a105077a6972b42ba1dd68248b', 'admin', '223.160.152.16', 1, 1728809412, 1728821464),
(5, 1, 'd401ba69cbb19ae660f47fabfe77f68e2f87ee6b99999d401ba69cbb19ae660f47fabfe77f68e2f87ee6b', 'admin', '115.127.227.131', 1, 1728818950, 1728818950),
(6, 1, '116674a3412c4c841923c44821ec42f2f22d04aa99999116674a3412c4c841923c44821ec42f2f22d04aa', 'admin', '115.127.227.131', 1, 1728818974, 1728818974),
(7, 1, 'db22cf3eab5d7348e269d9a4f0c22cbc3854bac599999db22cf3eab5d7348e269d9a4f0c22cbc3854bac5', 'admin', '115.127.227.131', 1, 1728818994, 1728819122),
(8, 1, 'd34b169c2d59a1177d9df64e07364fbb7fc00949100000d34b169c2d59a1177d9df64e07364fbb7fc00949', 'admin', '223.160.152.16', 1, 1728834394, 1728835394),
(9, 1, '972b9666ceadc0e09c09ada3e71f2762aae2425499999972b9666ceadc0e09c09ada3e71f2762aae24254', 'admin', '115.127.227.131', 1, 1728874233, 1728874369),
(10, 1, '2b2df1c2c9b84d15239ac34a20d91a1038e6abc5999992b2df1c2c9b84d15239ac34a20d91a1038e6abc5', 'admin', '122.96.32.184', 1, 1728905206, 1728905790),
(11, 1, 'a24254bf3d16473f48005523e431622d47833693100000a24254bf3d16473f48005523e431622d47833693', 'admin', '223.160.158.239', 1, 1728923188, 1728923244),
(12, 1, '8efbef7943e4f519c58ca4f0f99caca62e8956491000008efbef7943e4f519c58ca4f0f99caca62e895649', 'admin', '223.160.158.3', 1, 1728968597, 1728984665),
(13, 1, '39768126d4e655a9676451ac2b963d0d91ceb90110000039768126d4e655a9676451ac2b963d0d91ceb901', 'admin', '223.160.153.124', 1, 1729046237, 1729047685),
(14, 1, '85bc3cd5d8ad2a4d32757e419c659c61fe04fba69999985bc3cd5d8ad2a4d32757e419c659c61fe04fba6', 'admin', '223.160.153.124', 1, 1729076911, 1729095557),
(15, 1, '9d4ae2ab534bc01c2ff0027d40b93949924993d9999999d4ae2ab534bc01c2ff0027d40b93949924993d9', 'admin', '223.160.153.124', 1, 1729113342, 1729119552),
(16, 1, '3757e1c02b63aae56197a3dc2dcdcab76e494421999993757e1c02b63aae56197a3dc2dcdcab76e494421', 'admin', '223.160.159.235', 1, 1729159022, 1729159785),
(17, 1, '84a1ff49fa04eded419a18f1ef0bb05c0639f61410000084a1ff49fa04eded419a18f1ef0bb05c0639f614', 'admin', '223.160.159.235', 1, 1729160527, 1729160578),
(18, 1, '6037b8a69596d6e713c91b2ffbbd111dec2f0da8999996037b8a69596d6e713c91b2ffbbd111dec2f0da8', 'admin', '223.160.154.85', 1, 1729512638, 1729512654),
(19, 1, '2aa4fb33838310da12bfeedd0259f6dfcf0f054e999992aa4fb33838310da12bfeedd0259f6dfcf0f054e', 'admin', '223.160.155.1', 1, 1729690679, 1729690720),
(20, 1, '1017d20daa4cd87dabd3030acc48da01354bd5e4999991017d20daa4cd87dabd3030acc48da01354bd5e4', 'admin', '223.160.153.105', 1, 1730206935, 1730206956),
(21, 1, 'df5cc88483baa4fddf38a6c260651d38f17bee2899999df5cc88483baa4fddf38a6c260651d38f17bee28', 'admin', '223.160.152.72', 1, 1730611122, 1730612344),
(22, 1, 'b8021e2729a3583a0079f5fcef31638b8e7c12b999999b8021e2729a3583a0079f5fcef31638b8e7c12b9', 'admin', '223.160.152.72', 1, 1730632784, 1730632898),
(23, 1, '3a4614f4bbd2c83a679a3b1cc941c441d5998c26999993a4614f4bbd2c83a679a3b1cc941c441d5998c26', 'admin', '223.160.158.44', 1, 1730697778, 1730699382),
(24, 1, 'cacf3e4bad07fdb6a4c3b68143e529ca8b80c334100000cacf3e4bad07fdb6a4c3b68143e529ca8b80c334', 'admin', '223.160.158.44', 1, 1730699443, 1730699473),
(25, 1, '8a12b6c8deaae79c95190cd9f5f1ebb89476cd1c1000008a12b6c8deaae79c95190cd9f5f1ebb89476cd1c', 'admin', '223.160.158.44', 1, 1730699486, 1730699613),
(26, 1, '959b8ac03aa07cca976d5c2c710f37b9c5719e0999999959b8ac03aa07cca976d5c2c710f37b9c5719e09', 'admin', '223.160.158.44', 1, 1730719224, 1730720144),
(27, 1, 'f4c5a71030233b8a640cd28ea8096762aedf7ca999999f4c5a71030233b8a640cd28ea8096762aedf7ca9', 'admin', '223.160.158.44', 1, 1730725887, 1730725914),
(28, 1, 'e399be5ca3a0e2f1d6bb39357ccf812c29205c0e99999e399be5ca3a0e2f1d6bb39357ccf812c29205c0e', 'admin', '223.160.158.44', 1, 1730740076, 1730745146),
(29, 1, '7a015e0151e2deca25b65517f8069c85f8185e2b1000007a015e0151e2deca25b65517f8069c85f8185e2b', 'admin', '223.160.158.44', 1, 1730765751, 1730772011),
(30, 1, 'd8bdc357d8336e0e3ba911a3910090823357370099999d8bdc357d8336e0e3ba911a39100908233573700', 'admin', '223.160.158.165', 1, 1730881787, 1730882116),
(31, 1, 'c789e5d9aa35827fcc384c143b31461b84d55cfc100000c789e5d9aa35827fcc384c143b31461b84d55cfc', 'admin', '223.160.157.7', 1, 1730965531, 1730969985),
(32, 1, '5ecd86821c6d230a45252aada7ea17fe549305fc1000005ecd86821c6d230a45252aada7ea17fe549305fc', 'admin', '223.160.153.185', 1, 1731035104, 1731035283),
(33, 1, '6d4883332287d6524bc52ff6b6d39e00e5fde895999996d4883332287d6524bc52ff6b6d39e00e5fde895', 'admin', '223.160.153.185', 1, 1731061304, 1731061313),
(34, 1, 'b2ba4973d8968815d418f987c06924779555c0b1100000b2ba4973d8968815d418f987c06924779555c0b1', 'admin', '107.148.49.174', 1, 1731068998, 1731070105),
(35, 1, '02054bfea9ed6e06b18c2ac2f5031e82c26c8e4d9999902054bfea9ed6e06b18c2ac2f5031e82c26c8e4d', 'admin', '223.160.158.88', 1, 1731124882, 1731141168),
(36, 1, 'e434dcffdd90bde1501a3d408036afa14aa591fc99999e434dcffdd90bde1501a3d408036afa14aa591fc', 'admin', '223.160.159.69', 1, 1731150102, 1731150138),
(37, 1, 'aaa6193bc0cfa6dc0c36e9e914f6d26778119f48100000aaa6193bc0cfa6dc0c36e9e914f6d26778119f48', 'admin', '223.160.159.69', 0, 1731150178, 1731154505),
(38, 1, '05e63cf6376fa8f4fbb742a5acc56dd20962822f10000005e63cf6376fa8f4fbb742a5acc56dd20962822f', 'admin', '172.104.80.40', 0, 1735488548, 1735488658),
(39, 1, '652867d0564ce4254cebcf78982d4cae088aa17a100000652867d0564ce4254cebcf78982d4cae088aa17a', 'admin', '172.236.150.40', 0, 1735662116, 1735662727),
(40, 1, '0c91a44ab27d653af861f847022de8cf4802bdfd999990c91a44ab27d653af861f847022de8cf4802bdfd', 'admin', '3.39.235.56', 0, 1735880389, 1735880429),
(41, 1, '2f4d614bb03b71c1305b030fb2272121209e7eec1000002f4d614bb03b71c1305b030fb2272121209e7eec', 'admin', '13.124.68.15', 0, 1736264073, 1736265645),
(42, 1, '37da64a5495fc809c5ad596b754072c4643acfaf9999937da64a5495fc809c5ad596b754072c4643acfaf', 'admin', '127.0.0.1', 0, 1736266662, 1736270400),
(43, 1, 'ec8bbc0b26901de859eb806d2c437c663e8a9686100000ec8bbc0b26901de859eb806d2c437c663e8a9686', 'admin', '127.0.0.1', 0, 1736319724, 1736325394),
(44, 1, 'a43dc3abcfd0fac27001a2c33e37e92cae49db8e100000a43dc3abcfd0fac27001a2c33e37e92cae49db8e', 'admin', '127.0.0.1', 0, 1736327454, 1736329742),
(45, 1, '9385553375500407b7bf46f46ded003490e208e71000009385553375500407b7bf46f46ded003490e208e7', 'admin', '127.0.0.1', 0, 1736341429, 1736343460);

-- --------------------------------------------------------

--
-- 表的结构 `qf_admin`
--

CREATE TABLE `qf_admin` (
  `admin_id` int(11) NOT NULL COMMENT 'UID',
  `admin_account` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '帐号',
  `admin_password` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `admin_salt` varchar(4) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '密码盐',
  `admin_name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '用户昵称',
  `admin_idcard` varchar(18) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '身份证',
  `admin_truename` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '真实姓名',
  `admin_email` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '邮箱',
  `admin_money` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `admin_group` int(11) NOT NULL DEFAULT '0' COMMENT '用户组',
  `admin_ipreg` varchar(255) NOT NULL COMMENT '注册IP',
  `admin_status` int(11) NOT NULL DEFAULT '0' COMMENT '1被禁用',
  `admin_createtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `admin_updatetime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `qf_admin`
--

INSERT INTO `qf_admin` (`admin_id`, `admin_account`, `admin_password`, `admin_salt`, `admin_name`, `admin_idcard`, `admin_truename`, `admin_email`, `admin_money`, `admin_group`, `admin_ipreg`, `admin_status`, `admin_createtime`, `admin_updatetime`) VALUES
(1, 'admin', '182903dc82eecce972f2e0775bcf7cd5be57197e', 'pKbr', '超级管理员', '', '超级管理员', '', '0.00', 1, '127.0.0.1', 0, 0, 1736343460);

-- --------------------------------------------------------

--
-- 表的结构 `qf_attach`
--

CREATE TABLE `qf_attach` (
  `attach_id` int(11) NOT NULL,
  `attach_name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `attach_path` varchar(255) NOT NULL DEFAULT '' COMMENT '路径',
  `attach_type` varchar(255) NOT NULL DEFAULT '' COMMENT '类型',
  `attach_size` int(11) NOT NULL DEFAULT '0' COMMENT '大小',
  `attach_admin` int(11) NOT NULL DEFAULT '0' COMMENT '用户',
  `attach_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `attach_createtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `attach_updatetime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='附件表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `qf_attach`
--

INSERT INTO `qf_attach` (`attach_id`, `attach_name`, `attach_path`, `attach_type`, `attach_size`, `attach_admin`, `attach_status`, `attach_createtime`, `attach_updatetime`) VALUES
(1, 'e94242fbf2ea81757b0866abb7d62f51.png', '/uploads/image/20241013/55fbad8206645b7bc18d42ebfed6339b.png', 'png', 12087, 1, 0, 1728786821, 1728786821),
(4, '55fbad8206645b7bc18d42ebfed6339b.png', '/uploads/image/20241016/368a345a54e824fac5c5d4939fbf9de4.png', 'png', 4071, 1, 0, 1729047523, 1729047523);

-- --------------------------------------------------------

--
-- 表的结构 `qf_auth`
--

CREATE TABLE `qf_auth` (
  `auth_id` bigint(20) NOT NULL COMMENT '权限ID',
  `auth_group` int(11) NOT NULL DEFAULT '0' COMMENT '权限管理组',
  `auth_node` int(11) NOT NULL DEFAULT '0' COMMENT '功能ID',
  `auth_status` int(11) NOT NULL DEFAULT '0' COMMENT '1被禁用',
  `auth_createtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `auth_updatetime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限表' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `qf_conf`
--

CREATE TABLE `qf_conf` (
  `conf_id` int(11) NOT NULL,
  `conf_key` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '参数名',
  `conf_value` text CHARACTER SET utf8 COMMENT '参数值',
  `conf_title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '参数名称',
  `conf_desc` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '参数描述',
  `conf_int` int(11) NOT NULL DEFAULT '0' COMMENT '参数到期',
  `conf_spec` int(11) NOT NULL DEFAULT '0' COMMENT '文本类型',
  `conf_content` varchar(255) DEFAULT NULL COMMENT '单选多选等文本类型的数据集',
  `conf_type` int(11) NOT NULL DEFAULT '0' COMMENT '配置分类 ',
  `conf_status` int(11) NOT NULL DEFAULT '0' COMMENT '显示隐藏 0是隐藏',
  `conf_sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `conf_system` int(11) NOT NULL DEFAULT '0' COMMENT '1为系统参数，请勿删除',
  `conf_createtime` int(11) NOT NULL DEFAULT '0',
  `conf_updatetime` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='配置表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `qf_conf`
--

INSERT INTO `qf_conf` (`conf_id`, `conf_key`, `conf_value`, `conf_title`, `conf_desc`, `conf_int`, `conf_spec`, `conf_content`, `conf_type`, `conf_status`, `conf_sort`, `conf_system`, `conf_createtime`, `conf_updatetime`) VALUES
(1, 'app_name', '七彩短剧', '网站名称', '', 0, 0, NULL, 0, 1, 99, 1, 0, 1725411498),
(2, 'upload_max_file', '4097152', '最大文件上传限制', '', 0, 0, NULL, 2, 1, 0, 1, 0, 1617352067),
(3, 'upload_file_type', 'csv,xlsx', '允许文件上传类型', '', 0, 0, NULL, 2, 1, 0, 1, 0, 1617351959),
(4, 'upload_max_image', '2097152', '最大图片上传限制', '', 0, 0, NULL, 2, 1, 0, 1, 0, 1617351961),
(5, 'upload_image_type', 'jpg,png,gif,jpeg,bmp', '允许上传图片类型', '', 0, 0, NULL, 2, 1, 0, 1, 0, 1617351964),
(21, 'logo', '/uploads/image/20241013/55fbad8206645b7bc18d42ebfed6339b.png', '网站LOGO', '方形LOGO，最佳显示尺寸为80*80像素', 0, 4, NULL, 0, 1, 93, 1, 1711636952, 1725006864),
(22, 'quark_cookie', '', '夸克Cookie', '', 0, 0, NULL, 4, 1, 0, 1, 1712114435, 1712114652),
(23, 'qcode', '/uploads/image/20241013/55fbad8206645b7bc18d42ebfed6339b.png', '群二维码', '前台加入群聊开关；有图显示按钮，无图不显示', 0, 4, NULL, 3, 1, 80, 1, 1712451616, 1725326400),
(24, 'app_description', '', 'SEO描述', '', 0, 1, NULL, 9, 1, 996, 1, 1712451778, 1725411481),
(25, 'quark_banned', '失效,年会员,空间容量,微信,微信群,全网资源,影视资源,扫码,最新资源,公众号,IMG_,资源汇总,緑铯粢源,.url,网盘推广,大额优惠券,资源文档,dy8.xyz,妙妙屋,资源合集,kkdm', '广告词', '出现这些词的资源，转存时删除；格式如：影视资源,年会员', 0, 1, NULL, 4, 1, 0, 1, 1714035639, 1723795683),
(26, 'Authorization', '', '阿里Authorization', '此版本用不着', 0, 0, NULL, 4, 1, 0, 1, 1722010465, 1722010465),
(27, 'mp4_online', '0', '在线观看资源', '此版本用不着', 0, 2, '开启=>1\n关闭=>0', 4, 1, 0, 1, 1723014926, 1723014926),
(28, 'search_type', '1', '搜索模式', '精准搜索：只有查包含关键词的；模糊搜索：关键词顺序可乱但必须都包含；分词搜索：只要满足其中一个字就会搜索到', 0, 2, '精准搜索=>0\n模糊搜索=>1\n分词搜索=>2', 1, 1, 0, 1, 1724493746, 1724494058),
(29, 'app_keywords', '', 'SEO关键词', '网站关键词，有利于对整站的SEO优化', 0, 1, NULL, 9, 1, 998, 1, 1725006403, 1725411476),
(30, 'app_title', '', 'SEO标题', '', 0, 0, NULL, 9, 1, 999, 1, 1725006679, 1725325013),
(31, 'app_subname', '  1.搜索不要错字！输入2字以上搜，不必要搜全名 2.每天晚上更新最新短剧  3.夸克网盘，无广告更新', '网站宣传语', '免费分享百万级网盘资源，致力打造顶尖网盘搜索引擎，让您畅享资源无忧！', 0, 0, NULL, 0, 1, 94, 1, 1725006792, 1725006869),
(32, 'home_bg', '', '大图背景', '', 0, 4, '', 3, 1, 75, 1, 1725007588, 1725007613),
(33, 'home_background', NULL, '背景颜色', '默认：#fafafa', 0, 7, NULL, 3, 1, 74, 1, 1725007770, 1725027349),
(34, 'footer_dec', '站长声明：本站是网盘索引系统,所有内容均来自互联网所提供的公开引用资源，未提供资源上传、存储服务。', '底部介绍', '示例：声明：本站是网盘索引系统,所有内容均来自互联网所提供的公开引用资源，未提供资源上传、存储服务。', 0, 1, NULL, 0, 1, 90, 1, 1725025185, 1725325534),
(35, 'footer_copyright', '© 2024 Powered by <a href=\"/\" target=\"_blank\">七彩短剧</a>', '底部版权', '示例：© 2024 欧意科技Powered by <a href=\"https://2oe.cn/\" target=\"_blank\">欧意科技</a>', 0, 1, NULL, 0, 1, 89, 1, 1725025262, 1725325624),
(36, 'home_color', NULL, '文字颜色', '默认文字颜色：#000000', 0, 7, NULL, 3, 1, 73, 1, 1725027432, 1725027445),
(37, 'home_theme', NULL, '主题色', '默认：#1e80ff', 0, 7, NULL, 3, 1, 72, 1, 1725027499, 1725027504),
(38, 'other_background', NULL, '其它元素背景', '搜索框及其它元素北背景色 默认：#ffffff', 0, 7, NULL, 3, 1, 71, 1, 1725028468, 1725028478),
(39, 'ranking_type', '1', '显示模式', '', 0, 2, '无图模式=>0\n有图模式=>1', 3, 1, 79, 1, 1725159933, 1725160022),
(40, 'ranking_num', '12', '排行榜数量', '下次更新生效；排行榜数据每12个小时更新一次；右上角清除缓存立即生效', 0, 0, NULL, 3, 1, 78, 1, 1725160003, 1725171288),
(41, 'home_css', '', '自定义CSS', '直接写css样式就行', 0, 1, NULL, 3, 1, 70, 1, 1725324697, 1725324697),
(42, 'seo_statistics', '', '统计代码', '直接填写统计代码即可，如51LA： <script charset=\"UTF-8\" id=\"XXXXX\" src=\"//sdk.51.la/js-sdk-pro.min.js\"></script> 	<script>LA.init({id:\"XXXXX\",ck:\"XXXX\",hashMode:true})</script>', 0, 1, NULL, 9, 1, 995, 1, 1725325341, 1725411486),
(43, 'app_icon', '/uploads/image/20241016/368a345a54e824fac5c5d4939fbf9de4.png', '网站icon', '', 0, 4, NULL, 0, 1, 92, 1, 1725326071, 1725326071),
(44, 'app_demand', '0', '提交需求', '前台是否开启此功能 ；  默认开启', 0, 2, '开启=>0\n关闭=>1', 3, 1, 81, 1, 1725326640, 1725326707),
(45, 'app_links', '', '顶部其他外链', '一行一个外链(a标签)：<a href=\"https://2oe.cn/\" target=\"_blank\">更多资源</a>', 0, 1, NULL, 3, 1, 80, 1, 1725326838, 1725326838),
(46, 'app_name_hide', '1', '隐藏网站名称', '默认显示：logo包含文字的可以隐藏网站名称', 0, 2, '显示=>0\n隐藏=>1', 0, 1, 98, 1, 1725411632, 1725411763),
(47, 'ranking_m_num', '12', '移动端限制数量', '释：移动端最多显示数量', 0, 0, NULL, 3, 1, 77, 1, 1725412329, 1725412329),
(48, 'search_tips', '', '未搜索提示词', '为空时默认：未找到，可换个关键词尝试哦~', 0, 0, NULL, 1, 1, 0, 1, 1726108804, 1726108804),
(49, 'search_bg', '', '未搜索提示图', '', 0, 4, NULL, 1, 1, 0, 1, 1726108851, 1726108851),
(50, 'home_new', '0', '最新列表', '仅无图模式有效', 0, 2, '开启=>0\n关闭=>1', 3, 1, 79, 1, 1726299605, 1726299605),
(51, 'home_new_img', '/uploads/image/20241016/368a345a54e824fac5c5d4939fbf9de4.png', '最新图标', '', 0, 4, NULL, 3, 1, 79, 1, 1726302688, 1726302688),
(52, 'is_quan', '1', '全网搜', '', 0, 2, '关闭=>0\n开启=>1', 1, 1, 1, 1, 1729928547, 1729928547),
(55, 'pc_access_type', '1', 'PC端访问控制', 'PC端访问资源时是直接访问还是显示二维码', 0, 2, '直接访问=>1\n显示二维码=>2', 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `qf_days`
--

CREATE TABLE `qf_days` (
  `id` int(11) NOT NULL,
  `fid` varchar(255) DEFAULT '',
  `time` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `qf_feedback`
--

CREATE TABLE `qf_feedback` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `qf_group`
--

CREATE TABLE `qf_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '管理组名称',
  `group_desc` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '管理组描述',
  `group_status` int(11) NOT NULL DEFAULT '0' COMMENT '1被禁用',
  `group_createtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `group_updatetime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='管理组表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `qf_group`
--

INSERT INTO `qf_group` (`group_id`, `group_name`, `group_desc`, `group_status`, `group_createtime`, `group_updatetime`) VALUES
(1, '超级管理员', '不允许删除', 0, 0, 1575903468);

-- --------------------------------------------------------

--
-- 表的结构 `qf_log`
--

CREATE TABLE `qf_log` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `qf_node`
--

CREATE TABLE `qf_node` (
  `node_id` int(11) NOT NULL COMMENT '功能ID',
  `node_title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '功能名称',
  `node_desc` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '功能描述',
  `node_module` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'api' COMMENT '模块',
  `node_controller` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '控制器',
  `node_action` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '方法',
  `node_pid` int(11) NOT NULL DEFAULT '0' COMMENT '父ID',
  `node_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序ID',
  `node_show` int(11) NOT NULL DEFAULT '1' COMMENT '1显示到菜单',
  `node_icon` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '图标',
  `node_extend` text CHARACTER SET utf8 COMMENT '扩展数据',
  `node_status` int(11) NOT NULL DEFAULT '0' COMMENT '1被禁用',
  `node_createtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `node_updatetime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='功能节点表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `qf_node`
--

INSERT INTO `qf_node` (`node_id`, `node_title`, `node_desc`, `node_module`, `node_controller`, `node_action`, `node_pid`, `node_order`, `node_show`, `node_icon`, `node_extend`, `node_status`, `node_createtime`, `node_updatetime`) VALUES
(1, '概况', '', 'qfadmin', 'index', 'index', 0, 999, 1, 'el-icon-house', NULL, 0, 0, 1620874188),
(2, '运营人员', '', 'qfadmin', '', '', 3, 0, 1, 'el-icon-user', NULL, 0, 0, 1618302083),
(3, '系统', '', 'qfadmin', '', '', 0, 0, 1, 'el-icon-data-board', NULL, 0, 0, 1618301765),
(4, '配置', '', 'qfadmin', '', '', 0, 0, 1, 'el-icon-setting', NULL, 0, 1617269862, 1712241481),
(100, '管理员列表', '', 'qfadmin', 'admin', 'index', 2, 0, 1, 'el-icon-user', '', 0, 0, 1618794624),
(101, '用户组管理', '', 'qfadmin', 'group', 'index', 2, 0, 1, '', NULL, 0, 0, 1617246287),
(102, '参数配置', '', 'qfadmin', 'conf', 'index', 4, 5, 1, 'el-icon-set-up', '', 0, 0, 1617350626),
(104, '菜单管理', '', 'qfadmin', 'node', 'index', 4, 6, 1, 'el-icon-s-operation', '', 0, 0, 1617350880),
(105, '附件管理', '', 'qfadmin', 'attach', 'index', 4, 4, 1, 'el-icon-connection', '', 0, 0, 1617345521),
(106, '清理数据', '', 'qfadmin', 'system', 'clean', 0, 0, 0, '', '', 0, 0, 1712241480),
(107, '基础设置', '', 'qfadmin', 'conf', 'base', 3, 5, 1, 'el-icon-s-operation', '', 0, 0, 1617773467),
(108, '资源', '', 'qfadmin', '', '', 0, 1, 1, 'el-icon-files', NULL, 0, 1622538526, 1711117979),
(109, '资源管理', '', 'qfadmin', 'source', 'index', 108, 10, 1, 'el-icon-folder-opened', NULL, 0, 1622538567, 1726190121),
(112, '账号管理', '', 'qfadmin', 'source', 'deposit', 108, 1, 1, 'el-icon-crop', NULL, 0, 1712112542, 1726195575),
(113, '资源日志', '', 'qfadmin', 'source', 'log', 108, 8, 1, 'el-icon-discover', NULL, 0, 1712208103, 1726195583),
(114, '用户需求', '', 'qfadmin', 'source', 'feedback', 108, 1, 1, 'el-icon-edit', NULL, 0, 1712230638, 1712230717),
(118, '分类管理', '', 'qfadmin', 'source', 'category', 108, 9, 1, 'el-icon-s-operation', NULL, 0, 1716363477, 1726190129);

-- --------------------------------------------------------

--
-- 表的结构 `qf_source`
--

CREATE TABLE `qf_source` (
  `source_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '资源名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '资源地址',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '目前用于副标题 搜索',
  `content` text COMMENT '内容',
  `page_views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `is_time` int(11) NOT NULL DEFAULT '0' COMMENT '0正常 1临时文件',
  `is_user` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态 0=后台添加 1=用户添加',
  `fid` varchar(255) DEFAULT NULL COMMENT '夸克标识',
  `is_type` int(11) NOT NULL DEFAULT '0' COMMENT '0夸克网盘 1阿里网盘 2百度网盘 3UC网盘 4迅雷网盘',
  `code` varchar(50) DEFAULT NULL COMMENT '提取码',
  `source_category_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `vod_content` varchar(255) NOT NULL DEFAULT '' COMMENT '资源介绍',
  `vod_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '资源图片',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态 0=禁用 1=启用',
  `is_delete` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否删除 0=正常 1=软删除',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会议管理表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `qf_source`
--

INSERT INTO `qf_source` (`source_id`, `title`, `url`, `description`, `content`, `page_views`, `is_time`, `is_user`, `fid`, `is_type`, `code`, `source_category_id`, `vod_content`, `vod_pic`, `status`, `is_delete`, `create_time`, `update_time`) VALUES
(1, '小小球神不好惹短剧', 'https://pan.quark.cn/s/289da1fbef68', '', NULL, 37, 1, 0, '556d0a0f2389474ba2b35b0d93bdfeca', 0, NULL, 0, '', '', 1, 0, 1736341840, 1736341840);

-- --------------------------------------------------------

--
-- 表的结构 `qf_source_category`
--

CREATE TABLE `qf_source_category` (
  `source_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  `image` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `is_sys` int(11) NOT NULL DEFAULT '0' COMMENT '1时不能删除',
  `is_update` int(11) NOT NULL DEFAULT '1' COMMENT '0不更新 1更新',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章分类表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `qf_source_category`
--

INSERT INTO `qf_source_category` (`source_category_id`, `name`, `image`, `sort`, `status`, `is_sys`, `is_update`, `create_time`, `update_time`) VALUES
(1, '短剧', '', 999, 0, 1, 1, 1725114376, 1726299215),
(2, '电影', '', 998, 0, 1, 1, 1725114387, 1730771900),
(3, '电视剧', '', 997, 0, 1, 1, 1725114393, 1730771901),
(4, '动漫', '', 996, 0, 1, 1, 1725114400, 1730771904),
(5, '综艺', '', 995, 0, 1, 1, 1725114408, 1730771903);

-- --------------------------------------------------------

--
-- 表的结构 `qf_source_log`
--

CREATE TABLE `qf_source_log` (
  `source_log_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '转存任务名称',
  `total_num` int(11) NOT NULL DEFAULT '0' COMMENT '转存总数',
  `new_num` int(11) NOT NULL DEFAULT '0' COMMENT '新增数',
  `update_num` int(11) NOT NULL DEFAULT '0' COMMENT '更新数(更新资源地址)',
  `skip_num` int(11) NOT NULL DEFAULT '0' COMMENT '重复跳过数',
  `fail_num` int(11) NOT NULL DEFAULT '0' COMMENT '失败数',
  `fail_dec` varchar(255) DEFAULT NULL COMMENT '失败原因',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `qf_token`
--

CREATE TABLE `qf_token` (
  `token_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `token` varchar(255) NOT NULL DEFAULT '' COMMENT 'AccessToken',
  `token_expires` int(11) NOT NULL DEFAULT '0' COMMENT '授权码过期时间',
  `platform` varchar(255) NOT NULL DEFAULT 'all' COMMENT '来源终端',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT '登录IP',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '登录时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='授权信息表' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `qf_user`
--

CREATE TABLE `qf_user` (
  `user_id` int(11) NOT NULL COMMENT 'UID',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '微信openid',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `head_pic` varchar(512) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=保密 1=男 2=女',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=禁用 1=启用',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信用户表' ROW_FORMAT=DYNAMIC;

--
-- 转储表的索引
--

--
-- 表的索引 `qf_access`
--
ALTER TABLE `qf_access`
  ADD PRIMARY KEY (`access_id`) USING BTREE;

--
-- 表的索引 `qf_admin`
--
ALTER TABLE `qf_admin`
  ADD PRIMARY KEY (`admin_id`) USING BTREE,
  ADD KEY `admin_group` (`admin_group`) USING BTREE,
  ADD KEY `admin_name` (`admin_name`) USING BTREE,
  ADD KEY `admin_password` (`admin_password`) USING BTREE,
  ADD KEY `admin_account` (`admin_account`) USING BTREE;

--
-- 表的索引 `qf_attach`
--
ALTER TABLE `qf_attach`
  ADD PRIMARY KEY (`attach_id`) USING BTREE;

--
-- 表的索引 `qf_auth`
--
ALTER TABLE `qf_auth`
  ADD PRIMARY KEY (`auth_id`) USING BTREE,
  ADD KEY `role_group` (`auth_group`) USING BTREE,
  ADD KEY `role_auth` (`auth_node`) USING BTREE;

--
-- 表的索引 `qf_conf`
--
ALTER TABLE `qf_conf`
  ADD PRIMARY KEY (`conf_id`) USING BTREE,
  ADD KEY `conf_key` (`conf_key`) USING BTREE;

--
-- 表的索引 `qf_days`
--
ALTER TABLE `qf_days`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `qf_feedback`
--
ALTER TABLE `qf_feedback`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `qf_group`
--
ALTER TABLE `qf_group`
  ADD PRIMARY KEY (`group_id`) USING BTREE;

--
-- 表的索引 `qf_log`
--
ALTER TABLE `qf_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `qf_node`
--
ALTER TABLE `qf_node`
  ADD PRIMARY KEY (`node_id`) USING BTREE,
  ADD KEY `auth_pid` (`node_pid`) USING BTREE,
  ADD KEY `node_module` (`node_module`) USING BTREE,
  ADD KEY `node_controller` (`node_controller`) USING BTREE,
  ADD KEY `node_action` (`node_action`) USING BTREE;

--
-- 表的索引 `qf_source`
--
ALTER TABLE `qf_source`
  ADD PRIMARY KEY (`source_id`) USING BTREE;

--
-- 表的索引 `qf_source_category`
--
ALTER TABLE `qf_source_category`
  ADD PRIMARY KEY (`source_category_id`) USING BTREE;

--
-- 表的索引 `qf_source_log`
--
ALTER TABLE `qf_source_log`
  ADD PRIMARY KEY (`source_log_id`) USING BTREE;

--
-- 表的索引 `qf_token`
--
ALTER TABLE `qf_token`
  ADD PRIMARY KEY (`token_id`) USING BTREE;

--
-- 表的索引 `qf_user`
--
ALTER TABLE `qf_user`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `qf_access`
--
ALTER TABLE `qf_access`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- 使用表AUTO_INCREMENT `qf_admin`
--
ALTER TABLE `qf_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'UID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `qf_attach`
--
ALTER TABLE `qf_attach`
  MODIFY `attach_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `qf_auth`
--
ALTER TABLE `qf_auth`
  MODIFY `auth_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '权限ID';

--
-- 使用表AUTO_INCREMENT `qf_conf`
--
ALTER TABLE `qf_conf`
  MODIFY `conf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- 使用表AUTO_INCREMENT `qf_days`
--
ALTER TABLE `qf_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `qf_feedback`
--
ALTER TABLE `qf_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `qf_group`
--
ALTER TABLE `qf_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `qf_log`
--
ALTER TABLE `qf_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `qf_node`
--
ALTER TABLE `qf_node`
  MODIFY `node_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '功能ID', AUTO_INCREMENT=119;

--
-- 使用表AUTO_INCREMENT `qf_source`
--
ALTER TABLE `qf_source`
  MODIFY `source_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `qf_source_category`
--
ALTER TABLE `qf_source_category`
  MODIFY `source_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `qf_source_log`
--
ALTER TABLE `qf_source_log`
  MODIFY `source_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `qf_token`
--
ALTER TABLE `qf_token`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `qf_user`
--
ALTER TABLE `qf_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'UID';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
