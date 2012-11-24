Making Forms
============

Overview
--------

Forms are a useful way of gathering data from end-users in many web application settings. In vixo there are two form types that can be created:

*	Appending forms
*	Wikiforms

Appending Forms
---------------

Appending forms allow you to capture data via webpage and wikipage views and store the responses in a designated spreadsheet page as tabular (row and column) data; one record per submitted response.

Forms can be constructed using any of the following form elements:

*	Input fields
* Non-editable or fixed-value fields
*	Drop-down or selection lists
*	Large input text areas
*	Radio buttons
*	Submit buttons

Creating an appending form is easy:

.. image:: /images/appending-form-creation.png
   :scale: 100 %
   :align: center
   :alt: Creating a vixo webform

#.	Select a range of cells in the spreadsheet (in this instance ``A2:B8``), right-click (to get the right-click menu) and select  the Create Form option.
#.	This will add a form with a number of basic input elements to the selected cells along with default question text alongside (e.g. “Question 1:”), a form submit button and a link to the page where the responses will be posted – the default response page being a sub-page of the current page named ``/current-page-path/replies/``.  You can then start to customise the form by adding appropriate questions, merging input cells to be larger and changing form elements via the toolbar menu.
#.	Data is entered into the form in the webpage or wikipage views and is posted to the default page ``/current-page-path/replies/``.

Data submitted via this form would be posted to a page as rows and columns thus:

.. image:: /images/appending-form-responses-spreadsheet.png
   :scale: 100 %
   :align: center
   :alt: Vixo webform responses spreadsheet

You can also build forms using the toolbar where all the available form elements are provided.

.. image:: /images/form-menu.png
   :scale: 100 %
   :align: center
   :alt: Vixo web form icons

This approach has the benefit of providing more control over the placement of form elements. You simply select a cell and click the desired form element on the toolbar. The form element will be added to the selected cell. By repeating this process you can construct a highly structured form layouts.

.. image:: /images/appending-form-example.png
   :scale: 100 %
   :align: center
   :alt: Vixo webform example

In vixo, form elements used in appending forms, are functions (see cell ``B2`` in the diagram above) that are entered in cells. The syntax of these form element functions are:

* ``=INPUT("label")``
* ``=FIXEDVAL("label", "value", boolean)``
* ``=TEXTAREA("label")``
* ``=RADIO("label", {"option1","option2","option3",...})``
* ``=SELECT("label", {"option1","option2","option3",...})``
* ``=BUTTON(<"ButtonLabel">, <"SubmitResponseMessage">, <"PageToPostDataTo">)``

Where,

* “label”, "ButtonLabel", "SubmitResponseMessage", "PageToPostDataTo" can be strings or references to other cells e.g. the question text
* {"option1","option2","option3",...} can be entered as strings to reference a cell range e.g. /lookup-data/a1:a10
* "PageToPostDataTo"  specifies which page to post and append each submitted response e.g. /responses/ or ../user-submits/ etc.
* "boolean" is either TRUE or FALSE


Wikiforms
---------

Wikiforms are simply wikipages that incorporate special input fields (wiki elements) to post data directly to specific cells on the underlying spreadsheet. There are two such wiki form elements:

*	wiki input field
*	wiki selector list
* rich text input

You create them using toolbar buttons:

.. image:: /images/wiki-menu.png
   :scale: 100 %
   :align: center
   :alt: Vixo wiki control icons

Inline wiki elements are created in spreadsheet cells. When data is entered via the wikipage view, it is posted to the same spreadsheet cell. When the pages is viewed as a webpage the data that has been entered is display only. Examples of the two inline wiki elements are shown below as they appear in the ``spreadsheet``, ``wikipage`` and ``webpage`` views:

.. image:: /images/wikiform-views.png
   :scale: 100 %
   :align: center
   :alt: Vixo wikiform views

The wiki input field (identifiable in the spreadsheet view via the little red triangle in the top-left corner of the cell) allows you to collect unvalidated data and is useful for collecting user information where there are no pre-defined answers or valid values.

The selector list wiki element helps can make data entry easier for the user and limits user input to certain items that you define;  ensuring consistent data used elsewhere in an application. You can create a drop-down wiki element with possible entries incorporated into the element itself (separated by commas)

You enter the possible values to appear separated by commas e.g. Sales, Marketing, Finance, IT  then press submit. You can also include blanks in the selectable entries by inserting extra commas e.g. , Sales, Marketing, Finance, IT.

You can also drive the dropdown list with a `z-query`_.

The rich-text entry produces a cell that pops as a rich text editor - as you can see in the image below - clicking on the rich text cell turns it into a rich text editor.

.. image:: /images/rich-text-editor.png
   :scale: 100 %
   :align: center
   :alt: Vixo wiki rich text editor

Inline wiki elements are a great way to construct interactive application pages:

* Calculators
* Interactive dashboards
* application forms and surveys with conditional questions
* etc.

Ghost Cells
-----------

Sometimes you need some spreadsheet cells to do a calculation but they make the web or wiki pages ugly and unsightly. We can solve this problem with the ghost button:

.. image:: /images/vixo-ghost-toolbar-button.png
   :scale: 100 %
   :align: center
   :alt: Vixo ghost toolbar button

The ghost button just makes unwanted cells disappear. It has two uses:

* making a cell disappear from a web or wiki page
* making a wiki cell disppear from a web page

Toggling Views
--------------

A common pattern is to have a page that some people can edit and other people just read. There is a special control to make this easy.

Make the default view ``webpage`` and use the control ``=toggle.views()`` - read the `function description`_.

Toggle views creates a button that only appears if you have both web and wiki page permissions on a page - it then allows you to toggle between them.


.. _z-query: ./database-queries.html

.. _function description: ../vixo-functions/layout-and-display/toggle-views.html
