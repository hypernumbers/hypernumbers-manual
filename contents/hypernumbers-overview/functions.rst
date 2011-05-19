=========
Functions
=========

Many of the standard functions you might already be familiar with using in your desktop spreadsheet e.g. ``IF``, ``SUM``, ``COUNT``, ``VLOOKUP`` etc. are implemented in hypernumbers.

There are also many special hypernumbers functions available that can be used to build dynamic web applications. 

These new function categories include:

*	layout and display functions
*	navigation functions
*	graphing functions
*	social and web integration functions
*	web functions
*	template control functions
*	database (or Z-order query) functions
*	calculation functions (new don’t calculate function tbd)


Some examples include the ``=link(...)`` function which allows you to easily create a hyperlink inside a cell on a spreadsheet page. Another is the ``=google.map(...)`` which allows you to embed interactive Google maps inside a cell range in a spreadsheet page. Or you might want to enable users to post facebook comments in your application using the ``=facebook.comments(...)`` function. 

In hypernumbers graphs are created using functions. An example is the ``=histogram.WxH(...)`` function which would be used to create a barchart – where the ``WxH`` specifies the number of columns and rows to use to display the graph. You can see an example of this in the hypernumbers spreadsheet diagram earlier.

Because hypernumbers enables spreadsheet data to be organised into complex page hierarchies, a new class of database query functions exists. These database functions utilise a specially developed querying language that lets you implement calculations across such hierarchical data. You can see an example of a z-query (or database query) used inside a function in the excel-like-spreadsheet diagram. This is the function ``=sum(./[true]/d3)`` in the diagram. Z-queries and functions are discussed in the chapter on database queries.
  
The functions section provides the syntax and examples of the use of these functions. 
