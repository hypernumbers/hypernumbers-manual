================
DATABASE QUERIES
================

Overview
--------

A z-query is the hypernumbers equivalent of a database query. In the case of hypernumbers, pages and the data on those pages is the database against which z-queries are used to extract data. A z-query allows you to pull data together from pages at the end of a complex hierarchical tree of pages, subject to characteristics in intermediate page segments and push it into a standard function or special hypernumber functions or even into a list.

A z-query enables data analysis of cell(s) on a spreadsheet page across multiple pages subject to conditions based on data inside the rows and columns of each page. The diagram below illustrates the concept of a z-query:
 
.. image :: /images/hypernumbers-database-query.png

In this illustration, the z-query accesses all sub-pages below the page /some/page/ and picks up the values in cell b3 but excludes page /some/page/2/ because some condition is not satisfied. 

The results of a z-query are used inside a function in a cell in the same way as other spreadsheet functions i.e.:

``=function(z-query)``

Z-queries can be used inside a selection of maths and statistics functions e.g.:

* sum
* min
* count
* etc

A number of special hypernumbers functions have also been created to cater for z-queries that are constructed from strings, including:

* sumz  
* countz

Z-queries can also be used to generate dynamic lists using the function:

* link.box.WxH

Another useful function to debugging z-queries is:

* debugz.WxH

Z-Query Syntax
--------------

The syntax of the z-query part is based on an expression which specifies a path to a page based on path segments and conditions before returning the qualifying data to a function:

``/<segment(s)/>[TRUE|condition(s)]/cell(s)``


The arguments involved in a z-query have the following definitions:

================== ============================================================================
Arguments          Description
================== ============================================================================
``segment(s)``     Specifies path segments as part of the z-query. For example some and page 
                   are segments in the illustrative z-query above.

``condition(s)``   The condition expression inside the z-query is mandatory and enables 
                   filtering to be applied to the pages in path segments towards the final 
                   target pages.
   
                   Conditions, on a path segment, are always included inside [] brackets in a 
                   z-query.

                   Any valid excel expression inside the [] brackets can be applied including 
		   functions, formulae and absolute and relative cell references. The simple 
                   way to select all pages is to use the excel expression ``true`` which is 
                   always true on all pages

``cell(s)`` 	   The cell selection can be a single cell (e.g. G21) or a cell range (e.g. 
                   G21:H24)

================== ============================================================================

	
Illustrative Database
---------------------
	
To illustrate the z-query syntax in a practical example we will utilise the following database page structure below: 

.. image :: /images/hypernumbers-meter-database-example.png


In this example we have historical energy readings from electricity meters and the data is organised into spreadsheet pages using the following page structure:

Some example pages in the meter example include:

* /energy-data/ 
* /energy-data/electricity/ 
* /energy-data/electricity/jan/4/ 
* /energy-data/electricity/jan/7/meter1/.

Path segments combine to specify the full page location. Path segments for the /energy-data/electricity/jan/7/meter1/ page are:

* energy-data
* electricity
* jan
* 7
* meter1.

An example z-query on this page structure would look like:

``/energy-data/electricity/[segment()=”jan”]/[true]/[b14>20]/G21``

where,

``[segment()=”jan”]``
	is a condition on the values to use in the month segment
``[true]``
	is a condition on the values to use in the day segment. [true] is the same as a wildcard ‘*’ and means all segment values on a path segment
``[b14>20]``
	is a condition on the values in a cell B14 on each meter segment page


Z-Queries in Functions
----------------------

Now suppose we want to construct some calculations in cells on the energy page structure example. For illustration we will base our calculations on a cell G21 on the meter pages and give it a value of 100 in all instances and place our calculations on a cell in the /energy-data/ page.

**Example 1 Sum of all 2010 meter readings**

In this example we want to calculate the sum of cell G21 on all meter page for all days in 2010.

To do this we could use the following formula to calculate this sum:
 
``=sum(/energy-data/electricity/2010/[true]/[true]/[true]/G21)``

Or use the relative path version

``=sum(./electricity/2010/[true]/[true]/[true]/G21)``

If it looks complex it isn’t. Let’s step through formula to understand how the z-query logic is applied:

#.	``./`` is a relative pointer that says go to the next page segment (the next page segment in this case is electricity
#.	Go to the next specific year page segment – in this case 2010
#.	Below this page segment use all month page segments. The ``[]`` brackets are used to specify conditions against the data on all of these month page sub-segments. ``[true]`` is the same as a wildcard ‘*’ and says include all pages in the month page segment
#.	Like the month segment there is a day  page segment condition that says include all pages in the month page segment
#.	Again use all meter page segments
#.	Now for those segments that qualified in steps 1-5, return the data in cell G21 on all these pages to the sum function and calculate the sum. 

The result of this function would be all days(365) x all meters(2) x reading(100) = 73000.

**Example 2 Average of all 2010 meter readings**

The result of a z-query function can be incorporated into a formula as with standard functions. For example to calculate the average we could use the following formula

``=sum(./electricity/2010/[true]/[true]/[true]/G21) / count(./electricity/2010/[true]/[true]/[true]/G21)``

Of course an easier version of this would be

``=average(./electricity/2010/[true]/[true]/[true]/G21)``

Both would give an average reading of 100.

**Example 3 Sum of 2010 Q1 meter readings – conditioning on page segments**

Suppose we wanted to add all meter readings for quarter 1, 2010.

We could do it by calculating each months z-sum as above and adding these up i.e.

``=sum(./electricity/2010/jan/[true]/[true]/G21) + sum(./electricity/2010/feb/[true]/[true]/G21) + sum(./electricity/2010/mar/[true]/[true]/G21)``

An alternate way to do this is to apply a condition to the month segment of the path as follows:

``=sum(./electricity/2010/[or(segment()=”jan”, segment()=”feb”, segment()=”mar”)]/[true]/[true]/G21)``

Where,

``[or(segment()=”jan”, segment()=”feb”, segment()=”mar”)]`` 
	applies a condition to the month segment involving the OR function and a special hypernumbers function ``segment()``. 
``Segment()`` 
	returns the value of the segment. The ``segment()`` function would return “jan”, “feb”,…. and “dec” and the or function limits the month segments to sum to “jan, feb and mar.

By way of illustration of the possibilities of using conditions, we could also write the formula as 

``=sum(./electricity/2010/[datevalue(“1/”&segment()&”/2010”, “0”) < date(“1/4/10”)]/[true]/[true]/G21)``

In both cases the returned value would be quarter 1 days(90) x all meters(2) x reading(100) = 18000.


**Example 4 Sum of 2010 meter readings - – conditioning on page segment data**

Suppose we wanted to add conditions to the original formula based on certain cell data in cells in the month and day pages as follows:

* In the month pages cell A1=”YES”
* In the day page cell B12 > 40

We can incorporate these conditions inside the z-query as follows 

``=sum(./electricity/2010/[A1=”YES”]/[B12 > 40]/[true]/G21)``

As required the month page condition will exclude month pages where A1 does not equal “YES” and also will exclude any day pages where cell B12 on those page is less than or equal to 40.


Z-Query Strings
---------------

A number of special z-query functions are available to handle z-query references that are strings. These special functions include:
* sumz
* countz

For example, suppose we have a cell in which we have the following string formula:

``=”./electricity/”&C4&”/1/”&C5&”/G21”``

We can include strings like this in our use the special z- functions:

``=sumz(”./electricity/”&C4&”/1/”&C5&”/G21”)``

 If we had “jan” in cell C4 and “meter1” in cell C5 this formula would resolve to:

``=sumz(”./electricity/jan/1/meter1/G21”)``

and calculate the relevant sum.

The ability to use z-query strings in these functions is similar to the use of the indirect function and is particularly important when constructing end user applications that involve user interaction and inputs that build dynamic queries and calculations.


Debugging Z-Queries
-------------------

Z-queries can become quite complex and building them can be quite daunting. In order to debug a z-query there is a special z-query function debugz(). You simply enter this function in a cell on the page you are using the z-query as

``=debugz(z-query)``

.. note:: You only use the z- query part of the function; not the function itself.

This function returns a dialog box with a list of all the pages that qualify against your z-query and the values that will be used are shown. This allows you to check that the data you are expecting is returned in the z-query or diagnose why you don’t get the desired result.  


Z-Query Lists
-------------

Sometimes the aim using a z-query is to return a list of pages and values matching particular criteria for use in some application. The special function link.box.WxH makes this easy and a very important list management feature within hypernumbers.

The syntax for this function is:

``=link.box.WxH(Z-query<,LinkType><,Headline><,Footer><,BoxType><,AlertType>)``


The arguments are used as follows: 

==============  ===========================================================================
Argument        Description
==============  ===========================================================================
``WxH``	        Specifies the number of rows (W) and columns (H)  in which to autofill the 
                results of the z-query display box inside the spreadsheet page.
                 
	
``z-query``	As discussed in this section.
                   
	
``LinkType``	**Optional**. A number specifying what data to include in the return list:

		0 is links with the path in them (**DEFAULT**)

		1 is links with the value in them

		2 is a link with the path and the value next to it  
                   
	
``Headline`` 	**Optional**. A string or reference to a cell with a string.
	
``Footer`` 	**Optional**. A string or reference to a cell with a string.
	
``BoxType`` 	**Optional**. Specifies the box type to use with the returned data:

		0 is style box as html.box (**DEFAULT**)

		1 is style box as html.ruledbox

		2 is style box as html.plainbox

		3 is style box as html.alert.
	
``AlertType``	**Optional**. AlertType only works with BoxType of 3 and is the same as 
                for html.alert. AlertType specifies the type of alert box to use:

		0 = plain

		1 = alert1

		2 = alert3

		3 = alert3

		99 = ruledbox

==============  ===========================================================================	

Illustration of a sample of possible link.boxes using some made up data


Examples
--------

A number of example demos are provided at [link] showing z-queries in action.

Example 1 -

Example 2 -

Example 3 - 


Demo Examples
-------------

Example  - Closed loop list processing (a la DLA Alerts)

