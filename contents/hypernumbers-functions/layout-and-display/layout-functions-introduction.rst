============================================
Introduction To layout and Display Functions
============================================

A number of layout and display functions are available to enhance the visual appeal of webpage and wikipage content. Currently available layout functions include:

.. toctree::
   :maxdepth: 1

   html.headline.WxH <headline-display-box>
   html.plainbox.WxH <plainbox-display-box>
   html.box.WxH <box-display-box>
   html.alert.WxH <alert-display-box>
   html.ruledbox.WxH <ruledbox-display-box>
   horizontal.line.W <horizontal-line>
   vertical.line.H <vertical-line>
   img <image-display>
   lorem.ipsum
   lorem.headline
   table <table-display>


Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.3x6(arg1, arg2, ...)``

The expression ``.3x6`` on the end says *make me three cells wide and six cells high*. This just causes the cell that the function is called in to merge over that set of cells.

Likewise:

``=function.6(arg1, arg2, ...)``

The expression ``.6`` on the end says *make me six cells high or wide* depending on the function. This just causes the cell that the function is called in to merge over that set of cells.

