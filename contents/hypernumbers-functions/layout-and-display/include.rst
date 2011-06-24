=======
INCLUDE
=======

Overview
--------

INCLUDE takes a range of cells on one page and displays them on another,
except unlike all other functions *it brings through the formatting stuff
as well*.

Syntax
------

``=include(target)``


Arguments
---------

.. tabularcolumns:: |l|L|

=========== ====================================================================
Argument    Description
=========== ====================================================================
``Target``  A cell or range of cells
=========== ====================================================================

.. warning:: INCLUDE is a special function that cannot be called from inside another function. An expression like ``=html(include(a1))`` will return a ``#CANTINC!`` error.

Example
-------

This is the spreadsheet view:

.. figure:: /images/example-include1.png

This is how it appears in the web and wiki views:

.. figure:: /images/example-include2.png

Typically you bulid a web page header and footer on a static data page and include it in all your templates. Then if you need to update the pages, a single edit on the static-data page will propagate to all other pages. Menus, facebook comments and other special layout functions will also work when pulled through.

.. warning:: INCLUDE will bring through fancy things like ``=HTML.MENU()`` which will work as expected. However things that require permissions to work (for instance all the form functions ``=INPUT()``, ``=RADIO()``, ``=SELECT()``, ``=TEXTAREA()`` and ``=BUTTON()`` and the webcontrols like ``=CREATE.BUTTON()``, ``=MAP.ROW.BUTTON()`` and ``=MAP.SHEET.BUTTON()``) will results in a ``#CANTINC!`` (for cannot include) error.
