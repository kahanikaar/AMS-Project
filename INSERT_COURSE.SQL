mysql> SHOW COLUMNS FROM COURSE_DATA;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| COURSE_ID   | varchar(30) | NO   | PRI | NULL    |       |
| COURSE_NAME | varchar(70) | NO   |     | NULL    |       |
| TEACHER_ID  | varchar(20) | NO   | MUL | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO COURSE_DATA (COURSE_ID,COURSE_NAME,TEACHER_ID) VALUES(
    -> "C101","C PROG","T01016");
Query OK, 1 row affected (0.27 sec)

mysql> INSERT INTO COURSE_DATA (COURSE_ID,COURSE_NAME,TEACHER_ID) VALUES( "C102","RDBMS","T16080");
Query OK, 1 row affected (0.17 sec)

mysql> INSERT INTO COURSE_DATA (COURSE_ID,COURSE_NAME,TEACHER_ID) VALUES( "C103","BASIC ELECTRICALS","T11018");
Query OK, 1 row affected (0.12 sec)

mysql> INSERT INTO COURSE_DATA (COURSE_ID,COURSE_NAME,TEACHER_ID) VALUES( "C104","ENERGY CONVERSION DEVICES","T115019");
Query OK, 1 row affected (0.06 sec)

mysql> INSERT INTO COURSE_DATA (COURSE_ID,COURSE_NAME,TEACHER_ID) VALUES( "C105","NETWORKING","T17019");
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`ATTENDANCE_MGMT`.`COURSE_DATA`, CONSTRAINT `COURSE_DATA_ibfk_1` FOREIGN KEY (`TEACHER_ID`) REFERENCES `TEACHER_DATA` (`TEACHER_ID`))
mysql> INSERT INTO COURSE_DATA (COURSE_ID,COURSE_NAME,TEACHER_ID) VALUES( "C105","NETWORKING","T17091");
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO COURSE_DATA (COURSE_ID,COURSE_NAME,TEACHER_ID) VALUES( "C106","BASIC ELECTRONICS","T21016");
Query OK, 1 row affected (0.12 sec)

mysql> INSERT INTO COURSE_DATA (COURSE_ID,COURSE_NAME,TEACHER_ID) VALUES( "C107","DIGITAL ELEC","T21018");
Query OK, 1 row affected (0.13 sec)

mysql> INSERT INTO COURSE_DATA (COURSE_ID,COURSE_NAME,TEACHER_ID) VALUES( "C108","SYS ADMIN","T91016");
Query OK, 1 row affected (0.13 sec)

mysql> INSERT INTO COURSE_DATA (COURSE_ID,COURSE_NAME,TEACHER_ID) VALUES( "C109","POWER SYS","T91019");
Query OK, 1 row affected (0.25 sec)

mysql> INSERT INTO COURSE_DATA (COURSE_ID,COURSE_NAME,TEACHER_ID) VALUES( "C110","ROBOTICS","T91816");
Query OK, 1 row affected (0.13 sec)

mysql> 
