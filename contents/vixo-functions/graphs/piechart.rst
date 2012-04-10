============
PIECHART.WxH
============

Overview
--------

The piechart.WxH function is used to create a piechart. More than one piechart can be overlayed around each other using this function.

Syntax
------

``=piechart.WxH(NoOfRings, Range1, Range2, .., [Title])``

Arguments
---------

================== ==========================================================================
Argument           Description
================== ==========================================================================
``NoOfRings``      Is an integer specifying the number of ranges to display in the piechart.

``Range``          Specifies the range of values and labels to display.

``Title``          **Optional**. A string or reference to a cell.
================== ==========================================================================


Example 1
---------

The following example illustrates a simple piechart.

.. image:: /images/piechart_ex1.png

Example 2
---------

This example shows two data distributions overlayed on the same piechart using the ``NoOfRings`` parameter.

.. image:: /images/example-piechart.png
   :scale: 100 %
   :alt: Example vixo piechart function with two rings

