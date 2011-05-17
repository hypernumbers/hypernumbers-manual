=========
ISLOGICAL
=========

Overview
--------

Tests for a logical value (TRUE or FALSE).

If an error occurs, the function returns FALSE.

Syntax
------

``=ISLOGICAL(Value)``

Returns TRUE if Value is a logical value (TRUE or FALSE), and returns FALSE otherwise.

Example
-------

``=ISLOGICAL(99)`` returns FALSE, because 99 is a number, not a logical value.

``=ISLOGICAL(ISNA(D4))`` returns TRUE whatever the contents of cell ``D4``, because ``=ISNA()`` returns a logical value.
