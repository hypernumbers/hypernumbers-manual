====================
Vixo Graph Functions
====================

In vixo (and unlike in Excel) graphs are created in the spreadsheet as cell functions. Vixo graph functions include:


.. toctree::
   :maxdepth: 1

   DATEGRAPH.WxH <dategraph>
   EQUIGRAPH.WxH <equigraph>
   HISTOGRAM.WxH <histogram>
   LINEGRAPH.WxH <linegraph>
   PIECHART.WxH  <piechart>
   SPARKBAR.WxH  <sparkbar>
   SPARKHIST.WxH <sparkhist>
   SPARKLINE.WxH <sparkline>
   SPEEDO.WxH    <speedo>
   STATUS.BAR    <status-bar>
   XY.WxH        <xy>

Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.3x6(arg1, arg2, ...)``

The expression ``.3x6`` on the end says *make me three cells wide and six cells high*. This just causes the cell that the function is called in to merge over that set of cells in the spreadsheet.

WordPress Integration
---------------------

Read a blog post about inserting `graphs and charts into WordPress`_.

.. _graphs and charts into WordPress: http://wordpress.vixo.com/graphs-and-charts-in-wordpress/
