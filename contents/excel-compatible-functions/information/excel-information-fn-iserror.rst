=======
ISERROR
=======

Overview
--------

Tests for error conditions, including the #N/A error value, and returns TRUE or FALSE.

If an error occurs, the function returns a logical or numerical value.

Syntax
------

``=ISERROR(Value)``

Value is or refers to the value to be tested. ISERROR() returns TRUE if there is an error and FALSE if not.

Example
-------

``=ISERROR(C8)`` where cell ``C8`` contains ``=1/0`` returns TRUE, because 1/0 is an error.

``=ISERROR(C9)`` where cell ``C9`` contains ``=NA()`` returns TRUE.
