SELECT C.FirstName,
  C.CustomerId,
  O.OrderId,
  Sum(O.TotalDue),
  COUNT(O.OrderID)
FROM Customer C
  JOIN Orders O ON C.CustomerId = O.CustomerID
GROUP BY C.CustomerID,
  C.FirstName
ORDER BY C.CustomerID;