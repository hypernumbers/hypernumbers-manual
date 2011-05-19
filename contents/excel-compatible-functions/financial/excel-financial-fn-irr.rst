===
IRR
===

Overview
--------

Calculates the internal rate of return for an investment. The values represent cash flow values at regular intervals, at least one value must be negative (payments), and at least one value must be positive (income).

Syntax
------

``=IRR(Values, Guess)``

Values represents an array containing the values.

Guess (optional) is the estimated value. An iterative method is used to calculate the internal rate of return. If you can provide only few values, you should provide an initial guess to enable the iteration.

Example
-------

Under the assumption that cell contents are ``A1``=-10000, ``A2``=3500, ``A3``=7600 and ``A4``=1000, the formula ``=IRR(A1:A4)`` gives a result of 11,33%
