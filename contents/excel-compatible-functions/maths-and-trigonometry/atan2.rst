=====
ATAN2
=====

Overview
--------

Returns the inverse trigonometric tangent of the specified x and y coordinates.

Syntax
------

``=ATAN2(NumberX, NumberY)``

NumberX is the value of the x coordinate.

NumberY is the value of the y coordinate.

ATAN2 returns the inverse trigonometric tangent, that is, the angle (in radians) between the x-axis and a line from point NumberX, NumberY to the origin. The angle returned is between -PI and PI.

To return the angle in degrees, use the DEGREES function.

Example
-------

``=ATAN2(20,20)`` returns 0.785398163397448 (PI/4 radians).

``=DEGREES(ATAN2(12.3,12.3))`` returns 45. The tangent of 45 degrees is 1. 
