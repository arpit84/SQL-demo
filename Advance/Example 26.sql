-- Analyze and Tune Query Execution Plans

-- Use query execution plans (EXPLAIN or EXPLAIN ANALYZE) to see how the database is interpreting and executing your query, allowing you to optimize it based on the actual execution path.

EXPLAIN ANALYZE 
SELECT * 
FROM orders 
WHERE order_date > '2023-01-01';
