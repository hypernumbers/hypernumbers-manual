===============================
Hypernumbers Database Functions
===============================

A number of special functions have been developed for use with hypernumbers database queries. Available database functions include:

.. toctree::
   :maxdepth: 1

   DEBUGZ       <debugz>
   LINK.BOX.WxH <link.box>
   ZCOUNT       <zcount>
   ZSUM         <zsum>

Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.5x15(arg1, arg2, ...)``

The expression ``5x15`` on the end says *make me five cells wide and fifteen cells high*. This just causes the cell that the function is called in to merge over that set of cells.

There are other functions that can use z-queries, `COUNT(...)` and `SUM(...)` for instance, and a function that uses z-queries to build navigation functions `=HTML.ZSUBMENU(...)`.
