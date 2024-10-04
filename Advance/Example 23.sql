-- Avoid Using Correlated Subqueries

-- Correlated subqueries can be slow because they execute for each row in the outer query. Replace them with JOIN or non-correlated subqueries where possible.

Example (Before):

SELECT name 
FROM customers c 
WHERE (SELECT COUNT(*) FROM orders o WHERE o.customer_id = c.id) > 5;

Example (After):

SELECT c.name 
FROM customers c 
JOIN orders o ON c.id = o.customer_id
GROUP BY c.name 
HAVING COUNT(o.order_id) > 5;
