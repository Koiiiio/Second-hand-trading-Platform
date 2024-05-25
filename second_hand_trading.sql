

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sh_address
-- ----------------------------
DROP TABLE IF EXISTS `sh_address`;
CREATE TABLE `sh_address`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `consignee_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人姓名',
  `consignee_phone` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人手机号',
  `province_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '省',
  `city_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '市',
  `region_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '区',
  `detail_address` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '详细地址',
  `default_flag` tinyint(0) NOT NULL COMMENT '是否默认地址',
  `user_id` bigint(0) NOT NULL COMMENT '用户主键id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sh_address
-- ----------------------------
INSERT INTO `sh_address` VALUES (1, 'user9', '13011110009', '江苏省', '南通市', '崇川区', '花园一单元一号楼', 1, 10);
INSERT INTO `sh_address` VALUES (2, 'user8', '13011110008', '江苏省', '南通市', '崇川区', '888', 1, 9);
INSERT INTO `sh_address` VALUES (27, 'MZ', '13011110000', '河南省', '新乡市', '原阳县', '测试测试', 1, 1);
INSERT INTO `sh_address` VALUES (28, '1211111111', '1212', '天津市', '市辖区', '河东区', '212', 1, 2);
INSERT INTO `sh_address` VALUES (29, '下雨', '1788888888', '天津市', '市辖区', '河西区', '北京', 1, 3);

-- ----------------------------
-- Table structure for sh_admin
-- ----------------------------
DROP TABLE IF EXISTS `sh_admin`;
CREATE TABLE `sh_admin`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `account_number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '管理员账号',
  `admin_password` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `admin_name` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '管理员名字',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `account_number`(`account_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sh_admin
-- ----------------------------
INSERT INTO `sh_admin` VALUES (1, '11', '123123', '超级管理员');
INSERT INTO `sh_admin` VALUES (2, '22', '123123', '管理员1');
INSERT INTO `sh_admin` VALUES (3, '33', '123123', '管理员2');
INSERT INTO `sh_admin` VALUES (11, '44', '123123', '管理员3');
INSERT INTO `sh_admin` VALUES (12, '55', '123123', '管理员4');

-- ----------------------------
-- Table structure for sh_favorite
-- ----------------------------
DROP TABLE IF EXISTS `sh_favorite`;
CREATE TABLE `sh_favorite`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增主键id',
  `create_time` datetime(0) NOT NULL COMMENT '加入收藏的时间',
  `user_id` bigint(0) NOT NULL COMMENT '用户主键id',
  `idle_id` bigint(0) NOT NULL COMMENT '闲置物主键id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`, `idle_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sh_favorite
-- ----------------------------
INSERT INTO `sh_favorite` VALUES (42, '2021-09-02 07:21:59', 9, 80);
INSERT INTO `sh_favorite` VALUES (43, '2022-10-22 22:20:08', 4, 90);
INSERT INTO `sh_favorite` VALUES (44, '2023-01-08 10:23:09', 3, 93);
INSERT INTO `sh_favorite` VALUES (45, '2023-01-08 17:56:57', 3, 98);
INSERT INTO `sh_favorite` VALUES (46, '2023-01-08 17:58:11', 3, 97);

-- ----------------------------
-- Table structure for sh_idle_item
-- ----------------------------
DROP TABLE IF EXISTS `sh_idle_item`;
CREATE TABLE `sh_idle_item`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `idle_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '闲置物名称',
  `idle_details` varchar(2048) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '详情',
  `picture_list` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图集',
  `idle_price` decimal(10, 2) NOT NULL COMMENT '价格',
  `idle_place` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '发货地区',
  `idle_label` int(0) NOT NULL COMMENT '分类标签',
  `release_time` datetime(0) NOT NULL COMMENT '发布时间',
  `idle_status` tinyint(0) NOT NULL COMMENT '状态（发布1、下架2、删除0）',
  `user_id` bigint(0) NOT NULL COMMENT '用户主键id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sh_idle_item
-- ----------------------------
INSERT INTO `sh_idle_item` VALUES (1, '111', '111', '[\"http://localhost:8080/image?imageName=file16866307653031002壁纸.jpg\"]', 20.01, '市辖区', 1, '2023-06-13 04:32:47', 2, 1);
INSERT INTO `sh_idle_item` VALUES (2, '运动鞋', '跑步非常舒服 回弹性好', '[\"http://localhost:8080/image?imageName=file16868385096121002运动鞋.jpg\"]', 100.00, '市辖区', 3, '2023-06-15 14:15:11', 1, 1);
INSERT INTO `sh_idle_item` VALUES (3, '电风扇', '贼凉快', '[\"http://localhost:8080/image?imageName=file16868385807991003风扇.jpg\"]', 120.00, '唐山市', 2, '2023-06-15 14:16:37', 1, 1);
INSERT INTO `sh_idle_item` VALUES (4, '加湿器', '干燥空气瞬间变湿', '[\"http://localhost:8080/image?imageName=file16868386408251004file16513152624181010加湿器.jpg\"]', 50.00, '阳泉市', 1, '2023-06-15 14:19:20', 1, 1);
INSERT INTO `sh_idle_item` VALUES (5, '考研单词书', '考研背单词必备', '[\"http://localhost:8080/image?imageName=file16868387852141005file16527758200311002考研单词书.jpg\"]', 10.00, '市辖区', 4, '2023-06-15 14:20:34', 1, 1);

-- ----------------------------
-- Table structure for sh_message
-- ----------------------------
DROP TABLE IF EXISTS `sh_message`;
CREATE TABLE `sh_message`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` bigint(0) NOT NULL COMMENT '用户主键id',
  `idle_id` bigint(0) NOT NULL COMMENT '闲置主键id',
  `content` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言内容',
  `create_time` datetime(0) NOT NULL COMMENT '留言时间',
  `to_user` bigint(0) NOT NULL COMMENT '所回复的用户',
  `to_message` bigint(0) NULL DEFAULT NULL COMMENT '所回复的留言',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id_index`(`user_id`) USING BTREE,
  INDEX `idle_id_index`(`idle_id`) USING BTREE,
  INDEX `to_user_index`(`to_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sh_message
-- ----------------------------
INSERT INTO `sh_message` VALUES (34, 1, 27, '测试测试', '2021-09-03 01:24:00', 7, NULL);
INSERT INTO `sh_message` VALUES (35, 2, 3, '测试测试', '2021-09-10 00:55:32', 1, NULL);
INSERT INTO `sh_message` VALUES (36, 2, 82, '俺想要', '2022-08-09 20:30:12', 2, NULL);
INSERT INTO `sh_message` VALUES (37, 4, 90, '一寸光阴一寸金，寸金难买寸光阴。', '2022-10-22 22:18:53', 3, NULL);
INSERT INTO `sh_message` VALUES (38, 2, 97, '不错不错', '2023-01-08 15:50:23', 2, NULL);
INSERT INTO `sh_message` VALUES (39, 2, 95, '我喜欢这个自行车，请问怎么进行提货啊', '2023-01-08 17:53:13', 2, NULL);
INSERT INTO `sh_message` VALUES (40, 3, 98, '你这个电风扇很不错啊，我很喜欢', '2023-01-08 17:56:46', 2, NULL);
INSERT INTO `sh_message` VALUES (41, 3, 97, '喜欢', '2023-01-08 17:58:40', 2, 38);
INSERT INTO `sh_message` VALUES (42, 2, 97, '眼光不错', '2023-01-08 18:00:23', 3, 41);
INSERT INTO `sh_message` VALUES (43, 2, 103, '1111', '2023-09-10 03:40:15', 1, NULL);
INSERT INTO `sh_message` VALUES (44, 2, 103, '111', '2023-09-10 03:40:22', 2, 43);
INSERT INTO `sh_message` VALUES (45, 1, 102, '111111', '2023-09-10 03:40:49', 1, NULL);
INSERT INTO `sh_message` VALUES (46, 1, 102, '1111', '2023-09-10 03:40:51', 1, NULL);
INSERT INTO `sh_message` VALUES (47, 1, 102, '1111', '2023-09-10 03:40:55', 1, 45);

-- ----------------------------
-- Table structure for sh_order
-- ----------------------------
DROP TABLE IF EXISTS `sh_order`;
CREATE TABLE `sh_order`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `order_number` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `user_id` bigint(0) NOT NULL COMMENT '用户主键id',
  `idle_id` bigint(0) NOT NULL COMMENT '闲置物品主键id',
  `order_price` decimal(10, 2) NOT NULL COMMENT '订单总价',
  `payment_status` tinyint(0) NOT NULL COMMENT '支付状态',
  `payment_way` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '支付方式',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `payment_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `order_status` tinyint(0) NOT NULL COMMENT '订单状态',
  `is_deleted` tinyint(0) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sh_order
-- ----------------------------
INSERT INTO `sh_order` VALUES (65, '166644845940310002', 2, 89, 52.00, 0, NULL, '2022-10-22 22:20:59', NULL, 4, NULL);
INSERT INTO `sh_order` VALUES (66, '166644847386610003', 2, 90, 100.00, 0, NULL, '2022-10-22 22:21:13', NULL, 4, NULL);
INSERT INTO `sh_order` VALUES (73, '167316390306810008', 2, 91, 20.00, 0, NULL, '2023-01-08 15:45:03', NULL, 4, NULL);
INSERT INTO `sh_order` VALUES (74, '167316390677010009', 2, 90, 100.00, 0, NULL, '2023-01-08 15:45:06', NULL, 4, NULL);
INSERT INTO `sh_order` VALUES (75, '167316391048610010', 2, 87, 52.00, 0, NULL, '2023-01-08 15:45:10', NULL, 4, NULL);
INSERT INTO `sh_order` VALUES (76, '167317079822610011', 2, 91, 20.00, 0, NULL, '2023-01-08 17:39:58', NULL, 0, NULL);
INSERT INTO `sh_order` VALUES (77, '167317080313310012', 2, 90, 100.00, 0, NULL, '2023-01-08 17:40:03', NULL, 0, NULL);
INSERT INTO `sh_order` VALUES (78, '167317080721110013', 2, 87, 52.00, 0, NULL, '2023-01-08 17:40:07', NULL, 0, NULL);
INSERT INTO `sh_order` VALUES (79, '167317197510610014', 3, 98, 30.00, 1, '支付宝', '2023-01-08 17:59:35', '2023-01-08 17:59:39', 2, NULL);
INSERT INTO `sh_order` VALUES (80, '169868139833810002', 2, 3, 120.00, 0, NULL, '2023-10-30 15:56:38', NULL, 4, NULL);
INSERT INTO `sh_order` VALUES (81, '169868142096810003', 2, 5, 10.00, 0, NULL, '2023-10-30 15:57:01', NULL, 4, NULL);
INSERT INTO `sh_order` VALUES (82, '169868167883610004', 2, 5, 10.00, 0, NULL, '2023-10-30 16:01:19', NULL, 4, NULL);
INSERT INTO `sh_order` VALUES (83, '169868176136110005', 2, 5, 10.00, 1, '支付宝', '2023-10-30 16:02:41', '2023-10-30 16:03:06', 1, NULL);

-- ----------------------------
-- Table structure for sh_order_address
-- ----------------------------
DROP TABLE IF EXISTS `sh_order_address`;
CREATE TABLE `sh_order_address`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `order_id` bigint(0) NOT NULL COMMENT '订单id',
  `consignee_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人',
  `consignee_phone` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
  `detail_address` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderId`(`order_id`) USING BTREE,
  INDEX `order_id_index`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sh_order_address
-- ----------------------------
INSERT INTO `sh_order_address` VALUES (1, 58, 'user9', '13011110009', '江苏省南通市崇川区花园一单元一号楼');
INSERT INTO `sh_order_address` VALUES (2, 59, 'user8', '13011110008', '江苏省南通市崇川区888');
INSERT INTO `sh_order_address` VALUES (3, 60, 'user9', '13011110009', '江苏省南通市崇川区花园一单元一号楼');
INSERT INTO `sh_order_address` VALUES (4, 62, 'MZ', '13011110000', '河南省新乡市原阳县测试测试');
INSERT INTO `sh_order_address` VALUES (5, 61, 'MZ', '13011110000', '河南省新乡市原阳县测试测试');
INSERT INTO `sh_order_address` VALUES (6, 63, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (7, 64, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (8, 65, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (9, 66, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (10, 73, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (11, 74, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (12, 75, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (13, 76, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (14, 77, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (15, 78, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (16, 79, '下雨', '1788888888', '天津市市辖区河西区北京');
INSERT INTO `sh_order_address` VALUES (17, 80, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (18, 81, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (19, 82, '1211111111', '1212', '天津市市辖区河东区212');
INSERT INTO `sh_order_address` VALUES (20, 83, '1211111111', '1212', '天津市市辖区河东区212');

-- ----------------------------
-- Table structure for sh_user
-- ----------------------------
DROP TABLE IF EXISTS `sh_user`;
CREATE TABLE `sh_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `account_number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号（手机号）',
  `user_password` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录密码',
  `nickname` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '昵称',
  `avatar` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '头像',
  `sign_in_time` datetime(0) NOT NULL COMMENT '注册时间',
  `user_status` tinyint(0) NULL DEFAULT NULL COMMENT '状态（1代表封禁）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `account_number`(`account_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sh_user
-- ----------------------------
INSERT INTO `sh_user` VALUES (1, '13011110000', '123456', 'MZZ', 'http://localhost:8080/image?imageName=file168663143432210031.jpg', '2021-09-01 10:49:01', 0);
INSERT INTO `sh_user` VALUES (2, '10086', '123456', '沈一一', 'http://localhost:8080/image?imageName=file168663143432210030.png', '2021-09-01 11:47:19', NULL);
INSERT INTO `sh_user` VALUES (3, '10087', '123456', '夏目', 'http://localhost:8080/image?imageName=file16731717831451008file16512163108731007tx10.jpg', '2021-09-01 11:47:30', NULL);
INSERT INTO `sh_user` VALUES (4, '10088', '123456', '下雨', 'http://localhost:8080/image?imageName=file16664482422991023伞.jpg', '2021-09-01 11:53:15', NULL);
INSERT INTO `sh_user` VALUES (5, '13011110004', '123456', 'user4', 'http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg', '2021-09-01 12:21:50', 1);
INSERT INTO `sh_user` VALUES (6, '13011110005', '123456', 'user5', 'http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg', '2021-09-01 12:22:33', 1);
INSERT INTO `sh_user` VALUES (7, '13011110006', '123456', 'user6', 'http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg', '2021-09-01 12:23:15', 1);
INSERT INTO `sh_user` VALUES (8, '13011110007', '123456', 'user7', 'http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg', '2021-09-01 12:25:36', 1);
INSERT INTO `sh_user` VALUES (9, '13011110008', '123456', 'user8', 'http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg', '2021-09-01 13:24:04', 1);
INSERT INTO `sh_user` VALUES (10, '13011110009', '123456', 'user9', 'http://localhost:8080/image?imageName=file16600445641151003109951165625541004.jpg', '2021-09-01 13:49:01', 1);

SET FOREIGN_KEY_CHECKS = 1;
