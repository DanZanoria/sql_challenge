-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

-- Create the tables we will need.

-- Im purposefully put a IF EXIST DROP just in case i make an error and I dont have to create a new database.
-- I had plenty of Import and type errors. Dropping tables made is easier to fix the table

Drop table IF EXISTS employees

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

Drop table IF EXISTS titles

CREATE TABLE "titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR  NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

Drop table IF EXISTS salaries

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" money   NOT NULL
);

Drop table IF EXISTS departments

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

Drop table IF EXISTS dept_empl

CREATE TABLE "dept_empl" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR   NOT NULL
);

Drop table IF EXISTS dept_man

CREATE TABLE "dept_man" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" int   NOT NULL
)
;

-- Next Step is putting the Data into the tables created. A new .sql will be created for it.



ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_empl" ADD CONSTRAINT "fk_dept_empl_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_empl" ADD CONSTRAINT "fk_dept_empl_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_man" ("dept_no");

ALTER TABLE "dept_man" ADD CONSTRAINT "fk_dept_man_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_man" ADD CONSTRAINT "fk_dept_man_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
