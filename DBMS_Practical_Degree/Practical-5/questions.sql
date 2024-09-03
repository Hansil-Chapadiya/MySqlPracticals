1)
mysql> SELECT
    ->     d.act_no AS DepositeAccountNumber,
    ->     d.c_name AS CustomerName,
    ->     d.b_name AS DepositeBranchName,
    ->     d.amount AS DepositeAmount,
    ->     d.a_date AS DepositeDate,
    ->     b.city AS BranchCity,
    ->     c.city AS CustomerCity,
    ->     bo.loan_no AS BorrowLoanNumber,
    ->     bo.amount AS BorrowAmount
    -> FROM DEPOSITE d
    -> LEFT JOIN BRANCH b ON d.b_name = b.b_name
    -> LEFT JOIN CUSTOMERS c ON d.c_name = c.c_name
    -> LEFT JOIN BORROW bo ON d.c_name = bo.c_name
    -> WHERE d.c_name = 'ANIL';
+-----------------------+--------------+--------------------+----------------+--------------+------------+--------------+------------------+--------------+
| DepositeAccountNumber | CustomerName | DepositeBranchName | DepositeAmount | DepositeDate | BranchCity | CustomerCity | BorrowLoanNumber | BorrowAmount |
+-----------------------+--------------+--------------------+----------------+--------------+------------+--------------+------------------+--------------+
| 100                   | ANIL         | VRCE               |        1000.00 | 1995-03-01   | NAGPUR     | CALCUTTA     | 201              |      1000.00 |
+-----------------------+--------------+--------------------+----------------+--------------+------------+--------------+------------------+--------------+
1 row in set (0.00 sec)

2)


mysql> SELECT DISTINCT c.c_name AS CustomerName
    -> FROM CUSTOMERS c
    -> JOIN DEPOSITE d ON c.c_name = d.c_name
    -> JOIN BORROW b ON c.c_name = b.c_name
    -> WHERE c.city = 'Nagpur';
+--------------+
| CustomerName |
+--------------+
| MADHURI      |
+--------------+
1 row in set (0.01 sec)

3)

mysql> SELECT c.city AS CustomerCity
    -> FROM CUSTOMERS c
    -> WHERE c.c_name IN (
    ->     SELECT DISTINCT d.c_name
    ->     FROM DEPOSITE d
    ->     JOIN BORROW b ON d.c_name = b.c_name
    -> );
+--------------+
| CustomerCity |
+--------------+
| CALCUTTA     |
| DELHI        |
| BARODA       |
| NAGPUR       |
| BOMBAY       |
+--------------+
5 rows in set (0.00 sec)

4)

mysql> select emp_name As 'Employee Name', dept_no As 'Department No' from employee;
+---------------+---------------+
| Employee Name | Department No |
+---------------+---------------+
| smith         |            10 |
| snehal        |            25 |
| great         |            20 |
| aman          |            10 |
| anita         |            10 |
| sneha         |            10 |
| anamika       |            30 |
+---------------+---------------+
7 rows in set (0.00 sec)

5)

/*
    comming soon
*/

6)



