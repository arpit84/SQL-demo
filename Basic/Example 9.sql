-- Leverage aggregate functions for large datasets

-- Use functions like SUM, COUNT, AVG to analyze large datasets efficiently.

SELECT department, COUNT(*) 
FROM employees 
GROUP BY department;
