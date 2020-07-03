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

mysql> SHOW COLUMNS FROM  STUDENT_DATA;
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

mysql> SHOW COLUMNS FROM TEACHER_DATA;
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

mysql> SHOW COLUMNS FROM COURSE_DATA;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| COURSE_ID   | varchar(30) | NO   | PRI | NULL    |       |
| COURSE_NAME | varchar(70) | NO   |     | NULL    |       |
| TEACHER_ID  | varchar(20) | NO   | MUL | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> SHOW COLUMNS FROM STUDENT_ENROLLMENT;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| CURRENT_ATTENDANCE | int(255)    | NO   |     | 0       |       |
| RECORD_ID          | varchar(30) | NO   | PRI | NULL    |       |
| STUDENT_ID         | varchar(20) | NO   | MUL | NULL    |       |
| COURSE_ID          | varchar(30) | NO   | MUL | NULL    |       |
| TEACHER_ID         | varchar(20) | NO   | MUL | NULL    |       |
| LAST_UPDATED_ATTD  | date        | YES  |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> SHOW COLUMNS FROM ATTENDANCE_RECORDS;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| STUDENT_ID | varchar(20) | NO   | PRI | NULL    |       |
| COURSE_ID  | varchar(30) | NO   | PRI | NULL    |       |
| DATE       | date        | NO   | PRI | NULL    |       |
| STATUS     | varchar(10) | NO   | PRI | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> 
