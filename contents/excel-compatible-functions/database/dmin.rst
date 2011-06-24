====
DMIN
====

Overview
--------

DMIN returns the minimum content of a cell (field) in a database that matches the specified search criteria.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=DMIN(Database, DatabaseField, SearchCriteria)``

To reference a column by means of the column header name, place quotation marks around the header name.

Example
-------

.. image :: /images/example-database-fns.png

To find the shortest distance to school for the children in each grade in the above example, enter the following formula in ``B16``:

``=DMIN(A1:E10,"Distance to School",A13:E14)``

In row 14, under Grade, enter 1, 2, 3, and so on, one after the other. The shortest distance to school for each grade appears.
