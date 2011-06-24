====
MAXA
====

Overview
--------

Returns the maximum value in a list of arguments. It contrast to MAX, here you can enter text. The value of the text is 0.

The functions ``MINA()`` and ``MAXA()`` return 0 if no value (numeric or text) and no error was encountered.

Syntax
------

``=MAXA(Value1, Value2...)``

Value1, Value2;... are an infinite number of values or ranges. Text has the value of 0.

Example
-------

``=MAXA(A1;A2,A3,50,100,200,"Text")`` returns the largest value from the list.

``=MAXA(A1:B100)`` returns the largest value from the list.
