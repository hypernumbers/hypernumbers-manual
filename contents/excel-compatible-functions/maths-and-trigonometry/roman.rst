=====
ROMAN
=====

Overview
--------

Returns a Roman numeral (eg XIV), as text, given a number.

Syntax
------

``=ROMAN(number, mode)``


.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``Number``            is a number in the range 1-3999 that is to be
                      converted into a Roman numeral.

``Mode``              **optional** A number in the range 0-4 indicates the
                      degree of simplification. The higher the value, the
                      greater is the simplification of the Roman number.
===================== ======================================================

Example
-------

``=ROMAN(999)`` returns CMXCIX.

``=ROMAN(999, 0)`` returns CMXCIX.

``=ROMAN(999, 1)`` returns LMVLIV.

``=ROMAN(999, 2)`` returns XMIX.

``=ROMAN(999, 3)`` returns VMIV.

``=ROMAN(999, 4)`` returns IM.
