CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
)


CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(30)
)


CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(25)
)

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)


CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)


CREATE TABLE dept_emp (
	emp_no INT,	
	dept_no VARCHAR(4),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)

select * from employees
drop table dept_emp
