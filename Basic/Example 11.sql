-- Use stored procedures to minimize network traffic

-- Stored procedures encapsulate logic on the server-side, reducing back-and-forth network traffic.

CREATE PROCEDURE GetCustomerOrders(IN customerId INT)
BEGIN
  SELECT * 
  FROM orders 
  WHERE customer_id = customerId;
END;
