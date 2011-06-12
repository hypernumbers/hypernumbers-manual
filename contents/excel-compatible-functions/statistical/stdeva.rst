======
STDEVA
======

Overview
--------

Returns the sample standard deviation of the arguments.

Syntax
------

``=STDEVA(number1, number2,....)``

    number1,number2,.. or ranges containing numbers can be input. Logical values and text may also be included. 

    STDEVA returns the standard deviation where number1 to number30 are a sample of the entire population. 

    Logical values are regarded as 1 (TRUE) and 0 (FALSE). 

    Text values are always regarded as zero. 

Example
-------

``=STDEVA(2, 6, 4)`` returns 2. 

``=STDEVA(B1:B3)`` where cells B1, B2, B3 contain red, TRUE, and 2 returns 1, the standard deviation of 0, 1 and 2. 
