--SQL GROUP BY Statement

/*
The SQL GROUP BY Statement
The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

GROUP BY Syntax

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);

SQL GROUP BY Examples
The following SQL statement lists the number of customers in each country:

Example
*/

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

/*
The following SQL statement lists the number of customers in each country, sorted high to low:

Example
*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

/*
GROUP BY With JOIN Example
The following SQL statement lists the number of orders sent by each shipper:

Example
*/
SELECT S.ShipperName, COUNT(O.OrderID) AS NumberOfOrders
FROM Orders as O
	LEFT JOIN Shippers as S
	ON O.ShipperID = S.ShipperID
GROUP BY ShipperName;