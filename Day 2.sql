#Create database named Employees 
Create database Employees;
use Employees;

#Create Table Employee
CREATE TABLE Employee(
ID INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(100),
Age INT,
Department VARCHAR(100),
Salary INT,
Hire_date date
);

#Command to view the whole table
SELECT * FROM Employee;

#Insert 10 records into the table
INSERT INTO Employee(Name, Age, Department, Salary, Hire_date)
VALUES('Jane Smith', 27, 'HR', 50000, '2023-05-12'),
('Joe Meatle', 24, 'Finance', 70000, '2023-08-08'),
('Bricks Wager', 29, 'IT', 400000, '2020-03-01'),
('Calmon Polo', 25, 'Finance', 50000, '2023-05-12'),
('Henrick Mulwa', 28, 'Accounts', 70000, '2022-07-10'),
('Garner Potter', 35, 'HR', 90000, '2022-02-10'),
('Bernick Mellow', 32, 'IT', 120000, '2023-08-12'),
('Duham Pow', 23, 'IT', 100000, '2023-10-12'),
('Hruck Tuck', 26, 'Admin', 50000, '2022-04-09'),
('Nahji Abdallah', 28, 'Finance', 90000, '2021-05-05');

#Select specific columns
SELECT Name,Age, Salary FROM Employee;

#Filter the records using a condition statement
SELECT Name, Salary FROM Employee WHERE Department = 'IT';

#Sorting data by salary column
SELECT Name, Age, Salary, Department FROM Employee ORDER BY Salary DESC;

#Filter to the top 3 highest paid employees
SELECT Name, Age, Salary, Department FROM Employee ORDER BY Salary DESC LIMIT 3;

# Find the unique departments in the table
SELECT DISTINCT Department FROM Employee;

#Query data with employees either in a certain department or with over 70k salary
SELECT Name, Salary,Department from Employee WHERE Department = 'IT' OR Salary>70000;

#Select 2 youngest employee, show name and date they were hired. 
SELECT Name, Hire_date from Employee ORDER BY Age ASC LIMIT 2;

#Select Distinct departments and sort them in ascending order.
SELECT DISTINCT Department FROM Employee ORDER BY Department ASC;