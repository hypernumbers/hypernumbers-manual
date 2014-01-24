===
AND
===

Overview
--------

Returns TRUE if all arguments are TRUE. If one of the elements is FALSE, this function returns the FALSE value.

The arguments are either logical expressions themselves (``TRUE``, ``1<5``, ``2+3=7``, ``B8<10``) that return logical values, or arrays (``A1:C3``) containing logical values.

When a function expects a single value, but you entered a cell range, then the value from the cell range is taken that is in the same column or row as the formula.

If the entered range is outside of the current column or row of the formula, the function returns the error value #VALUE!

**AND handles arrays differently in Hypernumbers, need to see if it matters...**

Syntax
------

``=AND(LogicalValue1, LogicalValue2...)``

LogicalValue1, LogicalValue2 ... are conditions to be checked. You can add an infinite number of conditions. All conditions can be either TRUE or FALSE. If a range is entered as a parameter, the function uses the value from the range that is in the current column or row. The result is TRUE if the logical value in all cells within the cell range is TRUE.

Example
-------

The logical values of entries 12<13; 14>12, and 7<6 are to be checked:

``=AND(12<13,14>12,7<6)`` returns FALSE.

``=AND (FALSE,TRUE)`` returns FALSE.
