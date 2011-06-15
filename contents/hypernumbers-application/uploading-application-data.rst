Data Upload
===========

Now that we’ve completed building the user side of the bug tracker and tested the process of raising bugs and workqueue updates, it’s time to migrate the historical Excel spreadsheet bug tracker into our new hypernumbers bug tracker. But with 97 bugs to load at 4 pages/bug it would be an onerous and time consuming task to do it manually – as we’ve done in setting up the pages and templates – and typing in the bug data. We need a much more efficient way to load the data and convert it from a 2-dimensional data table into our 3-dimensional application page structure. 

To do this we will make use of the ``Data Upload`` manager and some more special hypernumbers functions. As our existing bug tracker is a big tabular data list of bugs – one line per bug – we’ll use the ``row type`` mapping features of the ``Data Upload`` manager. We’ll configure it to squirt each line in the Excel spreadsheet into our 3-dimensional bug pages structure. 

To populate our 3 bug input pages and construct the overview page we’ll require to create 4 different versions of our spreadsheet – differing in regard to column A where we will specify the hypernumbers page to load the data into. We’ll also use our bug templates as part of this process. 

By way of illustration, to load our data into each ``/bugs/…./opened/`` page we would insert a new column into the Excel spreadsheet and input each page that each record is to be loaded into. In column A we have input the page names as ``/bugs/0000001/opened/``, ``/bugs/0000002/opened/``, etc. – as illustrated below.

 
.. image:: /images/hypernumbers-excel-spreadsheet-data-upload.png
   :scale: 100 %
   :alt: Hypernumbers Excel Spreadsheet used in a Row Type Data Upload

Creating a ``row type`` mapping is done by opeing the ``Site`` menu and choosing the ``Data Upload`` option. You then build your map that relates each column of the spreadsheet to the cell it will map to on a hypernumbers page and other configuration details. The mapping for our ``/bugs/…/opened/`` pages looks thus:
 
.. image:: /images/hypernumbers-data-upload-row-mapping-example1.png
   :scale: 100 %
   :alt: Hypernumbers Data Upload manager Row type mapping

It specifies:

* a row type map
* the data is in a .xls spreadsheet file
* use our pre-saved b_bug_submit template when creating each new page per row
* overwrite the page if it already exists
* map details (visible)
   * map column B to cell C8
   * map column F to cell C9
* not visible mappings
   * column D to cell C10
   * column H to cell C11
   * column E to cell C17
* Save the mapping and give it a name ``opened_bugs_load``
* Upload the data from sheet ``Test_open`` in our Excel spreadsheet

We would create a row type map like this for each of Excel spreadsheets we created.

As the overview pages reference data on their sub-pages there is no data to be loaded. However we do want to load the ``b_bug_overview`` templates. To do this we'd create column ``A``, in the **overview** spreadsheet in our source file, we would create page names like ``/bugs/0000001/``, ``/bugs/0000002/``, etc.. The row map for this sheet (we’ve saved as ``overview_bugs_load``) would look as follows:
 
 
.. image:: /images/hypernumbers-data-upload-row-mapping-example2.png
   :scale: 100 %
   :alt: Hypernumbers Data Upload manager Row type mapping – no data

We can see that there are no mapping instructions set up in the ``Mapping Details`` section. The map says create a blank page using the ``b_bug_overview`` template.
 
To action these upload maps we need to add a special template control button. We have done this on the ``/admin/data-upload/`` page as shown below:   

 
.. image:: /images/hypernumbers-data-upload-row-map-buttons.png
   :scale: 100 %
   :alt: Hypernumbers data upload row type mapping buttons

Each button on this page uses a special hypernumbers template function on a spreadsheet cell:

1. This function is ``=map.rows.button("Load Submit Data", "opened_bugs_load")`` specifying a button title and that the ``opened_bugs_load`` map be used to load the data. When pressed the button opens a file upload dialog box to select the file on your computer with the data to be uploaded –in exactly the same way you’d add an attachment to an email.
2. The second button is created with the function ``=MAP.ROWS.BUTTON("Load Fixed Data","fixed_bugs_load")`` and uses the map named ``fixed_bugs_load``. 	
3. ``=MAP.ROWS.BUTTON("Load Tested Data","tested_bugs_load")`` uses a map called ``tested_bugs_load``.
4. ``=MAP.ROWS.BUTTON("Load Overview Data","overview_bugs_load")`` uses a map called  ``overview_bugs_load`` to load data.	


**Load (full) data – IMAGES: Page structure, worklists and dashboard)**

**DIDN'T LOAD PROPERLY**

