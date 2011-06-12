===
ROW
===

Overview
--------

Returns the row number of a cell reference. If the reference is a cell, it returns the row number of the cell. If the reference is a cell range, it returns the corresponding row numbers in a one-column Array if the formula is entered as an array formula. If the ROW function with a range reference is not used in an array formula, only the row number of the first range cell will be returned.

Syntax
------

``=ROW(Reference)``

Reference (Optional) is a cell, an area, or the name of an area.

If you do not indicate a reference, the row number of the cell in which the formula is entered will be found. LibreOffice Calc automatically sets the reference to the current cell.

Example
-------

``=ROW(B3)`` returns 3 because the reference refers to the third row in the table.

``=ROW(D5:D8)`` returns 5 because the ROW function is not used as array formula and only the number of the first row of the reference is returned.

``=ROW()`` returns 3 if the formula was entered in row 3.
