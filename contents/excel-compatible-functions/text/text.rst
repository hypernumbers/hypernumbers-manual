====
TEXT
====

Overview
--------

Converts a number into text according to a given format.

Syntax
------

``=TEXT(Number, Format)``

.. tabularcolumns:: |l|L|

=============== ================================================================
Arguments       Description
=============== ================================================================
``Number``      The numerical value to be converted.

``Format``      The text which defines the format. Use decimal and thousands
                separators according to the language set in the cell format.
=============== ================================================================

Example
-------

``=TEXT(12.34567;"###.##")`` returns the text 12.35

``=TEXT(12.34567;"000.00")`` returns the text 012.35

``=TEXT(0.432, "0.0%")`` returns 43.2%

``=TEXT(4.55, "£0.00")`` returns £4.55
