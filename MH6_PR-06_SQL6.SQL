use students;
show tables;

/*ALL ROWS & ALL COLUMNS*/
select * from pet;

/*ALL ROWS & SELECTED COLUMNS*/
select owner,name from pet;

/*SELECTED ROWS & SELECTED COLUMNS*/
select name,birth from pet where owner="Gwen" || owner ="Benny";

/*SELECTED ROWS & ALL COLUMNS*/
select * from pet where owner="Harold" || owner="Gwen";