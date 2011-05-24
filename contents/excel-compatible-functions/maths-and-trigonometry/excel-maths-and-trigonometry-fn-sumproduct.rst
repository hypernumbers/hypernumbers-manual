==========
SUMPRODUCT
==========

Overview
--------

Multiplies corresponding elements in the given arrays, and returns the sum of those products.

Syntax
------

``=SUMPRODUCT(Array1, Array2,....Array30)``

Array1, Array2...Array30 represent arrays whose corresponding elements are to be multiplied.

At least one array must be part of the argument list. If only one array is given, all array elements are summed.

You can use SUMPRODUCT to calculate the scalar product of two vectors.

Example 1
---------

  A   B  C  D
1 2   3  4  5
2 6   7  8  9
3 10 11 12 13

``=SUMPRODUCT(A1:B3, C1:D3)`` returns 397.

Example 2
---------

The SUMPRODUCT function is useful for calculating weighted means. Consider the following prices (column B) incurred for a particular commodity mix (column A)

   A  B
1 .5  4
2 .3  7
3 .2 10

We could calculate the weighted average as =A1*B1 + A2*B2 + A3*B3 which would return a value of 6.1 currency units.

We could use the SUMPRODUCT function to make this calculation easier i.e.

``=SUMPRODUCT(A1:A3, B1:B3)`` would also return 6.1 currency units.


 
