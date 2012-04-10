===========================
Making Pages From Templates
===========================

A template is a page that has been constructed and saved as a model (template) for repeated use.

Some example templates you might have seen or used include:

•	Invoicing templates
•	Timesheet templates
•	Event and meeting templates
•	Budget templates
•	Planning and project templates
•	Business case templates
•	Calculator templates
•	etc. etc.

In vixo the opportunities to capitalise on the use of templates in a fully-functioning workflow system is immense - as it is possible to create templates that incorporate a combination of:

•	GUI elements
•	business logic
•	database logic
•	workflow logic
•	permission based access security

Creating templates
------------------

Creating and storing a template for later re-use is straight forward:

1.	Create a spreadsheet page that includes any formatting, business logic, database logic etc.

.. image :: /images/simple_spreadsheet.png

2.	Click on the view menu and set the default view for the page and whether the page is to be public or private
3.	Open the ``site -> my pages`` menu and in the templating section (at the bottom right of the navigation menu) give the template a name e.g. ``sales_forecast`` and press the ``Save As`` button. The template will now appear in the list of templates.

.. image :: /images/my_pages_dialog.png

If you want to edit an existing template you simply open the source page you used to create the template or instantiate the template to a new page, make any changes and save it with the same template name.

.. image :: /images/my_pages_dialog2.png


Instantiating a Template
------------------------

To create a new page using a saved template you do this via the Site > My Pages menu:

1.	enter the name for the new page e.g. ``/zyz-ltd/2011/``
2.	select the template from the template list you want to apply to this page e.g. ``year_sales``
3.	Press the ``New`` button.

When creating a new page via the ``Site -> My Pages`` menu the default template is ``blank`` indicating an empty spreadsheet.

Templating Buttons
------------------

To harness of the full power of templates in web-based applications, a special template function can be used.

The ``=create.button(...)`` function can be used on any wikipage or webpage to instantiate a template as a new page in a specific location within an applications’s page structure.

The syntax of the ``=create.button(...)`` is as follows:

``=create.button(“ButtonTitle”, “Expression1”, “Expression2”,…)``

Expression is a string of information on the page structure to be created, the templates to use and the names/naming convention to be used for the new pages.

As an example, suppose we added the following function to cell ``A16`` on the ``/xyz-ltd/`` spreadsheet page:

``=create.button(“Create New Sales Forecast”, “./[sales_forecast, 2011]/”)``

This is simply a function like any other function e.g. ``=sum(...)`` etc. that can placed in a cell in a spreadsheet page. The function creates a button with the label ``Create New Sales Forecast`` that can be clicked on a wikipage or webpage.

There is only one expression ``“./[sales_forecast, 2011]/”`` used and it means:
•	create a new page using the template ``sales_forecast``
•	saves the new instantiated template to a new page ``/xyz-ltd/2011/`` (using the shorthand syntax ``./``)

Here’s how it looks with the webpage view:

.. image :: /images/create_button.png

Within each expression it is possible to create many new pages and at the same time instantiate many templates into these new pages.

The general form of any expression is:

``/segment1/segment2/segment3/...``

Valid segments are described below. To distinguish inputs from keywords, user inputs are ``IN CAPITALS`` and reserved keywords are in ``lowercase``:

* ``/SEGMENTNAME/``	<- any old name
* ``/[TEMPLATE, NAME]/``	<- will fail if the template doesn't exist
* ``/[TEMPLATE, auto, increment]/``	<- creates in incrementing segment of form 00000001, 00000002 etc, etc
* ``/[TEMPLATE, auto, incr]/``	<- short form
* ``/[TEMPLATE, auto, increment, PREFIX]/`	<- creates in incrementing segment of form accounts-00000001 if ``PREFIX`` = ``accounts-``
* ``/[TEMPLATE, auto, incr, PREFIX]/``	<- short form
* ``/[TEMPLATE, auto, random]/``	<- creates segment of form ab12cd34ef98765
* ``/[TEMPLATE, auto, random, PREFIX]/``	<- creates segment of form quote-ab12cd34ef98765 if ``PREFIX`` = ``quote-``
* ``/[TEMPLATE, date, FORMAT]/``

where ``FORMAT`` is one of the following:

====== ========
Format Value
====== ========
yy     03
yyyy   2003
m      2
mm     02
mmm    Feb
mmmm   February
d      1
dd     01
ddd    Sat
dddd   Saturday
====== ========

The function below illustrate the instantiation of templates at each page segment inside one expressions:

``=create.button(“Create New Sales Forecast”, “./[sales_forecast, 2010]/salesforce/[person, john]/”)``

This creates the following pages:

==============================  ===============
Page created	                Template Used
==============================  ===============
/xyz-ltd/2010/	                sales_forecast
/xyz-ltd/2010/salesforce/	None
/xyz-ltd/2010/salesforce/john/	Person
==============================  ===============

We can also incorporate many expressions, creating lots of long-chain page structures that instantiate many templates.

As an illustrative example of extending the expressions and segments consider the following:

| ``=create.button(“Create New Sales Forecast”,``
| ``“./[sales_forecast, 2010]/salesforce/[person, john]/”,``
| ``“./[sales_forecast, 2011]/salesforce/[person, john]/”,``
| ``“./2010/salesforce/[person, ann]/”,``
| ``“./2011/salesforce/[person, ann]/”)``

Pages created here and templates used are:

=============================== ===============
Page created	                Template Used
=============================== ===============
/xyz-ltd/2010/	                sales_forecast
/xyz-ltd/2010/salesforce/	None
/xyz-ltd/2010/salesforce/john/	Person
/xyz-ltd/2011/salesforce/john/	Person
/xyz-ltd/2010/salesforce/ann/	Person
/xyz-ltd/2011/salesforce/ann/	Person
=============================== ===============

Note: In the beginning it is advised to work with simple structures until you become familiar with this functionality.


Advanced Syntax
---------------

As well as the basic syntax we have seen thus far, there is more advanced syntax that allows you to specify:

*	additional permissions on who can and can’t access the page segments that are created
*	the segment to go to when the templates are built

Additional syntax is marked with ‘;’.

Permissions are:

* ``“/bleh/[Template, auto, incr; table, group1, group2]/bloh/”``

There is a special group name ``$user`` which is the personal group of the user clicking the button.

The first parameter can be:

*	spreadsheet
*	wikipage
*	webpage
*	table

The redirect page (i.e. the segment to go to when the pages are created) is achieved as follows:

* ``“/bleh/[T1, date, yy; go]/[T2, date, mm]/”``
* ``“/bleh/[T1, date, yy; go, spreadsheet]/[T2, date, mm]/”``

You can replace ``spreadsheet`` with ``wikipage``, ``webpage`` or ``table`` as appropriate.

You can mix and match permission and redirects (ie the clauses are order independent)

They will take string specifiers of the form which use a square bracket delimiter. An example is:

* ``“./some/path/[template1, here]/[template2, auto, increment]/”``

This specifier says:

*	under this page create an empty page called some
*	under that create a empty page called path
*	under that create a page called here from the template template1 (if it doesn’t already exist)
*	under that create an auto-numbered page from template2

Repeated invocations of this button will create:

*	the page ``/some/path/here/``
*	multiple subpages:

        * ``/some/path/here/0000001/``
        * ``/some/path/here/0000002/``
        * ``/some/path/here/0000003/``

The button can take multiple selectors. The selector strings will include types to create dated and timed pages e.g. ``/2011/jan/21/``

