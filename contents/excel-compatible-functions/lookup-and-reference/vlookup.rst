=======
VLOOKUP
=======

Overview
--------

Vertical search with reference to adjacent cells to the right. This function checks if a specific value is contained in the first column of an array. The function then returns the value in the same row of the column named by Index. If the SortOrder parameter is omitted or set to TRUE or one, it is assumed that the data is sorted in ascending order. In this case, if the exact SearchCriterion is not found, the last value that is smaller than the criterion will be returned. If SortOrder is set to FALSE or zero, an exact match must be found, otherwise the error Error: Value Not Available will be the result. Thus with a value of zero the data does not need to be sorted in ascending order.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=VLOOKUP(SearchCriterion, Array, Index, SortOrder)``

SearchCriterion is the value searched for in the first column of the array.

Array is the reference, which is to comprise at least two columns.

Index is the number of the column in the array that contains the value to be returned. The first column has the number 1.

SortOrder is an optional parameter that indicates whether the first column in the array is sorted in ascending order. Enter the Boolean value FALSE or zero if the first column is not sorted in ascending order. Sorted columns can be searched much faster and the function always returns a value, even if the search value was not matched exactly, if it is between the lowest and highest value of the sorted list. 

**check the error messages**
