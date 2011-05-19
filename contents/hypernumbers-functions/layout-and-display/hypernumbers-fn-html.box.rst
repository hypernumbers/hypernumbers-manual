============
HTML.BOX.WxH
============

Overview
--------

The html.box.WxH  function is used to create stylised display boxes that enhance the presentation on web and wikipages.

Syntax
------

``=html.box.WxH(Body, <Title>, <Footer>)``

Arguments
---------

.. tabularcolumns:: |l|L|

===========     ===========================================================================
Argument        Description
===========     ===========================================================================
``WxH``	        Specifies the number of rows and columns in which to autofill the graph 
                results e.g. 5x10 will result in a graph displaying across 5 rows and 10 
                columns relative to the cell where the function is input.
	
``body`` 	Specifies what is to appear in the body. Valid entries include a string, 
                a cell reference, function, string, image, link.
	
``Title``	**Optional**. A string or reference to a cell specifying a title for the
                display box.
	
``Footer``	**Optional**. A string or reference to a cell specifying a footer for the 
                display box.

===========     ===========================================================================

Example
-------

The folowing example illustrates different styles.
=html.box.10x20(0, table(/blah/bleh/A1:G12), “Contact Details”)
