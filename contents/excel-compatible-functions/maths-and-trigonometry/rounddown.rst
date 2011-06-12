=========
ROUNDDOWN
=========

Overview
--------

Rounds a number down, toward zero, to a certain precision.

Syntax
------

``=ROUNDDOWN(Number, Count)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``Number``            the number to be rounded down (towards zero).

``Count``             **optional** the number of decimal places. If Count
                      is omitted or zero, the function rounds down to the
                      nearest integer. If Count is negative, the function
                      rounds to the nearest 10, 100, 1000, etc.
===================== ======================================================

Returns Number rounded down (towards zero) to the Count number decimal places. If Count is omitted or zero, the function rounds down to an integer. If Count is negative, the function rounds down to the next 10, 100, 1000, etc.

This function rounds towards zero.

Example
-------

``=ROUNDDOWN(1.234, 2)`` returns 1.23.

``=ROUNDDOWN(45.67, 0)`` returns 45.

``=ROUNDDOWN(-45.67, 0)`` returns -45.

``=ROUNDDOWN(987.65, -2)`` returns 900.
