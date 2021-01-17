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
As "Total Number Hired in 1986"
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
;

-- Counting How many managers
SELECT Count(*)
As "Total Number of Manager"
FROM departments d
JOIN dept_man dm 
ON d.dept_no=dm.dept_no
Join employees e
On e.emp_no = dm.emp_no
;

-- List first name, last name, and sex for employees whose first name is 
-- "Hercules" and last names begin with "B."

Select  first_name, last_name, sex
From employees 
Where left(last_name,1) ='B' and first_name = 'Hercules'
;

-- Count Number of Employees with the parameter from above
Select Count(*) 
As "Total Number of employees with First Name Hercules and last name beginning with B"
From employees 
Where left(last_name,1) ='B' and first_name = 'Hercules'
;
-- There are 20 employees with First Name = Hercules, and last name begins with B

-- List all employees in the Sales department, including their employee
-- number, last name, first name, and department name.

SELECT ed.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
JOIN dept_empl ed 
ON d.dept_no=ed.dept_no
Join employees e
On e.emp_no = ed.emp_no
Where d.dept_name = 'Sales'
;

-- Counting the Number of employees in the sales Department
Select Count(*)
As "Total Number of Sales"
FROM departments d
JOIN dept_empl ed 
ON d.dept_no=ed.dept_no
Join employees e
On e.emp_no = ed.emp_no
Where d.dept_name = 'Sales'
;
-- There 52,245 employees

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, 
-- first name, and department name. 
SELECT ed.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
JOIN dept_empl ed 
ON d.dept_no=ed.dept_no
Join employees e
On e.emp_no = ed.emp_no
Where d.dept_name = 'Sales' or d.dept_name = 'Development' 
;

-- Couting the the total employees in the Sales and Development Departments
Select Count(*)
As "Total Number of Sales and Development Employees"
FROM departments d
JOIN dept_empl ed 
ON d.dept_no=ed.dept_no
Join employees e
On e.emp_no = ed.emp_no
Where d.dept_name = 'Sales' or d.dept_name = 'Development' 
;
-- There 137,952 employees

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
-- Count how many employees share the same last name

SELECT COUNT ( DISTINCT last_name ) 
AS "Number of Employees With Same Last Name" 
FROM employees
;
-- Count how many each last names repeats and in Descending Order

Select last_name, Count(*)
From employees 
Group By last_name
Order By last_name DESC
;


