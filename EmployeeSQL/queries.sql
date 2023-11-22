-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT E.Emp_no, E.Last_name, E.First_name, E.Sex, S.Salary
FROM Employees E
JOIN Salaries S ON E.Emp_no = S.Emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT First_name, Last_name, Hire_date
FROM Employees
WHERE Hire_date LIKE '%1986';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT DM.dept_no, D.dept_name, DM.emp_no, E.Last_name, E.First_name
FROM dept_manager DM
JOIN Employees E ON DM.emp_no = E.Emp_no
JOIN departments D ON DM.dept_no = D.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT DE.dept_no, E.Emp_no, E.Last_name, E.First_name, D.dept_name
FROM DEPT_EMP DE
JOIN Employees E ON DE.emp_no = E.Emp_no
JOIN departments D ON DE.dept_no = D.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT First_name, Last_name, Sex
FROM Employees
WHERE First_name = 'Hercules' AND Last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT E.Emp_no, E.Last_name, E.First_name
FROM Employees E
JOIN DEPT_EMP DE ON E.Emp_no = DE.emp_no
JOIN departments D ON DE.dept_no = D.dept_no
WHERE D.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT E.Emp_no, E.Last_name, E.First_name, D.dept_name
FROM Employees E
JOIN DEPT_EMP DE ON E.Emp_no = DE.emp_no
JOIN departments D ON DE.dept_no = D.dept_no
WHERE D.dept_name IN ('Sales', 'Development');

-- List the frequency counts, in descending order, of all the employee last names.
SELECT Last_name, COUNT(*) AS Frequency
FROM Employees
GROUP BY Last_name
ORDER BY Frequency DESC;