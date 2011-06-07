=========
DATEVALUE
=========

Overview
--------

Converts a string representation of a date to a date.

If the text string also includes a time value, DATEVALUE only returns the integer part of the conversion.


Syntax
------

``=DATEVALUE("Text")``

Text is a valid date expression and must be entered with quotation marks.

.. note:: Valid date expressions are of the form dd/mm/yyyy or dd-mm-yyyy

Example
-------

``=DATEVALUE("20-07-1954")`` Tues 20th July 1954 00:00:00 GMT

To get the datevalue as a number wrap it with a call to ``INT()``

``=INT(DATEVALUE("20-07-1954"))`` yields 19925
