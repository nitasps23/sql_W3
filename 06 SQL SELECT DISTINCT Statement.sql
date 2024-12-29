--SQL SELECT Statement

/*The SQL SELECT DISTINCT Statement
The SELECT DISTINCT statement is used to return only distinct (different) values.*/

/*Example
Select all the different countries from the "Customers" table:*/

SELECT DISTINCT Country FROM Customers;

/*Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.

Syntax
SELECT DISTINCT column1, column2, ...
FROM table_name;*/

/*Count Distinct
By using the DISTINCT keyword in a function called COUNT, we can return the number of different countries.

Example*/
SELECT COUNT(DISTINCT Country) FROM Customers;

--Note: The COUNT(DISTINCT column_name) is not supported in Microsoft Access databases.

--Here is a workaround for MS Access:

--Example
SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);