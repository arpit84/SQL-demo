-- Choose UNION ALL over UNION for enhanced efficiency

-- Use UNION ALL when you don’t need to eliminate duplicates, as it’s more efficient than UNION.

SELECT name FROM employees 
UNION ALL 
SELECT name FROM contractors;
