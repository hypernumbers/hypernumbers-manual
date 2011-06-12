========
AVERAGEA
========

Overview
--------

Returns the average of the arguments, including text (valued as 0).

Syntax
------

``=AVERAGEA(value1, value2,...)``

    value1, value2,.... or a range of cells can be input into the function. The range may include numbers, text and logical values. Text is evaluated as 0. Logical values are evaluated as 1 (TRUE) and 0 (FALSE). 

Example
-------

``=AVERAGEA(2, 6, 4)`` returns 4, the average of the three numbers in the list. 

``=AVERAGEA(B1:B3)`` where cells B1, B2, B3 contain 4, 2, and apple returns 2, the average of 4 and 2 and 0. 

``=AVERAGEA(2, TRUE)`` returns 1.5, the average of 2 and 1. 
