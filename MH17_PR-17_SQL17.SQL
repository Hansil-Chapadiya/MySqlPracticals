insert into products values(1006,'NOB','A4 Size',8000,30.00),
    -> (1007,'NOB','Notebook',11000,22.50);
    -> (1008,'SCA','Scale MSize',7000,30.00),
    -> (1009,'SCA','Scale FSize',9000,45.00);
    -> (1010,'PEC','Pencil 4H',8000,2.50);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

select * from products;
+-----------+-------------+-------------+----------+-------+
| productID | productCode | name        | quantity | price |
+-----------+-------------+-------------+----------+-------+
|      1001 | PEN         | Pen Red     |     5000 |  1.23 |
|      1002 | PEN         | Pen Blue    |     8000 |  1.25 |
|      1003 | PEN         | Pen Black   |     2000 |  1.25 |
|      1004 | PEC         | Pencil 2B   |    10000 |  0.96 |
|      1005 | PEC         | Pencil 2H   |     8000 |  0.98 |
|      1006 | NOB         | Notebook    |    11000 | 22.50 |
|      1007 | NOB         | A4 Size     |     8000 | 30.00 |
|      1008 | SCA         | Scale MSize |     7000 | 30.00 |
|      1009 | SCA         | Scale FSize |     9000 | 45.00 |
|      1010 | PEC         | Pencil 4H   |     8000 |  2.50 |
+-----------+-------------+-------------+----------+-------+
10 rows in set (0.00 sec)

mysql> select productCode, Count(ProductCode) from products group by productCode;
+-------------+--------------------+
| productCode | Count(ProductCode) |
+-------------+--------------------+
| PEN         |                  3 |
| PEC         |                  3 |
| NOB         |                  2 |
| SCA         |                  2 |
+-------------+--------------------+
4 rows in set (0.02 sec)

mysql> select productCode,quantity, Count(quantity) from products group by productcode;
+-------------+----------+-----------------+
| productCode | quantity | Count(quantity) |
+-------------+----------+-----------------+
| PEN         |     5000 |               3 |
| PEC         |    10000 |               3 |
| NOB         |    11000 |               2 |
| SCA         |     7000 |               2 |
+-------------+----------+-----------------+
4 rows in set (0.00 sec)

select productCode,sum(quantity), Count(quantity) from products group by productcode;
+-------------+---------------+-----------------+
| productCode | sum(quantity) | Count(quantity) |
+-------------+---------------+-----------------+
| PEN         |         15000 |               3 |
| PEC         |         26000 |               3 |
| NOB         |         19000 |               2 |
| SCA         |         16000 |               2 |
+-------------+---------------+-----------------+
4 rows in set (0.00 sec)

select productCode, sum(price),count(quantity) from products group by productcode having sum(price)>10.00;
+-------------+------------+-----------------+
| productCode | sum(price) | count(quantity) |
+-------------+------------+-----------------+
| NOB         |      52.50 |               2 |
| SCA         |      75.00 |               2 |
+-------------+------------+-----------------+
2 rows in set (0.00 sec)

select productCode, sum(price),count(quantity) from products group by productcode having count(quantity)>1.00;
+-------------+------------+-----------------+
| productCode | sum(price) | count(quantity) |
+-------------+------------+-----------------+
| PEN         |       3.73 |               3 |
| PEC         |       4.44 |               3 |
| NOB         |      52.50 |               2 |
| SCA         |      75.00 |               2 |
+-------------+------------+-----------------+
4 rows in set (0.00 sec)

select productCode,name,quantity from products order by quantity;
+-------------+-------------+----------+
| productCode | name        | quantity |
+-------------+-------------+----------+
| PEN         | Pen Black   |     2000 |
| PEN         | Pen Red     |     5000 |
| SCA         | Scale MSize |     7000 |
| PEN         | Pen Blue    |     8000 |
| PEC         | Pencil 2H   |     8000 |
| NOB         | A4 Size     |     8000 |
| PEC         | Pencil 4H   |     8000 |
| SCA         | Scale FSize |     9000 |
| PEC         | Pencil 2B   |    10000 |
| NOB         | Notebook    |    11000 |
+-------------+-------------+----------+
10 rows in set (0.00 sec)

mysql> select productCode,name,price from products order by price DESC;
+-------------+-------------+-------+
| productCode | name        | price |
+-------------+-------------+-------+
| SCA         | Scale FSize | 45.00 |
| NOB         | A4 Size     | 30.00 |
| SCA         | Scale MSize | 30.00 |
| NOB         | Notebook    | 22.50 |
| PEC         | Pencil 4H   |  2.50 |
| PEN         | Pen Blue    |  1.25 |
| PEN         | Pen Black   |  1.25 |
| PEN         | Pen Red     |  1.23 |
| PEC         | Pencil 2H   |  0.98 |
| PEC         | Pencil 2B   |  0.96 |
+-------------+-------------+-------+
10 rows in set (0.00 sec)

 select productCode,name,price from products order by price ASC;
+-------------+-------------+-------+
| productCode | name        | price |
+-------------+-------------+-------+
| PEC         | Pencil 2B   |  0.96 |
| PEC         | Pencil 2H   |  0.98 |
| PEN         | Pen Red     |  1.23 |
| PEN         | Pen Blue    |  1.25 |
| PEN         | Pen Black   |  1.25 |
| PEC         | Pencil 4H   |  2.50 |
| NOB         | Notebook    | 22.50 |
| NOB         | A4 Size     | 30.00 |
| SCA         | Scale MSize | 30.00 |
| SCA         | Scale FSize | 45.00 |
+-------------+-------------+-------+
10 rows in set (0.00 sec)

 select productCode,name,price from products order by price ASC, name DESC;
+-------------+-------------+-------+
| productCode | name        | price |
+-------------+-------------+-------+
| PEC         | Pencil 2B   |  0.96 |
| PEC         | Pencil 2H   |  0.98 |
| PEN         | Pen Red     |  1.23 |
| PEN         | Pen Blue    |  1.25 |
| PEN         | Pen Black   |  1.25 |
| PEC         | Pencil 4H   |  2.50 |
| NOB         | Notebook    | 22.50 |
| SCA         | Scale MSize | 30.00 |
| NOB         | A4 Size     | 30.00 |
| SCA         | Scale FSize | 45.00 |
+-------------+-------------+------