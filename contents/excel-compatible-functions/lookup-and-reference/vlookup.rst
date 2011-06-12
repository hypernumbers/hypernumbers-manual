=======
VLOOKUP
=======

Overview
--------

Searches for a value and reference to the cells below the selected area. This function verifies if the first column of an array contains a certain value. The function returns then the value in a colukmn of the array, named in the Index, in the same row.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.


Syntax
------

``=VLOOKUP(SearchCriterion, Array, Index, SortOrder)``
.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``SearchCriterion``   is the value searched for in the first column of
                      the array.

``Array``             is the reference, which is to comprise at least two
                      columns.

``Index``             is the number of the column in the array that
                      contains the value to be returned. The first row
                      has the number 1.

``SortOrder``         **optional** a parameter that indicates whether the
                      first column in the array is sorted in ascending
                      order. Enter the Boolean value FALSE or zero if the
                      first column is not sorted in ascending order.
                      Sorted columns can be searched much faster and the
                      function always returns a value, even if the search
                      value was not matched exactly, if it is between the
                      lowest and highest value of the sorted list. In
                      unsorted lists, the search value must be matched
                      exactly.
===================== ======================================================

Example
-------

You want to enter the number of a dish on the menu in cell ``A1``, and the name of the dish is to appear as text in the neighboring cell (``B1``) immediately. The Number to Name assignment is contained in the ``D1:E100`` array. ``D1`` contains ``100``, ``E1`` contains the name ``Vegetable Soup``, and so forth, for 100 menu items. The numbers in column ``D`` are sorted in ascending order; thus, the optional ``SortOrder`` parameter is not necessary.

Enter the following formula in ``B1``:
``=VLOOKUP(A1;D1:E100;2)``

As soon as you enter a number in ``A1`` ``B1`` will show the corresponding text contained in the second column of reference ``D1:E100``. Entering a nonexistent number displays the text with the next number down. To prevent this, enter ``FALSE`` as the last parameter in the formula so that an error message is generated when a nonexistent number is entered.
