======================
Introduction To Graphs
======================

In hypernumbers (and unlike in Excel) graphs are created in the spreadsheet as cell functions. Currently available graph functions include:

.. toctree::
   :maxdepth: 1

   dategraph.WxH <hypernumbers-graph-fn-dategraph>
   equigraph.WxH <hypernumbers-graph-fn-equigraph>  
   histogram.WxH <hypernumbers-graph-fn-histogram>
   linegraph.WxH <hypernumbers-graph-fn-linegraph>
   piechart.WxH  <hypernumbers-graph-fn-piechart>
   sparkline.WxH <hypernumbers-graph-fn-sparkline>
   speedo.WxH    <hypernumbers-graph-fn-speedo>
   status.bar    <hypernumbers-graph-fn-status-bar>
   xy.WxH        <hypernumbers-graph-fn-xy>


Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.3x6(arg1, arg2, ...)``

The expression ``.3x6`` on the end says *make me three cells wide and six cells high*. This just causes the cell that the function is called in to merge over that set of cells.
