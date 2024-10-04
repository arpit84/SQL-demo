-- Use Derived Tables for Complex Queries

-- Use derived tables (subqueries in the FROM clause) to simplify complex queries by breaking them into stages.

SELECT d.customer_id, SUM(d.total_spent)
FROM (SELECT customer_id, SUM(order_amount) AS total_spent FROM orders GROUP BY customer_id) d
WHERE d.total_spent > 1000;
