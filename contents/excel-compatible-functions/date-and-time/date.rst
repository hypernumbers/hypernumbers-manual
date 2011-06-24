====
DATE
====

Overview
--------

This function calculates a date specified by year, month, day and displays it in the cell's formatting. The default format of a cell containing the DATE function is the date format, but you can format the cells with any other number format.

Syntax
------

``=DATE(Year; Month; Day)``

Year is an integer indicating the year
Month is an integer indicating the month.
Day is an integer indicating the day of the month.

If the values for month and day are out of bounds, they are carried over to the next digit. If you enter ``=DATE(00,12,31)`` the result will be 12/31/00. If, on the other hand, you enter ``=DATE(00,13,31)`` the result will be 1/31/01.

Example
-------

``=DATE(00,1,31)`` yields 1/31/00 if the cell format setting is MM/DD/YY.
