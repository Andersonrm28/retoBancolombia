-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.13-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para evalart_reto
CREATE DATABASE IF NOT EXISTS `evalart_reto` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `evalart_reto`;

-- Volcando estructura para tabla evalart_reto.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla evalart_reto.account: ~418 rows (aproximadamente)
DELETE FROM `account`;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`id`, `client_id`, `balance`) VALUES
	(1, 1, 294437.00),
	(2, 2, 537977.00),
	(3, 2, 861026.00),
	(4, 2, 75046.00),
	(5, 3, 771416.00),
	(6, 3, 884291.00),
	(7, 4, 912156.00),
	(8, 5, 711569.00),
	(9, 6, 647065.00),
	(10, 6, 733680.00),
	(11, 6, 61322.00),
	(12, 7, 630861.00),
	(13, 7, 664004.00),
	(14, 8, 288037.00),
	(15, 8, 388180.00),
	(16, 8, 366082.00),
	(17, 9, 449952.00),
	(18, 9, 432944.00),
	(19, 9, 769694.00),
	(20, 10, 357401.00),
	(21, 10, 866477.00),
	(22, 11, 270785.00),
	(23, 11, 896871.00),
	(24, 12, 563114.00),
	(25, 12, 757525.00),
	(26, 13, 612554.00),
	(27, 13, 330002.00),
	(28, 14, 732989.00),
	(29, 15, 58386.00),
	(30, 15, 238224.00),
	(31, 16, 756631.00),
	(32, 16, 996640.00),
	(33, 16, 382132.00),
	(34, 17, 925220.00),
	(35, 17, 836213.00),
	(36, 17, 400271.00),
	(37, 18, 977932.00),
	(38, 18, 567356.00),
	(39, 18, 185300.00),
	(40, 19, 376235.00),
	(41, 19, 680738.00),
	(42, 19, 632322.00),
	(43, 20, 185720.00),
	(44, 20, 644039.00),
	(45, 20, 647540.00),
	(46, 21, 974797.00),
	(47, 22, 545120.00),
	(48, 22, 442715.00),
	(49, 23, 385206.00),
	(50, 24, 908873.00),
	(51, 24, 869606.00),
	(52, 25, 656805.00),
	(53, 25, 259299.00),
	(54, 25, 747974.00),
	(55, 26, 845997.00),
	(56, 26, 404536.00),
	(57, 26, 568658.00),
	(58, 27, 663561.00),
	(59, 28, 580384.00),
	(60, 28, 821257.00),
	(61, 28, 463339.00),
	(62, 29, 566004.00),
	(63, 29, 600715.00),
	(64, 29, 140187.00),
	(65, 30, 985574.00),
	(66, 30, 822300.00),
	(67, 30, 836893.00),
	(68, 31, 377661.00),
	(69, 31, 126128.00),
	(70, 31, 321345.00),
	(71, 32, 233155.00),
	(72, 32, 807828.00),
	(73, 32, 693673.00),
	(74, 33, 563491.00),
	(75, 33, 566110.00),
	(76, 34, 355325.00),
	(77, 35, 28968.00),
	(78, 35, 728432.00),
	(79, 36, 492259.00),
	(80, 36, 205231.00),
	(81, 36, 528119.00),
	(82, 37, 593783.00),
	(83, 37, 768019.00),
	(84, 37, 599104.00),
	(85, 38, 715588.00),
	(86, 38, 918405.00),
	(87, 39, 864873.00),
	(88, 39, 756957.00),
	(89, 39, 816864.00),
	(90, 40, 396620.00),
	(91, 41, 909215.00),
	(92, 41, 69545.00),
	(93, 41, 904487.00),
	(94, 42, 669568.00),
	(95, 42, 251112.00),
	(96, 43, 608465.00),
	(97, 43, 554446.00),
	(98, 43, 129325.00),
	(99, 44, 825142.00),
	(100, 44, 642857.00),
	(101, 45, 501011.00),
	(102, 46, 455349.00),
	(103, 46, 889932.00),
	(104, 46, 697908.00),
	(105, 47, 91706.00),
	(106, 48, 224181.00),
	(107, 48, 518484.00),
	(108, 48, 260918.00),
	(109, 49, 38359.00),
	(110, 49, 224474.00),
	(111, 50, 969157.00),
	(112, 51, 246116.00),
	(113, 52, 376817.00),
	(114, 52, 284630.00),
	(115, 52, 836742.00),
	(116, 53, 604892.00),
	(117, 54, 219511.00),
	(118, 55, 761501.00),
	(119, 56, 86297.00),
	(120, 56, 718379.00),
	(121, 57, 30724.00),
	(122, 58, 865037.00),
	(123, 58, 685247.00),
	(124, 58, 29783.00),
	(125, 59, 37326.00),
	(126, 59, 448280.00),
	(127, 59, 705716.00),
	(128, 60, 960203.00),
	(129, 60, 523928.00),
	(130, 60, 238184.00),
	(131, 61, 503797.00),
	(132, 62, 385642.00),
	(133, 63, 599004.00),
	(134, 63, 826212.00),
	(135, 64, 791761.00),
	(136, 65, 108916.00),
	(137, 66, 475370.00),
	(138, 66, 220660.00),
	(139, 67, 276087.00),
	(140, 67, 103339.00),
	(141, 67, 16902.00),
	(142, 68, 26854.00),
	(143, 69, 386135.00),
	(144, 69, 621301.00),
	(145, 69, 193694.00),
	(146, 70, 237941.00),
	(147, 71, 362978.00),
	(148, 71, 497750.00),
	(149, 71, 492033.00),
	(150, 72, 455672.00),
	(151, 72, 188356.00),
	(152, 73, 559777.00),
	(153, 74, 142476.00),
	(154, 74, 445907.00),
	(155, 74, 5670.00),
	(156, 75, 440348.00),
	(157, 75, 898007.00),
	(158, 75, 5217.00),
	(159, 76, 122144.00),
	(160, 76, 112174.00),
	(161, 77, 416781.00),
	(162, 78, 787637.00),
	(163, 78, 763282.00),
	(164, 78, 387569.00),
	(165, 79, 983165.00),
	(166, 79, 751304.00),
	(167, 79, 53282.00),
	(168, 80, 564384.00),
	(169, 80, 156560.00),
	(170, 81, 820750.00),
	(171, 81, 274425.00),
	(172, 81, 982204.00),
	(173, 82, 751805.00),
	(174, 82, 975407.00),
	(175, 82, 757954.00),
	(176, 83, 56170.00),
	(177, 83, 330599.00),
	(178, 84, 921918.00),
	(179, 84, 539458.00),
	(180, 85, 193220.00),
	(181, 85, 472408.00),
	(182, 85, 325757.00),
	(183, 86, 923990.00),
	(184, 86, 322198.00),
	(185, 86, 434861.00),
	(186, 87, 516893.00),
	(187, 87, 68860.00),
	(188, 87, 829395.00),
	(189, 88, 853770.00),
	(190, 88, 61939.00),
	(191, 88, 259705.00),
	(192, 89, 27641.00),
	(193, 89, 764340.00),
	(194, 89, 784134.00),
	(195, 90, 88529.00),
	(196, 91, 635739.00),
	(197, 92, 309257.00),
	(198, 93, 402098.00),
	(199, 93, 168759.00),
	(200, 93, 559412.00),
	(201, 94, 55776.00),
	(202, 95, 770909.00),
	(203, 96, 85552.00),
	(204, 96, 375077.00),
	(205, 96, 213339.00),
	(206, 97, 490850.00),
	(207, 98, 377550.00),
	(208, 98, 223647.00),
	(209, 98, 82109.00),
	(210, 99, 389823.00),
	(211, 99, 475582.00),
	(212, 100, 444307.00),
	(213, 100, 925591.00),
	(214, 100, 107652.00),
	(215, 101, 65286.00),
	(216, 102, 860617.00),
	(217, 103, 548157.00),
	(218, 103, 435841.00),
	(219, 104, 477525.00),
	(220, 104, 157896.00),
	(221, 104, 236689.00),
	(222, 105, 531574.00),
	(223, 105, 569166.00),
	(224, 105, 679031.00),
	(225, 106, 623284.00),
	(226, 107, 913833.00),
	(227, 107, 670275.00),
	(228, 107, 143939.00),
	(229, 108, 152675.00),
	(230, 109, 816445.00),
	(231, 109, 999784.00),
	(232, 109, 977291.00),
	(233, 110, 995033.00),
	(234, 110, 353623.00),
	(235, 110, 736754.00),
	(236, 111, 169125.00),
	(237, 111, 366112.00),
	(238, 111, 514652.00),
	(239, 112, 396349.00),
	(240, 112, 160691.00),
	(241, 112, 11750.00),
	(242, 113, 468997.00),
	(243, 113, 582852.00),
	(244, 114, 52666.00),
	(245, 114, 854348.00),
	(246, 115, 482028.00),
	(247, 116, 649922.00),
	(248, 116, 539157.00),
	(249, 117, 687723.00),
	(250, 117, 824889.00),
	(251, 118, 7602.00),
	(252, 118, 836222.00),
	(253, 118, 551750.00),
	(254, 119, 651172.00),
	(255, 119, 327155.00),
	(256, 119, 582874.00),
	(257, 120, 934571.00),
	(258, 121, 104180.00),
	(259, 121, 529520.00),
	(260, 122, 158976.00),
	(261, 122, 528383.00),
	(262, 123, 224635.00),
	(263, 123, 560363.00),
	(264, 124, 170219.00),
	(265, 124, 978556.00),
	(266, 124, 304399.00),
	(267, 125, 292565.00),
	(268, 126, 725664.00),
	(269, 126, 833471.00),
	(270, 127, 983008.00),
	(271, 128, 102485.00),
	(272, 128, 243985.00),
	(273, 128, 915117.00),
	(274, 129, 826727.00),
	(275, 129, 668225.00),
	(276, 129, 840253.00),
	(277, 130, 38045.00),
	(278, 131, 926668.00),
	(279, 131, 929804.00),
	(280, 131, 887693.00),
	(281, 132, 67358.00),
	(282, 132, 850626.00),
	(283, 133, 773846.00),
	(284, 133, 135541.00),
	(285, 134, 197401.00),
	(286, 135, 634229.00),
	(287, 136, 912087.00),
	(288, 136, 359298.00),
	(289, 137, 289324.00),
	(290, 137, 470200.00),
	(291, 137, 420021.00),
	(292, 138, 894650.00),
	(293, 138, 424519.00),
	(294, 138, 257899.00),
	(295, 139, 541615.00),
	(296, 139, 770065.00),
	(297, 139, 283407.00),
	(298, 140, 405641.00),
	(299, 141, 613320.00),
	(300, 142, 40485.00),
	(301, 142, 876775.00),
	(302, 142, 226631.00),
	(303, 143, 344739.00),
	(304, 143, 267083.00),
	(305, 143, 421780.00),
	(306, 144, 342981.00),
	(307, 144, 115594.00),
	(308, 145, 536322.00),
	(309, 145, 677765.00),
	(310, 145, 771196.00),
	(311, 146, 782165.00),
	(312, 147, 376157.00),
	(313, 147, 997384.00),
	(314, 147, 738150.00),
	(315, 148, 296630.00),
	(316, 148, 224522.00),
	(317, 149, 152215.00),
	(318, 150, 955178.00),
	(319, 151, 127257.00),
	(320, 152, 645368.00),
	(321, 152, 486480.00),
	(322, 152, 1756.00),
	(323, 153, 638645.00),
	(324, 153, 30089.00),
	(325, 153, 332176.00),
	(326, 154, 547781.00),
	(327, 154, 523091.00),
	(328, 155, 567669.00),
	(329, 155, 630457.00),
	(330, 156, 781566.00),
	(331, 157, 802202.00),
	(332, 157, 497071.00),
	(333, 158, 516517.00),
	(334, 158, 194659.00),
	(335, 159, 774166.00),
	(336, 160, 56055.00),
	(337, 161, 133899.00),
	(338, 161, 259975.00),
	(339, 162, 971113.00),
	(340, 162, 605352.00),
	(341, 162, 473828.00),
	(342, 163, 708084.00),
	(343, 163, 384987.00),
	(344, 164, 759966.00),
	(345, 164, 861397.00),
	(346, 164, 366733.00),
	(347, 165, 119824.00),
	(348, 165, 551433.00),
	(349, 166, 896251.00),
	(350, 166, 367389.00),
	(351, 167, 545434.00),
	(352, 168, 914202.00),
	(353, 168, 292365.00),
	(354, 169, 595067.00),
	(355, 170, 168955.00),
	(356, 170, 672582.00),
	(357, 171, 677975.00),
	(358, 171, 204168.00),
	(359, 172, 472846.00),
	(360, 173, 974184.00),
	(361, 174, 909711.00),
	(362, 175, 552619.00),
	(363, 175, 947705.00),
	(364, 176, 196042.00),
	(365, 176, 450775.00),
	(366, 177, 436594.00),
	(367, 177, 100620.00),
	(368, 177, 361463.00),
	(369, 178, 83937.00),
	(370, 178, 21361.00),
	(371, 178, 22914.00),
	(372, 179, 643091.00),
	(373, 179, 726516.00),
	(374, 179, 312068.00),
	(375, 180, 333880.00),
	(376, 180, 363829.00),
	(377, 180, 537858.00),
	(378, 181, 615907.00),
	(379, 182, 27982.00),
	(380, 182, 530839.00),
	(381, 183, 586334.00),
	(382, 183, 448014.00),
	(383, 184, 128595.00),
	(384, 184, 539622.00),
	(385, 185, 673000.00),
	(386, 186, 351518.00),
	(387, 186, 718051.00),
	(388, 186, 757195.00),
	(389, 187, 654100.00),
	(390, 188, 1191.00),
	(391, 188, 794045.00),
	(392, 189, 820250.00),
	(393, 189, 830791.00),
	(394, 190, 604153.00),
	(395, 190, 938066.00),
	(396, 191, 65725.00),
	(397, 191, 380949.00),
	(398, 191, 980835.00),
	(399, 192, 354507.00),
	(400, 192, 105160.00),
	(401, 193, 761268.00),
	(402, 193, 266691.00),
	(403, 193, 356226.00),
	(404, 194, 259378.00),
	(405, 194, 517053.00),
	(406, 194, 460809.00),
	(407, 195, 538365.00),
	(408, 195, 872270.00),
	(409, 196, 830376.00),
	(410, 197, 110001.00),
	(411, 198, 459008.00),
	(412, 198, 449523.00),
	(413, 198, 707130.00),
	(414, 199, 386444.00),
	(415, 199, 480512.00),
	(416, 199, 77373.00),
	(417, 200, 264478.00),
	(418, 200, 725980.00),
	(419, 201, 0.00),
	(420, 202, 0.00),
	(421, 203, 0.00),
	(422, 204, 0.00),
	(423, 205, 0.00),
	(424, 206, 0.00),
	(425, 207, 0.00),
	(426, 208, 0.00),
	(427, 209, 351058.00);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

-- Volcando estructura para tabla evalart_reto.client
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL DEFAULT '0',
  `male` tinyint(4) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `location` varchar(50) NOT NULL DEFAULT '0',
  `company` varchar(50) NOT NULL DEFAULT '0',
  `encrypt` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla evalart_reto.client: ~200 rows (aproximadamente)
DELETE FROM `client`;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` (`id`, `code`, `male`, `type`, `location`, `company`, `encrypt`) VALUES
	(1, 'C10001', 0, 6, '6', '38', 0),
	(2, 'C10002', 1, 4, '7', '21', 0),
	(3, 'C10003', 1, 5, '7', '30', 0),
	(4, 'C10004', 1, 6, '6', '29', 0),
	(5, 'C10005', 1, 7, '4', '38', 0),
	(6, 'C10006', 0, 4, '4', '75', 0),
	(7, 'C10007', 1, 6, '4', '49', 0),
	(8, 'C10008', 1, 10, '5', '94', 0),
	(9, 'C10009', 0, 10, '3', '13', 0),
	(10, 'C10010', 0, 7, '1', '14', 0),
	(11, 'C10011', 0, 5, '4', '5', 0),
	(12, 'C10012', 1, 10, '4', '92', 0),
	(13, 'C10013', 1, 4, '7', '49', 0),
	(14, 'C10014', 1, 6, '8', '57', 0),
	(15, 'C10015', 1, 10, '5', '26', 0),
	(16, 'C10016', 1, 7, '1', '98', 0),
	(17, 'C10017', 1, 10, '1', '100', 0),
	(18, 'C10018', 0, 6, '1', '74', 0),
	(19, 'C10019', 1, 6, '7', '51', 0),
	(20, 'C10020', 1, 7, '1', '78', 0),
	(21, 'C10021', 0, 1, '4', '12', 0),
	(22, 'C10022', 0, 5, '8', '53', 0),
	(23, 'C10023', 1, 6, '9', '1', 0),
	(24, 'C10024', 0, 2, '8', '30', 0),
	(25, 'C10025', 0, 10, '2', '40', 0),
	(26, 'C10026', 1, 7, '6', '55', 0),
	(27, 'C10027', 1, 6, '1', '8', 0),
	(28, 'C10028', 1, 2, '6', '8', 0),
	(29, 'C10029', 0, 1, '7', '90', 0),
	(30, 'C10030', 1, 10, '9', '35', 0),
	(31, 'C10031', 0, 6, '9', '99', 0),
	(32, 'C10032', 1, 4, '6', '44', 0),
	(33, 'C10033', 0, 8, '8', '64', 0),
	(34, 'C10034', 0, 2, '9', '86', 0),
	(35, 'C10035', 0, 7, '5', '70', 0),
	(36, 'C10036', 1, 8, '9', '73', 0),
	(37, 'C10037', 0, 3, '10', '96', 0),
	(38, 'C10038', 0, 2, '7', '60', 0),
	(39, 'C10039', 1, 1, '8', '35', 0),
	(40, 'C10040', 1, 5, '9', '30', 0),
	(41, 'C10041', 0, 10, '9', '22', 0),
	(42, 'C10042', 1, 9, '7', '86', 0),
	(43, 'C10043', 1, 2, '2', '77', 0),
	(44, 'C10044', 0, 8, '3', '18', 0),
	(45, 'C10045', 0, 9, '1', '99', 0),
	(46, 'C10046', 1, 9, '6', '49', 0),
	(47, 'C10047', 0, 6, '9', '65', 0),
	(48, 'C10048', 1, 4, '7', '48', 0),
	(49, 'C10049', 0, 2, '5', '6', 0),
	(50, 'C10050', 0, 9, '8', '59', 0),
	(51, 'C10051', 1, 1, '6', '26', 0),
	(52, 'C10052', 1, 6, '7', '71', 0),
	(53, 'C10053', 0, 3, '1', '61', 0),
	(54, 'C10054', 1, 2, '10', '14', 0),
	(55, 'C10055', 1, 2, '10', '23', 0),
	(56, 'C10056', 0, 7, '6', '18', 0),
	(57, 'C10057', 1, 5, '3', '82', 0),
	(58, 'C10058', 0, 8, '3', '49', 0),
	(59, 'C10059', 0, 4, '5', '21', 0),
	(60, 'C10060', 0, 9, '3', '63', 0),
	(61, 'C10061', 0, 10, '6', '99', 0),
	(62, 'C10062', 0, 5, '4', '40', 0),
	(63, 'C10063', 0, 4, '1', '69', 0),
	(64, 'C10064', 0, 10, '5', '80', 0),
	(65, 'C10065', 1, 2, '9', '49', 0),
	(66, 'C10066', 1, 8, '10', '68', 0),
	(67, 'C10067', 0, 10, '10', '88', 0),
	(68, 'C10068', 1, 8, '7', '12', 0),
	(69, 'C10069', 1, 9, '8', '93', 0),
	(70, 'C10070', 1, 2, '1', '79', 0),
	(71, 'C10071', 0, 7, '6', '73', 0),
	(72, 'C10072', 0, 7, '4', '16', 0),
	(73, 'C10073', 1, 2, '8', '59', 0),
	(74, 'C10074', 1, 8, '9', '49', 0),
	(75, 'C10075', 1, 4, '6', '34', 0),
	(76, 'C10076', 0, 1, '1', '33', 0),
	(77, 'C10077', 0, 10, '4', '83', 0),
	(78, 'C10078', 0, 10, '2', '78', 0),
	(79, 'C10079', 1, 7, '9', '58', 0),
	(80, 'C10080', 0, 10, '5', '45', 0),
	(81, 'C10081', 1, 5, '10', '18', 0),
	(82, 'C10082', 1, 10, '10', '18', 0),
	(83, 'C10083', 0, 9, '3', '19', 0),
	(84, 'C10084', 0, 3, '9', '87', 0),
	(85, 'C10085', 1, 10, '10', '30', 0),
	(86, 'C10086', 1, 10, '2', '80', 0),
	(87, 'C10087', 0, 1, '3', '39', 0),
	(88, 'C10088', 0, 11, '4', '27', 0),
	(89, 'C10089', 1, 9, '2', '7', 0),
	(90, 'C10090', 1, 2, '1', '82', 0),
	(91, 'C10091', 1, 1, '10', '31', 0),
	(92, 'C10092', 0, 6, '10', '63', 0),
	(93, 'C10093', 1, 2, '8', '21', 0),
	(94, 'C10094', 0, 1, '8', '3', 0),
	(95, 'C10095', 1, 8, '1', '48', 0),
	(96, 'C10096', 0, 3, '10', '74', 0),
	(97, 'C10097', 0, 1, '4', '6', 0),
	(98, 'C10098', 1, 7, '2', '96', 0),
	(99, 'C10099', 0, 5, '5', '51', 0),
	(100, 'C10100', 0, 8, '1', '70', 0),
	(101, 'C10101', 1, 10, '7', '69', 0),
	(102, 'C10102', 0, 8, '8', '96', 0),
	(103, 'C10103', 0, 3, '7', '47', 0),
	(104, 'QzEwMTA0', 1, 4, '2', '34', 1),
	(105, 'C10105', 0, 1, '8', '64', 0),
	(106, 'C10106', 0, 1, '9', '70', 0),
	(107, 'C10107', 1, 8, '8', '51', 0),
	(108, 'C10108', 1, 6, '10', '22', 0),
	(109, 'C10109', 0, 7, '9', '24', 0),
	(110, 'C10110', 0, 6, '7', '68', 0),
	(111, 'C10111', 0, 10, '5', '61', 0),
	(112, 'C10112', 0, 7, '1', '69', 0),
	(113, 'C10113', 1, 4, '10', '70', 0),
	(114, 'C10114', 0, 5, '7', '88', 0),
	(115, 'C10115', 0, 1, '2', '11', 0),
	(116, 'C10116', 0, 11, '5', '92', 0),
	(117, 'C10117', 1, 5, '6', '92', 0),
	(118, 'C10118', 1, 8, '8', '89', 0),
	(119, 'C10119', 0, 10, '5', '28', 0),
	(120, 'C10120', 0, 1, '4', '2', 0),
	(121, 'C10121', 1, 7, '5', '62', 0),
	(122, 'C10122', 0, 2, '8', '14', 0),
	(123, 'C10123', 0, 2, '5', '74', 0),
	(124, 'C10124', 1, 4, '5', '84', 0),
	(125, 'C10125', 0, 2, '6', '67', 0),
	(126, 'C10126', 0, 1, '4', '25', 0),
	(127, 'C10127', 1, 7, '7', '19', 0),
	(128, 'C10128', 0, 10, '3', '8', 0),
	(129, 'C10129', 0, 1, '9', '87', 0),
	(130, 'C10130', 0, 1, '2', '66', 0),
	(131, 'C10131', 1, 10, '9', '23', 0),
	(132, 'C10132', 1, 4, '10', '28', 0),
	(133, 'C10133', 0, 4, '7', '77', 0),
	(134, 'C10134', 1, 9, '1', '23', 0),
	(135, 'C10135', 0, 4, '8', '28', 0),
	(136, 'C10136', 0, 2, '5', '91', 0),
	(137, 'C10137', 0, 10, '5', '85', 0),
	(138, 'C10138', 0, 3, '5', '16', 0),
	(139, 'C10139', 0, 9, '8', '36', 0),
	(140, 'C10140', 0, 10, '7', '82', 0),
	(141, 'C10141', 0, 4, '6', '42', 0),
	(142, 'C10142', 1, 6, '9', '4', 0),
	(143, 'C10143', 1, 3, '3', '4', 0),
	(144, 'C10144', 0, 3, '1', '35', 0),
	(145, 'C10145', 1, 3, '1', '98', 0),
	(146, 'C10146', 1, 3, '7', '72', 0),
	(147, 'C10147', 0, 5, '7', '62', 0),
	(148, 'C10148', 1, 2, '2', '90', 0),
	(149, 'C10149', 1, 5, '10', '47', 0),
	(150, 'C10150', 1, 7, '1', '73', 0),
	(151, 'C10151', 0, 8, '1', '55', 0),
	(152, 'C10152', 1, 1, '3', '35', 0),
	(153, 'C10153', 0, 5, '6', '64', 0),
	(154, 'C10154', 1, 3, '1', '61', 0),
	(155, 'C10155', 0, 1, '4', '14', 0),
	(156, 'C10156', 1, 9, '2', '38', 0),
	(157, 'C10157', 0, 10, '5', '7', 0),
	(158, 'C10158', 0, 3, '1', '1', 0),
	(159, 'C10159', 1, 7, '10', '40', 0),
	(160, 'C10160', 0, 4, '6', '18', 0),
	(161, 'C10161', 0, 5, '4', '43', 0),
	(162, 'C10162', 0, 8, '4', '76', 0),
	(163, 'C10163', 0, 10, '10', '97', 0),
	(164, 'C10164', 1, 9, '4', '74', 0),
	(165, 'C10165', 1, 6, '5', '92', 0),
	(166, 'C10166', 1, 7, '7', '61', 0),
	(167, 'C10167', 1, 5, '7', '72', 0),
	(168, 'C10168', 0, 9, '5', '35', 0),
	(169, 'C10169', 1, 11, '9', '89', 0),
	(170, 'C10170', 0, 2, '8', '79', 0),
	(171, 'C10171', 1, 9, '8', '72', 0),
	(172, 'C10172', 0, 5, '5', '59', 0),
	(173, 'C10173', 0, 2, '9', '99', 0),
	(174, 'C10174', 1, 2, '9', '70', 0),
	(175, 'C10175', 0, 3, '6', '25', 0),
	(176, 'C10176', 1, 7, '1', '55', 0),
	(177, 'C10177', 1, 5, '7', '97', 0),
	(178, 'C10178', 1, 11, '8', '88', 0),
	(179, 'C10179', 1, 2, '6', '60', 0),
	(180, 'C10180', 0, 7, '3', '26', 0),
	(181, 'C10181', 1, 3, '2', '8', 0),
	(182, 'C10182', 0, 5, '5', '57', 0),
	(183, 'C10183', 0, 9, '2', '50', 0),
	(184, 'C10184', 1, 4, '8', '66', 0),
	(185, 'C10185', 0, 6, '8', '32', 0),
	(186, 'C10186', 0, 11, '9', '37', 0),
	(187, 'C10187', 0, 6, '3', '10', 0),
	(188, 'C10188', 1, 7, '1', '67', 0),
	(189, 'C10189', 0, 10, '1', '94', 0),
	(190, 'C10190', 0, 2, '2', '51', 0),
	(191, 'C10191', 0, 6, '2', '18', 0),
	(192, 'C10192', 1, 5, '7', '71', 0),
	(193, 'C10193', 1, 5, '10', '3', 0),
	(194, 'C10194', 1, 7, '10', '37', 0),
	(195, 'C10195', 0, 9, '6', '24', 0),
	(196, 'C10196', 0, 11, '8', '91', 0),
	(197, 'C10197', 0, 8, '3', '78', 0),
	(198, 'C10198', 1, 8, '9', '4', 0),
	(199, 'C10199', 0, 1, '7', '40', 0),
	(200, 'C10200', 1, 3, '1', '2', 0),
	(201, 'C10201', 1, 12, '99', '5', 0),
	(202, 'C10202', 1, 12, '99', '1', 0),
	(203, 'C10203', 1, 12, '99', '2', 0),
	(204, 'C10204', 1, 12, '99', '3', 0),
	(205, 'C10205', 0, 1, '99', '4', 0),
	(206, 'C10206', 0, 1, '99', '6', 0),
	(207, 'C10207', 0, 1, '99', '7', 0),
	(208, 'C10208', 0, 1, '99', '8', 0),
	(209, 'QzEwMjA5', 1, 11, '9', '1', 1);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
