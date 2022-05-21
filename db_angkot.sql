/*
Navicat MySQL Data Transfer

Source Server         : LATIHAN
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_angkot

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-05-21 22:46:57
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
  KEY `alamat` (`id_user`),
  CONSTRAINT `alamat` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of halte
-- ----------------------------

-- ----------------------------
-- Table structure for `jalur_rute`
-- ----------------------------
DROP TABLE IF EXISTS `jalur_rute`;
CREATE TABLE `jalur_rute` (
  `id_trayek` int(11) DEFAULT NULL,
  `id_halte` int(11) DEFAULT NULL,
  `urutan_jalur` int(11) DEFAULT NULL,
  KEY `jalur_rute` (`id_trayek`),
  KEY `jalur_rutee` (`id_halte`),
  CONSTRAINT `jalur_rute` FOREIGN KEY (`id_trayek`) REFERENCES `trayek` (`id_trayek`),
  CONSTRAINT `jalur_rutee` FOREIGN KEY (`id_halte`) REFERENCES `halte` (`id_halte`)
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
  `jurusan` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `warna` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jam_opr_awal` time DEFAULT NULL,
  `jam_opr_akhir` time DEFAULT NULL,
  PRIMARY KEY (`id_rute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of rute_angkot
-- ----------------------------

-- ----------------------------
-- Table structure for `trayek`
-- ----------------------------
DROP TABLE IF EXISTS `trayek`;
CREATE TABLE `trayek` (
  `id_trayek` int(11) NOT NULL AUTO_INCREMENT,
  `trayek` varchar(255) DEFAULT NULL,
  `id_rute` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_trayek`),
  KEY `trayek` (`id_rute`),
  CONSTRAINT `trayek` FOREIGN KEY (`id_rute`) REFERENCES `rute_angkot` (`id_rute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of trayek
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
