/*Len Function*/
select length('Hello World!'),length('Hello'),length('World!');
select lower('HANSIL'),lower('CHAPADIYA'),lower('SHAILESHKUMAR');
select upper('hansil'),upper('chapadiya'),upper('shaileshkumar');
/*Select initcap('object'),initcap('oriented'),initcap('programming');*/
select SUBSTR('Database Manegement is excellent!',5,14),SUBSTR('Information Communication Tech.',1,11),SUBSTR('Fundamental Software Development',1,15);
select LPAD('FSD',8,'*'),LPAD('ICT',8,'-'),LPAD('DBMS','8','+');
select RPAD('ICT',10,'*'),RPAD('FSD',8,'-'),RPAD('DBMS','8','+');
select LTRIM('                     Internet_Tech.'), LTRIM('                              Object_Oriented_Programming'), LTRIM('                                     Database Management System');
select RTRIM('Internet_Tech.                  '), RTRIM('Object_Oriented_Programming                              '), RTRIM('Database Management System                                     ');
select REPLACE('ICT','C',''),REPLACE('FSD','S','A'),REPLACE('IT','T','F');
select ASCII('H'),ASCII('M'),ASCII('h');

/*select length('Hello World!'),length('Hello'),length('World!');
+------------------------+-----------------+------------------+
| length('Hello World!') | length('Hello') | length('World!') |
+------------------------+-----------------+------------------+
|                     12 |               5 |                6 |
+------------------------+-----------------+------------------+
1 row in set (0.00 sec)

mysql> select lower('HANSIL'),lower('CHAPADIYA'),lower('SHAILESHKUMAR');
+-----------------+--------------------+------------------------+
| lower('HANSIL') | lower('CHAPADIYA') | lower('SHAILESHKUMAR') |
+-----------------+--------------------+------------------------+
| hansil          | chapadiya          | shaileshkumar          |
+-----------------+--------------------+------------------------+
1 row in set (0.00 sec)

mysql> select upper('hansil'),upper('chapadiya'),upper('shaileshkumar');
+-----------------+--------------------+------------------------+
| upper('hansil') | upper('chapadiya') | upper('shaileshkumar') |
+-----------------+--------------------+------------------------+
| HANSIL          | CHAPADIYA          | SHAILESHKUMAR          |
+-----------------+--------------------+------------------------+
1 row in set (0.00 sec)

mysql> Select initcap('object'),initcap('oriented'),initcap('programming');
mysql> select SUBSTR('Database Manegement is excellent!',5,14),SUBSTR('Information Communication Tech.',1,11),SUBSTR('Fundamental Software Development',1,15);
+--------------------------------------------------+------------------------------------------------+-------------------------------------------------+
| SUBSTR('Database Manegement is excellent!',5,14) | SUBSTR('Information Communication Tech.',1,11) | SUBSTR('Fundamental Software Development',1,15) |
+--------------------------------------------------+------------------------------------------------+-------------------------------------------------+
| base Manegemen                                   | Information                                    | Fundamental Sof                                 |
+--------------------------------------------------+------------------------------------------------+-------------------------------------------------+
1 row in set (0.00 sec)

mysql> select LPAD('FSD',8,'*'),LPAD('ICT',8,'-'),LPAD('DBMS','8','+');
+-------------------+-------------------+----------------------+
| LPAD('FSD',8,'*') | LPAD('ICT',8,'-') | LPAD('DBMS','8','+') |
+-------------------+-------------------+----------------------+
| *****FSD          | -----ICT          | ++++DBMS             |
+-------------------+-------------------+----------------------+
1 row in set (0.00 sec)

mysql> select RPAD('ICT',10,'*'),RPAD('FSD',8,'-'),RPAD('DBMS','8','+');
+--------------------+-------------------+----------------------+
| RPAD('ICT',10,'*') | RPAD('FSD',8,'-') | RPAD('DBMS','8','+') |
+--------------------+-------------------+----------------------+
| ICT*******         | FSD-----          | DBMS++++             |
+--------------------+-------------------+----------------------+
1 row in set (0.00 sec)

mysql> select LTRIM('                     Internet_Tech.'), LTRIM('                              Object_Oriented_Programming'), LTRIM('                                     Database Management System');
+----------------------------------------------+--------------------------------------------------------------------+--------------------------------------------------------------------------+
| LTRIM('                     Internet_Tech.') | LTRIM('                              Object_Oriented_Programming') | LTRIM('                                     Database Management System') |
+----------------------------------------------+--------------------------------------------------------------------+--------------------------------------------------------------------------+
| Internet_Tech.                               | Object_Oriented_Programming                                        | Database Management System                                               |
+----------------------------------------------+--------------------------------------------------------------------+--------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> select RTRIM('Internet_Tech.                  '), RTRIM('Object_Oriented_Programming                              '), RTRIM('Database Management System                                     ');
+-------------------------------------------+--------------------------------------------------------------------+--------------------------------------------------------------------------+
| RTRIM('Internet_Tech.                  ') | RTRIM('Object_Oriented_Programming                              ') | RTRIM('Database Management System                                     ') |
+-------------------------------------------+--------------------------------------------------------------------+--------------------------------------------------------------------------+
| Internet_Tech.                            | Object_Oriented_Programming                                        | Database Management System                                               |
+-------------------------------------------+--------------------------------------------------------------------+--------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> select REPLACE('ICT','C',''),REPLACE('FSD','S','A'),REPLACE('IT','T','F');
+-----------------------+------------------------+-----------------------+
| REPLACE('ICT','C','') | REPLACE('FSD','S','A') | REPLACE('IT','T','F') |
+-----------------------+------------------------+-----------------------+
| IT                    | FAD                    | IF                    |
+-----------------------+------------------------+-----------------------+
1 row in set (0.00 sec)

mysql> select ASCII('H'),ASCII('M'),ASCII('h');
+------------+------------+------------+
| ASCII('H') | ASCII('M') | ASCII('h') |
+------------+------------+------------+
|         72 |         77 |        104 |
+------------+------------+------------+
1 row in set (0.00 sec)
*/