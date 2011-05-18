=====
TRUNC
=====

Overview
--------

Truncates a number by removing decimal places.

Syntax
------

``=TRUNC(Number, Count)``

Returns Number with at most Count decimal places. Excess decimal places are simply removed, irrespective of sign.

``TRUNC(Number, 0)`` behaves as ``INT(Number)`` for positive numbers, but effectively rounds towards zero for negative numbers.

.. warning :: remember the format you have on the cell will determine how many decimal places you see!

``=TRUNC(1.239,2)`` returns 1.23. The 9 is lost.

``=TRUNC(-1.234999,3)`` returns -1.234. All the 9s are lost. 
