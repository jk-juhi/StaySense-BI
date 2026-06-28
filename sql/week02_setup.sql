CREATE DATABASE IF NOT EXISTS staysense_bi;

USE staysense_bi;

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);

INSERT INTO employees VALUES
(101,'Juhi','Kumar','Data Analytics',45000,'2025-01-15'),
(102,'Rahul','Sharma','Marketing',55000,'2024-09-20'),
(103,'Priya','Patel','HR',40000,'2025-03-12'),
(104,'Aman','Singh','Finance',60000,'2023-07-18'),
(105,'Neha','Joshi','Data Analytics',52000,'2024-11-10');

SELECT * FROM employees;

SELECT first_name, last_name
FROM employees;

SELECT *
FROM employees
WHERE salary > 50000;

SELECT *
FROM employees
WHERE department = 'Data Analytics';

SELECT *
FROM employees
ORDER BY salary DESC;

SELECT AVG(salary) AS average_salary
FROM employees;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

SELECT MAX(salary) AS highest_salary
FROM employees;