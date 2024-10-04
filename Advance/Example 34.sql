-- Optimize INSERT Performance with Bulk Inserts and Disabling Indexes

-- For large bulk inserts, consider temporarily disabling non-critical indexes and triggers to speed up the insertion process.

ALTER INDEX idx_order_amount DISABLE;
INSERT INTO orders (customer_id, order_date, amount) 
VALUES (1, '2023-05-01', 150.00);
ALTER INDEX idx_order_amount ENABLE;
