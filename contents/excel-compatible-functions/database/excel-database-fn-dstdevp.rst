=======
DSTDEVP
=======

Overview
--------

STDEVP calculates the standard deviation of a population based on all cells of a data range which match the search criteria. The records from the example are treated as the whole population.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=DSTDEVP(Database, DatabaseField, SearchCriteria)``

To reference a column by means of the column header name, place quotation marks around the header name.

Example
-------

.. image :: /images/example-database-fns.png

To find the standard deviation of the weight for all children of the same age at Joe's birthday party, enter the following formula in B16:

``=DSTDEVP(A1:E10,"Weight",A13:E14)``

In row 14, under Age, enter 7, 8, 9, and so on, one after the other. The result is the standard deviation of the weight for all same-aged children whose weight was checked.
