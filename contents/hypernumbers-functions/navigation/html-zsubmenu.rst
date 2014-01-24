=============
HTML.ZSUBMENU
=============

Overview
--------

The ``HTML.ZSUBMENU(...)`` function is used to create a drop-down list of hyperlinks; to other hypernumbers pages or other websites. The function only works when incorporated inside the html.menu.W function.

Syntax
------

``=html.zsubmenu(Title, Z-Query, Style)``

Arguments
---------

.. tabularcolumns:: |l|L|

=========== ====================================================================
Argument    Description
=========== ====================================================================
``Title``   The title of the submenu - will not be a link

``Z-Query`` A z-query that will bring back the pages to appear in the submenu

``Style``   **Optional** an integer describing the type of link to show

            0 - the menu will display the path of the page **DEFAULT**

            1 - the menu will display the value of the cell in the z-query

            2 - the menu will display the value of the terminal segment of
            of the path in the menu
=========== ====================================================================
