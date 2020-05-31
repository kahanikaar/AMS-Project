Script started on 2020-05-31 15:06:38+0530

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 5.7.29-0ubuntu0.18.04.1 (Ubuntu)

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show  databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| ATTD_MGMT_SYS      |
| ATTENDANCE_MGMT    |
| STUDENT            |
| mysql              |
| performance_schema |
| student            |
| sys                |
+--------------------+
8 rows in set (0.00 sec)

mysql> use database ATTENDANCE_MGMTL;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> SHOW TABLES;
+---------------------------+
| Tables_in_ATTENDANCE_MGMT |
+---------------------------+
| ATTENDANCE_RECORDS        |
| COURSE_DATA               |
| STUDENT_DATA              |
| STUDENT_ENROLLMENT        |
| TEACHER_DATA              |
+---------------------------+
5 rows in set (0.00 sec)

mysql> SHOW ATT[K[K[KSTUDENT_DATA;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'STUDENT_DATA' at line 1
mysql> SHOW STUDENT_DATA;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| NAME         | varchar(100) | NO   |     | NULL    |       |
| STUDENT_ID   | varchar(20)  | NO   | PRI | NULL    |       |
| PROGRAM      | varchar(20)  | NO   |     | NULL    |       |
| JOINING_DATE | date         | NO   |     | NULL    |       |
| BRANCH       | varchar(30)  | NO   |     | NULL    |       |
| PHONE        | varchar(10)  | YES  |     | NULL    |       |
| ADDRESS      | varchar(100) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> SHOW COLUMNS FROM STUDENT_DATA;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| NAME         | varchar(50) | NO   |     | NULL    |       |
| TEACHER_ID   | varchar(20) | NO   | PRI | NULL    |       |
| DEPARTMENT   | varchar(30) | NO   |     | NULL    |       |
| JOINING_DATE | date        | NO   |     | NULL    |       |
| PHONE        | varchar(10) | YES  |     | NULL    |       |
| ADDRESS      | varchar(50) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> SHOW COLUMNS FROM TEACHER_DATA;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| COURSE_ID   | varchar(30) | NO   | PRI | NULL    |       |
| COURSE_NAME | varchar(70) | NO   |     | NULL    |       |
| TEACHER_ID  | varchar(20) | NO   | MUL | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> SHOW COLUMNS FROM COURSE_DATA;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| CURRENT_ATTENDANCE | int(255)    | NO   |     | 0       |       |
| RECORD_ID          | varchar(30) | NO   | PRI | NULL    |       |
| STUDENT_ID         | varchar(20) | NO   | MUL | NULL    |       |
| COURSE_ID          | varchar(30) | NO   | MUL | NULL    |       |
| TEACHER_ID         | varchar(20) | NO   | MUL | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> SHOW COLUMNS FROM STUDENT_ENROLLMENT;
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| STUDENT_ID | varchar(20) | NO   | MUL | NULL    |       |
| COURSE_ID  | varchar(30) | NO   | MUL | NULL    |       |
| DATE       | date        | NO   |     | NULL    |       |
| STATUS     | varchar(10) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> EXIT
Bye

(base) ]0;computerist@sanzisen: ~[01;32mcomputerist@sanzisen[00m:[01;34m~[00m$ exit
exit

Script done on 2020-05-31 15:08:30+0530
