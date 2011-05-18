==============
HTML.ALERT.WxH
==============

Overview
--------

The html.alert.WxH  function is used to create stylised display boxes that enhance the presentation of content on web and wikipages based on a specified style.
 
Syntax
------

``=html.alert.WxH(Style, Body, <Title>, <Footer>)``

Arguments
---------

.. tabularcolumns:: |l|L|

===========     ===========================================================================
Argument        Description
===========     ===========================================================================
``WxH``	        Specifies the number of rows and columns in which to autofill the graph 
                results e.g. 5x10 will result in a graph displaying across 5 rows and 10 
                columns relative to the cell where the function is input.

``Style`` 	Specifies the style of the display box as an integer:
                0 – dfgdgsfs (DEFAULT)
                1
                2
                3
	
``body`` 	Specifies what is to appear in the body. Valid entries include a string, 
                a cell reference, function, string, image, link.
	
``Title``	**Optional**. A string or reference to a cell specifying a title for the
                display box.
	
``Footer``	**Optional**. A string or reference to a cell specifying a footer for the 
                display box.

===========     ===========================================================================

Example 1 Different Styles
--------------------------

``=html.alert.10x20(0, table(/blah/bleh/A1:G12), “Contact Details”)``
``=html.alert.10x20(1, table(/blah/bleh/A1:G12), “Contact Details”)``
``=html.alert.10x20(2, table(/blah/bleh/A1:G12), “Contact Details”)``
``=html.alert.10x20(3, table(/blah/bleh/A1:G12), “Contact Details”)``

Example 2 Display style conditioned on a value
----------------------------------------------

Sometimes it is useful to add emphasis to the data that is being displayed based on some other data. For example, suppose we wish to display a budget graph and set the colour of the display to red if we are over-budget. 

``=html.alert.10x20(if(g5>0, 3, 1), linegraph(b2:d2, 2, c3:d3, c4:d4, “”, “$s”), “Budget Performance”)``


