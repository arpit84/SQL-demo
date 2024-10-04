-- Implement CASE statements for conditional logic

-- Use CASE to apply conditional logic in SQL queries.

SELECT name, 
  CASE 
    WHEN age < 18 THEN 'Minor' 
    ELSE 'Adult' 
  END AS age_group 
FROM users;
