===
NPV
===

Overview
--------

Returns the net present value of an investment with regular cash payments.

Syntax
------

``=NPV(discountrate, payment1, payment2...)``

===================== ======================================================
Argument              Description
===================== ======================================================
``discountrate``      is the discount rate (expressed as a fraction of 1) 
                      which you consider applies to one single period. 
                      It is assumed to be constant for all periods. 

``payment``           There can be an infinite number of payments which 
                      are numbers or ranges containing numbers, 
                      representing payments made at the end of each of a 
                      series of fixed length periods. The payments may 
                      be both positive and negative, for income and 
                      outgoing. 
===================== ======================================================

Example
-------

``=NPV(8.75%, 1000, 2000, 3000)``

where the discount rate 8.75% is the assumed competitive return over one year, and 1000 is to be paid at the end of year 1, 2000 at the end of year 2 and 3000 at the end of year 3, returns 4943.21 as currency. 

``=NPV(0.0875, A1:A3)``

where cells ``A1:A3`` contain 1000, 2000 and 3000, returns 4943.21 similarly. 

Issues
------

* The discount rate chosen is assumed to compound each period. If the period is say one month, and you wish to calculate using a competitive return known over one year, you might choose a discount rate of a twelfth of the competitive return - but be aware that this is not absolutely accurate. There is no simple formula. 
