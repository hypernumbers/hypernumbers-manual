==
FV
==

Overview
--------

Returns the future value of an initial sum with a subsequent stream of payments.

Syntax
------

``=FV(rate, numperiods, payment, presentvalue, type)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``rate``              the (fixed) interest rate per period. 

``numperiods``        the total number of payment periods in the term. 

``payment``           the payment made each period. If presentvalue is 
                      given, this may omitted (defaults to 0). 

``presentvalue``      **optional** the lump sum payment at the start of 
                      the term (defaults to 0). With a loan, this would 
                      normally be the sum borrowed; with a bond this 
                      would generally be 0. 

``type``              **optional** when payments are made (defaults to 0):

                      0 - at the end of each period.
 
                      1 - at the start of each period (including a payment 
                      at the start of the term). 
===================== ======================================================

The value of money is time-dependent; for example, $100 today would be worth $110 in a year if invested at a 10% interest rate. 

FV returns the future value at the end of the term, of a lump sum payment (presentvalue) at the start of the term and a payment being made each period for numperiods periods, at fixed rate interest, compounded each period. 

Examples
--------

``=FV(5%, 3, -1000, 0, 0)``

returns a future value of 3,152.50 in currency units. You pay 1,000 at the end of each year for 3 years. Assuming an interest rate of 5% you expect to receive 3,152.50 at the end of the term. 1,000 is negative because you pay it. The future value is positive because you receive it. 

``=FV(7%, 10, -1400, 10000, 0)``

returns a future value of -328.49 in currency units. You borrow 10,000 at an interest rate of 7% and pay 1,400 at the end of each year for 10 years. 10,000 is positive because you have it. 1,400 is negative because you pay it. The future value is negative because this is the amount of money you owe at the end of the term. 

``=FV(7%, 1, 0, 10000, 0)``

returns a future value of -10,700 in currency units. You borrow 10,000 at an interest rate of 7% and don't pay any of it back. After 1 year you owe 10,700. 

Issues
------

* Take care that you understand how this function compounds the interest each period. Many financial calculators allow you to set a separate compounding period - spreadsheets do not. Choose the interest rate appropriately. 
