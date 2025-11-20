/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : cmu-bac

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 18/11/2025 15:38:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_codes
-- ----------------------------
DROP TABLE IF EXISTS `account_codes`;
CREATE TABLE `account_codes`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_codes
-- ----------------------------
INSERT INTO `account_codes` VALUES (5, '50203010 01', 'ICT Office Supplies', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (6, '50203010 02', 'Office Supplies Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (7, '50203020 00', 'Accountable Forms Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (8, '50203090 00', 'Fuel, Oil and Lubricants Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (9, '50203990 00', 'Other Supplies and Materials Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (15, '50205030 00', 'Internet Subscription Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (17, '50207020 00', 'Research, Exploration and Development Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (18, '50210030 00', 'Extraordinary and Miscellaneous Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (23, '50213040 02', 'Repairs and Maintenance- School Buildings', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (24, '50213040 99', 'Repairs and Maintenance- Other Structures', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (25, '50213050 02', 'Repairs and Maintenance- Office Equipment', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (26, '50213050 03', 'Repairs and Maintenance- ICT Equipment', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (27, '50213050 99', 'Repairs and Maintenance- Other Machinery and Equipment', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (28, '50213060 01', 'Repairs and Maintenance- Motor Vehicles', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (31, '50215030 00', 'Insurance Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (33, '50299020 00', 'Printing and Publication Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (34, '50299030 00', 'Representation Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (36, '50299990 99', 'Other Maintenance and Operating Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (37, '50203040 00', 'Animal/Zoological Supplies Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (38, '50203080 00', 'Medical, Dental and Laboratory Supplies Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (39, '50203100 00', 'Agricultural and Marine Supplies Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (40, '50203210 00', 'Semi-Expendable Machinery and Equipment Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (41, '50203220 00', 'Semi-Expendable Furniture, Fixtures and Books Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (42, '50206010 01', 'Awards/Rewards Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (43, '50206010 02', 'Rewards and Incentives', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (44, '50206020 00', 'Prizes', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (46, '50213050 14', 'Repairs and Maintenance - Technical and Scientific Equipment', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (48, '50299070 99', 'Other Subscription Expenses', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (49, '50213050 04', 'Repairs and Maintenance- Agricultural and Forestry Equipment', '2025-02-12 10:41:27', '2025-02-12 10:41:27');
INSERT INTO `account_codes` VALUES (55, '50402010 00', 'Cost of Good Sold', '2025-08-19 00:46:56', '2025-08-19 00:46:56');

-- ----------------------------
-- Table structure for budget_allocations
-- ----------------------------
DROP TABLE IF EXISTS `budget_allocations`;
CREATE TABLE `budget_allocations`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `college_office_unit_id` bigint UNSIGNED NOT NULL,
  `whole_budget_id` bigint UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `allocated_by` bigint UNSIGNED NOT NULL,
  `account_code_id` bigint UNSIGNED NOT NULL,
  `date_allocated` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `budget_allocations_college_office_unit_id_foreign`(`college_office_unit_id` ASC) USING BTREE,
  INDEX `budget_allocations_whole_budget_id_foreign`(`whole_budget_id` ASC) USING BTREE,
  INDEX `budget_allocations_allocated_by_foreign`(`allocated_by` ASC) USING BTREE,
  INDEX `budget_allocations_account_code_id_foreign`(`account_code_id` ASC) USING BTREE,
  CONSTRAINT `budget_allocations_account_code_id_foreign` FOREIGN KEY (`account_code_id`) REFERENCES `account_codes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `budget_allocations_allocated_by_foreign` FOREIGN KEY (`allocated_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `budget_allocations_college_office_unit_id_foreign` FOREIGN KEY (`college_office_unit_id`) REFERENCES `college_office_units` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `budget_allocations_whole_budget_id_foreign` FOREIGN KEY (`whole_budget_id`) REFERENCES `whole_budgets` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of budget_allocations
-- ----------------------------
INSERT INTO `budget_allocations` VALUES (46, 10, 23, 130000, 8, 6, '2025-07-10 16:04:11', '2025-07-10 08:04:11', '2025-07-10 08:04:11');
INSERT INTO `budget_allocations` VALUES (47, 25, 23, 130000, 8, 6, '2025-07-10 16:05:42', '2025-07-10 08:05:42', '2025-07-10 08:05:42');
INSERT INTO `budget_allocations` VALUES (48, 17, 23, 60000, 8, 6, '2025-07-10 16:06:47', '2025-07-10 08:06:47', '2025-07-10 08:06:47');
INSERT INTO `budget_allocations` VALUES (49, 1, 23, 400000, 8, 6, '2025-07-10 16:07:58', '2025-07-10 08:07:58', '2025-07-10 08:07:58');
INSERT INTO `budget_allocations` VALUES (50, 22, 23, 450000, 8, 6, '2025-07-10 16:08:50', '2025-07-10 08:08:50', '2025-07-10 08:08:50');
INSERT INTO `budget_allocations` VALUES (51, 24, 23, 200000, 8, 6, '2025-07-10 16:09:51', '2025-07-10 08:09:51', '2025-07-10 08:09:51');
INSERT INTO `budget_allocations` VALUES (52, 3, 23, 200000, 8, 6, '2025-07-10 16:10:41', '2025-07-10 08:10:41', '2025-07-10 08:10:41');
INSERT INTO `budget_allocations` VALUES (53, 4, 23, 100000, 8, 6, '2025-07-10 16:11:39', '2025-07-10 08:11:39', '2025-07-10 08:11:39');
INSERT INTO `budget_allocations` VALUES (54, 21, 23, 200000, 8, 6, '2025-07-10 16:12:27', '2025-07-10 08:12:27', '2025-07-10 08:12:27');
INSERT INTO `budget_allocations` VALUES (55, 2, 23, 100000, 8, 6, '2025-07-10 16:14:18', '2025-07-10 08:14:18', '2025-07-10 08:14:18');
INSERT INTO `budget_allocations` VALUES (56, 5, 23, 150000, 8, 6, '2025-07-10 16:14:55', '2025-07-10 08:14:55', '2025-07-10 08:14:55');
INSERT INTO `budget_allocations` VALUES (57, 23, 23, 150000, 8, 6, '2025-07-10 16:15:35', '2025-07-10 08:15:35', '2025-07-10 08:15:35');
INSERT INTO `budget_allocations` VALUES (58, 13, 23, 100000, 8, 6, '2025-07-10 16:17:02', '2025-07-10 08:17:02', '2025-07-10 08:17:02');
INSERT INTO `budget_allocations` VALUES (59, 8, 23, 50000, 8, 6, '2025-07-10 16:17:51', '2025-07-10 08:17:51', '2025-07-10 08:17:51');
INSERT INTO `budget_allocations` VALUES (60, 18, 23, 55000, 8, 6, '2025-07-10 16:18:48', '2025-07-10 08:18:48', '2025-07-10 08:18:48');
INSERT INTO `budget_allocations` VALUES (61, 27, 23, 200000, 8, 6, '2025-07-10 16:19:44', '2025-07-10 08:19:44', '2025-07-10 08:19:44');
INSERT INTO `budget_allocations` VALUES (62, 11, 23, 100000, 8, 6, '2025-07-10 16:20:52', '2025-07-10 08:20:52', '2025-07-10 08:20:52');
INSERT INTO `budget_allocations` VALUES (63, 6, 23, 240000, 8, 6, '2025-07-10 16:22:37', '2025-07-10 08:22:37', '2025-07-10 08:22:37');
INSERT INTO `budget_allocations` VALUES (64, 9, 23, 60000, 8, 6, '2025-07-10 16:23:23', '2025-07-10 08:23:23', '2025-07-10 08:23:23');
INSERT INTO `budget_allocations` VALUES (65, 7, 23, 400000, 8, 5, '2025-07-10 16:24:57', '2025-07-10 08:24:57', '2025-07-10 08:24:57');
INSERT INTO `budget_allocations` VALUES (66, 15, 23, 40000, 8, 6, '2025-07-10 16:26:07', '2025-07-10 08:26:07', '2025-07-10 08:26:07');
INSERT INTO `budget_allocations` VALUES (67, 19, 23, 100000, 8, 6, '2025-07-10 16:31:34', '2025-07-10 08:31:34', '2025-07-10 08:31:34');
INSERT INTO `budget_allocations` VALUES (68, 12, 23, 160000, 8, 6, '2025-07-10 16:32:18', '2025-07-10 08:32:18', '2025-07-10 08:32:18');
INSERT INTO `budget_allocations` VALUES (69, 14, 23, 100000, 8, 6, '2025-07-10 16:35:11', '2025-07-10 08:35:11', '2025-07-10 08:35:11');
INSERT INTO `budget_allocations` VALUES (70, 16, 23, 50000, 8, 6, '2025-07-10 16:36:04', '2025-07-10 08:36:04', '2025-07-10 08:36:04');
INSERT INTO `budget_allocations` VALUES (71, 33, 23, 30000, 8, 6, '2025-07-11 15:42:17', '2025-07-11 07:42:17', '2025-07-11 07:42:17');
INSERT INTO `budget_allocations` VALUES (72, 34, 23, 35000, 8, 6, '2025-07-11 15:42:54', '2025-07-11 07:42:54', '2025-07-11 07:42:54');
INSERT INTO `budget_allocations` VALUES (73, 35, 23, 30000, 8, 6, '2025-07-11 15:43:40', '2025-07-11 07:43:40', '2025-07-11 07:43:40');
INSERT INTO `budget_allocations` VALUES (74, 36, 23, 180000, 8, 6, '2025-07-11 15:44:10', '2025-07-11 07:44:10', '2025-07-11 07:44:10');
INSERT INTO `budget_allocations` VALUES (75, 37, 23, 100000, 8, 6, '2025-07-11 15:45:57', '2025-07-11 07:45:57', '2025-07-11 07:45:57');
INSERT INTO `budget_allocations` VALUES (76, 38, 23, 80000, 8, 6, '2025-07-11 15:46:48', '2025-07-11 07:46:48', '2025-07-11 07:46:48');
INSERT INTO `budget_allocations` VALUES (77, 76, 23, 65000, 8, 9, '2025-07-11 15:47:52', '2025-07-11 07:47:52', '2025-07-11 07:47:52');
INSERT INTO `budget_allocations` VALUES (78, 39, 23, 70000, 8, 6, '2025-07-11 15:55:02', '2025-07-11 07:55:02', '2025-07-11 07:55:02');
INSERT INTO `budget_allocations` VALUES (79, 40, 23, 100000, 8, 6, '2025-07-11 15:55:41', '2025-07-11 07:55:41', '2025-07-11 07:55:41');
INSERT INTO `budget_allocations` VALUES (80, 41, 23, 100000, 8, 6, '2025-07-11 15:56:17', '2025-07-11 07:56:17', '2025-07-11 07:56:17');
INSERT INTO `budget_allocations` VALUES (81, 42, 23, 100000, 8, 6, '2025-07-11 15:57:48', '2025-07-11 07:57:48', '2025-07-11 07:57:48');
INSERT INTO `budget_allocations` VALUES (82, 43, 23, 160000, 8, 6, '2025-07-11 15:59:07', '2025-07-11 07:59:07', '2025-07-11 07:59:07');
INSERT INTO `budget_allocations` VALUES (83, 45, 23, 30000, 8, 6, '2025-07-11 16:00:10', '2025-07-11 08:00:10', '2025-07-11 08:00:10');
INSERT INTO `budget_allocations` VALUES (84, 46, 23, 50000, 8, 6, '2025-07-11 16:00:46', '2025-07-11 08:00:46', '2025-07-11 08:00:46');
INSERT INTO `budget_allocations` VALUES (85, 47, 23, 90000, 8, 6, '2025-07-11 16:01:20', '2025-07-11 08:01:20', '2025-07-11 08:01:20');
INSERT INTO `budget_allocations` VALUES (86, 48, 23, 50000, 8, 6, '2025-07-11 16:01:52', '2025-07-11 08:01:52', '2025-07-11 08:01:52');
INSERT INTO `budget_allocations` VALUES (87, 49, 23, 30000, 8, 6, '2025-07-11 16:02:29', '2025-07-11 08:02:29', '2025-07-11 08:02:29');
INSERT INTO `budget_allocations` VALUES (88, 50, 23, 100000, 8, 6, '2025-07-11 16:03:28', '2025-07-11 08:03:28', '2025-07-11 08:03:28');
INSERT INTO `budget_allocations` VALUES (89, 51, 23, 100000, 8, 6, '2025-07-11 16:03:57', '2025-07-11 08:03:57', '2025-07-11 08:03:57');
INSERT INTO `budget_allocations` VALUES (90, 52, 23, 100000, 8, 6, '2025-07-11 16:04:28', '2025-07-11 08:04:28', '2025-07-11 08:04:28');
INSERT INTO `budget_allocations` VALUES (91, 53, 23, 80000, 8, 6, '2025-07-11 16:05:11', '2025-07-11 08:05:11', '2025-07-11 08:05:11');
INSERT INTO `budget_allocations` VALUES (92, 76, 23, 150000, 8, 6, '2025-07-11 16:07:05', '2025-07-11 08:07:05', '2025-07-11 08:07:05');
INSERT INTO `budget_allocations` VALUES (93, 55, 23, 150000, 8, 6, '2025-07-11 16:09:17', '2025-07-11 08:09:17', '2025-07-11 08:09:17');
INSERT INTO `budget_allocations` VALUES (94, 56, 23, 200000, 8, 6, '2025-07-11 16:10:10', '2025-07-11 08:10:10', '2025-07-11 08:10:10');
INSERT INTO `budget_allocations` VALUES (95, 54, 23, 48000, 8, 6, '2025-07-11 16:11:32', '2025-07-11 08:11:32', '2025-07-11 08:11:32');
INSERT INTO `budget_allocations` VALUES (96, 57, 23, 70000, 8, 6, '2025-07-11 16:13:22', '2025-07-11 08:13:22', '2025-07-11 08:13:22');
INSERT INTO `budget_allocations` VALUES (97, 59, 23, 50000, 8, 6, '2025-07-11 16:14:30', '2025-07-11 08:14:30', '2025-07-11 08:14:30');
INSERT INTO `budget_allocations` VALUES (98, 60, 23, 50000, 8, 6, '2025-07-11 16:15:10', '2025-07-11 08:15:10', '2025-07-11 08:15:10');
INSERT INTO `budget_allocations` VALUES (99, 61, 23, 50000, 8, 6, '2025-07-11 16:15:47', '2025-07-11 08:15:47', '2025-07-11 08:15:47');
INSERT INTO `budget_allocations` VALUES (100, 62, 23, 200000, 8, 6, '2025-07-11 16:16:16', '2025-07-11 08:16:16', '2025-07-11 08:16:16');
INSERT INTO `budget_allocations` VALUES (101, 63, 23, 100000, 8, 6, '2025-07-11 16:17:00', '2025-07-11 08:17:00', '2025-07-11 08:17:00');
INSERT INTO `budget_allocations` VALUES (102, 64, 23, 75000, 8, 6, '2025-07-11 16:17:37', '2025-07-11 08:17:37', '2025-07-11 08:17:37');
INSERT INTO `budget_allocations` VALUES (103, 66, 23, 121000, 8, 9, '2025-07-11 16:18:25', '2025-07-11 08:18:25', '2025-07-11 08:18:25');
INSERT INTO `budget_allocations` VALUES (104, 65, 23, 300000, 8, 9, '2025-07-11 16:18:55', '2025-07-11 08:18:55', '2025-07-11 08:18:55');
INSERT INTO `budget_allocations` VALUES (105, 67, 23, 400000, 8, 5, '2025-07-11 16:19:28', '2025-07-11 08:19:28', '2025-07-11 08:19:28');
INSERT INTO `budget_allocations` VALUES (106, 68, 23, 900000, 8, 5, '2025-07-11 16:20:06', '2025-07-11 08:20:06', '2025-07-11 08:20:06');
INSERT INTO `budget_allocations` VALUES (107, 69, 23, 175000, 8, 6, '2025-07-11 16:21:30', '2025-07-11 08:21:30', '2025-07-11 08:21:30');
INSERT INTO `budget_allocations` VALUES (108, 87, 23, 400000, 8, 5, '2025-07-11 16:22:34', '2025-07-11 08:22:34', '2025-07-11 08:22:34');
INSERT INTO `budget_allocations` VALUES (109, 71, 23, 200000, 8, 5, '2025-07-11 16:23:32', '2025-07-11 08:23:32', '2025-07-11 08:23:32');
INSERT INTO `budget_allocations` VALUES (110, 72, 23, 1100000, 8, 9, '2025-07-11 16:24:45', '2025-07-11 08:24:45', '2025-07-11 08:24:45');
INSERT INTO `budget_allocations` VALUES (111, 73, 23, 120000, 8, 5, '2025-07-11 16:25:31', '2025-07-11 08:25:31', '2025-07-11 08:25:31');
INSERT INTO `budget_allocations` VALUES (112, 6, 23, 100000, 8, 5, '2025-07-11 16:26:12', '2025-07-11 08:26:12', '2025-07-11 08:26:12');
INSERT INTO `budget_allocations` VALUES (113, 75, 23, 30000, 8, 9, '2025-07-11 16:26:50', '2025-07-11 08:26:50', '2025-07-11 08:26:50');
INSERT INTO `budget_allocations` VALUES (114, 1, 23, 510000, 8, 9, '2025-07-11 16:27:38', '2025-07-11 08:27:38', '2025-07-11 08:27:38');
INSERT INTO `budget_allocations` VALUES (115, 55, 23, 100000, 8, 9, '2025-07-11 16:28:13', '2025-07-11 08:28:13', '2025-07-11 08:28:13');
INSERT INTO `budget_allocations` VALUES (116, 22, 23, 1030000, 8, 9, '2025-07-11 16:29:01', '2025-07-11 08:29:01', '2025-07-11 08:29:01');
INSERT INTO `budget_allocations` VALUES (117, 24, 23, 250000, 8, 9, '2025-07-11 16:31:33', '2025-07-11 08:31:33', '2025-07-11 08:31:33');
INSERT INTO `budget_allocations` VALUES (118, 3, 23, 200000, 8, 9, '2025-07-11 16:32:41', '2025-07-11 08:32:41', '2025-07-11 08:32:41');
INSERT INTO `budget_allocations` VALUES (119, 2, 23, 140000, 8, 9, '2025-07-11 16:33:27', '2025-07-11 08:33:27', '2025-07-11 08:33:27');
INSERT INTO `budget_allocations` VALUES (120, 4, 23, 330000, 8, 9, '2025-07-11 16:34:15', '2025-07-11 08:34:15', '2025-07-11 08:34:15');
INSERT INTO `budget_allocations` VALUES (121, 21, 23, 55000, 8, 9, '2025-07-11 16:34:58', '2025-07-11 08:34:58', '2025-07-11 08:34:58');
INSERT INTO `budget_allocations` VALUES (122, 56, 23, 50000, 8, 9, '2025-07-11 16:35:27', '2025-07-11 08:35:27', '2025-07-11 08:35:27');
INSERT INTO `budget_allocations` VALUES (123, 5, 23, 50000, 8, 9, '2025-07-11 16:36:04', '2025-07-11 08:36:04', '2025-07-11 08:36:04');
INSERT INTO `budget_allocations` VALUES (124, 23, 23, 200000, 8, 9, '2025-07-11 16:36:48', '2025-07-11 08:36:48', '2025-07-11 08:36:48');
INSERT INTO `budget_allocations` VALUES (125, 77, 23, 200000, 8, 33, '2025-07-11 16:37:46', '2025-07-11 08:37:46', '2025-07-11 08:37:46');
INSERT INTO `budget_allocations` VALUES (126, 78, 23, 100000, 8, 36, '2025-07-11 16:38:35', '2025-07-11 08:38:35', '2025-07-11 08:38:35');
INSERT INTO `budget_allocations` VALUES (127, 79, 23, 200000, 8, 36, '2025-07-11 16:39:28', '2025-07-11 08:39:28', '2025-07-11 08:39:28');
INSERT INTO `budget_allocations` VALUES (128, 81, 23, 400000, 8, 36, '2025-07-11 16:40:41', '2025-07-11 08:40:41', '2025-07-11 08:40:41');
INSERT INTO `budget_allocations` VALUES (129, 82, 23, 200000, 8, 36, '2025-07-11 16:41:28', '2025-07-11 08:41:28', '2025-07-11 08:41:28');
INSERT INTO `budget_allocations` VALUES (130, 71, 23, 300000, 8, 36, '2025-07-11 16:42:10', '2025-07-11 08:42:10', '2025-07-11 08:42:10');
INSERT INTO `budget_allocations` VALUES (131, 83, 23, 1000000, 8, 36, '2025-07-11 16:44:34', '2025-07-11 08:44:34', '2025-07-11 08:44:34');
INSERT INTO `budget_allocations` VALUES (132, 75, 23, 200000, 8, 36, '2025-07-11 16:45:35', '2025-07-11 08:45:35', '2025-07-11 08:45:35');
INSERT INTO `budget_allocations` VALUES (133, 84, 23, 50000, 8, 6, '2025-07-11 16:46:09', '2025-07-11 08:46:09', '2025-07-11 08:46:09');
INSERT INTO `budget_allocations` VALUES (134, 80, 23, 60000, 8, 6, '2025-07-11 16:47:03', '2025-07-11 08:47:03', '2025-07-11 08:47:03');
INSERT INTO `budget_allocations` VALUES (135, 85, 23, 50000, 8, 6, '2025-07-11 16:47:41', '2025-07-11 08:47:41', '2025-07-11 08:47:41');
INSERT INTO `budget_allocations` VALUES (136, 58, 23, 40000, 8, 6, '2025-07-11 16:49:55', '2025-07-11 08:49:55', '2025-07-11 08:49:55');
INSERT INTO `budget_allocations` VALUES (137, 44, 23, 260000, 8, 6, '2025-07-11 16:51:26', '2025-07-11 08:51:26', '2025-07-11 08:51:26');

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for canvass_items
-- ----------------------------
DROP TABLE IF EXISTS `canvass_items`;
CREATE TABLE `canvass_items`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `canvass_id` bigint UNSIGNED NOT NULL,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_of_measure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `file_attachment_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `canvass_items_canvass_id_foreign`(`canvass_id` ASC) USING BTREE,
  CONSTRAINT `canvass_items_canvass_id_foreign` FOREIGN KEY (`canvass_id`) REFERENCES `canvasses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of canvass_items
-- ----------------------------

-- ----------------------------
-- Table structure for canvasses
-- ----------------------------
DROP TABLE IF EXISTS `canvasses`;
CREATE TABLE `canvasses`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_tin_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `approval_status` bigint NOT NULL,
  `submission_status` bigint NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `approved_by` bigint UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `canvasses_created_by_foreign`(`created_by` ASC) USING BTREE,
  INDEX `canvasses_approved_by_foreign`(`approved_by` ASC) USING BTREE,
  CONSTRAINT `canvasses_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `canvasses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of canvasses
-- ----------------------------

-- ----------------------------
-- Table structure for college_office_unit_categories
-- ----------------------------
DROP TABLE IF EXISTS `college_office_unit_categories`;
CREATE TABLE `college_office_unit_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of college_office_unit_categories
-- ----------------------------
INSERT INTO `college_office_unit_categories` VALUES (1, 'GAS', NULL, NULL);
INSERT INTO `college_office_unit_categories` VALUES (2, 'RESEARCH', NULL, NULL);
INSERT INTO `college_office_unit_categories` VALUES (3, 'HEID', NULL, NULL);
INSERT INTO `college_office_unit_categories` VALUES (4, 'AUXILLIARY', NULL, NULL);
INSERT INTO `college_office_unit_categories` VALUES (5, 'EXTENSION', NULL, NULL);

-- ----------------------------
-- Table structure for college_office_units
-- ----------------------------
DROP TABLE IF EXISTS `college_office_units`;
CREATE TABLE `college_office_units`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `college_office_unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `college_office_unit_image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `college_office_units_category_id_foreign`(`category_id` ASC) USING BTREE,
  CONSTRAINT `college_office_units_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `college_office_unit_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of college_office_units
-- ----------------------------
INSERT INTO `college_office_units` VALUES (1, 'COA', 'College of Agriculture', 3, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (2, 'CISC', 'College of Information Sciences and Computing', 3, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (3, 'COEd', 'College of Education', 3, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (4, 'COE', 'College of Engineering', 3, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (5, 'CON', 'College of Nursing', 3, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (6, 'OP', 'Office of President', 1, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (7, 'OUPD', 'Office of the University Planning and Development - Bids and Bldg Permit', 1, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (8, 'OUL', 'Legal Office', 1, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (9, 'OSAS', 'Office of Student Affairs and Services', 4, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (10, 'OUA', 'Accounting Office', 1, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (11, 'OFMS', 'Office of Financial Management Service', 1, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (12, 'OUR', 'Registrar\'s Office', 1, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (13, 'OUGS', 'General Service - Common Supply', 4, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (14, 'OUS', 'Supply Office', 4, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (15, 'PTGC', 'PTGC', 4, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (16, 'UH', 'University Hospital', 4, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (17, 'CEBREM', 'CEBREM', 2, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (18, 'NPRDC', 'NPRDC', 2, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (19, 'RDE', 'RDE Congress', 2, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (20, 'SDD', 'SOFTWARE DEVELOPMENT DEPARTMENT', 3, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (21, 'CFES', 'College of Forestry and Environmental Science', 3, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (22, 'CAS', 'College of Arts and Sciences', 3, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (23, 'CVM - Annual Activities', 'College of Veterinary Medicine - Annual Activities', 3, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (24, 'CBM', 'College of Business Management', 3, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (25, 'OUBM', 'Budget Office', 1, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (27, 'BAC', 'Office of Budget and Awards Committee', 1, NULL, NULL, NULL);
INSERT INTO `college_office_units` VALUES (33, 'ARLO', 'Alumni Relations Office', 1, NULL, NULL, '2025-07-10 08:48:27');
INSERT INTO `college_office_units` VALUES (34, 'ASO', 'ASO', 1, NULL, NULL, '2025-07-10 08:50:04');
INSERT INTO `college_office_units` VALUES (35, 'Branding Office', 'Branding Office', 1, NULL, NULL, '2025-07-10 08:50:21');
INSERT INTO `college_office_units` VALUES (36, 'Cashier', 'Cashier', 1, NULL, NULL, '2025-07-10 08:50:38');
INSERT INTO `college_office_units` VALUES (37, 'CMU DRRMO', 'CMU DRRMO', 1, NULL, NULL, '2025-07-10 08:51:03');
INSERT INTO `college_office_units` VALUES (38, 'COA Office', 'COA Office', 1, NULL, NULL, '2025-07-10 08:51:17');
INSERT INTO `college_office_units` VALUES (39, 'DPO', 'Data Privacy Office', 1, NULL, NULL, '2025-07-10 08:51:53');
INSERT INTO `college_office_units` VALUES (40, 'Director of Instruction', 'Director of Instruction', 1, NULL, NULL, '2025-07-10 08:52:12');
INSERT INTO `college_office_units` VALUES (41, 'GAD Supplies', 'GAD Supplies', 1, NULL, NULL, '2025-07-10 08:53:12');
INSERT INTO `college_office_units` VALUES (42, 'DTO', 'Data Transmission Office', 1, NULL, NULL, '2025-07-10 08:54:30');
INSERT INTO `college_office_units` VALUES (43, 'OASP', 'OASP', 1, NULL, NULL, '2025-07-10 08:55:45');
INSERT INTO `college_office_units` VALUES (44, 'PRIO', 'Public Relations and Information Office', 1, NULL, NULL, '2025-07-10 08:56:19');
INSERT INTO `college_office_units` VALUES (45, 'Publication CMU Journal', 'Publication CMU Journal', 1, NULL, NULL, '2025-07-10 08:56:57');
INSERT INTO `college_office_units` VALUES (46, 'Records Management Office', 'Records Management Office', 1, NULL, NULL, '2025-07-10 08:57:46');
INSERT INTO `college_office_units` VALUES (47, 'SS', 'Security Services', 1, NULL, NULL, '2025-07-10 08:58:50');
INSERT INTO `college_office_units` VALUES (48, 'Solid Waste Management Office', 'Solid Waste Management Office', 1, NULL, NULL, '2025-07-10 08:59:15');
INSERT INTO `college_office_units` VALUES (49, 'ITSM', 'ITSM', 1, NULL, NULL, '2025-07-10 08:59:33');
INSERT INTO `college_office_units` VALUES (50, 'Vice President for Academic Affairs', 'Vice President for Academic Affairs', 1, NULL, NULL, '2025-07-11 02:45:53');
INSERT INTO `college_office_units` VALUES (51, 'Vice President for Administration', 'Vice President for Administration', 1, NULL, NULL, '2025-07-11 02:46:09');
INSERT INTO `college_office_units` VALUES (52, 'Vice President for Research and Extension', 'Vice President for Research and Extension', 1, NULL, NULL, '2025-07-11 02:46:37');
INSERT INTO `college_office_units` VALUES (53, 'Office of the Board Secretary', 'Office of the Board Secretary', 1, NULL, NULL, '2025-07-11 02:46:52');
INSERT INTO `college_office_units` VALUES (54, 'Auxilliary Service Unit', 'Auxilliary Service Unit', 4, NULL, NULL, '2025-07-11 02:47:27');
INSERT INTO `college_office_units` VALUES (55, 'COA - Term Exam', 'College of Agriculture - Term Exam', 3, NULL, NULL, '2025-07-11 02:47:59');
INSERT INTO `college_office_units` VALUES (56, 'CHE', 'College of Human Ecology', 3, NULL, NULL, '2025-07-11 02:48:25');
INSERT INTO `college_office_units` VALUES (57, 'Internal Audit Services', 'Internal Audit Services', 3, NULL, NULL, '2025-07-11 02:49:02');
INSERT INTO `college_office_units` VALUES (58, 'IPTBM', 'Intellectual Property and Technology Business Management', 2, NULL, NULL, '2025-07-11 02:51:04');
INSERT INTO `college_office_units` VALUES (59, 'Museum & MMZBG', 'Museum & MMZBG', 2, NULL, NULL, '2025-07-11 02:52:05');
INSERT INTO `college_office_units` VALUES (60, 'FRDC', 'FRDC', 2, NULL, NULL, '2025-07-11 02:56:44');
INSERT INTO `college_office_units` VALUES (61, 'NSRC', 'NSRC', 2, NULL, NULL, '2025-07-11 02:56:59');
INSERT INTO `college_office_units` VALUES (62, 'Research Office', 'Research Office', 2, NULL, NULL, '2025-07-11 02:57:51');
INSERT INTO `college_office_units` VALUES (63, 'Extension Office - BIDANI, DXMU', 'Extension Office - BIDANI, DXMU', 5, NULL, NULL, '2025-07-11 02:59:07');
INSERT INTO `college_office_units` VALUES (64, 'COMBASUDEP', 'COMBASUDEP', 5, NULL, NULL, '2025-07-11 02:59:23');
INSERT INTO `college_office_units` VALUES (65, 'GSO - Plumbing', 'General Services - Plumbing', 1, NULL, NULL, '2025-07-11 03:01:28');
INSERT INTO `college_office_units` VALUES (66, 'GSO - CLBDP', 'General Services - CLBDP', 1, NULL, NULL, '2025-07-11 03:20:52');
INSERT INTO `college_office_units` VALUES (67, 'GSO - BCRMU', 'General Services - BCRMU', 3, NULL, NULL, '2025-07-11 03:21:16');
INSERT INTO `college_office_units` VALUES (68, 'GSO - Electrical', 'General Services - Electrical', 3, NULL, NULL, '2025-07-11 03:21:37');
INSERT INTO `college_office_units` VALUES (69, 'OUPD', 'Office of the University Planning', 1, NULL, NULL, '2025-07-11 03:23:06');
INSERT INTO `college_office_units` VALUES (70, 'OQA - Computer Supply', 'Quality Assurance Office - Computer Supply', 3, NULL, NULL, '2025-07-11 03:23:55');
INSERT INTO `college_office_units` VALUES (71, 'Director of Instruction - USAC', 'Director of Instruction - USAC', 1, NULL, NULL, '2025-07-11 03:24:24');
INSERT INTO `college_office_units` VALUES (72, 'CAS - Laboratory Supplies', 'College of Arts and Sciences - Laboratory Supplies', 3, NULL, NULL, '2025-07-11 03:25:21');
INSERT INTO `college_office_units` VALUES (73, 'ODT - Computer Repair / Network Maintenance', 'Office of Data Transmission - Computer Repair / Network Maintenance', 3, NULL, NULL, '2025-07-11 03:26:24');
INSERT INTO `college_office_units` VALUES (74, 'OP - ICT Supplies', 'Office of the President - ICT Supplies', 3, NULL, NULL, '2025-07-11 03:27:28');
INSERT INTO `college_office_units` VALUES (75, 'IPLO - Patent Drafting', 'IPLO - Patent Drafting', 3, NULL, NULL, '2025-07-11 03:27:47');
INSERT INTO `college_office_units` VALUES (76, 'CMULHS', 'Central Mindanao University - Laboratory High School', 3, NULL, NULL, '2025-07-11 03:28:16');
INSERT INTO `college_office_units` VALUES (77, 'PRIO - CMU Magazine', 'Public Relations and Information Office - CMU Magazine', 1, NULL, NULL, '2025-07-11 03:32:38');
INSERT INTO `college_office_units` VALUES (78, 'PRIO - CMU Brochure', 'Public Relations and Information Office - CMU Brochure', 1, NULL, NULL, '2025-07-11 03:33:10');
INSERT INTO `college_office_units` VALUES (79, 'PRIO - CMU Annual Report', 'Public Relations and Information Office - CMU Annual Report', 1, NULL, NULL, '2025-07-11 03:33:38');
INSERT INTO `college_office_units` VALUES (80, 'OHRM', 'Office of Human Resource Management', 1, NULL, NULL, '2025-07-11 03:34:40');
INSERT INTO `college_office_units` VALUES (81, 'OHRM - Plaques for Loyalty/Retirees, etc.', 'Office of Human Resource Management - Plaques for Loyalty/Retirees, etc.', 1, NULL, NULL, '2025-07-11 03:35:22');
INSERT INTO `college_office_units` VALUES (82, 'OHRM - Tarpaulins, Training Kits, Annual Report, Etc.', 'Office of Human Resource Management - Tarpaulins, Training Kits, Annual Report, Etc.', 1, NULL, NULL, '2025-07-11 03:35:55');
INSERT INTO `college_office_units` VALUES (83, 'GAD Activities per BP 400', 'GAD Activities per BP 400', 1, NULL, NULL, '2025-07-11 03:37:22');
INSERT INTO `college_office_units` VALUES (84, 'PIU', 'PIU', 1, NULL, NULL, '2025-07-11 03:37:56');
INSERT INTO `college_office_units` VALUES (85, 'Housing - UHRC', 'University Housing and Relocation Committee', 1, NULL, NULL, '2025-07-11 03:38:24');
INSERT INTO `college_office_units` VALUES (86, 'COMBASUDEP - Extension Office', 'COMBASUDEP - Extension Office', 3, NULL, NULL, '2025-07-11 03:38:57');
INSERT INTO `college_office_units` VALUES (87, 'OQA - Activities', 'Quality Assurance Office - Activites', 1, NULL, NULL, '2025-07-11 03:39:48');
INSERT INTO `college_office_units` VALUES (88, 'USO', 'University Sports Office', 3, NULL, NULL, '2025-10-14 01:05:51');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for item_categories
-- ----------------------------
DROP TABLE IF EXISTS `item_categories`;
CREATE TABLE `item_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_category_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_category_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_categories
-- ----------------------------
INSERT INTO `item_categories` VALUES (1, 'ALCOHOL OR ACETONE BASED ANTISEPTICS', '502030000', 'ALCOHOL OR ACETONE BASED ANTISEPTICS', NULL, '2025-02-27 02:15:44');
INSERT INTO `item_categories` VALUES (2, 'ARTS AND CRAFTS EQUIPMENT AND ACCESSORIES AND SUPPLIES', '502030000', 'ARTS AND CRAFTS EQUIPMENT AND ACCESSORIES AND SUPPLIES', NULL, NULL);
INSERT INTO `item_categories` VALUES (3, 'AUDIO AND VISUAL EQUIPMENT AND SUPPLIES', '502030000', 'AUDIO AND VISUAL EQUIPMENT AND SUPPLIES', NULL, NULL);
INSERT INTO `item_categories` VALUES (4, 'BATTERIES AND CELLS AND ACCESSORIES', '502030000', 'BATTERIES AND CELLS AND ACCESSORIES', NULL, NULL);
INSERT INTO `item_categories` VALUES (5, 'CLEANING EQUIPMENT AND SUPPLIES', '502030000', 'CLEANING EQUIPMENT AND SUPPLIES', NULL, NULL);
INSERT INTO `item_categories` VALUES (6, 'COLOR COMPOUNDS AND DISPERSION', '502030000', 'COLOR COMPOUNDS AND DISPERSION', NULL, NULL);
INSERT INTO `item_categories` VALUES (7, 'CONSUMER ELECTRONICS', '502030000', 'CONSUMER ELECTRONICS', NULL, NULL);
INSERT INTO `item_categories` VALUES (8, 'FACE MASK', '502030000', 'FACE MASK', NULL, NULL);
INSERT INTO `item_categories` VALUES (9, 'FILMS', '502030000', 'FILMS', NULL, NULL);
INSERT INTO `item_categories` VALUES (10, 'FIRE FIGHTING EQUIPMENT', '502030000', 'FIRE FIGHTING EQUIPMENT', NULL, NULL);
INSERT INTO `item_categories` VALUES (11, 'FLAG OR ACCESSORIES', '502030000', 'FLAG OR ACCESSORIES', NULL, NULL);
INSERT INTO `item_categories` VALUES (12, 'FURNITURE AND FURNISHINGS', '502030000', 'FURNITURE AND FURNISHINGS', NULL, NULL);
INSERT INTO `item_categories` VALUES (13, 'HEAT AND VENTILATION AND AIR CIRCULATION', '502030000', 'HEAT AND VENTILATION AND AIR CIRCULATION', NULL, NULL);
INSERT INTO `item_categories` VALUES (14, 'INFORMATION AND COMMUNICATION TECHNOLOGY (ICT) EQUIPMENT AND DEVICES AND ACCESSORIES', '502030000', 'INFORMATION AND COMMUNICATION TECHNOLOGY (ICT) EQUIPMENT AND DEVICES AND ACCESSORIES', NULL, NULL);
INSERT INTO `item_categories` VALUES (15, 'LIGHTING AND FIXTURES AND ACCESSORIES', '502030000', 'LIGHTING AND FIXTURES AND ACCESSORIES', NULL, NULL);
INSERT INTO `item_categories` VALUES (16, 'MANUFACTURING COMPONENTS AND SUPPLIES', '502030000', 'MANUFACTURING COMPONENTS AND SUPPLIES', NULL, NULL);
INSERT INTO `item_categories` VALUES (17, 'MEASURING AND OBSERVING AND TESTING EQUIPMENT', '502030000', 'MEASURING AND OBSERVING AND TESTING EQUIPMENT', NULL, NULL);
INSERT INTO `item_categories` VALUES (18, 'OFFICE EQUIPMENT AND ACCESSORIES AND SUPPLIES', '502030000', 'OFFICE EQUIPMENT AND ACCESSORIES AND SUPPLIES', NULL, NULL);
INSERT INTO `item_categories` VALUES (19, 'PAPER MATERIALS AND PRODUCTS', '502030000', 'PAPER MATERIALS AND PRODUCTS', NULL, NULL);
INSERT INTO `item_categories` VALUES (20, 'PERFUMES OR COLOGNES OR FRAGRANCE', '502030000', 'PERFUMES OR COLOGNES OR FRAGRANCE', NULL, NULL);
INSERT INTO `item_categories` VALUES (21, 'PESTICIDES OR PEST REPELLENTS', '502030000', 'PESTICIDES OR PEST REPELLENTS', NULL, NULL);
INSERT INTO `item_categories` VALUES (22, 'PRINTED PUBLICATIONS', '502030000', 'PRINTED PUBLICATIONS', NULL, NULL);
INSERT INTO `item_categories` VALUES (23, 'PRINTER OR FACSIMILE OR PHOTOCOPIER SUPPLIES (CONSUMABLES)', '502030000', 'PRINTER OR FACSIMILE OR PHOTOCOPIER SUPPLIES (CONSUMABLES)', NULL, NULL);
INSERT INTO `item_categories` VALUES (24, 'SOFTWARE', '502030000', 'SOFTWARE', NULL, NULL);
INSERT INTO `item_categories` VALUES (25, 'University Hospital Medicine', '502030000', 'University Hospital Medicine', NULL, NULL);
INSERT INTO `item_categories` VALUES (26, 'MEDICINE AND MEDICAL EQUIPMENTS', '502030000', 'MEDICINE AND MEDICAL EQUIPMENTS', NULL, NULL);
INSERT INTO `item_categories` VALUES (28, 'COST OF GOOD SOLD', '502030000', 'COST OF GOOD SOLD', NULL, NULL);
INSERT INTO `item_categories` VALUES (29, 'FUEL, OIL, & LUBRICANTS', '502030000', 'FUEL, OIL, & LUBRICANTS', NULL, NULL);
INSERT INTO `item_categories` VALUES (30, 'REPAIR AND MAINTENANCE', '502030000', 'REPAIR AND MAINTENANCE', NULL, NULL);
INSERT INTO `item_categories` VALUES (31, 'AGRICULTURE AND MARINE', '502030000', 'AGRICULTURE AND MARINE', NULL, NULL);
INSERT INTO `item_categories` VALUES (32, 'INTERNET SUBSCRIPTION', '502030000', 'INTERNET SUBSCRIPTION', NULL, NULL);

-- ----------------------------
-- Table structure for item_prices
-- ----------------------------
DROP TABLE IF EXISTS `item_prices`;
CREATE TABLE `item_prices`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` bigint UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `year` int NOT NULL,
  `is_active` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `item_prices_item_id_foreign`(`item_id` ASC) USING BTREE,
  CONSTRAINT `item_prices_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 789 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_prices
-- ----------------------------
INSERT INTO `item_prices` VALUES (18, 1, 72.03, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (19, 2, 443.51, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (20, 3, 43.67, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (21, 4, 45.16, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (22, 5, 10.26, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (23, 6, 27.57, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (24, 7, 55.54, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (25, 8, 71.04, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (26, 9, 27.57, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (27, 10, 55.54, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (28, 11, 71.04, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (29, 12, 27.57, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (30, 13, 56.83, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (31, 14, 71.04, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (32, 15, 200.21, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (33, 16, 29340.51, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (34, 17, 20602.3, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (35, 18, 25.45, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (36, 19, 22.78, 2026, 0, NULL, '2025-06-20 14:20:59');
INSERT INTO `item_prices` VALUES (37, 20, 108.44, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (38, 21, 155, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (39, 22, 32.29, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (40, 23, 51.67, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (41, 24, 29.71, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (42, 25, 11.6, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (43, 26, 67.17, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (44, 27, 173.74, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (45, 28, 58.13, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (46, 29, 384.72, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (47, 30, 175.61, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (48, 31, 53.34, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (49, 32, 2841.7, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (50, 33, 86.28, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (51, 34, 106.35, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (52, 35, 161.46, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (53, 36, 73.63, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (54, 37, 114.96, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (55, 38, 54.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (56, 39, 35.76, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (57, 40, 9115.24, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (58, 41, 1544.85, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (59, 42, 436.97, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (60, 43, 1420.85, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (61, 44, 353.77, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (62, 45, 423.67, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (63, 46, 423.67, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (64, 47, 1517.72, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (65, 48, 1378.22, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (66, 49, 1937.52, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (67, 50, 1119.89, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (68, 51, 30793.65, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (69, 52, 52648.88, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (70, 53, 3744.58, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (71, 54, 189.7, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (72, 55, 52635.96, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (73, 56, 58125.6, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (74, 57, 201.1, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (75, 58, 3275.02, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (76, 59, 93.91, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (77, 60, 255.63, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (78, 61, 77.18, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (79, 62, 45.21, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (80, 63, 29.51, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (81, 64, 24.16, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (82, 65, 69.15, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (83, 66, 150.48, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (84, 67, 27.77, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (85, 68, 21.96, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (86, 69, 28.03, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (87, 70, 82.74, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (88, 71, 24.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (89, 72, 20.33, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (90, 73, 11842.12, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (91, 74, 322.78, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (92, 75, 292.83, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (93, 76, 40.95, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (94, 77, 11.63, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (95, 78, 19.38, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (96, 79, 41.33, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (97, 80, 74.92, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (98, 81, 16.77, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (99, 82, 39.4, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (100, 83, 181.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (101, 84, 103.1, 2026, 1, NULL, '2025-06-20 10:21:54');
INSERT INTO `item_prices` VALUES (102, 85, 540.21, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (103, 86, 1030.76, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (104, 87, 1313.51, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (105, 88, 1167.42, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (106, 89, 37.87, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (107, 90, 537.19, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (108, 91, 636.8, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (109, 92, 17.98, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (110, 93, 117.54, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (111, 94, 112.03, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (112, 95, 13.82, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (113, 96, 17.67, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (114, 97, 335.84, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (115, 98, 361.67, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (116, 99, 248.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (117, 100, 309.36, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (118, 101, 1183.18, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (119, 102, 471.46, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (120, 103, 514.09, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (121, 104, 83.96, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (122, 105, 38.64, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (123, 106, 10.27, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (124, 107, 10.27, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (125, 108, 10.27, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (126, 109, 11.99, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (127, 110, 11.99, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (128, 111, 11.99, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (129, 112, 10.95, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (130, 113, 24.17, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (131, 114, 23248.95, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (132, 115, 11547.62, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (133, 116, 55.53, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (134, 117, 293.21, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (135, 118, 191.17, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (136, 119, 167.92, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (137, 120, 49.58, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (138, 121, 81.38, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (139, 122, 245.42, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (140, 123, 860.89, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (141, 124, 57.77, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (142, 125, 96.35, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (143, 126, 103.98, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (144, 127, 1174.14, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (145, 128, 2451.61, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (146, 129, 46.03, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (147, 130, 73.63, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (148, 131, 64.58, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (149, 132, 17.44, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (150, 133, 265.54, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (151, 134, 289.34, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (152, 135, 171.07, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (153, 136, 197.37, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (154, 137, 43.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (155, 138, 191.53, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (156, 139, 113.89, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (157, 140, 154.7, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (158, 141, 41.98, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (159, 142, 124, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (160, 143, 105.67, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (161, 144, 173.09, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (162, 145, 46.21, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (163, 146, 8628.42, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (164, 147, 1398.89, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (165, 148, 1463.47, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (166, 149, 1069.51, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (167, 150, 1108.26, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (168, 151, 288.02, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (169, 152, 300.81, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (170, 153, 300.81, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (171, 154, 300.81, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (172, 155, 1059.18, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (173, 156, 1302.01, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (174, 157, 1130.22, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (175, 158, 1308.47, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (176, 159, 1094.05, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (177, 160, 1300.72, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (178, 161, 1023.01, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (179, 162, 1023.01, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (180, 163, 1023.01, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (181, 164, 1914.27, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (182, 165, 1074.68, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (183, 166, 1323.97, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (184, 167, 2447.73, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (185, 168, 1884.56, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (186, 169, 1884.56, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (187, 170, 1884.56, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (188, 171, 520.55, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (189, 172, 520.55, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (190, 173, 502.46, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (191, 174, 502.46, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (192, 175, 527.01, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (193, 176, 527.01, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (194, 177, 1220.64, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (195, 178, 1220.64, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (196, 179, 1220.64, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (197, 180, 1608.14, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (198, 181, 1663.68, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (199, 182, 1663.68, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (200, 183, 1663.68, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (201, 184, 2257.86, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (202, 185, 581.26, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (203, 186, 581.26, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (204, 187, 581.26, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (205, 188, 962.3, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (206, 189, 96.17, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (207, 190, 96.8, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (208, 191, 1016.55, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (209, 192, 4430.46, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (210, 193, 6212.98, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (211, 194, 6924.7, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (212, 195, 5669.18, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (213, 196, 9584.27, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (214, 197, 9584.27, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (215, 198, 9584.27, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (216, 199, 16642.01, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (217, 200, 4271.59, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (218, 201, 9570.06, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (219, 202, 5157.68, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (220, 203, 4469.21, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (221, 204, 3239.53, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (222, 205, 3598.62, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (223, 206, 3598.62, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (224, 207, 3598.62, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (225, 208, 5583.93, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (226, 209, 3968.04, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (227, 210, 7232.12, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (228, 211, 10753.24, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (229, 212, 4182.46, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (230, 213, 13548.43, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (231, 214, 3548.24, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (232, 215, 3655.45, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (233, 216, 3655.45, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (234, 217, 3655.45, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (235, 218, 9691.48, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (236, 219, 12150.83, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (237, 220, 12150.83, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (238, 221, 12150.83, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (239, 222, 4271.59, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (240, 223, 5046.59, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (241, 224, 5046.59, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (242, 225, 5046.59, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (243, 226, 5375.97, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (244, 227, 6945.36, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (245, 228, 6945.36, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (246, 229, 6945.36, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (247, 230, 5161.55, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (248, 231, 5812.56, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (255, 378, 8800, 2026, 1, '2025-03-10 13:47:01', '2025-03-10 13:47:01');
INSERT INTO `item_prices` VALUES (256, 384, 10000, 2026, 1, '2025-03-11 13:40:27', '2025-03-11 13:40:27');
INSERT INTO `item_prices` VALUES (257, 289, 0, 2026, 0, '2025-03-11 17:09:11', '2025-03-11 17:09:44');
INSERT INTO `item_prices` VALUES (258, 289, 15, 2026, 0, '2025-03-11 17:09:44', '2025-03-11 17:10:09');
INSERT INTO `item_prices` VALUES (259, 289, 20, 2026, 1, '2025-03-11 17:10:09', '2025-03-11 17:10:09');
INSERT INTO `item_prices` VALUES (260, 250, 0, 2026, 1, '2025-03-11 17:26:56', '2025-03-11 17:26:56');
INSERT INTO `item_prices` VALUES (261, 387, 22020, 2026, 1, '2025-03-12 13:47:58', '2025-03-12 13:47:58');
INSERT INTO `item_prices` VALUES (262, 388, 5500, 2026, 1, '2025-03-13 13:16:39', '2025-03-13 13:16:39');
INSERT INTO `item_prices` VALUES (263, 389, 6000, 2026, 1, '2025-04-03 08:51:10', '2025-04-03 08:51:10');
INSERT INTO `item_prices` VALUES (267, 391, 77, 2026, 1, '2025-06-20 13:50:15', '2025-06-20 13:50:15');
INSERT INTO `item_prices` VALUES (269, 19, 25, 2026, 1, '2025-06-20 14:20:59', '2025-06-20 14:20:59');
INSERT INTO `item_prices` VALUES (270, 393, 160.71, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (271, 394, 2760, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (272, 395, 4312.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (273, 396, 2012.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (274, 397, 71.875, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (275, 398, 276, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (276, 399, 3484.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (277, 400, 142.6, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (278, 401, 74.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (279, 402, 82.225, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (280, 403, 82.225, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (281, 404, 46, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (282, 405, 216.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (283, 406, 4933.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (284, 407, 267.26, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (285, 408, 261.05, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (286, 409, 5830.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (287, 410, 3484.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (288, 411, 204.7, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (289, 412, 3093.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (290, 413, 1943.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (291, 414, 345, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (292, 415, 1726.725, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (293, 416, 9.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (294, 417, 39.675, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (295, 418, 2415, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (296, 419, 1483.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (297, 420, 1653.125, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (298, 421, 1509.375, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (299, 422, 3053.71, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (300, 423, 2277, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (301, 424, 70.265, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (302, 425, 25.415, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (303, 426, 52.44, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (304, 427, 117.875, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (305, 428, 117.875, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (306, 429, 1322.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (307, 430, 301.875, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (308, 431, 15.249, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (309, 432, 6468.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (310, 433, 2001, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (311, 434, 155.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (312, 435, 1633, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (313, 436, 88.55, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (314, 437, 88.55, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (315, 438, 136.85, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (316, 439, 3438.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (317, 440, 4186, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (318, 441, 43.125, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (319, 442, 43.125, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (320, 443, 57.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (321, 444, 143.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (322, 445, 215.625, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (323, 446, 26.91, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (324, 447, 47.587, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (325, 448, 287.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (326, 449, 2709.6875, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (327, 450, 517.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (328, 451, 264.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (329, 452, 144.9, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (330, 453, 161, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (331, 454, 195.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (332, 455, 1495, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (333, 456, 6497.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (334, 457, 48.3, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (335, 458, 5318.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (336, 459, 2001, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (337, 460, 79.0625, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (338, 461, 79.0625, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (339, 462, 56.787, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (340, 463, 7.475, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (341, 464, 10, 2026, 0, NULL, '2025-10-03 06:43:33');
INSERT INTO `item_prices` VALUES (342, 465, 1232.8, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (343, 466, 1232.8, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (344, 467, 1232.8, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (345, 468, 0, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (346, 469, 1232.8, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (347, 470, 1233.95, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (348, 471, 1235.1, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (349, 472, 1278.8, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (350, 473, 143.175, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (351, 474, 299, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (352, 475, 1053.4, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (353, 476, 74.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (354, 872, 80.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (355, 873, 287.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (356, 874, 432.4, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (357, 875, 304.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (358, 477, 4577, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (359, 478, 377.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (360, 479, 3708.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (361, 480, 4106.65, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (362, 481, 4106.65, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (363, 482, 4007.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (364, 483, 3692.65, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (365, 484, 377.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (366, 485, 3335, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (367, 486, 460, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (368, 487, 1437.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (369, 488, 2047, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (370, 489, 2070, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (371, 490, 2070, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (372, 491, 1592.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (373, 492, 1592.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (374, 493, 3206.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (375, 494, 3559.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (376, 495, 690, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (377, 496, 575, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (378, 497, 138, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (379, 498, 16.33, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (380, 499, 2857.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (381, 500, 1128.15, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (382, 501, 4600, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (383, 502, 575, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (384, 503, 575, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (385, 504, 1725, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (386, 505, 1150, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (387, 506, 207, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (388, 507, 149.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (389, 508, 218.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (390, 509, 1035, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (391, 510, 1035, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (392, 511, 80.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (393, 512, 184, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (394, 513, 149.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (395, 514, 207, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (396, 515, 368, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (397, 516, 575, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (398, 517, 575, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (399, 518, 517.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (400, 519, 207, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (401, 520, 174.8, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (402, 521, 3220, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (403, 522, 546.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (404, 523, 523.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (405, 524, 281.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (406, 525, 3450, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (407, 526, 3450, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (408, 527, 782, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (409, 528, 801.55, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (410, 529, 7417.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (411, 530, 7475, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (412, 531, 801.55, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (413, 532, 575, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (414, 533, 575, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (415, 534, 1115.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (416, 535, 1115.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (417, 536, 1380, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (418, 537, 860.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (419, 538, 0, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (420, 539, 0, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (421, 540, 0, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (422, 541, 0, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (423, 542, 0, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (424, 543, 0, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (425, 544, 0, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (426, 545, 8280, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (427, 546, 517.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (428, 547, 74.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (429, 548, 1138.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (430, 549, 1138.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (431, 550, 1138.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (432, 551, 1656, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (433, 552, 534.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (434, 553, 471.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (435, 554, 517.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (436, 555, 609.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (437, 556, 914.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (438, 557, 908.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (439, 558, 908.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (440, 559, 78.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (441, 560, 78.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (442, 561, 86.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (443, 562, 425.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (444, 563, 425.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (445, 564, 1069.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (446, 565, 1207.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (447, 566, 1023.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (448, 870, 13800, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (449, 567, 17250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (450, 568, 4600, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (451, 569, 23000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (452, 570, 19550, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (453, 571, 18400, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (454, 572, 11500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (455, 573, 17250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (456, 574, 115000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (457, 575, 18400, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (458, 576, 18400, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (459, 577, 18400, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (460, 578, 23000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (461, 579, 23000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (462, 580, 23000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (463, 581, 11500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (464, 582, 2875, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (465, 583, 2070, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (466, 584, 14375, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (467, 585, 5750, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (468, 586, 12075, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (469, 587, 5750, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (470, 871, 195500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (471, 588, 3967.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (472, 589, 4025, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (473, 590, 1552.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (474, 591, 1552.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (475, 592, 1495, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (476, 593, 1092.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (477, 594, 1092.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (478, 595, 40.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (479, 596, 281.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (480, 597, 230, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (481, 598, 2070, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (482, 599, 115, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (483, 600, 74.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (484, 601, 41.4, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (485, 602, 1116.42, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (486, 603, 55.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (487, 604, 107.64, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (488, 605, 55.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (489, 606, 138, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (490, 607, 110.4, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (491, 608, 110.4, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (492, 609, 110.4, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (493, 610, 117.3, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (494, 611, 115.92, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (495, 612, 55.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (496, 613, 910.8, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (497, 614, 1495, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (498, 615, 690, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (499, 616, 2070, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (500, 617, 1380, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (501, 618, 872.16, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (502, 619, 187.68, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (503, 620, 75.9, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (504, 621, 122.82, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (505, 622, 862.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (506, 623, 2070, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (507, 624, 41.4, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (508, 625, 469.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (509, 626, 37.26, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (510, 627, 2208, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (511, 628, 1395.18, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (512, 629, 1104, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (513, 630, 2070, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (514, 631, 1007.4, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (515, 632, 1056.5625, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (516, 633, 747.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (517, 634, 1056.5625, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (518, 635, 1940.625, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (519, 636, 66.24, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (520, 637, 2846.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (521, 638, 4427.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (522, 639, 103.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (523, 640, 28.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (524, 641, 74.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (525, 642, 230, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (526, 643, 487.6, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (527, 644, 207, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (528, 645, 172.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (529, 646, 253, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (530, 647, 63.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (531, 648, 63.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (532, 649, 3162.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (533, 650, 301.3, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (534, 651, 279.45, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (535, 652, 374.9, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (536, 653, 63.25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (537, 654, 243.8, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (538, 655, 75.6125, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (539, 656, 79.35, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (540, 657, 1377.7, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (541, 658, 85.1, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (542, 659, 1380, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (543, 660, 286.925, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (544, 661, 3.45, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (545, 662, 80.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (546, 663, 90, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (547, 664, 54, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (548, 665, 60, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (549, 666, 780, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (550, 667, 300, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (551, 668, 28, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (552, 669, 40, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (553, 670, 48, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (554, 671, 170, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (555, 672, 24, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (556, 673, 210, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (557, 674, 342, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (558, 675, 222, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (559, 676, 54, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (560, 677, 470, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (561, 678, 240, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (562, 679, 58, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (563, 680, 2900, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (564, 681, 50, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (565, 682, 88, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (566, 683, 5000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (567, 684, 450, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (568, 685, 400, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (569, 686, 300, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (570, 687, 500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (571, 688, 200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (572, 689, 7000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (573, 690, 350, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (574, 691, 350, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (575, 692, 400, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (576, 693, 105, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (577, 694, 690, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (578, 695, 200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (579, 696, 1200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (580, 697, 280, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (581, 698, 400, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (582, 699, 450, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (583, 700, 180, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (584, 701, 100, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (585, 702, 100, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (586, 703, 1150, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (587, 704, 1150, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (588, 705, 30, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (589, 706, 100, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (590, 707, 200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (591, 708, 650, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (592, 709, 900, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (593, 710, 650, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (594, 711, 220, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (595, 712, 5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (596, 713, 50, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (597, 714, 1350, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (598, 715, 250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (599, 716, 250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (600, 717, 200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (601, 718, 150, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (602, 719, 8500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (603, 720, 1500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (604, 721, 800, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (605, 722, 25, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (606, 723, 15, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (607, 724, 75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (608, 725, 80, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (609, 726, 500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (610, 727, 35, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (611, 728, 65, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (612, 729, 6500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (613, 730, 500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (614, 731, 750, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (615, 732, 750, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (616, 733, 750, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (617, 734, 480, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (618, 735, 1100, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (619, 736, 900, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (620, 737, 1200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (621, 738, 350, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (622, 739, 150, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (623, 740, 100, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (624, 741, 225, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (625, 742, 4300, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (626, 743, 180, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (627, 744, 285, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (628, 745, 1200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (629, 746, 1350, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (630, 747, 450, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (631, 748, 260, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (632, 749, 2800, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (633, 750, 50, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (634, 751, 850, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (635, 752, 150, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (636, 753, 3000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (637, 754, 8660, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (638, 755, 10000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (639, 756, 850, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (640, 757, 1500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (641, 758, 550, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (642, 759, 1200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (643, 760, 1200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (644, 761, 150, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (645, 762, 3, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (646, 763, 1000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (647, 764, 500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (648, 765, 500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (649, 766, 550, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (650, 767, 200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (651, 768, 30, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (652, 769, 2500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (653, 770, 12500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (654, 771, 120, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (655, 772, 50, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (656, 773, 100, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (657, 774, 1850, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (658, 775, 250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (659, 776, 550, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (660, 777, 450, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (661, 778, 285, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (662, 779, 50, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (663, 780, 14500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (664, 781, 1350, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (665, 782, 250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (666, 783, 250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (667, 784, 1650, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (668, 785, 1000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (669, 786, 500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (670, 787, 200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (671, 788, 180, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (672, 789, 2646.56, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (673, 790, 2646.56, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (674, 791, 1863.83, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (675, 792, 8203.86, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (676, 793, 4696.16, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (677, 794, 10868, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (678, 795, 1507, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (679, 796, 9045, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (680, 797, 6693.68, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (681, 798, 40991.26, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (682, 799, 46562.32, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (683, 800, 20397.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (684, 801, 20395.76, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (685, 802, 6949.6, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (686, 803, 1687.4, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (687, 804, 1793.6, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (688, 805, 826, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (689, 806, 1888, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (690, 807, 205, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (691, 808, 5.7, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (692, 809, 124, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (693, 810, 8.04, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (694, 811, 747, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (695, 812, 375, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (696, 813, 945, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (697, 814, 2470, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (698, 815, 19, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (699, 816, 32, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (700, 817, 1800, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (701, 818, 1700, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (702, 819, 1000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (703, 820, 1900, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (704, 821, 1200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (705, 822, 1900, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (706, 823, 1900, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (707, 824, 700, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (708, 825, 950, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (709, 826, 2100, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (710, 827, 165, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (711, 828, 4000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (712, 829, 2355, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (713, 830, 989, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (714, 831, 662, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (715, 832, 495, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (716, 833, 2292, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (717, 834, 1604, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (718, 835, 1700, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (719, 836, 1176, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (720, 837, 922, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (721, 838, 65000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (722, 839, 360, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (723, 840, 683, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (724, 841, 754, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (725, 842, 1528, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (726, 843, 2292, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (727, 844, 573, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (728, 845, 1205, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (729, 846, 1528, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (730, 847, 241500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (731, 848, 304750, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (732, 849, 67119.75, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (733, 850, 218442.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (734, 851, 139150, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (735, 852, 86250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (736, 853, 218500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (737, 854, 6900, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (738, 855, 7475, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (739, 856, 3450, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (740, 857, 517.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (741, 858, 2875, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (742, 859, 920, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (743, 860, 9200, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (744, 861, 3576.2815, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (745, 862, 6670, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (746, 863, 920, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (747, 864, 3220, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (748, 865, 67275, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (749, 866, 3220, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (750, 867, 3450, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (751, 868, 1725, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (752, 869, 7935, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (753, 876, 75900, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (754, 877, 86250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (755, 878, 14375, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (756, 879, 46000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (757, 880, 16675, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (758, 881, 15861.95, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (759, 882, 86250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (760, 883, 7475, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (761, 884, 21521.1, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (762, 885, 97750, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (763, 886, 69676.2, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (764, 887, 77560.6, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (765, 888, 32659.77, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (766, 889, 56350, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (767, 890, 92000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (768, 891, 28750, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (769, 892, 51110.6, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (770, 893, 12390.1, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (771, 894, 59328.5, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (772, 895, 80500, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (773, 896, 79179.8, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (774, 897, 65777.7, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (775, 898, 204930, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (776, 899, 69000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (777, 900, 86250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (778, 901, 74750, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (779, 902, 141115.2695, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (780, 903, 20367.926, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (781, 904, 69000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (782, 905, 12650, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (783, 906, 40250, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (784, 907, 85100, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (785, 908, 83950, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (786, 909, 2000000, 2026, 1, NULL, NULL);
INSERT INTO `item_prices` VALUES (787, 464, 0, 2025, 1, '2025-10-03 06:43:33', '2025-10-03 06:43:33');
INSERT INTO `item_prices` VALUES (788, 910, 23500, 2025, 1, '2025-10-14 03:01:03', '2025-10-14 03:01:03');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `item_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_of_measure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` bigint NOT NULL,
  `is_psdbm` bigint NOT NULL,
  `item_category_id` bigint UNSIGNED NOT NULL,
  `account_code_id` bigint UNSIGNED NULL DEFAULT NULL,
  `added_by` bigint UNSIGNED NOT NULL,
  `is_psdbm_approved` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` bigint UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `items_item_category_id_foreign`(`item_category_id` ASC) USING BTREE,
  INDEX `items_account_code_id_foreign`(`account_code_id` ASC) USING BTREE,
  INDEX `items_added_by_foreign`(`added_by` ASC) USING BTREE,
  INDEX `items_approved_by_foreign`(`approved_by` ASC) USING BTREE,
  CONSTRAINT `items_account_code_id_foreign` FOREIGN KEY (`account_code_id`) REFERENCES `account_codes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `items_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `items_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `items_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `item_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 911 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (1, 'ALCOHOL, Ethyl, 500 mL', '12191601-AL-E04', 'ALCOHOL, Ethyl, 500 mL', 'bottle', 1, 1, 1, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (2, 'ALCOHOL, Ethyl, 1 Gallon', '12191601-AL-E03', 'ALCOHOL, Ethyl, 1 Gallon', 'gallon', 1, 1, 1, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (3, 'CLEARBOOK, A4 size', '60121413-CB-P01', 'CLEARBOOK, A4 size', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (4, 'CLEARBOOK, Legal size', '60121413-CB-P02', 'CLEARBOOK, Legal size', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (5, 'ERASER, plastic/rubber', '60121534-ER-P01', 'ERASER, plastic/rubber', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (6, 'SIGN PEN, Extra Fine Tip, Black', '60121524-SP-G01', 'SIGN PEN, Extra Fine Tip, Black', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (7, 'SIGN PEN, Fine Tip, Black', '60121524-SP-G04', 'SIGN PEN, Fine Tip, Black', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (8, 'SIGN PEN, Medium Tip, Black', '60121524-SP-G07', 'SIGN PEN, Medium Tip, Black', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, '2025-03-11 17:30:23');
INSERT INTO `items` VALUES (9, 'SIGN PEN, Extra Fine Tip, Blue', '60121524-SP-G02', 'SIGN PEN, Extra Fine Tip, Blue', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (10, 'SIGN PEN, Fine Tip, Blue', '60121524-SP-G05', 'SIGN PEN, Fine Tip, Blue', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (11, 'SIGN PEN, Medium Tip, Blue', '60121524-SP-G08', 'SIGN PEN, Medium Tip, Blue', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (12, 'SIGN PEN, Extra Fine Tip, Red', '60121524-SP-G03', 'SIGN PEN, Extra Fine Tip, Red', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (13, 'SIGN PEN, Fine Tip, Red', '60121524-SP-G06', 'SIGN PEN, Fine Tip, Red', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (14, 'SIGN PEN, Medium Tip, Red', '60121524-SP-G09', 'SIGN PEN, Medium Tip, Red', 'piece', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (15, 'WRAPPING PAPER', '60121124-WR-P01', 'WRAPPING PAPER', 'pack', 1, 1, 2, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (16, 'DOCUMENT CAMERA', '45121517-DO-C03', 'DOCUMENT CAMERA', 'unit', 1, 1, 3, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (17, 'MULTIMEDIA PROJECTOR', '45111609-MM-P01', 'MULTIMEDIA PROJECTOR', 'unit', 1, 1, 3, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (18, 'BATTERY, dry cell, size AA', '26111702-BT-A02', 'BATTERY, dry cell, size AA', 'pack', 1, 1, 4, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (19, 'BATTERY, dry cell, size AAA', '26111702-BT-A01', 'BATTERY, dry cell, size AAA', 'pack', 1, 1, 4, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (20, 'AIR FRESHENER', '47131812-AF-A01', 'AIR FRESHENER', 'can', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (21, 'BROOM (Walis Tambo)', '47131604-BR-S01', 'BROOM (Walis Tambo)', 'piece', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (22, 'BROOM (Walis Ting-ting)', '47131604-BR-T01', 'BROOM (Walis Ting-ting)', 'piece', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (23, 'CLEANER, Toilet Bowl and Urinal', '47131829-TB-C01', 'CLEANER, Toilet Bowl and Urinal', 'bottle', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (24, 'CLEANSER, Scouring Powder', '47131805-CL-P01', 'CLEANSER, Scouring Powder', 'plastic container', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (25, 'DETERGENT BAR', '47131811-DE-B02', 'DETERGENT BAR', 'piece', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (26, 'DETERGENT POWDER, all purpose', '47131811-DE-P02', 'DETERGENT POWDER, all purpose', 'pouch', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (27, 'DISINFECTANT SPRAY', '47131803-DS-A01', 'DISINFECTANT SPRAY', 'can', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (28, 'DUST PAN', '47131601-DU-P01', 'DUST PAN', 'piece', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (29, 'FLOOR WAX, paste type, red', '47131802-FW-P03', 'FLOOR WAX, paste type, red', 'can', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (30, 'FURNITURE CLEANER', '47131830-FC-A01', 'FURNITURE CLEANER', 'can', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (31, 'HAND SOAP, liquid, 500mL', '73101612-HS-L01', 'HAND SOAP, liquid, 500mL', 'bottle', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (32, 'MOP BUCKET', '47121804-MP-B01', 'MOP BUCKET', 'unit', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (33, 'RAGS', '47131501-RG-C01', 'RAGS', 'kilo', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (34, 'SCOURING PAD', '47131602-SC-N01', 'SCOURING PAD', 'pack', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (35, 'TRASHBAG, XXL size', '47121701-TB-P04', 'TRASHBAG, XXL size', 'roll/pack', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (36, 'TRASHBAG, Large size', '47121701-TB-P05', 'TRASHBAG, Large size', 'roll/pack', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (37, 'TRASHBAG, XL size', '47121701-TB-P06', 'TRASHBAG, XL size', 'roll/pack', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (38, 'WASTEBASKET', '47121702-WB-P01', 'WASTEBASKET', 'piece', 1, 1, 5, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (39, 'INK, for stamp pad', '12171703-SI-P01', 'INK, for stamp pad', 'bottle', 1, 1, 6, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (40, 'DIGITAL VOICE RECORDER', '52161535-DV-R02', 'DIGITAL VOICE RECORDER', 'unit', 1, 1, 7, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (41, 'ACETATE', '13111203-AC-F01', 'ACETATE', 'roll', 1, 1, 9, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (42, 'CARBON FILM, Legal size', '13111201-CF-P02', 'CARBON FILM, Legal size', 'box', 1, 1, 9, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (43, 'FIRE EXTINGUISHER, dry chemical', '46191601-FE-M01', 'FIRE EXTINGUISHER, dry chemical', 'unit', 1, 1, 10, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (44, 'PHILIPPINE NATIONAL FLAG', '55121905-PH-F01', 'PHILIPPINE NATIONAL FLAG', 'piece', 1, 1, 11, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (45, 'MONOBLOC CHAIR, beige', '56101504-CM-B01', 'MONOBLOC CHAIR, beige', 'piece', 1, 1, 12, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (46, 'MONOBLOC CHAIR, white', '56101504-CM-W01', 'MONOBLOC CHAIR, white', 'piece', 1, 1, 12, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (47, 'ELECTRIC FAN, ceiling mount, orbit type', '40101604-EF-C01', 'ELECTRIC FAN, ceiling mount, orbit type', 'unit', 1, 1, 13, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (48, 'ELECTRIC FAN, industrial, ground type', '40101604-EF-G01', 'ELECTRIC FAN, industrial, ground type', 'unit', 1, 1, 13, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (49, 'ELECTRIC FAN, stand type', '40101604-EF-S01', 'ELECTRIC FAN, stand type', 'unit', 1, 1, 13, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (50, 'ELECTRIC FAN, wall mount', '40101604-EF-W01', 'ELECTRIC FAN, wall mount', 'unit', 1, 1, 13, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (51, 'DESKTOP, for Basic Users', '43211507-DSK003', 'DESKTOP, for Basic Users', 'unit', 1, 1, 14, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (52, 'DESKTOP, for Mid-Range Users', '43211507-DSK004', 'DESKTOP, for Mid-Range Users', 'unit', 1, 1, 14, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (53, 'EXTERNAL HARD DRIVE', '43201827-HD-X02', 'EXTERNAL HARD DRIVE', 'unit', 1, 1, 14, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (54, 'FLASH DRIVE', '43202010-FD-U04', 'FLASH DRIVE', 'piece', 1, 1, 14, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (55, 'LAPTOP COMPUTER, for Mid-range Users', '43211503-LAP004', 'LAPTOP COMPUTER, for Mid-range Users', 'unit', 1, 1, 14, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (56, 'LAPTOP COMPUTER, Lightweight', '43211503-LAP003', 'LAPTOP COMPUTER, Lightweight', 'unit', 1, 1, 14, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (57, 'COMPUTER MOUSE, Wireless', '43211708-MO-O02', 'COMPUTER MOUSE, Wireless', 'unit', 1, 1, 14, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (58, 'PRINTER, Laser, Monochrome', '43212105-PR-L01', 'PRINTER, Laser, Monochrome', 'unit', 1, 1, 14, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (59, 'LIGHT-EMITTING DIODE (LED) LIGHT BULB, 7 watts', '39101628-LB-L01', 'LIGHT-EMITTING DIODE (LED) LIGHT BULB, 7 watts', 'piece', 1, 1, 15, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (60, 'LIGHT-EMITTING DIODE (LED) LINEAR TUBE, 18 watts', '39101628-LT-L01', 'LIGHT-EMITTING DIODE (LED) LINEAR TUBE, 18 watts', 'piece', 1, 1, 15, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (61, 'GLUE, all-purpose', '31201610-GL-J02', 'GLUE, all-purpose', 'bottle', 1, 1, 16, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (62, 'STAPLE WIRE, heavy duty (binder type), 23/13', '31151804-SW-H01', 'STAPLE WIRE, heavy duty (binder type), 23/13', 'box', 1, 1, 16, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (63, 'STAPLE WIRE, standard', '31151804-SW-S01', 'STAPLE WIRE, standard', 'box', 1, 1, 16, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (64, 'TAPE, electrical', '31201502-TA-E02', 'TAPE, electrical', 'roll', 1, 1, 16, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (65, 'TAPE, masking, 24mm', '31201503-TA-M01', 'TAPE, masking, 24mm', 'roll', 1, 1, 16, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (66, 'TAPE, masking, 48 mm', '31201503-TA-M02', 'TAPE, masking, 48 mm', 'roll', 1, 1, 16, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (67, 'TAPE, packaging, 48 mm', '31201517-TA-P01', 'TAPE, packaging, 48 mm', 'roll', 1, 1, 16, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (68, 'TAPE, transparent, 24mm', '31201512-TA-T01', 'TAPE, transparent, 24mm', 'roll', 1, 1, 16, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (69, 'TAPE, transparent, 48 mm', '31201512-TA-T02', 'TAPE, transparent, 48 mm', 'roll', 1, 1, 16, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (70, 'TWINE, plastic', '31151507-TW-P01', 'TWINE, plastic', 'roll', 1, 1, 16, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (71, 'RULER, plastic, 450mm', '41111604-RU-P02', 'RULER, plastic, 450mm', 'piece', 1, 1, 17, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (72, 'BLADE, for general purpose cutter/utility knife', '44121612-BL-H01', 'BLADE, for general purpose cutter/utility knife', 'tube', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (73, 'BINDING AND PUNCHING MACHINE', '44101602-PB-M01', 'BINDING AND PUNCHING MACHINE', 'unit', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (74, 'BINDING RING/COMB, plastic, 32 mm', '44122037-RB-P10', 'BINDING RING/COMB, plastic, 32 mm', 'bundle', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (75, 'CALCULATOR, Compact', '44101807-CA-C01', 'CALCULATOR, Compact', 'unit', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (76, 'CHALK, white enamel', '44121710-CH-W01', 'CHALK, white enamel', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (77, 'CLIP, backfold, 19mm', '44122105-BF-C01', 'CLIP, backfold, 19mm', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (78, 'CLIP, backfold, 25mm', '44122105-BF-C02', 'CLIP, backfold, 25mm', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (79, 'CLIP, backfold, 32mm', '44122105-BF-C03', 'CLIP, backfold, 32mm', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (80, 'CLIP, backfold, 50mm', '44122105-BF-C04', 'CLIP, backfold, 50mm', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (81, 'CORRECTION TAPE', '44121801-CT-R02', 'CORRECTION TAPE', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (82, 'CUTTER/UTILITY KNIFE, for general purpose', '44121612-CU-H01', 'CUTTER/UTILITY KNIFE, for general purpose', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (83, 'DATA FILE BOX', '44111515-DF-B01', 'DATA FILE BOX', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (84, 'DATA FOLDER', '44122011-DF-F01', 'DATA FOLDER', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (85, 'DATER STAMP', '44103202-DS-M01', 'DATER STAMP', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (86, 'ENVELOPE, Documentary, A4', '44121506-EN-D01', 'ENVELOPE, Documentary, A4', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (87, 'ENVELOPE, Documentary, legal,', '44121506-EN-D02', 'ENVELOPE, Documentary, legal,', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (88, 'ENVELOPE, Expanding, Kraft', '44121506-EN-X01', 'ENVELOPE, Expanding, Kraft', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (89, 'ENVELOPE, Expanding, Plastic', '44121506-EN-X02', 'ENVELOPE, Expanding, Plastic', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (90, 'ENVELOPE, Mailing', '44121506-EN-M02', 'ENVELOPE, Mailing', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (91, 'ENVELOPE, Mailing, with window', '44121504-EN-W02', 'ENVELOPE, Mailing, with window', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (92, 'ERASER, felt, for blackboard/whiteboard', '44111912-ER-B01', 'ERASER, felt, for blackboard/whiteboard', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (93, 'FASTENER', '44122118-FA-P01', 'FASTENER', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (94, 'FILE ORGANIZER, expanding, plastic, legal', '44111515-FO-X01', 'FILE ORGANIZER, expanding, plastic, legal', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (95, 'FILE TAB DIVIDER, A4', '44122018-FT-D01', 'FILE TAB DIVIDER, A4', 'set', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (96, 'FILE TAB DIVIDER, Legal', '44122018-FT-D02', 'FILE TAB DIVIDER, Legal', 'set', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (97, 'FOLDER, Fancy with slide, A4', '44122011-FO-F01', 'FOLDER, Fancy with slide, A4', 'bundle', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (98, 'FOLDER, Fancy with slide, legal', '44122011-FO-F02', 'FOLDER, Fancy with slide, legal', 'bundle', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (99, 'FOLDER, L-type, A4', '44122011-FO-L01', 'FOLDER, L-type, A4', 'pack', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (100, 'FOLDER, L-type, Legal', '44122011-FO-L02', 'FOLDER, L-type, Legal', 'pack', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (101, 'FOLDER, pressboard', '44122027-FO-P01', 'FOLDER, pressboard', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (102, 'FOLDER with tab, A4', '44122011-FO-T01', 'FOLDER with tab, A4', 'pack', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (103, 'FOLDER with tab, Legal', '44122011-FO-T02', 'FOLDER with tab, Legal', 'pack', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (104, 'INDEX TAB', '44122008-IT-T01', 'INDEX TAB', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (105, 'MARKER, Flourescent', '44121716-MA-F01', 'MARKER, Flourescent', 'set', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (106, 'MARKER, Permanent, Black', '44121708-MP-B01', 'MARKER, Permanent, Black', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (107, 'MARKER, Permanent, Blue', '44121708-MP-B02', 'MARKER, Permanent, Blue', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (108, 'MARKER, Permanent, Red', '44121708-MP-B03', 'MARKER, Permanent, Red', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (109, 'MARKER, Whiteboard, Black', '44121708-MW-B01', 'MARKER, Whiteboard, Black', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (110, 'MARKER, Whiteboard, Blue', '44121708-MW-B02', 'MARKER, Whiteboard, Blue', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (111, 'MARKER, Whiteboard, Red', '44121708-MW-B03', 'MARKER, Whiteboard, Red', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (112, 'PAPER CLIP, vinly/plastic coated, 33mm', '44122104-PC-G01', 'PAPER CLIP, vinly/plastic coated, 33mm', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (113, 'PAPER CLIP, vinly/plastic coated, jumbo, 50mm', '44122104-PC-J02', 'PAPER CLIP, vinly/plastic coated, jumbo, 50mm', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (114, 'PAPER SHREDDER', '44101603-PS-M02', 'PAPER SHREDDER', 'unit', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (115, 'PAPER TRIMMER/CUTTING MACHINE', '44101601-PT-M02', 'PAPER TRIMMER/CUTTING MACHINE', 'unit', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (116, 'PENCIL, lead/graphite, with eraser', '44121706-PE-L01', 'PENCIL, lead/graphite, with eraser', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (117, 'PENCIL SHARPENER', '44121619-PS-M01', 'PENCIL SHARPENER', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (118, 'PUNCHER, paper, heavy duty', '44101602-PU-P01', 'PUNCHER, paper, heavy duty', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (119, 'RUBBER BAND No. 18', '44122101-RU-B01', 'RUBBER BAND No. 18', 'box', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (120, 'STAMP PAD, felt', '44121905-SP-F01', 'STAMP PAD, felt', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (121, 'SCISSORS, symmetrical/asymmetrical', '44121618-SS-S01', 'SCISSORS, symmetrical/asymmetrical', 'pair', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (122, 'STAPLER, standard type', '44121615-ST-S01', 'STAPLER, standard type', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (123, 'STAPLER, heavy duty (binder)', '44121615-ST-B01', 'STAPLER, heavy duty (binder)', 'unit', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (124, 'STAPLE REMOVER, plier-type', '44121613-SR-P02', 'STAPLE REMOVER, plier-type', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (125, 'TAPE DISPENSER, table top', '44121605-TD-T01', 'TAPE DISPENSER, table top', 'piece', 1, 1, 18, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (126, 'CARTOLINA, assorted colors', '14111525-CA-A01', 'CARTOLINA, assorted colors', 'pack', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (127, 'COMPUTER CONTINUOUS FORM, 1 ply, 280mm x 241mm', '14111506-CF-L11', 'COMPUTER CONTINUOUS FORM, 1 ply, 280mm x 241mm', 'box', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (128, 'COMPUTER CONTINUOUS FORM, 1 ply, 280mm x 378mm', '14111506-CF-L12', 'COMPUTER CONTINUOUS FORM, 1 ply, 280mm x 378mm', 'box', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (129, 'NOTEPAD, stick-on, 50mm x 76mm', '14111514-NP-S02', 'NOTEPAD, stick-on, 50mm x 76mm', 'pad', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (130, 'NOTEPAD, stick-on, 76mm x 100mm', '14111514-NP-S04', 'NOTEPAD, stick-on, 76mm x 100mm', 'pad', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (131, 'NOTEPAD, stick-on, 76mm x 76mm', '14111514-NP-S03', 'NOTEPAD, stick-on, 76mm x 76mm', 'pad', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (132, 'STENO NOTEBOOK', '14111514-NB-S02', 'STENO NOTEBOOK', 'piece', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (133, 'PAPER, MULTICOPY A4', '14111507-PP-M01', 'PAPER, MULTICOPY A4', 'ream', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (134, 'PAPER, MULTICOPY LEGAL', '14111507-PP-M02', 'PAPER, MULTICOPY LEGAL', 'ream', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (135, 'PAPER, MULTIPURPOSE A4', '14111507-PP-C01', 'PAPER, MULTIPURPOSE A4', 'ream', 1, 1, 19, 6, 1, 1, 1, NULL, '2025-03-11 16:59:49');
INSERT INTO `items` VALUES (136, 'PAPER, MULTIPURPOSE LEGAL', '14111507-PP-C02', 'PAPER, MULTIPURPOSE LEGAL', 'ream', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (137, 'PAD PAPER, ruled', '14111531-PP-R01', 'PAD PAPER, ruled', 'pad', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (138, 'PAPER, parchment', '14111503-PA-P01', 'PAPER, parchment', 'box', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (139, 'RECORD BOOK, 300 PAGES', '14111531-RE-B01', 'RECORD BOOK, 300 PAGES', 'book', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (140, 'RECORD BOOK, 500 PAGES', '14111531-RE-B02', 'RECORD BOOK, 500 PAGES', 'book', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (141, 'TISSUE, INTERFOLDED PAPER TOWEL', '14111704-TT-P04', 'TISSUE, INTERFOLDED PAPER TOWEL', 'pack', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (142, 'TOILET TISSUE PAPER, 2 ply', '14111704-TT-P02', 'TOILET TISSUE PAPER, 2 ply', 'pack', 1, 1, 19, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (143, 'HAND SANITIZER', '53131626-HS-S01', 'HAND SANITIZER', 'bottle', 1, 1, 20, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (144, 'INSECTICIDE', '10191509-IN-A01', 'INSECTICIDE', 'can', 1, 1, 21, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (145, 'HANDBOOK ON PHILIPPINE GOVERNMENT PROCUREMENT', '55101524-RA-H01', 'HANDBOOK ON PHILIPPINE GOVERNMENT PROCUREMENT', 'book', 1, 1, 22, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (146, 'DRUM CARTRIDGE, BROTHER DR-3455, Black', '44103109-BR-D05', 'DRUM CARTRIDGE, BROTHER DR-3455, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (147, 'INK CARTRIDGE, CANON CL-741, Colored', '44103105-CA-C04', 'INK CARTRIDGE, CANON CL-741, Colored', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (148, 'INK CARTRIDGE, CANON CL-811, Colored', '44103105-CA-C02', 'INK CARTRIDGE, CANON CL-811, Colored', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (149, 'INK CARTRIDGE, CANON PG-740, Black', '44103105-CA-B04', 'INK CARTRIDGE, CANON PG-740, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (150, 'INK CARTRIDGE, CANON PG-810, Black', '44103105-CA-B02', 'INK CARTRIDGE, CANON PG-810, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (151, 'INK CARTRIDGE, EPSON C13T664100 (T6641), Black', '44103105-EP-B17', 'INK CARTRIDGE, EPSON C13T664100 (T6641), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (152, 'INK CARTRIDGE, EPSON C13T664200 (T6642), Cyan', '44103105-EP-C17', 'INK CARTRIDGE, EPSON C13T664200 (T6642), Cyan', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (153, 'INK CARTRIDGE, EPSON C13T664300 (T6643), Magenta', '44103105-EP-M17', 'INK CARTRIDGE, EPSON C13T664300 (T6643), Magenta', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (154, 'INK CARTRIDGE, EPSON C13T664400 (T6644), Yellow', '44103105-EP-Y17', 'INK CARTRIDGE, EPSON C13T664400 (T6644), Yellow', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (155, 'INK CARTRIDGE, HP C2P04AA (HP62), Black', '44103105-HP-B40', 'INK CARTRIDGE, HP C2P04AA (HP62), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (156, 'INK CARTRIDGE, HP C2P06AA (HP62), Tri-color', '44103105-HP-T40', 'INK CARTRIDGE, HP C2P06AA (HP62), Tri-color', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (157, 'INK CARTRIDGE, HP C9351AA (HP21), Black', '44103105-HP-B09', 'INK CARTRIDGE, HP C9351AA (HP21), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (158, 'INK CARTRIDGE, HP C9352AA (HP22), Tri-color', '44103105-HP-T10', 'INK CARTRIDGE, HP C9352AA (HP22), Tri-color', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (159, 'INK CARTRIDGE, HP CC640WA (HP60), Black', '44103105-HP-B17', 'INK CARTRIDGE, HP CC640WA (HP60), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (160, 'INK CARTRIDGE, HP CC643WA (HP60), Tri-color', '44103105-HP-T17', 'INK CARTRIDGE, HP CC643WA (HP60), Tri-color', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (161, 'INK CARTRIDGE, HP CD972AA (HP920XL), Cyan', '44103105-HX-C40', 'INK CARTRIDGE, HP CD972AA (HP920XL), Cyan', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (162, 'INK CARTRIDGE, HP CD973AA (HP920XL), Magenta', '44103105-HX-M40', 'INK CARTRIDGE, HP CD973AA (HP920XL), Magenta', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (163, 'INK CARTRIDGE, HP CD974AA (HP920XL), Yellow', '44103105-HX-Y40', 'INK CARTRIDGE, HP CD974AA (HP920XL), Yellow', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (164, 'INK CARTRIDGE, HP CD975AA (HP920XL), Black', '44103105-HX-B40', 'INK CARTRIDGE, HP CD975AA (HP920XL), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (165, 'INK CARTRIDGE, HP CH561WA (HP61), Black', '44103105-HP-B20', 'INK CARTRIDGE, HP CH561WA (HP61), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (166, 'INK CARTRIDGE, HP CH562WA (HP61), Tri-color', '44103105-HP-T20', 'INK CARTRIDGE, HP CH562WA (HP61), Tri-color', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (167, 'INK CARTRIDGE, HP CN045AA (HP950XL), Black', '44103105-HX-B43', 'INK CARTRIDGE, HP CN045AA (HP950XL), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (168, 'INK CARTRIDGE, HP CN046AA (HP951XL), Cyan', '44103105-HX-C43', 'INK CARTRIDGE, HP CN046AA (HP951XL), Cyan', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (169, 'INK CARTRIDGE, HP CN047AA (HP951XL), Magenta', '44103105-HX-M43', 'INK CARTRIDGE, HP CN047AA (HP951XL), Magenta', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (170, 'INK CARTRIDGE, HP CN048AA (HP951XL), Yellow', '44103105-HX-Y43', 'INK CARTRIDGE, HP CN048AA (HP951XL), Yellow', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (171, 'INK CARTRIDGE, HP CN692AA (HP704), Black', '44103105-HP-B36', 'INK CARTRIDGE, HP CN692AA (HP704), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (172, 'INK CARTRIDGE, HP CN693AA (HP704), Tri-color', '44103105-HP-T36', 'INK CARTRIDGE, HP CN693AA (HP704), Tri-color', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (173, 'INK CARTRIDGE, HP CZ107AA (HP678), Black', '44103105-HP-B33', 'INK CARTRIDGE, HP CZ107AA (HP678), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (174, 'INK CARTRIDGE, HP CZ108AA (HP678), Tri-color', '44103105-HP-T33', 'INK CARTRIDGE, HP CZ108AA (HP678), Tri-color', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (175, 'INK CARTRIDGE, HP F6V26AA (HP680), Tri-color', '44103105-HP-T43', 'INK CARTRIDGE, HP F6V26AA (HP680), Tri-color', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (176, 'INK CARTRIDGE, HP F6V27AA (HP680), Black', '44103105-HP-B43', 'INK CARTRIDGE, HP F6V27AA (HP680), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (177, 'INK CARTRIDGE, HP L0S51AA (HP955), Cyan Original', '44103105-HP-C50', 'INK CARTRIDGE, HP L0S51AA (HP955), Cyan Original', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (178, 'INK CARTRIDGE, HP L0S54AA (HP955), Magenta Original', '44103105-HP-M50', 'INK CARTRIDGE, HP L0S54AA (HP955), Magenta Original', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (179, 'INK CARTRIDGE, HP L0S57AA (HP955), Yellow Original', '44103105-HP-Y50', 'INK CARTRIDGE, HP L0S57AA (HP955), Yellow Original', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (180, 'INK CARTRIDGE, HP L0S60AA (HP955), Black Original', '44103105-HP-B50', 'INK CARTRIDGE, HP L0S60AA (HP955), Black Original', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (181, 'INK CARTRIDGE, HP L0S63AA (HP955XL), Cyan Original', '44103105-HX-C48', 'INK CARTRIDGE, HP L0S63AA (HP955XL), Cyan Original', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (182, 'INK CARTRIDGE, HP L0S66AA (HP955XL), Magenta', '44103105-HX-M48', 'INK CARTRIDGE, HP L0S66AA (HP955XL), Magenta', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (183, 'INK CARTRIDGE, HP L0S69AA (HP955XL), Yellow', '44103105-HX-Y48', 'INK CARTRIDGE, HP L0S69AA (HP955XL), Yellow', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (184, 'INK CARTRIDGE, HP L0S72AA (HP955XL), Black Original', '44103105-HX-B48', 'INK CARTRIDGE, HP L0S72AA (HP955XL), Black Original', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (185, 'INK CARTRIDGE, HP T6L89AA (HP905), Cyan Original', '44103105-HP-C51', 'INK CARTRIDGE, HP T6L89AA (HP905), Cyan Original', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (186, 'INK CARTRIDGE, HP T6L93AA (HP905), Magenta Original', '44103105-HP-M51', 'INK CARTRIDGE, HP T6L93AA (HP905), Magenta Original', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (187, 'INK CARTRIDGE, HP T6L97AA (HP905), Yellow Original', '44103105-HP-Y51', 'INK CARTRIDGE, HP T6L97AA (HP905), Yellow Original', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (188, 'INK CARTRIDGE, HP T6M01AA (HP905), Black Original', '44103105-HP-B51', 'INK CARTRIDGE, HP T6M01AA (HP905), Black Original', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (189, 'RIBBON CARTRIDGE, EPSON C13S015516 (#8750), Black', '44103112-EP-R05', 'RIBBON CARTRIDGE, EPSON C13S015516 (#8750), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (190, 'RIBBON CARTRIDGE, EPSON C13S015632, Black', '44103112-EP-R13', 'RIBBON CARTRIDGE, EPSON C13S015632, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (191, 'RIBBON CARTRIDGE, EPSON C13S015531 (S015086)', '44103112-EP-R07', 'RIBBON CARTRIDGE, EPSON C13S015531 (S015086)', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (192, 'TONER CARTRIDGE, BROTHER TN-3320, Black', '44103103-BR-B09', 'TONER CARTRIDGE, BROTHER TN-3320, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (193, 'TONER CARTRIDGE, BROTHER TN-3350, Black', '44103103-BR-B11', 'TONER CARTRIDGE, BROTHER TN-3350, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (194, 'TONER CARTRIDGE, BROTHER TN-3478, Black', '44103103-BR-B15', 'TONER CARTRIDGE, BROTHER TN-3478, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (195, 'TONER CARTRIDGE, BROTHER TN-456 Black, High Yield', '44103103-BR-B16', 'TONER CARTRIDGE, BROTHER TN-456 Black, High Yield', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (196, 'TONER CARTRIDGE, BROTHER TN-456 Cyan, High Yield', '44103103-BR-C03', 'TONER CARTRIDGE, BROTHER TN-456 Cyan, High Yield', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (197, 'TONER CARTRIDGE, BROTHER TN-456 Magenta, High Yield', '44103103-BR-M03', 'TONER CARTRIDGE, BROTHER TN-456 Magenta, High Yield', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (198, 'TONER CARTRIDGE, BROTHER TN-456 Yellow, High Yield', '44103103-BR-Y03', 'TONER CARTRIDGE, BROTHER TN-456 Yellow, High Yield', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (199, 'TONER CARTRIDGE, CANON CRG-324 II', '44103103-CA-B00', 'TONER CARTRIDGE, CANON CRG-324 II', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (200, 'TONER CARTRIDGE, HP CB435A, Black', '44103103-HP-B12', 'TONER CARTRIDGE, HP CB435A, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (201, 'TONER CARTRIDGE, HP CE255A, Black', '44103103-HP-B18', 'TONER CARTRIDGE, HP CE255A, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (202, 'TONER CARTRIDGE, HP CE278A, Black', '44103103-HP-B21', 'TONER CARTRIDGE, HP CE278A, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (203, 'TONER CARTRIDGE, HP CE285A (HP85A), Black', '44103103-HP-B22', 'TONER CARTRIDGE, HP CE285A (HP85A), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (204, 'TONER CARTRIDGE, HP CE310A, Black', '44103103-HP-B23', 'TONER CARTRIDGE, HP CE310A, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (205, 'TONER CARTRIDGE, HP CE311A, Cyan', '44103103-HP-C23', 'TONER CARTRIDGE, HP CE311A, Cyan', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (206, 'TONER CARTRIDGE, HP CE312A, Yellow', '44103103-HP-Y23', 'TONER CARTRIDGE, HP CE312A, Yellow', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (207, 'TONER CARTRIDGE, HP CE313A, Magenta', '44103103-HP-M23', 'TONER CARTRIDGE, HP CE313A, Magenta', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (208, 'TONER CARTRIDGE, HP CE505A, Black', '44103103-HP-B28', 'TONER CARTRIDGE, HP CE505A, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (209, 'TONER CARTRIDGE, HP CF217A (HP17A), Black LaserJet', '44103103-HP-B52', 'TONER CARTRIDGE, HP CF217A (HP17A), Black LaserJet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (210, 'TONER CARTRIDGE, HP CF226A (HP26A), Black LaserJet', '44103103-HP-B53', 'TONER CARTRIDGE, HP CF226A (HP26A), Black LaserJet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (211, 'TONER CARTRIDGE, HP CF281A (HP81A), Black LaserJet', '44103103-HP-B56', 'TONER CARTRIDGE, HP CF281A (HP81A), Black LaserJet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (212, 'TONER CARTRIDGE, HP CF283A (HP83A), LaserJet Black', '44103103-HP-B57', 'TONER CARTRIDGE, HP CF283A (HP83A), LaserJet Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (213, 'TONER CARTRIDGE, HP CF287A (HP87), Black', '44103103-HP-B58', 'TONER CARTRIDGE, HP CF287A (HP87), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (214, 'TONER CARTRIDGE, HP CF350A, Black Laserjet', '44103103-HP-B60', 'TONER CARTRIDGE, HP CF350A, Black Laserjet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (215, 'TONER CARTRIDGE, HP CF351A, Cyan Laserjet', '44103103-HP-C60', 'TONER CARTRIDGE, HP CF351A, Cyan Laserjet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (216, 'TONER CARTRIDGE, HP CF352A, Yellow Laserjet', '44103103-HP-Y60', 'TONER CARTRIDGE, HP CF352A, Yellow Laserjet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (217, 'TONER CARTRIDGE, HP CF353A, Magenta Laserjet', '44103103-HP-M60', 'TONER CARTRIDGE, HP CF353A, Magenta Laserjet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (218, 'TONER CARTRIDGE, HP CF360A (HP508A), Black LaserJet', '44103103-HP-B61', 'TONER CARTRIDGE, HP CF360A (HP508A), Black LaserJet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (219, 'TONER CARTRIDGE, HP CF361A (HP508A), Cyan LaserJet', '44103103-HP-C61', 'TONER CARTRIDGE, HP CF361A (HP508A), Cyan LaserJet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (220, 'TONER CARTRIDGE, HP CF362A (HP508A), Yellow LaserJet', '44103103-HP-Y61', 'TONER CARTRIDGE, HP CF362A (HP508A), Yellow LaserJet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (221, 'TONER CARTRIDGE, HP CF363A (HP508A), Magenta LaserJet', '44103103-HP-M61', 'TONER CARTRIDGE, HP CF363A (HP508A), Magenta LaserJet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (222, 'TONER CARTRIDGE, HP CF400A (HP201A), Black LaserJet', '44103103-HP-B62', 'TONER CARTRIDGE, HP CF400A (HP201A), Black LaserJet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (223, 'TONER CARTRIDGE, HP CF401A (HP201A), Cyan LaserJet', '44103103-HP-C62', 'TONER CARTRIDGE, HP CF401A (HP201A), Cyan LaserJet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (224, 'TONER CARTRIDGE, HP CF402A (HP201A), Yellow LaserJet', '44103103-HP-Y62', 'TONER CARTRIDGE, HP CF402A (HP201A), Yellow LaserJet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (225, 'TONER CARTRIDGE, HP CF403A (HP201A), Magenta LaserJet', '44103103-HP-M62', 'TONER CARTRIDGE, HP CF403A (HP201A), Magenta LaserJet', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (226, 'TONER CARTRIDGE, HP CF410A (HP410A), Black', '44103103-HP-B63', 'TONER CARTRIDGE, HP CF410A (HP410A), Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (227, 'TONER CARTRIDGE, HP CF411A (HP410A), Cyan', '44103103-HP-C63', 'TONER CARTRIDGE, HP CF411A (HP410A), Cyan', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (228, 'TONER CARTRIDGE, HP CF412A (HP410A), Yellow', '44103103-HP-Y63', 'TONER CARTRIDGE, HP CF412A (HP410A), Yellow', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (229, 'TONER CARTRIDGE, HP CF413A (HP410A), Magenta', '44103103-HP-M63', 'TONER CARTRIDGE, HP CF413A (HP410A), Magenta', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (230, 'TONER CARTRIDGE, HP Q2612A, Black', '44103103-HP-B34', 'TONER CARTRIDGE, HP Q2612A, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (231, 'TONER CARTRIDGE, HP Q7553A, Black', '44103103-HP-B48', 'TONER CARTRIDGE, HP Q7553A, Black', 'cart', 1, 1, 23, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (232, 'Business function specific software', '43231513-SFT-001', 'Business function specific software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (233, 'Finance accounting and enterprise resource planning ERP so', '43231602-SFT-002', 'Finance accounting and enterprise resource planning ERP so', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (234, 'Computer game or entertainment software', '43232004-SFT-003', 'Computer game or entertainment software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (235, 'Content authoring and editing software', '43232107-SFT-004', 'Content authoring and editing software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (236, 'Content management software', '43232202-SFT-005', 'Content management software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (237, 'Data management and query software', '43232304-SFT-006', 'Data management and query software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (238, 'Development software', '43232402-SFT-007', 'Development software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (239, 'Educational or reference software', '43232505-SFT-008', 'Educational or reference software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (240, 'Industry specific software', '43232603-SFT-009', 'Industry specific software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (241, 'Information exchange software', '43233501-SFT-016', 'Information exchange software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (242, 'Network applications software', '43232701-SFT-010', 'Network applications software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (243, 'Network management software', '43232802-SFT-011', 'Network management software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (244, 'Networking software', '43232905-SFT-012', 'Networking software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (245, 'Operating environment software', '43233004-SFT-013', 'Operating environment software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (246, 'Security and protection software', '43233205-SFT-014', 'Security and protection software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (247, 'Utility and device driver software', '43233405-SFT-015', 'Utility and device driver software', 'license', 1, 1, 24, 6, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (249, 'A3 Paper, 70gsm', '', 'A3 Paper, 70gsm', ' ream ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (250, 'Hi Brite Imp Book, Paper 70 AF 100 25x38, Size: 635x965mm, Basic Weight: 100gsm, No. of Sheets: 250 sheets/ream', 'DF-123123', 'Hi Brite Imp Book, Paper 70 AF 100 25x38, Size: 635x965mm, Basic Weight: 100gsm, No. of Sheets: 250 sheets/ream', 'ream', 0, 0, 2, 6, 1, 0, NULL, NULL, '2025-03-11 17:26:56');
INSERT INTO `items` VALUES (251, 'Adhesive tape 2\" width', '', 'Adhesive tape 2\" width', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (252, 'Aluminum Duct Tape, 2 inches', '', 'Aluminum Duct Tape, 2 inches', ' roll ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (253, 'Ballpen, Black (0.5 mm)', '', 'Ballpen, Black (0.5 mm)', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (254, 'Ballpen, Blue  (0.5 mm)', '', 'Ballpen, Blue  (0.5 mm)', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (255, 'Ballpen, Red  (0.5 mm)', '', 'Ballpen, Red  (0.5 mm)', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (256, 'Ballpen,Green  (0.5 mm)', '', 'Ballpen,Green  (0.5 mm)', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (257, 'Blueprint paper,Copyer Diazo Paper (Amonia Process) 107 cm x 46 meters, 42 in. x 50 yds', '', 'Blueprint paper,Copyer Diazo Paper (Amonia Process) 107 cm x 46 meters, 42 in. x 50 yds', ' rolls ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (258, 'Board Paper assorted color long', '', 'Board Paper assorted color long', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (259, 'Bookends holder (big),metal', '', 'Bookends holder (big),metal', ' box ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (260, 'Bookpaper, white, short 70gsm', '', 'Bookpaper, white, short 70gsm', 'ream', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (261, 'Bookpaper,Blue Multi Color Copy (Long)', '', 'Bookpaper,Blue Multi Color Copy (Long)', ' ream ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (262, 'Bookpaper,Green, Multi Color Copy (Long)', '', 'Bookpaper,Green, Multi Color Copy (Long)', ' ream ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (263, 'Bookpaper,Pink, Multi Color Copy (Long)', '', 'Bookpaper,Pink, Multi Color Copy (Long)', 'ream', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (264, 'Bookpaper,Yellow, Multi Color Copy (Long)', '', 'Bookpaper,Yellow, Multi Color Copy (Long)', ' ream ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (265, 'Cartolina paper, Dark Green', '', 'Cartolina paper, Dark Green', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (266, 'Cartolina paper, Dark Yellow', '', 'Cartolina paper, Dark Yellow', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (267, 'Cartolina paper, White', '', 'Cartolina paper, White', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (268, 'Cartolina paper,black', '', 'Cartolina paper,black', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (269, 'Cartolina paper,Dark blue', '', 'Cartolina paper,Dark blue', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (270, 'Cartolina paper,Dark Orange', '', 'Cartolina paper,Dark Orange', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (271, 'Cartolina paper,light orange imported', '', 'Cartolina paper,light orange imported', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (272, 'Cartolina paper,red', '', 'Cartolina paper,red', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (273, 'Cartolina, Light Blue, thick Substance120', '', 'Cartolina, Light Blue, thick Substance120', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (274, 'Cartolina, Light Green, thick Substance120', '', 'Cartolina, Light Green, thick Substance120', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (275, 'Cartolina, Light Yellow, thick Substance120', '', 'Cartolina, Light Yellow, thick Substance120', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (276, 'Cartolina, white, thick Substance120', '', 'Cartolina, white, thick Substance120', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (277, 'Certificate holder (short)', '', 'Certificate holder (short)', 'pc', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (278, 'Certificate holder (A4)', '', 'Certificate holder (A4)', ' box ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (279, 'Certificate Paper (Long,)', '', 'Certificate Paper (Long,)', ' ream ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (280, 'Certificate Paper(short)', '', 'Certificate Paper(short)', ' ream ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (281, 'Certificate Paper Laid Specialty Paper work', '', 'Certificate Paper Laid Specialty Paper work', ' pack ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (282, 'Class Record (College)', '', 'Class Record (College)', ' piece ', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (283, 'Colored Chalk', '', 'Colored Chalk', 'box', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (284, 'COR Computer Continuos Forms, 3 ply, 9 1/2\"x5.5\" S20, 500 sets/box', '', 'COR Computer Continuos Forms, 3 ply, 9 1/2\"x5.5\" S20, 500 sets/box', 'box', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (285, 'Corks sheets , 2x3', '', 'Corks sheets , 2x3', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (286, 'Cutter, heavy duty', '', 'Cutter, heavy duty', 'pcs', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (287, 'Data File Box, w/cover (Big)', '', 'Data File Box, w/cover (Big)', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (288, 'Diploma Jacket (11.0x8.50) Logo: Gold Diameter: 3.5\" ', '', 'Diploma Jacket (11.0x8.50) Logo: Gold Diameter: 3.5\" ', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (289, 'Data Folder, made of chipboard, taglia', 'DF-123123', 'Data Folder, made of chipboard, taglia', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, '2025-03-11 17:09:11');
INSERT INTO `items` VALUES (290, 'Engineers field notebook', '', 'Engineers field notebook', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (291, 'FC arch file folder, 2 ring, 3 horizontal, blue', '', 'FC arch file folder, 2 ring, 3 horizontal, blue', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (292, 'Felt Paper BLUE', '', 'Felt Paper BLUE', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (293, 'Felt Paper RED', '', 'Felt Paper RED', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (294, 'Felt Paper YELLOW', '', 'Felt Paper YELLOW', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (295, 'Finger Moistener', '', 'Finger Moistener', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (296, 'Folder (tagboard, long)', '', 'Folder (tagboard, long)', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (297, 'Folder with metal tab expanded, green', '', 'Folder with metal tab expanded, green', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (298, 'Folder with metal tab expanded, maroon', '', 'Folder with metal tab expanded, maroon', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (299, 'Frames  for Certificates (8x11 black)', '', 'Frames  for Certificates (8x11 black)', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (300, 'Green Colored premium cloth book binding repair tape 15 yard', '', 'Green Colored premium cloth book binding repair tape 15 yard', 'roll', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (301, 'Glue ,(118ml)', '', 'Glue ,(118ml)', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (302, 'Glue Gun, heavy duty', '', 'Glue Gun, heavy duty', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (303, 'Glue Stick, small', '', 'Glue Stick, small', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (304, 'Gluegun Stick, Jumbo', '', 'Gluegun Stick, Jumbo', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (305, 'HP Bright white inkjet paper C6036A 24\"', '', 'HP Bright white inkjet paper C6036A 24\"', 'roll', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (306, 'HP Bright white inkjet paper C6036A 36\"', '', 'HP Bright white inkjet paper C6036A 36\"', 'roll', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (307, 'HP natural Tracing Paper 24\"', '', 'HP natural Tracing Paper 24\"', 'roll', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (308, 'HP natural Tracing Paper 36\"', '', 'HP natural Tracing Paper 36\"', 'roll', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (309, 'ILLUSTRATION BOARD, (30\"x40\")', '', 'ILLUSTRATION BOARD, (30\"x40\")', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (310, 'Labelling tape, white', '', 'Labelling tape, white', 'roll', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (311, 'Laid  Paper,short,20\'s,85gsm(Certification)', '', 'Laid  Paper,short,20\'s,85gsm(Certification)', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (312, 'Laid Paper,long, 20\'s,85gsm,green', '', 'Laid Paper,long, 20\'s,85gsm,green', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (313, 'Laid Paper,Long,20\'s,85gsm,white', '', 'Laid Paper,Long,20\'s,85gsm,white', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (314, 'Laid Paper,short,20\'s,85gsm,beige', '', 'Laid Paper,short,20\'s,85gsm,beige', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (315, 'Laid Paper,short,20\'s,85gsm,green', '', 'Laid Paper,short,20\'s,85gsm,green', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (316, 'Laid Paper,short,20\'s,85gsm,light yellow', '', 'Laid Paper,short,20\'s,85gsm,light yellow', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (317, 'Laid Paper,short,20\'s,85gsm,mint green', '', 'Laid Paper,short,20\'s,85gsm,mint green', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (318, 'Laminating Film,12 inches x 50 mtrs', '', 'Laminating Film,12 inches x 50 mtrs', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (319, 'Laminating Pouches 222 x286 x150, 100/box short size', '', 'Laminating Pouches 222 x286 x150, 100/box short size', 'box', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (320, 'Manila Paper', '', 'Manila Paper', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (321, 'Morocco Paper, green 10s long', '', 'Morocco Paper, green 10s long', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (322, 'Morocco Paper, red  10s long', '', 'Morocco Paper, red  10s long', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (323, 'Morocco Paper, white  10s long', '', 'Morocco Paper, white  10s long', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (324, 'Morocco Paper,apple green  10s long', '', 'Morocco Paper,apple green  10s long', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (325, 'Morocco Paper,blue  10s long', '', 'Morocco Paper,blue  10s long', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (326, 'Morocco Paper,Dark Blue  10s long', '', 'Morocco Paper,Dark Blue  10s long', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (327, 'Morocco Paper,maroon  10s long', '', 'Morocco Paper,maroon  10s long', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (328, 'Morocco Paper,Orange  10s long', '', 'Morocco Paper,Orange  10s long', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (329, 'Morocco Paper,Yellow  10s long', '', 'Morocco Paper,Yellow  10s long', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (330, 'Notarial Seal-Gold#24Globe:Note: 40each per bx', '', 'Notarial Seal-Gold#24Globe:Note: 40each per bx', 'box', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (331, 'OIL, for general purpose lubricant, 120 mL ', '', 'OIL, for general purpose lubricant, 120 mL ', 'bottle', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (332, 'PENCIL, mechanical, for 0.5mm lead', '', 'PENCIL, mechanical, for 0.5mm lead', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (333, 'Photo Paper, 8.5\" x 13\", 20 sheets', '', 'Photo Paper, 8.5\" x 13\", 20 sheets', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (334, 'Photo Paper, A4, premium, 20 sheets', '', 'Photo Paper, A4, premium, 20 sheets', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (335, 'Press folder w/o tab,long,glossy green)', '', 'Press folder w/o tab,long,glossy green)', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (336, 'PUSH PIN, flat head type, assorted colors, 100 pieces per case', '', 'PUSH PIN, flat head type, assorted colors, 100 pieces per case', 'case', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (337, 'Puncher,paper,heavy duty,with three hole guide', '', 'Puncher,paper,heavy duty,with three hole guide', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (338, 'Ring Binder , 1 \'\' x 44\", Black,Thick', '', 'Ring Binder , 1 \'\' x 44\", Black,Thick', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (339, 'Ring Binder , 1 \'\' x 44\", Royal Blue, Thick', '', 'Ring Binder , 1 \'\' x 44\", Royal Blue, Thick', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (340, 'Ring Binder , 1/2\"X 44\", Assorted colors,Thick', '', 'Ring Binder , 1/2\"X 44\", Assorted colors,Thick', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (341, 'Ring Binder , 1/4\" x 44\", Assorted colors, thick', '', 'Ring Binder , 1/4\" x 44\", Assorted colors, thick', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (342, 'Ring Binder, 2\" x 44\" Black,Thick 10 pcs per bundle', '', 'Ring Binder, 2\" x 44\" Black,Thick 10 pcs per bundle', 'bundle', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (343, 'Ring Binder, Plastic 25mm, 10 pieces per bundle', '', 'Ring Binder, Plastic 25mm, 10 pieces per bundle', 'bundle', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (344, 'Sign pen, Green', '', 'Sign pen, Green', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (345, 'Signature Arrow Stickers', '', 'Signature Arrow Stickers', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (346, 'Staedler pencil (F)', '', 'Staedler pencil (F)', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (347, 'Staedler pencil (HB)', '', 'Staedler pencil (HB)', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (348, 'Staple HD-3LS 10mm (1215 Fa-H), Max, box of 12\'s', '', 'Staple HD-3LS 10mm (1215 Fa-H), Max, box of 12\'s', 'box', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (349, 'Staple HD-3LS 15mm (1215 Fa-H), Max box of 10\'s', '', 'Staple HD-3LS 15mm (1215 Fa-H), Max box of 10\'s', 'box', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (350, 'Staple HD-3LS 17mm (1215 Fa-H), Max box of 10\'s', '', 'Staple HD-3LS 17mm (1215 Fa-H), Max box of 10\'s', 'box', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (351, 'Staple wire #10 (small)', '', 'Staple wire #10 (small)', 'box', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (352, 'Stapler, heavy duty with staple remover', '', 'Stapler, heavy duty with staple remover', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (353, 'Sticker paper (Matte), long 10s', '', 'Sticker paper (Matte), long 10s', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (354, 'Sticker Paper (satin white 10\'s)A4', '', 'Sticker Paper (satin white 10\'s)A4', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (355, 'Sticker paper-Long-orange 10s', '', 'Sticker paper-Long-orange 10s', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (356, 'Sticker paper-Long-yellow 10s', '', 'Sticker paper-Long-yellow 10s', 'pack', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (357, 'Tape, transparent, 1/2 inch', '', 'Tape, transparent, 1/2 inch', 'roll', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (358, 'Tracing Paper 82g/m-18, 3mx106.7 cm', '', 'Tracing Paper 82g/m-18, 3mx106.7 cm', 'rolls', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (359, 'Thumbtacks', '', 'Thumbtacks', 'box', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (360, 'White Folder, long', '', 'White Folder, long', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (361, 'WorX paper (color: pale cream; size: 8.5 x 13 long; GSM: 200 Sheets 10)', '', 'WorX paper (color: pale cream; size: 8.5 x 13 long; GSM: 200 Sheets 10)', 'set', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (362, 'Yellow Pad', '', 'Yellow Pad', 'pad', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (363, 'Scissors, 8 inches, Multi-purpose heavy duty', '', 'Scissors, 8 inches, Multi-purpose heavy duty', 'pad', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (364, 'Crystal Techpen water gel ballpen 0.7mm-blue', '', 'Crystal Techpen water gel ballpen 0.7mm-blue', 'box', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (365, 'Crystal Techpen water gel ballpen 0.7mm-black', '', 'Crystal Techpen water gel ballpen 0.7mm-black', 'box', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (366, 'White expanding folder with green spine, size long', '', 'White expanding folder with green spine, size long', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (367, '3 Holes Puncher (ISO Used)', '', '3 Holes Puncher (ISO Used)', 'piece', 0, 0, 18, 6, 1, 0, NULL, NULL, NULL);
INSERT INTO `items` VALUES (378, 'Chair', '3216546523631', 'ergonomic chair', 'Unit', 1, 1, 18, 6, 2, 1, 2, '2025-03-10 13:47:01', '2025-03-10 13:47:01');
INSERT INTO `items` VALUES (384, 'Speakers', 'SPK-123123', 'Speakers', 'Unit', 1, 1, 18, 6, 2, 1, 2, '2025-03-11 13:40:27', '2025-03-11 13:40:27');
INSERT INTO `items` VALUES (387, 'Steel Cabinet', 'FF-FF-001', '5 layers steel cabinet with lock color red', 'piece', 1, 1, 12, 41, 2, 1, 2, '2025-03-12 13:47:58', '2025-03-12 13:47:58');
INSERT INTO `items` VALUES (388, 'Mouse', 'MS-123123', 'Mouse', 'Unit', 1, 1, 14, 6, 2, 1, 2, '2025-03-13 13:16:39', '2025-03-13 13:16:39');
INSERT INTO `items` VALUES (389, 'Monitor', 'MON-123', 'Monitor', 'Unit', 1, 1, 14, 5, 2, 1, 2, '2025-04-03 08:51:10', '2025-04-03 08:51:10');
INSERT INTO `items` VALUES (391, 'Sample', 'SAMPLE-123', 'Sample', 'Sample', 1, 1, 18, 6, 2, 1, 2, '2025-06-20 13:50:15', '2025-06-20 13:50:15');
INSERT INTO `items` VALUES (393, 'Coffee, Classic, Stick, 2g 48pcs/pack', 'CMU-ITEM', 'Coffee, Classic, Stick, 2g 48pcs/pack', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (394, 'All Purpose Cream 250ml/box 24boxes/case)', 'CMU-ITEM', 'All Purpose Cream 250ml/box 24boxes/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (395, 'All in one Seasoning (55g x 100 pcs/case)', 'CMU-ITEM', 'All in one Seasoning (55g x 100 pcs/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (396, 'All Purpose Flour – Premium (25kgs/sack)', 'CMU-ITEM', 'All Purpose Flour – Premium (25kgs/sack)', 'Sacks', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (397, 'Assorted Soft Candy (50pcs/pack)', 'CMU-ITEM', 'Assorted Soft Candy (50pcs/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (398, 'Baking Powder (double acting) 1kg/pack', 'CMU-ITEM', 'Baking Powder (double acting) 1kg/pack', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (399, 'Beef broth cubes (600g/pack, 8pack/case)', 'CMU-ITEM', 'Beef broth cubes (600g/pack, 8pack/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (400, 'Bihon (1kg/pack)', 'CMU-ITEM', 'Bihon (1kg/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (401, 'Bihon (400g/pack) Premium', 'CMU-ITEM', 'Bihon (400g/pack) Premium', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (402, 'Chocolate filled choco sandwich Biscuit 25g/pc (10pcs/pack)', 'CMU-ITEM', 'Chocolate filled choco sandwich Biscuit 25g/pc (10pcs/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (403, 'Premium crackers (10pcs/pack)', 'CMU-ITEM', 'Premium crackers (10pcs/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (404, 'Black Beans (200g/can)', 'CMU-ITEM', 'Black Beans (200g/can)', 'Cans', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (405, 'Bread Crumbs (1kg/pack)', 'CMU-ITEM', 'Bread Crumbs (1kg/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (406, 'Brown sugar (50kgs)', 'CMU-ITEM', 'Brown sugar (50kgs)', 'Sacks', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (407, 'Butter-salted  200g/bar', 'CMU-ITEM', 'Butter-salted  200g/bar', 'Bars', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (408, 'Pancit Canton Special (1kg/pack)', 'CMU-ITEM', 'Pancit Canton Special (1kg/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (409, 'Cheddar Cheese (original-440g/bar, 24 bars/case)', 'CMU-ITEM', 'Cheddar Cheese (original-440g/bar, 24 bars/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (410, 'Chicken broth cubes (600g/pack, 8 pack/case)', 'CMU-ITEM', 'Chicken broth cubes (600g/pack, 8 pack/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (411, 'Coffee Creamer (450g/pack)', 'CMU-ITEM', 'Coffee Creamer (450g/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (412, 'Condensed Milk, (390ml/can, 48 cans/case)', 'CMU-ITEM', 'Condensed Milk, (390ml/can, 48 cans/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (413, 'Corn Kernel (425g/can, 24 cans/case)', 'CMU-ITEM', 'Corn Kernel (425g/can, 24 cans/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (414, 'Cornflakes,275g/pack', 'CMU-ITEM', 'Cornflakes,275g/pack', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (415, 'Cornstarch (25kg/sack)', 'CMU-ITEM', 'Cornstarch (25kg/sack)', 'Sacks', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (416, 'Disposable Hair net, White color', 'CMU-ITEM', 'Disposable Hair net, White color', 'Pieces', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (417, 'Disposable hand care gloves (100pcs/box)', 'CMU-ITEM', 'Disposable hand care gloves (100pcs/box)', 'Boxes', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (418, 'Evaporated Milk,(370ml/can x 48 cans/case)', 'CMU-ITEM', 'Evaporated Milk,(370ml/can x 48 cans/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (419, 'Flat Tissue, 200 sheets/pack (280 x 250mm) 8packs/case', 'CMU-ITEM', 'Flat Tissue, 200 sheets/pack (280 x 250mm) 8packs/case', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (420, 'Wheat Flour 1st class – Premium(25kg/sack)', 'CMU-ITEM', 'Wheat Flour 1st class – Premium(25kg/sack)', 'Sacks', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (421, 'Wheat Flour 3rd class - Premium (25kg/sack)', 'CMU-ITEM', 'Wheat Flour 3rd class - Premium (25kg/sack)', 'Sacks', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (422, 'Fruit Cocktail – canned (Net Wt. 836g/can x 24 cans/case)', 'CMU-ITEM', 'Fruit Cocktail – canned (Net Wt. 836g/can x 24 cans/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (423, 'Fruit Cocktail – canned (Net Wt. 3.033kg/can x 6cans/case)', 'CMU-ITEM', 'Fruit Cocktail – canned (Net Wt. 3.033kg/can x 6cans/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (424, 'Garbanzos (450g/can)', 'CMU-ITEM', 'Garbanzos (450g/can)', 'Cans', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (425, 'Gulaman Powder 25g/pc- Green(10 pcs), Red(10 pcs), Yellow(10 pcs)', 'CMU-ITEM', 'Gulaman Powder 25g/pc- Green(10 pcs), Red(10 pcs), Yellow(10 pcs)', 'Pieces', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (426, 'Green peas (450g/can)', 'CMU-ITEM', 'Green peas (450g/can)', 'can', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (427, 'Kaong Red – (340g/bottle)', 'CMU-ITEM', 'Kaong Red – (340g/bottle)', 'Bottles', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (428, 'Kaong Green – (340g/bottle)', 'CMU-ITEM', 'Kaong Green – (340g/bottle)', 'Bottles', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (429, 'Banana Ketchup, Original Blend,(4gallon/case)', 'CMU-ITEM', 'Banana Ketchup, Original Blend,(4gallon/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (430, 'Tomato Ketchup sachet, Original Blend, (10g/sachet x 200sachet/box)', 'CMU-ITEM', 'Tomato Ketchup sachet, Original Blend, (10g/sachet x 200sachet/box)', 'Boxes', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (431, 'Laminated Paper Meal Box, 3 Compartment', 'CMU-ITEM', 'Laminated Paper Meal Box, 3 Compartment', 'Pcs', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (432, 'Margarine (45kgs/pail)', 'CMU-ITEM', 'Margarine (45kgs/pail)', 'Pails', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (433, 'Mayo (Salad & Sandwich partner) (5.5L/piece, 2pieces/case)', 'CMU-ITEM', 'Mayo (Salad & Sandwich partner) (5.5L/piece, 2pieces/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (434, 'MSG (500g/pack)', 'CMU-ITEM', 'MSG (500g/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (435, 'Mushroom pieces & stems (400g/can x 24 cans/case)', 'CMU-ITEM', 'Mushroom pieces & stems (400g/can x 24 cans/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (436, 'Nata de Coco Red – 340g/bottle', 'CMU-ITEM', 'Nata de Coco Red – 340g/bottle', 'Bottles', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (437, 'Nata de Coco Green – 340g/bottle', 'CMU-ITEM', 'Nata de Coco Green – 340g/bottle', 'Bottles', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (438, 'Oatmeal (400g/pack)', 'CMU-ITEM', 'Oatmeal (400g/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (439, 'Vegetable Oil-canned (18kgs/can)', 'CMU-ITEM', 'Vegetable Oil-canned (18kgs/can)', 'Cans', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (440, 'Oyster Sauce (4 gallons/case)', 'CMU-ITEM', 'Oyster Sauce (4 gallons/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (441, 'Paper Bag #1 (brown bag)/100pcs/pack.,90cmx5.5cmx17.5cm ', 'CMU-ITEM', 'Paper Bag #1 (brown bag)/100pcs/pack.,90cmx5.5cmx17.5cm ', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (442, 'Paper Bag #2 (brown bag)/100pcs/pack.,11.5cmx5.5cmx19cm', 'CMU-ITEM', 'Paper Bag #2 (brown bag)/100pcs/pack.,11.5cmx5.5cmx19cm', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (443, 'Paper Bag #4 (brown bag)/100pcs/pack.,12cmx8cmx23cm', 'CMU-ITEM', 'Paper Bag #4 (brown bag)/100pcs/pack.,12cmx8cmx23cm', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (444, 'Paper Bag #10 (brown bag)/100pcs/pack.,16.5cmx9.5cmx33.5cm', 'CMU-ITEM', 'Paper Bag #10 (brown bag)/100pcs/pack.,16.5cmx9.5cmx33.5cm', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (445, 'Paper Bag #20 (brown bag)/100pcs/pack.,21cmx12cmx39.5cm', 'CMU-ITEM', 'Paper Bag #20 (brown bag)/100pcs/pack.,21cmx12cmx39.5cm', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (446, 'Paper Bag for Token (Assorted color/Medium size) 30.5 cm x 12.4cm x 39.5cm', 'CMU-ITEM', 'Paper Bag for Token (Assorted color/Medium size) 30.5 cm x 12.4cm x 39.5cm', 'Pcs.', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (447, 'Pineapple Crushed (227g/can)', 'CMU-ITEM', 'Pineapple Crushed (227g/can)', 'Cans', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (448, 'Salt Iodized (25kgs/sack)', 'CMU-ITEM', 'Salt Iodized (25kgs/sack)', 'Sacks', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (449, 'Skimmed Milk (25kg/sack)', 'CMU-ITEM', 'Skimmed Milk (25kg/sack)', 'Sacks', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (450, 'Sotanghon-Premium brand (1kg/pack)', 'CMU-ITEM', 'Sotanghon-Premium brand (1kg/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (451, 'Sotanghon-Premium brand (500g/pack)', 'CMU-ITEM', 'Sotanghon-Premium brand (500g/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (452, 'Spaghetti pasta (900g/pack)', 'CMU-ITEM', 'Spaghetti pasta (900g/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (453, 'Spaghetti Sauce, Filipino Style (1kg/pack)', 'CMU-ITEM', 'Spaghetti Sauce, Filipino Style (1kg/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (454, 'Paper cup small (8oz x 25pcs/pack)', 'CMU-ITEM', 'Paper cup small (8oz x 25pcs/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (455, 'Tomato Sauce (1kg/pack x 12packs/case)', 'CMU-ITEM', 'Tomato Sauce (1kg/pack x 12packs/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (456, 'Powdered Choco-Malt Milk Drink (22g/sachet x 12sachet/tie x 42 ties/case)', 'CMU-ITEM', 'Powdered Choco-Malt Milk Drink (22g/sachet x 12sachet/tie x 42 ties/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (457, 'Tuna Flakes in Oil (155g/can)', 'CMU-ITEM', 'Tuna Flakes in Oil (155g/can)', 'Cans', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (458, 'White Sugar (50kgs/sack)', 'CMU-ITEM', 'White Sugar (50kgs/sack)', 'Sacks', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (459, 'Young Corn (425g/can x 24cans/case)', 'CMU-ITEM', 'Young Corn (425g/can x 24cans/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (460, 'Wooden Fork (100pieces/pack)', 'CMU-ITEM', 'Wooden Fork (100pieces/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (461, 'Wooden Spoon (100pieces/pack)', 'CMU-ITEM', 'Wooden Spoon (100pieces/pack)', 'Pack', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (462, 'Dishwashing paste, anti-bacterial, lemon 400grms./pc', 'CMU-ITEM', 'Dishwashing paste, anti-bacterial, lemon 400grms./pc', 'Pcs.', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (463, 'Paper Ripple cup, 8oz', 'CMU-ITEM', 'Paper Ripple cup, 8oz', 'Pcs.', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (464, 'Canned Juice Drink-Pineapple, Orange, Four Seasons Flavors  (220ml/can x 24 cans/case)', 'CMU-ITEM', 'Canned Juice Drink-Pineapple, Orange, Four Seasons Flavors  (220ml/can x 24 cans/case)', 'case', 1, 1, 28, 55, 1, 1, 1, NULL, '2025-10-03 06:43:33');
INSERT INTO `items` VALUES (465, 'Four Seasons  flavor – 60 cases', 'CMU-ITEM', 'Four Seasons  flavor – 60 cases', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (466, 'Orange  Flavor – 60 cases', 'CMU-ITEM', 'Orange  Flavor – 60 cases', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (467, 'Pineapple  Flavor – 60 cases', 'CMU-ITEM', 'Pineapple  Flavor – 60 cases', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (468, 'Canned Soft drinks -Cola, Lemon Lime, Orange Flavors (330ml/can x 24 cans/case)', 'CMU-ITEM', 'Canned Soft drinks -Cola, Lemon Lime, Orange Flavors (330ml/can x 24 cans/case)', 'case', 1, 1, 28, 55, 1, 1, 1, NULL, '2025-10-03 06:43:43');
INSERT INTO `items` VALUES (469, 'Cola Flavor -100 cases', 'CMU-ITEM', 'Cola Flavor -100 cases', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (470, 'Lemon Lime Flavor  – 100 cases', 'CMU-ITEM', 'Lemon Lime Flavor  – 100 cases', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (471, 'Orange Flavor  – 100 cases ', 'CMU-ITEM', 'Orange Flavor  – 100 cases ', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (472, 'Canned Juice Drink – Orange Flavor (240ml/can x 24 cans/case) ', 'CMU-ITEM', 'Canned Juice Drink – Orange Flavor (240ml/can x 24 cans/case) ', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (473, 'Juice Tetra pack -Orange Flavor (180ml/tetra pack x 10 pcs/box) ', 'CMU-ITEM', 'Juice Tetra pack -Orange Flavor (180ml/tetra pack x 10 pcs/box) ', 'boxes', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (474, 'Cola Soft drinks Flavor  (8oz/bot  x 24 cans/case)', 'CMU-ITEM', 'Cola Soft drinks Flavor  (8oz/bot  x 24 cans/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (475, 'Chocolate Milk flavor Drink (250ml/tetra pack x 24 pcs/case)', 'CMU-ITEM', 'Chocolate Milk flavor Drink (250ml/tetra pack x 24 pcs/case)', 'Cases', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (476, 'Diesel ', 'CMU-ITEM', 'Diesel ', 'liters', 1, 1, 28, 55, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (477, 'Grease, (18L/pail)', 'CMU-ITEM', 'Grease, (18L/pail)', 'Pail', 1, 1, 29, 8, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (478, 'Motorcycle Engine Oil, w30 Monograde', 'CMU-ITEM', 'Motorcycle Engine Oil, w30 Monograde', 'Liter', 1, 1, 29, 8, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (479, 'Gear Oil 90, (18L/pail)', 'CMU-ITEM', 'Gear Oil 90, (18L/pail)', 'Pail', 1, 1, 29, 8, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (480, 'Gear Oil 140, (18L/pail)', 'CMU-ITEM', 'Gear Oil 140, (18L/pail)', 'Pail', 1, 1, 29, 8, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (481, 'Gear Oil 140, (18L/pail)', 'CMU-ITEM', 'Gear Oil 140, (18L/pail)', 'Pail', 1, 1, 29, 8, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (482, 'ATF/Oil 10 (18L/pail)', 'CMU-ITEM', 'ATF/Oil 10 (18L/pail)', 'Pail', 1, 1, 29, 8, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (483, 'Diesel Engine Oil 30, (18L/pail)', 'CMU-ITEM', 'Diesel Engine Oil 30, (18L/pail)', 'Pail', 1, 1, 29, 8, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (484, 'Gasoline Engine Oil 30', 'CMU-ITEM', 'Gasoline Engine Oil 30', 'Liter', 1, 1, 29, 8, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (485, 'Diesel Engine Oil 40, (18L/pail)', 'CMU-ITEM', 'Diesel Engine Oil 40, (18L/pail)', 'Pail', 1, 1, 29, 8, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (486, 'Synthetic Gasoline Engine Oil Grade 5W-30', 'CMU-ITEM', 'Synthetic Gasoline Engine Oil Grade 5W-30', 'Liter', 1, 1, 29, 8, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (487, 'Medical Oxygen Refill, Standard Size', 'CMU-ITEM', 'Medical Oxygen Refill, Standard Size', 'cyl', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (488, 'BP Apparatus, Adult, branded, good quality', 'CMU-ITEM', 'BP Apparatus, Adult, branded, good quality', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (489, 'BP Apparatus, pedia, branded, good quality', 'CMU-ITEM', 'BP Apparatus, pedia, branded, good quality', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (490, 'BP Apparatus, infant, branded, good quality', 'CMU-ITEM', 'BP Apparatus, infant, branded, good quality', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (491, 'Pulse Oximeter, Adult, branded, good quality', 'CMU-ITEM', 'Pulse Oximeter, Adult, branded, good quality', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (492, 'pulse Oximeter, pedia, branded, good quality', 'CMU-ITEM', 'pulse Oximeter, pedia, branded, good quality', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (493, 'Thermometer, non-contact, branded, good quality', 'CMU-ITEM', 'Thermometer, non-contact, branded, good quality', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (494, 'IV Stand, Stainless with wheels, 4 hooks, heavy duty', 'CMU-ITEM', 'IV Stand, Stainless with wheels, 4 hooks, heavy duty', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (495, 'Hospital Bedsheet, White, Cotton, with Hospital Logo Print', 'CMU-ITEM', 'Hospital Bedsheet, White, Cotton, with Hospital Logo Print', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (496, 'Disposable Bib 100pcs/pack', 'CMU-ITEM', 'Disposable Bib 100pcs/pack', 'Pack', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (497, 'Distilled Water, 10L', 'CMU-ITEM', 'Distilled Water, 10L', 'gallon', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (498, 'Disposable Urine Screw Cups (30ml Capacity)', 'CMU-ITEM', 'Disposable Urine Screw Cups (30ml Capacity)', 'pc', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (499, 'Hepatitis B Ag Test Kit 30’s/ box with Certificate of Product registration (CPR), 2 years expiry', 'CMU-ITEM', 'Hepatitis B Ag Test Kit 30’s/ box with Certificate of Product registration (CPR), 2 years expiry', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (500, 'Syringe Terumo 1cc w/ 26 gauge needle 100’s/box (Original)', 'CMU-ITEM', 'Syringe Terumo 1cc w/ 26 gauge needle 100’s/box (Original)', 'box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (501, 'Minimized highspeed handpiece (2 holes)', 'CMU-ITEM', 'Minimized highspeed handpiece (2 holes)', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (502, 'Oral Health Dental Air & water syringe(10pcs/pack)', 'CMU-ITEM', 'Oral Health Dental Air & water syringe(10pcs/pack)', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (503, 'Clean Spray Lubricant for Handpiece', 'CMU-ITEM', 'Clean Spray Lubricant for Handpiece', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (504, 'Hypochlorous Acid (HDCL) 4L Multi Surface Disinfectant', 'CMU-ITEM', 'Hypochlorous Acid (HDCL) 4L Multi Surface Disinfectant', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (505, 'Bonding Agent Adhesive ', 'CMU-ITEM', 'Bonding Agent Adhesive ', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (506, 'Disposable Surgical Boufant/Headcap', 'CMU-ITEM', 'Disposable Surgical Boufant/Headcap', 'pack', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (507, 'Defog (Antimoisture for dental mirror) 60mL', 'CMU-ITEM', 'Defog (Antimoisture for dental mirror) 60mL', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (508, 'Disposable Suction Tips (100pcs/pack)', 'CMU-ITEM', 'Disposable Suction Tips (100pcs/pack)', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (509, 'Pediatric Forceps No.150s', 'CMU-ITEM', 'Pediatric Forceps No.150s', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (510, 'Pediatric Forceps No.151s', 'CMU-ITEM', 'Pediatric Forceps No.151s', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (511, 'Clinpro 5% Sodium Fluoride (While Varnish, 20pcs/box)', 'CMU-ITEM', 'Clinpro 5% Sodium Fluoride (While Varnish, 20pcs/box)', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (512, 'Prophy Plus w/ Baking Soda 50gr. (Oral Prophylaxis paste)', 'CMU-ITEM', 'Prophy Plus w/ Baking Soda 50gr. (Oral Prophylaxis paste)', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (513, 'Defog (Antimoisture for Dental mirror) 60mL', 'CMU-ITEM', 'Defog (Antimoisture for Dental mirror) 60mL', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (514, 'Disposable Headcap 100pcs/pack', 'CMU-ITEM', 'Disposable Headcap 100pcs/pack', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (515, 'Disposable Bib 100pcs/pack', 'CMU-ITEM', 'Disposable Bib 100pcs/pack', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (516, 'Disposable Micro Needle, Dental Cartridge Needle 27Gx21mm', 'CMU-ITEM', 'Disposable Micro Needle, Dental Cartridge Needle 27Gx21mm', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (517, 'Disposable Micro Needle, Dental Cartridge Needle 27Gx30mm', 'CMU-ITEM', 'Disposable Micro Needle, Dental Cartridge Needle 27Gx30mm', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (518, 'Chromic Catgut 75cm (12pcs/box) 1/2 circle curved cutting 26mm', 'CMU-ITEM', 'Chromic Catgut 75cm (12pcs/box) 1/2 circle curved cutting 26mm', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (519, 'Medical-Surgical Facemask ', 'CMU-ITEM', 'Medical-Surgical Facemask ', 'box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (520, 'Cotton Rolls/Balls', 'CMU-ITEM', 'Cotton Rolls/Balls', 'pack', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (521, 'Electric Fan Stand', 'CMU-ITEM', 'Electric Fan Stand', 'unit', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (522, 'Small Size Gloves (Latex)', 'CMU-ITEM', 'Small Size Gloves (Latex)', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (523, 'Medium Size Gloves (Latex)', 'CMU-ITEM', 'Medium Size Gloves (Latex)', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (524, 'Cotton Roll, 300g pure absorbent cotton', 'CMU-ITEM', 'Cotton Roll, 300g pure absorbent cotton', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (525, '2 Holes Standard Dental Handpiece ', 'CMU-ITEM', '2 Holes Standard Dental Handpiece ', 'unit', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (526, '2 Holes Minihead Dental Handpiece', 'CMU-ITEM', '2 Holes Minihead Dental Handpiece', 'unit', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (527, 'Dental Etchant Gel 37% Phosphoric Acid', 'CMU-ITEM', 'Dental Etchant Gel 37% Phosphoric Acid', 'box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (528, 'Dental diamond round Bur, 10pcs/pack (001/014)41', 'CMU-ITEM', 'Dental diamond round Bur, 10pcs/pack (001/014)41', 'unit', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (529, 'Light cure with Lens', 'CMU-ITEM', 'Light cure with Lens', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (530, 'Standard head push type high speed handpiece (2 holes)', 'CMU-ITEM', 'Standard head push type high speed handpiece (2 holes)', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (531, 'Tropical Lidocaine 5% Ointmen t USP Peppermint Flavor', 'CMU-ITEM', 'Tropical Lidocaine 5% Ointmen t USP Peppermint Flavor', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (532, 'Washable Dental Bib', 'CMU-ITEM', 'Washable Dental Bib', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (533, 'Dental Syringe (Arrow Tip)', 'CMU-ITEM', 'Dental Syringe (Arrow Tip)', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (534, 'Dental Gel Foam Hemostatic Gelatin Sponge (20 cubes)', 'CMU-ITEM', 'Dental Gel Foam Hemostatic Gelatin Sponge (20 cubes)', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (535, 'Bone FIle Hand Insgtrument', 'CMU-ITEM', 'Bone FIle Hand Insgtrument', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (536, 'Stainless steel IV stand 4 Hooks 20KG load capacity movable iv stand', 'CMU-ITEM', 'Stainless steel IV stand 4 Hooks 20KG load capacity movable iv stand', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (537, 'BP Aneroid Shygmomanometer, high quality (Branded)', 'CMU-ITEM', 'BP Aneroid Shygmomanometer, high quality (Branded)', 'set', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (538, 'Specification:', 'CMU-ITEM', 'Specification:', '', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (539, 'Classic nylon cuff without D-ring', 'CMU-ITEM', 'Classic nylon cuff without D-ring', '', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (540, 'Non-stop pin manometer', 'CMU-ITEM', 'Non-stop pin manometer', '', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (541, 'Thicker, more durable 2-tube adult size bladder', 'CMU-ITEM', 'Thicker, more durable 2-tube adult size bladder', '', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (542, 'Standard Latex Bulb and Standard end value', 'CMU-ITEM', 'Standard Latex Bulb and Standard end value', '', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (543, 'Air-release valve with spring', 'CMU-ITEM', 'Air-release valve with spring', '', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (544, 'made in Japan/US/Germany', 'CMU-ITEM', 'made in Japan/US/Germany', '', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (545, 'Nebulizer Machine (Heavy Duty, Made in US/Japan)', 'CMU-ITEM', 'Nebulizer Machine (Heavy Duty, Made in US/Japan)', 'Pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (546, 'Suture, Prolene 3.0', 'CMU-ITEM', 'Suture, Prolene 3.0', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (547, 'Suture, Silk 3.0', 'CMU-ITEM', 'Suture, Silk 3.0', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (548, 'Bag Valve Mask (Ambu Bags) PVC Manual Resuscitator, Adult', 'CMU-ITEM', 'Bag Valve Mask (Ambu Bags) PVC Manual Resuscitator, Adult', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (549, 'Bag Valve Mask (Ambu Bags) PVC Manual Resuscitator, Pedia', 'CMU-ITEM', 'Bag Valve Mask (Ambu Bags) PVC Manual Resuscitator, Pedia', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (550, 'Bag Valve Mask (Ambu Bags) PVC Manual Resuscitator, Infant', 'CMU-ITEM', 'Bag Valve Mask (Ambu Bags) PVC Manual Resuscitator, Infant', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (551, 'Oxygen Regulators', 'CMU-ITEM', 'Oxygen Regulators', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (552, 'Syringe, 1cc', 'CMU-ITEM', 'Syringe, 1cc', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (553, 'Syringe, 3cc', 'CMU-ITEM', 'Syringe, 3cc', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (554, 'Syringe, 5cc', 'CMU-ITEM', 'Syringe, 5cc', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (555, 'Syringe, 10cc', 'CMU-ITEM', 'Syringe, 10cc', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (556, 'Transpore 3M (1inch) 12rolls/box', 'CMU-ITEM', 'Transpore 3M (1inch) 12rolls/box', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (557, 'Micropore 3M (1inch) 12rolls/box', 'CMU-ITEM', 'Micropore 3M (1inch) 12rolls/box', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (558, 'Urine Collector', 'CMU-ITEM', 'Urine Collector', 'Box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (559, 'IV Infusion Set, Ezfix Macroset', 'CMU-ITEM', 'IV Infusion Set, Ezfix Macroset', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (560, 'IV Infusion Set, Ezfix Microset', 'CMU-ITEM', 'IV Infusion Set, Ezfix Microset', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (561, 'Nebulizing Kit', 'CMU-ITEM', 'Nebulizing Kit', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (562, 'Clean Gloves, Large', 'CMU-ITEM', 'Clean Gloves, Large', 'box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (563, 'Clean Gloves, Small', 'CMU-ITEM', 'Clean Gloves, Small', 'box', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (564, 'Pulse Oximeter, Pedia', 'CMU-ITEM', 'Pulse Oximeter, Pedia', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (565, 'Pulse Oximeter, Adult', 'CMU-ITEM', 'Pulse Oximeter, Adult', 'pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (566, 'Infrared Digital Thermometer (Heavy Duty, Made in Japan)', 'CMU-ITEM', 'Infrared Digital Thermometer (Heavy Duty, Made in Japan)', 'Pcs', 1, 1, 26, 38, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (567, 'Steel Storage Cabinet with glass door with 4 shelves (at least H180x W80x D35cm)', 'CMU-ITEM', 'Steel Storage Cabinet with glass door with 4 shelves (at least H180x W80x D35cm)', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (568, 'Visitor Chairs cushion (single) black color', 'CMU-ITEM', 'Visitor Chairs cushion (single) black color', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (569, 'Workstation table (at least L240 x W120 x H75cm)', 'CMU-ITEM', 'Workstation table (at least L240 x W120 x H75cm)', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (570, 'Sliding glass door steel cabinet with 4 shelves (at least L35.43 x W15.35 x H70.86)', 'CMU-ITEM', 'Sliding glass door steel cabinet with 4 shelves (at least L35.43 x W15.35 x H70.86)', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (571, 'Bookcase made of laminated wood (at least H83 x 47.2 x D11.6)', 'CMU-ITEM', 'Bookcase made of laminated wood (at least H83 x 47.2 x D11.6)', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (572, 'Mobile Cabinet steel with wheels and 3 drawers or shelves divider (at least W39 x D50 x H65cm)', 'CMU-ITEM', 'Mobile Cabinet steel with wheels and 3 drawers or shelves divider (at least W39 x D50 x H65cm)', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (573, '5 seaters gang chair', 'CMU-ITEM', '5 seaters gang chair', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (574, 'Conference table with chairs 20 seaters made of Melamine Board Top (at least W600cm x D180 x H75)', 'CMU-ITEM', 'Conference table with chairs 20 seaters made of Melamine Board Top (at least W600cm x D180 x H75)', 'Unit', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (575, 'Steel Swing door office cabinet at least ( W900 x D450 X H1830mm)', 'CMU-ITEM', 'Steel Swing door office cabinet at least ( W900 x D450 X H1830mm)', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (576, 'Steel Sliding glass door cabinet with 4 shelves (at least W90 x D40 x H185cm)', 'CMU-ITEM', 'Steel Sliding glass door cabinet with 4 shelves (at least W90 x D40 x H185cm)', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (577, 'Metal Storage Rack with 5 shelves (at least H2000 x W900 x 400mm)', 'CMU-ITEM', 'Metal Storage Rack with 5 shelves (at least H2000 x W900 x 400mm)', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (578, 'Metal Office Cabinet 5 layers 2 doorswing (powder coated) (at least L35.4 x W15.7 H72.8)', 'CMU-ITEM', 'Metal Office Cabinet 5 layers 2 doorswing (powder coated) (at least L35.4 x W15.7 H72.8)', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (579, 'Steel Bookshelf with wheels 5 layers (at least  H2000 x W900 x 400mm)', 'CMU-ITEM', 'Steel Bookshelf with wheels 5 layers (at least  H2000 x W900 x 400mm)', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (580, '5 tiers steel bookshelf (at least 190cm x 165cm x 28cm)', 'CMU-ITEM', '5 tiers steel bookshelf (at least 190cm x 165cm x 28cm)', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (581, 'Reading room table made of MDF materials steel leg ( 4x4ft) at least 1 inch thickness  ', 'CMU-ITEM', 'Reading room table made of MDF materials steel leg ( 4x4ft) at least 1 inch thickness  ', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (582, 'Stack chair with steel frame legs made of heavy duty materials', 'CMU-ITEM', 'Stack chair with steel frame legs made of heavy duty materials', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (583, 'Classmate chairs  made of heavy duty plastic materials (armed chairs) ', 'CMU-ITEM', 'Classmate chairs  made of heavy duty plastic materials (armed chairs) ', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (584, 'Steel Cabinet with 4 Drawers (White Color or Creamy White) at least W470 x D600 x H1320', 'CMU-ITEM', 'Steel Cabinet with 4 Drawers (White Color or Creamy White) at least W470 x D600 x H1320', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (585, 'Stainless Steel Book Trolley (White Color or Creamy White) (at least 80cm x 43cm x 110H) ', 'CMU-ITEM', 'Stainless Steel Book Trolley (White Color or Creamy White) (at least 80cm x 43cm x 110H) ', '', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (586, 'SOFA-Cleopatra Design with Armrest Size: Large (at least L:76-85/W:17-23/H:13-23 Inches) preferably gray color', 'CMU-ITEM', 'SOFA-Cleopatra Design with Armrest Size: Large (at least L:76-85/W:17-23/H:13-23 Inches) preferably gray color', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (587, 'Glass coffee table  42 – 54 inches', 'CMU-ITEM', 'Glass coffee table  42 – 54 inches', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (588, 'Premium roofing paint, spanish red', 'CMU-ITEM', 'Premium roofing paint, spanish red', 'pails', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (589, 'Premium  semi gloss latex, offwhite', 'CMU-ITEM', 'Premium  semi gloss latex, offwhite', 'pails', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (590, 'Premium  reflectorized paint, black', 'CMU-ITEM', 'Premium  reflectorized paint, black', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (591, 'Premium  reflectorized paint, yellow', 'CMU-ITEM', 'Premium  reflectorized paint, yellow', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (592, 'Premium  reflectorized paint, white', 'CMU-ITEM', 'Premium  reflectorized paint, white', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (593, 'Premium semi gloss latex, green', 'CMU-ITEM', 'Premium semi gloss latex, green', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (594, 'Premium semi gloss latex,light gray', 'CMU-ITEM', 'Premium semi gloss latex,light gray', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (595, 'Premium  sand paper # 120', 'CMU-ITEM', 'Premium  sand paper # 120', 'pcs.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (596, 'Premium Paint roller w/ basin #9', 'CMU-ITEM', 'Premium Paint roller w/ basin #9', 'sets', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (597, 'Premium Paint brush, heavy duty #3', 'CMU-ITEM', 'Premium Paint brush, heavy duty #3', 'pcs.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (598, 'G.I. pipe 1 1/2 x 20, sch. 20', 'CMU-ITEM', 'G.I. pipe 1 1/2 x 20, sch. 20', 'pcs.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (599, 'Swivel Coupier', 'CMU-ITEM', 'Swivel Coupier', 'pcs.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (600, '1/8 Clear Glass', 'CMU-ITEM', '1/8 Clear Glass', 'sq. foot', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (601, 'Calsomine', 'CMU-ITEM', 'Calsomine', 'kilogram', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (602, 'Cast Putty', 'CMU-ITEM', 'Cast Putty', 'Gallon', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (603, 'C-Handle Ordinary with screw', 'CMU-ITEM', 'C-Handle Ordinary with screw', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (604, 'Common Nail #1', 'CMU-ITEM', 'Common Nail #1', 'kilogram', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (605, 'Drawer Handle C-type (antique)with screw', 'CMU-ITEM', 'Drawer Handle C-type (antique)with screw', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (606, 'Drawer lock 707', 'CMU-ITEM', 'Drawer lock 707', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (607, 'Finishing Nails 1.5\"', 'CMU-ITEM', 'Finishing Nails 1.5\"', 'kilogram', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (608, 'Finishing Nails 2\"', 'CMU-ITEM', 'Finishing Nails 2\"', 'kilogram', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (609, 'Finishing Nails 2.5\"', 'CMU-ITEM', 'Finishing Nails 2.5\"', 'kilogram', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (610, 'Silicon Carbide #120 (floor sanding)', 'CMU-ITEM', 'Silicon Carbide #120 (floor sanding)', 'foot', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (611, ' Silicon Carbide #80', 'CMU-ITEM', 'Silicon Carbide #80', 'foot', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (612, 'Hinges w/ screw 3/4 x 2 1/2 (Pair)', 'CMU-ITEM', 'Hinges w/ screw 3/4 x 2 1/2 (Pair)', 'Pair', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (613, 'Lacquer Flo ', 'CMU-ITEM', 'Lacquer Flo ', 'Gallon', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (614, 'Lacquer sanding sealer ', 'CMU-ITEM', 'Lacquer sanding sealer ', 'Gallon', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (615, 'Lacquer Thinner ', 'CMU-ITEM', 'Lacquer Thinner ', 'Gallon', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (616, 'Marine 3/4\" x 4\" x 8\'', 'CMU-ITEM', 'Marine 3/4\" x 4\" x 8\'', 'sheet', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (617, 'Marine Plywood 1/2\" x 4\" x 8\'', 'CMU-ITEM', 'Marine Plywood 1/2\" x 4\" x 8\'', 'sheet', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (618, 'Marine Plywood 1/2\" x 4\" x 8\'', 'CMU-ITEM', 'Marine Plywood 1/2\" x 4\" x 8\'', 'sheet', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (619, 'Oil Tinting Bulletin Red', 'CMU-ITEM', 'Oil Tinting Bulletin Red', 'Can', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (620, 'Paint Brush 2 1/2\"', 'CMU-ITEM', 'Paint Brush 2 1/2\"', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (621, 'Paint Roller 4\" with Handle', 'CMU-ITEM', 'Paint Roller 4\" with Handle', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (622, 'Paint Thinner', 'CMU-ITEM', 'Paint Thinner', 'Gallon', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (623, 'Poly urethane top coat w/ catalyst ', 'CMU-ITEM', 'Poly urethane top coat w/ catalyst ', 'Gallon', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (624, 'Refill Mini Roller 4\"', 'CMU-ITEM', 'Refill Mini Roller 4\"', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (625, 'Rugby', 'CMU-ITEM', 'Rugby', 'Liter', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (626, 'Sand Paper  #200', 'CMU-ITEM', 'Sand Paper  #200', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (627, 'Wood Perservative (Colorless)', 'CMU-ITEM', 'Wood Perservative (Colorless)', 'Gallon', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (628, 'Tex-A Kote 2800 Primer White', 'CMU-ITEM', 'Tex-A Kote 2800 Primer White', 'Gallon', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (629, 'Urethane Reducer', 'CMU-ITEM', 'Urethane Reducer', 'Gallon', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (630, 'Varnish', 'CMU-ITEM', 'Varnish', 'Gallon', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (631, 'Recessed Downlight (DLH02-95WHT DEL MR 16-5W/COB', 'CMU-ITEM', 'Recessed Downlight (DLH02-95WHT DEL MR 16-5W/COB', 'sets', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (632, 'Pendant Light (LLPRT-003 E27 280MM BLK)', 'CMU-ITEM', 'Pendant Light (LLPRT-003 E27 280MM BLK)', 'sets', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (633, 'Surface Downlight (LLPL-051-E27 220MM GL CLR)', 'CMU-ITEM', 'Surface Downlight (LLPL-051-E27 220MM GL CLR)', 'sets', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (634, 'Rustic Light (LLWRT 003-E27 270MM  BLK)', 'CMU-ITEM', 'Rustic Light (LLWRT 003-E27 270MM  BLK)', 'sets', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (635, '4 pcs surface type spotlights (SLHO3X355-GU10 BLK-LED5W CW)', 'CMU-ITEM', '4 pcs surface type spotlights (SLHO3X355-GU10 BLK-LED5W CW)', 'sets', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (636, '8.0 mm2 TW Cu. Wire Stranded', 'CMU-ITEM', '8.0 mm2 TW Cu. Wire Stranded', 'm', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (637, '2.0 mm2 TW Cu. Wire Stranded', 'CMU-ITEM', '2.0 mm2 TW Cu. Wire Stranded', 'boxes', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (638, '3.5 mm2 TW Cu. Wire Stranded', 'CMU-ITEM', '3.5 mm2 TW Cu. Wire Stranded', 'boxes', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (639, '3/4\" Ø PVC Conduit', 'CMU-ITEM', '3/4\" Ø PVC Conduit', 'length', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (640, '1/2\" Ø PVC Long Elbow', 'CMU-ITEM', '1/2\" Ø PVC Long Elbow', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (641, '1/2\" Ø PVC Conduit', 'CMU-ITEM', '1/2\" Ø PVC Conduit', 'length', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (642, 'PVC Solvent', 'CMU-ITEM', 'PVC Solvent', 'quarts', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (643, '3/4\" Ø Rigid Steel Conduit', 'CMU-ITEM', '3/4\" Ø Rigid Steel Conduit', 'length', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (644, '2-Gang Switch Flush Type', 'CMU-ITEM', '2-Gang Switch Flush Type', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (645, '1-Gang Switch Flush Type', 'CMU-ITEM', '1-Gang Switch Flush Type', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (646, '3-Gang Outlet Universal', 'CMU-ITEM', '3-Gang Outlet Universal', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (647, 'Metal Utility Box', 'CMU-ITEM', 'Metal Utility Box', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (648, 'PVC Junction Box with Cover', 'CMU-ITEM', 'PVC Junction Box with Cover', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (649, '6-Branches Panel Board', 'CMU-ITEM', '6-Branches Panel Board', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (650, '20 AT Circuit Breaker 2 Poles', 'CMU-ITEM', '20 AT Circuit Breaker 2 Poles', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (651, '15 AT Circuit Breaker 2 Poles', 'CMU-ITEM', '15 AT Circuit Breaker 2 Poles', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (652, '60 AT Circuit Breaker 2 Poles', 'CMU-ITEM', '60 AT Circuit Breaker 2 Poles', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (653, 'Electrical Tape Big', 'CMU-ITEM', 'Electrical Tape Big', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (654, 'Portland Cement', 'CMU-ITEM', 'Portland Cement', 'bags', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (655, 'C.W. Nails # 4 ', 'CMU-ITEM', 'C.W. Nails # 4 ', 'kls.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (656, 'C.W. Nails # 3  ', 'CMU-ITEM', 'C.W. Nails # 3  ', 'kls.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (657, 'Washed Screened Sand ', 'CMU-ITEM', 'Washed Screened Sand ', 'cu.m.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (658, '#16 G.I. Tie Wires', 'CMU-ITEM', '#16 G.I. Tie Wires', 'kls.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (659, 'Washed Fine Sand passing 1/8', 'CMU-ITEM', 'Washed Fine Sand passing 1/8', 'cu.m.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (660, 'Adhesive Cement (25kgs./bag)', 'CMU-ITEM', 'Adhesive Cement (25kgs./bag)', 'bags', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (661, '1 1/2\" tox screw welded', 'CMU-ITEM', '1 1/2\" tox screw welded', 'pcs.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (662, 'C.W. Nails # 2 ½\"  ', 'CMU-ITEM', 'C.W. Nails # 2 ½\"  ', 'kls.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (663, 'PPR Tee 1\"', 'CMU-ITEM', 'PPR Tee 1\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (664, 'PPR Bushing Reducer 1\" x 1/2\"', 'CMU-ITEM', 'PPR Bushing Reducer 1\" x 1/2\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (665, 'PPR Elbow 1”', 'CMU-ITEM', 'PPR Elbow 1”', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (666, 'PPR Pipe 1\"', 'CMU-ITEM', 'PPR Pipe 1\"', 'Length', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (667, 'PPR Pipe 1/2\"', 'CMU-ITEM', 'PPR Pipe 1/2\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (668, 'PPR Elbow 1/2\"', 'CMU-ITEM', 'PPR Elbow 1/2\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (669, 'PPR Tee 1/2\"', 'CMU-ITEM', 'PPR Tee 1/2\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (670, 'PPR Coupling 1\"', 'CMU-ITEM', 'PPR Coupling 1\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (671, 'PPR Male Adaptor 1/2\"', 'CMU-ITEM', 'PPR Male Adaptor 1/2\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (672, 'PPR Coupling 1/2\"', 'CMU-ITEM', 'PPR Coupling 1/2\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (673, 'PPR Female Adaptor 1\"', 'CMU-ITEM', 'PPR Female Adaptor 1\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (674, 'PPR Male Adaptor 1\"', 'CMU-ITEM', 'PPR Male Adaptor 1\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (675, 'PPR Female Adaptor 3/4\"', 'CMU-ITEM', 'PPR Female Adaptor 3/4\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (676, 'PPR Bushing Reducer  3/4\"', 'CMU-ITEM', 'PPR Bushing Reducer  3/4\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (677, 'PPR Pipe 3/4\"', 'CMU-ITEM', 'PPR Pipe 3/4\"', 'Length', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (678, 'P.E Tee 1\"', 'CMU-ITEM', 'P.E Tee 1\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (679, 'Seal Tape 3/4\"', 'CMU-ITEM', 'Seal Tape 3/4\"', 'Pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (680, 'Barb Wire #12, Galvanized  (LENGTH: At least 100 meters / roll)', 'CMU-ITEM', 'Barb Wire #12, Galvanized  (LENGTH: At least 100 meters / roll)', 'Roll', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (681, 'Cotton Gloves with rubberized pads', 'CMU-ITEM', 'Cotton Gloves with rubberized pads', 'Pair', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (682, 'Plastic Twine (1kg/roll)', 'CMU-ITEM', 'Plastic Twine (1kg/roll)', 'Roll', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (683, 'Polypropylene Rope #24 (12mm) 200 meters/roll', 'CMU-ITEM', 'Polypropylene Rope #24 (12mm) 200 meters/roll', 'Roll', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (684, 'Power sprayer Nozzle (Three (3) Straight for belt type, Brass Nozzle Head)', 'CMU-ITEM', 'Power sprayer Nozzle (Three (3) Straight for belt type, Brass Nozzle Head)', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (685, 'Raincoat Rubberized (upper with pants) (Large)', 'CMU-ITEM', 'Raincoat Rubberized (upper with pants) (Large)', 'Pair', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (686, 'Rattan Crate, Medium (Diameter Approximately 24\")', 'CMU-ITEM', 'Rattan Crate, Medium (Diameter Approximately 24\")', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (687, 'Rubber boots (black) (4 pairs size 7, 4 pairs size 8)', 'CMU-ITEM', 'Rubber boots (black) (4 pairs size 7, 4 pairs size 8)', 'Pair', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (688, 'Rice Sickle Size: 8-12 inches                                                                             Weight: 0.5Kilogram', 'CMU-ITEM', 'Rice Sickle Size: 8-12 inches                                                                             Weight: 0.5Kilogram', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (689, 'Shading net/Garden Net (black-8 feet in height) 100 meters lenght', 'CMU-ITEM', 'Shading net/Garden Net (black-8 feet in height) 100 meters lenght', 'Roll', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (690, 'Sharpening Stone,  SIZE: 6\" Original', 'CMU-ITEM', 'Sharpening Stone,  SIZE: 6\" Original', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (691, 'Slashing Bolo 18\"', 'CMU-ITEM', 'Slashing Bolo 18\"', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (692, 'Sprayer nozzle (butterfly type)', 'CMU-ITEM', 'Sprayer nozzle (butterfly type)', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (693, 'Deformed Bar 8mm x 20', 'CMU-ITEM', 'Deformed Bar 8mm x 20', 'Piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (694, 'Marine Plywood, 1/4', 'CMU-ITEM', 'Marine Plywood, 1/4', 'Piece ', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (695, 'Ceramic tiles 60cm x 60cm, end user preference', 'CMU-ITEM', 'Ceramic tiles 60cm x 60cm, end user preference', 'pcs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (696, 'Washed screen sand', 'CMU-ITEM', 'Washed screen sand', 'cu.m.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (697, 'Premium portland cement', 'CMU-ITEM', 'Premium portland cement', 'bags', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (698, 'Premium tile adhesive', 'CMU-ITEM', 'Premium tile adhesive', 'bags', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (699, 'Superthin 4\" diamond cutter', 'CMU-ITEM', 'Superthin 4\" diamond cutter', 'pcs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (700, 'Deformed bar 10mm x 6m', 'CMU-ITEM', 'Deformed bar 10mm x 6m', 'pcs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (701, 'G.I tie wire # 16', 'CMU-ITEM', 'G.I tie wire # 16', 'kls', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (702, 'Concrete nails 2 1/2\"', 'CMU-ITEM', 'Concrete nails 2 1/2\"', 'kls', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (703, 'Premium semi gloss latex jumbo gray', 'CMU-ITEM', 'Premium semi gloss latex jumbo gray', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (704, 'Premium semi gloss latex offwhite', 'CMU-ITEM', 'Premium semi gloss latex offwhite', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (705, 'Sand paper #120 ', 'CMU-ITEM', 'Sand paper #120 ', 'pcs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (706, 'Premium paint brush (2”)', 'CMU-ITEM', 'Premium paint brush (2”)', 'pcs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (707, 'Baby roller with basin (4”)', 'CMU-ITEM', 'Baby roller with basin (4”)', 'sets', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (708, 'C-purlins 2” x 3” x 20\'', 'CMU-ITEM', 'C-purlins 2” x 3” x 20\'', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (709, 'Ord.  Corr. Color Roofing 1.0m eff. X 1.6m, spanish red', 'CMU-ITEM', 'Ord.  Corr. Color Roofing 1.0m eff. X 1.6m, spanish red', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (710, 'Ridge roll  0.6 x 2.4m, spanish red', 'CMU-ITEM', 'Ridge roll  0.6 x 2.4m, spanish red', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (711, 'Welding rod 6013 ', 'CMU-ITEM', 'Welding rod 6013 ', 'Kilos', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (712, 'Metal texscrew 2 ½”', 'CMU-ITEM', 'Metal texscrew 2 ½”', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (713, 'Cutting disc  1/16” thickness x 4” diameter, heavy duty', 'CMU-ITEM', 'Cutting disc  1/16” thickness x 4” diameter, heavy duty', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (714, 'Angle bar ¼”thk x 1 ½” x 1 ½” x 20\'', 'CMU-ITEM', 'Angle bar ¼”thk x 1 ½” x 1 ½” x 20\'', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (715, 'Plain Round bar 12mm', 'CMU-ITEM', 'Plain Round bar 12mm', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (716, '6” Paint roller with basin ', 'CMU-ITEM', '6” Paint roller with basin ', 'sets', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (717, 'TW Wire #22mm²', 'CMU-ITEM', 'TW Wire #22mm²', 'm', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (718, 'TW Wire #14mm ²', 'CMU-ITEM', 'TW Wire #14mm ²', 'm', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (719, 'Panel Board with circuit breaker boil in/boil out', 'CMU-ITEM', 'Panel Board with circuit breaker boil in/boil out', 'set', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (720, 'Single Circuit breaker, 40 Amp. with panel board', 'CMU-ITEM', 'Single Circuit breaker, 40 Amp. with panel board', 'pc', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (721, 'PPR pipe 1/2 in.', 'CMU-ITEM', 'PPR pipe 1/2 in.', 'length', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (722, 'PPR plain elbow 1/2 in.', 'CMU-ITEM', 'PPR plain elbow 1/2 in.', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (723, 'GR Nipple 12in-1/2in.', 'CMU-ITEM', 'GR Nipple 12in-1/2in.', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (724, 'PPR Male coupler 1/2in.', 'CMU-ITEM', 'PPR Male coupler 1/2in.', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (725, 'GI coupling 1/2 in.', 'CMU-ITEM', 'GI coupling 1/2 in.', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (726, 'Faucet ½” - Iron Brass, Heavy Duty', 'CMU-ITEM', 'Faucet ½” - Iron Brass, Heavy Duty', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (727, 'Teflon tape 3/4\"', 'CMU-ITEM', 'Teflon tape 3/4\"', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (728, 'PPR female elbow 1/2\"', 'CMU-ITEM', 'PPR female elbow 1/2\"', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (729, 'Whiteboard with Stand & Rollers (with aluminum Frame)- 3ft x 5ft with eraser holder, Quality board with aluminum frame and plywood ¼” thick', 'CMU-ITEM', 'Whiteboard with Stand & Rollers (with aluminum Frame)- 3ft x 5ft with eraser holder, Quality board with aluminum frame and plywood ¼” thick', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (730, '1/4\" Marine Plywood', 'CMU-ITEM', '1/4\" Marine Plywood', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (731, '2x6x8 good lumber ', 'CMU-ITEM', '2x6x8 good lumber ', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (732, '2x3x12 good lumber', 'CMU-ITEM', '2x3x12 good lumber', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (733, 'Doorknob Heavy Duty', 'CMU-ITEM', 'Doorknob Heavy Duty', 'set', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (734, '1 1/2\" x 4\" Hinges with screw', 'CMU-ITEM', '1 1/2\" x 4\" Hinges with screw', 'pair', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (735, 'Wood primer ', 'CMU-ITEM', 'Wood primer ', 'gal', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (736, 'Paint thinner', 'CMU-ITEM', 'Paint thinner', 'gal', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (737, 'QDE white (for final color)', 'CMU-ITEM', 'QDE white (for final color)', 'gal', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (738, 'QDE Brown (for door and door jamb)', 'CMU-ITEM', 'QDE Brown (for door and door jamb)', 'Li.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (739, '4\" Baby roller with basin', 'CMU-ITEM', '4\" Baby roller with basin', 'pcs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (740, '2\" paint brush', 'CMU-ITEM', '2\" paint brush', 'pcs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (741, 'Wood filler', 'CMU-ITEM', 'Wood filler', 'L', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (742, 'Welding Rod R12, 20kls/box ', 'CMU-ITEM', 'Welding Rod R12, 20kls/box ', 'boxes', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (743, 'Deformed bar 10mm Ø  x 6m', 'CMU-ITEM', 'Deformed bar 10mm Ø  x 6m', 'piece', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (744, 'Premium portland cement', 'CMU-ITEM', 'Premium portland cement', 'bags', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (745, 'Washed screened sand', 'CMU-ITEM', 'Washed screened sand', 'cu.m.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (746, 'Phenolic board 3/4\" x 4\' x 8\'', 'CMU-ITEM', 'Phenolic board 3/4\" x 4\' x 8\'', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (747, 'Square bar 16mm Ø  x 6m', 'CMU-ITEM', 'Square bar 16mm Ø  x 6m', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (748, 'Square bar 12mm Ø  x 6m', 'CMU-ITEM', 'Square bar 12mm Ø  x 6m', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (749, 'Welding rod R12, 20kls/box', 'CMU-ITEM', 'Welding rod R12, 20kls/box', 'boxes', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (750, 'Cutting disc 1/16\" x 4\", heavy duty', 'CMU-ITEM', 'Cutting disc 1/16\" x 4\", heavy duty', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (751, 'Cutting disc 1/4 x 14\", heavy duty', 'CMU-ITEM', 'Cutting disc 1/4 x 14\", heavy duty', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (752, 'Sanding disc 1/4 x 4\", heavy duty', 'CMU-ITEM', 'Sanding disc 1/4 x 4\", heavy duty', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (753, 'G.I. pipe 2 ½” Ø x 20\', sch. 40', 'CMU-ITEM', 'G.I. pipe 2 ½” Ø x 20\', sch. 40', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (754, 'Welding machine 300 watts heavy duty with 10 meters cable and heavy duty electrode handle', 'CMU-ITEM', 'Welding machine 300 watts heavy duty with 10 meters cable and heavy duty electrode handle', 'set', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (755, 'Industrial cut off saw 2200-2550 watts heavy duty with 2 pcs blade 14\"', 'CMU-ITEM', 'Industrial cut off saw 2200-2550 watts heavy duty with 2 pcs blade 14\"', 'set', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (756, 'Angle bar ¼” thk x 1\" x1”x 20\'', 'CMU-ITEM', 'Angle bar ¼” thk x 1\" x1”x 20\'', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (757, 'Angle bar ¼” thk x 2\" x2” x 20\'', 'CMU-ITEM', 'Angle bar ¼” thk x 2\" x2” x 20\'', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (758, 'Metal bearing #6204', 'CMU-ITEM', 'Metal bearing #6204', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (759, 'Rectangular tube 2mm thk 2\" x 4\" x 20\'', 'CMU-ITEM', 'Rectangular tube 2mm thk 2\" x 4\" x 20\'', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (760, 'Prepainted mini rib roofing 1.0m x 3m spanish red', 'CMU-ITEM', 'Prepainted mini rib roofing 1.0m x 3m spanish red', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (761, 'Prepainted mini rib moulding spanish red (8ft)', 'CMU-ITEM', 'Prepainted mini rib moulding spanish red (8ft)', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (762, 'Metal texscrew 2 1/2', 'CMU-ITEM', 'Metal texscrew 2 1/2', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (763, 'Premium epoxy primer, black', 'CMU-ITEM', 'Premium epoxy primer, black', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (764, 'lacquer thinner', 'CMU-ITEM', 'lacquer thinner', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (765, 'paint thinner', 'CMU-ITEM', 'paint thinner', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (766, 'paint reducer', 'CMU-ITEM', 'paint reducer', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (767, 'baby paint roller 4”', 'CMU-ITEM', 'baby paint roller 4”', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (768, 'Sandpaper size #120', 'CMU-ITEM', 'Sandpaper size #120', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (769, 'Solar panel monocrystalline 500 watts with solar charge controller, heavy duty', 'CMU-ITEM', 'Solar panel monocrystalline 500 watts with solar charge controller, heavy duty', 'sets', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (770, 'Solar gel battery 12 volts, 100AH, heavy duty', 'CMU-ITEM', 'Solar gel battery 12 volts, 100AH, heavy duty', 'unit', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (771, 'DC LED bulb, 7 watts, heavy duty', 'CMU-ITEM', 'DC LED bulb, 7 watts, heavy duty', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (772, 'Outdoor receptacle, heavy duty', 'CMU-ITEM', 'Outdoor receptacle, heavy duty', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (773, 'Outdoor switch, heavy duty, single', 'CMU-ITEM', 'Outdoor switch, heavy duty, single', 'pieces', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (774, 'Flat cord wire 14mm2/130 meters per roll/black/heavy duty', 'CMU-ITEM', 'Flat cord wire 14mm2/130 meters per roll/black/heavy duty', 'rolls', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (775, 'Battery clamp medium', 'CMU-ITEM', 'Battery clamp medium', 'pairs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (776, 'Premium garden soil/cocopeat, 50 kls per bag', 'CMU-ITEM', 'Premium garden soil/cocopeat, 50 kls per bag', 'bags', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (777, 'Premium vermicast, 50 kls per bag', 'CMU-ITEM', 'Premium vermicast, 50 kls per bag', 'bags', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (778, 'Premium portland cement', 'CMU-ITEM', 'Premium portland cement', 'bags', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (779, 'Cutting disc 1/16\" x 4\", heavy duty', 'CMU-ITEM', 'Cutting disc 1/16\" x 4\", heavy duty', 'pcs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (780, 'Garden net double backing, black, 100 meters per roll', 'CMU-ITEM', 'Garden net double backing, black, 100 meters per roll', 'rolls', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (781, 'Phenolic board 3/4\" x 4\' x 8\'', 'CMU-ITEM', 'Phenolic board 3/4\" x 4\' x 8\'', 'pcs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (782, 'Deformed bar 12mm Ø x 6m', 'CMU-ITEM', 'Deformed bar 12mm Ø x 6m', 'pcs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (783, 'R12 welding rod, heavy duty', 'CMU-ITEM', 'R12 welding rod, heavy duty', 'kls.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (784, 'Washed screened sand passing 1/4', 'CMU-ITEM', 'Washed screened sand passing 1/4', 'cu.m.', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (785, 'Premium epoxy primer, black', 'CMU-ITEM', 'Premium epoxy primer, black', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (786, 'Premium paint reducer', 'CMU-ITEM', 'Premium paint reducer', 'gals', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (787, 'Premium baby paint roller', 'CMU-ITEM', 'Premium baby paint roller', 'pcs', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (788, 'Alum. Wire screened 1/4 x 4\'', 'CMU-ITEM', 'Alum. Wire screened 1/4 x 4\'', 'meters', 1, 1, 30, 23, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (789, 'Separation Pad C2672820', 'CMU-ITEM', 'Separation Pad C2672820', 'pcs', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (790, 'Separation Pad C2522820', 'CMU-ITEM', 'Separation Pad C2522820', 'pc', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (791, 'Transport Belt C2613879', 'CMU-ITEM', 'Transport Belt C2613879', 'pcs', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (792, 'Lower Feed Roller C2612881', 'CMU-ITEM', 'Lower Feed Roller C2612881', 'pc', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (793, 'Paper Feed Magnetic Clutch C2615879', 'CMU-ITEM', 'Paper Feed Magnetic Clutch C2615879', 'pc', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (794, 'Drum DR114', 'CMU-ITEM', 'Drum DR114', 'pc', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (795, 'Developer DV116', 'CMU-ITEM', 'Developer DV116', 'pc', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (796, 'IU After Assy (A1XU-R700-33)', 'CMU-ITEM', 'IU After Assy (A1XU-R700-33)', 'unit', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (797, 'Toner Hopper (M) Part #: DOBQ3282 (Parts Replacement for MPC2004 & MPC2011)', 'CMU-ITEM', 'Toner Hopper (M) Part #: DOBQ3282 (Parts Replacement for MPC2004 & MPC2011)', 'unit', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (798, 'PCDU (M) Part #: D2442226 (Parts Replacement for MPC2004)', 'CMU-ITEM', 'PCDU (M) Part #: D2442226 (Parts Replacement for MPC2004)', 'unit', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (799, 'PCDU (M) Part #: D1882232 (Parts Replacement for MPC2011)', 'CMU-ITEM', 'PCDU (M) Part #: D1882232 (Parts Replacement for MPC2011)', 'unit', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (800, 'PCU (K, Y, C) Part #: D2442250 (Parts Replacement for MPC2004)', 'CMU-ITEM', 'PCU (K, Y, C) Part #: D2442250 (Parts Replacement for MPC2004)', 'unit', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (801, 'PCU (K, Y, C) Part #: D1882235 (Parts Replacement for MPC2011)', 'CMU-ITEM', 'PCU (K, Y, C) Part #: D1882235 (Parts Replacement for MPC2011)', 'unit', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (802, 'Cleaning Unit Part #: DOBQ6141 (Parts Replacement for MPC2004 & MPC2011)', 'CMU-ITEM', 'Cleaning Unit Part #: DOBQ6141 (Parts Replacement for MPC2004 & MPC2011)', 'unit', 1, 1, 30, 27, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (803, '0-0-60 (Packaging: Fifty (50) Kilograms per Bag)', 'CMU-ITEM', '0-0-60 (Packaging: Fifty (50) Kilograms per Bag)', 'bag', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (804, '14-14-14 (Packaging: Fifty (50) Kilograms per Bag)', 'CMU-ITEM', '14-14-14 (Packaging: Fifty (50) Kilograms per Bag)', 'bag', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (805, '21-0-0 (Packaging: Fifty (50) Kilograms per Bag)', 'CMU-ITEM', '21-0-0 (Packaging: Fifty (50) Kilograms per Bag)', 'bag', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (806, '46-0-0 (Packaging: Fifty (50) Kilograms per Bag)', 'CMU-ITEM', '46-0-0 (Packaging: Fifty (50) Kilograms per Bag)', 'bag', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (807, 'Protective Safety Goggles', 'CMU-ITEM', 'Protective Safety Goggles', 'pieces ', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (808, 'Large Paper Bags (waxy)', 'CMU-ITEM', 'Large Paper Bags (waxy)', 'pieces ', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (809, 'Plastic Canvas or tarp', 'CMU-ITEM', 'Plastic Canvas or tarp', 'Meter ', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (810, 'Net Bags (nylon)', 'CMU-ITEM', 'Net Bags (nylon)', 'pieces ', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (811, 'Desiccated Silica/ 1 kg/pack Silica Gel/ Desiccant/ Reusable', 'CMU-ITEM', 'Desiccated Silica/ 1 kg/pack Silica Gel/ Desiccant/ Reusable', 'kilogram ', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (812, 'Plastic Pail with Cover 50L', 'CMU-ITEM', 'Plastic Pail with Cover 50L', 'pieces ', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (813, 'Insecticide (210g/L Chlorpyrifos)', 'CMU-ITEM', 'Insecticide (210g/L Chlorpyrifos)', 'liter ', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (814, 'Calcium Nitrate, Fifty (50) Kilograms per Bag', 'CMU-ITEM', 'Calcium Nitrate, Fifty (50) Kilograms per Bag', 'bag', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (815, 'Empty Sacks', 'CMU-ITEM', 'Empty Sacks', 'Pc', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (816, 'Polypropylene (Rope #24)', 'CMU-ITEM', 'Polypropylene (Rope #24)', 'm', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (817, 'Complete Fertilizer (14-14-14)', 'CMU-ITEM', 'Complete Fertilizer (14-14-14)', 'Bag', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (818, '0-0-60', 'CMU-ITEM', '0-0-60', 'Bag', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (819, '21-0-0', 'CMU-ITEM', '21-0-0', 'Bag', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (820, '46-0-0', 'CMU-ITEM', '46-0-0', 'Bag', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (821, 'Herbicide (300g/L Pretilachlor)', 'CMU-ITEM', 'Herbicide (300g/L Pretilachlor)', 'Liter', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (822, 'Herbicide (Cyhalofop Butyl 60g/L, Pyribenzoxim 25g/L) ', 'CMU-ITEM', 'Herbicide (Cyhalofop Butyl 60g/L, Pyribenzoxim 25g/L) ', 'Liter', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (823, 'Insecticide (500ml/bot Cholorantraniliprole 50g/L)', 'CMU-ITEM', 'Insecticide (500ml/bot Cholorantraniliprole 50g/L)', 'bot', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (824, 'Insecticide (Malathion 570g/L )', 'CMU-ITEM', 'Insecticide (Malathion 570g/L )', 'Liter', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (825, 'Insecticide (25g/L Lambda-cyhalothrin )', 'CMU-ITEM', 'Insecticide (25g/L Lambda-cyhalothrin )', 'Liter', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (826, 'Glyphosate 480SL 4L/Gallon', 'CMU-ITEM', 'Glyphosate 480SL 4L/Gallon', 'gal', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (827, 'buprofezin (100mg/sachet)', 'CMU-ITEM', 'buprofezin (100mg/sachet)', 'sachet', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (828, 'calcium carbibe (30kg)', 'CMU-ITEM', 'calcium carbibe (30kg)', 'drum', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (829, 'carbufuran 30g/kg (16.7kg/bag)', 'CMU-ITEM', 'carbufuran 30g/kg (16.7kg/bag)', 'bag', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (830, 'cartap hydrochloride ES (500g/kg)', 'CMU-ITEM', 'cartap hydrochloride ES (500g/kg)', 'box', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (831, 'chlorpyrifos 300g/L', 'CMU-ITEM', 'chlorpyrifos 300g/L', 'bot', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (832, 'clothianidin 200ml/L (500ml/bottle)', 'CMU-ITEM', 'clothianidin 200ml/L (500ml/bottle)', 'bot', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (833, 'cyhalofop butyl 150g/L, bispyribac sodium 50g/L', 'CMU-ITEM', 'cyhalofop butyl 150g/L, bispyribac sodium 50g/L', 'liter', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (834, 'cyhalofop butyl 60g/L, pyribenzoxim 25g/L', 'CMU-ITEM', 'cyhalofop butyl 60g/L, pyribenzoxim 25g/L', 'liter', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (835, 'difenoconazole 150g/L, propiconazole 150g/L', 'CMU-ITEM', 'difenoconazole 150g/L, propiconazole 150g/L', 'bot', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (836, 'dimethoate 400g/L', 'CMU-ITEM', 'dimethoate 400g/L', 'liter', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (837, 'fipronil 50g/L (500ml/bottle)', 'CMU-ITEM', 'fipronil 50g/L (500ml/bottle)', 'bot', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (838, 'glyphosate broad spectrum(480g/L)', 'CMU-ITEM', 'glyphosate broad spectrum(480g/L)', 'drum', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (839, 'imidacloprid+betacyfluthrin 25g/L', 'CMU-ITEM', 'imidacloprid+betacyfluthrin 25g/L', 'bot', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (840, 'lambda-cyhalothrin 25g/L', 'CMU-ITEM', 'lambda-cyhalothrin 25g/L', 'liter', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (841, 'lambda-cyhalothrin 106g/L, thiamethoxam 141g/L', 'CMU-ITEM', 'lambda-cyhalothrin 106g/L, thiamethoxam 141g/L', 'liter', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (842, 'mancozeb 750g/kg', 'CMU-ITEM', 'mancozeb 750g/kg', 'kg', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (843, 'metamyfop 130mg/L, penuxalam 20g/L', 'CMU-ITEM', 'metamyfop 130mg/L, penuxalam 20g/L', 'liter', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (844, 'methomyl 40 SP (500g)', 'CMU-ITEM', 'methomyl 40 SP (500g)', 'box', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (845, 'sticker', 'CMU-ITEM', 'sticker', 'liter', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (846, 'thiamethoxam chlorantraniliprole (40 WG)', 'CMU-ITEM', 'thiamethoxam chlorantraniliprole (40 WG)', 'box', 1, 1, 31, 39, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (847, 'A3 Full Colored Heavy Duty Multifunctional Copier,Printer and Scanner Printing and Copying Speed: 22PPM minimum.', 'CMU-ITEM', 'Imaging Technology: Laser Printer; Copying Process: Electrostatic laser, copy, tandem, intermediate;TonerSystem: SimitriHD Polymerized Toner; Original Size: A5-A3; System memory: 6GBMinimum; System Storage: 8GB microSD; 256 GB SSD; Document Feeder:DF633 B', 'unit', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (848, 'A3 Monochrome Heavy Duty Multifunctional Copier, Printer and Scanner', 'CMU-ITEM', 'Printing and Copying Speed: 36PPM minimum; Imaging Technology: Laser Printer; Copying Process: Electrostatic laser, copy, tandem, intermediate; Toner System: SimitriHD Polymerized Toner; Original Size: A5-A3; System memory: 8,192 MB Minimum; Output capaci', 'unit', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (849, 'Table printer/scanner, Print, Scan, Copy, Fax, Color Laser, A4, letter, legal, 600 x 600 dpi, 2,400 dpi class (2400 x 600) quality, Plain Paper, Letterhead, Colored Paper, Thin Paper, Recycled Paper, Glossy Paper, envelope, 2 paper trays, ADF, ENLARGE/RED', 'CMU-ITEM', 'Table printer/scanner, Print, Scan, Copy, Fax, Color Laser, A4, letter, legal, 600 x 600 dpi, 2,400 dpi class (2400 x 600) quality, Plain Paper, Letterhead, Colored Paper, Thin Paper, Recycled Paper, Glossy Paper, envelope, 2 paper trays, ADF, ENLARGE/RED', 'unit', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (850, 'Flatbed, Duplex Scanner Type ADF (Automatic Document Feeder) / Flatbed, Duplex', 'CMU-ITEM', 'Scanning Speed*¹ (A4 Portrait) (Color*²/Grayscale*²/Monochrome*³ ADF; Simplex: 80 ppm (200/300 dpi) Duplex: 160 ipm (200/300 dpi) Flatbed 1.7 seconds (200 dpi); Image Sensor Type Color CCD x 3 (front x 1, back x 1, Flatbed x 1); Light Source White LED Arr', 'unit', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (851, 'Floor Mounted Air-conditioner', 'CMU-ITEM', 'Specifications and Accessories: 4.0 HP; 3TR; Floor; Mounted Air-conditioner; Power Supply; 230V/1ph/60hz; Refrigerant R410A; Cooling Capacity 36,100 kJ/Hr; System Power Input 3,900W; EER; 9.3Kj/W-hr; System current 17.2A; Indoor dimensions; WxDxH 508x288x', 'unit', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (852, '2.5 HP Split Type Wall Mounted Non-Inverter Air Conditioner ', 'CMU-ITEM', 'Cooling Capacity (kJ/Hr): 24,000; System Power Input (W): 2,550 EER (kJ/W)-Hr): 10.2; System Current (A):1103 Sound Pressure Level (dBA): 45/35; Power Supply (V/Hz/Ph):220-230v-60Hz, 1Phh; Refrigerant Type (g): R410A/1,240; 20 meters wiring specs from cir', 'unit', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (853, 'Aircon (Ceiling Suspended Type)', 'CMU-ITEM', 'Capacity: 5 TR; Type: Inverter (3 or single phase); Warranty & Service: 1 year service/5 year for compressor); EER: 10 minimum; Accessories: Remote control, timer; Refrigerant: R410A or equivalent; Installation: Installation service including refrigerant ', 'unit', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (854, 'UPS', 'CMU-ITEM', 'Product Description: 900VA-650W Uninterruptible Power, Supply, 5 Outlet, AVR/Surge; Input Power: 220V-240V, 50/60Hz +/- 5Hz (auto sensing); Battery recharge time: 8 hours; Battery Type: Lead-Acid', 'piece', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (855, 'Digital Voice Recorder', 'CMU-ITEM', 'Internal Storage: 4 GB; Recording Time: 159 Hours; USB Charging: Supported; Battery Life: 22 hours; Display: 1.42 inches; LCD Features: S-Mic, high sensitivity microphones, focus recording, wide stereo recording, intelligent noise reduction; Additional Fe', 'piece', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (856, 'Webcam', 'CMU-ITEM', 'Resolution: 4K Full HD (3840*2160); Focus Type: Fixed Focus; Microphone: Built-in dual noise reduction microphone; System Compatibility: Windows 7/8/10, Mac OS x 10.6 or above, Chrome OS, Android 5.0 or above; Features: Adjustable bracket, removable camer', 'piece', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (857, 'HDMI ', 'CMU-ITEM', 'High-speed HDMI to HDMI cable, 10 meters Works with HDTV\'s digital cameras/camcorders, MP3 players, and other HDMI devices Support Ethernet, 3D, and Audio Return Meets HDMI 1.4 specifications; shielded to defend against interference', 'piece', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (858, 'Flash drive', 'CMU-ITEM', '64GB SE9 G2 USB 3.0 Flash Drive', 'piece', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (859, 'External Storage', 'CMU-ITEM', 'Extreme PRO 1TB Portable SSD V2 (SDSSDE81-1T00-G25 with Up to 2000MB/s Read and 2000MB/s Write Speed', 'piece', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (860, 'Power bank', 'CMU-ITEM', '60000mAh Power Bank 22.5W PD QC 3.0 Two-Way Quick Charge Fast Charging Powerbank Type-C External Battery Charger Plus Original Powerbank', 'set', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (861, 'Switch Hub', 'CMU-ITEM', 'Switch type: 8-port Gigabit Switch Ethernet Ports: 8 RJ45 Ports at 2.5Gbps Hub Type: 8-port Hub Intended use: Home NAS Core networking Speed: 1 Gbps Switch Capability', 'piece', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (862, 'Mouse', 'CMU-ITEM', 'Ergonomic Design: User-friendly and comfortable for prolonged use. Wired Connectivity: Connected via a standard cable; Sensor: Optical sensor technology; Sensitivity (DPI): Supports up to 6400 DPI; Speed (IPS): Offers a maximum speed of 220 IPS; Programma', 'piece', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (863, 'Wireless Lavalier MicrophoneV2/V20 with Noise Reduction (2 microphone) for USB-C Android Smartphones', 'CMU-ITEM', 'Wireless Lavalier MicrophoneV2/V20 with Noise Reduction (2 microphone) for USB-C Android Smartphones', 'unit', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (864, 'Camera Tripod-Aluminum Alloy Tripod with 3-way Pan Tilt Head up to 5kg Load Capacity for Smartphones and DSLR cameras', 'CMU-ITEM', 'Camera Tripod-Aluminum Alloy Tripod with 3-way Pan Tilt Head up to 5kg Load Capacity for Smartphones and DSLR cameras', 'unit', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (865, 'Flash Drive 3.0 128GB', 'CMU-ITEM', 'Flash Drive 3.0 128GB', 'piece', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (866, 'External hard drive portable SSD up to 2000MB/S External Solid-state drive 2TB USB 3.2 Gen2', 'CMU-ITEM', 'External hard drive portable SSD up to 2000MB/S External Solid-state drive 2TB USB 3.2 Gen2', 'unit', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (867, 'Keyboard', 'CMU-ITEM', 'Durability: Built to withstand daily professional use; Key switch Type: Mechanical for longevity and tactile feedback; Key Lifecycle: Minimum 50 million key presses; Spill-Resistant: Protection against liquid damage; Ergonomic Design: Comfortable typing a', 'piece', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (868, 'A3 Wi-Fi Duplex All-in-One Table Printer', 'CMU-ITEM', 'Print up to 7,500 pages in black and 6,000 pages color, A3+ multifunction printer with touchscreen, ADF, and fax, Print Speed: Photo Default - 10 x 15 cm / 4 x 6 \" *1: Approx. 26 sec per photo (Border) / 27 sec per photo (Borderless), Photo Default - 10 x', 'unit', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (869, 'Headset', 'CMU-ITEM', 'Headset with 3D Sound, Noise Cancellation Mic, Inspired Soft memory earpads Connection Type Wired; Frequency Response: 20 Hz – 20,000 Hz; Impedance: 50–80 ohms', 'piece', 1, 1, 18, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (870, 'Supply, Delivery and Installation of High-Quality Auditorium Chairs Outbreak: Injection Molded, high-impact polypropylene seat and back cushion: cold moulded high resilient foam and contoured seat cushion set pan; high impact polypropylene tip-up seat mec', 'CMU-ITEM', 'Supply, Delivery and Installation of High-Quality Auditorium Chairs Outbreak: Injection Molded, high-impact polypropylene seat and back cushion: cold moulded high resilient foam and contoured seat cushion set pan; high impact polypropylene tip-up seat mec', 'pcs', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (871, 'Laboratory Side Table with Drawers & Cabinet Dimensions: At least 4000mm (L)x600mm(V)x900mm(H); Frame: steelstructure Cabinet: use high quality galvanized steel sheet, surface coated with epoxy powder; Table top: made of at least 12.7 mm thickness corrosi', 'CMU-ITEM', 'Laboratory Side Table with Drawers & Cabinet Dimensions: At least 4000mm (L)x600mm(V)x900mm(H); Frame: steelstructure Cabinet: use high quality galvanized steel sheet, surface coated with epoxy powder; Table top: made of at least 12.7 mm thickness corrosi', 'Units', 1, 1, 12, 41, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (872, 'Gasoline', 'CMU-ITEM', 'Gasoline', 'liters', 1, 1, 28, 55, 1, 1, NULL, NULL, NULL);
INSERT INTO `items` VALUES (873, '2T Oil ', 'CMU-ITEM', '2T Oil ', 'liter', 1, 1, 28, 55, 1, 1, NULL, NULL, NULL);
INSERT INTO `items` VALUES (874, 'Brake Fluid, dot 3', 'CMU-ITEM', 'Brake Fluid, dot 3', 'liter', 1, 1, 28, 55, 1, 1, NULL, NULL, NULL);
INSERT INTO `items` VALUES (875, 'Grease, MP3', 'CMU-ITEM', 'Grease, MP3', 'kilogram', 1, 1, 28, 55, 1, 1, NULL, NULL, NULL);
INSERT INTO `items` VALUES (876, 'Laptop', 'CMU-ITEM', 'CPU: AMD Ryzen 5 4500U or better; RAM 16GB or better; Storage: 512GB Pcle NVMe SSD; GPU:Integrated AMD Radeon Graphics; Display: 14 inch Full HD; GPU: Integrated AMD Radeon /graphics; Licensed Office , OS', 'unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (877, 'Laptop', 'CMU-ITEM', 'OS: Windows 11 Pro; Processor: Intel Core i7, latest gen; Memory: 8GB,DDR4 SDRAM; Storage: 512SSD; Display: 15.6; Licensed Office', 'Set', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (878, 'Printer', 'CMU-ITEM', 'Type: All in one printer (Print, Scan, Copy); Printer speed: 33ppm (b&w); 15ppm (colored); Resolution: 5760x1140 dpi; Ink Tank System', 'Units', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (879, 'Laptop', 'CMU-ITEM', 'Intel Core i5-1235U processor; 8GB of SDRAM DDR5 system memory; 512GB NVMe SSD; 15.6 inch display; Bluetooth 5.1; Wifi 6; Windows 11 Home; Licensed Office', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (880, 'Printer', 'CMU-ITEM', 'Printer: A4 Wi-fi all-in-one Ink Tank Printer with ADF; Print,scan,copy,fax with ADF compact integtrated tank design; high yield ink bottles;spill-free, error-free refilling, Wifi, Wi-fi Direct; Seamless setup via smart panel;borderless printing up to 4R.', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (881, 'A4 Printer with WI-FI Print, scan, copy Compact integrated tank design High-yield ink bottles Spill-free, error-free refilling Wi-Fi & Wi-Fi Direct Seamless setup via smart panel Borderless printing up to 4R Heat-Free Technology', 'CMU-ITEM', 'A4 Printer with WI-FI Print, scan, copy Compact integrated tank design High-yield ink bottles Spill-free, error-free refilling Wi-Fi & Wi-Fi Direct Seamless setup via smart panel Borderless printing up to 4R Heat-Free Technology', 'Set', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (882, 'Laptop', 'CMU-ITEM', 'Processor: Ryzen 5000 series Processor 208 Ghz (12M Cache, up to 4.7 hz, 4 Cores; Operating system: windows 10-11 upgradable OLED 60HZ 1.4K RES or Display: 14.0-inch, FHD (1920X1080) Additional Display: Screen pad ™ 2.0 (FHD+ (2160X1080) IPS Level Panel; ', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (883, 'Electric Motorized Projector Screen', 'CMU-ITEM', 'Operation: Switch/Remote; Cord Length: 8ft; Viewing Area: 87\" x 49\" Diagonal: 100\"; Aspect Ratio: 16.9 Gain: 1.3; Screen: Matte White Viewing Angle: 160°; Case Dimension: 98-1/9\"x 2-1/2\"x 2-1/2\"; Product Dimensions: 249 x 5 x 164 cm; Package Dimensions:25', 'Piece', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (884, 'PRINTER A4 Wifi All-in-one, Ink Tank Printer with ADF and free ink', 'CMU-ITEM', 'PRINTER A4 Wifi All-in-one, Ink Tank Printer with ADF and free ink', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (885, 'Convertible Laptop', 'CMU-ITEM', 'Operating System- Windows 11 Pro \'• Processor Family- 11th Gen Intel Core i7 processor \'• Processor Intel Core i7-1195G7 (up to 5.0 GHz \'w/ Intel Turbo Boost Technology, 12MB L3 cache, \'4 cores, 8 threads) 1 2; Chipset- Intel Integrated SoC; Graphics-Inte', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (886, 'All-in-One Computer', 'CMU-ITEM', 'Processor: Intel Core i5-12450H, 8C (4P + 4E) / 12T, P core 2.0/4.4GHz, E-core 1.5/3.3GHz, 12MB Graphics: Integrated Intel® UHD Graphics Chipset: Intel® SoC Platform Memory: 8GB SO-DIMM DDR4-3200  Memory Slots: Two DDR4 SO-DIMM slots, dual channel capable', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (887, 'Branded Desktop PC', 'CMU-ITEM', '14th Gen Core i5-14400 Intel Core I5-14400 2.50 GHz (turbo) 4.70 GHz Cache 29.50 MB 64-bit Hyper Threading/ 8GB, Maximum Memory 32GB Memory Slots 2/ 500GB + 580/ Intel UHD Graphics Display 21.5 Office Home and Student Windows 10', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (888, 'MULTIMEDIA PROJECTOR, 4000 ANSI', 'CMU-ITEM', 'MULTIMEDIA PROJECTOR, 4000 ANSI', 'Box', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (889, 'Laptop', 'CMU-ITEM', '15.6 inch 144Hz 13th Gen Intel Core i5- 1340H processor 8GB DDR5 512GB NVMe SSD NVIDIA GeForce RTX 2050 with 4GB GDDR6 802.11a/b/g/n/ac+ax wireless LAN WINDOWS 11 HOME', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (890, 'All-in-one PC', 'CMU-ITEM', 'All-in-one PC with accessories @ least [23.8inch FHD] [Core i5] [8GB RAM] [1TB SSD] [HD Camera] [windows11] [Keyboard & Mouse] [Microsoft Office] [All-in-one printer: Functions Print, Scan, Copy | output tray capacity 30 sheets]', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (891, 'Overhead Projector 4,000 ANSI Lumens 6,000 Lamp hours WUXGA (1,920 X 1,200)  Projector warranty 2 years lamp warranty, 1 year or 1,000 lamp hours whichever comes first', 'CMU-ITEM', 'Overhead Projector 4,000 ANSI Lumens 6,000 Lamp hours WUXGA (1,920 X 1,200)  Projector warranty 2 years lamp warranty, 1 year or 1,000 lamp hours whichever comes first', 'Units', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (892, 'All-in-One Desktop i3 Touch INTEI H610, Intel Core i3-13100 8GB DDR4 RAM 512GB NVME SSD Preinstalled MS Windows 11 Professional with MS OFFICE 2021 PRO PLUS Built-in UPS with hot-swappable Battery 23.8 inch rotatable touch Screen ratio-16.9 1920x1080 FHD ', 'CMU-ITEM', 'All-in-One Desktop i3 Touch INTEI H610, Intel Core i3-13100 8GB DDR4 RAM 512GB NVME SSD Preinstalled MS Windows 11 Professional with MS OFFICE 2021 PRO PLUS Built-in UPS with hot-swappable Battery 23.8 inch rotatable touch Screen ratio-16.9 1920x1080 FHD ', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (893, 'All-in-One Print, Scan and Copy ISO 29183, A4 (Black/Color) Flatbed Color image scanner 215.9 x 1200 mm Windows XP/XP Professional/Vista/7/8/8.1/10  Windows Server 2003/ 2008/ 2012/ 2016/ 2019 Mac OS x 10.6.8 or later', 'CMU-ITEM', 'All-in-One Print, Scan and Copy ISO 29183, A4 (Black/Color) Flatbed Color image scanner 215.9 x 1200 mm Windows XP/XP Professional/Vista/7/8/8.1/10  Windows Server 2003/ 2008/ 2012/ 2016/ 2019 Mac OS x 10.6.8 or later', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (894, '1 SET DESKTOP COMPUTER', 'CMU-ITEM', 'Specifiications: Dimentions: 324.3 x 153 x 293mm Weight: 4.94kg CPU: Intel Core i5-13400 (6-P-cores + 4-E-core/16 threads/ 20MB Intel Smart Chache, up to 4.60GHz Turbo Boost) GPU: Intel UHD Graphics 730 RAM: 8GB DDR4 RAM x1 Storage: 256GB M.2 NVMe SSD x1 ', 'Set', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (895, 'All-in-One Desktop Computer (Branded)', 'CMU-ITEM', 'All-in-One Desktop Computer (Branded) Specification: OS-Windows 11 Home Single language Memory & Storage – 16GB; 52GB SSD storage Internal Storage- 512 GB PCle®NVMe? M.2 SSD Processor Type –Intel Core Ultra5 125H Display: 23.8', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (896, 'Branded All-In-One- PC', 'CMU-ITEM', 'Processor: Intel Core i5; Memory: 8GB soDIMM DDR4; Storage: 1 TB SSD; Display: 23.8 inch display max resolution (1920 x 1080); Backlight LED, Brightness (cd/m2) 250nits; Graphics; NVIDIA Ge Force MX550 with 2GB of GDDR6, Wi-Fi 6E and Bluetooth 5; Operatin', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (897, 'AIO 23.8\" Branded Desktop Core i5, 8GB DDR4 RAM, 256GB M.2 2280 PCI-E SSD + 1 TB 2.5-inch 5400 RPM, intel UHD Graphics, windows 11 Home', 'CMU-ITEM', 'AIO 23.8\" Branded Desktop Core i5, 8GB DDR4 RAM, 256GB M.2 2280 PCI-E SSD + 1 TB 2.5-inch 5400 RPM, intel UHD Graphics, windows 11 Home', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (898, 'INTERACTIVE ULTRA-SHORT THROW PROJECTOR (INCLUDE ALUMINUM FRAME MOVABLE WHITEBOARD 8X4)', 'CMU-ITEM', 'Finger Touch and Pen Interactivity, dual Screen Seamless Interactivity, remote Access Desktop, Versatile Projection, Miracast Screen Mirroring, Wireless Multi-PC Projection, Resolution: 192x1200, white and colour light Output at 3500 lumens, Ultra Short T', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (899, 'Color Laser Multi-Function Center with Automatic 2-sided Features, Wireless Connectivity and NFC Card Reader', 'CMU-ITEM', 'Functions: Print, Scan, Copy, Fax Display Type: 5.0\" TFT Colour LCD Product Dimensions (Width X Depth X Height): 495 mm × 526 mm × 549 mm Resolution: Print: 600 x 600 dpi, 2,400 dpi class (2400 x 600) quality Scan: Resolution - Interpolated Up to 19,200 ×', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (900, 'Branded Desktop Computer', 'CMU-ITEM', 'Casing: Micro tower type; Processor: Intel® Core i5 latest gen; Memory: 16GB 1600MHz DDR3L Memory; Hard Drive: 1TB SSD; Network Card: Gigabit (10/100/1000Mbps) NIC; Video Card: Integrated; USB Ports: 3.0; Monitor: 23.8 inches display or higher (HD), Meets', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (901, 'Branded All in One PC', 'CMU-ITEM', 'Processor: 11th Generation Intel i5-1135G7 processor (8mb Cache, up to 4.2HGHz) Display: 23.8-inch FHD (1920 x 1080) Anti- Glare Narrow Border Infinity non touch Display GPU: Graphics: Intellris Xe Graphics with shared graphics memory Memory: 8GB, 2666MHz', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (902, 'Laptop, Core i7-11800H-32GBRAMDDR4 2666MHZ(1TB SSD) RTX3050Ti 4GB GDDR6 Video Card/15.6\" inch FHD(1920x1080) Display Screen/License,windows 11/ MS Office/ free Backpack/wireless mouse/ bluetooth headphone', 'CMU-ITEM', 'Laptop, Core i7-11800H-32GBRAMDDR4 2666MHZ(1TB SSD) RTX3050Ti 4GB GDDR6 Video Card/15.6\" inch FHD(1920x1080) Display Screen/License,windows 11/ MS Office/ free Backpack/wireless mouse/ bluetooth headphone', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (903, 'Ecotank Wifi All in One ink Tank PRINTER', 'CMU-ITEM', 'Ecotank Wifi All in One ink Tank PRINTER', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (904, 'BRANDED LAPTOP', 'CMU-ITEM', 'Inspiron 5490; Processor: 10th generation Intel core i7-10510U Processor (8MB Cache, up to 4.9 GHz); Storage: 512GB M.2 PCIe NVMe Solid State Drive; Memory: 8GB (4GB (4Gx1) DDR4 2666MHz & 4GB, onboard, DDR4, 2666MHz); Graphics: NVIDIA(R) GeForce(R) MX230 ', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (905, 'Mobile Phone Signal Booster 2G 3G 4G', 'CMU-ITEM', 'Celluar Repeater Atenna Four Band 8/1/3/7 GSM 900/ UMTS/UMTS 2100/DCS 1800/LTE 2600MHz, Ceiling + Ceiling + Omnidirect 1800/LTE 2600MHz, Ceiling + Omnidirect Antenna', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (906, 'Desktop Computer', 'CMU-ITEM', 'Processor: Intel® Core i5; Memory: 8GB (2x4GB) 1600MHz DDR34 Memory Hard Drive: 1TB SSD Monitor: 23.8 inches display or higher Wireless: Preferably WiFi ready (optional) OS: Windows 11 Home Office Student', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (907, 'PRINTER', 'CMU-ITEM', 'Print speed of up to 25.0 ipm (simplex) | Prints up to A3+ (for simplex) | Automatic duplex printing up to A3 size | Ultra-high page yield of 7,500 pages (black) and 6,000 pages (colour) | Epson Open Platform for Integration with Epson Print Admin of thir', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (908, 'LCD PROJECTOR', 'CMU-ITEM', 'Projection System: 3LCD, 3-chip technology Native Resolution: 1920 x 1080 (Full HD) Color Brightness: 4,000 lumens White Brightness: 4,000 lumen', 'Unit', 1, 1, 14, 5, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (909, 'Internet Subscription (1 year)', 'CMU-ITEM', '1 GB download and upload Committed Information Rate (CIR) dedicated internet service through fiber optic line; Preferred last mile is fiber optic cable; Overall uptime should not be less than 99%; Must be able to provide 20 Public IP addresses or more; Mu', 'lot', 1, 1, 32, 15, 1, 1, 1, NULL, NULL);
INSERT INTO `items` VALUES (910, 'Party Box Speaker', '123123', 'Party Box Speaker', 'unit', 1, 1, 14, 6, 2, 1, 2, '2025-10-14 03:01:03', '2025-10-14 03:01:03');

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_00_00_000000_create_college_office_unit_categories_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_00_00_022742_create_college_office_units_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000000_create_roles_table', 1);
INSERT INTO `migrations` VALUES (4, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (5, '0001_01_01_000001_create_users_table', 1);
INSERT INTO `migrations` VALUES (6, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_10_03_054056_create_privileges_table', 1);
INSERT INTO `migrations` VALUES (9, '2024_10_03_054107_create_user_privileges_table', 1);
INSERT INTO `migrations` VALUES (10, '2024_11_07_022749_create_account_codes_table', 1);
INSERT INTO `migrations` VALUES (11, '2024_11_07_022751_create_suppliers_table', 1);
INSERT INTO `migrations` VALUES (12, '2024_11_07_022752_create_item_categories_table', 1);
INSERT INTO `migrations` VALUES (13, '2024_11_07_022756_create_items_table', 1);
INSERT INTO `migrations` VALUES (14, '2024_11_07_022757_create_item_prices_table', 1);
INSERT INTO `migrations` VALUES (15, '2024_11_07_022830_create_whole_budgets_table', 1);
INSERT INTO `migrations` VALUES (16, '2024_11_07_022845_create_budget_allocations_table', 1);
INSERT INTO `migrations` VALUES (17, '2024_11_07_022851_create_signatories_table', 1);
INSERT INTO `migrations` VALUES (18, '2024_11_07_022852_create_p_p_m_p_s_table', 1);
INSERT INTO `migrations` VALUES (19, '2024_11_07_022853_create_p_p_m_p_items_table', 1);
INSERT INTO `migrations` VALUES (20, '2024_11_07_022854_create_p_p_m_p_comments_table', 1);
INSERT INTO `migrations` VALUES (21, '2024_11_07_023124_create_procurements_table', 1);
INSERT INTO `migrations` VALUES (22, '2025_02_20_052817_create_canvasses_table', 1);
INSERT INTO `migrations` VALUES (23, '2025_02_20_053223_create_canvass_items_table', 1);
INSERT INTO `migrations` VALUES (24, '2025_03_04_153227_create_requested_items_table', 1);
INSERT INTO `migrations` VALUES (25, '2025_03_04_153243_create_requested_item_attachments_table', 1);
INSERT INTO `migrations` VALUES (26, '2025_03_12_094749_create_purchase_requests_table', 1);
INSERT INTO `migrations` VALUES (27, '2025_03_24_101221_create_purchase_request_items_table', 1);
INSERT INTO `migrations` VALUES (28, '2025_03_31_110651_create_years_table', 1);

-- ----------------------------
-- Table structure for p_p_m_p_comments
-- ----------------------------
DROP TABLE IF EXISTS `p_p_m_p_comments`;
CREATE TABLE `p_p_m_p_comments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ppmp_id` bigint UNSIGNED NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_user` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `p_p_m_p_comments_ppmp_id_foreign`(`ppmp_id` ASC) USING BTREE,
  INDEX `p_p_m_p_comments_from_user_foreign`(`from_user` ASC) USING BTREE,
  CONSTRAINT `p_p_m_p_comments_from_user_foreign` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `p_p_m_p_comments_ppmp_id_foreign` FOREIGN KEY (`ppmp_id`) REFERENCES `p_p_m_p_s` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of p_p_m_p_comments
-- ----------------------------

-- ----------------------------
-- Table structure for p_p_m_p_items
-- ----------------------------
DROP TABLE IF EXISTS `p_p_m_p_items`;
CREATE TABLE `p_p_m_p_items`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ppmp_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `january_quantity` int NOT NULL,
  `february_quantity` int NOT NULL,
  `march_quantity` int NOT NULL,
  `april_quantity` int NOT NULL,
  `may_quantity` int NOT NULL,
  `june_quantity` int NOT NULL,
  `july_quantity` int NOT NULL,
  `august_quantity` int NOT NULL,
  `september_quantity` int NOT NULL,
  `october_quantity` int NOT NULL,
  `november_quantity` int NOT NULL,
  `december_quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `p_p_m_p_items_ppmp_id_foreign`(`ppmp_id` ASC) USING BTREE,
  INDEX `p_p_m_p_items_item_id_foreign`(`item_id` ASC) USING BTREE,
  CONSTRAINT `p_p_m_p_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `p_p_m_p_items_ppmp_id_foreign` FOREIGN KEY (`ppmp_id`) REFERENCES `p_p_m_p_s` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of p_p_m_p_items
-- ----------------------------
INSERT INTO `p_p_m_p_items` VALUES (1, 1, 84, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-10-28 10:14:27', '2025-10-28 10:14:27');
INSERT INTO `p_p_m_p_items` VALUES (3, 5, 113, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, '2025-10-28 10:30:26', '2025-10-28 10:30:26');
INSERT INTO `p_p_m_p_items` VALUES (4, 2, 99, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '2025-11-14 10:01:49', '2025-11-14 10:01:49');
INSERT INTO `p_p_m_p_items` VALUES (5, 2, 112, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, '2025-11-14 10:02:01', '2025-11-14 10:02:01');
INSERT INTO `p_p_m_p_items` VALUES (6, 2, 58, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '2025-11-14 10:02:11', '2025-11-14 10:02:11');
INSERT INTO `p_p_m_p_items` VALUES (7, 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, '2025-11-14 10:02:26', '2025-11-14 10:02:26');

-- ----------------------------
-- Table structure for p_p_m_p_s
-- ----------------------------
DROP TABLE IF EXISTS `p_p_m_p_s`;
CREATE TABLE `p_p_m_p_s`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `budget_allocation_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `ppmp_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_submitted` bigint NOT NULL,
  `approval_status` bigint NOT NULL,
  `incrementing_number` bigint NULL DEFAULT NULL,
  `signatory_id` bigint UNSIGNED NOT NULL,
  `purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `p_p_m_p_s_budget_allocation_id_foreign`(`budget_allocation_id` ASC) USING BTREE,
  INDEX `p_p_m_p_s_created_by_foreign`(`created_by` ASC) USING BTREE,
  INDEX `p_p_m_p_s_signatory_id_foreign`(`signatory_id` ASC) USING BTREE,
  CONSTRAINT `p_p_m_p_s_budget_allocation_id_foreign` FOREIGN KEY (`budget_allocation_id`) REFERENCES `budget_allocations` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `p_p_m_p_s_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `p_p_m_p_s_signatory_id_foreign` FOREIGN KEY (`signatory_id`) REFERENCES `signatories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of p_p_m_p_s
-- ----------------------------
INSERT INTO `p_p_m_p_s` VALUES (1, 46, 6, 'OUA-OSE-102025-1', 1, 1, 1, 1, NULL, '2025-10-27 10:23:36', '2025-10-28 10:29:53');
INSERT INTO `p_p_m_p_s` VALUES (2, 46, 6, 'OUA-OSE-102025-2', 1, 1, 2, 2, NULL, '2025-10-28 10:08:42', '2025-11-14 10:02:59');
INSERT INTO `p_p_m_p_s` VALUES (5, 46, 6, 'OUA-OSE-102025-3', 1, 0, 3, 2, 'For Department of Electrical Engineering', '2025-10-28 10:29:21', '2025-10-28 10:30:30');

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for privileges
-- ----------------------------
DROP TABLE IF EXISTS `privileges`;
CREATE TABLE `privileges`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `privilege_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of privileges
-- ----------------------------

-- ----------------------------
-- Table structure for procurements
-- ----------------------------
DROP TABLE IF EXISTS `procurements`;
CREATE TABLE `procurements`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of procurements
-- ----------------------------

-- ----------------------------
-- Table structure for purchase_request_items
-- ----------------------------
DROP TABLE IF EXISTS `purchase_request_items`;
CREATE TABLE `purchase_request_items`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `purchase_request_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `status` bigint NOT NULL DEFAULT 0,
  `january_quantity` int NOT NULL,
  `february_quantity` int NOT NULL,
  `march_quantity` int NOT NULL,
  `april_quantity` int NOT NULL,
  `may_quantity` int NOT NULL,
  `june_quantity` int NOT NULL,
  `july_quantity` int NOT NULL,
  `august_quantity` int NOT NULL,
  `september_quantity` int NOT NULL,
  `october_quantity` int NOT NULL,
  `november_quantity` int NOT NULL,
  `december_quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `purchase_request_items_purchase_request_id_foreign`(`purchase_request_id` ASC) USING BTREE,
  INDEX `purchase_request_items_item_id_foreign`(`item_id` ASC) USING BTREE,
  CONSTRAINT `purchase_request_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `purchase_request_items_purchase_request_id_foreign` FOREIGN KEY (`purchase_request_id`) REFERENCES `purchase_requests` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_request_items
-- ----------------------------
INSERT INTO `purchase_request_items` VALUES (1, 1, 84, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-10-28 22:41:06', '2025-10-28 22:42:00');

-- ----------------------------
-- Table structure for purchase_requests
-- ----------------------------
DROP TABLE IF EXISTS `purchase_requests`;
CREATE TABLE `purchase_requests`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pr_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ppmp_id` bigint UNSIGNED NOT NULL,
  `purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_submitted` bigint NOT NULL DEFAULT 0,
  `date_submitted` datetime NULL DEFAULT NULL,
  `approval_status` bigint NOT NULL DEFAULT 0,
  `approved_by` bigint UNSIGNED NULL DEFAULT NULL,
  `date_approved` datetime NULL DEFAULT NULL,
  `prepared_by` bigint UNSIGNED NOT NULL,
  `college_office_unit_id` bigint UNSIGNED NOT NULL,
  `incrementing_number` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `purchase_requests_ppmp_id_foreign`(`ppmp_id` ASC) USING BTREE,
  INDEX `purchase_requests_approved_by_foreign`(`approved_by` ASC) USING BTREE,
  INDEX `purchase_requests_prepared_by_foreign`(`prepared_by` ASC) USING BTREE,
  INDEX `purchase_requests_college_office_unit_id_foreign`(`college_office_unit_id` ASC) USING BTREE,
  CONSTRAINT `purchase_requests_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `purchase_requests_college_office_unit_id_foreign` FOREIGN KEY (`college_office_unit_id`) REFERENCES `college_office_units` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `purchase_requests_ppmp_id_foreign` FOREIGN KEY (`ppmp_id`) REFERENCES `p_p_m_p_s` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `purchase_requests_prepared_by_foreign` FOREIGN KEY (`prepared_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_requests
-- ----------------------------
INSERT INTO `purchase_requests` VALUES (1, 'OUA-PR-102025-1', 1, NULL, 1, '2025-10-28 22:41:44', 0, NULL, NULL, 6, 10, 1, '2025-10-28 22:41:06', '2025-10-28 22:41:44');

-- ----------------------------
-- Table structure for requested_item_attachments
-- ----------------------------
DROP TABLE IF EXISTS `requested_item_attachments`;
CREATE TABLE `requested_item_attachments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `requested_item_id` bigint UNSIGNED NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_contact_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` double NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `requested_item_attachments_requested_item_id_foreign`(`requested_item_id` ASC) USING BTREE,
  CONSTRAINT `requested_item_attachments_requested_item_id_foreign` FOREIGN KEY (`requested_item_id`) REFERENCES `requested_items` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of requested_item_attachments
-- ----------------------------

-- ----------------------------
-- Table structure for requested_items
-- ----------------------------
DROP TABLE IF EXISTS `requested_items`;
CREATE TABLE `requested_items`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `unit_of_measure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval_status` bigint NOT NULL,
  `college_office_unit_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `requested_items_college_office_unit_id_foreign`(`college_office_unit_id` ASC) USING BTREE,
  INDEX `requested_items_created_by_foreign`(`created_by` ASC) USING BTREE,
  CONSTRAINT `requested_items_college_office_unit_id_foreign` FOREIGN KEY (`college_office_unit_id`) REFERENCES `college_office_units` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `requested_items_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of requested_items
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', NULL, NULL);
INSERT INTO `roles` VALUES (2, 'BAC', NULL, NULL);
INSERT INTO `roles` VALUES (3, 'Budget', NULL, NULL);
INSERT INTO `roles` VALUES (4, 'End-User', NULL, NULL);

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for signatories
-- ----------------------------
DROP TABLE IF EXISTS `signatories`;
CREATE TABLE `signatories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `college_office_unit_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `signatories_college_office_unit_id_foreign`(`college_office_unit_id` ASC) USING BTREE,
  CONSTRAINT `signatories_college_office_unit_id_foreign` FOREIGN KEY (`college_office_unit_id`) REFERENCES `college_office_units` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of signatories
-- ----------------------------
INSERT INTO `signatories` VALUES (1, 'Yudesa P Tubungbanua', '', NULL, 0, 10, NULL, NULL);
INSERT INTO `signatories` VALUES (2, 'Allen KEith Aradillos', '', NULL, 1, 10, NULL, NULL);

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_contact_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of suppliers
-- ----------------------------

-- ----------------------------
-- Table structure for user_privileges
-- ----------------------------
DROP TABLE IF EXISTS `user_privileges`;
CREATE TABLE `user_privileges`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `privilege_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_privileges_user_id_foreign`(`user_id` ASC) USING BTREE,
  INDEX `user_privileges_privilege_id_foreign`(`privilege_id` ASC) USING BTREE,
  CONSTRAINT `user_privileges_privilege_id_foreign` FOREIGN KEY (`privilege_id`) REFERENCES `privileges` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_privileges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_privileges
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_office_unit_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `account_status` bigint NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_employee_number_unique`(`employee_number` ASC) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE,
  INDEX `users_college_office_unit_id_foreign`(`college_office_unit_id` ASC) USING BTREE,
  INDEX `users_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `users_college_office_unit_id_foreign` FOREIGN KEY (`college_office_unit_id`) REFERENCES `college_office_units` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'CMU-2025-052', 'Allen Keith', 'Anib', 'Aradillos', '', '1', '9096743922', 'admin@gmail.com', 1, 1, 1, '2025-01-15 14:53:23', '$2y$12$R.HzwLdWEA99oN8/OK.AJ.7XX.i3EnVfvedNbzG49AkWxIPTljQB2', '', NULL, NULL);
INSERT INTO `users` VALUES (2, 'CMU-2025-053', 'Weljo Chesedh', 'P', 'Libnao', '', '1', '9123456789', 'bac@gmail.com', 27, 2, 1, '2025-01-15 14:53:21', '$2y$12$R.HzwLdWEA99oN8/OK.AJ.7XX.i3EnVfvedNbzG49AkWxIPTljQB2', '', NULL, NULL);
INSERT INTO `users` VALUES (3, 'CMU-2025-0514', 'Jeovannie', 'C', 'Manhulad', '', '1', '9123456789', 'budget@gmail.com', 25, 3, 1, '2025-01-15 14:53:19', '$2y$12$R.HzwLdWEA99oN8/OK.AJ.7XX.i3EnVfvedNbzG49AkWxIPTljQB2', '', NULL, NULL);
INSERT INTO `users` VALUES (4, 'CMU-2025-05254', 'Lorie', 'M', 'Cagalitan', '', '1', '9123456789', 'sdd@gmail.com', 20, 4, 1, '2025-01-15 14:53:16', '$2y$12$R.HzwLdWEA99oN8/OK.AJ.7XX.i3EnVfvedNbzG49AkWxIPTljQB2', '', NULL, NULL);
INSERT INTO `users` VALUES (5, 'CMU-2025-0512', 'Krshnon Kyle', 'A', 'Padilla', '', '1', '9123456789', 'cisc@gmail.com', 2, 4, 1, '2025-01-15 14:53:16', '$2y$12$R.HzwLdWEA99oN8/OK.AJ.7XX.i3EnVfvedNbzG49AkWxIPTljQB2', NULL, NULL, NULL);
INSERT INTO `users` VALUES (6, 'CMU-2025-053125', 'Yudi', 'S', 'Tubungbanua', NULL, '0', '09654235185', 'accounting@gmail.com', 10, 4, 1, '2025-01-15 14:53:16', '$2y$12$R.HzwLdWEA99oN8/OK.AJ.7XX.i3EnVfvedNbzG49AkWxIPTljQB2', NULL, NULL, NULL);
INSERT INTO `users` VALUES (7, 'CMU-2025-0512132452435', 'Myloves', 'A', 'Nurse', NULL, '0', '09123456789', 'con@gmail.com', 5, 4, 1, '2025-04-03 16:19:20', '$2y$12$R.HzwLdWEA99oN8/OK.AJ.7XX.i3EnVfvedNbzG49AkWxIPTljQB2', NULL, NULL, NULL);
INSERT INTO `users` VALUES (8, 'To be Updatedasfg', 'Jed Rex', 'M', 'Timtim', NULL, '1', '09123456789', 'jedrextimtim.budget@cmu.edu.ph', 25, 3, 1, NULL, '$2y$12$A0aVKK618PFws5cYX1OTkuIwxhx9r1Vgq5NY69Ag4Et.ALVld/Jf.', NULL, '2025-07-09 01:41:52', '2025-07-09 01:41:52');
INSERT INTO `users` VALUES (9, 'To be Updated', 'Karen Mae', NULL, 'Aquino', NULL, '0', '09123456789', 'karenmaeaquino.bac@cmu.edu.ph', 27, 2, 1, NULL, '$2y$12$xC8i.7PKDe/G6Ignhkxedu.EytJ4sbM.Mx7gLFr6pM/w6u/y6zXhO', NULL, '2025-07-09 01:43:37', '2025-07-09 01:43:37');
INSERT INTO `users` VALUES (10, 'Sample', 'Sample', 'Sample', 'Sample', 'Sample', '1', '09123456789', 'ptgc@gmail.com', 15, 4, 1, NULL, '$2y$12$.jvctacHiD2tiICjHiAkI.cjgesvAAJ3egmq9E8bAYjYzy0GnW4ti', NULL, '2025-10-14 00:51:19', '2025-10-14 00:51:19');
INSERT INTO `users` VALUES (11, '12345135', 'Philip John Ken', 'S', 'Asequia', NULL, '1', '09123456789', 'agriculture@gmail.com', 1, 4, 1, NULL, '$2y$12$LxAkdETCCnpAARoVb8bqueJTHKj4LUHoqmNUGjz4fotB5h2l1Kf76', NULL, '2025-10-14 00:55:03', '2025-10-14 00:55:03');
INSERT INTO `users` VALUES (12, '12345123', 'waren', 'B', 'camarillo', NULL, '1', '09123456789', 'sportsoffice@gmail.com', 88, 4, 1, NULL, '$2y$12$p1zpVT/WsmMw1AxZq7Sz8ec5uXimnG0IO4gE4guH9GpdUZdOnbBeu', NULL, '2025-10-14 01:07:08', '2025-10-14 01:07:08');
INSERT INTO `users` VALUES (13, '123451352354', 'Jesus', 'R', 'Villarta', NULL, '1', '09123456789', 'cas@gmail.com', 22, 4, 1, NULL, '$2y$12$z.nepu7ntcOIAiD8QsaB8ebigtHa2TzxH3eewG3DmYiOEPt0eIuUm', NULL, '2025-10-14 01:11:37', '2025-10-14 01:11:37');
INSERT INTO `users` VALUES (14, '1234512546', 'College', 'Of', 'Education', NULL, '1', '09123456789', 'coed@gmail.com', 3, 4, 1, NULL, '$2y$12$d/D9HjjhoSIjl.Wl5thSB.zOgWiLZxHr9Pc553Ywbsf4dwgy5KUdS', NULL, '2025-10-14 01:13:56', '2025-10-14 01:13:56');
INSERT INTO `users` VALUES (15, '1234513564', 'College', 'Of', 'Human Ecology', NULL, '1', '09123456789', 'che@gmail.com', 56, 4, 1, NULL, '$2y$12$McTCW5VzMw00fZYmaB03UeYtOdabxEVFif19AUAXzbis6yfdEEY0u', NULL, '2025-10-14 01:16:56', '2025-10-14 01:16:56');
INSERT INTO `users` VALUES (16, '123451354', 'Reseach', 'O', 'Office', NULL, '1', '09123456789', 'researchoffice@gmail.com', 62, 4, 1, NULL, '$2y$12$d0gp9OpWgWLS7v/y/DWH0OXO719puPshwuF6XJYbFn2VF9.DkxARC', NULL, '2025-10-14 01:18:40', '2025-10-14 01:18:40');
INSERT INTO `users` VALUES (17, '1234563567', 'College', 'of', 'Forestry and Environmental Science', NULL, '0', '09123456789', 'cfes@gmail.com', 21, 4, 1, NULL, '$2y$12$axnRa/YoMbxeZ/913q71IeY/BSaix9qg2X2b8G4E3BiKnGybXD0rC', NULL, '2025-10-14 01:54:54', '2025-10-14 01:54:54');
INSERT INTO `users` VALUES (18, '123451335', 'College', 'Of', 'Veterinary Medicine', NULL, '0', '09123456789', 'cvm@gmail.com', 23, 4, 1, NULL, '$2y$12$.cb6EkL/wPQsfO/mvEK0Gu7p2yAYFlwD/X37Mb2V9CwsVoV806EEi', NULL, '2025-10-14 01:57:33', '2025-10-14 01:57:33');
INSERT INTO `users` VALUES (19, '123456353', 'College', 'Of', 'Engineering', NULL, '0', '09123456789', 'coe@gmail.com', 4, 4, 1, NULL, '$2y$12$Jbm2oUnwpFZbEx968qbHT.t9dFqMNeuAxVMSFK03e0RmhHrTS6qwW', NULL, '2025-10-14 02:00:09', '2025-10-14 02:00:09');
INSERT INTO `users` VALUES (20, '2134542345', 'CEBREM', 'CEBREM', 'CEBREM', NULL, '0', '09123456789', 'cebrem@gmail.com', 17, 4, 1, NULL, '$2y$12$1a2fBJ7I79InzSgdK.ucp.ce/PEgGL3N/ZBH96L/p1pLylWDCprAO', NULL, '2025-10-14 02:01:51', '2025-10-14 02:01:51');
INSERT INTO `users` VALUES (21, '1526436112', 'nursing', NULL, 'college', NULL, '0', '09786765434', 'nursing@gmail.com', 5, 4, 1, NULL, '$2y$12$mczayDPAdSqyqSXy/fcPAe4XnvaGWfckg0FwlrZQ3gkGbJm3zDZLi', NULL, '2025-10-14 02:02:41', '2025-10-14 02:02:41');
INSERT INTO `users` VALUES (22, '12345136', 'Supply', 'O', 'Office', NULL, '1', '09123456789', 'spmu@cmu.edu.ph', 14, 4, 1, NULL, '$2y$12$SgleXhxotBUgn1/ZJm/3pONWNJBrafxm9oyWrmxIMJujuCxNhRChe', NULL, '2025-10-14 02:08:22', '2025-10-14 02:08:22');
INSERT INTO `users` VALUES (23, '23423212357', 'Joylyn Jane', 'Gillaco', 'Betalac', NULL, '0', '09676180228', 'joylynjanebetalac@gmail.com', 2, 4, 1, NULL, '$2y$12$.v1Yj9K8lcoNF3GCyP6hveftDZV9OGnp1oqQmdMltLssSPWtu5AK.', NULL, '2025-10-14 02:10:35', '2025-10-14 02:10:35');
INSERT INTO `users` VALUES (24, '1234565631', 'CBM', 'CBM', 'CBM', NULL, '1', '09123456789', 'cbm@gmail.com', 24, 4, 1, NULL, '$2y$12$A/BKwR/zADj6DZWpn0KoMuTMXIsYN6lLzKWrYvqelFrMcIT.qMN1i', NULL, '2025-10-14 02:10:50', '2025-10-14 02:10:50');
INSERT INTO `users` VALUES (25, '12345', 'GAD', 'GAD', 'GAD', NULL, '0', '09123456789', 'ucgad@cmu.edu.ph', 41, 4, 1, NULL, '$2y$12$p0XNvQ70Y1VKc1IEvv/rDe5sehq8BiHs8AX1trdeXMKShNdGPnJGq', NULL, '2025-10-14 02:17:45', '2025-10-14 02:17:45');
INSERT INTO `users` VALUES (26, '24135', 'OSAS', 'OSAS', 'OSAS', NULL, '0', '09123456789', 'osa@cmu.edu.ph', 9, 4, 1, NULL, '$2y$12$i47bArHL0mwQabAJ3N6BTutRey6v7UR39rOntRxrTMOdFEGlHllpu', NULL, '2025-10-14 02:19:31', '2025-10-14 02:19:31');
INSERT INTO `users` VALUES (27, '354235', 'office', NULL, 'hospital', NULL, '0', '09887876761', 'hospital@gmail.com', 16, 4, 1, NULL, '$2y$12$hcSJm.PbbTGmwOgiZQli4uWrI5gmHDfCrHUJsWXJXLKONc7qDlP/G', NULL, '2025-10-14 02:20:30', '2025-10-14 02:20:30');
INSERT INTO `users` VALUES (28, '43434', 'Glydel', 'Hayao', 'Montecalvo', NULL, '1', '09464546467', 'researchoffice@cmu.edu.ph', 62, 4, 1, NULL, '$2y$12$1dWw29oF9VMtFJXAOFhLTeV8R2KmXDdSkNGjc1L2voFjXZ33TWGjy', NULL, '2025-10-14 02:31:26', '2025-10-14 02:31:26');
INSERT INTO `users` VALUES (29, '12362622', 'Caezar Ian', 'Reyes', 'Buenaventura', NULL, '1', '09156014490', 'extensiondo@cmu.edu.ph', 63, 4, 1, NULL, '$2y$12$npO5PD2kCxWtJPCd192FjukVwxrQfs0jzh7mmWGDtDaJvKtk49tL6', NULL, '2025-10-14 02:48:54', '2025-10-14 02:48:54');
INSERT INTO `users` VALUES (30, '4562354', 'Caezar Ian', 'Reyes', 'Buenaventura', NULL, '1', '09156014490', 'extensiondo@gmail.com', 64, 4, 1, NULL, '$2y$12$c/pVpE60lpNi1ONjoA8dNOC7V8Cu4MovH.KqH.Rm9PsEeRFUgB7tu', NULL, '2025-10-14 02:52:11', '2025-10-14 02:52:11');

-- ----------------------------
-- Table structure for whole_budgets
-- ----------------------------
DROP TABLE IF EXISTS `whole_budgets`;
CREATE TABLE `whole_budgets`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `year` year NOT NULL,
  `source_of_fund` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_budget` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of whole_budgets
-- ----------------------------
INSERT INTO `whole_budgets` VALUES (23, 16569000, 2026, 'General Fund', 'Main', '2025-07-10 07:58:15', '2025-07-10 07:58:15');
INSERT INTO `whole_budgets` VALUES (24, 1000000, 2026, 'Special Trust Fund', 'Main', '2025-10-14 02:36:35', '2025-10-14 02:36:35');

-- ----------------------------
-- Table structure for years
-- ----------------------------
DROP TABLE IF EXISTS `years`;
CREATE TABLE `years`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `year` year NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  `ppmp_deadline` datetime NULL DEFAULT NULL,
  `pr_deadline` datetime NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of years
-- ----------------------------
INSERT INTO `years` VALUES (1, 2025, 0, '2024-06-16 10:38:00', NULL, '0000-00-00 00:00:00', NULL, 0);
INSERT INTO `years` VALUES (2, 2026, 1, '2025-11-16 10:10:00', NULL, '0000-00-00 00:00:00', NULL, 1);
INSERT INTO `years` VALUES (3, 2027, 0, '2026-06-16 10:38:00', NULL, '0000-00-00 00:00:00', '2025-04-02 02:01:08', 0);
INSERT INTO `years` VALUES (4, 2028, 0, NULL, NULL, NULL, '2025-07-09 00:38:56', 0);

SET FOREIGN_KEY_CHECKS = 1;
