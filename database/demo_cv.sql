-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table demo_cv.activitie
CREATE TABLE IF NOT EXISTS `activitie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kynang` varchar(50) DEFAULT NULL,
  `start_end` varchar(50) DEFAULT NULL,
  `noidung` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table demo_cv.activitie: ~0 rows (approximately)
INSERT INTO `activitie` (`id`, `kynang`, `start_end`, `noidung`) VALUES
	(1, 'Volunteers', 'Volunteers group', '- Gathering gifts and distributing to the victims after waiting for floods in Quang Tri.');

-- Dumping structure for table demo_cv.education
CREATE TABLE IF NOT EXISTS `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `truong` varchar(50) DEFAULT NULL,
  `start_end` varchar(50) DEFAULT NULL,
  `noidung` varchar(255) DEFAULT NULL,
  `thoigian` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table demo_cv.education: ~5 rows (approximately)
INSERT INTO `education` (`id`, `truong`, `start_end`, `noidung`, `thoigian`) VALUES
	(8, 'FPT', '20/10/2011 - 21/06/2015', 'adadasd', '5th year student'),
	(12, 'HUy', '90/992', 'hhu', '5th year student'),
	(13, 'HUy', '90/992', 'hhu', '5th year student'),
	(14, 'HUy', '90/992', 'hhu', '5th year student');

-- Dumping structure for table demo_cv.experience
CREATE TABLE IF NOT EXISTS `experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kynang` varchar(50) DEFAULT NULL,
  `start_end` varchar(50) DEFAULT NULL,
  `noidung` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table demo_cv.experience: ~0 rows (approximately)
INSERT INTO `experience` (`id`, `kynang`, `start_end`, `noidung`) VALUES
	(1, 'Some Group Projects', '09/2020 - 04/2021', '- Human Resource Management., - Room management., - Timekeeping management');

-- Dumping structure for table demo_cv.skills
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kynang` varchar(50) DEFAULT NULL,
  `start_end` varchar(50) DEFAULT NULL,
  `noidung` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table demo_cv.skills: ~2 rows (approximately)
INSERT INTO `skills` (`id`, `kynang`, `start_end`, `noidung`) VALUES
	(1, 'Programming language', '09/2019 - 04/2022', 'C++ Programming., C# Programming., Programming HTML, CSS.Javascript Programming.'),
	(2, 'Programming language', '03/2018 - 04/2020', 'Programming HTML, CSS., Javascript Programming.'),
	(3, 'Working group.', '04/2020 - 05/2020', '- Good ability to work in a team and independently.');

-- Dumping structure for table demo_cv.target
CREATE TABLE IF NOT EXISTS `target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kynang` varchar(50) DEFAULT NULL,
  `start_end` varchar(50) DEFAULT NULL,
  `noidung` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table demo_cv.target: ~2 rows (approximately)
INSERT INTO `target` (`id`, `kynang`, `start_end`, `noidung`) VALUES
	(1, 'Learn a new programming language', '09/2021 - 04/2022', '- Improve knowledge in the field of Information Technology.'),
	(2, 'English', '09/2022 - 06/2022', '- Improve English communication in the next 1-2 years.');

-- Dumping structure for table demo_cv.thongtin
CREATE TABLE IF NOT EXISTS `thongtin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(30) DEFAULT NULL,
  `nganhnghe` varchar(50) DEFAULT NULL,
  `ngaysinh` varchar(30) DEFAULT NULL,
  `sodt` int(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `diachi` varchar(80) DEFAULT NULL,
  `gioitinh` char(3) DEFAULT NULL,
  `gioithieu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table demo_cv.thongtin: ~3 rows (approximately)
INSERT INTO `thongtin` (`id`, `fullname`, `nganhnghe`, `ngaysinh`, `sodt`, `email`, `github`, `diachi`, `gioitinh`, `gioithieu`) VALUES
	(1, 'HO QUANG HUY', 'Software Engineer', '24/04/2001', 905648420, 'hoquanghuy2404@gmail.com', 'https://github.com/HuyHo2404', '12B Đoàn Nguyễn Thục, TP Đà Nẵng', 'Nam', 'As a student, I want to apply the experience, skills from school and practical knowledge to become a software engineer, bringing a lot of value to DAC Company. Thereby helping the Company increase the number of customers and expand the customer base.'),
	(2, 'TRAN ANH QUAN', 'Software Engineer', '18/03/1998', 905123489, 'trananhquan@gmail.com', 'https://github.com/anhquan', '78 Trưng Nữ Vương', 'Nam', 'As a progressive, persistent and diligent person at work, I want to bring the company a stable source of customers. At the same time, as a socialite with a wide network of contacts, I am confident that I can successfully accomplish my sales goals.'),
	(3, 'NGUYEN DINH DUNG', 'Software Engineer', '08/11/2001', 383456789, 'đinhung@gmail.com', 'https://github.com/đinhung', '15/1 Nguyễn Đình Tứ', 'Nam', 'Apply the experience of sales skills and understanding of the market to become a professional salesman, bringing a lot of value to customers. Thereby helping the Company increase the number of customers and expand the customer base.');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
