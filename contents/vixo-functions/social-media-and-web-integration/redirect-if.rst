===========
REDIRECT.IF
===========

Overview
--------

``REDIRECT.IF`` redirects a web or wiki page to another URL if a condition is true

Syntax
------

``=redirect(Boolean, URL)``

Arguments
---------

.. tabularcolumns:: |l|L|

================= =============================================================
Argument          Description
================= =============================================================
``Boolean``       ``true`` or ``false``

``URL``           The URL of the page that you want to redirect the user to
================= =============================================================

Example
-------

``=redirect(false, "http://example.com")`` will do nothing

``=redirect(true, "http://example.com")`` will redirect to the url ``http://example.com``

See also the function `redirect`_.

.. warning:: once you have put a redirect on a web or wiki page you will be automaticallly redirected once you view that page. To take the redirect off you will need to open the page as a spreadsheet and edit it that way.

.. _redirect: ./redirect.html
