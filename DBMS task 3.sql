CREATE database if not exists market;
use Market;
CREATE TABLE if not exists Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(50) NOT NULL,
  Price DECIMAL(10, 2) DEFAULT 0.00,
   FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

CREATE TABLE if not exists Customers (
  CustomerID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  Phone VARCHAR(20) DEFAULT 'N/A'
);

CREATE TABLE if not exists Orders (
  OrderID INT PRIMARY KEY,
  OrderDate DATE NOT NULL,
  CustomerID INT NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);