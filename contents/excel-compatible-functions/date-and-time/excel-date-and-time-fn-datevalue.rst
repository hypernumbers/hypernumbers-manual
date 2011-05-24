=========
DATEVALUE
=========

Overview
--------

Returns the internal date number for text in quotes.

The internal date number is returned as a number. The number is determined by the hypernumbers date system.

If the text string also includes a time value, DATEVALUE only returns the integer part of the conversion.

**Not quite correct**

**Comes back as a formatted date text string e.g. Mon 03 Mar, 2010, 5:43am**

**Need to use =int(datevalue()) to convert to a serial number**

Syntax
------

``=DATEVALUE("Text")``

Text is a valid date expression and must be entered with quotation marks.

.. note:: Valid date expressions are of the form dd/mm/yyyy or dd-mm-yyyy

Example
-------

``=DATEVALUE("20-07-1954")`` yields 19925

``=DATEVALUE("20-07-1954 12:00:00")`` yields 19925.5.
