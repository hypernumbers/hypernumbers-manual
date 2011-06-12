====
DSUM
====

Overview
--------

DSUM returns the total of all cells in a database field in all rows (records) that match the specified search criteria.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=DSUM(Database, DatabaseField, SearchCriteria)``

To reference a column by means of the column header name, place quotation marks around the header name.

Example
-------

.. image :: /images/example-database-fns.png

To find the length of the combined distance to school of all children at Joe's birthday party who are in second grade, enter the following formula in ``B16``:

``=DSUM(A1:E10,"Distance to School",A13:E14)``

Enter 2 in row 14 under Grade. The sum (1950) of the distances to school of all the children who are in second grade is displayed.
