select * from STUDENT_ENROLLMENT;
+--------------------+-----------+------------+-----------+------------+-------------------+
| CURRENT_ATTENDANCE | RECORD_ID | STUDENT_ID | COURSE_ID | TEACHER_ID | LAST_UPDATED_ATTD |
+--------------------+-----------+------------+-----------+------------+-------------------+
|                  0 | INIT01    | B118043    | C101      | T01016     | NULL              |
+--------------------+-----------+------------+-----------+------------+-------------------+
1 row in set (0.00 sec)

mysql> SHOW COLUMNS FROM ATTENDANCE_RECORDS;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| STUDENT_ID | varchar(20) | NO   | MUL | NULL    |       |
| COURSE_ID  | varchar(30) | NO   | MUL | NULL    |       |
| DATE       | date        | NO   |     | NULL    |       |
| STATUS     | varchar(10) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>DELIMITER $

mysql> CREATE TRIGGER UPD_CURR_ATTD AFTER INSERT ON ATTENDANCE_RECORDS FOR EACH ROW BEGIN  UPDATE STUDENT_ENROLLMENT,ATTENDANCE_RECORDS  SET STUDENT_ENROLLMENT.CURRENT_ATTENDANCE=STUDENT_ENROLLMENT.CURRENT_ATTENDANCE+1 WHERE STUDENT_ENROLLMENT.STUDENT_ID=NEW.STUDENT_ID AND NEW.STATUS="P";  UPDATE STUDENT_ENROLLMENT,ATTENDANCE_RECORDS SET STUDENT_ENROLLMENT.LAST_UPDATED_ATTD=NOW() WHERE STUDENT_ENROLLMENT.STUDENT_ID=NEW.STUDENT_ID AND NEW.STATUS="P"; END$
Query OK, 0 rows affected (0.16 sec)


mysql> DELIMITER ;
mysql> INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B118043","C101","2020-07-02","P");   Query OK, 1 row affected (0.18 sec)

mysql> SELECT * FROM STUDENT_ENROLLMENT;
+--------------------+-----------+------------+-----------+------------+-------------------+
| CURRENT_ATTENDANCE | RECORD_ID | STUDENT_ID | COURSE_ID | TEACHER_ID | LAST_UPDATED_ATTD |
+--------------------+-----------+------------+-----------+------------+-------------------+
|                  1 | INIT01    | B118043    | C101      | T01016     | NULL              |
+--------------------+-----------+------------+-----------+------------+-------------------+
1 row in set (0.00 sec)

mysql> INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B118043","C101","2020-07-05","P");   Query OK, 1 row affected (0.17 sec)

mysql> SELECT * FROM STUDENT_ENROLLMENT;
+--------------------+-----------+------------+-----------+------------+-------------------+
| CURRENT_ATTENDANCE | RECORD_ID | STUDENT_ID | COURSE_ID | TEACHER_ID | LAST_UPDATED_ATTD |
+--------------------+-----------+------------+-----------+------------+-------------------+
|                  2 | INIT01    | B118043    | C101      | T01016     | 2020-07-02        |
+--------------------+-----------+------------+-----------+------------+-------------------+
1 row in set (0.00 sec)

mysql> 
