======
DCOUNT
======

Overview
--------

DCOUNT counts the number of rows (records) in a database that match the specified search criteria and contain numerical values.
The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=DCOUNT(Databas, DatabaseField, SearchCriteria)``

For the DatabaseField parameter you can enter a cell to specify the column, or enter the number 0 for the entire database. The parameter cannot be empty. To reference a column by means of the column header name, place quotation marks around the header name.

Example
-------

.. image :: /images/example-database-fns.png

In the example above, we want to know how many children have to travel more than 600 meters to school. The result is to be stored in cell B16. Set the cursor in cell ``B16``. Enter the formula ``=DCOUNT(A1:E10;0,A13:E14)`` in ``B16``.

Database is the range of data to be evaluated, including its headers: in this case ``A1:E10``. DatabaseField specifies the column for the search criteria: in this case, the whole database. SearchCriteria is the range where you can enter the search parameters: in this case, ``A13:E14``.

To learn how many children in second grade are over 7 years of age, delete the entry >600 in cell ``D14`` and enter 2 in cell ``B14`` under Grade, and enter >7 in cell ``C14`` to the right. The result is 2. Two children are in second grade and over 7 years of age. As both criteria are in the same row, they are connected by AND.
