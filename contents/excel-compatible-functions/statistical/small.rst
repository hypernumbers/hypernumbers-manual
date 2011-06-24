=====
SMALL
=====

Overview
--------

Returns the nth smallest value in a list of numbers.

Syntax
------

``=SMALL(numberlist, n)``

.. tabularcolumns:: |l|L|

=============== ================================================================
Arguments       Description
=============== ================================================================
``numberlist``  a reference to a range of numbers.

``n``           an integer which specifies which smallest number.
=============== ================================================================

    returns the nth smallest number within the (unordered) range or array of numbers numberlist.

Example
-------

``=SMALL(B1:B4, 3)``  where cells B1, B2, B3, B4 contain 4, 7, 5,and 8, returns 7. The lowest number is 4, then 5, then the third lowest is 7.
