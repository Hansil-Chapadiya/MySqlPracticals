1)

mysql> select CURDATE() AS 'DATE';
+------------+
| DATE       |
+------------+
| 2023-10-09 |
+------------+
1 row in set (0.00 sec)

2)

mysql> select * , Round(emp_sal*1.15) As 'New_Salary' from Employee ; //Round(emp_sal + emp_sal*0.15)
+--------+----------+---------+----------+---------+------------+
| emp_no | emp_name | emp_sal | emp_comm | dept_no | New_Salary |
+--------+----------+---------+----------+---------+------------+
|    101 | Smith    |  800.00 |     NULL |      10 |        920 |
|    102 | Snehal   | 1600.00 |    300.0 |      25 |       1840 |
|    103 | Great    | 1100.00 |      0.0 |      20 |       1265 |
|    104 | Aman     | 3000.00 |     NULL |      10 |       3450 |
|    105 | Anita    | 5000.00 |  50000.0 |      10 |       5750 |
|    106 | Sneha    | 2450.00 |  24500.0 |      10 |       2818 |
|    107 | Anamika  | 2975.00 |     NULL |      30 |       3421 |
+--------+----------+---------+----------+---------+------------+
7 rows in set (0.00 sec)

2)

mysql> Alter table Employee Add column New_Salary DECIMAL(10,2);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update Employee Set New_Salary = emp_sal  + (emp_sal * 0.15);
Query OK, 7 rows affected (0.01 sec)
Rows matched: 7  Changed: 7  Warnings: 0

mysql> select * from Employee ;
+--------+----------+---------+----------+---------+------------+
| emp_no | emp_name | emp_sal | emp_comm | dept_no | New_Salary |
+--------+----------+---------+----------+---------+------------+
|    101 | Smith    |  800.00 |     NULL |      10 |     920.00 |
|    102 | Snehal   | 1600.00 |    300.0 |      25 |    1840.00 |
|    103 | Great    | 1100.00 |      0.0 |      20 |    1265.00 |
|    104 | Aman     | 3000.00 |     NULL |      10 |    3450.00 |
|    105 | Anita    | 5000.00 |  50000.0 |      10 |    5750.00 |
|    106 | Sneha    | 2450.00 |  24500.0 |      10 |    2817.50 |
|    107 | Anamika  | 2975.00 |     NULL |      30 |    3421.25 |
+--------+----------+---------+----------+---------+------------+
7 rows in set (0.00 sec)

3)

mysql> Alter table Employee Add column Increased_Salary Decimal(10,2);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update Employee Set Increased_Salary = (New_Salary - emp_sal);
Query OK, 7 rows affected (0.01 sec)
Rows matched: 7  Changed: 7  Warnings: 0

mysql> select * from Employee ;
+--------+----------+---------+----------+---------+------------+------------------+
| emp_no | emp_name | emp_sal | emp_comm | dept_no | New_Salary | Increased_Salary |
+--------+----------+---------+----------+---------+------------+------------------+
|    101 | Smith    |  800.00 |     NULL |      10 |     920.00 |           120.00 |
|    102 | Snehal   | 1600.00 |    300.0 |      25 |    1840.00 |           240.00 |
|    103 | Great    | 1100.00 |      0.0 |      20 |    1265.00 |           165.00 |
|    104 | Aman     | 3000.00 |     NULL |      10 |    3450.00 |           450.00 |
|    105 | Anita    | 5000.00 |  50000.0 |      10 |    5750.00 |           750.00 |
|    106 | Sneha    | 2450.00 |  24500.0 |      10 |    2817.50 |           367.50 |
|    107 | Anamika  | 2975.00 |     NULL |      30 |    3421.25 |           446.25 |
+--------+----------+---------+----------+---------+------------+------------------+
7 rows in set (0.00 sec)

4)

mysql> mysql> SELECT
    ->   emp_no AS EmployeeNumber,
    ->   CONCAT(UPPER(LEFT(emp_name, 1)), LOWER(RIGHT(emp_name, LENGTH(emp_name) - 1))) AS CapitalizedName,
    ->   LENGTH(emp_name) AS NameLength
    -> FROM Employee
    -> WHERE emp_name LIKE 'J%' OR emp_name LIKE 'A%' OR emp_name LIKE 'M%'
    -> ORDER BY SUBSTRING_INDEX(emp_name, ' ', -1);
+----------------+-----------------+------------+
| EmployeeNumber | CapitalizedName | NameLength |
+----------------+-----------------+------------+
|            104 | Aman            |          4 |
|            107 | Anamika         |          7 |
|            105 | Anita           |          5 |
+----------------+-----------------+------------+
3 rows in set (0.01 sec)

5)


mysql> SELECT CONCAT(emp_name, ' earns ', emp_sal, ' monthly') AS EmployeeStatement
    -> FROM Employee;
+-------------------------------+
| EmployeeStatement             |
+-------------------------------+
| smith earns 800.00 monthly    |
| snehal earns 1600.00 monthly  |
| great earns 1100.00 monthly   |
| aman earns 3000.00 monthly    |
| anita earns 5000.00 monthly   |
| sneha earns 2450.00 monthly   |
| anamika earns 2975.00 monthly |
+-------------------------------+
7 rows in set (0.00 sec)

6)

mysql> SELECT
    ->   emp_name AS EmployeeName,
    ->   hire_date AS HireDate,
    ->   DATEDIFF(CURDATE(), hire_date) AS MonthsEmployed,
    ->   DAYNAME(hire_date) AS StartDayOfWeek
    -> FROM Employee
    -> ORDER BY FIELD(StartDayOfWeek, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
+--------------+------------+----------------+----------------+
| EmployeeName | HireDate   | MonthsEmployed | StartDayOfWeek |
+--------------+------------+----------------+----------------+
| great        | 2000-04-10 |           8635 | Monday         |
| aman         | 2000-04-10 |           8635 | Monday         |
| sneha        | 2004-01-12 |           7263 | Monday         |
| anita        | 2006-01-13 |           6531 | Friday         |
| anamika      | 2007-01-12 |           6167 | Friday         |
| smith        | 1998-10-24 |           9169 | Saturday       |
| snehal       | 2000-10-14 |           8448 | Saturday       |
+--------------+------------+----------------+----------------+
7 rows in set (0.01 sec)

7)
mysql> SELECT
    ->   emp_name,
    ->   DATE_FORMAT(hire_date, 'DAYSth of %M %Y %h:%i:%s %p') AS formatted_hire_date
    -> FROM Employee;
+----------+------------------------------------+
| emp_name | formatted_hire_date                |
+----------+------------------------------------+
| smith    | DAYSth of October 1998 12:00:00 AM |
| snehal   | DAYSth of October 2000 12:00:00 AM |
| great    | DAYSth of April 2000 12:00:00 AM   |
| aman     | DAYSth of April 2000 12:00:00 AM   |
| anita    | DAYSth of January 2006 12:00:00 AM |
| sneha    | DAYSth of January 2004 12:00:00 AM |
| anamika  | DAYSth of January 2007 12:00:00 AM |
+----------+------------------------------------+
7 rows in set (0.00 sec)

8)

mysql> SELECT
    emp_name AS "Name",
    emp_sal + IFNULL(emo_comm, 0) AS "Annual Compensation"
FROM
    employee;

+---------+---------------------+
| Name    | Annual Compensation |
+---------+---------------------+
| smith   |              800.00 |
| snehal  |             1900.00 |
| roy     |             1100.00 |
| aman    |             3000.00 |
| anita   |            55000.00 |
| sneha   |            26950.00 |
| anamika |             2975.00 |
+---------+---------------------+
7 rows in set (0.00 sec)
