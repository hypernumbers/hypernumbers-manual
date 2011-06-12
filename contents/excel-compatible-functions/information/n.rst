=
N
=

Overview
--------

Returns the numeric value of the given parameter. Returns 0 if parameter is text, FALSE or #NA.

If an error occurs, other than #NA, the function returns the error value.

Syntax
------

``=N(Value)``

Value is the parameter to be converted into a number. N() returns the numeric value if it can. It returns the logical values TRUE and FALSE as 1 and 0 respectively. It returns text and errors as 0.

Example
-------

``=N(123)`` returns 123

``=N(TRUE)`` returns 1

``=N(FALSE)`` returns 0

``=N("abc")`` returns 0

``=N(1/0)`` returns #DIV/0! 
