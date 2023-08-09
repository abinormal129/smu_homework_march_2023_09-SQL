-- 5. List first name, last name, and sex of each employee whose first name is Hercules
-- and whose last name begins with the letter B.

SELECT
	last_name,
	first_name,
	sex
FROM
	employees
WHERE
	first_name = 'Hercules'
	and last_name like 'B%'
order by
	last_name;