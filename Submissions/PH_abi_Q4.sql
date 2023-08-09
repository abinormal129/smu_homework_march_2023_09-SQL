-- 4. List the department number for each employee along with that employee’s employee number,
-- last name, first name, and department name.

-- departments-dept_name, dept_no
-- dept_emp-emp_no, dept_no
-- employees-emp_no, first_name, last_name

SELECT
	d.dept_no,
	d.dept_name,
	e.last_name as emp_last_name,
	e.first_name as emp_first_name,
	e.emp_no
FROM
	departments as d
	join dept_emp as de on d.dept_no = de.dept_no
	join employees as e on de.emp_no = e.emp_no
order by
	d.dept_no,
	e.last_name;