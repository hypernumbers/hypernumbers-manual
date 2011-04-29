======================
Introduction To Graphs
======================

.. toctree::
   :maxdepth: 1

   contents/introduction-to-graphs
   contents/hypernumbers-graph-fn-dategraph
   contents/hypernumbers-graph-fn-equigraph  
   contents/hypernumbers-graph-fn-histogram  
   contents/hypernumbers-graph-fn-linegraph  
   contents/graph/hypernumbers-graph-fn-piechart
   contents/hypernumbers-functions/graph/hypernumbers-graph-fn-sparkline
   contents/hypernumbers-functions/graph/hypernumbers-graph-fn-speedo
   contents/hypernumbers-functions/graph/hypernumbers-graph-fn-status-bar
   contents/hypernumbers-functions/graph/hypernumbers-graph-fn-xy

In hypernumbers (and unlike in Excel) graphs are created in the spreadsheet as cell functions. Currently available graph functions include:

*	sparkline.WxH
*	xy.WxH
*	speedo.WxH
*	histogram.WxH
*	linegraph.WxH
*	dategraph.WxH
*	equigraph.WxH
*	piechart.WxH
*	status.bar

Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.3x6(arg1, arg2, ...)``

The expression ``3x6`` on the end says *make me three cells wide and six cells high. This just causes the cell that the function is called in to merge over that set of cells.


