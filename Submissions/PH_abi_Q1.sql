-- 1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT distinct
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM
	employees as e
	join salaries as s on e.emp_no = s.emp_no
order by
	e.last_name;