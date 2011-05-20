=============
CREATE.BUTTON
=============

Overview
--------

The ``=create.button(...)`` function can be used on any wikipage or webpage to instantiate a template as a new page in a specific location within an applications’s page structure.

Syntax
------

``=create.button(ButtonTitle, Expression1, Expression2,...)``

Arguments
---------

.. tabularcolumns:: |l|L|

================ ==============================================================
Argument         Description
================ ==============================================================
``ButtonTitle``  A string specifying the title to appear on the button on the
                 webpage or wikipage.

``Expression``   A string specifying the construction parameters for new pages,
                 including specifiers on the:

                 page structure to be created

                 the templates to use

                 the naming convention to use

                 access permissions

                 redirect options

                 Within each expression it is possible to create many new
                 pages and at the same time instantiate many templates into
                 these new pages.

                 The general form of any expression is:

                 ``/segment1/segment2/segment3/....``

                 The general form of each segment inside an expression is:

                 ``"/[TemplateToUse, <naming optons> <;advanced options>]/”``

                 where ''TemplateToUse`` is a template that has previously
                 been saved via the *Site > "My Pages* admin menu.
================ ==============================================================

**NAMING OPTIONS**

Valid segment naming options are described below. To distinguish inputs from keywords, user inputs are IN CAPITALS and reserved keywords are in lowercase:

==========================================   ======================================================
Naming examples
==========================================   ======================================================
``/SEGMENTNAME/``                            any old name

``/[TEMPLATE, NAME]/``                       will fail if the template doesn't exist

``/[TEMPLATE, auto, increment]/``            creates in incrementing segment of form 00000001,
                                             00000002 etc, etc

``/[TEMPLATE, auto, incr]/``                 short form

``/[TEMPLATE, auto, increment, PREFIX]/``    creates in incrementing segment of form
                                             accounts-00000001 if PREFIX = accounts-

``/[TEMPLATE, auto, incr, PREFIX]/``         short form

``/[TEMPLATE, auto, random]/``               creates segment of form ab12cd34ef98765

``/[TEMPLATE, auto, random, PREFIX]/``       creates segment of form quote-ab12cd34ef98765 if
                                             PREFIX = quote-

``/[TEMPLATE, data, FORMAT]/``               creates a segment using reserved name formats
==========================================   ======================================================

where FORMAT is one of the following:

===========  ==============
Format	     Value
===========  ==============
yy           03
yyyy         2003
m            2
mm           02
mmm    	     Feb
mmmm 	     February
d            1
dd           01
ddd          Sat
dddd         Saturday
===========  ==============


**ADVANCED OPTIONS**

Advanced options allow you to specify:

* additional permissions on who can and can’t access the page segments that are created
* the segment to go to when the templates are built
* the view applied to the redirected segment

Advanced options are separated from naming options with ‘;’.

Permissions for each segment are:

“/bleh/[Template, auto, incr; table, group1, group2]/bloh/”


There is a special group name $user which is the personal group of the user clicking the button.

The first parameter can be:

* spreadsheet
* wikipage
* webpage
* table

The redirect page (i.e. the segment to go to when the pages are created) is achieved as follows:

| “/bleh/[T1, date, yy; go]/[T2, date, mm]/”
| “/bleh/[T1, date, yy; go, spreadsheet]/[T2, date, mm]/”


You can mix and match permission and redirects (i.e. the clauses are order independent)

Example
-------
