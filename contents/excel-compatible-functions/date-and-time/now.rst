===
NOW
===

Returns the computer system date and time. The value is updated when you recalculate the document or each time a cell value is modified.

.. warning:: In Excel and other desktop spreadsheets ``=now()`` recalculates everytime the spreadsheet is opened. Vixo doesn't have the concept of *opening spreadsheets*. If you require a time function that changes you should use the Vixo function ``=tick()`` which is a ticking now. You can configure it to tick on an hourly, daily, weekly or monthly basis. There is also a special fuction called ``=timestamp(...)`` which can be used to create timestamps.

Syntax
------

``=NOW()``

NOW is a function without arguments.

Example
-------

``=NOW()-A1`` returns the difference between the date in ``A1`` and now. Format the result as a number.
