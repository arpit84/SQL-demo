-- Normalize When Appropriate, But Consider Denormalization for Heavy Reads

-- Normalize your schema for efficient inserts, updates, and deletes, but consider denormalizing when there’s a heavy read requirement to avoid complex joins.

Example (Normalized):

Separate customer details and orders into two tables, joined via customer_id.


Example (Denormalized):

Combine customer and order information into a single table for faster reads, at the cost of data redundancy.
