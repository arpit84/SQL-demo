-- Balance subquery usage judiciously for optimal performance

-- Use subqueries carefully as they can be inefficient if not necessary.

SELECT name 
FROM customers 
WHERE id IN (SELECT customer_id FROM orders);
