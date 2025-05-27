BEGIN;
CREATE OR REPLACE VIEW V_OrderSummary AS
SELECT MONTH(OrderDate) as OrderMonth,
  YEAR(OrderDate) as OrderYear,
  Salesperson,
  COUNT(1) as AmountofOrders,
  SUM(TotalDue) as TotalSales
FROM V_Orders
  JOIN Salesperson ON SalespersonID = SalespersonID
GROUP BY MONTH(OrderDate),
  YEAR(OrderDate),
  Salesperson;
COMMIT;