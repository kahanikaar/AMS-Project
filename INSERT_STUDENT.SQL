(base) computerist@kahanikaar:~$ sudo mysql
[sudo] password for computerist: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 5
Server version: 5.7.29-0ubuntu0.18.04.1 (Ubuntu)

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> 
mysql> show databases;
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

mysql> use ATTD_MGMT_SYS;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> 









mysql> show tables;
+-------------------------+
| Tables_in_ATTD_MGMT_SYS |
+-------------------------+
| ATTENDANCE_TABLE        |
+-------------------------+
1 row in set (0.00 sec)

mysql> show  databasesl
    -> ^C

^C
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

mysql> use ATTENDANCE_MGMT;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> 
mysql> show tables;
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

mysql> select * from STUDENT_ID;
ERROR 1146 (42S02): Table 'ATTENDANCE_MGMT.STUDENT_ID' doesn't exist
mysql> select * from STUDENT_DATA;
+-------------------+------------+---------+--------------+------------------------------+------------+------------------+
| NAME              | STUDENT_ID | PROGRAM | JOINING_DATE | BRANCH                       | PHONE      | ADDRESS          |
+-------------------+------------+---------+--------------+------------------------------+------------+------------------+
| ADITYA BHARDWAJ   | B518005    | B.TECH  | 2018-07-02   | COMPUTER SCIENCE ENGINEERING | 7711882299 | KL/23, HYDERABAD |
| DEBRUP DUTTA      | B518020    | B.TECH  | 2018-07-02   | COMPUTER ENGINEERING         | 8192829911 | JJ/53, ROURKELA  |
| SANJIBAN SENGUPTA | B518041    | B.TECH  | 2018-05-05   | COMPUTER ENGINEERING         | 7482938273 | HJ/1, ROURKELA   |
| SUBHAM SHARMA     | B518054    | B.TECH  | 2018-05-05   | COMPUTER ENGINEERING         | 7482338273 | RJ/88, KOLKATA   |
+-------------------+------------+---------+--------------+------------------------------+------------+------------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) VALUES(
    -> AJAY KUMAR,B318092,B.TECH,2018-06-03,"ELECTRICAL ENGINEERING",694656326,"7/P, DELHI");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'KUMAR,B318092,B.TECH,2018-06-03,"ELECTRICAL ENGINEERING",694656326,"7/P, DELHI")' at line 2
mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) VALUES("AJAY KUMAR",B318092,B.TECH,2018-06-03,"ELECTRICAL ENGINEERING",694656326,"7/P, DELHI");
ERROR 1054 (42S22): Unknown column 'B318092' in 'field list'
mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) VALUES("AJAY KUMAR","B318092",B.TECH,2018-06-03,"ELECTRICAL ENGINEERING",694656326,"7/P, DELHI");
ERROR 1054 (42S22): Unknown column 'B.TECH' in 'field list'
mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) VALUES("AJAY KUMAR","B318092","B.TECH",2018-06-03,"ELECTRICAL ENGINEERING",694656326,"7/P, DELHI");
ERROR 1292 (22007): Incorrect date value: '2009' for column 'JOINING_DATE' at row 1
mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) VALUES("AJAY KUMAR","B318092","B.TECH",'2018-06-03',"ELECTRICAL ENGINEERING",694656326,"7/P, DELHI");
Query OK, 1 row affected (0.57 sec)

mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) VALUES("RAM SAHU","B318095","B.TECH",'2018-07-03',"ELECTRICAL ENGINEERING",694653426,"9/R,RANCHI");
Query OK, 1 row affected (0.16 sec)

mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) VALUES("BALA RAY","B218005","B.TECH",'2018-07-05',"ELECTRONICS ENGINEERING",789653426,"9/5/M,KOLKATA");
Query OK, 1 row affected (0.21 sec)

mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) VALUES("SUMAN SAHU","B118043","B.TECH",'2018-04-05',"COMPUTER SCIENCE ENGINEERING",896653426,"5/M, LUCKNOW");
Query OK, 1 row affected (0.14 sec)

mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) VALUES("PRIYA RAY","B418048","B.TECH",'2018-05-05',"INFORMATION TECHNOLOGY",996653426,"M/6/8, LUCKNO");
Query OK, 1 row affected (0.12 sec)

mysql> 
mysql> SELECT * FROM STUDENT_DATA;
+-------------------+------------+---------+--------------+------------------------------+------------+------------------+
| NAME              | STUDENT_ID | PROGRAM | JOINING_DATE | BRANCH                       | PHONE      | ADDRESS          |
+-------------------+------------+---------+--------------+------------------------------+------------+------------------+
| SUMAN SAHU        | B118043    | B.TECH  | 2018-04-05   | COMPUTER SCIENCE ENGINEERING | 896653426  | 5/M, LUCKNOW     |
| BALA RAY          | B218005    | B.TECH  | 2018-07-05   | ELECTRONICS ENGINEERING      | 789653426  | 9/5/M,KOLKATA    |
| AJAY KUMAR        | B318092    | B.TECH  | 2018-06-03   | ELECTRICAL ENGINEERING       | 694656326  | 7/P, DELHI       |
| RAM SAHU          | B318095    | B.TECH  | 2018-07-03   | ELECTRICAL ENGINEERING       | 694653426  | 9/R,RANCHI       |
| PRIYA RAY         | B418048    | B.TECH  | 2018-05-05   | INFORMATION TECHNOLOGY       | 996653426  | M/6/8, LUCKNO    |
| ADITYA BHARDWAJ   | B518005    | B.TECH  | 2018-07-02   | COMPUTER SCIENCE ENGINEERING | 7711882299 | KL/23, HYDERABAD |
| DEBRUP DUTTA      | B518020    | B.TECH  | 2018-07-02   | COMPUTER ENGINEERING         | 8192829911 | JJ/53, ROURKELA  |
| SANJIBAN SENGUPTA | B518041    | B.TECH  | 2018-05-05   | COMPUTER ENGINEERING         | 7482938273 | HJ/1, ROURKELA   |
| SUBHAM SHARMA     | B518054    | B.TECH  | 2018-05-05   | COMPUTER ENGINEERING         | 7482338273 | RJ/88, KOLKATA   |
+-------------------+------------+---------+--------------+------------------------------+------------+------------------+
9 rows in set (0.00 sec)

mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) VALUES("KUMAR VARMA","B418023","B.TECH",'2018-05-10',"INFORMATION TECHNOLOGY",996653426,6/8/L, BHUBANESWAR");
    "> ;
    "> ^C

^C
mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) VALUES("KUMAR VARMA","B418023","B.TECH",'2018-05-10',"INFORMATION TECHNOLOGY",996653426,"6/8/L, BHUBANESWAR");
Query OK, 1 row affected (0.11 sec)

mysql> SELECT * FROM STUDENT_DATA;
+-------------------+------------+---------+--------------+------------------------------+------------+--------------------+
| NAME              | STUDENT_ID | PROGRAM | JOINING_DATE | BRANCH                       | PHONE      | ADDRESS            |
+-------------------+------------+---------+--------------+------------------------------+------------+--------------------+
| SUMAN SAHU        | B118043    | B.TECH  | 2018-04-05   | COMPUTER SCIENCE ENGINEERING | 896653426  | 5/M, LUCKNOW       |
| BALA RAY          | B218005    | B.TECH  | 2018-07-05   | ELECTRONICS ENGINEERING      | 789653426  | 9/5/M,KOLKATA      |
| AJAY KUMAR        | B318092    | B.TECH  | 2018-06-03   | ELECTRICAL ENGINEERING       | 694656326  | 7/P, DELHI         |
| RAM SAHU          | B318095    | B.TECH  | 2018-07-03   | ELECTRICAL ENGINEERING       | 694653426  | 9/R,RANCHI         |
| KUMAR VARMA       | B418023    | B.TECH  | 2018-05-10   | INFORMATION TECHNOLOGY       | 996653426  | 6/8/L, BHUBANESWAR |
| PRIYA RAY         | B418048    | B.TECH  | 2018-05-05   | INFORMATION TECHNOLOGY       | 996653426  | M/6/8, LUCKNO      |
| ADITYA BHARDWAJ   | B518005    | B.TECH  | 2018-07-02   | COMPUTER SCIENCE ENGINEERING | 7711882299 | KL/23, HYDERABAD   |
| DEBRUP DUTTA      | B518020    | B.TECH  | 2018-07-02   | COMPUTER ENGINEERING         | 8192829911 | JJ/53, ROURKELA    |
| SANJIBAN SENGUPTA | B518041    | B.TECH  | 2018-05-05   | COMPUTER ENGINEERING         | 7482938273 | HJ/1, ROURKELA     |
| SUBHAM SHARMA     | B518054    | B.TECH  | 2018-05-05   | COMPUTER ENGINEERING         | 7482338273 | RJ/88, KOLKATA     |
+-------------------+------------+---------+--------------+------------------------------+------------+--------------------+
10 rows in set (0.00 sec)

mysql> INSERT INTO STUDENT_DATA (NAME,STUDENT_ID,PROGRAM,JOINING_DATE,BRANCH,PHONE,ADDRESS) 
      ->VALUES("RASHMI BAJAJ","B218011","B.TECH",'2018-07-10',"ELECTRONICS ENGINEERING",996658976,"L/K/5, CHENNAI");
Query OK, 1 row affected (0.14 sec)

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

mysql> 
