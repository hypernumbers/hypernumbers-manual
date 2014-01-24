========
SNAPSHOT
========

Overview
--------

SNAPSHOT is a special function that is used in templates. SNAPSHOT will capture a value from a calculation or another cell but **will not update** when the underlying cells change.

It is designed to be used in templates and allows values to be dragged through at the time a page is created and never updated.

A typical example is to pull prices through from a price list to a quotation - the price list can be updated but the quotes will never change

Syntax
------

``=snapshot(expression)``

Arguments
---------

============== =========================================================================
Argument       Description
============== =========================================================================
``expression`` Any cell or expression
============== =========================================================================

.. warning:: SNAPSHOT is a special function that cannot be called from inside another function. An expression like ``=html(snapshot(a1))`` will return a ``#CANTINC!`` error.

Example
-------

put ``=snapshot(A1)`` in ``A2`` and when you change the value in ``A1``, ``A2`` will not update
