========
HTML.WxH
========

Overview
--------

.. warning:: This function is intended for software developers. You require a knowledge of html to use it.

.. warning:: If you put in broken HTML you will break the web and wiki pages so be sure you know what you are doing before you do this!


The ``=html.WxH()`` function is designed for software developer and designers to insert html into vixo web and wikipages.

.. note:: If there are things you find you are repeatedly adding to cells, let us know and we will see if they can be included in the Vixo core functions.

Syntax
------

``=html.WxH(html)``

Arguments
---------

.. tabularcolumns:: |l|L|

============= ==================================================================
Argument      Description
============= ==================================================================
``W``         Width in cells

``H``         Height in cells

``Html``      An html snippet expressed as a string. If you need Javascript and
              CSS with your html you should use the function
              ``=generic.integration.WxH()``
============= ==================================================================

Example
-------

``=html.3x2("<h1>Hello World</h1>")``
