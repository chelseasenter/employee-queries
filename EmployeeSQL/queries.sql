-- 1. each employee: emp_no, last name, first name, sex, salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no=s.emp_no
;

-- 2. employees hired in 1986: first name, last name, hire date
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date < '1987-01-01'
	AND hire_date > '1985-12-31'
	;

-- 3. managers: dept_no, dept_name, manager's emp_no, last name, first name
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
INNER JOIN dept_manager AS dm ON d.dept_no=dm.dept_no
INNER JOIN employees AS e ON e.emp_no=dm.emp_no
;

-- 4. dept: emp_no, last name, first name, dept name
-- employees, dept, dept_emp
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_employee AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no
;

-- 5. first name "Hercules" + last name "B"
SELECT * FROM employees
    WHERE employees.first_name = 'Hercules'
	AND employees.last_name LIKE 'B%'
	;

-- 6. Sales Dept employees: emp_no, last name, first name, dept_name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_employee AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no
WHERE d.dept_no = 'd007'
;

-- 7. Sales & Development Dept employees: employee_no, last name, first name, dept_name
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_employee AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no
	WHERE d.dept_no = 'd007'
	OR d.dept_no = 'd005'
;

-- 8. Descending order: frequency of last names in all employees
SELECT last_name, COUNT(last_name)AS Frequency
  FROM employees
  GROUP BY last_name
  ORDER BY
  COUNT(last_name) DESC
  ;
