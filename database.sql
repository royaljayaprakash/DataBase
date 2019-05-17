/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.27 : Database - capgeminiproj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`capgeminiproj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `capgeminiproj`;

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `Dept_id` varchar(15) NOT NULL DEFAULT '0',
  `Dept_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`Dept_id`,`Dept_name`) values ('1','development'),('2','Testing'),('3','Development');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `Emp_ID` varchar(6) NOT NULL DEFAULT '',
  `Emp_First_Name` varchar(25) DEFAULT NULL,
  `Emp_Last_Name` varchar(25) DEFAULT NULL,
  `Emp_Date_of_Birth` varchar(20) DEFAULT NULL,
  `Emp_Date_of_Joining` varchar(20) DEFAULT NULL,
  `Emp_Dept_ID` varchar(15) DEFAULT NULL,
  `Emp_Grade` varchar(2) DEFAULT NULL,
  `Emp_Designation` varchar(50) DEFAULT NULL,
  `Emp_Basic` varchar(10) DEFAULT NULL,
  `Emp_Gender` varchar(20) DEFAULT NULL,
  `Emp_Marital_Status` varchar(10) DEFAULT NULL,
  `Emp_Home_Address` varchar(50) DEFAULT NULL,
  `Emp_Contact_Num` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`),
  KEY `Emp_Dept_ID` (`Emp_Dept_ID`),
  KEY `Emp_Grade` (`Emp_Grade`),
  CONSTRAINT `Emp_Dept_ID` FOREIGN KEY (`Emp_Dept_ID`) REFERENCES `department` (`Dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Emp_Grade` FOREIGN KEY (`Emp_Grade`) REFERENCES `grade_master` (`Grade_Code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Emp_ID` FOREIGN KEY (`Emp_ID`) REFERENCES `user_master` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`Emp_ID`,`Emp_First_Name`,`Emp_Last_Name`,`Emp_Date_of_Birth`,`Emp_Date_of_Joining`,`Emp_Dept_ID`,`Emp_Grade`,`Emp_Designation`,`Emp_Basic`,`Emp_Gender`,`Emp_Marital_Status`,`Emp_Home_Address`,`Emp_Contact_Num`) values ('123456','jaya','prakash','10/08/1996','25/05/2019','1','M1','FullStack','18000','Male','No','Hongasandra','9703380527'),('234567','Shreya','Shreya','15/06/1997','15/06/1997','2','M1','developer','45000','Female','NotYet','Hubl;i','789456123');

/*Table structure for table `grade_master` */

DROP TABLE IF EXISTS `grade_master`;

CREATE TABLE `grade_master` (
  `Grade_Code` varchar(2) NOT NULL DEFAULT '',
  `Description` varchar(10) DEFAULT NULL,
  `Min_Salary` int(10) DEFAULT NULL,
  `Max_Salary` int(10) DEFAULT NULL,
  PRIMARY KEY (`Grade_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `grade_master` */

insert  into `grade_master`(`Grade_Code`,`Description`,`Min_Salary`,`Max_Salary`) values ('m1','good',15000,50000),('m2','notbad',18000,600000);

/*Table structure for table `user_master` */

DROP TABLE IF EXISTS `user_master`;

CREATE TABLE `user_master` (
  `UserId` varchar(6) NOT NULL DEFAULT '',
  `UserName` varchar(15) DEFAULT NULL,
  `UserPassword` varchar(50) DEFAULT NULL,
  `UserType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_master` */

insert  into `user_master`(`UserId`,`UserName`,`UserPassword`,`UserType`) values ('123456','jayaprakash','jaya@1234','ADMIN'),('234567','Shreya','Shreya@1234','USER'),('345678','Baskar','baskar@1234','USER'),('456789','ShreyaBhat','Shrey@1234','ADMIN');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
