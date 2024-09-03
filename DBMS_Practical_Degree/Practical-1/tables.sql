-- DEPOSITE TABLE
create table DEPOSITE(
    act_no VARCHAR(8) primary key,
    c_name VARCHAR(18),
    b_name VARCHAR(18),
    amount DECIMAL(8,2),
    a_date DATE
);

-- BRANCH TABLE
create table BRANCH(
    b_name VARCHAR(18),
    city VARCHAR(18)
);

-- CUSTOMER TABLE
create table CUSTOMERS(
    c_name VARCHAR(19),
    city VARCHAR(18)
);

-- BORROW TABLE
create table BORROW(
    loan_no VARCHAR(5),
    c_name VARCHAR(18),
    b_name VARCHAR(18),
    amount DECIMAL(8,2)
)

