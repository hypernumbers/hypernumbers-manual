=========
TIMEVALUE
=========

TIMEVALUE returns the internal time number from a text enclosed by quotes and which may show a possible time entry format.

The internal number indicated as a decimal is the result of the hypernumbers system date.

If the text string also includes a year, month, or day, TIMEVALUE only returns the fractional part of the conversion.

Syntax
------

``=TIMEVALUE("Text")``

Text is a valid time expression and must be entered in quotation marks.

Example
-------

``=TIMEVALUE("4PM")`` returns 0.67. When formatting in time format HH:MM:SS, you then get 16:00:00.

**Doesn't work returns #VALUE! error**

``=TIMEVALUE("12:00")`` returns 0.5. If you use the HH:MM:SS time format, the value is 12:00:00.

**Doesn't apply time format**

``=TIMEVALUE("24:00")`` returns 1. If you use the HH:MM:SS time format, the value is 00:00:00.

**Doesn't apply time format**
