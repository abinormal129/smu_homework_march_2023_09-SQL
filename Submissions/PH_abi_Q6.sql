-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

-- departments: dept_no (d007), dept_name (Sales)
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
order by
	last_name;