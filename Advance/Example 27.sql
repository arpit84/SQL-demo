-- Use Batch Processing for Bulk Inserts/Updates

-- Instead of running multiple individual INSERT or UPDATE statements, use batch processing to reduce overhead and improve performance.

INSERT INTO orders (customer_id, order_date, amount) 
VALUES (1, '2023-05-01', 150.00), 
       (2, '2023-05-02', 200.00), 
       (3, '2023-05-03', 300.00);
