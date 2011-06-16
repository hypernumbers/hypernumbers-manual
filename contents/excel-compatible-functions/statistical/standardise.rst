===========
STANDARDISE
===========

Overview
--------

Converts a value in a normal distribution to its equivalent in a standard normal distribution.

Syntax
------

``=STANDARDISE(n, μ, σ)``

or

``=STANDARDIZE(n, μ, σ)``

.. tabularcolumns:: |l|L|

=============== ================================================================
Arguments       Description
=============== ================================================================
``n``           is a number in a normal distribution.

``μ``           Is the known mean of the normal distribution.

``σ``           Is the known standard deviation.
=============== ================================================================

STANDARDISE (or STANDARDIZE) converts n to a corresponding value in a standard normal distribution, which has mean 0 and standard deviation 1.

STANDARDISE (or STANDARDIZE) calculates and returns (n - μ)/ σ.

Example
-------

``=STANDARDISE(14, 10, 4)`` returns 1. The original value 14 lies 1 standard deviation above the original mean 10; the new value lies 1 standard deviation above the new mean 0.
