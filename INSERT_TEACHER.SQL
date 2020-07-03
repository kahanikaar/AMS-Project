mysql> SELECT * FROM TEACHER_DATA;
Empty set (0.00 sec)

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

mysql> INSERT INTO TEACHER_DATA (NAME, TEACHER_ID,DEPARTMENT,JOINING_DATE,PHONE,ADDRESS) VALUES(
    -> "HC VERMA","T17091","CSE","2016-07-19",896536956,"G/7, DELHI");
Query OK, 1 row affected (0.11 sec)

mysql> INSERT INTO TEACHER_DATA (NAME, TEACHER_ID,DEPARTMENT,JOINING_DATE,PHONE,ADDRESS) VALUES( "RS AGARWAL","T16080","CSE","2016-08-20",8963412765,"G/7, RAIPUR");
Query OK, 1 row affected (0.11 sec)

mysql> INSERT INTO TEACHER_DATA (NAME, TEACHER_ID,DEPARTMENT,JOINING_DATE,PHONE,ADDRESS) VALUES( "SUMITA RAY","T115019","EEE","2016-08-21",8963562765,"H/P/7, KOLKATA");
Query OK, 1 row affected (0.39 sec)

mysql> INSERT INTO TEACHER_DATA (NAME, TEACHER_ID,DEPARTMENT,JOINING_DATE,PHONE,ADDRESS) VALUES( "MP ROY","T91019","EEE","2016-05-21",8122562765,"P/7, ROURKELA");
Query OK, 1 row affected (0.13 sec)

mysql> INSERT INTO TEACHER_DATA (NAME, TEACHER_ID,DEPARTMENT,JOINING_DATE,PHONE,ADDRESS) VALUES( "ANIL SEN","T11018","EEE","2018-05-21",8122561225,"P/7/L, CHENNAI");
Query OK, 1 row affected (0.71 sec)

mysql> INSERT INTO TEACHER_DATA (NAME, TEACHER_ID,DEPARTMENT,JOINING_DATE,PHONE,ADDRESS) VALUES( "G TEWANI","T11018","ETC","2019-05-21",9122561225,"7/L, LUCKNOW");
ERROR 1062 (23000): Duplicate entry 'T11018' for key 'PRIMARY'
mysql> INSERT INTO TEACHER_DATA (NAME, TEACHER_ID,DEPARTMENT,JOINING_DATE,PHONE,ADDRESS) VALUES( "G TEWANI","T21018","ETC","2019-05-21",9122561225,"7/L, LUCKNOW");
Query OK, 1 row affected (0.16 sec)

mysql> INSERT INTO TEACHER_DATA (NAME, TEACHER_ID,DEPARTMENT,JOINING_DATE,PHONE,ADDRESS) VALUES( "BM SHARMA","T21016","ETC","2012-05-21",6132561225,"H/5, SURAT");
Query OK, 1 row affected (0.13 sec)

mysql> INSERT INTO TEACHER_DATA (NAME, TEACHER_ID,DEPARTMENT,JOINING_DATE,PHONE,ADDRESS) VALUES( "OP TANDON","T01016","IT","2012-05-21",896561225,"H/5, MUMBAI");
Query OK, 1 row affected (0.34 sec)

mysql> INSERT INTO TEACHER_DATA (NAME, TEACHER_ID,DEPARTMENT,JOINING_DATE,PHONE,ADDRESS) VALUES( "AS SINGH","T91016","IT","2018-05-19",8965656925,"L/M/5, MUMBAI");
Query OK, 1 row affected (0.15 sec)

mysql> SELECT * FROM TEACHER_DATA;
+------------+------------+------------+--------------+------------+----------------+
| NAME       | TEACHER_ID | DEPARTMENT | JOINING_DATE | PHONE      | ADDRESS        |
+------------+------------+------------+--------------+------------+----------------+
| OP TANDON  | T01016     | IT         | 2012-05-21   | 896561225  | H/5, MUMBAI    |
| ANIL SEN   | T11018     | EEE        | 2018-05-21   | 8122561225 | P/7/L, CHENNAI |
| SUMITA RAY | T115019    | EEE        | 2016-08-21   | 8963562765 | H/P/7, KOLKATA |
| RS AGARWAL | T16080     | CSE        | 2016-08-20   | 8963412765 | G/7, RAIPUR    |
| HC VERMA   | T17091     | CSE        | 2016-07-19   | 896536956  | G/7, DELHI     |
| BM SHARMA  | T21016     | ETC        | 2012-05-21   | 6132561225 | H/5, SURAT     |
| G TEWANI   | T21018     | ETC        | 2019-05-21   | 9122561225 | 7/L, LUCKNOW   |
| AS SINGH   | T91016     | IT         | 2018-05-19   | 8965656925 | L/M/5, MUMBAI  |
| MP ROY     | T91019     | EEE        | 2016-05-21   | 8122562765 | P/7, ROURKELA  |
+------------+------------+------------+--------------+------------+----------------+
9 rows in set (0.00 sec)

mysql> INSERT INTO TEACHER_DATA (NAME, TEACHER_ID,DEPARTMENT,JOINING_DATE,PHONE,ADDRESS) 
       -> VALUES( "RD SHARMA","T91816","CSE","2018-05-20",6965656925,"M/5, PUNE");
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM TEACHER_DATA;                                                                                     
+------------+------------+------------+--------------+------------+----------------+
| NAME       | TEACHER_ID | DEPARTMENT | JOINING_DATE | PHONE      | ADDRESS        |
+------------+------------+------------+--------------+------------+----------------+
| OP TANDON  | T01016     | IT         | 2012-05-21   | 896561225  | H/5, MUMBAI    |
| ANIL SEN   | T11018     | EEE        | 2018-05-21   | 8122561225 | P/7/L, CHENNAI |
| SUMITA RAY | T115019    | EEE        | 2016-08-21   | 8963562765 | H/P/7, KOLKATA |
| RS AGARWAL | T16080     | CSE        | 2016-08-20   | 8963412765 | G/7, RAIPUR    |
| HC VERMA   | T17091     | CSE        | 2016-07-19   | 896536956  | G/7, DELHI     |
| BM SHARMA  | T21016     | ETC        | 2012-05-21   | 6132561225 | H/5, SURAT     |
| G TEWANI   | T21018     | ETC        | 2019-05-21   | 9122561225 | 7/L, LUCKNOW   |
| AS SINGH   | T91016     | IT         | 2018-05-19   | 8965656925 | L/M/5, MUMBAI  |
| MP ROY     | T91019     | EEE        | 2016-05-21   | 8122562765 | P/7, ROURKELA  |
| RD SHARMA  | T91816     | CSE        | 2018-05-20   | 6965656925 | M/5, PUNE      |
+------------+------------+------------+--------------+------------+----------------+
10 rows in set (0.00 sec)

mysql> 
