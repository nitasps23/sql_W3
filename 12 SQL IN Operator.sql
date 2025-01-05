--SQL IN Operator

/*The SQL IN Operator
The IN operator allows you to specify multiple values in a WHERE clause.

The IN operator is a shorthand for multiple OR conditions.

ExampleGet 
Return all customers from 'Germany', 'France', or 'UK'

*/
SELECT *
FROM Customers
WHERE Country IN ('Germany','France','UK');

/*
Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);

NOT IN
By using the NOT keyword in front of the IN operator, you return all records that are NOT any of the values in the list.

Example
Return all customers that are NOT from 'Germany', 'France', or 'UK':
*/
SELECT *
FROM Customers
WHERE Country NOT IN ('Germany','France','UK');

/*
IN (SELECT)
You can also use IN with a subquery in the WHERE clause.

With a subquery you can return all records from the main query that are present in the result of the subquery.

Example
Return all customers that have an order in the Orders table:
*/
SELECT *
FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);

/*NOT IN (SELECT)
The result in the example above returned 74 records, that means that there are 17 customers that haven't placed any orders.

Let us check if that is correct, by using the NOT IN operator.

Example
Return all customers that have NOT placed any orders in the Orders table:
*/

SELECT *
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);
