-- 初始化数据
CREATE DATABASE IF NOT EXISTS my_sub DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;

use my_sub;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for my_sub_dict
-- ----------------------------
DROP TABLE IF EXISTS `my_sub_dict`;
CREATE TABLE `my_sub_dict`  (
                                `id` int(20) NOT NULL AUTO_INCREMENT,
                                `dict_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                `dict_value` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                `dict_type` int(2) UNSIGNED NULL DEFAULT 0,
                                `dict_enable` int(2) NOT NULL DEFAULT 1,
                                `dict_propery01` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                `dict_propery02` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                `dict_propery03` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                `dict_propery04` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                `dict_propery05` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                `dict_propery06` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                `dict_propery07` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                `dict_propery08` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                `dict_propery09` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of my_sub_dict
-- ----------------------------
INSERT INTO `my_sub_dict` VALUES (1, 'sub.op', 'https://raw.githubusercontent.com/devclszzz/my-pr/main/04-sub/clash_sub_template.yaml', 1, 1, '/dev_tools/00-sub/op.yaml', 'http://127.0.0.1:56680/04-sub/core1.yaml,http://127.0.0.1:56680/04-sub/core2.yaml,https://raw.githubusercontent.com/devclszzz/my-pr/main/02-conf/rn.yaml', '', 'Pre,实验,com,导入,失联', '香港实验性', 'http://127.0.0.1:56680/04-sub/jisu1.yaml,http://127.0.0.1:56680/04-sub/jisu2.yaml', 'Hong,香港,mingle', 'http://127.0.0.1:56680/04-sub/bt1.yaml,http://127.0.0.1:56680/04-sub/bt2.yaml', 'http://127.0.0.1:56680/04-sub/flow1.yaml,http://127.0.0.1:56680/04-sub/flow2.yaml');
INSERT INTO `my_sub_dict` VALUES (11, 'sub.mingle', 'https://raw.githubusercontent.com/devclszzz/my-pr/main/04-sub/clash_sub_template.yaml', 1, 1, '/dev_tools/00-sub/mingle.yaml', 'http://127.0.0.1:56680/04-sub/core2.yaml,https://raw.githubusercontent.com/devclszzz/my-pr/main/02-conf/rn.yaml', '', 'Pre,实验,com,导入,失联', '香港实验性', 'http://127.0.0.1:56680/04-sub/jisu1.yaml,http://127.0.0.1:56680/04-sub/jisu2.yaml', 'Hong,香港,mingle', 'http://127.0.0.1:56680/04-sub/bt1.yaml,http://127.0.0.1:56680/04-sub/bt2.yaml', 'http://127.0.0.1:56680/04-sub/flow1.yaml,http://127.0.0.1:56680/04-sub/flow2.yaml');
INSERT INTO `my_sub_dict` VALUES (14, 'sub.other.abao', 'https://raw.githubusercontent.com/devclszzz/my-pr/main/04-sub/clash_pub_template.yaml', 1, 1, '/dev_tools/00-sub/clash.yaml', 'http://127.0.0.1:56680/04-sub/jisu1.yaml,http://127.0.0.1:56680/04-sub/jisu2.yaml', '', 'Pre,实验,com,导入,失联', 'false', 'http://127.0.0.1:56680/04-sub/bt1.yaml,http://127.0.0.1:56680/04-sub/bt2.yaml', 'Hong,香港,mingle', NULL, NULL);
INSERT INTO `my_sub_dict` VALUES (15, 'sub.other.mydev', 'https://raw.githubusercontent.com/devclszzz/my-pr/main/04-sub/clash_pub_template.yaml', 1, 1, '/dev_tools/00-sub/mydev.yaml', 'http://127.0.0.1:56680/04-sub/core1.yaml,http://127.0.0.1:56680/04-sub/core2.yaml,https://raw.githubusercontent.com/devclszzz/my-pr/main/02-conf/rn.yaml', '', 'Pre,实验,com,导入,失联', 'false', 'http://127.0.0.1:56680/04-sub/jisu1.yaml,http://127.0.0.1:56680/04-sub/jisu2.yaml', 'Hong,香港,mingle', 'http://127.0.0.1:56680/04-sub/bt1.yaml,http://127.0.0.1:56680/04-sub/bt2.yaml', NULL);
INSERT INTO `my_sub_dict` VALUES (16, 'sub.other.judy', 'https://raw.githubusercontent.com/devclszzz/my-pr/main/04-sub/clash_pub_template.yaml', 1, 1, '/dev_tools/00-sub/judy.yaml', 'http://127.0.0.1:56680/04-sub/core2.yaml', '', 'Pre,实验,com,导入,失联', 'false', 'http://127.0.0.1:56680/04-sub/jisu1.yaml,http://127.0.0.1:56680/04-sub/jisu2.yaml', 'Hong,香港,mingle', 'http://127.0.0.1:56680/04-sub/bt1.yaml,http://127.0.0.1:56680/04-sub/bt2.yaml', NULL);
INSERT INTO `my_sub_dict` VALUES (32, 'rule_set', 'https://raw.githubusercontent.com/devclszzz/my-pr/main/00-ad/porn.txt', 3, 1, '/dev_tools/01-rule/porn.yaml', 'DOMAIN-SUFFIX,', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `my_sub_dict` VALUES (42, 'ad', 'https://block.energized.pro/extensions/porn-lite/formats/hosts,https://raw.githubusercontent.com/4skinSkywalker/Anti-Porn-HOSTS-File/master/HOSTS.txt', 2, 1, '/dev_tools/00-ad/porn.txt', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;



