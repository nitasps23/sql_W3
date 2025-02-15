--SQL Aliases

/*
SQL Aliases
SQL aliases are used to give a table, or a column in a table, a temporary name.

Aliases are often used to make column names more readable.

An alias only exists for the duration of that query.

An alias is created with the AS keyword.

Example
*/
SELECT CustomerID AS ID
FROM Customers;

/*
AS is Optional
Actually, in most database languages, you can skip the AS keyword and get the same result:

Example
*/
SELECT CustomerID ID
FROM Customers;

/*
Syntax
When alias is used on column:

SELECT column_name AS alias_name
FROM table_name;

When alias is used on table:

SELECT column_name(s)
FROM table_name AS alias_name;

Alias for Columns
The following SQL statement creates two aliases, one for the CustomerID column and one for the CustomerName column:

Example
*/
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

/*
Using Aliases With a Space Character
If you want your alias to contain one or more spaces, like "My Great Products", surround your alias with square brackets or double quotes.

Example
Using [square brackets] for aliases with space characters:
*/
SELECT ProductName  AS [My Great Products]
FROM Products;

--OR

SELECT ProductName AS "My Great Products"
FROM Products;

/*
Note: Some database systems allows both [] and "", and some only allows one of them.

Concatenate Columns
The following SQL statement creates an alias named "Address" that combine four columns (Address, PostalCode, City and Country):

Example
*/
SELECT CustomerName, Address + ', ' + PostalCode  + ' ' + City + ', ' + Country AS Address
FROM Customers;

/*
Note: To get the SQL statement above to work in MySQL use the following:

MySQL Example
*/
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;

/*
Note: To get the SQL statement above to work in Oracle use the following:

Oracle Example
*/
SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
FROM Customers;

/*
SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
FROM Customers;
*/
SELECT *
FROM Customers AS Persons;

/*
It might seem useless to use aliases on tables, but when you are using more than one table in your queries, it can make the SQL statements shorter.

The following SQL statement selects all the orders from the customer with CustomerID=4 (Around the Horn). We use the "Customers" and "Orders" tables, and give them the table aliases of "c" and "o" respectively (Here we use aliases to make the SQL shorter):

Example
*/
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID = o.CustomerID;

select * from Orders;

/*
The following SQL statement is the same as above, but without aliases:

Example
*/
SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName='Around the Horn' AND Customers.CustomerID=Orders.CustomerID;

/*
Aliases can be useful when:

There are more than one table involved in a query
Functions are used in the query
Column names are big or not very readable
Two or more columns are combined together
*/
