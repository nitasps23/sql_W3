--SQL EXISTS Operator

/*
The SQL EXISTS Operator
The EXISTS operator is used to test for the existence of any record in a subquery.

The EXISTS operator returns TRUE if the subquery returns one or more records.

EXISTS Syntax

SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);

SQL EXISTS Examples
The following SQL statement returns TRUE and lists the suppliers with a product price less than 20:

Example
*/
SELECT SupplierName
FROM Suppliers as s
WHERE EXISTS
	(SELECT ProductName
	FROM Products as p
	WHERE p.SupplierID = s.SupplierID
	AND Price < 20);

--The following SQL statement returns TRUE and lists the suppliers with a product price equal to 22:

SELECT SupplierName
FROM Suppliers as s
WHERE EXISTS
	(SELECT ProductName
	FROM Products as p
	WHERE p.SupplierID = s.SupplierID
	AND Price = 22);