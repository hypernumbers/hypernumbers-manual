=========
HTML.MENU
=========

Overview
--------

The ``html.menu.W`` function is used to create link menu across W columns to navigate to different web or wiki pages.

Syntax
------

``=html.menu.W(Item1, Item2...)``

Arguments
---------

.. tabularcolumns:: |l|L|

=========== ===================================================================
Argument        Description
=========== ===================================================================
``W``       Specifies the number of columns in which to autofill the menu bar.

``Item``    An infinite list of menu items. Normally a mixture of strings,
            links and other nested sub-menus

=========== ===================================================================


Example
-------

Here is the setup of a menu in the spreadsheet view. The menu doesn't display here - instead a preview box is shown.

.. figure:: /images/example-html-menu1.png

This is how the same menu appears on a web or wiki page:

.. figure:: /images/example-html-menu2.png


See Also
--------

Typically menus and sub-menus are built on a particular page and then
pulled into place with the special hypernumbers function ``=include()``
