use students;
show tables;
CREATE TABLE IF NOT EXISTS products (
         productID    INT UNSIGNED  NOT NULL AUTO_INCREMENT,
         productCode  CHAR(3)       NOT NULL DEFAULT '',
         name         VARCHAR(30)   NOT NULL DEFAULT '',
         quantity     INT UNSIGNED  NOT NULL DEFAULT 0,
         price        DECIMAL(7,2)  NOT NULL DEFAULT 99999.99,
         PRIMARY KEY  (productID)
       );

describe products;   
INSERT INTO products VALUES (1001, 'PEN', 'Pen Red', 5000, 1.23),
                            (1002, 'PEN', 'Pen Blue',  8000, 1.25),
							(1003, 'PEN', 'Pen Black', 2000, 1.25),
							(1004,'PEC', 'Pencil 2B', 10000, 0.48),
							(1005,'PEC', 'Pencil 2H', 8000, 0.49);
select * from products;

/*Arithmetic*/
/*1)Addition*/
select name ,price, Price+1 "Total_Price" from products;

/*2)Subtraction*/
select *, Price-1 "Upadated_Price" from products where name="Pen Red";

/*3)Multiplication*/
select name ,quantity,price, quantity* Price "Total_Price" from products;

/*4)Division*/
Update products set quantity=quantity/2;
select name,quantity,price from products;
Update products set quantity=quantity*2;

/*Relational*/
/*<=*/
select name,quantity,price from products where price<=1;

/*>=*/
select name,quantity,price from products where price>=1;

/* = & != */
select name,quantity,price from products where productcode="PEC" or price<>1;

/*Logical*/
/*OR*/
update products set price=price*2 where productcode="PEN" or price<1;
select name,productcode,price from products;

/*AND*/
update products set price=price/2 where productcode="PEN" && price>=1;
select name,productcode, price from products;

/*NOT*/
select name,quantity,price from products where Not(quantity > 5000);
