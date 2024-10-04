-- Keep your SQL queries simple and readable with table aliases

-- Use table aliases to make queries more readable, especially with multiple joins.

SELECT c.name, o.order_date 
FROM customers c 
JOIN orders o ON c.id = o.customer_id;
