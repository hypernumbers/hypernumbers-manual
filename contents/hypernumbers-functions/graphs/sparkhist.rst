=============
SPARKHIST.WxH
=============

Overview
--------

The sparkhist.WxH function creates a (multi-line) spark histogram graph across W columns and H rows relative to the cell where the function is entered.

If you are only interested in trends you should consider the function sparkbar which renormalises the data and just shows the change.

See the examples for the difference.

Syntax
------

``=sparkhist.WxH(Type, NoOfYs, Yrange1, Yrange2, ...)``


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

Example 1
---------

Below the four different sparkhists are shown.

.. image:: /images/example-sparkhist.png
   :scale: 100 %
   :align: center
   :alt: Example hypernumbers sparkhist function

Example 2
---------

In example 2 the data is plotted with sparkhist and sparkbar to show how it is differently displayed.

.. image:: /images/example-sparkbar-vs-sparkhist.png
   :scale: 100 %
   :align: center
   :alt: Example hypernumbers sparkbar and sparkhist functions


Additional Material
-------------------

Read a blog post about inserting `graphs and charts into WordPress`_.

.. _graphs and charts into WordPress: http://wordpress.hypernumbers.org/graphs-and-charts-in-wordpress/?from=http://documentation.hypernumbers.org
