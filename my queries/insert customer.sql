BEGIN;
INSERT INTO Customer (
    CustomerID,
    FirstName,
    LastName,
    Email,
    Phone,
    Address,
    City,
    State,
    Zipcode
  )
VALUES (
    4967,
    'Carolina',
    'Alvarenga',
    'carol98@email.com',
    '(55)11 9 8765 4321',
    'Travessa dos Ventos, 8',
    'São Paulo',
    'SP',
    '01234-567'
  );
  COMMIT;