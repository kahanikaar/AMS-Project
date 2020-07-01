mysql> ALTER TABLE STUDENT_ENROLLMENT
    -> ADD LAST_UPDATED_ATTD DATE;
Query OK, 0 rows affected (0.71 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SHOW COLUMNS FROM STUDENT_ENROLLMENT;               +--------------------+-------------+------+-----+---------+-------+
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

mysql> 
