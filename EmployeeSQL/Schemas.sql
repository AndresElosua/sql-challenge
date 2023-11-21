
DROP TABLE Titles;
-- Titles table
CREATE TABLE Titles (
    Title_id VARCHAR(200) PRIMARY KEY NOT NULL,
    Title VARCHAR(100)
);

DROP TABLE Employees;
-- Employees table
CREATE TABLE Employees (
    Emp_no VARCHAR PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    Birth_date VARCHAR,
    First_name VARCHAR NOT NULL,
    Last_name VARCHAR NOT NULL,
    Sex VARCHAR NOT NULL,
    Hire_date VARCHAR,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(Title_id)
);

DROP TABLE departments;
-- Departments table
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
);

DROP TABLE dept_manager;
-- Dept_Manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR(200) NOT NULL,
    emp_no VARCHAR(200) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no, emp_no)
);

DROP TABLE Salaries;
-- Salaries table
CREATE TABLE Salaries (
    Emp_no VARCHAR(200) NOT NULL,
    Salary FLOAT,
    FOREIGN KEY (Emp_no) REFERENCES Employees(Emp_no),
    PRIMARY KEY (Emp_no)
);

DROP TABLE DEPT_EMP;
-- DEPT_EMP table
CREATE TABLE DEPT_EMP (
    emp_no VARCHAR(200) NOT NULL,
	dept_no VARCHAR(200) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (Dept_no, Emp_no)
);