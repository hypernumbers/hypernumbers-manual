====
SKEW
====

Overview
--------

Returns a measure of how skewed a distribution is.

Syntax
------

``=SKEW(number1, number2,....)``

    number1, number2 or ranges/arrays containing numbers can be input. 

    SKEW returns a measure of how skewed a distribution is, relative to a normal distribution - that is, how asymmetric it is. Positive values indicate a distribution with a tail inclining to the positive side, and negative values a distribution with a tail inclining to the negative side. 

Example
-------

``=SKEW(A1:A30)`` returns a measure of how skewed the distribution of numbers in A1:A30 is. 

``=SKEW(1, 3, 4, 5, 9)`` returns approximately 0.885, indicating that the tail of this (too small to be useful) distribution inclines to the positive. 

``=SKEW(1, 3, 4, 5, 7)`` returns 0; the distribution is symmetric.
