=======================
Vixo Database Functions
=======================

A number of special functions have been developed for use with vixo database queries. Available database functions include:

.. toctree::
   :maxdepth: 1

   DEBUGZ       <debugz>
   LINK.BOX.WxH <link.box>
   ZAVERAGE     <zaverage>
   ZCOUNT       <zcount>
   ZMAX         <zmax>
   ZMEDIAN      <zmedian>
   ZMIN         <zmin>
   ZMODE        <zmode>
   ZSTDEV       <zstdev>
   ZSUM         <zsum>
   ZTABLE.WxH   <ztable>

Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.5x15(arg1, arg2, ...)``

The expression ``5x15`` on the end says *make me five cells wide and fifteen cells high*. This just causes the cell that the function is called in to merge over that set of cells.

There are other functions that can use z-queries - for instance all the non-z versions of these zqueries like `COUNT(...)` and `SUM(...)` for instance, and functions that uses z-queries to build navigation functions like `=HTML.ZSUBMENU(...)`.
