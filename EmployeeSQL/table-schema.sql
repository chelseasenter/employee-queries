-- start a new session --
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS dept_employee CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS employees CASCADE;


-- Titles: create & import --
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR,
	PRIMARY KEY (title_id)
);

COPY titles(title_id, title)
FROM 'C:\Users\chels\OneDrive\Desktop\UNC Boot Camp\Homework\sql-challenge\EmployeeSQL\data\titles.csv'
DELIMITER ','
CSV HEADER
;

SELECT * FROM titles
;

-- Employees: create & import --
CREATE TABLE employees (
	emp_no VARCHAR,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

COPY employees(emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
FROM 'C:\Users\chels\OneDrive\Desktop\UNC Boot Camp\Homework\sql-challenge\EmployeeSQL\data\employees.csv'
DELIMITER ','
CSV HEADER
;

SELECT * FROM employees
;

-- Salaries: create & import --
CREATE TABLE salaries (
	emp_no VARCHAR,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

COPY salaries(emp_no, salary)
FROM 'C:\Users\chels\OneDrive\Desktop\UNC Boot Camp\Homework\sql-challenge\EmployeeSQL\data\salaries.csv'
DELIMITER ','
CSV HEADER
;

SELECT * FROM salaries
;

-- Departments: create & import --
CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);

COPY departments(dept_no, dept_name)
FROM 'C:\Users\chels\OneDrive\Desktop\UNC Boot Camp\Homework\sql-challenge\EmployeeSQL\data\departments.csv'
DELIMITER ','
CSV HEADER
;

SELECT * FROM departments
;

-- Dept Manager: create & import --
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

COPY dept_manager(dept_no, emp_no)
FROM 'C:\Users\chels\OneDrive\Desktop\UNC Boot Camp\Homework\sql-challenge\EmployeeSQL\data\dept_manager.csv'
DELIMITER ','
CSV HEADER
;

SELECT * FROM dept_manager
;

-- Dept Employee: create & import --
CREATE TABLE dept_employee (
	emp_no VARCHAR,
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

COPY dept_employee(emp_no, dept_no)
FROM 'C:\Users\chels\OneDrive\Desktop\UNC Boot Camp\Homework\sql-challenge\EmployeeSQL\data\dept_emp.csv'
DELIMITER ','
CSV HEADER
;

SELECT * FROM dept_employee
;
