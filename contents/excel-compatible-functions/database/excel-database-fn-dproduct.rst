========
DPRODUCT
========

Overview
--------

DPRODUCT multiplies all cells of a data range where the cell contents match the search criteria.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=DPRODUCT(Database, DatabaseField, SearchCriteria)``

To reference a column by means of the column header name, place quotation marks around the header name.
