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

In hypernumbers the opportunities to capitalise on the use of templates in a fully-functioning workflow system is immense - as it is possible to create templates that incorporate a combination of:

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

.. image:: /images/create_button.png

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
* ``/[TEMPLATE, data, FORMAT]/``

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


