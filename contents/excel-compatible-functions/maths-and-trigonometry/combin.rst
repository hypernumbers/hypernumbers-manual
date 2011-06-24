======
COMBIN
======

Overview
--------

Returns the number of possible combinations of a set of elements from a larger group of elements without repetition.

Syntax
------

``=COMBIN(Number, NumberToChoose)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``Number``            is the number of items in the full set.

``NumberToChoose``    is the number of items to choose from the full set.
===================== ======================================================

COMBIN returns the number of ordered ways to choose these items. For example if there are 3 items A, B and C in a set, you can choose 2 items in 3 different ways, namely AB, AC and BC.

COMBIN implements the formula: (N choose k) = N!/(k!*(N-k)!)

Example
-------

``=COMBIN(8, 2)`` returns 28.
