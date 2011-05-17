====
DMAX
====

Overview
--------

DMAX returns the maximum content of a cell (field) in a database (all records) that matches the specified search conditions.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=DMAX(Database, DatabaseField, SearchCriteria)``

To reference a column by means of the column header name, place quotation marks around the header name.

Example
-------

.. image :: /images/example-database-fns.png

To find out how much the heaviest child in each grade weighed in the above example, enter the following formula in B16:

``=DMAX(A1:E10,"Weight",A13:E14)``

Under Grade, enter 1, 2, 3, and so on, one after the other. After entering a grade number, the weight of the heaviest child in that grade appears.
