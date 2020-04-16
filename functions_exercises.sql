-- Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name;

-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name, last_name;


-- Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY last_name, first_name;


-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!

SELECT * FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no;
-----------------------------------new function exercise below---------------------------------------
--Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no;

-- Now reverse the sort order for both queries.

SELECT * FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no DESC;


-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

SELECT * FROM employees WHERE hire_date > '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;

-----------------------------------new function exercise below---------------------------------------
-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT *, datediff(now(), hire_date) FROM employees WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;

SELECT * FROM employees WHERE hire_date > '199%';

SELECT * FROM employees WHERE hire_date LIKE '%12-25';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE last_name NOT LIKE '%qu%'
AND last_name LIKE '%q%';

