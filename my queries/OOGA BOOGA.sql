SELECT *
FROM Orders
Where YEAR(CreationDate) > (YEAR(now()) - 10);