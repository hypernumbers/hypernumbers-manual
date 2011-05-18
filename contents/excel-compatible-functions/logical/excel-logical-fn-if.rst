==
IF
==

Overview
--------

Specifies a logical test to be performed.

Syntax
------

``=IF(Test, ThenValue, OtherwiseValue)``

Test is any value or expression that can be TRUE or FALSE.

ThenValue is the value that is returned if the logical test is TRUE.

OtherwiseValue (optional) is the value that is returned if the logical test is FALSE. If it is ommitted and Test is FALSE then IF returns FALSE.

Parameters marked as "optional" can be left out only when no parameter follows. For example, in a function with four parameters, where the last two parameters are marked as "optional", you can leave out parameter 4 or parameters 3 and 4, but you cannot leave out parameter 3 alone.

Examples
--------

``=IF(A1>5,100,"too small")`` If the value in ``A1`` is higher than 5, the value 100 is entered in the current cell; otherwise, the text “too small” (without quotes) is entered. 
