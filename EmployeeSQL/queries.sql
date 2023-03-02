/* 1. List the employee number, last name, first name, sex, and salary of each employee. */
SELECT s.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees as e
INNER JOIN salaries as s on e.emp_no = s.emp_no
WHERE salary > 0;

/* 2. List the first name, last name, and hire date for the employees who were hired in 1986. */
SELECT first_name, last_name, hire_date 
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)=1986;

/* 3. List the manager of each department along with their department number, department name, 
employee number, last name, and first name. */
SELECT dm.dept_no, dep.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees as e
INNER JOIN dept_manager as dm on e.emp_no = dm.emp_no
INNER JOIN departments as dep on dm.dept_no = dep.dept_no;


/* 4. List the department number for each employee along with that employee’s employee number, 
last name, first name, and department name. */
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, dep.dept_name
FROM employees as e
INNER JOIN dept_emp as de on e.emp_no = de.emp_no
INNER JOIN departments as dep on de.dept_no = dep.dept_no;


/* 5. LList first name, last name, and sex of each employee whose first name is Hercules 
and whose last name begins with the letter B. */
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name='Hercules' and last_name like 'B%';



/* 6. List each employee in the Sales department, including their employee number, last name, 
and first name. */
SELECT dep.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees as e
INNER JOIN dept_emp as de on e.emp_no = de.emp_no
INNER JOIN departments as dep on de.dept_no = dep.dept_no
WHERE dep.dept_name='Sales';


/* 7. List each employee in the Sales and Development departments, including their employee number, 
last name, first name, and department name. */
SELECT e.emp_no, e.last_name, e.first_name, dep.dept_name 
FROM employees as e
INNER JOIN dept_emp as de on e.emp_no = de.emp_no
INNER JOIN departments as dep on de.dept_no = dep.dept_no
WHERE dep.dept_name='Sales' or dep.dept_name='Development';



/* 8. List the frequency counts, in descending order, of all the employee last names (that is, how 
many employees share each last name). */
SELECT last_name, COUNT(*) AS "Last_name_counts"
FROM employees
GROUP BY last_name 
ORDER BY "Last_name_counts" DESC;
