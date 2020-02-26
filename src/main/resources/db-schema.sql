-- ----------------------------
-- Table structure for araccountdetail
-- ----------------------------
DROP TABLE IF EXISTS `araccountdetail`;
CREATE TABLE `araccountdetail`  (
  `detailId` bigint(20) NOT NULL AUTO_INCREMENT,
  `infoId` bigint(20) DEFAULT NULL,
  `itemNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡/票号',
  `operType` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作类型 : \'quota:额度\',\'deposit:押金\',\'prepay:预付\'',
  `typeId` bigint(20) DEFAULT NULL,
  `transCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方式',
  `typeName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `deposit` decimal(8, 2) DEFAULT NULL COMMENT '押金变化',
  `quota` decimal(8, 2) DEFAULT NULL COMMENT '额度变化',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `delFlag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `createUser` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updateTime` datetime(0) DEFAULT NULL,
  `updateUser` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`detailId`) USING BTREE,
  INDEX `infoId`(`infoId`) USING BTREE,
  INDEX `typeId`(`typeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `billId` bigint(20) NOT NULL AUTO_INCREMENT,
  `reservationId` bigint(20) DEFAULT NULL,
  `receptionId` bigint(20) DEFAULT NULL,
  `billNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hotelId` bigint(20) DEFAULT NULL,
  `uniqueId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bizId` bigint(20) DEFAULT NULL,
  `bizType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `totalCreditAmount` decimal(10, 2) DEFAULT NULL,
  `totalDebitAmount` decimal(10, 2) DEFAULT NULL,
  `currencyTypeId` bigint(20) DEFAULT NULL,
  `closedTime` datetime(0) DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '0 草稿，1 有效，2  关闭',
  `delFlag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `createUser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updateTime` datetime(0) DEFAULT NULL,
  `updateUser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reservationRoomId` bigint(20) DEFAULT NULL,
  `busOrderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`billId`) USING BTREE,
  INDEX `idx_bill_reservation_id`(`reservationId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1420 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
