=======
CEILING
=======

Overview
--------

Rounds a number up to the nearest multiple of significance.

Syntax
------

``=CEILING(Number, Significance)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``Number``            is the number that is to be rounded up.

``Significance``      is the number to whose multiple the value is to
                      be rounded up.
===================== ======================================================

Example
-------

``=CEILING(2.5, 1)`` returns 3

``=CEILING(2.5, 2)`` returns 4

``=CEILING(2.54, 0.1)`` returns 2.6

``=CEILING(2.546, 0.05)`` returns 2.55
