CREATE DATABASE EmployeeDB;
USE EmployeeDB;
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary FLOAT,
    department_id INT
);
INSERT INTO Employees (id, name, age, salary, department_id)
VALUES
    (1, 'John Doe', 35, 5000.00, 1),
    (2, 'Jane Smith', 28, 4000.00, 2),
    (3, 'David Johnson', 42, 6000.00, 1),
    (4, 'Emily Davis', 31, 5500.00, 3),
    (5, 'Michael Brown', 37, 4500.00, 2);
CREATE TABLE Departments (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    location VARCHAR(50)
);
INSERT INTO Departments (id, name, location)
VALUES
    (1, 'Sales', 'New York'),
    (2, 'Marketing', 'Los Angeles'),
    (3, 'HR', 'Chicago');
SELECT * FROM Employees WHERE age > 30;
SELECT * FROM Employees WHERE salary < 5000;
SELECT * FROM Employees WHERE age BETWEEN 25 AND 35;
SELECT * FROM Employees WHERE department_id IN (SELECT id FROM Departments WHERE name = 'Sales');
SELECT * FROM Employees 
WHERE department_id IN (SELECT id FROM Departments WHERE name = 'Marketing' AND location = 'New York');
SELECT * FROM Employees WHERE salary > (SELECT AVG(salary) FROM Employees);
