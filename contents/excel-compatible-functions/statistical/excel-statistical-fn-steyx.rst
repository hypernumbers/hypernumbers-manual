=====
STEYX
=====

Overview
--------

Fits a straight line to data using linear regression and returns the standard error of y values.

Syntax
------

``=STEYX(yvalues, xvalues)``

    yvalues and xvalues are single row or column ranges specifying points in a set of data. yvalues and xvalues must be the same size. 

    STEYX in effect fits a straight line through these data points, using the linear regression method (least squares). It then returns the standard error of actual y values compared to y values on the straight line found. 

    The equation of a straight line may be given as y = a + bx. 

Example
-------

``=STEYX(B2:B6, A2:A6)`` 

where the x values in A2:A6 are 1, 2, 3, 4, 5 and the y values in B2:B6 are 2, 4, 7, 8, 10 returns approximately 0.51. The equation of the straight line found is very nearly y = 2x, and would be if B4 contained 6. The standard error is therefore quite small. 
