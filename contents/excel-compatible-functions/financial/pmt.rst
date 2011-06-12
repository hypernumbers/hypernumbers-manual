===
PMT
===

Overview
--------

Returns the periodic payment for an annuity with constant interest rates.

Syntax
------

``=PMT(Rate, NPer, PV, FV, Type)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``Rate``              is the periodic interest rate.

``NPer``              is the number of periods in which annuity is paid.

``PV``                is the present value (cash value) in a sequence of 
                      payments.

``FV``                **optional** is the desired value (future value) to 
                      be reached at the end of the periodic payments.

``Type``              **optional** is the due date for the periodic 
                      payments.

                      Type=0 is payment at the end of each period.

                      Type=1 is payment at the beginning
===================== ======================================================


Example
-------

What are the periodic payments at a yearly interest rate of 1.99% if the payment time is 3 years and the cash value is 25,000 currency units. There are 36 months as 36 payment periods, and the interest rate per payment period is 1.99%/12.

``=PMT(1.99%/12;36;25000)`` = -715.96 currency units. The periodic monthly payment is therefore 715.96 currency units. 
