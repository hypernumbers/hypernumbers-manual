Tables and Lists
=================

Introduction
------------

Because they are so easy to use, spreadsheets are often used to manage lists of data and as a ready database for performing data analysis. Some examples of this include:

* Contact lists
* Stock or inventory lists
* Student grades
* Event attendee lists
* Project schedules
* etc.

With vixo spreadsheets, a cell’s data can be more than just numbers and text. You can also include links, pictures, graphs and many other web objects in your lists. This means that you can build up lists rich with content.

Table view
----------

The ``table`` view provides a useful tool for displaying and manipulating such lists. It operates much like Excel’s sort and filter editing feature and provides similar functionality. You can:

*	Sort columns
*	Filter rows
*          Hide columns
*	Navigate up and down table rows
*          Edit the contents of a row
*          Add new records

If you’re using the spreadsheet as an alternative to a proper database and you have to manage large lists, the ``table`` view  provides an easy to use data tool to sort tabular data, find particular records and keep your data lists uptodate.

Consider the following spreadsheet showing a list of students and their grades:

.. image:: /images/vixo-tables-spreadsheet.png
   :scale: 100 %
   :alt: Vixo tables and list - spreadsheet example

Switching to the ``table`` view for this page is done by selecting the ``table`` link in the ``views`` menu on the right of the toolbar:

.. image:: /images/vixo-tables-table-view.png
   :scale: 100 %
   :alt: Vixo tables and list – table view

The elements available in the ``table`` (highlighted in the diagram) are discussed in following sections.

**Sorting columns**

You can sort the data by clicking the sort button next to the columns heading for the column you want to sort by. You can sort the data by multiple columns by holding down the ``shift`` key on your keyboard and clicking the next column’s sort button to sub-sort the table.

**Filtering rows and hiding columns**

The table can be filtered and columns can be hidden via the filter menu which is accessed by clicking the ``show/hide columns and filters`` link.


.. image:: /images/vixo-tables-filtering-menu.png
   :scale: 100 %
   :alt: Vixo tables and list – filtering menu

A dialog box is opened allowing you to specify which columns to ``show`` (all by default) and to filter by. If you select some columns to filter by e.g. by who, and close the window by clicking the ``x``, filter options are added to the table columns to be filtered.


.. image:: /images/vixo-tables-filtering-example.png
   :scale: 100 %
   :alt: Vixo tables and list – filtering example

Two filtering mechanisms are provided:

* By the values in the column via the selector list
* By specifying numbers or text to use in a “contains” type query

**Editing table data**

The table view also provides a row editor to let you:

* navigate up and down through rows in the table
* edit data
* add new records

The row editor is accessed by clicking one of the row editor arrow buttons found against each row in the right-most column of the table.

When you click any of these arrow buttons the row editor dialog box opens:

.. image:: /images/vixo-tables-row-editor-menu.png
   :scale: 100 %
   :alt: Vixo tables and list – row editor menu

To edit a data in a specific record, you simply select the row then edit the values for that record. The changes are automatically applied to the spreadsheet.

You can add a new empty record to the bottom of the table by clicking the ``Add new record`` button. You then enter the values against each column to add new data to the table.

.. important:: Permissions
   You will only be allowed to edit existing data and add new records if you have access permissions to the underlying spreadsheet view set up via the ``views`` menu.


Embedded Tables
---------------

It is possible to embed tables in other vixo pages and websites. This can be done in a couple of ways using vixo functions:

*  ``=table`` function
* ``=html`` function

**Table function**

In the example below a subpage (below the original spreadsheet used earlier in this section) has been created and the formula ``=table(../a1:d9)`` has been entered in cell ``A5``.

.. image:: /images/vixo-tables-embedded-in-a-webpage-using-the-table-function.png
   :scale: 100 %
   :alt: Vixo tables and list – embedded in a webpage using the table function

The table renders in the webpage view as shown. The data can be sorted using the up and down arrow icons against each column label.

**HTML function**

Another way to embed list data as a table view involves using the ``html`` function to incorporate straight html code. We could, for example, include the ``table`` view as an iframe inside a vixo webpage using the html function as shown below:


.. image:: /images/vixo-tables-embedded-in-a-webpage-using-the-html-function.png
   :scale: 100 %
   :alt: Vixo tables and list – embedded in a webpage using the html function

.. note:: The html code fragment is included inside double quotes i.e. =html(“ ”). Double quotes inside the code fragment are replaced with single quotes ‘ ‘.

This is particularly useful as the full ``table`` view functionality is available to users accessing such pages.

.. important:: Permissions
   You will only be allowed to edit existing data and add new records if you have access permissions to the underlying spreadsheet view set up via the ``views`` menu.

