/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.1-m2-community : Database - healthcare
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`healthcare` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `healthcare`;

/*Table structure for table `ambulance` */

DROP TABLE IF EXISTS `ambulance`;

CREATE TABLE `ambulance` (
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `service` varchar(30) DEFAULT NULL,
  `hospital` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ambulance` */

insert  into `ambulance`(`name`,`phone`,`email`,`service`,`hospital`) values ('suresh','8197930070','suresh@gmail.com','Health','Mary');

/*Table structure for table `amount` */

DROP TABLE IF EXISTS `amount`;

CREATE TABLE `amount` (
  `amount` int(10) DEFAULT NULL,
  `docemail` varchar(30) DEFAULT NULL,
  `useremail` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `amount` */

insert  into `amount`(`amount`,`docemail`,`useremail`) values (1000,'suresh@gmail.com','rohitganeshkar280@gmail.com'),(997,'alok@gmail.com','rahul@gmail.com');

/*Table structure for table `appointement` */

DROP TABLE IF EXISTS `appointement`;

CREATE TABLE `appointement` (
  `email` varchar(30) DEFAULT NULL,
  `from` varchar(20) DEFAULT NULL,
  `to` varchar(20) DEFAULT NULL,
  `message` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `appointement` */

insert  into `appointement`(`email`,`from`,`to`,`message`) values ('rohitganeshkar280@gmail.com ','17:25','19:25','asa'),('rahul@gmail.com ','15:15','16:16','sddfsdfsdfsdfd');

/*Table structure for table `doctorsignup` */

DROP TABLE IF EXISTS `doctorsignup`;

CREATE TABLE `doctorsignup` (
  `name` varchar(30),
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctorsignup` */

insert  into `doctorsignup`(`name`,`phone`,`email`,`password`) values ('suresh','8197930070','suresh@gmail.com','12345'),('alok','8197930070','alok@gmail.com','12345');

/*Table structure for table `doctorsinfo` */

DROP TABLE IF EXISTS `doctorsinfo`;

CREATE TABLE `doctorsinfo` (
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `specialist` varchar(30) DEFAULT NULL,
  `hospital` varchar(30) DEFAULT NULL,
  `from` varchar(10) DEFAULT NULL,
  `to` varchar(10) DEFAULT NULL,
  `service` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctorsinfo` */

insert  into `doctorsinfo`(`name`,`phone`,`email`,`specialist`,`hospital`,`from`,`to`,`service`) values ('Rohith','8197930070','suresh@gmail.com ','cardiologist','saint marry','08:20','06:21','we provide good service'),('Alok','8197930070','alok@gmail.com ','cardiologist','saint marry','15:12','18:14','we provide good service'),('Alok','8197930070','alok@gmail.com ','cardiologist','saint marry','15:12','18:14','we provide good service'),('vaishak m','8197930070','rohitganeshkar280@gmail.com','cardiologist','saint marry','22:48','22:48','sasaasas');

/*Table structure for table `medicine` */

DROP TABLE IF EXISTS `medicine`;

CREATE TABLE `medicine` (
  `email` varchar(50) DEFAULT NULL,
  `medicine` varchar(200) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `docemail` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medicine` */

insert  into `medicine`(`email`,`medicine`,`amount`,`docemail`) values ('rohitganeshkar280@gmail.com','asdf\r\nasdf\r\nasdf\r\nadf',10000,NULL),('rohitganeshkar280@gmail.com',' asdsadsadasdsad',1000,'suresh@gmail.com'),('rahul@gmail.com',' scsaadsdasdasdds',997,'alok@gmail.com');

/*Table structure for table `send_response` */

DROP TABLE IF EXISTS `send_response`;

CREATE TABLE `send_response` (
  `sender_id` varchar(30) DEFAULT NULL,
  `user_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `send_response` */

insert  into `send_response`(`sender_id`,`user_id`) values ('null','suresh@gmail.com'),('alok@gmail.com','rahul@gmail.com'),('rohitganeshkar280@gmail.com','rahul@gmail.com');

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `weight` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userinfo` */

insert  into `userinfo`(`name`,`phone`,`email`,`region`,`gender`,`height`,`weight`) values ('Rohith','8197930070','rohitganeshkar280@gmail.com','MYSORE','1','5','80'),('Rahul','8197930070','rahul@gmail.com','Melbourne','1','6','70'),('Rohith','8197930070','rohitganeshkar280@gmail.com','Melbourne','1','5','70'),('Rohith','8197930070','rohitganeshkar280@gmail.com','Melbourne','1','5','70');

/*Table structure for table `usersignup` */

DROP TABLE IF EXISTS `usersignup`;

CREATE TABLE `usersignup` (
  `username` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usersignup` */

insert  into `usersignup`(`username`,`phone`,`email`,`password`) values ('Rohith','8197930070','rohitganeshkar280@gmail.com','12345'),('rahul','8197930070','rahul@gmail.com','12345'),('rahul','8197930070','rahul@gmail.com','12345');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
