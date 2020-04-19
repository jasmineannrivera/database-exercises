USE employees;
# Using the example in the Associative Table Joins section as a guide, write a query that
# shows each department along with the name of the current manager for that department.

SELECT d.dept_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) as `Department Manager`
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON e.emp_no = dm.emp_no
WHERE dm.to_date > CURDATE()
ORDER BY d.dept_name;

# Find the name of all departments currently managed by women.
