-- Use Index-Only Scans Where Possible

-- Ensure that the query can be resolved using only the index (without accessing the base table), which drastically improves performance.

CREATE INDEX idx_customer_email ON customers (email);
SELECT email 
FROM customers 
WHERE email LIKE 'john%';
