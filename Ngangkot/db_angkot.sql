/*
Navicat MySQL Data Transfer

Source Server         : cobain
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_angkot

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-06-09 11:23:33
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
-- Table structure for `rute_angkot`
-- ----------------------------
DROP TABLE IF EXISTS `rute_angkot`;
CREATE TABLE `rute_angkot` (
  `id_rute` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `warna` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jam_opr_awal` varchar(5) DEFAULT NULL,
  `jam_opr_akhir` varchar(5) DEFAULT NULL,
  `koordinat_awal` varchar(255) DEFAULT NULL,
  `koordinat_akhir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_rute`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of rute_angkot
-- ----------------------------
INSERT INTO `rute_angkot` VALUES ('1', '1A', 'Abdul Muis (Kebon Kelapa) - Cicaheum (via Binong)', 'green', null, '5000', '00:01', '24:00', '-6.927626279073067,107.60591390281967', '-6.902272799999988,107.65633117116411');
INSERT INTO `rute_angkot` VALUES ('2', '1B', 'Abdul Muis (Kebon Kelapa) - Cicaheum (via Aceh)', 'green', null, '5000', '05:00', '19:00', '-6.927626279073067,107.60591390281967', '-6.902272799999988,107.65633117116411');
INSERT INTO `rute_angkot` VALUES ('3', '2', 'Abdul Muis (Kebon Kelapa) - Dago', 'green', null, '5000', '00:01', '24:00', '-6.927626279073067,107.60591390281967', '-6.867045699183728,107.6209963123773');
INSERT INTO `rute_angkot` VALUES ('4', '3', 'Abdul Muis (Kebon Kelapa) - Ledeng', 'green', null, '5000', '00:01', '24:00', '-6.927626279073067,107.60591390281967', '-6.859315691933965,107.59509754484361');
INSERT INTO `rute_angkot` VALUES ('5', '4', 'Abdul Muis (Kebon Kelapa) - Elang', 'orange', null, '5000', '00:01', '24:00', '-6.927626279073067,107.60591390281967', '-6.914024603672064,107.57544323925555');
INSERT INTO `rute_angkot` VALUES ('6', '5', 'Cicaheum - Ledeng', 'green', null, '5000', '00:01', '24:00', '-6.902190632142926,107.65637085169', '-6.8593159944577415,107.59509546302944');
INSERT INTO `rute_angkot` VALUES ('7', '6', 'Cicaheum - Ciroyom', 'green', null, '5000', '00:01', '24:00', '-6.902190632142926,107.65637085169', '-6.9140357712834195,107.58756093082863');
INSERT INTO `rute_angkot` VALUES ('8', '9', 'St. Hall - Dago', 'green', null, '5000', '00:01', '24:00', '-6.916049913452661,107.60261455513401', '-6.867045699183728,107.6209963123773');
INSERT INTO `rute_angkot` VALUES ('9', '10', 'St. Hall - Sadang Serang', 'green', null, '5000', '00:01', '24:00', '-6.891253800487266,107.62503481213277', '-6.9140357712834195,107.58756093082863');
INSERT INTO `rute_angkot` VALUES ('10', '12', 'St. Hall - Gedebage', 'darkkhaki', null, '5000', '00:01', '24:00', '-6.916049913452661,107.60261455513401', '-6.936231592246809,107.69739872938331');
INSERT INTO `rute_angkot` VALUES ('11', '15', 'Margahayu Raya - Ledeng', 'dodgerblue', null, '5000', '00:01', '24:00', '-6.946604985152011,107.66262900978857', '-6.8593159944577415,107.59509546302944');
INSERT INTO `rute_angkot` VALUES ('12', '16', 'Dago - Riung Bandung', 'white', null, '5000', '00:01', '24:00', '-6.867045699183728,107.6209963123773', '-6.941769390872892,107.67823077091582');
INSERT INTO `rute_angkot` VALUES ('13', '17', 'Pasar Induk Caringin - Dago', 'orange', null, '5000', '00:01', '24:00', '-6.943269727663254,107.5822196796609', '-6.867045699183728,107.6209963123773');
INSERT INTO `rute_angkot` VALUES ('14', '18', 'Panghegar Permai - Dipati Ukur', 'white', null, '5000', '00:01', '24:00', '-6.923870181046815,107.69976774209422', '-6.891022978607974,107.61713539060476');
INSERT INTO `rute_angkot` VALUES ('15', '20', 'Ciroyom - Bumi Asri', 'green', null, '5000', '00:01', '24:00', '-6.9140357712834195,107.58756093082863', '-6.9324094408501304,107.55068005362598');
INSERT INTO `rute_angkot` VALUES ('16', '21', 'Ciroyom - Cikudapateuh', 'yellow', null, '5000', '00:01', '24:00', '-6.9140357712834195,107.58756093082863', '-6.918883217721422,107.6250088333802');
INSERT INTO `rute_angkot` VALUES ('17', '22', 'Sederhana - Cipagalo', 'blue', null, '5000', '00:01', '24:00', '-6.8837474547979065,107.59732254062816', '-6.96368842871852,107.63836781197436');
INSERT INTO `rute_angkot` VALUES ('18', '26', 'Cisitu - Tegalega', 'blue', null, '5000', '05:00', '24:00', '-6.875653633341453,107.61312096588132', '-6.934066816694775,107.60252911827544');
INSERT INTO `rute_angkot` VALUES ('19', '27', 'Cijerah - Ciwastra', 'lightgray', null, '5000', '00:01', '24:00', '-6.915686208083583,107.57117929399584', '-6.957065007132455,107.65655492107237');
INSERT INTO `rute_angkot` VALUES ('20', '29', 'Abdul Muis (Kebon Kelapa) - Mengger', 'red', null, '5000', '00:01', '24:00', '-6.927626279073067,107.60591390281967', '-6.984355710661947,107.62906225976921');
INSERT INTO `rute_angkot` VALUES ('21', '30', 'Cicadas - Elang', 'red', null, '5000', '00:01', '24:00', '-6.908929310711241,107.64260248115907', '-6.914024603672064,107.57544323925555');
INSERT INTO `rute_angkot` VALUES ('22', '31', 'Antapani - Ciroyom', 'cornsilk', null, '5000', '05:00', '22:00', '-6.915297794642077,107.66600190855111', '-6.9140357712834195,107.58756093082863');
INSERT INTO `rute_angkot` VALUES ('23', '32', 'Cicadas - Cibiru', 'green', null, '5000', '00:01', '24:00', '-6.910006748295118,107.64341302024856', '-6.946654910674763,107.71278122548624');
INSERT INTO `rute_angkot` VALUES ('24', '33', 'Bumi Panyileukan - Sekemirung', 'plum', null, '5000', '00:01', '24:00', '-6.946690130168224,107.71287460141379', '-6.898344561970636,107.63245349131203');
INSERT INTO `rute_angkot` VALUES ('25', '34', 'Sadang Serang - Caringin', 'skyblue', null, '5000', '00:01', '24:00', '-6.891252830492628,107.62503361164524', '-6.944439163095596,107.58012350313626');
INSERT INTO `rute_angkot` VALUES ('26', '35', 'Cibaduyut - Karang Setra', 'yellow', null, '5000', '00:01', '24:00', '-6.946787377174556,107.59321606272249', '-6.899035131719012,107.5972825895959');
INSERT INTO `rute_angkot` VALUES ('27', '28', 'Elang - Gedebage', 'skyblue', null, '5000', '00:01', '24:00', '-6.914010091176993,107.5754360071445', '-6.914180672468638,107.70288143629026');
INSERT INTO `rute_angkot` VALUES ('28', '7', 'Cicaheum - Ciwastra', 'saddlebrown', null, '5000', '00:01', '24:00', '-6.910001895489185,107.6434185925376', '-6.959704892277517,107.6614471236294');
INSERT INTO `rute_angkot` VALUES ('29', '7', 'Cicaheum - Derwati', 'saddlebrown', null, '5000', '00:01', '24:00', '-6.910001895489185,107.6434185925376', '-6.964846457211696,107.68327738010592');
INSERT INTO `rute_angkot` VALUES ('30', '8', 'Cicaheum - Cibadayut', 'red', null, '5000', '00:01', '24:00', '-6.910001895489185,107.6434185925376', '-6.9467850199528645,107.5932207541079');
INSERT INTO `rute_angkot` VALUES ('31', '11A', 'St. Hall - Cieumbuleuit (via Eyckman)', 'green', null, '5000', '00:01', '24:00', '-6.916050758765688,107.60253918554338', '-6.865769241856533,107.60595071054458');
INSERT INTO `rute_angkot` VALUES ('32', '11B', 'St. Hall - Cieumbuleuit (via Cihampelas)', 'green', null, '5000', '00:01', '24:00', '-6.916050758765688,107.60253918554338', '-6.865769241856533,107.60595071054458');
INSERT INTO `rute_angkot` VALUES ('33', '19A', 'Ciroyom - Sarijadi (via Sukajadi)', 'cornsilk', null, '5000', '00:01', '24:00', '-6.9140357712834195,107.58756093082863', '-6.923871867078406,107.70059713084294');
INSERT INTO `rute_angkot` VALUES ('34', '19B', 'Ciroyom - Sarijadi (via Setrasari Mall)', 'cornsilk', null, '5000', '00:01', '24:00', '-6.9140357712834195,107.58756093082863', '-6.8721192393116635,107.5806496562034');
INSERT INTO `rute_angkot` VALUES ('35', '23', 'Sederhana - Cijerah', 'olive', null, '5000', '00:01', '24:00', '-6.891009576360309,107.599522702442', '-6.915683119919131,107.57118588865694');
INSERT INTO `rute_angkot` VALUES ('36', '25', 'Ciwastra - Ujung Berung', 'skyblue', null, '5000', '00:01', '24:00', '-6.961227707119966,107.66645428577179', '-6.914156693405536,107.7028605363023');
INSERT INTO `rute_angkot` VALUES ('37', '13', 'Sarijadi - Stasiun Hall', 'skyblue', null, '5000', '00:01', '24:00', '-6.923871867078406,107.70059713084294', '-6.916050758765688,107.60253918554338');
INSERT INTO `rute_angkot` VALUES ('38', '14', 'Gunung Batu - Stasiun Hall', 'skyblue', null, '5000', '00:01', '24:00', '-6.889363381317162,107.56702912944696', '-6.916050758765688,107.60253918554338');
INSERT INTO `rute_angkot` VALUES ('39', '24', 'Cimindi - Sederhana', 'skyblue', null, '5000', '00:01', '24:00', '-6.892225244109503,107.57523257970824', '-6.891009576360309,107.599522702442');

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
INSERT INTO `user` VALUES ('23', 'apri anggara', 'apranggarai@upi.edu', 'anggara', '$2y$10$.Kfl58UNmO7ZcDZBq1xx4eS8TrwGOLOfbMQDa..Y17ESkE2//rRhS');
INSERT INTO `user` VALUES ('24', 'laelatusyadiyah', 'laela@upi.edu', 'laela', '$2y$10$2BgMfPlweB2HBPTESORXE.yu1VARH0ZMo4Pj8Cf5B6LbCt2sKTnIe');
