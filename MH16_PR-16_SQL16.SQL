mysql> use students;
Database changed
mysql> select * from products;
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1001 | PEN         | Pen Red   |     5000 |  1.23 |
|      1002 | PEN         | Pen Blue  |     8000 |  1.25 |
|      1003 | PEN         | Pen Black |     2000 |  1.25 |
|      1004 | PEC         | Pencil 2B |    10000 |  0.96 |
|      1005 | PEC         | Pencil 2H |     8000 |  0.98 |
+-----------+-------------+-----------+----------+-------+
5 rows in set (0.12 sec)

mysql> select Max(Quantity) from products;
+---------------+
| Max(Quantity) |
+---------------+
|         10000 |
+---------------+
1 row in set (0.01 sec)

mysql> select Max(price) from products;
+------------+
| Max(price) |
+------------+
|       1.25 |
+------------+
1 row in set (0.00 sec)

mysql> select Min(Quantity) from products;
+---------------+
| Min(Quantity) |
+---------------+
|          2000 |
+---------------+
1 row in set (0.00 sec)

mysql> select Min(price) from products;
+------------+
| Min(price) |
+------------+
|       0.96 |
+------------+
1 row in set (0.00 sec)

mysql> select sum(quantity) from products;
+---------------+
| sum(quantity) |
+---------------+
|         33000 |
+---------------+
1 row in set (0.00 sec)

mysql> select sum(price) from products;
+------------+
| sum(price) |
+------------+
|       5.67 |
+------------+
1 row in set (0.00 sec)
select count(quantity) from products;
+-----------------+
| count(quantity) |
+-----------------+
|               5 |
+-----------------+
1 row in set (0.02 sec)

mysql> select count(price) from products;
+--------------+
| count(price) |
+--------------+
|            5 |
+--------------+
1 row in set (0.00 sec)

mysql> select avg(quantity) from products;
+---------------+
| avg(quantity) |
+---------------+
|     6600.0000 |
+---------------+
1 row in set (0.00 sec)

mysql> select avg(price) from products;
+------------+
| avg(price) |
+------------+
|   1.134000 |
+------------+
1 row in set (0.00 sec)

mysql>
