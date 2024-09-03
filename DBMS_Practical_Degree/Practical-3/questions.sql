1)

mysql> select  sum(amount) from deposite_pr_2;
+-------------+
| sum(amount) |
+-------------+
|    39500.00 |
+-------------+
1 row in set (0.00 sec)

2)

mysql> select  sum(amount) from deposite where b_name = 'karolbagh';
+-------------+
| sum(amount) |
+-------------+
|     3500.00 |
+-------------+
1 row in set (0.01 sec)

3)

mysql> select  max(amount) from deposite where b_name = 'VRCE';
+-------------+
| max(amount) |
+-------------+
|     1000.00 |
+-------------+
1 row in set (0.00 sec)

4)

mysql> select  count(c_name) from customers;
+---------------+
| count(c_name) |
+---------------+
|            10 |
+---------------+
1 row in set (0.01 sec)

5)

mysql> select count(DISTINCT city) from customers ;
+----------------------+
| count(DISTINCT city) |
+----------------------+
|                    7 |
+----------------------+
1 row in set (0.00 sec)

6)

mysql> create table Supplier As Select * from Employee;
Query OK, 7 rows affected (0.05 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> select * from supplier;
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

7)

mysql> create table Sup1 As Select emp_no, emp_name from Employee;
Query OK, 7 rows affected (0.03 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> select * from sup1;
+--------+----------+
| emp_no | emp_name |
+--------+----------+
|    101 | Smith    |
|    102 | Snehal   |
|    103 | Adama    |
|    104 | Aman     |
|    105 | Anita    |
|    106 | Sneha    |
|    107 | Anamika  |
+--------+----------+
7 rows in set (0.00 sec)

8)
mysql> create table Sup like Employee;
Query OK, 0 rows affected (0.06 sec)

mysql> create table Sup2 As select * from Employee where 1 = 0;
Query OK, 0 rows affected (0.06 sec)

9)
mysql> Insert into supplier_2 (select * from Employee where emp_name like '_n%' and length(emp_name) = 5);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from supplier_2;
+--------+----------+---------+----------+---------+
| emp_no | emp_name | emp_sal | emp_comm | dept_no |
+--------+----------+---------+----------+---------+
|    105 | Anita    | 5000.00 |  50000.0 |      10 |
|    106 | Sneha    | 2450.00 |  24500.0 |      10 |
+--------+----------+---------+----------+---------+
2 rows in set (0.00 sec)

10)

mysql> Truncate table Sup1;
Query OK, 0 rows affected (0.06 sec)

mysql> describe Sup1;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| emp_no   | decimal(3,0) | YES  |     | NULL    |       |
| emp_name | varchar(30)  | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

11)

mysql> delete from Supplier where emp_no = 103;
Query OK, 1 row affected (0.01 sec)

mysql> select emp_no As Sup_id from Supplier;
+--------+
| Sup_id |
+--------+
|    101 |
|    102 |
|    104 |
|    105 |
|    106 |
|    107 |
+--------+
6 rows in set (0.00 sec)

12)

mysql> Alter table Sup2 Rename Supplier_2;
Query OK, 0 rows affected (0.05 sec)

mysql> describe Supplier_2;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| emp_no   | decimal(3,0) | YES  |     | NULL    |       |
| emp_name | varchar(30)  | YES  |     | NULL    |       |
| emp_sal  | decimal(8,2) | YES  |     | NULL    |       |
| emp_comm | decimal(6,1) | YES  |     | NULL    |       |
| dept_no  | decimal(3,0) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

13)

mysql> drop table Sup1;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from Sup1;
ERROR 1146 (42S02): Table 'degree_dbms.sup1' doesn't exist'

14)

mysql> select * from supplier_2;
+--------+----------+---------+----------+---------+
| emp_no | emp_name | emp_sal | emp_comm | dept_no |
+--------+----------+---------+----------+---------+
|    105 | Anita    | 5000.00 |  50000.0 |      10 |
|    106 | Sneha    | 2450.00 |  24500.0 |      10 |
+--------+----------+---------+----------+---------+
2 rows in set (0.00 sec)


15)
mysql> update Employee set dept_no = 10 where emp_name like '_m%';
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from Employee;
+--------+----------+---------+----------+---------+
| emp_no | emp_name | emp_sal | emp_comm | dept_no |
+--------+----------+---------+----------+---------+
|    101 | Smith    |  800.00 |     NULL |      10 |
|    102 | Snehal   | 1600.00 |    300.0 |      25 |
|    103 | Adama    | 1100.00 |      0.0 |      20 |
|    104 | Aman     | 3000.00 |     NULL |      10 |
|    105 | Anita    | 5000.00 |  50000.0 |      10 |
|    106 | Sneha    | 2450.00 |  24500.0 |      10 |
|    107 | Anamika  | 2975.00 |     NULL |      30 |
+--------+----------+---------+----------+---------+
7 rows in set (0.00 sec)

15)

mysql> select * from Employee where emp_no = 103;
+--------+----------+---------+----------+---------+
| emp_no | emp_name | emp_sal | emp_comm | dept_no |
+--------+----------+---------+----------+---------+
|    103 | Great    | 1100.00 |      0.0 |      20 |
+--------+----------+---------+----------+---------+
1 row in set (0.00 sec)