-- This is the sql that comes after the ViewTable. Or Final CreateTable if you skipped it.

Select * From employees
;

Select * From employees 
Where hire_date
Between '1986-01-01' And '1986-12-31'
Order By hire_date ASC
;