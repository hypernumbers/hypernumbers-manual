======
MEDIAN
======

Overview
--------

Returns the median of a set of numbers.

Syntax
------

``=MEDIAN(number1, number2,...)``

number1, number 2, etc can be numbers or a reference to a cell range containtain numbers.

MEDIAN returns the median (middle value) of the numbers. If the count of numbers is odd, this is the exact middle value. If the count of numbers is even, the average of the two middle values is returned.

Z-Order
-------

In Hypernumbers as well as taking normal row and column references, ``SUM`` can take z-references. See the section on `Database Queries`_ for more details.

Example
-------

``=MEDIAN(1, 5, 9, 20, 21)`` returns 9, the number exactly in the middle.

``=MEDIAN(1, 5, 9, 20)`` returns 7, which is the average of 5 and 9, the two numbers in the middle.

.. _Database Queries: ../../../contents/indepth/database-queries.html
