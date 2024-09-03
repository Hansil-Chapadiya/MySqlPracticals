use students;
show tables;
/* Outsider */
drop table pet;
create table pet(name varchar(20),owner varchar(20),species char(10),sex char(1),birth date, death date, price float(8,2));
insert into pet values('Fluffy','Harold','Cat','f','1993-02-04',NULL,100.00),
    ('Claws','Gwen','Cat','m','1994-03-17',NULL,200.00),
    ('Buffy','Harold','Dog','f','1989-05-13',NULL,300.00),
    ('Fang','Benny','Dog','m','1989-05-13',NULL,400.00),
    ('Bowser','Diane','Dog','m','1990-08-27',NULL,500.00),
    ('Chirpy','Gwen','Bird','f','1998-09-11','1995-07-29',350.00),
    ('Whistler','Gwen','Bird',NULL,'1997-12-09',NULL,250.00),
    ('Slim','Benny','Snake','m','1996-04-29',NULL,120.00);
/*/OutSider*/
select * from pet;

/* Change the Rows*/
update pet set name = "Puppy" ;
update pet set owner = "Gwen" ;
update pet set species = NULL ;
select name,owner,species from pet;

/*Change the Column*/
update pet set name = "Fluffy" where  birth="1993-02-04";
update pet set owner = "Parker" where birth="1993-02-04";
update pet set species = "Dog" where  birth = "1993-02-04";
select name,owner,species from pet where sex='f';