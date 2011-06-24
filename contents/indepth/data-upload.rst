Data Upload
===========

Overview
--------

The data upload manager enables you to upload data from Excel spreadsheet (.xls) and comma separated value (CSV)  files straight into hypernumbers spreadsheets (optionally using a structured template) as a one-click action. 

This is done by mapping the source data file’s cells on to hypernumber spreadsheet cells which  can done via two types of mapping:

*	Sheet to hypernumber (template) page mapping
*	Row to many hypernumber (templated) pages mapping.

In a row type mapping, each row in the spreadsheet is loaded into user specified cells in individual hypernumbers spreadsheet pages. The hypernumbers pages that are created can use a pre-saved template to apply formatting to these pages. 

The diagram below illustrates the concept of a row type data upload:
 

.. image:: /images/hypernumbers-data-upload-row-type-mapping-concept.png
   :scale: 100 %
   :alt: Hypernumbers Data Upload Row Mapping concept


Here we can see a typical Excel spreadsheet of row and column data which is used to populate hypernumbers pages. A pre-built template (that includes formatting, calculations, a table of data stats and a graph inside an alert type display element) has been used to specify the layout of each hypernumbers page. The upload manager has been used to configure and map out where each row of data in the spreadsheet is placed in each hypernumbers spreadsheet page.
 
In this instance each spreadsheet row has been piped into column C (highlighted) in each of the pages. But this has been done in the upload manager by individually mapping each spreadsheet column in the source Excel spreadsheet to cells on the hypernumbers page e.g.:
	
* Excel spreadsheet **column ``E``** maps to **cell ``C12``** on the hypernumbers page
* Excel spreadsheet **column ``F``** maps to **cell ``C13``** on the hypernumbers page
* Excel spreadsheet **column ``G``** maps to **cell ``C14``** on the hypernumbers page
* and so on 

Sheet type mapping is a less complex form of mapping and allows you to map specific cells in the source spreadsheet to specific cells in a single hypernumbers page. This kind of mapping works like: from spreadsheet cell ? to hypernumbers page cell ? e.g.:

* Excel spreadsheet **cell ``A3``** maps to **cell ``/page-path/B3/``** on a hypernumbers page
* Excel spreadsheet **cell ``F22``** maps to **cell ``/page-path/G15/``** on a hypernumbers page
* Excel spreadsheet **cell ``G19``** maps to **cell ``/page-path/C9/``** on a hypernumbers page
* and so on 


When to use the Upload Manager
------------------------------

The upload manager is a super-simple mechanism for uploading data and can be used to convert existing spreadsheet data into a hypernumbers application:

* If you want to build a hypernumbers application and can specify the application data to be loaded, page structures and other application assets in a spreadsheet
* When you want to convert from your Excel application to hypernumbers and have a lot of historical data that need to be migrated into hypernumbers pages
* If your application involves data feeds that need to be scheduled and added to your existing data on an ongoing basis in an efficient way
* If you hold your existing data as unwieldy 2D structured streadsheets and want to convert it to a more user orientated hierarchical page structure
* If you want to convert 2D (spreadsheet) data lists into highly stylised template web pages that incorporate presentation, calculation, business logic and/or application permission elements

You can consider the upload manager as a mechanism for any situation where you have flatpacked 2D data assets in a spreadsheet and want to unpack and assemble as fully-functioning 3D web application. It’s a simple site-builder.

The data upload manager can play a key part in bringing your application to life (through migrating historical data) and keeping it alive and relevant (by simplifying and automating the process of adding new data). 

By this we mean you can:

* Migrate and convert existing 2D structured data (Excel spreadsheets or CSV files) straight into hypernumber pages
* Have new data automatically piped through from wherever straight into new (template) pages 
   
The Upload Manager Panel
------------------------

The upload manager is accessed via the ``Site`` menu and the ``Data Upload`` option. The upload manager panel looks thus:

 
.. image:: /images/hypernumbers-data-upload-manager-admin-panel.png
   :scale: 100 %
   :alt: Hypernumbers Data Upload manager admin panel

There’s a lot of buttons and options in this screen but they broadly fall into 3 configuration sections (as highlighted in the diagram). The sections are:

* General

  * Where you specify the type of map to be built (i.e. sheet or row map type)
  * Source file type (i.e. .xls or .csv)
  * What (if any) pre-saved template to use
  * Action to be taken if the page to be created already exists (i.e. overwrite or don’t overwrite)

* Map builder

  * Apply any validation checks you want to apply to the source data that need to be satisfied before any data is allowed to load
  * You specify cell in source file position XX should map to target cell position YY etc.
  * Lets you view the map details as you build them or you have in place in a presaved map
  * Edit map details (by deleting a mapping and rebuilding it)
* Map management
 
  * Save a new map
  * Load an existing map
  * Resave maps that have been edited

Data Upload Control Buttons
---------------------------

By itself, the upload manager does not do anything. It is a data mapping configuration menu only. It only works in conjunction when actioned with one of the special control functions and by someone with authority to load data – typically by the application builder or some other admin person and on a secure (from others) page.  

There are two such control functions which create a button relevant to the two mapping types. These are:

*   ``=MAP.SHEET.BUTTON(“buttontitle”, “page”, “maptouse”)``
*   ``=MAP.ROW.BUTTON(“buttontitle”, “maptouse”)``

Whatever map type is involved, the relevant button is placed in a cell on some secure page e.g. ``/administration/data-upload/`` and can be fired when in the ``webpage`` or ``wikipage`` views.

When fired a File Open dialog box will appear that enables you to select the file to load from your computer. 

Logical overview of the Upload Manager process
----------------------------------------------

The logical steps involved in the upload process are:

1. Create an upload map using the data upload manager

        This involves specifying what cells in your source file data file map to what cells in your target hypernumbers page. This is as simple as it sounds. It means, for example map ``A1`` in the source file to ``B16`` in the target hypernumbers page.
 
2. Implement the upload mechanism i.e. a map button on an admin page
  

Row Map Source File Set-up
--------------------------

When using a row type data upload mapping some configuration of source file is required.

With row type uploads, you need to specify the hypernumbers page and path where each record will be loaded to. To this you to add the page and path in column ``A`` for each data row in the source spreadsheet or CSV file. This should reflect the path and page structure that’s relevant to your application.

In the example below we can see that column ``A`` contains page names like ``/bugs/0000001/opened/``, ‘’/bugs/0000002/opened/`` etc :
 
.. image:: /images/hypernumbers-excel-spreadsheet-data-upload.png
   :scale: 100 %
   :alt: Hypernumbers Excel Spreadsheet used in a Row Type Data Upload

This is then automatically used by the ``=MAP.ROWS.BUTTON(“buttontitle”, “maptouse”)`` function when the spreadsheet data is loaded into hypernumbers.


