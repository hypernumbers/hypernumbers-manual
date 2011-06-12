===
MOD
===

Overview
--------

Returns the remainder when one integer is divided by another.

Syntax
------

``=MOD(Dividend, Divisor)``


.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``Dividend``          The number to be divided.

``Divisor``           The number by which the dividend is to be divided.
===================== ======================================================

For integer arguments this function returns Dividend modulo Divisor, that is the remainder when Dividend is divided by Divisor.

This function is implemented as Dividend - Divisor * INT(Dividend/Divisor) , and this formula gives the result if the arguments are not integer.

Example
-------

``=MOD(22,3)`` returns 1, the remainder when 22 is divided by 3.

``=MOD(11.25,2.5)`` returns 1.25.
