============
SPARKBAR.WxH
============

Overview
--------

The sparkbar.WxH function creates a (multi-line) sparkbar graph across W columns and H rows relative to the cell where the function is entered.

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

``Type``     ``0`` - vertical grouped bars

             ``1`` - vertical stacked bars

             ``2`` - horizontal grouped bar

             ``3`` - vertical stacked bars

``NoOfYs``   An integer value that tells the function how many line series to draw
             e.g. 3. Must be at least 1.

``Yrange``   Specifies the cell range containing each y-series of data to plot.
             At least one Yrange is required and the number of Yranges specified must
             match the NoOfYs value above.

===========  ===========================================================================

Example
-------

Below the four different sparkbars are shown.

.. image:: /images/example-sparkbar.png
   :scale: 100 %
   :align: center
   :alt: Example hypernumbers sparkbar function
