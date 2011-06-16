========
TRIMMEAN
========

Overview
--------

Returns the mean of a set of numbers, ignoring a proportion of high and low values.

Syntax
------

``=TRIMMEAN(numberlist, fraction)``

.. tabularcolumns:: |l|L|

=============== ================================================================
Arguments       Description
=============== ================================================================
``numberlist``  A range or array of numbers, not necessarily in order.

``fraction``    The fraction of the set to be ignored.
=============== ================================================================

TRIMMEAN returns the mean, ignoring a fraction (0 <= fraction < 1) of the outermost values in numberlist.

Specifically, where n is the count of numbers in numberlist, the highest and lowest INT(n * fraction / 2) values are ignored.

Example
-------

``=TRIMMEAN(A1:A100, 0.1)``

returns the mean of the values in cells A1:A100, ignoring the lowest 5 values and the highest 5 values.
