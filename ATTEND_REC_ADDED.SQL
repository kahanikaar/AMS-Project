mysql> select * from STUDENT_ENROLLMENT;
+--------------------+-----------+------------+-----------+------------+-------------------+
| CURRENT_ATTENDANCE | RECORD_ID | STUDENT_ID | COURSE_ID | TEACHER_ID | LAST_UPDATED_ATTD |
+--------------------+-----------+------------+-----------+------------+-------------------+
|                 13 | INIT101   | B118043    | C101      | T01016     | 2020-07-02        |
|                 11 | INIT102   | B218005    | C106      | T21016     | 2020-07-02        |
|                 10 | INIT103   | B218011    | C107      | T21018     | 2020-07-02        |
|                  9 | INIT104   | B318092    | C103      | T11018     | 2020-07-02        |
|                  8 | INIT105   | B318095    | C104      | T115019    | 2020-07-02        |
|                  0 | INIT106   | B418023    | C102      | T16080     | NULL              |
|                  7 | INIT107   | B418048    | C108      | T91016     | 2020-07-02        |
|                  6 | INIT108   | B518005    | C110      | T91816     | 2020-07-02        |
|                  5 | INIT109   | B518020    | C109      | T91019     | 2020-07-02        |
|                  5 | INIT110   | B518041    | C101      | T01016     | 2020-07-02        |
|                  3 | INIT111   | B518054    | C102      | T16080     | 2020-07-02        |
+--------------------+-----------+------------+-----------+------------+-------------------+
11 rows in set (0.00 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B218005","C106","2020-06-30","P")
    -> ;
Query OK, 1 row affected (0.20 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B218011","C107","2020-06-30","P");
Query OK, 1 row affected (0.16 sec)

mysql>  INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B318092","C103","2020-07-30","P");
Query OK, 1 row affected (0.12 sec)

mysql> INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B418048","C108","2020-06-30","P");
Query OK, 1 row affected (0.17 sec)

mysql> INSERT INTO ATTENDANCE_RECORDS (STUDENT_ID,COURSE_ID,DATE,STATUS) VALUES ("B418023","C102","2020-06-30","P");
Query OK, 1 row affected (0.32 sec)

mysql> select * from STUDENT_ENROLLMENT;
+--------------------+-----------+------------+-----------+------------+-------------------+
| CURRENT_ATTENDANCE | RECORD_ID | STUDENT_ID | COURSE_ID | TEACHER_ID | LAST_UPDATED_ATTD |
+--------------------+-----------+------------+-----------+------------+-------------------+
|                 13 | INIT101   | B118043    | C101      | T01016     | 2020-07-02        |
|                 12 | INIT102   | B218005    | C106      | T21016     | 2020-07-02        |
|                 11 | INIT103   | B218011    | C107      | T21018     | 2020-07-02        |
|                 10 | INIT104   | B318092    | C103      | T11018     | 2020-07-02        |
|                  8 | INIT105   | B318095    | C104      | T115019    | 2020-07-02        |
|                  1 | INIT106   | B418023    | C102      | T16080     | 2020-07-02        |
|                  8 | INIT107   | B418048    | C108      | T91016     | 2020-07-02        |
|                  6 | INIT108   | B518005    | C110      | T91816     | 2020-07-02        |
|                  5 | INIT109   | B518020    | C109      | T91019     | 2020-07-02        |
|                  5 | INIT110   | B518041    | C101      | T01016     | 2020-07-02        |
|                  3 | INIT111   | B518054    | C102      | T16080     | 2020-07-02        |
+--------------------+-----------+------------+-----------+------------+-------------------+
11 rows in set (0.00 sec)

mysql> 
