=====
MATCH
=====

Overview
--------

Returns the relative position of an item in an array that matches a specified value. The function returns the position of the value found in the lookup_array as a number.

Syntax
------

``=MATCH(SearchCriterion, LookupArray, Type)``

SearchCriterion: is the value which is to be searched for in the single-row or single-column array.

LookupArray: is the reference searched. A lookup array can be a single row or column, or part of a single row or column.

Type: may take the values 1, 0, or -1. If Type = 1 or if this optional parameter is missing, it is assumed that the first column of the search array is sorted in ascending order. If Type = -1 it is assumed that the column in sorted in descending order. This corresponds to the same function in Microsoft Excel.

If Type = 0, only exact matches are found. If the search criterion is found more than once, the function returns the index of the first matching value. Only if Type = 0 can you search for regular expressions.

If Type = 1 or the third parameter is missing, the index of the last value that is smaller or equal to the search criterion is returned. This applies even when the search array is not sorted. For Type = -1, the first value that is larger or equal is returned.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character. You can switch the automatic evaluation of regular expression on and off in Tools - Options - LibreOffice Calc - Calculate.

Example
-------

``=MATCH(200;D1:D100)`` searches the area D1:D100, which is sorted by column D, for the value 200. As soon as this value is reached, the number of the row in which it was found is returned. If a higher value is found during the search in the column, the number of the previous row is returned. 
