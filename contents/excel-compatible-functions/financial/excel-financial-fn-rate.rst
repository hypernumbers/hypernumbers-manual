====
RATE
====

Overview
--------

Calculates the interest rate for an annuity.

Syntax
------

``=RATE(numperiods, payment, presentvalue, futurevalue, type, guess)``

rate: the (fixed) interest rate per period. 
numperiods: the total number of payment periods in the term. 
payment: the payment made each period. If futurevalue is given, this may omitted (defaults to 0). 
presentvalue: the lump sum payment at the start of the term. 
futurevalue: the cash balance you wish to attain at the end of the term (optional - defaults to 0). 
type: when payments are made (optional - defaults to 0):

0 - at the end of each period. 
1 - at the start of each period (including a payment at the start of the term). 

guess: an optional guess of the interest rate (defaults to 10%). 

RATE calculates the fixed interest rate needed, so that presentvalue (the value today) followed by a payment each period for numperiods periods results in futurevalue, the value at the end of the term. Interest is assumed to be compounded each period. The calculation uses iteration to solve an equation, with guess as the starting value for the iteration. 

If this function returns error Err:523, the iteration has failed to converge - try a different guess, or recheck the parameters. 

**CHECK ERROR MSG**

Example
-------

``=RATE(3, -1000, 0, 3152, 0, 10%)``

returns approximately 4.98%. You pay 1,000 at the end of each year for 3 years, and receive 3,152.50 at the end of the term. The applicable interest rate was 4.98%. 

Issues
------

* Take care that you understand how this function compounds the interest each period. Many financial calculators allow you to set a separate compounding period - spreadsheets do not. 
