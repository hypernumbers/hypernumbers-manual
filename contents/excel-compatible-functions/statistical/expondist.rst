=========
EXPONDIST
=========

Overview
--------

Calculates values for an exponential distribution.

Syntax
------

``=EXPONDIST(x, λ, mode)``

    The exponential distribution is a continuous probability distribution, with parameter λ (rate). λ must be greater than zero. 

    If mode is 0, EXPONDIST calculates the probability density function of the exponential distribution λexp(-λx)

    If mode is 1, EXPONDIST calculates the cumulative distribution function of the exponential distribution 1-exp(-λx).

Example
-------

``=EXPONDIST(0, 1, 0)`` returns 1. 

``=EXPONDIST(0, 1, 1)`` returns 0. 
