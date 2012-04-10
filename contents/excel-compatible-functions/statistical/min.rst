===
MIN
===

Overview
--------

Returns the minimum value in a list of arguments.

Returns 0 if no numeric value and no error was encountered in the cell range(s) passed as cell reference(s). Text cells are ignored by ``MIN()`` and ``MAX()``. The functions ``MINA()`` and ``MAXA()`` return 0 if no value (numeric or text) and no error was encountered. Passing a literal string argument to ``MIN()`` or ``MAX()`, e.g. ``MIN("string")``, still results in an error.

Syntax
------

``=MIN(Number1, Number2...)``

Number1, Number2... are an infinite number of numerical values or ranges.

Z-Order
-------

In Vixo as well as taking normal row and column references, ``SUM`` can take z-references. See the section on `Database Queries`_ for more details.

Example
-------

``=MIN(A1:B100)`` returns the smallest value in the list.

.. _Database Queries: ./contents/indepth/database-queries.html
