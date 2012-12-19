=============
HISTOGRAM.WxH
=============

Overview
--------

The histogram.WxH function creates single and stacked barcharts with a horizontal or vertical orientation across W columns and H rows relative to the cell where the function is entered.

Syntax
------

``=histogram.WxH(Type, XRange, NoOfYs, Yrange1, Yrange2,.., [Title], [X-Axis], [Y-Axis], [Series_Names])``


Arguments
---------

.. tabularcolumns:: |l|L|

================== ==========================================================================
Argument           Description
================== ==========================================================================
``WxH``            Specifies the number of rows and columns in which to autofill the graph
                   results e.g. 5x10 will result in a graph displaying across 5 rows and 10
                   columns relative to the cell where the function is input.

``Type``           ``0`` - vertical grouped bars

                   ``1`` - vertical stacked bars

                   ``2`` - horizontal grouped bar

                   ``3`` - vertical stacked bars

``XRange``         The cell range containing the x-axis data e.g. A1:A10. The Xrange
                   for a linegraph function must be numeric values.

``NoOfYs``         An integer value that tells the function how many line series to draw
                   e.g. ``3``. Must be at least ``1``.

``Yrange``         Specifies the cell range containing the y-series of data e.g. ``B1:B10``.
                   At least one Yrange is required and the number of Yranges specified must
                   match the NoOfYs value above.

``Title``          **Optional**. Specifies the graph title and is a string or refers to a
                   cell containing a string.

``X-Axis-Label``   **Optional**. Specifies the x-axis label and is a string or refers to a
                   cell containing a string.

``Y-Axis-Label``   **Optional**. Specifies the y-axis label and is a string or refers to a
                   cell containing a string.

``Series_Names``   **Optional**. Specifies a reference to a cell range containing the names
                   of each series to appear as a legend in the graph. Alternately, the
                   series names can be entered as strings inside curly brackets e.g.
                   ``{“Inbound calls”, “Outbound calls”}``.
================== ==========================================================================


Where an optional parameter argument is used, all preceeding optional arguments in the syntax must also be specified e.g. as empty. Succeeding optional parameters, if they are not to be used do not need to be specified.

Example
-------

.. image:: /images/example-histogram.png
   :scale: 100 %
   :align: center
   :alt: Example vixo histogram function

Additional Material
-------------------

Read a blog post about inserting `graphs and charts into WordPress`_.

.. _graphs and charts into WordPress: http://wordpress.vixo.com/graphs-and-charts-in-wordpress/
