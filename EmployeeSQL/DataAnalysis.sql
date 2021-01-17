-- This is the sql that comes after the ViewTable. Or Final CreateTable if you skipped it.

-- Reviewing the employees tables
Select * From employees
;

-- Getting all the employees hired in 1986
Select * From employees 
Where hire_date
Between '1986-01-01' And '1986-12-31'
Order By hire_date ASC
;

--Counting the number of employees hired in 1986. 
Select Count(*) From employees 
Where hire_date
Between '1986-01-01' And '1986-12-31'
;

-- Join 3 tables. With the Departments, managers. Using the Departmet, dep_man, and employee.
SELECT d.dept_no, d.dept_name, dm.emp_no,
e.last_name, e.first_name
FROM departments d
JOIN dept_man dm 
ON d.dept_no=dm.dept_no
Join employees e
On e.emp_no = dm.emp_no