======
SEARCH
======

Overview
--------

Returns the position of a text segment within a character string. You can set the start of the search as an option. The search text can be a number or any sequence of characters. The search is not case-sensitive.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a ``\`` character.

Syntax
------

``=SEARCH("FindText", "Text")``

.. tabularcolumns:: |l|L|

=============== ================================================================
Arguments       Description
=============== ================================================================
``FindText``    The text to be searched for.

``Text``        The text where the search will take place.
=============== ================================================================

Example
-------

``=SEARCH(54, 998877665544)`` returns 10 as the position.

``=SEARCH("54", "998877665544")`` also returns 10.
