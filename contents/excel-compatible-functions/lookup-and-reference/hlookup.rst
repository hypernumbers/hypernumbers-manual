=======
HLOOKUP
=======

Overview
--------

Searches for a value and reference to the cells below the selected area. This function verifies if the first row of an array contains a certain value. The function returns then the value in a row of the array, named in the Index, in the same column.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=HLOOKUP(SearchCriteria, Array, Index, Sorted)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``SearchCriterion``   is the value searched for in the first row of
                      the array.

``Array``             is the reference, which is to comprise at least two
                      rows.

``Index``             is the number of the row in the array that contains
                      the value to be returned. The first row has the
                      number 1.

``SortOrder``         **optional** a parameter that indicates whether the
                      first row in the array is sorted in ascending order.
                      Enter the Boolean value FALSE or zero if the first
                      row is not sorted in ascending order. Sorted rows can
                      be searched much faster and the function always
                      returns a value, even if the search value was not
                      matched exactly, if it is between the lowest and
                      highest value of the sorted list. In unsorted lists,
                      the search value must be matched exactly.
===================== ======================================================

Example
-------

See the example in ``VLOOKUP``.
