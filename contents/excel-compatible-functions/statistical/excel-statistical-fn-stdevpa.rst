=======
STDEVPA
=======

Overview
--------

Returns the population standard deviation (allowing text and logical values).

Syntax
------

``=STDEVPA(number1, number2,....)``

    numbers or cell ranges containing numbers can be input. Logical values and text may also be included. 

    STDEVPA returns the standard deviation where number1 to number30 are the entire population. If you only have a sample of the population use STDEVA instead. 

    Logical values are regarded as 1 (TRUE) and 0 (FALSE). 

    Text values are always regarded as zero. 

Example
-------

``=STDEVPA(3, 3, 7, 7)`` returns 2. 

``=STDEVPA(B1:B4)`` where cells B1, B2, B3, B4 contain red, FALSE, 4, 4 returns 2, the population standard deviation of 0, 0, 4 and 4. 
