============================
Hypernumbers Graph Functions
============================

In hypernumbers (and unlike in Excel) graphs are created in the spreadsheet as cell functions. Hypernumbers graph functions include:


.. toctree::
   :maxdepth: 1

   DATEGRAPH.WxH <hypernumbers-graph-fn-dategraph>
   EQUIGRAPH.WxH <hypernumbers-graph-fn-equigraph>
   HISTOGRAM.WxH <hypernumbers-graph-fn-histogram>
   LINEGRAPH.WxH <hypernumbers-graph-fn-linegraph>
   PIECHART.WxH  <hypernumbers-graph-fn-piechart>
   SPARKLINE.WxH <hypernumbers-graph-fn-sparkline>
   SPEEDO.WxH    <hypernumbers-graph-fn-speedo>
   XY.WxH        <hypernumbers-graph-fn-xy>
   STATUS.bar    <hypernumbers-graph-fn-status-bar>

Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.3x6(arg1, arg2, ...)``

The expression ``.3x6`` on the end says *make me three cells wide and six cells high*. This just causes the cell that the function is called in to merge over that set of cells in the spreadsheet.
