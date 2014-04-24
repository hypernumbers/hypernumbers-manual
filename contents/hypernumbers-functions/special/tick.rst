====
TICK
====

Overview
--------

TICK is a function like NOW or TODAY except that it *ticks*. Depending on the parameters the value of TICK will update every minute, hour, day, week or month.

The daily, weekly and monthly ticks happen at midnight.

Syntax
------

``=tick(Option1, Option2)``

Arguments
---------

======== ===============================================================================
Argument Description
======== ===============================================================================
Option1  **Optional** Determines the period of the tick:

         0 Every Minute

         1 Hourly

         2 Daily (DEFAULT)

         3 Weekly

         4 Monthly

Option2  If Option 1 is weekly then Option 2 takes the following values

         1 Monday (DEFAULT)

         2 Tueday

         3 Wednesday

         4 Thursday

         5 Friday

         6 Saturday

         7 Sunday

         If Option 1 is monthly then Option 2 can be an integer between 1 and 31
         for a day of the month.

         The DEFAULT is the first day of the month.

         Values after the end of some months will run on the last day. For example
         the expression ``=tick(3, 31)`` will fire at midnight on the 27th February
         (the 28th in a leap year).
======== ===============================================================================

.. warning:: TICK is a special function that cannot be called from inside another function. An expression like ``=if(tick(a1) > 123, true, false)`` will return a ``#CANTINC!`` error.
