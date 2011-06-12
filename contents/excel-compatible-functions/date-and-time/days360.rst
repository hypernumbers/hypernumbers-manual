=======
DAYS360
=======

Overview
--------

Returns the difference between two dates based on the 360 day year - often used in interest calculations.

Syntax
------

``=DAYS360("Date1", "Date2", Type)``

If Date2 is earlier than Date1, the function will return a negative number.

The optional argument Type determines the type of difference calculation. If Type = 0 or if the argument is missing, the US method is used. If Type <> 0, the European method is used.

.. note:: Valid date expressions are of the form dd/mm/yyyy or dd-mm-yyyy

Example
-------

``=DAYS360("1/1/2011", "31/1/2011")`` returns 30 as the number of days between these two dates based on a 360 day year. 


