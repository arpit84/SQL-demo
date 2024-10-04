-- Opt for EXISTS over IN or NOT IN clauses

-- Use EXISTS for better performance when checking for the existence of records.

SELECT name 
FROM customers c
WHERE EXISTS (SELECT 1 FROM orders o WHERE o.customer_id = c.id);
