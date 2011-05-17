=====================
Hypernumbers Overview
=====================

Hypernumbers is a web technology that enables spreadsheet users to build web applications. No specialist programming expertise is required. Most of what you need to know to get started is what you already know from using your desktop spreadsheet. Hence our mantra:  

.. centered:: *if you can use a spreadsheet, you can build applications using hypernumbers*

In this introductory overview we will cover features of the spreadsheet that should already be familiar and briefly look at special features that are unique to hypernumbers. Special hypernumbers features will be covered in more detail in later sections of this book.

Excel-like-Spreadsheet
----------------------

Hypernumbers spreadsheet pages look like your desktop spreadsheets and operate like a desktop spreadsheet, as shown below. 
 
.. figure:: /images/spreadsheet.png
   :scale: 100 %
   :alt: Hypernumbers Spreadsheet

Some of these familiar features and capabilities include:  

*	you enter numbers and text into cells in the grid
*	cells have an address e.g. the relative address ``A1``

	*	Or absolute (``$A$1``), row absolute (``$A1``) or column absolute (``A$1``)
*	cell ranges can be referenced e.g. ``A1:A10`` (relative) or ``$A$1:$A$10`` (absolute)
*	you can enter functions and formulae e.g.  

	*	``=D3-D4``
	*	``=(C7*D7)/E5``
	*	``=SUM(E6:E10)``
	*	``=VLOOKUP(2, A1:D12, 3)``   
*	you can resize column widths and row heights
*	you can merge and unmerge cell ranges
*	you can insert and delete rows and columns   
*	there is a formula bar in which to edit the contents of a cell or a formula
*	there is a formula wizard that helps you build functions   
*	there is a toolbar icon menu providing a quick way to change the layout and format of cells e.g. 

	*	apply formats to cell contents  
	*	change fonts and size  
	*	change the colour and background of cell contents   
	*	make contents bold or italic   
	*	apply strikethrough 
	*	apply word wrap
	*	change the alignment of cell contents
	*	etc..   
*	you can have multiple pages opened at the same time as tabs and can move between them by clicking the tab
*	you can access a further menu of features by right-clicking your mouse

So, if you already use a spreadsheet, such as Microsoft Excel, the grid layout will be very familiar and the way in which you build up your spreadsheet page should be relatively straightforward.

To extend the spreadsheet paradigm for the web and enable non-specialist programmers to be able to build business applications, hypernumbers has some additional features and capabilities. 

Some of these differences are introduced briefly below and will be covered in more detail in later sections of this book.

Page and Cell Referencing
-------------------------

Every hypernumbers page and cell has its own unique web address or uniform resource locator (URL); made up of the website name, page name and cell reference (cell range), as shown in the figure below:

.. figure:: /images/anatomy-of-page-cell-address.png
   :scale: 100 %
   :align: center
   :alt: Anatomy of a Hypernumbers Address

In this example, home, subpage and endpage are path segments that combine to identify the  location of the page as /home/subpage/endpage/ on the site example.com.

In this illustration:  

*	http://example.com/home/ 
*	http://example.com/home/subpage/

are also valid pages on this (hypothetical) site.

This is clearly different from how file-based spreadsheet applications are organised - and also how other web spreadsheet systems are structured. Just as you arrange files in folders on your PC (so that there is some meaningful order and structure that makes them easier to find) so you can organise spreadsheet pages in hypernumbers around a meaningful structure that has some contextual relevance to their content.

It means that pages can be organised into contextually relevant structures and hierarchies that relate to organisational management structures, calculation logic and easy-to-navigate user interfaces (UIs) in business applications. 

An understanding of the page and segment nomenclature may seem strange at this point, but will help with explanations in later section of some of the special hypernumbers functions that are available.
	

.. warning:: Hypernumber page and cell addresses are case sensitive. 

   This means that all three pages listed below are regarded as separate pages:

   *	http://example.com/home/sub-page/ 
   *	http://example.com/home/Sub-page/ 
   *	http://example.com/home/Sub-pagE/

   To avoid confusion when building pages we recommend using lower case page addresses.
 
Valid segment names can use a combination of:

*	letters
*	numbers
*	“-“ symbol
*	“_” symbol


Referencing cells in a spreadsheet from the same spreadsheet works as your desktop spreadsheet e.g. ``=a1``, ``=sum(a1:a4)``.

Referencing cells from another spreadsheet page requires the use of the relevant page (combination of path segments) and cell reference e.g. using the absolute path reference:

``=/home/subpage/endpage/c1``


Suppose we wish to construct a calculation on the page ``/home/`` that is the sum of the cell range ``A1:A4`` on the page ``/home/subpage/endpage/``. Either one of these expressions could be used:

*	``=sum(/home/subpage/endpage/a1:a4)`` 
*	``=sum(./subpage/endpage/a1:a4)``

The ``./`` is a relative reference and means move the next segment below - i.e. to ``subpage``, then onto ``endpage`` and calculate the sum on cells ``a1:a4``.


Relative references can also be used to move backwards along page segments to reference cells in a parent page using ``../``.  Suppose, we wish place a calculation in the ``/home/subpage/endpage/`` that is the average of cells ``b1:b10`` on the ``/home/`` page. 

Either one these formulae would return the same result:
•	``=sum(/home/b1:b10)``
•	``=sum(../../b1:b10)``

.. note:: You do NOT include the site address when referencing a cell when the cell is referenced from another address on the same site.

.. note:: As hypernumber page addresses are case sensitive, all three of these cell addresses refer to cells on different pages:

   *	``/home/sub-page/c1``
   *	``/home/Sub-page/c1``
   *	``/home/Sub-pagE/c1``

Functions
---------

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

Web and Wikipages
-----------------

One of the key features of hypernumbers is the ability to present a spreadsheet page in different user interface formats to different users of an application. There are four different views of a hypernumbers page that can be presented:

*	spreadsheet view
*	webpage view
*	wikipage view
*	table view

[Example spreadsheet page and all the different views]

The views menu is located on the right-hand side of the toolbar (in the spreadsheet page view). When clicked, the views menu blow is opened:

.. figure:: /images/views-menu.png
   :scale: 100 %
   :alt: Hypernumbers Views Menu

The views menu is used to control user access to a site or application. Specifically, it allows whoever is responsible for an application to: 

*	set the default view for the spreadsheet page 
*	set the page to be available to the public (available to anyone on the internet) or private and, if private, who (i.e. which groups and users) specifically can have access to the page
*	set up user groups and users
*	invite users to pages. 

Table View
----------

The ``table`` view is useful for displaying spreadsheet pages that contain tables or lists - of row and column data.

It is similar to the sort and filter view in Excel and provides much the same capability. You can:
*	Sort on one or more columns
*	Apply default sorting
*	Apply multi-column filtering of rows
*       Hide columns
*	Use the line editor to edit the contents of a row. 


Making Forms
------------

It is a trivial task to add webforms to a form to a hypernumbers page. These forms can be used on both webpages and wikipages. They stick the data straight into a table-formatted spreadsheet with columns of data and headers that you can sort.

Adding a form can be done by building up the form bit-by-bit using the icons on the toolbar. A faster way is to highlight a range of cells and use the right-click menu (illustrated in the excel-like-spreadsheet diagram) to access the create forms option. A basic form is added to cells in the selected range. You can then change form elements and layout as required.

Permissions
-----------

Hypernumbers incorporates an easy to implement, but highly effective, user permissions model based on the different page view types described above. This enables the programmer to control:

*	Whether pages are public or secure
*	Implement user authentication via user signon
*	Which users can access which pages 
*	What operations (i.e. view, edit and create page operations) users can perform on these pages 

The permissions model addresses core problem of spreadsheet applications:

*	End users breaking spreadsheets
*	Changing data they’re not supposed to touch

The ``webpage`` and ``wikipage`` views of the spreadsheet are specially designed to allow the programmer to present users with an interface that allows data to be collected for certain cells but locks out changes to other key cells on the page. This in effect allows the programmer to apply cell level security to pages and spreadsheet based applications.

Permissions can be assigned to pages for individual users and groups of users as members of a usergroup.

Building Applications in Hypernumbers
-------------------------------------

Hypernumbers is more just a spreadsheet. Hypernumbers is a platform that combines the functionality of the desktop spreadsheet and more with different presentation layers that allows the spreadsheet expert/business professional to build web applications.

 .. figure:: /images/building-applications-framework.png
   :scale: 100 %
   :alt: Hypernumbers Application Framework

This democratizes the previously closed world of building software for the web from IT professionals to non-IT professionals:

*	The web programmer is the spreadsheet expert who might be a subject-matter expert in some non-IT related business discipline
*	The programming layer is the spreadsheet
*	The end-user presentation layer can be configured any one of a number of views other than the spreadsheet
*	Each presentation view controls and prevents what users can do (aka damage) to the underlying spreadsheet
  
Managing Your Application
-------------------------

The site menu - on the toolbar - provides site and page administration capabilities that allow you to build up your application. It allows the programmer (i.e. the spreadsheet expert) to:
•	Navigate through the spreadsheet page structure
•	Open existing pages as spreadsheet views      
•	Create new and delete existing spreadsheet pages  
•	Save a hypernumbers page as a template with a particular view type
•	Create new pages using a saved template
•	Import desktop spreadsheets into hypernumbers
•	Change user’s sign-on passwords 
 

.. figure:: /images/site-dialog-box.png
   :scale: 100 %
   :alt: The Site Dialog Box

Spreadsheet Audit
----------------- 

All changes to cells on the spreadsheet have a full audit history retained for analysis. This audit trail lets you know if a cell has changer, who changed it and when they changed. 

This is accessed via the view cell change history option on the right-click menu. 

Saving Changes
--------------

Unlike desktop spreadsheets, you don’t have to save changes you make to a hypernumbers page. In hypernumbers, every change is automatically saved.

Language Support
----------------

Hypernumbers supports 8 language versions of the function names that are available for use in the spreadsheet, including:  

*	English  
*	French  
*	Russian  
*	Spanish  
*	German  
*	Portuguese  
*	Italian  
*	Brazilian  

You can use the language selector in the top right section of the spreadsheet page to toggle function names and menu labels to your chosen language. 
  
.. Note:: Non English language support is currently disabled.


Browser Support
---------------
  
You can view all web pages created by hypernumbers in the major internet browsers. However the ability to build web pages in the spreadsheet view is only supported or fully compatible as follows:   

==================	==========================	=============================
Browser	                Spreadsheet Compatibility	Web/Wiki/Table Compatibility
==================      ==========================      =============================
Safari	                fully compatible  	        fully compatible  
Chrome 	                fully compatible  	        fully compatible  
Firefox 	        fully compatible  	        fully compatible  
Internet Explorer 	not compatible  	        fully compatible  
Opera 	                not compatible  	        fully compatible  
==================      ==========================      =============================
