mysql> select * from STUDENT_ENROLLMENT;
+--------------------+-----------+------------+-----------+------------+-------------------+
| CURRENT_ATTENDANCE | RECORD_ID | STUDENT_ID | COURSE_ID | TEACHER_ID | LAST_UPDATED_ATTD |
+--------------------+-----------+------------+-----------+------------+-------------------+
|                  2 | INIT101   | B118043    | C101      | T01016     | 2020-07-02        |
|                  0 | INIT102   | B218005    | C106      | T21016     | NULL              |
|                  0 | INIT103   | B218011    | C107      | T21018     | NULL              |
|                  0 | INIT104   | B318092    | C103      | T11018     | NULL              |
|                  0 | INIT105   | B318095    | C104      | T115019    | NULL              |
|                  0 | INIT106   | B418023    | C102      | T16080     | NULL              |
|                  0 | INIT107   | B418048    | C108      | T91016     | NULL              |
|                  0 | INIT108   | B518005    | C110      | T91816     | NULL              |
|                  0 | INIT109   | B518020    | C109      | T91019     | NULL              |
|                  0 | INIT110   | B518041    | C101      | T01016     | NULL              |
|                  0 | INIT111   | B518054    | C102      | T16080     | NULL              |
+--------------------+-----------+------------+-----------+------------+-------------------+
11 rows in set (0.00 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B218005","C106","2020-07-02","P");
Query OK, 1 row affected (0.17 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B218005mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B218005 INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B21800^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C^[[C
5","C106","2020-07-02","P
^C
mysql> ^C

^C
mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B218011","C107","2020-07-01","P");
Query OK, 1 row affected (0.14 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B318092","C103","2020-07-03","P");
Query OK, 1 row affected (0.16 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B318095","C104","2020-07-02","P");
Query OK, 1 row affected (0.13 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B418048","C108","2020-07-01","P");
Query OK, 1 row affected (0.47 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B518005","C110","2020-07-02","P");
Query OK, 1 row affected (0.13 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B518020","C109","2020-07-02","P");
Query OK, 1 row affected (0.15 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B518041","C101","2020-07-03","P");
Query OK, 1 row affected (0.03 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B518054","C102","2020-07-02","P");
Query OK, 1 row affected (1.00 sec)

mysql> select * from STUDENT_ENROLLMENT;
+--------------------+-----------+------------+-----------+------------+-------------------+
| CURRENT_ATTENDANCE | RECORD_ID | STUDENT_ID | COURSE_ID | TEACHER_ID | LAST_UPDATED_ATTD |
+--------------------+-----------+------------+-----------+------------+-------------------+
|                 11 | INIT101   | B118043    | C101      | T01016     | 2020-07-02        |
|                  9 | INIT102   | B218005    | C106      | T21016     | 2020-07-02        |
|                  8 | INIT103   | B218011    | C107      | T21018     | 2020-07-02        |
|                  7 | INIT104   | B318092    | C103      | T11018     | 2020-07-02        |
|                  6 | INIT105   | B318095    | C104      | T115019    | 2020-07-02        |
|                  0 | INIT106   | B418023    | C102      | T16080     | NULL              |
|                  5 | INIT107   | B418048    | C108      | T91016     | 2020-07-02        |
|                  4 | INIT108   | B518005    | C110      | T91816     | 2020-07-02        |
|                  3 | INIT109   | B518020    | C109      | T91019     | 2020-07-02        |
|                  2 | INIT110   | B518041    | C101      | T01016     | 2020-07-02        |
|                  1 | INIT111   | B518054    | C102      | T16080     | 2020-07-02        |
+--------------------+-----------+------------+-----------+------------+-------------------+
11 rows in set (0.00 sec)

mysql> 
