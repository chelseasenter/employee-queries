# SQL Homework - Employee Database: A Mystery in Two Parts

![sql.png](EmployeeSQL/visuals/sql_hp.PNG)
 
## Background

I was tasked with analyzing the employee data for the fictional company - Pewlett Hackard. 

### Data Engineering & Data Analysis
Given six csv files, I:
> created tables to hold the data from the files
> stored the tables in a SQL database
> used queries to answer questions about the data

### About the Project

This repository, __sql-challenge__, contains the main project folder, [EmployeeSQL](EmployeeSQL) where all files are stored. Within this folder contains:
__table-schema.sql__ -- creates tables, copies csv file information, displays resulting table
__queries.sql__ -- contains the queries used for data analysis
> 1. Details of Employees: employee number, last name, first name, sex, and salary <p>
> 2. Hired in 1986: list first name, last name, and hire date for employees who were hired in 1986. <p>
> 3. Manager Information: department number, department name, the manager's employee number, last name, first name. <p>
> 4. Employee Departments: employee number, last name, first name, and department name. <p>
> 5. 'Hercules' + 'B': first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." <p>
> 6. Sales Department: employee number, last name, first name, and department name. <p>
> 7. Sales and Development Departments: employee number, last name, first name, and department name. <p>
> 8. Descending order: frequency count of employee last names. <p>
__[visuals](EmployeeSQL/visuals) folder__ -- contains images pertinent to the project
>> [data board](EmployeeSQL/visuals/data-board.PNG) -- a display of all opened csv files for ERD reference <p>
>> [ERD visual](EmployeeSQL/visuals/erd-visual.PNG) -- a visual of a quickDBD to show the ERD  <p>
>> [ERD visual with code](EmployeeSQL/visuals/erd-visual-code.PNG) -- the ERD visual with included code that was used to create it <p>
> [data](EmployeeSQL/data) folder --  contains the six csv files used in this project
>> [departments](EmployeeSQL/data/departments.csv) <p>
>> [dept_emp](EmployeeSQL/data/dept_emp.csv) <p>
>> [dept_manager](EmployeeSQL/data/dept_manager.csv) <p>
>> [employees](EmployeeSQL/data/employees.csv) <p>
>> [salaries](EmployeeSQL/data/salaries.csv) <p>
>> [titles](EmployeeSQL/data/titles.csv) <p>



## Instructions

#### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables. Feel free to use a tool like [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

* Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

  * For the primary keys check to see if the column is unique, otherwise create a [composite key](https://en.wikipedia.org/wiki/Compound_key). Which takes to primary keys in order to uniquely identify a row.
  * Be sure to create tables in the correct order to handle foreign keys.

* Import each CSV file into the corresponding SQL table. **Note** be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

#### Data Analysis

Once you have a complete database, do the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Submission

* Create an image file of your ERD.

* Create a `.sql` file of your table schemata.

* Create a `.sql` file of your queries.

* (Optional) Create a Jupyter Notebook of the bonus analysis.

* Create and upload a repository with the above files to GitHub and post a link on BootCamp Spot.

* Ensure your repository has regular commits (i.e. 20+ commits) and a thorough README.md file

### Copyright

Trilogy Education Services © 2019. All Rights Reserved.
