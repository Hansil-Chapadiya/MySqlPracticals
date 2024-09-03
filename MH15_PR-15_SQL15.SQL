select NOW();
select CURDATE();
select CURTIME();
select DATE('14-08-04 12:12:15');
select ADDDATE(CURDATE(),INTERVAL 1 YEAR);
select ADDTIME(CURTIME(),'12:12:12.50');
select DATEDIFF(CURDATE(),'2004-08-14');
select DATE_SUB(CURDATE(),INTERVAL 4 YEAR);
select DAYOFMONTH(CURDATE());
select DAYOFWEEK(CURDATE());
select LAST_DAY(CURDATE());
select EXTRACT(YEAR FROM CURDATE()),EXTRACT(MONTH FROM '2004-08-14');


select NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2022-04-21 14:33:27 |
+---------------------+
1 row in set (0.00 sec)

mysql> select CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2022-04-21 |
+------------+
1 row in set (0.00 sec)

mysql> select CURTIME();
+-----------+
| CURTIME() |
+-----------+
| 14:33:27  |
+-----------+
1 row in set (0.00 sec)

mysql> select DATE('14-08-04 12:12:15');
+---------------------------+
| DATE('14-08-04 12:12:15') |
+---------------------------+
| 2014-08-04                |
+---------------------------+
1 row in set (0.00 sec)

mysql> select ADDDATE(CURDATE(),INTERVAL 1 YEAR);
+------------------------------------+
| ADDDATE(CURDATE(),INTERVAL 1 YEAR) |
+------------------------------------+
| 2023-04-21                         |
+------------------------------------+
1 row in set (0.00 sec)

mysql> select ADDTIME(CURTIME(),'12:12:12.50');
+----------------------------------+
| ADDTIME(CURTIME(),'12:12:12.50') |
+----------------------------------+
| 26:45:39.50                      |
+----------------------------------+
1 row in set (0.00 sec)

mysql> select DATEDIFF(CURDATE(),'2004-08-14');
+----------------------------------+
| DATEDIFF(CURDATE(),'2004-08-14') |
+----------------------------------+
|                             6459 |
+----------------------------------+
1 row in set (0.00 sec)

mysql> select DATE_SUB(CURDATE(),INTERVAL 4 YEAR);
+-------------------------------------+
| DATE_SUB(CURDATE(),INTERVAL 4 YEAR) |
+-------------------------------------+
| 2018-04-21                          |
+-------------------------------------+
1 row in set (0.00 sec)

mysql> select DAYOFMONTH(CURDATE());
+-----------------------+
| DAYOFMONTH(CURDATE()) |
+-----------------------+
|                    21 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select DAYOFWEEK(CURDATE());
+----------------------+
| DAYOFWEEK(CURDATE()) |
+----------------------+
|                    5 |
+----------------------+
1 row in set (0.00 sec)

mysql> select LAST_DAY(CURDATE());
+---------------------+
| LAST_DAY(CURDATE()) |
+---------------------+
| 2022-04-30          |
+---------------------+
1 row in set (0.00 sec)

mysql> select EXTRACT(YEAR FROM CURDATE()),EXTRACT(MONTH FROM '2004-08-14');
+------------------------------+----------------------------------+
| EXTRACT(YEAR FROM CURDATE()) | EXTRACT(MONTH FROM '2004-08-14') |
+------------------------------+----------------------------------+
|                         2022 |                                8 |
+------------------------------+----------------------------------+
1 row in set (0.00 sec)