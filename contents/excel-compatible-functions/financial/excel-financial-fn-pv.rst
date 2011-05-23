==
PV
==

Overview
--------

Returns the present value of an investment resulting from a series of regular payments.

Use this function to calculate the amount of money needed to be invested at a fixed rate today, to receive a specific amount, an annuity, over a specified number of periods. You can also determine how much money is to remain after the elapse of the period. Specify as well if the amount is to be paid out at the beginning or at the end of each period.

Enter these values either as numbers, expressions or references. If, for example, interest is paid annually at 8%, but you want to use month as your period, enter 8%/12 under Rate and LibreOffice Calc with automatically calculate the correct factor.

Syntax
------

``=PV(Rate, NPer, Pmt, FV, Type)``

Rate: defines the interest rate per period.
NPer: is the total number of periods (payment period).
Pmt: is the regular payment made per period.
FV: (optional) defines the future value remaining after the final installment has been made.
Type: (optional) denotes due date for payments. Type = 1 means due at the beginning of a period and Type = 0 (default) means due at the end of the period.

Example
-------

What is the present value of an investment, if 500 currency units are paid out monthly and the annual interest rate is 8%? The payment period is 48 months and 20,000 currency units are to remain at the end of the payment period.

=PV(8%/12, 48, 500, 20000) = -35,019.37 currency units. Under the named conditions, you must deposit 35,019.37 currency units today, if you want to receive 500 currency units per month for 48 months and have 20,000 currency units left over at the end. Cross-checking shows that 48 x 500 currency units + 20,000 currency units = 44,000 currency units. The difference between this amount and the 35,000 currency units deposited represents the interest paid.

If you enter references instead of these values into the formula, you can calculate any number of "If-then" scenarios. Please note: references to constants must be defined as absolute references. Examples of this type of application are found under the depreciation functions. 
