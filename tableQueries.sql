-- List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        emp.sex,
        slry.salary
FROM employees as emp
    LEFT JOIN salaries as slry
    ON (emp.emp_no = slry.emp_no)
ORDER BY emp.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT  dment.dept_no,
        dment.dept_name,
        depman.emp_no,
        emp.last_name,
        emp.first_name
FROM dept_manager AS depman
    INNER JOIN departments AS dment
        ON (depman.dept_no = dment.dept_no)
    INNER JOIN employees AS emp
        ON (depman.emp_no = emp.emp_no);

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        dment.dept_name
FROM employees AS emp
    INNER JOIN dept_emp AS depte
        ON (emp.emp_no = depte.emp_no)
    INNER JOIN departments AS dment
        ON (depte.dept_no = dment.dept_no)
ORDER BY emp.emp_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
SELECT first_name, last_name, birth_date, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        dment.dept_name
FROM employees AS emp
    INNER JOIN dept_emp AS depte
        ON (emp.emp_no = depte.emp_no)
    INNER JOIN departments AS dment
        ON (depte.dept_no = dment.dept_no)
WHERE dment.dept_name = 'Sales'
ORDER BY emp.emp_no;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        dment.dept_name
FROM employees AS emp
    INNER JOIN dept_emp AS depte
        ON (emp.emp_no = depte.emp_no)
    INNER JOIN departments AS dment
        ON (depte.dept_no = dment.dept_no)
WHERE dment.dept_name IN ('Sales', 'Development')
ORDER BY emp.emp_no;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;




