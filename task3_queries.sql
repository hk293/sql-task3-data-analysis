CREATE DATABASE ecommerce;
USE ecommerce;
CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;
CREATE TABLE IF NOT EXISTS retail_data (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(10,2),
    CustomerID VARCHAR(20),
    Country VARCHAR(50)
);
DROP TABLE IF EXISTS retail_data;

CREATE TABLE retail_data (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(10,2),
    CustomerID VARCHAR(20),  
    Country VARCHAR(50)
);
SELECT * FROM `online-retail` LIMIT 10;
SELECT 
  SUM(Quantity * UnitPrice) AS TotalRevenue
FROM `online-retail`;
SELECT 
  Description, 
  SUM(Quantity) AS TotalQuantity
FROM `online-retail`
GROUP BY Description
ORDER BY TotalQuantity DESC
LIMIT 5;
SELECT 
  Country, 
  ROUND(SUM(Quantity * UnitPrice), 2) AS Revenue
FROM `online-retail`
GROUP BY Country
ORDER BY Revenue DESC;





