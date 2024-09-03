mysql> -- 1
mysql>  select ONUM,amount,odate from order1;
+------+---------+------------+
| ONUM | amount  | odate      |
+------+---------+------------+
| 3001 |   18.69 | 1999-10-03 |
| 3002 |  767.19 | 1999-10-03 |
| 3003 |  1900.1 | 1999-10-03 |
| 3004 | 5160.45 | 1999-10-03 |
| 3005 | 1098.25 | 1999-10-04 |
| 3006 | 1713.12 | 1999-10-04 |
| 3007 |   75.75 | 1999-10-05 |
| 3008 |    4723 | 1999-10-05 |
| 3009 | 1309.95 | 1999-10-05 |
| 3010 | 9898.87 | 1999-10-06 |
+------+---------+------------+
10 rows in set (0.00 sec)

mysql>
mysql> -- 2
mysql> select * from customer where snum='1001';
+------+--------+--------+--------+------+
| CNUM | CNAME  | CITY   | RATING | SNUM |
+------+--------+--------+--------+------+
| 2001 | HARDIK | LONDON |    100 | 1001 |
| 2005 | CHANDU | LONDON |    100 | 1001 |
+------+--------+--------+--------+------+
2 rows in set (0.00 sec)

mysql>
mysql> -- 3
mysql> select city,sname,snum,commission from salesman;
+-----------+--------+------+------------+
| city      | sname  | snum | commission |
+-----------+--------+------+------------+
| LONDON    | PIYUSH | 1001 |       0.12 |
| SURAT     | NIRAJ  | 1002 |       0.13 |
| LONDON    | MITI   | 1003 |       0.11 |
| BARODA    | RAJESH | 1004 |       0.15 |
| NEW DELHI | ANAND  | 1005 |        0.1 |
| PATAN     | RAM    | 1006 |        0.1 |
| BOMBAY    | LAXMAN | 1007 |        0.9 |
+-----------+--------+------+------------+
7 rows in set (0.00 sec)

mysql>
mysql> -- 4
mysql> select cname,rating from customer where city='surat';
+---------+--------+
| cname   | rating |
+---------+--------+
| LAXIT   |    200 |
| CHAMPAK |    300 |
+---------+--------+
2 rows in set (0.00 sec)

mysql>
mysql> -- 5
mysql> SELECT DISTINCT SNUM,AMOUNT FROM ORDER1;
+------+---------+
| SNUM | AMOUNT  |
+------+---------+
| 1007 |   18.69 |
| 1001 |  767.19 |
| 1004 |  1900.1 |
| 1002 | 5160.45 |
| 1007 | 1098.25 |
| 1003 | 1713.12 |
| 1002 |   75.75 |
| 1001 |    4723 |
| 1002 | 1309.95 |
| 1001 | 9898.87 |
+------+---------+
10 rows in set (0.00 sec)

mysql>
mysql> -- 6
mysql> SELECT * FROM order1 WHERE AMOUNT>1000;
+------+---------+------------+------+------+
| ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3003 |  1900.1 | 1999-10-03 | 2007 | 1004 |
| 3004 | 5160.45 | 1999-10-03 | 2003 | 1002 |
| 3005 | 1098.25 | 1999-10-04 | 2006 | 1007 |
| 3006 | 1713.12 | 1999-10-04 | 2002 | 1003 |
| 3008 |    4723 | 1999-10-05 | 2005 | 1001 |
| 3009 | 1309.95 | 1999-10-05 | 2004 | 1002 |
| 3010 | 9898.87 | 1999-10-06 | 2005 | 1001 |
+------+---------+------------+------+------+
7 rows in set (0.00 sec)

mysql>
mysql> -- 7
mysql> select sname,city,commission from salesman where city='london' and commission>10;
Empty set (0.00 sec)

mysql>
mysql> -- 8
mysql> select * from customer where rating<=100 and not city='rome';
+------+--------+--------+--------+------+
| CNUM | CNAME  | CITY   | RATING | SNUM |
+------+--------+--------+--------+------+
| 2001 | HARDIK | LONDON |    100 | 1001 |
| 2005 | CHANDU | LONDON |    100 | 1001 |
+------+--------+--------+--------+------+
2 rows in set (0.00 sec)

mysql>
mysql> -- 9
mysql> select * from order1 where amount>1000 and not snum=1006 and not odate='1999-10-04';
+------+---------+------------+------+------+
| ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3003 |  1900.1 | 1999-10-03 | 2007 | 1004 |
| 3004 | 5160.45 | 1999-10-03 | 2003 | 1002 |
| 3008 |    4723 | 1999-10-05 | 2005 | 1001 |
| 3009 | 1309.95 | 1999-10-05 | 2004 | 1002 |
| 3010 | 9898.87 | 1999-10-06 | 2005 | 1001 |
+------+---------+------------+------+------+
5 rows in set (0.00 sec)

mysql>
mysql> -- 10
mysql> select * from order1 where odate between ' 1999-10-03' and ' 1999-10-06' and not odate=' 1999-10-05';
+------+---------+------------+------+------+
| ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1999-10-03 | 2006 | 1007 |
| 3002 |  767.19 | 1999-10-03 | 2001 | 1001 |
| 3003 |  1900.1 | 1999-10-03 | 2007 | 1004 |
| 3004 | 5160.45 | 1999-10-03 | 2003 | 1002 |
| 3005 | 1098.25 | 1999-10-04 | 2006 | 1007 |
| 3006 | 1713.12 | 1999-10-04 | 2002 | 1003 |
| 3010 | 9898.87 | 1999-10-06 | 2005 | 1001 |
+------+---------+------------+------+------+
7 rows in set (0.00 sec)

mysql>
mysql> -- 11
mysql>  select * from customer where cname like "c%";
+------+---------+--------+--------+------+
| CNUM | CNAME   | CITY   | RATING | SNUM |
+------+---------+--------+--------+------+
| 2005 | CHANDU  | LONDON |    100 | 1001 |
| 2006 | CHAMPAK | SURAT  |    300 | 1007 |
+------+---------+--------+--------+------+
2 rows in set (0.00 sec)

mysql>
mysql> -- 12
mysql>  select * from CUSTOMER where cname like "a%" or cname like "g%";
+------+--------+--------+--------+------+
| CNUM | CNAME  | CITY   | RATING | SNUM |
+------+--------+--------+--------+------+
| 2002 | GITA   | ROME   |    200 | 1003 |
| 2004 | GOVIND | BOMBAY |    300 | 1002 |
+------+--------+--------+--------+------+
2 rows in set (0.00 sec)

mysql>
mysql> -- 13
mysql>  select * from order1 where amount='0';
Empty set (0.00 sec)

mysql>
mysql> -- 14
mysql> select max(amount) from order1 where snum='1002' and snum='1007';
+-------------+
| max(amount) |
+-------------+
|        NULL |
+-------------+
1 row in set (0.00 sec)

mysql>
mysql> -- 15
mysql>  select count(odate) from order1 where odate='1999-10-03';
+--------------+
| count(odate) |
+--------------+
|            4 |
+--------------+
1 row in set (0.00 sec)

mysql>
mysql> -- 16
mysql> select sum(amount) from order1;
+--------------------+
| sum(amount)        |
+--------------------+
| 26665.370237350464 |
+--------------------+
1 row in set (0.00 sec)

mysql>
mysql> -- 17
mysql> select avg(amount) from order1;
+-------------------+
| avg(amount)       |
+-------------------+
| 2666.537023735046 |
+-------------------+
1 row in set (0.00 sec)

mysql>
mysql> -- 18
mysql> select count(snum) from salesman;
+-------------+
| count(snum) |
+-------------+
|           7 |
+-------------+
1 row in set (0.00 sec)

mysql>
mysql> -- 19
mysql> Select odate, snum, max(amount) from order1 group by odate,snum;
+------------+------+-------------+
| odate      | snum | max(amount) |
+------------+------+-------------+
| 1999-10-03 | 1007 |       18.69 |
| 1999-10-03 | 1001 |      767.19 |
| 1999-10-03 | 1004 |      1900.1 |
| 1999-10-03 | 1002 |     5160.45 |
| 1999-10-04 | 1007 |     1098.25 |
| 1999-10-04 | 1003 |     1713.12 |
| 1999-10-05 | 1002 |     1309.95 |
| 1999-10-05 | 1001 |        4723 |
| 1999-10-06 | 1001 |     9898.87 |
+------------+------+-------------+
9 rows in set (0.00 sec)

mysql>
mysql> -- 20
mysql>     Select odate, snum, max(amount) from order1 where odate='1999-10-3' group by odate,snum;
+------------+------+-------------+
| odate      | snum | max(amount) |
+------------+------+-------------+
| 1999-10-03 | 1007 |       18.69 |
| 1999-10-03 | 1001 |      767.19 |
| 1999-10-03 | 1004 |      1900.1 |
| 1999-10-03 | 1002 |     5160.45 |
+------------+------+-------------+
4 rows in set (0.00 sec)

-- 21 count the no. of different not NULL cities in tlte customer table
    select city from customer where 'city' is not null;

-- 22 Find out each customer's -smallest order.
    select *,min(amount) from order1;

-- 23 Find out the customer in alphabetical order whose name begins with 'G'
    select * from customer where cname like 'G%';

-- 24 Count the no. of salesman registering orders for each day
    select odate,count(*) from order1 group by odate;

-- 25 list all salesman with their % of commision
    select sname,commission from salesman;

-- 26 Display the no. of order for each day in the following format. DD-MM-YY.
    select *,Date_format(ODATE,"%d/%m/%y") "DD-MM-YY formate" from order1;

-- 27 
    select onum,snum,(12*amount*0.01) 'Commission' from order1;

-- 28 find the highest rating in each city in the following formate
    select city,max(rating) from customer group by CITY;

-- 29 list all cusomers in descending order of rating 
    select * from customer order by rating desc;

-- 30 calculate the total of order for each day 
     select odate,sum(amount) from order1 group by odate;
-- 31
select sname,cname from salesman inner join CUSTOMER;
-- 32
select sname,city from salesman where city ='london';
-- 33
select ONUM,sname,cname from salesman join CUSTOMER join order1;
-- 34
select cname from CUSTOMER where 'snum'<>'salesman.snum';
-- 35
select cname,sname from CUSTOMER,salesman where 'comission'>'12%';
-- 36
select count(commission) from salesman,CUSTOMER where 'rating'>'100';
-- 37
select distinct(rating),cname from CUSTOMER,salesman;
-- 38
select cnum,cname from CUSTOMER where city = 'surat';
-- 39
select distinct(SNUM),sname from salesman;
-- 40
select distinct(city),sname from salesman;
-- 41:
select CNAME,CITY from CUSTOMER where RATING=100;
-- 42:
select * from Order1 where SNUM=1003;
-- 43:
select * from Order1 where SNUM=1004;
-- 44:
select * from Order1 where SNUM=(select SNUM from salesman where SNUM=1001);
-- 45:
 SELECT * FROM order1
     WHERE AMOUNT>(SELECT AVG(AMOUNT) FROM order1 WHERE ODATE='1999-10-04');
-- 46:
 SELECT ONUM,AMOUNT,SNUM FROM order1
     WHERE SNUM in(SELECT SNUM FROM salesman WHERE CITY='LONDON');
-- 47:
SELECT COMMISSION FROM salesman
     WHERE SNUM in(SELECT SNUM FROM customer WHERE CITY='LONDON');
-- 48:
 select * from CUSTOMER where CNUM >2002;
-- 49:
SELECT COUNT(*) FROM customer
     WHERE RATING>(SELECT AVG(RATING) FROM customer WHERE CITY='SURAT');
-- 50:
SELECT ONUM,AMOUNT FROM order1
     WHERE SNUM =(SELECT SNUM FROM customer WHERE CNAME='CHANDU');
-- 51:
select a.cname,b.amount from customer a,order1 b where a.cnum=b.cnum and amount>
		(select avg(amount) as amount from Order1)group by CNAME;
-- 52:
Select * from CUSTOMER where CNUM IN 
	(SELECT CNUM FROM Order1 where ODATE = '1999-10-03');
-- 53:
select SNUM,SNAME from salesman a where 0 < 
	(select count(*) from CUSTOMER where SNUM=a.SNUM);
-- 54:
SELECT ODATE,SUM(AMOUNT) FROM Order1 a Group by ODATE 
	Having SUM(AMOUNT) > 
		(SELECT 2000.00 + MAX(AMOUNT) 
		FROM Order1 b WHERE a.ODATE = b.ODATE);
-- 55:
select cnum,cname,rating from customer where rating=
	(select max(rating) from customer)group by city;
-- 56:
select b.SNUM,SNAME,CNAME,a.CITY from salesman b,CUSTOMER a where b.CITY = a.CITY;
-- 57:
Select a.snum from salesman a,customer b where b.rating >= 300 and a.snum = b.snum;
-- 58:
select SNAME from salesman a,customer b where a.CITY = b.CITY;
-- 59:
select * from salesman where city in
	(select city from customer);
-- 60:
select *from customer where rating>
	(select max(rating) from customer where city = 'ROME');


