use students;
show tables;

select * from pet;
Drop table pet;

show tables;


create table pet(name varchar(20),owner varchar(20),species char(10),sex char(1),birth date, death date);
insert into pet values('Fluffy','Harold','Cat','f','1993-02-04',NULL),
    ('Claws','Gwen','Cat','m','1994-03-17',NULL),
    ('Buffy','Harold','Dog','f','1989-05-13',NULL),
    ('Fang','Benny','Dog','m','1989-05-13',NULL),
    ('Bowser','Diane','Dog','m','1990-08-27',NULL),
    ('Chirpy','Gwen','Bird','f','1998-09-11','1995-07-29'),
    ('Whistler','Gwen','Bird',NULL,'1997-12-09',NULL),
    ('Slim','Benny','Snake','m','1996-04-29',NULL);

select * from pet;

truncate pet;

select * from pet;