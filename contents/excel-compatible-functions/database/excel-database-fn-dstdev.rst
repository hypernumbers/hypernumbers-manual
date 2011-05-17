======
DSTDEV
======

Overview
--------

DSTDEV calculates the standard deviation of a population based on a sample, using the numbers in a database column that match the given conditions. The records are treated as a sample of data. That means that the children in the example represent a cross section of all children. Note that a representative result can not be obtained from a sample of less than one thousand.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=DSTDEV(Database, DatabaseField, SearchCriteria)``

To reference a column by means of the column header name, place quotation marks around the header name.

Example
-------

.. image :: /images/example-database-fns.png

To find the standard deviation of the weight for all children of the same age in the example, enter the following formula in B16:

``=DSTDEV(A1:E10,"Weight",A13:E14)``

In row 14, under Age, enter 7, 8, 9, and so on, one after the other. The result shown is the standard deviation of the weight of all children of this age.
