-- Create the employee table
CREATE TABLE employee_test (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10, 2),
    date_ DATE
);

-- Insert 10 records into the employee table
INSERT INTO employee_test (emp_id, name, salary, date_) VALUES
(1, 'Hansil', 50000.00, '2022-02-11'),
(2, 'Alice', 60000.00, '2022-03-15'),
(3, 'Andrew', 55000.00, '2022-03-16'),
(4, 'Jenny', 62000.00, '1998-02-17'),
(5, 'Tony', 58000.00, '1998-02-18'),
(6, 'Steve', 53000.00, '1995-02-19'),
(7, 'Barton', 61000.00, '1995-02-13'),
(8, 'Loki', 57000.00, '2004-02-12'),
(9, 'Marc', 59000.00, '2023-02-11'),
(10, 'Oggy', 54000.00, '2018-02-11');


-- Calculate the sum of salaries
SELECT SUM(salary) AS total_salary
FROM employee_test;

-- Calculate the average of salaries
SELECT AVG(salary) AS average_salary
FROM employee_test;

-- order by Name
SELECT * FROM employee_test ORDER BY salary;

