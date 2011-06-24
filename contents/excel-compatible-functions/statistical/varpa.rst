=====
VARPA
=====

Overview
--------

Returns the population variance (allowing text and logical values).

Syntax
------

``=VARPA(number1, number2,....)``

    numbers or cell ranges containing numbers can be input. Logical values and text may also be included. 

    VARPA returns the variance where number1 to number30 are the entire population. If you only have a sample of the population use VARA instead. 

    Logical values are regarded as 1 (TRUE) and 0 (FALSE). 

    Text values are always regarded as zero. 

Example
-------

``=VARPA(3, 3, 7, 7)`` returns 4. 

``=VARPA(B1:B4)`` where cells B1, B2, B3, B4 contain red, FALSE, 4, 4 returns 4, the population variance of 0, 0, 4 and 4. 
