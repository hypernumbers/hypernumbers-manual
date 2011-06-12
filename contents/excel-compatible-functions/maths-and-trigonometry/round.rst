=====
ROUND
=====

Overview
--------

Rounds a number to a certain number of decimal places.

Syntax
------

``=ROUND(Number, Count)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``Number``            the number to be rounded.

``Count``             the number of decimal places. If Count is omitted or
                      zero, the function rounds to the nearest integer. If
                      Count is negative, the function rounds to the
                      nearest 10, 100, 1000, etc.
===================== ======================================================

This function rounds to the nearest number. See ROUNDDOWN and ROUNDUP for alternatives.

Example
-------

``=ROUND(2.348,2)`` returns 2.35

``=ROUND(-32.4834,3)`` returns -32.483. Change the cell format to see all decimals.

``=ROUND(2.348,0)`` returns 2.

``=ROUND(2.5)`` returns 3.

``=ROUND(987.65,-2)`` returns 1000.
