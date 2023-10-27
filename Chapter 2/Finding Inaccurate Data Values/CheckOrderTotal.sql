SELECT OrderItem.OrderId,
  Orders.TotalDue,
  SUM(Price * Quantity) as NewTotalDue
FROM OrderItem
  JOIN Product ON OrderItem.ProductID = Product.ProductID
  JOIN Orders ON OrderItem.OrderID = Orders.OrderID
GROUP BY OrderItem.OrderId,
  Orders.TotalDue;
-- 
-- use WHERE clause to filter and to find possible anomalies, and prepare applications for what to do next.