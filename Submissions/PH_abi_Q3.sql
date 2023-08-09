-- 3. List the manager of each department along with their department number, department name,
-- employee number, last name, and first name.

-- departments: dept_no, dept_name
-- dept_manager: dept_no, emp_no
-- employees: emp_no, last_name, first_name

SELECT
	d.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
FROM
	employees as e
	join dept_manager as dm on e.emp_no = dm.emp_no
	join departments as d on dm.dept_no = d.dept_no
order by
	d.dept_no,
	e.last_name;