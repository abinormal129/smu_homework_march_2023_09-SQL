-- 7. List each employee in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.

-- departments: dept_no (d007, d005), dept_name (Sales, Development)
-- dept_emp: emp_no, dept_no
-- employees: emp_no, last_name, first_name

SELECT
	d.dept_name,
	e.last_name,
	e.first_name,
	e.emp_no
FROM
	departments as d
	JOIN dept_emp as de on d.dept_no = de.dept_no
	JOIN employees as e on de.emp_no = e.emp_no
WHERE
	de.dept_no = 'd007'
	or de.dept_no = 'd005'
order by
	d.dept_name,
	last_name;