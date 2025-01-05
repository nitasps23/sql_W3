--SQL OR Operator

/*The SQL OR Operator
The WHERE clause can contain one or more OR operators.

The OR operator is used to filter records based on more than one condition, like if you want to return all customers from Germany but also those from Spain:

ExampleGet your own SQL Server
Select all customers from Germany or Spain:
*/

SELECT *
FROM Customers
WHERE Country= 'Germany' OR Country= 'Spain';

/*
Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

OR vs AND
The OR operator displays a record if any of the conditions are TRUE.

The AND operator displays a record if all the conditions are TRUE.

At Least One Condition Must Be True
The following SQL statement selects all fields from Customers where either City is "Berlin", CustomerName starts with the letter "G" or Country is "Norway":

Example
*/
SELECT *
FROM Customers
WHERE City= 'Berlin' OR CustomerName LIKE 'G%' OR Country= 'Norway';


/*Combining AND and OR
You can combine the AND and OR operators.

The following SQL statement selects all customers from Spain that starts with a "G" or an "R".

Make sure you use parenthesis to get the correct result.

Example
Select all Spanish customers that starts with either "G" or "R":
*/

SELECT *
FROM Customers
WHERE Country= 'Spain'
AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

/*
Without parenthesis, the select statement will return all customers from Spain that starts with a "G", plus all customers that starts with an "R", regardless of the country value:

Example
Select all customers that either:
are from Spain and starts with either "G", or
starts with the letter "R":
*/

SELECT *
FROM Customers
WHERE Country= 'Spain'
AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';
