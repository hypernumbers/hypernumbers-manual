=======
COUNTIF
=======

Returns the number of cells that meet with certain criteria within a cell range.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a ``\`` character.

Syntax
------

``=COUNTIF(Range, Criteria)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``Range``             is the range to which the criteria are to be applied.

``Criterion``         indicates the criterion in the form of a number, an
                      expression or a character string. This criterion
                      determines which cells are counted. You may also
                      enter a search text in the form of a regular
                      expression, e.g. b.* for all words that begin with b.
                      You may also indicate a cell range that contains the
                      search criterion. If you search for literal text,
                      enclose the text in double quotes.
===================== ======================================================

Example
-------

A1:A10 is a cell range containing the numbers 2000 to 2009. Cell B1 contains the number 2006. In cell B2, you enter a formula:

``=COUNTIF(A1:A10, 2006)`` returns 1

``=COUNTIF(A1:A10, B1)`` returns 1

``=COUNTIF(A1:A10, ">=2006")`` returns 4

``=COUNTIF(A1:A10, "<"&B1)`` returns 6

