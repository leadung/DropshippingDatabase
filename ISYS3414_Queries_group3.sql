-- See all the talble infomation(ie Customers)
SELECT*
FROM Cuscomers;
-- See all the customer's address
SELECT C_ID,C_ADDRESS
FROM Customers;
-- See all the table information products
SELECT*
FROM Products;
-- See all the Products by their prices in ascending oders
SELECT P_NAME,P_ID
FROM Products
ORDER BY PRICE ASC;
-- Show all products that have same price(ie 50$)
SELECT Price,P_Name
FROM Products
WHERE Price = 50;
-- Update prices of  T-shirt increase to 50$
UPDATE Products
SET Price = Price + 50
Where P_Name='T-Shirt';
SELECT*
FROM Products;
-- Delete the customer whose id equals to 1
DELETE
FROM Customers
WHERE C_ID = 1;
-- Information of all customers has name start with 'D'
SELECT *
FROM Customers
WHERE C_Name LIKE 'D%';
-- Sum, Average, Max price of all Products
SELECT SUM(PRICE), AVG(PRICE), MAX(PRICE)
FROM PRODUCTS
-- Number of Products have price > 5
SELECT P_ID,P_NAME,PRICE
FROM Products
WHERE PRICE > 5
ORDER BY PRICE ASC;

-- Show all product that sold in a specific date (i.e 5/10/2022)
SELECT S_ID, P_ID, SELL_DATE
FROM SELL
WHERE S_ID=P_ID AND
SELL_DATE = '5/10/2022'
-- Number of Products have price < 20
SELECT P_ID,P_NAME,PRICE
FROM Products
WHERE PRICE <20
ORDER BY PRICE ASC;
Write to database
