-- Prefer INNER JOIN for matching records

-- Use INNER JOIN to fetch only matching records from related tables.

SELECT customers.name, orders.order_amount 
FROM customers 
INNER JOIN orders ON customers.id = orders.customer_id;
