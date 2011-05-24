=====
SUMIF
=====

Overview
--------

Adds the cells specified by a given criteria. This function is used to browse a range when you search for a certain value.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a ``\`` character.

Syntax
------

``=SUMIF(Range, Criteria, SumRange)``

Range is the range to which the criteria are to be applied.

Criteria is the cell in which the search criterion is shown, or the search criterion itself. If the criteria is written into the formula, it has to be surrounded by double quotes.

SumRange is the range from which values are summed. If this parameter has not been indicated, the values found in the Range are summed.

**Erk, check this!** SUMIF supports the reference concatenation operator (~) only in the Criteria parameter, and only if the optional SumRange parameter is not given.

Example
-------

To sum up only negative numbers: ``=SUMIF(A1:A10, "<0")``

``=SUMIF(A1:A10, ">0", B1:10)`` - sums values from the range ``B1:B10`` only if the corresponding values in the range ``A1:A10`` are ``>0``.

See ``COUNTIF()`` for some more syntax examples that can be used with ``SUMIF()``. 
