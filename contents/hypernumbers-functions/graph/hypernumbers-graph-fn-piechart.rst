=========
Piecharts
=========

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

.. image ::/images/piechart_ex1.png


Example 2
---------

To compare the different group distributions from example 1, we could create separate pie charts for each group. An alternative approach is to overly the groups in the one piechart by using the NoOfRings parameter – as shown below. 

.. image:: /images/example-piechart.png
   :scale: 100 %
   :align: center
   :alt: Example hypernumbers piechart function with two rings

