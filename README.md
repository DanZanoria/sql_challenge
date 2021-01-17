### sql_challenge


## QBD Images
* Please Ignore the PK in employee_man. I notice that error too late. And I dont feel like recreating the Project QBD. The FinalCreateTable.SQL has that error fix
![Visual](Images/FinalQBD.png)

## Creating Table

*Drop table IF EXISTS employees

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
);*

![Employee](Images/employee.png)

