============
SPARKBAR.WxH
============

Overview
--------

The sparkbar.WxH function creates a (multi-line) sparkbar graph across W columns and H rows relative to the cell where the function is entered.

This function cuts the bottoms of the bars of to show the differences and the trends more strongly.

If you need faithful representation of the data and not the difference consider using the sparkhist function.

The examples contain a side by side view of the two types of spark graphs.

Syntax
------

``=sparkbar.WxH(Type, NoOfYs, Yrange1, Yrange2, ...)``


Arguments
---------

.. tabularcolumns:: |l|L|

===========  ===========================================================================
Argument     Description
===========  ===========================================================================
``WxH``      Specifies the number of rows and columns in which to autofill the graph
             results e.g. 5x10 will result in a graph displaying across 5 rows and 10
             columns relative to the cell where the function is input.

``Type``     ``0`` - vertical bars

             ``1`` - horizontal bar

``NoOfYs``   An integer value that tells the function how many line series to draw
             e.g. 3. Must be at least 1.

``Yrange``   Specifies the cell range containing each y-series of data to plot.
             At least one Yrange is required and the number of Yranges specified must
             match the NoOfYs value above.

===========  ===========================================================================

Example 1
---------

Below the four different sparkbars are shown.

.. image:: /images/example-sparkbar.png
   :scale: 100 %
   :align: center
   :alt: Example vixo sparkbar function

Example 2
---------

In example 2 the data is plotted with sparkhist and sparkbar to show how it is differently displayed.

.. image:: /images/example-sparkbar-vs-sparkhist.png
   :scale: 100 %
   :align: center
   :alt: Example vixo sparkbar and sparkhist functions
