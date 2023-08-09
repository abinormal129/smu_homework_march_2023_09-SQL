-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT
	last_name,
	first_name,
	hire_date
FROM
	employees
WHERE
	hire_date >= '1986-01-01'
	AND hire_date < '1987-01-01'
order by
	hire_date,
	last_name;