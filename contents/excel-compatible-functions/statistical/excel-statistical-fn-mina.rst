====
MINA
====

Overview
--------

Returns the minimum of a list of arguments, including text and logical entries.

Syntax
------

``=MINA(value1, value2,....)``

    values or cell ranges, which may include numbers, text and logical values can be input. Text is evaluated as 0. Logical values are evaluated as 1 (TRUE) and 0 (FALSE). 

Example
-------

``=MINA(2, 6, 4)``  returns 2, the smallest value in the list. 

``=MINA(B1:B3)`` where cells B1, B2, B3 contain 3, 4, and apple returns 0, the value of the text. 

``=MINA(2, TRUE)`` returns 1, the value of TRUE. 
