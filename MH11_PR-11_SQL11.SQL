use students;
show tables;
select * from pet;

/*Between*/
select name from pet where name between 'C' AND 'E';
select name,price from pet where price between 100 AND 300; 
select name,price,birth from pet where birth between "1989-01-01"  AND "1997-01-01"; 

/*In*/

select name,owner from pet where owner In('Gwen','Benny');
select name,owner,species from pet where species In('Bird','Snake');
select name,sex,species from pet where sex in('f');