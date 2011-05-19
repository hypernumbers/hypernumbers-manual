============================================
Introduction To Layout And Display Functions
============================================

A number of layout and display functions are available to enhance the visual appeal of webpage and wikipage content. Currently available layout functions include:

.. toctree::
   :maxdepth: 1

   HTML.ALERT.WxH - a box for alerts    <hypernumbers-fn-html-alert>
   HTML.BOX.WxH - displays a box        <hypernumbers-fn-html-box>
   HTML.HEADLINE.WxH - make a headline  <hypernumbers-fn-html-headline>
   HTML.PLAINBOX.WxH - make a plain box <hypernumbers-fn-html-plainbox>
   HTML.RULEDBOX.WxH - make a ruled box <hypernumbers-fn-html-ruledbox>
   HORIZONTAL.LINE.W                    <hypernumbers-fn-horizontal-line>
   IMG - embed an image                 <hypernumbers-fn-img>
   LOREM.HEADLINE - generates headlines <hypernumbers-fn-lorem-headline>
   LOREM.IPSUM - generates display text <hypernumbers-fn-lorem-ipsum>
   TABLE - embed a sortable table       <hypernumbers-fn-table>
   VERTICAL.LINE.H                      <hypernumbers-fn-vertical-line>

Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.3x6(arg1, arg2, ...)``

The expression ``.3x6`` on the end says *make me three cells wide and six cells high*. This just causes the cell that the function is called in to merge over that set of cells.

Likewise:

``=function.6(arg1, arg2, ...)``

The expression ``.6`` on the end says *make me six cells high or wide* depending on the function. This just causes the cell that the function is called in to merge over that set of cells.

The layout functions work *with* the normal formatting functions of the spreadsheet. If you set the text colour to blue in the cell, then the text in the layout elements will be blue, unless the layout function specifically overrides it. This generally works for alignments, bold/italic, font-size and typeface and so on and so forth.

