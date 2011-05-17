======
MINUTE
======

Overview
--------

Calculates the minute for an internal time value. The minute is returned as a number between 0 and 59.

Syntax 
------

``=MINUTE(Number)``

Number, as a time value, is a decimal number where the number of the minute is to be returned.

Examples
--------

``=MINUTE(8.999)`` returns 58

``=MINUTE(8.9999)`` returns 59

``=MINUTE(NOW())`` returns the current minute value. 
