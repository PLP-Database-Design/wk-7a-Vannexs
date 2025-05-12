/*Question 1*/
-- Transform the table into 1NF by splitting the Products column into separate rows.
SELECT OrderID, CustomerName, Product
FROM (
  SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
  UNION ALL
  SELECT 101, 'John Doe', 'Mouse'
  UNION ALL
  SELECT 102, 'Jane Smith', 'Tablet'
  UNION ALL
  SELECT 102, 'Jane Smith', 'Keyboard'
  UNION ALL
  SELECT 102, 'Jane Smith', 'Mouse'
  UNION ALL
  SELECT 103, 'Emily Clark', 'Phone'
) AS TransformedTable;

/*Question 2*/
-- Orders table: Contains OrderID and CustomerName
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- OrderProducts table: Contains OrderID, Product, and Quantity
SELECT OrderID, Product, Quantity
FROM OrderDetails;
