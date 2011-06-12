=======
WEEKDAY
=======

Overview
--------

Returns the day of the week for the given date value. The day is returned as an integer between 1 (Sunday) and 7 (Saturday) if no type or type=1 is specified. If type=2, numbering begins at Monday=1; and if type=3 numbering begins at Monday=0.

Syntax
------

``=WEEKDAY(Number; Type)``

Number, as a date value, is a decimal for which the weekday is to be returned.

Type determines the type of calculation. For Type=1, the weekdays are counted starting from Sunday (this is the default even when the Type parameter is missing). For Type=2, the weekdays are counted starting from Monday=1. For Type=3, the weekdays are counted starting from Monday=0.

``=WEEKDAY("2000-06-14")`` returns 4 (the Type parameter is missing, therefore the standard count is used. The standard count starts with Sunday as day number 1. June 14, 2000 was a Wednesday and therefore day number 4).

``=WEEKDAY("1996-07-24",2)`` returns 3 (the Type parameter is 2, therefore Monday is day number 1. July 24, 1996 was a Wednesday and therefore day number 3).

``=WEEKDAY("1996-07-24",1)`` returns 4 (the Type parameter is 1, therefore Sunday is day number 1. July 24, 1996 was a Wednesday and therefore day number 4).

``=WEEKDAY(NOW())`` returns the number of the current day.

Tip
---
To obtain a function indicating whether a day in ``A1`` is a business day, use the IF and WEEKDAY functions as follows:
``=IF(WEEKDAY(A1;2)<6;"Business day";"Weekend")`` 
