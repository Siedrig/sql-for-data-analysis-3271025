SELECT COUNT(DISTINCT CustomerID)
FROM Orders;

CREATE VIEW CustomerOrderSummary AS
SELECT State,
  AVG(TotalDue) AS AverageTotalDue,
  MIN(TotalDue) AS MinimumTotalDue,
  MAX(TotalDue) AS MaximumTotalDue,
  SUM(TotalDue) AS TotalSales
FROM Customer C
  JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY State;