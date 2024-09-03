use students;
Create table IF NOT EXISTS salesman(
    SNUM int(6) PRIMARY KEY,
    SNAME varchar(30),
    CITY varchar(30),
    COMMISSION FLOAT(8)
);
Insert into salesman values (1001,'PIYUSH','LONDON',0.12),
                            (1002,'NIRAJ','SURAT',0.13),
                            (1003,'MITI','LONDON',0.11),
                            (1004,'RAJESH','BARODA',0.15),
                            (1005,'ANAND','NEW DELHI',0.1),
                            (1006,'RAM','PATAN',0.1),
                            (1007,'LAXMAN','BOMBAY',0.9);

select * from salesman;