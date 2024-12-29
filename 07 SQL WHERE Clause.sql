--SQL WHERE Clause

/*The SQL WHERE Clause
The WHERE clause is used to filter records.

It is used to extract only those records that fulfill a specified condition.*/

/*Example
Select all customers from Mexico:*/
SELECT *
FROM Customers
WHERE Country='Mexico';

/*Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition;

Note: The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.!*/

/*Text Fields vs. Numeric Fields
SQL requires single quotes around text values (most database systems will also allow double quotes).

However, numeric fields should not be enclosed in quotes:

Example*/

SELECT *
FROM Customers
WHERE CustomerID=1;

/*Operators in The WHERE Clause
You can use other operators than the = operator to filter the search.

Example
Select all customers with a CustomerID greater than 80:*/

SELECT *
FROM Customers
WHERE CustomerID > 80;

/*The following operators can be used in the WHERE clause:

Operator	Description	Example
=			Equal	
>			Greater than	
<			Less than	
>=			Greater than or equal	
<=			Less than or equal	
<>			Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN		Between a certain range	
LIKE		Search for a pattern	
IN			To specify multiple possible values for a column*/

SELECT *
FROM Products
WHERE Price=18;

SELECT *
FROM Products
WHERE Price > 30;

SELECT *
FROM Products
WHERE Price < 30;

SELECT *
FROM Products
WHERE Price >=30;

SELECT *
FROM Products
WHERE Price <=30;

SELECT *
FROM Products
WHERE Price != 18;

SELECT *
FROM Products
WHERE Price BETWEEN 50 AND 60;

SELECT *
FROM Customers
WHERE City LIKE 's%';

SELECT *
FROM Customers
WHERE City IN ('Paris','London');
