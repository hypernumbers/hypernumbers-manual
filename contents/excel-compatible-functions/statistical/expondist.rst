=========
EXPONDIST
=========

Overview
--------

Calculates values for an exponential distribution. The exponential distribution is a continuous probability distribution, with parameter λ (rate). λ must be greater than zero.

Syntax
------

``=EXPONDIST(x, λ, mode)``


.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``x``                 The value for which the exponential distribution is to
                      to be calculated.

``λ``                 The rate - a postive number.

``mode``              If ``mode`` is 0, ``EXPONDIST`` calculates the
                      probability density function of the exponential
                      distribution ``λexp(-λx)``

                      If ``mode`` is 1, ``EXPONDIST`` calculates the
                      cumulative distribution function of the exponential
                      distribution ``1-exp(-λx)``.
===================== ======================================================

Example
-------

``=EXPONDIST(0, 1, 0)`` returns 1.

``=EXPONDIST(0, 1, 1)`` returns 0.
