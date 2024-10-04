-- Use Materialized Views for Complex Queries

-- Materialized views store query results physically, making them ideal for frequently run complex queries where real-time data isn't critical.

CREATE MATERIALIZED VIEW sales_summary AS
SELECT product_id, SUM(amount) AS total_sales
FROM orders
GROUP BY product_id;
