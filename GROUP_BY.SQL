mysql> SELECT DEPARTMENT, COUNT(*) FROM TEACHER_DATA GROUP BY DEPARTMENT;
+------------+----------+
| DEPARTMENT | COUNT(*) |
+------------+----------+
| CSE        |        3 |
| EEE        |        3 |
| ETC        |        2 |
| IT         |        2 |
+------------+----------+
4 rows in set (0.00 sec)

mysql> 


mysql> SELECT BRANCH, COUNT(*) FROM STUDENT_DATA GROUP BY BRANCH ORDER BY COUNT(*) DESC;
+------------------------------+----------+
| BRANCH                       | COUNT(*) |
+------------------------------+----------+
| COMPUTER ENGINEERING         |        3 |
| ELECTRICAL ENGINEERING       |        2 |
| INFORMATION TECHNOLOGY       |        2 |
| COMPUTER SCIENCE ENGINEERING |        2 |
| ELECTRONICS ENGINEERING      |        2 |
+------------------------------+----------+
5 rows in set (0.00 sec)


mysql> SELECT COUNT(*),STUDENT_DATA.BRANCH 
    -> FROM STUDENT_ENROLLMENT,STUDENT_DATA
    -> WHERE STUDENT_ENROLLMENT.STUDENT_ID=STUDENT_DATA.STUDENT_ID
    -> AND  STUDENT_ENROLLMENT.CURRENT_ATTENDANCE>6
    -> GROUP BY STUDENT_DATA.BRANCH;
+----------+------------------------------+
| COUNT(*) | BRANCH                       |
+----------+------------------------------+
|        1 | COMPUTER SCIENCE ENGINEERING |
|        2 | ELECTRICAL ENGINEERING       |
|        2 | ELECTRONICS ENGINEERING      |
|        1 | INFORMATION TECHNOLOGY       |
+----------+------------------------------+
4 rows in set (0.00 sec)

