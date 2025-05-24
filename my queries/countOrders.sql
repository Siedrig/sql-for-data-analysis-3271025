SELECT C.CustomerID,
  C.FirstName,
  C.LastName,
  O.OrderID
FROM Customer C
  JOIN Orders O ON C.CustomerId = O.CustomerID
  ORDER BY C.CustomerID;