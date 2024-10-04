-- Use Set-Based Operations Instead of Cursors

-- Cursors process data row by row, which can be slow for large datasets. Use set-based operations to handle multiple rows in a single operation.

UPDATE employees 
SET salary = salary * 1.05 
WHERE department_id = 10;
