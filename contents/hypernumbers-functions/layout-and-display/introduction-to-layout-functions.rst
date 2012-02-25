=========================================
Hypernumbers Layout And Display Functions
=========================================

A number of layout and display functions are available to enhance the visual appeal of webpage and wikipage content. Currently available layout functions include:

.. toctree::
   :maxdepth: 1

   HORIZONTAL.LINE.W <horizontal-line>
   HTML               <html>
   HTML.ALERT.WxH    <html-alert>
   HTML.BOX.WxH      <html-box>
   HTML.HEADLINE.WxH <html-headline>
   HTML.PLAINBOX.WxH <html-plainbox>
   HTML.RULEDBOX.WxH <html-ruledbox>
   IFRAME            <iframe>
   IMG               <img>
   INCLUDE           <include>
   LOREM.HEADLINE    <lorem-headline>
   LOREM.IPSUM       <lorem-ipsum>
   TABLE.WxH         <table>
   TOGGLE.VIEWS      <toggle-views>
   VERTICAL.LINE.H   <vertical-line>

Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.3x6(arg1, arg2, ...)``

The expression ``.3x6`` on the end says *make me three cells wide and six cells high*. This just causes the cell that the function is called in to merge over that set of cells.

Likewise:

``=function.6(arg1, arg2, ...)``

The expression ``.6`` on the end says *make me six cells high or wide* depending on the function. This just causes the cell that the function is called in to merge over that set of cells.

The layout functions work *with* the normal formatting functions of the spreadsheet. If you set the text colour to blue in the cell, then the text in the layout elements will be blue, unless the layout function specifically overrides it. This generally works for alignments, bold/italic, font-size and typeface and so on and so forth.

