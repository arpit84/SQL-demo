-- Utilize GROUP BY to cluster similar data

-- Group data based on common attributes to analyze it effectively.

SELECT category, COUNT(*) 
FROM products 
GROUP BY category;
