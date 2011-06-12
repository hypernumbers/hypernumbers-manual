=======
ROUNDUP
=======

Overview
--------

Rounds a number up, away from zero, to a certain precision.

Syntax
------

``=ROUNDUP(Number, Count)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``Number``            the number to be rounded up (away from zero).

``Count``             **optional** the number of decimal places. If Count
                      is omitted or zero, the function rounds up to the
                      nearest integer. If Count is negative, the function
                      rounds to the nearest 10, 100, 1000, etc.
===================== ======================================================

Returns Number rounded up (away from zero) to the Count number of decimal places. If Count is omitted or zero, the function rounds up to an integer. If Count is negative, the function rounds up to the next 10, 100, 1000, etc.

This function rounds away from zero.

Example
-------

``=ROUNDUP(1.1111, 2)`` returns 1.12.

``=ROUNDUP(1.2345, 1)`` returns 1.3.

``=ROUNDUP(45.67, 0)`` returns 46.

``=ROUNDUP(-45.67, 0)`` returns -46.


