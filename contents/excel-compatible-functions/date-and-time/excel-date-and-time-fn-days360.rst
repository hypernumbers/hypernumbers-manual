=======
DAYS360
=======

Overview
--------

Returns the difference between two dates based on the 360 day year used in interest calculations.

Syntax
------

``=DAYS360("Date1", "Date2", Type)``

If Date2 is earlier than Date1, the function will return a negative number.

The optional argument Type determines the type of difference calculation. If Type = 0 or if the argument is missing, the US method (NASD, National Association of Securities Dealers) is used. If Type <> 0, the European method is used.

Example
-------

``=DAYS360("1/1/2011", "31/1/2011")`` returns 30 as the number of interest days in January, 2011. 


