==========
ERROR.TYPE
==========

Overview
--------

The ERROR.TYPE function checks whether the contents of a cell returns an error and if it does the function  returns a number corresponding to the type of error. If there is no error in the cell the function returns the error #N/A.

Syntax
------

``=ERROR.TYPE(Errval)``

``Errval`` is error type returned from a reference to a cell. This is translated to a number corresponding the error type as follows:

* #NULL!  = 1
* #DIV/0! = 2
* #VALUE! = 3
* #REF!   = 4
* #NAME?  = 5
* #NUM!   = 6
* #N/A    = 7
* Anything else	(no errval) = #N/A




Example
-------

If A2 is set to #NULL! then ``=error.type(A2)`` will return 1
If A3 is set to =3/0 then ``=if(error.type(A3)=2, True, False)``  will return true
If A4 is set to =indirect(“A”&-2) then ``=error.type(A4)`` will return 4
If A5 is set to =AMadeup.Function(2, 12) then ``=error.type(A5)`` will return 5 as this function does not exist in hypernumbers

