================
CREATE.BUTTON.IF
================

Overview
--------

The ``=create.button.if(...)`` function can be used on any wikipage or webpage to instantiate a template as a new page in a specific location within an applications’s page structure.

It is conditional button which only appears if a condition is met - there is a `non-conditional`_ version.

Syntax
------

``=create.button.if(Boolean, ButtonTitle, Expression1, Expression2,...)``

Arguments
---------

.. tabularcolumns:: |l|L|

================ ==============================================================
Argument         Description
================ ==============================================================
``Boolean``      If this value is true the button appears, or else it doesn't

``ButtonTitle``  A string specifying the title to appear on the button on the
                 webpage or wikipage.

``Expression``   A string specifying the construction parameters for new pages,
                 including specifiers on the:

                 page structure to be created

                 the templates to use

                 the naming convention to use

                 access permissions

                 redirect options

                 Within each expression it is possible to create many new
                 pages and at the same time instantiate many templates into
                 these new pages.

                 The general form of any expression is:

                 ``/segment1/segment2/segment3/....``

                 The general form of each segment inside an expression is:

                 ``"/[TemplateToUse, <naming optons> <;advanced options>]/”``

                 where ``TemplateToUse`` is a template that has previously
                 been saved via the *Site -> Save As Template* admin menu.
================ ==============================================================

More Details
------------

For details on how to use this function see the `non-conditional`_ version of the function.

.. _non-conditional: ./create-button.html
