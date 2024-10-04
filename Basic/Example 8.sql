-- Use LIMIT or TOP to constrain returned rows

-- Limit the number of returned rows to improve query performance, especially in large datasets.

SELECT * 
FROM orders 
ORDER BY order_date DESC 
LIMIT 10;
