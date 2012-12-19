=============
SPARKLINE.WxH
=============

Overview
--------

The sparkline.WxH function creates a (multi-line) sparkline graph across W columns and H rows relative to the cell where the function is entered.

Syntax
------

``=sparkline.WxH(NoOfYs, Yrange1, Yrange2, ...)``


Arguments
---------

.. tabularcolumns:: |l|L|

===========  ===========================================================================
Argument     Description
===========  ===========================================================================
``WxH``      Specifies the number of rows and columns in which to autofill the graph
             results e.g. 5x10 will result in a graph displaying across 5 rows and 10
             columns relative to the cell where the function is input.

``NoOfYs``   An integer value that tells the function how many line series to draw e.g. 3.
             Must be at least 1.

``Yrange``   Specifies the cell range containing each y-series of data to plot.
             At least one Yrange is required and the number of Yranges specified must
             match the NoOfYs value above.
===========  ===========================================================================

Example 1
---------

.. image:: /images/example-sparkline.png
   :scale: 100 %
   :align: center
   :alt: Example vixo overlaid sparkline function

Example 2
---------

The following example shows sparklines for each of three subjects based on a time-based measure over 6 time periods.  Each sparklines occupies 1 cell (as specified with the .1x1 function part) and provide a succinct and quick way to compare subject-profiles.

.. image :: /images/sparkline_example.png
   :alt: Vixo sparkline series comparison

Additional Material
-------------------

Read a blog post about inserting `graphs and charts into WordPress`_.

.. _graphs and charts into WordPress: http://wordpress.vixo.com/graphs-and-charts-in-wordpress/
