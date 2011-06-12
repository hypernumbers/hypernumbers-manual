=========
ISNONTEXT
=========

Overview
--------

Tests if the cell contents are text or numbers, and returns FALSE if the contents are text.

If an error occurs, the function returns TRUE.

Syntax
------

``=ISNONTEXT(Value)``

Value is any value or expression where a test is performed to determine whether it is a text or numbers or a Boolean value.

Example
-------

``=ISNONTEXT(D2)`` returns FALSE if cell ``D2`` contains the text abcdef.

``=ISNONTEXT(D9)`` returns TRUE if cell ``D9`` contains the number 8. 
