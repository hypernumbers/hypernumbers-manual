====================
SMALL.GOTO.ZDROPDOWN
====================

Overview
--------

The ``=small.goto.zdropdown(...)`` builds a small dropdown button based on a z-query.

Syntax
------

``=breadcrumbs.W(Text, Colour, ZQuery, <Style>)``

Arguments
---------

.. tabularcolumns:: |l|L|

=========== ====================================================================
Argument    Description
=========== ====================================================================
``Text``    The text to display no the button

``Colour``  An integer from 0 to 5 which specifies the colour of the button

            ``0`` Blue

            ``1`` Yellow

            ``2`` Red

            ``3`` Green

            ``4`` Light Blue

            ``5`` Black

``Z-Query`` A zquery

``Style``   **Optional**

            ``0`` display the values returned by the zquery in the dropdown
            **DEFAULT**

            ``1`` display the paths in the dropdown
=========== ====================================================================

See Also
--------

There is a large version of this button available it has the form ``=large.goto.dropdown(...)`` and uses the same syntax.

For details of z-queries see the section vixo `Database Queries`_.

.. _Database Queries: ../../../contents/indepth/database-queries.html
