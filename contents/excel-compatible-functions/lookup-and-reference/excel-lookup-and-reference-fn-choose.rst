======
CHOOSE
======

Overview
--------

Uses an index to return a value from a list of an infinite number of values.

Syntax
------

``=CHOOSE(Index, Value1, Value2 ...)``

Index is a reference or number between 1 and 30 indicating which value is to be taken from the list.

Value1...Value30 is the list of values entered as a reference to a cell or as individual values.

Example
-------

``=CHOOSE(A1,B1,B2,B3,"Today","Yesterday","Tomorrow")``, for example, returns the contents of cell B2 for A1 = 2; for A1 = 4, the function returns the text "Today". 
