=========
TIMESTAMP
=========

Overview
--------

TIMESTAMP is a function like NOW except that it takes parameters. If you pass in cell, range or z-references it captures the time that those cells last changed.

It takes as many parameters as you wish.

Syntax
------

``=timestap(Ref1, Ref2, ...)``

The references can be any value, function, cell reference, range reference or z-query. Plain values are ignored.

.. warning:: TIMESTAMP is a special function that cannot be called from inside another function. An expression like ``=if(timestamp(a1) > b3, true, false)`` will return a ``#CANTINC!`` error.
