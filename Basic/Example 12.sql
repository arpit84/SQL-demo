-- Exercise caution with wildcard characters in LIKE clauses

-- Summary: Avoid using leading wildcards (%) in LIKE queries, as they can cause full table scans.

SELECT * 
FROM products 
WHERE product_name LIKE 'Shoes%';
