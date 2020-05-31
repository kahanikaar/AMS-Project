mysql> SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO"
    -> ;
;
^C
mysql> SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
Query OK, 0 rows affected, 1 warning (0.00 sec)

mysql> SET time_zone="+05.30";
ERROR 1298 (HY000): Unknown or incorrect time zone: '+05.30'
mysql> SET time_zone="+05:30";
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE IF NOT EXISTS 'ATTENDANCE_TABLE'(
    -> 'PROGRAM' varchar(64) NOT NULL,
    -> 'SEMESTER' varchar(64) NOT NULL,
    -> 'SUBJECT' varchar(64) NOT NULL,
    -> 'TEACHER' varchar(64) NOT NULL,
    -> 'STD_ROLL' int(11) NOT NULL,
    -> 'STUDENT_NAME' varchar(100) NOT NULL,
    -> 'ATTENDANCE' varchar(8) NOT NULL,
    -> 'ATTD_DATE' varchar(8) NOT NULL,
    -> 'ATTD_DATE' DATE NOT NULL,
    -> 'TEACHER_ID' int(11) DEFAULT NULL
    -> ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ATTENDANCE_TABLE'(
'PROGRAM' varchar(64) NOT NULL,
'SEMESTER' varchar(64) NOT N' at line 1
mysql> CREATE TABLE IF NOT EXISTS 'ATTENDANCE_TABLE'( 'PROGRAM' varchar(64) NOT NULL, 'SEMESTER' varchar(64) NOT NULL, 'SUBJECT' varchar(64) NOT NULL, 'TEACHER' varchar(64) NOT NULL, 'STD_ROLL' int(11) NOT NULL, 'STUDENT_NAME' varchar(100) NOT NULL, 'ATTENDANCE' varchar(8) NOT NULL, 'ATTD_DATE' DATE NOT NULL, 'TEACHER_ID' int(11) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ATTENDANCE_TABLE'( 'PROGRAM' varchar(64) NOT NULL, 'SEMESTER' varchar(64) NOT N' at line 1
mysql> CREATE TABLE IF NOT EXISTS 'ATTENDANCE_TABLE'( PROGRAM varchar(64) NOT NULL, SEMESTER varchar(64) NOT NULL, SUBJECT varchar(64) NOT NULL, TEACHER varchar(64) NOT NULL, STD_ROLL int(11) NOT NULL, STUDENT_NAME varchar(100) NOT NULL, ATTENDANCE varchar(8) NOT NULL, ATTD_DATE DATE NOT NULL, TEACHER_ID int(11) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1;                
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ATTENDANCE_TABLE'( PROGRAM varchar(64) NOT NULL, SEMESTER varchar(64) NOT NULL,' at line 1
mysql> CREATE TABLE IF NOT EXISTS 'ATTENDANCE_TABLE'( PROGRAM varchar(64) NOT NULL, SEMESTER varchar(64) NOT NULL, SUBJECT varchar(64) NOT NULL, TEACHER varchar(64) NOT NULL, STD_ROLL int(11) NOT NULL, STUDENT_NAME varchar(100) NOT NULL, ATTENDANCE varchar(8) NOT NULL, ATTD_DATE DATE NOT NULL, TEACHER_ID int(11) DEFAULT NULL );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ATTENDANCE_TABLE'( PROGRAM varchar(64) NOT NULL, SEMESTER varchar(64) NOT NULL,' at line 1
mysql> CREATE TABLE IF NOT EXISTS 'ATTENDANCE_TABLE'(
    -> 'PROGRAM' varchar(64) NOT NULL,
    -> 'SEMESTER' varchar(64) NOT NULL,
    -> 'SUBJECT' varchar(64) NOT NULL,
    -> 'TEACHER' varchar(64) NOT NULL,
    -> 'STD_ROLL' int(11) NOT NULL,
    -> 'STUDENT_NAME' varchar(100) NOT NULL,
    -> 'ATTENDANCE' varchar(8) NOT NULL,
    -> 'ATTD_DATE' DATE NOT NULL,
    -> 'TEACHER_ID' int(11) DEFAULT NULL
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ATTENDANCE_TABLE'(
'PROGRAM' varchar(64) NOT NULL,
'SEMESTER' varchar(64) NOT N' at line 1
mysql> CREATE TABLE [IF NOT EXISTS] 'ATTENDANCE_TABLE'( 'PROGRAM' varchar(64) NOT NULL, 'SEMESTER' varchar(64) NOT NULL, 'SUBJECT' varchar(64) NOT NULL, 'TEACHER' varchar(64) NOT NULL, 'STD_ROLL' int(11) NOT NULL, 'STUDENT_NAME' varchar(100) NOT NULL, 'ATTENDANCE' varchar(8) NOT NULL, 'ATTD_DATE' DATE NOT NULL, 'TEACHER_ID' int(11) DEFAULT NULL );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '[IF NOT EXISTS] 'ATTENDANCE_TABLE'( 'PROGRAM' varchar(64) NOT NULL, 'SEMESTER' v' at line 1
mysql> CREATE TABLE 'ATTENDANCE_TABLE'( 'PROGRAM' varchar(64) NOT NULL, 'SEMESTER' varchar(64) NOT NULL, 'SUBJECT' varchar(64) NOT NULL, 'TEACHER' varchar(64) NOT NULL, 'STD_ROLL' int(11) NOT NULL, 'STUDENT_NAME' varchar(100) NOT NULL, 'ATTENDANCE' varchar(8) NOT NULL, 'ATTD_DATE' DATE NOT NULL, 'TEACHER_ID' int(11) DEFAULT NULL );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ATTENDANCE_TABLE'( 'PROGRAM' varchar(64) NOT NULL, 'SEMESTER' varchar(64) NOT N' at line 1
mysql> CREATE TABLE ATTENDANCE_TABLE ( 'PROGRAM' varchar(64) NOT NULL, 'SEMESTER' varchar(64) NOT NULL, 'SUBJECT' varchar(64) NOT NULL, 'TEACHER' varchar(64) NOT NULL, 'STD_ROLL' int(11) NOT NULL, 'STUDENT_NAME' varchar(100) NOT NULL, 'ATTENDANCE' varchar(8) NOT NULL, 'ATTD_DATE' DATE NOT NULL, 'TEACHER_ID' int(11) DEFAULT NULL );
ERROR 1046 (3D000): No database selected
mysql> LIST DATABASE
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'LIST DATABASE' at line 1
mysql> SELECT DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> CREATE DATABASE 'ATTD_MGMT_SYS';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ATTD_MGMT_SYS'' at line 1
mysql> CREATE DATABASE ATTD_MGMT_SYS;
Query OK, 1 row affected (0.00 sec)

mysql> SELECT DATABASE ATTD_MGMT_SYS;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ATTD_MGMT_SYS' at line 1
mysql> CREATE TABLE ATTENDANCE_TABLE ( PROGRAM varchar(64) NOT NULL, SEMESTER varchar(64) NOT NULL, SUBJECT varchar(64) NOT NULL, TEACHER varchar(64) NOT NULL, STD_ROLL int(11) NOT NULL, STUDENT_NAME varchar(100) NOT NULL, ATTENDANCE varchar(8) NOT NULL, ATTD_DATE DATE NOT NULL, TEACHER_ID int(11) DEFAULT NULL ); 
ERROR 1046 (3D000): No database selected
mysql> USE ATTD_MGMT_SYS
Database changed
mysql> CREATE TABLE ATTENDANCE_TABLE ( PROGRAM varchar(64) NOT NULL, SEMESTER varchar(64) NOT NULL, SUBJECT varchar(64) NOT NULL, TEACHER varchar(64) NOT NULL, STD_ROLL int(11) NOT NULL, STUDENT_NAME varchar(100) NOT NULL, ATTENDANCE varchar(8) NOT NULL, ATTD_DATE DATE NOT NULL, TEACHER_ID int(11) DEFAULT NULL );
Query OK, 0 rows affected (0.36 sec)

mysql> INSERT INTO `attendance_table` (`program`, `semester`, `subject`, `teacher`, `std_roll_no`, `student_name`, `attendance`, `attd_date`, `TeacherId`) VALUES
    -> ('MCS', 'Term-III', 'OOP', 'Miss Rabeal Zahra', 1, 'salma', 'P', '2015-11-11', NULL),
    -> ('MCS', 'Term-III', 'MP', 'Sir javed', 3, 'farah', 'A', '0000-00-00', NULL),
    -> ('MS', 'Term-IV', 'MP', 'Miss Sadia Khattak', 4, 'wasim', 'A', '0000-00-00', NULL),
    -> ('MCS', 'Term-III', 'OOP', 'Miss Rabeal Zahra', 6, 'fared', 'A', '0000-00-00', NULL),
    -> ('MS', 'Term-III', 'C++', 'Dr.Zubair', 9, 'salman', 'A', '0000-00-00', NULL),
    -> ('MS', 'Term-III', 'OOP', 'Others', 21, 'farhin', 'P', '0000-00-00', NULL),
    -> ('PHD', 'Term-I', 'Others', 'Dr.Zubair', 33, 'fff', 'A', '0000-00-00', NULL),
    -> ('BSSC', 'Term-I', 'C++', 'Dr.Zubair', 76, 'hhhh', 'A|', '0000-00-00', NULL),
    -> ('P.HD', 'Term-I', 'Others', 'Others', 79, 'sdsfs', 'P', '0000-00-00', NULL),
    -> ('MS', 'Term-V', 'OOP', 'Dr.Zubair', 16, 'gggg', 'A', '0000-00-00', NULL),
    -> ('MCS', 'Term-VIII', 'C++', 'Others', 55, 'uu', 'Array', '0000-00-00', NULL),
    -> ('PHD', 'Term-V', 'Others', 'Others', 66, 'qqq', 'Array', '0000-00-00', NULL),
    -> ('MS', 'Term-IV', 'MP', 'Miss Rabeal Zahra', 98, 'jj', 'A', '0000-00-00', NULL),
    -> ('MCS', 'Term-IV', 'C++', 'Dr.Zubair', 54, 'fff', 'A', '0000-00-00', NULL),
    -> ('BSSC', 'Term-IV', 'C++', 'Miss Sadia Khattak', 98, 'vv', 'P', '0000-00-00', NULL),
    -> ('P.HD', 'Term-II', 'Java', 'Miss Rabeal Zahra', 87, 'sahar', 'A', '0000-00-00', NULL),
    -> ('MS', 'Term-III', 'OOP', 'Miss Sadia Khattak', 87, 'shabir', 'A', '0000-00-00', NULL),
    -> ('BSSC', 'Term-I', 'C++', 'Dr.Zubair', 67, 'hhhh', 'P', '0000-00-00', NULL),
    -> ('BSCS', 'Term-III', 'Java', 'Sir javed', 41, 'Ahmad', 'A', '0000-00-00', NULL),
    -> ('BSSC', 'Term-III', 'C++', 'Sir javed', 88, 'sasa', 'A', '0000-00-00', NULL),
    -> ('BSCS', 'Term-I', 'C++', 'Dr.Zubair', 66, 'yuy', 'P', '0000-00-00', NULL),
    -> ('BSSC', 'Term-II', 'Java', 'Sir javed', 17, 'farahh', 'A', '0000-00-00', NULL),
    -> ('MCS', 'Term-III', 'MP', 'Miss Sadia Khattak', 30, 'wasim', 'A', '0000-00-00', NULL),
    -> ('MCS', 'Term-II', 'Java', 'Sir javed', 9, 'razaq', 'P', '0000-00-00', NULL),
    -> ('BSCS', 'Term-I', 'Java', 'Sir javed', 10, 'sardar', 'P', '0000-00-00', NULL),
    -> ('P.HD', 'Term-II', 'OOP', 'Miss Rabeal Zahra', 16, 'noor', 'A', '0000-00-00', NULL),
    -> ('MCS', 'Term-II', 'Java', 'Sir javed', 21, 'farhin', 'P', '0000-00-00', NULL),
    -> ('BSCS', 'Term-II', 'MP', 'Miss Rabeal Zahra', 1, 'j', 'A', '2015-11-11', NULL),
    -> ('MS', 'Term-V', 'OOP', 'Dr.Zubair', 123, 'dv', 'P', '0000-00-00', NULL), 
    -> ('MCS', 'Term-III', 'Others', 'Others', 16, 't', 'P', '0000-00-00', NULL),
    -> ('BSCS', 'Term-VIII', 'OOP', 'Miss Rabeal Zahra', 1, 'rabia', 'P', '2015-11-11', NULL),
    -> ('BSSC', 'Term-I', 'C++', 'Dr.Zubair', 18, 'usra', 'A', '0000-00-00', NULL),
    -> ('BSCS', 'Term-V', 'MP', 'Sir javed', 1, 'hh', 'A', '2015-11-11', NULL),
    -> ('BSSC', 'Term-I', 'C++', 'Dr.Zubair', 1, 'rezwan', 'P', '2015-11-11', NULL),
    -> ('MCS', 'Term-I', 'OOP', 'Miss Rabeal Zahra', 2, 'Afsana', 'P', '2015-11-11', NULL),
    -> ('MCS', 'Term-III', 'Java', 'Dr.Zubair', 2, 'Ali', 'P', '2015-11-10', NULL),
    -> ('P.HD', 'Term-IV', 'OOP', 'Sir javed', 5, 'sajjad', 'A', '2015-11-10', NULL);
ERROR 1146 (42S02): Table 'ATTD_MGMT_SYS.attendance_table' doesn't exist
mysql> INSERT INTO `attendance_table` (`program`, `semester`, `subject`, `teacher`, `std_roll_no`, `student_name`, `attendance`, `attd_date`, `TeacherId`) VALUEmysql> LIST TABLES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'LIST TABLES' at line 1
mysql> SHOW TABLES;
+-------------------------+
| Tables_in_ATTD_MGMT_SYS |
+-------------------------+
| ATTENDANCE_TABLE        |
+-------------------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM ATTENDANCE_TABLE;
Empty set (0.01 sec)

mysql> SHOW COLUMNS FROM ATTENDANCE_TABLE;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| PROGRAM      | varchar(64)  | NO   |     | NULL    |       |
| SEMESTER     | varchar(64)  | NO   |     | NULL    |       |
| SUBJECT      | varchar(64)  | NO   |     | NULL    |       |
| TEACHER      | varchar(64)  | NO   |     | NULL    |       |
| STD_ROLL     | int(11)      | NO   |     | NULL    |       |
| STUDENT_NAME | varchar(100) | NO   |     | NULL    |       |
| ATTENDANCE   | varchar(8)   | NO   |     | NULL    |       |
| ATTD_DATE    | date         | NO   |     | NULL    |       |
| TEACHER_ID   | int(11)      | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
9 rows in set (0.01 sec)

mysql> INSERT INTO ATTENDANCE_TABLE (PROGRAM,SEMESTER,SUBJECT,TEACHER,STD_ROLL,STUDENT_NAME,ATTENDANCE,ATTD_DATE,TEACHER_ID) VALUES                                                  
    -> ('MCS', 'Term-III', 'OOP', 'Miss Rabeal Zahra', 1, 'salma', 'P', '2015-11-11', NULL);
Query OK, 1 row affected (0.04 sec)

mysql> SELECT * FROM ATTENDANCE_TABLE;
+---------+----------+---------+-------------------+----------+--------------+------------+------------+------------+
| PROGRAM | SEMESTER | SUBJECT | TEACHER           | STD_ROLL | STUDENT_NAME | ATTENDANCE | ATTD_DATE  | TEACHER_ID |
+---------+----------+---------+-------------------+----------+--------------+------------+------------+------------+
| MCS     | Term-III | OOP     | Miss Rabeal Zahra |        1 | salma        | P          | 2015-11-11 |       NULL |
+---------+----------+---------+-------------------+----------+--------------+------------+------------+------------+
1 row in set (0.00 sec)

mysql> INSERT INTO ATTENDANCE_TABLE (PROGRAM,SEMESTER,SUBJECT,TEACHER,STD_ROLL,STUDENT_NAME,ATTENDANCE,ATTD_DATE,TEACHER_ID) VALUES                                                                                    -> ('MCS', 'Term-III', 'MP', 'Sir javed', 3, 'farah', 'A', '0000-00-00', NULL),
    -> ('MS', 'Term-IV', 'MP', 'Miss Sadia Khattak', 4, 'wasim', 'A', '0000-00-00', NULL),,
    -> ('MCS', 'Term-III', 'OOP', 'Miss Rabeal Zahra', 6, 'fared', 'A', '0000-00-00', NULL),,
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '
('MCS', 'Term-III', 'OOP', 'Miss Rabeal Zahra', 6, 'fared', 'A', '0000-00-00', ' at line 3
mysql> INSERT INTO ATTENDANCE_TABLE (PROGRAM,SEMESTER,SUBJECT,TEACHER,STD_ROLL,STUDENT_NAME,ATTENDANCE,ATTD_DATE,TEACHER_ID) VALUES ('MCS', 'Term-III', 'MP', 'Sir javed', 3, 'farah', 'A', '0000-00-00', NULL), ('MS', 'Term-IV', 'MP', 'Miss Sadia Khattak', 4, 'wasim', 'A', '0000-00-00', NULL), ('MCS', 'Term-III', 'OOP', 'Miss Rabeal Zahra', 6, 'fared', 'A', '0000-00-00', NULL);
Query OK, 3 rows affected (0.06 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM ATTENDANCE_TABLE;
+---------+----------+---------+--------------------+----------+--------------+------------+------------+------------+
| PROGRAM | SEMESTER | SUBJECT | TEACHER            | STD_ROLL | STUDENT_NAME | ATTENDANCE | ATTD_DATE  | TEACHER_ID |
+---------+----------+---------+--------------------+----------+--------------+------------+------------+------------+
| MCS     | Term-III | OOP     | Miss Rabeal Zahra  |        1 | salma        | P          | 2015-11-11 |       NULL |
| MCS     | Term-III | MP      | Sir javed          |        3 | farah        | A          | 0000-00-00 |       NULL |
| MS      | Term-IV  | MP      | Miss Sadia Khattak |        4 | wasim        | A          | 0000-00-00 |       NULL |
| MCS     | Term-III | OOP     | Miss Rabeal Zahra  |        6 | fared        | A          | 0000-00-00 |       NULL |
+---------+----------+---------+--------------------+----------+--------------+------------+------------+------------+
4 rows in set (0.00 sec)

mysql> ('MCS', 'Term-III', 'OOP', 'Miss Rabeal Zahra', 1, 'salma', 'P', '2015-11-11', NULL);                                                                                                                       


