-- Apply WHERE clauses early to filter data

-- Place filters early in the query to reduce the amount of data being processed.

SELECT * 
FROM orders 
WHERE order_date > '2023-01-01';
