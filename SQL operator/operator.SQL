DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
employee_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INTEGER,
department VARCHAR(50),
salary DECIMAL(10,2)
);

INSERT INTO employees(employee_id,first_name,last_name,age,department,salary)
VALUES
(1,'John','Doe',30,'Sales',50000.00),
(2,'Jane','Doe',30,'IT',60000.00),
(3,'Bryant','Ed',30,'Marketing',40000.00),
(4,'Jack','Black',30,'Manager',100000.00),
(5,'Dawson','Ronnie',30,'Finance',40000.00);

SELECT * FROM employees;
--finding max and min salary
SELECT MIN(salary) AS min_salary,MAX(salary) AS max_salary FROM employees;
--find employees whose first name starts with j
SELECT * FROM employees WHERE first_name LIKE 'J%';

SELECT * FROM employees where department = 'IT' AND salary > 70000;
--update the table
UPDATE employees SET salary = 80000.00 WHERE department = 'Finance';
SELECT * FROM employees;