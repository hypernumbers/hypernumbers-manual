====
DVAR
====

Overview
--------

DVAR returns the variance of all cells of a database field in all records that match the specified search criteria. The records from the example are treated as a sample of data. A representative result cannot be obtained from a sample population of less than one thousand.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=DVAR(Database, DatabaseField, SearchCriteria)``

To reference a column by means of the column header name, place quotation marks around the header name.

Example
-------

.. image :: /images/example-database-fns.png

To find the variance of the weight of all children of the same age of the above example, enter the following formula in ``B16``:

``=DVAR(A1:E10,"Weight",A13:E14)``

In row 14, under Age, enter 7, 8, 9, and so on, one after the other. You will see as a result the variance of the weight values for all children of this age.
