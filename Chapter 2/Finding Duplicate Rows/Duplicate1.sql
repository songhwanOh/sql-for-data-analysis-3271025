SELECT Customer.CustomerID,
  Customer.FirstName,
  Customer.LastName,
  COUNT(1) as NUM_ORDERS -- count no. of values in first column
FROM Customer
  JOIN Orders ON Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  Customer.FirstName,
  Customer.LastName
ORDER BY NUM_ORDERS DESC;
/*
 -- A duplicte row happends if the record is not unique
 -- this means there are two or more rows that are exactly the same!
 */