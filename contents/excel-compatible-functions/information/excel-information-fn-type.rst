====
TYPE
====

Overview
--------

Returns the type of value.

If an error occurs, the function returns a logical or numerical value.

Syntax
------

``=TYPE(Value)``

``Value`` is a specific value for which the data type is determined. The following numbers are returned depending on the type of input value:

* 1 = number 
* 2 = text
* 4 = Boolean value
* 8 = formula
* 16 = error value.

Example
-------

The examples below use the following spreadsheet data:

.. image :: /images/example-information-fns.png
   :alt: Hypernumbers compatible information function data

``=TYPE(C1)`` returns 2 as a result.

``=TYPE(D8)`` returns 1 as a result. 
