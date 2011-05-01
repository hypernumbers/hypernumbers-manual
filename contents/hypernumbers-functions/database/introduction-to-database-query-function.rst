==================================
Introduction To Database Functions
==================================

A number of special functions have been developed for use with hypernumbers database queries. Available database functions include:

.. toctree::
   :maxdepth: 1

   countz       <hypernumbers-database-fn-countz>
   sumz         <hypernumbers-database-fn-sumz>
   debugz       <hypernumbers-database-fn-debugz>
   link.box.WxH <hypernumbers-database-fn-linkbox>

Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.5x15(arg1, arg2, ...)``

The expression ``5x15`` on the end says *make me five cells wide and fifteen cells high. This just causes the cell that the function is called in to merge over that set of cells.
