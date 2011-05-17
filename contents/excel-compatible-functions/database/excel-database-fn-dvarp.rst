=====
DVARP
=====

Overview
--------

DVARP calculates the variance of all cell values in a database field in all records that match the specified search criteria. The records are from the example are treated as an entire population.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=DVARP(Database, DatabaseField, SearchCriteria)``

To reference a column by means of the column header name, place quotation marks around the header name.

Example
-------

.. image :: /images/example-database-fns.png

To find the variance of the weight for all children of the same age at Joe's birthday party, enter the following formula in ``B16``:

``=DVARP(A1:E10,"Weight",A13:E14)``

In row 14, under Age, enter 7, 8, 9, and so on, one after the other. The variance of the weight values for all children of this age attending Joe's birthday party appears.
