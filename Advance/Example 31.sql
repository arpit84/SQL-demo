--  Avoid Redundant ORDER BY in Subqueries

-- ORDER BY in subqueries may not be necessary, and it can slow down the query. Only use it in the main query if needed.

Example (Before):

SELECT * 
FROM (SELECT * FROM orders ORDER BY order_date) sub 
WHERE sub.amount > 100;


Example (After):

SELECT * 
FROM orders 
WHERE amount > 100 
ORDER BY order_date;
