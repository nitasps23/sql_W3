--SQL NOT Operator

/*
The NOT Operator
The NOT operator is used in combination with other operators to give the opposite result, also called the negative result.

In the select statement below we want to return all customers that are NOT from Spain:

ExampleGet
Select only the customers that are NOT from Spain:
*/

SELECT *
FROM Customers
WHERE NOT Country= 'Spain';

/*
In the example above, the NOT operator is used in combination with the = operator, but it can be used in combination with other comparison and/or logical operators. See examples below.

Syntax
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

NOT LIKE
Example
Select customers that does not start with the letter 'A':
*/
SELECT *
FROM Customers
WHERE CustomerName NOT LIKE 'A%';

/*
NOT BETWEEN
Example
Select customers with a customerID not between 10 and 60:
*/
SELECT *
FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;

/*
NOT IN
Example
Select customers that are not from Paris or London:
*/
SELECT *
FROM Customers
WHERE City NOT IN ('Paris', 'London');

/*
NOT Greater Than
Example
Select customers with a CustomerId not greater than 50:
*/
SELECT *
FROM Customers
WHERE NOT CustomerId > 50;

--Note: There is a not-greater-than operator: !> that would give you the same result.
SELECT *
FROM Customers
WHERE CustomerId !> 50;

/*
NOT Less Than
Example
Select customers with a CustomerID not less than 50:
*/
SELECT *
FROM Customers
WHERE NOT CustomerId < 50;

--Note: There is a not-less-than operator: !< that would give you the same result.

