-- Simplify queries with temporary tables

-- Use temporary tables to store intermediate results, breaking down complex queries into manageable steps.

CREATE TEMPORARY TABLE temp_orders AS 
SELECT customer_id, SUM(order_amount) AS total_spent
FROM orders
GROUP BY customer_id;
