======
COUNTA
======

Overview
--------

Counts how many values are in the list of arguments. Text entries are also counted, even when they contain an empty string of length 0. If an argument is an array or reference, empty cells within the array or reference are ignored.

Syntax
------

``=COUNTA(Value1, Value2...)``

Value1, Value2... are an infinite number of arguments representing the values to be counted.

Example
-------

The entries 2, 4, 6 and eight in the Value 1-4 fields are to be counted.

``=COUNTA(2,4,6,"eight")` = 4. The count of values is therefore 4. 
