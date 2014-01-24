=====
TODAY
=====

Overview
--------

Returns the current computer system date. The value is updated when you reopen the document or modify the values of the document.

.. warning:: In Excel and other desktop spreadsheets ``=today()`` recalculates everytime the spreadsheet is opened. Hypernumbers doesn't have the concept of *opening spreadsheets*. If you require a time function that changes you should use the Hypernumbers function ``=tick()`` which is a ticking now. You can configure it to tick on an hourly, daily, weekly or monthly basis.


Syntax
------

``=TODAY()``

TODAY is a function without arguments.

Example
-------

``=TODAY()`` returns the current computer system date.
