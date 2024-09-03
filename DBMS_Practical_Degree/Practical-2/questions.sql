1)
mysql> select * from EMPLOYEE;
+--------+----------+---------+----------+---------+
| emp_no | emp_name | emp_sal | emp_comm | dept_no |
+--------+----------+---------+----------+---------+
|    101 | Smith    |  800.00 |     NULL |      20 |
|    102 | Snehal   | 1600.00 |    300.0 |      25 |
|    103 | Adama    | 1100.00 |      0.0 |      20 |
|    104 | Aman     | 3000.00 |     NULL |      15 |
|    105 | Anita    | 5000.00 |  50000.0 |      10 |
|    106 | Sneha    | 2450.00 |  24500.0 |      10 |
|    107 | Anamika  | 2975.00 |     NULL |      30 |
+--------+----------+---------+----------+---------+
7 rows in set (0.00 sec)

mysql> select * from JOB;
+---------+-------------------+---------+----------+
| job_id  | job_title         | min_sal | max_sal  |
+---------+-------------------+---------+----------+
| IT_PROG | Programmer        | 4000.00 | 10000.00 |
| MK_MGR  | Marketing manager | 9000.00 | 15000.00 |
| FI_MGR  | Finance manager   | 8200.00 | 12000.00 |
| FI_ACC  | Account           | 4200.00 |  9000.00 |
| LEC     | Lecturer          | 6000.00 | 17000.00 |
| COMP_OP | Computer Operator | 1500.00 |  3000.00 |
+---------+-------------------+---------+----------+
6 rows in set (0.00 sec)

mysql> select * from DEPOSITE_PR_2;
+--------+--------+------------+---------+------------+
| act_no | c_name | b_name     | amount  | a_date     |
+--------+--------+------------+---------+------------+
| 101    | Anil   | andheri    | 7000.00 | 2006-01-01 |
| 102    | sunil  | virar      | 5000.00 | 2006-07-15 |
| 103    | jay    | villeparle | 6500.00 | 2006-03-12 |
| 104    | vijay  | andheri    | 8000.00 | 2006-09-17 |
| 105    | keyur  | dadar      | 7500.00 | 2006-11-19 |
| 106    | mayur  | borivali   | 5500.00 | 2006-12-21 |
+--------+--------+------------+---------+------------+
6 rows in set (0.00 sec)

2)
mysql> select act_no,amount from deposite_pr_2 where a_date between '2006-01-01' AND '2006-07-25';
+--------+---------+
| act_no | amount  |
+--------+---------+
| 101    | 7000.00 |
| 102    | 5000.00 |
| 103    | 6500.00 |
+--------+---------+
3 rows in set (0.00 sec)

3)
mysql> select * from JOB where min_sal > 4000;
+--------+-------------------+---------+----------+
| job_id | job_title         | min_sal | max_sal  |
+--------+-------------------+---------+----------+
| MK_MGR | Marketing manager | 9000.00 | 15000.00 |
| FI_MGR | Finance manager   | 8200.00 | 12000.00 |
| FI_ACC | Account           | 4200.00 |  9000.00 |
| LEC    | Lecturer          | 6000.00 | 17000.00 |
+--------+-------------------+---------+----------+
4 rows in set (0.00 sec)

4)
mysql> SELECT emp_name AS EmployeeName, emp_sal AS Salary
    -> FROM EMPLOYEE
    -> WHERE dept_no = 20;
+--------------+---------+
| EmployeeName | Salary  |
+--------------+---------+
| Smith        |  800.00 |
| Adama        | 1100.00 |
+--------------+---------+
2 rows in set (0.00 sec)

5)
mysql> select emp_no, emp_name, dept_no from EMPLOYEE WHERE DEPT_NO IN(10,20);
+--------+----------+---------+
| emp_no | emp_name | dept_no |
+--------+----------+---------+
|    101 | Smith    |      20 |
|    103 | Adama    |      20 |
|    105 | Anita    |      10 |
|    106 | Sneha    |      10 |
+--------+----------+---------+
4 rows in set (0.00 sec)

6)
mysql> select * from EMPLOYEE where emp_name LIKE 'A_a%';
+--------+----------+---------+----------+---------+
| emp_no | emp_name | emp_sal | emp_comm | dept_no |
+--------+----------+---------+----------+---------+
|    103 | Adama    | 1100.00 |      0.0 |      20 |
|    104 | Aman     | 3000.00 |     NULL |      15 |
|    107 | Anamika  | 2975.00 |     NULL |      30 |
+--------+----------+---------+----------+---------+
3 rows in set (0.00 sec)

7)
mysql> select emp_name, emp_no, emp_sal from EMPLOYEE where emp_name LIKE 'Ani__%';
+----------+--------+---------+
| emp_name | emp_no | emp_sal |
+----------+--------+---------+
| Anita    |    105 | 5000.00 |
+----------+--------+---------+
1 row in set (0.00 sec)

8)
mysql> select * from EMPLOYEE where emp_name LIKE '_n___' and emp_comm IS NOT NULL;
+--------+----------+---------+----------+---------+
| emp_no | emp_name | emp_sal | emp_comm | dept_no |
+--------+----------+---------+----------+---------+
|    105 | Anita    | 5000.00 |  50000.0 |      10 |
|    106 | Sneha    | 2450.00 |  24500.0 |      10 |
+--------+----------+---------+----------+---------+
2 rows in set (0.00 sec)

9)
mysql> select * from EMPLOYEE where emp_name LIKE '__a%' and emp_comm IS NULL;
+--------+----------+---------+----------+---------+
| emp_no | emp_name | emp_sal | emp_comm | dept_no |
+--------+----------+---------+----------+---------+
|    104 | Aman     | 3000.00 |     NULL |      15 |
|    107 | Anamika  | 2975.00 |     NULL |      30 |
+--------+----------+---------+----------+---------+
2 rows in set (0.00 sec)

10)
