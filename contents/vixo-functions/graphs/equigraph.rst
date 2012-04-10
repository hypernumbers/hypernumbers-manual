=============
EQUIGRAPH.WxH
=============

Overview
--------

The equigraph.WxH function creates a (multi-line) graph where the x-axis is a range of string values. The graph renders across W columns and H rows relative to the cell where the function is entered.

Syntax
------

``=equigraph.WxH(XRange, NoOfYs, Yrange1, Yrange2,..., [Title], [X-Axis-Label], [Y-Axis-Label], [Series_Names])``

Arguments
---------

.. tabularcolumns:: |l|L|

================== ==========================================================================
Arguments          Description
================== ==========================================================================
``WxH``	           Specifies the number of rows and columns in which to autofill the graph
                   results e.g. ``5x10`` will result in a graph displaying across 5 rows
                   and 10 columns relative to the cell where the function is input.

``XRange``         The cell range containing the x-axis data e.g. ``A1:A10``. The Xrange
                   for a equigraph function can contain string values.

``NoOfYs``         an integer value that tells the function how many line series to draw
                   e.g. ``3``. Must be at least 1.

``Yrange``         Specifies the cell range containing the y-series of data e.g. ``B1:B10``.
                   At least one Yrange is required and the number of Yranges specified must
                   match the NoOfYs value above.

``Title``          **Optional**. Specifies the graph title and is a string or refers
                   to a cell containing a string.

``X-Axis-Label``   **Optional**. Specifies the x-axis label and is a string or refers
                   to a cell containing a string.

``Y-Axis-Label``   **Optional**. Specifies the y-axis label and is a string or
                   refers to a cell containing a string.

``Series_Names``   **Optional**. Specifies a reference to a cell range containing the
                   names of each series to appear as a legend in the graph. Alternately,
                   the series names can be entered as strings inside curly brackets
                   e.g. ``{“Inbound calls”, “Outbound calls”}``.
================== ==========================================================================

Where an optional parameter argument is used, all preceeding optional arguments in the syntax must also be specified. Succeeding optional parameters, if they are not to be used do not need to be specified.

Example
-------

.. image:: /images/example-equigraph.png
   :scale: 100 %
   :align: center
   :alt: Example vixo equigraph function

