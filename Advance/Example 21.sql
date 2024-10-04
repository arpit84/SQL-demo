-- Use Partitioning for Large Tables

-- Partition large tables to break them into smaller, more manageable pieces for faster query performance. Queries will only scan relevant partitions instead of the whole table.

CREATE TABLE orders_partitioned (
  order_id INT,
  order_date DATE,
  customer_id INT,
  amount DECIMAL(10, 2)
)
PARTITION BY RANGE (YEAR(order_date)) (
  PARTITION p2022 VALUES LESS THAN (2023),
  PARTITION p2023 VALUES LESS THAN (2024)
);
