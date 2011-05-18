=========
xy Graphs
=========

Overview
--------

The xy.WxH function creates a (multi-line) graph based on xy cell ranges. Any number of xy ranges can be specified as an overlay plot. The graph autofills across W columns and H rows relative to the cell where the function is entered.
 
Syntax
------

``=xy.WxH(NoOfXYRanges, XYrange1, XYrange2,…, [Title], [X-Axis-Label], [Y-Axis-Label], [Series_Names])``

Arguments
---------

.. tabularcolumns:: |l|L|

================== ==========================================================================
Arguments          Description
================== ==========================================================================
``WxH``	           Specifies the number of rows and columns in which to autofill the graph 
                   results e.g. ``5x10`` will result in a graph displaying across 5 rows 
                   and 10 columns relative to the cell where the function is input.
	
``NoOfXYRanges``   Specifies the number XY ranges to overlay in the graph.

``XYRange``        Specifies the cell range containing the xy-series of data e.g. ``B1:C10``. 
                   At least one XYrange is required and the number of XYranges specified must 
                   match the ``NoOfXYRanges`` value. 
	
``Title``          **Optional**. Specifies the graph title and is a string or refers
                   to a cell containing a string. 
	
``X-Axis-Label``   **Optional**. Specifies the x-axis label and is a string or refers
                   to a cell containing a string.
	
``Y-Axis-Label``   **Optional**. Specifies the y-axis label and is a string or
                   refers to a cell containing a string.
	
``Series_Names``   **Optional**. Specifies a reference to a cell range containing the 
                   names of each series to appear as a legend in the graph. Alternately, 
                   the series names can be entered as strings inside curly brackets 
                   e.g. ``{“income”, “expenditure”}``.
================== ==========================================================================

Where an optional parameter argument is used, all preceeding optional arguments in the syntax must also be specified. Succeeding optional parameters, if they are not to be used do not need to be specified.

Example
-------

.. image :: /images/example-xy.png
