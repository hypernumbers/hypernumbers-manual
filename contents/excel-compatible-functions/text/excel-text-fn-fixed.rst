=====
FIXED
=====

Overview
--------

Returns a number as text with a specified number of decimal places and optional thousands separators.

Syntax
------

``=FIXED(Number, Decimals, NoThousandsSeparators)

Number: refers to the number to be formatted.

Decimals: refers to the number of decimal places to be displayed.

NoThousandsSeparators: (optional) determines whether the thousands separator is used. If the parameter is a number not equal to 0, the thousands separator is suppressed. If the parameter is equal to 0 or if it is missing altogether, the thousands separators are displayed.

Example
-------

``=FIXED(1234567.89, 3)`` returns 1,234,567.890 as a text string.

``=FIXED(1234567.89, 3, 1)`` returns 1234567.890 as a text string. 
