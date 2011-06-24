================
MAP.SHEET.BUTTON
================

Overview
--------

The ``=map.sheet.button(...)`` function can be used on any wikipage or webpage to load a spreadsheet to a sheet-type map.

It creates a button which then asks the user to select a file to upload.

If the file matches the validation criteria in the specified map it runs and creates a page per sheet of the spreadsheet.

See the section **something, something** for more details.

Syntax
------

``=map.sheet.button(ButtonTitle, Page, Map)``

Arguments
---------

.. tabularcolumns:: |l|L|

================ ==============================================================
Argument         Description
================ ==============================================================
``ButtonTitle``  a string specifying the title to appear on the button on the
                 webpage or wikipage.

``Page``         the page to upload the data to. Can be absolute
                 (ie ``/some/page/``) or relative (``../another/page``).

``Map"``         a row-type map  that has previously been saved via the
                 *Site -> Data Upload* admin menu.
================ ==============================================================

Example
-------

See the section `Uploading Application Data`_ for a worked example.

.. _Uploading Application Data: ../../../contents/hypernumbers-application/uploading-application-data.html
