====
NPER
====

Overview
--------

Returns the number of payment periods for an annuity.

Syntax
------

``=NPER(rate, payment, presentvalue, futurevalue, type)``

rate: the (fixed) interest rate per period. 
payment: the payment made each period. 
presentvalue: the lump sum payment at the start of the term. 
futurevalue: the cash balance paid at the end of the term (optional - defaults to 0). 
type: when payments are made (optional - defaults to 0):

* 0 - at the end of each period. 
* 1 - at the start of each period (including a payment at the start of the term). 

NPER returns the number of payment periods implied by a lump sum (presentvalue) at the start of the term, a payment being made each period for numperiods periods, at fixed rate interest, compounded each period, and a lump sum (futurevalue) at the end of the term. 

Example
-------

``=NPER(5%, -100, 0, 1000, 0)``

returns approximately 8.31, the number of periods to realise this scenario. 

Issues
------

* The number of periods returned can be fractional. The fraction results from solving the equation, and is not in itself meaningful. Real life periods will be whole.
* Take care that you understand how this function compounds the interest each period. Many financial calculators allow you to set a separate compounding period - spreadsheets do not. Choose the interest rate appropriately. 
