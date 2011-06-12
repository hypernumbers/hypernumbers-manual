=====
MMULT
=====

Overview
--------

The MMULT function returns the matrix product of two square dimensioned arrays as a single value. 

Syntax
------

``=MMULT(array1, array2)`` 

Array1, array2    must be nxn dimension or square matrices. 

Example
-------

if array1 is {3, 3, 7, 2} corresponding cells a1, b1, a2, b2} and array2 is {2, 0, 0, 2} corresponding to cells a4, b4, a5, b5 then

``=MMULT(A1:B2, A4:b5)`` returns a value of 6.

