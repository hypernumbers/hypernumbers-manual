=================
Facebook Comments
=================

Overview
--------


Syntax
------

``=facebook.comments(Body, <Title>, <Footer>)``

Arguments
---------

===========     ===========================================================================
Argument        Description
===========     ===========================================================================
``W``	        An integer specifying the number of columns in which to autofill the type 
                of line required.
	
``width`` 	**Optional**. Width is the line thickness and is a positive integer in the 
                range…..
	
``Type`` 	**Optional**. Type identifies the style of the line and has the following 
                options:
                0 - "solid"
                1 - "dotted"
                2 - "dashed"
                3 - "double"
                4 - "groove"
                5 - "ridge"
                6 - "inset"
	
``Colour``	**Optional**. Colour is a colour of the form "#abc123" or "#ab1"

===========     ===========================================================================

Example
-------

The folowing example illustrates different styles.
=html.box.10x20(0, table(/blah/bleh/A1:G12), “Contact Details”)
