use students;
show tables;

select * from pet;

/*Delete rows*/
Delete from pet where name="Fluffy";
Delete from pet where owner="Gwen";
Delete from pet where sex="m";

select * from pet;


/*Delete table*/
Delete from pet;
