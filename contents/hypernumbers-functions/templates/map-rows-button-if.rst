==================
MAP.ROWS.BUTTON.IF
==================

Overview
--------

The ``=map.rows.button.if(...)`` function can be used on any wikipage or webpage to load a spreadsheet to a row-type map.

Depending on wether the first value is ``TRUE`` OR ``FALSE`` it creates a button which then asks the user to select a file to upload.

If the file matches the validation criteria in the specified map it runs and creates a page per row of the spreadsheet.

See the function ``=map.rows.button(...)``

Syntax
------

``=map.rows.button.if(Boolean, ButtonTitle, Map)``

Arguments
---------

.. tabularcolumns:: |l|L|

================ ==============================================================
Argument         Description
================ ==============================================================
``Boolean``      If this value is true the button appears, or else it doesn't

``ButtonTitle``  A string specifying the title to appear on the button on the
                 webpage or wikipage.

``Map``          a row-type map  that has previously been saved via the
                 *Site -> Data Upload* admin menu.
================ ==============================================================

Example
-------

See the section `Uploading Application Data`_ for a worked example.

.. _Uploading Application Data: ../../../contents/hypernumbers-application/uploading-application-data.html
