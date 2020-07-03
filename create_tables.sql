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
+-----------------------------------------------------------------------------------------+
| Tables_in_ATTENDANCE_MGMT |                                                             |
+-----------------------------------------------------------------------------------------+
| ATTENDANCE_RECORDS        : used to store daily attendance records                      | 
| COURSE_DATA               : used to store information about courses                     |
                              available along with related information of faculty.        |
| STUDENT_DATA              : used to store all the details of students studying.         |
| STUDENT_ENROLLMENT        : used to store enrollment data of students & relationship    |
                              with course & faculty with data about current attendance.   |                                                           |
| TEACHER_DATA              : used to store all the information of the teaching faculty.  |                                                            |
+-----------------------------------------------------------------------------------------+
5 rows in set (0.00 sec)

mysql> SHOW ATT[K[K[KSTUDENT_DATA;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'STUDENT_DATA' at line 1
mysql> SHOW STUDENT_DATA;
+--------------+--------------+------+-----+---------+---------------------------------------------------------------------------------------------+
| Field        | Type         | Null | Key | Default | Extra                                                                                       |
+--------------+--------------+------+-----+---------+---------------------------------------------------------------------------------------------+
| NAME         | varchar(100) | NO   |     | NULL    | Contains the fullnames of the students studying.                                            |
| STUDENT_ID   | varchar(20)  | NO   | PRI | NULL    | Contains the registered StudentID used as primary key here and foreign key in other tables. |
| PROGRAM      | varchar(20)  | NO   |     | NULL    | Contains the the Program the student is enrolled for.                                       |
| JOINING_DATE | date         | NO   |     | NULL    | Contains the the joining date of the students.                                              |
| BRANCH       | varchar(30)  | NO   |     | NULL    | Contains the branch the student is enrolled for.                                            |
| PHONE        | varchar(10)  | YES  |     | NULL    | Contains the phone number of the students.                                                  |
| ADDRESS      | varchar(100) | YES  |     | NULL    | Contains the address of the students.                                                       |
+--------------+--------------+------+-----+---------+---------------------------------------------------------------------------------------------+
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
                                                                                
                                                                                
mysql> SHOW COLUMNS FROM TEACHER_DATA;
+--------------+-------------+------+-----+---------+---------------------------------------------------------------------------------------+
| Field        | Type        | Null | Key | Default | Extra                                                                                 |
+--------------+-------------+------+-----+---------+---------------------------------------------------------------------------------------+
| NAME         | varchar(50) | NO   |     | NULL    | Contains the full name of the teaching faculty.                                       |
| TEACHER_ID   | varchar(20) | NO   | PRI | NULL    | Contains the registered TeacherID used as Primary key here and foreign key in others. |
| DEPARTMENT   | varchar(30) | NO   |     | NULL    | Contains the department the faculty is working for.                                   |
| JOINING_DATE | date        | NO   |     | NULL    | Contains the joining date of the faculty date into the institution.                   |
| PHONE        | varchar(10) | YES  |     | NULL    | Contains the Phone number information of the faculty.                                 |
| ADDRESS      | varchar(50) | YES  |     | NULL    | Contains the address of the teaching faculty.                                         |
+--------------+-------------+------+-----+---------+---------------------------------------------------------------------------------------+
6 rows in set (0.00 sec)
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
mysql> SHOW COLUMNS FROM COURSE_DATA;
+-------------+-------------+------+-----+---------+-----------------------------------------------------------------------------------------------+
| Field       | Type        | Null | Key | Default | Extra                                                                                         |
+-------------+-------------+------+-----+---------+-----------------------------------------------------------------------------------------------+
| COURSE_ID   | varchar(30) | NO   | PRI | NULL    | Contains the course ID used as primary key here and foreign key in others.                    |
| COURSE_NAME | varchar(70) | NO   |     | NULL    | Contains the course name to be taught.                                                        |
| TEACHER_ID  | varchar(20) | NO   | MUL | NULL    | Contains the Teacher ID of the faculty teaching, used as foreign key from table TEACHER_DATA  |
+-------------+-------------+------+-----+---------+-----------------------------------------------------------------------------------------------+
3 rows in set (0.00 sec)

                       
mysql> SHOW COLUMNS FROM STUDENT_ENROLLMENT;
+--------------------+-------------+------+-----+---------+----------------------------------------------------------------------------------------+
| Field              | Type        | Null | Key | Default | Extra                                                                                  |
+--------------------+-------------+------+-----+---------+----------------------------------------------------------------------------------------+
| CURRENT_ATTENDANCE | int(255)    | NO   |     | 0       | Contains the current attendance value of the student. Initialised default to be 0      |
| RECORD_ID          | varchar(30) | NO   | PRI | NULL    | Contains the record ID for each record of student enrollment added used as Primary key |
| STUDENT_ID         | varchar(20) | NO   | MUL | NULL    | Contains the student ID of the enrolled as Foreign key from table STUDENT_DATA.        |
| COURSE_ID          | varchar(30) | NO   | MUL | NULL    | Contains the course ID enrolled for as foreign key from table COURSE_DATA.             |
| TEACHER_ID         | varchar(20) | NO   | MUL | NULL    | Contains the teacher  ID for the course taught as foreign key from table TEACHER_DATA. |
| LAST_UPDATED_ATTD  | date        | YES  |     | NULL    | Contains the date when the record for the student was last updated in the database     |
+--------------------+-------------+------+-----+---------+----------------------------------------------------------------------------------------+
6 rows in set (0.00 sec)
                                                                                
                                                                                
                                                                                
mysql> SHOW COLUMNS FROM ATTENDANCE_RECORDS;
+------------+-------------+------+-----+---------+------------------------------------------------------------------------------+
| Field      | Type        | Null | Key | Default | Extra                                                                        |
+------------+-------------+------+-----+---------+------------------------------------------------------------------------------+
| REC_NO     | int(11)     | YES  | MUL | NULL    | Used to store the record numbers, made primary and auto-incremented.         |
| STUDENT_ID | varchar(20) | NO   | PRI | NULL    | Used to contain the student Id. made with unique constraint.                 |
| COURSE_ID  | varchar(30) | NO   | PRI | NULL    | Used to contain the Course ID, made with unique constraint.                  |
| DATE       | date        | NO   | PRI | NULL    | Used to contain the Date for the record, made with unique constraint.        |
| STATUS     | varchar(10) | NO   | PRI | NULL    | Used to contain the status of attendance, made with unique constraint.       |
+------------+-------------+------+-----+---------+------------------------------------------------------------------------------+
4 rows in set (0.00 sec)
                            
                                                                                
                                                                                
                                                                                

