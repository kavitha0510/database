/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.73-community : Database - kavitha
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kavitha` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `kavitha`;

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `stu_id` int(10) DEFAULT NULL,
  `dname` varchar(10) DEFAULT NULL,
  `dno` int(10) DEFAULT NULL,
  `clg` varchar(20) DEFAULT NULL,
  KEY `stu_id` (`stu_id`),
  CONSTRAINT `dept_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dept` */

insert  into `dept`(`stu_id`,`dname`,`dno`,`clg`) values (1,'cse',1,'bmsce'),(2,'ece',2,'rvce'),(3,'mech',3,'msrit');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `stu_id` int(10) NOT NULL,
  `st_name` varchar(10) DEFAULT NULL,
  `phone num` int(10) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`stu_id`,`st_name`,`phone num`) values (1,'bhavya',1234567890),(2,'kavitha',97654321),(3,'revathi',1234567890);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
