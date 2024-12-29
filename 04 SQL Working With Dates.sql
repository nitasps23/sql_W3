--SQL Working With Dates

--SQL Dates
--The most difficult part when working with dates is to be sure that the format of the date you are trying to insert, 
--matches the format of the date column in the database.

/*As long as your data contains only the date portion, your queries will work as expected. However, if a time portion is involved, it gets more complicated.

SQL Date Data Types
MySQL comes with the following data types for storing a date or a date/time value in the database:
DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY

SQL Server comes with the following data types for storing a date or a date/time value in the database:
DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
SMALLDATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: a unique number
Note: The date types are chosen for a column when you create a new table in your database!*/

/*SQL Working with Dates
Look at the following table:

Orders Table
OrderId		ProductName				OrderDate
1			Geitost					2008-11-11
2			Camembert Pierrot		2008-11-09
3			Mozzarella di Giovanni	2008-11-11
4			Mascarpone Fabioli		2008-10-29

Now we want to select the records with an OrderDate of "2008-11-11" from the table above.
We use the following SELECT statement:*/

SELECT * 
FROM Orders 
WHERE OrderDate='2008-11-11';

--Note: Two dates can easily be compared if there is no time component involved!
/*If we use the same SELECT statement as above:
SELECT * FROM Orders WHERE OrderDate='2008-11-11'
we will get no result! This is because the query is looking only for dates with no time portion.

Tip: To keep your queries simple and easy to maintain, do not use time-components in your dates, unless you have to!*/