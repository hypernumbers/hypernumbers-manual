===================
MAP.SHEET.BUTTON.IF
===================

Overview
--------

The ``=map.sheet.button.if(...)`` function can be used on any wikipage or webpage to load a spreadsheet to a sheet-type map. The button only appears if a condition is true.

It creates a button which then asks the user to select a file to upload.

If the file matches the validation criteria in the specified map it runs and creates a page per sheet of the spreadsheet.

See the section **something, something** for more details.

It is otherwise the same as ``=map.sheet.button(...)``

Syntax
------

``=map.sheet.button.if(Boolean, ButtonTitle, Page, Map)``

Arguments
---------

.. tabularcolumns:: |l|L|

================ ==============================================================
Argument         Description
================ ==============================================================
``Boolean``      If this value is true the button appears, or else it doesn't

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
