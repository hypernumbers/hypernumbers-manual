===
SUM
===

Overview
--------

Adds all the numbers in a range of cells.

Syntax
------

``=SUM(Number1, Number2...)``

``SUM`` takes an infinite number of arguments whose sum is to be calculated.

Z-Order
-------

In Vixo as well as taking normal row and column references, ``SUM`` can take z-references. See the section on `Database Queries`_ for more details.

Example
-------

If you enter the numbers 2, 3 and 4 in the Number 1, 2 and 3 text boxes, 9 will be returned as the result.

``=SUM(A1,A3,B5)`` calculates the sum of the three cells. ``=SUM(A1:E10)`` calculates the sum of all cells in the A1 to E10 cell range.

See also the functions ``=dsum()`` and ``=zsum()``

.. _Database Queries: /contents/indepth/database-queries.html
