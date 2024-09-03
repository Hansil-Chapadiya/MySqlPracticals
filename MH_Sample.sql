use students;
drop table stud_mast;
create table stud_mast(
    name varchar(20),
    er int(10),
    sub_1 int(3),
    sub_2 int(3),
    sub_3 int(3)
);

describe stud_mast;
insert into stud_mast values('hm1', 1, 100,100,100),
                     ('hm2', 2, 98,98,99),
                     ('hm3', 3, 94,95,100);

