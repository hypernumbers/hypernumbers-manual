==
OR
==

Overview
--------

Returns TRUE if at least one argument is TRUE. This function returns the value FALSE, if all the arguments have the logical value FALSE.

The arguments are either logical expressions themselves (TRUE, 1<5, 2+3=7, B8<10) that return logical values, or arrays (A1:C3) containing logical values.

**Prolly as different as AND, fix up/add tests/notes here**

Syntax
------

``=OR(LogicalValue1, LogicalValue2...)``

LogicalValue1; LogicalValue2... are conditions to be checked, there can be an infinite number of them. All conditions can be either TRUE or FALSE. If a range is entered as a parameter, the function uses the value from the range that is in the current column or row.

Example
-------

The logical values of entries ``12<11``, ``13>22``, and ``45=45`` are to be checked.

``=OR(12<11,13>22,45=45)`` returns TRUE.

``=OR(FALSE,TRUE)`` returns TRUE. 
