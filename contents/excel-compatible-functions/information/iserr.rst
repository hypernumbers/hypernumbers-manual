=====
ISERR
=====

Overview
--------

Tests for error conditions, except the #N/A error value, and returns TRUE or FALSE.

If an error occurs, the function returns a logical or numerical value.

Syntax
------

``=ISERR(Value)``

Value is any value or expression which is tested to see whether an error value other than #N/A is present.

Example
-------

``=ISERR(C8)` where cell ``C8`` contains ``=1/0`` returns TRUE, because 1/0 is an error.

``=ISERR(C9)`` where cell ``C9`` contains ``=NA()`` returns FALSE, because ISERR() ignores the #N/A error. 
