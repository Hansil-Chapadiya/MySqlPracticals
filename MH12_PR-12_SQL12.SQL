use students;
show tables;
select * from pet;

SELECT name,owner FROM pet WHERE owner LIKE 'G%';
SELECT name,species,owner FROM pet WHERE species LIKE '%R%';
SELECT * FROM pet WHERE price LIKE 300.00 or price LIKE 100.00;

SELECT name,owner from pet where owner like 'D____';
SELECT name,owner from pet where name like '%ff_';