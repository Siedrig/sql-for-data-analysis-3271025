Create View StringFunctions1 AS
SELECT TRIM(
    'M'
    FROM ProductCode
  ) AS TrimmedProductCode,
  P.ProductCode,
  REPLACE(ProductCode, 'BLU', 'BLE') as NewProductCode,
  CONCAT(FirstName, ' ', LastName) AS FullName,
  UPPER(
    CONCAT(Address, ' ', City, ' ', State, ' ', Zipcode)
  ) AS FullAddress
FROM Customer C
  JOIN Orders O ON C.CustomerId = O.CustomerId
  JOIN OrderItem OI ON O.OrderID = OI.OrderID
  JOIN Product P ON OI.ProductID = P.ProductID
  WHERE P.ProductCode LIKE '%BLU%';