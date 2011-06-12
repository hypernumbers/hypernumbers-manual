==========
STATUS.BAR
==========

Overview
--------

The status.bar function produces a progress like bar similar to the popularity graphic used in spotify.

Syntax
------

``=status.bar(Value, [StyleType])``

Arguments
---------

.. tabularcolumns:: |l|L|

================== =============================================================
Argument           Description
================== =============================================================
``Value``          Value must be a number between 0 and 5 (inclusive) and is
                   used to set the length of the status bar.

``StyleType``      **Optional**. Specifies the style to use for the progress
                   bar.

                   1 - black progress bar (DEFAULT)

                   2 - red progress bar

                   3 - green progress bar

                   4 - ticks

                   5 - crosses

                   6 – hearts
================== =============================================================


Example 1
---------

This example illustrates the varius styles available.

.. figure:: /images/status_bar_ex1_styles.png


Example 2
---------

This example illustrates how multiple values can be compared using progress bars by scaling to an appropirate value.

.. figure:: /images/status_bar_ex2_scaling.png
