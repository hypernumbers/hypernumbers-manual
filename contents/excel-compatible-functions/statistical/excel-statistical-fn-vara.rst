====
VARA
====

Overview
--------

Returns the sample variance (allowing text and logical values).

Syntax
------

``=VARA(number1, number2,....)``

    numbers or cell ranges containing numbers can be input. Logical values and text may also be included. 

    VARA returns the standard deviation where number1 to number30 are a sample of the entire population. 

    Logical values are regarded as 1 (TRUE) and 0 (FALSE). 

    Text values are always regarded as zero. 

Example
-------

``=VARA(2, 6, 4)`` returns 4. 

``=VARA(B1:B3)`` where cells B1, B2, B3 contain red, TRUE, and 2 returns 1, the variance of 0, 1 and 2. 
