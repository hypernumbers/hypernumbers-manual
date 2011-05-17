========
DAVERAGE
========

Overview
--------

DAVERAGE returns the average of the values of all cells (fields) in all rows (database records) that match the specified search criteria.
The search supports regular expressions.

Syntax
------

``=DAVERAGE(Database, DatabaseField, SearchCriteria)``

To reference a column by means of the column header name, place quotation marks around the header name.

Example
-------

.. image :: /images/example-database-fns.png

To find the average weight of all children of the same age in the above example, enter the following formula in ``B16``:

``=DAVERAGE(A1:E10,"Weight",A13:E14)``

In row 14, under Age, enter 7, 8, 9, and so on, one after the other. The average weight of all children of the same age appears.
