/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.8-log : Database - drivesafe_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`drivesafe_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `drivesafe_db`;

/*Table structure for table `accident_tb` */

DROP TABLE IF EXISTS `accident_tb`;

CREATE TABLE `accident_tb` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(30) DEFAULT NULL,
  `message` varchar(30) DEFAULT NULL,
  `lattitude` varchar(30) DEFAULT NULL,
  `longitude` varbinary(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `accident_tb` */

insert  into `accident_tb`(`aid`,`uid`,`message`,`lattitude`,`longitude`,`status`) values (5,'2','accident','9.9796966','76.2762487','0'),(7,'2','need help','9.9797455','76.2763025','0'),(8,'5','ok accident','9.977375','76.2774185','0');

/*Table structure for table `emergency_tb` */

DROP TABLE IF EXISTS `emergency_tb`;

CREATE TABLE `emergency_tb` (
  `acc_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `lattitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  PRIMARY KEY (`acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `emergency_tb` */

insert  into `emergency_tb`(`acc_id`,`u_id`,`message`,`lattitude`,`longitude`,`status`) values (1,1,'Car accident',9.981348,76.2745224,0),(2,1,'I got hit by a car',9.9806204,76.2734364,0),(3,2,'I got my car',9.9797384,76.2762749,1),(4,2,'accident please help me',9.9796966,76.2762487,1),(5,2,'accent',9.9796997,76.27625,0),(6,5,'emergency',9.9796861,76.2762678,0);

/*Table structure for table `issue_report_tb` */

DROP TABLE IF EXISTS `issue_report_tb`;

CREATE TABLE `issue_report_tb` (
  `repo_id` int(100) NOT NULL AUTO_INCREMENT,
  `reg_id` int(10) DEFAULT NULL,
  `issue` varchar(20) DEFAULT NULL,
  `lattitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`repo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `issue_report_tb` */

insert  into `issue_report_tb`(`repo_id`,`reg_id`,`issue`,`lattitude`,`longitude`) values (1,1,'Gutter Ahead',9.9796735,76.2762537),(2,1,'Hump Ahead',9.979679,76.2762417),(3,1,'Hump Ahead',9.979679,76.2762417),(4,1,'Gutter Ahead',9.979679,76.2762417),(5,1,'Gutter Ahead',9.9796735,76.2762537),(6,1,'Hump Ahead',9.9796798,76.2762499),(7,1,'Gutter Ahead',9.9796784,76.2762476),(8,1,'Gutter Ahead',9.9796703,76.2762546),(9,1,'Gutter Ahead',9.9787245,76.2770565),(10,1,'Hump Ahead',9.9787245,76.2770565),(11,1,'Gutter Ahead',9.9806204,76.2734364),(12,1,'Gutter Ahead',9.9806204,76.2734364),(13,1,'Gutter Ahead',9.9806204,76.2734364),(14,1,'Hump Ahead',9.9797177,76.2763325),(15,1,'Hump Ahead',9.9797177,76.2763325),(16,1,'Hump Ahead',9.9797177,76.2763325),(17,1,'Hump Ahead',9.9806204,76.2734364),(18,1,'Gutter Ahead',9.9806204,76.2734364),(19,1,'Hump Ahead',9.9796723,76.276256),(20,1,'Hump Ahead',9.9796723,76.276256),(21,2,'Gutter Ahead',9.9796966,76.2762487),(22,2,'Hump Ahead',9.9797455,76.2763025);

/*Table structure for table `login_tb` */

DROP TABLE IF EXISTS `login_tb`;

CREATE TABLE `login_tb` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `reg_id` int(10) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `login_tb` */

insert  into `login_tb`(`log_id`,`reg_id`,`phone`,`password`,`type`) values (1,1,'1111111111','123456','Admin'),(2,2,'1234567890','qwerty','User'),(6,10,'1234567890','7816','Police'),(7,11,'1231231234','1362','Hospital'),(8,12,'1472583693','0636','Police'),(9,13,'1234567890','4923','Police'),(10,5,'9074012775','123456','User');

/*Table structure for table `nearby_tb` */

DROP TABLE IF EXISTS `nearby_tb`;

CREATE TABLE `nearby_tb` (
  `near_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `nearlat` double DEFAULT NULL,
  `nearlong` double DEFAULT NULL,
  PRIMARY KEY (`near_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `nearby_tb` */

insert  into `nearby_tb`(`near_id`,`name`,`phone`,`type`,`description`,`nearlat`,`nearlong`) values (10,'MENAGA','1234567890','Police','details gggg',9.978264547263702,76.2764235958457),(11,'HOSP ONE','1231231234','Hospital','desk back haha back',9.983811276745694,76.27436466515064),(12,'CITY HOSPITAL','1472583693','Police','near cochin',9.97843559319716,76.27807885408401),(13,'MENAGA STATION','1234567890','Police','station n we see r Chico',9.978540598185168,76.27811171114445);

/*Table structure for table `registration_tb` */

DROP TABLE IF EXISTS `registration_tb`;

CREATE TABLE `registration_tb` (
  `reg_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `registration_tb` */

insert  into `registration_tb`(`reg_id`,`name`,`gender`,`phone`,`address`,`password`) values (1,'ADRIAN SEBAN','Male','9544351997','Westmont, California','123456'),(2,'AL HUSSAIN','Male','8653126469','Malappuram Valavu','qwerty'),(3,'PRIYA JOSE','Female','9875642311','Aluva Manappuram','123123'),(4,'GAYATRI RAVINDRAN','Female','9961958066','Gayathri Bhavan','123123'),(5,'VISHNU','Male','9074012775','Vishnu Address','123456');

/*Table structure for table `traffic_signal_tb` */

DROP TABLE IF EXISTS `traffic_signal_tb`;

CREATE TABLE `traffic_signal_tb` (
  `sig_id` int(10) NOT NULL AUTO_INCREMENT,
  `location` varchar(30) DEFAULT NULL,
  `slattitude` double DEFAULT NULL,
  `slongitude` double DEFAULT NULL,
  PRIMARY KEY (`sig_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `traffic_signal_tb` */

insert  into `traffic_signal_tb`(`sig_id`,`location`,`slattitude`,`slongitude`) values (1,'HIGH COURT',9.983719811619313,76.27401866018772),(2,'BANERJEE',9.984740125111195,76.27619192004204),(3,'SEEMATTI',9.985796426874007,76.28147386014462),(4,'LISIE JN',9.990937882984475,76.28778912127018),(8,'EE',9.977559229492549,76.27760276198386),(9,'SIGNAL',9.97393157379354,76.2791071459651);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
