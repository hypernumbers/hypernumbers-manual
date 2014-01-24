====
MODE
====

Overview
--------

Returns the most common value in a set of numbers.

Syntax
------

``=MODE(number1, number2,....)``

    number1, number2,... or ranges/arrays containing numbers can be input into the function.

    MODE returns the number that occurs most often, or if more than one number occurs that many times, the smallest such number. If no number occurs more than once, MODE returns an error.

Z-Order
-------

In Hypernumbers as well as taking normal row and column references, ``MODE`` can take z-references. See the section on `Database Queries`_ for more details.

Example
-------

``=MODE(A1:A4)`` where cells A1:A4 contain 1, 3, 2, 3 returns 3, the number occurring most often.

``=MODE(3, 7, 3, 9, 9, 3, 5, 1, 9, 5)`` returns 3. The number 9 occurs the same number of times, but 3 is smaller.

.. _Database Queries: /contents/indepth/database-queries.html
