/*
Navicat MySQL Data Transfer

Source Server         : LATIHAN
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_angkot

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-05-30 20:29:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `alamat`
-- ----------------------------
DROP TABLE IF EXISTS `alamat`;
CREATE TABLE `alamat` (
  `id_alamat` int(11) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(255) DEFAULT NULL,
  `koordinat` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_alamat`),
  KEY `alamat_ibfk_1` (`id_user`),
  CONSTRAINT `alamat_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of alamat
-- ----------------------------

-- ----------------------------
-- Table structure for `halte`
-- ----------------------------
DROP TABLE IF EXISTS `halte`;
CREATE TABLE `halte` (
  `id_halte` int(11) NOT NULL AUTO_INCREMENT,
  `halte` varchar(255) DEFAULT NULL,
  `koordinat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_halte`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of halte
-- ----------------------------
INSERT INTO `halte` VALUES ('1', 'Terminal Kebon Kelapa', '-6.927611750252731, 107.60599352444967');
INSERT INTO `halte` VALUES ('2', 'Jalan Pungkur', '-6.929486482222653, 107.61054383280343');
INSERT INTO `halte` VALUES ('3', 'Jalan Karapitan', '-6.927527133120061, 107.61683780317705');
INSERT INTO `halte` VALUES ('4', 'Jalan Buah Batu', '-6.939159295121069, 107.62483763034777');
INSERT INTO `halte` VALUES ('5', null, null);

-- ----------------------------
-- Table structure for `jalur_rute`
-- ----------------------------
DROP TABLE IF EXISTS `jalur_rute`;
CREATE TABLE `jalur_rute` (
  `id_trayek` int(11) DEFAULT NULL,
  `id_halte` int(11) DEFAULT NULL,
  `urutan_jalur` int(11) DEFAULT NULL,
  `id_jalur_rute` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_jalur_rute`),
  KEY `jalur_rute_ibfk_1` (`id_trayek`),
  KEY `jalur_rute_ibfk_2` (`id_halte`),
  CONSTRAINT `jalur_rute_ibfk_1` FOREIGN KEY (`id_trayek`) REFERENCES `trayek` (`id_trayek`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jalur_rute_ibfk_2` FOREIGN KEY (`id_halte`) REFERENCES `halte` (`id_halte`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of jalur_rute
-- ----------------------------

-- ----------------------------
-- Table structure for `rute_angkot`
-- ----------------------------
DROP TABLE IF EXISTS `rute_angkot`;
CREATE TABLE `rute_angkot` (
  `id_rute` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `warna` varchar(255) DEFAULT '',
  `gambar` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jam_opr_awal` varchar(5) DEFAULT '',
  `jam_opr_akhir` varchar(5) DEFAULT '',
  PRIMARY KEY (`id_rute`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of rute_angkot
-- ----------------------------
INSERT INTO `rute_angkot` VALUES ('1', null, 'Abdul Muis (Kebon Kelapa) - Cicaheum (via Binong)', 'green', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('2', null, 'Abdul Muis (Kebon Kelapa) - Cicaheum (via Aceh)', 'green', null, '5000', '05:00', '19:00');
INSERT INTO `rute_angkot` VALUES ('3', null, 'Abdul Muis (Kebon Kelapa) - Dago', 'green', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('4', null, 'Abdul Muis (Kebon Kelapa) - Ledeng', 'green', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('5', null, 'Abdul Muis (Kebon Kelapa) - Elang', 'orange', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('6', null, 'Cicaheum - Ledeng', 'green', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('7', null, 'Cicaheum - Ciroyom', 'green', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('8', null, 'St. Hall - Dago', 'green', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('9', null, 'St. Hall - Sadang Serang', 'green', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('10', null, 'St. Hall - Gedebage', 'darkkhaki', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('11', null, 'Margahayu Raya - Ledeng', 'dodgerblue', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('12', null, 'Dago - Riung Bandung', 'white', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('13', null, 'Pasar Induk Caringin - Dago', 'orange', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('14', null, 'Panghegar Permai - Dipati Ukur', 'white', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('15', null, 'Ciroyom - Bumi Asri', 'green', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('16', null, 'Ciroyom - Cikudapateuh', 'yellow', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('17', null, 'Sederhana - Cipagalo', 'blue', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('18', null, 'Cisitu - Tegalega', 'blue', null, '5000', '05:00', '24:00');
INSERT INTO `rute_angkot` VALUES ('19', null, 'Cijerah - Ciwastra', 'lightgray', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('20', null, 'Abdul Muis (Kebon Kelapa) - Mengger', 'red', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('21', null, 'Cicadas - Elang', 'red', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('22', null, 'Antapani - Ciroyom', 'cornsilk', null, '5000', '05:00', '22:00');
INSERT INTO `rute_angkot` VALUES ('23', null, 'Cicadas - Cibiru', 'green', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('24', null, 'Bumi Panyileukan - Sekemirung', 'plum', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('25', null, 'Sadang Serang - Caringin', 'skyblue', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('26', null, 'Cibaduyut - Karang Setra', 'yellow', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('27', null, 'Elang - Gedebage', 'skyblue', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('28', null, 'Cicaheum - Ciwastra', 'saddlebrown', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('29', null, 'Cicaheum - Derwati', 'saddlebrown', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('30', null, 'Cicaheum - Cibadayut', 'red', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('31', null, 'St. Hall - Cieumbuleuit (via Eyckman)', 'green', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('32', null, 'St. Hall - Cieumbuleuit (via Cihampelas)', 'green', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('33', null, 'Ciroyom - Sarijadi (via Sukajadi)', 'cornsilk', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('34', null, 'Ciroyom - Sarijadi (via Setrasari Mall)', 'cornsilk', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('35', null, 'Sederhana - Cijerah', 'olive', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('36', null, 'Ciwastra - Ujung Berung', 'skyblue', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('37', null, 'Sarijadi - Stasiun Hall', 'skyblue', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('38', null, 'Gunung Batu - Stasiun Hall', 'skyblue', null, '5000', '00:01', '24:00');
INSERT INTO `rute_angkot` VALUES ('39', null, 'Cimindi - Sederhana', 'skyblue', null, '5000', '00:01', '24:00');

-- ----------------------------
-- Table structure for `trayek`
-- ----------------------------
DROP TABLE IF EXISTS `trayek`;
CREATE TABLE `trayek` (
  `id_trayek` int(11) NOT NULL AUTO_INCREMENT,
  `trayek` varchar(255) DEFAULT NULL,
  `id_rute` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_trayek`),
  KEY `trayek_ibfk_1` (`id_rute`),
  CONSTRAINT `trayek_ibfk_1` FOREIGN KEY (`id_rute`) REFERENCES `rute_angkot` (`id_rute`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of trayek
-- ----------------------------
INSERT INTO `trayek` VALUES ('1', 'Abdul Muis (Kebon Kelapa) - Cicaheum (via Binong)', '1');
INSERT INTO `trayek` VALUES ('2', 'Abdul Muis (Kebon Kelapa) - Cicaheum (via Aceh)', '2');
INSERT INTO `trayek` VALUES ('3', 'Abdul Muis (Kebon Kelapa) - Dago', '3');
INSERT INTO `trayek` VALUES ('4', 'Abdul Muis (Kebon Kelapa) - Ledeng', '4');
INSERT INTO `trayek` VALUES ('5', 'Abdul Muis (Kebon Kelapa) - Elang', '5');
INSERT INTO `trayek` VALUES ('6', 'Cicaheum - Ledeng', '6');
INSERT INTO `trayek` VALUES ('7', 'Cicaheum - Ciroyom', '7');
INSERT INTO `trayek` VALUES ('8', 'St. Hall - Dago', '8');
INSERT INTO `trayek` VALUES ('9', 'St. Hall - Sadang Serang', '9');
INSERT INTO `trayek` VALUES ('10', 'St. Hall - Gedebage', '10');
INSERT INTO `trayek` VALUES ('11', 'Margahayu Raya - Ledeng', '11');
INSERT INTO `trayek` VALUES ('12', 'Dago - Riung Bandung', '12');
INSERT INTO `trayek` VALUES ('13', 'Pasar Induk Caringin - Dago', '13');
INSERT INTO `trayek` VALUES ('14', 'Panghegar Permai - Dipati Ukur', '14');
INSERT INTO `trayek` VALUES ('15', 'Ciroyom - Bumi Asri', '15');
INSERT INTO `trayek` VALUES ('16', 'Ciroyom - Cikudapateuh', '16');
INSERT INTO `trayek` VALUES ('17', 'Sederhana - Cipagalo', '17');
INSERT INTO `trayek` VALUES ('18', 'Cisitu - Tegalega', '18');
INSERT INTO `trayek` VALUES ('19', 'Cijerah - Ciwastra', '19');
INSERT INTO `trayek` VALUES ('20', 'Abdul Muis (Kebon Kelapa) - Mengger', '20');
INSERT INTO `trayek` VALUES ('21', 'Cicadas - Elang', '21');
INSERT INTO `trayek` VALUES ('22', 'Antapani - Ciroyom', '22');
INSERT INTO `trayek` VALUES ('23', 'Cicadas - Cibiru', '23');
INSERT INTO `trayek` VALUES ('24', 'Bumi Panyileukan - Sekemirung', '24');
INSERT INTO `trayek` VALUES ('25', 'Sadang Serang - Caringin', '25');
INSERT INTO `trayek` VALUES ('26', 'Cibaduyut - Karang Setra', '26');
INSERT INTO `trayek` VALUES ('27', 'Elang - Gedebage', '27');
INSERT INTO `trayek` VALUES ('28', 'Cicaheum - Ciwastra', '28');
INSERT INTO `trayek` VALUES ('29', 'Cicaheum - Derwati', '29');
INSERT INTO `trayek` VALUES ('30', 'Cicaheum - Cibadayut', '30');
INSERT INTO `trayek` VALUES ('31', 'St. Hall - Cieumbuleuit (via Eyckman)', '31');
INSERT INTO `trayek` VALUES ('32', 'St. Hall - Cieumbuleuit (via Cihampelas)', '32');
INSERT INTO `trayek` VALUES ('33', 'Ciroyom - Sarijadi (via Sukajadi)', '33');
INSERT INTO `trayek` VALUES ('34', 'Ciroyom - Sarijadi (via Setrasari Mall)', '34');
INSERT INTO `trayek` VALUES ('35', 'Sederhana - Cijerah', '35');
INSERT INTO `trayek` VALUES ('36', 'Ciwastra - Ujung Berung', '36');
INSERT INTO `trayek` VALUES ('37', 'Sarijadi - Stasiun Hall', '37');
INSERT INTO `trayek` VALUES ('38', 'Gunung Batu - Stasiun Hall', '38');
INSERT INTO `trayek` VALUES ('39', 'Cimindi - Sederhana', '39');
INSERT INTO `trayek` VALUES ('40', 'Cicaheum (via Binong) - Abdul Muis (Kebon Kelapa)', '1');
INSERT INTO `trayek` VALUES ('41', 'Cicaheum (via Aceh) - Abdul Muis (Kebon Kelapa)', '2');
INSERT INTO `trayek` VALUES ('42', 'Dago - Abdul Muis (Kebon Kelapa)', '3');
INSERT INTO `trayek` VALUES ('43', 'Ledeng - Abdul Muis (Kebon Kelapa)', '4');
INSERT INTO `trayek` VALUES ('44', 'Elang - Abdul Muis (Kebon Kelapa)', '5');
INSERT INTO `trayek` VALUES ('45', 'Ledeng - Cicaheum', '6');
INSERT INTO `trayek` VALUES ('46', 'Ciroyom - Cicaheum', '7');
INSERT INTO `trayek` VALUES ('47', 'Dago - St. Hall', '8');
INSERT INTO `trayek` VALUES ('48', 'Sadang Serang - St. Hall', '9');
INSERT INTO `trayek` VALUES ('49', 'Gedebage - St. Hall', '10');
INSERT INTO `trayek` VALUES ('50', ' Ledeng - Margahayu Raya', '11');
INSERT INTO `trayek` VALUES ('51', 'Riung Bandung - Dago', '12');
INSERT INTO `trayek` VALUES ('52', 'Dago - Pasar Induk Caringin', '13');
INSERT INTO `trayek` VALUES ('53', 'Dipati Ukur - Panghegar Permai', '14');
INSERT INTO `trayek` VALUES ('54', 'Bumi Asri - Ciroyom ', '15');
INSERT INTO `trayek` VALUES ('55', 'Cikudapateuh - Ciroyom ', '16');
INSERT INTO `trayek` VALUES ('56', 'Cipagalo - Sederhana ', '17');
INSERT INTO `trayek` VALUES ('57', 'Tegalega - Cisitu ', '18');
INSERT INTO `trayek` VALUES ('58', 'Ciwastra - Cijerah ', '19');
INSERT INTO `trayek` VALUES ('59', 'Mengger - Abdul Muis (Kebon Kelapa)', '20');
INSERT INTO `trayek` VALUES ('60', 'Elang - Cicadas ', '21');
INSERT INTO `trayek` VALUES ('61', 'Ciroyom - Antapani ', '22');
INSERT INTO `trayek` VALUES ('62', 'Cibiru - Cicadas ', '23');
INSERT INTO `trayek` VALUES ('63', ' Sekemirung - Bumi Panyileukan', '24');
INSERT INTO `trayek` VALUES ('64', 'Caringin - Sadang Serang', '25');
INSERT INTO `trayek` VALUES ('65', ' Karang Setra - Cibaduyut ', '26');
INSERT INTO `trayek` VALUES ('66', 'Gedebage - Elang ', '27');
INSERT INTO `trayek` VALUES ('67', 'Ciwastra - Cicaheum ', '28');
INSERT INTO `trayek` VALUES ('68', 'Derwati - Cicaheum ', '29');
INSERT INTO `trayek` VALUES ('69', 'Cibadayut - Cicaheum ', '30');
INSERT INTO `trayek` VALUES ('70', 'Cieumbuleuit (via Eyckman) - St. Hall', '31');
INSERT INTO `trayek` VALUES ('71', 'Cieumbuleuit (via Cihampelas) - St. Hall', '32');
INSERT INTO `trayek` VALUES ('72', 'Sarijadi (via Sukajadi) - Ciroyom', '33');
INSERT INTO `trayek` VALUES ('73', 'Sarijadi (via Setrasari Mall) - Ciroyom ', '34');
INSERT INTO `trayek` VALUES ('74', 'Cijerah - Sederhana', '35');
INSERT INTO `trayek` VALUES ('75', 'Ujung Berung - Ciwastra ', '36');
INSERT INTO `trayek` VALUES ('76', 'Stasiun Hall - Sarijadi', '37');
INSERT INTO `trayek` VALUES ('77', ' Stasiun Hall - Gunung Batu', '38');
INSERT INTO `trayek` VALUES ('78', 'Sederhana - Cimindi', '39');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'azzahra siti hadjar', 'azzahrasth@upi.edu', 'azzahrasth', '$2y$10$6z05AsCHp4Os/J/4zvOrD.vhfKA8TdL4l6NUOSU6woESyrV19Wr1e');
INSERT INTO `user` VALUES ('3', 'anandita', 'anan@upi.edu', 'anan', '$2y$10$8U5/TZnNqZTRPI4HsTDnj.n7jft2rwqnBcsFg.t8QzwJr5hDi3KMq');
INSERT INTO `user` VALUES ('12', 'hh', 'hh', 'hh', '$2y$10$cZqqytXD.4x3NQLaGBb9Tuqr9w.otBORKXC.Acxta/7CNM3uuTT5.');
INSERT INTO `user` VALUES ('13', 'el', 'el', 'el', '$2y$10$lRAaXWm7vlluCuBngze9R.KBOOkfnGZzeEl9eo8jLB10bPvnlti9G');
INSERT INTO `user` VALUES ('14', 'm', 'm', 'm', '$2y$10$eJPtY1fqEnyMVJOLgR7JBeRNLE/Pq7NZA0ZfLAPJdgk/ooEJuUaWG');
INSERT INTO `user` VALUES ('15', 'a', 'a', 'a', '$2y$10$niCgSPzwtfzGmCWGa01NP.o1TXsHjiyD3lXo.9RwdY3DqhpZZbwlO');
INSERT INTO `user` VALUES ('16', 'dd', 'dd', 'dd', '$2y$10$D.ByNyeuW4WqePio0UHMG.Aj77cNpITOySzsX947svLwI5S3pgxl6');
INSERT INTO `user` VALUES ('17', 'rr', 'rr', 'rr', '$2y$10$Jk54EMDk.cwkh/g3SeEr3eoyoGOh0cLQ8DQO2/97STw9su.jcdKra');
INSERT INTO `user` VALUES ('18', 'mm', 'mm', 'mm', '$2y$10$du6LCXr/84FV35AJ1ADfG.yiU2KuMZakZImPR98ubYP.pwfiqbhIO');
INSERT INTO `user` VALUES ('19', 'amida', 'amida@gmail', 'ami', '$2y$10$fIb2KX6fODUZTBVaSuY5deh1YRNtayODwviY9Imid/gQPjqaHa5U.');
INSERT INTO `user` VALUES ('20', 'aaaa', 'aa@a', 'aa', '$2y$10$jDInu4JjnC.MLT3yVbWFpufO6w0RcdXlsv20BvXWCwXZnPIQ7ZwUG');
INSERT INTO `user` VALUES ('21', 'aa', 'aaaa@aa', 'aaaa', '$2y$10$kIk15E5qrNKEvblcjvohjeQiT6MznVBxpuxezEZnxSjp.THsR8rqu');
INSERT INTO `user` VALUES ('22', 'gg', 'gg@gg', 'gg', '$2y$10$lPllLyrwmmB9F0xeuQqlHeA9LbqAFDDfvWK72iV1nqwH/DOUvIUwa');
INSERT INTO `user` VALUES ('23', 'apri anggara', 'apranggarai@upi.edu', 'anggara', '$2y$10$.Kfl58UNmO7ZcDZBq1xx4eS8TrwGOLOfbMQDa..Y17ESkE2//rRhS');
INSERT INTO `user` VALUES ('24', 'laelatusyadiyah', 'laela@upi.edu', 'laela', '$2y$10$2BgMfPlweB2HBPTESORXE.yu1VARH0ZMo4Pj8Cf5B6LbCt2sKTnIe');
INSERT INTO `user` VALUES ('25', 'aa', 'aa@upi.edu', 'aaa', '$2y$10$ALnKSJ7.2HN6ESJvLxOsP.QDEtTUwWBi4ZNhHmSwPd94MeLortJqW');
