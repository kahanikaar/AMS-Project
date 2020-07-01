mysql> select * from STUDENT_ENROLLMENT;
+--------------------+-----------+------------+-----------+------------+-------------------+
| CURRENT_ATTENDANCE | RECORD_ID | STUDENT_ID | COURSE_ID | TEACHER_ID | LAST_UPDATED_ATTD |
+--------------------+-----------+------------+-----------+------------+-------------------+
|                  2 | INIT01    | B118043    | C101      | T01016     | 2020-07-02        |
+--------------------+-----------+------------+-----------+------------+-------------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM STUDENT_DATA;
+-------------------+------------+---------+--------------+------------------------------+------------+--------------------+
| NAME              | STUDENT_ID | PROGRAM | JOINING_DATE | BRANCH                       | PHONE      | ADDRESS            |
+-------------------+------------+---------+--------------+------------------------------+------------+--------------------+
| SUMAN SAHU        | B118043    | B.TECH  | 2018-04-05   | COMPUTER SCIENCE ENGINEERING | 896653426  | 5/M, LUCKNOW       |
| BALA RAY          | B218005    | B.TECH  | 2018-07-05   | ELECTRONICS ENGINEERING      | 789653426  | 9/5/M,KOLKATA      |
| RASHMI BAJAJ      | B218011    | B.TECH  | 2018-07-10   | ELECTRONICS ENGINEERING      | 996658976  | L/K/5, CHENNAI     |
| AJAY KUMAR        | B318092    | B.TECH  | 2018-06-03   | ELECTRICAL ENGINEERING       | 694656326  | 7/P, DELHI         |
| RAM SAHU          | B318095    | B.TECH  | 2018-07-03   | ELECTRICAL ENGINEERING       | 694653426  | 9/R,RANCHI         |
| KUMAR VARMA       | B418023    | B.TECH  | 2018-05-10   | INFORMATION TECHNOLOGY       | 996653426  | 6/8/L, BHUBANESWAR |
| PRIYA RAY         | B418048    | B.TECH  | 2018-05-05   | INFORMATION TECHNOLOGY       | 996653426  | M/6/8, LUCKNO      |
| ADITYA BHARDWAJ   | B518005    | B.TECH  | 2018-07-02   | COMPUTER SCIENCE ENGINEERING | 7711882299 | KL/23, HYDERABAD   |
| DEBRUP DUTTA      | B518020    | B.TECH  | 2018-07-02   | COMPUTER ENGINEERING         | 8192829911 | JJ/53, ROURKELA    |
| SANJIBAN SENGUPTA | B518041    | B.TECH  | 2018-05-05   | COMPUTER ENGINEERING         | 7482938273 | HJ/1, ROURKELA     |
| SUBHAM SHARMA     | B518054    | B.TECH  | 2018-05-05   | COMPUTER ENGINEERING         | 7482338273 | RJ/88, KOLKATA     |
+-------------------+------------+---------+--------------+------------------------------+------------+--------------------+
11 rows in set (0.00 sec)

mysql> SELECT * FROM COURSE_DATA;
+-----------+---------------------------+------------+
| COURSE_ID | COURSE_NAME               | TEACHER_ID |
+-----------+---------------------------+------------+
| C101      | C PROG                    | T01016     |
| C102      | RDBMS                     | T16080     |
| C103      | BASIC ELECTRICALS         | T11018     |
| C104      | ENERGY CONVERSION DEVICES | T115019    |
| C105      | NETWORKING                | T17091     |
| C106      | BASIC ELECTRONICS         | T21016     |
| C107      | DIGITAL ELEC              | T21018     |
| C108      | SYS ADMIN                 | T91016     |
| C109      | POWER SYS                 | T91019     |
| C110      | ROBOTICS                  | T91816     |
+-----------+---------------------------+------------+
10 rows in set (0.00 sec)

mysql> INSERT INTO STUDENT_ENROLLMENT (RECORD_ID,STUDENT_ID,COURSE_ID,TEACHER_ID)
    -> VALUES("INIT102","B218005","C106","T21016");
Query OK, 1 row affected (0.40 sec)

mysql> INSERT INTO STUDENT_ENROLLMENT (RECORD_ID,STUDENT_ID,COURSE_ID,TEACHER_ID) VALUES("INIT103","B218011","C107","T21018");
Query OK, 1 row affected (0.31 sec)

mysql> INSERT INTO STUDENT_ENROLLMENT (RECORD_ID,STUDENT_ID,COURSE_ID,TEACHER_ID) VALUES("INIT104","B318092","C103","T11018");
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO STUDENT_ENROLLMENT (RECORD_ID,STUDENT_ID,COURSE_ID,TEACHER_ID) VALUES("INIT105","B318095","C104","T115019");
Query OK, 1 row affected (0.50 sec)

mysql> INSERT INTO STUDENT_ENROLLMENT (RECORD_ID,STUDENT_ID,COURSE_ID,TEACHER_ID) VALUES("INIT106","B418023","C102","T16080");
Query OK, 1 row affected (0.07 sec)

mysql> INSERT INTO STUDENT_ENROLLMENT (RECORD_ID,STUDENT_ID,COURSE_ID,TEACHER_ID) VALUES("INIT107","B418048","C108","T91016");
Query OK, 1 row affected (0.12 sec)

mysql> INSERT INTO STUDENT_ENROLLMENT (RECORD_ID,STUDENT_ID,COURSE_ID,TEACHER_ID) VALUES("INIT108","B518005","C110","T91816");
Query OK, 1 row affected (0.93 sec)

mysql> INSERT INTO STUDENT_ENROLLMENT (RECORD_ID,STUDENT_ID,COURSE_ID,TEACHER_ID) VALUES("INIT109","B518020","C109","T91019");
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO STUDENT_ENROLLMENT (RECORD_ID,STUDENT_ID,COURSE_ID,TEACHER_ID) VALUES("INIT110","B518041","C101","T01016");
Query OK, 1 row affected (0.13 sec)

mysql> INSERT INTO STUDENT_ENROLLMENT (RECORD_ID,STUDENT_ID,COURSE_ID,TEACHER_ID) VALUES("INIT111","B518054","C102","T16080");
Query OK, 1 row affected (0.14 sec)

mysql> SELECT * FROM STUDENT_ENROLLLEMT;
ERROR 1146 (42S02): Table 'ATTENDANCE_MGMT.STUDENT_ENROLLLEMT' doesn't exist
mysql> SELECT * FROM STUDENT_ENROLLLMENT;
ERROR 1146 (42S02): Table 'ATTENDANCE_MGMT.STUDENT_ENROLLLMENT' doesn't exist
mysql> SELECT * FROM STUDENT_ENROLLMENT;
+--------------------+-----------+------------+-----------+------------+-------------------+
| CURRENT_ATTENDANCE | RECORD_ID | STUDENT_ID | COURSE_ID | TEACHER_ID | LAST_UPDATED_ATTD |
+--------------------+-----------+------------+-----------+------------+-------------------+
|                  2 | INIT01    | B118043    | C101      | T01016     | 2020-07-02        |
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

mysql> UPDATE STUDENT_ENROLLMENT
    -> SET
    -> RECORD_ID='INIT101'
    -> WHERE RECORD_ID='INIT01';
Query OK, 1 row affected (0.13 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM STUDENT_ENROLLMENT;
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

mysql> 
