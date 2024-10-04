-- Use Window Functions Instead of Self-Joins

-- Window functions like ROW_NUMBER(), RANK(), and SUM() can perform operations across rows of a result set without needing self-joins or subqueries, making the query faster.

SELECT customer_id, 
       order_date, 
       ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date DESC) AS rank
FROM orders;
