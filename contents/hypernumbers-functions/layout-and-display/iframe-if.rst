=============
IFRAME.IF.WxH
=============

Overview
--------


The ``iframe.if.WxH()`` displays another web page inside your page in an iframe if a condition is true


Syntax
------

``=iframe.if.WxH(Boolean, Url)``

Arguments
---------

.. tabularcolumns:: |l|L|

============= ==================================================================
Argument      Description
============= ==================================================================
``W``         Width in cells

``H``         Height in cells

``Boolean``   ``true`` or ``false``

``Url``       A string containing the Url of the page you wish to display.
============= ==================================================================

Example
-------

This formula will display the google home page in an iframe:

``=iframe.if.15x30(true, "http://google.com")``

This formula wont:

``=iframe.if.15x30(false, "http://google.com")``


