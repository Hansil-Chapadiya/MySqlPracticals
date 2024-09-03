-- JOB TABLE
CREATE TABLE JOB(
    job_id VARCHAR(15),
    job_title VARCHAR(30),
    min_sal DECIMAL(7, 2),
    max_sal DECIMAL(7, 2)
);

-- EMPLOYEE TABLE
CREATE TABLE EMPLOYEE(
    emp_no DECIMAL(3),
    emp_name VARCHAR(30),
    emp_sal DECIMAL(8, 2),
    emp_comm DECIMAL(6, 1),
    dept_no DECIMAL(3)
);

-- DEPOSITE TABLE
CREATE TABLE DEPOSITE_PR_2(
    act_no VARCHAR(8) primary key,
    c_name VARCHAR(18),
    b_name VARCHAR(18),
    amount DECIMAL(8, 2),
    a_date DATE
);

-- BORROW TABLE
CREATE TABLE BORROW_PR_2(
    loan_no VARCHAR(5),
    c_name VARCHAR(18),
    b_name VARCHAR(18),
    amount DECIMAL(8, 2)
)