-- Harness indexing for faster data retrieval

-- Index columns frequently used in WHERE, JOIN, or ORDER BY clauses to speed up queries.

CREATE INDEX idx_order_date ON orders(order_date);
