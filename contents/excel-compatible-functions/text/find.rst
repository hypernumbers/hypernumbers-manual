====
FIND
====

Overview
--------

Looks for a string of text within another string. You can also define where to begin the search. The search term can be a number or any string of characters. The search is case-sensitive.

Syntax
------

``=FIND("FindText", "Text", StartPosition)``

.. tabularcolumns:: |l|L|

================= ==============================================================
Arguments         Description
================= ==============================================================
``FindText``      The bit of text to be found.

``Text``          The text where the search takes place.

``StartPosition`` **optional** The position in the text from which the search
                  starts.
================= ==============================================================


Example
-------

``=FIND(76,998877665544)`` returns 6.
