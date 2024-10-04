-- Minimize Data Type Conversion

-- Avoid implicit data type conversion in JOIN or WHERE clauses. Mismatched data types can slow down query execution.

Example (Before):

SELECT * 
FROM employees 
WHERE employee_id = '123';  -- String comparison


Example (After):

SELECT * 
FROM employees 
WHERE employee_id = 123;  -- Integer comparison
