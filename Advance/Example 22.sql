-- Optimize Joins by Ordering Tables Correctly

-- Join smaller tables to larger ones first to reduce the amount of data being processed, especially in complex queries.

SELECT * 
FROM small_table st 
INNER JOIN large_table lt ON st.id = lt.small_id;
