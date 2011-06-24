======
COLUMN
======

Overview
--------

Returns the column number of a cell reference. If the reference is a cell the column number of the cell is returned; if the parameter is a cell area, the corresponding column numbers are returned in a single-row array if the formula is entered as an array formula. If the COLUMN function with an area reference parameter is not used for an array formula, only the column number of the first cell within the area is determined.

Syntax
------

``=COLUMN(Reference)``

Reference (Optional) is the reference to a cell or cell area whose first column number is to be found.

If no reference is entered, the column number of the cell in which the formula is entered is found.

Example
-------

``=COLUMN(A1)`` equals 1. Column A is the first column in the table.

``=COLUMN(C3:E3)`` equals 3. Column C is the third column in the table.

``=COLUMN(D3:G10)`` returns 4 because column D is the fourth column in the table and the COLUMN function is not used as an array formula. (In this case, the first value of the array is always used as the result.)

``=COLUMN()`` returns 3 if the formula was entered in column C.
