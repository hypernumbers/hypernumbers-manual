==
IF
==

Overview
--------

Specifies a logical test to be performed.

Syntax
------

``=IF(Test, ThenValue, OtherwiseValue)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``Test``              is any value or expression that can be TRUE or FALSE.

``ThenValue``         is the value that is returned if the logical test is
                      TRUE.

``OtherwiseValue``    **optional** is the value that is returned if the
                      logical test is FALSE. If it is ommitted and
                      ``Test`` is FALSE then ``IF`` returns FALSE.
===================== ======================================================

Examples
--------

``=IF(A1>5,100,"too small")`` If the value in ``A1`` is higher than 5, the value 100 is entered in the current cell; otherwise, the text “too small” (without quotes) is entered.
