=======
HLOOKUP
=======

Overview
--------

Searches for a value and reference to the cells below the selected area. This function verifies if the first row of an array contains a certain value. The function returns then the value in a row of the array, named in the Index, in the same column.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=HLOOKUP(SearchCriteria, Array, Index, Sorted)`` 
