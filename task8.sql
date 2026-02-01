USE intern_training_db;

-- Employees with their department names
SELECT e.emp_id, e.name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- Employees even without departments
SELECT e.emp_id, e.name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- All departments including empty ones
SELECT e.emp_id, e.name, d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;


-- FULL JOIN simulation
SELECT e.emp_id, e.name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id

UNION

SELECT e.emp_id, e.name, d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;


SELECT e.name AS employee_name,
       d.department_name AS dept_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;
